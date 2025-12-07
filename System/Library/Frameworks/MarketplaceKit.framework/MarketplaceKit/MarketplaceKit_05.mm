unint64_t SecureButtonActionResponse.ResponseType.stringValue.getter()
{
  v1 = v0;
  v2 = sub_1D966E618();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9663CDC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1701736270;
    }

    (*(v3 + 32))(v5, v8, v2);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1D966ED28();

    v10 = 0x80000001D9681E20;
    v11 = 0xD000000000000018;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1D966ED28();

    v10 = 0x80000001D9681E40;
    v11 = 0xD000000000000012;
  }

  v15 = v11;
  v16 = v10;
  sub_1D9663DE8(&qword_1ECB22DF8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v12 = sub_1D966EFA8();
  MEMORY[0x1DA7338E0](v12);

  v13 = v15;
  (*(v3 + 8))(v5, v2);
  return v13;
}

unint64_t sub_1D9662470()
{
  v1 = 0x496D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1D96624D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9664E9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D96624FC(uint64_t a1)
{
  v2 = sub_1D9663D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9662538(uint64_t a1)
{
  v2 = sub_1D9663D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9662574(uint64_t a1)
{
  v2 = sub_1D9663D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96625B0(uint64_t a1)
{
  v2 = sub_1D9663D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96625EC(uint64_t a1)
{
  v2 = sub_1D9663E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9662628(uint64_t a1)
{
  v2 = sub_1D9663E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9662664(uint64_t a1)
{
  v2 = sub_1D9663E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96626A0(uint64_t a1)
{
  v2 = sub_1D9663E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E00, &qword_1D967DDD0);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E08, &qword_1D967DDD8);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - v4;
  v5 = sub_1D966E618();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E10, &qword_1D967DDE0);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E18, &qword_1D967DDE8);
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663D40();
  sub_1D966F118();
  sub_1D9663CDC(v44, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v35;
    v20 = v42;
    v29 = v15;
    v23 = v43;
    (*(v42 + 32))(v9, v29, v43);
    v49 = 1;
    sub_1D9663E30();
    v30 = v37;
    v25 = v46;
    sub_1D966EED8();
    sub_1D9663DE8(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v31 = v38;
    sub_1D966EF68();
    (*(v28 + 8))(v30, v31);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = v42;
    v21 = v36;
    v22 = v15;
    v23 = v43;
    (*(v42 + 32))(v36, v22, v43);
    v50 = 2;
    sub_1D9663D94();
    v24 = v39;
    v25 = v46;
    sub_1D966EED8();
    sub_1D9663DE8(&qword_1ECB221A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v26 = v41;
    v27 = v47;
    sub_1D966EF68();
    if (!v27)
    {
      (*(v40 + 8))(v24, v26);
      (*(v20 + 8))(v21, v23);
      return (*(v45 + 8))(v18, v25);
    }

    (*(v40 + 8))(v24, v26);
    v9 = v21;
LABEL_6:
    (*(v20 + 8))(v9, v23);
    return (*(v45 + 8))(v18, v25);
  }

  v48 = 0;
  sub_1D9663E84();
  v33 = v46;
  sub_1D966EED8();
  (*(v34 + 8))(v12, v10);
  return (*(v45 + 8))(v18, v33);
}

uint64_t SecureButtonActionResponse.ResponseType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E40, &qword_1D967DDF0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v39 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E48, &qword_1D967DDF8);
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E50, &qword_1D967DE00);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E58, &qword_1D967DE08);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D9663D40();
  v21 = v54;
  sub_1D966F0F8();
  if (!v21)
  {
    v40 = v17;
    v41 = v14;
    v23 = v49;
    v22 = v50;
    v54 = v19;
    v42 = v11;
    v25 = v51;
    v24 = v52;
    v26 = sub_1D966EEB8();
    v27 = (2 * *(v26 + 16)) | 1;
    v56 = v26;
    v57 = v26 + 32;
    v58 = 0;
    v59 = v27;
    v28 = sub_1D9605E2C();
    if (v28 == 3 || v58 != v59 >> 1)
    {
      v32 = sub_1D966ED58();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v34 = v42;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v53 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v60 = 1;
          sub_1D9663E30();
          v29 = v22;
          sub_1D966EDE8();
          v30 = v53;
          sub_1D966E618();
          sub_1D9663DE8(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v31 = v40;
          sub_1D966EE88();
          (*(v45 + 8))(v29, v25);
        }

        else
        {
          v60 = 2;
          sub_1D9663D94();
          sub_1D966EDE8();
          v30 = v53;
          sub_1D966E618();
          sub_1D9663DE8(&qword_1ECB22218, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v31 = v41;
          v38 = v47;
          v37 = v48;
          sub_1D966EE88();
          (*(v46 + 8))(v37, v38);
        }

        (*(v30 + 8))(v10, v8);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v54;
        sub_1D9663F4C(v31, v54, type metadata accessor for SecureButtonActionResponse.ResponseType);
      }

      else
      {
        v60 = 0;
        sub_1D9663E84();
        sub_1D966EDE8();
        (*(v43 + 8))(v23, v44);
        (*(v53 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v36 = v54;
        swift_storeEnumTagMultiPayload();
      }

      sub_1D9663F4C(v36, v24, type metadata accessor for SecureButtonActionResponse.ResponseType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D96634EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_1D9663574(uint64_t a1)
{
  v2 = sub_1D9663ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96635B0(uint64_t a1)
{
  v2 = sub_1D9663ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureButtonActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E60, &qword_1D967DE10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663ED8();
  sub_1D966F118();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_1D9663DE8(&qword_1ECB22E70, type metadata accessor for SecureButtonActionResponse.ResponseType, &protocol conformance descriptor for SecureButtonActionResponse.ResponseType);
  sub_1D966EF68();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SecureButtonActionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E78, &qword_1D967DE18);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SecureButtonActionResponse(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663ED8();
  sub_1D966F0F8();
  if (!v2)
  {
    v12 = v15;
    sub_1D9663DE8(&qword_1ECB22E80, type metadata accessor for SecureButtonActionResponse.ResponseType, &protocol conformance descriptor for SecureButtonActionResponse.ResponseType);
    v13 = v17;
    sub_1D966EE88();
    (*(v16 + 8))(v8, v6);
    sub_1D9663F4C(v13, v11, type metadata accessor for SecureButtonActionResponse.ResponseType);
    sub_1D9663F4C(v11, v12, type metadata accessor for SecureButtonActionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D96639F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22E60, &qword_1D967DE10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9663ED8();
  sub_1D966F118();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_1D9663DE8(&qword_1ECB22E70, type metadata accessor for SecureButtonActionResponse.ResponseType, &protocol conformance descriptor for SecureButtonActionResponse.ResponseType);
  sub_1D966EF68();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9663B68()
{
  result = qword_1ECB22DC8;
  if (!qword_1ECB22DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22DC8);
  }

  return result;
}

unint64_t sub_1D9663BBC()
{
  result = qword_1ECB22DD0;
  if (!qword_1ECB22DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22DD0);
  }

  return result;
}

uint64_t sub_1D9663C10(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_1D95EA55C(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_1D9663C20()
{
  result = qword_1ECB22DE0;
  if (!qword_1ECB22DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22DE0);
  }

  return result;
}

uint64_t sub_1D9663C74(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D9663CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9663D40()
{
  result = qword_1ECB22E20;
  if (!qword_1ECB22E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E20);
  }

  return result;
}

unint64_t sub_1D9663D94()
{
  result = qword_1ECB22E28;
  if (!qword_1ECB22E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E28);
  }

  return result;
}

uint64_t sub_1D9663DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9663E30()
{
  result = qword_1ECB22E30;
  if (!qword_1ECB22E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E30);
  }

  return result;
}

unint64_t sub_1D9663E84()
{
  result = qword_1ECB22E38;
  if (!qword_1ECB22E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E38);
  }

  return result;
}

unint64_t sub_1D9663ED8()
{
  result = qword_1ECB22E68;
  if (!qword_1ECB22E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22E68);
  }

  return result;
}

uint64_t sub_1D9663F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9663FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9664008(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D96640B4(uint64_t a1)
{
  result = type metadata accessor for SecureButtonActionResponse.ResponseType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9664120(uint64_t a1)
{
  result = sub_1D966E618();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9664234()
{
  result = qword_1ECB22EA8;
  if (!qword_1ECB22EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EA8);
  }

  return result;
}

unint64_t sub_1D966428C()
{
  result = qword_1ECB22EB0;
  if (!qword_1ECB22EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EB0);
  }

  return result;
}

unint64_t sub_1D96642E4()
{
  result = qword_1ECB22EB8;
  if (!qword_1ECB22EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EB8);
  }

  return result;
}

unint64_t sub_1D966433C()
{
  result = qword_1ECB22EC0;
  if (!qword_1ECB22EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EC0);
  }

  return result;
}

unint64_t sub_1D9664394()
{
  result = qword_1ECB22EC8;
  if (!qword_1ECB22EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EC8);
  }

  return result;
}

unint64_t sub_1D96643EC()
{
  result = qword_1ECB22ED0;
  if (!qword_1ECB22ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22ED0);
  }

  return result;
}

unint64_t sub_1D9664444()
{
  result = qword_1ECB22ED8;
  if (!qword_1ECB22ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22ED8);
  }

  return result;
}

unint64_t sub_1D966449C()
{
  result = qword_1ECB22EE0;
  if (!qword_1ECB22EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EE0);
  }

  return result;
}

unint64_t sub_1D96644F4()
{
  result = qword_1ECB22EE8;
  if (!qword_1ECB22EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EE8);
  }

  return result;
}

unint64_t sub_1D966454C()
{
  result = qword_1ECB22EF0;
  if (!qword_1ECB22EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EF0);
  }

  return result;
}

unint64_t sub_1D96645A4()
{
  result = qword_1ECB22EF8;
  if (!qword_1ECB22EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22EF8);
  }

  return result;
}

unint64_t sub_1D96645FC()
{
  result = qword_1ECB22F00;
  if (!qword_1ECB22F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F00);
  }

  return result;
}

unint64_t sub_1D9664654()
{
  result = qword_1ECB22F08;
  if (!qword_1ECB22F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F08);
  }

  return result;
}

unint64_t sub_1D96646AC()
{
  result = qword_1ECB22F10;
  if (!qword_1ECB22F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F10);
  }

  return result;
}

unint64_t sub_1D9664704()
{
  result = qword_1ECB22F18;
  if (!qword_1ECB22F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F18);
  }

  return result;
}

unint64_t sub_1D966475C()
{
  result = qword_1ECB22F20;
  if (!qword_1ECB22F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F20);
  }

  return result;
}

unint64_t sub_1D96647B4()
{
  result = qword_1ECB22F28;
  if (!qword_1ECB22F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F28);
  }

  return result;
}

unint64_t sub_1D966480C()
{
  result = qword_1ECB22F30;
  if (!qword_1ECB22F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F30);
  }

  return result;
}

unint64_t sub_1D9664864()
{
  result = qword_1ECB22F38;
  if (!qword_1ECB22F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F38);
  }

  return result;
}

unint64_t sub_1D96648BC()
{
  result = qword_1ECB22F40;
  if (!qword_1ECB22F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F40);
  }

  return result;
}

unint64_t sub_1D9664914()
{
  result = qword_1ECB22F48;
  if (!qword_1ECB22F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F48);
  }

  return result;
}

unint64_t sub_1D966496C()
{
  result = qword_1ECB22F50;
  if (!qword_1ECB22F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F50);
  }

  return result;
}

unint64_t sub_1D96649C4()
{
  result = qword_1ECB22F58;
  if (!qword_1ECB22F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F58);
  }

  return result;
}

unint64_t sub_1D9664A1C()
{
  result = qword_1ECB22F60;
  if (!qword_1ECB22F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F60);
  }

  return result;
}

unint64_t sub_1D9664A74()
{
  result = qword_1ECB22F68;
  if (!qword_1ECB22F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F68);
  }

  return result;
}

unint64_t sub_1D9664ACC()
{
  result = qword_1ECB22F70;
  if (!qword_1ECB22F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F70);
  }

  return result;
}

unint64_t sub_1D9664B24()
{
  result = qword_1ECB22F78;
  if (!qword_1ECB22F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F78);
  }

  return result;
}

unint64_t sub_1D9664B7C()
{
  result = qword_1ECB22F80;
  if (!qword_1ECB22F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F80);
  }

  return result;
}

unint64_t sub_1D9664BD4()
{
  result = qword_1ECB22F88;
  if (!qword_1ECB22F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F88);
  }

  return result;
}

unint64_t sub_1D9664C2C()
{
  result = qword_1ECB22F90;
  if (!qword_1ECB22F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F90);
  }

  return result;
}

unint64_t sub_1D9664C84()
{
  result = qword_1ECB22F98;
  if (!qword_1ECB22F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22F98);
  }

  return result;
}

unint64_t sub_1D9664CDC()
{
  result = qword_1ECB22FA0;
  if (!qword_1ECB22FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FA0);
  }

  return result;
}

uint64_t sub_1D9664D30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE00686374614274)
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

uint64_t sub_1D9664E9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D7269666E6F63 && a2 == 0xEE006C6C6174736ELL || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9681E80 == a2)
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

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9664FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D963F460(a3, v25 - v10);
  v12 = sub_1D966EAE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D963F4D0(v11);
  }

  else
  {
    sub_1D966EAD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D966EA78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D966E9C8() + 32;
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

      sub_1D963F4D0(a3);

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

  sub_1D963F4D0(a3);
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

uint64_t static LicenseRepair.requestLicenseRepair(_:status:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1D966EAE8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;

  sub_1D9664FDC(0, 0, v8, &unk_1D967EE90, v10);
}

uint64_t sub_1D96653BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_1D966E8E8();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9665480, 0, 0);
}

uint64_t sub_1D9665480()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = qword_1EDCF6860;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1D9665598;
  v5 = *(v0 + 48);

  return sub_1D95F1900(sub_1D95F1900, v5, v2, v1, 0, sub_1D964C90C, 0);
}

uint64_t sub_1D9665598()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D9665714;
  }

  else
  {

    v2 = sub_1D96656B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D96656B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9665714()
{
  v24 = v0;
  v1 = *(v0 + 96);

  sub_1D966E888();

  v2 = v1;
  v3 = sub_1D966E8C8();
  v4 = sub_1D966EBA8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v22 = *(v0 + 80);
    v6 = *(v0 + 56);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1D9606634(v7, v6, &v23);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = *(*(v0 + 24) - 8);
    swift_task_alloc();
    (*(v10 + 16))();
    v11 = sub_1D966E9B8();
    v13 = v12;

    v14 = sub_1D9606634(v11, v13, &v23);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1D95E0000, v3, v4, "Error requesting license repair for app at path: %{public}s, %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA734680](v9, -1, -1);
    MEMORY[0x1DA734680](v8, -1, -1);

    (*(v5 + 8))(v22, v21);
  }

  else
  {
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D96659BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D95EAF50;

  return sub_1D96653BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9665AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9665B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSheetContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationSheetRequest.run()()
{
  *(v1 + 32) = v0;
  type metadata accessor for LaunchAngelXPCRequest(0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9665C00, 0, 0);
}

uint64_t sub_1D9665C00()
{
  sub_1D9665AA0(v0[4], v0[5]);
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D9665CC0;
  v2 = v0[5];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v2);
}

uint64_t sub_1D9665CC0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D96116E4;
  }

  else
  {
    v2 = sub_1D9665DD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9665DD4()
{
  sub_1D9611758(*(v0 + 40));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 != 2)
  {
    sub_1D9604030(*(v0 + 16), v2);
    LOBYTE(v1) = 0;
  }

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t type metadata accessor for ConfirmationSheetRequest(uint64_t a1)
{
  result = qword_1ECB22FA8;
  if (!qword_1ECB22FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9665ED4(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSheetContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 PerformActionRequest.init(request:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t PerformActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 48) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1D9665F84, 0, 0);
}

uint64_t sub_1D9665F84()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D966608C;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  return sub_1D95F234C(v5, v3, v4, v1, sub_1D9666D24, 0);
}

uint64_t sub_1D966608C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9666180()
{
  if (*v0)
  {
    return 0x63694C77656E6572;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D96661CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9681EC0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63694C77656E6572 && a2 == 0xED00007365736E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D966EFB8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D96662BC(uint64_t a1)
{
  v2 = sub_1D9667F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96662F8(uint64_t a1)
{
  v2 = sub_1D9667F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9666334(uint64_t a1)
{
  v2 = sub_1D9667FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9666370(uint64_t a1)
{
  v2 = sub_1D9667FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96663AC(uint64_t a1)
{
  v2 = sub_1D9667F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96663E8(uint64_t a1)
{
  v2 = sub_1D9667F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FB8, &qword_1D967EEF8);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v19 = v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FC0, &qword_1D967EF00);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FC8, &unk_1D967EF08);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = v17 - v9;
  v11 = v1[1];
  v22 = *v1;
  v17[1] = v11;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9667F38();
  sub_1D966F118();
  if (v12)
  {
    v26 = 1;
    sub_1D9667F8C();
    v13 = v19;
    v14 = v23;
    sub_1D966EED8();
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
    sub_1D9618324(&qword_1ECB21810, MEMORY[0x1E69E76E0], MEMORY[0x1E69E6300]);
    v15 = v21;
    sub_1D966EF68();
    (*(v20 + 8))(v13, v15);
  }

  else
  {
    v25 = 0;
    sub_1D9667FE0();
    v14 = v23;
    sub_1D966EED8();
    sub_1D966EF38();
    (*(v18 + 8))(v7, v5);
  }

  return (*(v8 + 8))(v10, v14);
}

uint64_t PerformActionRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FE8, &qword_1D967EF18);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v30[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FF0, &qword_1D967EF20);
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22FF8, &qword_1D967EF28);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-v10];
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D9667F38();
  v13 = v37;
  sub_1D966F0F8();
  if (!v13)
  {
    v32 = v5;
    v37 = v9;
    v14 = v36;
    v15 = sub_1D966EEB8();
    v16 = (2 * *(v15 + 16)) | 1;
    v39 = v15;
    v40 = v15 + 32;
    v41 = 0;
    v42 = v16;
    v17 = sub_1D9605E20();
    v18 = v8;
    if (v17 == 2 || v41 != v42 >> 1)
    {
      v20 = sub_1D966ED58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v22 = &type metadata for PerformActionRequest.Request;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v37 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v17;
      if (v17)
      {
        LOBYTE(v43) = 1;
        sub_1D9667F8C();
        sub_1D966EDE8();
        v19 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21808, &qword_1D96747B0);
        sub_1D9618324(&qword_1ECB21820, MEMORY[0x1E69E7708], MEMORY[0x1E69E6330]);
        v24 = v4;
        v25 = v33;
        sub_1D966EE88();
        (*(v35 + 8))(v24, v25);
        (*(v19 + 8))(v11, v18);
        swift_unknownObjectRelease();
        v26 = 0;
        v27 = v43;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_1D9667FE0();
        sub_1D966EDE8();
        v28 = v32;
        v27 = sub_1D966EE58();
        v26 = v29;
        (*(v34 + 8))(v7, v28);
        (*(v37 + 8))(v11, v8);
        swift_unknownObjectRelease();
      }

      *v14 = v27;
      *(v14 + 8) = v26;
      *(v14 + 16) = v31 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

double PerformActionRequest.request.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D9668034(v2, v3, v4);
}

void sub_1D9666D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_16;
  v9 = _Block_copy(v10);

  [a1 performActionRequest:v8 reply:v9];
  _Block_release(v9);
}

unint64_t PerformActionRequest.stringValue.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    sub_1D966ED28();

    v19 = 0xD000000000000014;
    v2 = *(v1 + 16);
    if (v2)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1D95FE0C4(0, v2, 0);
      v3 = v17;
      v4 = v1 + 32;
      do
      {
        v4 += 8;
        v5 = sub_1D966EFA8();
        v18 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v5;
          v11 = v6;
          sub_1D95FE0C4((v7 > 1), v8 + 1, 1);
          v6 = v11;
          v5 = v10;
          v3 = v18;
        }

        *(v3 + 16) = v8 + 1;
        v9 = v3 + 16 * v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v6;
        --v2;
      }

      while (v2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D964DE88();
    v13 = sub_1D966E968();
    v15 = v14;

    MEMORY[0x1DA7338E0](v13, v15);
  }

  else
  {
    v12 = v0[1];
    sub_1D966ED28();

    v19 = 0xD00000000000001BLL;
    MEMORY[0x1DA7338E0](v1, v12);
  }

  return v19;
}

uint64_t sub_1D9666FF0(uint64_t a1)
{
  v2 = sub_1D9668040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D966702C(uint64_t a1)
{
  v2 = sub_1D9668040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionRequest.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23000, &qword_1D967EF30);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668034(v6, v7, v8);
  sub_1D9668040();
  sub_1D966F118();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1D9668094();
  v9 = v11;
  sub_1D966EF68();
  sub_1D96680E8(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t PerformActionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23018, &qword_1D967EF38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668040();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D96680F4();
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9667390(uint64_t a1)
{
  v2 = sub_1D9668148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96673CC(uint64_t a1)
{
  v2 = sub_1D9668148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9667408(uint64_t a1)
{
  v2 = sub_1D966819C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9667444(uint64_t a1)
{
  v2 = sub_1D966819C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionResponse.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23028, &qword_1D967EF40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23030, &qword_1D967EF48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668148();
  sub_1D966F118();
  sub_1D966819C();
  sub_1D966EED8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t PerformActionResponse.Response.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t PerformActionResponse.Response.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23048, &qword_1D967EF50);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23050, &qword_1D967EF58);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668148();
  sub_1D966F0F8();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1D966EEB8();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1D9605E30() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1D966ED58();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
    *v16 = &type metadata for PerformActionResponse.Response;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1D966819C();
  sub_1D966EDE8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D9667A28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23028, &qword_1D967EF40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23030, &qword_1D967EF48);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9668148();
  sub_1D966F118();
  sub_1D966819C();
  sub_1D966EED8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D9667C08(uint64_t a1)
{
  v2 = sub_1D96681F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9667C44(uint64_t a1)
{
  v2 = sub_1D96681F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23058, &qword_1D967EF60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96681F0();
  sub_1D966F118();
  sub_1D9668244();
  sub_1D966EF68();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PerformActionResponse.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23070, &qword_1D967EF68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96681F0();
  sub_1D966F0F8();
  if (!v1)
  {
    sub_1D9668298();
    sub_1D966EE88();
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9667F38()
{
  result = qword_1ECB22FD0;
  if (!qword_1ECB22FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FD0);
  }

  return result;
}

unint64_t sub_1D9667F8C()
{
  result = qword_1ECB22FD8;
  if (!qword_1ECB22FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FD8);
  }

  return result;
}

unint64_t sub_1D9667FE0()
{
  result = qword_1ECB22FE0;
  if (!qword_1ECB22FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB22FE0);
  }

  return result;
}

unint64_t sub_1D9668040()
{
  result = qword_1ECB23008;
  if (!qword_1ECB23008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23008);
  }

  return result;
}

unint64_t sub_1D9668094()
{
  result = qword_1ECB23010;
  if (!qword_1ECB23010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23010);
  }

  return result;
}

unint64_t sub_1D96680F4()
{
  result = qword_1ECB23020;
  if (!qword_1ECB23020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23020);
  }

  return result;
}

unint64_t sub_1D9668148()
{
  result = qword_1ECB23038;
  if (!qword_1ECB23038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23038);
  }

  return result;
}

unint64_t sub_1D966819C()
{
  result = qword_1ECB23040;
  if (!qword_1ECB23040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23040);
  }

  return result;
}

unint64_t sub_1D96681F0()
{
  result = qword_1ECB23060;
  if (!qword_1ECB23060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23060);
  }

  return result;
}

unint64_t sub_1D9668244()
{
  result = qword_1ECB23068;
  if (!qword_1ECB23068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23068);
  }

  return result;
}

unint64_t sub_1D9668298()
{
  result = qword_1ECB23078;
  if (!qword_1ECB23078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23078);
  }

  return result;
}

unint64_t sub_1D96682F0()
{
  result = qword_1ECB23080;
  if (!qword_1ECB23080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23080);
  }

  return result;
}

uint64_t sub_1D9668360(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D96683A8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D966849C()
{
  result = qword_1ECB23088;
  if (!qword_1ECB23088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23088);
  }

  return result;
}

unint64_t sub_1D96684F4()
{
  result = qword_1ECB23090;
  if (!qword_1ECB23090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23090);
  }

  return result;
}

unint64_t sub_1D966854C()
{
  result = qword_1ECB23098;
  if (!qword_1ECB23098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23098);
  }

  return result;
}

unint64_t sub_1D96685A4()
{
  result = qword_1ECB230A0;
  if (!qword_1ECB230A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230A0);
  }

  return result;
}

unint64_t sub_1D96685FC()
{
  result = qword_1ECB230A8;
  if (!qword_1ECB230A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230A8);
  }

  return result;
}

unint64_t sub_1D9668654()
{
  result = qword_1ECB230B0;
  if (!qword_1ECB230B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230B0);
  }

  return result;
}

unint64_t sub_1D96686AC()
{
  result = qword_1ECB230B8;
  if (!qword_1ECB230B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230B8);
  }

  return result;
}

unint64_t sub_1D9668704()
{
  result = qword_1ECB230C0;
  if (!qword_1ECB230C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230C0);
  }

  return result;
}

unint64_t sub_1D966875C()
{
  result = qword_1ECB230C8;
  if (!qword_1ECB230C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230C8);
  }

  return result;
}

unint64_t sub_1D96687B4()
{
  result = qword_1ECB230D0;
  if (!qword_1ECB230D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230D0);
  }

  return result;
}

unint64_t sub_1D966880C()
{
  result = qword_1ECB230D8;
  if (!qword_1ECB230D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230D8);
  }

  return result;
}

unint64_t sub_1D9668864()
{
  result = qword_1ECB230E0;
  if (!qword_1ECB230E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230E0);
  }

  return result;
}

unint64_t sub_1D96688BC()
{
  result = qword_1ECB230E8;
  if (!qword_1ECB230E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230E8);
  }

  return result;
}

unint64_t sub_1D9668914()
{
  result = qword_1ECB230F0;
  if (!qword_1ECB230F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230F0);
  }

  return result;
}

unint64_t sub_1D966896C()
{
  result = qword_1ECB230F8;
  if (!qword_1ECB230F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB230F8);
  }

  return result;
}

unint64_t sub_1D96689C4()
{
  result = qword_1ECB23100;
  if (!qword_1ECB23100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23100);
  }

  return result;
}

unint64_t sub_1D9668A1C()
{
  result = qword_1ECB23108;
  if (!qword_1ECB23108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23108);
  }

  return result;
}

unint64_t sub_1D9668A74()
{
  result = qword_1ECB23110;
  if (!qword_1ECB23110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23110);
  }

  return result;
}

unint64_t sub_1D9668ACC()
{
  result = qword_1ECB23118;
  if (!qword_1ECB23118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23118);
  }

  return result;
}

unint64_t sub_1D9668B24()
{
  result = qword_1ECB23120;
  if (!qword_1ECB23120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23120);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OAuthAuthorizationContext.logKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OAuthAuthorizationContext.requestURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OAuthAuthorizationContext(0) + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OAuthAuthorizationContext(uint64_t a1)
{
  result = qword_1ECB23140;
  if (!qword_1ECB23140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(logKey:requestURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OAuthAuthorizationContext(0) + 20);
  v7 = sub_1D966E5B8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1D9668D14()
{
  if (*v0)
  {
    return 0x5574736575716572;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_1D9668D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5574736575716572 && a2 == 0xEA00000000004C52)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9668E30(uint64_t a1)
{
  v2 = sub_1D966904C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9668E6C(uint64_t a1)
{
  v2 = sub_1D966904C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OAuthAuthorizationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23128, &qword_1D967F9B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966904C();
  sub_1D966F118();
  v8[15] = 0;
  sub_1D966EF38();
  if (!v1)
  {
    type metadata accessor for OAuthAuthorizationContext(0);
    v8[14] = 1;
    sub_1D966E5B8();
    sub_1D95E63E8(&qword_1ECB20860, MEMORY[0x1E6968FB8]);
    sub_1D966EF68();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D966904C()
{
  result = qword_1ECB23130;
  if (!qword_1ECB23130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23130);
  }

  return result;
}

uint64_t OAuthAuthorizationContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_1D966E5B8();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23138, &qword_1D967F9B8);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for OAuthAuthorizationContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966904C();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_1D966EE58();
  v10[1] = v13;
  v21 = 1;
  sub_1D95E63E8(&qword_1ECB20870, MEMORY[0x1E6968FD0]);
  sub_1D966EE88();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1D96693B0(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9669414(v10);
}

uint64_t sub_1D96693B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9669414(uint64_t a1)
{
  v2 = type metadata accessor for OAuthAuthorizationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D96694DC()
{
  result = qword_1ECB23150;
  if (!qword_1ECB23150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23150);
  }

  return result;
}

unint64_t sub_1D9669534()
{
  result = qword_1ECB23158;
  if (!qword_1ECB23158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23158);
  }

  return result;
}

unint64_t sub_1D966958C()
{
  result = qword_1ECB23160;
  if (!qword_1ECB23160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23160);
  }

  return result;
}

uint64_t sub_1D96695E0()
{
  sub_1D966E768();
  v0 = sub_1D966E758();
  type metadata accessor for ServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EDCF9970 = result;
  return result;
}

uint64_t sub_1D966962C()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1D966E8E8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9669748, 0, 0);
}

uint64_t sub_1D9669748()
{
  v1 = MKBGetDeviceLockState();
  if (v1 != 3 && v1)
  {
    sub_1D9669EC0();
    swift_allocError();
    *v14 = 1;
LABEL_12:
    swift_willThrow();
    goto LABEL_19;
  }

  v2 = sub_1D966B070();
  *(v0 + 104) = v2;
  if (!v2)
  {
LABEL_9:
    sub_1D966E888();
    v15 = sub_1D966E8C8();
    v16 = sub_1D966EBA8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D95E0000, v15, v16, "Unexpected connection type", v17, 2u);
      MEMORY[0x1DA734680](v17, -1, -1);
    }

    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 80);

    (*(v19 + 8))(v18, v20);
    sub_1D9669EC0();
    swift_allocError();
    *v21 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  *(v0 + 48) = &unk_1F54FF040;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = v4;
  v6 = v3;
  v7 = sub_1D966E988();
  v8 = sub_1D966E988();
  v9 = [objc_opt_self() attributeWithDomain:v7 name:v8];
  *(v0 + 112) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB231D0, qword_1D967FB98);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D967FB80;
  *(v10 + 32) = v9;
  sub_1D966B218();
  v11 = v9;
  v12 = sub_1D966EA28();

  v13 = [v5 remoteTargetWithLaunchingAssertionAttributes_];

  if (v13)
  {
    sub_1D966EC28();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  *(v0 + 16) = v33;
  *(v0 + 32) = v34;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB231E0, &qword_1D967FBB0);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 56);
      *(v0 + 120) = v22;
      type metadata accessor for LaunchAngelXPCRequest(0);
      sub_1D966B3E4(&qword_1ECB231E8, type metadata accessor for LaunchAngelXPCRequest, &protocol conformance descriptor for LaunchAngelXPCRequest);
      sub_1D966B3E4(&qword_1ECB231F0, type metadata accessor for LaunchAngelXPCRequest, &protocol conformance descriptor for LaunchAngelXPCRequest);
      v23 = sub_1D966E738();
      *(v0 + 128) = v23;
      *(v0 + 136) = v24;
      v28 = v23;
      v29 = v24;
      v30 = swift_task_alloc();
      *(v0 + 144) = v30;
      v30[2] = v22;
      v30[3] = v28;
      v30[4] = v29;
      v31 = swift_task_alloc();
      *(v0 + 152) = v31;
      *v31 = v0;
      v31[1] = sub_1D9669C5C;
      v32 = *(v0 + 64);

      return MEMORY[0x1EEE6DE38](v32, 0, 0, 0xD00000000000001CLL, 0x80000001D9681F50, sub_1D966B264, v30, &type metadata for LaunchAngelXPCResponse);
    }
  }

  else
  {
    sub_1D9626248(v0 + 16);
  }

  sub_1D9669EC0();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();

  [v6 invalidate];
LABEL_19:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D9669C5C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1D9669E18;
  }

  else
  {

    v2 = sub_1D9669D78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9669D78()
{
  v1 = v0[14];
  v2 = v0[13];
  sub_1D95EA55C(v0[16], v0[17]);
  swift_unknownObjectRelease();

  [v2 invalidate];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D9669E18()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_1D95EA55C(v0[16], v0[17]);
  swift_unknownObjectRelease();

  [v1 invalidate];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1D9669EC0()
{
  result = qword_1ECB23168;
  if (!qword_1ECB23168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23168);
  }

  return result;
}

uint64_t LaunchAngelConnectionUtilities.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

void sub_1D9669FA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_1D966E5D8();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1D966B2E8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D966AAD8;
  aBlock[3] = &block_descriptor_17;
  v13 = _Block_copy(aBlock);

  [a2 handleXPCRequest:v10 reply:v13];
  _Block_release(v13);
}

uint64_t sub_1D966A170(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v39[2] = a2;
  v45 = *MEMORY[0x1E69E9840];
  v5 = sub_1D966E6E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D966E8E8();
  v40 = *(v41 - 8);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23208, &qword_1D967FCA8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v20 = v39 - v19;
  if (a3)
  {
    v21 = a3;
    sub_1D966E888();
    v22 = v21;
    v23 = sub_1D966E8C8();
    v24 = sub_1D966EBA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136315138;
      v27 = v22;
      v28 = [v27 description];
      v29 = sub_1D966E9A8();
      v31 = v30;

      v32 = sub_1D9606634(v29, v31, &v43);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_1D95E0000, v23, v24, "Error in reply: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1DA734680](v26, -1, -1);
      MEMORY[0x1DA734680](v25, -1, -1);
    }

    (*(v40 + 8))(v13, v41);
    v43 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
    return sub_1D966EA88();
  }

  else
  {
    v34 = v18;
    v39[0] = v11;
    sub_1D966B394(&qword_1ECB23210, MEMORY[0x1E696F060]);
    sub_1D966B394(&qword_1ECB23218, MEMORY[0x1E696F058]);
    sub_1D966E728();
    v39[1] = 0;
    (*(v34 + 16))(v17, v20, v14);
    v35 = (*(v34 + 88))(v17, v14);
    if (v35 == *MEMORY[0x1E696F050])
    {
      (*(v34 + 96))(v17, v14);
      v36 = v17[8];
      v43 = *v17;
      v44 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
      sub_1D966EA98();
      return (*(v34 + 8))(v20, v14);
    }

    else if (v35 == *MEMORY[0x1E696F048])
    {
      (*(v34 + 96))(v17, v14);
      (*(v6 + 32))(v8, v17, v5);
      sub_1D966B3E4(&qword_1ECB20B80, MEMORY[0x1E696F038], MEMORY[0x1E696F040]);
      v37 = swift_allocError();
      (*(v6 + 16))(v38, v8, v5);
      v43 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0);
      sub_1D966EA88();
      (*(v6 + 8))(v8, v5);
      return (*(v34 + 8))(v20, v14);
    }

    else
    {
      result = sub_1D966ED88();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D966AAD8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_1D966E5E8();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  sub_1D95EA55C(v7, v9);
}

void sub_1D966AB80(void *a1)
{
  v2 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  v3 = sub_1D966E988();
  v4 = [objc_opt_self() interfaceWithIdentifier_];

  v14 = sub_1D966AE18;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1D966AE24;
  v13 = &block_descriptor_17;
  v5 = _Block_copy(&v10);
  v6 = &unk_1F54FEC18;

  v7 = [objc_opt_self() protocolForProtocol:v6 interpreter:v5];
  _Block_release(v5);

  [v4 setServer_];
  [a1 setInterface_];
  v14 = sub_1D966AE78;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1D966AF14;
  v13 = &block_descriptor_20;
  v8 = _Block_copy(&v10);
  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v14 = sub_1D966AF7C;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1D966AF14;
  v13 = &block_descriptor_23;
  v9 = _Block_copy(&v10);
  [a1 setInvalidationHandler_];
  _Block_release(v9);
}

id sub_1D966AE24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t sub_1D966AE78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23220, &qword_1D967FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9674770;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000001D9682110;
  sub_1D966F058();
}

void sub_1D966AF14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D966AF7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23220, &qword_1D967FCB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9674770;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000001D96820F0;
  sub_1D966F058();
}

uint64_t sub_1D966B01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D966B070()
{
  v0 = sub_1D966E988();
  v1 = sub_1D966E988();
  v2 = [objc_opt_self() endpointForSystemMachName:v0 service:v1 instance:0];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() connectionWithEndpoint_];
  if (!v3)
  {
LABEL_5:

    return v3;
  }

  v6[4] = sub_1D966B018;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D966B01C;
  v6[3] = &block_descriptor_14;
  v4 = _Block_copy(v6);

  [v3 configureConnection_];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    [v3 activate];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D966B218()
{
  result = qword_1ECB231D8;
  if (!qword_1ECB231D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB231D8);
  }

  return result;
}

unint64_t sub_1D966B274()
{
  result = qword_1ECB231F8;
  if (!qword_1ECB231F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB231F8);
  }

  return result;
}

uint64_t sub_1D966B2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23200, &qword_1D967FCA0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D966A170(a1, a2, a3, v8);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D966B394(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB23208, &qword_1D967FCA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D966B3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FeatureFlag.hashValue.getter()
{
  sub_1D966F078();
  MEMORY[0x1DA733F80](0);
  return sub_1D966F0C8();
}

uint64_t isFeatureEnabled(_:)()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_1D966B560();
  v0 = sub_1D966E678();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_1D966B560()
{
  result = qword_1ECB23228;
  if (!qword_1ECB23228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23228);
  }

  return result;
}

unint64_t sub_1D966B5B8()
{
  result = qword_1ECB23230;
  if (!qword_1ECB23230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23230);
  }

  return result;
}

MarketplaceKit::AppDistributorResult __swiftcall AppDistributorResult.init(distributorID:requestingBundleID:)(Swift::String distributorID, Swift::String requestingBundleID)
{
  *v2 = distributorID;
  v2[1] = requestingBundleID;
  result.field1D968B0B4 = requestingBundleID;
  result.field1D968B0A8 = distributorID;
  return result;
}

uint64_t sub_1D966B628()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x7562697274736964;
  }
}

uint64_t sub_1D966B674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9682190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D966B760(uint64_t a1)
{
  v2 = sub_1D966B96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D966B79C(uint64_t a1)
{
  v2 = sub_1D966B96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppDistributorResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23238, &qword_1D967FD80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966B96C();
  sub_1D966F118();
  v12 = 0;
  v8 = v10[3];
  sub_1D966EF38();
  if (!v8)
  {
    v11 = 1;
    sub_1D966EF38();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D966B96C()
{
  result = qword_1EDCF6690;
  if (!qword_1EDCF6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6690);
  }

  return result;
}

uint64_t AppDistributorResult.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23240, &qword_1D967FD88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966B96C();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1D966EE58();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D966EE58();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D966BC10()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = sub_1D966E958();
  if (*(v3 + 16) && (v4 = sub_1D9654B30(0xD00000000000001BLL, 0x80000001D9682150), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v0 + 56) = v7;

  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1D966BDD8;

  return sub_1D95F3308(v0 + 16, v8, v7, sub_1D966BF90, 0);
}

uint64_t sub_1D966BDD8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D966BF78;
  }

  else
  {
    v2 = sub_1D966BF08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D966BF08()
{
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v2;
  AppDistributor.init(result:)(v5, v1);
  v3 = *(v0 + 8);

  return v3();
}

void AppDistributor.init(result:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    v6 = a1[2];
    v5 = a1[3];
    if (*a1 == 0xD000000000000012 && v3 == 0x80000001D9680290)
    {
      v8 = 0xD000000000000012;
      goto LABEL_10;
    }

    if (sub_1D966EFB8())
    {
      v8 = v4;
LABEL_10:
      sub_1D9607A04(v8, v3, v6, v5);
      v4 = 0;
      v3 = 0;
      goto LABEL_11;
    }

    if (v4 == 0xD000000000000014 && v3 == 0x80000001D9682170)
    {
      v9 = 0xD000000000000014;
LABEL_17:
      sub_1D9607A04(v9, v3, v6, v5);
      v4 = 0;
      v3 = 1;
      goto LABEL_11;
    }

    if (sub_1D966EFB8())
    {
      v9 = v4;
      goto LABEL_17;
    }

    if (v4 == v6 && v3 == v5)
    {
      v10 = v4;
      v11 = v3;
      v12 = v4;
      v13 = v3;
    }

    else
    {
      if ((sub_1D966EFB8() & 1) == 0)
      {

        sub_1D9607A04(v4, v3, v6, v5);
        goto LABEL_11;
      }

      v10 = v4;
      v11 = v3;
      v12 = v6;
      v13 = v5;
    }

    sub_1D9607A04(v10, v11, v12, v13);
    v4 = 0;
    v3 = 2;
  }

  else
  {
    v4 = 0;
    v3 = 3;
  }

LABEL_11:
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1D966C15C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D95EAF50;
  v2 = *(v0 + 24);

  return sub_1D95F36F4(v2, sub_1D966C254, 0);
}

uint64_t get_enum_tag_for_layout_string_14MarketplaceKit14AppDistributorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D966C290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D966C2E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1D966C364()
{
  result = qword_1ECB23248;
  if (!qword_1ECB23248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23248);
  }

  return result;
}

unint64_t sub_1D966C3BC()
{
  result = qword_1EDCF6680;
  if (!qword_1EDCF6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6680);
  }

  return result;
}

unint64_t sub_1D966C414()
{
  result = qword_1EDCF6688;
  if (!qword_1EDCF6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF6688);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for LinkMetadata(uint64_t a1)
{
  result = qword_1ECB23250;
  if (!qword_1ECB23250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D966C4FC(uint64_t a1)
{
  sub_1D966E5B8();
  if (v1 <= 0x3F)
  {
    sub_1D96127EC();
    if (v2 <= 0x3F)
    {
      sub_1D95E9634(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D966C5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23260, "v~");
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_1D966E4F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D966E5B8();
  v65 = *(v17 - 8);
  v18 = *(v65 + 16);
  v18(a3, a2, v17);
  v64 = type metadata accessor for LinkMetadata(0);
  v19 = *(v64 + 20);
  v66 = a3;
  v67 = a1;
  v18(a3 + v19, a1, v17);
  v20 = v14;
  v21 = a2;
  sub_1D966E4C8();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D966CBC0(v12);
LABEL_15:
    v47 = v65;
    v48 = *(v65 + 8);
    v48(a2, v17);
    v48(v67, v17);
    v49 = v64;
    v50 = v66;
    v51 = (v66 + *(v64 + 24));
    *v51 = 0;
    v51[1] = 0xE000000000000000;
    v52 = (v50 + v49[7]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v50 + v49[8]);
    *v53 = 0;
    v53[1] = 0;
    v54 = (v50 + v49[9]);
    *v54 = 0;
    v54[1] = 0;
    v55 = *(v47 + 56);
    v55(v50 + v49[10], 1, 1, v17);
    return (v55)(v50 + v49[11], 1, 1, v17);
  }

  (*(v14 + 32))(v16, v12, v13);
  v22 = sub_1D966E4B8();
  if (!v22)
  {
    (*(v14 + 8))(v16, v13);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = sub_1D966E4D8();
  v26 = v65;
  v59 = v16;
  v60 = v20;
  if (!v25)
  {
    v24 = sub_1D966E4E8();
  }

  v27 = v66;
  v28 = v62;
  v29 = v64;
  v30 = (v66 + *(v64 + 24));
  *v30 = v24;
  v30[1] = v25;
  v31 = sub_1D966CC28(0x6E656B6F74, 0xE500000000000000, v23);
  v32 = (v27 + v29[7]);
  *v32 = v31;
  v32[1] = v33;
  v34 = sub_1D966CC28(0xD000000000000018, 0x80000001D9680510, v23);
  v61 = v21;
  if (!v35)
  {
    v34 = sub_1D966CC28(0x44664F666F6F7270, 0xEF64616F6C6E776FLL, v23);
  }

  v36 = (v27 + v29[8]);
  *v36 = v34;
  v36[1] = v35;
  v37 = sub_1D966CC28(0x746E756F636361, 0xE700000000000000, v23);
  v38 = (v27 + v29[9]);
  *v38 = v37;
  v38[1] = v39;
  sub_1D966CC28(0xD00000000000001ELL, 0x80000001D96804F0, v23);
  if (v40 || (sub_1D966CC28(7365729, 0xE300000000000000, v23), v41) || (sub_1D966CC28(7365733, 0xE300000000000000, v23), v42))
  {

    sub_1D966E5A8();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v26 + 56))(v28, 1, 1, v17);
  }

  sub_1D961B690(v28, v27 + v29[10]);
  sub_1D966CC28(0x6572616853707061, 0xEB000000004C5255, v23);
  v44 = v43;

  if (v44)
  {

    v45 = v63;
    sub_1D966E5A8();

    v46 = *(v26 + 8);
    v46(v61, v17);
    v46(v67, v17);
    (*(v60 + 8))(v59, v13);
  }

  else
  {
    v57 = *(v26 + 8);
    v57(v61, v17);
    v57(v67, v17);
    (*(v60 + 8))(v59, v13);
    v45 = v63;
    (*(v26 + 56))(v63, 1, 1, v17);
  }

  return sub_1D961B690(v45, v27 + v29[11]);
}

uint64_t sub_1D966CBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23260, "v~");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D966CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D966E4A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v16 = v7 + 16;
  v17 = a3;
  v11 = (v7 + 8);
  for (i = v10 - 1; i != -1; --i)
  {
    (*(v7 + 16))(v9, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * i, v6);
    if (sub_1D966E488() == a1 && v14 == a2)
    {

      (*v11)(v9, v6);
      return sub_1D966E498();
    }

    v13 = sub_1D966EFB8();

    (*v11)(v9, v6);
    if (v13)
    {
      return sub_1D966E498();
    }
  }

  return 0;
}

uint64_t AppLibrary.ExceptionRequest.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.distributorID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AppLibrary.ExceptionRequest.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppLibrary.ExceptionRequest(0) + 40);
  v4 = sub_1D966E5F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppLibrary.ExceptionRequest(uint64_t a1)
{
  result = qword_1ECB232A8;
  if (!qword_1ECB232A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(id:appleItemID:bundleIdentifier:distributorID:status:exceptedRatingValue:timestamp:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *a8;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *a9 = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 8) = v13;
  *(a9 + 64) = a10;
  v14 = type metadata accessor for AppLibrary.ExceptionRequest(0);
  v15 = *(v14 + 40);
  v16 = sub_1D966E5F8();
  (*(*(v16 - 8) + 32))(a9 + v15, a11, v16);
  v17 = a9 + *(v14 + 44);

  return sub_1D966D054(a12, v17);
}

uint64_t sub_1D966D054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t AppLibrary.ExceptionRequest.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D966D18C()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x6D617473656D6974;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x7562697274736964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D966D29C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D966E0B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D966D2C4(uint64_t a1)
{
  v2 = sub_1D966D64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D966D300(uint64_t a1)
{
  v2 = sub_1D966D64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppLibrary.ExceptionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23268, "v~");
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D966D64C();
  sub_1D966F118();
  v10[15] = 0;
  sub_1D966EF88();
  if (!v2)
  {
    v10[14] = *(v3 + 8);
    v10[13] = 1;
    sub_1D966D6A0();
    sub_1D966EF68();
    v10[12] = 2;
    sub_1D966EF38();
    v10[11] = 3;
    sub_1D966EEE8();
    v10[10] = 4;
    sub_1D966EEE8();
    v10[9] = 5;
    sub_1D966EF58();
    type metadata accessor for AppLibrary.ExceptionRequest(0);
    v10[8] = 6;
    sub_1D966E5F8();
    sub_1D966DD00(&qword_1ECB23280, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D966EF68();
    v10[7] = 7;
    type metadata accessor for ExceptionRequestMetadata(0);
    sub_1D966DD00(&qword_1ECB229D8, type metadata accessor for ExceptionRequestMetadata, &protocol conformance descriptor for ExceptionRequestMetadata);
    sub_1D966EF68();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D966D64C()
{
  result = qword_1ECB23270;
  if (!qword_1ECB23270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23270);
  }

  return result;
}

unint64_t sub_1D966D6A0()
{
  result = qword_1ECB23278;
  if (!qword_1ECB23278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23278);
  }

  return result;
}

uint64_t AppLibrary.ExceptionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for ExceptionRequestMetadata(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D966E5F8();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB23288, &qword_1D967FFD8);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AppLibrary.ExceptionRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D966D64C();
  v13 = v37;
  sub_1D966F0F8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v14 = v6;
  v37 = v9;
  v15 = v34;
  v16 = v35;
  v47 = 0;
  v17 = v36;
  *v11 = sub_1D966EEA8();
  v45 = 1;
  sub_1D966DCAC();
  sub_1D966EE88();
  v11[8] = v46;
  v44 = 2;
  *(v11 + 2) = sub_1D966EE58();
  *(v11 + 3) = v19;
  v43 = 3;
  *(v11 + 4) = sub_1D966EE08();
  *(v11 + 5) = v20;
  v42 = 4;
  *(v11 + 6) = sub_1D966EE08();
  *(v11 + 7) = v21;
  v41 = 5;
  v22 = sub_1D966EE78();
  v30 = 0;
  v29 = 0;
  *(v11 + 8) = v22;
  v40 = 6;
  sub_1D966DD00(&qword_1ECB23298, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v23 = v30;
  sub_1D966EE88();
  v30 = v23;
  if (v23)
  {
    (*(v15 + 8))(v8, v17);
    v24 = v29;
    __swift_destroy_boxed_opaque_existential_1(v38);

    if (!v24)
    {
    }
  }

  else
  {
    v25 = v37;
    (*(v16 + 32))(&v11[*(v37 + 40)], v14, v4);
    v39 = 7;
    sub_1D966DD00(&qword_1ECB229E0, type metadata accessor for ExceptionRequestMetadata, &protocol conformance descriptor for ExceptionRequestMetadata);
    v26 = v33;
    v27 = v30;
    sub_1D966EE88();
    (*(v15 + 8))(v8, v17);
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_1(v38);

      return (*(v16 + 8))(&v11[*(v25 + 40)], v4);
    }

    else
    {
      sub_1D966D054(v26, &v11[*(v25 + 44)]);
      sub_1D966DD48(v11, v31, type metadata accessor for AppLibrary.ExceptionRequest);
      __swift_destroy_boxed_opaque_existential_1(v38);
      return sub_1D966DDB0(v11);
    }
  }
}

unint64_t sub_1D966DCAC()
{
  result = qword_1ECB23290;
  if (!qword_1ECB23290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB23290);
  }

  return result;
}

uint64_t sub_1D966DD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D966DD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D966DDB0(uint64_t a1)
{
  v2 = type metadata accessor for AppLibrary.ExceptionRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D966DE10()
{
  result = qword_1ECB232A0;
  if (!qword_1ECB232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232A0);
  }

  return result;
}

void sub_1D966DEBC(uint64_t a1)
{
  sub_1D96127EC();
  if (v1 <= 0x3F)
  {
    sub_1D966E5F8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ExceptionRequestMetadata(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D966DFB4()
{
  result = qword_1ECB232B8;
  if (!qword_1ECB232B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232B8);
  }

  return result;
}

unint64_t sub_1D966E00C()
{
  result = qword_1ECB232C0;
  if (!qword_1ECB232C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232C0);
  }

  return result;
}

unint64_t sub_1D966E064()
{
  result = qword_1ECB232C8;
  if (!qword_1ECB232C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232C8);
  }

  return result;
}

uint64_t sub_1D966E0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D96821B0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D96821D0 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D966EFB8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D966E360()
{
  result = qword_1ECB232D0;
  if (!qword_1ECB232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB232D0);
  }

  return result;
}