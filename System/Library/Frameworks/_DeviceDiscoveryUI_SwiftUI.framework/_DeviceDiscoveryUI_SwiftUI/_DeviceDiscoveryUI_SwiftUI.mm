uint64_t sub_23B6DF690()
{
  v0 = sub_23B6E8F68();
  __swift_allocate_value_buffer(v0, qword_27E17A758);
  __swift_project_value_buffer(v0, qword_27E17A758);
  return sub_23B6E8F58();
}

uint64_t sub_23B6DF710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = 1;
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v16 = type metadata accessor for DevicePicker(0, &v31);
  v17 = &a9[v16[15]];
  v18 = &a9[v16[17]];
  v35 = 0;
  sub_23B6E9128();
  v19 = v32;
  *v18 = v31;
  *(v18 + 1) = v19;
  v20 = v16[13];
  v21 = sub_23B6E8FD8();
  (*(*(v21 - 8) + 32))(&a9[v20], a1, v21);
  v22 = &a9[v16[14]];
  *v22 = a2;
  *(v22 + 1) = a3;
  v22[16] = a4 & 1;
  *v17 = a6;
  v17[1] = a7;
  v23 = v16[16];
  v31 = a8;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v24 = type metadata accessor for DevicePicker.PickerContentMode(0, &v31);
  return (*(*(v24 - 8) + 32))(&a9[v23], a5, v24);
}

uint64_t DevicePicker.init(_:onSelect:label:fallback:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37 = a3;
  v38 = a8;
  v29 = a7;
  v30 = a6;
  v27[1] = a5;
  v28 = a4;
  v36 = a2;
  v34 = a9;
  v33 = a10;
  v15 = sub_23B6E8FD8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a11;
  v39[0] = a11;
  v39[1] = a12;
  v31 = a13;
  v32 = a14;
  v39[2] = a13;
  v39[3] = a14;
  v19 = type metadata accessor for DevicePicker.PickerContentMode(0, v39);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v27 - v24;
  sub_23B6DFB60();
  if (sub_23B6E9248())
  {
    v28();
  }

  else
  {
    v30();
  }

  swift_storeEnumTagMultiPayload();
  (*(v16 + 16))(v18, a1, v15);
  (*(v20 + 16))(v23, v25, v19);
  sub_23B6DF710(v18, v36, v37, 0, v23, v38, v33, v35, v34, a12, v31, v32);
  (*(v16 + 8))(a1, v15);
  return (*(v20 + 8))(v25, v19);
}

unint64_t sub_23B6DFB60()
{
  result = qword_27E17A770;
  if (!qword_27E17A770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E17A770);
  }

  return result;
}

uint64_t DevicePicker.init<A>(_:access:onSelect:label:fallback:parameters:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v68 = a8;
  v69 = a7;
  v66[1] = a6;
  v67 = a5;
  v86 = a4;
  v76 = a3;
  v85 = a2;
  v82 = a9;
  v87 = a16;
  v91 = a13;
  v92 = a15;
  v89 = a11;
  v93 = a12;
  v94 = a10;
  v96[0] = a12;
  v96[1] = a13;
  v96[2] = a15;
  v96[3] = a16;
  v18 = type metadata accessor for DevicePicker.PickerContentMode(0, v96);
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v80 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v81 = v66 - v22;
  v23 = *(a14 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v73 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v66 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v66 - v29;
  v79 = sub_23B6E8FD8();
  v78 = *(v79 - 8);
  v31 = MEMORY[0x28223BE20](v79);
  v77 = v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v90 = v66 - v33;
  v88 = a1;
  v70 = a17;
  sub_23B6E8FB8();
  v95 = v23;
  v34 = *(v23 + 16);
  v34(v30, a1, a14);
  v75 = v28;
  v34(v28, v30, a14);
  v35 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v72 = v35;
  v36 = (v24 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v39 = v91;
  v38 = v92;
  *(v37 + 2) = v93;
  *(v37 + 3) = v39;
  *(v37 + 4) = a14;
  *(v37 + 5) = v38;
  v40 = v87;
  *(v37 + 6) = v87;
  *(v37 + 7) = a17;
  v71 = *(v95 + 32);
  v71(&v37[v35], v30, a14);
  v74 = v37;
  v41 = &v37[v36];
  v42 = v88;
  v43 = v89;
  *v41 = v94;
  v41[1] = v43;
  v44 = v73;
  v34(v73, v42, a14);
  v45 = v70;
  v46 = swift_allocObject();
  v48 = v91;
  v47 = v92;
  *(v46 + 2) = v93;
  *(v46 + 3) = v48;
  *(v46 + 4) = a14;
  *(v46 + 5) = v47;
  *(v46 + 6) = v40;
  *(v46 + 7) = v45;
  v71(&v46[v72], v44, a14);
  v49 = &v46[v36];
  v50 = v86;
  *v49 = v76;
  v49[1] = v50;
  sub_23B6DFB60();
  v51 = v94;
  sub_23B6E09BC(v94, v43);

  if (v51)
  {
    v51(v52);
  }

  v53 = v75;
  sub_23B6E8FC8();

  v54 = *(v95 + 8);
  v95 += 8;
  v54(v53, a14);
  v55 = sub_23B6E9248();

  v57 = v81;
  if (v55)
  {
    v67(v56);
  }

  else
  {
    v69(v56);
  }

  v58 = v84;
  swift_storeEnumTagMultiPayload();
  v59 = v78;
  v60 = v77;
  v61 = v79;
  (*(v78 + 16))(v77, v90, v79);
  v62 = v83;
  v63 = v80;
  (*(v83 + 16))(v80, v57, v58);
  sub_23B6DF710(v60, sub_23B6E0928, v46, 1, v63, sub_23B6E02CC, v74, v93, v82, v91, v92, v87);

  sub_23B6E09CC(v94, v89);
  v64 = sub_23B6E8F08();
  (*(*(v64 - 8) + 8))(v85, v64);
  v54(v88, a14);
  (*(v62 + 8))(v57, v58);
  return (*(v59 + 8))(v90, v61);
}

uint64_t sub_23B6E022C()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23B6E02CC()
{
  v1 = *(v0 + ((*(*(*(v0 + 32) - 8) + 64) + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (v1)
  {
    v1();
  }

  v2 = sub_23B6E8FC8();

  return v2;
}

void sub_23B6E03A0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a4;
  v39 = a3;
  v41 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_23B6E9288();
  v37 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v42 = &v36 - v14;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  if (qword_27E17A750 != -1)
  {
    swift_once();
  }

  v18 = sub_23B6E8F68();
  v40 = __swift_project_value_buffer(v18, qword_27E17A758);
  v19 = sub_23B6E8F48();
  v20 = sub_23B6E9238();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a2;
    v22 = AssociatedTypeWitness;
    v23 = v17;
    v24 = v12;
    v25 = v15;
    v26 = v21;
    *v21 = 0;
    _os_log_impl(&dword_23B6DE000, v19, v20, "Converting result to endpoint", v21, 2u);
    v27 = v26;
    v15 = v25;
    v12 = v24;
    v17 = v23;
    AssociatedTypeWitness = v22;
    MEMORY[0x23EEA4660](v27, -1, -1);
  }

  v28 = v42;
  sub_23B6E8FA8();
  if ((*(v15 + 48))(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v37 + 8))(v28, v12);
    v29 = sub_23B6E8F48();
    v30 = sub_23B6E9228();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23B6DE000, v29, v30, "Failed to get endpoint", v31, 2u);
      MEMORY[0x23EEA4660](v31, -1, -1);
    }
  }

  else
  {
    v32 = v15;
    (*(v15 + 32))(v17, v28, AssociatedTypeWitness);
    v33 = sub_23B6E8F48();
    v34 = sub_23B6E9238();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_23B6DE000, v33, v34, "Returning endpoint to client", v35, 2u);
      MEMORY[0x23EEA4660](v35, -1, -1);
    }

    v39(v17);
    (*(v32 + 8))(v17, AssociatedTypeWitness);
  }
}

uint64_t sub_23B6E0890()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

void sub_23B6E0928(uint64_t a1)
{
  v2 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v3 = v1 + ((*(*(v1[4] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_23B6E03A0(a1, v1 + v2, *v3, *(v3 + 1), v1[2], v1[3], v1[4], v1[5], v1[6], v1[7]);
}

uint64_t sub_23B6E09BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B6E09CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void DevicePicker.init<A>(for:onSelectEndpoint:label:fallback:parameters:)()
{
  sub_23B6DF884(0);

  sub_23B6E92B8();
  __break(1u);
}

uint64_t DevicePicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v2 = *(a1 + 24);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v87 = &v81 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v81 - v9;
  v96 = v8;
  v10 = v8 - 8;
  v91 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v98 = v11;
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 24);
  v13 = *(v10 + 40);
  v14 = sub_23B6E9188();
  v95 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v93 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A778, &qword_23B6E96D0);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_23B6E14CC();
  v110 = v16;
  v111 = v14;
  *&v114 = v14;
  *(&v114 + 1) = v16;
  v104 = v18;
  v105 = WitnessTable;
  *&v115 = WitnessTable;
  *(&v115 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v92 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v90 = &v81 - v23;
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v12;
  *&v28 = v12;
  *(&v28 + 1) = v2;
  v29 = *(v10 + 48);
  v85 = v13;
  *&v30 = v13;
  v103 = v29;
  *(&v30 + 1) = v29;
  v107 = v30;
  v108 = v28;
  v115 = v30;
  v114 = v28;
  v31 = type metadata accessor for DevicePicker.PickerContentMode(0, &v114);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v81 - v33;
  v99 = OpaqueTypeMetadata2;
  v100 = v2;
  v35 = sub_23B6E9028();
  v101 = *(v35 - 8);
  v102 = v35;
  MEMORY[0x28223BE20](v35);
  v109 = &v81 - v36;
  v37 = v97;
  (*(v32 + 16))(v34, v97 + *(v10 + 72), v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v86;
    v39 = v100;
    (*(v3 + 32))(v86, v34, v100);
    v40 = *(v3 + 16);
    v41 = v87;
    v40(v87, v38, v39);
    v42 = v88;
    v40(v88, v41, v39);
    *&v114 = v111;
    *(&v114 + 1) = v110;
    v44 = v104;
    v43 = v105;
    *&v115 = v105;
    *(&v115 + 1) = v104;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v103;
    sub_23B6E1A14(v42, v99, v39, OpaqueTypeConformance2, v103);
    v47 = *(v3 + 8);
    v47(v42, v39);
    v47(v41, v39);
    v47(v38, v39);
  }

  else
  {
    v83 = v24;
    v48 = *(v24 + 32);
    v84 = v27;
    v48(v26, v34, v27);
    v49 = v91;
    v88 = *(v91 + 16);
    v50 = v89;
    v51 = v37;
    v52 = v37;
    v53 = v96;
    (v88)(v89, v52, v96);
    v54 = *(v49 + 80);
    v82 = v26;
    v55 = (v54 + 48) & ~v54;
    v56 = swift_allocObject();
    v57 = v107;
    *(v56 + 16) = v108;
    *(v56 + 32) = v57;
    v91 = *(v49 + 32);
    v58 = (v91)(v56 + v55, v50, v53);
    MEMORY[0x28223BE20](v58);
    *(&v81 - 3) = v108;
    v59 = v93;
    sub_23B6E9178();
    v87 = sub_23B6E1798(v53);
    (v88)(v50, v51, v53);
    v60 = swift_allocObject();
    v61 = v107;
    *(v60 + 16) = v108;
    *(v60 + 32) = v61;
    v62 = v60 + v55;
    v63 = v111;
    (v91)(v62, v50, v53);
    v64 = v110;
    v65 = v104;
    v80 = v104;
    v66 = v105;
    v78 = v110;
    v79 = v105;
    v67 = v92;
    sub_23B6E9118();

    v44 = v65;

    v43 = v66;

    (*(v95 + 8))(v59, v63);
    *&v114 = v63;
    *(&v114 + 1) = v64;
    *&v115 = v66;
    *(&v115 + 1) = v65;
    v68 = swift_getOpaqueTypeConformance2();
    v69 = v94;
    v70 = *(v94 + 16);
    v71 = v90;
    v72 = v99;
    v70(v90, v67, v99);
    v73 = *(v69 + 8);
    v73(v67, v72);
    v70(v67, v71, v72);
    v46 = v103;
    sub_23B6E191C(v67, v72, v100, v68, v103);
    v73(v67, v72);
    v73(v71, v72);
    (*(v83 + 8))(v82, v84);
  }

  *&v114 = v111;
  *(&v114 + 1) = v110;
  *&v115 = v43;
  *(&v115 + 1) = v44;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v46;
  v74 = v102;
  swift_getWitnessTable();
  v75 = v101;
  v76 = v109;
  (*(v101 + 16))(v106, v109, v74);
  return (*(v75 + 8))(v76, v74);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B6E14CC()
{
  result = qword_27E17A780;
  if (!qword_27E17A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A778, &qword_23B6E96D0);
    sub_23B6E1558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17A780);
  }

  return result;
}

unint64_t sub_23B6E1558()
{
  result = qword_27E17A788[0];
  if (!qword_27E17A788[0])
  {
    type metadata accessor for DevicePickerVC(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E17A788);
  }

  return result;
}

uint64_t sub_23B6E15B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = a1 + *(type metadata accessor for DevicePicker(0, &v8) + 68);
  v6 = *(v5 + 8);
  LOBYTE(v8) = *v5;
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9138();
  sub_23B6E9148();
}

uint64_t sub_23B6E1668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_23B6E1798(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9158();
  return v2;
}

uint64_t sub_23B6E17FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v8 = type metadata accessor for DevicePicker(0, v25);
  v9 = v8[13];
  v10 = sub_23B6E8FD8();
  (*(*(v10 - 8) + 16))(a6, a1 + v9, v10);
  v11 = v8[15];
  v12 = a1 + v8[14];
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = a1 + v11;
  v17 = *(a1 + v11);
  v18 = *(v16 + 8);
  v19 = type metadata accessor for DevicePickerVC(0);
  v20 = (a6 + *(v19 + 24));
  *v20 = v17;
  v20[1] = v18;
  v21 = a6 + *(v19 + 20);
  *v21 = v13;
  *(v21 + 8) = v14;
  *(v21 + 16) = v15;
  sub_23B6E2E84(v13, v14);
  sub_23B6E09BC(v17, v18);
  LOBYTE(v17) = sub_23B6E90D8();
  v22 = sub_23B6E8FF8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A778, &qword_23B6E96D0);
  v24 = a6 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v17;
  return result;
}

uint64_t sub_23B6E191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23B6E9008();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B6E9018();
}

uint64_t sub_23B6E1A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23B6E9008();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23B6E9018();
}

uint64_t sub_23B6E1B30()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for DevicePicker(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_23B6E15B0(v6, v1, v2, v3, v4);
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = type metadata accessor for DevicePicker(0, &v12);
  v6 = v0 + ((*(*(v5 - 1) + 80) + 48) & ~*(*(v5 - 1) + 80));
  v7 = v5[13];
  v8 = sub_23B6E8FD8();
  (*(*(v8 - 8) + 8))(&v6[v7], v8);
  sub_23B6E1B28(*&v6[v5[14]], *&v6[v5[14] + 8]);
  if (*&v6[v5[15]])
  {
  }

  v9 = v5[16];
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  type metadata accessor for DevicePicker.PickerContentMode(0, &v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v2;
  }

  else
  {
    v10 = v1;
  }

  (*(*(v10 - 8) + 8))(&v6[v9]);

  return swift_deallocObject();
}

uint64_t sub_23B6E1D84@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for DevicePicker(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_23B6E17FC(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_23B6E1E68(char a1)
{
  sub_23B6E92C8();
  MEMORY[0x23EEA4390](a1 & 1);
  return sub_23B6E92E8();
}

uint64_t sub_23B6E1EF0(uint64_t a1)
{
  sub_23B6E92C8();
  sub_23B6E1E40(v3, *v1);
  return sub_23B6E92E8();
}

void sub_23B6E1FF0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v5 = type metadata accessor for DevicePicker.OnSelectKind(319, &v21);
  if (v6 <= 0x3F)
  {
    v16 = 0;
    v21 = v5;
    v7 = sub_23B6E8FD8();
    if (v8 <= 0x3F)
    {
      v17 = 0;
      v22 = v7;
      v23 = &type metadata for DDSelectionHandler;
      sub_23B6E2618(319);
      if (v10 <= 0x3F)
      {
        v18 = 0;
        v24 = v9;
        v15[0] = v1;
        v15[1] = v2;
        v15[2] = v3;
        v15[3] = v4;
        v11 = type metadata accessor for DevicePicker.PickerContentMode(319, v15);
        if (v12 <= 0x3F)
        {
          v19 = 0;
          v25 = v11;
          sub_23B6E267C();
          if (v14 <= 0x3F)
          {
            v20 = 0;
            v26 = v13;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B6E20F4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23B6E8FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(a3 + 24) - 8);
  v11 = *(v7 + 80);
  if (*(v10 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(v10 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + 31;
  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v14 = *(v10 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v15 = ((v12 + ((((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v9 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v15)) == 0)
  {
LABEL_31:
    v23 = (a1 + v11 + 1) & ~v11;
    if (v8 < 0x7FFFFFFE)
    {
      v25 = *((v13 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      if ((v25 + 1) >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(v7 + 48);

      return v24(v23);
    }
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    LODWORD(v16) = *a1;
  }

  return v9 + (v16 | v22) + 1;
}

void sub_23B6E2350(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23B6E8FD8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(a4 + 24) - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (*(v12 + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v15 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v15 = *(v12 + 64);
  }

  v16 = v14 + 31;
  v17 = *(v12 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v18 = ((v15 + ((((v16 + ((v13 + 1) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + v17 + 16) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 >= a3)
  {
    v21 = 0;
    v22 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((v15 + ((((v16 + ((v13 + 1) & ~v13)) & 0xFFFFFFF8) + v17 + 16) & ~v17) + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v11 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v25 = (a1 + v13 + 1) & ~v13;
      if (v10 < 0x7FFFFFFE)
      {
        v27 = ((v16 + v25) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v27 = 0;
          v27[1] = 0;
          *v27 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v27 = a2;
        }
      }

      else
      {
        v26 = *(v9 + 56);

        v26(v25, a2);
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v11 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

void sub_23B6E2618(uint64_t a1)
{
  if (!qword_27E17A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A818, &qword_23B6E9940);
    v1 = sub_23B6E9288();
    if (!v2)
    {
      atomic_store(v1, &qword_27E17A810);
    }
  }
}

void sub_23B6E267C()
{
  if (!qword_27E17A820[0])
  {
    v0 = sub_23B6E9168();
    if (!v1)
    {
      atomic_store(v0, qword_27E17A820);
    }
  }
}

uint64_t getEnumTagSinglePayload for DevicePickerSupportedAction(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DevicePickerSupportedAction(_WORD *result, int a2, int a3)
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

uint64_t sub_23B6E27B0(void *a1)
{
  sub_23B6E9188();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A778, &qword_23B6E96D0);
  swift_getWitnessTable();
  sub_23B6E14CC();
  swift_getOpaqueTypeMetadata2();
  sub_23B6E9028();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6E28E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23B6E2928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B6E29A0(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23B6E2A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B6E2AFC(uint64_t a1)
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

uint64_t sub_23B6E2B78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_23B6E2CA0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_23B6E2F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B6E2FD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23B6E3500(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B6E2FD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B6E30E4(a5, a6);
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
    result = sub_23B6E92A8();
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

void *sub_23B6E30E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B6E3130(a1, a2);
  sub_23B6E3260(&unk_284E2A3B0);
  return v3;
}

void *sub_23B6E3130(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B6E334C(v5, 0);
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

  result = sub_23B6E92A8();
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
        v10 = sub_23B6E91B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B6E334C(v10, 0);
        result = sub_23B6E9298();
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

uint64_t sub_23B6E3260(uint64_t result)
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

  result = sub_23B6E33C0(result, v11, 1, v3);
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

void *sub_23B6E334C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A938, &unk_23B6E98D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B6E33C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A938, &unk_23B6E98D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23B6E3500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_23B6E35CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_23B6E8FD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for DevicePickerVC(0) + 24);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(v12);
    sub_23B6E09CC(v10, v11);
  }

  else
  {
    sub_23B6E8F98();
    swift_allocObject();
    sub_23B6E8F88();
  }

  sub_23B6DFB60();
  (*(v6 + 16))(v8, v1, v5);

  result = sub_23B6E9268();
  if (result)
  {
    v14 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A978, &qword_23B6E9A20);
    sub_23B6E90C8();
    v15 = v24;
    v16 = *&v24[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect];
    v17 = *&v24[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect + 8];
    v18 = v24[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect + 16];
    v19 = sub_23B6E9208();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    *(v20 + 56) = v14;
    sub_23B6E2E84(v16, v17);
    v21 = v14;
    v22 = sub_23B6E482C(0, 0, v4, &unk_23B6E9A30, v20);

    *&v15[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask] = v22;

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B6E3890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 160) = a6;
  *(v7 + 16) = a4;
  v8 = sub_23B6E8F78();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  *(v7 + 56) = *(v9 + 64);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  *(v7 + 80) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8);
  *(v7 + 88) = v10;
  *(v7 + 96) = *(v10 + 64);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B6E3A1C, 0, 0);
}

uint64_t sub_23B6E3A1C()
{
  v1 = *(v0 + 160);
  *(v0 + 120) = sub_23B6E91E8();
  sub_23B6E91D8();

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_23B6E3B4C;
    v3 = *(v0 + 112);

    return MEMORY[0x2821164F8](v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_23B6E3C60;
    v5 = *(v0 + 72);

    return MEMORY[0x282116508](v5);
  }
}

uint64_t sub_23B6E3B4C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23B6E40F0;
  }

  else
  {
    v2 = sub_23B6E3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B6E3C60()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_23B6E418C;
  }

  else
  {
    v2 = sub_23B6E3F20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B6E3D74()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_23B6E9208();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_23B6E5768(v1, v2, &qword_27E17A980, &qword_23B6E9A38);

  v8 = sub_23B6E91D8();
  v9 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v8;
  v10[3] = v11;
  v10[4] = v5;
  v10[5] = v6;
  sub_23B6E58F8(v2, v10 + v9);
  sub_23B6E4418(0, 0, v3, &unk_23B6E9A58, v10);

  sub_23B6E5A78(v1, &qword_27E17A980, &qword_23B6E9A38);

  v12 = v0[1];

  return v12();
}

uint64_t sub_23B6E3F20()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v14 = v0[2];
  v7 = sub_23B6E9208();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v5 + 16))(v3, v1, v4);

  v8 = sub_23B6E91D8();
  v9 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  *(v10 + 4) = v14;
  *(v10 + 5) = v6;
  (*(v5 + 32))(&v10[v9], v3, v4);
  sub_23B6E4418(0, 0, v2, &unk_23B6E9A48, v10);

  (*(v5 + 8))(v1, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_23B6E40F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B6E418C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B6E4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38);
  v6[5] = swift_task_alloc();
  sub_23B6E91E8();
  v6[6] = sub_23B6E91D8();
  v8 = sub_23B6E91C8();

  return MEMORY[0x2822009F8](sub_23B6E42FC, v8, v7);
}

uint64_t sub_23B6E42FC()
{
  v1 = v0[5];
  sub_23B6E5768(v0[4], v1, &qword_27E17A980, &qword_23B6E9A38);
  v2 = sub_23B6E8FE8();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[5];
    v6 = v0[2];

    v6(v5);
    (*(v3 + 8))(v5, v2);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_23B6E4418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B6E5768(a3, v25 - v10, &qword_27E17A970, &qword_23B6E9A18);
  v12 = sub_23B6E9208();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B6E5A78(v11, &qword_27E17A970, &qword_23B6E9A18);
  }

  else
  {
    sub_23B6E91F8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B6E91C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B6E91A8() + 32;
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

      sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);

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

  sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);
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

uint64_t sub_23B6E4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23B6E91E8();
  v6[5] = sub_23B6E91D8();
  v8 = sub_23B6E91C8();

  return MEMORY[0x2822009F8](sub_23B6E47B4, v8, v7);
}

uint64_t sub_23B6E47B4()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B6E482C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A970, &qword_23B6E9A18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23B6E5768(a3, v22 - v9, &qword_27E17A970, &qword_23B6E9A18);
  v11 = sub_23B6E9208();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B6E5A78(v10, &qword_27E17A970, &qword_23B6E9A18);
  }

  else
  {
    sub_23B6E91F8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B6E91C8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B6E91A8() + 32;

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

      sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);

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

  sub_23B6E5A78(a3, &qword_27E17A970, &qword_23B6E9A18);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_23B6E4B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DevicePickerVC.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B6E4BCC(uint64_t a1)
{
  result = type metadata accessor for DevicePickerVC(319);
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

uint64_t sub_23B6E4C90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B6E4CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E8FD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23B6E4DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B6E8FD8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_23B6E4E70(uint64_t a1)
{
  sub_23B6E8FD8();
  if (v1 <= 0x3F)
  {
    sub_23B6E2618(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B6E4F38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask;
  if (*(*a2 + OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A930, &qword_23B6E9A10);
    sub_23B6E9218();
  }

  *(v2 + v3) = 0;
}

uint64_t sub_23B6E4FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  MEMORY[0x28223BE20](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B6E52C0(v3, v7);
  v8 = v3 + *(v5 + 28);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = type metadata accessor for DevicePickerVC.Coordinator(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_endpointTask] = 0;
  sub_23B6E52C0(v7, &v13[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_parent]);
  v14 = &v13[OBJC_IVAR____TtCV26_DeviceDiscoveryUI_SwiftUI14DevicePickerVC11Coordinator_onSelect];
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v11;
  sub_23B6E2E84(v9, v10);
  v17.receiver = v13;
  v17.super_class = v12;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  result = sub_23B6E5324(v7);
  *a2 = v15;
  return result;
}

uint64_t sub_23B6E5138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E527C(&qword_27E17A968, &unk_23B6E9948);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B6E51B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E527C(&qword_27E17A968, &unk_23B6E9948);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B6E5238(uint64_t a1)
{
  sub_23B6E527C(&qword_27E17A968, &unk_23B6E9948);
  sub_23B6E9098();
  __break(1u);
}

uint64_t sub_23B6E527C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DevicePickerVC(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6E52C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevicePickerVC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6E5324(uint64_t a1)
{
  v2 = type metadata accessor for DevicePickerVC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6E5380()
{
  swift_unknownObjectRelease();
  sub_23B6E1B28(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_23B6E53CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6E54A4;

  return sub_23B6E3890(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23B6E54A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6E5598()
{
  v1 = sub_23B6E8F78();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23B6E5664(uint64_t a1)
{
  v4 = *(sub_23B6E8F78() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6E54A4;

  return sub_23B6E4718(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23B6E5768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6E57D0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_23B6E8FE8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_23B6E58F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6E5968(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A980, &qword_23B6E9A38) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6E5DBC;

  return sub_23B6E4228(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23B6E5A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B6E5AD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B6E5BD0;

  return v6(a1);
}

uint64_t sub_23B6E5BD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6E5CC8()
{

  return swift_deallocObject();
}

uint64_t sub_23B6E5D00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6E5DBC;

  return sub_23B6E5AD8(a1, v4);
}

uint64_t sub_23B6E5DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B6E8F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B6E5E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B6E8F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DeviceAdvertiserVC(uint64_t a1)
{
  result = qword_27E17A988;
  if (!qword_27E17A988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B6E5F84(uint64_t a1)
{
  result = sub_23B6E6008();
  if (v2 <= 0x3F)
  {
    result = sub_23B6E8F08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B6E6008()
{
  result = qword_27E17A998;
  if (!qword_27E17A998)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E17A998);
  }

  return result;
}

uint64_t sub_23B6E60A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B6E8F08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23B6E6328(v2, v11);
  (*(v5 + 16))(v7, v2 + *(a2 + 20), v4);
  v8 = objc_allocWithZone(sub_23B6E8F38());
  return sub_23B6E8F28();
}

uint64_t sub_23B6E61A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E62E4(&qword_27E17A9A8, &unk_23B6E9A94);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B6E6220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6E62E4(&qword_27E17A9A8, &unk_23B6E9A94);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B6E62A0(uint64_t a1)
{
  sub_23B6E62E4(&qword_27E17A9A8, &unk_23B6E9A94);
  sub_23B6E9098();
  __break(1u);
}

uint64_t sub_23B6E62E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DeviceAdvertiserVC(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6E6328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DeviceAdvertiser.init(_:label:fallback:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v13 = a6 + *(type metadata accessor for DeviceAdvertiser(0, &v17) + 56);
  v21 = 0;
  sub_23B6E9128();
  v14 = v18;
  *v13 = v17;
  *(v13 + 8) = v14;
  v15 = sub_23B6E6328(a1, a6);
  a2(v15);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(0, &v17);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DeviceAdvertiser.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v2 = *(a1 + 24);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v80 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v79 = &v74 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v74 - v9;
  v88 = v8;
  v10 = v8 - 8;
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v90 = v11;
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 24);
  v13 = *(v10 + 40);
  v14 = sub_23B6E9188();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_23B6E6EC4();
  v102 = v16;
  v103 = v14;
  *&v106 = v14;
  *(&v106 + 1) = v16;
  v97 = v18;
  v98 = WitnessTable;
  *&v107 = WitnessTable;
  *(&v107 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v84 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v74 - v23;
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = v12;
  *(&v27 + 1) = v2;
  v28 = *(v10 + 48);
  v77 = v13;
  *&v29 = v13;
  v96 = v28;
  *(&v29 + 1) = v28;
  v100 = v29;
  v101 = v27;
  v107 = v29;
  v106 = v27;
  v30 = type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(0, &v106);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - v32;
  v91 = OpaqueTypeMetadata2;
  v93 = v2;
  v34 = sub_23B6E9028();
  v94 = *(v34 - 8);
  v95 = v34;
  MEMORY[0x28223BE20](v34);
  v92 = &v74 - v35;
  v36 = v89;
  (*(v31 + 16))(v33, v89 + *(v10 + 60), v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v78;
    v38 = v93;
    (*(v3 + 32))(v78, v33, v93);
    v39 = v79;
    v40 = v96;
    sub_23B6E35C4();
    v41 = v80;
    sub_23B6E35C4();
    *&v106 = v103;
    *(&v106 + 1) = v102;
    v43 = v97;
    v42 = v98;
    *&v107 = v98;
    *(&v107 + 1) = v97;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v92;
    sub_23B6E1A14(v41, v91, v38, OpaqueTypeConformance2, v40);
    v46 = *(v3 + 8);
    v46(v41, v38);
    v46(v39, v38);
    v46(v37, v38);
  }

  else
  {
    v75 = v24;
    (*(v24 + 32))(v26, v33, v12);
    v47 = v83;
    v80 = *(v83 + 16);
    v48 = v81;
    v49 = v36;
    v50 = v36;
    v51 = v88;
    v80(v81, v50, v88);
    v76 = v12;
    v52 = *(v47 + 80);
    v74 = v26;
    v53 = (v52 + 48) & ~v52;
    v54 = swift_allocObject();
    v55 = v100;
    *(v54 + 16) = v101;
    *(v54 + 32) = v55;
    v83 = *(v47 + 32);
    v56 = (v83)(v54 + v53, v48, v51);
    MEMORY[0x28223BE20](v56);
    *(&v74 - 3) = v101;
    v57 = v85;
    sub_23B6E9178();
    v79 = sub_23B6E7094(v51);
    v80(v48, v49, v51);
    v58 = swift_allocObject();
    v59 = v100;
    *(v58 + 16) = v101;
    *(v58 + 32) = v59;
    v60 = v58 + v53;
    v61 = v103;
    (v83)(v60, v48, v51);
    v62 = v102;
    v63 = v97;
    v73 = v97;
    v42 = v98;
    v71 = v102;
    v72 = v98;
    v64 = v84;
    sub_23B6E9118();

    v43 = v63;

    (*(v87 + 8))(v57, v61);
    *&v106 = v61;
    *(&v106 + 1) = v62;
    *&v107 = v42;
    *(&v107 + 1) = v63;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v82;
    v67 = v91;
    sub_23B6E35C4();
    v68 = *(v86 + 8);
    v68(v64, v67);
    sub_23B6E35C4();
    v45 = v92;
    v40 = v96;
    sub_23B6E191C(v64, v67, v93, v65, v96);
    v68(v64, v67);
    v68(v66, v67);
    (*(v75 + 8))(v74, v76);
  }

  *&v106 = v103;
  *(&v106 + 1) = v102;
  *&v107 = v42;
  *(&v107 + 1) = v43;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v40;
  v69 = v95;
  swift_getWitnessTable();
  sub_23B6E35C4();
  return (*(v94 + 8))(v45, v69);
}

unint64_t sub_23B6E6EC4()
{
  result = qword_27E17A9B8[0];
  if (!qword_27E17A9B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
    sub_23B6E6F50();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E17A9B8);
  }

  return result;
}

unint64_t sub_23B6E6F50()
{
  result = qword_27E17A9A0;
  if (!qword_27E17A9A0)
  {
    type metadata accessor for DeviceAdvertiserVC(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E17A9A0);
  }

  return result;
}

uint64_t sub_23B6E6FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = a1 + *(type metadata accessor for DeviceAdvertiser(0, &v8) + 56);
  v6 = *(v5 + 8);
  LOBYTE(v8) = *v5;
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9138();
  sub_23B6E9148();
}

uint64_t sub_23B6E7094(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9158();
  return v2;
}

uint64_t objectdestroyTm()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v10 = v0[2];
  v1 = v10;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v5 = (type metadata accessor for DeviceAdvertiser(0, &v10) - 8);
  v6 = v0 + ((*(*v5 + 80) + 48) & ~*(*v5 + 80));
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v5[15];
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(0, &v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v2;
  }

  else
  {
    v8 = v1;
  }

  (*(*(v8 - 8) + 8))(&v6[v7]);

  return swift_deallocObject();
}

uint64_t DevicePairingView.init(_:access:label:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, void (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v24 = a5;
  v25 = a6;
  v26 = a8;
  v27 = a9;
  v13 = type metadata accessor for DevicePairingView(0, &v24);
  v14 = a7 + *(v13 + 60);
  v28 = 0;
  sub_23B6E9128();
  v15 = v25;
  *v14 = v24;
  *(v14 + 8) = v15;
  sub_23B6E6328(a1, a7);
  v16 = *(v13 + 52);
  v17 = sub_23B6E8F08();
  v18 = (*(v17 - 8) + 16);
  (*v18)(a7 + v16, a2, v17);
  sub_23B6E8F38();
  v19 = (v18 - 1);
  if (sub_23B6E8F18())
  {
    a3();
  }

  else
  {
    a4();
  }

  (*v19)(a2, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v24 = a5;
  v25 = a6;
  v26 = a8;
  v27 = a9;
  type metadata accessor for DevicePairingView.AdvertiserContentMode(0, &v24);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DevicePairingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v2 = *(a1 + 24);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v80 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v79 = &v74 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v74 - v9;
  v88 = v8;
  v10 = v8 - 8;
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v90 = v11;
  v81 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 24);
  v13 = *(v10 + 40);
  v14 = sub_23B6E9188();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v85 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_23B6E6EC4();
  v102 = v16;
  v103 = v14;
  *&v106 = v14;
  *(&v106 + 1) = v16;
  v97 = v18;
  v98 = WitnessTable;
  *&v107 = WitnessTable;
  *(&v107 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v84 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v74 - v23;
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = v12;
  *(&v27 + 1) = v2;
  v28 = *(v10 + 48);
  v77 = v13;
  *&v29 = v13;
  v96 = v28;
  *(&v29 + 1) = v28;
  v100 = v29;
  v101 = v27;
  v107 = v29;
  v106 = v27;
  v30 = type metadata accessor for DevicePairingView.AdvertiserContentMode(0, &v106);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - v32;
  v91 = OpaqueTypeMetadata2;
  v93 = v2;
  v34 = sub_23B6E9028();
  v94 = *(v34 - 8);
  v95 = v34;
  MEMORY[0x28223BE20](v34);
  v92 = &v74 - v35;
  v36 = v89;
  (*(v31 + 16))(v33, v89 + *(v10 + 64), v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v78;
    v38 = v93;
    (*(v3 + 32))(v78, v33, v93);
    v39 = v79;
    v40 = v96;
    sub_23B6E35C4();
    v41 = v80;
    sub_23B6E35C4();
    *&v106 = v103;
    *(&v106 + 1) = v102;
    v43 = v97;
    v42 = v98;
    *&v107 = v98;
    *(&v107 + 1) = v97;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v92;
    sub_23B6E1A14(v41, v91, v38, OpaqueTypeConformance2, v40);
    v46 = *(v3 + 8);
    v46(v41, v38);
    v46(v39, v38);
    v46(v37, v38);
  }

  else
  {
    v75 = v24;
    (*(v24 + 32))(v26, v33, v12);
    v47 = v83;
    v80 = *(v83 + 16);
    v48 = v81;
    v49 = v36;
    v50 = v36;
    v51 = v88;
    v80(v81, v50, v88);
    v76 = v12;
    v52 = *(v47 + 80);
    v74 = v26;
    v53 = (v52 + 48) & ~v52;
    v54 = swift_allocObject();
    v55 = v100;
    *(v54 + 16) = v101;
    *(v54 + 32) = v55;
    v83 = *(v47 + 32);
    v56 = (v83)(v54 + v53, v48, v51);
    MEMORY[0x28223BE20](v56);
    *(&v74 - 3) = v101;
    v57 = v85;
    sub_23B6E9178();
    v79 = sub_23B6E80FC(v51);
    v80(v48, v49, v51);
    v58 = swift_allocObject();
    v59 = v100;
    *(v58 + 16) = v101;
    *(v58 + 32) = v59;
    v60 = v58 + v53;
    v61 = v103;
    (v83)(v60, v48, v51);
    v62 = v102;
    v63 = v97;
    v73 = v97;
    v42 = v98;
    v71 = v102;
    v72 = v98;
    v64 = v84;
    sub_23B6E9118();

    v43 = v63;

    (*(v87 + 8))(v57, v61);
    *&v106 = v61;
    *(&v106 + 1) = v62;
    *&v107 = v42;
    *(&v107 + 1) = v63;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v82;
    v67 = v91;
    sub_23B6E35C4();
    v68 = *(v86 + 8);
    v68(v64, v67);
    sub_23B6E35C4();
    v45 = v92;
    v40 = v96;
    sub_23B6E191C(v64, v67, v93, v65, v96);
    v68(v64, v67);
    v68(v66, v67);
    (*(v75 + 8))(v74, v76);
  }

  *&v106 = v103;
  *(&v106 + 1) = v102;
  *&v107 = v42;
  *(&v107 + 1) = v43;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v40;
  v69 = v95;
  swift_getWitnessTable();
  sub_23B6E35C4();
  return (*(v94 + 8))(v45, v69);
}

uint64_t sub_23B6E7E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v5 = a1 + *(type metadata accessor for DevicePairingView(0, &v8) + 60);
  v6 = *(v5 + 8);
  LOBYTE(v8) = *v5;
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9138();
  sub_23B6E9148();
}

uint64_t sub_23B6E7F40(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v11[0] = v2[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(a1(0, v11) - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a2(v8, v3, v4, v5, v6);
}

uint64_t sub_23B6E7FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B6E35C4();
  sub_23B6E35C4();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23B6E80FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A928, &unk_23B6E98C0);
  sub_23B6E9158();
  return v2;
}

uint64_t sub_23B6E8160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23B6E6328(a1, a2);
  type metadata accessor for DeviceAdvertiserVC(0);
  sub_23B6E8EF8();
  v3 = sub_23B6E90D8();
  v4 = sub_23B6E8FF8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E17A9B0, &qword_23B6E9B60);
  v6 = a2 + *(result + 36);
  *v6 = v4;
  *(v6 + 8) = v3;
  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12 = v0[2];
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = (type metadata accessor for DevicePairingView(0, &v12) - 8);
  v6 = v0 + ((*(*v5 + 80) + 48) & ~*(*v5 + 80));
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v5[15];
  v8 = sub_23B6E8F08();
  (*(*(v8 - 8) + 8))(&v6[v7], v8);
  v9 = v5[16];
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  type metadata accessor for DevicePairingView.AdvertiserContentMode(0, &v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v2;
  }

  else
  {
    v10 = v1;
  }

  (*(*(v10 - 8) + 8))(&v6[v9]);

  return swift_deallocObject();
}

uint64_t sub_23B6E8368@<X0>(uint64_t (*a1)(void, void *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v9[0] = v2[2];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(a1(0, v9) - 8);
  return sub_23B6E8160(v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), a2);
}

void sub_23B6E8480(uint64_t a1)
{
  v2 = sub_23B6E6008();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v13 = v2;
    v4 = *(a1 + 32);
    v9[0] = *(a1 + 16);
    v9[1] = v4;
    v5 = type metadata accessor for DeviceAdvertiser.AdvertiserContentMode(319, v9);
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v14 = v5;
      sub_23B6E267C();
      if (v8 <= 0x3F)
      {
        v12 = 0;
        v15 = v7;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B6E8528(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  if (v4 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v8 = ((v4 + ((v7 + 40) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *(a1 + 24);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_23B6E867C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 24) - 8);
  v5 = *(v4 + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v7 = ((v5 + ((v6 + 40) & ~v6) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (v7)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v11 = a2 & 0x7FFFFFFF;
    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 + 1;
    }

    if (v7)
    {
      v13 = result;
      bzero(result, v7);
      result = v13;
      *v13 = v11;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(result + v7) = v12;
      }

      else
      {
        *(result + v7) = v12;
      }
    }

    else if (v8)
    {
      *(result + v7) = v12;
    }

    return result;
  }

  v8 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 <= 1)
  {
    if (v8)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *(result + v7) = 0;
    goto LABEL_28;
  }

  *(result + v7) = 0;
  if (a2)
  {
LABEL_29:
    *(result + 3) = (a2 - 1);
  }

  return result;
}

void sub_23B6E8824(uint64_t a1)
{
  v2 = sub_23B6E6008();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v16 = v2;
    v4 = sub_23B6E8F08();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v17 = v4;
      v6 = *(a1 + 32);
      v11[0] = *(a1 + 16);
      v11[1] = v6;
      v7 = type metadata accessor for DevicePairingView.AdvertiserContentMode(319, v11);
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v18 = v7;
        sub_23B6E267C();
        if (v10 <= 0x3F)
        {
          v15 = 0;
          v19 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B6E88E4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23B6E8F08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(a3 + 24) - 8);
  v11 = *(v7 + 80);
  if (*(v10 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(v10 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v13 = *(v10 + 80) | *(*(*(a3 + 16) - 8) + 80);
  v14 = ((v12 + ((((v11 + 40) & ~v11) + *(*(v6 - 8) + 64) + v13) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v9 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14)) == 0)
  {
LABEL_31:
    if ((v8 & 0x80000000) != 0)
    {
      v23 = *(v7 + 48);

      return v23((a1 + v11 + 40) & ~v11);
    }

    else
    {
      v22 = *(a1 + 24);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    LODWORD(v15) = *a1;
  }

  return v9 + (v15 | v21) + 1;
}

double sub_23B6E8B1C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23B6E8F08() - 8);
  v10 = v8;
  v11 = *(v8 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(a4 + 24) - 8);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (*(v13 + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v16 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v16 = *(v13 + 64);
  }

  v17 = *(v13 + 80) | *(*(*(a4 + 16) - 8) + 80);
  v18 = ((v16 + ((((v14 + 40) & ~v14) + v15 + v17) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
    v22 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((v16 + ((((v14 + 40) & ~v14) + v15 + v17) & ~v17) + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v12 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *&a1[v18] = 0;
      }

      else if (v21)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      if ((v11 & 0x80000000) != 0)
      {
        v25 = *(v10 + 56);

        v25(&a1[v14 + 40] & ~v14, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 8) = 0u;
        *(a1 + 24) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = (a2 - 1);
      }

      return result;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v12 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *&a1[v18] = v23;
    }

    else
    {
      *&a1[v18] = v23;
    }
  }

  else if (v21)
  {
    a1[v18] = v23;
  }

  return result;
}

uint64_t sub_23B6E8DB0(void *a1)
{
  sub_23B6E9188();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E17A9B0, &qword_23B6E9B60);
  swift_getWitnessTable();
  sub_23B6E6EC4();
  swift_getOpaqueTypeMetadata2();
  sub_23B6E9028();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}