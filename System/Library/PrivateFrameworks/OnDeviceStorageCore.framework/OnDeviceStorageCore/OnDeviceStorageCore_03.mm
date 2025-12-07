uint64_t sub_1DB167F64(uint64_t a1)
{
  v1 = *(a1 + 1);
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

uint64_t sub_1DB167F80(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URIQueryParameter.FileMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for URIQueryParameter.FileMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB168168()
{
  result = qword_1ECC27A00;
  if (!qword_1ECC27A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A00);
  }

  return result;
}

unint64_t sub_1DB1681C0()
{
  result = qword_1ECC27A08;
  if (!qword_1ECC27A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A08);
  }

  return result;
}

unint64_t sub_1DB168218()
{
  result = qword_1ECC27A10;
  if (!qword_1ECC27A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A10);
  }

  return result;
}

unint64_t sub_1DB168270()
{
  result = qword_1ECC27A18;
  if (!qword_1ECC27A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A18);
  }

  return result;
}

unint64_t sub_1DB1682C8()
{
  result = qword_1ECC27A20;
  if (!qword_1ECC27A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A20);
  }

  return result;
}

unint64_t sub_1DB168320()
{
  result = qword_1EE13F640;
  if (!qword_1EE13F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F640);
  }

  return result;
}

unint64_t sub_1DB168378()
{
  result = qword_1EE13F648;
  if (!qword_1EE13F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F648);
  }

  return result;
}

unint64_t sub_1DB1683D0()
{
  result = qword_1EE13F600;
  if (!qword_1EE13F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F600);
  }

  return result;
}

unint64_t sub_1DB168428()
{
  result = qword_1EE13F608;
  if (!qword_1EE13F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F608);
  }

  return result;
}

unint64_t sub_1DB168480()
{
  result = qword_1EE13F618;
  if (!qword_1EE13F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F618);
  }

  return result;
}

unint64_t sub_1DB1684D8()
{
  result = qword_1EE13F620;
  if (!qword_1EE13F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F620);
  }

  return result;
}

unint64_t sub_1DB168530()
{
  result = qword_1EE13F5F0;
  if (!qword_1EE13F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5F0);
  }

  return result;
}

unint64_t sub_1DB168588()
{
  result = qword_1EE13F5F8;
  if (!qword_1EE13F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F5F8);
  }

  return result;
}

unint64_t sub_1DB1685E0()
{
  result = qword_1EE13F628;
  if (!qword_1EE13F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F628);
  }

  return result;
}

unint64_t sub_1DB168638()
{
  result = qword_1EE13F630;
  if (!qword_1EE13F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F630);
  }

  return result;
}

uint64_t sub_1DB16868C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x755172616C616373 && a2 == 0xEB00000000797265;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546C617574726976 && a2 == 0xEC000000656C6261)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

unint64_t sub_1DB1687F4()
{
  result = qword_1ECC27A28;
  if (!qword_1ECC27A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A28);
  }

  return result;
}

unint64_t sub_1DB168848()
{
  result = qword_1ECC27A30;
  if (!qword_1ECC27A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27A30);
  }

  return result;
}

unint64_t sub_1DB16889C()
{
  result = qword_1EE13F740;
  if (!qword_1EE13F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F740);
  }

  return result;
}

uint64_t sub_1DB1688F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

ValueMetadata *sub_1DB168940()
{
  v1 = *v0;
  if (v1 > 4)
  {
    if (*v0 <= 6u)
    {
      if (v1 != 5)
      {
        return MEMORY[0x1E69E6370];
      }

      v2 = sub_1DB2BA944();
      v4 = &unk_1ECC27958;
      v5 = MEMORY[0x1E69695A8];
      v6 = MEMORY[0x1E69695D0];
      goto LABEL_19;
    }

    v3 = MEMORY[0x1E69E7360];
    if (v1 != 8)
    {
      v3 = MEMORY[0x1E69E6158];
    }

    if (v1 == 7)
    {
      return MEMORY[0x1E69E63B0];
    }

    else
    {
      return v3;
    }
  }

  else
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = sub_1DB2BA904();
        v4 = &unk_1EE13F288;
        v5 = MEMORY[0x1E6969530];
        v6 = MEMORY[0x1E6969558];
      }

      else
      {
        if (v1 == 3)
        {
          return MEMORY[0x1E69E6530];
        }

        v2 = sub_1DB2BA824();
        v4 = &unk_1ECC27960;
        v5 = MEMORY[0x1E6968FB0];
        v6 = MEMORY[0x1E6968FD0];
      }

LABEL_19:
      sub_1DB165C44(v4, v5, v6);
      return v2;
    }

    if (*v0)
    {
      v2 = MEMORY[0x1E6969080];
      sub_1DB165C8C();
    }

    else
    {
      v2 = &type metadata for Blob;
      sub_1DB138BFC();
    }
  }

  return v2;
}

uint64_t sub_1DB168AE8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = AssociatedTypeWitness == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return (*(v3 + 64))(AssociatedTypeWitness, v3);
  }

  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v5 = sub_1DB2BADF4();
  v7 = v6;
  sub_1DB135B68();
  swift_allocError();
  *v8 = 0xD000000000000010;
  *(v8 + 8) = 0x80000001DB2D43F0;
  *(v8 + 16) = xmmword_1DB2C2C90;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  *(v8 + 48) = 1;
  return swift_willThrow();
}

uint64_t sub_1DB168C28(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656C62756F64;
    v6 = 0x3436746E69;
    if (a1 != 8)
    {
      v6 = 0x676E69727473;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1684632949;
    if (a1 != 5)
    {
      v7 = 1819242338;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1651469410;
    v2 = 1702125924;
    v3 = 7630441;
    if (a1 != 3)
    {
      v3 = 7107189;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1635017060;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB168D20(uint64_t a1)
{
  v2 = sub_1DB169F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168D5C(uint64_t a1)
{
  v2 = sub_1DB169F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168D98(uint64_t a1)
{
  v2 = sub_1DB169D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168DD4(uint64_t a1)
{
  v2 = sub_1DB169D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168E18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB16C194(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB168E4C(uint64_t a1)
{
  v2 = sub_1DB169BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168E88(uint64_t a1)
{
  v2 = sub_1DB169BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168EC4(uint64_t a1)
{
  v2 = sub_1DB169EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168F00(uint64_t a1)
{
  v2 = sub_1DB169EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168F3C(uint64_t a1)
{
  v2 = sub_1DB169E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168F78(uint64_t a1)
{
  v2 = sub_1DB169E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB168FB4(uint64_t a1)
{
  v2 = sub_1DB169CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB168FF0(uint64_t a1)
{
  v2 = sub_1DB169CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16902C(uint64_t a1)
{
  v2 = sub_1DB169C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB169068(uint64_t a1)
{
  v2 = sub_1DB169C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB1690A4(uint64_t a1)
{
  v2 = sub_1DB169E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1690E0(uint64_t a1)
{
  v2 = sub_1DB169E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16911C(uint64_t a1)
{
  v2 = sub_1DB169C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB169158(uint64_t a1)
{
  v2 = sub_1DB169C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB169194(uint64_t a1)
{
  v2 = sub_1DB169DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB1691D0(uint64_t a1)
{
  v2 = sub_1DB169DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB16920C(uint64_t a1)
{
  v2 = sub_1DB169D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB169248(uint64_t a1)
{
  v2 = sub_1DB169D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ValueCodableType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B78, &qword_1DB2C2CB0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B80, &qword_1DB2C2CB8);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B88, &qword_1DB2C2CC0);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B90, &qword_1DB2C2CC8);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27B98, &qword_1DB2C2CD0);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BA0, &qword_1DB2C2CD8);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BA8, &qword_1DB2C2CE0);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v37 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BB0, &qword_1DB2C2CE8);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v37 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BB8, &qword_1DB2C2CF0);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BC0, &qword_1DB2C2CF8);
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27BC8, &qword_1DB2C2D00);
  v22 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v24 = &v37 - v23;
  v25 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB169BF0();
  v64 = v24;
  sub_1DB2BBA94();
  v26 = (v22 + 8);
  if (v25 > 4)
  {
    if (v25 <= 6)
    {
      if (v25 == 5)
      {
        v71 = 5;
        sub_1DB169D94();
        v30 = v49;
        v28 = v64;
        v29 = v65;
        sub_1DB2BB804();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v72 = 6;
        sub_1DB169D40();
        v30 = v52;
        v28 = v64;
        v29 = v65;
        sub_1DB2BB804();
        v32 = v53;
        v31 = v54;
      }
    }

    else if (v25 == 7)
    {
      v73 = 7;
      sub_1DB169CEC();
      v30 = v55;
      v28 = v64;
      v29 = v65;
      sub_1DB2BB804();
      v32 = v56;
      v31 = v57;
    }

    else if (v25 == 8)
    {
      v74 = 8;
      sub_1DB169C98();
      v30 = v58;
      v28 = v64;
      v29 = v65;
      sub_1DB2BB804();
      v32 = v59;
      v31 = v60;
    }

    else
    {
      v75 = 9;
      sub_1DB169C44();
      v30 = v61;
      v28 = v64;
      v29 = v65;
      sub_1DB2BB804();
      v32 = v62;
      v31 = v63;
    }

    goto LABEL_20;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v68 = 2;
      sub_1DB169E90();
      v33 = v40;
      v28 = v64;
      v29 = v65;
      sub_1DB2BB804();
      (*(v41 + 8))(v33, v42);
      return (*v26)(v28, v29);
    }

    if (v25 == 3)
    {
      v69 = 3;
      sub_1DB169E3C();
      v27 = v43;
      v28 = v64;
      v29 = v65;
      sub_1DB2BB804();
      (*(v44 + 8))(v27, v45);
      return (*v26)(v28, v29);
    }

    v70 = 4;
    sub_1DB169DE8();
    v30 = v46;
    v28 = v64;
    v29 = v65;
    sub_1DB2BB804();
    v32 = v47;
    v31 = v48;
LABEL_20:
    (*(v32 + 8))(v30, v31);
    return (*v26)(v28, v29);
  }

  if (v25)
  {
    v67[0] = 1;
    sub_1DB169EE4();
    v34 = v64;
    v35 = v65;
    sub_1DB2BB804();
    (*(v38 + 8))(v18, v39);
    return (*v26)(v34, v35);
  }

  v66 = 0;
  sub_1DB169F38();
  v28 = v64;
  v29 = v65;
  sub_1DB2BB804();
  (*(v37 + 8))(v21, v19);
  return (*v26)(v28, v29);
}

unint64_t sub_1DB169BF0()
{
  result = qword_1EE13FA68;
  if (!qword_1EE13FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA68);
  }

  return result;
}

unint64_t sub_1DB169C44()
{
  result = qword_1EE13F9B0;
  if (!qword_1EE13F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9B0);
  }

  return result;
}

unint64_t sub_1DB169C98()
{
  result = qword_1ECC27BD0;
  if (!qword_1ECC27BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BD0);
  }

  return result;
}

unint64_t sub_1DB169CEC()
{
  result = qword_1ECC27BD8;
  if (!qword_1ECC27BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BD8);
  }

  return result;
}

unint64_t sub_1DB169D40()
{
  result = qword_1ECC27BE0;
  if (!qword_1ECC27BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BE0);
  }

  return result;
}

unint64_t sub_1DB169D94()
{
  result = qword_1ECC27BE8;
  if (!qword_1ECC27BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BE8);
  }

  return result;
}

unint64_t sub_1DB169DE8()
{
  result = qword_1ECC27BF0;
  if (!qword_1ECC27BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BF0);
  }

  return result;
}

unint64_t sub_1DB169E3C()
{
  result = qword_1ECC27BF8;
  if (!qword_1ECC27BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27BF8);
  }

  return result;
}

unint64_t sub_1DB169E90()
{
  result = qword_1ECC27C00;
  if (!qword_1ECC27C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C00);
  }

  return result;
}

unint64_t sub_1DB169EE4()
{
  result = qword_1ECC27C08;
  if (!qword_1ECC27C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C08);
  }

  return result;
}

unint64_t sub_1DB169F38()
{
  result = qword_1ECC27C10;
  if (!qword_1ECC27C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C10);
  }

  return result;
}

uint64_t ValueCodableType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t ValueCodableType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C18, &qword_1DB2C2D08);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C20, &qword_1DB2C2D10);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C28, &qword_1DB2C2D18);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v51 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C30, &qword_1DB2C2D20);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v80 = &v51 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C38, &qword_1DB2C2D28);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v79 = &v51 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C40, &qword_1DB2C2D30);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v78 = &v51 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C48, &qword_1DB2C2D38);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v73 = &v51 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C50, &qword_1DB2C2D40);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v77 = &v51 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C58, &qword_1DB2C2D48);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C60, &qword_1DB2C2D50);
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C68, &unk_1DB2C2D58);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1DB169BF0();
  v24 = v83;
  sub_1DB2BBA84();
  if (!v24)
  {
    v52 = v18;
    v51 = v16;
    v53 = v15;
    v25 = v77;
    v26 = v78;
    v27 = v79;
    v28 = v80;
    v83 = v20;
    v29 = v81;
    v30 = sub_1DB2BB7D4();
    v31 = (2 * *(v30 + 16)) | 1;
    v84 = v30;
    v85 = v30 + 32;
    v86 = 0;
    v87 = v31;
    v32 = sub_1DB14B1EC();
    if (v32 != 10 && v86 == v87 >> 1)
    {
      v88 = v32;
      if (v32 <= 4u)
      {
        if (v32 <= 1u)
        {
          if (v32)
          {
            v89 = 1;
            sub_1DB169EE4();
            v49 = v53;
            sub_1DB2BB704();
            v50 = v83;
            (*(v55 + 8))(v49, v56);
            (*(v50 + 8))(v22, v19);
          }

          else
          {
            v89 = 0;
            sub_1DB169F38();
            v45 = v52;
            sub_1DB2BB704();
            v46 = v83;
            (*(v54 + 8))(v45, v51);
            (*(v46 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v38 = v82;
          v40 = v29;
        }

        else
        {
          if (v32 == 2)
          {
            v89 = 2;
            sub_1DB169E90();
            sub_1DB2BB704();
            (*(v57 + 8))(v25, v58);
            (*(v83 + 8))(v22, v19);
          }

          else
          {
            if (v32 == 3)
            {
              v89 = 3;
              sub_1DB169E3C();
              v33 = v73;
              sub_1DB2BB704();
              v34 = v83;
              (*(v59 + 8))(v33, v60);
            }

            else
            {
              v89 = 4;
              sub_1DB169DE8();
              sub_1DB2BB704();
              v34 = v83;
              (*(v62 + 8))(v26, v61);
            }

            (*(v34 + 8))(v22, v19);
          }

          swift_unknownObjectRelease();
          v40 = v81;
          v38 = v82;
        }

        goto LABEL_33;
      }

      if (v32 <= 6u)
      {
        v40 = v29;
        v47 = v83;
        if (v32 == 5)
        {
          v89 = 5;
          sub_1DB169D94();
          sub_1DB2BB704();
          (*(v63 + 8))(v27, v64);
        }

        else
        {
          v89 = 6;
          sub_1DB169D40();
          sub_1DB2BB704();
          (*(v65 + 8))(v28, v66);
        }

        (*(v47 + 8))(v22, v19);
        goto LABEL_32;
      }

      v40 = v29;
      v41 = v83;
      if (v32 == 7)
      {
        v89 = 7;
        sub_1DB169CEC();
        v42 = v74;
        sub_1DB2BB704();
        v44 = v67;
        v43 = v68;
      }

      else
      {
        if (v32 != 8)
        {
          v89 = 9;
          sub_1DB169C44();
          v48 = v76;
          sub_1DB2BB704();
          (*(v71 + 8))(v48, v72);
          goto LABEL_29;
        }

        v89 = 8;
        sub_1DB169C98();
        v42 = v75;
        sub_1DB2BB704();
        v44 = v69;
        v43 = v70;
      }

      (*(v44 + 8))(v42, v43);
LABEL_29:
      (*(v41 + 8))(v22, v19);
LABEL_32:
      swift_unknownObjectRelease();
      v38 = v82;
LABEL_33:
      *v40 = v88;
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    v35 = sub_1DB2BB564();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
    *v37 = &type metadata for ValueCodableType;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v83 + 8))(v22, v19);
    swift_unknownObjectRelease();
  }

  v38 = v82;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

__n128 AnyValue.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t AnyValue.init(binding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB1446A4(a1, v8, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C78, &qword_1DB2C2D80);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_1DB1445E0(a1, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1355D0(&v10, v13);
        return sub_1DB1355D0(v13, a2);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_1DB1445E0(v8, &qword_1ECC26E28, &unk_1DB2C2D70);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1DB1445E0(&v10, &qword_1ECC27C70, &qword_1DB2C2D68);
  v5 = sub_1DB2BB564();
  swift_allocError();
  v7 = v6;
  sub_1DB2BB554();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6B00], v5);
  swift_willThrow();
  return sub_1DB1445E0(a1, &qword_1ECC26E28, &unk_1DB2C2D70);
}

uint64_t sub_1DB16AF78(uint64_t a1)
{
  v2 = sub_1DB16B330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB16AFB4(uint64_t a1)
{
  v2 = sub_1DB16B330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C80, &qword_1DB2C2D88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB16B330();
  sub_1DB2BBA84();
  if (!v2)
  {
    LOBYTE(v15[0]) = 1;
    sub_1DB164710();
    sub_1DB2BB764();
    if (LOBYTE(v18[0]) == 10)
    {
      (*(v6 + 8))(v8, v5);
      v19 = 0u;
      v20 = 0u;
    }

    else
    {
      v17 = v18[0];
      v10 = sub_1DB168940();
      v13[2] = v11;
      v22 = v10;
      MEMORY[0x1EEE9AC00](v10);
      v14 = 0;
      sub_1DB2BB724();
      v13[1] = v13;
      sub_1DB2BB1C4();
      (*(v6 + 8))(v8, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C78, &qword_1DB2C2D80);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(v15, v18);
        sub_1DB1355D0(v18, &v19);
        goto LABEL_5;
      }

      v16 = 0;
      memset(v15, 0, sizeof(v15));
      sub_1DB1445E0(v15, &qword_1ECC27C70, &qword_1DB2C2D68);
      v19 = 0u;
      v20 = 0u;
    }

    v21 = 0;
LABEL_5:
    v9 = v20;
    *a2 = v19;
    *(a2 + 16) = v9;
    *(a2 + 32) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DB16B330()
{
  result = qword_1ECC27C88;
  if (!qword_1ECC27C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C88);
  }

  return result;
}

uint64_t AnyValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27C90, &qword_1DB2C2D90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB16B330();
  sub_1DB2BBA94();
  sub_1DB1446A4(v3, &v12, &qword_1ECC27C70, &qword_1DB2C2D68);
  if (v13)
  {
    sub_1DB1355D0(&v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    swift_getDynamicType();
    (*(v16 + 64))(&v12);
    if (!v2)
    {
      v11 = v12;
      v10[14] = 1;
      sub_1DB16456C();
      sub_1DB2BB8A4();
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v11 = 0;
      sub_1DB2BB814();
      sub_1DB2BACE4();
      __swift_destroy_boxed_opaque_existential_1(&v12);
    }

    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return sub_1DB1445E0(&v12, &qword_1ECC27C70, &qword_1DB2C2D68);
  }
}

uint64_t static Value.valueCodableType.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v1 = sub_1DB2BADF4();
  v3 = v2;
  sub_1DB135B68();
  swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x80000001DB2D43F0;
  *(v4 + 16) = xmmword_1DB2C2CA0;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = 1;
  return swift_willThrow();
}

unint64_t sub_1DB16B734()
{
  result = qword_1ECC27C98;
  if (!qword_1ECC27C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27C98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore5Value_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DB16B884()
{
  result = qword_1ECC27CA0;
  if (!qword_1ECC27CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CA0);
  }

  return result;
}

unint64_t sub_1DB16B8DC()
{
  result = qword_1ECC27CA8;
  if (!qword_1ECC27CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CA8);
  }

  return result;
}

unint64_t sub_1DB16B934()
{
  result = qword_1ECC27CB0;
  if (!qword_1ECC27CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CB0);
  }

  return result;
}

unint64_t sub_1DB16B98C()
{
  result = qword_1ECC27CB8;
  if (!qword_1ECC27CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CB8);
  }

  return result;
}

unint64_t sub_1DB16B9E4()
{
  result = qword_1EE13FA28;
  if (!qword_1EE13FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA28);
  }

  return result;
}

unint64_t sub_1DB16BA3C()
{
  result = qword_1EE13FA30;
  if (!qword_1EE13FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA30);
  }

  return result;
}

unint64_t sub_1DB16BA94()
{
  result = qword_1EE13FA08;
  if (!qword_1EE13FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA08);
  }

  return result;
}

unint64_t sub_1DB16BAEC()
{
  result = qword_1EE13FA10;
  if (!qword_1EE13FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA10);
  }

  return result;
}

unint64_t sub_1DB16BB44()
{
  result = qword_1EE13F9F8;
  if (!qword_1EE13F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9F8);
  }

  return result;
}

unint64_t sub_1DB16BB9C()
{
  result = qword_1EE13FA00;
  if (!qword_1EE13FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA00);
  }

  return result;
}

unint64_t sub_1DB16BBF4()
{
  result = qword_1EE13FA48;
  if (!qword_1EE13FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA48);
  }

  return result;
}

unint64_t sub_1DB16BC4C()
{
  result = qword_1EE13FA50;
  if (!qword_1EE13FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA50);
  }

  return result;
}

unint64_t sub_1DB16BCA4()
{
  result = qword_1EE13FA38;
  if (!qword_1EE13FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA38);
  }

  return result;
}

unint64_t sub_1DB16BCFC()
{
  result = qword_1EE13FA40;
  if (!qword_1EE13FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA40);
  }

  return result;
}

unint64_t sub_1DB16BD54()
{
  result = qword_1EE13F9E8;
  if (!qword_1EE13F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9E8);
  }

  return result;
}

unint64_t sub_1DB16BDAC()
{
  result = qword_1EE13F9F0;
  if (!qword_1EE13F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9F0);
  }

  return result;
}

unint64_t sub_1DB16BE04()
{
  result = qword_1EE13FA18;
  if (!qword_1EE13FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA18);
  }

  return result;
}

unint64_t sub_1DB16BE5C()
{
  result = qword_1EE13FA20;
  if (!qword_1EE13FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA20);
  }

  return result;
}

unint64_t sub_1DB16BEB4()
{
  result = qword_1EE13F9C8;
  if (!qword_1EE13F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9C8);
  }

  return result;
}

unint64_t sub_1DB16BF0C()
{
  result = qword_1EE13F9D0;
  if (!qword_1EE13F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9D0);
  }

  return result;
}

unint64_t sub_1DB16BF64()
{
  result = qword_1EE13F9D8;
  if (!qword_1EE13F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9D8);
  }

  return result;
}

unint64_t sub_1DB16BFBC()
{
  result = qword_1EE13F9E0;
  if (!qword_1EE13F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9E0);
  }

  return result;
}

unint64_t sub_1DB16C014()
{
  result = qword_1EE13F9C0;
  if (!qword_1EE13F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9C0);
  }

  return result;
}

unint64_t sub_1DB16C06C()
{
  result = qword_1EE13F9B8;
  if (!qword_1EE13F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9B8);
  }

  return result;
}

unint64_t sub_1DB16C0C4()
{
  result = qword_1EE13FA58;
  if (!qword_1EE13FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA58);
  }

  return result;
}

unint64_t sub_1DB16C11C()
{
  result = qword_1EE13FA60;
  if (!qword_1EE13FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FA60);
  }

  return result;
}

uint64_t sub_1DB16C194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1651469410 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t RowValuesIterator.init(array:batchSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = 0;
  a3[2] = a2;
  a3[3] = 0;
  return result;
}

uint64_t RowValuesIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  result = sub_1DB2BB124();
  if (v4 >= result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v60 = v2[2];
  if (v60 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC0, &unk_1DB2C3850);
    v59 = v4;
    v58 = sub_1DB2BB6E4();
    if (v58)
    {
      result = sub_1DB2BB124();
      v8 = v4;
      v57 = result;
      if (v4 < result)
      {
        v52 = v6;
        v53 = v2;
        v54 = v5;
        v55 = a2;
        v9 = 0;
        v56 = v58 + 32;
        v8 = v4;
        while (1)
        {
          if (v9 >= v60)
          {
            goto LABEL_93;
          }

          if (v4 < 0)
          {
            goto LABEL_104;
          }

          if (v4 >= *(v58 + 16))
          {
            goto LABEL_105;
          }

          v61 = v9;
          v62 = v8;
          v8 = *(v56 + 8 * v4);
          v10 = 1 << *(v8 + 32);
          if (v10 < 64)
          {
            v11 = ~(-1 << v10);
          }

          else
          {
            v11 = -1;
          }

          v12 = v11 & *(v8 + 64);
          v13 = (v10 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v14 = 0;
          v15 = 2;
          while (1)
          {
            if (!v12)
            {
              while (1)
              {
                v16 = v14 + 1;
                if (__OFADD__(v14, 1))
                {
                  break;
                }

                if (v16 >= v13)
                {
                  goto LABEL_47;
                }

                v12 = *(v8 + 64 + 8 * v16);
                ++v14;
                if (v12)
                {
                  v14 = v16;
                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_93;
            }

LABEL_20:
            v17 = __clz(__rbit64(v12)) | (v14 << 6);
            v4 = *(*(v8 + 48) + 16 * v17 + 8);
            sub_1DB1446A4(*(v8 + 56) + 32 * v17, &v69, &qword_1ECC26F30, &unk_1DB2BFA90);
            v63 = v70;
            v64 = v69;

            if (!v4)
            {
              break;
            }

            v70 = v63;
            v69 = v64;
            v18 = v15 + 2 * (v15 > 2);
            if (__OFADD__(v15, 2 * (v15 > 2)))
            {
              goto LABEL_99;
            }

            sub_1DB1446A4(&v69, &v67, &qword_1ECC26F30, &unk_1DB2BFA90);
            if (v68)
            {
              if (swift_dynamicCast())
              {
                v4 = *(&v65 + 1);
                v19 = v65;
                if ((*(&v65 + 1) & 0x1000000000000000) != 0)
                {
                  v31 = sub_1DB2BAF34();

                  result = sub_1DB1445E0(&v69, &qword_1ECC26F30, &unk_1DB2BFA90);
                  v21 = v31 + 2;
                  if (__OFADD__(v31, 2))
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  sub_1DB1445E0(&v69, &qword_1ECC26F30, &unk_1DB2BFA90);

                  if ((v4 & 0x2000000000000000) != 0)
                  {
                    v29 = HIBYTE(v4) & 0xF;
                    v21 = v29 + 2;
                    if (__OFADD__(v29, 2))
                    {
                      goto LABEL_102;
                    }
                  }

                  else
                  {
                    v20 = v19 & 0xFFFFFFFFFFFFLL;
                    v21 = v20 + 2;
                    if (__OFADD__(v20, 2))
                    {
                      goto LABEL_102;
                    }
                  }
                }

                v15 = v18 + v21;
                if (__OFADD__(v18, v21))
                {
                  goto LABEL_103;
                }

                goto LABEL_14;
              }
            }

            else
            {
              sub_1DB1445E0(&v67, &qword_1ECC26F30, &unk_1DB2BFA90);
            }

            sub_1DB1446A4(&v69, &v65, &qword_1ECC26F30, &unk_1DB2BFA90);
            if (v66)
            {
              sub_1DB144640(&v65, &v67);
              v22 = __swift_project_boxed_opaque_existential_1(&v67, v68);
              MEMORY[0x1EEE9AC00](v22);
              (*(v24 + 16))(&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
              v25 = sub_1DB2BADF4();
              v4 = v26;
              if ((v26 & 0x1000000000000000) != 0)
              {
                v30 = sub_1DB2BAF34();

                result = sub_1DB1445E0(&v69, &qword_1ECC26F30, &unk_1DB2BFA90);
                v28 = __OFADD__(v18, v30);
                v15 = v18 + v30;
                if (v28)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                sub_1DB1445E0(&v69, &qword_1ECC26F30, &unk_1DB2BFA90);

                if ((v4 & 0x2000000000000000) != 0)
                {
                  v27 = HIBYTE(v4) & 0xF;
                }

                else
                {
                  v27 = v25 & 0xFFFFFFFFFFFFLL;
                }

                v28 = __OFADD__(v18, v27);
                v15 = v18 + v27;
                if (v28)
                {
                  goto LABEL_101;
                }
              }

              __swift_destroy_boxed_opaque_existential_1(&v67);
            }

            else
            {
              sub_1DB1445E0(&v69, &qword_1ECC26F30, &unk_1DB2BFA90);
              result = sub_1DB1445E0(&v65, &qword_1ECC26F30, &unk_1DB2BFA90);
              v15 = v18 + 4;
              if (__OFADD__(v18, 4))
              {
                goto LABEL_107;
              }
            }

LABEL_14:
            v12 &= v12 - 1;
          }

LABEL_47:

          v9 = v61 + v15;
          if (__OFADD__(v61, v15))
          {
            goto LABEL_106;
          }

          v8 = v62 + 1;
          v4 = v59;
          if (v62 + 1 == v57)
          {
            v8 = v57;
            a2 = v55;
            v2 = v53;
            break;
          }
        }
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DB0, &qword_1DB2C3B10);
      *&v64 = sub_1DB2BB6E4();
      if (v64)
      {
        result = sub_1DB2BB124();
        v8 = v4;
        v61 = result;
        if (v4 < result)
        {
          v52 = v6;
          v53 = v2;
          v54 = v5;
          v55 = a2;
          v32 = 0;
          v58 = v64 + 32;
          v8 = v4;
          while (1)
          {
            if (v32 >= v60)
            {
LABEL_93:

              a2 = v55;
              v2 = v53;
              goto LABEL_94;
            }

            if (v4 < 0)
            {
              break;
            }

            if (v4 >= *(v64 + 16))
            {
              goto LABEL_109;
            }

            v62 = v8;
            result = *(v58 + 8 * v4);
            v33 = *(result + 16);
            if (v33)
            {
              v34 = result + 32;
              *&v63 = result;

              v35 = 2;
              do
              {
                sub_1DB164AE0(v34, &v69);
                sub_1DB164980(v71, &v67);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
                if (swift_dynamicCast())
                {
                  if ((*(&v65 + 1) & 0x1000000000000000) != 0)
                  {
                    v43 = sub_1DB2BAF34();

                    result = sub_1DB164B3C(&v69);
                    v28 = __OFADD__(v43, 2);
                    v37 = v43 + 2;
                    if (v28)
                    {
                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    sub_1DB164B3C(&v69);

                    if ((*(&v65 + 1) & 0x2000000000000000) != 0)
                    {
                      v36 = HIBYTE(*(&v65 + 1)) & 0xFLL;
                    }

                    else
                    {
                      v36 = v65 & 0xFFFFFFFFFFFFLL;
                    }

                    v28 = __OFADD__(v36, 2);
                    v37 = v36 + 2;
                    if (v28)
                    {
                      goto LABEL_100;
                    }
                  }
                }

                else
                {
                  sub_1DB164980(v71, &v67);
                  v38 = sub_1DB2BADF4();
                  v40 = v39;
                  if ((v39 & 0x1000000000000000) != 0)
                  {
                    v37 = sub_1DB2BAF34();

                    result = sub_1DB164B3C(&v69);
                  }

                  else
                  {
                    sub_1DB164B3C(&v69);

                    if ((v40 & 0x2000000000000000) != 0)
                    {
                      v37 = HIBYTE(v40) & 0xF;
                    }

                    else
                    {
                      v37 = v38 & 0xFFFFFFFFFFFFLL;
                    }
                  }
                }

                v41 = v35 + v37;
                if (__OFADD__(v35, v37))
                {
                  __break(1u);
LABEL_98:
                  __break(1u);
LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  __break(1u);
LABEL_102:
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
                  goto LABEL_108;
                }

                v42 = v35 > 2;
                v35 = v41 + 2 * (v35 > 2);
                if (__OFADD__(v41, 2 * v42))
                {
                  goto LABEL_98;
                }

                v34 += 80;
                --v33;
              }

              while (v33);

              v28 = __OFADD__(v32, v35);
              v32 += v35;
              if (v28)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v28 = __OFADD__(v32, 2);
              v32 += 2;
              if (v28)
              {
                goto LABEL_110;
              }
            }

            v8 = v62 + 1;
            v4 = v59;
            if (v62 + 1 == v61)
            {
              v8 = v61;
              a2 = v55;
              v2 = v53;
              goto LABEL_89;
            }
          }

LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_89:
      }

      else
      {
        result = sub_1DB2BB124();
        v8 = result;
      }
    }

LABEL_94:
    if (v8 >= v4)
    {
      *&v69 = sub_1DB2BB1A4();
      *(&v69 + 1) = v44;
      *&v70 = v45;
      *(&v70 + 1) = v46;
      sub_1DB2BB414();
      swift_getWitnessTable();
      result = sub_1DB2BB194();
      v2[1] = v8;
      v47 = v2[3];
      v28 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (!v28)
      {
        v49 = result;
        v2[3] = v48;
        v50 = v48 - 1;
        result = sub_1DB2BB124();
        *a2 = v49;
        *(a2 + 8) = v50;
        *(a2 + 16) = v8 == result;
        return result;
      }

      goto LABEL_112;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    return result;
  }

  v2[1] = sub_1DB2BB124();
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t QueryBatch.init(query:index:isLast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for QueryBatch(0, a4, a5, v11);
  *(a6 + *(result + 36)) = a2;
  *(a6 + *(result + 40)) = a3;
  return result;
}

void *Insert.batchQueries(size:)(uint64_t a1)
{
  sub_1DB1446A4(v1, v26, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v27)
  {
    v3 = *v26;
    v4 = *&v26[8];
    v5 = *&v26[24];
    v6 = *&v26[40];
    v7 = *&v26[56];
    v8 = *&v26[72];
    v9 = *&v26[88];
    v11 = *&v26[104];
    v10 = *&v26[120];
  }

  else
  {
    sub_1DB1445E0(v26, &qword_1ECC27CC8, &unk_1DB2C3860);
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v11 = 0uLL;
    v10 = 0uLL;
  }

  *v28 = v3;
  *&v28[8] = v4;
  *&v28[24] = v5;
  *&v28[40] = v6;
  *&v28[56] = v7;
  *&v28[72] = v8;
  *&v28[88] = v9;
  *&v28[104] = v11;
  *&v28[120] = v10;
  if (v4)
  {
    v34 = *&v28[80];
    v35 = *&v28[96];
    v36 = *&v28[112];
    v30 = *&v28[16];
    v31 = *&v28[32];
    v32 = *&v28[48];
    v33 = *&v28[64];
    v37 = *&v28[128];
    v29 = *v28;
    sub_1DB16D26C(&v29, v26);
    v12 = swift_allocObject();
    v13 = *&v26[112];
    *(v12 + 112) = *&v26[96];
    *(v12 + 128) = v13;
    v14 = *&v26[128];
    v15 = *&v26[48];
    *(v12 + 48) = *&v26[32];
    *(v12 + 64) = v15;
    v16 = *&v26[80];
    *(v12 + 80) = *&v26[64];
    *(v12 + 96) = v16;
    v17 = *&v26[16];
    *(v12 + 16) = *v26;
    *(v12 + 32) = v17;
    *(v12 + 144) = v14;
    *(v12 + 152) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CE8, &qword_1DB2C3880);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1DB16D2C8;
    *(v18 + 24) = v12;
    v19 = swift_allocObject();
    v20 = v34;
    v21 = v36;
    *(v19 + 112) = v35;
    *(v19 + 128) = v21;
    *(v19 + 144) = v37;
    v22 = v30;
    v23 = v32;
    *(v19 + 48) = v31;
    *(v19 + 64) = v23;
    *(v19 + 80) = v33;
    *(v19 + 96) = v20;
    *(v19 + 16) = v29;
    *(v19 + 32) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CF0, &qword_1DB2C3888);
    result = swift_allocObject();
    result[2] = v18;
    result[3] = sub_1DB16D414;
    result[4] = v19;
  }

  else
  {
    sub_1DB1445E0(v28, &qword_1ECC27CD0, &unk_1DB2CB840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CD8, &qword_1DB2C3870);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB2BCC40;
    sub_1DB16D210(v1, v25 + 32);
    *(v25 + 176) = 0;
    *(v25 + 184) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CE0, &qword_1DB2C3878);
    result = swift_allocObject();
    result[2] = v25;
  }

  return result;
}

uint64_t sub_1DB16D2C8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 80);
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = 0;
}

__n128 sub_1DB16D2DC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  sub_1DB16D26C(a2, v11);

  *&v12 = v4;
  v7 = v15;
  *(a3 + 96) = v14;
  *(a3 + 112) = v7;
  *(a3 + 128) = v16;
  v8 = v11[3];
  *(a3 + 32) = v11[2];
  *(a3 + 48) = v8;
  v9 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v9;
  result = v13;
  *(a3 + 64) = v12;
  *(a3 + 80) = result;
  *(a3 + 136) = 1;
  *(a3 + 144) = v5;
  *(a3 + 152) = v6;
  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  if (v1[12])
  {
  }

  if (v1[17])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 14);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t Expressible.estimatedBatchRowCount(using:limitedTo:)(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  if (v13 < 1)
  {
    if (qword_1ECC26BD0 != -1)
    {
      swift_once();
    }

    v24 = qword_1ECC41F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v25 = swift_allocObject();
    v78 = xmmword_1DB2BCC40;
    *(v25 + 16) = xmmword_1DB2BCC40;
    v94 = sub_1DB156674(0, 25, 0, MEMORY[0x1E69E7CC0]);
    v26._object = 0x80000001DB2D4460;
    v26._countAndFlagsBits = 0xD000000000000018;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    MetatypeMetadata = MEMORY[0x1E69E6530];
    v90[0] = a2;
    sub_1DB1446A4(v90, v93, &qword_1ECC26F30, &unk_1DB2BFA90);
    v79 = 0u;
    v80 = 0u;
    sub_1DB156864(v93, &v79);
    LOBYTE(v81) = 0;
    v27 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DB156674(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB156674((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v79;
    v32 = v80;
    v30[64] = v81;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v94 = v27;
    sub_1DB1445E0(v90, &qword_1ECC26F30, &unk_1DB2BFA90);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v25 + 32) = v94;
    v34 = sub_1DB2BB264();
    if (os_log_type_enabled(v24, v34))
    {
      v35 = os_variant_has_internal_content() ^ 1;
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *&v79 = v25;
      *(&v79 + 1) = sub_1DB15693C;
      *&v80 = v36;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
      sub_1DB156944();
      v37 = sub_1DB2BAD24();
      v39 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
      v40 = swift_allocObject();
      *(v40 + 16) = v78;
      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = sub_1DB156A2C();
      *(v40 + 32) = v37;
      *(v40 + 40) = v39;
      sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v24, v34, v40);
    }
  }

  else
  {
    v14 = *(v8 + 16);
    v14(&v76 - v12, v4, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
    if (swift_dynamicCast())
    {
      sub_1DB1355D0(&v79, v90);
      v15 = MetatypeMetadata;
      v16 = v92;
      __swift_project_boxed_opaque_existential_1(v90, MetatypeMetadata);
      v17 = a1[9];
      v87 = a1[8];
      v88 = v17;
      v89 = a1[10];
      v18 = a1[5];
      v83 = a1[4];
      v84 = v18;
      v19 = a1[7];
      v85 = a1[6];
      v86 = v19;
      v20 = a1[1];
      v79 = *a1;
      v80 = v20;
      v21 = a1[3];
      v81 = a1[2];
      v82 = v21;
      v22 = sub_1DB16DD44(&v79, a2, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v90);
      return v22;
    }

    *&v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_1DB1445E0(&v79, &qword_1ECC279E8, &unk_1DB2C3AE0);
    v14(v11, v4, a3);
    v41 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v42 = v79;
      v43 = a1[9];
      v87 = a1[8];
      v88 = v43;
      v89 = a1[10];
      v44 = a1[5];
      v83 = a1[4];
      v84 = v44;
      v45 = a1[7];
      v85 = a1[6];
      v86 = v45;
      v46 = a1[1];
      v79 = *a1;
      v80 = v46;
      v47 = a1[3];
      v81 = a1[2];
      v82 = v47;
      v48 = sub_1DB16E588(&v79, a2, v42, *(&v42 + 1));

      return v48;
    }

    if (qword_1ECC26BD0 != -1)
    {
      swift_once();
    }

    v49 = qword_1ECC41F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v50 = swift_allocObject();
    v78 = xmmword_1DB2BCC40;
    *(v50 + 16) = xmmword_1DB2BCC40;
    v94 = sub_1DB156674(0, 26, 0, MEMORY[0x1E69E7CC0]);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    MetatypeMetadata = v41;
    v90[0] = 0xD000000000000028;
    v90[1] = 0x80000001DB2D4480;
    sub_1DB1446A4(v90, v93, &qword_1ECC26F30, &unk_1DB2BFA90);
    v79 = 0u;
    v80 = 0u;
    sub_1DB156864(v93, &v79);
    LOBYTE(v81) = 0;
    v52 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1DB156674(0, *(v52 + 2) + 1, 1, v52);
    }

    v54 = *(v52 + 2);
    v53 = *(v52 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v77 = v54 + 1;
      v75 = sub_1DB156674((v53 > 1), v54 + 1, 1, v52);
      v55 = v77;
      v52 = v75;
    }

    *(v52 + 2) = v55;
    v56 = &v52[40 * v54];
    v57 = v79;
    v58 = v80;
    v56[64] = v81;
    *(v56 + 2) = v57;
    *(v56 + 3) = v58;
    v94 = v52;
    sub_1DB1445E0(v90, &qword_1ECC26F30, &unk_1DB2BFA90);
    v59._object = 0x80000001DB2D44B0;
    v59._countAndFlagsBits = 0xD000000000000018;
    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v90[0] = DynamicType;
    sub_1DB1446A4(v90, v93, &qword_1ECC26F30, &unk_1DB2BFA90);
    v79 = 0u;
    v80 = 0u;
    sub_1DB156864(v93, &v79);
    LOBYTE(v81) = 0;
    v61 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_1DB156674(0, *(v61 + 2) + 1, 1, v61);
      v94 = v61;
    }

    v63 = *(v61 + 2);
    v62 = *(v61 + 3);
    if (v63 >= v62 >> 1)
    {
      v61 = sub_1DB156674((v62 > 1), v63 + 1, 1, v61);
    }

    *(v61 + 2) = v63 + 1;
    v64 = &v61[40 * v63];
    v65 = v79;
    v66 = v80;
    v64[64] = v81;
    *(v64 + 2) = v65;
    *(v64 + 3) = v66;
    v94 = v61;
    sub_1DB1445E0(v90, &qword_1ECC26F30, &unk_1DB2BFA90);
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v67);
    *(v50 + 32) = v94;
    v68 = sub_1DB2BB264();
    if (os_log_type_enabled(v49, v68))
    {
      v69 = os_variant_has_internal_content() ^ 1;
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *&v79 = v50;
      *(&v79 + 1) = sub_1DB158A74;
      *&v80 = v70;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
      sub_1DB156944();
      v71 = sub_1DB2BAD24();
      v73 = v72;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
      v74 = swift_allocObject();
      *(v74 + 16) = v78;
      *(v74 + 56) = v41;
      *(v74 + 64) = sub_1DB156A2C();
      *(v74 + 32) = v71;
      *(v74 + 40) = v73;
      sub_1DB2BAA04("%{public}@", 10, 2, &dword_1DB132000, v49, v68, v74);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

unint64_t sub_1DB16DD44(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[9];
  v76 = a1[8];
  v77 = v5;
  v78 = a1[10];
  v6 = a1[5];
  v72 = a1[4];
  v73 = v6;
  v7 = a1[7];
  v74 = a1[6];
  v75 = v7;
  v8 = a1[1];
  v68 = *a1;
  v69 = v8;
  v9 = a1[3];
  v70 = a1[2];
  v71 = v9;
  v10 = sub_1DB1705CC(&v68, a3, a4);
  if (v11)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v12 = *(&v69 + 1);
    v13 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB2BCC40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DB2BCC40;
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    *&v62 = 0xD00000000000002CLL;
    *(&v62 + 1) = 0x80000001DB2D44D0;
    *(v15 + 48) = 0u;
    *(v15 + 32) = 0u;
    sub_1DB156864(&v62, v15 + 32);
    *(v15 + 64) = 0;
    *(v14 + 32) = v15;
    Logger.warning(_:)(v14, v12, v13);
LABEL_21:

    __swift_destroy_boxed_opaque_existential_1(&v68);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v10;
  if (v10 <= 0)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v30 = *(&v69 + 1);
    v31 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DB2BCC40;
    v67 = sub_1DB156674(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v33._object = 0x80000001DB2D4500;
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    v66 = MEMORY[0x1E69E6530];
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v34 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1DB156674(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1DB156674((v35 > 1), v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v37 = &v34[40 * v36];
    v38 = v62;
    v39 = v63;
    v37[64] = v64;
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v67 = v34;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v32 + 32) = v67;
    Logger.warning(_:)(v32, v30, v31);
    goto LABEL_21;
  }

  if (v10 >= a2)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v41 = *(&v69 + 1);
    v42 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1DB2BCC40;
    v67 = sub_1DB156674(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v44._countAndFlagsBits = 0xD000000000000023;
    v44._object = 0x80000001DB2D4520;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    v45 = MEMORY[0x1E69E6530];
    v66 = MEMORY[0x1E69E6530];
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v46 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1DB156674(0, *(v46 + 2) + 1, 1, v46);
    }

    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1DB156674((v47 > 1), v48 + 1, 1, v46);
    }

    *(v46 + 2) = v48 + 1;
    v49 = &v46[40 * v48];
    v50 = v62;
    v51 = v63;
    v49[64] = v64;
    *(v49 + 2) = v50;
    *(v49 + 3) = v51;
    v67 = v46;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v52._countAndFlagsBits = 0xD00000000000002DLL;
    v52._object = 0x80000001DB2D4550;
    LogMessage.StringInterpolation.appendLiteral(_:)(v52);
    v66 = v45;
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v53 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1DB156674(0, *(v53 + 2) + 1, 1, v53);
      v67 = v53;
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1DB156674((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[40 * v55];
    v57 = v62;
    v58 = v63;
    v56[64] = v64;
    *(v56 + 2) = v57;
    *(v56 + 3) = v58;
    v67 = v53;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v59);
    *(v43 + 32) = v67;
    Logger.warning(_:)(v43, v41, v42);

    __swift_destroy_boxed_opaque_existential_1(&v68);
    return 1;
  }

  else
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v17 = *(&v69 + 1);
    v18 = v70;
    __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DB2BCC40;
    v67 = sub_1DB156674(0, 30, 0, MEMORY[0x1E69E7CC0]);
    v20._countAndFlagsBits = 0xD00000000000001DLL;
    v20._object = 0x80000001DB2D4580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v66 = MEMORY[0x1E69E6530];
    v65[0] = v16;
    sub_1DB1446A4(v65, v61, &qword_1ECC26F30, &unk_1DB2BFA90);
    v62 = 0u;
    v63 = 0u;
    sub_1DB156864(v61, &v62);
    v64 = 0;
    v21 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB156674(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v60 = sub_1DB156674((v22 > 1), v23 + 1, 1, v21);
      v24 = v23 + 1;
      v21 = v60;
    }

    *(v21 + 2) = v24;
    v25 = &v21[40 * v23];
    v26 = v62;
    v27 = v63;
    v25[64] = v64;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v67 = v21;
    sub_1DB1445E0(v65, &qword_1ECC26F30, &unk_1DB2BFA90);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v19 + 32) = v67;
    Logger.info(_:)(v19, v17, v18);

    __swift_destroy_boxed_opaque_existential_1(&v68);
    return a2 / v16;
  }
}

unint64_t sub_1DB16E588(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D00, &qword_1DB2C39C8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v166 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v166 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v188 = &v166 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v166 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v166 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D08, &qword_1DB2C39D0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v172 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v180 = &v166 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v183 = &v166 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v192 = &v166 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v185 = &v166 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v193 = &v166 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v186 = &v166 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v190 = &v166 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v187 = &v166 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v191 = &v166 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v173 = &v166 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v166 - v49;
  v51 = *(a1 + 168);
  v52 = *(v51 + 16);
  if (!v52)
  {
    v194 = 0;
    goto LABEL_57;
  }

  v177 = v50;
  v182 = v14;
  v167 = a2;
  v194 = 0;
  v203 = 0;
  v53 = 0;
  v54 = v51 + 32;
  v55 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v55 = a3;
  }

  v56 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v56 = 11;
  }

  v198 = v56 | (v55 << 16);
  v197 = (v48 + 8);
  v196 = a4;
  v195 = a3;
  v184 = v17;
  v189 = v22;
  v174 = v24;
  v205 = v25;
  v175 = v11;
  v170 = v51;
  v169 = v52;
  v168 = v51 + 32;
  do
  {
    if (v53 >= *(v51 + 16))
    {
      goto LABEL_79;
    }

    v57 = *(v54 + 24 * v53 + 16);
    v176 = *(v57 + 16);
    if (!v176)
    {
      goto LABEL_40;
    }

    v171 = v53;
    v179 = v57 + 32;

    v59 = 0;
    v178 = v58;
    do
    {
      if (v59 >= *(v58 + 16))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
LABEL_51:
        sub_1DB2BBAF4();
        v120 = v219;
        v121 = v220;
        __swift_project_boxed_opaque_existential_1(&v217, v219);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
        v122 = swift_allocObject();
        v208 = xmmword_1DB2BCC40;
        *(v122 + 16) = xmmword_1DB2BCC40;
        v216 = sub_1DB156674(0, 41, 0, MEMORY[0x1E69E7CC0]);
        v123._countAndFlagsBits = 0xD000000000000028;
        v123._object = 0x80000001DB2D4670;
        LogMessage.StringInterpolation.appendLiteral(_:)(v123);
        v124 = MEMORY[0x1E69E6158];
        v215 = MEMORY[0x1E69E6158];
        v214[0] = v209;
        v214[1] = v24;
        sub_1DB1446A4(v214, v210, &qword_1ECC26F30, &unk_1DB2BFA90);
        v211 = 0u;
        v212 = 0u;
        sub_1DB156864(v210, &v211);
        v213 = 0;
        v125 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1DB156674(0, *(v125 + 2) + 1, 1, v125);
        }

        v127 = *(v125 + 2);
        v126 = *(v125 + 3);
        if (v127 >= v126 >> 1)
        {
          v125 = sub_1DB156674((v126 > 1), v127 + 1, 1, v125);
        }

        *(v125 + 2) = v127 + 1;
        v128 = &v125[40 * v127];
        v129 = v211;
        v130 = v212;
        v128[64] = v213;
        *(v128 + 2) = v129;
        *(v128 + 3) = v130;
        v216 = v125;
        sub_1DB1445E0(v214, &qword_1ECC26F30, &unk_1DB2BFA90);
        v131._countAndFlagsBits = 0;
        v131._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v131);
        *(v122 + 32) = v216;
        Logger.warning(_:)(v122, v120, v121);

        __swift_destroy_boxed_opaque_existential_1(&v217);
        sub_1DB2BBAF4();
        v132 = v219;
        v133 = v220;
        __swift_project_boxed_opaque_existential_1(&v217, v219);
        v134 = swift_allocObject();
        *(v134 + 16) = v208;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
        v135 = swift_allocObject();
        *(v135 + 16) = v208;
        *(&v212 + 1) = v124;
        *&v211 = 0xD00000000000002CLL;
        *(&v211 + 1) = 0x80000001DB2D44D0;
        *(v135 + 48) = 0u;
        *(v135 + 32) = 0u;
        sub_1DB156864(&v211, v135 + 32);
        *(v135 + 64) = 0;
        *(v134 + 32) = v135;
        Logger.warning(_:)(v134, v132, v133);
LABEL_64:

        __swift_destroy_boxed_opaque_existential_1(&v217);
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v181 = v59;
      v60 = (v179 + 56 * v59);
      v61 = v60[1];
      v62 = v60[6];
      *&v208 = *v60;
      v217 = v208;
      v218 = v61;
      swift_bridgeObjectRetain_n();
      v202 = v62;

      MEMORY[0x1E1283490](710684252, 0xE400000000000000);
      v63 = v177;
      sub_1DB2BA9F4();
      v199 = v61;
      v24 = sub_1DB2BB004();
      sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0, MEMORY[0x1E69E9290]);
      v64 = v173;
      sub_1DB2BA9B4();
      v65 = v205;
      sub_1DB2BA9D4();

      v66 = *v197;
      (*v197)(v64, v65);
      v66(v63, v65);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
      v68 = *(*(v67 - 8) + 48);
      v201 = 1;
      v69 = v174;
      LODWORD(v66) = v68(v174, 1, v67);
      sub_1DB1445E0(v69, &qword_1ECC27D00, &qword_1DB2C39C8);
      v70 = v66 == 1;
      v71 = v199;
      v72 = v175;
      if (v70)
      {
        v217 = 34;
        v218 = 0xE100000000000000;
        MEMORY[0x1E1283490](v208, v199);
        MEMORY[0x1E1283490](0x2A5C2E5C22, 0xE500000000000000);
        v73 = v180;
        sub_1DB2BA9F4();
        sub_1DB2BB004();
        v24 = v74;
        sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0, MEMORY[0x1E69E9290]);
        v75 = v172;
        sub_1DB2BA9B4();
        sub_1DB2BA9D4();

        v76 = *v197;
        (*v197)(v75, v65);
        v76(v73, v65);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
        v201 = (*(*(v77 - 8) + 48))(v72, 1, v77) != 1;
        sub_1DB1445E0(v72, &qword_1ECC27D00, &qword_1DB2C39C8);
        v71 = v199;
      }

      v78 = v202;
      v200 = *(v202 + 16);
      if (v200)
      {

        v79 = 0;
        v80 = (v78 + 56);
        while (1)
        {
          if (v79 >= *(v78 + 16))
          {
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          v81 = *(v80 - 3);
          v24 = *(v80 - 2);
          v204 = *(v80 - 1);
          v206 = *v80;
          v209 = v81;
          if (v201)
          {
          }

          else
          {
            v217 = v208;
            v218 = v71;

            MEMORY[0x1E1283490](46, 0xE100000000000000);
            v207 = v24;
            MEMORY[0x1E1283490](v81, v24);
            v82 = v191;
            sub_1DB2BA9F4();
            sub_1DB2BB004();
            sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0, MEMORY[0x1E69E9290]);
            v86 = v187;
            sub_1DB2BA9B4();
            v87 = v205;
            sub_1DB2BA9D4();

            v94 = *v197;
            (*v197)(v86, v87);
            v94(v82, v87);
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
            v96 = v189;
            v97 = (*(*(v95 - 8) + 48))(v189, 1, v95);
            sub_1DB1445E0(v96, &qword_1ECC27D00, &qword_1DB2C39C8);
            v71 = v199;
            v24 = v207;
            if (v97 == 1)
            {
              v217 = 34;
              v218 = 0xE100000000000000;
              MEMORY[0x1E1283490](v208, v199);
              MEMORY[0x1E1283490](11810, 0xE200000000000000);
              MEMORY[0x1E1283490](v209, v24);
              v88 = v190;
              sub_1DB2BA9F4();
              sub_1DB2BB004();
              sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0, MEMORY[0x1E69E9290]);
              v89 = v186;
              sub_1DB2BA9B4();
              v90 = v205;
              sub_1DB2BA9D4();

              v98 = *v197;
              (*v197)(v89, v90);
              v98(v88, v90);
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
              v100 = v188;
              LODWORD(v98) = (*(*(v99 - 8) + 48))(v188, 1, v99);
              sub_1DB1445E0(v100, &qword_1ECC27D00, &qword_1DB2C39C8);
              v71 = v199;
              v24 = v207;
              if (v98 == 1)
              {
                v217 = v208;
                v218 = v199;

                MEMORY[0x1E1283490](8750, 0xE200000000000000);
                MEMORY[0x1E1283490](v209, v24);
                MEMORY[0x1E1283490](34, 0xE100000000000000);
                sub_1DB2BA9F4();
                sub_1DB2BB004();
                sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0, MEMORY[0x1E69E9290]);
                v91 = v185;
                sub_1DB2BA9B4();
                v92 = v184;
                v93 = v205;
                sub_1DB2BA9D4();

                v101 = *v197;
                (*v197)(v91, v93);
                v101(v193, v93);
                v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
                LODWORD(v101) = (*(*(v102 - 8) + 48))(v92, 1, v102);
                sub_1DB1445E0(v92, &qword_1ECC27D00, &qword_1DB2C39C8);
                v71 = v199;
                v24 = v207;
                if (v101 == 1)
                {
                  v217 = 34;
                  v218 = 0xE100000000000000;
                  MEMORY[0x1E1283490](v208, v199);
                  MEMORY[0x1E1283490](2240034, 0xE300000000000000);
                  MEMORY[0x1E1283490](v209, v24);
                  MEMORY[0x1E1283490](34, 0xE100000000000000);
                  sub_1DB2BA9F4();
                  sub_1DB2BB004();
                  sub_1DB1688F0(&qword_1ECC27D10, &qword_1ECC27D08, &qword_1DB2C39D0, MEMORY[0x1E69E9290]);
                  v103 = v183;
                  sub_1DB2BA9B4();
                  v104 = v182;
                  v105 = v205;
                  sub_1DB2BA9D4();

                  v106 = *v197;
                  (*v197)(v103, v105);
                  v106(v192, v105);
                  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D18, &qword_1DB2C39D8);
                  LODWORD(v106) = (*(*(v107 - 8) + 48))(v104, 1, v107);
                  sub_1DB1445E0(v104, &qword_1ECC27D00, &qword_1DB2C39C8);
                  v71 = v199;
                  v24 = v207;
                  if (v106 == 1)
                  {

                    v78 = v202;
                    goto LABEL_18;
                  }
                }
              }
            }
          }

          if (!(v206 >> 6))
          {
            break;
          }

          v78 = v202;
          if (v206 >> 6 == 1)
          {
            if (v206)
            {
              goto LABEL_50;
            }

LABEL_29:

            v83 = 0x7FFFFFFFFFFFFFFFLL;
            if (v204 < 0x7FFFFFFFFFFFFFFFLL)
            {
              v83 = v204;
            }

            goto LABEL_31;
          }

          v83 = 8;
LABEL_31:
          v84 = __OFADD__(v203, v83);
          v85 = v203 + v83;
          if (v84)
          {
            goto LABEL_66;
          }

          v194 = v85;
          v203 = v85;
LABEL_18:
          ++v79;
          v80 += 40;
          if (v200 == v79)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_11;
          }
        }

        v78 = v202;
        if (v206)
        {
LABEL_50:

          if (qword_1EE13F2E0 != -1)
          {
            goto LABEL_80;
          }

          goto LABEL_51;
        }

        goto LABEL_29;
      }

LABEL_11:
      v59 = v181 + 1;

      v58 = v178;
    }

    while (v59 != v176);

    v51 = v170;
    v52 = v169;
    v53 = v171;
    v54 = v168;
LABEL_40:
    ++v53;
  }

  while (v53 != v52);
  if (v194 <= 0)
  {
LABEL_57:
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v136 = v219;
    v137 = v220;
    __swift_project_boxed_opaque_existential_1(&v217, v219);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1DB2BCC40;
    v216 = sub_1DB156674(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v139._object = 0x80000001DB2D4500;
    v139._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v139);
    v215 = MEMORY[0x1E69E6530];
    v214[0] = v194;
    sub_1DB1446A4(v214, v210, &qword_1ECC26F30, &unk_1DB2BFA90);
    v211 = 0u;
    v212 = 0u;
    sub_1DB156864(v210, &v211);
    v213 = 0;
    v140 = v216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_1DB156674(0, *(v140 + 2) + 1, 1, v140);
    }

    v142 = *(v140 + 2);
    v141 = *(v140 + 3);
    if (v142 >= v141 >> 1)
    {
      v140 = sub_1DB156674((v141 > 1), v142 + 1, 1, v140);
    }

    *(v140 + 2) = v142 + 1;
    v143 = &v140[40 * v142];
    v144 = v211;
    v145 = v212;
    v143[64] = v213;
    *(v143 + 2) = v144;
    *(v143 + 3) = v145;
    v216 = v140;
    sub_1DB1445E0(v214, &qword_1ECC26F30, &unk_1DB2BFA90);
    v146._countAndFlagsBits = 0;
    v146._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v146);
    *(v138 + 32) = v216;
    Logger.warning(_:)(v138, v136, v137);
    goto LABEL_64;
  }

  v24 = 0xD00000000000001BLL;
  if (v194 >= v167)
  {
LABEL_67:
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v147 = v219;
    v148 = v220;
    __swift_project_boxed_opaque_existential_1(&v217, v219);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_1DB2BCC40;
    v216 = sub_1DB156674(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v150._countAndFlagsBits = (v24 + 8);
    v150._object = 0x80000001DB2D4520;
    LogMessage.StringInterpolation.appendLiteral(_:)(v150);
    v151 = MEMORY[0x1E69E6530];
    v215 = MEMORY[0x1E69E6530];
    v214[0] = v194;
    sub_1DB1446A4(v214, v210, &qword_1ECC26F30, &unk_1DB2BFA90);
    v211 = 0u;
    v212 = 0u;
    sub_1DB156864(v210, &v211);
    v213 = 0;
    v152 = v216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_1DB156674(0, *(v152 + 2) + 1, 1, v152);
    }

    v154 = *(v152 + 2);
    v153 = *(v152 + 3);
    if (v154 >= v153 >> 1)
    {
      v152 = sub_1DB156674((v153 > 1), v154 + 1, 1, v152);
    }

    *(v152 + 2) = v154 + 1;
    v155 = &v152[40 * v154];
    v156 = v211;
    v157 = v212;
    v155[64] = v213;
    *(v155 + 2) = v156;
    *(v155 + 3) = v157;
    v216 = v152;
    sub_1DB1445E0(v214, &qword_1ECC26F30, &unk_1DB2BFA90);
    v158._countAndFlagsBits = (v24 + 18);
    v158._object = 0x80000001DB2D4550;
    LogMessage.StringInterpolation.appendLiteral(_:)(v158);
    v215 = v151;
    v214[0] = v194;
    sub_1DB1446A4(v214, v210, &qword_1ECC26F30, &unk_1DB2BFA90);
    v211 = 0u;
    v212 = 0u;
    sub_1DB156864(v210, &v211);
    v213 = 0;
    v159 = v216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v159 = sub_1DB156674(0, *(v159 + 2) + 1, 1, v159);
      v216 = v159;
    }

    v161 = *(v159 + 2);
    v160 = *(v159 + 3);
    if (v161 >= v160 >> 1)
    {
      v159 = sub_1DB156674((v160 > 1), v161 + 1, 1, v159);
    }

    *(v159 + 2) = v161 + 1;
    v162 = &v159[40 * v161];
    v163 = v211;
    v164 = v212;
    v162[64] = v213;
    *(v162 + 2) = v163;
    *(v162 + 3) = v164;
    v216 = v159;
    sub_1DB1445E0(v214, &qword_1ECC26F30, &unk_1DB2BFA90);
    v165._countAndFlagsBits = 0;
    v165._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v165);
    *(v149 + 32) = v216;
    Logger.warning(_:)(v149, v147, v148);

    __swift_destroy_boxed_opaque_existential_1(&v217);
    return 1;
  }

  else
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v108 = v219;
    v109 = v220;
    __swift_project_boxed_opaque_existential_1(&v217, v219);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1DB2BCC40;
    v216 = sub_1DB156674(0, 30, 0, MEMORY[0x1E69E7CC0]);
    v111._countAndFlagsBits = 0xD00000000000001DLL;
    v111._object = 0x80000001DB2D4580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v111);
    v215 = MEMORY[0x1E69E6530];
    v214[0] = v194;
    sub_1DB1446A4(v214, v210, &qword_1ECC26F30, &unk_1DB2BFA90);
    v211 = 0u;
    v212 = 0u;
    sub_1DB156864(v210, &v211);
    v213 = 0;
    v112 = v216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_1DB156674(0, *(v112 + 2) + 1, 1, v112);
    }

    v114 = *(v112 + 2);
    v113 = *(v112 + 3);
    if (v114 >= v113 >> 1)
    {
      v112 = sub_1DB156674((v113 > 1), v114 + 1, 1, v112);
    }

    *(v112 + 2) = v114 + 1;
    v115 = &v112[40 * v114];
    v116 = v211;
    v117 = v212;
    v115[64] = v213;
    *(v115 + 2) = v116;
    *(v115 + 3) = v117;
    v216 = v112;
    sub_1DB1445E0(v214, &qword_1ECC26F30, &unk_1DB2BFA90);
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v118);
    *(v110 + 32) = v216;
    Logger.info(_:)(v110, v108, v109);

    __swift_destroy_boxed_opaque_existential_1(&v217);
    return v167 / v194;
  }
}

uint64_t sub_1DB1705CC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[9];
  v140 = a1[8];
  v141 = v6;
  v7 = *(a1 + 21);
  v142 = *(a1 + 20);
  v8 = a1[5];
  v136 = a1[4];
  v137 = v8;
  v9 = a1[7];
  v138 = a1[6];
  v139 = v9;
  v10 = a1[1];
  v132 = *a1;
  v133 = v10;
  v11 = a1[3];
  v134 = a1[2];
  v135 = v11;
  v13 = a3 + 16;
  v12 = *(a3 + 16);
  v12(v143, a2, a3);
  v96 = v143[1];

  sub_1DB17181C(v143);
  v94 = v12;
  v12(v144, a2, a3);
  v14 = v144[2];
  v15 = v144[3];
  v16 = v144[6];
  v17 = v144[7];

  sub_1DB17181C(v144);
  v95 = v17;
  if (!v17)
  {
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v35 = v126;
    v36 = v127;
    __swift_project_boxed_opaque_existential_1(&v124, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DB2BCC40;
    v131 = sub_1DB156674(0, 63, 0, MEMORY[0x1E69E7CC0]);
    v38._countAndFlagsBits = 0xD00000000000003ELL;
    v38._object = 0x80000001DB2D45A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    *(&v98 + 1) = MEMORY[0x1E69E6158];
    *&v97 = v14;
    *(&v97 + 1) = v15;
    sub_1DB1446A4(&v97, v109, &qword_1ECC26F30, &unk_1DB2BFA90);
    v112 = 0u;
    v113 = 0u;

    sub_1DB156864(v109, &v112);
    LOBYTE(v114) = 0;
    v39 = v131;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1DB156674(0, *(v39 + 2) + 1, 1, v39);
      v131 = v39;
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1DB156674((v40 > 1), v41 + 1, 1, v39);
    }

    *(v39 + 2) = v41 + 1;
    v42 = &v39[40 * v41];
    v43 = v112;
    v44 = v113;
    v42[64] = v114;
    *(v42 + 2) = v43;
    *(v42 + 3) = v44;
    v131 = v39;
    sub_1DB1445E0(&v97, &qword_1ECC26F30, &unk_1DB2BFA90);
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v45);
    *(v37 + 32) = v131;
    Logger.warning(_:)(v37, v35, v36);
LABEL_27:

    __swift_destroy_boxed_opaque_existential_1(&v124);

    return 0;
  }

  v92 = a2;
  v93 = v3;
  *&v112 = v7;
  DataSpecification.subscript.getter(v16, v17, &v124);
  v18 = *(&v124 + 1);
  if (!*(&v124 + 1))
  {
LABEL_21:
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
    MEMORY[0x1E1283490](v14, v15);
    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
    MEMORY[0x1E1283490](v16, v17);
    v46 = v124;
    v125 = 0;
    LOBYTE(v126) = 5;
    sub_1DB171870();
    swift_willThrowTypedImpl();
    if (qword_1EE13F2E0 != -1)
    {
      swift_once();
    }

    sub_1DB2BBAF4();
    v13 = v126;
    v24 = v127;
    __swift_project_boxed_opaque_existential_1(&v124, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DB2BCC40;
    v131 = sub_1DB156674(0, 64, 0, MEMORY[0x1E69E7CC0]);
    v47._countAndFlagsBits = 0xD00000000000003FLL;
    v47._object = 0x80000001DB2D4630;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    *(&v98 + 1) = &type metadata for AccessCredential.Error;
    v48 = swift_allocObject();
    *&v97 = v48;
    *(v48 + 16) = v46;
    *(v48 + 32) = 0;
    *(v48 + 40) = 5;
    sub_1DB1446A4(&v97, v109, &qword_1ECC26F30, &unk_1DB2BFA90);
    v112 = 0u;
    v113 = 0u;
    sub_1DB156864(v109, &v112);
    LOBYTE(v114) = 0;
    v27 = v131;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DB156674(0, *(v27 + 2) + 1, 1, v27);
      v131 = v27;
    }

LABEL_25:
    v26 = *(v27 + 2);
    v28 = *(v27 + 3);
    v21 = v26 + 1;
    if (v26 >= v28 >> 1)
    {
LABEL_77:
      v27 = sub_1DB156674((v28 > 1), v21, 1, v27);
    }

    *(v27 + 2) = v21;
    v49 = &v27[40 * v26];
    v50 = v112;
    v51 = v113;
    v49[64] = v114;
    *(v49 + 2) = v50;
    *(v49 + 3) = v51;
    v131 = v27;
    sub_1DB1445E0(&v97, &qword_1ECC26F30, &unk_1DB2BFA90);
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v52);
    *(v25 + 32) = v131;
    Logger.warning(_:)(v25, v13, v24);
    goto LABEL_27;
  }

  v19 = v124;
  v20 = v125;
  v112 = v124;
  *&v113 = v125;
  v21 = &v112;
  v91 = v15;
  DataSpecification.Namespace.subscript.getter(v14, v15, &v124);
  v22 = *(&v124 + 1);
  if (!*(&v124 + 1))
  {
    sub_1DB1718E4(v19, v18, v20);
    v15 = v91;
    v17 = v95;
    goto LABEL_21;
  }

  v84 = v124;
  v85 = v125;
  v86 = v126;
  v87 = v127;
  v88 = v128;
  v89 = v129;
  v90 = a3;
  sub_1DB1718E4(v19, v18, v20);
  v23 = v96 + 32;
  v24 = -*(v96 + 16);
  v25 = -1;
  v26 = 0xE100000000000000;
  v27 = (v96 + 32);
  while (v24 + v25 != -1)
  {
    v28 = *(v96 + 16);
    if (++v25 >= v28)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    sub_1DB164980(v27, &v124);
    v29 = v126;
    v30 = v127;
    __swift_project_boxed_opaque_existential_1(&v124, v126);
    v31 = Expressible.unqualifiedColumnName.getter(v29, v30);
    v21 = v32;
    if (v31 == 42 && v32 == 0xE100000000000000)
    {

      __swift_destroy_boxed_opaque_existential_1(&v124);
LABEL_36:
      v64 = v89;

      sub_1DB171928(v84, v22, v85, v86, v87, v88, v89);
      goto LABEL_37;
    }

    v27 += 40;
    v34 = sub_1DB2BB924();

    __swift_destroy_boxed_opaque_existential_1(&v124);
    if (v34)
    {
      goto LABEL_36;
    }
  }

  *&v124 = v84;
  *(&v124 + 1) = v22;
  v125 = v85;
  LOBYTE(v126) = v86 & 1;
  v127 = v87;
  LOBYTE(v128) = v88 & 1;
  v129 = v89;
  v54 = *(v96 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    *&v97 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v54, 0);
    v55 = v97;
    do
    {
      sub_1DB164980(v23, &v112);
      v56 = *(&v113 + 1);
      v57 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
      v58 = Expressible.unqualifiedColumnName.getter(v56, v57);
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(&v112);
      *&v97 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1DB138470((v61 > 1), v62 + 1, 1);
        v55 = v97;
      }

      *(v55 + 16) = v62 + 1;
      v63 = v55 + 16 * v62;
      *(v63 + 32) = v58;
      *(v63 + 40) = v60;
      v23 += 40;
      --v54;
    }

    while (v54);
  }

  v64 = DataSpecification.Namespace.Table.columnSpecs(for:)(v55);

LABEL_37:
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = 0;
    v67 = (v64 + 56);
    while (1)
    {
      v69 = *(v67 - 1);
      v70 = *v67;
      if (v70 >> 6 > 1)
      {
        v68 = __OFADD__(v66, 8);
        v66 += 8;
        if (v68)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v70)
        {
          v80 = *(v67 - 3);
          v81 = *(v67 - 2);

          if (qword_1EE13F2E0 != -1)
          {
            swift_once();
          }

          sub_1DB2BBAF4();
          v13 = v126;
          v24 = v127;
          __swift_project_boxed_opaque_existential_1(&v124, v126);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1DB2BCC40;
          v131 = sub_1DB156674(0, 41, 0, MEMORY[0x1E69E7CC0]);
          v82._countAndFlagsBits = 0xD000000000000028;
          v82._object = 0x80000001DB2D4670;
          LogMessage.StringInterpolation.appendLiteral(_:)(v82);
          *(&v98 + 1) = MEMORY[0x1E69E6158];
          *&v97 = v80;
          *(&v97 + 1) = v81;
          sub_1DB1446A4(&v97, v109, &qword_1ECC26F30, &unk_1DB2BFA90);
          v112 = 0u;
          v113 = 0u;
          sub_1DB156864(v109, &v112);
          LOBYTE(v114) = 0;
          v27 = v131;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1DB156674(0, *(v27 + 2) + 1, 1, v27);
          }

          goto LABEL_25;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v68 = __OFADD__(v66, v69);
        v66 += v69;
        if (v68)
        {
LABEL_47:
          __break(1u);
          break;
        }
      }

      v67 += 40;
      if (!--v65)
      {
        goto LABEL_49;
      }
    }
  }

  v66 = 0;
LABEL_49:

  v21 = v93;
  v94(&v124, v92, v90);
  v27 = v130;

  sub_1DB17181C(&v124);
  v24 = 0;
  v26 = (v27 + 40);
  v25 = -*(v27 + 2);
  v71 = -1;
  while (v25 + v71 != -1)
  {
    v28 = *(v27 + 2);
    if (++v71 >= v28)
    {
      __break(1u);
      goto LABEL_75;
    }

    sub_1DB164980(v26, &v97);
    v72 = *(&v98 + 1);
    v73 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    v120 = v140;
    v121 = v141;
    v116 = v136;
    v117 = v137;
    v118 = v138;
    v119 = v139;
    v112 = v132;
    v113 = v133;
    v114 = v134;
    v115 = v135;
    v122 = v142;
    v123 = v7;
    v21 = sub_1DB1705CC(&v112, v72, v73);
    if (v74)
    {
LABEL_63:

      v79 = &v97;
LABEL_73:
      __swift_destroy_boxed_opaque_existential_1(v79);
      return v21;
    }

    v26 += 88;
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v68 = __OFADD__(v24, v21);
    v24 += v21;
    if (v68)
    {
      __break(1u);
      break;
    }
  }

  v21 = v93;
  v94(&v112, v92, v90);
  v27 = v122;

  sub_1DB17181C(&v112);
  v13 = 0;
  v26 = (v27 + 40);
  v25 = -*(v27 + 2);
  v75 = -1;
  while (v25 + v75 != -1)
  {
    v28 = *(v27 + 2);
    if (++v75 >= v28)
    {
      goto LABEL_76;
    }

    sub_1DB164980(v26, v109);
    v76 = v110;
    v77 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    v105 = v140;
    v106 = v141;
    v101 = v136;
    v102 = v137;
    v103 = v138;
    v104 = v139;
    v97 = v132;
    v98 = v133;
    v99 = v134;
    v100 = v135;
    v107 = v142;
    v108 = v7;
    v21 = sub_1DB1705CC(&v97, v76, v77);
    if (v78)
    {

      v79 = v109;
      goto LABEL_73;
    }

    v26 += 48;
    __swift_destroy_boxed_opaque_existential_1(v109);
    v68 = __OFADD__(v13, v21);
    v13 += v21;
    if (v68)
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v83 = v66 + v24;
  if (__OFADD__(v66, v24))
  {
    __break(1u);
  }

  else
  {
    v21 = v83 + v13;
    if (!__OFADD__(v83, v13))
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB17127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DB1712D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DB171318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB171370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB1713C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DB171408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB171468(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB1714F0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
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
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_1DB171648(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1DB171870()
{
  result = qword_1ECC27CF8;
  if (!qword_1ECC27CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27CF8);
  }

  return result;
}

uint64_t sub_1DB1718C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 4 < 4 || a4 == 0)
  {
  }

  return result;
}

void sub_1DB1718E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_1DB171928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t Expression.excluded.getter@<X0>(void *x8_0@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];

  MEMORY[0x1E1283490](v4, v5);

  return Expression.init(_:_:)(0x6564756C63786522, 0xEB000000002E2264, v6, x8_0);
}

Swift::Bool __swiftcall Connection.tableExists(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  type metadata accessor for SchemaReader();
  *(swift_initStackObject() + 16) = v1;

  v4 = sub_1DB26E840();
  swift_setDeallocating();

  v5 = (v4 + 40);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    if (*(v5 - 1) != countAndFlagsBits || *v5 != object)
    {
      v5 += 4;
      if ((sub_1DB2BB924() & 1) == 0)
      {
        continue;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t static Connection.releaseMemory()()
{
  if (qword_1EE13F2E0 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v0 = v7;
  v1 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB2BCC40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB2BCC40;
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = 0xD000000000000017;
  v5[1] = 0x80000001DB2D46A0;
  *(v3 + 48) = 0u;
  *(v3 + 32) = 0u;
  sub_1DB156864(v5, v3 + 32);
  *(v3 + 64) = 0;
  *(v2 + 32) = v3;
  Logger.info(_:)(v2, v0, v1);

  __swift_destroy_boxed_opaque_existential_1(v6);
  sqlite3_soft_heap_limit64(0);
  return sqlite3_release_memory(0x7FFFFFFF);
}

uint64_t sub_1DB171C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a3;
  v7 = *(a2 + 48);

  return v7(63, 0xE100000000000000, v6, a1, a2);
}

uint64_t static Blob.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECC26BE0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECC27D20;
}

uint64_t QueryType.descoped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 8) + 16);
  v159 = a3;
  v6();
  v7 = *(a2 + 16);
  v160 = a1;
  v161 = a2;
  v7(&v201, a1, a2);
  v200[0] = *(&v201 + 1);
  *(v200 + 3) = HIDWORD(v201);
  v8 = v202;
  v198 = v209;
  v199 = v210;
  v149 = v212;
  v150 = v211;
  v147 = v214;
  v148 = v213;
  v197 = v217;
  v196 = v216;
  *(v195 + 3) = *&v220[3];
  v195[0] = *v220;
  v156 = v215;
  v157 = v221;
  v158 = v201;
  v9 = *(v202 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v154 = v204;
    v155 = v206;
    *&v162 = v207;
    sub_1DB1754EC(&v201, &v173);
    v186[0] = v10;
    sub_1DB1384B0(0, v9, 0);
    v164 = v186[0];
    v153 = v8;
    v11 = v8 + 32;
    do
    {
      sub_1DB164980(v11, &v168);
      v163 = v169;
      v12 = v169;
      v13 = __swift_project_boxed_opaque_existential_1(&v168, v169);
      v14 = *(v12 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = *(v14 + 16);
      v16(&v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(&v190, &v173);
        v17 = *(&v174 + 1);
        v18 = v175;
        __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
        v19 = *(v18 + 56);
        *(&v189[1] + 1) = v17;
        *&v189[2] = v18;
        __swift_allocate_boxed_opaque_existential_0(v189);
        v19(v17, v18);
        v20 = *(&v189[1] + 1);
        v21 = *&v189[2];
        v22 = __swift_project_boxed_opaque_existential_1(v189, *(&v189[1] + 1));
        *(&v191[0] + 1) = v20;
        *&v191[1] = *(v21 + 8);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v190);
        (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v22, v20);
        __swift_destroy_boxed_opaque_existential_1(v189);
        __swift_destroy_boxed_opaque_existential_1(&v173);
      }

      else
      {
        v190 = 0u;
        memset(v191, 0, 24);
        sub_1DB167D94(&v190);
        *(v191 + 8) = v163;
        v24 = __swift_allocate_boxed_opaque_existential_0(&v190);
        v16(v24, v13, v12);
      }

      sub_1DB1355D0(&v190, &v173);
      __swift_destroy_boxed_opaque_existential_1(&v168);
      v186[0] = v164;
      v26 = *(v164 + 16);
      v25 = *(v164 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DB1384B0((v25 > 1), v26 + 1, 1);
      }

      v27 = *(&v174 + 1);
      v28 = v175;
      v29 = __swift_mutable_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
      MEMORY[0x1EEE9AC00](v29);
      v31 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31);
      sub_1DB16412C(v26, v31, v186, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(&v173);
      v164 = v186[0];
      v11 += 40;
      --v9;
    }

    while (v9);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DB1754EC(&v201, &v173);
    v164 = MEMORY[0x1E69E7CC0];
  }

  v33 = v208;

  v34 = v204;
  v152 = v205;
  v153 = v203;
  v154 = v206;

  v155 = v34;

  v35 = *(v33 + 16);
  if (v35)
  {
    v194 = v10;
    sub_1DB138660(0, v35, 0);
    v36 = v194;
    v151 = v33;
    v37 = v33 + 32;
    do
    {
      sub_1DB175548(v37, &v168);
      LODWORD(v163) = v168;
      v38 = *(&v169 + 1);
      v39 = v170;
      __swift_project_boxed_opaque_existential_1(&v168 + 1, *(&v169 + 1));
      v40 = *(v39 + 56);
      *(&v174 + 1) = v38;
      *&v175 = v39;
      __swift_allocate_boxed_opaque_existential_0(&v173);
      v40(v38, v39);
      v162 = v172;
      v41 = v172;
      v42 = __swift_project_boxed_opaque_existential_1(v171, v172);
      v43 = *(v41 - 8);
      MEMORY[0x1EEE9AC00](v42);
      v45 = *(v43 + 16);
      v45(&v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
      if (swift_dynamicCast())
      {
        sub_1DB1355D0(v189, v186);
        v46 = v187;
        v47 = v188;
        __swift_project_boxed_opaque_existential_1(v186, v187);
        v48 = *(v47 + 56);
        v166 = v46;
        v167 = v47;
        __swift_allocate_boxed_opaque_existential_0(v165);
        v48(v46, v47);
        v49 = v166;
        v50 = v167;
        v51 = __swift_project_boxed_opaque_existential_1(v165, v166);
        *(&v189[1] + 1) = v49;
        *&v189[2] = *(v50 + 8);
        v52 = __swift_allocate_boxed_opaque_existential_0(v189);
        (*(*(v49 - 8) + 16))(v52, v51, v49);
        __swift_destroy_boxed_opaque_existential_1(v165);
        __swift_destroy_boxed_opaque_existential_1(v186);
      }

      else
      {
        memset(v189, 0, 40);
        sub_1DB167D94(v189);
        *(&v189[1] + 8) = v162;
        v53 = __swift_allocate_boxed_opaque_existential_0(v189);
        v45(v53, v42, v41);
      }

      LOBYTE(v190) = v163;
      sub_1DB1355D0(&v173, &v190 + 8);
      sub_1DB1355D0(v189, v192);
      v175 = v191[1];
      v176 = v192[0];
      v177[0] = v192[1];
      *&v177[1] = v193;
      v173 = v190;
      v174 = v191[0];
      sub_1DB1755A4(&v168);
      v54 = v36;
      v194 = v36;
      v56 = *(v36 + 16);
      v55 = *(v36 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1DB138660((v55 > 1), v56 + 1, 1);
        v54 = v194;
      }

      *(v54 + 16) = v56 + 1;
      v36 = v54;
      v57 = v54 + 88 * v56;
      v58 = v174;
      *(v57 + 32) = v173;
      *(v57 + 48) = v58;
      v59 = v175;
      v60 = v176;
      v61 = v177[0];
      *(v57 + 112) = *&v177[1];
      *(v57 + 80) = v60;
      *(v57 + 96) = v61;
      *(v57 + 64) = v59;
      v37 += 88;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v62 = v211;
  v151 = v36;
  v145 = v213;
  v146 = v212;
  v144 = v214;
  if (v211)
  {
    v63 = *(v211 + 16);
    if (v63)
    {
      sub_1DB1757B0(v212, v213, v214);
      v186[0] = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v63, 0);
      *&v163 = v186[0];
      v64 = v62 + 32;
      do
      {
        sub_1DB164980(v64, &v168);
        v162 = v169;
        v65 = v169;
        v66 = __swift_project_boxed_opaque_existential_1(&v168, v169);
        v67 = *(v65 - 8);
        MEMORY[0x1EEE9AC00](v66);
        v69 = *(v67 + 16);
        v69(&v144 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v66, v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
        if (swift_dynamicCast())
        {
          sub_1DB1355D0(&v190, &v173);
          v70 = *(&v174 + 1);
          v71 = v175;
          __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
          v72 = *(v71 + 56);
          *(&v189[1] + 1) = v70;
          *&v189[2] = v71;
          __swift_allocate_boxed_opaque_existential_0(v189);
          v72(v70, v71);
          v73 = *(&v189[1] + 1);
          v74 = *&v189[2];
          v75 = __swift_project_boxed_opaque_existential_1(v189, *(&v189[1] + 1));
          *(&v191[0] + 1) = v73;
          *&v191[1] = *(v74 + 8);
          v76 = __swift_allocate_boxed_opaque_existential_0(&v190);
          (*(*(v73 - 8) + 16))(v76, v75, v73);
          __swift_destroy_boxed_opaque_existential_1(v189);
          __swift_destroy_boxed_opaque_existential_1(&v173);
        }

        else
        {
          v190 = 0u;
          memset(v191, 0, 24);
          sub_1DB167D94(&v190);
          *(v191 + 8) = v162;
          v77 = __swift_allocate_boxed_opaque_existential_0(&v190);
          v69(v77, v66, v65);
        }

        sub_1DB1355D0(&v190, &v173);
        __swift_destroy_boxed_opaque_existential_1(&v168);
        v186[0] = v163;
        v79 = *(v163 + 16);
        v78 = *(v163 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1DB1384B0((v78 > 1), v79 + 1, 1);
        }

        v80 = *(&v174 + 1);
        v81 = v175;
        v82 = __swift_mutable_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
        MEMORY[0x1EEE9AC00](v82);
        v84 = &v144 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v85 + 16))(v84);
        sub_1DB16412C(v79, v84, v186, v80, v81);
        __swift_destroy_boxed_opaque_existential_1(&v173);
        *&v163 = v186[0];
        v64 += 40;
        --v63;
      }

      while (v63);
    }

    else
    {
      sub_1DB1757B0(v212, v213, v214);
      *&v163 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    *&v163 = 0;
  }

  sub_1DB1755F8(v150, v149, v148, v147);
  v86 = v215;
  if (v215)
  {
    v87 = *(v215 + 16);
    v88 = MEMORY[0x1E69E7CC0];
    if (v87)
    {
      v186[0] = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v87, 0);
      v88 = v186[0];
      v89 = v86 + 32;
      do
      {
        sub_1DB164980(v89, &v168);
        v162 = v169;
        v90 = v169;
        v91 = __swift_project_boxed_opaque_existential_1(&v168, v169);
        v92 = *(v90 - 8);
        MEMORY[0x1EEE9AC00](v91);
        v94 = *(v92 + 16);
        v94(&v144 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0), v91, v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
        if (swift_dynamicCast())
        {
          sub_1DB1355D0(&v190, &v173);
          v95 = *(&v174 + 1);
          v96 = v175;
          __swift_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
          v97 = *(v96 + 56);
          *(&v189[1] + 1) = v95;
          *&v189[2] = v96;
          __swift_allocate_boxed_opaque_existential_0(v189);
          v97(v95, v96);
          v98 = *(&v189[1] + 1);
          v99 = *&v189[2];
          v100 = __swift_project_boxed_opaque_existential_1(v189, *(&v189[1] + 1));
          *(&v191[0] + 1) = v98;
          *&v191[1] = *(v99 + 8);
          v101 = __swift_allocate_boxed_opaque_existential_0(&v190);
          (*(*(v98 - 8) + 16))(v101, v100, v98);
          __swift_destroy_boxed_opaque_existential_1(v189);
          __swift_destroy_boxed_opaque_existential_1(&v173);
        }

        else
        {
          v190 = 0u;
          memset(v191, 0, 24);
          sub_1DB167D94(&v190);
          *(v191 + 8) = v162;
          v102 = __swift_allocate_boxed_opaque_existential_0(&v190);
          v94(v102, v91, v90);
        }

        sub_1DB1355D0(&v190, &v173);
        __swift_destroy_boxed_opaque_existential_1(&v168);
        v186[0] = v88;
        v104 = *(v88 + 16);
        v103 = *(v88 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_1DB1384B0((v103 > 1), v104 + 1, 1);
        }

        v105 = *(&v174 + 1);
        v106 = v175;
        v107 = __swift_mutable_project_boxed_opaque_existential_1(&v173, *(&v174 + 1));
        MEMORY[0x1EEE9AC00](v107);
        v109 = &v144 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v110 + 16))(v109);
        sub_1DB16412C(v104, v109, v186, v105, v106);
        __swift_destroy_boxed_opaque_existential_1(&v173);
        v88 = v186[0];
        v89 += 40;
        --v87;
      }

      while (v87);
    }

    *&v162 = v88;
  }

  else
  {
    *&v162 = 0;
  }

  v111 = v218;

  v112 = *(v111 + 16);
  if (v112)
  {
    *&v190 = MEMORY[0x1E69E7CC0];
    sub_1DB138640(0, v112, 0);
    v113 = v190;
    v156 = v111;
    v114 = v111 + 32;
    do
    {
      sub_1DB175650(v114, &v168);
      v115 = v168;
      v117 = *(&v169 + 1);
      v116 = v170;
      __swift_project_boxed_opaque_existential_1(&v168 + 1, *(&v169 + 1));
      v118 = *(v116 + 56);
      *&v175 = v117;
      *(&v175 + 1) = v116;
      __swift_allocate_boxed_opaque_existential_0(&v173 + 1);
      v118(v117, v116);
      LOBYTE(v173) = v115;
      sub_1DB1756AC(&v168);
      *&v190 = v113;
      v120 = *(v113 + 16);
      v119 = *(v113 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_1DB138640((v119 > 1), v120 + 1, 1);
        v113 = v190;
      }

      *(v113 + 16) = v120 + 1;
      v121 = (v113 + 48 * v120);
      v122 = v173;
      v123 = v175;
      v121[3] = v174;
      v121[4] = v123;
      v121[2] = v122;
      v114 += 48;
      --v112;
    }

    while (v112);
  }

  else
  {

    v113 = MEMORY[0x1E69E7CC0];
  }

  v124 = v219;
  v125 = v221;
  v126 = *(v221 + 16);
  if (v126)
  {
    *&v190 = MEMORY[0x1E69E7CC0];
    sub_1DB138620(0, v126, 0);
    v127 = v190;
    v128 = v125 + 32;
    do
    {
      sub_1DB175700(v128, &v168);
      sub_1DB1734CC(&v168, &v173);
      sub_1DB17575C(&v168);
      *&v190 = v127;
      v130 = *(v127 + 16);
      v129 = *(v127 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_1DB138620((v129 > 1), v130 + 1, 1);
        v127 = v190;
      }

      *(v127 + 16) = v130 + 1;
      v131 = (v127 + 240 * v130);
      v132 = v173;
      v133 = v175;
      v131[3] = v174;
      v131[4] = v133;
      v131[2] = v132;
      v134 = v176;
      v135 = v177[0];
      v136 = v178;
      v131[7] = v177[1];
      v131[8] = v136;
      v131[5] = v134;
      v131[6] = v135;
      v137 = v179;
      v138 = v180[0];
      v139 = v181;
      v131[11] = v180[1];
      v131[12] = v139;
      v131[9] = v137;
      v131[10] = v138;
      v140 = v182;
      v141 = v183;
      v142 = v185;
      v131[15] = v184;
      v131[16] = v142;
      v131[13] = v140;
      v131[14] = v141;
      v128 += 240;
      --v126;
    }

    while (v126);
    sub_1DB17181C(&v201);
  }

  else
  {
    sub_1DB17181C(&v201);
    v127 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v173) = v158;
  *(&v173 + 1) = v200[0];
  DWORD1(v173) = *(v200 + 3);
  *(&v173 + 1) = v164;
  *&v174 = v153;
  *(&v174 + 1) = v155;
  *&v175 = v152;
  *(&v175 + 1) = v154;
  v176 = 0uLL;
  *&v177[0] = v151;
  *(v177 + 8) = v198;
  *(&v177[1] + 1) = v199;
  *&v178 = v163;
  *(&v178 + 1) = v146;
  *&v179 = v145;
  *(&v179 + 1) = v144;
  *&v180[0] = v162;
  *(v180 + 8) = v196;
  *(&v180[1] + 1) = v197;
  *&v181 = v113;
  BYTE8(v181) = v124;
  HIDWORD(v181) = *(v195 + 3);
  *(&v181 + 9) = v195[0];
  *&v182 = v127;
  return (*(v161 + 24))(&v173, v160);
}

uint64_t sub_1DB173060@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  __swift_project_boxed_opaque_existential_1(a1 + 1, v5);
  v7 = *(v6 + 56);
  v31 = v5;
  v32 = v6;
  __swift_allocate_boxed_opaque_existential_0(&v30);
  v7(v5, v6);
  v22 = *(a1 + 72);
  v8 = v22;
  v9 = __swift_project_boxed_opaque_existential_1(a1 + 6, v22);
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(v10 + 16);
  v12(&v23[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(v29, v26);
    v13 = v27;
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v15 = *(v14 + 56);
    v24 = v13;
    v25 = v14;
    __swift_allocate_boxed_opaque_existential_0(v23);
    v15(v13, v14);
    v16 = v24;
    v17 = v25;
    v18 = __swift_project_boxed_opaque_existential_1(v23, v24);
    *&v29[24] = v16;
    *&v29[32] = *(v17 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v18, v16);
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    sub_1DB167D94(v29);
    *&v29[24] = v22;
    v20 = __swift_allocate_boxed_opaque_existential_0(v29);
    v12(v20, v9, v8);
  }

  *a2 = v4;
  sub_1DB1355D0(&v30, (a2 + 8));
  return sub_1DB1355D0(v29, (a2 + 48));
}

uint64_t sub_1DB1732D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = *(a1 + 24);
  v3 = v17;
  v4 = __swift_project_boxed_opaque_existential_1(a1, v17);
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v5 + 16);
  v7((&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v4, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(&v18, v21);
    v8 = v22;
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v10 = *(v9 + 56);
    *(&v19 + 1) = v8;
    v20 = v9;
    __swift_allocate_boxed_opaque_existential_0(&v18);
    v10(v8, v9);
    v11 = *(&v19 + 1);
    v12 = v20;
    v13 = __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    a2[3] = v11;
    a2[4] = *(v12 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v13, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1DB167D94(&v18);
    *(a2 + 3) = v17;
    v16 = __swift_allocate_boxed_opaque_existential_0(a2);
    return v7(v16, v4, v3);
  }
}

double sub_1DB1734CC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v2 = a1[9];
  v168 = a1[8];
  v169 = v2;
  v170 = a1[10];
  v3 = a1[5];
  v5 = a1[2];
  v4 = a1[3];
  v164 = a1[4];
  v165 = v3;
  v6 = a1[7];
  v166 = a1[6];
  v167 = v6;
  v7 = a1[1];
  v160 = *a1;
  v161 = v7;
  v171 = *(a1 + 22);
  v162 = v5;
  v163 = v4;
  v159[0] = *(a1 + 1);
  *(v159 + 3) = *(a1 + 1);
  v8 = *(&v160 + 1);
  v157 = *(a1 + 72);
  v158 = *(a1 + 11);
  v117 = v167;
  v118 = *(&v166 + 1);
  v116 = *(&v167 + 1);
  v9 = *(a1 + 136);
  v156 = *(a1 + 19);
  v155 = v9;
  *(v154 + 3) = *(a1 + 43);
  v133 = a1;
  v154[0] = *(a1 + 169);
  v119 = v168;
  v124 = v166;
  v125 = v171;
  v131 = v160;
  v10 = *(*(&v160 + 1) + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v129 = *(&v7 + 1);
    v130 = *(&v5 + 1);
    sub_1DB1754EC(&v160, &v138);
    v153 = v11;
    sub_1DB1384B0(0, v10, 0);
    v12 = v153;
    v13 = v8 + 32;
    do
    {
      sub_1DB164980(v13, &v134);
      sub_1DB1732D4(&v134, &v138);
      __swift_destroy_boxed_opaque_existential_1(&v134);
      v153 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB1384B0((v14 > 1), v15 + 1, 1);
      }

      v16 = *(&v139 + 1);
      v17 = v140;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(&v138, *(&v139 + 1));
      MEMORY[0x1EEE9AC00](v18);
      v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20);
      sub_1DB16412C(v15, v20, &v153, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(&v138);
      v12 = v153;
      v13 += 40;
      --v10;
    }

    while (v10);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1DB1754EC(&v160, &v138);
    v12 = MEMORY[0x1E69E7CC0];
  }

  v130 = v12;
  v22 = v164;

  v23 = *(&v161 + 1);
  v126 = v162;
  v127 = v161;
  v128 = *(&v162 + 1);

  v129 = v23;

  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = v11;
    v153 = v11;
    sub_1DB138660(0, v24, 0);
    v26 = v153;
    v27 = v22 + 32;
    do
    {
      sub_1DB175548(v27, &v134);
      sub_1DB173060(&v134, &v138);
      sub_1DB1755A4(&v134);
      v153 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DB138660((v28 > 1), v29 + 1, 1);
        v26 = v153;
      }

      *(v26 + 16) = v29 + 1;
      v30 = v26 + 88 * v29;
      v31 = v139;
      *(v30 + 32) = v138;
      *(v30 + 48) = v31;
      v32 = v140;
      v33 = v141;
      v34 = v142;
      *(v30 + 112) = v143;
      *(v30 + 80) = v33;
      *(v30 + 96) = v34;
      *(v30 + 64) = v32;
      v27 += 88;
      --v24;
    }

    while (v24);
  }

  else
  {
    v25 = v11;

    v26 = MEMORY[0x1E69E7CC0];
  }

  v35 = v166;
  v122 = v167;
  v123 = *(&v166 + 1);
  v121 = *(&v167 + 1);
  if (v166)
  {
    v36 = *(v166 + 16);
    if (v36)
    {
      sub_1DB1757B0(*(&v166 + 1), v167, *(&v167 + 1));
      v37 = v25;
      v153 = v25;
      sub_1DB1384B0(0, v36, 0);
      v38 = v153;
      v39 = v35 + 32;
      do
      {
        sub_1DB164980(v39, &v134);
        sub_1DB1732D4(&v134, &v138);
        __swift_destroy_boxed_opaque_existential_1(&v134);
        v153 = v38;
        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1DB1384B0((v40 > 1), v41 + 1, 1);
        }

        v42 = *(&v139 + 1);
        v43 = v140;
        v44 = __swift_mutable_project_boxed_opaque_existential_1(&v138, *(&v139 + 1));
        MEMORY[0x1EEE9AC00](v44);
        v46 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v46);
        sub_1DB16412C(v41, v46, &v153, v42, v43);
        __swift_destroy_boxed_opaque_existential_1(&v138);
        v38 = v153;
        v39 += 40;
        --v36;
      }

      while (v36);
      v25 = v37;
    }

    else
    {
      sub_1DB1757B0(*(&v166 + 1), v167, *(&v167 + 1));
      v38 = MEMORY[0x1E69E7CC0];
    }

    v120 = v38;
  }

  else
  {
    v120 = 0;
  }

  sub_1DB1755F8(v124, v118, v117, v116);
  v48 = v168;
  if (!v168)
  {
    v50 = 0;
    goto LABEL_33;
  }

  v49 = *(v168 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (!v49)
  {
LABEL_33:
    v52 = v25;
    goto LABEL_34;
  }

  v153 = MEMORY[0x1E69E7CC0];
  sub_1DB1384B0(0, v49, 0);
  v50 = v153;
  v51 = v48 + 32;
  v52 = v25;
  do
  {
    sub_1DB164980(v51, &v134);
    sub_1DB1732D4(&v134, &v138);
    __swift_destroy_boxed_opaque_existential_1(&v134);
    v153 = v50;
    v54 = *(v50 + 16);
    v53 = *(v50 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1DB1384B0((v53 > 1), v54 + 1, 1);
    }

    v55 = *(&v139 + 1);
    v56 = v140;
    v57 = __swift_mutable_project_boxed_opaque_existential_1(&v138, *(&v139 + 1));
    MEMORY[0x1EEE9AC00](v57);
    v59 = &v116 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59);
    sub_1DB16412C(v54, v59, &v153, v55, v56);
    __swift_destroy_boxed_opaque_existential_1(&v138);
    v50 = v153;
    v51 += 40;
    --v49;
  }

  while (v49);
LABEL_34:
  v118 = v50;
  v124 = v26;
  v61 = v170;

  v62 = *(v61 + 16);
  if (v62)
  {
    v153 = v52;
    sub_1DB138640(0, v62, 0);
    v63 = v153;
    v119 = v61;
    v64 = v61 + 32;
    do
    {
      sub_1DB175650(v64, &v134);
      v65 = v134;
      v67 = v136;
      v66 = v137;
      __swift_project_boxed_opaque_existential_1(v135, v136);
      v68 = *(v66 + 56);
      *&v140 = v67;
      *(&v140 + 1) = v66;
      __swift_allocate_boxed_opaque_existential_0(&v138 + 1);
      v68(v67, v66);
      LOBYTE(v138) = v65;
      sub_1DB1756AC(&v134);
      v153 = v63;
      v70 = *(v63 + 16);
      v69 = *(v63 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1DB138640((v69 > 1), v70 + 1, 1);
        v63 = v153;
      }

      *(v63 + 16) = v70 + 1;
      v71 = (v63 + 48 * v70);
      v72 = v138;
      v73 = v140;
      v71[3] = v139;
      v71[4] = v73;
      v71[2] = v72;
      v64 += 48;
      --v62;
    }

    while (v62);
  }

  else
  {

    v63 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v119) = BYTE8(v170);
  v74 = v171;
  v75 = *(v171 + 16);
  v76 = MEMORY[0x1E69E7CC0];
  if (v75)
  {
    v153 = MEMORY[0x1E69E7CC0];
    sub_1DB138620(0, v75, 0);
    v76 = v153;
    v77 = v74 + 32;
    do
    {
      sub_1DB175700(v77, &v134);
      sub_1DB1734CC(&v134, &v138);
      sub_1DB17575C(&v134);
      v153 = v76;
      v79 = *(v76 + 16);
      v78 = *(v76 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1DB138620((v78 > 1), v79 + 1, 1);
        v76 = v153;
      }

      *(v76 + 16) = v79 + 1;
      v80 = (v76 + 240 * v79);
      v81 = v138;
      v82 = v140;
      v80[3] = v139;
      v80[4] = v82;
      v80[2] = v81;
      v83 = v141;
      v84 = v142;
      v85 = v144;
      v80[7] = v143;
      v80[8] = v85;
      v80[5] = v83;
      v80[6] = v84;
      v86 = v145;
      v87 = v146;
      v88 = v148;
      v80[11] = v147;
      v80[12] = v88;
      v80[9] = v86;
      v80[10] = v87;
      v89 = v149;
      v90 = v150;
      v91 = v152;
      v80[15] = v151;
      v80[16] = v91;
      v80[13] = v89;
      v80[14] = v90;
      v77 += 240;
      --v75;
    }

    while (v75);
  }

  v92 = v133;
  v93 = *(v133 + 23);
  if (v93)
  {
    v94 = *(v93 + 16);
    v95 = MEMORY[0x1E69E7CC0];
    if (v94)
    {
      v153 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v94, 0);
      v95 = v153;
      v96 = v93 + 32;
      do
      {
        sub_1DB164980(v96, &v134);
        sub_1DB1732D4(&v134, &v138);
        __swift_destroy_boxed_opaque_existential_1(&v134);
        v153 = v95;
        v98 = *(v95 + 16);
        v97 = *(v95 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_1DB1384B0((v97 > 1), v98 + 1, 1);
        }

        v99 = *(&v139 + 1);
        v100 = v140;
        v101 = __swift_mutable_project_boxed_opaque_existential_1(&v138, *(&v139 + 1));
        MEMORY[0x1EEE9AC00](v101);
        v103 = &v116 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v104 + 16))(v103);
        sub_1DB16412C(v98, v103, &v153, v99, v100);
        __swift_destroy_boxed_opaque_existential_1(&v138);
        v95 = v153;
        v96 += 40;
        --v94;
      }

      while (v94);
      v92 = v133;
    }
  }

  else
  {
    v95 = 0;
  }

  LODWORD(v133) = *(v92 + 192);
  v105 = *(v92 + 28);
  v106 = *(v92 + 29);
  __swift_project_boxed_opaque_existential_1(v92 + 25, v105);
  v107 = *(v106 + 56);
  v108 = v132;
  *(v132 + 224) = v105;
  *(v108 + 232) = v106;
  __swift_allocate_boxed_opaque_existential_0((v108 + 200));
  v107(v105, v106);
  *v108 = v131;
  *(v108 + 1) = v159[0];
  *(v108 + 4) = *(v159 + 3);
  v109 = v127;
  *(v108 + 8) = v130;
  *(v108 + 16) = v109;
  v110 = v126;
  *(v108 + 24) = v129;
  *(v108 + 32) = v110;
  *(v108 + 40) = v128;
  *(v108 + 48) = 0;
  v111 = v124;
  *(v108 + 56) = 0;
  *(v108 + 64) = v111;
  *(v108 + 72) = v157;
  v112 = v120;
  *(v108 + 88) = v158;
  *(v108 + 96) = v112;
  v113 = v122;
  *(v108 + 104) = v123;
  *(v108 + 112) = v113;
  v114 = v118;
  *(v108 + 120) = v121;
  *(v108 + 128) = v114;
  result = *&v155;
  *(v108 + 136) = v155;
  *(v108 + 152) = v156;
  *(v108 + 160) = v63;
  *(v108 + 168) = v119;
  *(v108 + 169) = v154[0];
  *(v108 + 172) = *(v154 + 3);
  *(v108 + 176) = v76;
  *(v108 + 184) = v95;
  *(v108 + 192) = v133;
  return result;
}

double sub_1DB174094@<D0>(void (*a1)(__int128 *, __int128 *)@<X2>, void (*a2)(__int128 *)@<X3>, __int128 *a3@<X8>)
{
  v126 = a2;
  v5 = *(v3 + 144);
  v161 = *(v3 + 128);
  v162 = v5;
  v163 = *(v3 + 160);
  v6 = *(v3 + 80);
  v157 = *(v3 + 64);
  v158 = v6;
  v7 = *(v3 + 112);
  v159 = *(v3 + 96);
  v8 = v159;
  v160 = v7;
  v9 = *(v3 + 16);
  v153 = *v3;
  v154 = v9;
  v10 = *(v3 + 48);
  v11 = *(v3 + 16);
  v155 = *(v3 + 32);
  v12 = v155;
  v156 = v10;
  v13 = *(v3 + 144);
  a3[8] = *(v3 + 128);
  a3[9] = v13;
  a3[10] = *(v3 + 160);
  v14 = *(v3 + 80);
  a3[4] = *(v3 + 64);
  a3[5] = v14;
  a3[6] = v8;
  a3[7] = v7;
  *a3 = *v3;
  a3[1] = v11;
  v164 = *(v3 + 176);
  *(a3 + 22) = *(v3 + 176);
  a3[2] = v12;
  a3[3] = v10;
  v127 = a3;
  v152[0] = *(v3 + 1);
  *(v152 + 3) = *(v3 + 4);
  v15 = *(&v153 + 1);
  v150 = *(v3 + 72);
  v151 = *(v3 + 88);
  v113 = *(&v159 + 1);
  v114 = v159;
  v111 = *(&v160 + 1);
  v112 = v160;
  v16 = *(v3 + 136);
  v149 = *(v3 + 152);
  v148 = v16;
  *(v147 + 3) = *(v3 + 172);
  v147[0] = *(v3 + 169);
  v116 = v161;
  v124 = v164;
  v125 = v153;
  v17 = *(*(&v153 + 1) + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v122 = *(&v155 + 1);
    v123 = *(&v156 + 1);
    a1(&v153, &v131);
    a1(&v153, &v131);
    v146 = v18;
    sub_1DB1384B0(0, v17, 0);
    v19 = v146;
    v20 = v15 + 32;
    do
    {
      sub_1DB164980(v20, v128);
      sub_1DB1732D4(v128, &v131);
      __swift_destroy_boxed_opaque_existential_1(v128);
      v146 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB1384B0((v21 > 1), v22 + 1, 1);
      }

      v23 = *(&v132 + 1);
      v24 = v133;
      v25 = __swift_mutable_project_boxed_opaque_existential_1(&v131, *(&v132 + 1));
      MEMORY[0x1EEE9AC00](v25);
      v27 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_1DB16412C(v22, v27, &v146, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v131);
      v19 = v146;
      v20 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {
    a1(&v153, &v131);
    a1(&v153, &v131);
    v19 = MEMORY[0x1E69E7CC0];
  }

  v29 = v157;

  v30 = *(&v154 + 1);
  v120 = v155;
  v121 = v154;
  v122 = *(&v155 + 1);

  v123 = v30;

  v31 = *(v29 + 16);
  if (v31)
  {
    v146 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v31, 0);
    v32 = v146;
    v33 = v29 + 32;
    do
    {
      sub_1DB175548(v33, v128);
      sub_1DB173060(v128, &v131);
      sub_1DB1755A4(v128);
      v146 = v32;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1DB138660((v34 > 1), v35 + 1, 1);
        v32 = v146;
      }

      *(v32 + 16) = v35 + 1;
      v36 = v32 + 88 * v35;
      v37 = v132;
      *(v36 + 32) = v131;
      *(v36 + 48) = v37;
      v38 = v133;
      v39 = v134;
      v40 = v135;
      *(v36 + 112) = v136;
      *(v36 + 80) = v39;
      *(v36 + 96) = v40;
      *(v36 + 64) = v38;
      v33 += 88;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v41 = v159;
  v118 = v160;
  v119 = *(&v159 + 1);
  v117 = *(&v160 + 1);
  if (v159)
  {
    v42 = *(v159 + 16);
    if (v42)
    {
      sub_1DB1757B0(*(&v159 + 1), v160, *(&v160 + 1));
      v146 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v42, 0);
      v43 = v146;
      v44 = v41 + 32;
      do
      {
        sub_1DB164980(v44, v128);
        sub_1DB1732D4(v128, &v131);
        __swift_destroy_boxed_opaque_existential_1(v128);
        v146 = v43;
        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1DB1384B0((v45 > 1), v46 + 1, 1);
        }

        v47 = *(&v132 + 1);
        v48 = v133;
        v49 = __swift_mutable_project_boxed_opaque_existential_1(&v131, *(&v132 + 1));
        MEMORY[0x1EEE9AC00](v49);
        v51 = &v110 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v52 + 16))(v51);
        sub_1DB16412C(v46, v51, &v146, v47, v48);
        __swift_destroy_boxed_opaque_existential_1(&v131);
        v43 = v146;
        v44 += 40;
        --v42;
      }

      while (v42);
    }

    else
    {
      sub_1DB1757B0(*(&v159 + 1), v160, *(&v160 + 1));
      v43 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v43 = 0;
  }

  v115 = v43;
  sub_1DB1755F8(v114, v113, v112, v111);
  v53 = v161;
  if (v161)
  {
    v54 = *(v161 + 16);
    v55 = MEMORY[0x1E69E7CC0];
    if (v54)
    {
      v146 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v54, 0);
      v55 = v146;
      v56 = v53 + 32;
      do
      {
        sub_1DB164980(v56, v128);
        sub_1DB1732D4(v128, &v131);
        __swift_destroy_boxed_opaque_existential_1(v128);
        v146 = v55;
        v58 = *(v55 + 16);
        v57 = *(v55 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1DB1384B0((v57 > 1), v58 + 1, 1);
        }

        v59 = *(&v132 + 1);
        v60 = v133;
        v61 = __swift_mutable_project_boxed_opaque_existential_1(&v131, *(&v132 + 1));
        MEMORY[0x1EEE9AC00](v61);
        v63 = &v110 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v64 + 16))(v63);
        sub_1DB16412C(v58, v63, &v146, v59, v60);
        __swift_destroy_boxed_opaque_existential_1(&v131);
        v55 = v146;
        v56 += 40;
        --v54;
      }

      while (v54);
    }
  }

  else
  {
    v55 = 0;
  }

  v114 = v55;
  v65 = v163;

  v66 = *(v65 + 16);
  if (v66)
  {
    v113 = v32;
    v116 = v19;
    v146 = MEMORY[0x1E69E7CC0];
    sub_1DB138640(0, v66, 0);
    v67 = v146;
    v112 = v65;
    v68 = v65 + 32;
    do
    {
      sub_1DB175650(v68, v128);
      v69 = v128[0];
      v70 = v129;
      v71 = v130;
      __swift_project_boxed_opaque_existential_1(v128 + 1, v129);
      v72 = *(v71 + 56);
      *&v133 = v70;
      *(&v133 + 1) = v71;
      __swift_allocate_boxed_opaque_existential_0(&v131 + 1);
      v72(v70, v71);
      LOBYTE(v131) = v69;
      sub_1DB1756AC(v128);
      v146 = v67;
      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1DB138640((v73 > 1), v74 + 1, 1);
        v67 = v146;
      }

      *(v67 + 16) = v74 + 1;
      v75 = (v67 + 48 * v74);
      v76 = v131;
      v77 = v133;
      v75[3] = v132;
      v75[4] = v77;
      v75[2] = v76;
      v68 += 48;
      --v66;
    }

    while (v66);

    v19 = v116;
    v32 = v113;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  v78 = BYTE8(v163);
  v79 = v164;
  v80 = *(v164 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    LODWORD(v116) = BYTE8(v163);
    v146 = MEMORY[0x1E69E7CC0];
    sub_1DB138620(0, v80, 0);
    v81 = v146;
    v82 = v79 + 32;
    do
    {
      sub_1DB175700(v82, v128);
      sub_1DB1734CC(v128, &v131);
      sub_1DB17575C(v128);
      v146 = v81;
      v84 = *(v81 + 16);
      v83 = *(v81 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_1DB138620((v83 > 1), v84 + 1, 1);
        v81 = v146;
      }

      *(v81 + 16) = v84 + 1;
      v85 = (v81 + 240 * v84);
      v86 = v131;
      v87 = v133;
      v85[3] = v132;
      v85[4] = v87;
      v85[2] = v86;
      v88 = v134;
      v89 = v135;
      v90 = v137;
      v85[7] = v136;
      v85[8] = v90;
      v85[5] = v88;
      v85[6] = v89;
      v91 = v138;
      v92 = v139;
      v93 = v141;
      v85[11] = v140;
      v85[12] = v93;
      v85[9] = v91;
      v85[10] = v92;
      v94 = v142;
      v95 = v143;
      v96 = v145;
      v85[15] = v144;
      v85[16] = v96;
      v85[13] = v94;
      v85[14] = v95;
      v82 += 240;
      --v80;
    }

    while (v80);
    v78 = v116;
  }

  v97 = v127;
  v98 = v127[9];
  v139 = v127[8];
  v140 = v98;
  v141 = v127[10];
  *&v142 = *(v127 + 22);
  v99 = v127[5];
  v135 = v127[4];
  v136 = v99;
  v100 = v127[7];
  v137 = v127[6];
  v138 = v100;
  v101 = v127[1];
  v131 = *v127;
  v132 = v101;
  v102 = v127[3];
  v133 = v127[2];
  v134 = v102;
  v126(&v131);
  *v97 = v125;
  *(v97 + 1) = v152[0];
  *(v97 + 1) = *(v152 + 3);
  v103 = v121;
  *(v97 + 1) = v19;
  *(v97 + 2) = v103;
  v104 = v120;
  *(v97 + 3) = v123;
  *(v97 + 4) = v104;
  *(v97 + 5) = v122;
  *(v97 + 6) = 0;
  *(v97 + 7) = 0;
  *(v97 + 8) = v32;
  *(v97 + 72) = v150;
  v105 = v115;
  *(v97 + 11) = v151;
  *(v97 + 12) = v105;
  v106 = v118;
  *(v97 + 13) = v119;
  *(v97 + 14) = v106;
  v107 = v114;
  *(v97 + 15) = v117;
  *(v97 + 16) = v107;
  v108 = v149;
  result = *&v148;
  *(v97 + 136) = v148;
  *(v97 + 19) = v108;
  *(v97 + 20) = v67;
  *(v97 + 168) = v78;
  *(v97 + 43) = *(v147 + 3);
  *(v97 + 169) = v147[0];
  *(v97 + 22) = v81;
  return result;
}

double sub_1DB174AB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[7];
  v150 = v2[8];
  v151 = v4;
  v6 = v2[9];
  v152 = v2[10];
  v7 = v2[5];
  v9 = v2[3];
  v146 = v2[4];
  v8 = v146;
  v147 = v7;
  v10 = v2[5];
  v11 = v2[7];
  v148 = v2[6];
  v12 = v148;
  v149 = v11;
  v13 = v2[1];
  v143[0] = *v2;
  v143[1] = v13;
  v14 = v2[3];
  v16 = *v2;
  v15 = v2[1];
  v144 = v2[2];
  v17 = v144;
  v145 = v14;
  *(a2 + 128) = v150;
  *(a2 + 144) = v6;
  *(a2 + 160) = v2[10];
  *(a2 + 64) = v8;
  *(a2 + 80) = v10;
  *(a2 + 96) = v12;
  *(a2 + 112) = v5;
  *a2 = v16;
  *(a2 + 16) = v15;
  v153 = *(v2 + 22);
  *(a2 + 176) = *(v2 + 22);
  *(a2 + 32) = v17;
  *(a2 + 48) = v9;
  v118 = a2;
  ScalarQuery.clauses.getter(&v154);
  v142[0] = *v155;
  *(v142 + 3) = *&v155[3];
  v18 = v156;
  v111 = v161;
  v140 = v163;
  v141 = v164;
  v104 = v166;
  v105 = v165;
  v102 = v168;
  v103 = v167;
  v109 = v160;
  v110 = v169;
  v139 = v171;
  v138 = v170;
  *(v137 + 3) = *&v174[3];
  v137[0] = *v174;
  v116 = v175;
  v117 = v154;
  v19 = *(v156 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v119 = a1;
  if (v19)
  {
    (*(*(a1 - 8) + 16))(&v123, v143, a1);
    sub_1DB1754EC(&v154, &v123);
    v136 = v20;
    sub_1DB1384B0(0, v19, 0);
    v21 = v136;
    v22 = v18 + 32;
    do
    {
      sub_1DB164980(v22, v120);
      sub_1DB1732D4(v120, &v123);
      __swift_destroy_boxed_opaque_existential_1(v120);
      v136 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DB1384B0((v23 > 1), v24 + 1, 1);
      }

      v25 = *(&v124 + 1);
      v26 = v125;
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
      MEMORY[0x1EEE9AC00](v27);
      v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v29);
      sub_1DB16412C(v24, v29, &v136, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v123);
      v21 = v136;
      v22 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
    (*(*(a1 - 8) + 16))(&v123, v143, a1);
    sub_1DB1754EC(&v154, &v123);
    v21 = MEMORY[0x1E69E7CC0];
  }

  v31 = v162;

  v32 = v158;
  v112 = v159;
  v113 = v157;
  v114 = v160;

  v115 = v32;

  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v136 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v33, 0);
    v35 = v136;
    v36 = v31 + 32;
    do
    {
      sub_1DB175548(v36, v120);
      sub_1DB173060(v120, &v123);
      sub_1DB1755A4(v120);
      v136 = v35;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1DB138660((v37 > 1), v38 + 1, 1);
        v35 = v136;
      }

      *(v35 + 16) = v38 + 1;
      v39 = v35 + 88 * v38;
      v40 = v124;
      *(v39 + 32) = v123;
      *(v39 + 48) = v40;
      v41 = v125;
      v42 = v126;
      v43 = v127[0];
      *(v39 + 112) = *&v127[1];
      *(v39 + 80) = v42;
      *(v39 + 96) = v43;
      *(v39 + 64) = v41;
      v36 += 88;
      --v33;
    }

    while (v33);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
  }

  v111 = v35;
  v44 = v165;
  v108 = v167;
  v109 = v166;
  v107 = v168;
  if (v165)
  {
    v45 = *(v165 + 16);
    if (v45)
    {
      sub_1DB1757B0(v166, v167, v168);
      v136 = v34;
      sub_1DB1384B0(0, v45, 0);
      v46 = v136;
      v47 = v44 + 32;
      do
      {
        sub_1DB164980(v47, v120);
        sub_1DB1732D4(v120, &v123);
        __swift_destroy_boxed_opaque_existential_1(v120);
        v136 = v46;
        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1DB1384B0((v48 > 1), v49 + 1, 1);
        }

        v50 = *(&v124 + 1);
        v51 = v125;
        v52 = __swift_mutable_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
        MEMORY[0x1EEE9AC00](v52);
        v54 = &v102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v54);
        sub_1DB16412C(v49, v54, &v136, v50, v51);
        __swift_destroy_boxed_opaque_existential_1(&v123);
        v46 = v136;
        v47 += 40;
        --v45;
      }

      while (v45);
    }

    else
    {
      sub_1DB1757B0(v166, v167, v168);
      v46 = MEMORY[0x1E69E7CC0];
    }

    v106 = v46;
  }

  else
  {
    v106 = 0;
  }

  sub_1DB1755F8(v105, v104, v103, v102);
  v56 = v169;
  if (v169)
  {
    v57 = *(v169 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v136 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v57, 0);
      v58 = v136;
      v59 = v56 + 32;
      do
      {
        sub_1DB164980(v59, v120);
        sub_1DB1732D4(v120, &v123);
        __swift_destroy_boxed_opaque_existential_1(v120);
        v136 = v58;
        v61 = *(v58 + 16);
        v60 = *(v58 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1DB1384B0((v60 > 1), v61 + 1, 1);
        }

        v62 = *(&v124 + 1);
        v63 = v125;
        v64 = __swift_mutable_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
        MEMORY[0x1EEE9AC00](v64);
        v66 = &v102 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v67 + 16))(v66);
        sub_1DB16412C(v61, v66, &v136, v62, v63);
        __swift_destroy_boxed_opaque_existential_1(&v123);
        v58 = v136;
        v59 += 40;
        --v57;
      }

      while (v57);
    }
  }

  else
  {
    v58 = 0;
  }

  v105 = v58;
  v68 = v172;

  v69 = *(v68 + 16);
  if (v69)
  {
    v110 = v21;
    v136 = v34;
    sub_1DB138640(0, v69, 0);
    v70 = v136;
    v104 = v68;
    v71 = v68 + 32;
    do
    {
      sub_1DB175650(v71, v120);
      v72 = v120[0];
      v73 = v121;
      v74 = v122;
      __swift_project_boxed_opaque_existential_1(v120 + 1, v121);
      v75 = *(v74 + 56);
      *&v125 = v73;
      *(&v125 + 1) = v74;
      __swift_allocate_boxed_opaque_existential_0(&v123 + 1);
      v75(v73, v74);
      LOBYTE(v123) = v72;
      sub_1DB1756AC(v120);
      v136 = v70;
      v77 = *(v70 + 16);
      v76 = *(v70 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1DB138640((v76 > 1), v77 + 1, 1);
        v70 = v136;
      }

      *(v70 + 16) = v77 + 1;
      v78 = (v70 + 48 * v77);
      v79 = v123;
      v80 = v125;
      v78[3] = v124;
      v78[4] = v80;
      v78[2] = v79;
      v71 += 48;
      --v69;
    }

    while (v69);

    v21 = v110;
    v81 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v81 = v34;

    v70 = MEMORY[0x1E69E7CC0];
  }

  v82 = v173;
  v83 = v175;
  v84 = *(v175 + 16);
  if (v84)
  {
    v136 = v81;
    sub_1DB138620(0, v84, 0);
    v85 = v136;
    v86 = v83 + 32;
    do
    {
      sub_1DB175700(v86, v120);
      sub_1DB1734CC(v120, &v123);
      sub_1DB17575C(v120);
      v136 = v85;
      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1DB138620((v87 > 1), v88 + 1, 1);
        v85 = v136;
      }

      *(v85 + 16) = v88 + 1;
      v89 = (v85 + 240 * v88);
      v90 = v123;
      v91 = v125;
      v89[3] = v124;
      v89[4] = v91;
      v89[2] = v90;
      v92 = v126;
      v93 = v127[0];
      v94 = v128;
      v89[7] = v127[1];
      v89[8] = v94;
      v89[5] = v92;
      v89[6] = v93;
      v95 = v129;
      v96 = v130[0];
      v97 = v131;
      v89[11] = v130[1];
      v89[12] = v97;
      v89[9] = v95;
      v89[10] = v96;
      v98 = v132;
      v99 = v133;
      v100 = v135;
      v89[15] = v134;
      v89[16] = v100;
      v89[13] = v98;
      v89[14] = v99;
      v86 += 240;
      --v84;
    }

    while (v84);
    sub_1DB17181C(&v154);
  }

  else
  {
    sub_1DB17181C(&v154);
    v85 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v123) = v117;
  *(&v123 + 1) = v142[0];
  DWORD1(v123) = *(v142 + 3);
  *(&v123 + 1) = v21;
  *&v124 = v113;
  *(&v124 + 1) = v115;
  *&v125 = v112;
  *(&v125 + 1) = v114;
  v126 = 0uLL;
  *&v127[0] = v111;
  *(v127 + 8) = v140;
  *(&v127[1] + 1) = v141;
  *&v128 = v106;
  *(&v128 + 1) = v109;
  *&v129 = v108;
  *(&v129 + 1) = v107;
  *&v130[0] = v105;
  *(v130 + 8) = v138;
  *(&v130[1] + 1) = v139;
  *&v131 = v70;
  BYTE8(v131) = v82;
  HIDWORD(v131) = *(v137 + 3);
  *(&v131 + 9) = v137[0];
  *&v132 = v85;
  *&result = ScalarQuery.clauses.setter(&v123, v119).n128_u64[0];
  return result;
}

void sub_1DB1755F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    sub_1DB1718E4(a2, a3, a4);
  }
}

void sub_1DB1757B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1DB175A04(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = sub_1DB1F78F8(a1, a2, a3);

  return v3;
}

_OWORD *Expressible.expanded(using:in:rawStatementHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v107 = a6;
  v109 = a4;
  v110 = a3;
  v111 = a2;
  v112 = a7;
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v108 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v106 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v106 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v106 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = *(v9 + 16);
  boxed_opaque_existential_0 = v23;
  v21(&v106 - v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (!swift_dynamicCast())
  {
    memset(v172, 0, 40);
    sub_1DB1445E0(v172, &qword_1ECC279E8, &unk_1DB2C3AE0);
    v21(v20, boxed_opaque_existential_0, a5);
    if (!swift_dynamicCast())
    {
      memset(v153, 0, 136);
      BYTE8(v153[8]) = -1;
      sub_1DB1445E0(v153, &qword_1ECC27D28, &unk_1DB2CB830);
      v21(v17, boxed_opaque_existential_0, a5);
      if (swift_dynamicCast())
      {
        v49 = v112;
        v112[3] = &type metadata for Update;
        v49[4] = sub_1DB1F6FE0();
        result = swift_allocObject();
        *v49 = result;
        v51 = v153[5];
        result[5] = v153[4];
        result[6] = v51;
        *(result + 107) = *(&v153[5] + 11);
        v52 = v153[1];
        result[1] = v153[0];
        result[2] = v52;
        v53 = v153[3];
        result[3] = v153[2];
        result[4] = v53;
        return result;
      }

      v21(v14, boxed_opaque_existential_0, a5);
      v71 = swift_dynamicCast();
      v72 = v199;
      if (v71)
      {
        v73 = *&v153[0];
        result = sub_1DB1F6F8C();
        v74 = *(v153 + 8);
        v75 = v112;
        v112[3] = &type metadata for Delete;
        *(v75 + 32) = result;
        *v75 = v73;
        *(v75 + 8) = v74;
        return result;
      }

      v21(v108, boxed_opaque_existential_0, a5);
      v79 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v80 = v110(*&v153[0], *(&v153[0] + 1));
        if (!v72)
        {
          v98 = v80;
          v99 = v81;

          v100 = v112;
          v112[3] = v79;
          v100[4] = &protocol witness table for String;
          *v100 = v98;
          v100[1] = v99;
          return result;
        }
      }

      else
      {
        v89 = v107;
        v90 = v72;
        v91 = *(v107 + 24);
        v91(v153, a5, v107);
        v92 = v153[0];

        v93 = v110(v92, *(&v92 + 1));
        if (!v90)
        {
          v101 = v93;
          v199 = v94;

          v91(v153, a5, v89);
          v102 = *&v153[1];

          v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
          v104 = v112;
          v112[3] = v103;
          result = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
          v104[4] = result;
          v105 = v199;
          *v104 = v101;
          v104[1] = v105;
          v104[2] = v102;
          return result;
        }
      }
    }

    v197 = v153[6];
    v198[0] = v153[7];
    *(v198 + 9) = *(&v153[7] + 9);
    v193 = v153[2];
    v194 = v153[3];
    v195 = v153[4];
    v196 = v153[5];
    v191 = v153[0];
    v192 = v153[1];
    v38 = v112;
    v112[3] = &type metadata for Insert;
    v38[4] = sub_1DB1F70DC();
    v39 = swift_allocObject();
    *v38 = v39;
    sub_1DB1446A4(&v191, v153, &qword_1ECC27CC8, &unk_1DB2C3860);
    if (BYTE8(v153[8]))
    {
      v40 = *&v153[0];
      v41 = *(v153 + 8);
      v42 = *(&v153[1] + 8);
      v43 = *(&v153[2] + 8);
      v44 = *(&v153[3] + 8);
      v45 = *(&v153[4] + 8);
      v46 = *(&v153[5] + 8);
      v47 = *(&v153[6] + 8);
      v48 = *(&v153[7] + 8);
    }

    else
    {
      sub_1DB1445E0(v153, &qword_1ECC27CC8, &unk_1DB2C3860);
      v40 = 0;
      v41 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
    }

    *&v149[0] = v40;
    *(v149 + 8) = v41;
    *(&v149[1] + 8) = v42;
    *(&v149[2] + 8) = v43;
    *(&v149[3] + 8) = v44;
    *(&v149[4] + 8) = v45;
    *(&v149[5] + 8) = v46;
    *(&v149[6] + 8) = v47;
    *(&v149[7] + 8) = v48;
    if (v41)
    {
      v180 = v149[6];
      v181 = v149[7];
      v182 = *&v149[8];
      v176 = v149[2];
      v177 = v149[3];
      v179 = v149[5];
      v178 = v149[4];
      v175 = v149[1];
      v174 = v149[0];
      sub_1DB1446A4(&v180, &v167, &qword_1ECC279E8, &unk_1DB2C3AE0);
      if (v168)
      {
        sub_1DB1355D0(&v167, v169);
        v59 = v170;
        v60 = v171;
        v61 = __swift_project_boxed_opaque_existential_1(v169, v170);
        v157[3] = v59;
        v157[4] = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v157);
        v62 = *(v59 - 8);
        MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
        v64 = &v106 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v62 + 16))(v64, v61, v59);
        (*(v60 + 16))(v149, v59, v60);
        v65 = a1[9];
        v146 = a1[8];
        v147 = v65;
        v148 = a1[10];
        v66 = a1[5];
        v142 = a1[4];
        v143 = v66;
        v67 = a1[7];
        v144 = a1[6];
        v145 = v67;
        v68 = a1[1];
        v138 = *a1;
        v139 = v68;
        v69 = a1[3];
        v140 = a1[2];
        v141 = v69;
        v70 = v199;
        sub_1DB1E5268(&v138, v111, v153);
        if (v70)
        {
          (*(v62 + 8))(v64, v59);
          sub_1DB1F7130(&v174);
          sub_1DB1F7184(&v191);
          v134 = v149[8];
          v135 = v150;
          v136 = v151;
          v137 = v152;
          v130 = v149[4];
          v131 = v149[5];
          v132 = v149[6];
          v133 = v149[7];
          v126 = v149[0];
          v127 = v149[1];
          v128 = v149[2];
          v129 = v149[3];
          sub_1DB17181C(&v126);
          __swift_deallocate_boxed_opaque_existential_1(v157);
          __swift_destroy_boxed_opaque_existential_1(v169);
          return __swift_deallocate_boxed_opaque_existential_1(v112);
        }

        v134 = v149[8];
        v135 = v150;
        v136 = v151;
        v137 = v152;
        v130 = v149[4];
        v131 = v149[5];
        v132 = v149[6];
        v133 = v149[7];
        v126 = v149[0];
        v127 = v149[1];
        v128 = v149[2];
        v129 = v149[3];
        sub_1DB17181C(&v126);
        v122 = v153[8];
        v123 = v154;
        v124 = v155;
        v125 = v156;
        v118 = v153[4];
        v119 = v153[5];
        v120 = v153[6];
        v121 = v153[7];
        v114 = v153[0];
        v115 = v153[1];
        v116 = v153[2];
        v117 = v153[3];
        (*(v60 + 24))(&v114, v59, v60);
        (*(v62 + 32))(boxed_opaque_existential_0, v64, v59);
        v164 = v180;
        v165 = v181;
        v166 = v182;
        v160 = v176;
        v161 = v177;
        v163 = v179;
        v162 = v178;
        v159 = v175;
        v158 = v174;
        sub_1DB1F8894(v157, &v164, &qword_1ECC279E8, &unk_1DB2C3AE0);
        *&v172[96] = v164;
        *&v172[112] = v165;
        *&v172[128] = v166;
        *&v172[32] = v160;
        *&v172[48] = v161;
        *&v172[80] = v163;
        *&v172[64] = v162;
        *&v172[16] = v159;
        *v172 = v158;
        v173 = 1;
        __swift_destroy_boxed_opaque_existential_1(v169);
      }

      else
      {
        sub_1DB1F7130(&v174);
        sub_1DB1445E0(&v167, &qword_1ECC279E8, &unk_1DB2C3AE0);
        sub_1DB16D210(&v191, v172);
      }

      v86 = *&v172[8];
      v85 = *v172;
      v87 = *&v172[16];
      v188 = *&v172[88];
      v189 = *&v172[104];
      v190 = *&v172[120];
      v184 = *&v172[24];
      v185 = *&v172[40];
      v187 = *&v172[72];
      v186 = *&v172[56];
      v88 = v173;
    }

    else
    {
      sub_1DB1445E0(v149, &qword_1ECC27CD0, &unk_1DB2CB840);
      sub_1DB1446A4(&v191, v153, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (BYTE8(v153[8]))
      {
        v149[6] = v153[6];
        v149[7] = v153[7];
        *&v149[8] = *&v153[8];
        v149[2] = v153[2];
        v149[3] = v153[3];
        v149[4] = v153[4];
        v149[5] = v153[5];
        v149[0] = v153[0];
        v149[1] = v153[1];
        v76 = sub_1DB1F4E58();
        v78 = v77;
        sub_1DB1F7130(v149);
      }

      else
      {
        v78 = *(&v153[0] + 1);
        v76 = *&v153[0];
      }

      v82 = v199;
      v83 = v110(v76, v78);
      if (v82)
      {

        sub_1DB1F7184(&v191);
        return __swift_deallocate_boxed_opaque_existential_1(v112);
      }

      v85 = v83;
      v86 = v84;

      sub_1DB1446A4(&v191, v153, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (BYTE8(v153[8]))
      {
        sub_1DB1445E0(v153, &qword_1ECC27CC8, &unk_1DB2C3860);
        v87 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v87 = *&v153[1];
      }

      v88 = 0;
      v183 = 0;
    }

    v95 = v186;
    *(v39 + 88) = v187;
    v96 = v189;
    *(v39 + 104) = v188;
    *(v39 + 120) = v96;
    *(v39 + 136) = v190;
    v97 = v185;
    *(v39 + 40) = v184;
    *(v39 + 56) = v97;
    *(v39 + 16) = v85;
    *(v39 + 24) = v86;
    *(v39 + 32) = v87;
    *(v39 + 72) = v95;
    *(v39 + 152) = v88;
    return sub_1DB1F7184(&v191);
  }

  sub_1DB1355D0(v172, &v191);
  v25 = *(&v192 + 1);
  v26 = v193;
  v27 = __swift_project_boxed_opaque_existential_1(&v191, *(&v192 + 1));
  *(&v175 + 1) = v25;
  *&v176 = v26;
  v28 = __swift_allocate_boxed_opaque_existential_0(&v174);
  v29 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v31, v27, v25);
  (*(v26 + 16))(v149, v25, v26);
  v32 = a1[9];
  v146 = a1[8];
  v147 = v32;
  v148 = a1[10];
  v33 = a1[5];
  v142 = a1[4];
  v143 = v33;
  v34 = a1[7];
  v144 = a1[6];
  v145 = v34;
  v35 = a1[1];
  v138 = *a1;
  v139 = v35;
  v36 = a1[3];
  v140 = a1[2];
  v141 = v36;
  v37 = v199;
  sub_1DB1E5268(&v138, v111, v153);
  if (v37)
  {
    (*(v29 + 8))(v31, v25);
    v134 = v149[8];
    v135 = v150;
    v136 = v151;
    v137 = v152;
    v130 = v149[4];
    v131 = v149[5];
    v132 = v149[6];
    v133 = v149[7];
    v126 = v149[0];
    v127 = v149[1];
    v128 = v149[2];
    v129 = v149[3];
    sub_1DB17181C(&v126);
    __swift_deallocate_boxed_opaque_existential_1(&v174);
  }

  else
  {
    v134 = v149[8];
    v135 = v150;
    v136 = v151;
    v137 = v152;
    v130 = v149[4];
    v131 = v149[5];
    v132 = v149[6];
    v133 = v149[7];
    v126 = v149[0];
    v127 = v149[1];
    v128 = v149[2];
    v129 = v149[3];
    sub_1DB17181C(&v126);
    v122 = v153[8];
    v123 = v154;
    v124 = v155;
    v125 = v156;
    v118 = v153[4];
    v119 = v153[5];
    v120 = v153[6];
    v121 = v153[7];
    v114 = v153[0];
    v115 = v153[1];
    v116 = v153[2];
    v117 = v153[3];
    (*(v26 + 24))(&v114, v25, v26);
    (*(v29 + 32))(v28, v31, v25);
    v54 = *(&v175 + 1);
    v55 = v176;
    v56 = __swift_project_boxed_opaque_existential_1(&v174, *(&v175 + 1));
    v57 = v112;
    v112[3] = v54;
    v57[4] = *(v55 + 8);
    v58 = __swift_allocate_boxed_opaque_existential_0(v57);
    (*(*(v54 - 8) + 16))(v58, v56, v54);
    __swift_destroy_boxed_opaque_existential_1(&v174);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v191);
}

char *Expressible.isExpandable.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v173 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v181 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v180 = &v165 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v183 = &v165 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v184 = *(v11 - 8);
  v185 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v175 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v179 = &v165 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v174 = &v165 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v178 = &v165 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v182 = &v165 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v188 = &v165 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D50, &qword_1DB2C3A08);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v170 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v169 = &v165 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v176 = &v165 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v189 = (&v165 - v31);
  MEMORY[0x1EEE9AC00](v30);
  v187 = &v165 - v32;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D58, &qword_1DB2C3A10);
  v186 = *(v191 - 8);
  v33 = MEMORY[0x1EEE9AC00](v191);
  v167 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v168 = &v165 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v165 = &v165 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v166 = &v165 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v172 = &v165 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v171 = &v165 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v193 = &v165 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v190 = &v165 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v194 = &v165 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v192 = &v165 - v52;
  v53 = *(a1 - 8);
  v54 = MEMORY[0x1EEE9AC00](v51);
  v177 = &v165 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v165 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = &v165 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v165 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v67 = *(v53 + 16);
  v65 = (v53 + 16);
  v66 = v67;
  v67(&v165 - v68, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
  if (swift_dynamicCast())
  {
    sub_1DB1355D0(&v203, &v211);
    v69 = *(&v212 + 1);
    v70 = v213;
    __swift_project_boxed_opaque_existential_1(&v211, *(&v212 + 1));
    (*(v70 + 16))(v197, v69, v70);
    v71 = *&v197[8];
    v190 = *(*&v197[8] + 16);
    if (v190)
    {
      v3 = 0;
      v72 = *&v197[8] + 32;
      v73 = v187;
      v188 = *&v197[8];
      v189 = (v186 + 8);
      while (v3 < *(v71 + 2))
      {
        v193 = v72;
        sub_1DB164980(v72, v195);
        v75 = *&v195[24];
        v74 = *&v195[32];
        __swift_project_boxed_opaque_existential_1(v195, *&v195[24]);
        (*(v74 + 24))(v200, v75, v74);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
        sub_1DB2BA9C4();
        sub_1DB2BB004();
        v69 = v191;

        sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10, MEMORY[0x1E69E9290]);
        sub_1DB2BA9B4();
        v76 = v194;
        sub_1DB2BA9D4();

        v65 = *v189;
        (*v189)(v76, v69);
        (v65)(v192, v69);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
        LODWORD(v76) = (*(*(v77 - 8) + 48))(v73, 1, v77);
        sub_1DB1445E0(v73, &qword_1ECC27D50, &qword_1DB2C3A08);
        __swift_destroy_boxed_opaque_existential_1(v195);
        if (v76 != 1)
        {
LABEL_22:
          sub_1DB17181C(v197);
          v90 = 1;
          goto LABEL_39;
        }

        ++v3;
        v72 = (v193 + 40);
        v71 = v188;
        if (v190 == v3)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_11:
    v87 = *&v197[64];
    v88 = *&v197[64] + 32;
    v65 = -*(*&v197[64] + 16);
    v69 = -1;
    while (&v65[v69] != -1)
    {
      if (++v69 >= *(v87 + 16))
      {
        goto LABEL_86;
      }

      v89 = v88 + 88;
      sub_1DB175548(v88, v195);
      sub_1DB1F3784(v195, v200);
      sub_1DB1755A4(v195);
      v88 = v89;
      if (v200[0])
      {
        goto LABEL_22;
      }
    }

    v91 = v198;
    result = (v198 + 32);
    v93 = -*(v198 + 16);
    v94 = -1;
    while (v93 + v94 != -1)
    {
      if (++v94 >= *(v91 + 16))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v95 = (result + 48);
      sub_1DB175650(result, v195);
      sub_1DB1F39B4(v195, v200);
      sub_1DB1756AC(v195);
      result = v95;
      if (v200[0])
      {
        goto LABEL_22;
      }
    }

    v107 = v199;
    result = (v199 + 32);
    v108 = -*(v199 + 16);
    v109 = -1;
    do
    {
      v90 = v108 + v109 != -1;
      if (v108 + v109 == -1)
      {
        break;
      }

      if (++v109 >= *(v107 + 16))
      {
        goto LABEL_91;
      }

      v110 = (result + 240);
      sub_1DB175700(result, v195);
      sub_1DB1F3F6C(v195, v200);
      sub_1DB17575C(v195);
      result = v110;
    }

    while (LOBYTE(v200[0]) != 1);
    sub_1DB17181C(v197);
LABEL_39:
    v111 = &v211;
    goto LABEL_40;
  }

  *&v205 = 0;
  v203 = 0u;
  v204 = 0u;
  sub_1DB1445E0(&v203, &qword_1ECC279E8, &unk_1DB2C3AE0);
  v66(v64, v3, a1);
  if (!swift_dynamicCast())
  {
    memset(v195, 0, 136);
    v195[136] = -1;
    sub_1DB1445E0(v195, &qword_1ECC27D28, &unk_1DB2CB830);
    v66(v61, v3, a1);
    if (swift_dynamicCast())
    {
      sub_1DB1F7034(*v195, *&v195[8], *&v195[16], *&v195[24], *&v195[32], *&v195[40], *&v195[48], *&v195[56], *&v195[64], *&v195[72], *&v195[80], *&v195[88], *&v195[96], *&v195[104], v195[106]);
      return 0;
    }

    else
    {
      v66(v58, v3, a1);
      if (swift_dynamicCast())
      {
      }

      else
      {
        v66(v177, v3, a1);
        if (swift_dynamicCast())
        {
          v117 = *v195;
          v116 = *&v195[8];
          sub_1DB2BA9C4();
          v118 = HIBYTE(v116) & 0xF;
          if ((v116 & 0x2000000000000000) == 0)
          {
            v118 = v117;
          }

          v119 = 7;
          if (((v116 >> 60) & ((v117 & 0x800000000000000) == 0)) != 0)
          {
            v119 = 11;
          }

          v193 = (v119 | (v118 << 16));
          v194 = v116;
          sub_1DB2BB004();
          sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
          v120 = v174;
          v121 = v185;
          sub_1DB2BA9B4();
          sub_1DB2BA9D4();

          v142 = *(v184 + 8);
          v142(v120, v121);
          v142(v178, v121);
          v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          v144 = v180;
          v145 = (*(*(v143 - 8) + 48))(v180, 1, v143);
          sub_1DB1445E0(v144, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v145 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
            v3 = v166;
            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10, MEMORY[0x1E69E9290]);
            v65 = v165;
            v69 = v191;
            sub_1DB2BA9B4();
            sub_1DB2BA9D4();
LABEL_87:

            v159 = *(v186 + 8);
            v159(v65, v69);
            v159(v3, v69);
            v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
            v163 = v169;
            v164 = (*(*(v160 - 8) + 48))(v169, 1, v160);
            goto LABEL_88;
          }
        }

        else
        {
          (*(v173 + 24))(v195, a1);
          v133 = *v195;
          v132 = *&v195[8];

          sub_1DB2BA9C4();
          v134 = HIBYTE(v132) & 0xF;
          if ((v132 & 0x2000000000000000) == 0)
          {
            v134 = v133;
          }

          v135 = 7;
          if (((v132 >> 60) & ((v133 & 0x800000000000000) == 0)) != 0)
          {
            v135 = 11;
          }

          v193 = (v135 | (v134 << 16));
          v194 = v132;
          sub_1DB2BB004();
          sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
          v136 = v175;
          v137 = v185;
          sub_1DB2BA9B4();
          sub_1DB2BA9D4();

          v146 = *(v184 + 8);
          v146(v136, v137);
          v146(v179, v137);
          v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          v148 = v181;
          v149 = (*(*(v147 - 8) + 48))(v181, 1, v147);
          sub_1DB1445E0(v148, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v149 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
            v150 = v168;
            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10, MEMORY[0x1E69E9290]);
            v151 = v167;
            v152 = v191;
            sub_1DB2BA9B4();
            sub_1DB2BA9D4();

            v161 = *(v186 + 8);
            v161(v151, v152);
            v161(v150, v152);
            v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
            v163 = v170;
            v164 = (*(*(v162 - 8) + 48))(v170, 1, v162);
LABEL_88:
            v90 = v164 != 1;
            v158 = v163;
LABEL_89:
            sub_1DB1445E0(v158, &qword_1ECC27D50, &qword_1DB2C3A08);
            return v90;
          }
        }
      }

      return 0;
    }
  }

  v217 = *&v195[96];
  v218[0] = *&v195[112];
  *(v218 + 9) = *&v195[121];
  v213 = *&v195[32];
  v214 = *&v195[48];
  v215 = *&v195[64];
  v216 = *&v195[80];
  v211 = *v195;
  v212 = *&v195[16];
  sub_1DB1446A4(&v211, v195, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v195[136])
  {
    v78 = *v195;
    v79 = *&v195[8];
    v80 = *&v195[24];
    v81 = *&v195[40];
    v82 = *&v195[56];
    v83 = *&v195[72];
    v84 = *&v195[88];
    v85 = *&v195[104];
    v86 = *&v195[120];
  }

  else
  {
    sub_1DB1445E0(v195, &qword_1ECC27CC8, &unk_1DB2C3860);
    v78 = 0;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
  }

  *v197 = v78;
  *&v197[8] = v79;
  *&v197[24] = v80;
  *&v197[40] = v81;
  *&v197[56] = v82;
  *&v197[72] = v83;
  *&v197[88] = v84;
  *&v197[104] = v85;
  *&v197[120] = v86;
  if (!v79)
  {
    sub_1DB1445E0(v197, &qword_1ECC27CD0, &unk_1DB2CB840);
    sub_1DB1446A4(&v211, v195, &qword_1ECC27CC8, &unk_1DB2C3860);
    if (v195[136])
    {
      *&v197[96] = *&v195[96];
      *&v197[112] = *&v195[112];
      *&v197[128] = *&v195[128];
      *&v197[32] = *&v195[32];
      *&v197[48] = *&v195[48];
      *&v197[64] = *&v195[64];
      *&v197[80] = *&v195[80];
      *v197 = *v195;
      *&v197[16] = *&v195[16];
      sub_1DB1F4E58();
      sub_1DB1F7130(v197);
    }

    else
    {
    }

    sub_1DB2BA9C4();
    sub_1DB2BB004();

    sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
    v122 = v182;
    v123 = v185;
    sub_1DB2BA9B4();
    v124 = v183;
    sub_1DB2BA9D4();

    v129 = *(v184 + 8);
    v129(v122, v123);
    v129(v188, v123);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
    v131 = (*(*(v130 - 8) + 48))(v124, 1, v130);
    sub_1DB1445E0(v124, &qword_1ECC27D40, &qword_1DB2C39F8);
    if (v131 != 1)
    {
      sub_1DB1446A4(&v211, v195, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (v195[136])
      {
        *&v197[96] = *&v195[96];
        *&v197[112] = *&v195[112];
        *&v197[128] = *&v195[128];
        *&v197[32] = *&v195[32];
        *&v197[48] = *&v195[48];
        *&v197[64] = *&v195[64];
        *&v197[80] = *&v195[80];
        *v197 = *v195;
        *&v197[16] = *&v195[16];
        sub_1DB1F4E58();
        sub_1DB1F7130(v197);
      }

      else
      {
      }

      v153 = v171;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
      sub_1DB2BA9C4();
      sub_1DB2BB004();

      sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10, MEMORY[0x1E69E9290]);
      v154 = v172;
      v155 = v191;
      sub_1DB2BA9B4();
      sub_1DB2BA9D4();

      v156 = *(v186 + 8);
      v156(v154, v155);
      v156(v153, v155);
      sub_1DB1F7184(&v211);
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
      v90 = (*(*(v157 - 8) + 48))(v176, 1, v157) != 1;
      v158 = v176;
      goto LABEL_89;
    }

    sub_1DB1F7184(&v211);
    return 0;
  }

  v209[0] = *&v197[96];
  v209[1] = *&v197[112];
  v210 = *&v197[128];
  v205 = *&v197[32];
  v206 = *&v197[48];
  v207 = *&v197[64];
  v208 = *&v197[80];
  v203 = *v197;
  v204 = *&v197[16];
  sub_1DB1446A4(v209, v200, &qword_1ECC279E8, &unk_1DB2C3AE0);
  v96 = v201;
  if (!v201)
  {
    sub_1DB1F7130(&v203);
    sub_1DB1F7184(&v211);
    sub_1DB1445E0(v200, &qword_1ECC279E8, &unk_1DB2C3AE0);
    return 0;
  }

  v97 = v202;
  __swift_project_boxed_opaque_existential_1(v200, v201);
  (*(v97 + 16))(v197, v96, v97);
  v98 = *&v197[8];
  v192 = *(*&v197[8] + 16);
  if (!v192)
  {
LABEL_44:
    v112 = *&v197[64];
    result = (*&v197[64] + 32);
    v113 = -*(*&v197[64] + 16);
    v114 = -1;
    while (v113 + v114 != -1)
    {
      if (++v114 >= *(v112 + 16))
      {
        goto LABEL_93;
      }

      v115 = (result + 88);
      sub_1DB175548(result, v195);
      sub_1DB1F3784(v195, v196);
      sub_1DB1755A4(v195);
      result = v115;
      if (v196[0])
      {
        goto LABEL_62;
      }
    }

    v125 = v198;
    result = (v198 + 32);
    v126 = -*(v198 + 16);
    v127 = -1;
    while (v126 + v127 != -1)
    {
      if (++v127 >= *(v125 + 16))
      {
        goto LABEL_94;
      }

      v128 = (result + 48);
      sub_1DB175650(result, v195);
      sub_1DB1F39B4(v195, v196);
      sub_1DB1756AC(v195);
      result = v128;
      if (v196[0])
      {
        goto LABEL_62;
      }
    }

    v138 = v199;
    result = (v199 + 32);
    v139 = -*(v199 + 16);
    v140 = -1;
    do
    {
      v90 = v139 + v140 != -1;
      if (v139 + v140 == -1)
      {
        break;
      }

      if (++v140 >= *(v138 + 16))
      {
        goto LABEL_95;
      }

      v141 = (result + 240);
      sub_1DB175700(result, v195);
      sub_1DB1F3F6C(v195, v196);
      sub_1DB17575C(v195);
      result = v141;
    }

    while (LOBYTE(v196[0]) != 1);
    sub_1DB1F7130(&v203);
    sub_1DB1F7184(&v211);
    sub_1DB17181C(v197);
LABEL_76:
    v111 = v200;
LABEL_40:
    __swift_destroy_boxed_opaque_existential_1(v111);
    return v90;
  }

  v99 = 0;
  result = (*&v197[8] + 32);
  v187 = *&v197[8];
  v188 = (v186 + 8);
  v100 = v191;
  while (v99 < *(v98 + 2))
  {
    v194 = result;
    sub_1DB164980(result, v195);
    v101 = *&v195[24];
    v102 = *&v195[32];
    __swift_project_boxed_opaque_existential_1(v195, *&v195[24]);
    (*(v102 + 24))(v196, v101, v102);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D68, &qword_1DB2C3A20);
    sub_1DB2BA9C4();
    sub_1DB2BB004();
    v103 = v189;

    sub_1DB1688F0(&qword_1EE13F278, &qword_1ECC27D58, &qword_1DB2C3A10, MEMORY[0x1E69E9290]);
    sub_1DB2BA9B4();
    v104 = v193;
    sub_1DB2BA9D4();

    v105 = *v188;
    (*v188)(v104, v100);
    v105(v190, v100);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D70, &qword_1DB2C3A28);
    LODWORD(v104) = (*(*(v106 - 8) + 48))(v103, 1, v106);
    sub_1DB1445E0(v103, &qword_1ECC27D50, &qword_1DB2C3A08);
    __swift_destroy_boxed_opaque_existential_1(v195);
    if (v104 != 1)
    {
LABEL_62:
      sub_1DB1F7130(&v203);
      sub_1DB1F7184(&v211);
      sub_1DB17181C(v197);
      v90 = 1;
      goto LABEL_76;
    }

    ++v99;
    result = v194 + 40;
    v98 = v187;
    if (v192 == v99)
    {
      goto LABEL_44;
    }
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

double sub_1DB1E4CD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a3;
  v13 = *a1;
  v12 = a1[1];
  if (a2 && (v52 = *a1, v53 = v12, MEMORY[0x1EEE9AC00](a1), v38 = &v52, (sub_1DB25F2DC(sub_1DB1F8968, v37, v14) & 1) == 0))
  {
    *(a7 + 32) = 0;
    result = 0.0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    v43 = a7;
    v44 = a5;
    v15 = *(a6 + 24);
    v41 = a6 + 24;
    v42 = v15;
    v15(&v52, a5, a6);
    v16 = v52;
    v17 = v53;

    LOBYTE(v16) = sub_1DB23CC0C(v16, v17, 46);
    v45 = v7;

    if (v16)
    {
      v18 = sub_1DB2B995C(34, 0xE100000000000000, v13, v12);
      v20 = v19;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D70, "̢");
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB2BD5A0;
      *(v21 + 32) = sub_1DB2B995C(34, 0xE100000000000000, *a4, a4[1]);
      *(v21 + 40) = v22;
      *(v21 + 48) = sub_1DB2B995C(34, 0xE100000000000000, v13, v12);
      *(v21 + 56) = v23;
      v52 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60, MEMORY[0x1E69E6310]);
      v24 = sub_1DB2BAD24();
      v20 = v25;
      v18 = v24;
    }

    v26 = v44;
    v27 = v42;
    v42(&v52, v44, a6);
    v28 = v52;
    v29 = v53;

    v50 = v28;
    v51 = v29;
    v48 = 42;
    v49 = 0xE100000000000000;
    v46 = v18;
    v47 = v20;
    v38 = sub_1DB143508();
    v39 = v38;
    v37[0] = MEMORY[0x1E69E6158];
    v37[1] = v38;
    v30 = sub_1DB2BB3D4();
    v40 = v31;

    v27(&v52, v26, a6);
    v32 = v54;

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v34 = v43;
    *(v43 + 24) = v33;
    v34[4] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
    v36 = v40;
    *v34 = v30;
    v34[1] = v36;
    v34[2] = v32;
  }

  return result;
}

void *sub_1DB1E501C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 64);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *v5;
    v8 = *(v5 - 8);
    v9 = *(v5 - 3);
    v10 = *(v5 - 2);
    v29[0] = *(v5 - 4);
    v29[1] = v9;
    v29[2] = v10;
    v30 = v8;
    v31 = v7;

    v23(&v25, v29);
    if (v3)
    {
      break;
    }

    if (v26)
    {
      sub_1DB1355D0(&v25, v28);
      sub_1DB1355D0(v28, &v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1DB1573FC(0, v6[2] + 1, 1, v6);
        v32 = v6;
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v14 = sub_1DB1573FC((v12 > 1), v13 + 1, 1, v6);
        v32 = v14;
      }

      else
      {
        v14 = v6;
      }

      v15 = v26;
      v16 = v27;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
      MEMORY[0x1EEE9AC00](v17);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_1DB200A54(v13, v19, &v32, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v25);
      v6 = v14;
    }

    else
    {
      sub_1DB1445E0(&v25, &qword_1ECC27898, &unk_1DB2CCD00);
    }

    v5 += 5;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1DB1E5268@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a2;
  v129[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v146 = v129 - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v8 = *(v145 - 8);
  v9 = MEMORY[0x1EEE9AC00](v145);
  v144 = v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v129 - v11;
  v13 = a1[9];
  v244 = a1[8];
  v245 = v13;
  v14 = a1[5];
  v240 = a1[4];
  v241 = v14;
  v15 = a1[6];
  v243 = a1[7];
  v242 = v15;
  v16 = a1[1];
  v236 = *a1;
  v237 = v16;
  v17 = a1[2];
  v239 = a1[3];
  v238 = v17;
  v18 = v3[9];
  v255 = v3[8];
  v256 = v18;
  v257 = v3[10];
  v19 = v3[5];
  v251 = v3[4];
  v252 = v19;
  v20 = v3[7];
  v253 = v3[6];
  v254 = v20;
  v21 = v3[1];
  v247 = *v3;
  v248 = v21;
  v22 = v3[3];
  v23 = v3[1];
  v249 = v3[2];
  v250 = v22;
  v24 = *(a1 + 20);
  v148 = *(a1 + 21);
  v246 = v24;
  v258 = *(v3 + 22);
  v134 = v247;
  v234[0] = *(v3 + 1);
  *(v234 + 3) = *(v3 + 1);
  v231 = v23;
  v232 = v249;
  v233 = v22;
  v230 = *(v3 + 19);
  v229 = *(v3 + 136);
  v25 = *(v3 + 104);
  v228 = *(v3 + 120);
  v227 = v25;
  v26 = *(v3 + 72);
  v226 = *(v3 + 88);
  v225 = v26;
  v130 = v251;
  v131 = v257;
  v132 = BYTE8(v257);
  LODWORD(v24) = *(v3 + 169);
  *(v224 + 3) = *(v3 + 43);
  v224[0] = v24;
  v133 = v258;
  v27 = *(&v247 + 1);
  v138 = v248;
  v235[0] = v248;
  v235[1] = v249;
  v135 = v22;
  v235[2] = v22;
  v139 = *(&v22 + 1);
  *&v211 = MEMORY[0x1E69E7CC0];
  v143 = *(*(&v247 + 1) + 16);
  if (v143)
  {
    v142 = *(&v247 + 1) + 32;
    sub_1DB1754EC(&v247, &v217);
    v141 = (v8 + 8);
    v129[1] = " placeholders, expected: ";

    v29 = 0;
    v136 = xmmword_1DB2BCC40;
    v30 = v4;
    v140 = v27;
    v147 = v12;
    while (1)
    {
      if (v29 >= *(v27 + 2))
      {
        goto LABEL_64;
      }

      v151 = v29;
      sub_1DB164980(v142 + 40 * v29, &v191);
      v33 = *(&v192 + 1);
      v34 = v193;
      v35 = __swift_project_boxed_opaque_existential_1(&v191, *(&v192 + 1));
      v36 = v34[3];
      v153 = v35;
      v154 = v33;
      v152 = v34;
      *&v149 = v36;
      *(&v149 + 1) = v34 + 3;
      v36(&v217, v33, v34);

      sub_1DB2BA9C4();
      sub_1DB2BB004();
      v259 = v30;
      v37 = v146;

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
      v38 = v144;
      v39 = v145;
      sub_1DB2BA9B4();
      v40 = v259;
      sub_1DB2BA9D4();
      v30 = v40;
      if (v40)
      {
        MEMORY[0x1E1284A10](v40);

        v41 = *v141;
        (*v141)(v38, v39);
        v41(v147, v39);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
        sub_1DB1445E0(v37, &qword_1ECC27D40, &qword_1DB2C39F8);
        v30 = 0;
      }

      else
      {

        v43 = *v141;
        (*v141)(v38, v39);
        v43(v147, v39);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v43) = (*(*(v44 - 8) + 48))(v37, 1, v44);
        sub_1DB1445E0(v37, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v43 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v31 = swift_allocObject();
          *(v31 + 16) = v136;
          v52 = v154;
          v53 = v152;
          *(v31 + 56) = v154;
          *(v31 + 64) = v53;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v31 + 32));
          (*(*(v52 - 1) + 16))(boxed_opaque_existential_0, v153, v52);
          goto LABEL_4;
        }
      }

      v45 = v153;
      v46 = v154;
      v47 = v152;
      (v149)(&v217, v154, v152);
      v48 = *(&v217 + 1);
      v49 = v217;

      LOBYTE(v49) = sub_1DB23CC0C(v49, v48, 42);

      if ((v49 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v31 = swift_allocObject();
        *(v31 + 16) = v136;
        *(v31 + 56) = v46;
        *(v31 + 64) = v47;
        v32 = __swift_allocate_boxed_opaque_existential_0((v31 + 32));
        (*(*(v46 - 1) + 16))(v32, v45, v46);
        goto LABEL_4;
      }

      v50 = v150;
      v51 = v138;
      if (!v139)
      {

        sub_1DB1F88FC();
        swift_allocError();
        *v118 = v51;
        *(v118 + 16) = 0;
        *(v118 + 24) = 4;
        swift_willThrow();

        goto LABEL_60;
      }

      if (v150)
      {

        if (Connection.tableExists(_:)(v51))
        {
          type metadata accessor for SchemaReader();
          *(swift_allocObject() + 16) = v50;

          v67 = sub_1DB26B520(v51._countAndFlagsBits, v51._object);
          swift_setDeallocating();

          swift_deallocClassInstance();
          v68 = *(v67 + 16);
          if (v68)
          {
            v259 = 0;
            *&v217 = MEMORY[0x1E69E7CC0];
            sub_1DB138470(0, v68, 0);
            v55 = v217;
            *(&v149 + 1) = v67;
            v69 = (v67 + 40);
            do
            {
              v71 = *(v69 - 1);
              v70 = *v69;
              *&v217 = v55;
              v73 = *(v55 + 16);
              v72 = *(v55 + 24);

              if (v73 >= v72 >> 1)
              {
                sub_1DB138470((v72 > 1), v73 + 1, 1);
                v55 = v217;
              }

              *(v55 + 16) = v73 + 1;
              v74 = v55 + 16 * v73;
              *(v74 + 32) = v71;
              *(v74 + 40) = v70;
              v69 += 16;
              --v68;
            }

            while (v68);

            v30 = v259;
          }

          else
          {

            v55 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_17;
        }
      }

      v55 = 0;
LABEL_17:
      *&v167 = v148;
      DataSpecification.subscript.getter(v135, v139, &v217);
      v56 = *(&v217 + 1);
      if (!*(&v217 + 1))
      {

        goto LABEL_59;
      }

      v259 = v30;
      v57 = v217;
      v58 = v218;
      v167 = v217;
      *&v168 = v218;
      DataSpecification.Namespace.subscript.getter(v138, *(&v138 + 1), &v217);
      v59 = *(&v217 + 1);
      if (!*(&v217 + 1))
      {

        sub_1DB1718E4(v57, v56, v58);
LABEL_59:
        *&v217 = 0;
        *(&v217 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
        MEMORY[0x1E1283490](v138, *(&v138 + 1));
        MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
        MEMORY[0x1E1283490](v135, v139);
        v127 = v217;
        *&v218 = 0;
        BYTE8(v218) = 5;
        sub_1DB171870();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v128 = v127;
        *(v128 + 16) = 0;
        *(v128 + 24) = 5;
LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(&v191);
        v95 = v140;

LABEL_61:
        v115 = v133;
        v114 = v130;
        v116 = v131;
        goto LABEL_62;
      }

      v60 = v220;
      v149 = v219;
      v137 = *(&v218 + 1);
      v61 = v218;
      v62 = v217;
      sub_1DB1718E4(v57, v56, v58);

      sub_1DB171928(v62, v59, v61, v137, v149, *(&v149 + 1), v60);
      MEMORY[0x1EEE9AC00](v63);
      v65 = v152;
      v64 = v153;
      v129[-6] = v154;
      v129[-5] = v65;
      v129[-4] = v55;
      v129[-3] = v64;
      v129[-2] = v235;
      v66 = v259;
      v31 = sub_1DB1E501C(sub_1DB1F8950, &v129[-8], v60);
      v30 = v66;

LABEL_4:
      v27 = v140;
      v29 = v151 + 1;
      __swift_destroy_boxed_opaque_existential_1(&v191);
      result = sub_1DB1414E8(v31);
      if (v29 == v143)
      {

        v147 = v211;
        goto LABEL_29;
      }
    }
  }

  sub_1DB1754EC(&v247, &v217);
  v147 = MEMORY[0x1E69E7CC0];
  v30 = v4;
LABEL_29:
  v259 = v30;
  v75 = v251;

  v134 &= 1u;
  v76 = *(v75 + 16);
  if (v76)
  {
    v216 = MEMORY[0x1E69E7CC0];
    result = sub_1DB138660(0, v76, 0);
    if (!*(v75 + 16))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v77 = 0;
    v78 = v75 + 32;
    v79 = v216;
    *(&v149 + 1) = v76 - 1;
    v151 = v75;
    while (1)
    {
      v154 = v79;
      sub_1DB175548(v78, v206);
      LODWORD(v152) = v206[0];
      v80 = v208;
      v81 = v209;
      v82 = __swift_project_boxed_opaque_existential_1(v207, v208);
      v204 = v80;
      v205 = v81;
      v83 = __swift_allocate_boxed_opaque_existential_0(&v203);
      v153 = v129;
      v84 = *(v80 - 8);
      MEMORY[0x1EEE9AC00](v83);
      v86 = v129 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v84 + 16))(v86, v82, v80);
      (*(v81 + 16))(&v191, v80, v81);
      v187 = v244;
      v188 = v245;
      v183 = v240;
      v184 = v241;
      v185 = v242;
      v186 = v243;
      v179 = v236;
      v180 = v237;
      v181 = v238;
      v182 = v239;
      v189 = v246;
      v190 = v148;
      v87 = v259;
      sub_1DB1E5268(&v179, v150, &v217);
      v259 = v87;
      if (v87)
      {
        v175 = v199;
        v176 = v200;
        v177 = v201;
        v178 = v202;
        v171 = v195;
        v172 = v196;
        v173 = v197;
        v174 = v198;
        v167 = v191;
        v168 = v192;
        v169 = v193;
        v170 = v194;
        sub_1DB17181C(&v167);
        (*(v84 + 8))(v86, v80);
        __swift_deallocate_boxed_opaque_existential_1(&v203);
        sub_1DB1755A4(v206);

        v95 = v147;
        goto LABEL_61;
      }

      v175 = v199;
      v176 = v200;
      v177 = v201;
      v178 = v202;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      v174 = v198;
      v167 = v191;
      v168 = v192;
      v169 = v193;
      v170 = v194;
      sub_1DB17181C(&v167);
      v163 = v221[4];
      v164 = v221[5];
      v165 = v222;
      v166 = v223;
      v159 = v221[0];
      v160 = v221[1];
      v161 = v221[2];
      v162 = v221[3];
      v155 = v217;
      v156 = v218;
      v157 = v219;
      v158 = v220;
      (*(v81 + 24))(&v155, v80, v81);
      (*(v84 + 32))(v83, v86, v80);
      sub_1DB164980(&v210, v214);
      LOBYTE(v211) = v152;
      sub_1DB1355D0(&v203, &v211 + 8);
      result = sub_1DB1755A4(v206);
      v79 = v154;
      v216 = v154;
      v89 = v154[2];
      v88 = v154[3];
      if (v89 >= v88 >> 1)
      {
        result = sub_1DB138660((v88 > 1), v89 + 1, 1);
        v79 = v216;
      }

      v79[2] = v89 + 1;
      v90 = &v79[11 * v89];
      v91 = v212;
      *(v90 + 2) = v211;
      *(v90 + 3) = v91;
      v92 = v213;
      v93 = v214[0];
      v94 = v214[1];
      v90[14] = v215;
      *(v90 + 5) = v93;
      *(v90 + 6) = v94;
      *(v90 + 4) = v92;
      if (*(&v149 + 1) == v77)
      {
        break;
      }

      v78 += 88;
      if (++v77 >= *(v151 + 16))
      {
        goto LABEL_63;
      }
    }
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
  }

  v96 = v257;
  v97 = *(v257 + 16);
  if (!v97)
  {

    v100 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v154 = v79;
  v216 = MEMORY[0x1E69E7CC0];
  result = sub_1DB138640(0, v97, 0);
  if (!*(v96 + 16))
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v98 = 0;
  v99 = v96 + 32;
  v100 = v216;
  *&v149 = v97 - 1;
  *(&v149 + 1) = v96;
  while (1)
  {
    v153 = v100;
    sub_1DB175650(v99, v206);
    LODWORD(v151) = v206[0];
    v101 = v208;
    v102 = v209;
    v103 = __swift_project_boxed_opaque_existential_1(v207, v208);
    v204 = v101;
    v205 = v102;
    v104 = __swift_allocate_boxed_opaque_existential_0(&v203);
    v152 = v129;
    v105 = *(v101 - 8);
    MEMORY[0x1EEE9AC00](v104);
    v107 = v129 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v105 + 16))(v107, v103, v101);
    (*(v102 + 16))(&v191, v101, v102);
    v187 = v244;
    v188 = v245;
    v183 = v240;
    v184 = v241;
    v185 = v242;
    v186 = v243;
    v179 = v236;
    v180 = v237;
    v181 = v238;
    v182 = v239;
    v189 = v246;
    v190 = v148;
    v108 = v259;
    sub_1DB1E5268(&v179, v150, &v217);
    v259 = v108;
    if (v108)
    {
      v175 = v199;
      v176 = v200;
      v177 = v201;
      v178 = v202;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      v174 = v198;
      v167 = v191;
      v168 = v192;
      v169 = v193;
      v170 = v194;
      sub_1DB17181C(&v167);
      (*(v105 + 8))(v107, v101);
      __swift_deallocate_boxed_opaque_existential_1(&v203);
      sub_1DB1756AC(v206);

      v95 = v147;
      v114 = v154;
      v115 = v133;
      v116 = v131;
      goto LABEL_62;
    }

    v175 = v199;
    v176 = v200;
    v177 = v201;
    v178 = v202;
    v171 = v195;
    v172 = v196;
    v173 = v197;
    v174 = v198;
    v167 = v191;
    v168 = v192;
    v169 = v193;
    v170 = v194;
    sub_1DB17181C(&v167);
    v163 = v221[4];
    v164 = v221[5];
    v165 = v222;
    v166 = v223;
    v159 = v221[0];
    v160 = v221[1];
    v161 = v221[2];
    v162 = v221[3];
    v155 = v217;
    v156 = v218;
    v157 = v219;
    v158 = v220;
    (*(v102 + 24))(&v155, v101, v102);
    (*(v105 + 32))(v104, v107, v101);
    LOBYTE(v211) = v151;
    sub_1DB1355D0(&v203, &v211 + 8);
    result = sub_1DB1756AC(v206);
    v100 = v153;
    v216 = v153;
    v110 = v153[2];
    v109 = v153[3];
    if (v110 >= v109 >> 1)
    {
      result = sub_1DB138640((v109 > 1), v110 + 1, 1);
      v100 = v216;
    }

    v100[2] = v110 + 1;
    v111 = &v100[6 * v110];
    v112 = v211;
    v113 = v213;
    v111[3] = v212;
    v111[4] = v113;
    v111[2] = v112;
    if (v149 == v98)
    {
      break;
    }

    v99 += 48;
    if (++v98 >= *(*(&v149 + 1) + 16))
    {
      goto LABEL_65;
    }
  }

  v79 = v154;
LABEL_53:
  LOBYTE(v167) = BYTE8(v257);
  *(&v167 + 1) = v258;
  v221[4] = v244;
  v221[5] = v245;
  v221[0] = v240;
  v221[1] = v241;
  v221[3] = v243;
  v221[2] = v242;
  v217 = v236;
  v218 = v237;
  v220 = v239;
  v219 = v238;
  *&v222 = v246;
  *(&v222 + 1) = v148;

  v117 = v259;
  sub_1DB1E78A8(&v217);

  if (v117)
  {
    v95 = v147;
    v114 = v79;
    v116 = v100;
    v115 = v133;
LABEL_62:
    LOBYTE(v217) = v134;
    *(&v217 + 1) = v234[0];
    DWORD1(v217) = *(v234 + 3);
    *(&v217 + 1) = v95;
    v218 = v231;
    v219 = v232;
    v220 = v233;
    *(&v221[1] + 8) = v226;
    *(v221 + 8) = v225;
    *&v221[0] = v114;
    *(&v221[5] + 1) = v230;
    *(&v221[4] + 8) = v229;
    *(&v221[3] + 8) = v228;
    *(&v221[2] + 8) = v227;
    *&v222 = v116;
    BYTE8(v222) = v132;
    HIDWORD(v222) = *(v224 + 3);
    *(&v222 + 9) = v224[0];
    v223 = v115;
    return sub_1DB17181C(&v217);
  }

  else
  {
    v119 = v191;
    v120 = *(&v191 + 1);

    v121 = v129[0];
    *v129[0] = v134;
    *(v121 + 1) = v234[0];
    *(v121 + 4) = *(v234 + 3);
    *(v121 + 8) = v147;
    v122 = v232;
    *(v121 + 16) = v231;
    *(v121 + 32) = v122;
    *(v121 + 48) = v233;
    *(v121 + 64) = v79;
    v123 = v226;
    *(v121 + 72) = v225;
    *(v121 + 88) = v123;
    v124 = v227;
    v125 = v228;
    v126 = v230;
    *(v121 + 136) = v229;
    *(v121 + 120) = v125;
    *(v121 + 104) = v124;
    *(v121 + 152) = v126;
    *(v121 + 160) = v100;
    *(v121 + 168) = v119;
    *(v121 + 169) = v224[0];
    *(v121 + 172) = *(v224 + 3);
    *(v121 + 176) = v120;
  }

  return result;
}

uint64_t sub_1DB1E6B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = v5;
  v86 = a2;
  v82 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = v80 - v17;
  v85 = *(a1 + 168);
  v19 = a3[1];
  v116[0] = *a3;
  v116[1] = v19;
  v117 = a3[2];
  v81 = *v4;
  v20 = *(v4 + 1);
  v118 = MEMORY[0x1E69E7CC0];
  v93 = *(v20 + 16);
  if (v93)
  {
    v21 = 0;
    v91 = (v16 + 8);
    v92 = v20 + 32;
    v80[0] = " placeholders, expected: ";
    v87 = xmmword_1DB2BCC40;
    v98 = v14;
    v99 = v11;
    v84 = v80 - v17;
    v90 = v20;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      v97 = v21;
      sub_1DB164980(v92 + 40 * v21, v113);
      v25 = v114;
      v26 = v115;
      v27 = __swift_project_boxed_opaque_existential_1(v113, v114);
      v28 = *(v26 + 24);
      v101 = v27;
      v102 = v25;
      v100 = v26;
      v95 = v28;
      v96 = v26 + 24;
      v28(&v106, v25, v26);

      sub_1DB2BA9C4();
      sub_1DB2BB004();
      v29 = v94;

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
      sub_1DB2BA9B4();
      v30 = v98;
      v31 = v99;
      sub_1DB2BA9D4();
      if (v6)
      {
        MEMORY[0x1E1284A10](v6);

        v32 = *v91;
        (*v91)(v30, v31);
        v32(v18, v31);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
        sub_1DB1445E0(v29, &qword_1ECC27D40, &qword_1DB2C39F8);
        v34 = v18;
      }

      else
      {

        v35 = *v91;
        (*v91)(v30, v31);
        v35(v18, v31);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v35) = (*(*(v36 - 8) + 48))(v29, 1, v36);
        sub_1DB1445E0(v29, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v35 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v22 = swift_allocObject();
          *(v22 + 16) = v87;
          v48 = v102;
          v49 = v100;
          *(v22 + 56) = v102;
          *(v22 + 64) = v49;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v22 + 32));
          (*(*(v48 - 8) + 16))(boxed_opaque_existential_0, v101, v48);
          goto LABEL_28;
        }

        v34 = v18;
      }

      v37 = v101;
      v38 = v102;
      v39 = v100;
      v95(&v106, v102, v100);
      v41 = v106;
      v40 = v107;

      LOBYTE(v41) = sub_1DB23CC0C(v41, v40, 42);

      if (v41)
      {
        v42 = *(&v117 + 1);
        v43 = v86;
        if (!*(&v117 + 1))
        {

          v75 = v116[0];
          sub_1DB1F88FC();
          swift_allocError();
          *v76 = v75;
          *(v76 + 16) = 0;
          *(v76 + 24) = 4;
          swift_willThrow();

          return __swift_destroy_boxed_opaque_existential_1(v113);
        }

        v44 = v117;
        v45 = v116[0];
        v96 = *(&v116[0] + 1);
        v89 = *&v116[0];
        if (v86)
        {

          if (Connection.tableExists(_:)(v45))
          {
            type metadata accessor for SchemaReader();
            *(swift_initStackObject() + 16) = v43;

            v46 = sub_1DB26B520(v45._countAndFlagsBits, v45._object);
            v47 = 0;
            v88 = v44;
            v52 = v46;
            swift_setDeallocating();

            v53 = *(v52 + 16);
            v51 = MEMORY[0x1E69E7CC0];
            if (v53)
            {
              v83 = v42;
              v95 = 0;
              v106 = MEMORY[0x1E69E7CC0];
              sub_1DB138470(0, v53, 0);
              v51 = v106;
              v80[3] = v52;
              v54 = (v52 + 40);
              do
              {
                v56 = *(v54 - 1);
                v55 = *v54;
                v106 = v51;
                v58 = *(v51 + 16);
                v57 = *(v51 + 24);

                if (v58 >= v57 >> 1)
                {
                  sub_1DB138470((v57 > 1), v58 + 1, 1);
                  v51 = v106;
                }

                *(v51 + 16) = v58 + 1;
                v59 = v51 + 16 * v58;
                *(v59 + 32) = v56;
                *(v59 + 40) = v55;
                v54 += 16;
                --v53;
              }

              while (v53);

              v47 = v95;
              v42 = v83;
            }

            else
            {
            }

            v44 = v88;
LABEL_25:
            v103 = v85;
            v60 = v44;
            DataSpecification.subscript.getter(v44, v42, &v106);
            v61 = v107;
            if (!v107)
            {

              goto LABEL_36;
            }

            v62 = v42;
            v95 = v47;
            v63 = v106;
            v64 = v108;
            v103 = v106;
            v104 = v107;
            v105 = v108;
            DataSpecification.Namespace.subscript.getter(v89, v96, &v106);
            v65 = v107;
            if (!v107)
            {

              sub_1DB1718E4(v63, v61, v64);
              v42 = v62;
LABEL_36:
              v106 = 0;
              v107 = 0xE000000000000000;
              sub_1DB2BB4F4();
              MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
              MEMORY[0x1E1283490](v89, v96);
              MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
              MEMORY[0x1E1283490](v60, v42);
              v77 = v106;
              v78 = v107;
              v108 = 0;
              LOBYTE(v109) = 5;
              sub_1DB171870();
              swift_willThrowTypedImpl();
              swift_allocError();
              *v79 = v77;
              *(v79 + 8) = v78;
              *(v79 + 16) = 0;
              *(v79 + 24) = 5;
              return __swift_destroy_boxed_opaque_existential_1(v113);
            }

            v66 = v112;
            v96 = v111;
            v88 = v109;
            v89 = v110;
            v67 = v108;
            v68 = v106;
            sub_1DB1718E4(v63, v61, v64);

            v18 = v84;
            sub_1DB171928(v68, v65, v67, v88, v89, v96, v66);
            MEMORY[0x1EEE9AC00](v69);
            v71 = v100;
            v70 = v101;
            v80[-6] = v102;
            v80[-5] = v71;
            v80[-4] = v51;
            v80[-3] = v70;
            v80[-2] = v116;
            v72 = v95;
            v22 = sub_1DB1E501C(sub_1DB1F8BBC, &v80[-8], v66);
            v6 = v72;

LABEL_28:
            v24 = v97;
            goto LABEL_4;
          }
        }

        v51 = 0;
        v47 = 0;
        goto LABEL_25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v22 = swift_allocObject();
      *(v22 + 16) = v87;
      *(v22 + 56) = v38;
      *(v22 + 64) = v39;
      v23 = __swift_allocate_boxed_opaque_existential_0((v22 + 32));
      (*(*(v38 - 8) + 16))(v23, v37, v38);
      v24 = v97;
      v18 = v34;
      v6 = 0;
LABEL_4:
      v21 = v24 + 1;
      __swift_destroy_boxed_opaque_existential_1(v113);
      result = sub_1DB1414E8(v22);
      v20 = v90;
      if (v21 == v93)
      {
        v73 = v118;
        goto LABEL_32;
      }
    }
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v74 = v82;
  *v82 = v81;
  *(v74 + 1) = v73;
  return result;
}

void sub_1DB1E78A8(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v971 = v5;
  v6 = v3;
  v934 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D40, &qword_1DB2C39F8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v943 = &v886 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v886 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v956 = &v886 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v929 = &v886 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v935 = &v886 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v886 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v938 = &v886 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v950 = &v886 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v945 = &v886 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D48, &qword_1DB2C3A00);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v886 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v941 = &v886 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v937 = &v886 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v960 = &v886 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v949 = &v886 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v963 = &v886 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v944 = &v886 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v67 = &v886 - v66;
  v68 = v6[4];
  v1151 = v6[5];
  v1150 = v68;
  v69 = v6[3];
  v1148 = v6[2];
  v1149 = v69;
  v70 = v6[9];
  v1156 = v6[10];
  v71 = v6[7];
  v72 = v6[8];
  v1155 = v70;
  v1154 = v72;
  v1152 = v6[6];
  v1153 = v71;
  v73 = *v6;
  v1147 = v6[1];
  v1146 = v73;
  v74 = *v1;
  v75 = *(v1 + 1);
  v76 = *(v75 + 16);
  v77 = MEMORY[0x1E69E7CC0];
  if (!v76)
  {
    v830 = v934;
    goto LABEL_429;
  }

  v903 = *v1;
  v955 = v67;
  v924 = v60;
  v925 = v62;
  v936 = v61;
  v923 = v59;
  v916 = v58;
  v965 = v57;
  v953 = v56;
  v966 = v35;
  v958 = v65;
  v952 = v64;
  v940 = v63;
  v973 = v55;
  v926 = v22;
  v959 = v13;
  v1145 = MEMORY[0x1E69E7CC0];
  v910 = v76;
  v932 = v75;
  sub_1DB138158(v76);
  if (!*(v932 + 16))
  {
LABEL_474:
    __break(1u);
LABEL_475:

    sub_1DB1F88FC();
    swift_allocError();
    object = v948._object;
    *v865 = v948._countAndFlagsBits;
    *(v865 + 8) = object;
    *(v865 + 16) = 0;
    *(v865 + 24) = 4;
    swift_willThrow();

    goto LABEL_482;
  }

  v78 = v4;
  v79 = 0;
  v80 = v932 + 32;
  v972 = (v29 + 8);
  v939 = " placeholders, expected: ";
  v928 = (&v1083 + 1);
  v911 = (&v1105 + 1);
  v931 = &v1112[1];
  v933 = (&v1098 + 1);
  v951 = xmmword_1DB2BCC40;
  v81 = 1;
  v909 = v932 + 32;
LABEL_4:
  v912 = v81;
  sub_1DB175700(v80 + 240 * v79, v1133);
  v1180 = v1133[8];
  v1181 = v1133[9];
  v1182 = v1133[10];
  v1183 = v1134;
  v1176 = v1133[4];
  v1177 = v1133[5];
  v1178 = v1133[6];
  v1179 = v1133[7];
  v1172 = v1133[0];
  v1173 = v1133[1];
  v1174 = v1133[2];
  v1175 = v1133[3];
  sub_1DB1768C0(v1131, &v1146, v971);
  if (v78)
  {
    goto LABEL_470;
  }

  v1127 = v1131[8];
  v1128 = v1131[9];
  v1129 = v1131[10];
  v1130 = v1132;
  v1123 = v1131[4];
  v1124 = v1131[5];
  v1125 = v1131[6];
  v1126 = v1131[7];
  v1119 = v1131[0];
  v1120 = v1131[1];
  v1121 = v1131[2];
  v1122 = v1131[3];
  v82 = v1135;
  if (v1135)
  {
    v83 = *(v1135 + 16);
    if (v83)
    {
      v1070[0] = MEMORY[0x1E69E7CC0];
      sub_1DB138140(v83);
      v84 = 0;
      v85 = (v82 + 32);
      v920 = v83;
      v921 = v82;
      v919 = (v82 + 32);
      while (1)
      {
        if (v84 >= *(v82 + 16))
        {
          goto LABEL_512;
        }

        v1184 = v78;
        v927 = v84;
        sub_1DB164980(&v85[40 * v84], v1064);
        v86 = v1065;
        v970 = v1066;
        v87 = __swift_project_boxed_opaque_existential_1(v1064, v1065);
        v88 = *(v86 - 8);
        v89 = *(v88 + 64);
        MEMORY[0x1EEE9AC00](v87);
        v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
        v91 = *(v88 + 16);
        v91(&v886 - v90, v87, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC8, &qword_1DB2BCF30);
        if (swift_dynamicCast())
        {
          v915 = &v886;
          sub_1DB1355D0(&v994, &v998);
          v92 = *(&v999 + 1);
          v93 = v1000;
          __swift_project_boxed_opaque_existential_1(&v998, *(&v999 + 1));
          *(&v982 + 1) = v92;
          *&v983 = v93;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v981);
          v918 = &v886;
          MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
          v913 = v95;
          v96 = *(v95 + 16);
          v908 = &v886 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
          v96();
          v97 = *(v93 + 16);
          v914 = v92;
          v890 = v93;
          v97(v1112, v92, v93);
          *&v1115[128] = *&v1112[128];
          v1116 = *&v1112[144];
          v1117 = v1113;
          v1118 = v1114;
          *&v1115[64] = *&v1112[64];
          *&v1115[80] = *&v1112[80];
          *&v1115[96] = *&v1112[96];
          *&v1115[112] = *&v1112[112];
          *v1115 = *v1112;
          *&v1115[16] = *&v1112[16];
          *&v1115[32] = *&v1112[32];
          *&v1115[48] = *&v1112[48];
          LODWORD(v930) = v1112[0];
          *v977 = *v931;
          *&v977[3] = *(v931 + 3);
          v1045 = *&v1112[16];
          v1046 = *&v1112[32];
          v1047 = *&v1112[48];
          v1053 = *&v1112[88];
          v1052 = *&v1112[72];
          *&v1057 = *&v1112[152];
          v1056 = *&v1112[136];
          v1055 = *&v1112[120];
          v1054 = *&v1112[104];
          v905 = *&v1112[64];
          v906 = v1113;
          LODWORD(v907) = BYTE8(v1113);
          *(v974 + 3) = HIDWORD(v1113);
          v974[0] = *(&v1113 + 9);
          v917 = v1114;
          v83 = *&v1112[8];
          v1164[0] = *&v1112[16];
          v1164[1] = *&v1112[32];
          v946 = *&v1112[48];
          v1165 = *&v1112[48];
          v962 = *&v1112[56];
          v1166 = *&v1112[56];
          v98 = MEMORY[0x1E69E7CC0];
          *&v1035 = MEMORY[0x1E69E7CC0];
          v947 = *(*&v1112[8] + 16);
          if (!v947)
          {
            sub_1DB1754EC(v1115, &v1105);
            v891 = v98;
            v100 = v1184;
            goto LABEL_96;
          }

          v957 = *&v1112[16];
          v961 = *&v1112[24];
          v942 = *(&v1156 + 1);
          v948._object = (*&v1112[8] + 32);
          sub_1DB1754EC(v1115, &v1105);

          v99 = 0;
          v100 = v1184;
          v948._countAndFlagsBits = v83;
          do
          {
            if (v99 >= *(v83 + 16))
            {
              __break(1u);
              goto LABEL_505;
            }

            v967 = v99;
            sub_1DB164980(v948._object + 40 * v99, &v1098);
            v105 = v1099._object;
            v106 = v1100;
            v107 = __swift_project_boxed_opaque_existential_1(&v1098, v1099._object);
            v108 = v106[3];
            v969 = v107;
            v970 = v105;
            v968 = v106;
            *(&v964 + 1) = v106 + 3;
            *&v964 = v108;
            v108(&v1105, v105, v106);
            v1184 = v100;

            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
            v109 = v944;
            v110 = v973;
            sub_1DB2BA9B4();
            v111 = v945;
            v112 = v1184;
            sub_1DB2BA9D4();
            v100 = v112;
            if (v112)
            {
              MEMORY[0x1E1284A10](v112);

              v113 = *v972;
              (*v972)(v109, v110);
              v113(v955, v110);
              v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              (*(*(v114 - 8) + 56))(v111, 1, 1, v114);
              sub_1DB1445E0(v111, &qword_1ECC27D40, &qword_1DB2C39F8);
            }

            else
            {

              v115 = *v972;
              (*v972)(v109, v110);
              v115(v955, v110);
              v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              LODWORD(v115) = (*(*(v116 - 8) + 48))(v111, 1, v116);
              sub_1DB1445E0(v111, &qword_1ECC27D40, &qword_1DB2C39F8);
              if (v115 != 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                v101 = swift_allocObject();
                *(v101 + 16) = v951;
                v102 = v970;
                v103 = v968;
                *(v101 + 56) = v970;
                *(v101 + 64) = v103;
                v104 = __swift_allocate_boxed_opaque_existential_0((v101 + 32));
                (*(*(v102 - 8) + 16))(v104, v969, v102);
                goto LABEL_13;
              }
            }

            (v964)(&v1105, v970, v968);
            v117 = v1105;

            if ((*(&v117 + 1) & 0x2000000000000000) != 0)
            {
              v118 = HIBYTE(*(&v117 + 1)) & 0xFLL;
            }

            else
            {
              v118 = v117 & 0xFFFFFFFFFFFFLL;
            }

            if (v118)
            {
              v119 = 0;
              while (1)
              {
                if ((*(&v117 + 1) & 0x1000000000000000) != 0)
                {
                  v122 = sub_1DB2BB4E4();
                  goto LABEL_32;
                }

                if ((*(&v117 + 1) & 0x2000000000000000) != 0)
                {
                  *&v1083 = v117;
                  *(&v1083 + 1) = *(&v117 + 1) & 0xFFFFFFFFFFFFFFLL;
                  v121 = &v1083 + v119;
                }

                else
                {
                  v120 = (*(&v117 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
                  if ((v117 & 0x1000000000000000) == 0)
                  {
                    v120 = sub_1DB2BB5B4();
                  }

                  v121 = (v120 + v119);
                }

                v122 = *v121;
                if ((*v121 & 0x80000000) == 0)
                {
                  break;
                }

                v124 = (__clz(v122 ^ 0xFF) - 24);
                if (v124 > 2)
                {
                  if (v124 == 3)
                  {
                    v122 = ((v122 & 0xF) << 12) | ((v121[1] & 0x3F) << 6) | v121[2] & 0x3F;
                    v123 = 3;
                  }

                  else
                  {
                    v122 = ((v122 & 0xF) << 18) | ((v121[1] & 0x3F) << 12) | ((v121[2] & 0x3F) << 6) | v121[3] & 0x3F;
                    v123 = 4;
                  }
                }

                else
                {
                  if (v124 == 1)
                  {
                    break;
                  }

                  v122 = v121[1] & 0x3F | ((v122 & 0x1F) << 6);
                  v123 = 2;
                }

LABEL_32:
                if (v122 == 42)
                {

                  if (v962)
                  {
                    v125 = v971;
                    if (v971)
                    {

                      v126 = v957;
                      v127._countAndFlagsBits = v957;
                      v128 = v961;
                      v127._object = v961;
                      if (Connection.tableExists(_:)(v127))
                      {
                        type metadata accessor for SchemaReader();
                        *(swift_allocObject() + 16) = v125;

                        v142 = sub_1DB26B520(v126, v128);
                        swift_setDeallocating();
                        SchemaReader.__deallocating_deinit();
                        v143 = sub_1DB165CE0(v142);
                        if (v143)
                        {
                          v144 = v143;
                          *&v1105 = MEMORY[0x1E69E7CC0];
                          sub_1DB138128(v143);
                          if (v144 < 0)
                          {
                            goto LABEL_521;
                          }

                          v145 = (v142 + 40);
                          do
                          {
                            v146 = *(v145 - 1);
                            v147 = *v145;

                            sub_1DB138850();
                            v148 = *(v1105 + 16);
                            sub_1DB13893C(v148);
                            sub_1DB1389E8(v148, v146, v147);
                            nullsub_1();
                            v145 += 16;
                            --v144;
                          }

                          while (v144);

                          v129 = v1105;
                        }

                        else
                        {

                          v129 = sub_1DB138230(0);
                        }
                      }

                      else
                      {

                        v129 = 0;
                      }
                    }

                    else
                    {
                      v129 = 0;
                    }

                    *&v1083 = v942;
                    DataSpecification.subscript.getter(v946, v962, &v1105);
                    v130 = *(&v1105 + 1);
                    if (*(&v1105 + 1))
                    {
                      v1184 = 0;
                      v131 = v1105;
                      v132 = v1106;
                      v1083 = v1105;
                      v1084._countAndFlagsBits = v1106;
                      DataSpecification.Namespace.subscript.getter(v957, v961, &v1105);
                      v133 = *(&v1105 + 1);
                      if (*(&v1105 + 1))
                      {
                        v134 = v1108;
                        *&v964 = *(&v1107 + 1);
                        v954 = v1107;
                        *(&v964 + 1) = v129;
                        v135 = *(&v1106 + 1);
                        v136 = v1106;
                        v137 = v1105;
                        sub_1DB1718E4(v131, v130, v132);

                        sub_1DB171928(v137, v133, v136, v135, v954, v964, v134);
                        MEMORY[0x1EEE9AC00](v138);
                        v139 = v968;
                        *(&v886 - 6) = v970;
                        *(&v886 - 5) = v139;
                        v140 = v969;
                        *(&v886 - 4) = *(&v964 + 1);
                        *(&v886 - 3) = v140;
                        *(&v886 - 2) = v1164;
                        v141 = v1184;
                        v101 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v134);
                        v100 = v141;

                        goto LABEL_13;
                      }

                      sub_1DB1718E4(v131, v130, v132);
                    }

                    else
                    {
                    }

                    *&v1105 = 0;
                    *(&v1105 + 1) = 0xE000000000000000;
                    sub_1DB2BB4F4();
                    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                    MEMORY[0x1E1283490](v957, v961);
                    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                    MEMORY[0x1E1283490](v946, v962);
                    v843 = v1105;
                    *&v1106 = 0;
                    BYTE8(v1106) = 5;
                    sub_1DB171870();
                    swift_willThrowTypedImpl();
                    swift_allocError();
                    *v844 = v843;
                    *(v844 + 16) = 0;
                    *(v844 + 24) = 5;
                  }

                  else
                  {

                    sub_1DB1F88FC();
                    swift_allocError();
                    v841 = v961;
                    *v842 = v957;
                    *(v842 + 8) = v841;
                    *(v842 + 16) = 0;
                    *(v842 + 24) = 4;
                    swift_willThrow();
                  }

                  sub_1DB1759B0(&v1119);
                  sub_1DB17181C(v1115);
                  (v913[1])(v908, v914);
                  __swift_destroy_boxed_opaque_existential_1(&v1098);
                  countAndFlagsBits = v948._countAndFlagsBits;

                  v846 = countAndFlagsBits;
                  v847 = v905;
                  v83 = v906;
                  goto LABEL_468;
                }

                v119 += v123;
                if (v119 >= v118)
                {
                  goto LABEL_56;
                }
              }

              v123 = 1;
              goto LABEL_32;
            }

LABEL_56:

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v149 = swift_allocObject();
            sub_1DB158A70(v149, 1);
            v150 = v970;
            v151 = v968;
            v152[3] = v970;
            v152[4] = v151;
            v153 = __swift_allocate_boxed_opaque_existential_0(v152);
            (*(*(v150 - 8) + 16))(v153, v969, v150);
            nullsub_1();
            v101 = v154;
            v100 = 0;
LABEL_13:
            v83 = v948._countAndFlagsBits;
            v99 = v967 + 1;
            __swift_destroy_boxed_opaque_existential_1(&v1098);
            sub_1DB1414E8(v101);
          }

          while (v99 != v947);

          v891 = v1035;
LABEL_96:
          v234 = *&v1115[64];

          LODWORD(v930) = v930 & 1;
          v235 = *(v234 + 16);
          if (v235)
          {
            v1016[0] = MEMORY[0x1E69E7CC0];
            sub_1DB138188(v235);
            if (*(v234 + 16))
            {
              v236 = 0;
              v237 = v234 + 32;
              v238 = 1;
              v887 = v235;
              v888 = v234;
              v886 = v234 + 32;
              do
              {
                v898 = v238;
                sub_1DB175548(v237 + 88 * v236, &v1035);
                LODWORD(v897) = v1035;
                v240 = *(&v1037 + 1);
                v239 = v1037;
                __swift_project_boxed_opaque_existential_1(&v1035 + 1, v1037);
                *(&v1013 + 1) = v239;
                *&v1014 = v240;
                v895 = __swift_allocate_boxed_opaque_existential_0(&v1012);
                v904 = &v886;
                MEMORY[0x1EEE9AC00](v895);
                v900 = (&v886 - ((v241 + 15) & 0xFFFFFFFFFFFFFFF0));
                v901 = v242;
                (*(v242 + 2))();
                v243 = v240[2];
                v902 = v239;
                v896 = v240;
                v243(&v1098, v239, v240);
                v1109[4] = v1102[4];
                v1109[5] = v1102[5];
                v1110 = v1103;
                v1111 = v1104;
                v1109[0] = v1102[0];
                v1109[1] = v1102[1];
                v1109[2] = v1102[2];
                v1109[3] = v1102[3];
                v1105 = v1098;
                v1106 = v1099;
                v1107 = v1100;
                v1108 = v1101;
                LODWORD(v922) = v1098;
                LODWORD(v1004) = *v933;
                *(&v1004 + 3) = *(v933 + 3);
                v1006 = v1099;
                v1007 = v1100;
                v1008 = v1101;
                v1018 = *(&v1102[1] + 8);
                v1017 = *(v1102 + 8);
                *&v1022 = *(&v1102[5] + 1);
                v1021 = *(&v1102[4] + 8);
                v1020 = *(&v1102[3] + 8);
                v1019 = *(&v1102[2] + 8);
                v892 = *&v1102[0];
                v893 = v1103;
                LODWORD(v894) = BYTE8(v1103);
                *(&v979 + 3) = HIDWORD(v1103);
                LODWORD(v979) = *(&v1103 + 9);
                v899 = v1104;
                v244 = *(&v1098 + 1);
                v1163[0] = v1099;
                v1163[1] = v1100;
                v954 = *(&v1101 + 1);
                v946 = v1101;
                v1163[2] = v1101;
                v245 = MEMORY[0x1E69E7CC0];
                *&v991 = MEMORY[0x1E69E7CC0];
                v962 = *(*(&v1098 + 1) + 16);
                if (!v962)
                {
                  sub_1DB1754EC(&v1105, &v1083);
                  goto LABEL_126;
                }

                v948 = v1099;
                v942 = *(&v1156 + 1);
                sub_1DB1754EC(&v1105, &v1083);
                v961 = (v244 + 32);

                v246 = 0;
                v957 = v244;
                do
                {
                  if (v246 >= *(v244 + 16))
                  {
                    __break(1u);

                    sub_1DB1F89E4(&v1146);
                    sub_1DB1759B0(&v1119);
                    sub_1DB17181C(v1115);
                    sub_1DB17181C(&v1105);
                    (v905[1])(v902, v906);
                    (v913[1])(v908, v914);
                    sub_1DB1F7130(&v1035);
                    sub_1DB1F7184(&v1052);
                    v873 = v246;
                    v875 = v234;
                    v437 = v990;
                    v870 = v899;
                    v83 = v900;
                    v874 = v893;
                    goto LABEL_484;
                  }

                  v970 = v246;
                  sub_1DB164980(v961 + 40 * v246, &v1072);
                  v252 = v1073._object;
                  v253 = v1074;
                  v254 = __swift_project_boxed_opaque_existential_1(&v1072, v1073._object);
                  v255 = *(v253 + 3);
                  v968 = v254;
                  v969 = v252;
                  v967 = v253;
                  *(&v964 + 1) = v253 + 24;
                  *&v964 = v255;
                  v255(&v1083, v252, v253);
                  v1184 = v100;

                  sub_1DB2BA9C4();
                  sub_1DB2BB004();
                  v234 = v256;

                  sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
                  v257 = v949;
                  v258 = v973;
                  sub_1DB2BA9B4();
                  v259 = v950;
                  v260 = v1184;
                  sub_1DB2BA9D4();
                  v100 = v260;
                  if (v260)
                  {
                    MEMORY[0x1E1284A10](v260);

                    v261 = *v972;
                    (*v972)(v257, v258);
                    v261(v963, v258);
                    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
                    (*(*(v262 - 8) + 56))(v259, 1, 1, v262);
                    sub_1DB1445E0(v259, &qword_1ECC27D40, &qword_1DB2C39F8);
                    v100 = 0;
                  }

                  else
                  {

                    v263 = *v972;
                    (*v972)(v257, v258);
                    v263(v963, v258);
                    v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
                    LODWORD(v263) = (*(*(v264 - 8) + 48))(v259, 1, v264);
                    sub_1DB1445E0(v259, &qword_1ECC27D40, &qword_1DB2C39F8);
                    if (v263 != 1)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                      v251 = swift_allocObject();
                      *(v251 + 16) = v951;
                      v273 = v969;
                      v274 = v967;
                      *(v251 + 56) = v969;
                      *(v251 + 64) = v274;
                      v275 = __swift_allocate_boxed_opaque_existential_0((v251 + 32));
                      (*(*(v273 - 1) + 16))(v275, v968, v273);
                      v265 = v970;
                      goto LABEL_102;
                    }
                  }

                  v265 = v970;
                  v266 = v969;
                  v267 = v968;
                  v268 = v967;
                  (v964)(&v1083, v969, v967);
                  v270 = *(&v1083 + 1);
                  v269 = v1083;

                  LOBYTE(v269) = sub_1DB23CC0C(v269, v270, 42);

                  if ((v269 & 1) == 0)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                    v247 = swift_allocObject();
                    sub_1DB158A70(v247, 1);
                    v248[3] = v266;
                    v248[4] = v268;
                    v249 = __swift_allocate_boxed_opaque_existential_0(v248);
                    (*(*(v266 - 8) + 16))(v249, v267, v266);
                    nullsub_1();
                    v251 = v250;
                    goto LABEL_102;
                  }

                  if (!v954)
                  {

                    sub_1DB1F88FC();
                    swift_allocError();
                    v848 = v948._object;
                    *v849 = v948._countAndFlagsBits;
                    *(v849 + 8) = v848;
                    *(v849 + 16) = 0;
                    *(v849 + 24) = 4;
                    swift_willThrow();

                    goto LABEL_450;
                  }

                  v271 = v971;
                  if (v971)
                  {

                    v272 = v948;
                    if (Connection.tableExists(_:)(v948))
                    {
                      type metadata accessor for SchemaReader();
                      *(swift_allocObject() + 16) = v271;

                      v288 = sub_1DB26B520(v272._countAndFlagsBits, v272._object);
                      swift_setDeallocating();
                      SchemaReader.__deallocating_deinit();
                      v289 = sub_1DB165CE0(v288);
                      if (v289)
                      {
                        v290 = v289;
                        *&v1083 = MEMORY[0x1E69E7CC0];
                        sub_1DB138128(v289);
                        if (v290 < 0)
                        {
                          goto LABEL_522;
                        }

                        v291 = (v288 + 40);
                        do
                        {
                          v292 = *(v291 - 1);
                          v293 = *v291;

                          sub_1DB138850();
                          v294 = *(v1083 + 16);
                          sub_1DB13893C(v294);
                          sub_1DB1389E8(v294, v292, v293);
                          nullsub_1();
                          v291 += 16;
                          --v290;
                        }

                        while (v290);

                        v276 = v1083;
                        v100 = 0;
                      }

                      else
                      {

                        v276 = sub_1DB138230(0);
                      }

                      goto LABEL_115;
                    }
                  }

                  v276 = 0;
LABEL_115:
                  v987._countAndFlagsBits = v942;
                  DataSpecification.subscript.getter(v946, v954, &v1083);
                  v277 = *(&v1083 + 1);
                  if (!*(&v1083 + 1))
                  {

                    goto LABEL_449;
                  }

                  v1184 = v100;
                  v278 = v1083;
                  v279 = v1084._countAndFlagsBits;
                  v987 = v1083;
                  *&v988 = v1084._countAndFlagsBits;
                  DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1083);
                  v280 = *(&v1083 + 1);
                  if (!*(&v1083 + 1))
                  {

                    sub_1DB1718E4(v278, v277, v279);
LABEL_449:
                    *&v1083 = 0;
                    *(&v1083 + 1) = 0xE000000000000000;
                    sub_1DB2BB4F4();
                    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                    MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
                    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                    MEMORY[0x1E1283490](v946, v954);
                    v850 = v1083;
                    v1084._countAndFlagsBits = 0;
                    LOBYTE(v1084._object) = 5;
                    sub_1DB171870();
                    swift_willThrowTypedImpl();
                    swift_allocError();
                    *v851 = v850;
                    *(v851 + 16) = 0;
                    *(v851 + 24) = 5;
LABEL_450:
                    sub_1DB1759B0(&v1119);
                    sub_1DB17181C(&v1105);
                    sub_1DB17181C(v1115);
                    (*(v901 + 1))(v900, v902);
                    (v913[1])(v908, v914);
                    __swift_destroy_boxed_opaque_existential_1(&v1072);
                    v245 = v957;

LABEL_451:
                    LOBYTE(v1083) = v922;
                    *(&v1083 + 1) = v1004;
                    DWORD1(v1083) = *(&v1004 + 3);
                    *(&v1083 + 1) = v245;
                    v1084 = v1006;
                    v1085 = v1007;
                    v1086 = v1008;
                    v1089 = v1018;
                    v1088 = v1017;
                    v1087 = v892;
                    v1093 = v1022;
                    v1092 = v1021;
                    v1091 = v1020;
                    v1090 = v1019;
                    v1094 = v893;
                    v1095 = v894;
                    *&v1096[3] = *(&v979 + 3);
                    *v1096 = v979;
                    v1097 = v899;
                    sub_1DB17181C(&v1083);
                    __swift_deallocate_boxed_opaque_existential_1(&v1012);
                    sub_1DB1755A4(&v1035);

                    v847 = v905;
                    v83 = v906;
                    goto LABEL_467;
                  }

                  *(&v964 + 1) = v276;
                  v234 = v1086;
                  *&v964 = *(&v1085 + 1);
                  v947 = v1085;
                  v281 = v1084._object;
                  v282 = v1084._countAndFlagsBits;
                  v283 = v1083;
                  sub_1DB1718E4(v278, v277, v279);

                  v265 = v970;
                  sub_1DB171928(v283, v280, v282, v281, v947, v964, v234);
                  MEMORY[0x1EEE9AC00](v284);
                  v285 = v967;
                  *(&v886 - 6) = v969;
                  *(&v886 - 5) = v285;
                  v286 = v968;
                  *(&v886 - 4) = *(&v964 + 1);
                  *(&v886 - 3) = v286;
                  *(&v886 - 2) = v1163;
                  v287 = v1184;
                  v251 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v234);
                  v100 = v287;

LABEL_102:
                  v246 = v265 + 1;
                  __swift_destroy_boxed_opaque_existential_1(&v1072);
                  sub_1DB1414E8(v251);
                  v244 = v957;
                }

                while (v246 != v962);

                v245 = v991;
LABEL_126:
                v295 = *&v1109[0];

                LODWORD(v922) = v922 & 1;
                v296 = v971;

                sub_1DB1F8988(&v1146, &v1083);
                v297 = sub_1DB1F7558(v295, &v1146, v296);
                if (v100)
                {

                  sub_1DB1F89E4(&v1146);
                  sub_1DB1759B0(&v1119);
                  sub_1DB17181C(&v1105);
                  sub_1DB17181C(v1115);
                  (*(v901 + 1))(v900, v902);
                  (v913[1])(v908, v914);
                  goto LABEL_451;
                }

                v298 = v297;

                v299 = v1110;
                sub_1DB1F89E4(&v1146);

                sub_1DB1F8988(&v1146, &v1083);
                v300 = sub_1DB1F71D8(v299, &v1146, v296);

                sub_1DB1F89E4(&v1146);

                LOBYTE(v1028) = BYTE8(v1110);
                v1029 = v1111;
                v1080 = v1154;
                v1081 = v1155;
                v1082 = v1156;
                v1076 = v1150;
                v1077 = v1151;
                v1079 = v1153;
                v1078 = v1152;
                v1072 = v1146;
                v1073 = v1147;
                v1075 = v1149;
                v1074 = v1148;

                sub_1DB1E78A8(&v1072);
                sub_1DB17181C(&v1105);

                LOBYTE(v299) = v987._countAndFlagsBits;
                v301 = v987._object;

                v1084 = v1006;
                v1085 = v1007;
                v1086 = v1008;
                v1090 = v1019;
                v1091 = v1020;
                v1092 = v1021;
                v302 = v1018;
                v1088 = v1017;
                v303 = v928;
                *v928 = v1004;
                *(v303 + 3) = *(&v1004 + 3);
                v1093 = v1022;
                v1089 = v302;
                *&v1096[3] = *(&v979 + 3);
                *v1096 = v979;
                LOBYTE(v1083) = v922;
                *(&v1083 + 1) = v245;
                v1087 = v298;
                v1094 = v300;
                v1095 = v299;
                v1097 = v301;
                v304 = v900;
                v305 = v902;
                (v896[3])(&v1083, v902);
                (*(v901 + 4))(v895, v304, v305);
                sub_1DB164980(&v1038, &v1033[32]);
                LOBYTE(v1032) = v897;
                sub_1DB1355D0(&v1012, &v1032 + 8);
                sub_1DB1755A4(&v1035);
                v306 = v1016[0];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1DB138660(0, *(v306 + 16) + 1, 1);
                  v306 = v1016[0];
                }

                v307 = v887;
                v234 = v888;
                v83 = *(v306 + 16);
                v308 = *(v306 + 24);
                if (v83 >= v308 >> 1)
                {
                  sub_1DB138660((v308 > 1), v83 + 1, 1);
                  v306 = v1016[0];
                }

                *(v306 + 16) = v83 + 1;
                v309 = v306 + 88 * v83;
                v310 = *v1033;
                *(v309 + 32) = v1032;
                *(v309 + 48) = v310;
                v311 = *&v1033[16];
                v312 = *&v1033[32];
                v313 = *&v1033[48];
                *(v309 + 112) = *&v1033[64];
                *(v309 + 80) = v312;
                *(v309 + 96) = v313;
                *(v309 + 64) = v311;
                v236 = v898;
                if (v898 == v307)
                {

                  v100 = 0;
                  v83 = MEMORY[0x1E69E7CC0];
                  goto LABEL_135;
                }

                v238 = v898 + 1;
                v100 = 0;
                v237 = v886;
              }

              while (v898 < *(v234 + 16));
            }

LABEL_505:
            __break(1u);
            goto LABEL_506;
          }

          v83 = MEMORY[0x1E69E7CC0];
          v306 = MEMORY[0x1E69E7CC0];
LABEL_135:
          v314 = v1117;
          v315 = *(v1117 + 16);
          v892 = v306;
          if (!v315)
          {
            v380 = v100;

            goto LABEL_184;
          }

          v1016[0] = v83;
          v888 = v315;
          sub_1DB138170(v315);
          if (!*(v314 + 16))
          {
            goto LABEL_511;
          }

          v316 = 0;
          v317 = v314 + 32;
          v318 = 1;
          v886 = v314 + 32;
          v887 = v314;
LABEL_138:
          v899 = v318;
          sub_1DB175650(v317 + 48 * v316, &v1017);
          LODWORD(v898) = v1017;
          v320 = *(&v1019 + 1);
          v319 = v1019;
          __swift_project_boxed_opaque_existential_1(&v1017 + 1, v1019);
          *(&v1013 + 1) = v319;
          *&v1014 = v320;
          v896 = __swift_allocate_boxed_opaque_existential_0(&v1012);
          v905 = &v886;
          MEMORY[0x1EEE9AC00](v896);
          v901 = &v886 - ((v321 + 15) & 0xFFFFFFFFFFFFFFF0);
          v902 = v322;
          (*(v322 + 2))();
          v323 = *(v320 + 2);
          v904 = v319;
          v897 = v320;
          v323(&v1098, v319, v320);
          v1109[4] = v1102[4];
          v1109[5] = v1102[5];
          v1110 = v1103;
          v1111 = v1104;
          v1109[0] = v1102[0];
          v1109[1] = v1102[1];
          v1109[2] = v1102[2];
          v1109[3] = v1102[3];
          v1105 = v1098;
          v1106 = v1099;
          v1107 = v1100;
          v1108 = v1101;
          LODWORD(v922) = v1098;
          LODWORD(v1004) = *v933;
          *(&v1004 + 3) = *(v933 + 3);
          v1006 = v1099;
          v1007 = v1100;
          v1008 = v1101;
          *v1033 = *(&v1102[1] + 8);
          v1032 = *(v1102 + 8);
          *&v1033[64] = *(&v1102[5] + 1);
          *&v1033[48] = *(&v1102[4] + 8);
          *&v1033[32] = *(&v1102[3] + 8);
          *&v1033[16] = *(&v1102[2] + 8);
          v893 = *&v1102[0];
          v894 = v1103;
          LODWORD(v895) = BYTE8(v1103);
          *(&v979 + 3) = HIDWORD(v1103);
          LODWORD(v979) = *(&v1103 + 9);
          v900 = v1104;
          v324 = *(&v1098 + 1);
          v1162[0] = v1099;
          v1162[1] = v1100;
          v954 = *(&v1101 + 1);
          v946 = v1101;
          v1162[2] = v1101;
          v13 = MEMORY[0x1E69E7CC0];
          *&v991 = MEMORY[0x1E69E7CC0];
          v962 = *(*(&v1098 + 1) + 16);
          if (!v962)
          {
            sub_1DB1754EC(&v1105, &v1083);
            goto LABEL_165;
          }

          v948 = v1099;
          v942 = *(&v1156 + 1);
          sub_1DB1754EC(&v1105, &v1083);
          v961 = (v324 + 32);

          v325 = 0;
          v957 = v324;
          while (1)
          {
            if (v325 >= *(v324 + 16))
            {
              __break(1u);

              sub_1DB1F89E4(&v1146);
              sub_1DB1759B0(&v1119);
              sub_1DB17181C(v1115);
              sub_1DB17181C(&v1105);
              (v905[1])(v902, v906);
              (v913[1])(v908, v914);
              sub_1DB1F7130(&v1035);
              sub_1DB1F7184(&v1052);
              v880 = v324;
              v884 = v325;
              v437 = v990;
              v83 = v900;
              v881 = v918;
              v882 = v904;
              v883 = v895;
              v885 = v894;
              goto LABEL_493;
            }

            v970 = v325;
            sub_1DB164980(v961 + 40 * v325, &v1072);
            v331 = v1073._object;
            v332 = v1074;
            v333 = __swift_project_boxed_opaque_existential_1(&v1072, v1073._object);
            v334 = *(v332 + 3);
            v968 = v333;
            v969 = v331;
            v967 = v332;
            *(&v964 + 1) = v332 + 24;
            *&v964 = v334;
            v334(&v1083, v331, v332);
            v1184 = v100;

            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
            v335 = v937;
            v336 = v973;
            sub_1DB2BA9B4();
            v337 = v938;
            v338 = v1184;
            sub_1DB2BA9D4();
            v100 = v338;
            if (v338)
            {
              MEMORY[0x1E1284A10](v338);

              v339 = *v972;
              (*v972)(v335, v336);
              v339(v960, v336);
              v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              (*(*(v340 - 8) + 56))(v337, 1, 1, v340);
              sub_1DB1445E0(v337, &qword_1ECC27D40, &qword_1DB2C39F8);
              v100 = 0;
            }

            else
            {

              v341 = *v972;
              (*v972)(v335, v336);
              v341(v960, v336);
              v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              LODWORD(v341) = (*(*(v342 - 8) + 48))(v337, 1, v342);
              sub_1DB1445E0(v337, &qword_1ECC27D40, &qword_1DB2C39F8);
              if (v341 != 1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
                v330 = swift_allocObject();
                *(v330 + 16) = v951;
                v351 = v969;
                v352 = v967;
                *(v330 + 56) = v969;
                *(v330 + 64) = v352;
                v353 = __swift_allocate_boxed_opaque_existential_0((v330 + 32));
                (*(*(v351 - 1) + 16))(v353, v968, v351);
                v343 = v970;
                goto LABEL_141;
              }
            }

            v343 = v970;
            v344 = v969;
            v345 = v968;
            v346 = v967;
            (v964)(&v1083, v969, v967);
            v348 = *(&v1083 + 1);
            v347 = v1083;

            LOBYTE(v347) = sub_1DB23CC0C(v347, v348, 42);

            if (v347)
            {
              if (!v954)
              {

                sub_1DB1F88FC();
                swift_allocError();
                v856 = v948._object;
                *v857 = v948._countAndFlagsBits;
                *(v857 + 8) = v856;
                *(v857 + 16) = 0;
                *(v857 + 24) = 4;
                swift_willThrow();

                goto LABEL_464;
              }

              v349 = v971;
              if (v971)
              {

                v350 = v948;
                if (Connection.tableExists(_:)(v948))
                {
                  type metadata accessor for SchemaReader();
                  *(swift_allocObject() + 16) = v349;

                  v367 = sub_1DB26B520(v350._countAndFlagsBits, v350._object);
                  swift_setDeallocating();
                  SchemaReader.__deallocating_deinit();
                  v368 = sub_1DB165CE0(v367);
                  if (v368)
                  {
                    v369 = v368;
                    *&v1083 = MEMORY[0x1E69E7CC0];
                    sub_1DB138128(v368);
                    if (v369 < 0)
                    {
                      goto LABEL_524;
                    }

                    v370 = (v367 + 40);
                    do
                    {
                      v371 = *(v370 - 1);
                      v372 = *v370;

                      sub_1DB138850();
                      v373 = *(v1083 + 16);
                      sub_1DB13893C(v373);
                      sub_1DB1389E8(v373, v371, v372);
                      nullsub_1();
                      v370 += 16;
                      --v369;
                    }

                    while (v369);

                    v354 = v1083;
                    v100 = 0;
                  }

                  else
                  {

                    v354 = sub_1DB138230(0);
                  }

                  goto LABEL_154;
                }
              }

              v354 = 0;
LABEL_154:
              v987._countAndFlagsBits = v942;
              DataSpecification.subscript.getter(v946, v954, &v1083);
              v355 = *(&v1083 + 1);
              if (!*(&v1083 + 1))
              {

                goto LABEL_463;
              }

              v1184 = v100;
              v356 = v1083;
              v357 = v1084._countAndFlagsBits;
              v987 = v1083;
              *&v988 = v1084._countAndFlagsBits;
              DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1083);
              v358 = *(&v1083 + 1);
              if (!*(&v1083 + 1))
              {

                sub_1DB1718E4(v356, v355, v357);
LABEL_463:
                *&v1083 = 0;
                *(&v1083 + 1) = 0xE000000000000000;
                sub_1DB2BB4F4();
                MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
                MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                MEMORY[0x1E1283490](v946, v954);
                v858 = v1083;
                v1084._countAndFlagsBits = 0;
                LOBYTE(v1084._object) = 5;
                sub_1DB171870();
                swift_willThrowTypedImpl();
                swift_allocError();
                *v859 = v858;
                *(v859 + 16) = 0;
                *(v859 + 24) = 5;
LABEL_464:
                sub_1DB1759B0(&v1119);
                sub_1DB17181C(&v1105);
                sub_1DB17181C(v1115);
                (*(v902 + 1))(v901, v904);
                (v913[1])(v908, v914);
                __swift_destroy_boxed_opaque_existential_1(&v1072);
                v860 = v957;

                v13 = v860;
LABEL_465:
                v679 = v893;
                v861 = v894;
LABEL_466:
                LOBYTE(v1083) = v922;
                *(&v1083 + 1) = v1004;
                DWORD1(v1083) = *(&v1004 + 3);
                *(&v1083 + 1) = v13;
                v1084 = v1006;
                v1085 = v1007;
                v1086 = v1008;
                v1089 = *v1033;
                v1088 = v1032;
                v1087 = v679;
                v1093 = *&v1033[64];
                v1092 = *&v1033[48];
                v1091 = *&v1033[32];
                v1090 = *&v1033[16];
                v1094 = v861;
                v1095 = v895;
                *&v1096[3] = *(&v979 + 3);
                *v1096 = v979;
                v1097 = v900;
                sub_1DB17181C(&v1083);
                __swift_deallocate_boxed_opaque_existential_1(&v1012);
                sub_1DB1756AC(&v1017);

                v847 = v892;
                v83 = v906;
LABEL_467:
                v846 = v891;
LABEL_468:
                LOBYTE(v1105) = v930;
                *(&v1105 + 1) = *v977;
                DWORD1(v1105) = *&v977[3];
                *(&v1105 + 1) = v846;
                v1106 = v1045;
                v1107 = v1046;
                v1108 = v1047;
                *(&v1109[1] + 8) = v1053;
                *(v1109 + 8) = v1052;
                *&v1109[0] = v847;
                *(&v1109[5] + 1) = v1057;
                *(&v1109[4] + 8) = v1056;
                *(&v1109[3] + 8) = v1055;
                *(&v1109[2] + 8) = v1054;
                *&v1110 = v83;
                BYTE8(v1110) = v907;
                HIDWORD(v1110) = *(v974 + 3);
                *(&v1110 + 9) = v974[0];
                v1111 = v917;
                sub_1DB17181C(&v1105);
                __swift_deallocate_boxed_opaque_existential_1(&v981);
                __swift_destroy_boxed_opaque_existential_1(&v998);
LABEL_469:
                __swift_destroy_boxed_opaque_existential_1(v1064);

                goto LABEL_470;
              }

              v359 = v1086;
              *&v964 = *(&v1085 + 1);
              v947 = v1085;
              *(&v964 + 1) = v354;
              v360 = v1084._object;
              v361 = v1084._countAndFlagsBits;
              v362 = v1083;
              sub_1DB1718E4(v356, v355, v357);

              sub_1DB171928(v362, v358, v361, v360, v947, v964, v359);
              MEMORY[0x1EEE9AC00](v363);
              v364 = v967;
              *(&v886 - 6) = v969;
              *(&v886 - 5) = v364;
              v365 = v968;
              *(&v886 - 4) = *(&v964 + 1);
              *(&v886 - 3) = v365;
              *(&v886 - 2) = v1162;
              v366 = v1184;
              v330 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v359);
              v100 = v366;
              v343 = v970;

              goto LABEL_141;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v326 = swift_allocObject();
            sub_1DB158A70(v326, 1);
            v327[3] = v344;
            v327[4] = v346;
            v328 = __swift_allocate_boxed_opaque_existential_0(v327);
            (*(*(v344 - 8) + 16))(v328, v345, v344);
            nullsub_1();
            v330 = v329;
LABEL_141:
            v325 = v343 + 1;
            __swift_destroy_boxed_opaque_existential_1(&v1072);
            sub_1DB1414E8(v330);
            v324 = v957;
            if (v325 == v962)
            {

              v13 = v991;
LABEL_165:
              v374 = *&v1109[0];

              LODWORD(v922) = v922 & 1;
              v375 = v971;

              sub_1DB1F8988(&v1146, &v1083);
              v376 = sub_1DB1F7558(v374, &v1146, v375);
              if (v100)
              {

                sub_1DB1F89E4(&v1146);
                sub_1DB1759B0(&v1119);
                sub_1DB17181C(&v1105);
                sub_1DB17181C(v1115);
                (*(v902 + 1))(v901, v904);
                (v913[1])(v908, v914);
                goto LABEL_465;
              }

              v377 = v376;

              v378 = v1110;
              sub_1DB1F89E4(&v1146);

              sub_1DB1F8988(&v1146, &v1083);
              v379 = sub_1DB1F71D8(v378, &v1146, v375);

              sub_1DB1F89E4(&v1146);

              LOBYTE(v1028) = BYTE8(v1110);
              v1029 = v1111;
              v1080 = v1154;
              v1081 = v1155;
              v1082 = v1156;
              v1076 = v1150;
              v1077 = v1151;
              v1079 = v1153;
              v1078 = v1152;
              v1072 = v1146;
              v1073 = v1147;
              v1075 = v1149;
              v1074 = v1148;

              sub_1DB1E78A8(&v1072);
              v380 = 0;
              sub_1DB17181C(&v1105);

              LOBYTE(v378) = v987._countAndFlagsBits;
              v381 = v987._object;

              v1084 = v1006;
              v1085 = v1007;
              v1086 = v1008;
              v1090 = *&v1033[16];
              v1091 = *&v1033[32];
              v1092 = *&v1033[48];
              v382 = *v1033;
              v1088 = v1032;
              v383 = v928;
              *v928 = v1004;
              *(v383 + 3) = *(&v1004 + 3);
              v1093 = *&v1033[64];
              v1089 = v382;
              *&v1096[3] = *(&v979 + 3);
              *v1096 = v979;
              LOBYTE(v1083) = v922;
              *(&v1083 + 1) = v13;
              v1087 = v377;
              v1094 = v379;
              v1095 = v378;
              v1097 = v381;
              v384 = v901;
              v385 = v904;
              (*(v897 + 3))(&v1083, v904);
              (*(v902 + 4))(v896, v384, v385);
              LOBYTE(v1035) = v898;
              sub_1DB1355D0(&v1012, &v1035 + 8);
              sub_1DB1756AC(&v1017);
              v83 = v1016[0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1DB138640(0, *(v83 + 16) + 1, 1);
                v83 = v1016[0];
              }

              v386 = v887;
              v316 = v899;
              v388 = *(v83 + 16);
              v387 = *(v83 + 24);
              if (v388 >= v387 >> 1)
              {
                sub_1DB138640((v387 > 1), v388 + 1, 1);
                v316 = v899;
                v83 = v1016[0];
              }

              *(v83 + 16) = v388 + 1;
              v389 = (v83 + 48 * v388);
              v390 = v1035;
              v391 = v1037;
              v389[3] = v1036;
              v389[4] = v391;
              v389[2] = v390;
              if (v316 != v888)
              {
                v318 = v316 + 1;
                v100 = 0;
                v317 = v886;
                if (v316 >= *(v386 + 16))
                {
LABEL_511:
                  __break(1u);
LABEL_512:
                  __break(1u);
LABEL_513:
                  __break(1u);
LABEL_514:
                  __break(1u);
LABEL_515:
                  __break(1u);
LABEL_516:
                  sub_1DB1759B0(&v1119);
                  sub_1DB17181C(v1115);

                  (v913[1])(v908, v914);
                  sub_1DB1F7130(&v1035);
                  sub_1DB1F7184(&v1052);
                  v870 = v892;
                  v437 = v990;
LABEL_494:
                  v869 = v891;
LABEL_495:
                  LOBYTE(v1105) = v922;
                  *(&v1105 + 1) = v1015[0];
                  DWORD1(v1105) = *(v1015 + 3);
                  *(&v1105 + 1) = v869;
                  v1106 = v1012;
                  v1107 = v1013;
                  v1108 = v1014;
                  *(&v1109[1] + 8) = v1007;
                  *(v1109 + 8) = v1006;
                  *&v1109[0] = v870;
                  *(&v1109[5] + 1) = v1011;
                  *(&v1109[4] + 8) = v1010;
                  *(&v1109[3] + 8) = v1009;
                  *(&v1109[2] + 8) = v1008;
                  *&v1110 = v83;
                  BYTE8(v1110) = v901;
                  HIDWORD(v1110) = *(v437 + 251);
                  *(&v1110 + 9) = v1005[0];
                  v1111 = v915;
                  sub_1DB17181C(&v1105);
                  __swift_deallocate_boxed_opaque_existential_1(v1016);
                  __swift_destroy_boxed_opaque_existential_1(&v1028);
                  __swift_deallocate_boxed_opaque_existential_1(&v1060);
                  goto LABEL_469;
                }

                goto LABEL_138;
              }

LABEL_184:
              LOBYTE(v1072) = BYTE8(v1117);
              *(&v1072 + 1) = v1118;
              v1102[4] = v1154;
              v1102[5] = v1155;
              v1103 = v1156;
              v1102[0] = v1150;
              v1102[1] = v1151;
              v1102[3] = v1153;
              v1102[2] = v1152;
              v1098 = v1146;
              v1099 = v1147;
              v1101 = v1149;
              v1100 = v1148;

              sub_1DB1E78A8(&v1098);
              v1184 = v380;
              if (!v380)
              {
                sub_1DB17181C(v1115);

                v399 = v1083;
                v400 = *(&v1083 + 1);

                v1106 = v1045;
                v1107 = v1046;
                v1108 = v1047;
                *(&v1109[2] + 8) = v1054;
                *(&v1109[3] + 8) = v1055;
                *(&v1109[4] + 8) = v1056;
                v401 = v1053;
                *(v1109 + 8) = v1052;
                v402 = v911;
                *v911 = *v977;
                *(v402 + 3) = *&v977[3];
                *(&v1109[5] + 1) = v1057;
                *(&v1109[1] + 8) = v401;
                HIDWORD(v1110) = *(v974 + 3);
                *(&v1110 + 9) = v974[0];
                LOBYTE(v1105) = v930;
                *(&v1105 + 1) = v891;
                *&v1109[0] = v892;
                *&v1110 = v83;
                BYTE8(v1110) = v399;
                v1111 = v400;
                v403 = v908;
                v404 = v914;
                (*(v890 + 24))(&v1105, v914);
                (v913[4])(boxed_opaque_existential_0, v403, v404);
                v405 = *(&v982 + 1);
                v406 = v983;
                v407 = __swift_project_boxed_opaque_existential_1(&v981, *(&v982 + 1));
                v1062 = v405;
                v1063 = *(v406 + 8);
                v408 = __swift_allocate_boxed_opaque_existential_0(&v1060);
                (*(v405[-1].Description + 2))(v408, v407, v405);
                __swift_destroy_boxed_opaque_existential_1(&v981);
                __swift_destroy_boxed_opaque_existential_1(&v998);
                goto LABEL_188;
              }

LABEL_506:
              sub_1DB1759B0(&v1119);
              sub_1DB17181C(v1115);

              (v913[1])(v908, v914);
              v847 = v892;
              goto LABEL_467;
            }
          }
        }

        *&v996 = 0;
        v995 = 0u;
        v994 = 0u;
        v155 = sub_1DB1445E0(&v994, &qword_1ECC279E8, &unk_1DB2C3AE0);
        MEMORY[0x1EEE9AC00](v155);
        v91(&v886 - v90, v87, v86);
        if (swift_dynamicCast())
        {
          break;
        }

        memset(v1115, 0, 136);
        v1115[136] = -1;
        v165 = sub_1DB1445E0(v1115, &qword_1ECC27D28, &unk_1DB2CB830);
        MEMORY[0x1EEE9AC00](v165);
        v166 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
        v91(&v886 - v166, v87, v86);
        v167 = swift_dynamicCast();
        if (v167)
        {
          v1062 = &type metadata for Update;
          v1063 = sub_1DB1F6FE0();
          v168 = swift_allocObject();
          v1060 = v168;
          v169 = *&v1115[80];
          v168[5] = *&v1115[64];
          v168[6] = v169;
          *(v168 + 107) = *&v1115[91];
          v170 = *&v1115[16];
          v168[1] = *v1115;
          v168[2] = v170;
          v171 = *&v1115[48];
          v168[3] = *&v1115[32];
          v168[4] = v171;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v167);
          v91(&v886 - v166, v87, v86);
          v229 = swift_dynamicCast();
          if (v229)
          {
            v230 = *v1115;
            v1063 = sub_1DB1F6F8C();
            v1062 = &type metadata for Delete;
            v1060 = v230;
            v1061 = *&v1115[8];
          }

          else
          {
            MEMORY[0x1EEE9AC00](v229);
            v91(&v886 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0), v87, v86);
            v392 = MEMORY[0x1E69E6158];
            if (swift_dynamicCast())
            {
              v1062 = v392;
              v1063 = &protocol witness table for String;
              v1060 = *v1115;
              *&v1061 = *&v1115[8];
            }

            else
            {
              v409 = v970;
              v410 = *(v970 + 24);
              v410(v1115, v86, v970);
              v411 = *v1115;
              v412 = *&v1115[8];

              v410(v1115, v86, v409);
              v413 = *&v1115[16];

              v1062 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
              v414 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00, &protocol conformance descriptor for Expression<A>);
              v1060 = v411;
              *&v1061 = v412;
              v1063 = v414;
              *(&v1061 + 1) = v413;
            }
          }
        }

LABEL_188:
        sub_1DB1355D0(&v1060, v1067);
        __swift_destroy_boxed_opaque_existential_1(v1064);
        v415 = v1070[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DB1384B0(0, *(v415 + 16) + 1, 1);
          v415 = v1070[0];
        }

        v417 = *(v415 + 16);
        v416 = *(v415 + 24);
        if (v417 >= v416 >> 1)
        {
          sub_1DB1384B0((v416 > 1), v417 + 1, 1);
        }

        v418 = v927 + 1;
        v419 = v1068;
        v420 = v1069;
        v421 = __swift_mutable_project_boxed_opaque_existential_1(v1067, v1068);
        v13 = &v886;
        MEMORY[0x1EEE9AC00](v421);
        v423 = &v886 - ((v422 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v424 + 16))(v423);
        v425 = v419;
        v84 = v418;
        sub_1DB16412C(v417, v423, v1070, v425, v420);
        __swift_destroy_boxed_opaque_existential_1(v1067);
        v83 = v920;
        v82 = v921;
        v426 = v418 == v920;
        v78 = v1184;
        v85 = v919;
        if (v426)
        {
          v829 = v1070[0];
          goto LABEL_284;
        }
      }

      v1058 = *&v1115[96];
      v1059[0] = *&v1115[112];
      *(v1059 + 9) = *&v1115[121];
      v1054 = *&v1115[32];
      v1055 = *&v1115[48];
      v1057 = *&v1115[80];
      v1056 = *&v1115[64];
      v1053 = *&v1115[16];
      v1052 = *v1115;
      v1062 = &type metadata for Insert;
      v1063 = sub_1DB1F70DC();
      v930 = swift_allocObject();
      v1060 = v930;
      sub_1DB1446A4(&v1052, v1115, &qword_1ECC27CC8, &unk_1DB2C3860);
      if (v1115[136])
      {
        v156 = *v1115;
        v157 = *&v1115[8];
        v158 = *&v1115[24];
        v159 = *&v1115[40];
        v160 = *&v1115[56];
        v161 = *&v1115[72];
        v162 = *&v1115[88];
        v163 = *&v1115[104];
        v164 = *&v1115[120];
      }

      else
      {
        sub_1DB1445E0(v1115, &qword_1ECC27CC8, &unk_1DB2C3860);
        v156 = 0;
        v157 = 0uLL;
        v158 = 0uLL;
        v159 = 0uLL;
        v160 = 0uLL;
        v161 = 0uLL;
        v162 = 0uLL;
        v163 = 0uLL;
        v164 = 0uLL;
      }

      v172 = v1184;
      *v1112 = v156;
      *&v1112[8] = v157;
      *&v1112[24] = v158;
      *&v1112[40] = v159;
      *&v1112[56] = v160;
      *&v1112[72] = v161;
      *&v1112[88] = v162;
      *&v1112[104] = v163;
      *&v1112[120] = v164;
      if (!v157)
      {
        sub_1DB1445E0(v1112, &qword_1ECC27CD0, &unk_1DB2CB840);
        sub_1DB1446A4(&v1052, v1115, &qword_1ECC27CC8, &unk_1DB2C3860);
        if (v1115[136])
        {
          *&v1112[96] = *&v1115[96];
          *&v1112[112] = *&v1115[112];
          *&v1112[128] = *&v1115[128];
          *&v1112[32] = *&v1115[32];
          *&v1112[48] = *&v1115[48];
          *&v1112[80] = *&v1115[80];
          *&v1112[64] = *&v1115[64];
          *&v1112[16] = *&v1115[16];
          *v1112 = *v1115;
          v231 = sub_1DB1F4E58();
          v233 = v232;
          sub_1DB1F7130(v1112);
        }

        else
        {
          v231 = *v1115;
          v233 = *&v1115[8];
        }

        sub_1DB1446A4(&v1052, v1115, &qword_1ECC27CC8, &unk_1DB2C3860);
        if (v1115[136])
        {
          sub_1DB1445E0(v1115, &qword_1ECC27CC8, &unk_1DB2C3860);
          v393 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v393 = *&v1115[16];
        }

        v394 = 0;
        v1044 = 0;
        goto LABEL_182;
      }

      v1041 = *&v1112[96];
      v1042 = *&v1112[112];
      v1043 = *&v1112[128];
      v1037 = *&v1112[32];
      v1038 = *&v1112[48];
      v1040 = *&v1112[80];
      v1039 = *&v1112[64];
      v1036 = *&v1112[16];
      v1035 = *v1112;
      sub_1DB1446A4(&v1041, &v1026, &qword_1ECC279E8, &unk_1DB2C3AE0);
      if (!v1027)
      {
        sub_1DB1F7130(&v1035);
        sub_1DB1445E0(&v1026, &qword_1ECC279E8, &unk_1DB2C3AE0);
        sub_1DB16D210(&v1052, &v1032);
        goto LABEL_176;
      }

      sub_1DB1355D0(&v1026, &v1028);
      v173 = v1030;
      v174 = v1031;
      __swift_project_boxed_opaque_existential_1(&v1028, v1030);
      v1016[3] = v173;
      v1016[4] = v174;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1016);
      v917 = &v886;
      MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
      v913 = v176;
      v177 = *(v176 + 16);
      v908 = &v886 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
      v177();
      v178 = *(v174 + 16);
      v914 = v173;
      v890 = v174;
      v178(v1112, v173, v174);
      *&v1115[128] = *&v1112[128];
      v1116 = *&v1112[144];
      v1117 = v1113;
      v1118 = v1114;
      *&v1115[64] = *&v1112[64];
      *&v1115[80] = *&v1112[80];
      *&v1115[96] = *&v1112[96];
      *&v1115[112] = *&v1112[112];
      *v1115 = *v1112;
      *&v1115[16] = *&v1112[16];
      *&v1115[32] = *&v1112[32];
      *&v1115[48] = *&v1112[48];
      LODWORD(v922) = v1112[0];
      v1015[0] = *v931;
      *(v1015 + 3) = *(v931 + 3);
      v1012 = *&v1112[16];
      v1013 = *&v1112[32];
      v1014 = *&v1112[48];
      v1007 = *&v1112[88];
      v1006 = *&v1112[72];
      v1011 = *&v1112[152];
      v1010 = *&v1112[136];
      v1009 = *&v1112[120];
      v1008 = *&v1112[104];
      v899 = *&v1112[64];
      v900 = v1113;
      LODWORD(v901) = BYTE8(v1113);
      *(v1005 + 3) = HIDWORD(v1113);
      v1005[0] = *(&v1113 + 9);
      v915 = v1114;
      v83 = *&v1112[8];
      v1169[0] = *&v1112[16];
      v1169[1] = *&v1112[32];
      v946 = *&v1112[48];
      v1170 = *&v1112[48];
      v954 = *&v1112[56];
      v1171 = *&v1112[56];
      v179 = MEMORY[0x1E69E7CC0];
      *&v994 = MEMORY[0x1E69E7CC0];
      v962 = *(*&v1112[8] + 16);
      if (v962)
      {
        v948 = *&v1112[16];
        v942 = *(&v1156 + 1);
        v961 = (*&v1112[8] + 32);
        sub_1DB1754EC(v1115, &v1105);

        v180 = 0;
        v957 = v83;
        while (1)
        {
          if (v180 >= *(v83 + 16))
          {
            goto LABEL_513;
          }

          v970 = v180;
          sub_1DB164980(v961 + 40 * v180, &v1098);
          v186 = v1099._object;
          v187 = v1100;
          v188 = __swift_project_boxed_opaque_existential_1(&v1098, v1099._object);
          v189 = *(v187 + 3);
          v968 = v188;
          v969 = v186;
          v967 = v187;
          *(&v964 + 1) = v187 + 24;
          *&v964 = v189;
          v189(&v1105, v186, v187);
          v1184 = v172;

          sub_1DB2BA9C4();
          sub_1DB2BB004();

          sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
          v190 = v925;
          v191 = v973;
          sub_1DB2BA9B4();
          v192 = v926;
          v193 = v1184;
          sub_1DB2BA9D4();
          v172 = v193;
          if (v193)
          {
            MEMORY[0x1E1284A10](v193);

            v194 = *v972;
            (*v972)(v190, v191);
            v194(v941, v191);
            v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
            (*(*(v195 - 8) + 56))(v192, 1, 1, v195);
            sub_1DB1445E0(v192, &qword_1ECC27D40, &qword_1DB2C39F8);
            v172 = 0;
          }

          else
          {

            v196 = *v972;
            (*v972)(v190, v191);
            v196(v941, v191);
            v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
            LODWORD(v196) = (*(*(v197 - 8) + 48))(v192, 1, v197);
            sub_1DB1445E0(v192, &qword_1ECC27D40, &qword_1DB2C39F8);
            if (v196 != 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
              v185 = swift_allocObject();
              *(v185 + 16) = v951;
              v206 = v969;
              v207 = v967;
              *(v185 + 56) = v969;
              *(v185 + 64) = v207;
              v208 = __swift_allocate_boxed_opaque_existential_0((v185 + 32));
              (*(*(v206 - 1) + 16))(v208, v968, v206);
              v198 = v970;
              goto LABEL_69;
            }
          }

          v198 = v970;
          v199 = v969;
          v200 = v968;
          v201 = v967;
          (v964)(&v1105, v969, v967);
          v203 = *(&v1105 + 1);
          v202 = v1105;

          LOBYTE(v202) = sub_1DB23CC0C(v202, v203, 42);

          if (v202)
          {
            if (!v954)
            {

              sub_1DB1F88FC();
              swift_allocError();
              v862 = v948._object;
              *v863 = v948._countAndFlagsBits;
              *(v863 + 8) = v862;
              *(v863 + 16) = 0;
              *(v863 + 24) = 4;
              swift_willThrow();

              goto LABEL_478;
            }

            v204 = v971;
            if (v971)
            {

              v205 = v948;
              if (Connection.tableExists(_:)(v948))
              {
                type metadata accessor for SchemaReader();
                *(swift_allocObject() + 16) = v204;

                v222 = sub_1DB26B520(v205._countAndFlagsBits, v205._object);
                swift_setDeallocating();
                SchemaReader.__deallocating_deinit();
                v223 = sub_1DB165CE0(v222);
                if (v223)
                {
                  v224 = v223;
                  *&v1105 = MEMORY[0x1E69E7CC0];
                  sub_1DB138128(v223);
                  if (v224 < 0)
                  {
                    goto LABEL_525;
                  }

                  v225 = (v222 + 40);
                  do
                  {
                    v226 = *(v225 - 1);
                    v227 = *v225;

                    sub_1DB138850();
                    v228 = *(v1105 + 16);
                    sub_1DB13893C(v228);
                    sub_1DB1389E8(v228, v226, v227);
                    nullsub_1();
                    v225 += 16;
                    --v224;
                  }

                  while (v224);

                  v209 = v1105;
                }

                else
                {

                  v209 = sub_1DB138230(0);
                }

                goto LABEL_82;
              }
            }

            v209 = 0;
LABEL_82:
            *&v1083 = v942;
            DataSpecification.subscript.getter(v946, v954, &v1105);
            v210 = *(&v1105 + 1);
            if (!*(&v1105 + 1))
            {

              goto LABEL_477;
            }

            *(&v964 + 1) = v209;
            v1184 = 0;
            v211 = v1105;
            v212 = v1106;
            v1083 = v1105;
            v1084._countAndFlagsBits = v1106;
            DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1105);
            v213 = *(&v1105 + 1);
            if (!*(&v1105 + 1))
            {

              sub_1DB1718E4(v211, v210, v212);
LABEL_477:
              *&v1105 = 0;
              *(&v1105 + 1) = 0xE000000000000000;
              sub_1DB2BB4F4();
              MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
              MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
              MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
              MEMORY[0x1E1283490](v946, v954);
              v866 = v1105;
              *&v1106 = 0;
              BYTE8(v1106) = 5;
              sub_1DB171870();
              swift_willThrowTypedImpl();
              swift_allocError();
              *v867 = v866;
              *(v867 + 16) = 0;
              *(v867 + 24) = 5;
LABEL_478:
              v437 = v990;
              sub_1DB1759B0(&v1119);
              sub_1DB17181C(v1115);
              (v913[1])(v908, v914);
              sub_1DB1F7130(&v1035);
              sub_1DB1F7184(&v1052);
              __swift_destroy_boxed_opaque_existential_1(&v1098);
              v868 = v957;

              v869 = v868;
              v870 = v899;
              v83 = v900;
              goto LABEL_495;
            }

            v214 = v1108;
            *&v964 = *(&v1107 + 1);
            v947 = v1107;
            v215 = *(&v1106 + 1);
            v216 = v1106;
            v217 = v1105;
            sub_1DB1718E4(v211, v210, v212);

            v198 = v970;
            sub_1DB171928(v217, v213, v216, v215, v947, v964, v214);
            MEMORY[0x1EEE9AC00](v218);
            v219 = v967;
            *(&v886 - 6) = v969;
            *(&v886 - 5) = v219;
            v220 = v968;
            *(&v886 - 4) = *(&v964 + 1);
            *(&v886 - 3) = v220;
            *(&v886 - 2) = v1169;
            v221 = v1184;
            v185 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v214);
            v172 = v221;

            goto LABEL_69;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v181 = swift_allocObject();
          sub_1DB158A70(v181, 1);
          v182[3] = v199;
          v182[4] = v201;
          v183 = __swift_allocate_boxed_opaque_existential_0(v182);
          (*(*(v199 - 8) + 16))(v183, v200, v199);
          nullsub_1();
          v185 = v184;
LABEL_69:
          v180 = v198 + 1;
          __swift_destroy_boxed_opaque_existential_1(&v1098);
          sub_1DB1414E8(v185);
          v83 = v957;
          if (v180 == v962)
          {

            v891 = v994;
            goto LABEL_196;
          }
        }
      }

      sub_1DB1754EC(v1115, &v1105);
      v891 = v179;
LABEL_196:
      v427 = *&v1115[64];

      LODWORD(v922) = v922 & 1;
      v83 = *(v427 + 16);
      if (!v83)
      {

        v83 = MEMORY[0x1E69E7CC0];
        v499 = MEMORY[0x1E69E7CC0];
        goto LABEL_236;
      }

      v1004 = MEMORY[0x1E69E7CC0];
      sub_1DB138188(v83);
      if (!*(v427 + 16))
      {
        goto LABEL_515;
      }

      v428 = 0;
      v429 = v427 + 32;
      v430 = 1;
      v887 = v83;
      v888 = v427;
      v886 = v427 + 32;
LABEL_199:
      v898 = v430;
      sub_1DB175548(v429 + 88 * v428, &v994);
      LODWORD(v897) = v994;
      v432 = *(&v996 + 1);
      v431 = v996;
      __swift_project_boxed_opaque_existential_1(&v994 + 1, v996);
      v992 = v431;
      v993 = v432;
      v895 = __swift_allocate_boxed_opaque_existential_0(&v991);
      v907 = &v886;
      MEMORY[0x1EEE9AC00](v895);
      v905 = v434;
      v435 = *(v434 + 16);
      v902 = &v886 - ((v433 + 15) & 0xFFFFFFFFFFFFFFF0);
      v435();
      v436 = v432[2];
      v906 = v431;
      v896 = v432;
      v436(&v1098, v431, v432);
      v1109[4] = v1102[4];
      v1109[5] = v1102[5];
      v1110 = v1103;
      v1111 = v1104;
      v1109[0] = v1102[0];
      v1109[1] = v1102[1];
      v1109[2] = v1102[2];
      v1109[3] = v1102[3];
      v1105 = v1098;
      v1106 = v1099;
      v1107 = v1100;
      v1108 = v1101;
      LODWORD(v918) = v1098;
      v990[0] = *v933;
      v437 = v990;
      *(v990 + 3) = *(v933 + 3);
      v987 = v1099;
      v988 = v1100;
      v989 = v1101;
      v982 = *(&v1102[1] + 8);
      v981 = *(v1102 + 8);
      v986 = *(&v1102[5] + 1);
      v985 = *(&v1102[4] + 8);
      v984 = *(&v1102[3] + 8);
      v983 = *(&v1102[2] + 8);
      v892 = *&v1102[0];
      v893 = v1103;
      LODWORD(v894) = BYTE8(v1103);
      *(v980 + 3) = HIDWORD(v1103);
      v980[0] = *(&v1103 + 9);
      v904 = v1104;
      v438 = *(&v1098 + 1);
      v1168[0] = v1099;
      v1168[1] = v1100;
      v954 = *(&v1101 + 1);
      v946 = v1101;
      v1168[2] = v1101;
      v439 = MEMORY[0x1E69E7CC0];
      v979 = MEMORY[0x1E69E7CC0];
      v962 = *(*(&v1098 + 1) + 16);
      if (!v962)
      {
        sub_1DB1754EC(&v1105, &v1083);
        goto LABEL_227;
      }

      v948 = v1099;
      v942 = *(&v1156 + 1);
      sub_1DB1754EC(&v1105, &v1083);
      v961 = (v438 + 32);

      v83 = 0;
      v957 = v438;
      while (1)
      {
        if (v83 >= *(v438 + 16))
        {
          goto LABEL_514;
        }

        v970 = v83;
        sub_1DB164980(v961 + 40 * v83, &v1072);
        v445 = v1073._object;
        v446 = v1074;
        v447 = __swift_project_boxed_opaque_existential_1(&v1072, v1073._object);
        v448 = *(v446 + 3);
        v968 = v447;
        v969 = v445;
        v967 = v446;
        *(&v964 + 1) = v446 + 24;
        *&v964 = v448;
        v448(&v1083, v445, v446);
        v1184 = v172;

        sub_1DB2BA9C4();
        sub_1DB2BB004();

        sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
        v449 = v924;
        v450 = v973;
        sub_1DB2BA9B4();
        v451 = v935;
        v452 = v1184;
        sub_1DB2BA9D4();
        v172 = v452;
        if (v452)
        {
          MEMORY[0x1E1284A10](v452);

          v453 = *v972;
          (*v972)(v449, v450);
          v453(v936, v450);
          v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          (*(*(v454 - 8) + 56))(v451, 1, 1, v454);
          sub_1DB1445E0(v451, &qword_1ECC27D40, &qword_1DB2C39F8);
          v172 = 0;
        }

        else
        {

          v455 = *v972;
          (*v972)(v449, v450);
          v455(v936, v450);
          v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          LODWORD(v455) = (*(*(v456 - 8) + 48))(v451, 1, v456);
          sub_1DB1445E0(v451, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v455 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v444 = swift_allocObject();
            *(v444 + 16) = v951;
            v465 = v969;
            v466 = v967;
            *(v444 + 56) = v969;
            *(v444 + 64) = v466;
            v467 = __swift_allocate_boxed_opaque_existential_0((v444 + 32));
            (*(*(v465 - 1) + 16))(v467, v968, v465);
            goto LABEL_218;
          }
        }

        v457 = v970;
        v458 = v969;
        v459 = v968;
        v460 = v967;
        (v964)(&v1083, v969, v967);
        v461 = *(&v1083 + 1);
        v462 = v1083;

        LOBYTE(v462) = sub_1DB23CC0C(v462, v461, 42);

        if (v462)
        {
          if (!v954)
          {
            goto LABEL_475;
          }

          v463 = v971;
          if (v971)
          {

            v464 = v948;
            if (Connection.tableExists(_:)(v948))
            {
              type metadata accessor for SchemaReader();
              *(swift_allocObject() + 16) = v463;

              v481 = sub_1DB26B520(v464._countAndFlagsBits, v464._object);
              swift_setDeallocating();
              SchemaReader.__deallocating_deinit();
              v482 = sub_1DB165CE0(v481);
              if (v482)
              {
                v483 = v482;
                *&v1083 = MEMORY[0x1E69E7CC0];
                sub_1DB138128(v482);
                if (v483 < 0)
                {
                  goto LABEL_526;
                }

                v484 = (v481 + 40);
                do
                {
                  v485 = *(v484 - 1);
                  v486 = *v484;

                  sub_1DB138850();
                  v487 = *(v1083 + 16);
                  sub_1DB13893C(v487);
                  sub_1DB1389E8(v487, v485, v486);
                  nullsub_1();
                  v484 += 16;
                  --v483;
                }

                while (v483);

                v468 = v1083;
              }

              else
              {

                v468 = sub_1DB138230(0);
              }

LABEL_215:
              *&v975 = v942;
              DataSpecification.subscript.getter(v946, v954, &v1083);
              v469 = *(&v1083 + 1);
              if (!*(&v1083 + 1))
              {

                goto LABEL_481;
              }

              v1184 = 0;
              v470 = v1083;
              v471 = v1084._countAndFlagsBits;
              v975 = v1083;
              v976 = v1084._countAndFlagsBits;
              DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1083);
              v472 = *(&v1083 + 1);
              if (!*(&v1083 + 1))
              {

                sub_1DB1718E4(v470, v469, v471);
LABEL_481:
                *&v1083 = 0;
                *(&v1083 + 1) = 0xE000000000000000;
                sub_1DB2BB4F4();
                MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
                MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                MEMORY[0x1E1283490](v946, v954);
                v871 = v1083;
                v1084._countAndFlagsBits = 0;
                LOBYTE(v1084._object) = 5;
                sub_1DB171870();
                swift_willThrowTypedImpl();
                swift_allocError();
                *v872 = v871;
                *(v872 + 16) = 0;
                *(v872 + 24) = 5;
LABEL_482:
                v437 = v990;
                sub_1DB1759B0(&v1119);
                sub_1DB17181C(&v1105);
                sub_1DB17181C(v1115);
                (v905[1])(v902, v906);
                (v913[1])(v908, v914);
                sub_1DB1F7130(&v1035);
                sub_1DB1F7184(&v1052);
                __swift_destroy_boxed_opaque_existential_1(&v1072);
                v873 = v957;

LABEL_483:
                v870 = v899;
                v83 = v900;
                v875 = v892;
                v874 = v893;
LABEL_484:
                LOBYTE(v1083) = v918;
                *(&v1083 + 1) = v990[0];
                DWORD1(v1083) = *(v990 + 3);
                *(&v1083 + 1) = v873;
                v1084 = v987;
                v1085 = v988;
                v1086 = v989;
                v1089 = v982;
                v1088 = v981;
                v1087 = v875;
                v1093 = v986;
                v1092 = v985;
                v1091 = v984;
                v1090 = v983;
                v1094 = v874;
                v1095 = v894;
                *&v1096[3] = *(v980 + 3);
                *v1096 = v980[0];
                v1097 = v904;
                sub_1DB17181C(&v1083);
                __swift_deallocate_boxed_opaque_existential_1(&v991);
                sub_1DB1755A4(&v994);

                goto LABEL_494;
              }

              *(&v964 + 1) = v468;
              v473 = v1086;
              *&v964 = *(&v1085 + 1);
              v947 = v1085;
              v474 = v1084._object;
              v475 = v1084._countAndFlagsBits;
              v476 = v1083;
              sub_1DB1718E4(v470, v469, v471);

              sub_1DB171928(v476, v472, v475, v474, v947, v964, v473);
              MEMORY[0x1EEE9AC00](v477);
              v478 = v967;
              *(&v886 - 6) = v969;
              *(&v886 - 5) = v478;
              v479 = v968;
              *(&v886 - 4) = *(&v964 + 1);
              *(&v886 - 3) = v479;
              *(&v886 - 2) = v1168;
              v480 = v1184;
              v444 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v473);
              v172 = v480;

LABEL_218:
              v457 = v970;
              goto LABEL_202;
            }
          }

          v468 = 0;
          goto LABEL_215;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v440 = swift_allocObject();
        sub_1DB158A70(v440, 1);
        v441[3] = v458;
        v441[4] = v460;
        v442 = __swift_allocate_boxed_opaque_existential_0(v441);
        (*(*(v458 - 8) + 16))(v442, v459, v458);
        nullsub_1();
        v444 = v443;
LABEL_202:
        v83 = v457 + 1;
        __swift_destroy_boxed_opaque_existential_1(&v1072);
        sub_1DB1414E8(v444);
        v437 = v990;
        v438 = v957;
        if (v83 == v962)
        {

          v439 = v979;
LABEL_227:
          v488 = *&v1109[0];

          LODWORD(v918) = v918 & 1;
          v489 = v971;

          sub_1DB1F8988(&v1146, &v1083);
          v490 = sub_1DB1F7558(v488, &v1146, v489);
          if (v172)
          {

            sub_1DB1F89E4(&v1146);
            sub_1DB1759B0(&v1119);
            sub_1DB17181C(v1115);
            sub_1DB17181C(&v1105);
            (v905[1])(v902, v906);
            (v913[1])(v908, v914);
            sub_1DB1F7130(&v1035);
            sub_1DB1F7184(&v1052);
            v873 = v439;
            goto LABEL_483;
          }

          v491 = v490;

          v492 = v1110;
          sub_1DB1F89E4(&v1146);

          sub_1DB1F8988(&v1146, &v1083);
          v493 = sub_1DB1F71D8(v492, &v1146, v489);

          sub_1DB1F89E4(&v1146);

          v977[0] = BYTE8(v1110);
          v978 = v1111;
          v1080 = v1154;
          v1081 = v1155;
          v1082 = v1156;
          v1076 = v1150;
          v1077 = v1151;
          v1079 = v1153;
          v1078 = v1152;
          v1072 = v1146;
          v1073 = v1147;
          v1075 = v1149;
          v1074 = v1148;

          sub_1DB1E78A8(&v1072);
          sub_1DB17181C(&v1105);

          LOBYTE(v492) = v975;
          v494 = *(&v975 + 1);

          v1084 = v987;
          v1085 = v988;
          v1086 = v989;
          v1090 = v983;
          v1091 = v984;
          v1092 = v985;
          v495 = v982;
          v1088 = v981;
          v496 = v928;
          *v928 = v990[0];
          *(v496 + 3) = *(v990 + 3);
          v1093 = v986;
          v1089 = v495;
          *&v1096[3] = *(v980 + 3);
          *v1096 = v980[0];
          LOBYTE(v1083) = v918;
          *(&v1083 + 1) = v439;
          v1087 = v491;
          v1094 = v493;
          v1095 = v492;
          v1097 = v494;
          v497 = v902;
          v498 = v906;
          (v896[3])(&v1083, v906);
          (v905[4])(v895, v497, v498);
          sub_1DB164980(&v997, &v1001);
          LOBYTE(v998) = v897;
          sub_1DB1355D0(&v991, &v998 + 8);
          sub_1DB1755A4(&v994);
          v499 = v1004;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DB138660(0, v499[2] + 1, 1);
            v499 = v1004;
          }

          v428 = v898;
          v501 = v499[2];
          v500 = v499[3];
          if (v501 >= v500 >> 1)
          {
            sub_1DB138660((v500 > 1), v501 + 1, 1);
            v428 = v898;
            v499 = v1004;
          }

          v499[2] = v501 + 1;
          v502 = &v499[11 * v501];
          v503 = v999;
          *(v502 + 2) = v998;
          *(v502 + 3) = v503;
          v504 = v1000;
          v505 = v1001;
          v506 = v1002;
          v502[14] = v1003;
          *(v502 + 5) = v505;
          *(v502 + 6) = v506;
          *(v502 + 4) = v504;
          v83 = v887;
          if (v428 != v887)
          {
            v430 = v428 + 1;
            v172 = 0;
            v429 = v886;
            if (v428 >= *(v888 + 16))
            {
              goto LABEL_515;
            }

            goto LABEL_199;
          }

          v172 = 0;
          v83 = MEMORY[0x1E69E7CC0];
LABEL_236:
          v507 = v1117;
          v508 = *(v1117 + 16);
          v892 = v499;
          if (!v508)
          {
            v575 = v172;

            goto LABEL_276;
          }

          v1004 = v83;
          v888 = v508;
          sub_1DB138170(v508);
          if (!*(v507 + 16))
          {
            goto LABEL_519;
          }

          v509 = 0;
          v510 = v507 + 32;
          v511 = 1;
          v886 = v507 + 32;
          v887 = v507;
          while (2)
          {
            v899 = v511;
            sub_1DB175650(v510 + 48 * v509, &v981);
            LODWORD(v898) = v981;
            v513 = *(&v983 + 1);
            v512 = v983;
            __swift_project_boxed_opaque_existential_1(&v981 + 1, v983);
            v992 = v512;
            v993 = v513;
            v896 = __swift_allocate_boxed_opaque_existential_0(&v991);
            v907 = &v886;
            MEMORY[0x1EEE9AC00](v896);
            v905 = v515;
            v516 = *(v515 + 16);
            v902 = &v886 - ((v514 + 15) & 0xFFFFFFFFFFFFFFF0);
            v516();
            v517 = v513[2];
            v906 = v512;
            v897 = v513;
            v517(&v1098, v512, v513);
            v1109[4] = v1102[4];
            v1109[5] = v1102[5];
            v1110 = v1103;
            v1111 = v1104;
            v1109[0] = v1102[0];
            v1109[1] = v1102[1];
            v1109[2] = v1102[2];
            v1109[3] = v1102[3];
            v1105 = v1098;
            v1106 = v1099;
            v1107 = v1100;
            v1108 = v1101;
            LODWORD(v918) = v1098;
            v990[0] = *v933;
            v437 = v990;
            *(v990 + 3) = *(v933 + 3);
            v987 = v1099;
            v988 = v1100;
            v989 = v1101;
            v999 = *(&v1102[1] + 8);
            v998 = *(v1102 + 8);
            v1003 = *(&v1102[5] + 1);
            v1002 = *(&v1102[4] + 8);
            v1001 = *(&v1102[3] + 8);
            v1000 = *(&v1102[2] + 8);
            v893 = *&v1102[0];
            v894 = v1103;
            LODWORD(v895) = BYTE8(v1103);
            *(v980 + 3) = HIDWORD(v1103);
            v980[0] = *(&v1103 + 9);
            v904 = v1104;
            v518 = *(&v1098 + 1);
            v1167[0] = v1099;
            v1167[1] = v1100;
            v954 = *(&v1101 + 1);
            v946 = v1101;
            v1167[2] = v1101;
            v519 = MEMORY[0x1E69E7CC0];
            v979 = MEMORY[0x1E69E7CC0];
            v962 = *(*(&v1098 + 1) + 16);
            if (!v962)
            {
              sub_1DB1754EC(&v1105, &v1083);
              goto LABEL_267;
            }

            v948 = v1099;
            v942 = *(&v1156 + 1);
            sub_1DB1754EC(&v1105, &v1083);
            v961 = (v518 + 32);

            v520 = 0;
            v957 = v518;
LABEL_243:
            v1184 = v172;
            if (v520 >= *(v518 + 16))
            {
              __break(1u);
              goto LABEL_518;
            }

            v970 = v520;
            sub_1DB164980(v961 + 40 * v520, &v1072);
            v526 = v1073._object;
            v527 = v1074;
            v528 = __swift_project_boxed_opaque_existential_1(&v1072, v1073._object);
            v529 = *(v527 + 3);
            v968 = v528;
            v969 = v526;
            v967 = v527;
            *(&v964 + 1) = v527 + 24;
            *&v964 = v529;
            v529(&v1083, v526, v527);

            sub_1DB2BA9C4();
            sub_1DB2BB004();

            sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
            v530 = v916;
            v531 = v973;
            sub_1DB2BA9B4();
            v532 = v929;
            v533 = v1184;
            sub_1DB2BA9D4();
            v172 = v533;
            if (v533)
            {
              MEMORY[0x1E1284A10](v533);

              v534 = *v972;
              (*v972)(v530, v531);
              v534(v923, v531);
              v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
              (*(*(v535 - 8) + 56))(v532, 1, 1, v535);
              sub_1DB1445E0(v532, &qword_1ECC27D40, &qword_1DB2C39F8);
              v172 = 0;
              goto LABEL_247;
            }

            v536 = *v972;
            (*v972)(v530, v531);
            v536(v923, v531);
            v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
            LODWORD(v536) = (*(*(v537 - 8) + 48))(v532, 1, v537);
            sub_1DB1445E0(v532, &qword_1ECC27D40, &qword_1DB2C39F8);
            if (v536 != 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
              v525 = swift_allocObject();
              *(v525 + 16) = v951;
              v546 = v969;
              v547 = v967;
              *(v525 + 56) = v969;
              *(v525 + 64) = v547;
              v548 = __swift_allocate_boxed_opaque_existential_0((v525 + 32));
              (*(*(v546 - 1) + 16))(v548, v968, v546);
              goto LABEL_258;
            }

LABEL_247:
            v538 = v970;
            v539 = v969;
            v540 = v968;
            v541 = v967;
            (v964)(&v1083, v969, v967);
            v542 = *(&v1083 + 1);
            v543 = v1083;

            LOBYTE(v543) = sub_1DB23CC0C(v543, v542, 42);

            if (v543)
            {
              if (!v954)
              {

                sub_1DB1F88FC();
                swift_allocError();
                v876 = v948._object;
                *v877 = v948._countAndFlagsBits;
                *(v877 + 8) = v876;
                *(v877 + 16) = 0;
                *(v877 + 24) = 4;
                swift_willThrow();

                goto LABEL_491;
              }

              v544 = v971;
              if (v971)
              {

                v545 = v948;
                if (Connection.tableExists(_:)(v948))
                {
                  type metadata accessor for SchemaReader();
                  *(swift_allocObject() + 16) = v544;

                  v562 = sub_1DB26B520(v545._countAndFlagsBits, v545._object);
                  swift_setDeallocating();
                  SchemaReader.__deallocating_deinit();
                  v563 = sub_1DB165CE0(v562);
                  if (v563)
                  {
                    v564 = v563;
                    *&v1083 = MEMORY[0x1E69E7CC0];
                    sub_1DB138128(v563);
                    if (v564 < 0)
                    {
                      goto LABEL_527;
                    }

                    v565 = (v562 + 40);
                    do
                    {
                      v566 = *(v565 - 1);
                      v567 = *v565;

                      sub_1DB138850();
                      v568 = *(v1083 + 16);
                      sub_1DB13893C(v568);
                      sub_1DB1389E8(v568, v566, v567);
                      nullsub_1();
                      v565 += 16;
                      --v564;
                    }

                    while (v564);

                    v549 = v1083;
                  }

                  else
                  {

                    v549 = sub_1DB138230(0);
                  }

LABEL_255:
                  *&v975 = v942;
                  DataSpecification.subscript.getter(v946, v954, &v1083);
                  v550 = *(&v1083 + 1);
                  if (!*(&v1083 + 1))
                  {

                    goto LABEL_490;
                  }

                  v1184 = 0;
                  v551 = v1083;
                  v552 = v1084._countAndFlagsBits;
                  v975 = v1083;
                  v976 = v1084._countAndFlagsBits;
                  DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1083);
                  v553 = *(&v1083 + 1);
                  if (!*(&v1083 + 1))
                  {

                    sub_1DB1718E4(v551, v550, v552);
LABEL_490:
                    *&v1083 = 0;
                    *(&v1083 + 1) = 0xE000000000000000;
                    sub_1DB2BB4F4();
                    MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
                    MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
                    MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
                    MEMORY[0x1E1283490](v946, v954);
                    v878 = v1083;
                    v1084._countAndFlagsBits = 0;
                    LOBYTE(v1084._object) = 5;
                    sub_1DB171870();
                    swift_willThrowTypedImpl();
                    swift_allocError();
                    *v879 = v878;
                    *(v879 + 16) = 0;
                    *(v879 + 24) = 5;
LABEL_491:
                    v437 = v990;
                    sub_1DB1759B0(&v1119);
                    sub_1DB17181C(&v1105);
                    sub_1DB17181C(v1115);
                    (v905[1])(v902, v906);
                    (v913[1])(v908, v914);
                    sub_1DB1F7130(&v1035);
                    sub_1DB1F7184(&v1052);
                    __swift_destroy_boxed_opaque_existential_1(&v1072);
                    v880 = v957;

LABEL_492:
                    v83 = v900;
                    v881 = v918;
                    v882 = v904;
                    v883 = v895;
                    v884 = v893;
                    v885 = v894;
LABEL_493:
                    LOBYTE(v1083) = v881;
                    *(&v1083 + 1) = v990[0];
                    DWORD1(v1083) = *(v437 + 3);
                    *(&v1083 + 1) = v880;
                    v1084 = v987;
                    v1085 = v988;
                    v1086 = v989;
                    v1089 = v999;
                    v1088 = v998;
                    v1087 = v884;
                    v1093 = v1003;
                    v1092 = v1002;
                    v1091 = v1001;
                    v1090 = v1000;
                    v1094 = v885;
                    v1095 = v883;
                    *&v1096[3] = *(v980 + 3);
                    *v1096 = v980[0];
                    v1097 = v882;
                    sub_1DB17181C(&v1083);
                    __swift_deallocate_boxed_opaque_existential_1(&v991);
                    sub_1DB1756AC(&v981);

                    v870 = v892;
                    goto LABEL_494;
                  }

                  *(&v964 + 1) = v549;
                  v554 = v1086;
                  *&v964 = *(&v1085 + 1);
                  v947 = v1085;
                  v555 = v1084._object;
                  v556 = v1084._countAndFlagsBits;
                  v557 = v1083;
                  sub_1DB1718E4(v551, v550, v552);

                  sub_1DB171928(v557, v553, v556, v555, v947, v964, v554);
                  MEMORY[0x1EEE9AC00](v558);
                  v559 = v967;
                  *(&v886 - 6) = v969;
                  *(&v886 - 5) = v559;
                  v560 = v968;
                  *(&v886 - 4) = *(&v964 + 1);
                  *(&v886 - 3) = v560;
                  *(&v886 - 2) = v1167;
                  v561 = v1184;
                  v525 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v554);
                  v172 = v561;

LABEL_258:
                  v538 = v970;
LABEL_242:
                  v520 = v538 + 1;
                  __swift_destroy_boxed_opaque_existential_1(&v1072);
                  sub_1DB1414E8(v525);
                  v518 = v957;
                  if (v520 == v962)
                  {

                    v519 = v979;
                    v437 = v990;
LABEL_267:
                    v569 = *&v1109[0];

                    LODWORD(v918) = v918 & 1;
                    v570 = v971;

                    sub_1DB1F8988(&v1146, &v1083);
                    v571 = sub_1DB1F7558(v569, &v1146, v570);
                    if (!v172)
                    {
                      v572 = v571;

                      v573 = v1110;
                      sub_1DB1F89E4(&v1146);

                      sub_1DB1F8988(&v1146, &v1083);
                      v574 = sub_1DB1F71D8(v573, &v1146, v570);

                      sub_1DB1F89E4(&v1146);

                      v977[0] = BYTE8(v1110);
                      v978 = v1111;
                      v1080 = v1154;
                      v1081 = v1155;
                      v1082 = v1156;
                      v1076 = v1150;
                      v1077 = v1151;
                      v1079 = v1153;
                      v1078 = v1152;
                      v1072 = v1146;
                      v1073 = v1147;
                      v1075 = v1149;
                      v1074 = v1148;

                      sub_1DB1E78A8(&v1072);
                      v575 = 0;
                      sub_1DB17181C(&v1105);

                      LOBYTE(v573) = v975;
                      v576 = *(&v975 + 1);

                      v1084 = v987;
                      v1085 = v988;
                      v1086 = v989;
                      v1090 = v1000;
                      v1091 = v1001;
                      v1092 = v1002;
                      v577 = v999;
                      v1088 = v998;
                      v578 = v928;
                      *v928 = v990[0];
                      *(v578 + 3) = *(v990 + 3);
                      v1093 = v1003;
                      v1089 = v577;
                      *&v1096[3] = *(v980 + 3);
                      *v1096 = v980[0];
                      LOBYTE(v1083) = v918;
                      *(&v1083 + 1) = v519;
                      v1087 = v572;
                      v1094 = v574;
                      v1095 = v573;
                      v1097 = v576;
                      v579 = v902;
                      v580 = v906;
                      (*(v897 + 3))(&v1083, v906);
                      (v905[4])(v896, v579, v580);
                      LOBYTE(v994) = v898;
                      sub_1DB1355D0(&v991, &v994 + 8);
                      sub_1DB1756AC(&v981);
                      v83 = v1004;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1DB138640(0, *(v83 + 16) + 1, 1);
                        v83 = v1004;
                      }

                      v509 = v899;
                      v582 = *(v83 + 16);
                      v581 = *(v83 + 24);
                      if (v582 >= v581 >> 1)
                      {
                        sub_1DB138640((v581 > 1), v582 + 1, 1);
                        v509 = v899;
                        v83 = v1004;
                      }

                      *(v83 + 16) = v582 + 1;
                      v583 = (v83 + 48 * v582);
                      v584 = v994;
                      v585 = v996;
                      v583[3] = v995;
                      v583[4] = v585;
                      v583[2] = v584;
                      if (v509 != v888)
                      {
                        v511 = v509 + 1;
                        v510 = v886;
                        v172 = 0;
                        if (v509 >= *(v887 + 16))
                        {
                          goto LABEL_519;
                        }

                        continue;
                      }

LABEL_276:
                      LOBYTE(v1072) = BYTE8(v1117);
                      *(&v1072 + 1) = v1118;
                      v1102[4] = v1154;
                      v1102[5] = v1155;
                      v1103 = v1156;
                      v1102[0] = v1150;
                      v1102[1] = v1151;
                      v1102[3] = v1153;
                      v1102[2] = v1152;
                      v1098 = v1146;
                      v1099 = v1147;
                      v1101 = v1149;
                      v1100 = v1148;

                      sub_1DB1E78A8(&v1098);
                      v1184 = v575;
                      if (v575)
                      {
                        goto LABEL_516;
                      }

                      sub_1DB17181C(v1115);

                      v586 = v1083;
                      v587 = *(&v1083 + 1);

                      v1106 = v1012;
                      v1107 = v1013;
                      v1108 = v1014;
                      *(&v1109[2] + 8) = v1008;
                      *(&v1109[3] + 8) = v1009;
                      *(&v1109[4] + 8) = v1010;
                      v588 = v1007;
                      *(v1109 + 8) = v1006;
                      v589 = v911;
                      *v911 = v1015[0];
                      *(v589 + 3) = *(v1015 + 3);
                      *(&v1109[5] + 1) = v1011;
                      *(&v1109[1] + 8) = v588;
                      HIDWORD(v1110) = *(v1005 + 3);
                      *(&v1110 + 9) = v1005[0];
                      LOBYTE(v1105) = v922;
                      *(&v1105 + 1) = v891;
                      *&v1109[0] = v892;
                      *&v1110 = v83;
                      BYTE8(v1110) = v586;
                      v1111 = v587;
                      v590 = v908;
                      v591 = v914;
                      (*(v890 + 24))(&v1105, v914);
                      (v913[4])(boxed_opaque_existential_0, v590, v591);
                      v1023 = v1041;
                      v1024 = v1042;
                      v1025 = v1043;
                      v1019 = v1037;
                      v1020 = v1038;
                      v1022 = v1040;
                      v1021 = v1039;
                      v1018 = v1036;
                      v1017 = v1035;
                      sub_1DB1F8894(v1016, &v1023, &qword_1ECC279E8, &unk_1DB2C3AE0);
                      *&v1033[80] = v1023;
                      *&v1033[96] = v1024;
                      *&v1033[112] = v1025;
                      *&v1033[16] = v1019;
                      *&v1033[32] = v1020;
                      *&v1033[64] = v1022;
                      *&v1033[48] = v1021;
                      *v1033 = v1018;
                      v1032 = v1017;
                      v1034 = 1;
                      __swift_destroy_boxed_opaque_existential_1(&v1028);
LABEL_176:
                      v233 = *(&v1032 + 1);
                      v231 = v1032;
                      v393 = *v1033;
                      v1049 = *&v1033[72];
                      v1050 = *&v1033[88];
                      v1051 = *&v1033[104];
                      v1045 = *&v1033[8];
                      v1046 = *&v1033[24];
                      v1048 = *&v1033[56];
                      v1047 = *&v1033[40];
                      v394 = v1034;
LABEL_182:
                      v395 = v1047;
                      v396 = v930;
                      *(v930 + 88) = v1048;
                      v397 = v1050;
                      *(v396 + 104) = v1049;
                      *(v396 + 120) = v397;
                      *(v396 + 136) = v1051;
                      v398 = v1046;
                      *(v396 + 40) = v1045;
                      *(v396 + 56) = v398;
                      *(v396 + 16) = v231;
                      *(v396 + 24) = v233;
                      *(v396 + 32) = v393;
                      *(v396 + 72) = v395;
                      *(v396 + 152) = v394;
                      sub_1DB1F7184(&v1052);
                      goto LABEL_188;
                    }

LABEL_509:

                    sub_1DB1F89E4(&v1146);
                    sub_1DB1759B0(&v1119);
                    sub_1DB17181C(v1115);
                    sub_1DB17181C(&v1105);
                    (v905[1])(v902, v906);
                    (v913[1])(v908, v914);
                    sub_1DB1F7130(&v1035);
                    sub_1DB1F7184(&v1052);
                    v880 = v519;
                    goto LABEL_492;
                  }

                  goto LABEL_243;
                }
              }

              v549 = 0;
              goto LABEL_255;
            }

            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v521 = swift_allocObject();
          sub_1DB158A70(v521, 1);
          v522[3] = v539;
          v522[4] = v541;
          v523 = __swift_allocate_boxed_opaque_existential_0(v522);
          (*(*(v539 - 8) + 16))(v523, v540, v539);
          nullsub_1();
          v525 = v524;
          goto LABEL_242;
        }
      }
    }

    v829 = MEMORY[0x1E69E7CC0];
LABEL_284:
    v918 = v829;
  }

  else
  {
    v918 = 0;
  }

  LODWORD(v894) = v1136;
  v592 = v1138;
  v593 = v1139;
  __swift_project_boxed_opaque_existential_1(v1137, v1138);
  *(&v999 + 1) = v592;
  *&v1000 = v593;
  v892 = __swift_allocate_boxed_opaque_existential_0(&v998);
  v917 = &v886;
  MEMORY[0x1EEE9AC00](v892);
  v919 = &v886 - ((v594 + 15) & 0xFFFFFFFFFFFFFFF0);
  v920 = v595;
  (*(v595 + 16))();
  v596 = *(v593 + 2);
  v921 = v592;
  v893 = v593;
  v596(v1112, v592, v593);
  *&v1115[128] = *&v1112[128];
  v1116 = *&v1112[144];
  v1117 = v1113;
  v1118 = v1114;
  *&v1115[64] = *&v1112[64];
  *&v1115[80] = *&v1112[80];
  *&v1115[96] = *&v1112[96];
  *&v1115[112] = *&v1112[112];
  *v1115 = *v1112;
  *&v1115[16] = *&v1112[16];
  *&v1115[32] = *&v1112[32];
  *&v1115[48] = *&v1112[48];
  LODWORD(v930) = v1112[0];
  LODWORD(v1028) = *v931;
  *(&v1028 + 3) = *(v931 + 3);
  v1045 = *&v1112[16];
  v1046 = *&v1112[32];
  v1047 = *&v1112[48];
  v1053 = *&v1112[88];
  v1052 = *&v1112[72];
  *&v1057 = *&v1112[152];
  v1056 = *&v1112[136];
  v1055 = *&v1112[120];
  v1054 = *&v1112[104];
  v913 = *&v1112[64];
  v914 = v1113;
  LODWORD(v915) = BYTE8(v1113);
  *(&v1026 + 3) = HIDWORD(v1113);
  LODWORD(v1026) = *(&v1113 + 9);
  v922 = v1114;
  v519 = *&v1112[8];
  v1159[0] = *&v1112[16];
  v954 = *&v1112[24];
  v1159[1] = *&v1112[32];
  v946 = *&v1112[48];
  v1160 = *&v1112[48];
  v962 = *&v1112[56];
  v1161 = *&v1112[56];
  v597 = MEMORY[0x1E69E7CC0];
  *&v1035 = MEMORY[0x1E69E7CC0];
  v947 = *(*&v1112[8] + 16);
  if (v947)
  {
    v961 = *&v1112[16];
    v942 = *(&v1156 + 1);
    v948._object = (*&v1112[8] + 32);
    sub_1DB1754EC(v1115, &v1105);

    v598 = 0;
    v948._countAndFlagsBits = v519;
    while (1)
    {
      if (v598 >= *(v519 + 16))
      {
        __break(1u);
        goto LABEL_499;
      }

      v967 = v598;
      sub_1DB164980(v948._object + 40 * v598, &v1098);
      v603 = v1099._object;
      v604 = v1100;
      v605 = __swift_project_boxed_opaque_existential_1(&v1098, v1099._object);
      v606 = v604[3];
      v969 = v605;
      v970 = v603;
      v968 = v604;
      *(&v964 + 1) = v604 + 3;
      *&v964 = v606;
      v606(&v1105, v603, v604);
      v1184 = v78;

      sub_1DB2BA9C4();
      sub_1DB2BB004();

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
      v13 = v953;
      v607 = v973;
      sub_1DB2BA9B4();
      v608 = v956;
      v609 = v1184;
      sub_1DB2BA9D4();
      v78 = v609;
      if (v609)
      {
        MEMORY[0x1E1284A10](v609);

        v610 = *v972;
        (*v972)(v13, v607);
        v610(v965, v607);
        v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v611 - 8) + 56))(v608, 1, 1, v611);
        sub_1DB1445E0(v608, &qword_1ECC27D40, &qword_1DB2C39F8);
        v1184 = 0;
      }

      else
      {

        v612 = *v972;
        (*v972)(v13, v607);
        v612(v965, v607);
        v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v612) = (*(*(v613 - 8) + 48))(v608, 1, v613);
        sub_1DB1445E0(v608, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v612 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v599 = swift_allocObject();
          *(v599 + 16) = v951;
          v600 = v970;
          v601 = v968;
          *(v599 + 56) = v970;
          *(v599 + 64) = v601;
          v602 = __swift_allocate_boxed_opaque_existential_0((v599 + 32));
          (*(*(v600 - 8) + 16))(v602, v969, v600);
          goto LABEL_288;
        }

        v1184 = 0;
      }

      (v964)(&v1105, v970, v968);
      v614 = *(&v1105 + 1);
      v615 = v1105;

      v616 = (v614 & 0x2000000000000000) != 0 ? HIBYTE(v614) & 0xF : v615 & 0xFFFFFFFFFFFFLL;
      if (v616)
      {
        break;
      }

LABEL_339:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      v662 = swift_allocObject();
      sub_1DB158A70(v662, 1);
      v663 = v970;
      v664 = v968;
      v665[3] = v970;
      v665[4] = v664;
      v666 = __swift_allocate_boxed_opaque_existential_0(v665);
      (*(*(v663 - 8) + 16))(v666, v969, v663);
      nullsub_1();
      v599 = v667;
      v78 = v1184;
LABEL_288:
      v519 = v948._countAndFlagsBits;
      v598 = v967 + 1;
      __swift_destroy_boxed_opaque_existential_1(&v1098);
      sub_1DB1414E8(v599);
      if (v598 == v947)
      {

        v895 = v1035;
        goto LABEL_342;
      }
    }

    v617 = 0;
    v13 = (v614 & 0xFFFFFFFFFFFFFFLL);
    while (1)
    {
      if ((v614 & 0x1000000000000000) != 0)
      {
        v620 = sub_1DB2BB4E4();
        goto LABEL_308;
      }

      if ((v614 & 0x2000000000000000) != 0)
      {
        *&v1083 = v615;
        *(&v1083 + 1) = v614 & 0xFFFFFFFFFFFFFFLL;
        v619 = &v1083 + v617;
      }

      else
      {
        v618 = (v614 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v615 & 0x1000000000000000) == 0)
        {
          v618 = sub_1DB2BB5B4();
        }

        v619 = (v618 + v617);
      }

      v620 = *v619;
      if ((*v619 & 0x80000000) == 0)
      {
        break;
      }

      v622 = (__clz(v620 ^ 0xFF) - 24);
      if (v622 > 2)
      {
        if (v622 == 3)
        {
          v620 = ((v620 & 0xF) << 12) | ((v619[1] & 0x3F) << 6) | v619[2] & 0x3F;
          v621 = 3;
        }

        else
        {
          v620 = ((v620 & 0xF) << 18) | ((v619[1] & 0x3F) << 12) | ((v619[2] & 0x3F) << 6) | v619[3] & 0x3F;
          v621 = 4;
        }
      }

      else
      {
        if (v622 == 1)
        {
          break;
        }

        v620 = v619[1] & 0x3F | ((v620 & 0x1F) << 6);
        v621 = 2;
      }

LABEL_308:
      if (v620 == 42)
      {

        if (!v962)
        {

          sub_1DB1F88FC();
          swift_allocError();
          v831 = v954;
          *v832 = v961;
          *(v832 + 8) = v831;
          *(v832 + 16) = 0;
          *(v832 + 24) = 4;
          swift_willThrow();

          goto LABEL_434;
        }

        v623 = v971;
        if (!v971)
        {
          v626 = v954;
          goto LABEL_326;
        }

        v624 = v961;
        v625._countAndFlagsBits = v961;
        v626 = v954;
        v625._object = v954;
        if (!Connection.tableExists(_:)(v625))
        {

          v623 = 0;
          goto LABEL_326;
        }

        type metadata accessor for SchemaReader();
        *(swift_allocObject() + 16) = v623;

        v627 = v1184;
        v628 = sub_1DB26B520(v624, v626);
        if (v627)
        {
          swift_setDeallocating();
          SchemaReader.__deallocating_deinit();
          if (qword_1EE13F2E0 != -1)
          {
            swift_once();
          }

          sub_1DB2BBAF4();
          v629 = *(&v1106 + 1);
          v630 = v1107;
          *(&v964 + 1) = __swift_project_boxed_opaque_existential_1(&v1105, *(&v1106 + 1));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27460, &unk_1DB2C0190);
          v631 = swift_allocObject();
          *&v964 = sub_1DB158A70(v631, 1);
          v633 = v632;
          *&v1017 = MEMORY[0x1E69E7CC0];
          sub_1DB156558(37);
          v634._countAndFlagsBits = 0xD000000000000021;
          v634._object = (v939 | 0x8000000000000000);
          LogMessage.StringInterpolation.appendLiteral(_:)(v634);
          v1073._object = MEMORY[0x1E69E6158];
          *&v1072 = v961;
          *(&v1072 + 1) = v626;
          sub_1DB1446A4(&v1072, &v1032, &qword_1ECC26F30, &unk_1DB2BFA90);
          v1083 = 0u;
          v1084 = 0;

          sub_1DB1F8894(&v1032, &v1083, &qword_1ECC26F30, &unk_1DB2BFA90);
          LOBYTE(v1085) = 0;
          sub_1DB1565BC();
          v635 = *(v1017 + 16);
          sub_1DB156608(v635);
          sub_1DB15664C(v635, &v1083);
          nullsub_1();
          sub_1DB1445E0(&v1072, &qword_1ECC26F30, &unk_1DB2BFA90);
          v636._countAndFlagsBits = 8250;
          v636._object = 0xE200000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v636);
          swift_getErrorValue();
          v637 = v1070[1];
          v638 = v1071;
          v1073._object = v1071;
          v639 = __swift_allocate_boxed_opaque_existential_0(&v1072);
          (*(*(v638 - 1) + 16))(v639, v637, v638);
          sub_1DB1446A4(&v1072, &v1032, &qword_1ECC26F30, &unk_1DB2BFA90);
          v1083 = 0u;
          v1084 = 0;
          sub_1DB1F8894(&v1032, &v1083, &qword_1ECC26F30, &unk_1DB2BFA90);
          LOBYTE(v1085) = 0;
          sub_1DB1565BC();
          v640 = *(v1017 + 16);
          sub_1DB156608(v640);
          sub_1DB15664C(v640, &v1083);
          nullsub_1();
          v626 = v954;
          sub_1DB1445E0(&v1072, &qword_1ECC26F30, &unk_1DB2BFA90);
          v641._countAndFlagsBits = 0;
          v641._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v641);
          *v633 = v1017;
          nullsub_1();
          Logger.warning(_:)(v642, v629, v630);

          __swift_destroy_boxed_opaque_existential_1(&v1105);
          v623 = sub_1DB138230(0);
          MEMORY[0x1E1284A10](v627);

          v1184 = 0;
          goto LABEL_326;
        }

        v653 = v628;
        swift_setDeallocating();
        SchemaReader.__deallocating_deinit();
        v654 = sub_1DB165CE0(v653);
        v1184 = 0;
        if (!v654)
        {

          v623 = sub_1DB138230(0);

          goto LABEL_326;
        }

        v655 = v654;
        *&v1105 = MEMORY[0x1E69E7CC0];
        sub_1DB138128(v654);
        if ((v655 & 0x8000000000000000) == 0)
        {
          v623 = v1105;
          *(&v964 + 1) = v653;
          v656 = (v653 + 40);
          do
          {
            v658 = *(v656 - 1);
            v657 = *v656;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DB138470(0, *(v623 + 16) + 1, 1);
              v623 = v1105;
            }

            v660 = *(v623 + 16);
            v659 = *(v623 + 24);
            if (v660 >= v659 >> 1)
            {
              sub_1DB138470((v659 > 1), v660 + 1, 1);
              v623 = v1105;
            }

            *(v623 + 16) = v660 + 1;
            v661 = v623 + 16 * v660;
            *(v661 + 32) = v658;
            *(v661 + 40) = v657;
            v656 += 16;
            --v655;
          }

          while (v655);

          v626 = v954;
LABEL_326:
          *&v1083 = v942;
          DataSpecification.subscript.getter(v946, v962, &v1105);
          v643 = *(&v1105 + 1);
          if (*(&v1105 + 1))
          {
            v644 = v1105;
            v645 = v1106;
            v1083 = v1105;
            v1084._countAndFlagsBits = v1106;
            DataSpecification.Namespace.subscript.getter(v961, v626, &v1105);
            v646 = *(&v1105 + 1);
            if (*(&v1105 + 1))
            {
              v647 = v1108;
              v964 = v1107;
              v957 = *(&v1106 + 1);
              v648 = v1106;
              v13 = v1105;
              sub_1DB1718E4(v644, v643, v645);

              sub_1DB171928(v13, v646, v648, v957, v964, *(&v964 + 1), v647);
              MEMORY[0x1EEE9AC00](v649);
              v650 = v968;
              *(&v886 - 6) = v970;
              *(&v886 - 5) = v650;
              v651 = v969;
              *(&v886 - 4) = v623;
              *(&v886 - 3) = v651;
              *(&v886 - 2) = v1159;
              v652 = v1184;
              v599 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v647);

              v78 = v652;

              goto LABEL_288;
            }

            sub_1DB1718E4(v644, v643, v645);
          }

          else
          {
          }

          *&v1105 = 0;
          *(&v1105 + 1) = 0xE000000000000000;
          sub_1DB2BB4F4();
          MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
          MEMORY[0x1E1283490](v961, v626);
          MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
          MEMORY[0x1E1283490](v946, v962);
          v833 = v1105;
          *&v1106 = 0;
          BYTE8(v1106) = 5;
          sub_1DB171870();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v834 = v833;
          *(v834 + 16) = 0;
          *(v834 + 24) = 5;
LABEL_434:
          sub_1DB1759B0(&v1119);
          sub_1DB17181C(v1115);
          (*(v920 + 8))(v919, v921);
          __swift_destroy_boxed_opaque_existential_1(&v1098);
          v835 = v948._countAndFlagsBits;

          v836 = v913;
          v519 = v914;
          goto LABEL_459;
        }

LABEL_518:
        __break(1u);
LABEL_519:
        __break(1u);
LABEL_520:
        __break(1u);
LABEL_521:
        __break(1u);
LABEL_522:
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        return;
      }

      v617 += v621;
      if (v617 >= v616)
      {
        goto LABEL_339;
      }
    }

    v621 = 1;
    goto LABEL_308;
  }

  sub_1DB1754EC(v1115, &v1105);
  v895 = v597;
LABEL_342:
  v668 = *&v1115[64];

  LODWORD(v930) = v930 & 1;
  v519 = *(v668 + 16);
  if (!v519)
  {

    v519 = MEMORY[0x1E69E7CC0];
    v737 = MEMORY[0x1E69E7CC0];
    goto LABEL_381;
  }

  v1067[0] = MEMORY[0x1E69E7CC0];
  sub_1DB138188(v519);
  if (!*(v668 + 16))
  {
    goto LABEL_499;
  }

  v669 = 0;
  v670 = (v668 + 32);
  v671 = 1;
  v890 = v519;
  v891 = v668;
  boxed_opaque_existential_0 = (v668 + 32);
  while (2)
  {
    v902 = v671;
    sub_1DB175548(&v670[11 * v669], &v1035);
    LODWORD(v901) = v1035;
    v673 = *(&v1037 + 1);
    v672 = v1037;
    __swift_project_boxed_opaque_existential_1(&v1035 + 1, v1037);
    *(&v995 + 1) = v672;
    *&v996 = v673;
    v899 = __swift_allocate_boxed_opaque_existential_0(&v994);
    v904 = &v886;
    MEMORY[0x1EEE9AC00](v899);
    v906 = &v886 - ((v674 + 15) & 0xFFFFFFFFFFFFFFF0);
    v907 = v675;
    (*(v675 + 16))();
    v676 = v673[2];
    v908 = v672;
    v900 = v673;
    v676(&v1098, v672, v673);
    v1109[4] = v1102[4];
    v1109[5] = v1102[5];
    v1110 = v1103;
    v1111 = v1104;
    v1109[0] = v1102[0];
    v1109[1] = v1102[1];
    v1109[2] = v1102[2];
    v1109[3] = v1102[3];
    v1105 = v1098;
    v1106 = v1099;
    v1107 = v1100;
    v1108 = v1101;
    LODWORD(v927) = v1098;
    LODWORD(v1016[0]) = *v933;
    *(v1016 + 3) = *(v933 + 3);
    v1006 = v1099;
    v1007 = v1100;
    v1008 = v1101;
    v1018 = *(&v1102[1] + 8);
    v1017 = *(v1102 + 8);
    *&v1022 = *(&v1102[5] + 1);
    v1021 = *(&v1102[4] + 8);
    v1020 = *(&v1102[3] + 8);
    v1019 = *(&v1102[2] + 8);
    v896 = *&v1102[0];
    v897 = v1103;
    LODWORD(v898) = BYTE8(v1103);
    *(&v991 + 3) = HIDWORD(v1103);
    LODWORD(v991) = *(&v1103 + 9);
    v905 = v1104;
    v677 = *(&v1098 + 1);
    v1158[0] = v1099;
    v1158[1] = v1100;
    v954 = *(&v1101 + 1);
    v946 = v1101;
    v1158[2] = v1101;
    v678 = MEMORY[0x1E69E7CC0];
    v1064[0] = MEMORY[0x1E69E7CC0];
    v962 = *(*(&v1098 + 1) + 16);
    if (!v962)
    {
      sub_1DB1754EC(&v1105, &v1083);
      goto LABEL_372;
    }

    v948 = v1099;
    v942 = *(&v1156 + 1);
    v961 = (*(&v1098 + 1) + 32);
    sub_1DB1754EC(&v1105, &v1083);

    v679 = 0;
    v957 = v677;
    do
    {
      if (v679 >= *(v677 + 16))
      {
        __break(1u);

        sub_1DB1F89E4(&v1146);
        sub_1DB1759B0(&v1119);
        sub_1DB17181C(&v1105);
        sub_1DB17181C(v1115);
        (*(v902 + 1))(v901, v904);
        (v913[1])(v908, v914);
        v861 = v894;
        goto LABEL_466;
      }

      v970 = v679;
      sub_1DB164980(v961 + 40 * v679, &v1072);
      v685 = v1073._object;
      v686 = v1074;
      v687 = __swift_project_boxed_opaque_existential_1(&v1072, v1073._object);
      v688 = *(v686 + 3);
      v968 = v687;
      v969 = v685;
      v967 = v686;
      *(&v964 + 1) = v686 + 24;
      *&v964 = v688;
      v688(&v1083, v685, v686);
      v1184 = v78;

      sub_1DB2BA9C4();
      sub_1DB2BB004();
      v13 = v689;

      sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
      v690 = v958;
      v691 = v973;
      sub_1DB2BA9B4();
      v692 = v959;
      v693 = v1184;
      sub_1DB2BA9D4();
      v78 = v693;
      if (v693)
      {
        MEMORY[0x1E1284A10](v693);

        v694 = *v972;
        (*v972)(v690, v691);
        v694(v966, v691);
        v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        (*(*(v695 - 8) + 56))(v692, 1, 1, v695);
        sub_1DB1445E0(v692, &qword_1ECC27D40, &qword_1DB2C39F8);
        v78 = 0;
      }

      else
      {

        v696 = *v972;
        (*v972)(v690, v691);
        v696(v966, v691);
        v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
        LODWORD(v696) = (*(*(v697 - 8) + 48))(v692, 1, v697);
        sub_1DB1445E0(v692, &qword_1ECC27D40, &qword_1DB2C39F8);
        if (v696 != 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v684 = swift_allocObject();
          *(v684 + 16) = v951;
          v705 = v969;
          v706 = v967;
          *(v684 + 56) = v969;
          *(v684 + 64) = v706;
          v707 = __swift_allocate_boxed_opaque_existential_0((v684 + 32));
          (*(*(v705 - 1) + 16))(v707, v968, v705);
          v698 = v970;
          goto LABEL_348;
        }
      }

      v698 = v970;
      v699 = v969;
      v700 = v968;
      v13 = v967;
      (v964)(&v1083, v969, v967);
      v701 = *(&v1083 + 1);
      v702 = v1083;

      LOBYTE(v702) = sub_1DB23CC0C(v702, v701, 42);

      if ((v702 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v680 = swift_allocObject();
        sub_1DB158A70(v680, 1);
        v681[3] = v699;
        v681[4] = v13;
        v682 = __swift_allocate_boxed_opaque_existential_0(v681);
        (*(*(v699 - 8) + 16))(v682, v700, v699);
        nullsub_1();
        v684 = v683;
        goto LABEL_348;
      }

      if (!v954)
      {

        sub_1DB1F88FC();
        swift_allocError();
        v837 = v948._object;
        *v838 = v948._countAndFlagsBits;
        *(v838 + 8) = v837;
        *(v838 + 16) = 0;
        *(v838 + 24) = 4;
        swift_willThrow();

        goto LABEL_439;
      }

      v703 = v971;
      if (v971)
      {

        v704 = v948;
        if (Connection.tableExists(_:)(v948))
        {
          type metadata accessor for SchemaReader();
          *(swift_allocObject() + 16) = v703;

          v720 = sub_1DB26B520(v704._countAndFlagsBits, v704._object);
          swift_setDeallocating();
          SchemaReader.__deallocating_deinit();
          v721 = sub_1DB165CE0(v720);
          if (v721)
          {
            v722 = v721;
            *&v1083 = MEMORY[0x1E69E7CC0];
            sub_1DB138128(v721);
            if (v722 < 0)
            {
              goto LABEL_520;
            }

            v723 = (v720 + 40);
            do
            {
              v724 = *(v723 - 1);
              v725 = *v723;

              sub_1DB138850();
              v726 = *(v1083 + 16);
              sub_1DB13893C(v726);
              sub_1DB1389E8(v726, v724, v725);
              nullsub_1();
              v723 += 16;
              --v722;
            }

            while (v722);

            v708 = v1083;
            v78 = 0;
          }

          else
          {

            v708 = sub_1DB138230(0);

            v78 = 0;
          }

          goto LABEL_361;
        }
      }

      v708 = 0;
LABEL_361:
      *&v981 = v942;
      DataSpecification.subscript.getter(v946, v954, &v1083);
      v709 = *(&v1083 + 1);
      if (!*(&v1083 + 1))
      {

        goto LABEL_438;
      }

      v1184 = v78;
      v710 = v1083;
      v711 = v1084._countAndFlagsBits;
      v981 = v1083;
      *&v982 = v1084._countAndFlagsBits;
      DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1083);
      v712 = *(&v1083 + 1);
      if (!*(&v1083 + 1))
      {

        sub_1DB1718E4(v710, v709, v711);
LABEL_438:
        *&v1083 = 0;
        *(&v1083 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();
        MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
        MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
        MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
        MEMORY[0x1E1283490](v946, v954);
        v839 = v1083;
        v1084._countAndFlagsBits = 0;
        LOBYTE(v1084._object) = 5;
        sub_1DB171870();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v840 = v839;
        *(v840 + 16) = 0;
        *(v840 + 24) = 5;
LABEL_439:
        sub_1DB1759B0(&v1119);
        sub_1DB17181C(&v1105);
        sub_1DB17181C(v1115);
        (v907[1])(v906, v908);
        (*(v920 + 8))(v919, v921);
        __swift_destroy_boxed_opaque_existential_1(&v1072);
        v678 = v957;

LABEL_440:
        LOBYTE(v1083) = v927;
        *(&v1083 + 1) = v1016[0];
        DWORD1(v1083) = *(v1016 + 3);
        *(&v1083 + 1) = v678;
        v1084 = v1006;
        v1085 = v1007;
        v1086 = v1008;
        v1089 = v1018;
        v1088 = v1017;
        v1087 = v896;
        v1093 = v1022;
        v1092 = v1021;
        v1091 = v1020;
        v1090 = v1019;
        v1094 = v897;
        v1095 = v898;
        *&v1096[3] = *(&v991 + 3);
        *v1096 = v991;
        v1097 = v905;
        sub_1DB17181C(&v1083);
        __swift_deallocate_boxed_opaque_existential_1(&v994);
        sub_1DB1755A4(&v1035);

        v836 = v913;
        v519 = v914;
        goto LABEL_458;
      }

      v13 = v1086;
      *&v964 = *(&v1085 + 1);
      v947 = v1085;
      v713 = v1084._object;
      *(&v964 + 1) = v708;
      v714 = v1084._countAndFlagsBits;
      v715 = v1083;
      sub_1DB1718E4(v710, v709, v711);

      v698 = v970;
      sub_1DB171928(v715, v712, v714, v713, v947, v964, v13);
      MEMORY[0x1EEE9AC00](v716);
      v717 = v967;
      *(&v886 - 6) = v969;
      *(&v886 - 5) = v717;
      v718 = v968;
      *(&v886 - 4) = *(&v964 + 1);
      *(&v886 - 3) = v718;
      *(&v886 - 2) = v1158;
      v719 = v1184;
      v684 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v13);
      v78 = v719;

LABEL_348:
      v679 = v698 + 1;
      __swift_destroy_boxed_opaque_existential_1(&v1072);
      sub_1DB1414E8(v684);
      v677 = v957;
    }

    while (v679 != v962);

    v678 = v1064[0];
LABEL_372:
    v727 = *&v1109[0];

    LODWORD(v927) = v927 & 1;
    v728 = v971;

    sub_1DB1F8988(&v1146, &v1083);
    v729 = sub_1DB1F7558(v727, &v1146, v728);
    if (v78)
    {

      sub_1DB1F89E4(&v1146);
      sub_1DB1759B0(&v1119);

      sub_1DB17181C(&v1105);
      sub_1DB17181C(v1115);
      (v907[1])(v906, v908);
      (*(v920 + 8))(v919, v921);
      goto LABEL_440;
    }

    v730 = v729;

    v731 = v1110;
    sub_1DB1F89E4(&v1146);

    sub_1DB1F8988(&v1146, &v1083);
    v13 = sub_1DB1F71D8(v731, &v1146, v728);

    sub_1DB1F89E4(&v1146);

    LOBYTE(v1012) = BYTE8(v1110);
    *(&v1012 + 1) = v1111;
    v1080 = v1154;
    v1081 = v1155;
    v1082 = v1156;
    v1076 = v1150;
    v1077 = v1151;
    v1079 = v1153;
    v1078 = v1152;
    v1072 = v1146;
    v1073 = v1147;
    v1075 = v1149;
    v1074 = v1148;

    sub_1DB1E78A8(&v1072);
    sub_1DB17181C(&v1105);

    LOBYTE(v731) = v981;
    v732 = *(&v981 + 1);

    v1084 = v1006;
    v1085 = v1007;
    v1086 = v1008;
    v1090 = v1019;
    v1091 = v1020;
    v1092 = v1021;
    v733 = v1018;
    v1088 = v1017;
    v734 = v928;
    *v928 = v1016[0];
    *(v734 + 3) = *(v1016 + 3);
    v1093 = v1022;
    v1089 = v733;
    *&v1096[3] = *(&v991 + 3);
    *v1096 = v991;
    LOBYTE(v1083) = v927;
    *(&v1083 + 1) = v678;
    v1087 = v730;
    v1094 = v13;
    v1095 = v731;
    v1097 = v732;
    v735 = v906;
    v736 = v908;
    (v900[3])(&v1083, v908);
    (v907[4])(v899, v735, v736);
    sub_1DB164980(&v1038, &v1033[32]);
    LOBYTE(v1032) = v901;
    sub_1DB1355D0(&v994, &v1032 + 8);
    sub_1DB1755A4(&v1035);
    v737 = v1067[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DB138660(0, v737[2] + 1, 1);
      v737 = v1067[0];
    }

    v669 = v902;
    v739 = v737[2];
    v738 = v737[3];
    if (v739 >= v738 >> 1)
    {
      sub_1DB138660((v738 > 1), v739 + 1, 1);
      v669 = v902;
      v737 = v1067[0];
    }

    v737[2] = v739 + 1;
    v740 = &v737[11 * v739];
    v741 = *v1033;
    *(v740 + 2) = v1032;
    *(v740 + 3) = v741;
    v742 = *&v1033[16];
    v743 = *&v1033[32];
    v744 = *&v1033[48];
    v740[14] = *&v1033[64];
    *(v740 + 5) = v743;
    *(v740 + 6) = v744;
    *(v740 + 4) = v742;
    v519 = v890;
    if (v669 != v890)
    {
      v671 = (v669 + 1);
      v670 = boxed_opaque_existential_0;
      if (v669 >= *(v891 + 16))
      {
LABEL_499:
        __break(1u);
        goto LABEL_500;
      }

      continue;
    }

    break;
  }

  v519 = MEMORY[0x1E69E7CC0];
LABEL_381:
  v745 = v1117;
  v746 = *(v1117 + 16);
  v896 = v737;
  if (!v746)
  {
    v811 = v78;

    goto LABEL_420;
  }

  v1067[0] = v519;
  v437 = v1067;
  v891 = v746;
  sub_1DB138170(v746);
  if (!*(v745 + 16))
  {
    goto LABEL_508;
  }

  v747 = 0;
  v748 = (v745 + 32);
  v749 = 1;
  boxed_opaque_existential_0 = (v745 + 32);
  v890 = v745;
  while (2)
  {
    v904 = v749;
    sub_1DB175650(&v748[6 * v747], &v1017);
    LODWORD(v902) = v1017;
    v751 = *(&v1019 + 1);
    v750 = v1019;
    __swift_project_boxed_opaque_existential_1(&v1017 + 1, v1019);
    *(&v995 + 1) = v750;
    *&v996 = v751;
    v900 = __swift_allocate_boxed_opaque_existential_0(&v994);
    v913 = &v886;
    MEMORY[0x1EEE9AC00](v900);
    v906 = &v886 - ((v752 + 15) & 0xFFFFFFFFFFFFFFF0);
    v907 = v753;
    (*(v753 + 16))();
    v754 = *(v751 + 2);
    v908 = v750;
    v901 = v751;
    v754(&v1098, v750, v751);
    v1109[4] = v1102[4];
    v1109[5] = v1102[5];
    v1110 = v1103;
    v1111 = v1104;
    v1109[0] = v1102[0];
    v1109[1] = v1102[1];
    v1109[2] = v1102[2];
    v1109[3] = v1102[3];
    v1105 = v1098;
    v1106 = v1099;
    v1107 = v1100;
    v1108 = v1101;
    LODWORD(v927) = v1098;
    LODWORD(v1016[0]) = *v933;
    *(v1016 + 3) = *(v933 + 3);
    v1006 = v1099;
    v1007 = v1100;
    v1008 = v1101;
    *v1033 = *(&v1102[1] + 8);
    v1032 = *(v1102 + 8);
    *&v1033[64] = *(&v1102[5] + 1);
    *&v1033[48] = *(&v1102[4] + 8);
    *&v1033[32] = *(&v1102[3] + 8);
    *&v1033[16] = *(&v1102[2] + 8);
    v897 = *&v1102[0];
    v898 = v1103;
    LODWORD(v899) = BYTE8(v1103);
    v437 = v990;
    *(&v991 + 3) = HIDWORD(v1103);
    LODWORD(v991) = *(&v1103 + 9);
    v905 = v1104;
    v755 = *(&v1098 + 1);
    v1157[0] = v1099;
    v1157[1] = v1100;
    v954 = *(&v1101 + 1);
    v946 = v1101;
    v1157[2] = v1101;
    v756 = MEMORY[0x1E69E7CC0];
    v1064[0] = MEMORY[0x1E69E7CC0];
    v962 = *(*(&v1098 + 1) + 16);
    if (v962)
    {
      v948 = v1099;
      v942 = *(&v1156 + 1);
      v961 = (*(&v1098 + 1) + 32);
      sub_1DB1754EC(&v1105, &v1083);

      v519 = 0;
      v957 = v755;
      while (1)
      {
        if (v519 >= *(v755 + 16))
        {
          __break(1u);
          goto LABEL_508;
        }

        v970 = v519;
        sub_1DB164980(v961 + 40 * v519, &v1072);
        v762 = v1073._object;
        v763 = v1074;
        v764 = __swift_project_boxed_opaque_existential_1(&v1072, v1073._object);
        v765 = *(v763 + 3);
        v968 = v764;
        v969 = v762;
        v967 = v763;
        *(&v964 + 1) = v763 + 24;
        *&v964 = v765;
        v765(&v1083, v762, v763);
        v1184 = v78;

        sub_1DB2BA9C4();
        sub_1DB2BB004();

        sub_1DB1688F0(&qword_1EE13F280, &qword_1ECC27D48, &qword_1DB2C3A00, MEMORY[0x1E69E9290]);
        v766 = v940;
        v767 = v973;
        sub_1DB2BA9B4();
        v768 = v943;
        v769 = v1184;
        sub_1DB2BA9D4();
        v78 = v769;
        if (v769)
        {
          MEMORY[0x1E1284A10](v769);

          v770 = *v972;
          (*v972)(v766, v767);
          v770(v952, v767);
          v771 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          (*(*(v771 - 8) + 56))(v768, 1, 1, v771);
          sub_1DB1445E0(v768, &qword_1ECC27D40, &qword_1DB2C39F8);
          v78 = 0;
        }

        else
        {

          v772 = *v972;
          (*v972)(v766, v767);
          v772(v952, v767);
          v773 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27D60, &qword_1DB2C3A18);
          LODWORD(v772) = (*(*(v773 - 8) + 48))(v768, 1, v773);
          sub_1DB1445E0(v768, &qword_1ECC27D40, &qword_1DB2C39F8);
          if (v772 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
            v761 = swift_allocObject();
            *(v761 + 16) = v951;
            v782 = v969;
            v783 = v967;
            *(v761 + 56) = v969;
            *(v761 + 64) = v783;
            v784 = __swift_allocate_boxed_opaque_existential_0((v761 + 32));
            (*(*(v782 - 1) + 16))(v784, v968, v782);
            v774 = v970;
            goto LABEL_387;
          }
        }

        v774 = v970;
        v775 = v969;
        v776 = v968;
        v777 = v967;
        (v964)(&v1083, v969, v967);
        v778 = *(&v1083 + 1);
        v779 = v1083;

        LOBYTE(v779) = sub_1DB23CC0C(v779, v778, 42);

        if ((v779 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
          v757 = swift_allocObject();
          sub_1DB158A70(v757, 1);
          v758[3] = v775;
          v758[4] = v777;
          v759 = __swift_allocate_boxed_opaque_existential_0(v758);
          (*(*(v775 - 8) + 16))(v759, v776, v775);
          nullsub_1();
          v761 = v760;
          goto LABEL_387;
        }

        if (!v954)
        {

          sub_1DB1F88FC();
          swift_allocError();
          v852 = v948._object;
          *v853 = v948._countAndFlagsBits;
          *(v853 + 8) = v852;
          *(v853 + 16) = 0;
          *(v853 + 24) = 4;
          swift_willThrow();

          goto LABEL_456;
        }

        v780 = v971;
        if (v971)
        {

          v781 = v948;
          if (Connection.tableExists(_:)(v948))
          {
            type metadata accessor for SchemaReader();
            *(swift_allocObject() + 16) = v780;

            v798 = sub_1DB26B520(v781._countAndFlagsBits, v781._object);
            swift_setDeallocating();
            SchemaReader.__deallocating_deinit();
            v799 = sub_1DB165CE0(v798);
            if (v799)
            {
              v800 = v799;
              *&v1083 = MEMORY[0x1E69E7CC0];
              sub_1DB138128(v799);
              if (v800 < 0)
              {
                goto LABEL_523;
              }

              v801 = (v798 + 40);
              do
              {
                v802 = *(v801 - 1);
                v803 = *v801;

                sub_1DB138850();
                v804 = *(v1083 + 16);
                sub_1DB13893C(v804);
                sub_1DB1389E8(v804, v802, v803);
                nullsub_1();
                v801 += 16;
                --v800;
              }

              while (v800);

              v785 = v1083;
              v78 = 0;
            }

            else
            {

              v785 = sub_1DB138230(0);
            }

            goto LABEL_400;
          }
        }

        v785 = 0;
LABEL_400:
        *&v981 = v942;
        DataSpecification.subscript.getter(v946, v954, &v1083);
        v786 = *(&v1083 + 1);
        if (!*(&v1083 + 1))
        {

          goto LABEL_455;
        }

        v1184 = v78;
        v787 = v1083;
        v788 = v1084._countAndFlagsBits;
        v981 = v1083;
        *&v982 = v1084._countAndFlagsBits;
        DataSpecification.Namespace.subscript.getter(v948._countAndFlagsBits, v948._object, &v1083);
        v789 = *(&v1083 + 1);
        if (!*(&v1083 + 1))
        {

          sub_1DB1718E4(v787, v786, v788);
LABEL_455:
          *&v1083 = 0;
          *(&v1083 + 1) = 0xE000000000000000;
          sub_1DB2BB4F4();
          MEMORY[0x1E1283490](0xD000000000000027, 0x80000001DB2D45E0);
          MEMORY[0x1E1283490](v948._countAndFlagsBits, v948._object);
          MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D4610);
          MEMORY[0x1E1283490](v946, v954);
          v854 = v1083;
          v1084._countAndFlagsBits = 0;
          LOBYTE(v1084._object) = 5;
          sub_1DB171870();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v855 = v854;
          *(v855 + 16) = 0;
          *(v855 + 24) = 5;
LABEL_456:
          sub_1DB1759B0(&v1119);
          sub_1DB17181C(&v1105);
          sub_1DB17181C(v1115);
          (v907[1])(v906, v908);
          (*(v920 + 8))(v919, v921);
          __swift_destroy_boxed_opaque_existential_1(&v1072);
          v756 = v957;

          goto LABEL_457;
        }

        v790 = v1086;
        *&v964 = *(&v1085 + 1);
        v947 = v1085;
        v791 = v1084._object;
        *(&v964 + 1) = v785;
        v792 = v1084._countAndFlagsBits;
        v793 = v1083;
        sub_1DB1718E4(v787, v786, v788);

        v774 = v970;
        sub_1DB171928(v793, v789, v792, v791, v947, v964, v790);
        MEMORY[0x1EEE9AC00](v794);
        v795 = v967;
        *(&v886 - 6) = v969;
        *(&v886 - 5) = v795;
        v796 = v968;
        *(&v886 - 4) = *(&v964 + 1);
        *(&v886 - 3) = v796;
        *(&v886 - 2) = v1157;
        v797 = v1184;
        v761 = sub_1DB1E501C(sub_1DB1F8BBC, (&v886 - 8), v790);
        v78 = v797;

LABEL_387:
        v519 = v774 + 1;
        __swift_destroy_boxed_opaque_existential_1(&v1072);
        sub_1DB1414E8(v761);
        v437 = v990;
        v755 = v957;
        if (v519 == v962)
        {

          v756 = v1064[0];
          goto LABEL_411;
        }
      }
    }

    sub_1DB1754EC(&v1105, &v1083);
LABEL_411:
    v805 = *&v1109[0];

    LODWORD(v927) = v927 & 1;
    v806 = v971;

    sub_1DB1F8988(&v1146, &v1083);
    v807 = sub_1DB1F7558(v805, &v1146, v806);
    if (!v78)
    {
      v808 = v807;

      v809 = v1110;
      sub_1DB1F89E4(&v1146);

      sub_1DB1F8988(&v1146, &v1083);
      v810 = sub_1DB1F71D8(v809, &v1146, v806);

      sub_1DB1F89E4(&v1146);

      LOBYTE(v1012) = BYTE8(v1110);
      *(&v1012 + 1) = v1111;
      v1080 = v1154;
      v1081 = v1155;
      v1082 = v1156;
      v1076 = v1150;
      v1077 = v1151;
      v1079 = v1153;
      v1078 = v1152;
      v1072 = v1146;
      v1073 = v1147;
      v1075 = v1149;
      v1074 = v1148;

      sub_1DB1E78A8(&v1072);
      v811 = 0;
      sub_1DB17181C(&v1105);

      LOBYTE(v809) = v981;
      v812 = *(&v981 + 1);

      v1084 = v1006;
      v1085 = v1007;
      v1086 = v1008;
      v1090 = *&v1033[16];
      v1091 = *&v1033[32];
      v1092 = *&v1033[48];
      v813 = *v1033;
      v1088 = v1032;
      v814 = v928;
      *v928 = v1016[0];
      *(v814 + 3) = *(v1016 + 3);
      v1093 = *&v1033[64];
      v1089 = v813;
      *&v1096[3] = *(&v991 + 3);
      *v1096 = v991;
      LOBYTE(v1083) = v927;
      *(&v1083 + 1) = v756;
      v1087 = v808;
      v1094 = v810;
      v1095 = v809;
      v1097 = v812;
      v437 = v906;
      v815 = v908;
      (*(v901 + 3))(&v1083, v908);
      (v907[4])(v900, v437, v815);
      LOBYTE(v1035) = v902;
      sub_1DB1355D0(&v994, &v1035 + 8);
      sub_1DB1756AC(&v1017);
      v519 = v1067[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v437 = v1067;
        sub_1DB138640(0, *(v519 + 16) + 1, 1);
        v519 = v1067[0];
      }

      v13 = v913;
      v747 = v904;
      v817 = *(v519 + 16);
      v816 = *(v519 + 24);
      if (v817 >= v816 >> 1)
      {
        v437 = v1067;
        sub_1DB138640((v816 > 1), v817 + 1, 1);
        v747 = v904;
        v519 = v1067[0];
      }

      *(v519 + 16) = v817 + 1;
      v818 = (v519 + 48 * v817);
      v819 = v1035;
      v820 = v1037;
      v818[3] = v1036;
      v818[4] = v820;
      v818[2] = v819;
      if (v747 != v891)
      {
        v749 = v747 + 1;
        v748 = boxed_opaque_existential_0;
        if (v747 < *(v890 + 16))
        {
          continue;
        }

LABEL_508:
        __break(1u);
        goto LABEL_509;
      }

LABEL_420:
      LOBYTE(v1072) = BYTE8(v1117);
      *(&v1072 + 1) = v1118;
      v1102[4] = v1154;
      v1102[5] = v1155;
      v1103 = v1156;
      v1102[0] = v1150;
      v1102[1] = v1151;
      v1102[3] = v1153;
      v1102[2] = v1152;
      v1098 = v1146;
      v1099 = v1147;
      v1101 = v1149;
      v1100 = v1148;

      sub_1DB1E78A8(&v1098);
      v78 = v811;
      if (v811)
      {
LABEL_500:
        sub_1DB1759B0(&v1119);

        sub_1DB17181C(v1115);

        (*(v920 + 8))(v919, v921);
        v836 = v896;
        goto LABEL_458;
      }

      sub_1DB17181C(v1115);

      v821 = v1083;
      v822 = *(&v1083 + 1);

      v1106 = v1045;
      v1107 = v1046;
      v1108 = v1047;
      *(&v1109[2] + 8) = v1054;
      *(&v1109[3] + 8) = v1055;
      *(&v1109[4] + 8) = v1056;
      v823 = v1053;
      *(v1109 + 8) = v1052;
      v824 = v911;
      *v911 = v1028;
      *(v824 + 3) = *(&v1028 + 3);
      *(&v1109[5] + 1) = v1057;
      *(&v1109[1] + 8) = v823;
      HIDWORD(v1110) = *(&v1026 + 3);
      *(&v1110 + 9) = v1026;
      LOBYTE(v1105) = v930;
      *(&v1105 + 1) = v895;
      *&v1109[0] = v896;
      *&v1110 = v519;
      BYTE8(v1110) = v821;
      v1111 = v822;
      v825 = v919;
      v826 = v921;
      (*(v893 + 3))(&v1105, v921);
      (*(v920 + 32))(v892, v825, v826);
      v1140[8] = v1127;
      v1140[9] = v1128;
      v1140[10] = v1129;
      v1140[4] = v1123;
      v1140[5] = v1124;
      v1140[6] = v1125;
      v1140[7] = v1126;
      v1140[0] = v1119;
      v1140[1] = v1120;
      v1140[2] = v1121;
      v1140[3] = v1122;
      v1141 = v1130;
      v1142 = v918;
      v1143 = v894;
      sub_1DB1355D0(&v998, &v1144);
      sub_1DB17575C(v1133);
      v827 = v1145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DB138620(0, *(v827 + 16) + 1, 1);
        v827 = v1145;
      }

      v828 = *(v827 + 16);
      sub_1DB13896C(v828);
      sub_1DB139038(v828, v1140);
      v79 = v912;
      if (v912 != v910)
      {
        v81 = v912 + 1;
        v80 = v909;
        if (*(v932 + 16) <= v912)
        {
          goto LABEL_474;
        }

        goto LABEL_4;
      }

      v77 = v1145;
      v830 = v934;
      v74 = v903;
LABEL_429:
      *v830 = v74;
      *(v830 + 8) = v77;
      return;
    }

    break;
  }

  sub_1DB1F89E4(&v1146);
  sub_1DB1759B0(&v1119);

  sub_1DB17181C(&v1105);
  sub_1DB17181C(v1115);
  (v907[1])(v906, v908);
  (*(v920 + 8))(v919, v921);
LABEL_457:
  LOBYTE(v1083) = v927;
  *(&v1083 + 1) = v1016[0];
  DWORD1(v1083) = *(v1016 + 3);
  *(&v1083 + 1) = v756;
  v1084 = v1006;
  v1085 = v1007;
  v1086 = v1008;
  v1089 = *v1033;
  v1088 = v1032;
  v1087 = v897;
  v1093 = *&v1033[64];
  v1092 = *&v1033[48];
  v1091 = *&v1033[32];
  v1090 = *&v1033[16];
  v1094 = v898;
  v1095 = v899;
  *&v1096[3] = *(&v991 + 3);
  *v1096 = v991;
  v1097 = v905;
  sub_1DB17181C(&v1083);
  __swift_deallocate_boxed_opaque_existential_1(&v994);
  sub_1DB1756AC(&v1017);

  v519 = v914;
  v836 = v896;
LABEL_458:
  v835 = v895;
LABEL_459:
  LOBYTE(v1105) = v930;
  *(&v1105 + 1) = v1028;
  DWORD1(v1105) = *(&v1028 + 3);
  *(&v1105 + 1) = v835;
  v1106 = v1045;
  v1107 = v1046;
  v1108 = v1047;
  *(&v1109[1] + 8) = v1053;
  *(v1109 + 8) = v1052;
  *&v1109[0] = v836;
  *(&v1109[5] + 1) = v1057;
  *(&v1109[4] + 8) = v1056;
  *(&v1109[3] + 8) = v1055;
  *(&v1109[2] + 8) = v1054;
  *&v1110 = v519;
  BYTE8(v1110) = v915;
  HIDWORD(v1110) = *(&v1026 + 3);
  *(&v1110 + 9) = v1026;
  v1111 = v922;
  sub_1DB17181C(&v1105);
  __swift_deallocate_boxed_opaque_existential_1(&v998);
LABEL_470:
  sub_1DB17575C(v1133);
}