uint64_t sub_1D9631B40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9639510(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9631B68(uint64_t a1)
{
  v2 = sub_1D96355A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631BA4(uint64_t a1)
{
  v2 = sub_1D96355A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631BE0(uint64_t a1)
{
  v2 = sub_1D9635660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631C1C(uint64_t a1)
{
  v2 = sub_1D9635660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631C58(uint64_t a1)
{
  v2 = sub_1D9635778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631C94(uint64_t a1)
{
  v2 = sub_1D9635778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631CD0(uint64_t a1)
{
  v2 = sub_1D9635820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631D0C(uint64_t a1)
{
  v2 = sub_1D9635820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPublicDataRequest.Request.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22160, &qword_1D9676AF8);
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v84 = &v76 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22168, &qword_1D9676B00);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22170, &qword_1D9676B08);
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v76 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22178, &qword_1D9676B10);
  v76 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v76 - v7;
  v8 = sub_1D966E618();
  v9 = *(v8 - 8);
  v92 = v8;
  v93 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77 = &v76 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v87 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22180, &qword_1D9676B18);
  v89 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  v21 = type metadata accessor for SetPublicDataRequest.Request(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22188, &qword_1D9676B20);
  v97 = *(v24 - 8);
  v98 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96355A8();
  v94 = v26;
  sub_1D966F118();
  sub_1D96355FC(v95, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v89;
    v36 = v90;
    v38 = v91;
    if (EnumCaseMultiPayload)
    {
      v64 = v17;
      v66 = v92;
      v65 = v93;
      (*(v93 + 32))(v64, v23, v92);
      LOBYTE(v99) = 1;
      sub_1D96357CC();
      v67 = v94;
      sub_1D966EED8();
      sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      sub_1D966EF68();
      (*(v76 + 8))(v36, v38);
      (*(v65 + 8))(v64, v66);
      return (*(v97 + 8))(v67, v98);
    }

    else
    {
      LOBYTE(v99) = 0;
      sub_1D9635820();
      v39 = v98;
      v40 = v94;
      sub_1D966EED8();
      sub_1D966EEE8();

      (*(v37 + 8))(v20, v18);
      return (*(v97 + 8))(v40, v39);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221C8, &qword_1D9676B38);
      v42 = &v23[*(v41 + 48)];
      v43 = *v42;
      v95 = *(v42 + 1);
      v44 = &v23[*(v41 + 64)];
      v46 = *v44;
      v45 = v44[1];
      v91 = v46;
      v89 = v43;
      v90 = v45;
      v47 = v92;
      v48 = v93;
      v49 = v87;
      (*(v93 + 32))(v87, v23, v92);
      LOBYTE(v99) = 2;
      sub_1D9635778();
      v50 = v81;
      v51 = v98;
      v52 = v94;
      sub_1D966EED8();
      LOBYTE(v99) = 0;
      sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v53 = v83;
      v54 = v96;
      sub_1D966EF68();
      if (v54)
      {

        sub_1D9621CEC(v91, v90);
        (*(v82 + 8))(v50, v53);
        (*(v48 + 8))(v49, v47);
        return (*(v97 + 8))(v52, v51);
      }

      v69 = v90;
      v68 = v91;
      LOBYTE(v99) = 1;
      v70 = v50;
      sub_1D966EF38();

      v99 = v68;
      v100 = v69;
      v101 = 2;
      sub_1D9621C98();
      sub_1D966EF18();
      v73 = v87;
      (*(v82 + 8))(v70, v53);
      (*(v93 + 8))(v73, v92);
      (*(v97 + 8))(v52, v51);
      v74 = v68;
      v75 = v69;
    }

    else
    {
      v28 = v98;
      v29 = v94;
      if (EnumCaseMultiPayload == 3)
      {
        v31 = v92;
        v30 = v93;
        v32 = v77;
        (*(v93 + 32))(v77, v23, v92);
        LOBYTE(v99) = 3;
        sub_1D9635724();
        v33 = v78;
        sub_1D966EED8();
        sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
        v34 = v80;
        sub_1D966EF68();
        (*(v79 + 8))(v33, v34);
        (*(v30 + 8))(v32, v31);
        return (*(v97 + 8))(v29, v28);
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22198, &qword_1D9676B28);
      v95 = *&v23[*(v55 + 48)];
      v56 = &v23[*(v55 + 64)];
      v57 = *v56;
      v90 = v56[1];
      v91 = v57;
      v58 = v92;
      v59 = v93;
      v60 = v88;
      (*(v93 + 32))(v88, v23, v92);
      LOBYTE(v99) = 4;
      sub_1D9635660();
      v61 = v84;
      sub_1D966EED8();
      LOBYTE(v99) = 0;
      sub_1D9634D68(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v62 = v86;
      v63 = v96;
      sub_1D966EF68();
      if (v63)
      {

        sub_1D9621CEC(v91, v90);
        (*(v85 + 8))(v61, v62);
        (*(v59 + 8))(v60, v58);
        return (*(v97 + 8))(v29, v28);
      }

      v72 = v90;
      v71 = v91;
      v99 = v95;
      v101 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221B0, &qword_1D9676B30);
      sub_1D96356B4(&qword_1ECB221B8, MEMORY[0x1E69E76E0], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
      sub_1D966EF68();

      v99 = v71;
      v100 = v72;
      v101 = 2;
      sub_1D9621C98();
      sub_1D966EF18();
      (*(v85 + 8))(v61, v62);
      (*(v59 + 8))(v88, v58);
      (*(v97 + 8))(v29, v98);
      v74 = v91;
      v75 = v72;
    }

    return sub_1D9621CEC(v74, v75);
  }
}

uint64_t SetPublicDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221E8, &qword_1D9676B40);
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221F0, &qword_1D9676B48);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v72 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221F8, &qword_1D9676B50);
  v87 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v95 = &v72 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22200, &qword_1D9676B58);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v94 = &v72 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22208, &qword_1D9676B60);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v92 = &v72 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22210, &qword_1D9676B68);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v13 = &v72 - v12;
  v90 = type metadata accessor for SetPublicDataRequest.Request(0);
  v14 = MEMORY[0x1EEE9AC00](v90);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v72 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v72 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v72 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v72 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v72 - v28;
  v30 = a1[3];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D96355A8();
  v31 = v98;
  sub_1D966F0F8();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v73 = v27;
  v74 = v18;
  v75 = v24;
  v32 = v92;
  v34 = v94;
  v33 = v95;
  v98 = v21;
  v35 = v96;
  v76 = v29;
  v36 = v93;
  v37 = sub_1D966EEB8();
  v38 = (2 * *(v37 + 16)) | 1;
  v99 = v37;
  v100 = v37 + 32;
  v101 = 0;
  v102 = v38;
  v39 = sub_1D9602058();
  if (v39 == 5 || v101 != v102 >> 1)
  {
    v44 = sub_1D966ED58();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
    *v46 = v90;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    (*(v91 + 8))(v13, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  if (v39 > 1u)
  {
    if (v39 == 2)
    {
      v103 = 2;
      sub_1D9635778();
      v49 = v36;
      sub_1D966EDE8();
      sub_1D966E618();
      v103 = 0;
      sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      v50 = v77;
      sub_1D966EE88();
      v103 = 1;
      v66 = sub_1D966EE58();
      v68 = v67;
      v94 = v13;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221C8, &qword_1D9676B38);
      v70 = v98;
      v71 = &v98[*(v69 + 48)];
      *v71 = v66;
      v71[1] = v68;
      v103 = 2;
      sub_1D9621D48();
      sub_1D966EE38();
      (*(v87 + 8))(v33, v50);
      (*(v91 + 8))(v94, v49);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v59 = v70;
    }

    else
    {
      v40 = v36;
      if (v39 == 3)
      {
        v103 = 3;
        sub_1D9635724();
        v41 = v88;
        sub_1D966EDE8();
        sub_1D966E618();
        sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v42 = v74;
        v43 = v82;
        sub_1D966EE88();
        (*(v83 + 8))(v41, v43);
        (*(v91 + 8))(v13, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v59 = v42;
      }

      else
      {
        v103 = 4;
        sub_1D9635660();
        v51 = v35;
        sub_1D966EDE8();
        sub_1D966E618();
        v103 = 0;
        sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v52 = v84;
        v53 = v85;
        sub_1D966EE88();
        v94 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22198, &qword_1D9676B28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB221B0, &qword_1D9676B30);
        v103 = 1;
        sub_1D96356B4(&qword_1ECB22220, MEMORY[0x1E69E7708], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
        sub_1D966EE88();
        v103 = 2;
        sub_1D9621D48();
        sub_1D966EE38();
        (*(v86 + 8))(v51, v53);
        (*(v91 + 8))(v94, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v59 = v52;
      }
    }

    v64 = v97;
    v65 = v89;
    goto LABEL_16;
  }

  v48 = v76;
  if (v39)
  {
    v103 = 1;
    sub_1D96357CC();
    v54 = v36;
    sub_1D966EDE8();
    v65 = v89;
    sub_1D966E618();
    sub_1D9634D68(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v56 = v75;
    v57 = v81;
    sub_1D966EE88();
    v58 = v91;
    (*(v80 + 8))(v34, v57);
    (*(v58 + 8))(v13, v54);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v64 = v97;
    v59 = v56;
LABEL_16:
    v48 = v76;
    goto LABEL_17;
  }

  v103 = 0;
  sub_1D9635820();
  sub_1D966EDE8();
  v55 = v79;
  v60 = sub_1D966EE08();
  v62 = v61;
  (*(v78 + 8))(v32, v55);
  (*(v91 + 8))(v13, v36);
  swift_unknownObjectRelease();
  v63 = v73;
  *v73 = v60;
  v63[1] = v62;
  swift_storeEnumTagMultiPayload();
  v59 = v63;
  v64 = v97;
  v65 = v89;
LABEL_17:
  sub_1D96358E8(v59, v48, type metadata accessor for SetPublicDataRequest.Request);
  sub_1D96358E8(v48, v65, type metadata accessor for SetPublicDataRequest.Request);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1D9633AD4()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95F1E84(v2, sub_1D9633BCC, 0);
}

uint64_t sub_1D9633BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9633C68(uint64_t a1)
{
  v2 = sub_1D9635874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9633CA4(uint64_t a1)
{
  v2 = sub_1D9635874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPublicDataRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22228, &qword_1D9676B78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9635874();
  sub_1D966F118();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_1D9634D68(&qword_1ECB22238, type metadata accessor for SetPublicDataRequest.Request, &protocol conformance descriptor for SetPublicDataRequest.Request);
  sub_1D966EF68();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SetPublicDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22240, &qword_1D9676B80);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SetPublicDataRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9635874();
  sub_1D966F0F8();
  if (!v2)
  {
    v12 = v15;
    sub_1D9634D68(&qword_1ECB22248, type metadata accessor for SetPublicDataRequest.Request, &protocol conformance descriptor for SetPublicDataRequest.Request);
    v13 = v17;
    sub_1D966EE88();
    (*(v16 + 8))(v8, v6);
    sub_1D96358E8(v13, v11, type metadata accessor for SetPublicDataRequest.Request);
    sub_1D96358E8(v11, v12, type metadata accessor for SetPublicDataRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D96340E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22228, &qword_1D9676B78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9635874();
  sub_1D966F118();
  type metadata accessor for SetPublicDataRequest.Request(0);
  sub_1D9634D68(&qword_1ECB22238, type metadata accessor for SetPublicDataRequest.Request, &protocol conformance descriptor for SetPublicDataRequest.Request);
  sub_1D966EF68();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D963425C()
{
  result = qword_1EDCF67B8[0];
  if (!qword_1EDCF67B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCF67B8);
  }

  return result;
}

unint64_t sub_1D96342B0()
{
  result = qword_1ECB21E18;
  if (!qword_1ECB21E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E18);
  }

  return result;
}

unint64_t sub_1D9634304()
{
  result = qword_1ECB21E20;
  if (!qword_1ECB21E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E20);
  }

  return result;
}

unint64_t sub_1D9634358()
{
  result = qword_1ECB21E28;
  if (!qword_1ECB21E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E28);
  }

  return result;
}

unint64_t sub_1D96343AC()
{
  result = qword_1EDCF6678;
  if (!qword_1EDCF6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6678);
  }

  return result;
}

unint64_t sub_1D9634400()
{
  result = qword_1ECB21E30;
  if (!qword_1ECB21E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E30);
  }

  return result;
}

unint64_t sub_1D9634454()
{
  result = qword_1ECB21E38;
  if (!qword_1ECB21E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E38);
  }

  return result;
}

unint64_t sub_1D96344A8()
{
  result = qword_1ECB21E40;
  if (!qword_1ECB21E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E40);
  }

  return result;
}

unint64_t sub_1D96344FC()
{
  result = qword_1EDCF66D8;
  if (!qword_1EDCF66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66D8);
  }

  return result;
}

unint64_t sub_1D9634550()
{
  result = qword_1ECB21E48;
  if (!qword_1ECB21E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E48);
  }

  return result;
}

unint64_t sub_1D96345A4()
{
  result = qword_1ECB21E50;
  if (!qword_1ECB21E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E50);
  }

  return result;
}

unint64_t sub_1D96345F8()
{
  result = qword_1ECB21E58;
  if (!qword_1ECB21E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21E58);
  }

  return result;
}

unint64_t sub_1D963464C()
{
  result = qword_1ECB21EB8;
  if (!qword_1ECB21EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21EB8);
  }

  return result;
}

uint64_t sub_1D96346A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a6 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        return sub_1D95EA68C(a5, a6 & 0xCFFFFFFFFFFFFFFFLL);
      }

      return v9;
    }
  }

  if (v8 == 3 || v8 == 4 || v8 == 5)
  {
  }

  return v9;
}

unint64_t sub_1D9634704()
{
  result = qword_1EDCF6710;
  if (!qword_1EDCF6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6710);
  }

  return result;
}

unint64_t sub_1D9634758()
{
  result = qword_1EDCF66D0;
  if (!qword_1EDCF66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66D0);
  }

  return result;
}

uint64_t sub_1D96347AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (a6 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        return sub_1D95EA55C(a5, a6 & 0xCFFFFFFFFFFFFFFFLL);
      }

      return v9;
    }
  }

  if (v8 == 3 || v8 == 4 || v8 == 5)
  {
  }

  return v9;
}

unint64_t sub_1D9634810()
{
  result = qword_1EDCF6300[0];
  if (!qword_1EDCF6300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCF6300);
  }

  return result;
}

unint64_t sub_1D9634864()
{
  result = qword_1EDCF6920;
  if (!qword_1EDCF6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6920);
  }

  return result;
}

unint64_t sub_1D96348B8()
{
  result = qword_1ECB21F28;
  if (!qword_1ECB21F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F28);
  }

  return result;
}

unint64_t sub_1D963490C()
{
  result = qword_1ECB21F48;
  if (!qword_1ECB21F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F48);
  }

  return result;
}

unint64_t sub_1D9634960()
{
  result = qword_1ECB21F50;
  if (!qword_1ECB21F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F50);
  }

  return result;
}

unint64_t sub_1D96349B4()
{
  result = qword_1EDCF6698;
  if (!qword_1EDCF6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6698);
  }

  return result;
}

unint64_t sub_1D9634A08()
{
  result = qword_1ECB21F58;
  if (!qword_1ECB21F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F58);
  }

  return result;
}

unint64_t sub_1D9634A5C()
{
  result = qword_1ECB21F60;
  if (!qword_1ECB21F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F60);
  }

  return result;
}

unint64_t sub_1D9634AB0()
{
  result = qword_1EDCF66E8;
  if (!qword_1EDCF66E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66E8);
  }

  return result;
}

unint64_t sub_1D9634B04()
{
  result = qword_1ECB21F68;
  if (!qword_1ECB21F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F68);
  }

  return result;
}

unint64_t sub_1D9634B58()
{
  result = qword_1ECB21F70;
  if (!qword_1ECB21F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F70);
  }

  return result;
}

unint64_t sub_1D9634BAC()
{
  result = qword_1ECB21F78;
  if (!qword_1ECB21F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F78);
  }

  return result;
}

uint64_t sub_1D9634C00(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21F80, &qword_1D96769C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9634C78()
{
  result = qword_1ECB21F90;
  if (!qword_1ECB21F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21F90);
  }

  return result;
}

uint64_t sub_1D9634CCC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21F30, &qword_1D96769B8);
    sub_1D9634D68(a2, type metadata accessor for AppLibrary.ExceptionRequest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9634D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9634DB0()
{
  result = qword_1ECB22008;
  if (!qword_1ECB22008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22008);
  }

  return result;
}

unint64_t sub_1D9634E04()
{
  result = qword_1EDCF6878;
  if (!qword_1EDCF6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6878);
  }

  return result;
}

unint64_t sub_1D9634E58()
{
  result = qword_1EDCF6648;
  if (!qword_1EDCF6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6648);
  }

  return result;
}

unint64_t sub_1D9634EAC()
{
  result = qword_1EDCF66E0;
  if (!qword_1EDCF66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF66E0);
  }

  return result;
}

unint64_t sub_1D9634F00()
{
  result = qword_1ECB22038;
  if (!qword_1ECB22038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22038);
  }

  return result;
}

unint64_t sub_1D9634F54()
{
  result = qword_1ECB22040;
  if (!qword_1ECB22040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22040);
  }

  return result;
}

unint64_t sub_1D9634FA8()
{
  result = qword_1ECB22048;
  if (!qword_1ECB22048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22048);
  }

  return result;
}

unint64_t sub_1D9634FFC()
{
  result = qword_1ECB22070;
  if (!qword_1ECB22070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22070);
  }

  return result;
}

unint64_t sub_1D9635050()
{
  result = qword_1ECB22078;
  if (!qword_1ECB22078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22078);
  }

  return result;
}

unint64_t sub_1D96350A4()
{
  result = qword_1ECB22088;
  if (!qword_1ECB22088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22088);
  }

  return result;
}

unint64_t sub_1D96350F8()
{
  result = qword_1ECB220C8;
  if (!qword_1ECB220C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220C8);
  }

  return result;
}

unint64_t sub_1D963514C()
{
  result = qword_1ECB220D0;
  if (!qword_1ECB220D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220D0);
  }

  return result;
}

unint64_t sub_1D96351A0()
{
  result = qword_1ECB220D8;
  if (!qword_1ECB220D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220D8);
  }

  return result;
}

unint64_t sub_1D96351F4()
{
  result = qword_1ECB220E0;
  if (!qword_1ECB220E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220E0);
  }

  return result;
}

unint64_t sub_1D9635248()
{
  result = qword_1ECB220E8;
  if (!qword_1ECB220E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220E8);
  }

  return result;
}

unint64_t sub_1D963529C()
{
  result = qword_1ECB220F0;
  if (!qword_1ECB220F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220F0);
  }

  return result;
}

unint64_t sub_1D96352F0()
{
  result = qword_1ECB220F8;
  if (!qword_1ECB220F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB220F8);
  }

  return result;
}

uint64_t sub_1D9635344(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      if (a7 != 5)
      {
        return v7;
      }
    }
  }

  else if (a7)
  {
    if (a7 != 1 && a7 != 2)
    {
      return v7;
    }
  }

  else
  {
  }
}

uint64_t sub_1D96353E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 - 3 >= 2)
    {
      if (a7 != 5)
      {
        return v7;
      }
    }
  }

  else if (a7)
  {
    if (a7 != 1 && a7 != 2)
    {
      return v7;
    }
  }

  else
  {
  }
}

unint64_t sub_1D963548C()
{
  result = qword_1ECB22140;
  if (!qword_1ECB22140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22140);
  }

  return result;
}

unint64_t sub_1D96354E0()
{
  result = qword_1ECB22148;
  if (!qword_1ECB22148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22148);
  }

  return result;
}

unint64_t sub_1D9635534()
{
  result = qword_1ECB22158;
  if (!qword_1ECB22158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22158);
  }

  return result;
}

unint64_t sub_1D96355A8()
{
  result = qword_1ECB22190;
  if (!qword_1ECB22190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22190);
  }

  return result;
}

uint64_t sub_1D96355FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetPublicDataRequest.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9635660()
{
  result = qword_1ECB221A0;
  if (!qword_1ECB221A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221A0);
  }

  return result;
}

uint64_t sub_1D96356B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB221B0, &qword_1D9676B30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9635724()
{
  result = qword_1ECB221C0;
  if (!qword_1ECB221C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221C0);
  }

  return result;
}

unint64_t sub_1D9635778()
{
  result = qword_1ECB221D0;
  if (!qword_1ECB221D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221D0);
  }

  return result;
}

unint64_t sub_1D96357CC()
{
  result = qword_1ECB221D8;
  if (!qword_1ECB221D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221D8);
  }

  return result;
}

unint64_t sub_1D9635820()
{
  result = qword_1ECB221E0;
  if (!qword_1ECB221E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB221E0);
  }

  return result;
}

unint64_t sub_1D9635874()
{
  result = qword_1ECB22230;
  if (!qword_1ECB22230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22230);
  }

  return result;
}

uint64_t sub_1D96358E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9635954()
{
  result = qword_1ECB22250;
  if (!qword_1ECB22250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22250);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_14MarketplaceKit23FetchPrivateDataRequestV0F0O(uint64_t a1)
{
  v1 = (*(a1 + 40) >> 60) & 3 | (4 * (*(a1 + 48) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D96359F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 49))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 40) >> 60) & 3 | (4 * *(a1 + 48))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D9635A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 1018;
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = (-a2 & 3) << 60;
      *(result + 48) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1D9635AC4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 48) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x2000000000000000;
    *(result + 48) = 1;
  }

  return result;
}

uint64_t sub_1D9635B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9635B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1D9635C18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9635C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9635CF4(uint64_t a1)
{
  result = type metadata accessor for SetPublicDataRequest.Request(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9635D60(uint64_t a1)
{
  sub_1D96127EC();
  if (v1 <= 0x3F)
  {
    sub_1D9635EA4(319, &qword_1ECB22278);
    if (v2 <= 0x3F)
    {
      sub_1D9635E20(319);
      if (v3 <= 0x3F)
      {
        sub_1D9635EA4(319, &qword_1ECB22290);
        if (v4 <= 0x3F)
        {
          sub_1D9635EEC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9635E20(uint64_t a1)
{
  if (!qword_1ECB22280)
  {
    sub_1D966E618();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB22288, &qword_1D96777A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB22280);
    }
  }
}

void sub_1D9635EA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D966E618();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D9635EEC(uint64_t a1)
{
  if (!qword_1ECB22298)
  {
    sub_1D966E618();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB221B0, &qword_1D9676B30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB22288, &qword_1D96777A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB22298);
    }
  }
}

unint64_t sub_1D9636240()
{
  result = qword_1ECB222A0;
  if (!qword_1ECB222A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222A0);
  }

  return result;
}

unint64_t sub_1D9636298()
{
  result = qword_1ECB222A8;
  if (!qword_1ECB222A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222A8);
  }

  return result;
}

unint64_t sub_1D96362F0()
{
  result = qword_1ECB222B0;
  if (!qword_1ECB222B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222B0);
  }

  return result;
}

unint64_t sub_1D9636348()
{
  result = qword_1ECB222B8;
  if (!qword_1ECB222B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222B8);
  }

  return result;
}

unint64_t sub_1D96363A0()
{
  result = qword_1ECB222C0;
  if (!qword_1ECB222C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222C0);
  }

  return result;
}

unint64_t sub_1D96363F8()
{
  result = qword_1ECB222C8;
  if (!qword_1ECB222C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222C8);
  }

  return result;
}

unint64_t sub_1D9636450()
{
  result = qword_1ECB222D0;
  if (!qword_1ECB222D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222D0);
  }

  return result;
}

unint64_t sub_1D96364A8()
{
  result = qword_1ECB222D8;
  if (!qword_1ECB222D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222D8);
  }

  return result;
}

unint64_t sub_1D9636500()
{
  result = qword_1ECB222E0;
  if (!qword_1ECB222E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222E0);
  }

  return result;
}

unint64_t sub_1D9636558()
{
  result = qword_1ECB222E8;
  if (!qword_1ECB222E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222E8);
  }

  return result;
}

unint64_t sub_1D96365B0()
{
  result = qword_1ECB222F0;
  if (!qword_1ECB222F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222F0);
  }

  return result;
}

unint64_t sub_1D9636608()
{
  result = qword_1ECB222F8;
  if (!qword_1ECB222F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB222F8);
  }

  return result;
}

unint64_t sub_1D9636660()
{
  result = qword_1ECB22300;
  if (!qword_1ECB22300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22300);
  }

  return result;
}

unint64_t sub_1D96366B8()
{
  result = qword_1ECB22308;
  if (!qword_1ECB22308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22308);
  }

  return result;
}

unint64_t sub_1D9636710()
{
  result = qword_1ECB22310;
  if (!qword_1ECB22310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22310);
  }

  return result;
}

unint64_t sub_1D9636768()
{
  result = qword_1ECB22318;
  if (!qword_1ECB22318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22318);
  }

  return result;
}

unint64_t sub_1D96367C0()
{
  result = qword_1ECB22320;
  if (!qword_1ECB22320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22320);
  }

  return result;
}

unint64_t sub_1D9636818()
{
  result = qword_1ECB22328;
  if (!qword_1ECB22328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22328);
  }

  return result;
}

unint64_t sub_1D9636870()
{
  result = qword_1ECB22330;
  if (!qword_1ECB22330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22330);
  }

  return result;
}

unint64_t sub_1D96368C8()
{
  result = qword_1ECB22338;
  if (!qword_1ECB22338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22338);
  }

  return result;
}

unint64_t sub_1D9636920()
{
  result = qword_1ECB22340;
  if (!qword_1ECB22340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22340);
  }

  return result;
}

unint64_t sub_1D9636978()
{
  result = qword_1ECB22348;
  if (!qword_1ECB22348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22348);
  }

  return result;
}

unint64_t sub_1D96369D0()
{
  result = qword_1ECB22350;
  if (!qword_1ECB22350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22350);
  }

  return result;
}

unint64_t sub_1D9636A28()
{
  result = qword_1ECB22358;
  if (!qword_1ECB22358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22358);
  }

  return result;
}

unint64_t sub_1D9636A80()
{
  result = qword_1ECB22360;
  if (!qword_1ECB22360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22360);
  }

  return result;
}

unint64_t sub_1D9636AD8()
{
  result = qword_1ECB22368;
  if (!qword_1ECB22368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22368);
  }

  return result;
}

unint64_t sub_1D9636B30()
{
  result = qword_1ECB22370;
  if (!qword_1ECB22370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22370);
  }

  return result;
}

unint64_t sub_1D9636B88()
{
  result = qword_1ECB22378;
  if (!qword_1ECB22378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22378);
  }

  return result;
}

unint64_t sub_1D9636BE0()
{
  result = qword_1ECB22380;
  if (!qword_1ECB22380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22380);
  }

  return result;
}

unint64_t sub_1D9636C38()
{
  result = qword_1ECB22388;
  if (!qword_1ECB22388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22388);
  }

  return result;
}

unint64_t sub_1D9636C90()
{
  result = qword_1ECB22390;
  if (!qword_1ECB22390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22390);
  }

  return result;
}

unint64_t sub_1D9636CE8()
{
  result = qword_1ECB22398;
  if (!qword_1ECB22398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22398);
  }

  return result;
}

unint64_t sub_1D9636D40()
{
  result = qword_1ECB223A0;
  if (!qword_1ECB223A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223A0);
  }

  return result;
}

unint64_t sub_1D9636D98()
{
  result = qword_1ECB223A8;
  if (!qword_1ECB223A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223A8);
  }

  return result;
}

unint64_t sub_1D9636DF0()
{
  result = qword_1ECB223B0;
  if (!qword_1ECB223B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223B0);
  }

  return result;
}

unint64_t sub_1D9636E48()
{
  result = qword_1ECB223B8;
  if (!qword_1ECB223B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223B8);
  }

  return result;
}

unint64_t sub_1D9636EA0()
{
  result = qword_1ECB223C0;
  if (!qword_1ECB223C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223C0);
  }

  return result;
}

unint64_t sub_1D9636EF8()
{
  result = qword_1ECB223C8;
  if (!qword_1ECB223C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223C8);
  }

  return result;
}

unint64_t sub_1D9636F50()
{
  result = qword_1ECB223D0;
  if (!qword_1ECB223D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223D0);
  }

  return result;
}

unint64_t sub_1D9636FA8()
{
  result = qword_1ECB223D8;
  if (!qword_1ECB223D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223D8);
  }

  return result;
}

unint64_t sub_1D9637000()
{
  result = qword_1ECB223E0;
  if (!qword_1ECB223E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223E0);
  }

  return result;
}

unint64_t sub_1D9637058()
{
  result = qword_1ECB223E8;
  if (!qword_1ECB223E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223E8);
  }

  return result;
}

unint64_t sub_1D96370B0()
{
  result = qword_1ECB223F0;
  if (!qword_1ECB223F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223F0);
  }

  return result;
}

unint64_t sub_1D9637108()
{
  result = qword_1ECB223F8;
  if (!qword_1ECB223F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB223F8);
  }

  return result;
}

unint64_t sub_1D9637160()
{
  result = qword_1ECB22400;
  if (!qword_1ECB22400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22400);
  }

  return result;
}

unint64_t sub_1D96371B8()
{
  result = qword_1ECB22408;
  if (!qword_1ECB22408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22408);
  }

  return result;
}

unint64_t sub_1D9637210()
{
  result = qword_1ECB22410;
  if (!qword_1ECB22410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22410);
  }

  return result;
}

unint64_t sub_1D9637268()
{
  result = qword_1ECB22418;
  if (!qword_1ECB22418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22418);
  }

  return result;
}

unint64_t sub_1D96372C0()
{
  result = qword_1ECB22420;
  if (!qword_1ECB22420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22420);
  }

  return result;
}

unint64_t sub_1D9637318()
{
  result = qword_1ECB22428;
  if (!qword_1ECB22428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22428);
  }

  return result;
}

unint64_t sub_1D9637370()
{
  result = qword_1ECB22430;
  if (!qword_1ECB22430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22430);
  }

  return result;
}

unint64_t sub_1D96373C8()
{
  result = qword_1ECB22438;
  if (!qword_1ECB22438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22438);
  }

  return result;
}

unint64_t sub_1D9637420()
{
  result = qword_1ECB22440;
  if (!qword_1ECB22440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22440);
  }

  return result;
}

unint64_t sub_1D9637478()
{
  result = qword_1ECB22448;
  if (!qword_1ECB22448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22448);
  }

  return result;
}

unint64_t sub_1D96374D0()
{
  result = qword_1ECB22450;
  if (!qword_1ECB22450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22450);
  }

  return result;
}

unint64_t sub_1D9637528()
{
  result = qword_1ECB22458;
  if (!qword_1ECB22458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22458);
  }

  return result;
}

unint64_t sub_1D9637580()
{
  result = qword_1ECB22460;
  if (!qword_1ECB22460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22460);
  }

  return result;
}

unint64_t sub_1D96375D8()
{
  result = qword_1ECB22468;
  if (!qword_1ECB22468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22468);
  }

  return result;
}

unint64_t sub_1D9637630()
{
  result = qword_1ECB22470;
  if (!qword_1ECB22470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22470);
  }

  return result;
}

unint64_t sub_1D9637688()
{
  result = qword_1ECB22478;
  if (!qword_1ECB22478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22478);
  }

  return result;
}

unint64_t sub_1D96376E0()
{
  result = qword_1ECB22480;
  if (!qword_1ECB22480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22480);
  }

  return result;
}

unint64_t sub_1D9637738()
{
  result = qword_1ECB22488;
  if (!qword_1ECB22488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22488);
  }

  return result;
}

unint64_t sub_1D9637790()
{
  result = qword_1ECB22490;
  if (!qword_1ECB22490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22490);
  }

  return result;
}

unint64_t sub_1D96377E8()
{
  result = qword_1ECB22498;
  if (!qword_1ECB22498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22498);
  }

  return result;
}

unint64_t sub_1D9637840()
{
  result = qword_1ECB224A0;
  if (!qword_1ECB224A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224A0);
  }

  return result;
}

unint64_t sub_1D9637898()
{
  result = qword_1ECB224A8;
  if (!qword_1ECB224A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224A8);
  }

  return result;
}

unint64_t sub_1D96378F0()
{
  result = qword_1ECB224B0;
  if (!qword_1ECB224B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224B0);
  }

  return result;
}

unint64_t sub_1D9637948()
{
  result = qword_1ECB224B8;
  if (!qword_1ECB224B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224B8);
  }

  return result;
}

unint64_t sub_1D96379A0()
{
  result = qword_1ECB224C0;
  if (!qword_1ECB224C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224C0);
  }

  return result;
}

unint64_t sub_1D96379F8()
{
  result = qword_1ECB224C8;
  if (!qword_1ECB224C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224C8);
  }

  return result;
}

unint64_t sub_1D9637A50()
{
  result = qword_1ECB224D0;
  if (!qword_1ECB224D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224D0);
  }

  return result;
}

unint64_t sub_1D9637AA8()
{
  result = qword_1ECB224D8;
  if (!qword_1ECB224D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224D8);
  }

  return result;
}

unint64_t sub_1D9637B00()
{
  result = qword_1ECB224E0;
  if (!qword_1ECB224E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224E0);
  }

  return result;
}

unint64_t sub_1D9637B58()
{
  result = qword_1ECB224E8;
  if (!qword_1ECB224E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224E8);
  }

  return result;
}

unint64_t sub_1D9637BB0()
{
  result = qword_1ECB224F0;
  if (!qword_1ECB224F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224F0);
  }

  return result;
}

unint64_t sub_1D9637C08()
{
  result = qword_1EDCF6868;
  if (!qword_1EDCF6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6868);
  }

  return result;
}

unint64_t sub_1D9637C60()
{
  result = qword_1EDCF6870;
  if (!qword_1EDCF6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6870);
  }

  return result;
}

unint64_t sub_1D9637CB8()
{
  result = qword_1EDCF68A0;
  if (!qword_1EDCF68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68A0);
  }

  return result;
}

unint64_t sub_1D9637D10()
{
  result = qword_1EDCF68A8;
  if (!qword_1EDCF68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68A8);
  }

  return result;
}

unint64_t sub_1D9637D68()
{
  result = qword_1EDCF68C0;
  if (!qword_1EDCF68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68C0);
  }

  return result;
}

unint64_t sub_1D9637DC0()
{
  result = qword_1EDCF68C8;
  if (!qword_1EDCF68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68C8);
  }

  return result;
}

unint64_t sub_1D9637E18()
{
  result = qword_1EDCF6900;
  if (!qword_1EDCF6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6900);
  }

  return result;
}

unint64_t sub_1D9637E70()
{
  result = qword_1EDCF6908;
  if (!qword_1EDCF6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6908);
  }

  return result;
}

unint64_t sub_1D9637EC8()
{
  result = qword_1EDCF6890;
  if (!qword_1EDCF6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6890);
  }

  return result;
}

unint64_t sub_1D9637F20()
{
  result = qword_1EDCF6898;
  if (!qword_1EDCF6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6898);
  }

  return result;
}

unint64_t sub_1D9637F78()
{
  result = qword_1EDCF68B0;
  if (!qword_1EDCF68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68B0);
  }

  return result;
}

unint64_t sub_1D9637FD0()
{
  result = qword_1EDCF68B8;
  if (!qword_1EDCF68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68B8);
  }

  return result;
}

unint64_t sub_1D9638028()
{
  result = qword_1EDCF68D0;
  if (!qword_1EDCF68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68D0);
  }

  return result;
}

unint64_t sub_1D9638080()
{
  result = qword_1EDCF68D8;
  if (!qword_1EDCF68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68D8);
  }

  return result;
}

unint64_t sub_1D96380D8()
{
  result = qword_1EDCF6880;
  if (!qword_1EDCF6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6880);
  }

  return result;
}

unint64_t sub_1D9638130()
{
  result = qword_1EDCF6888;
  if (!qword_1EDCF6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6888);
  }

  return result;
}

unint64_t sub_1D9638188()
{
  result = qword_1EDCF68F0;
  if (!qword_1EDCF68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68F0);
  }

  return result;
}

unint64_t sub_1D96381E0()
{
  result = qword_1EDCF68F8;
  if (!qword_1EDCF68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68F8);
  }

  return result;
}

unint64_t sub_1D9638238()
{
  result = qword_1EDCF68E0;
  if (!qword_1EDCF68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68E0);
  }

  return result;
}

unint64_t sub_1D9638290()
{
  result = qword_1EDCF68E8;
  if (!qword_1EDCF68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF68E8);
  }

  return result;
}

unint64_t sub_1D96382E8()
{
  result = qword_1ECB224F8;
  if (!qword_1ECB224F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB224F8);
  }

  return result;
}

unint64_t sub_1D9638340()
{
  result = qword_1ECB22500;
  if (!qword_1ECB22500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22500);
  }

  return result;
}

unint64_t sub_1D9638398()
{
  result = qword_1EDCF6910;
  if (!qword_1EDCF6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6910);
  }

  return result;
}

unint64_t sub_1D96383F0()
{
  result = qword_1EDCF6918;
  if (!qword_1EDCF6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6918);
  }

  return result;
}

unint64_t sub_1D9638448()
{
  result = qword_1EDCF6700;
  if (!qword_1EDCF6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6700);
  }

  return result;
}

unint64_t sub_1D96384A0()
{
  result = qword_1EDCF6708;
  if (!qword_1EDCF6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6708);
  }

  return result;
}

unint64_t sub_1D96384F8()
{
  result = qword_1EDCF6748;
  if (!qword_1EDCF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6748);
  }

  return result;
}

unint64_t sub_1D9638550()
{
  result = qword_1EDCF6750;
  if (!qword_1EDCF6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6750);
  }

  return result;
}

unint64_t sub_1D96385A8()
{
  result = qword_1EDCF6768;
  if (!qword_1EDCF6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6768);
  }

  return result;
}

unint64_t sub_1D9638600()
{
  result = qword_1EDCF6770;
  if (!qword_1EDCF6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6770);
  }

  return result;
}

unint64_t sub_1D9638658()
{
  result = qword_1EDCF6798;
  if (!qword_1EDCF6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6798);
  }

  return result;
}

unint64_t sub_1D96386B0()
{
  result = qword_1EDCF67A0;
  if (!qword_1EDCF67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF67A0);
  }

  return result;
}

unint64_t sub_1D9638708()
{
  result = qword_1EDCF6738;
  if (!qword_1EDCF6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6738);
  }

  return result;
}

unint64_t sub_1D9638760()
{
  result = qword_1EDCF6740;
  if (!qword_1EDCF6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6740);
  }

  return result;
}

unint64_t sub_1D96387B8()
{
  result = qword_1EDCF6758;
  if (!qword_1EDCF6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6758);
  }

  return result;
}

unint64_t sub_1D9638810()
{
  result = qword_1EDCF6760;
  if (!qword_1EDCF6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6760);
  }

  return result;
}

unint64_t sub_1D9638868()
{
  result = qword_1EDCF6778;
  if (!qword_1EDCF6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6778);
  }

  return result;
}

unint64_t sub_1D96388C0()
{
  result = qword_1EDCF6780;
  if (!qword_1EDCF6780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6780);
  }

  return result;
}

unint64_t sub_1D9638918()
{
  result = qword_1EDCF6728;
  if (!qword_1EDCF6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6728);
  }

  return result;
}

unint64_t sub_1D9638970()
{
  result = qword_1EDCF6730;
  if (!qword_1EDCF6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6730);
  }

  return result;
}

unint64_t sub_1D96389C8()
{
  result = qword_1EDCF6718;
  if (!qword_1EDCF6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6718);
  }

  return result;
}

unint64_t sub_1D9638A20()
{
  result = qword_1EDCF6720;
  if (!qword_1EDCF6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6720);
  }

  return result;
}

unint64_t sub_1D9638A78()
{
  result = qword_1EDCF6788;
  if (!qword_1EDCF6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6788);
  }

  return result;
}

unint64_t sub_1D9638AD0()
{
  result = qword_1EDCF6790;
  if (!qword_1EDCF6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6790);
  }

  return result;
}

unint64_t sub_1D9638B28()
{
  result = qword_1ECB22508;
  if (!qword_1ECB22508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22508);
  }

  return result;
}

unint64_t sub_1D9638B80()
{
  result = qword_1ECB22510;
  if (!qword_1ECB22510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22510);
  }

  return result;
}

unint64_t sub_1D9638BD8()
{
  result = qword_1EDCF67A8;
  if (!qword_1EDCF67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF67A8);
  }

  return result;
}

unint64_t sub_1D9638C30()
{
  result = qword_1EDCF67B0;
  if (!qword_1EDCF67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF67B0);
  }

  return result;
}

uint64_t sub_1D9638C84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D9680F80 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680FA0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680FC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9680FE0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681000 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9681020 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D9681040 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680740 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9681060 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D9638FBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D9680F80 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9680FA0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xEE00737070416465 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680FC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9680FE0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681000 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9681020 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680740 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9681060 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D9639300(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D9681080 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D96810A0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680FC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D96810C0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681000 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D9681040 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D966EFB8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D9639510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D96810E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9681100 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9681120 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9681140 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D96396CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void __swiftcall CodableAuditToken.init(auditToken:)(MarketplaceKit::CodableAuditToken *__return_ptr retstr, audit_token_t *auditToken)
{
  *retstr->field1D9689DA0.val = auditToken;
  *&retstr->field1D9689DA0.val[2] = v2;
  *&retstr->field1D9689DA0.val[4] = v3;
  *&retstr->field1D9689DA0.val[6] = v4;
}

uint64_t CodableAuditToken.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966F0E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_1D9621D48();
    sub_1D966EFC8();
    v5 = v14;
    v6 = v15;
    v10 = 0u;
    v11 = 0u;
    v7 = sub_1D966E5D8();
    [v7 getBytes:&v10 length:32];
    sub_1D95EA55C(v5, v6);

    v12 = v10;
    v13 = v11;
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v13;
    *a2 = v12;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableAuditToken.encode(to:)(void *a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966F108();
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v3 = sub_1D9639D80(v7, 0x20uLL);
  v5 = v4;
  v8 = v3;
  v9 = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1D9621C98();
  sub_1D966EFD8();
  sub_1D95EA55C(v3, v5);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D9639BB8;

  return sub_1D9639E80(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D9639BB8(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1D9639CC8(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_1D9639D80(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D9639CC8(a1, &a1[a2]);
  }

  sub_1D966E548();
  swift_allocObject();
  sub_1D966E508();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D966E5C8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1D9639E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9639EA8, 0, 0);
}

uint64_t sub_1D9639EA8()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(v0 + 64) = 0;
  sub_1D95EA68C(v1, v2);
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1D9639FD4;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D9639FD4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D963A220;
  }

  else
  {
    v2 = sub_1D963A0E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D963A0E8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  if (v3 == 4)
  {
    sub_1D95EA55C(*(v0 + 128), *(v0 + 136));
    v6 = *(v0 + 8);

    return v6(v2, v1);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_1D9614CB8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v2, v1, v3);
    sub_1D95EA55C(v5, v4);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D963A220()
{
  sub_1D95EA55C(v0[16], v0[17]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D963A2A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x6B6F54687475416FLL;
    v14 = 0xEA00000000006E65;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v14 = 0x80000001D96802C0;
    }

    if (a1)
    {
      v12 = 7365733;
      v11 = 0xE300000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001D96802F0;
    v5 = 0xE800000000000000;
    v6 = 0x7265727265666572;
    if (a1 != 7)
    {
      v6 = 0x6572616853707061;
      v5 = 0xEB000000004C5255;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x49746E756F636361;
    v8 = 0xE900000000000044;
    if (a1 != 4)
    {
      v7 = 1701869940;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE300000000000000;
        if (v9 != 7365733)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        if (v9 != 25705)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v15 = 0xEA00000000006E65;
      if (v9 != 0x6B6F54687475416FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v16 = "proofOfDownloadToken";
    goto LABEL_44;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x7265727265666572)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xEB000000004C5255;
        if (v9 != 0x6572616853707061)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    v16 = "isMarketplaceInstall";
LABEL_44:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 == 4)
  {
    v15 = 0xE900000000000044;
    if (v9 != 0x49746E756F636361)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xE400000000000000;
    if (v9 != 1701869940)
    {
LABEL_51:
      v17 = sub_1D966EFB8();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v17 = 1;
LABEL_52:

  return v17 & 1;
}

uint64_t sub_1D963A55C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D966E9D8();
}

uint64_t AppInstallRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D966E618();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppInstallRequest.adp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallRequest(0) + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppInstallRequest(uint64_t a1)
{
  result = qword_1ECB22540;
  if (!qword_1ECB22540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppInstallRequest.oAuthToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallRequest(0) + 24));

  return v1;
}

uint64_t AppInstallRequest.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallRequest(0) + 28));

  return v1;
}

uint64_t AppInstallRequest.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppInstallRequest(0) + 32));

  return v1;
}

uint64_t AppInstallRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallRequest(0) + 36);
  v4 = sub_1D966E6B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppInstallRequest.referrer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppInstallRequest(0) + 44);

  return sub_1D95E5820(v3, a1);
}

uint64_t AppInstallRequest.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppInstallRequest(0) + 48);

  return sub_1D95E5820(v3, a1);
}

unint64_t sub_1D963A9C0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6B6F54687475416FLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000014;
    }

    if (a1)
    {
      v5 = 7365733;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x7265727265666572;
    if (a1 != 7)
    {
      v2 = 0x6572616853707061;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x49746E756F636361;
    if (a1 != 4)
    {
      v3 = 1701869940;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D963AAE4()
{
  v1 = *v0;
  sub_1D966F078();
  sub_1D963A55C(v3, v1);
  return sub_1D966F0C8();
}

uint64_t sub_1D963AB34()
{
  v1 = *v0;
  sub_1D966F078();
  sub_1D963A55C(v3, v1);
  return sub_1D966F0C8();
}

unint64_t sub_1D963AB78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D963C5F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D963ABA8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D963A9C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D963ABF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D963C5F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D963AC24(uint64_t a1)
{
  v2 = sub_1D963C194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963AC60(uint64_t a1)
{
  v2 = sub_1D963C194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1D966E608();
  sub_1D963AE44(a10);
  v17 = type metadata accessor for AppInstallRequest(0);
  v18 = v17[5];
  v19 = sub_1D966E5B8();
  v30 = *(v19 - 8);
  (*(v30 + 32))(a9 + v18, a1, v19);
  v20 = (a9 + v17[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v17[7]);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a9 + v17[8]);
  *v22 = a7;
  v22[1] = a8;
  v23 = v17[9];
  v24 = sub_1D966E6B8();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  *(a9 + v17[10]) = 0;
  v29 = *(v30 + 56);
  v29(a9 + v17[11], 1, 1, v19);
  v25 = a9 + v17[12];

  return (v29)(v25, 1, 1, v19);
}

uint64_t sub_1D963AE44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D963AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_1D966E5B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppInstallRequest(0);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LinkMetadata(0);
  sub_1D95E5820(a1 + v15[10], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D963C644(a1, type metadata accessor for LinkMetadata);
    sub_1D963AE44(v6);
    v16 = 1;
  }

  else
  {
    v43 = v12;
    (*(v8 + 32))(v10, v6, v7);
    sub_1D966E608();
    v17 = &v14[v11[5]];
    v41 = *(v8 + 16);
    v42 = v8 + 16;
    v41(v17, v10, v7);
    v18 = (a1 + v15[7]);
    v20 = *v18;
    v19 = v18[1];
    v21 = &v14[v11[6]];
    *v21 = v20;
    *(v21 + 1) = v19;
    v22 = (a1 + v15[8]);
    v23 = *v22;
    v24 = v22[1];
    v25 = &v14[v11[7]];
    *v25 = v23;
    *(v25 + 1) = v24;
    v26 = (a1 + v15[9]);
    v27 = v26[1];
    v44 = a1;
    v45 = a2;
    if (v27)
    {
      v28 = *v26;
      v39 = v27;
      v40 = v28;
    }

    else
    {
      v39 = 0xE900000000000073;
      v40 = 0x756F6D796E6F6E41;
    }

    v29 = *(v8 + 8);

    v29(v10, v7);
    v30 = &v14[v11[8]];
    v31 = v39;
    *v30 = v40;
    v30[1] = v31;
    v32 = v11[9];
    v33 = *MEMORY[0x1E696EFC8];
    v34 = sub_1D966E6B8();
    (*(*(v34 - 8) + 104))(&v14[v32], v33, v34);
    v14[v11[10]] = 1;
    v35 = v11[11];
    v36 = v44;
    v41(&v14[v35], (v44 + v15[5]), v7);
    (*(v8 + 56))(&v14[v35], 0, 1, v7);
    sub_1D95E5820(v36 + v15[11], &v14[v11[12]]);
    sub_1D963C644(v36, type metadata accessor for LinkMetadata);
    a2 = v45;
    sub_1D963C6A4(v14, v45);
    v16 = 0;
    v12 = v43;
  }

  return (*(v12 + 56))(a2, v16, 1, v11);
}

uint64_t sub_1D963B2CC()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95F20E8(v2, sub_1D963B3C4, 0);
}

void sub_1D963B3C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_9;
  v9 = _Block_copy(v10);

  [a1 requestEDPInstallation:v8 reply:v9];
  _Block_release(v9);
}

uint64_t AppInstallRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22518, &qword_1D967A540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963C194();
  sub_1D966F118();
  v18 = 0;
  sub_1D966E618();
  sub_1D963C1E8(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D966EF68();
  if (!v1)
  {
    v7 = type metadata accessor for AppInstallRequest(0);
    v17 = 1;
    sub_1D966E5B8();
    sub_1D963C1E8(&qword_1ECB20860, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D966EF68();
    v16 = 2;
    sub_1D966EEE8();
    v15 = 3;
    sub_1D966EEE8();
    v14 = 4;
    sub_1D966EF38();
    v9 = *(v7 + 36);
    v13 = 5;
    sub_1D966E6B8();
    sub_1D963C1E8(&qword_1ECB22528, MEMORY[0x1E696EFD0], MEMORY[0x1E696EFD8]);
    sub_1D966EF68();
    v12 = 6;
    sub_1D966EF48();
    v11 = 7;
    sub_1D966EF18();
    v10 = 8;
    sub_1D966EF18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AppInstallRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = v44 - v6;
  v7 = sub_1D966E6B8();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D966E5B8();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D966E618();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22530, &qword_1D967A548);
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v44 - v15;
  v17 = type metadata accessor for AppInstallRequest(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963C194();
  v58 = v16;
  v20 = v59;
  sub_1D966F0F8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v45 = v17;
  v59 = v19;
  v68 = 0;
  sub_1D963C1E8(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v22 = v55;
  sub_1D966EE88();
  v23 = v12;
  v24 = *(v54 + 32);
  v25 = v59;
  v55 = v23;
  v24(v59, v22);
  v67 = 1;
  v26 = sub_1D963C1E8(&qword_1ECB20870, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v27 = v53;
  sub_1D966EE88();
  v44[1] = v26;
  v28 = v45;
  (*(v52 + 32))(&v25[v45[5]], v21, v27);
  v66 = 2;
  v29 = sub_1D966EE08();
  v30 = &v25[v28[6]];
  *v30 = v29;
  v30[1] = v31;
  v65 = 3;
  v32 = sub_1D966EE08();
  v33 = &v25[v28[7]];
  *v33 = v32;
  v33[1] = v34;
  v64 = 4;
  v35 = sub_1D966EE58();
  v36 = &v25[v28[8]];
  *v36 = v35;
  v36[1] = v37;
  v63 = 5;
  sub_1D963C1E8(&qword_1ECB22538, MEMORY[0x1E696EFD0], MEMORY[0x1E696EFE0]);
  v38 = v49;
  v39 = v51;
  sub_1D966EE88();
  (*(v50 + 32))(&v25[v28[9]], v38, v39);
  v62 = 6;
  v25[v28[10]] = sub_1D966EE68() & 1;
  v61 = 7;
  v40 = v48;
  sub_1D966EE38();
  sub_1D961B690(v40, &v59[v45[11]]);
  v60 = 8;
  v41 = v47;
  sub_1D966EE38();
  (*(v56 + 8))(v58, v57);
  v42 = v59;
  sub_1D961B690(v41, &v59[v45[12]]);
  sub_1D963C230(v42, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D963C644(v42, type metadata accessor for AppInstallRequest);
}

unint64_t sub_1D963C194()
{
  result = qword_1ECB22520;
  if (!qword_1ECB22520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22520);
  }

  return result;
}

uint64_t sub_1D963C1E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D963C230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D963C2BC(uint64_t a1)
{
  sub_1D966E618();
  if (v1 <= 0x3F)
  {
    sub_1D966E5B8();
    if (v2 <= 0x3F)
    {
      sub_1D96127EC();
      if (v3 <= 0x3F)
      {
        sub_1D966E6B8();
        if (v4 <= 0x3F)
        {
          sub_1D95E9634(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AppInstallRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppInstallRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D963C4F4()
{
  result = qword_1ECB22550;
  if (!qword_1ECB22550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22550);
  }

  return result;
}

unint64_t sub_1D963C54C()
{
  result = qword_1ECB22558;
  if (!qword_1ECB22558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22558);
  }

  return result;
}

unint64_t sub_1D963C5A4()
{
  result = qword_1ECB22560;
  if (!qword_1ECB22560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22560);
  }

  return result;
}

unint64_t sub_1D963C5F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D966EDD8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D963C644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D963C6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DeveloperApprovalSheetContext.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeveloperApprovalSheetContext.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.firstBulletBody.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletTitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.secondBulletBody.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletTitle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.thirdBulletBody.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.allowButtonText.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.ignoreButtonText.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerID.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.developerName.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.supportURL.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeTitle.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.passcodeReason.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDTitle.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t DeveloperApprovalSheetContext.touchIDReason.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

void __swiftcall DeveloperApprovalSheetContext.init(title:body:firstBulletTitle:firstBulletBody:secondBulletTitle:secondBulletBody:thirdBulletTitle:thirdBulletBody:allowButtonText:ignoreButtonText:developerID:developerName:supportURL:passcodeTitle:passcodeReason:touchIDTitle:touchIDReason:)(MarketplaceKit::DeveloperApprovalSheetContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String firstBulletTitle, Swift::String firstBulletBody, Swift::String secondBulletTitle, Swift::String secondBulletBody, Swift::String thirdBulletTitle, Swift::String thirdBulletBody, Swift::String allowButtonText, Swift::String ignoreButtonText, Swift::String developerID, Swift::String developerName, Swift::String_optional supportURL, Swift::String passcodeTitle, Swift::String passcodeReason, Swift::String touchIDTitle, Swift::String touchIDReason)
{
  retstr->field1D9689EC4 = title;
  retstr->field1D9689ED0 = body;
  retstr->field1D9689EDC = firstBulletTitle;
  retstr->field1D9689EE8 = firstBulletBody;
  retstr->field1D9689EF4 = secondBulletTitle;
  retstr->field1D9689F00 = secondBulletBody;
  retstr->field1D9689F0C = thirdBulletTitle;
  retstr->field1D9689F18 = thirdBulletBody;
  retstr->field1D9689F24 = allowButtonText;
  retstr->field1D9689F30 = ignoreButtonText;
  retstr->field1D9689F3C = developerID;
  retstr->field1D9689F48 = developerName;
  retstr->field1D9689F54 = supportURL;
  retstr->field1D9689F60 = passcodeTitle;
  retstr->field1D9689F6C = passcodeReason;
  retstr->field1D9689F78 = touchIDTitle;
  retstr->field1D9689F84 = touchIDReason;
}

uint64_t sub_1D963CA9C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 2036625250;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 0x427473726966;
      goto LABEL_11;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      v3 = 0x426472696874;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C75000000000000;
      break;
    case 8:
      result = 0x747542776F6C6C61;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
      result = 0x65706F6C65766564;
      break;
    case 12:
      result = 0x5574726F70707573;
      break;
    case 13:
    case 14:
      result = 0x65646F6373736170;
      break;
    case 15:
      result = 0x5444496863756F74;
      break;
    case 16:
      result = 0x5244496863756F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D963CC88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D963E1F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D963CCBC(uint64_t a1)
{
  v2 = sub_1D963D238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963CCF8(uint64_t a1)
{
  v2 = sub_1D963D238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeveloperApprovalSheetContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22568, &qword_1D967A750);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - v5;
  v7 = v1[2];
  v29[30] = v1[3];
  v29[31] = v7;
  v8 = v1[4];
  v29[28] = v1[5];
  v29[29] = v8;
  v9 = v1[6];
  v29[26] = v1[7];
  v29[27] = v9;
  v10 = v1[9];
  v29[24] = v1[8];
  v29[25] = v10;
  v11 = v1[11];
  v29[22] = v1[10];
  v29[23] = v11;
  v12 = v1[13];
  v29[20] = v1[12];
  v29[21] = v12;
  v13 = v1[15];
  v29[18] = v1[14];
  v29[19] = v13;
  v14 = v1[17];
  v29[16] = v1[16];
  v29[17] = v14;
  v15 = v1[19];
  v29[14] = v1[18];
  v29[15] = v15;
  v16 = v1[21];
  v29[12] = v1[20];
  v29[13] = v16;
  v17 = v1[23];
  v29[10] = v1[22];
  v29[11] = v17;
  v18 = v1[25];
  v29[8] = v1[24];
  v29[9] = v18;
  v19 = v1[27];
  v29[6] = v1[26];
  v29[7] = v19;
  v20 = v1[29];
  v29[4] = v1[28];
  v29[5] = v20;
  v21 = v1[31];
  v29[2] = v1[30];
  v29[3] = v21;
  v22 = v1[33];
  v29[1] = v1[32];
  v23 = a1[3];
  v24 = a1;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  sub_1D963D238();
  sub_1D966F118();
  v31 = 0;
  v27 = v30;
  sub_1D966EF38();
  if (!v27)
  {
    v30 = v22;
    v31 = 1;
    sub_1D966EF38();
    v31 = 2;
    sub_1D966EF38();
    v31 = 3;
    sub_1D966EF38();
    v31 = 4;
    sub_1D966EF38();
    v31 = 5;
    sub_1D966EF38();
    v31 = 6;
    sub_1D966EF38();
    v31 = 7;
    sub_1D966EF38();
    v31 = 8;
    sub_1D966EF38();
    v31 = 9;
    sub_1D966EF38();
    v31 = 10;
    sub_1D966EF38();
    v31 = 11;
    sub_1D966EF38();
    v31 = 12;
    sub_1D966EEE8();
    v31 = 13;
    sub_1D966EF38();
    v31 = 14;
    sub_1D966EF38();
    v31 = 15;
    sub_1D966EF38();
    v31 = 16;
    sub_1D966EF38();
  }

  return (*(v4 + 8))(v6, v26);
}

unint64_t sub_1D963D238()
{
  result = qword_1ECB22570;
  if (!qword_1ECB22570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22570);
  }

  return result;
}

uint64_t DeveloperApprovalSheetContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22578, &qword_1D967A758);
  v5 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v7 = &v41 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963D238();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v73 = a2;
  v74 = a1;
  v8 = v5;
  LOBYTE(v77[0]) = 0;
  v9 = sub_1D966EE58();
  v72 = v10;
  LOBYTE(v77[0]) = 1;
  v11 = sub_1D966EE58();
  v69 = v12;
  v71 = v11;
  LOBYTE(v77[0]) = 2;
  v68 = 0;
  v70 = sub_1D966EE58();
  v67 = v13;
  LOBYTE(v77[0]) = 3;
  v57 = sub_1D966EE58();
  v66 = v14;
  LOBYTE(v77[0]) = 4;
  v56 = sub_1D966EE58();
  v65 = v15;
  LOBYTE(v77[0]) = 5;
  v55 = sub_1D966EE58();
  v64 = v16;
  LOBYTE(v77[0]) = 6;
  v54 = sub_1D966EE58();
  v63 = v17;
  LOBYTE(v77[0]) = 7;
  v53 = sub_1D966EE58();
  v62 = v18;
  LOBYTE(v77[0]) = 8;
  v52 = sub_1D966EE58();
  v61 = v19;
  LOBYTE(v77[0]) = 9;
  v20 = sub_1D966EE58();
  v60 = v21;
  v22 = v20;
  LOBYTE(v77[0]) = 10;
  v23 = sub_1D966EE58();
  v59 = v24;
  v25 = v23;
  LOBYTE(v77[0]) = 11;
  v26 = sub_1D966EE58();
  v58 = v27;
  v28 = v26;
  LOBYTE(v77[0]) = 12;
  v50 = sub_1D966EE08();
  v51 = v29;
  LOBYTE(v77[0]) = 13;
  v48 = sub_1D966EE58();
  v49 = v30;
  v68 = 0;
  LOBYTE(v77[0]) = 14;
  v45 = sub_1D966EE58();
  v47 = v31;
  LOBYTE(v77[0]) = 15;
  v44 = sub_1D966EE58();
  v46 = v32;
  v78 = 16;
  v33 = sub_1D966EE58();
  v43 = v34;
  v35 = v33;
  (*(v8 + 8))(v7, v75);
  v36 = v71;
  v76[0] = v9;
  v76[1] = v72;
  v37 = v69;
  v76[2] = v71;
  v76[3] = v69;
  v76[4] = v70;
  v76[5] = v67;
  v76[6] = v57;
  v76[7] = v66;
  v76[8] = v56;
  v76[9] = v65;
  v76[10] = v55;
  v76[11] = v64;
  v76[12] = v54;
  v76[13] = v63;
  v76[14] = v53;
  v76[15] = v62;
  v76[16] = v52;
  v76[17] = v61;
  v41 = v25;
  v42 = v22;
  v76[18] = v22;
  v76[19] = v60;
  v76[20] = v25;
  v76[21] = v59;
  v76[22] = v28;
  v76[23] = v58;
  v38 = v51;
  v76[24] = v50;
  v76[25] = v51;
  v39 = v49;
  v76[26] = v48;
  v76[27] = v49;
  v76[28] = v45;
  v76[29] = v47;
  v76[30] = v44;
  v76[31] = v46;
  v76[32] = v35;
  v76[33] = v43;
  memcpy(v73, v76, 0x110uLL);
  sub_1D963DE24(v76, v77);
  __swift_destroy_boxed_opaque_existential_1(v74);
  v77[0] = v9;
  v77[1] = v72;
  v77[2] = v36;
  v77[3] = v37;
  v77[4] = v70;
  v77[5] = v67;
  v77[6] = v57;
  v77[7] = v66;
  v77[8] = v56;
  v77[9] = v65;
  v77[10] = v55;
  v77[11] = v64;
  v77[12] = v54;
  v77[13] = v63;
  v77[14] = v53;
  v77[15] = v62;
  v77[16] = v52;
  v77[17] = v61;
  v77[18] = v42;
  v77[19] = v60;
  v77[20] = v41;
  v77[21] = v59;
  v77[22] = v28;
  v77[23] = v58;
  v77[24] = v50;
  v77[25] = v38;
  v77[26] = v48;
  v77[27] = v39;
  v77[28] = v45;
  v77[29] = v47;
  v77[30] = v44;
  v77[31] = v46;
  v77[32] = v35;
  v77[33] = v43;
  return sub_1D963DE5C(v77);
}

uint64_t sub_1D963DEC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1D963DF0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeveloperApprovalSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D963E0F4()
{
  result = qword_1ECB22580;
  if (!qword_1ECB22580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22580);
  }

  return result;
}

unint64_t sub_1D963E14C()
{
  result = qword_1ECB22588;
  if (!qword_1ECB22588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22588);
  }

  return result;
}

unint64_t sub_1D963E1A4()
{
  result = qword_1ECB22590;
  if (!qword_1ECB22590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22590);
  }

  return result;
}

uint64_t sub_1D963E1F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681160 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C75427473726966 && a2 == 0xEF79646F4274656CLL || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9681180 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96811A0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96811C0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C75426472696874 && a2 == 0xEF79646F4274656CLL || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x747542776F6C6C61 && a2 == 0xEF747865546E6F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96811E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_1D966EFB8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_1D966EFB8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5574726F70707573 && a2 == 0xEA00000000004C52 || (sub_1D966EFB8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xED0000656C746954 || (sub_1D966EFB8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE006E6F73616552 || (sub_1D966EFB8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5444496863756F74 && a2 == 0xEC000000656C7469 || (sub_1D966EFB8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5244496863756F74 && a2 == 0xED00006E6F736165)
  {

    return 16;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1D963E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock)
{
  v6[2] = _Block_copy(aBlock);
  v12 = a5;
  v13 = sub_1D966E5E8();
  v15 = v14;

  v6[3] = v13;
  v6[4] = v15;
  v16 = swift_task_alloc();
  v6[5] = v16;
  *v16 = v6;
  v16[1] = sub_1D963EA2C;

  return sub_1D9639E80(a1, a2, a3, a4, v13, v15);
}

uint64_t sub_1D963EA2C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  sub_1D95EA55C(v9, v8);
  if (v4)
  {
    if (v10)
    {
      v12 = *(v7 + 16);
      v13 = sub_1D966E588();

      (v12)[2](v12, 0, v13);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v10)
  {
    v14 = *(v7 + 16);
    v15 = sub_1D966E5D8();
    sub_1D95EA55C(a1, a2);
    (v14)[2](v14, v15, 0);
    _Block_release(v14);
  }

  else
  {
    sub_1D95EA55C(a1, a2);
  }

  v16 = *(v11 + 8);

  return v16();
}

FairPlayPassbookProvisioningObjC __swiftcall FairPlayPassbookProvisioningObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FairPlayPassbookProvisioningObjC()
{
  result = qword_1ECB22598;
  if (!qword_1ECB22598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB22598);
  }

  return result;
}

uint64_t sub_1D963ED2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1D95EB350;

  return sub_1D963E91C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D963EE08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D95EB350;

  return v6();
}

uint64_t sub_1D963EEF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D95EB350;

  return sub_1D963EE08(v2, v3, v4);
}

uint64_t sub_1D963EFB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D95EAF50;

  return v7();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D963F0D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D95EAF50;

  return sub_1D963EFB0(a1, v4, v5, v6);
}

uint64_t sub_1D963F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D963F460(a3, v23 - v10);
  v12 = sub_1D966EAE8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D963F4D0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D966EAD8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D966EA78();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D966E9C8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D963F4D0(a3);

    return v21;
  }

LABEL_8:
  sub_1D963F4D0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D963F460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D963F4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D963F538(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D963F630;

  return v6(a1);
}

uint64_t sub_1D963F630()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D963F728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D95EB350;

  return sub_1D963F538(a1, v4);
}

uint64_t sub_1D963F7E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D95EAF50;

  return sub_1D963F538(a1, v4);
}

uint64_t UpdateMetadata.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UpdateMetadata.bundleVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UpdateMetadata.itemID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UpdateMetadata.shortVersionString.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)(MarketplaceKit::UpdateMetadata *__return_ptr retstr, Swift::String bundleID, Swift::String bundleVersion, Swift::String itemID, Swift::String shortVersionString)
{
  retstr->field1D968A07C = bundleID;
  retstr->field1D968A088 = bundleVersion;
  retstr->field1D968A094 = itemID;
  retstr->field1D968A0A0 = shortVersionString;
}

unint64_t sub_1D963F96C()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x44496D657469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6556656C646E7562;
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

uint64_t sub_1D963F9F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D964023C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D963FA1C(uint64_t a1)
{
  v2 = sub_1D963FC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963FA58(uint64_t a1)
{
  v2 = sub_1D963FC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225A0, &qword_1D967AA20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963FC88();
  sub_1D966F118();
  v16 = 0;
  v10 = v12[7];
  sub_1D966EF38();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1D966EF38();
  v14 = 2;
  sub_1D966EF38();
  v13 = 3;
  sub_1D966EF38();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D963FC88()
{
  result = qword_1ECB225A8;
  if (!qword_1ECB225A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225A8);
  }

  return result;
}

uint64_t UpdateMetadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225B0, &qword_1D967AA28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963FC88();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1D966EE58();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1D966EE58();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1D966EE58();
  v25 = v13;
  v33 = 3;
  v14 = sub_1D966EE58();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1D963FFD0(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1D9640008(v32);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D964007C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D96400C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9640138()
{
  result = qword_1ECB225B8;
  if (!qword_1ECB225B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225B8);
  }

  return result;
}

unint64_t sub_1D9640190()
{
  result = qword_1ECB225C0;
  if (!qword_1ECB225C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225C0);
  }

  return result;
}

unint64_t sub_1D96401E8()
{
  result = qword_1ECB225C8;
  if (!qword_1ECB225C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225C8);
  }

  return result;
}

uint64_t sub_1D964023C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9681270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

unint64_t MarketplaceKitError.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - v4;
  v6 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D96409A0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6E776F6E6B6E55;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v15 = *v8;
      v16 = v8[1];
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000003DLL, 0x80000001D9681670);
      MEMORY[0x1DA7338E0](v15, v16);

      MEMORY[0x1DA7338E0](0xD000000000000021, 0x80000001D96816B0);
      goto LABEL_8;
    case 2:
      (*(v3 + 32))(v5, v8, v2);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000002ALL, 0x80000001D9681550);
      v17 = objc_opt_self();
      v18 = sub_1D966E468();
      v19 = [v17 stringFromMeasurement:v18 countStyle:0];

      v20 = sub_1D966E9A8();
      v22 = v21;

      MEMORY[0x1DA7338E0](v20, v22);

      MEMORY[0x1DA7338E0](0xD00000000000001ELL, 0x80000001D9681580);
      v23 = v25;
      (*(v3 + 8))(v5, v2);
      result = v23;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000031;
      break;
    case 5:
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 6:
      result = 0xD00000000000004CLL;
      break;
    case 7:
      result = 0xD00000000000004ALL;
      break;
    case 8:
    case 13:
      result = 0xD00000000000003ELL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD00000000000002ALL;
      break;
    case 12:
      result = 0xD000000000000043;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
    case 20:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD000000000000025;
      break;
    case 22:
      result = 0xD000000000000028;
      break;
    default:
      v11 = *v8;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000004ALL, 0x80000001D9681720);
      v24[1] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225D0, &unk_1D967AC08);
      sub_1D9640A04();
      v12 = sub_1D966E968();
      v14 = v13;

      MEMORY[0x1DA7338E0](v12, v14);

LABEL_8:
      result = v25;
      break;
  }

  return result;
}

uint64_t type metadata accessor for MarketplaceKitError(uint64_t a1)
{
  result = qword_1EDCF69D0;
  if (!qword_1EDCF69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D96409A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9640A04()
{
  result = qword_1ECB225D8;
  if (!qword_1ECB225D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB225D0, &unk_1D967AC08);
    sub_1D95FF23C(&qword_1ECB225E0, &qword_1ECB21720, &qword_1D9673F90, MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB225D8);
  }

  return result;
}

unint64_t sub_1D9640AB4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 20:
      v3 = 13;
      goto LABEL_15;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E49746F4E707061;
      break;
    case 10:
      result = 0x4D64696C61766E69;
      break;
    case 11:
      result = 0x456B726F7774656ELL;
      break;
    case 12:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD00000000000002ELL;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x656C6C65636E6163;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x6B6F54687475616FLL;
      break;
    case 18:
      result = 0x4C64696C61766E69;
      break;
    case 19:
      result = 0x5564696C61766E69;
      break;
    case 21:
      v3 = 9;
LABEL_15:
      result = v3 | 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9640D7C(uint64_t a1)
{
  v2 = sub_1D9643100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640DB8(uint64_t a1)
{
  v2 = sub_1D9643100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640DF4(uint64_t a1)
{
  v2 = sub_1D96434F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640E30(uint64_t a1)
{
  v2 = sub_1D96434F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640E6C(uint64_t a1)
{
  v2 = sub_1D96432F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640EA8(uint64_t a1)
{
  v2 = sub_1D96432F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640EEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9647010(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9640F20(uint64_t a1)
{
  v2 = sub_1D9643058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640F5C(uint64_t a1)
{
  v2 = sub_1D9643058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9640F98(uint64_t a1)
{
  v2 = sub_1D964334C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9640FD4(uint64_t a1)
{
  v2 = sub_1D964334C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641010(uint64_t a1)
{
  v2 = sub_1D9643640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964104C(uint64_t a1)
{
  v2 = sub_1D9643640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641088(uint64_t a1)
{
  v2 = sub_1D9643694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96410C4(uint64_t a1)
{
  v2 = sub_1D9643694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641100(uint64_t a1)
{
  v2 = sub_1D9643598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964113C(uint64_t a1)
{
  v2 = sub_1D9643598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641178(uint64_t a1)
{
  v2 = sub_1D96433A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96411B4(uint64_t a1)
{
  v2 = sub_1D96433A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96411F0(uint64_t a1)
{
  v2 = sub_1D96433F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964122C(uint64_t a1)
{
  v2 = sub_1D96433F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641268(uint64_t a1)
{
  v2 = sub_1D96431FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96412A4(uint64_t a1)
{
  v2 = sub_1D96431FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96412E0(uint64_t a1)
{
  v2 = sub_1D964349C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964131C(uint64_t a1)
{
  v2 = sub_1D964349C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641358(uint64_t a1)
{
  v2 = sub_1D96431A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641394(uint64_t a1)
{
  v2 = sub_1D96431A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96413D0(uint64_t a1)
{
  v2 = sub_1D96436E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D964140C(uint64_t a1)
{
  v2 = sub_1D96436E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641448(uint64_t a1)
{
  v2 = sub_1D96432A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641484(uint64_t a1)
{
  v2 = sub_1D96432A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96414C0(uint64_t a1)
{
  v2 = sub_1D96430AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96414FC(uint64_t a1)
{
  v2 = sub_1D96430AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641538(uint64_t a1)
{
  v2 = sub_1D9643790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641574(uint64_t a1)
{
  v2 = sub_1D9643790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96415B0(uint64_t a1)
{
  v2 = sub_1D9643154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96415EC(uint64_t a1)
{
  v2 = sub_1D9643154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641628(uint64_t a1)
{
  v2 = sub_1D9643448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641664(uint64_t a1)
{
  v2 = sub_1D9643448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96416A0(uint64_t a1)
{
  v2 = sub_1D9643544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96416DC(uint64_t a1)
{
  v2 = sub_1D9643544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641718(uint64_t a1)
{
  v2 = sub_1D9643250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641754(uint64_t a1)
{
  v2 = sub_1D9643250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641790(uint64_t a1)
{
  v2 = sub_1D96435EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96417CC(uint64_t a1)
{
  v2 = sub_1D96435EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641808(uint64_t a1)
{
  v2 = sub_1D96437E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9641844(uint64_t a1)
{
  v2 = sub_1D96437E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9641880(uint64_t a1)
{
  v2 = sub_1D964373C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96418BC(uint64_t a1)
{
  v2 = sub_1D964373C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MarketplaceKitError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225E8, &qword_1D967AC18);
  v147 = *(v2 - 8);
  v148 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v146 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225F0, &qword_1D967AC20);
  v144 = *(v4 - 8);
  v145 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v143 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB225F8, &qword_1D967AC28);
  v141 = *(v6 - 8);
  v142 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v140 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22600, &qword_1D967AC30);
  v138 = *(v8 - 8);
  v139 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22608, &qword_1D967AC38);
  v135 = *(v10 - 8);
  v136 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v79 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22610, &qword_1D967AC40);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v79 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22618, &qword_1D967AC48);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v79 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22620, &qword_1D967AC50);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v79 - v14;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22628, &qword_1D967AC58);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v79 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22630, &qword_1D967AC60);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v79 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22638, &qword_1D967AC68);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v79 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22640, &qword_1D967AC70);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v79 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22648, &qword_1D967AC78);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v79 - v19;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22650, &qword_1D967AC80);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v79 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22658, &qword_1D967AC88);
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v79 - v21;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22660, &qword_1D967AC90);
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v102 = &v79 - v22;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00);
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v79 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22668, &qword_1D967AC98);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v79 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22670, &qword_1D967ACA0);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v79 - v25;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22678, &qword_1D967ACA8);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v79 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22680, &qword_1D967ACB0);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v79 - v27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22688, &qword_1D967ACB8);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v29 = &v79 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22690, &qword_1D967ACC0);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v79 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22698, &qword_1D967ACC8);
  v80 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v79 - v32;
  v34 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB226A0, &qword_1D967ACD0);
  v38 = *(v37 - 8);
  v150 = v37;
  v151 = v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v79 - v39;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9643058();
  v149 = v40;
  sub_1D966F118();
  sub_1D96409A0(v152, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v153) = 3;
      sub_1D96436E8();
      v66 = v86;
      v68 = v149;
      v67 = v150;
      sub_1D966EED8();
      v69 = v89;
      sub_1D966EF38();

      (*(v88 + 8))(v66, v69);
      return (*(v151 + 8))(v68, v67);
    case 2u:
      v57 = v101;
      v58 = v98;
      v59 = v103;
      (*(v101 + 32))(v98, v36, v103);
      LOBYTE(v153) = 7;
      sub_1D9643598();
      v60 = v102;
      v62 = v149;
      v61 = v150;
      sub_1D966EED8();
      sub_1D95FF23C(&qword_1ECB22730, &qword_1ECB21708, &qword_1D967AC00, MEMORY[0x1E6968078]);
      v63 = v107;
      sub_1D966EF68();
      (*(v105 + 8))(v60, v63);
      (*(v57 + 8))(v58, v59);
      return (*(v151 + 8))(v62, v61);
    case 3u:
      LOBYTE(v153) = 0;
      sub_1D96437E4();
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      (*(v80 + 8))(v33, v31);
      goto LABEL_29;
    case 4u:
      LOBYTE(v153) = 2;
      sub_1D964373C();
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v82 + 8);
      v51 = v29;
      v52 = &v116;
      goto LABEL_24;
    case 5u:
      LOBYTE(v153) = 4;
      sub_1D9643694();
      v74 = v87;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v90 + 8);
      v51 = v74;
      v52 = &v123;
      goto LABEL_24;
    case 6u:
      LOBYTE(v153) = 5;
      sub_1D9643640();
      v76 = v92;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v93 + 8);
      v51 = v76;
      v52 = &v126;
      goto LABEL_24;
    case 7u:
      LOBYTE(v153) = 6;
      sub_1D96435EC();
      v65 = v95;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v96 + 8);
      v51 = v65;
      v52 = &v129;
      goto LABEL_24;
    case 8u:
      LOBYTE(v153) = 8;
      sub_1D9643544();
      v78 = v99;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v100 + 8);
      v51 = v78;
      v52 = &v136;
      goto LABEL_24;
    case 9u:
      LOBYTE(v153) = 9;
      sub_1D96434F0();
      v56 = v106;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v108 + 8);
      v51 = v56;
      v52 = &v141;
      goto LABEL_24;
    case 0xAu:
      LOBYTE(v153) = 10;
      sub_1D964349C();
      v77 = v110;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v111 + 8);
      v51 = v77;
      v52 = &v144;
      goto LABEL_24;
    case 0xBu:
      LOBYTE(v153) = 11;
      sub_1D9643448();
      v54 = v113;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v114 + 8);
      v51 = v54;
      v52 = &v147;
      goto LABEL_24;
    case 0xCu:
      LOBYTE(v153) = 12;
      sub_1D96433F4();
      v55 = v116;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v117 + 8);
      v51 = v55;
      v52 = &v150;
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v153) = 13;
      sub_1D96433A0();
      v75 = v119;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v120 + 8);
      v51 = v75;
      v52 = &v152;
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v153) = 14;
      sub_1D964334C();
      v53 = v122;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v123 + 8);
      v51 = v53;
      v52 = &v153;
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v153) = 15;
      sub_1D96432F8();
      v64 = v125;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v126 + 8);
      v51 = v64;
      v52 = &v154;
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v153) = 16;
      sub_1D96432A4();
      v47 = v128;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v50 = *(v129 + 8);
      v51 = v47;
      v52 = &v155;
LABEL_24:
      v72 = *(v52 - 32);
      goto LABEL_28;
    case 0x11u:
      LOBYTE(v153) = 17;
      sub_1D9643250();
      v70 = v131;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      (*(v132 + 8))(v70, v133);
      goto LABEL_29;
    case 0x12u:
      LOBYTE(v153) = 18;
      sub_1D96431FC();
      v71 = v134;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v73 = v135;
      v72 = v136;
      goto LABEL_27;
    case 0x13u:
      LOBYTE(v153) = 19;
      sub_1D96431A8();
      v71 = v137;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v73 = v138;
      v72 = v139;
      goto LABEL_27;
    case 0x14u:
      LOBYTE(v153) = 20;
      sub_1D9643154();
      v71 = v140;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v73 = v141;
      v72 = v142;
      goto LABEL_27;
    case 0x15u:
      LOBYTE(v153) = 21;
      sub_1D9643100();
      v71 = v143;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v73 = v144;
      v72 = v145;
      goto LABEL_27;
    case 0x16u:
      LOBYTE(v153) = 22;
      sub_1D96430AC();
      v71 = v146;
      v49 = v149;
      v48 = v150;
      sub_1D966EED8();
      v73 = v147;
      v72 = v148;
LABEL_27:
      v50 = *(v73 + 8);
      v51 = v71;
LABEL_28:
      v50(v51, v72);
LABEL_29:
      result = (*(v151 + 8))(v49, v48);
      break;
    default:
      v41 = *v36;
      LOBYTE(v153) = 1;
      sub_1D9643790();
      v42 = v81;
      v43 = v149;
      v44 = v150;
      sub_1D966EED8();
      v153 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6200, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v45 = v85;
      sub_1D966EF68();
      (*(v83 + 8))(v42, v45);
      (*(v151 + 8))(v43, v44);

      break;
  }

  return result;
}

unint64_t sub_1D9643058()
{
  result = qword_1ECB226A8;
  if (!qword_1ECB226A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226A8);
  }

  return result;
}

unint64_t sub_1D96430AC()
{
  result = qword_1ECB226B0;
  if (!qword_1ECB226B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226B0);
  }

  return result;
}

unint64_t sub_1D9643100()
{
  result = qword_1ECB226B8;
  if (!qword_1ECB226B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226B8);
  }

  return result;
}

unint64_t sub_1D9643154()
{
  result = qword_1ECB226C0;
  if (!qword_1ECB226C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226C0);
  }

  return result;
}

unint64_t sub_1D96431A8()
{
  result = qword_1ECB226C8;
  if (!qword_1ECB226C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226C8);
  }

  return result;
}

unint64_t sub_1D96431FC()
{
  result = qword_1ECB226D0;
  if (!qword_1ECB226D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226D0);
  }

  return result;
}

unint64_t sub_1D9643250()
{
  result = qword_1ECB226D8;
  if (!qword_1ECB226D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226D8);
  }

  return result;
}

unint64_t sub_1D96432A4()
{
  result = qword_1ECB226E0;
  if (!qword_1ECB226E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226E0);
  }

  return result;
}

unint64_t sub_1D96432F8()
{
  result = qword_1ECB226E8;
  if (!qword_1ECB226E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226E8);
  }

  return result;
}

unint64_t sub_1D964334C()
{
  result = qword_1ECB226F0;
  if (!qword_1ECB226F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226F0);
  }

  return result;
}

unint64_t sub_1D96433A0()
{
  result = qword_1ECB226F8;
  if (!qword_1ECB226F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB226F8);
  }

  return result;
}

unint64_t sub_1D96433F4()
{
  result = qword_1ECB22700;
  if (!qword_1ECB22700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22700);
  }

  return result;
}

unint64_t sub_1D9643448()
{
  result = qword_1ECB22708;
  if (!qword_1ECB22708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22708);
  }

  return result;
}

unint64_t sub_1D964349C()
{
  result = qword_1ECB22710;
  if (!qword_1ECB22710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22710);
  }

  return result;
}

unint64_t sub_1D96434F0()
{
  result = qword_1ECB22718;
  if (!qword_1ECB22718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22718);
  }

  return result;
}

unint64_t sub_1D9643544()
{
  result = qword_1ECB22720;
  if (!qword_1ECB22720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22720);
  }

  return result;
}

unint64_t sub_1D9643598()
{
  result = qword_1ECB22728;
  if (!qword_1ECB22728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22728);
  }

  return result;
}

unint64_t sub_1D96435EC()
{
  result = qword_1ECB22738;
  if (!qword_1ECB22738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22738);
  }

  return result;
}

unint64_t sub_1D9643640()
{
  result = qword_1ECB22740;
  if (!qword_1ECB22740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22740);
  }

  return result;
}

unint64_t sub_1D9643694()
{
  result = qword_1ECB22748;
  if (!qword_1ECB22748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22748);
  }

  return result;
}

unint64_t sub_1D96436E8()
{
  result = qword_1ECB22750;
  if (!qword_1ECB22750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22750);
  }

  return result;
}

unint64_t sub_1D964373C()
{
  result = qword_1ECB22758;
  if (!qword_1ECB22758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22758);
  }

  return result;
}

unint64_t sub_1D9643790()
{
  result = qword_1ECB22760;
  if (!qword_1ECB22760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22760);
  }

  return result;
}

unint64_t sub_1D96437E4()
{
  result = qword_1ECB22768;
  if (!qword_1ECB22768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22768);
  }

  return result;
}

uint64_t MarketplaceKitError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22770, &qword_1D967ACD8);
  v186 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v185 = &v115 - v3;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22778, &qword_1D967ACE0);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v184 = &v115 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22780, &qword_1D967ACE8);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v183 = &v115 - v5;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22788, &qword_1D967ACF0);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v182 = &v115 - v6;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22790, &qword_1D967ACF8);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v181 = &v115 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22798, &qword_1D967AD00);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v180 = &v115 - v8;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227A0, &qword_1D967AD08);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v179 = &v115 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227A8, &qword_1D967AD10);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v178 = &v115 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227B0, &qword_1D967AD18);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v177 = &v115 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227B8, &qword_1D967AD20);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v176 = &v115 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227C0, &qword_1D967AD28);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v175 = &v115 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227C8, &qword_1D967AD30);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v174 = &v115 - v14;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227D0, &qword_1D967AD38);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v173 = &v115 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227D8, &qword_1D967AD40);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v172 = &v115 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227E0, &qword_1D967AD48);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v171 = &v115 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227E8, &qword_1D967AD50);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v189 = &v115 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227F0, &qword_1D967AD58);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v170 = &v115 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB227F8, &qword_1D967AD60);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v169 = &v115 - v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22800, &qword_1D967AD68);
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v168 = &v115 - v21;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22808, &qword_1D967AD70);
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v167 = &v115 - v22;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22810, &qword_1D967AD78);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v165 = &v115 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22818, &qword_1D967AD80);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v166 = &v115 - v24;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22820, &qword_1D967AD88);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v164 = &v115 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22828, &unk_1D967AD90);
  v187 = *(v26 - 8);
  v188 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v115 - v27;
  v29 = type metadata accessor for MarketplaceKitError(0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v115 - v34);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v115 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v115 - v39;
  v41 = a1[3];
  v192 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D9643058();
  v42 = v193;
  sub_1D966F0F8();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(v192);
  }

  v115 = v35;
  v116 = v38;
  v117 = v32;
  v43 = v189;
  v119 = 0;
  v44 = v190;
  v193 = v29;
  v118 = v40;
  v45 = v191;
  v46 = v188;
  v47 = sub_1D966EEB8();
  v48 = (2 * *(v47 + 16)) | 1;
  v194 = v47;
  v195 = v47 + 32;
  v196 = 0;
  v197 = v48;
  v49 = sub_1D960208C();
  if (v196 != v197 >> 1)
  {
LABEL_6:
    v54 = sub_1D966ED58();
    swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
    *v56 = v193;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
LABEL_7:
    (*(v187 + 8))(v28, v46);
LABEL_8:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v192);
  }

  v50 = v186;
  switch(v49)
  {
    case 0:
      LOBYTE(v198) = 0;
      sub_1D96437E4();
      v51 = v164;
      v52 = v119;
      sub_1D966EDE8();
      if (v52)
      {
        goto LABEL_7;
      }

      (*(v120 + 8))(v51, v121);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 1:
      LOBYTE(v198) = 1;
      sub_1D9643790();
      v82 = v166;
      v83 = v119;
      sub_1D966EDE8();
      if (v83)
      {
        goto LABEL_7;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v84 = v125;
      sub_1D966EE88();
      v85 = v187;
      (*(v124 + 8))(v82, v84);
      (*(v85 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v114 = v116;
      *v116 = v198;
      goto LABEL_58;
    case 2:
      LOBYTE(v198) = 2;
      sub_1D964373C();
      v70 = v165;
      v71 = v119;
      sub_1D966EDE8();
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v122 + 8))(v70, v123);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 3:
      LOBYTE(v198) = 3;
      sub_1D96436E8();
      v74 = v167;
      v75 = v119;
      sub_1D966EDE8();
      if (v75)
      {
        goto LABEL_7;
      }

      v76 = v128;
      v109 = sub_1D966EE58();
      v111 = v110;
      (*(v126 + 8))(v74, v76);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v112 = v115;
      *v115 = v109;
      v112[1] = v111;
      swift_storeEnumTagMultiPayload();
      v113 = v112;
      goto LABEL_59;
    case 4:
      LOBYTE(v198) = 4;
      sub_1D9643694();
      v64 = v168;
      v65 = v119;
      sub_1D966EDE8();
      if (v65)
      {
        goto LABEL_7;
      }

      (*(v127 + 8))(v64, v129);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 5:
      LOBYTE(v198) = 5;
      sub_1D9643640();
      v90 = v169;
      v91 = v119;
      sub_1D966EDE8();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v130 + 8))(v90, v131);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 6:
      LOBYTE(v198) = 6;
      sub_1D96435EC();
      v96 = v170;
      v97 = v119;
      sub_1D966EDE8();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v96, v133);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 7:
      LOBYTE(v198) = 7;
      sub_1D9643598();
      v77 = v43;
      v78 = v119;
      sub_1D966EDE8();
      if (v78)
      {
        goto LABEL_7;
      }

      v119 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21708, &qword_1D967AC00);
      sub_1D95FF23C(&qword_1ECB22830, &qword_1ECB21708, &qword_1D967AC00, MEMORY[0x1E6968098]);
      v79 = v137;
      v80 = v119;
      sub_1D966EE88();
      v81 = v187;
      if (v80)
      {
        (*(v136 + 8))(v77, v79);
        (*(v81 + 8))(v28, v46);
        goto LABEL_8;
      }

      (*(v136 + 8))(v77, v79);
      (*(v81 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v114 = v117;
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v113 = v114;
LABEL_59:
      v53 = v118;
      sub_1D95EA8F8(v113, v118);
LABEL_56:
      v108 = v192;
      sub_1D95EA8F8(v53, v45);
      result = __swift_destroy_boxed_opaque_existential_1(v108);
      break;
    case 8:
      LOBYTE(v198) = 8;
      sub_1D9643544();
      v102 = v171;
      v103 = v119;
      sub_1D966EDE8();
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v102, v135);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 9:
      LOBYTE(v198) = 9;
      sub_1D96434F0();
      v68 = v172;
      v69 = v119;
      sub_1D966EDE8();
      if (v69)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v68, v139);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 10:
      LOBYTE(v198) = 10;
      sub_1D964349C();
      v100 = v173;
      v101 = v119;
      sub_1D966EDE8();
      if (v101)
      {
        goto LABEL_7;
      }

      (*(v140 + 8))(v100, v141);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 11:
      LOBYTE(v198) = 11;
      sub_1D9643448();
      v62 = v174;
      v63 = v119;
      sub_1D966EDE8();
      if (v63)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v62, v143);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 12:
      LOBYTE(v198) = 12;
      sub_1D96433F4();
      v66 = v175;
      v67 = v119;
      sub_1D966EDE8();
      if (v67)
      {
        goto LABEL_7;
      }

      (*(v144 + 8))(v66, v145);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 13:
      LOBYTE(v198) = 13;
      sub_1D96433A0();
      v94 = v176;
      v95 = v119;
      sub_1D966EDE8();
      if (v95)
      {
        goto LABEL_7;
      }

      (*(v146 + 8))(v94, v147);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 14:
      LOBYTE(v198) = 14;
      sub_1D964334C();
      v60 = v177;
      v61 = v119;
      sub_1D966EDE8();
      if (v61)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v60, v149);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 15:
      LOBYTE(v198) = 15;
      sub_1D96432F8();
      v72 = v178;
      v73 = v119;
      sub_1D966EDE8();
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v72, v151);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 16:
      LOBYTE(v198) = 16;
      sub_1D96432A4();
      v58 = v179;
      v59 = v119;
      sub_1D966EDE8();
      if (v59)
      {
        goto LABEL_7;
      }

      (*(v152 + 8))(v58, v153);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 17:
      LOBYTE(v198) = 17;
      sub_1D9643250();
      v86 = v180;
      v87 = v119;
      sub_1D966EDE8();
      if (v87)
      {
        goto LABEL_7;
      }

      (*(v154 + 8))(v86, v155);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 18:
      LOBYTE(v198) = 18;
      sub_1D96431FC();
      v98 = v181;
      v99 = v119;
      sub_1D966EDE8();
      if (v99)
      {
        goto LABEL_7;
      }

      (*(v156 + 8))(v98, v157);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 19:
      LOBYTE(v198) = 19;
      sub_1D96431A8();
      v106 = v182;
      v107 = v119;
      sub_1D966EDE8();
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v158 + 8))(v106, v159);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 20:
      LOBYTE(v198) = 20;
      sub_1D9643154();
      v88 = v183;
      v89 = v119;
      sub_1D966EDE8();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v160 + 8))(v88, v161);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 21:
      LOBYTE(v198) = 21;
      sub_1D9643100();
      v92 = v184;
      v93 = v119;
      sub_1D966EDE8();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v162 + 8))(v92, v163);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
      goto LABEL_55;
    case 22:
      LOBYTE(v198) = 22;
      sub_1D96430AC();
      v104 = v185;
      v105 = v119;
      sub_1D966EDE8();
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v50 + 8))(v104, v44);
      (*(v187 + 8))(v28, v46);
      swift_unknownObjectRelease();
      v53 = v118;
LABEL_55:
      swift_storeEnumTagMultiPayload();
      goto LABEL_56;
    default:
      goto LABEL_6;
  }

  return result;
}

void sub_1D9645A00(uint64_t a1)
{
  sub_1D9645A7C();
  if (v1 <= 0x3F)
  {
    sub_1D9645ACC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D9645A7C()
{
  if (!qword_1EDCF6930[0])
  {
    v0 = sub_1D966EA68();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCF6930);
    }
  }
}

void sub_1D9645ACC(uint64_t a1)
{
  if (!qword_1EDCF6BE0)
  {
    sub_1D9645B24();
    v1 = sub_1D966E478();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCF6BE0);
    }
  }
}

unint64_t sub_1D9645B24()
{
  result = qword_1EDCF6928;
  if (!qword_1EDCF6928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCF6928);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceKitError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceKitError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9645E34()
{
  result = qword_1ECB22838;
  if (!qword_1ECB22838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22838);
  }

  return result;
}

unint64_t sub_1D9645E8C()
{
  result = qword_1ECB22840;
  if (!qword_1ECB22840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22840);
  }

  return result;
}

unint64_t sub_1D9645EE4()
{
  result = qword_1ECB22848;
  if (!qword_1ECB22848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22848);
  }

  return result;
}

unint64_t sub_1D9645F3C()
{
  result = qword_1ECB22850;
  if (!qword_1ECB22850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22850);
  }

  return result;
}

unint64_t sub_1D9645F94()
{
  result = qword_1ECB22858;
  if (!qword_1ECB22858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22858);
  }

  return result;
}

unint64_t sub_1D9645FEC()
{
  result = qword_1ECB22860;
  if (!qword_1ECB22860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22860);
  }

  return result;
}

unint64_t sub_1D9646044()
{
  result = qword_1ECB22868;
  if (!qword_1ECB22868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22868);
  }

  return result;
}

unint64_t sub_1D964609C()
{
  result = qword_1ECB22870;
  if (!qword_1ECB22870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22870);
  }

  return result;
}

unint64_t sub_1D96460F4()
{
  result = qword_1ECB22878;
  if (!qword_1ECB22878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22878);
  }

  return result;
}

unint64_t sub_1D964614C()
{
  result = qword_1ECB22880;
  if (!qword_1ECB22880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22880);
  }

  return result;
}

unint64_t sub_1D96461A4()
{
  result = qword_1ECB22888;
  if (!qword_1ECB22888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22888);
  }

  return result;
}

unint64_t sub_1D96461FC()
{
  result = qword_1ECB22890;
  if (!qword_1ECB22890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22890);
  }

  return result;
}

unint64_t sub_1D9646254()
{
  result = qword_1ECB22898;
  if (!qword_1ECB22898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22898);
  }

  return result;
}

unint64_t sub_1D96462AC()
{
  result = qword_1ECB228A0;
  if (!qword_1ECB228A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228A0);
  }

  return result;
}

unint64_t sub_1D9646304()
{
  result = qword_1ECB228A8;
  if (!qword_1ECB228A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228A8);
  }

  return result;
}

unint64_t sub_1D964635C()
{
  result = qword_1ECB228B0;
  if (!qword_1ECB228B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228B0);
  }

  return result;
}

unint64_t sub_1D96463B4()
{
  result = qword_1ECB228B8;
  if (!qword_1ECB228B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228B8);
  }

  return result;
}

unint64_t sub_1D964640C()
{
  result = qword_1ECB228C0;
  if (!qword_1ECB228C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228C0);
  }

  return result;
}

unint64_t sub_1D9646464()
{
  result = qword_1ECB228C8;
  if (!qword_1ECB228C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228C8);
  }

  return result;
}

unint64_t sub_1D96464BC()
{
  result = qword_1ECB228D0;
  if (!qword_1ECB228D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228D0);
  }

  return result;
}

unint64_t sub_1D9646514()
{
  result = qword_1ECB228D8;
  if (!qword_1ECB228D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228D8);
  }

  return result;
}

unint64_t sub_1D964656C()
{
  result = qword_1ECB228E0;
  if (!qword_1ECB228E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228E0);
  }

  return result;
}

unint64_t sub_1D96465C4()
{
  result = qword_1ECB228E8;
  if (!qword_1ECB228E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228E8);
  }

  return result;
}

unint64_t sub_1D964661C()
{
  result = qword_1ECB228F0;
  if (!qword_1ECB228F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228F0);
  }

  return result;
}

unint64_t sub_1D9646674()
{
  result = qword_1ECB228F8;
  if (!qword_1ECB228F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB228F8);
  }

  return result;
}

unint64_t sub_1D96466CC()
{
  result = qword_1ECB22900;
  if (!qword_1ECB22900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22900);
  }

  return result;
}

unint64_t sub_1D9646724()
{
  result = qword_1ECB22908;
  if (!qword_1ECB22908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22908);
  }

  return result;
}

unint64_t sub_1D964677C()
{
  result = qword_1ECB22910;
  if (!qword_1ECB22910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22910);
  }

  return result;
}

unint64_t sub_1D96467D4()
{
  result = qword_1ECB22918;
  if (!qword_1ECB22918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22918);
  }

  return result;
}

unint64_t sub_1D964682C()
{
  result = qword_1ECB22920;
  if (!qword_1ECB22920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22920);
  }

  return result;
}

unint64_t sub_1D9646884()
{
  result = qword_1ECB22928;
  if (!qword_1ECB22928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22928);
  }

  return result;
}

unint64_t sub_1D96468DC()
{
  result = qword_1ECB22930;
  if (!qword_1ECB22930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22930);
  }

  return result;
}

unint64_t sub_1D9646934()
{
  result = qword_1ECB22938;
  if (!qword_1ECB22938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22938);
  }

  return result;
}

unint64_t sub_1D964698C()
{
  result = qword_1ECB22940;
  if (!qword_1ECB22940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22940);
  }

  return result;
}

unint64_t sub_1D96469E4()
{
  result = qword_1ECB22948;
  if (!qword_1ECB22948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22948);
  }

  return result;
}

unint64_t sub_1D9646A3C()
{
  result = qword_1ECB22950;
  if (!qword_1ECB22950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22950);
  }

  return result;
}

unint64_t sub_1D9646A94()
{
  result = qword_1ECB22958;
  if (!qword_1ECB22958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22958);
  }

  return result;
}

unint64_t sub_1D9646AEC()
{
  result = qword_1ECB22960;
  if (!qword_1ECB22960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22960);
  }

  return result;
}

unint64_t sub_1D9646B44()
{
  result = qword_1ECB22968;
  if (!qword_1ECB22968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22968);
  }

  return result;
}

unint64_t sub_1D9646B9C()
{
  result = qword_1ECB22970;
  if (!qword_1ECB22970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22970);
  }

  return result;
}

unint64_t sub_1D9646BF4()
{
  result = qword_1ECB22978;
  if (!qword_1ECB22978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22978);
  }

  return result;
}

unint64_t sub_1D9646C4C()
{
  result = qword_1ECB22980;
  if (!qword_1ECB22980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22980);
  }

  return result;
}

unint64_t sub_1D9646CA4()
{
  result = qword_1ECB22988;
  if (!qword_1ECB22988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22988);
  }

  return result;
}

unint64_t sub_1D9646CFC()
{
  result = qword_1ECB22990;
  if (!qword_1ECB22990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22990);
  }

  return result;
}

unint64_t sub_1D9646D54()
{
  result = qword_1ECB22998;
  if (!qword_1ECB22998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22998);
  }

  return result;
}

unint64_t sub_1D9646DAC()
{
  result = qword_1ECB229A0;
  if (!qword_1ECB229A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229A0);
  }

  return result;
}

unint64_t sub_1D9646E04()
{
  result = qword_1ECB229A8;
  if (!qword_1ECB229A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229A8);
  }

  return result;
}

unint64_t sub_1D9646E5C()
{
  result = qword_1ECB229B0;
  if (!qword_1ECB229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229B0);
  }

  return result;
}

unint64_t sub_1D9646EB4()
{
  result = qword_1ECB229B8;
  if (!qword_1ECB229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229B8);
  }

  return result;
}

unint64_t sub_1D9646F0C()
{
  result = qword_1ECB229C0;
  if (!qword_1ECB229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229C0);
  }

  return result;
}

unint64_t sub_1D9646F64()
{
  result = qword_1ECB229C8;
  if (!qword_1ECB229C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229C8);
  }

  return result;
}

unint64_t sub_1D9646FBC()
{
  result = qword_1ECB229D0;
  if (!qword_1ECB229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB229D0);
  }

  return result;
}

uint64_t sub_1D9647010(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9681770 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9681790 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D96817B0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D96817E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D9681800 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9681820 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9681840 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9681860 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E49746F4E707061 && a2 == 0xEF64656C6C617473 || (sub_1D966EFB8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4D64696C61766E69 && a2 == 0xEF74736566696E61 || (sub_1D966EFB8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_1D966EFB8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D9681880 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001D96818B0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D96818E0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_1D966EFB8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9681900 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6F54687475616FLL && a2 == 0xEF726F7272456E65 || (sub_1D966EFB8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4C64696C61766E69 && a2 == 0xEE0065736E656369 || (sub_1D966EFB8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004C52 || (sub_1D966EFB8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D9681920 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9681940 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D9681960 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t ExceptionRequestMetadata.appBundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ExceptionRequestMetadata.appName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ExceptionRequestMetadata.requestedAppIconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 32);

  return sub_1D95E5820(v3, a1);
}

uint64_t type metadata accessor for ExceptionRequestMetadata(uint64_t a1)
{
  result = qword_1ECB22A10;
  if (!qword_1ECB22A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExceptionRequestMetadata.distributorID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 36));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 40));

  return v1;
}

uint64_t ExceptionRequestMetadata.developerID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 44));

  return v1;
}

uint64_t ExceptionRequestMetadata.developerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 48));

  return v1;
}

uint64_t ExceptionRequestMetadata.developerSupportURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 52);

  return sub_1D95E5820(v3, a1);
}

uint64_t ExceptionRequestMetadata.askerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 64));

  return v1;
}

uint64_t ExceptionRequestMetadata.ageRatingString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 68));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 72));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 76));

  return v1;
}

uint64_t ExceptionRequestMetadata.distributorDomain.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 80));

  return v1;
}

uint64_t ExceptionRequestMetadata.installTypeRawValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 84));

  return v1;
}

uint64_t ExceptionRequestMetadata.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 88));

  return v1;
}

uint64_t ExceptionRequestMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExceptionRequestMetadata(0) + 92);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExceptionRequestMetadata.oAuthToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 96));

  return v1;
}

uint64_t ExceptionRequestMetadata.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 100));

  return v1;
}

uint64_t ExceptionRequestMetadata.clientID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 104));

  return v1;
}

uint64_t ExceptionRequestMetadata.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for ExceptionRequestMetadata(0) + 108);
  v2 = *v1;
  sub_1D961B554(*v1, *(v1 + 8));
  return v2;
}

uint64_t ExceptionRequestMetadata.referrer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 128);

  return sub_1D95E5820(v3, a1);
}

uint64_t ExceptionRequestMetadata.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExceptionRequestMetadata(0) + 132);

  return sub_1D95E5820(v3, a1);
}

uint64_t ExceptionRequestMetadata.init(appBundleID:appItemID:appVersionID:appName:requestedAppIconURL:distributorID:distributorName:developerID:developerName:developerSupportURL:isWebApp:isDistributor:askerName:ageRatingString:distributorType:distributorBundleID:distributorDomain:installTypeRawValue:accountID:url:oAuthToken:installVerificationToken:clientID:authenticationContextData:userInitiatedOverride:allowAccountPrompt:originallyRequestedVersionID:itemIDFromButtonConfiguration:referrer:appShareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v51 = type metadata accessor for ExceptionRequestMetadata(0);
  sub_1D961B690(a7, a9 + v51[8]);
  v52 = (a9 + v51[9]);
  *v52 = a8;
  v52[1] = a10;
  v53 = (a9 + v51[10]);
  *v53 = a11;
  v53[1] = a12;
  v54 = (a9 + v51[11]);
  *v54 = a13;
  v54[1] = a14;
  v55 = (a9 + v51[12]);
  *v55 = a15;
  v55[1] = a16;
  sub_1D961B690(a17, a9 + v51[13]);
  *(a9 + v51[14]) = a18;
  *(a9 + v51[15]) = a19;
  v56 = (a9 + v51[16]);
  *v56 = a20;
  v56[1] = a21;
  v57 = (a9 + v51[17]);
  *v57 = a22;
  v57[1] = a23;
  v58 = (a9 + v51[18]);
  *v58 = a24;
  v58[1] = a25;
  v59 = (a9 + v51[19]);
  *v59 = a26;
  v59[1] = a27;
  v60 = (a9 + v51[20]);
  *v60 = a28;
  v60[1] = a29;
  v61 = (a9 + v51[21]);
  *v61 = a30;
  v61[1] = a31;
  v62 = (a9 + v51[22]);
  *v62 = a32;
  v62[1] = a33;
  v63 = v51[23];
  v64 = sub_1D966E5B8();
  (*(*(v64 - 8) + 32))(a9 + v63, a34, v64);
  v65 = (a9 + v51[24]);
  *v65 = a35;
  v65[1] = a36;
  v66 = (a9 + v51[25]);
  *v66 = a37;
  v66[1] = a38;
  v67 = (a9 + v51[26]);
  *v67 = a39;
  v67[1] = a40;
  v68 = (a9 + v51[27]);
  *v68 = a41;
  v68[1] = a42;
  *(a9 + v51[28]) = a43;
  *(a9 + v51[29]) = a44;
  v69 = a9 + v51[30];
  *v69 = a45;
  v69[8] = a46 & 1;
  v70 = a9 + v51[31];
  *v70 = a47;
  v70[8] = a48 & 1;
  sub_1D961B690(a49, a9 + v51[32]);
  v71 = a9 + v51[33];

  return sub_1D961B690(a50, v71);
}

uint64_t ExceptionRequestMetadata.jsonData()()
{
  sub_1D966E458();
  swift_allocObject();
  sub_1D966E448();
  type metadata accessor for ExceptionRequestMetadata(0);
  sub_1D964A8A8(&qword_1ECB229D8, type metadata accessor for ExceptionRequestMetadata, &protocol conformance descriptor for ExceptionRequestMetadata);
  v0 = sub_1D966E438();

  return v0;
}

uint64_t static ExceptionRequestMetadata.from(jsonData:)(uint64_t a1, uint64_t a2)
{
  sub_1D966E428();
  swift_allocObject();
  sub_1D966E418();
  type metadata accessor for ExceptionRequestMetadata(0);
  sub_1D964A8A8(&qword_1ECB229E0, type metadata accessor for ExceptionRequestMetadata, &protocol conformance descriptor for ExceptionRequestMetadata);
  sub_1D966E408();
}

uint64_t ExceptionRequestMetadata.dictionary()()
{
  v18[4] = *MEMORY[0x1E69E9840];
  sub_1D966E458();
  swift_allocObject();
  sub_1D966E448();
  type metadata accessor for ExceptionRequestMetadata(0);
  sub_1D964A8A8(&qword_1ECB229D8, type metadata accessor for ExceptionRequestMetadata, &protocol conformance descriptor for ExceptionRequestMetadata);
  v1 = sub_1D966E438();
  if (v0)
  {
  }

  v4 = v1;
  v5 = v2;
  v6 = objc_opt_self();
  v7 = sub_1D966E5D8();
  v17[0] = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:v17];

  v9 = v17[0];
  if (!v8)
  {
    v10 = v9;
    sub_1D966E598();

    swift_willThrow();
    sub_1D95EA55C(v4, v5);
  }

  sub_1D966EC28();
  swift_unknownObjectRelease();
  sub_1D95ED4F0(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB229E8, &qword_1D967C318);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1D95EA55C(v4, v5);

    return v16;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB229F0, &unk_1D967C320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9674770;
    *(inited + 32) = sub_1D966E9A8();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x80000001D96819B0;
    sub_1D9606D84(inited);
    swift_setDeallocating();
    sub_1D95EA898(inited + 32, &qword_1ECB21320, &qword_1D9672450);
    v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v14 = sub_1D966E988();
    v15 = sub_1D966E948();

    [v13 initWithDomain:v14 code:1 userInfo:v15];

    swift_willThrow();
    sub_1D95EA55C(v4, v5);

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }
}

uint64_t static ExceptionRequestMetadata.from(dictionary:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = sub_1D966E948();
  v10[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v10];

  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1D966E5E8();
    v7 = v6;

    sub_1D966E428();
    swift_allocObject();
    sub_1D966E418();
    type metadata accessor for ExceptionRequestMetadata(0);
    sub_1D964A8A8(&qword_1ECB229E0, type metadata accessor for ExceptionRequestMetadata, &protocol conformance descriptor for ExceptionRequestMetadata);
    sub_1D966E408();

    return sub_1D95EA55C(v5, v7);
  }

  else
  {
    v9 = v4;
    sub_1D966E598();

    return swift_willThrow();
  }
}

unint64_t sub_1D96487EC(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x496D657449707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
    case 14:
      result = 0x7562697274736964;
      break;
    case 7:
      result = 0x65706F6C65766564;
      break;
    case 8:
      result = 0x65706F6C65766564;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x7070416265577369;
      break;
    case 11:
      result = 0x6972747369447369;
      break;
    case 12:
      result = 0x6D614E72656B7361;
      break;
    case 13:
      result = 0x6E69746152656761;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x49746E756F636361;
      break;
    case 19:
      result = 7107189;
      break;
    case 20:
      result = 0x6B6F54687475416FLL;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0x4449746E65696C63;
      break;
    case 23:
      result = 0xD000000000000019;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
      result = 0xD00000000000001CLL;
      break;
    case 27:
      result = 0xD00000000000001DLL;
      break;
    case 28:
      result = 0x7265727265666572;
      break;
    case 29:
      result = 0x6572616853707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9648B5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D964ADBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9648B90(uint64_t a1)
{
  v2 = sub_1D964A854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9648BCC(uint64_t a1)
{
  v2 = sub_1D964A854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExceptionRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB229F8, &qword_1D967C330);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964A854();
  sub_1D966F118();
  LOBYTE(v13) = 0;
  sub_1D966EF38();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D966EF88();
    LOBYTE(v13) = 2;
    sub_1D966EF88();
    LOBYTE(v13) = 3;
    sub_1D966EF38();
    v9 = type metadata accessor for ExceptionRequestMetadata(0);
    LOBYTE(v13) = 4;
    sub_1D966E5B8();
    sub_1D964A8A8(&qword_1ECB20860, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D966EF18();
    LOBYTE(v13) = 5;
    sub_1D966EF38();
    LOBYTE(v13) = 6;
    sub_1D966EF38();
    LOBYTE(v13) = 7;
    sub_1D966EF38();
    LOBYTE(v13) = 8;
    sub_1D966EF38();
    LOBYTE(v13) = 9;
    sub_1D966EF18();
    LOBYTE(v13) = 10;
    sub_1D966EF48();
    LOBYTE(v13) = 11;
    sub_1D966EF48();
    LOBYTE(v13) = 12;
    sub_1D966EF38();
    LOBYTE(v13) = 13;
    sub_1D966EF38();
    LOBYTE(v13) = 14;
    sub_1D966EF38();
    LOBYTE(v13) = 15;
    sub_1D966EEE8();
    LOBYTE(v13) = 16;
    sub_1D966EEE8();
    LOBYTE(v13) = 17;
    sub_1D966EF38();
    LOBYTE(v13) = 18;
    sub_1D966EF38();
    LOBYTE(v13) = 19;
    sub_1D966EF68();
    LOBYTE(v13) = 20;
    sub_1D966EEE8();
    LOBYTE(v13) = 21;
    sub_1D966EEE8();
    LOBYTE(v13) = 22;
    sub_1D966EEE8();
    v10 = (v3 + *(v9 + 108));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 23;
    sub_1D961B554(v13, v11);
    sub_1D9621C98();
    sub_1D966EF18();
    sub_1D9621CEC(v13, v14);
    LOBYTE(v13) = 24;
    sub_1D966EEF8();
    LOBYTE(v13) = 25;
    sub_1D966EF48();
    LOBYTE(v13) = 26;
    sub_1D966EF28();
    LOBYTE(v13) = 27;
    sub_1D966EF28();
    LOBYTE(v13) = 28;
    sub_1D966EF18();
    LOBYTE(v13) = 29;
    sub_1D966EF18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ExceptionRequestMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_1D966E5B8();
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v116 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v115 = &v109[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v109[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v109[-v13];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22A08, &qword_1D967C338);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v16 = &v109[-v15];
  v17 = type metadata accessor for ExceptionRequestMetadata(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v109[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D964A854();
  v121 = v16;
  v20 = v123;
  sub_1D966F0F8();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v14;
  v22 = v120;
  v123 = a1;
  v112 = v17;
  v113 = v19;
  LOBYTE(v124) = 0;
  v23 = sub_1D966EE58();
  v25 = v113;
  *v113 = v23;
  v25[1] = v26;
  LOBYTE(v124) = 1;
  v25[2] = sub_1D966EEA8();
  LOBYTE(v124) = 2;
  v25[3] = sub_1D966EEA8();
  LOBYTE(v124) = 3;
  v25[4] = sub_1D966EE58();
  v25[5] = v33;
  LOBYTE(v124) = 4;
  sub_1D964A8A8(&qword_1ECB20870, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1D966EE38();
  v34 = v112;
  sub_1D961B690(v21, v25 + v112[8]);
  LOBYTE(v124) = 5;
  v35 = sub_1D966EE58();
  v36 = (v25 + v34[9]);
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v124) = 6;
  v38 = sub_1D966EE58();
  v39 = (v25 + v34[10]);
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v124) = 7;
  v41 = sub_1D966EE58();
  v42 = (v25 + v112[11]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v124) = 8;
  v44 = sub_1D966EE58();
  v111 = 0;
  v46 = (v113 + v112[12]);
  *v46 = v44;
  v46[1] = v45;
  LOBYTE(v124) = 9;
  v47 = v111;
  sub_1D966EE38();
  v111 = v47;
  if (v47)
  {
    (*(v22 + 8))(v121, v122);
    v48 = 0;
    memset(v110, 0, sizeof(v110));
    v125 = 0;
    LODWORD(v114) = 0;
    LODWORD(v115) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    v49 = 0;
  }

  else
  {
    sub_1D961B690(v12, v113 + v112[13]);
    LOBYTE(v124) = 10;
    v50 = v111;
    v51 = sub_1D966EE68();
    v111 = v50;
    if (v50 || (*(v113 + v112[14]) = v51 & 1, LOBYTE(v124) = 11, v52 = v111, v53 = sub_1D966EE68(), (v111 = v52) != 0) || (*(v113 + v112[15]) = v53 & 1, LOBYTE(v124) = 12, v54 = v111, v55 = sub_1D966EE58(), (v111 = v54) != 0))
    {
      (*(v22 + 8))(v121, v122);
      memset(v110, 0, sizeof(v110));
      v125 = 0;
      LODWORD(v114) = 0;
      LODWORD(v115) = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      v49 = 0;
      v48 = 1;
    }

    else
    {
      v57 = (v113 + v112[16]);
      *v57 = v55;
      v57[1] = v56;
      LOBYTE(v124) = 13;
      v58 = v111;
      v59 = sub_1D966EE58();
      v111 = v58;
      if (v58)
      {
        (*(v22 + 8))(v121, v122);
        *&v110[4] = 0;
        v125 = 0;
        LODWORD(v114) = 0;
        LODWORD(v115) = 0;
        LODWORD(v116) = 0;
        LODWORD(v117) = 0;
        LODWORD(v120) = 0;
        LODWORD(v121) = 0;
        LODWORD(v122) = 0;
        v49 = 0;
        v48 = 1;
        *v110 = 1;
      }

      else
      {
        v61 = (v113 + v112[17]);
        *v61 = v59;
        v61[1] = v60;
        LOBYTE(v124) = 14;
        v62 = v111;
        v63 = sub_1D966EE58();
        v111 = v62;
        if (v62)
        {
          (*(v22 + 8))(v121, v122);
          v125 = 0;
          LODWORD(v114) = 0;
          LODWORD(v115) = 0;
          LODWORD(v116) = 0;
          LODWORD(v117) = 0;
          LODWORD(v120) = 0;
          LODWORD(v121) = 0;
          LODWORD(v122) = 0;
          v49 = 0;
          v48 = 1;
          *v110 = 1;
          *&v110[4] = 1;
        }

        else
        {
          v65 = (v113 + v112[18]);
          *v65 = v63;
          v65[1] = v64;
          LOBYTE(v124) = 15;
          v66 = v111;
          v67 = sub_1D966EE08();
          v111 = v66;
          if (v66)
          {
            (*(v22 + 8))(v121, v122);
            v125 = 0;
            LODWORD(v114) = 0;
            LODWORD(v115) = 0;
            LODWORD(v116) = 0;
            LODWORD(v117) = 0;
            LODWORD(v120) = 0;
            LODWORD(v121) = 0;
            LODWORD(v122) = 0;
            v49 = 0;
            v48 = 1;
            *v110 = 0x100000001;
            *&v110[8] = 1;
          }

          else
          {
            v69 = (v113 + v112[19]);
            *v69 = v67;
            v69[1] = v68;
            LOBYTE(v124) = 16;
            v70 = v111;
            v71 = sub_1D966EE08();
            v111 = v70;
            if (v70)
            {
              (*(v22 + 8))(v121, v122);
              LODWORD(v114) = 0;
              LODWORD(v115) = 0;
              LODWORD(v116) = 0;
              LODWORD(v117) = 0;
              LODWORD(v120) = 0;
              LODWORD(v121) = 0;
              LODWORD(v122) = 0;
              v49 = 0;
              v48 = 1;
              *v110 = 0x100000001;
              *&v110[8] = 1;
              v125 = 1;
            }

            else
            {
              v73 = (v113 + v112[20]);
              *v73 = v71;
              v73[1] = v72;
              LOBYTE(v124) = 17;
              v74 = v111;
              v75 = sub_1D966EE58();
              v111 = v74;
              if (v74)
              {
                (*(v22 + 8))(v121, v122);
                LODWORD(v115) = 0;
                LODWORD(v116) = 0;
                LODWORD(v117) = 0;
                LODWORD(v120) = 0;
                LODWORD(v121) = 0;
                LODWORD(v122) = 0;
                v49 = 0;
                v48 = 1;
                *v110 = 0x100000001;
                *&v110[8] = 1;
                v125 = 1;
                LODWORD(v114) = 1;
              }

              else
              {
                v77 = (v113 + v112[21]);
                *v77 = v75;
                v77[1] = v76;
                LOBYTE(v124) = 18;
                v78 = v111;
                v79 = sub_1D966EE58();
                v111 = v78;
                if (v78)
                {
                  (*(v22 + 8))(v121, v122);
                  LODWORD(v116) = 0;
                  LODWORD(v117) = 0;
                  LODWORD(v120) = 0;
                  LODWORD(v121) = 0;
                  LODWORD(v122) = 0;
                  v49 = 0;
                  v48 = 1;
                  *v110 = 0x100000001;
                  *&v110[8] = 1;
                  v125 = 1;
                  LODWORD(v114) = 1;
                  LODWORD(v115) = 1;
                }

                else
                {
                  v81 = (v113 + v112[22]);
                  *v81 = v79;
                  v81[1] = v80;
                  LOBYTE(v124) = 19;
                  v82 = v111;
                  sub_1D966EE88();
                  v111 = v82;
                  if (v82)
                  {
                    (*(v22 + 8))(v121, v122);
                    LODWORD(v117) = 0;
                    LODWORD(v120) = 0;
                    LODWORD(v121) = 0;
                    LODWORD(v122) = 0;
                    v49 = 0;
                    v48 = 1;
                    *v110 = 0x100000001;
                    *&v110[8] = 1;
                    v125 = 1;
                    LODWORD(v114) = 1;
                    LODWORD(v115) = 1;
                    LODWORD(v116) = 1;
                  }

                  else
                  {
                    (*(v118 + 32))(v113 + v112[23], v114, v119);
                    LOBYTE(v124) = 20;
                    v83 = v111;
                    v84 = sub_1D966EE08();
                    v111 = v83;
                    if (v83)
                    {
                      (*(v22 + 8))(v121, v122);
                      LODWORD(v120) = 0;
                      LODWORD(v121) = 0;
                      LODWORD(v122) = 0;
                      v49 = 0;
                      v48 = 1;
                      *v110 = 0x100000001;
                      *&v110[8] = 1;
                      v125 = 1;
                      LODWORD(v114) = 1;
                      LODWORD(v115) = 1;
                      LODWORD(v116) = 1;
                      LODWORD(v117) = 1;
                    }

                    else
                    {
                      v86 = (v113 + v112[24]);
                      *v86 = v84;
                      v86[1] = v85;
                      LOBYTE(v124) = 21;
                      v87 = v111;
                      v88 = sub_1D966EE08();
                      v111 = v87;
                      if (v87)
                      {
                        (*(v22 + 8))(v121, v122);
                        LODWORD(v121) = 0;
                        LODWORD(v122) = 0;
                        v49 = 0;
                        v48 = 1;
                        *v110 = 0x100000001;
                        *&v110[8] = 1;
                        v125 = 1;
                        LODWORD(v114) = 1;
                        LODWORD(v115) = 1;
                        LODWORD(v116) = 1;
                        LODWORD(v117) = 1;
                        LODWORD(v120) = 1;
                      }

                      else
                      {
                        v90 = (v113 + v112[25]);
                        *v90 = v88;
                        v90[1] = v89;
                        LOBYTE(v124) = 22;
                        v91 = v111;
                        v92 = sub_1D966EE08();
                        v111 = v91;
                        if (v91)
                        {
                          (*(v22 + 8))(v121, v122);
                          LODWORD(v122) = 0;
                          v49 = 0;
                          v48 = 1;
                          *v110 = 0x100000001;
                          *&v110[8] = 1;
                          v125 = 1;
                          LODWORD(v114) = 1;
                          LODWORD(v115) = 1;
                          LODWORD(v116) = 1;
                          LODWORD(v117) = 1;
                          LODWORD(v120) = 1;
                          LODWORD(v121) = 1;
                        }

                        else
                        {
                          v94 = (v113 + v112[26]);
                          *v94 = v92;
                          v94[1] = v93;
                          v126 = 23;
                          sub_1D9621D48();
                          v95 = v111;
                          sub_1D966EE38();
                          v111 = v95;
                          if (v95)
                          {
                            (*(v22 + 8))(v121, v122);
                            v49 = 0;
                            v48 = 1;
                            *v110 = 0x100000001;
                            *&v110[8] = 1;
                            v125 = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v115) = 1;
                            LODWORD(v116) = 1;
                            LODWORD(v117) = 1;
                            LODWORD(v120) = 1;
                            LODWORD(v121) = 1;
                            LODWORD(v122) = 1;
                          }

                          else
                          {
                            *(v113 + v112[27]) = v124;
                            LOBYTE(v124) = 24;
                            v96 = v111;
                            v97 = sub_1D966EE18();
                            v111 = v96;
                            if (!v96)
                            {
                              *(v113 + v112[28]) = v97;
                              LOBYTE(v124) = 25;
                              v98 = v111;
                              v99 = sub_1D966EE68();
                              v111 = v98;
                              if (!v98)
                              {
                                *(v113 + v112[29]) = v99 & 1;
                                LOBYTE(v124) = 26;
                                v100 = v111;
                                v101 = sub_1D966EE48();
                                if (!v100)
                                {
                                  v103 = v113 + v112[30];
                                  *v103 = v101;
                                  v103[8] = v102 & 1;
                                  LOBYTE(v124) = 27;
                                  v104 = sub_1D966EE48();
                                  v105 = v113 + v112[31];
                                  *v105 = v104;
                                  v105[8] = v106 & 1;
                                  LOBYTE(v124) = 28;
                                  sub_1D966EE38();
                                  sub_1D961B690(v115, v113 + v112[32]);
                                  LOBYTE(v124) = 29;
                                  sub_1D966EE38();
                                  (*(v22 + 8))(v121, v122);
                                  v108 = v113;
                                  sub_1D961B690(v116, v113 + v112[33]);
                                  sub_1D964A8F0(v108, v117);
                                  __swift_destroy_boxed_opaque_existential_1(v123);
                                  return sub_1D964A954(v108);
                                }

                                (*(v22 + 8))(v121, v122);
                                __swift_destroy_boxed_opaque_existential_1(v123);
                                v27 = v113;

                                v107 = v112;
                                sub_1D95EA898(v27 + v112[8], &qword_1ECB20848, &qword_1D9670000);

                                v30 = v107;
                                sub_1D95EA898(v27 + v107[13], &qword_1ECB20848, &qword_1D9670000);

                                v31 = 1;
                                v29 = 1;
                                v32 = 1;
                                LOBYTE(v28) = 1;
                                goto LABEL_13;
                              }
                            }

                            (*(v22 + 8))(v121, v122);
                            v48 = 1;
                            *v110 = 0x100000001;
                            *&v110[8] = 1;
                            v125 = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v115) = 1;
                            LODWORD(v116) = 1;
                            LODWORD(v117) = 1;
                            LODWORD(v120) = 1;
                            LODWORD(v121) = 1;
                            LODWORD(v122) = 1;
                            v49 = 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v123);
  v27 = v113;

  v30 = v112;
  sub_1D95EA898(v27 + v112[8], &qword_1ECB20848, &qword_1D9670000);
  v31 = v49;

  v28 = v120;

  v32 = v121;
  if (v48)
  {
    result = sub_1D95EA898(v27 + v30[13], &qword_1ECB20848, &qword_1D9670000);
    if (v110[0])
    {
      goto LABEL_20;
    }

LABEL_6:
    v29 = v122;
    if (!*&v110[4])
    {
      goto LABEL_21;
    }

LABEL_7:

    if (v110[8])
    {
      goto LABEL_22;
    }

LABEL_8:
    if (!v125)
    {
      goto LABEL_23;
    }

LABEL_9:

    if (v114)
    {
      goto LABEL_24;
    }

LABEL_10:
    if (!v115)
    {
      goto LABEL_25;
    }

LABEL_11:

    if (v116)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (!*v110)
  {
    goto LABEL_6;
  }

LABEL_20:

  v29 = v122;
  if (v110[4])
  {
    goto LABEL_7;
  }

LABEL_21:
  if (!*&v110[8])
  {
    goto LABEL_8;
  }

LABEL_22:

  if (v125)
  {
    goto LABEL_9;
  }

LABEL_23:
  if (!v114)
  {
    goto LABEL_10;
  }

LABEL_24:

  if (v115)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (!v116)
  {
LABEL_12:
    if (!v117)
    {
      goto LABEL_27;
    }

LABEL_13:
    result = (*(v118 + 8))(v27 + v30[23], v119);
    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_14:

    if (v32)
    {
      goto LABEL_29;
    }

LABEL_15:
    if (!v29)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

LABEL_26:

  if (v117)
  {
    goto LABEL_13;
  }

LABEL_27:
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_28:
  if (!v32)
  {
    goto LABEL_15;
  }

LABEL_29:

  if ((v29 & 1) == 0)
  {
LABEL_30:
    if (v31)
    {
      return sub_1D9621CEC(*(v27 + v30[27]), *(v27 + v30[27] + 8));
    }

    return result;
  }

LABEL_16:

  if (v31)
  {
    return sub_1D9621CEC(*(v27 + v30[27]), *(v27 + v30[27] + 8));
  }

  return result;
}