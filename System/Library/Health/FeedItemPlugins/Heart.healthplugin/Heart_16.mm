uint64_t sub_29D854308()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D854380(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D8543E4(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

void sub_29D854464(char *a3@<X8>)
{
  v4 = sub_29D93ABF8();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

void sub_29D8544C0(uint64_t *a1@<X8>)
{
  v2 = 1801807223;
  if (*v1)
  {
    v2 = 0x68746E6F6DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_29D854500()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D8545D0(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D85468C(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D854758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D854A64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D854788(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006D6F6F52;
  v3 = 0x6570795461746164;
  v4 = 0x800000029D956D90;
  v5 = 0xD000000000000018;
  if (*v1 != 2)
  {
    v5 = 0x73676E6974746573;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972616D6D7573;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_29D854818()
{
  result = qword_2A17B6740;
  if (!qword_2A17B6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6740);
  }

  return result;
}

unint64_t sub_29D854870()
{
  result = qword_2A17B6748;
  if (!qword_2A17B6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6748);
  }

  return result;
}

unint64_t sub_29D8548C8()
{
  result = qword_2A17B6750;
  if (!qword_2A17B6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6750);
  }

  return result;
}

unint64_t sub_29D854920()
{
  result = qword_2A17B6758;
  if (!qword_2A17B6758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6758);
  }

  return result;
}

unint64_t sub_29D854978()
{
  result = qword_2A17B6760;
  if (!qword_2A17B6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6760);
  }

  return result;
}

unint64_t sub_29D8549CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D854A18(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D854A64(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D854ABC()
{
  result = sub_29D939D28();
  qword_2A1A2BCD0 = result;
  return result;
}

uint64_t sub_29D854AF4()
{
  result = sub_29D939D28();
  qword_2A1A2BCC8 = result;
  return result;
}

void sub_29D854B2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a3 + 32;
    v7 = 0.0;
    v8 = *(a3 + 16);
    do
    {
      sub_29D8551A0(v6, v11);
      sub_29D693E2C(v11, v12);
      sub_29D935118();
      v7 = v7 + CGRectGetHeight(v14) + 14.0;
      sub_29D8551D8(v11);
      v6 += 88;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0.0;
  }

  sub_29D934E58();
  if (CGRectGetHeight(v15) - v7 >= 0.0)
  {
    if (v5)
    {
      v10 = a3 + 32;
      do
      {
        sub_29D8551A0(v10, v11);
        sub_29D693E2C(v11, v12);
        sub_29D935118();
        CGRectGetHeight(v16);
        sub_29D934E48();
        sub_29D934DC8();
        sub_29D934DC8();
        CGRectGetWidth(v17);
        sub_29D934DD8();
        sub_29D693E2C(v11, v12);
        sub_29D935128();
        sub_29D693E2C(v13, v13[3]);
        sub_29D935128();
        sub_29D934E38();
        sub_29D934E38();

        sub_29D8551D8(v11);
        v10 += 88;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v9, qword_2A1A2BF58);
    v11[0] = 0;
    sub_29D9371F8();
  }
}

uint64_t sub_29D854DB0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  sub_29D85531C();
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D968AF0);
  return 0;
}

double sub_29D854E58(uint64_t a1, uint64_t a2)
{
  sub_29D934E58();
  v4 = v3;
  sub_29D934E58();
  CGRectGetWidth(v10);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    v7 = 0.0;
    do
    {
      sub_29D8551A0(v6, v9);
      sub_29D693E2C(v9, v9[3]);
      sub_29D935118();
      v7 = v7 + CGRectGetHeight(v11) + 14.0;
      sub_29D8551D8(v9);
      v6 += 88;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_29D854F80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D779790();
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

double sub_29D85502C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x29EDCA190];
    sub_29D7EE7F8(0, v2, 0);
    v3 = v17;
    v4 = a1 + 32;
    do
    {
      sub_29D8551A0(v4, v16);
      v5 = v16[10];
      sub_29D8551D8(v16);
      v17 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_29D7EE7F8((v6 > 1), v7 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v8;
      *(v3 + 8 * v7 + 32) = v5;
      v4 += 88;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x29EDCA190];
    v8 = *(MEMORY[0x29EDCA190] + 16);
    if (!v8)
    {
      v10 = 0.0;
      goto LABEL_15;
    }
  }

  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0.0;
LABEL_13:
    v13 = v8 - v9;
    v14 = 8 * v9 + 32;
    do
    {
      v10 = v10 + *(v3 + v14);
      v14 += 8;
      --v13;
    }

    while (v13);
    goto LABEL_15;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v3 + 48);
  v10 = 0.0;
  v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v10 = v10 + *(v11 - 2) + *(v11 - 1) + *v11 + v11[1];
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v9)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v10;
}

uint64_t sub_29D855208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D855250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D8552C8()
{
  result = qword_2A17B6768;
  if (!qword_2A17B6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6768);
  }

  return result;
}

unint64_t sub_29D85531C()
{
  result = qword_2A17B6770;
  if (!qword_2A17B6770)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B6770);
  }

  return result;
}

uint64_t sub_29D855364@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_29D934358();
  v21 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D859EBC(0, &qword_2A17B6778, sub_29D859D64, &type metadata for HypertensionNotificationsFeedItemUserDataObject.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D859D64();
  v15 = v23;
  sub_29D93AEC8();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_29D859E0C(&qword_2A17B6780, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A68]);
    sub_29D93AC88();
    (*(v16 + 8))(v10, v7);
    (*(v17 + 32))(v14, v22, v3);
    sub_29D859E54(v14, v19, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
  }

  return sub_29D69417C(a1);
}

void sub_29D855664(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D8556F4(uint64_t a1)
{
  v2 = sub_29D859D64();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D855730(uint64_t a1)
{
  v2 = sub_29D859D64();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D855784(void *a1)
{
  sub_29D859EBC(0, &qword_2A1A21F80, sub_29D859D64, &type metadata for HypertensionNotificationsFeedItemUserDataObject.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D859D64();
  sub_29D93AED8();
  sub_29D934358();
  sub_29D859E0C(&qword_2A1A24768, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A60]);
  sub_29D93AD18();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D855930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v62 = a2;
  v58 = sub_29D9342F8();
  v61 = *(v58 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v58, v2);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v57 = &v56 - v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v56 - v9;
  v11 = sub_29D934358();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC(0);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v63 = &v56 - v21;
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v22 = sub_29D937898();
  sub_29D69C6C0(v22, qword_2A1A2C008);
  v23 = sub_29D937878();
  v24 = sub_29D93A2A8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v65 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94EB80, &v65);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29D6C2364(0x6E6F632874696E69, 0xEE00293A74786574, &v65);
    _os_log_impl(&dword_29D677000, v23, v24, "[%{public}s.%{public}s]: Creating hypertension notifications promo tile user data object", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v26, -1, -1);
    MEMORY[0x29ED6BE30](v25, -1, -1);
  }

  v27 = type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  v28 = *(*(v27 - 8) + 56);
  v29 = v63;
  v28(v63, 1, 1, v27);
  sub_29D9341D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v61;
    v31 = v58;
    (*(v61 + 32))(v10, v18, v58);
    v32 = *(v30 + 16);
    v33 = v57;
    v32(v57, v10, v31);
    v34 = sub_29D937878();
    v35 = sub_29D93A288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v65 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94EB80, &v65);
      *(v36 + 12) = 2082;
      v32(v56, v33, v31);
      v38 = sub_29D939DA8();
      v40 = v39;
      v60 = v10;
      v41 = *(v61 + 8);
      v41(v33, v31);
      v42 = sub_29D6C2364(v38, v40, &v65);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s] Failed to get country code: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);

      v43 = sub_29D9341E8();
      (*(*(v43 - 8) + 8))(v64, v43);
      v41(v60, v31);
    }

    else
    {

      v52 = sub_29D9341E8();
      (*(*(v52 - 8) + 8))(v64, v52);
      v53 = *(v30 + 8);
      v53(v33, v31);
      v53(v10, v31);
    }
  }

  else
  {
    sub_29D8596C0(v29);
    v44 = v59;
    v45 = v60;
    (*(v59 + 32))(v14, v18, v60);
    (*(v44 + 16))(v29, v14, v45);
    v28(v29, 0, 1, v27);
    v46 = sub_29D937878();
    v47 = sub_29D93A2A8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v44;
      v50 = swift_slowAlloc();
      v65 = v50;
      *v48 = 136446466;
      *(v48 + 4) = sub_29D6C2364(0xD000000000000029, 0x800000029D94EB80, &v65);
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_29D6C2364(0x6E6F632874696E69, 0xEE00293A74786574, &v65);
      _os_log_impl(&dword_29D677000, v46, v47, "[%{public}s.%{public}s]: Creating hypertension notifications promo tile user data object - Country Record Success", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v50, -1, -1);
      MEMORY[0x29ED6BE30](v48, -1, -1);

      v51 = sub_29D9341E8();
      (*(*(v51 - 8) + 8))(v64, v51);
      (*(v49 + 8))(v14, v45);
    }

    else
    {

      v54 = sub_29D9341E8();
      (*(*(v54 - 8) + 8))(v64, v54);
      (*(v44 + 8))(v14, v45);
    }
  }

  return sub_29D8597AC(v63, v62);
}

uint64_t sub_29D8561AC()
{
  v1 = v0;
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v13[-v4];
  v6 = type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D85962C(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29D8596C0(v5);
    return 0;
  }

  else
  {
    sub_29D859E54(v5, v10, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);
    sub_29D933108();
    swift_allocObject();
    sub_29D9330F8();
    sub_29D859E0C(&qword_2A1A22E40, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, &unk_29D94EC78);
    v12 = sub_29D9330E8();
    sub_29D85974C(v10, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject);

    return v12;
  }
}

uint64_t sub_29D856400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v21 = &v20 - v5;
  sub_29D859EBC(0, &qword_2A17B6788, sub_29D859DB8, &type metadata for HypertensionNotificationsFeedItemUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for HypertensionNotificationsFeedItemUserData(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D859DB8();
  v16 = v22;
  sub_29D93AEC8();
  if (!v16)
  {
    v17 = v20;
    type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
    sub_29D859E0C(&qword_2A17B6798, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, &unk_29D94EC50);
    v18 = v21;
    sub_29D93AC48();
    (*(v8 + 8))(v11, v7);
    sub_29D8597AC(v18, v15);
    sub_29D859E54(v15, v17, type metadata accessor for HypertensionNotificationsFeedItemUserData);
  }

  return sub_29D69417C(a1);
}

void sub_29D8566EC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D856774(uint64_t a1)
{
  v2 = sub_29D859DB8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8567B0(uint64_t a1)
{
  v2 = sub_29D859DB8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D856804(void *a1)
{
  sub_29D859EBC(0, &qword_2A17B67A0, sub_29D859DB8, &type metadata for HypertensionNotificationsFeedItemUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D859DB8();
  sub_29D93AED8();
  type metadata accessor for HypertensionNotificationsFeedItemUserDataObject(0);
  sub_29D859E0C(&qword_2A1A22E40, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, &unk_29D94EC78);
  sub_29D93ACD8();
  return (*(v4 + 8))(v7, v3);
}

void sub_29D8569B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v53 = a3;
  v59 = a4;
  sub_29D857E1C(0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937898();
  v54 = *(v9 - 8);
  v55 = v9;
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v52 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v52 - v14;
  v16 = sub_29D9341E8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HypertensionNotificationsFeedItemUserData(0);
  MEMORY[0x2A1C7C4A8](v21 - 8, v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D857EF8(0, &qword_2A1A24870, sub_29D6C320C, MEMORY[0x29EDC9E90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D943EA0;
  *(v25 + 32) = sub_29D857F5C(a1, a2);
  *(v25 + 40) = sub_29D858468(a1, a2);
  *(v25 + 48) = sub_29D858924(a1, a2);
  v61 = v25;
  v26 = [objc_opt_self() sharedBehavior];
  if (!v26)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v26;
  v28 = [v26 features];

  if (!v28)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v29 = [v28 hermit];

  if (v29)
  {
    (*(v17 + 16))(v20, a1, v16);
    sub_29D855930(v20, v24);
    v30 = sub_29D8561AC();
    v32 = v31;
    sub_29D85974C(v24, type metadata accessor for HypertensionNotificationsFeedItemUserData);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    *(inited + 32) = sub_29D858E08(a1, v30, v32, a2);
    sub_29D88C100(inited);
    sub_29D71847C(v30, v32);
  }

  sub_29D934198();
  if (sub_29D934418())
  {
    sub_29D934D28();
    v34 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60 = v37;
      *v36 = 136446210;
      v62 = v53;
      swift_getMetatypeMetadata();
      v38 = sub_29D939DA8();
      v40 = sub_29D6C2364(v38, v39, &v60);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s]: In background mode, so will finish after 1 update", v36, 0xCu);
      sub_29D69417C(v37);
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    (*(v54 + 8))(v15, v55);
  }

  else
  {
    v41 = v52;
    sub_29D934D28();
    v42 = sub_29D937878();
    v43 = sub_29D93A2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60 = v45;
      *v44 = 136446210;
      v62 = v53;
      swift_getMetatypeMetadata();
      v46 = sub_29D939DA8();
      v48 = sub_29D6C2364(v46, v47, &v60);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_29D677000, v42, v43, "[%{public}s]: In foreground mode, so will continue to listen for updates", v44, 0xCu);
      sub_29D69417C(v45);
      MEMORY[0x29ED6BE30](v45, -1, -1);
      MEMORY[0x29ED6BE30](v44, -1, -1);
    }

    (*(v54 + 8))(v41, v55);
  }

  v62 = v61;
  sub_29D6C320C(0);
  sub_29D857EF8(0, &qword_2A1A249B0, sub_29D6C320C, MEMORY[0x29EDC9A40]);
  sub_29D859E0C(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
  sub_29D7C9D40();
  v49 = v56;
  sub_29D9381D8();
  sub_29D859E0C(&qword_2A1A24B00, sub_29D857E1C, MEMORY[0x29EDB89D8]);
  v50 = v58;
  v51 = sub_29D938418();
  (*(v57 + 8))(v49, v50);
  *v59 = v51;
}

uint64_t sub_29D857088@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29D9341E8();
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a2);
  v11 = type metadata accessor for AtrialFibrillationPromotionGenerator(0);
  swift_allocObject();
  v12 = sub_29D76D2B4(a1, v9);
  a3[3] = v11;
  result = sub_29D859E0C(qword_2A1A25118, type metadata accessor for AtrialFibrillationPromotionGenerator, &unk_29D946B80);
  a3[4] = result;
  *a3 = v12;
  return result;
}

uint64_t *sub_29D8571C0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = sub_29D9341E8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_29D934188();
  sub_29D693E2C(v18, v18[3]);
  sub_29D934118();
  type metadata accessor for AFibBurdenSettingsManager();
  v12 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v13 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v13 = MEMORY[0x29EDCA1A0];
  }

  *(v12 + 24) = v13;
  sub_29D939D68();
  sub_29D934408();
  swift_allocObject();
  *(v12 + 16) = sub_29D9343C8();
  sub_29D69417C(v18);
  (*(v7 + 16))(v10, a2, v6);
  v14 = type metadata accessor for AFibBurdenPromotionGenerator(0);
  swift_allocObject();
  v15 = sub_29D6FD060(v11, v12, v10);

  a3[3] = v14;
  result = sub_29D859E0C(qword_2A1A23F80, type metadata accessor for AFibBurdenPromotionGenerator, &unk_29D951F18);
  a3[4] = result;
  *a3 = v15;
  return result;
}

uint64_t sub_29D8573FC@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29D9341E8();
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(a1) = *a1;
  (*(v10 + 16))(v9, a2);
  v11 = type metadata accessor for AFibFeaturesPromotionGenerator(0);
  swift_allocObject();
  v12 = sub_29D81A47C(a1, v9);
  a3[3] = v11;
  result = sub_29D859E0C(qword_2A1A23E88, type metadata accessor for AFibFeaturesPromotionGenerator, &unk_29D94C128);
  a3[4] = result;
  *a3 = v12;
  return result;
}

char *sub_29D857538@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = sub_29D9341E8();
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  (*(v15 + 16))(v13, a2);
  v16 = type metadata accessor for HypertensionNotificationsPromotionGenerator(0);
  swift_allocObject();
  sub_29D7C3D48(a3, a4);
  v17 = sub_29D8007CC(v14, v13, a3, a4);
  sub_29D71847C(a3, a4);
  a5[3] = v16;
  result = sub_29D859E0C(&qword_2A1A23208, type metadata accessor for HypertensionNotificationsPromotionGenerator, &unk_29D951F18);
  a5[4] = result;
  *a5 = v17;
  return result;
}

uint64_t sub_29D8576A4()
{
  v1 = OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D85778C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D857808(uint64_t a1, void *a2)
{
  v40 = a1;
  v49 = *v2;
  v50 = a2;
  v46 = sub_29D9341E8();
  v44 = *(v46 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v46, v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178(0);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x2A1C7C4A8](v5, v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29D934148();
  v9 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29D934178();
  v13 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29D9341B8();
  sub_29D857EF8(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v17 = sub_29D933F58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D93F680;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x29EDC36F0], v17);
  v23(v22 + v19, *MEMORY[0x29EDC3790], v17);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC3898], v42);
  sub_29D934158();
  v24 = v47;
  (*(v13 + 32))(v47 + OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_domain, v16, v41);
  v26 = v43;
  v25 = v44;
  v27 = v40;
  v28 = v46;
  (*(v44 + 16))(v43, v40, v46);
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v30 = (v45 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v25 + 32))(v31 + v29, v26, v28);
  v32 = v49;
  v33 = v50;
  *(v31 + v30) = v50;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  sub_29D6C320C(0);
  sub_29D859E0C(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
  v34 = v33;
  v35 = v48;
  sub_29D938378();
  sub_29D859E0C(&qword_2A1A24A20, sub_29D6C3178, MEMORY[0x29EDB8AE8]);
  v36 = v51;
  v37 = sub_29D938418();
  (*(v25 + 8))(v27, v28);
  (*(v52 + 8))(v35, v36);
  result = v24;
  *(v24 + OBJC_IVAR____TtC5Heart31HeartPromotionGeneratorPipeline_publisher) = v37;
  return result;
}

void sub_29D857D74(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D8569B0(v1 + v4, v6, v7, a1);
}

void sub_29D857E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D6C320C(255);
    v7 = v6;
    v8 = sub_29D859E0C(&qword_2A1A24AE0, sub_29D6C320C, MEMORY[0x29EDB8A00]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D857EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D857F5C(uint64_t a1, uint64_t a2)
{
  v37 = sub_29D9341E8();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v34 = v5;
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224B0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, &qword_2A1A222D8);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v32 - v9;
  sub_29D859954(0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8AF0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v32 - v15;
  sub_29D859840(0, &qword_2A1A24BA8, MEMORY[0x29EDB8898]);
  v38 = v17;
  v36 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v32 - v19;
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A8, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v21 = sub_29D934198();
  sub_29D859384(&qword_2A1A222D8, &qword_2A1A222D0, &type metadata for HeartPromotionResult);
  if (v21)
  {
    v22 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859A68();
    v23 = v32;
    v22 = sub_29D938418();
    (*(v33 + 8))(v10, v23);
  }

  (*(v13 + 8))(v16, v12);
  v39 = v22;
  v24 = v35;
  v25 = v37;
  (*(v3 + 16))(v35, a1, v37);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v26, v24, v25);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_29D859B60;
  *(v28 + 24) = v27;
  sub_29D8598F4(0, &qword_2A1A24AC8, &type metadata for HeartPromotionResult);
  sub_29D6CE0BC();
  sub_29D859494(&qword_2A1A24AD0, &qword_2A1A24AC8, &type metadata for HeartPromotionResult);
  sub_29D938428();

  sub_29D859A24(qword_2A1A24BB0, &qword_2A1A24BA8, MEMORY[0x29EDB8898], MEMORY[0x29EDB88A0]);
  v29 = v38;
  v30 = sub_29D938418();
  (*(v36 + 8))(v20, v29);
  return v30;
}

uint64_t sub_29D858468(uint64_t a1, uint64_t a2)
{
  v37 = sub_29D9341E8();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v33 = v5;
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224A0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, &qword_2A1A222C8);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v31 - v9;
  sub_29D859954(0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8AF0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v31 - v15;
  sub_29D8593E8(0);
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v21 = sub_29D934198();
  sub_29D859384(&qword_2A1A222C8, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult);
  if (v21)
  {
    v22 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859594();
    v23 = v31;
    v22 = sub_29D938418();
    (*(v32 + 8))(v10, v23);
  }

  (*(v13 + 8))(v16, v12);
  v38 = v22;
  v24 = v34;
  v25 = v37;
  (*(v3 + 16))(v34, a1, v37);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v26, v24, v25);
  sub_29D8598F4(0, &qword_2A1A223F8, &type metadata for HeartFeaturePromotionResult);
  sub_29D6CE0BC();
  sub_29D859494(&unk_2A1A22400, &qword_2A1A223F8, &type metadata for HeartFeaturePromotionResult);
  sub_29D938428();

  sub_29D859E0C(&qword_2A1A22730, sub_29D8593E8, MEMORY[0x29EDB88A0]);
  v28 = v36;
  v29 = sub_29D938418();
  (*(v35 + 8))(v20, v28);
  return v29;
}

uint64_t sub_29D858924(uint64_t a1, uint64_t a2)
{
  v37 = sub_29D9341E8();
  v3 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37, v4);
  v33 = v5;
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224B0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, &qword_2A1A222D8);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v31 - v9;
  sub_29D859954(0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8AF0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v31 - v15;
  sub_29D859840(0, &qword_2A1A225D0, MEMORY[0x29EDB8900]);
  v36 = v17;
  v34 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v31 - v19;
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A8, &type metadata for HeartPromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v21 = sub_29D934198();
  sub_29D859384(&qword_2A1A222D8, &qword_2A1A222D0, &type metadata for HeartPromotionResult);
  if (v21)
  {
    v22 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859A68();
    v23 = v31;
    v22 = sub_29D938418();
    (*(v32 + 8))(v10, v23);
  }

  (*(v13 + 8))(v16, v12);
  v38 = v22;
  v24 = v35;
  v25 = v37;
  (*(v3 + 16))(v35, a1, v37);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v26, v24, v25);
  sub_29D8598F4(0, &qword_2A1A24AC8, &type metadata for HeartPromotionResult);
  sub_29D6CE0BC();
  sub_29D859494(&qword_2A1A24AD0, &qword_2A1A24AC8, &type metadata for HeartPromotionResult);
  sub_29D938468();

  sub_29D859A24(&qword_2A1A225D8, &qword_2A1A225D0, MEMORY[0x29EDB8900], MEMORY[0x29EDB8908]);
  v28 = v36;
  v29 = sub_29D938418();
  (*(v34 + 8))(v20, v28);
  return v29;
}

uint64_t sub_29D858E08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v44 = a2;
  v45 = a3;
  v43 = sub_29D9341E8();
  v5 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v6);
  v39 = v7;
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8592E4(0, &qword_2A1A224A0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, &qword_2A1A222C8);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v37 - v11;
  sub_29D859954(0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8AF0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v37 - v17;
  sub_29D8593E8(0);
  v41 = *(v19 - 8);
  v42 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D859954(0, &qword_2A1A222A0, &type metadata for HeartFeaturePromotionResult, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  v23 = sub_29D934198();
  sub_29D859384(&qword_2A1A222C8, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult);
  if (v23)
  {
    v24 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D859594();
    v25 = v37;
    v24 = sub_29D938418();
    (*(v38 + 8))(v12, v25);
  }

  (*(v15 + 8))(v18, v14);
  v46 = v24;
  v26 = v40;
  v27 = v43;
  (*(v5 + 16))(v40, a1, v43);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v5 + 32))(v30 + v28, v26, v27);
  v31 = (v30 + v29);
  v32 = v44;
  v33 = v45;
  *v31 = v44;
  v31[1] = v33;
  sub_29D7C3D48(v32, v33);
  sub_29D8598F4(0, &qword_2A1A223F8, &type metadata for HeartFeaturePromotionResult);
  sub_29D6CE0BC();
  sub_29D859494(&unk_2A1A22400, &qword_2A1A223F8, &type metadata for HeartFeaturePromotionResult);
  sub_29D938428();

  sub_29D859E0C(&qword_2A1A22730, sub_29D8593E8, MEMORY[0x29EDB88A0]);
  v34 = v42;
  v35 = sub_29D938418();
  (*(v41 + 8))(v22, v34);
  return v35;
}

void sub_29D8592E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D859954(255, a3, a4, MEMORY[0x29EDB8AF0]);
    sub_29D859384(a5, a3, a4);
    v9 = sub_29D938128();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D859384(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D859954(255, a2, a3, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8593E8(uint64_t a1)
{
  if (!qword_2A1A22728)
  {
    sub_29D8598F4(255, &qword_2A1A223F8, &type metadata for HeartFeaturePromotionResult);
    sub_29D6CE0BC();
    sub_29D859494(&unk_2A1A22400, &qword_2A1A223F8, &type metadata for HeartFeaturePromotionResult);
    v1 = sub_29D938078();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22728);
    }
  }
}

uint64_t sub_29D859494(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D8598F4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_29D8594E4@<X0>(unsigned int *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_29D857538(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_29D859594()
{
  result = qword_2A1A224A8;
  if (!qword_2A1A224A8)
  {
    sub_29D8592E4(255, &qword_2A1A224A0, &qword_2A1A222C0, &type metadata for HeartFeaturePromotionResult, &qword_2A1A222C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A224A8);
  }

  return result;
}

uint64_t sub_29D85962C(uint64_t a1, uint64_t a2)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D8596C0(uint64_t a1)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D85974C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D8597AC(uint64_t a1, uint64_t a2)
{
  sub_29D857EF8(0, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D859840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D8598F4(255, &qword_2A1A24AC8, &type metadata for HeartPromotionResult);
    v7 = v6;
    v8 = sub_29D6CE0BC();
    v9 = sub_29D859494(&qword_2A1A24AD0, &qword_2A1A24AC8, &type metadata for HeartPromotionResult);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29D8598F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29D938238();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D859954(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D8599A4@<X0>(_WORD *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D8573FC(a1, v6, a2);
}

uint64_t sub_29D859A24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D859840(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D859A68()
{
  result = qword_2A1A224B8;
  if (!qword_2A1A224B8)
  {
    sub_29D8592E4(255, &qword_2A1A224B0, &qword_2A1A222D0, &type metadata for HeartPromotionResult, &qword_2A1A222D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A224B8);
  }

  return result;
}

uint64_t *sub_29D859AE0@<X0>(unsigned int *a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D8571C0(a1, v6, a2);
}

uint64_t sub_29D859B60@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D857088(a1, v6, a2);
}

uint64_t sub_29D859C34(uint64_t a1)
{
  result = sub_29D934358();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D859CC8(uint64_t a1)
{
  sub_29D857EF8(319, &qword_2A1A22E00, type metadata accessor for HypertensionNotificationsFeedItemUserDataObject, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29D859D64()
{
  result = qword_2A1A22E58[0];
  if (!qword_2A1A22E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A22E58);
  }

  return result;
}

unint64_t sub_29D859DB8()
{
  result = qword_2A17B6790;
  if (!qword_2A17B6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6790);
  }

  return result;
}

uint64_t sub_29D859E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D859E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D859EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D859F48()
{
  result = qword_2A17B67A8;
  if (!qword_2A17B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67A8);
  }

  return result;
}

unint64_t sub_29D859FA0()
{
  result = qword_2A17B67B0;
  if (!qword_2A17B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67B0);
  }

  return result;
}

unint64_t sub_29D859FF8()
{
  result = qword_2A17B67B8;
  if (!qword_2A17B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67B8);
  }

  return result;
}

unint64_t sub_29D85A050()
{
  result = qword_2A17B67C0;
  if (!qword_2A17B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B67C0);
  }

  return result;
}

unint64_t sub_29D85A0A8()
{
  result = qword_2A1A22E48;
  if (!qword_2A1A22E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22E48);
  }

  return result;
}

unint64_t sub_29D85A100()
{
  result = qword_2A1A22E50;
  if (!qword_2A1A22E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22E50);
  }

  return result;
}

double sub_29D85A168()
{
  sub_29D9386D8();
  result = *&v1;
  xmmword_2A17D0CC8 = v1;
  *&qword_2A17D0CD8 = v2;
  qword_2A17D0CE8 = v3;
  return result;
}

double sub_29D85A1C4()
{
  sub_29D9386D8();
  result = *&v1;
  xmmword_2A17D0CF0 = v1;
  *&qword_2A17D0D00 = v2;
  qword_2A17D0D10 = v3;
  return result;
}

uint64_t sub_29D85A234(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_29D939538();
  MEMORY[0x2A1C7C4A8](v4, v5);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDBCA80]);
  result = sub_29D9395D8();
  *a3 = result;
  return result;
}

uint64_t sub_29D85A368(uint64_t a1, double (*a2)(uint64_t), unsigned int *a3, uint64_t *a4)
{
  sub_29D6F17D4(0);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  v12 = *a3;
  v13 = sub_29D939168();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = sub_29D9391A8();
  result = sub_29D85A490(v11);
  *a4 = v15;
  return result;
}

uint64_t sub_29D85A490(uint64_t a1)
{
  sub_29D6F17D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D85A4FC(uint64_t a1)
{
  sub_29D934EF8();
  v1 = sub_29D934EE8();
  v2 = [v1 CGColor];

  v9 = sub_29D935C18();
  v10 = MEMORY[0x29EDC2290];
  sub_29D693F78(v8);
  sub_29D935C08();
  v3 = sub_29D935808();
  sub_29D69417C(v8);
  v9 = sub_29D935488();
  v10 = MEMORY[0x29EDC1FC0];
  sub_29D693F78(v8);
  sub_29D935498();
  v4 = sub_29D935808();
  sub_29D69417C(v8);
  sub_29D85A75C(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93F680;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = MEMORY[0x29ED65BE0]();

  return v6;
}

uint64_t sub_29D85A668()
{
  sub_29D85A75C(0, &qword_2A17B1018, sub_29D75F24C, MEMORY[0x29EDC9E90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D93DDB0;
  v2 = sub_29D9370F8();
  v3 = MEMORY[0x29EDC2C70];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  sub_29D693F78((v1 + 32));
  sub_29D9370E8();
  v4 = *(v0 + 8);

  return v4(v1);
}

void sub_29D85A75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for NonHighlightingPlatformBackgroundView(uint64_t a1)
{
  result = qword_2A17B67D0;
  if (!qword_2A17B67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D85A834(uint64_t a1)
{
  sub_29D85ABE0(319, &qword_2A17B67C8, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29D85A8D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D85ABE0(0, &qword_2A17B15F0, MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v16 - v11;
  sub_29D85AC40(v2, &v16 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29D9350C8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_29D93A298();
    v15 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29D85AAD0()
{
  v0 = sub_29D9350C8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D85A8D8(v4);
  sub_29D9350A8();
  (*(v1 + 8))(v4, v0);
  v6[1] = sub_29D939528();
  sub_29D939318();
}

void sub_29D85ABE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9350C8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D85AC40(uint64_t a1, uint64_t a2)
{
  sub_29D85ABE0(0, &qword_2A17B15F0, MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_29D85ACC0()
{
  v1 = v0;
  v2 = sub_29D93A788();
  v61 = *(v2 - 8);
  v62 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v56 - v8;
  v10 = sub_29D9336F8();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v59 = v56 - v16;
  v17 = type metadata accessor for ResultItem.BodyItem(0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = (v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D85CAE0(v1, v20, type metadata accessor for ResultItem.BodyItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v20;
  v22 = v20[1];
  v24 = v20[2];
  v25 = v20[3];
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = type metadata accessor for BulletedLabelView();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel] = 0;
      *&v27[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel] = 0;
      *&v27[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView] = 0;
      v28 = &v27[OBJC_IVAR____TtC5Heart17BulletedLabelView_text];
      *v28 = v23;
      *(v28 + 1) = v22;
      v29 = &v27[OBJC_IVAR____TtC5Heart17BulletedLabelView_textAccessibilityIdentifier];
      *v29 = v24;
      *(v29 + 1) = v25;
      v63.receiver = v27;
      v63.super_class = v26;
      sub_29D935E88();
      sub_29D935E88();
      v30 = objc_msgSendSuper2(&v63, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v31 = sub_29D718BA8();
      v32 = sub_29D7188B8();
      [v31 addArrangedSubview_];

      v33 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView;
      v34 = *&v30[OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView];
      v35 = sub_29D718A00();
      [v34 addArrangedSubview_];

      [v30 addSubview_];
      [*&v30[v33] hk:v30 alignConstraintsWithView:?];

      return v30;
    }

    v30 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v30 setAdjustsFontForContentSizeCategory_];
    v38 = [objc_opt_self() hk:*MEMORY[0x29EDC80E0] preferredFontForTextStyle:?];
    [v30 setFont_];

    [v30 setNumberOfLines_];
    v39 = sub_29D939D28();
    [v30 setText_];

    if (v25)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v58 = v20[2];
  if (EnumCaseMultiPayload == 2)
  {
    v30 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v30 setAdjustsFontForContentSizeCategory_];
    v36 = [objc_opt_self() hk:*MEMORY[0x29EDC80E0] preferredFontForTextStyle:2 symbolicTraits:?];
    [v30 setFont_];

    [v30 setNumberOfLines_];
    v37 = sub_29D939D28();
    [v30 setText_];

    if (v25)
    {
LABEL_8:
      v40 = v30;
      sub_29D935E88();
      v41 = sub_29D939D28();
      swift_bridgeObjectRelease_n();
LABEL_15:

      [v30 setAccessibilityIdentifier_];

      return v30;
    }

LABEL_14:
    v54 = v30;
    v41 = 0;
    goto LABEL_15;
  }

  sub_29D85CBA8(0);
  v43 = *(v42 + 48);
  v56[2] = v23;
  v56[3] = v22;
  v44 = v60;
  v57 = v25;
  v45 = *(v60 + 32);
  v46 = v59;
  v45(v59, v20 + v43, v10);
  v56[1] = sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  (*(v44 + 16))(v14, v46, v10);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = swift_allocObject();
  v45((v48 + v47), v14, v10);
  v49 = v57;
  v50 = sub_29D93A738();
  sub_29D93A768();
  sub_29D935E88();
  sub_29D93A778();
  sub_29D93A748();
  sub_29D69567C(0, &qword_2A17B6860, 0x29EDC7958);
  (*(v61 + 16))(v6, v9, v62);
  v51 = v50;
  v30 = sub_29D93A798();
  if ([v30 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v52 = 2;
  }

  else
  {
    v52 = 1;
  }

  [v30 setContentHorizontalAlignment_];
  if (v49)
  {
    sub_29D935E88();
    v53 = sub_29D939D28();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v53 = 0;
  }

  [v30 setAccessibilityIdentifier_];

  (*(v61 + 8))(v9, v62);
  (*(v60 + 8))(v59, v10);
  return v30;
}

void sub_29D85B428()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D85CC80();
  v2 = sub_29D939C58();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

void sub_29D85B518()
{
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v0 = *MEMORY[0x29EDC80E0];
  v1 = sub_29D93A658();

  qword_2A17B67E8 = v1;
}

void sub_29D85B5A4()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x29EDC8130];
  v2 = [v0 _preferredFontForTextStyle_variant_];

  if (v2)
  {
    qword_2A17B67F8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_29D85B63C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem;
  v4 = sub_29D939D28();
  [v2 setText_];

  if (qword_2A17B0CD0 != -1)
  {
    swift_once();
  }

  [v2 setFont_];
  if (qword_2A17B0CC8 != -1)
  {
    swift_once();
  }

  [v2 setTextColor_];
  [v2 setNumberOfLines_];
  if (*(v3 + 24))
  {
    v5 = sub_29D939D28();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_29D85B7DC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v3 = a1 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem;
  v4 = sub_29D939D28();
  [v2 setText_];

  if (qword_2A17B0CC0 != -1)
  {
    swift_once();
  }

  [v2 setFont_];
  if (qword_2A17B0CB8 != -1)
  {
    swift_once();
  }

  [v2 setTextColor_];
  [v2 setNumberOfLines_];
  if (*(v3 + 56))
  {
    v5 = sub_29D939D28();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_29D85B95C()
{
  v1 = OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
    v5 = [v4 heightAnchor];
    v6 = [v5 constraintEqualToConstant_];

    [v4 addConstraint_];
    v7 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 88);
    [v4 addSubview_];
    v8 = v0;
    sub_29D93A668();
    v3 = v4;
    [v7 hk:v3 alignConstraintsWithView:?];

    v9 = *(v8 + v1);
    *(v8 + v1) = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_29D85BA8C()
{
  v1 = OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setAlignment_];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setHidden_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D85BB70(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_29D85BBD4(char *a1)
{
  v2 = sub_29D93A788();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v20 - v9;
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_29D93A738();
  sub_29D93A768();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D93A778();
  sub_29D93A748();
  sub_29D69567C(0, &qword_2A17B6860, 0x29EDC7958);
  (*(v3 + 16))(v7, v10, v2);
  v12 = v11;
  v13 = sub_29D93A798();
  if ([a1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v13 setContentHorizontalAlignment_];
  v15 = &a1[OBJC_IVAR____TtC5Heart14ResultItemView_resultItem];
  v16 = *(*&a1[OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 64] + 16) == 0;
  v17 = v13;
  [v17 setHidden_];
  if (*(v15 + 10))
  {
    v18 = sub_29D939D28();
  }

  else
  {
    v18 = 0;
  }

  [v17 setAccessibilityIdentifier_];

  (*(v3 + 8))(v10, v2);
  return v17;
}

void sub_29D85BED4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_29D85BA8C();
    [v4 setHidden_];

    v5 = sub_29D85BB50();
    [v5 setHidden_];
  }
}

uint64_t sub_29D85BFA4()
{
  v1 = sub_29D85BF60();
  v2 = sub_29D85B61C();
  [v1 addArrangedSubview_];

  v3 = OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView;
  [*&v0[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView] setCustomSpacing:*&v0[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___titleLabel] afterView:10.0];
  v4 = *&v0[v3];
  v5 = sub_29D85B95C();
  [v4 addArrangedSubview_];

  v6 = *&v0[v3];
  v7 = sub_29D85B7BC();
  [v6 addArrangedSubview_];

  v8 = *&v0[v3];
  v9 = sub_29D85BA8C();
  [v8 addArrangedSubview_];

  v10 = *&v0[v3];
  v11 = sub_29D85BB50();
  [v10 addArrangedSubview_];

  [v0 addSubview_];
  [*&v0[v3] hk:v0 alignConstraintsWithView:?];

  return sub_29D85C10C();
}

uint64_t sub_29D85C10C()
{
  v1 = type metadata accessor for ResultItem.BodyItem(0) - 8;
  result = MEMORY[0x2A1C7C4A8](v1, v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView_resultItem + 64);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_29D85CAE0(v9, v6, type metadata accessor for ResultItem.BodyItem);
      v11 = sub_29D85BA8C();
      v12 = sub_29D85ACC0();
      [v11 addArrangedSubview_];

      result = sub_29D85CB48(v6, type metadata accessor for ResultItem.BodyItem);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

id sub_29D85C450(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_29D85C4A4(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setAlignment_];
    [v7 setAxis_];
    [v7 setSpacing_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_29D85C5D8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5Heart21ListOfResultItemsView_resultItems];
  v29 = *(v2 + 16);
  if (v29)
  {
    v3 = 0;
    v4 = (v2 + 32);
    while (v3 < *(v2 + 16))
    {
      v14 = v4[1];
      v32[0] = *v4;
      v32[1] = v14;
      v15 = v4[2];
      v16 = v4[3];
      v17 = v4[5];
      v32[4] = v4[4];
      v32[5] = v17;
      v32[2] = v15;
      v32[3] = v16;
      v19 = *v4;
      v18 = v4[1];
      v21 = v4[4];
      v20 = v4[5];
      v23 = v4[2];
      v22 = v4[3];
      v33 = v3;
      v36 = v23;
      v37 = v22;
      v38 = v21;
      v39 = v20;
      v34 = v19;
      v35 = v18;
      if (v3)
      {
        sub_29D85C9F8(v32, v31);
        v24 = sub_29D85C494();
        if (qword_2A17B0CD8 != -1)
        {
          swift_once();
        }

        v25 = qword_2A17B6800;
        v26 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
        [v26 setBackgroundColor_];
        v27 = [objc_opt_self() constraintWithItem:v26 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
        [v26 addConstraint_];

        [v24 addArrangedSubview_];
      }

      else
      {
        sub_29D85C9F8(v32, v31);
      }

      ++v3;
      v5 = type metadata accessor for ResultItemView();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___titleLabel] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___descriptionLabel] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___learnMoreButton] = 0;
      *&v6[OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView] = 0;
      v7 = &v6[OBJC_IVAR____TtC5Heart14ResultItemView_resultItem];
      v8 = v35;
      *v7 = v34;
      *(v7 + 1) = v8;
      v9 = v37;
      v10 = v39;
      v11 = v36;
      *(v7 + 4) = v38;
      *(v7 + 5) = v10;
      *(v7 + 2) = v11;
      *(v7 + 3) = v9;
      sub_29D85CAE0(&v33, v31, sub_29D85CA30);
      v30.receiver = v6;
      v30.super_class = v5;
      v12 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      sub_29D85BFA4();
      v13 = sub_29D85C494();
      [v13 addArrangedSubview_];

      sub_29D85CB48(&v33, sub_29D85CA30);
      v4 += 6;
      if (v29 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v28 = sub_29D85C494();
    [v1 addSubview_];

    [*&v1[OBJC_IVAR____TtC5Heart21ListOfResultItemsView____lazy_storage___stackView] hk:v1 alignConstraintsWithView:?];
  }
}

id sub_29D85C940(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D85CA30()
{
  if (!qword_2A17B6850)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B6850);
    }
  }
}

uint64_t type metadata accessor for ResultItem.BodyItem(uint64_t a1)
{
  result = qword_2A17B6868;
  if (!qword_2A17B6868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D85CAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D85CB48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D85CBA8(uint64_t a1)
{
  if (!qword_2A17B6858)
  {
    sub_29D9336F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B6858);
    }
  }
}

void sub_29D85CC10()
{
  sub_29D9336F8();

  sub_29D85B428();
}

unint64_t sub_29D85CC80()
{
  result = qword_2A17B3700;
  if (!qword_2A17B3700)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3700);
  }

  return result;
}

void sub_29D85CCE0()
{
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___itemView) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___bodyStackView) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___learnMoreButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart14ResultItemView____lazy_storage___stackView) = 0;
  sub_29D93AB28();
  __break(1u);
}

void sub_29D85CD84(uint64_t a1)
{
  sub_29D85CBA8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_29D85CE04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29D85CE4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for CompletedBloodPressureJournalTileActionHandler(uint64_t a1)
{
  result = qword_2A17B6878;
  if (!qword_2A17B6878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D85CF28()
{
  v1 = *v0;
  v2 = sub_29D939968();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29D939998();
  v48 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50, v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9369A8();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v43 - v14;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A1A2BF10);
  v17 = sub_29D937878();
  v18 = sub_29D93A2A8();
  v19 = os_log_type_enabled(v17, v18);
  v45 = v1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v20 = 136446466;
    v21 = sub_29D93AF08();
    v23 = v9;
    v24 = v8;
    v25 = v3;
    v26 = v2;
    v27 = sub_29D6C2364(v21, v22, aBlock);

    *(v20 + 4) = v27;
    v2 = v26;
    v3 = v25;
    v8 = v24;
    v9 = v23;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_29D6C2364(0x445074726F707865, 0xEB00000000292846, aBlock);
    _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s.%{public}s]: Attempting to present export PDF", v20, 0x16u);
    v28 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v28, -1, -1);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }

  v29 = v46;
  sub_29D936538();
  v30 = sub_29D936998();
  v31 = *(v9 + 8);
  v31(v15, v8);
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v32 = sub_29D7D0C64();
  }

  else
  {
    v32 = 5;
  }

  v33 = v44;
  sub_29D936538();
  sub_29D936988();
  v31(v33, v8);
  v34 = sub_29D935748();

  type metadata accessor for BloodPressurePDFProvider();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  sub_29D935EC8();
  v36 = v34;
  *(v35 + 24) = sub_29D935E98();
  *(v35 + 32) = 0x416E285000000000;
  *(v35 + 40) = 10;
  *(v35 + 41) = v32;
  sub_29D6FC794();
  v37 = sub_29D93A468();
  v38 = swift_allocObject();
  v38[2] = v29;
  v38[3] = v35;
  v38[4] = v45;
  aBlock[4] = sub_29D85DA2C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2449688;
  v39 = _Block_copy(aBlock);

  v40 = v47;
  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D85DA50(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D85DA50(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  v41 = v49;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v40, v41, v39);
  _Block_release(v39);

  (*(v3 + 8))(v41, v2);
  return (*(v48 + 8))(v40, v50);
}

void sub_29D85D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29D9369A8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936538();
  v9 = sub_29D936998();
  (*(v5 + 8))(v8, v4);
  v19[3] = type metadata accessor for BloodPressurePDFProvider();
  v19[4] = sub_29D85DA50(&qword_2A17B2728, type metadata accessor for BloodPressurePDFProvider, &unk_29D947E8C);
  v19[0] = a2;

  sub_29D93A398();

  sub_29D69417C(v19);
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2BF10);
  v11 = sub_29D937878();
  v12 = sub_29D93A2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136446466;
    v15 = sub_29D93AF08();
    v17 = sub_29D6C2364(v15, v16, v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_29D6C2364(0x445074726F707865, 0xEB00000000292846, v19);
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Presented export PDF", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v14, -1, -1);
    MEMORY[0x29ED6BE30](v13, -1, -1);
  }
}

uint64_t sub_29D85D808(uint64_t a1)
{
  v2 = sub_29D9369A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D936548();
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t sub_29D85DA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D85DA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D85DAFC()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v17[-v9];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE98;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  v15 = v14;
  result = (*(v3 + 8))(v10, v2);
  qword_2A17B6890 = v13;
  *algn_2A17B6898 = v15;
  return result;
}

uint64_t sub_29D85DCF8()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v17[-v9];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE98;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  v15 = v14;
  result = (*(v3 + 8))(v10, v2);
  *&xmmword_2A17B68A0 = v13;
  *(&xmmword_2A17B68A0 + 1) = v15;
  return result;
}

uint64_t sub_29D85DEF4()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v17[-v9];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE98;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  v15 = v14;
  result = (*(v3 + 8))(v10, v2);
  qword_2A17B68B0 = v13;
  *algn_2A17B68B8 = v15;
  return result;
}

uint64_t sub_29D85E0F0()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v17[-v9];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE98;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  v15 = v14;
  result = (*(v3 + 8))(v10, v2);
  qword_2A17B68C0 = v13;
  *algn_2A17B68C8 = v15;
  return result;
}

uint64_t sub_29D85E2EC()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v17[-v9];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE98;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  v15 = v14;
  result = (*(v3 + 8))(v10, v2);
  qword_2A17B68D0 = v13;
  *algn_2A17B68D8 = v15;
  return result;
}

uint64_t sub_29D85E4E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D9383D8();
}

uint64_t sub_29D85E560()
{
  type metadata accessor for BloodPressureJournalTypeSelectionCell();
  sub_29D85F874(&qword_2A17B6940, type metadata accessor for BloodPressureJournalTypeSelectionCell, &unk_29D947F88);
  return sub_29D93A348();
}

uint64_t sub_29D85E5D0()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - v7;
  sub_29D935668();
  sub_29D935618();
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_29D935628();
  v10 = sub_29D935608();
  v9(v8, v0);
  return v10;
}

void sub_29D85E748(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCollectionViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

char *sub_29D85E914(uint64_t a1)
{
  sub_29D85F6D0(0, &qword_2A17B6920, sub_29D7B7CA4, MEMORY[0x29EDB8AF0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v25[-v7];
  v9 = (v1 + qword_2A17B68F0);
  *v9 = 0;
  v9[1] = 0;
  v10 = v1 + qword_2A17B6900;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(v1 + qword_2A17B6908) = 0;
  *(v1 + qword_2A17B68F8) = a1;
  v11 = objc_allocWithZone(type metadata accessor for BloodPressureJournalTypeSelectionCollectionViewController(0));

  v13 = sub_29D85F018(v12);
  v14 = qword_2A17B0CE0;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  sub_29D74059C();
  v16 = sub_29D936A98();
  v17 = sub_29D939D28();
  v18 = [v16 hxui:v17 addNextButtonWithAccessibilityIdentifier:?];

  v19 = qword_2A17B6908;
  v20 = *&v16[qword_2A17B6908];
  *&v16[qword_2A17B6908] = v18;

  v21 = *&v16[v19];
  if (v21)
  {
    [v21 setEnabled_];
  }

  swift_beginAccess();
  sub_29D85F6D0(0, &qword_2A17B4DB0, sub_29D7B7CA4, MEMORY[0x29EDB8B00]);
  sub_29D9383A8();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D85F73C();
  v22 = sub_29D938588();

  (*(v5 + 8))(v8, v4);
  v26[3] = sub_29D938278();
  v26[4] = MEMORY[0x29EDB8A10];

  v26[0] = v22;
  v23 = qword_2A17B6900;
  swift_beginAccess();
  sub_29D85F7C4(v26, &v16[v23]);
  swift_endAccess();

  return v16;
}

void sub_29D85EC70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_2A17B6908);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 setEnabled_];
    }
  }
}

void sub_29D85ECFC(void *a1)
{
  v4 = a1;
  sub_29D7B7874(4, 0);
  v1 = v4;
  v2 = *&v4[qword_2A17B68F0];
  if (v2)
  {
    v3 = v4;
    swift_unknownObjectRetain();
    sub_29D8BA680(v3, v2);
    sub_29D936978();

    v1 = v4;
  }
}

void sub_29D85EDC4()
{
  sub_29D936978();

  sub_29D85FA58(v0 + qword_2A17B6900);
  v1 = *(v0 + qword_2A17B6908);
}

id sub_29D85EE3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D85EE7C(uint64_t a1)
{
  sub_29D936978();

  sub_29D85FA58(a1 + qword_2A17B6900);
  v2 = *(a1 + qword_2A17B6908);
}

uint64_t sub_29D85EEF0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B68F0);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D85EF0C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_29D85EF94(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29D9383D8();
}

uint64_t sub_29D85F018(uint64_t a1)
{
  *&v54 = a1;
  v1 = sub_29D933A58();
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0CE8 != -1)
  {
    swift_once();
  }

  v50 = xmmword_2A17B68A0;
  v6 = qword_2A17B0CF0;
  sub_29D935E88();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_2A17B68B8;
  v49 = qword_2A17B68B0;
  type metadata accessor for BloodPressureJournalTypeSelectionCell();
  v8 = sub_29D85F874(&qword_2A17B6940, type metadata accessor for BloodPressureJournalTypeSelectionCell, &unk_29D947F88);
  sub_29D935E88();
  v9 = v54;

  v52 = v8;
  v10 = sub_29D9350D8();
  v12 = v11;
  *&v63 = 0xD000000000000026;
  *(&v63 + 1) = 0x800000029D968E00;
  v51 = 0x800000029D968E00;
  sub_29D933A48();
  v13 = sub_29D933A18();
  v15 = v14;
  v16 = *(v56 + 8);
  v56 += 8;
  v53 = v16;
  v16(v5, v55);
  MEMORY[0x29ED6A240](v13, v15);

  *&v58 = v10;
  *(&v58 + 1) = v12;
  v59 = v63;
  v60 = v50;
  *&v61 = v49;
  *(&v61 + 1) = v7;
  *&v62 = sub_29D85F854;
  *(&v62 + 1) = v9;
  if (qword_2A17B0CF8 != -1)
  {
    swift_once();
  }

  v17 = *algn_2A17B68C8;
  *(&v50 + 1) = qword_2A17B68C0;
  v18 = qword_2A17B0D00;
  sub_29D935E88();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = *algn_2A17B68D8;
  *&v50 = qword_2A17B68D0;
  v20 = v54;

  sub_29D935E88();
  v21 = sub_29D9350D8();
  v23 = v22;
  *&v63 = 0xD000000000000026;
  *(&v63 + 1) = v51;
  sub_29D933A48();
  v24 = sub_29D933A18();
  v26 = v25;
  v27 = v5;
  v52 = v5;
  v28 = v53;
  v53(v27, v55);
  MEMORY[0x29ED6A240](v24, v26);

  v29 = v63;
  *&v63 = v21;
  *(&v63 + 1) = v23;
  v64 = v29;
  *&v65 = *(&v50 + 1);
  *(&v65 + 1) = v17;
  *&v66 = v50;
  *(&v66 + 1) = v19;
  *&v67 = sub_29D85F8BC;
  *(&v67 + 1) = v20;
  sub_29D7E9BC4(0);
  v30 = swift_allocObject();
  v54 = xmmword_29D93DDB0;
  *(v30 + 16) = xmmword_29D93DDB0;
  sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], 1);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93F680;
  *(v31 + 56) = &type metadata for BloodPressureJournalTypeSelectionItem;
  v32 = sub_29D79D3FC();
  *(v31 + 64) = v32;
  v33 = swift_allocObject();
  *(v31 + 32) = v33;
  v34 = v61;
  v33[3] = v60;
  v33[4] = v34;
  v33[5] = v62;
  v35 = v59;
  v33[1] = v58;
  v33[2] = v35;
  *(v31 + 96) = &type metadata for BloodPressureJournalTypeSelectionItem;
  *(v31 + 104) = v32;
  v36 = swift_allocObject();
  *(v31 + 72) = v36;
  v37 = v66;
  v36[3] = v65;
  v36[4] = v37;
  v36[5] = v67;
  v38 = v64;
  v36[1] = v63;
  v36[2] = v38;
  *(v30 + 32) = v31;
  v57[10] = 0x3C53447961727241;
  v57[11] = 0xE800000000000000;
  sub_29D85F9A8(&v58, v57);
  sub_29D85F9A8(&v63, v57);
  v39 = v52;
  sub_29D933A48();
  v40 = sub_29D933A18();
  v42 = v41;
  v28(v39, v55);
  MEMORY[0x29ED6A240](v40, v42);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  sub_29D9351D8();
  swift_allocObject();
  sub_29D9351E8();
  sub_29D935588();

  sub_29D7E9A60(0);
  sub_29D85F874(&qword_2A17B5500, sub_29D7E9A60, MEMORY[0x29EDC1E90]);
  v43 = sub_29D9355C8();

  sub_29D935F88();
  sub_29D85F948(0, &qword_2A17B1088, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
  v44 = swift_allocObject();
  *(v44 + 16) = v54;
  v45 = sub_29D85F874(&qword_2A17B5508, sub_29D7E9B2C, MEMORY[0x29EDC2110]);
  *(v44 + 32) = v43;
  *(v44 + 40) = v45;

  sub_29D935FA8();
  v46 = sub_29D936D88();
  sub_29D85FA04(&v58);
  sub_29D85FA04(&v63);

  return v46;
}

void sub_29D85F6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D85F73C()
{
  result = qword_2A17B6928;
  if (!qword_2A17B6928)
  {
    sub_29D85F6D0(255, &qword_2A17B6920, sub_29D7B7CA4, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6928);
  }

  return result;
}

uint64_t sub_29D85F7C4(uint64_t a1, uint64_t a2)
{
  sub_29D85F8DC(0, &qword_2A17B6930, &qword_2A17B6938, MEMORY[0x29EDB89F0], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D85F874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D85F8DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D695734(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D85F948(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_29D695734(255, a3, a4, a5 & 1);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D85FA58(uint64_t a1)
{
  sub_29D85F8DC(0, &qword_2A17B6930, &qword_2A17B6938, MEMORY[0x29EDB89F0], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29D85FAE0(char a1)
{
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton] = 0;
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = 0;
  v3 = &v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_baseIdentifier];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  v9 = qword_2A17B1B70;
  v10 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D956C00);
  v4 = v10;
  *v3 = v9;
  v3[1] = v4;
  v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_isInOnboardingModalFlow] = a1 & 1;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v5 = sub_29D939D28();

  v8.receiver = v1;
  v8.super_class = type metadata accessor for AFibBurdenOnboardingResultsViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithTitle_detailText_icon_contentLayout_, v5, 0, 0, 2, 0xE000000000000000);

  return v6;
}

id sub_29D85FCB4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver];
  *&v0[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AFibBurdenOnboardingResultsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D85FDC4()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC9C68];
  sub_29D861D38(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v164 - v5;
  v191 = sub_29D933A58();
  v188 = *(v191 - 8);
  MEMORY[0x2A1C7C4A8](v191, v7);
  v190 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D861D38(0, &qword_2A17B2280, MEMORY[0x29EDBC990], v2);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v186 = &v164 - v11;
  if (v0[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_isInOnboardingModalFlow] == 1)
  {
  }

  sub_29D877FD0();
  v13 = v12;
  v14 = *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton];
  *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton] = v12;
  v15 = v12;

  if (v13)
  {
    [v15 setEnabled_];
  }

  v16 = [v1 navigationItem];
  [v16 setBackButtonDisplayMode_];

  v17 = [v1 headerView];
  if (qword_2A17B0BD8 != -1)
  {
    swift_once();
  }

  aBlock = qword_2A17B1B70;
  v194 = *algn_2A17B1B78;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D956C00);
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
  v18 = sub_29D939D28();

  [v17 setAccessibilityIdentifier_];

  v187 = [objc_opt_self() hk_percentNumberFormatter];
  v19 = *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_baseIdentifier + 8];
  v170 = *&v1[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_baseIdentifier];
  aBlock = v170;
  v194 = v19;
  v184 = v19;
  sub_29D935E88();
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x46416E49656D6954, 0xEA00000000006269);
  v20 = HIBYTE(v194) & 0xF;
  if ((v194 & 0x2000000000000000) == 0)
  {
    v20 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  v165 = v1;
  v177 = v6;
  if (v20)
  {
    MEMORY[0x29ED6A240](0x6567616D492ELL, 0xE600000000000000);
    v21 = v194;
    v176 = aBlock;
  }

  else
  {

    v176 = 0;
    v21 = 0xE000000000000000;
  }

  v179 = v21;
  v175 = 0x800000029D969090;
  sub_29D861D38(0, &qword_2A17B6970, type metadata accessor for LocalizedImageView.TextConfiguration, MEMORY[0x29EDC9E90]);
  v23 = v22;
  v189 = type metadata accessor for LocalizedImageView.TextConfiguration(0);
  v24 = *(v189 - 8);
  v185 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v167 = *(v24 + 80);
  v169 = v23;
  v26 = swift_allocObject();
  v174 = xmmword_29D93F680;
  *(v26 + 16) = xmmword_29D93F680;
  v178 = v26;
  v168 = v25;
  v27 = v26 + v25;
  v181 = sub_29D751228(0.05);
  v173 = v28;
  sub_29D939178();
  LODWORD(v183) = *MEMORY[0x29EDBC988];
  v29 = v183;
  v30 = sub_29D939168();
  v31 = *(v30 - 8);
  v182 = *(v31 + 104);
  v32 = v186;
  v182(v186, v29, v30);
  v166 = *(v31 + 56);
  v166(v32, 0, 1, v30);
  v33 = sub_29D9391A8();
  sub_29D85A490(v32);
  v180 = objc_opt_self();
  v34 = [v180 labelColor];
  v35 = sub_29D939528();
  v36 = sub_29D9398B8();
  v38 = v37;
  v39 = v190;
  sub_29D933A48();
  v40 = v173;
  *v27 = v181;
  *(v27 + 8) = v40;
  *(v27 + 16) = v33;
  *(v27 + 24) = v35;
  *(v27 + 32) = xmmword_29D94F2A0;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  *(v27 + 64) = 1;
  *(v27 + 72) = 0x3FE0000000000000;
  *(v27 + 80) = v36;
  *(v27 + 88) = v38;
  v41 = *(v189 + 44);
  v42 = v188 + 32;
  v181 = *(v188 + 32);
  (v181)(v27 + v41, v39, v191);
  v43 = v27 + v185;
  v44 = sub_29D751228(1.0);
  v188 = v45;
  sub_29D939178();
  v171 = v31 + 104;
  v182(v32, v183, v30);
  v173 = v30;
  v46 = v30;
  v172 = v31 + 56;
  v47 = v166;
  v166(v32, 0, 1, v46);
  v48 = v47;
  v49 = sub_29D9391A8();
  sub_29D85A490(v32);
  v50 = [v180 labelColor];
  v51 = sub_29D939528();
  v52 = sub_29D9398B8();
  v54 = v53;
  v55 = v190;
  sub_29D933A48();
  v56 = v188;
  *v43 = v44;
  *(v43 + 8) = v56;
  *(v43 + 16) = v49;
  *(v43 + 24) = v51;
  *(v43 + 32) = xmmword_29D94F2B0;
  *(v43 + 48) = 0;
  *(v43 + 56) = 0;
  *(v43 + 64) = 1;
  *(v43 + 72) = 0x3FE0000000000000;
  *(v43 + 80) = v52;
  *(v43 + 88) = v54;
  v57 = v43 + *(v189 + 44);
  v188 = v42;
  (v181)(v57, v55, v191);
  aBlock = v170;
  v194 = v184;
  sub_29D935E88();
  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x67756F6E45746F4ELL, 0xED00006174614468);
  v58 = HIBYTE(v194) & 0xF;
  if ((v194 & 0x2000000000000000) == 0)
  {
    v58 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    MEMORY[0x29ED6A240](0x6567616D492ELL, 0xE600000000000000);
    v59 = v194;
    v170 = aBlock;
  }

  else
  {

    v170 = 0;
    v59 = 0xE000000000000000;
  }

  v164 = v59;
  v60 = v168;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_29D93DDB0;
  v169 = v61;
  v62 = v61 + v60;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v63 = *algn_2A17D0EB8;
  v185 = qword_2A17D0EB0;
  v64 = qword_2A17D0EC0;
  v65 = sub_29D9334A8();
  v67 = v66;
  sub_29D939178();
  v68 = v186;
  v69 = v173;
  v182(v186, v183, v173);
  v48(v68, 0, 1, v69);
  v70 = sub_29D9391A8();
  sub_29D85A490(v68);
  v71 = [v180 labelColor];
  v72 = sub_29D939528();
  v73 = sub_29D9398B8();
  v75 = v74;
  v76 = v190;
  sub_29D933A48();
  *v62 = v65;
  *(v62 + 8) = v67;
  *(v62 + 16) = v70;
  *(v62 + 24) = v72;
  *(v62 + 32) = xmmword_29D94F2C0;
  *(v62 + 48) = xmmword_29D94F2D0;
  *(v62 + 64) = 1;
  *(v62 + 72) = 0x3FE0000000000000;
  *(v62 + 80) = v73;
  *(v62 + 88) = v75;
  (v181)(v62 + *(v189 + 44), v76, v191);
  v77 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
  v197 = sub_29D86137C;
  v198 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v194 = 1107296256;
  v195 = sub_29D861AC4;
  v196 = &unk_2A2449790;
  v78 = _Block_copy(&aBlock);
  v79 = [v77 initWithDynamicProvider_];
  _Block_release(v78);

  sub_29D6AA3B4(0, &qword_2A17B6978, &type metadata for ResultItem);
  v80 = swift_allocObject();
  *(v80 + 16) = v174;
  v190 = 0xD000000000000021;
  v81 = sub_29D9334A8();
  v188 = v82;
  v189 = v81;
  sub_29D861B44(0x46416E49656D6954, 0xEA00000000006269, 0x656C746954, 0xE500000000000000);
  v186 = v83;
  v183 = v84;
  v191 = v63;
  v184 = v64;
  v85 = sub_29D9334A8();
  v87 = v86;
  sub_29D861B44(0x46416E49656D6954, 0xEA00000000006269, 0x6C6961746544, 0xE600000000000000);
  v89 = v88;
  v91 = v90;
  aBlock = 0xD00000000000001CLL;
  v194 = v175;
  LOBYTE(v195) = 1;
  v196 = v176;
  v197 = v179;
  v198 = v178;
  sub_29D861C74(0);
  v181 = v92;
  v93 = objc_allocWithZone(v92);
  sub_29D935E88();
  sub_29D935E88();
  v94 = sub_29D938CF8();
  v95 = [v94 view];

  v182 = v79;
  if (v95)
  {
    [v95 setBackgroundColor_];
  }

  else
  {
    v95 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  }

  v96 = v188;
  *(v80 + 32) = v189;
  *(v80 + 40) = v96;
  v97 = v183;
  *(v80 + 48) = v186;
  *(v80 + 56) = v97;
  *(v80 + 64) = v85;
  *(v80 + 72) = v87;
  *(v80 + 80) = v89;
  *(v80 + 88) = v91;
  *(v80 + 96) = MEMORY[0x29EDCA190];
  *(v80 + 104) = 0;
  *(v80 + 112) = 0;
  *(v80 + 120) = v95;
  v188 = sub_29D9334A8();
  v186 = v98;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x656C746954, 0xE500000000000000);
  v183 = v99;
  v180 = v100;
  v176 = sub_29D9334A8();
  v175 = v101;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x6C6961746544, 0xE600000000000000);
  *&v174 = v102;
  v173 = v103;
  sub_29D861D38(0, &qword_2A17B6990, type metadata accessor for ResultItem.BodyItem, MEMORY[0x29EDC9E90]);
  v189 = type metadata accessor for ResultItem.BodyItem(0);
  v104 = *(*(v189 - 8) + 72);
  v105 = (*(*(v189 - 8) + 80) + 32) & ~*(*(v189 - 8) + 80);
  v190 = (4 * v104);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_29D944EA0;
  v172 = v106;
  v107 = (v106 + v105);
  v108 = sub_29D9334A8();
  v110 = v109;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000012, 0x800000029D9691F0);
  *v107 = v108;
  v107[1] = v110;
  v107[2] = v111;
  v107[3] = v112;
  swift_storeEnumTagMultiPayload();
  v113 = (v107 + v104);
  v114 = sub_29D9334A8();
  v116 = v115;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000012, 0x800000029D969240);
  *v113 = v114;
  v113[1] = v116;
  v113[2] = v117;
  v113[3] = v118;
  swift_storeEnumTagMultiPayload();
  v119 = (v107 + 2 * v104);
  v120 = sub_29D9334A8();
  v122 = v121;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x63746157656B614DLL, 0xED000067756E5368);
  *v119 = v120;
  v119[1] = v122;
  v119[2] = v123;
  v119[3] = v124;
  swift_storeEnumTagMultiPayload();
  v125 = (v107 + 3 * v104);
  v126 = sub_29D9334A8();
  v128 = v127;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0x6E6F697469646441, 0xEF73706574536C61);
  *v125 = v126;
  v125[1] = v128;
  v125[2] = v129;
  v125[3] = v130;
  swift_storeEnumTagMultiPayload();
  v131 = &v190[v107];
  v132 = sub_29D9334A8();
  v134 = v133;
  sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000011, 0x800000029D9692C0);
  *v131 = v132;
  v131[1] = v134;
  v131[2] = v135;
  v131[3] = v136;
  v137 = [objc_opt_self() aFibBurdenDefaultLinkURL];
  sub_29D939D68();

  v138 = v177;
  sub_29D9336E8();

  v139 = sub_29D9336F8();
  v140 = *(v139 - 8);
  if ((*(v140 + 48))(v138, 1, v139) == 1)
  {
    __break(1u);
  }

  else
  {

    sub_29D85CBA8(0);
    v142 = *(v141 + 48);

    (*(v140 + 32))(v131 + v142, v138, v139);
    swift_storeEnumTagMultiPayload();
    sub_29D861B44(0x67756F6E45746F4ELL, 0xED00006174614468, 0xD000000000000016, 0x800000029D9692E0);
    v144 = v143;
    v146 = v145;
    aBlock = 0xD00000000000001ALL;
    v194 = 0x800000029D9690B0;
    LOBYTE(v195) = 1;
    v196 = v170;
    v197 = v164;
    v198 = v169;
    v147 = objc_allocWithZone(v181);
    v148 = sub_29D938CF8();
    v149 = [v148 view];

    if (v149)
    {
      v150 = v182;
      [v149 setBackgroundColor_];
      v151 = v165;
    }

    else
    {
      v149 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
      v151 = v165;
      v150 = v182;
    }

    v152 = v186;
    *(v80 + 128) = v188;
    *(v80 + 136) = v152;
    v153 = v180;
    *(v80 + 144) = v183;
    *(v80 + 152) = v153;
    v154 = v175;
    *(v80 + 160) = v176;
    *(v80 + 168) = v154;
    v155 = v173;
    *(v80 + 176) = v174;
    *(v80 + 184) = v155;
    *(v80 + 192) = v172;
    *(v80 + 200) = v144;
    *(v80 + 208) = v146;
    *(v80 + 216) = v149;
    v156 = type metadata accessor for ListOfResultItemsView();
    v157 = objc_allocWithZone(v156);
    *&v157[OBJC_IVAR____TtC5Heart21ListOfResultItemsView____lazy_storage___stackView] = 0;
    *&v157[OBJC_IVAR____TtC5Heart21ListOfResultItemsView_resultItems] = v80;
    v192.receiver = v157;
    v192.super_class = v156;
    v158 = objc_msgSendSuper2(&v192, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_29D85C5D8();
    v159 = [v151 contentView];
    [v159 addSubview_];

    v160 = [v151 contentView];
    [v158 hk:v160 alignConstraintsWithView:?];

    v161 = [v151 scrollView];
    aBlock = v161;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v162 = sub_29D933638();

    v163 = *&v151[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver];
    *&v151[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = v162;
  }
}

id sub_29D86137C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 == 2)
  {
    v3 = sub_29D93A4C8();
    v4 = [objc_opt_self() secondarySystemBackgroundColor];
    v5 = [v4 resolvedColorWithTraitCollection_];

    return v5;
  }

  else
  {
    if (v1 == 1)
    {
      v2 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    else
    {
      v2 = [objc_opt_self() systemBackgroundColor];
    }

    return v2;
  }
}

void sub_29D8614E4(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_29D861D38(0, &qword_2A17B6998, type metadata accessor for CGPoint, MEMORY[0x29EDB9AE0]);
    sub_29D933608();
    if ((v11 & 1) != 0 || v10 == 0.0 || ([v3 contentSize], v7 = v6, objc_msgSend(v3, sel_bounds), v7 - CGRectGetHeight(v12) > v10))
    {
    }

    else
    {
      v8 = *&v5[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_continueButton];
      if (v8)
      {
        [v8 setEnabled_];
      }

      v9 = *&v5[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver];
      *&v5[OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_scrollViewObserver] = 0;
    }
  }
}

uint64_t sub_29D861890(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart41AFibBurdenOnboardingResultsViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D8618DC()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

id sub_29D861AC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_29D861B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D861B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  sub_29D935E88();
  sub_29D935E88();
  v9 = sub_29D935E88();
  sub_29D88BBC8(v9);
  v10 = sub_29D939F18();

  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_29D939D68();
  }

  else
  {
    __break(1u);
  }
}

void sub_29D861C74(uint64_t a1)
{
  if (!qword_2A17B6980)
  {
    sub_29D861CD0();
    v1 = sub_29D938D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6980);
    }
  }
}

unint64_t sub_29D861CD0()
{
  result = qword_2A17B6988;
  if (!qword_2A17B6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6988);
  }

  return result;
}

void sub_29D861D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D861E04(char a1, void (*a2)(char *, char *, uint64_t), uint64_t (*a3)(), uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v38 = a3;
  ObjectType = swift_getObjectType();
  sub_29D868A74(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v34 - v11;
  v13 = sub_29D9336F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = v34 - v20;
  if ((a1 & 1) == 0 || *(v5 + OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion) != 1)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v26, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    aBlock = 0;
    sub_29D9371C8();

    if (v38)
    {
      v43 = v38;
      v44 = v37;
      aBlock = MEMORY[0x29EDCA5F8];
      v40 = 1107296256;
      v41 = sub_29D6C1F10;
      v42 = &unk_2A2449FE0;
      v24 = _Block_copy(&aBlock);
    }

    else
    {
      v24 = 0;
    }

    v25 = v5;
    goto LABEL_15;
  }

  v35 = a2;
  v36 = v5;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  v23 = v22;
  sub_29D69C6C0(v22, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  aBlock = 0;
  v34[1] = v23;
  sub_29D9371C8();

  sub_29D6D962C(v35, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D868AE8(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D868A74);
    *(swift_allocObject() + 16) = ObjectType;
    aBlock = 0;
    sub_29D9371F8();

    if (v38)
    {
      v43 = v38;
      v44 = v37;
      aBlock = MEMORY[0x29EDCA5F8];
      v40 = 1107296256;
      v41 = sub_29D6C1F10;
      v42 = &unk_2A244A058;
      v24 = _Block_copy(&aBlock);
    }

    else
    {
      v24 = 0;
    }

    v25 = v36;
LABEL_15:
    [v25 dismissViewControllerAnimated:1 completion:v24];
    _Block_release(v24);
    return;
  }

  v35 = *(v14 + 32);
  v35(v21, v12, v13);
  (*(v14 + 16))(v18, v21, v13);
  v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v28 = (v15 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v35((v29 + v27), v18, v13);
  v30 = (v29 + v28);
  v31 = v37;
  v32 = v38;
  *v30 = v38;
  v30[1] = v31;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v43 = sub_29D869624;
  v44 = v29;
  aBlock = MEMORY[0x29EDCA5F8];
  v40 = 1107296256;
  v41 = sub_29D6C1F10;
  v42 = &unk_2A244A0A8;
  v33 = _Block_copy(&aBlock);
  sub_29D695554(v32, v31);

  [v36 dismissViewControllerAnimated:1 completion:v33];
  _Block_release(v33);
  (*(v14 + 8))(v21, v13);
}

uint64_t sub_29D862414(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD000000000000043, 0x800000029D969B80);
  return 0;
}

uint64_t sub_29D8624E0(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD000000000000054, 0x800000029D969B20);
  return 0;
}

void sub_29D8625AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D8689CC(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D8696C0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A244A0F8;
  v11 = _Block_copy(v12);
  sub_29D695554(a2, a3);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_29D862764(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t (*)(uint64_t), uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v6, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a4;
    sub_29D9371E8();
  }

  if (a2)
  {
    return a2(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_29D862854(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D969AE0);
  return 0;
}

uint64_t sub_29D862924(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95DB60);
  MEMORY[0x29ED6A240](0xD00000000000003FLL, 0x800000029D969BD0);
  return 0;
}

id sub_29D862A84(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AFibBurdenOnboardingController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D862AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2449838;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D862BC8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2449810;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D862C98()
{
  v1 = objc_allocWithZone(type metadata accessor for AFibBurdenOnboardingStartViewController(0));
  sub_29D843318(1, 0, 0);
  v9 = v2;
  *&v2[qword_2A17B6328 + 8] = &off_2A24497B8;
  swift_unknownObjectWeakAssign();
  v3 = v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D940030;
    *(v6 + 32) = v9;
    v7 = *(v4 + 24);
    v8 = v9;
    v7(v6, 0, ObjectType, v4);

    sub_29D936978();
  }

  else
  {
  }
}

uint64_t sub_29D862E18()
{
  sub_29D69417C((v0 + 16));
  sub_29D71B9FC(v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);

  sub_29D68B77C(v0 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenOnboardingCoordinator(uint64_t a1)
{
  result = qword_2A17B69E0;
  if (!qword_2A17B69E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D862F28(uint64_t a1)
{
  result = type metadata accessor for AFibBurdenOnboardingPresentationContext(319);
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

uint64_t sub_29D862FF4(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002BLL, 0x800000029D9637E0);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D9693B0);
  return 91;
}

uint64_t sub_29D8630C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D93AA18();

  v4 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D969A70);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D969AA0);
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 8))(ObjectType, a2);
  v7 = 0xE500000000000000;
  v8 = 0x7472617473;
  v9 = 0x800000029D95A400;
  v10 = 0xD000000000000013;
  if (v6 != 5)
  {
    v10 = 0x6974656C706D6F63;
    v9 = 0xEA00000000006E6FLL;
  }

  v11 = 0x800000029D95A420;
  v12 = 0x746361466566696CLL;
  if (v6 == 3)
  {
    v12 = 0xD000000000000010;
  }

  else
  {
    v11 = 0xEB0000000073726FLL;
  }

  if (v6 <= 4)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0x7472617453746567;
  v14 = 0xEA00000000006465;
  if (v6 != 1)
  {
    v13 = 0x726F577449776F68;
    v14 = 0xEA0000000000736BLL;
  }

  if (v6)
  {
    v8 = v13;
    v7 = v14;
  }

  if (v6 <= 2)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (v6 <= 2)
  {
    v16 = v7;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x29ED6A240](v15, v16);

  return 91;
}

uint64_t sub_29D8632BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_29D868A74(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v36 - v9;
  sub_29D868C84(0, &qword_2A17B69F0, &qword_2A1A223D8, MEMORY[0x29EDC9A98], &qword_2A1A223E0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v36 - v15;
  ObjectType = swift_getObjectType();
  v18 = (*(a2 + 8))(ObjectType, a2);
  result = swift_allocObject();
  v20 = result;
  *(result + 16) = v3;
  *(result + 24) = v18;
  *(result + 32) = a1;
  *(result + 40) = a2;
  if (byte_2A243CF88 == 6)
  {
    goto LABEL_19;
  }

  if (byte_2A243CF89 == 6)
  {
    v21 = 1u;
    goto LABEL_14;
  }

  if (byte_2A243CF8A == 6)
  {
    v21 = 2u;
    goto LABEL_14;
  }

  if (byte_2A243CF8B == 6)
  {
    v21 = 3u;
    goto LABEL_14;
  }

  if (byte_2A243CF8C == 6)
  {
    v21 = 4u;
    goto LABEL_14;
  }

  if (byte_2A243CF8D == 6)
  {
    v21 = 5u;
    goto LABEL_14;
  }

  if (byte_2A243CF8E == 6)
  {
    v21 = 6u;
LABEL_14:
    if (*(&unk_2A243CF68 + v21 + 31) == v18)
    {
      if (*(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber))
      {
        v22 = qword_2A1A24678;
        v23 = a1;

        if (v22 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4(0);
        sub_29D69C6C0(v24, qword_2A1A2BF58);
        *(swift_allocObject() + 16) = v6;
        v43 = 0;
        sub_29D9371C8();
      }

      else
      {
        v27 = v3[5];
        v41 = OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber;
        v38 = sub_29D693E2C(v3 + 2, v27);
        v37 = off_2A2441948;
        v28 = type metadata accessor for AFibBurdenOnboardingModel();
        v40 = v13;
        v29 = v28;
        v39 = a1;

        v38 = (v37)(v29, &off_2A2441928);
        v43 = v38;
        v36 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
        v37 = sub_29D93A468();
        v42 = v37;
        v30 = sub_29D93A448();
        (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
        v31 = MEMORY[0x29EDC9A98];
        sub_29D8598F4(0, &qword_2A1A223D8, MEMORY[0x29EDC9A98]);
        sub_29D859494(&qword_2A1A223E0, &qword_2A1A223D8, v31);
        sub_29D706380();
        sub_29D938538();
        sub_29D868AE8(v10, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68], sub_29D868A74);

        v32 = swift_allocObject();
        v33 = v39;
        *(v32 + 16) = v3;
        *(v32 + 24) = v33;
        *(v32 + 32) = a2;
        *(v32 + 40) = v18;
        *(v32 + 48) = sub_29D868AD8;
        *(v32 + 56) = v20;
        sub_29D868B5C();
        v34 = v33;

        v35 = sub_29D938588();

        (*(v40 + 8))(v16, v12);
        *(v3 + v41) = v35;
      }
    }

LABEL_19:
    v25 = a1;

    sub_29D864880(v26, v18, v25, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D86389C(void *a1, uint64_t a2)
{
  inited = *v2;
  v6 = sub_29D939968();
  v7 = *(v6 - 1);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D939998();
  v52 = *(v10 - 1);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_29D6A9ED4(0);
    sub_29D69C6C0(v13, qword_2A1A2BF58);
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = inited;
    aBlock = 0;
    v15 = a1;
    v16 = a2;
    v17 = v15;
    sub_29D9371C8();

    ObjectType = swift_getObjectType();
    v19 = *(v16 + 8);
    v50 = v16;
    if (!v19(ObjectType, v16))
    {
      return sub_29D864380(0, 0, 0);
    }

    v49 = v17;
    v45 = v10;
    v46 = v7;
    v47 = v6;
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v48 = sub_29D9334A8();
    a2 = v20;
    sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D941B10;
    sub_29D9334A8();
    v21 = sub_29D939D28();

    v22 = objc_opt_self();
    v7 = [v22 actionWithTitle:v21 style:1 handler:0];

    *(inited + 32) = v7;
    v10 = (inited + 32);
    sub_29D9334A8();
    v23 = swift_allocObject();
    swift_weakInit();

    v24 = sub_29D939D28();

    v59 = sub_29D868A28;
    v60 = v23;
    aBlock = MEMORY[0x29EDCA5F8];
    v56 = 1107296256;
    v57 = sub_29D799960;
    v58 = &unk_2A24498D8;
    v25 = _Block_copy(&aBlock);

    v26 = [v22 actionWithTitle:v24 style:0 handler:v25];
    _Block_release(v25);

    *(inited + 40) = v26;
    v48 = a2;
    a1 = sub_29D939D28();
    v27 = [objc_opt_self() alertControllerWithTitle:0 message:a1 preferredStyle:0];

    v28 = [v27 popoverPresentationController];
    v6 = v49;
    if (v28)
    {
      a1 = v28;
      v29 = [v49 navigationItem];
      v30 = [v29 rightBarButtonItem];

      [a1 setSourceItem_];
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x29ED6AE30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v31 = *v10;
    }

    a1 = v31;
    [v27 addAction_];

    if ((inited & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x29ED6AE30](1, inited);
      goto LABEL_13;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v32 = *(inited + 40);
LABEL_13:
      v33 = v32;
      [v27 addAction_];

      swift_setDeallocating();
      swift_arrayDestroy();
      [v27 setPreferredAction_];
      sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
      v34 = sub_29D93A468();
      v35 = swift_allocObject();
      v36 = v50;
      v35[2] = v6;
      v35[3] = v36;
      v35[4] = v27;
      v59 = sub_29D868A30;
      v60 = v35;
      aBlock = MEMORY[0x29EDCA5F8];
      v56 = 1107296256;
      v57 = sub_29D6C1F10;
      v58 = &unk_2A2449928;
      v37 = _Block_copy(&aBlock);
      v38 = v6;
      v39 = v27;
      v40 = v51;
      sub_29D939988();
      v54 = MEMORY[0x29EDCA190];
      sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29D6FC864();
      v41 = v53;
      v42 = v47;
      sub_29D93A888();
      MEMORY[0x29ED6A880](0, v40, v41, v37);
      _Block_release(v37);

      (v46)[1](v41, v42);
      (*(v52 + 8))(v40, v45);
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }
}

uint64_t sub_29D864118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0xD000000000000010;
  sub_29D93AA18();

  v5 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v5);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000025, 0x800000029D9694A0);
  MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D9694D0);
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 8))(ObjectType, a2);
  if (v7 <= 2)
  {
    v9 = 0x7472617453746567;
    v10 = 0xEA00000000006465;
    if (v7 != 1)
    {
      v9 = 0x726F577449776F68;
      v10 = 0xEA0000000000736BLL;
    }

    if (v7)
    {
      v4 = v9;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v7)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xE500000000000000;
    }
  }

  else if (v7 > 4)
  {
    if (v7 == 5)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x6974656C706D6F63;
    }

    if (v7 == 5)
    {
      v8 = 0x800000029D95A400;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }
  }

  else if (v7 == 3)
  {
    v8 = 0x800000029D95A420;
  }

  else
  {
    v8 = 0xEB0000000073726FLL;
    v4 = 0x746361466566696CLL;
  }

  MEMORY[0x29ED6A240](v4, v8);

  return 91;
}

uint64_t sub_29D86431C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D864380(0, 0, 0);
  }

  return result;
}

uint64_t sub_29D864380(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = *v3;
  v7 = sub_29D939968();
  v27 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D939998();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v15, qword_2A1A2BF58);
  v16 = swift_allocObject();
  *(v16 + 16) = a1 & 1;
  *(v16 + 24) = v6;
  aBlock[0] = 0;
  sub_29D9371D8();

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v17 = sub_29D93A468();
  v18 = swift_allocObject();
  *(v18 + 16) = a1 & 1;
  v20 = v23;
  v19 = v24;
  *(v18 + 24) = v4;
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  aBlock[4] = sub_29D868A58;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24499A0;
  v21 = _Block_copy(aBlock);

  sub_29D695554(v20, v19);
  sub_29D939988();
  v28 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v14, v10, v21);
  _Block_release(v21);

  (*(v27 + 8))(v10, v7);
  (*(v25 + 8))(v14, v26);
}

uint64_t sub_29D864750(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v7, qword_2A1A2BF58);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v6;
  v9 = a1;
  sub_29D9371C8();

  return sub_29D8632BC(v9, a2);
}

uint64_t sub_29D864880(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v27 = a3;
  v6 = a2;
  v28 = a2;
  v32 = MEMORY[0x29EDCA298];
  v31 = MEMORY[0x29EDC9C68];
  sub_29D868A74(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v27 - v10;
  sub_29D868C84(0, &qword_2A17B6A00, &qword_2A17B6A08, &type metadata for AFibBurdenOnboardingProgressionState, &qword_2A17B6A10);
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v27 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v30 = a1;
  sub_29D693E2C((a1 + 16), *(a1 + 40));
  v35[0] = sub_29D6E634C(v6, a3, a4);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v18 = sub_29D93A468();
  v36 = v18;
  v19 = sub_29D93A448();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_29D8598F4(0, &qword_2A17B6A08, &type metadata for AFibBurdenOnboardingProgressionState);
  sub_29D859494(&qword_2A17B6A10, &qword_2A17B6A08, &type metadata for AFibBurdenOnboardingProgressionState);
  sub_29D706380();
  sub_29D938538();
  sub_29D868AE8(v11, &unk_2A1A248F0, v32, v31, sub_29D868A74);

  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  *(v20 + 24) = v28;
  v21 = v27;
  v22 = v29;
  *(v20 + 32) = v27;
  *(v20 + 40) = v22;
  *(v20 + 48) = v17;
  sub_29D868D5C();

  v23 = v21;

  v24 = v33;
  v25 = sub_29D938588();

  (*(v34 + 8))(v16, v24);
  swift_beginAccess();
  *(v17 + 16) = v25;
}

uint64_t sub_29D864C0C(char ***a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10 >> 6)
  {
    if (v10 >> 6 == 1)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a2;
      *(v13 + 24) = v7;

      sub_29D868E08(v9 & 1, a4, a5, sub_29D868DD4, v13);
    }

    else
    {
      sub_29D864D18(a3, 0, 0);
    }
  }

  else
  {
    sub_29D865130(*a1, v10, a4, a5, a3);
  }

  swift_beginAccess();
  *(a6 + 16) = 0;
}

uint64_t sub_29D864D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D6E8234(a1);
  if (v13 == 7)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v14, qword_2A1A2BF58);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v8;
    aBlock[0] = 0;
    sub_29D9371C8();

    sub_29D71B998(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext, v12);
    v16 = sub_29D693E2C(v3 + 2, v3[5]);
    v17 = *(*sub_29D693E2C((*v16 + 16), *(*v16 + 40)) + 104);
    v18 = v17 + *(*v17 + *MEMORY[0x29EDC9DE8] + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v17 + v19));
    v20 = *(v18 + *(type metadata accessor for AFibBurdenOnboardingFlowManager.State(0) + 20));
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v17 + v19));

    type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent(0);
    v21 = swift_allocObject();
    sub_29D86943C(v12, v21 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_presentationContext);
    *(v21 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep) = a1;
    *(v21 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode) = v20;
    v22 = *(v4 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager);
    v23 = swift_allocObject();
    *(v23 + 16) = v8;
    aBlock[4] = sub_29D8694A0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D8E44F0;
    aBlock[3] = &unk_2A2449D10;
    v24 = _Block_copy(aBlock);

    [v22 submitEvent:v21 completion:v24];
    _Block_release(v24);

    sub_29D864380(1, a2, a3);
  }

  else
  {
    v26 = v13;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v27, qword_2A1A2BF58);
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 17) = v26;
    *(v28 + 24) = v8;
    aBlock[0] = 0;
    sub_29D9371D8();

    return sub_29D866A6C(v26, a1);
  }
}

uint64_t sub_29D865130(char **a1, char a2, void *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v100 = a5;
  LOBYTE(v9) = a2;
  v104 = *v5;
  v11 = sub_29D939968();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D939998();
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v97 = v12;
  v98 = v11;
  v95 = v15;
  v96 = v18;
  v94 = v20;
  v93 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a3;
  v91 = a4;
  if (!v9)
  {
    if (qword_2A17B0D48 == -1)
    {
LABEL_6:
      v99 = sub_29D9334A8();
      v103 = v21;
      LOBYTE(v22) = 0;
      v101 = 0;
      v88 = 0;
      v102 = 0;
      v87 = a1;
      goto LABEL_31;
    }

LABEL_75:
    swift_once();
    goto LABEL_6;
  }

  if (v9 == 1)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      if (qword_2A17B0D48 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_77;
    }

    if (a1 != 1)
    {
      if (qword_2A17B0D48 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_77;
    }

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v99 = sub_29D9334A8();
    v103 = v23;
    v88 = sub_29D9334A8();
    v102 = v24;
    v25 = sub_29D9334A8();
    v27 = "_HEART_RATE_DETAIL";
    v28 = 0xD000000000000016;
LABEL_29:
    v101 = sub_29D867D68(v25, v26, v28, v27 | 0x8000000000000000, v104);

    v87 = 0;
    goto LABEL_30;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (qword_2A17B0D48 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_77;
    }

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v99 = sub_29D9334A8();
    v103 = v30;
    v88 = sub_29D9334A8();
    v102 = v31;
    v25 = sub_29D9334A8();
    v27 = "_DETECT_ALERT_DETAIL";
    v28 = 0xD00000000000002FLL;
    goto LABEL_29;
  }

  if (a1 == 3)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

  if (qword_2A17B0D48 != -1)
  {
LABEL_77:
    swift_once();
  }

LABEL_25:
  v99 = sub_29D9334A8();
  v103 = v29;
  v87 = 0;
  v101 = 0;
  v88 = 0;
  v102 = 0;
LABEL_30:
  LOBYTE(v22) = 1;
LABEL_31:
  if (qword_2A1A24678 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    sub_29D6A9ED4(0);
    sub_29D69C6C0(v32, qword_2A1A2BF58);
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = v9;
    *(v33 + 32) = v104;
    aBlock = 0;
    sub_29D9371C8();

    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v34 = sub_29D939D28();

    v35 = [objc_opt_self() actionWithTitle:v34 style:1 handler:0];

    sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_29D940030;
    *(v36 + 32) = v35;
    v112 = v36;
    v90 = v35;
    if (v101)
    {
      v37 = v101;
      v38 = v35;
      v39 = v37;
      MEMORY[0x29ED6A300]();
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      v89 = v39;
      sub_29D939FA8();
      v40 = v112;
    }

    else
    {
      v40 = v36;
      v89 = v35;
    }

    v41 = sub_29D693E2C(v6 + 2, v6[5]);
    v42 = *(*sub_29D693E2C((*v41 + 16), *(*v41 + 40)) + 104);
    v43 = MEMORY[0x29EDC9DE8];
    v44 = v42 + *(*v42 + *MEMORY[0x29EDC9DE8] + 16);
    v45 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v42 + v45));
    v46 = type metadata accessor for AFibBurdenOnboardingFlowManager.State(0);
    v47 = *(v44 + *(v46 + 20));
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v42 + v45));

    type metadata accessor for AFibBurdenOnboardingErrorAnalyticsEvent();
    v48 = swift_allocObject();
    *(v48 + 16) = a1;
    *(v48 + 24) = v9;
    *(v48 + 25) = v100;
    *(v48 + 32) = v47;
    v49 = *(v6 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager);
    v50 = swift_allocObject();
    *(v50 + 16) = v104;
    v110 = sub_29D868BEC;
    v111 = v50;
    aBlock = MEMORY[0x29EDCA5F8];
    v107 = 1107296256;
    v108 = sub_29D8E44F0;
    v109 = &unk_2A2449AB8;
    v51 = _Block_copy(&aBlock);

    [v49 submitEvent:v48 completion:v51];
    _Block_release(v51);

    if ((v22 & 1) == 0)
    {
      v9 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
      if (!v9)
      {
        sub_29D939D68();
        v9 = sub_29D939D28();
      }

      v52 = sub_29D693E2C(v6 + 2, v6[5]);
      v53 = *(*sub_29D693E2C((*v52 + 16), *(*v52 + 40)) + 104);
      v54 = v53 + *(*v53 + *v43 + 16);
      v55 = (*(*v53 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v53 + v55));
      v56 = *(v54 + *(v46 + 20));
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v53 + v55));

      if (v56)
      {
        v57 = [v56 ISOCode];
        sub_29D936978();
        sub_29D939D68();
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      v60 = *MEMORY[0x29EDBA6B0];
      if (v100 > 2u)
      {
        if (v100 > 4u)
        {
          if (v59)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v100 == 3)
          {
            if (!v59)
            {
              goto LABEL_55;
            }

LABEL_53:
            v61 = sub_29D939D28();

LABEL_56:
            v62 = objc_allocWithZone(MEMORY[0x29EDC4790]);
            v63 = sub_29D939D28();

            v64 = [v62 initWithFeatureIdentifier:v60 featureVersion:v9 countryCode:v61 step:v63 onboardingIneligibilityReasons:v87];

            v65 = swift_allocObject();
            *(v65 + 16) = v104;
            v110 = sub_29D868C24;
            v111 = v65;
            aBlock = MEMORY[0x29EDCA5F8];
            v107 = 1107296256;
            v108 = sub_29D8E44F0;
            v109 = &unk_2A2449B58;
            v66 = _Block_copy(&aBlock);
            v67 = v64;

            [v49 submitEvent:v67 completion:v66];
            _Block_release(v66);

            goto LABEL_57;
          }

          if (v59)
          {
            goto LABEL_53;
          }
        }

LABEL_55:
        v61 = 0;
        goto LABEL_56;
      }

      if (!v59)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

LABEL_57:
    v68 = sub_29D939D28();
    if (v102)
    {
      v69 = sub_29D939D28();
      v6 = [objc_opt_self() alertControllerWithTitle:v68 message:v69 preferredStyle:1];

      v68 = v69;
    }

    else
    {
      v6 = [objc_opt_self() alertControllerWithTitle:0 message:v68 preferredStyle:1];
    }

    if (v40 >> 62)
    {
      break;
    }

    v70 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v70)
    {
      goto LABEL_74;
    }

LABEL_62:
    v71 = 0;
    v22 = v40 & 0xC000000000000001;
    a1 = &selRef_initWithResultsHandler_;
    while (1)
    {
      if (v22)
      {
        v72 = MEMORY[0x29ED6AE30](v71, v40);
      }

      else
      {
        if (v71 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v72 = *(v40 + 8 * v71 + 32);
      }

      v73 = v72;
      v9 = (v71 + 1);
      if (__OFADD__(v71, 1))
      {
        break;
      }

      [v6 addAction_];

      ++v71;
      if (v9 == v70)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

  v70 = sub_29D93A928();
  if (v70)
  {
    goto LABEL_62;
  }

LABEL_74:

  v74 = v89;
  [v6 setPreferredAction_];
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v75 = sub_29D93A468();
  v76 = swift_allocObject();
  v77 = v92;
  v78 = v91;
  v76[2] = v92;
  v76[3] = v78;
  v76[4] = v6;
  v110 = sub_29D86976C;
  v111 = v76;
  aBlock = MEMORY[0x29EDCA5F8];
  v107 = 1107296256;
  v108 = sub_29D6C1F10;
  v109 = &unk_2A2449B08;
  v79 = _Block_copy(&aBlock);
  v80 = v77;
  v81 = v6;
  v82 = v93;
  sub_29D939988();
  v105 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  v83 = v95;
  v84 = v98;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v82, v83, v79);
  _Block_release(v79);

  (*(v97 + 8))(v83, v84);
  (*(v94 + 8))(v82, v96);
}

uint64_t sub_29D866334(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D9694F0);
  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D969510);
  return 0;
}

uint64_t sub_29D866400(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t (*a6)(uint64_t))
{
  v10 = *a1;
  *(a2 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;

  if (v10 == 1)
  {
    return a6(v11);
  }

  else
  {
    return sub_29D865130(4, 2, a3, a4, a5);
  }
}

uint64_t sub_29D866494(unsigned __int8 a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D9698D0);
  MEMORY[0x29ED6A240](0xD000000000000012, 0x800000029D969920);
  if (a1 <= 2u)
  {
    v10 = 0x7472617453746567;
    v11 = 0xEA00000000006465;
    if (a1 != 1)
    {
      v10 = 0x726F577449776F68;
      v11 = 0xEA0000000000736BLL;
    }

    if (a1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0x7472617473;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v4 = 0x800000029D95A400;
    v5 = 0xD000000000000013;
    if (a1 != 5)
    {
      v5 = 0x6974656C706D6F63;
      v4 = 0xEA00000000006E6FLL;
    }

    v6 = 0x800000029D95A420;
    v7 = 0x746361466566696CLL;
    if (a1 == 3)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEB0000000073726FLL;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (a1 <= 4u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  MEMORY[0x29ED6A240](v8, v9);

  MEMORY[0x29ED6A240](0x6873696E6966202CLL, 0xEB00000000676E69);
  return 91;
}

uint64_t sub_29D866684(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D9698D0);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9697D0);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

uint64_t sub_29D866790(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = 0x7472617473;
  sub_29D93AA18();

  v6 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v6);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D9698D0);
  MEMORY[0x29ED6A240](0xD000000000000016, 0x800000029D969900);
  v7 = 0xE500000000000000;
  v8 = 0x800000029D95A400;
  v9 = 0xD000000000000013;
  if (a1 != 5)
  {
    v9 = 0x6974656C706D6F63;
    v8 = 0xEA00000000006E6FLL;
  }

  v10 = 0x800000029D95A420;
  v11 = 0x746361466566696CLL;
  if (a1 == 3)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v10 = 0xEB0000000073726FLL;
  }

  if (a1 <= 4u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x7472617453746567;
  v13 = 0xEA00000000006465;
  if (a1 != 1)
  {
    v12 = 0x726F577449776F68;
    v13 = 0xEA0000000000736BLL;
  }

  if (a1)
  {
    v7 = v13;
  }

  else
  {
    v12 = 0x7472617473;
  }

  if (a1 <= 2u)
  {
    v14 = v12;
  }

  else
  {
    v14 = v9;
  }

  if (a1 <= 2u)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x29ED6A240](v14, v15);

  MEMORY[0x29ED6A240](544175136, 0xE400000000000000);
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v5 = 0x7472617453746567;
        v16 = 0xEA00000000006465;
      }

      else
      {
        v5 = 0x726F577449776F68;
        v16 = 0xEA0000000000736BLL;
      }
    }

    else
    {
      v16 = 0xE500000000000000;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v16 = 0x800000029D95A400;
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x6974656C706D6F63;
      v16 = 0xEA00000000006E6FLL;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0x800000029D95A420;
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x746361466566696CLL;
    v16 = 0xEB0000000073726FLL;
  }

  MEMORY[0x29ED6A240](v5, v16);

  return 91;
}

uint64_t sub_29D866A6C(int a1, char a2)
{
  v3 = v2;
  v32 = a1;
  v5 = *v3;
  v31 = sub_29D939968();
  v35 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D939998();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B998(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext, v16);
  v17 = sub_29D693E2C(v3 + 2, v3[5]);
  v18 = *(*sub_29D693E2C((*v17 + 16), *(*v17 + 40)) + 104);
  v19 = v18 + *(*v18 + *MEMORY[0x29EDC9DE8] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v18 + v20));
  v21 = *(v19 + *(type metadata accessor for AFibBurdenOnboardingFlowManager.State(0) + 20));
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v18 + v20));

  type metadata accessor for AFibBurdenOnboardingStepAnalyticsEvent(0);
  v22 = swift_allocObject();
  sub_29D86943C(v16, v22 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_presentationContext);
  *(v22 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_onboardingStep) = a2;
  *(v22 + OBJC_IVAR____TtC5Heart38AFibBurdenOnboardingStepAnalyticsEvent_countryCode) = v21;
  v23 = *(v3 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager);
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  v41 = sub_29D8694E8;
  v42 = v24;
  aBlock = MEMORY[0x29EDCA5F8];
  v38 = 1107296256;
  v39 = sub_29D8E44F0;
  v40 = &unk_2A2449D88;
  v25 = _Block_copy(&aBlock);

  [v23 submitEvent:v22 completion:v25];
  _Block_release(v25);

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v26 = sub_29D93A468();
  v27 = swift_allocObject();
  *(v27 + 16) = v3;
  *(v27 + 24) = v32;
  *(v27 + 32) = v5;
  v41 = sub_29D869520;
  v42 = v27;
  aBlock = MEMORY[0x29EDCA5F8];
  v38 = 1107296256;
  v39 = sub_29D6C1F10;
  v40 = &unk_2A2449DD8;
  v28 = _Block_copy(&aBlock);

  sub_29D939988();
  v36 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  v29 = v31;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v12, v8, v28);
  _Block_release(v28);

  (*(v35 + 8))(v8, v29);
  (*(v33 + 8))(v12, v34);
}

uint64_t sub_29D866FA4(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D969890);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9697D0);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

void sub_29D8670B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  sub_29D88B8D8(a2);
  v7 = v6;
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 24);
  v12 = swift_unknownObjectRetain();
  v11(v12, &off_2A24497B8, ObjectType, v9);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v13, qword_2A1A2BF58);
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a3;
  *&v20[0] = 0;
  sub_29D9371D8();

  v15 = a1 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    v17 = swift_getObjectType();
    memset(v20, 0, sizeof(v20));
    v18 = *(v16 + 32);
    v19 = v7;
    v18(v19, v20, v17, v16);
    sub_29D936978();

    sub_29D868AE8(v20, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D86953C);
  }

  else
  {
  }
}

uint64_t sub_29D8672A8(unsigned __int8 a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001ALL, 0x800000029D969890);
  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D9698B0);
  if (a1 <= 2u)
  {
    v10 = 0x7472617453746567;
    v11 = 0xEA00000000006465;
    if (a1 != 1)
    {
      v10 = 0x726F577449776F68;
      v11 = 0xEA0000000000736BLL;
    }

    if (a1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0x7472617473;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v4 = 0x800000029D95A400;
    v5 = 0xD000000000000013;
    if (a1 != 5)
    {
      v5 = 0x6974656C706D6F63;
      v4 = 0xEA00000000006E6FLL;
    }

    v6 = 0x800000029D95A420;
    v7 = 0x746361466566696CLL;
    if (a1 == 3)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xEB0000000073726FLL;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (a1 <= 4u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  MEMORY[0x29ED6A240](v8, v9);

  return 91;
}

uint64_t sub_29D867478(char a1, uint64_t a2)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000024, 0x800000029D969440);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D969470);
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x29ED6A240](v4, v5);

  return 91;
}

uint64_t sub_29D867588(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D868A74(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v19 - v10;
  if (a1)
  {
    v12 = HKHRAFibBurdenDetailRoomBaseLink();
    sub_29D9336D8();

    v13 = sub_29D9336F8();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_29D9336F8();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = a2 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 40))(a1 & 1, v11, a3, a4, ObjectType, v16);
    sub_29D936978();
  }

  return sub_29D868AE8(v11, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D868A74);
}

id sub_29D867774(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    v6 = sub_29D939D28();

    v16 = sub_29D8695CC;
    v17 = v5;
    aBlock = MEMORY[0x29EDCA5F8];
    v13 = 1107296256;
    v7 = &unk_2A2449F90;
  }

  else
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    v6 = sub_29D939D28();

    v16 = sub_29D86959C;
    v17 = v8;
    aBlock = MEMORY[0x29EDCA5F8];
    v13 = 1107296256;
    v7 = &unk_2A2449F40;
  }

  v14 = sub_29D799960;
  v15 = v7;
  v9 = _Block_copy(&aBlock);

  v10 = [objc_opt_self() actionWithTitle:v6 style:0 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  return v10;
}

id sub_29D867A18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    v6 = sub_29D939D28();

    aBlock[4] = sub_29D869770;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29D799960;
    aBlock[3] = &unk_2A2449EF0;
    v7 = _Block_copy(aBlock);

    v8 = [objc_opt_self() actionWithTitle:v6 style:1 handler:{v7, 0xE000000000000000}];
    _Block_release(v7);
  }

  else
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v9 = sub_29D939D28();

    v8 = [objc_opt_self() actionWithTitle:v9 style:1 handler:{0, 0xE000000000000000}];
  }

  return v8;
}

uint64_t sub_29D867C70(char a1)
{
  if (a1)
  {
    if (qword_2A17B0D48 == -1)
    {
      return sub_29D9334A8();
    }

    goto LABEL_6;
  }

  if (qword_2A17B0D48 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29D9334A8();
}

id sub_29D867D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  sub_29D935E88();
  v9 = sub_29D939D28();
  v13[4] = sub_29D868C6C;
  v13[5] = v8;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29D799960;
  v13[3] = &unk_2A2449BF8;
  v10 = _Block_copy(v13);

  v11 = [objc_opt_self() actionWithTitle:v9 style:0 handler:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_29D867E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D868A74(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = v22 - v9;
  v11 = sub_29D9336F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9336E8();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D868AE8(v10, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D868A74);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;
      v18 = sub_29D9336B8();
      [v17 openSensitiveURL:v18 withOptions:0];

      return (*(v12 + 8))(v15, v11);
    }

    (*(v12 + 8))(v15, v11);
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v20, qword_2A1A2BF58);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v22[1] = 0;
  sub_29D935E88();
  sub_29D9371E8();
}

uint64_t sub_29D86819C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D93AA18();

  v5 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v5);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD00000000000001FLL, 0x800000029D969840);
  MEMORY[0x29ED6A240](0xD00000000000002ALL, 0x800000029D969860);
  MEMORY[0x29ED6A240](a1, a2);
  return 91;
}

uint64_t sub_29D868284(uint64_t a1, char a2, uint64_t a3)
{
  sub_29D93AA18();

  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D969750);
  MEMORY[0x29ED6A240](0xD000000000000028, 0x800000029D969810);
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 91;
}

uint64_t sub_29D868388(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D969750);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D9697D0);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

void sub_29D868494(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v8, qword_2A1A2BF58);
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = a2;
    sub_29D9371E8();
  }
}

uint64_t sub_29D868580(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D969750);
  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D969790);
  v4 = a1;
  sub_29D6A0CD0();
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

uint64_t sub_29D86868C()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29D868770(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D868788()
{
  v1 = v0;
  v2 = *v0;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v3, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v2;
  sub_29D9371C8();

  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D8AD070();
  v4 = objc_allocWithZone(sub_29D934568());
  v5 = sub_29D934558();
  v6 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v7 = v1 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v6, 1, 0, 0, ObjectType, v8);

    sub_29D936978();
  }

  else
  {
  }
}

uint64_t sub_29D8689CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D868A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D868AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_29D868B5C()
{
  result = qword_2A17B69F8;
  if (!qword_2A17B69F8)
  {
    sub_29D868C84(255, &qword_2A17B69F0, &qword_2A1A223D8, MEMORY[0x29EDC9A98], &qword_2A1A223E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B69F8);
  }

  return result;
}

void sub_29D868C84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D8598F4(255, a3, a4);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D859494(a5, a3, a4);
    sub_29D706380();
    v9 = sub_29D9381E8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D868D5C()
{
  result = qword_2A17B6A18;
  if (!qword_2A17B6A18)
  {
    sub_29D868C84(255, &qword_2A17B6A00, &qword_2A17B6A08, &type metadata for AFibBurdenOnboardingProgressionState, &qword_2A17B6A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6A18);
  }

  return result;
}

uint64_t sub_29D868E08(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v47 = a2;
  v8 = sub_29D939968();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29D939998();
  v49 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51, v11);
  v48 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D867774(a4, a5, a1 & 1);
  sub_29D86953C(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D940030;
  *(v14 + 32) = v13;
  v56 = v14;
  v15 = v13;
  v16 = sub_29D867A18(a4, a5, a1 & 1);
  if (v16)
  {
    v17 = v16;
    MEMORY[0x29ED6A300]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();

    v14 = v56;
  }

  sub_29D867C70(a1 & 1);
  v19 = v18;
  if (a1)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v21 = v20;
    v22 = v15;
    if (v19)
    {
      v23 = sub_29D939D28();
    }

    else
    {
      v23 = 0;
    }

    v25 = sub_29D939D28();
    v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:1];
  }

  else
  {
    if (v18)
    {
      v24 = v15;
      v25 = sub_29D939D28();
    }

    else
    {
      v27 = v15;
      v25 = 0;
    }

    v26 = [objc_opt_self() alertControllerWithTitle:0 message:v25 preferredStyle:1];
    v21 = 0;
  }

  v44 = v21;
  v45 = v19;
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v29 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x29ED6AE30](v29, v14);
      }

      else
      {
        if (v29 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v30 = *(v14 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      [v26 addAction_];

      ++v29;
      if (v32 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  [v26 setPreferredAction_];
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v33 = sub_29D93A468();
  v34 = swift_allocObject();
  v35 = v46;
  v36 = v47;
  v34[2] = v47;
  v34[3] = v35;
  v34[4] = v26;
  aBlock[4] = sub_29D86976C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2449EA0;
  v37 = _Block_copy(aBlock);
  v38 = v36;
  v39 = v26;
  v40 = v48;
  sub_29D939988();
  v54 = MEMORY[0x29EDCA190];
  sub_29D8689CC(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D868A74(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  v41 = v50;
  v42 = v53;
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v40, v41, v37);
  _Block_release(v37);

  (*(v52 + 8))(v41, v42);
  (*(v49 + 8))(v40, v51);
}

uint64_t sub_29D86943C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D86953C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D869624()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D8625AC(v0 + v2, v6, v7, v8);
}

uint64_t sub_29D869774@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a2;
  sub_29D86A630(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86A908(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86E5F4(0, &qword_2A17B6A68, &type metadata for LearnHypertensionJournalSummaryView.ViewModel, MEMORY[0x29EDC1E70]);
  sub_29D9351B8();
  v23 = v27;
  v24 = a1;
  sub_29D86A748(0);
  sub_29D86A834(255);
  v16 = v15;
  v17 = type metadata accessor for LearnHypertensionJournalSummaryView(255);
  v18 = sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView, &unk_29D94F774);
  v25 = v17;
  v26 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v16;
  v26 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29D938F28();
  sub_29D86AAAC(v27);
  type metadata accessor for NonHighlightingPlatformBackgroundView(0);
  sub_29D86AA5C(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView, &unk_29D94EF48);
  sub_29D938F08();
  (*(v5 + 8))(v8, v4);
  sub_29D9390D8();
  sub_29D933E68();
  v20 = v22;
  v22[3] = v10;
  v20[4] = sub_29D86AA5C(&qword_2A17B6A70, sub_29D86A908, MEMORY[0x29EDBC030]);
  sub_29D693F78(v20);
  sub_29D938F18();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_29D869ADC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v25 = a3;
  v26 = sub_29D938F98();
  v4 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LearnHypertensionJournalSummaryView(0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D86A834(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v18 = v11 + v8[5];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = v8[6];
  v20 = sub_29D9369A8();
  (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);
  v21 = v11 + v8[7];
  v22 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 1) = v22;
  v21[32] = *(a1 + 32);
  v23 = sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView, &unk_29D94F774);
  sub_29D935E88();
  sub_29D939308();
  sub_29D86E4DC(v11, type metadata accessor for LearnHypertensionJournalSummaryView);
  sub_29D938F88();
  v27 = v8;
  v28 = v23;
  swift_getOpaqueTypeConformance2();
  sub_29D939428();
  (*(v4 + 8))(v7, v26);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_29D869E24@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B15F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDBC388]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29D869EA8()
{
  sub_29D936978();
  sub_29D86FAA4(v0 + OBJC_IVAR____TtC5Heart56LearnHypertensionJournalSummaryViewConfigurationProvider_presentationContext, &unk_2A17B5550, MEMORY[0x29EDC1D90]);

  return swift_deallocClassInstance();
}

void sub_29D869F58(uint64_t a1)
{
  sub_29D86F9D8(319, &unk_2A17B5550, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_29D86A024()
{
  result = qword_2A17B6A30;
  if (!qword_2A17B6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6A30);
  }

  return result;
}

uint64_t sub_29D86A07C()
{
  type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC5Heart56LearnHypertensionJournalSummaryViewConfigurationProvider_presentationContext;
  v2 = sub_29D9350C8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_29D86A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LearnHypertensionJournalSummaryViewConfigurationProvider(0);

  return MEMORY[0x2A1C628B8](a1, v5, a3);
}

uint64_t sub_29D86A1BC(void *a1)
{
  sub_29D86EAF4(0, &qword_2A17B6AD8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10[-v7];
  sub_29D693E2C(a1, a1[3]);
  sub_29D86EAA0();
  sub_29D93AED8();
  v10[15] = 0;
  sub_29D93ACE8();
  if (!v1)
  {
    v10[14] = 1;
    sub_29D93AD08();
    v10[13] = 2;
    sub_29D93AD08();
    v10[12] = 3;
    sub_29D93ACF8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_29D86A368()
{
  v1 = 0x6F437055656B6177;
  v2 = 0x43656D6954646562;
  if (*v0 != 2)
  {
    v2 = 0x656C706D6F437369;
  }

  if (!*v0)
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

uint64_t sub_29D86A3FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D86E6D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D86A430(uint64_t a1)
{
  v2 = sub_29D86EAA0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D86A46C(uint64_t a1)
{
  v2 = sub_29D86EAA0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D86A4A8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v6 || v3 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = sub_29D93AD78();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v3 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

unint64_t sub_29D86A5DC()
{
  result = qword_2A17B6A38;
  if (!qword_2A17B6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6A38);
  }

  return result;
}

void sub_29D86A630(uint64_t a1)
{
  if (!qword_2A17B6A40)
  {
    sub_29D86A748(255);
    sub_29D86A834(255);
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView, &unk_29D94F774);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29D938F38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6A40);
    }
  }
}

void sub_29D86A748(uint64_t a1)
{
  if (!qword_2A17B6A48)
  {
    sub_29D86A834(255);
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView, &unk_29D94F774);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B6A48);
    }
  }
}

void sub_29D86A834(uint64_t a1)
{
  if (!qword_2A17B6A50)
  {
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView, &unk_29D94F774);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B6A50);
    }
  }
}

void sub_29D86A908(uint64_t a1)
{
  if (!qword_2A17B6A60)
  {
    sub_29D86A748(255);
    type metadata accessor for NonHighlightingPlatformBackgroundView(255);
    sub_29D86A834(255);
    type metadata accessor for LearnHypertensionJournalSummaryView(255);
    sub_29D86AA5C(&qword_2A17B6A58, type metadata accessor for LearnHypertensionJournalSummaryView, &unk_29D94F774);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D86AA5C(&qword_2A17B15D8, type metadata accessor for NonHighlightingPlatformBackgroundView, &unk_29D94EF48);
    v1 = sub_29D938F38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6A60);
    }
  }
}

uint64_t sub_29D86AA5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_29D86AADC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_29D86E854(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_29D86AB3C@<X0>(void *a1@<X8>)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v15 = MEMORY[0x2A1C7C4A8](v13, v14);
  v30 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v29 - v18;
  sub_29D699AF4(&v29 - v18);
  v31 = v13;
  v29 = *&v19[*(v13 + 40)];

  sub_29D86E4DC(v19, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2BE98;
  (*(v5 + 16))(v9, v12, v4);
  sub_29D935E88();
  v21 = v20;
  sub_29D933A98();
  v22 = sub_29D939D98();
  v24 = v23;
  (*(v5 + 8))(v12, v4);
  v25 = v30;
  sub_29D699AF4(v30);
  v26 = *(v25 + *(v31 + 68));
  sub_29D935E88();
  result = sub_29D86E4DC(v25, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v28 = v29;
  *a1 = 0;
  a1[1] = v28;
  a1[2] = v22;
  a1[3] = v24;
  a1[4] = v26;
  a1[5] = 0x7075656B6157;
  a1[6] = 0xE600000000000000;
  return result;
}

uint64_t sub_29D86AE4C@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v28 - v18;
  sub_29D699AF4(&v28 - v18);
  v30 = v12;
  v28 = *&v19[*(v12 + 44)];

  sub_29D86E4DC(v19, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v21 = v20;
  sub_29D933A98();
  v22 = sub_29D939D98();
  v24 = v23;
  (*(v4 + 8))(v11, v3);
  sub_29D699AF4(v16);
  v25 = *&v16[*(v30 + 72)];
  sub_29D935E88();
  result = sub_29D86E4DC(v16, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v27 = v29;
  *v29 = 1;
  v27[1] = v28;
  v27[2] = v22;
  v27[3] = v24;
  v27[4] = v25;
  v27[5] = 0x656D6974646542;
  v27[6] = 0xE700000000000000;
  return result;
}

void sub_29D86B164(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v135 = type metadata accessor for SevenDayView(0);
  v4 = MEMORY[0x2A1C7C4A8](v135, v3);
  v140 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v139 = &v129 - v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v132 = (&v129 - v11);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v137 = &v129 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v130 = (&v129 - v17);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v136 = &v129 - v19;
  v20 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v23 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D939D18();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v129 - v31;
  sub_29D86F074(0, &qword_2A17B2470, MEMORY[0x29EDBC0A8]);
  v35 = MEMORY[0x2A1C7C4A8](v33 - 8, v34);
  v134 = &v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v133 = &v129 - v39;
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v131 = &v129 - v42;
  MEMORY[0x2A1C7C4A8](v41, v43);
  v158 = &v129 - v44;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v45 = qword_2A1A2BE98;
  v46 = unk_2A1A2BEA0;
  v47 = qword_2A1A2BEA8;
  v48 = *(v25 + 16);
  v153 = v25 + 16;
  v152 = v48;
  v48(v29, v32, v24);
  sub_29D935E88();
  v150 = v45;
  sub_29D933A98();
  v154 = v47;
  v155 = v46;
  v156 = v45;
  sub_29D939D98();
  v148 = v29;
  v149 = v23;
  v49 = *(v25 + 8);
  v143 = v25 + 8;
  v151 = v49;
  v49(v32, v24);
  sub_29D86F9D8(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v147 = v50;
  v51 = swift_allocObject();
  v144 = v24;
  v52 = v51;
  v145 = xmmword_29D93DDB0;
  *(v51 + 16) = xmmword_29D93DDB0;
  v53 = (a1 + *(type metadata accessor for LearnHypertensionJournalSummaryView(0) + 28));
  v54 = *v53;
  v55 = v53[1];
  v146 = v53;
  v52[7] = MEMORY[0x29EDC99B0];
  v52[8] = sub_29D69AD24();
  v52[4] = v54;
  v52[5] = v55;
  sub_29D935E88();
  v56 = sub_29D939D38();
  v58 = v57;

  *&v161 = v56;
  *(&v161 + 1) = v58;
  v142 = sub_29D69AB60();
  v59 = sub_29D9392F8();
  v157 = a1;
  v61 = v60;
  v63 = v62;
  sub_29D718DF8();
  sub_29D93A658();
  sub_29D939248();
  v64 = sub_29D9392C8();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_29D69ABB4(v59, v61, v63 & 1);

  *&v161 = v64;
  *(&v161 + 1) = v66;
  LOBYTE(v162) = v68 & 1;
  *(&v162 + 1) = v70;
  sub_29D86E5F4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v71 = swift_allocObject();
  v141 = xmmword_29D93F680;
  *(v71 + 16) = xmmword_29D93F680;
  *(v71 + 32) = sub_29D86BE58(type metadata accessor for LearnHypertensionJournalSummaryView);
  *(v71 + 40) = v72;
  *(v71 + 48) = 0x7361654D7478654ELL;
  *(v71 + 56) = 0xEF746E656D657275;
  v73 = sub_29D939F18();

  v74 = HKUIJoinStringsForAutomationIdentifier();

  if (!v74)
  {
    goto LABEL_15;
  }

  sub_29D939D68();

  sub_29D939438();

  sub_29D69ABB4(v64, v66, v68 & 1);

  sub_29D939D08();
  v75 = v144;
  v152(v148, v32, v144);
  sub_29D935E88();
  v76 = v150;
  sub_29D933A98();
  sub_29D939D98();
  v151(v32, v75);
  v77 = swift_allocObject();
  *(v77 + 16) = v145;
  if (v146[3] >= 7)
  {
    v78 = 7;
  }

  else
  {
    v78 = v146[3];
  }

  v79 = 14 - v78;
  if (__OFSUB__(14, v78))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v80 = v146[2];
  if (v80 >= 7)
  {
    v80 = 7;
  }

  v81 = __OFSUB__(v79, v80);
  v82 = v79 - v80;
  if (v81)
  {
    goto LABEL_14;
  }

  v155 = v80;
  v156 = v78;
  v83 = MEMORY[0x29EDC9C10];
  *(v77 + 56) = MEMORY[0x29EDC9BA8];
  *(v77 + 64) = v83;
  *(v77 + 32) = v82;
  v84 = sub_29D939D38();
  v86 = v85;

  *&v161 = v84;
  *(&v161 + 1) = v86;
  v87 = sub_29D9392F8();
  v89 = v88;
  v91 = v90;
  sub_29D939148();
  v92 = sub_29D9392C8();
  v94 = v93;
  v96 = v95;
  v98 = v97;

  sub_29D69ABB4(v87, v89, v91 & 1);

  *&v161 = v92;
  *(&v161 + 1) = v94;
  v99 = v96 & 1;
  LOBYTE(v162) = v96 & 1;
  *(&v162 + 1) = v98;
  v100 = swift_allocObject();
  *(v100 + 16) = v141;
  *(v100 + 32) = sub_29D86BE58(type metadata accessor for LearnHypertensionJournalSummaryView);
  *(v100 + 40) = v101;
  *(v100 + 48) = 0xD000000000000010;
  *(v100 + 56) = 0x800000029D969D40;
  v102 = sub_29D939F18();

  v103 = HKUIJoinStringsForAutomationIdentifier();

  if (v103)
  {
    sub_29D939D68();

    v104 = v131;
    sub_29D939438();

    sub_29D69ABB4(v92, v94, v99);

    sub_29D86AB3C(v159);
    KeyPath = swift_getKeyPath();
    v106 = swift_getKeyPath();
    v107 = v130;
    *v130 = v106;
    sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    v108 = v135;
    v109 = v107 + *(v135 + 20);
    *v109 = KeyPath;
    *(v109 + 1) = 0;
    v109[16] = 0;
    *(v107 + v108[6]) = v155;
    *(v107 + v108[7]) = 7;
    v110 = v107 + v108[8];
    v111 = v159[1];
    *v110 = v159[0];
    *(v110 + 1) = v111;
    *(v110 + 2) = v159[2];
    *(v110 + 6) = v160;
    v112 = v107;
    v113 = v136;
    sub_29D685EEC(v112, v136);
    sub_29D86AE4C(&v161);
    v114 = swift_getKeyPath();
    v115 = swift_getKeyPath();
    v116 = v132;
    *v132 = v115;
    swift_storeEnumTagMultiPayload();
    v117 = v116 + v108[5];
    *v117 = v114;
    *(v117 + 8) = 0;
    *(v117 + 16) = 0;
    *(v116 + v108[6]) = v156;
    *(v116 + v108[7]) = 7;
    v118 = v116 + v108[8];
    v119 = v162;
    *v118 = v161;
    *(v118 + 16) = v119;
    *(v118 + 32) = v163;
    *(v118 + 48) = v164;
    v120 = v137;
    sub_29D685EEC(v116, v137);
    v121 = v133;
    sub_29D86E644(v158, v133);
    v122 = v134;
    sub_29D86E644(v104, v134);
    v123 = v139;
    sub_29D685F50(v113, v139);
    v124 = v140;
    sub_29D685F50(v120, v140);
    v125 = v138;
    sub_29D86E644(v121, v138);
    sub_29D86E53C(0);
    v127 = v126;
    sub_29D86E644(v122, v125 + *(v126 + 48));
    sub_29D685F50(v123, v125 + *(v127 + 64));
    sub_29D685F50(v124, v125 + *(v127 + 80));
    sub_29D86E4DC(v120, type metadata accessor for SevenDayView);
    sub_29D86E4DC(v113, type metadata accessor for SevenDayView);
    v128 = MEMORY[0x29EDBC0A8];
    sub_29D86FC28(v104, &qword_2A17B2470, MEMORY[0x29EDBC0A8], sub_29D86F074);
    sub_29D86FC28(v158, &qword_2A17B2470, v128, sub_29D86F074);
    sub_29D86E4DC(v124, type metadata accessor for SevenDayView);
    sub_29D86E4DC(v123, type metadata accessor for SevenDayView);
    sub_29D86FC28(v122, &qword_2A17B2470, v128, sub_29D86F074);
    sub_29D86FC28(v121, &qword_2A17B2470, v128, sub_29D86F074);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_29D86BE58(uint64_t (*a1)(void))
{
  v3 = sub_29D938B68();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1(0) + 20);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
    sub_29D935E88();
  }

  else
  {

    sub_29D93A298();
    v11 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();
    sub_29D86E6C4(v9, v10, 0);
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return v9;
}

double sub_29D86BFD4@<D0>(uint64_t a1@<X0>, int *a2@<X1>, char *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v6 = &a3[a2[5]];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = a2[6];
  v8 = sub_29D9369A8();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  sub_29D86E5F4(0, &qword_2A17B6A68, &type metadata for LearnHypertensionJournalSummaryView.ViewModel, MEMORY[0x29EDC1E70]);
  v10 = v9;
  sub_29D9351B8();
  (*(*(v10 - 8) + 8))(a1, v10);
  v11 = &a3[a2[7]];
  *v11 = v13;
  *(v11 + 1) = v14;
  result = *&v15;
  *(v11 + 1) = v15;
  v11[32] = v16;
  return result;
}

void sub_29D86C18C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D938C78();
  sub_29D699AF4(v7);
  v9 = *&v7[*(v4 + 32)];
  sub_29D86E4DC(v7, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  sub_29D86F6A0(0, &qword_2A17B6AB0, &qword_2A17B6AB8, sub_29D86E53C);
  sub_29D86B164(v1, a1 + *(v10 + 44));
}

uint64_t sub_29D86C280()
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v22[-v10];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v13 = v12;
  sub_29D933A98();
  sub_29D939D98();
  (*(v4 + 8))(v11, v3);
  sub_29D86F9D8(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D93F680;
  v15 = type metadata accessor for SevenDayView(0);
  v16 = *(v0 + *(v15 + 24));
  v17 = MEMORY[0x29EDC9BA8];
  v18 = MEMORY[0x29EDC9C10];
  *(v14 + 56) = MEMORY[0x29EDC9BA8];
  *(v14 + 64) = v18;
  *(v14 + 32) = v16;
  v19 = *(v0 + *(v15 + 28));
  *(v14 + 96) = v17;
  *(v14 + 104) = v18;
  *(v14 + 72) = v19;
  v20 = sub_29D939D38();

  return v20;
}

uint64_t sub_29D86C534@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v3 = v2 - 8;
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86EE98(0, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v54 - v9;
  sub_29D86F614(0);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29D86F614;
  sub_29D86F0D0(0, &qword_2A17B6BB0, sub_29D86F614);
  v17 = v16 - 8;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v54 - v19;
  *v10 = sub_29D938C78();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_29D86F6A0(0, &qword_2A17B6BB8, &qword_2A17B6B28, sub_29D86EF38);
  sub_29D86C9A8(v1, &v10[*(v21 + 44)]);
  sub_29D9398A8();
  sub_29D9388E8();
  sub_29D86F71C(v10, v15);
  v22 = &v15[*(v12 + 44)];
  v23 = v61;
  *(v22 + 4) = v60;
  *(v22 + 5) = v23;
  *(v22 + 6) = v62;
  v25 = v57;
  v24 = v58;
  *v22 = v56;
  *(v22 + 1) = v25;
  v26 = v59;
  *(v22 + 2) = v24;
  *(v22 + 3) = v26;
  sub_29D699AF4(v6);
  sub_29D86E4DC(v6, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  LOBYTE(v12) = sub_29D9390D8();
  sub_29D938618();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_29D86FA3C(v15, v20, sub_29D86F614);
  v35 = &v20[*(v17 + 44)];
  *v35 = v12;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_29D699AF4(v6);
  v36 = *&v6[*(v3 + 72)];
  sub_29D86E4DC(v6, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v37 = v54;
  sub_29D86F7AC(0, &qword_2A17B6BC0, &qword_2A17B6BB0, v54, sub_29D86F824);
  v39 = v55;
  v40 = (v55 + *(v38 + 36));
  v41 = *(sub_29D9388D8() + 20);
  v42 = *MEMORY[0x29EDBC6F8];
  v43 = sub_29D938C38();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  *v40 = v36;
  *(v40 + 1) = v36;
  type metadata accessor for SevenDayView(0);
  v44 = sub_29D935E88();
  MEMORY[0x29ED69C80](v44);
  sub_29D9387C8();
  sub_29D86F8B8(0);
  v46 = &v40[*(v45 + 52)];
  v47 = v64;
  *v46 = v63;
  *(v46 + 1) = v47;
  *(v46 + 4) = v65;
  *&v40[*(v45 + 56)] = 256;
  v48 = sub_29D9398A8();
  v50 = v49;
  sub_29D86F824(0);
  v52 = &v40[*(v51 + 36)];
  *v52 = v48;
  v52[1] = v50;
  return sub_29D86F968(v20, v39, &qword_2A17B6BB0, v37, sub_29D86F0D0);
}

void sub_29D86C9A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v239 = a1;
  v198 = a2;
  v3 = type metadata accessor for SevenDayView(0);
  v220 = v3;
  v194 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v195 = v5;
  v196 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86F1DC(0);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v197 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v236 = &v192 - v11;
  v230 = MEMORY[0x29EDBC990];
  sub_29D86F9D8(0, &qword_2A17B2280, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v228 = &v192 - v14;
  v227 = sub_29D939238();
  v225 = *(v227 - 8);
  MEMORY[0x2A1C7C4A8](v227, v15);
  v224 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86F12C(0);
  v231 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v232 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D86F0D0(0, &qword_2A17B6B50, sub_29D86F12C);
  v233 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v234 = &v192 - v22;
  sub_29D86F7AC(0, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
  v25 = MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v193 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v235 = &v192 - v28;
  v243 = sub_29D9398C8();
  v247 = *(v243 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v243, v29);
  v229 = &v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v219 = &v192 - v33;
  v242 = sub_29D9386B8();
  v246 = *(v242 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v242, v34);
  v223 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v241 = &v192 - v39;
  MEMORY[0x2A1C7C4A8](v38, v40);
  v210 = &v192 - v41;
  v240 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs(0);
  v43 = MEMORY[0x2A1C7C4A8](v240, v42);
  v226 = &v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v221 = &v192 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46, v48);
  v245 = &v192 - v50;
  MEMORY[0x2A1C7C4A8](v49, v51);
  v214 = (&v192 - v52);
  v218 = MEMORY[0x29EDBC5D8];
  sub_29D86F074(0, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
  v244 = v53 - 8;
  v55 = MEMORY[0x2A1C7C4A8](v53 - 8, v54);
  v222 = &v192 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v55, v57);
  v59 = &v192 - v58;
  sub_29D86EFF8(0);
  v215 = v60 - 8;
  v62 = MEMORY[0x2A1C7C4A8](v60 - 8, v61);
  v192 = &v192 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x2A1C7C4A8](v62, v64);
  v204 = &v192 - v66;
  MEMORY[0x2A1C7C4A8](v65, v67);
  v238 = &v192 - v68;
  v69 = v2 + *(v3 + 32);
  v70 = *(v69 + 16);
  v71 = *(v69 + 24);
  v237 = v69;
  v248 = v70;
  v249 = v71;
  v205 = sub_29D69AB60();
  sub_29D935E88();
  v72 = sub_29D9392F8();
  v74 = v73;
  v76 = v75;
  sub_29D939228();
  v77 = sub_29D9392C8();
  v79 = v78;
  LOBYTE(v2) = v80;

  sub_29D69ABB4(v72, v74, v76 & 1);

  sub_29D939178();
  v81 = sub_29D939298();
  v83 = v82;
  LOBYTE(v72) = v84;
  sub_29D69ABB4(v77, v79, v2 & 1);

  LODWORD(v248) = sub_29D938EF8();
  v201 = sub_29D9392B8();
  v200 = v85;
  v199 = v86;
  v202 = v87;
  sub_29D69ABB4(v81, v83, v72 & 1);

  v88 = v214;
  sub_29D699AF4(v214);
  v89 = *(v240 + 20);
  v90 = v246;
  v91 = *(v246 + 16);
  v216 = v246 + 16;
  v217 = v91;
  v92 = v210;
  v93 = v242;
  v91(v210, v88 + v89, v242);
  v203 = type metadata accessor for LearnHypertensionJournalSummaryViewSpecs;
  sub_29D86E4DC(v88, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v212 = *MEMORY[0x29EDBC368];
  v94 = *(v90 + 104);
  v213 = v90 + 104;
  v214 = v94;
  v95 = v241;
  (v94)(v241);
  LOBYTE(v88) = sub_29D9386A8();
  v96 = *(v90 + 8);
  v246 = v90 + 8;
  v211 = v96;
  v96(v95, v93);
  v96(v92, v93);
  v97 = v247;
  v98 = *(v247 + 104);
  v208 = v98;
  v210 = (v247 + 104);
  v99 = *MEMORY[0x29EDBCBD8];
  v207 = *MEMORY[0x29EDBCBD8];
  v100 = *MEMORY[0x29EDBCBE0];
  v209 = *MEMORY[0x29EDBCBE0];
  if (v88)
  {
    v101 = v99;
  }

  else
  {
    v101 = v100;
  }

  v102 = v219;
  v103 = v243;
  v98(v219, v101, v243);
  v104 = *(v244 + 44);
  v105 = *(v97 + 32);
  v247 = v97 + 32;
  v206 = v105;
  v105(&v59[v104], v102, v103);
  v106 = v200;
  *v59 = v201;
  *(v59 + 1) = v106;
  v59[16] = v199 & 1;
  *(v59 + 3) = v202;
  LOBYTE(v103) = sub_29D9390F8();
  v107 = v245;
  sub_29D699AF4(v245);
  sub_29D86E4DC(v107, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D938618();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v116 = v204;
  sub_29D86F968(v59, v204, &qword_2A17B6B40, v218, sub_29D86F074);
  v117 = v116 + *(v215 + 44);
  *v117 = v103;
  *(v117 + 8) = v109;
  *(v117 + 16) = v111;
  *(v117 + 24) = v113;
  *(v117 + 32) = v115;
  *(v117 + 40) = 0;
  sub_29D86FA3C(v116, v238, sub_29D86EFF8);
  v248 = sub_29D86C280();
  v249 = v118;
  v119 = sub_29D9392F8();
  v121 = v120;
  v123 = v122;
  v219 = v124;
  v125 = v225;
  v126 = v224;
  v127 = v227;
  (*(v225 + 104))(v224, *MEMORY[0x29EDBC9D0], v227);
  v128 = *MEMORY[0x29EDBC988];
  v129 = sub_29D939168();
  v130 = *(v129 - 8);
  v131 = v228;
  (*(v130 + 104))(v228, v128, v129);
  (*(v130 + 56))(v131, 0, 1, v129);
  sub_29D9391B8();
  sub_29D86FAA4(v131, &qword_2A17B2280, v230);
  (*(v125 + 8))(v126, v127);
  v132 = sub_29D9392C8();
  v134 = v133;
  LOBYTE(v127) = v135;

  sub_29D69ABB4(v119, v121, v123 & 1);

  sub_29D939178();
  v228 = sub_29D939298();
  v137 = v136;
  v139 = v138;
  v230 = v140;
  v141 = v127 & 1;
  v142 = v240;
  v143 = v220;
  sub_29D69ABB4(v132, v134, v141);

  v144 = v221;
  v145 = v239;
  sub_29D699AF4(v221);
  v146 = v223;
  v147 = v242;
  v217(v223, v144 + *(v142 + 20), v242);
  sub_29D86E4DC(v144, v203);
  v148 = v241;
  v149 = v147;
  (v214)(v241, v212, v147);
  LOBYTE(v147) = sub_29D9386A8();
  v150 = v211;
  v211(v148, v149);
  v150(v146, v149);
  if (v147)
  {
    v151 = v207;
  }

  else
  {
    v151 = v209;
  }

  v152 = v229;
  v153 = v243;
  v208(v229, v151, v243);
  v154 = v152;
  v155 = v222;
  v206(&v222[*(v244 + 44)], v154, v153);
  *v155 = v228;
  *(v155 + 8) = v137;
  v156 = v226;
  v157 = v139 & 1;
  v158 = v145;
  *(v155 + 16) = v157;
  *(v155 + 24) = v230;
  sub_29D699AF4(v156);
  v159 = v143;
  if (*(v145 + *(v143 + 24)))
  {
    v160 = v237 + 1;
  }

  else
  {
    v160 = (v156 + *(v142 + 48));
  }

  v161 = *v160;

  sub_29D86E4DC(v156, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  v162 = v232;
  sub_29D86F968(v155, v232, &qword_2A17B6B40, MEMORY[0x29EDBC5D8], sub_29D86F074);
  *(v162 + *(v231 + 36)) = v161;
  LOBYTE(v161) = sub_29D9390F8();
  v163 = v245;
  sub_29D699AF4(v245);
  sub_29D86E4DC(v163, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs);
  sub_29D938618();
  v165 = v164;
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v172 = v234;
  sub_29D86FA3C(v162, v234, sub_29D86F12C);
  v173 = v172 + *(v233 + 36);
  *v173 = v161;
  *(v173 + 8) = v165;
  *(v173 + 16) = v167;
  *(v173 + 24) = v169;
  *(v173 + 32) = v171;
  *(v173 + 40) = 0;
  sub_29D86E5F4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_29D943EA0;
  *(v174 + 32) = sub_29D86BE58(type metadata accessor for SevenDayView);
  *(v174 + 40) = v175;
  v176 = v237[6];
  *(v174 + 48) = v237[5];
  *(v174 + 56) = v176;
  *(v174 + 64) = 0x7265746E756F43;
  *(v174 + 72) = 0xE700000000000000;
  sub_29D935E88();
  v177 = sub_29D939F18();

  v178 = HKUIJoinStringsForAutomationIdentifier();

  v179 = v236;
  v180 = v235;
  if (v178)
  {
    sub_29D939D68();

    sub_29D870084(&qword_2A17B6BE0, &qword_2A17B6B50, sub_29D86F12C, sub_29D86FB14);
    sub_29D939438();

    sub_29D86FC28(v172, &qword_2A17B6B50, sub_29D86F12C, sub_29D86F0D0);
    *v179 = sub_29D938B98();
    *(v179 + 8) = 0x4022000000000000;
    *(v179 + 16) = 0;
    sub_29D86FC88(0);
    v181 = *(v158 + *(v159 + 28));
    if ((v181 & 0x8000000000000000) == 0)
    {
      v248 = 0;
      v249 = v181;
      swift_getKeyPath();
      v182 = v196;
      sub_29D685F50(v158, v196);
      v183 = (*(v194 + 80) + 16) & ~*(v194 + 80);
      v184 = swift_allocObject();
      sub_29D685EEC(v182, v184 + v183);
      sub_29D86F300(0, &qword_2A17B10F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
      sub_29D86F354(0);
      sub_29D86F3BC();
      sub_29D86F534();
      sub_29D9397C8();
      v185 = v238;
      v186 = v192;
      sub_29D86FD70(v238, v192, sub_29D86EFF8);
      v187 = v193;
      sub_29D86FDD8(v180, v193);
      v188 = v197;
      sub_29D86FD70(v179, v197, sub_29D86F1DC);
      v189 = v198;
      sub_29D86FD70(v186, v198, sub_29D86EFF8);
      sub_29D86EF38(0);
      v191 = v190;
      sub_29D86FDD8(v187, v189 + *(v190 + 48));
      sub_29D86FD70(v188, v189 + *(v191 + 64), sub_29D86F1DC);
      sub_29D86FE74(v179, sub_29D86F1DC);
      sub_29D86FED4(v180);
      sub_29D86FE74(v185, sub_29D86EFF8);
      sub_29D86FE74(v188, sub_29D86F1DC);
      sub_29D86FED4(v187);
      sub_29D86FE74(v186, sub_29D86EFF8);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_29D86DD54(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a3;
  v5 = type metadata accessor for LearnHypertensionJournalCheckmarkView(0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = type metadata accessor for SevenDayView(0);
  v11 = *(a2 + *(v10 + 24));
  v12 = (a2 + *(v10 + 32));
  v13 = v12[1];
  *v8 = swift_getKeyPath();
  sub_29D86F9D8(0, &qword_2A17B16D8, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = v9 < v11;
  *(v8 + *(v5 + 24)) = v13;
  if (v9 >= v11)
  {
    v14 = 0x656C63726943;
  }

  else
  {
    v14 = 0x694364656C6C6946;
  }

  if (v9 >= v11)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xEC000000656C6372;
  }

  sub_29D86E5F4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D946CA0;

  *(v16 + 32) = sub_29D86BE58(type metadata accessor for SevenDayView);
  *(v16 + 40) = v17;
  v18 = v12[6];
  *(v16 + 48) = v12[5];
  *(v16 + 56) = v18;
  *(v16 + 64) = v14;
  *(v16 + 72) = v15;
  v22[1] = v9;
  sub_29D935E88();
  *(v16 + 80) = sub_29D93AD38();
  *(v16 + 88) = v19;
  v20 = sub_29D939F18();

  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    sub_29D939D68();

    sub_29D86AA5C(&qword_2A17B6B98, type metadata accessor for LearnHypertensionJournalCheckmarkView, &unk_29D9467C8);
    sub_29D939438();

    sub_29D86E4DC(v8, type metadata accessor for LearnHypertensionJournalCheckmarkView);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D86E014@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D9386B8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D938818();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9389D8();
  sub_29D938978();
  return sub_29D8F6D54(v9, v5, a1);
}

void sub_29D86E118(uint64_t a1)
{
  sub_29D86F9D8(319, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D86E5F4(319, &qword_2A17B6A88, MEMORY[0x29EDC99B0], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      sub_29D86F9D8(319, &qword_2A17B1620, MEMORY[0x29EDC2968], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_29D86E240(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D86E254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_29D86E29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D86E430()
{
  result = qword_2A17B6AA0;
  if (!qword_2A17B6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AA0);
  }

  return result;
}

unint64_t sub_29D86E488()
{
  result = qword_2A17B6AA8;
  if (!qword_2A17B6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AA8);
  }

  return result;
}

uint64_t sub_29D86E4DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D86E53C(uint64_t a1)
{
  if (!qword_2A17B6AC0)
  {
    sub_29D86F074(255, &qword_2A17B2470, MEMORY[0x29EDBC0A8]);
    type metadata accessor for SevenDayView(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B6AC0);
    }
  }
}

void sub_29D86E5F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D86E644(uint64_t a1, uint64_t a2)
{
  sub_29D86F074(0, &qword_2A17B2470, MEMORY[0x29EDBC0A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D86E6C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29D86E6D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000029D969D90 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F437055656B6177 && a2 == 0xEB00000000746E75 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x43656D6954646562 && a2 == 0xEC000000746E756FLL || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574)
  {

    return 3;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29D86E854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D86EAF4(0, &qword_2A17B6AC8, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v18 - v9;
  sub_29D693E2C(a1, a1[3]);
  sub_29D86EAA0();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v23 = 0;
  v11 = sub_29D93AC58();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  v19 = sub_29D93AC78();
  v21 = 2;
  v18 = sub_29D93AC78();
  v20 = 3;
  v15 = sub_29D93AC68();
  (*(v7 + 8))(v10, v6);
  result = sub_29D69417C(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15 & 1;
  return result;
}

unint64_t sub_29D86EAA0()
{
  result = qword_2A17B6AD0;
  if (!qword_2A17B6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AD0);
  }

  return result;
}

void sub_29D86EAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D86EAA0();
    v7 = a3(a1, &type metadata for LearnHypertensionJournalSummaryView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D86EB90(uint64_t a1)
{
  sub_29D86F9D8(319, &qword_2A17B3F48, type metadata accessor for LearnHypertensionJournalSummaryViewSpecs, MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D86E5F4(319, &qword_2A17B6A88, MEMORY[0x29EDC99B0], MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29D86EC8C()
{
  result = qword_2A17B6AF0;
  if (!qword_2A17B6AF0)
  {
    sub_29D86EE98(255, &qword_2A17B6AF8, &qword_2A17B6AB8, sub_29D86E53C, &qword_2A17B6B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6AF0);
  }

  return result;
}

uint64_t sub_29D86ED10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D86F9D8(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D86ED94()
{
  result = qword_2A17B6B08;
  if (!qword_2A17B6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B08);
  }

  return result;
}

unint64_t sub_29D86EDEC()
{
  result = qword_2A17B6B10;
  if (!qword_2A17B6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B10);
  }

  return result;
}

unint64_t sub_29D86EE44()
{
  result = qword_2A17B6B18;
  if (!qword_2A17B6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B18);
  }

  return result;
}

void sub_29D86EE98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D86F9D8(255, a3, a4, MEMORY[0x29EDBCC28]);
    sub_29D86ED10(a5, a3, a4);
    v9 = sub_29D939758();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D86EF38(uint64_t a1)
{
  if (!qword_2A17B6B30)
  {
    sub_29D86EFF8(255);
    sub_29D86F7AC(255, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
    sub_29D86F1DC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B6B30);
    }
  }
}

void sub_29D86EFF8(uint64_t a1)
{
  if (!qword_2A17B6B38)
  {
    sub_29D86F074(255, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6B38);
    }
  }
}

void sub_29D86F074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D86F0D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D86F12C(uint64_t a1)
{
  if (!qword_2A17B6B58)
  {
    sub_29D86F074(255, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
    sub_29D86F300(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6B58);
    }
  }
}

void sub_29D86F1DC(uint64_t a1)
{
  if (!qword_2A17B6B60)
  {
    sub_29D86F240(255);
    sub_29D86F4BC();
    v1 = sub_29D939728();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6B60);
    }
  }
}

void sub_29D86F240(uint64_t a1)
{
  if (!qword_2A17B6B68)
  {
    sub_29D86F300(255, &qword_2A17B10F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29D86F354(255);
    sub_29D86F3BC();
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6B68);
    }
  }
}

void sub_29D86F300(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D86F354(uint64_t a1)
{
  if (!qword_2A17B6B70)
  {
    type metadata accessor for LearnHypertensionJournalCheckmarkView(255);
    sub_29D939098();
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6B70);
    }
  }
}

unint64_t sub_29D86F3BC()
{
  result = qword_2A17B6B78;
  if (!qword_2A17B6B78)
  {
    sub_29D86F300(255, &qword_2A17B10F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29D86F468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B78);
  }

  return result;
}

unint64_t sub_29D86F468()
{
  result = qword_2A17B6B80;
  if (!qword_2A17B6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B80);
  }

  return result;
}

unint64_t sub_29D86F4BC()
{
  result = qword_2A17B6B88;
  if (!qword_2A17B6B88)
  {
    sub_29D86F240(255);
    sub_29D86F534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B88);
  }

  return result;
}

unint64_t sub_29D86F534()
{
  result = qword_2A17B6B90;
  if (!qword_2A17B6B90)
  {
    sub_29D86F354(255);
    sub_29D86AA5C(&qword_2A17B6B98, type metadata accessor for LearnHypertensionJournalCheckmarkView, &unk_29D9467C8);
    sub_29D86AA5C(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6B90);
  }

  return result;
}

void sub_29D86F614(uint64_t a1)
{
  if (!qword_2A17B6BA8)
  {
    sub_29D86EE98(255, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6BA8);
    }
  }
}

void sub_29D86F6A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29D86F9D8(255, a3, a4, MEMORY[0x29EDBCC28]);
    v5 = sub_29D938788();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D86F71C(uint64_t a1, uint64_t a2)
{
  sub_29D86EE98(0, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D86F7AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29D86F0D0(255, a3, a4);
    a5(255);
    v7 = sub_29D938838();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D86F824(uint64_t a1)
{
  if (!qword_2A17B6BC8)
  {
    sub_29D86F8B8(255);
    sub_29D86AA5C(&qword_2A17B6BD8, sub_29D86F8B8, MEMORY[0x29EDBC340]);
    v1 = sub_29D938DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6BC8);
    }
  }
}

void sub_29D86F8B8(uint64_t a1)
{
  if (!qword_2A17B6BD0)
  {
    sub_29D9388D8();
    sub_29D86AA5C(&qword_2A17B2FD8, MEMORY[0x29EDBC5C0], MEMORY[0x29EDBC5B8]);
    v1 = sub_29D938698();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6BD0);
    }
  }
}

uint64_t sub_29D86F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_29D86F9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D86FA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D86FAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D86F9D8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D86FB14()
{
  result = qword_2A17B6BE8;
  if (!qword_2A17B6BE8)
  {
    sub_29D86F12C(255);
    sub_29D86FB94();
    sub_29D6FA560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6BE8);
  }

  return result;
}

unint64_t sub_29D86FB94()
{
  result = qword_2A17B6BF0;
  if (!qword_2A17B6BF0)
  {
    sub_29D86F074(255, &qword_2A17B6B40, MEMORY[0x29EDBC5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6BF0);
  }

  return result;
}

uint64_t sub_29D86FC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_29D86FC88(uint64_t a1)
{
  if (!qword_2A17B6BF8)
  {
    sub_29D86F240(255);
    v1 = sub_29D938788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6BF8);
    }
  }
}

void sub_29D86FCF0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SevenDayView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_29D86DD54(a1, v6, a2);
}

uint64_t sub_29D86FD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D86FDD8(uint64_t a1, uint64_t a2)
{
  sub_29D86F7AC(0, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D86FE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D86FED4(uint64_t a1)
{
  sub_29D86F7AC(0, &qword_2A17B6B48, &qword_2A17B6B50, sub_29D86F12C, MEMORY[0x29EDBC0A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D86FF68()
{
  result = qword_2A17B6C00;
  if (!qword_2A17B6C00)
  {
    sub_29D86F7AC(255, &qword_2A17B6BC0, &qword_2A17B6BB0, sub_29D86F614, sub_29D86F824);
    sub_29D870084(&qword_2A17B6C08, &qword_2A17B6BB0, sub_29D86F614, sub_29D870104);
    sub_29D86AA5C(&qword_2A17B6C20, sub_29D86F824, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C00);
  }

  return result;
}

uint64_t sub_29D870084(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D86F0D0(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D870104()
{
  result = qword_2A17B6C10;
  if (!qword_2A17B6C10)
  {
    sub_29D86F614(255);
    sub_29D870184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C10);
  }

  return result;
}

unint64_t sub_29D870184()
{
  result = qword_2A17B6C18;
  if (!qword_2A17B6C18)
  {
    sub_29D86EE98(255, &qword_2A17B6B20, &qword_2A17B6B28, sub_29D86EF38, &qword_2A17B6BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6C18);
  }

  return result;
}

uint64_t sub_29D87020C(void *a1, int a2)
{
  v24 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29D8733A8(0, &qword_2A17B6C60, sub_29D8732AC, &type metadata for BloodPressureJournalOnboardingPromotionStatus.PromotedCodingKeys, MEMORY[0x29EDC9E88]);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v19 - v6;
  sub_29D8733A8(0, &qword_2A17B6C68, sub_29D873300, &type metadata for BloodPressureJournalOnboardingPromotionStatus.NotPromotedCodingKeys, v3);
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v19 - v10;
  sub_29D8733A8(0, &qword_2A17B6C70, sub_29D873354, &type metadata for BloodPressureJournalOnboardingPromotionStatus.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v19 - v16;
  sub_29D693E2C(a1, a1[3]);
  sub_29D873354();
  sub_29D93AED8();
  if (v24)
  {
    v26 = 1;
    sub_29D8732AC();
    sub_29D93ACA8();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_29D873300();
    sub_29D93ACA8();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_29D870520()
{
  if (*v0)
  {
    return 0x6465746F6D6F7270;
  }

  else
  {
    return 0x6F6D6F7250746F6ELL;
  }
}

void sub_29D870564(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6D6F7250746F6ELL && a2 == 0xEB00000000646574;
  if (v6 || (sub_29D93AD78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6465746F6D6F7270 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();

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
}

uint64_t sub_29D870644(uint64_t a1)
{
  v2 = sub_29D873354();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D870680(uint64_t a1)
{
  v2 = sub_29D873354();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8706BC(uint64_t a1)
{
  v2 = sub_29D873300();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8706F8(uint64_t a1)
{
  v2 = sub_29D873300();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D870734(uint64_t a1)
{
  v2 = sub_29D8732AC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D870770(uint64_t a1)
{
  v2 = sub_29D8732AC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D8707AC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D872E1C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_29D8707F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  sub_29D873DEC(0, &qword_2A1A25768, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2[10] = swift_task_alloc();
  v3 = sub_29D9340F8();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_29D937898();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D8709BC, 0, 0);
}

uint64_t sub_29D8709BC()
{
  v67 = v0;
  swift_getObjectType();
  sub_29D873EAC(&qword_2A1A24580, v1, type metadata accessor for BloodPressureJournalSetUpJournalExecutor, &unk_29D94FB50);
  sub_29D933F28();
  sub_29D937838();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 152);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v66[0] = v9;
    *v8 = 136446466;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, v66);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v66);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s.%{public}s]: Running workplan", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v13 = *(v6 + 8);
  v13(v5, v7);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 80);
  sub_29D872458(0);
  sub_29D937448();
  sub_29D871724(*(v0 + 208), v16);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_29D873D18(*(v0 + 80), &qword_2A1A25768, MEMORY[0x29EDC3840]);
    sub_29D937838();
    v17 = sub_29D937878();
    v18 = sub_29D93A268();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 136);
    v21 = *(v0 + 120);
    if (v19)
    {
      v64 = *(v0 + 136);
      v22 = swift_slowAlloc();
      v62 = v13;
      v23 = swift_slowAlloc();
      v66[0] = v23;
      *v22 = 136446466;
      v24 = sub_29D93AF08();
      v26 = sub_29D6C2364(v24, v25, v66);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v66);
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s.%{public}s]: No BPJ set up feed item is created. Replacing with an empty feed item", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);

      v62(v64, v21);
    }

    else
    {

      v13(v20, v21);
    }

    v48 = *(v0 + 40);
    v47 = *(v0 + 48);
    sub_29D693E2C((v0 + 16), v48);
    v49 = swift_task_alloc();
    *(v0 + 192) = v49;
    *v49 = v0;
    v49[1] = sub_29D8713E0;
    v50 = MEMORY[0x29EDCA190];
  }

  else
  {
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 88);
    v30 = *(v0 + 96);
    (*(v30 + 32))(v27, *(v0 + 80), v29);
    sub_29D937838();
    v65 = *(v30 + 16);
    v65(v28, v27, v29);
    v31 = sub_29D937878();
    v61 = sub_29D93A2A8();
    v32 = os_log_type_enabled(v31, v61);
    v33 = *(v0 + 144);
    v34 = *(v0 + 120);
    v36 = *(v0 + 96);
    v35 = *(v0 + 104);
    v37 = *(v0 + 88);
    if (v32)
    {
      v60 = *(v0 + 144);
      v63 = v13;
      v38 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v66[0] = v58;
      *v38 = 136446722;
      v39 = sub_29D93AF08();
      v59 = v34;
      v41 = sub_29D6C2364(v39, v40, v66);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_29D6C2364(0x293A5F286E7572, 0xE700000000000000, v66);
      *(v38 + 22) = 2080;
      sub_29D873EAC(&qword_2A1A247A8, 255, MEMORY[0x29EDC3840], MEMORY[0x29EDC3848]);
      v42 = sub_29D93AD38();
      v44 = v43;
      v45 = *(v36 + 8);
      v45(v35, v37);
      v46 = sub_29D6C2364(v42, v44, v66);

      *(v38 + 24) = v46;
      _os_log_impl(&dword_29D677000, v31, v61, "[%{public}s.%{public}s]: Replacing BPJ Set Up feeditem: %s ", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v58, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);

      v63(v60, v59);
    }

    else
    {

      v45 = *(v36 + 8);
      v45(v35, v37);
      v13(v33, v34);
    }

    *(v0 + 160) = v45;
    v51 = *(v0 + 112);
    v52 = *(v0 + 88);
    v53 = *(v0 + 96);
    v48 = *(v0 + 40);
    v47 = *(v0 + 48);
    sub_29D693E2C((v0 + 16), v48);
    sub_29D873DEC(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    *(v0 + 168) = v55;
    *(v55 + 16) = xmmword_29D93DDB0;
    v65(v55 + v54, v51, v52);
    v56 = swift_task_alloc();
    *(v0 + 176) = v56;
    *v56 = v0;
    v56[1] = sub_29D8711DC;
    v50 = v55;
  }

  return MEMORY[0x2A1C64D80](v50, v48, v47);
}

uint64_t sub_29D8711DC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_29D871658;
  }

  else
  {
    v2 = sub_29D871310;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D871310()
{
  (*(v0 + 160))(*(v0 + 112), *(v0 + 88));
  sub_29D69417C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D8713E0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_29D8715A8;
  }

  else
  {
    v2 = sub_29D8714F4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D8714F4()
{
  sub_29D69417C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D8715A8()
{
  sub_29D69417C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D871658()
{
  (*(v0 + 160))(*(v0 + 112), *(v0 + 88));
  sub_29D69417C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D871724@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_29D937898();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v29 - v11;
  if (a1)
  {
    sub_29D937838();
    v13 = sub_29D937878();
    v14 = sub_29D93A2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v30);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29D677000, v13, v14, "[%s] Onboarding for BPJ is promoted. Continuing to create feed item.", v15, 0xCu);
      sub_29D69417C(v16);
      MEMORY[0x29ED6BE30](v16, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return sub_29D871A54(a2);
  }

  else
  {
    sub_29D937838();
    v21 = sub_29D937878();
    v22 = sub_29D93A2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      v25 = sub_29D93AF08();
      v27 = sub_29D6C2364(v25, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_29D677000, v21, v22, "[%s] Onboarding for BPJ is not promoted. Not creating a feed item.", v23, 0xCu);
      sub_29D69417C(v24);
      MEMORY[0x29ED6BE30](v24, -1, -1);
      MEMORY[0x29ED6BE30](v23, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    v28 = sub_29D9340F8();
    return (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  }
}

uint64_t sub_29D871A54@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v1 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D934A18();
  v13 = *(v3 - 8);
  v14 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[2] = "cutor7Planner";
  sub_29D740490();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11[1] = sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9349E8();
  v7 = sub_29D933FE8();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D93A928())
    {
      sub_29D872AC4(MEMORY[0x29EDCA190]);
    }

    type metadata accessor for BloodPressureJournalPromptTileViewActionHandler(0);
    sub_29D873EAC(&qword_2A1A22F00, 255, type metadata accessor for BloodPressureJournalPromptTileViewActionHandler, &unk_29D93FE70);
    v8 = v12;
    sub_29D934038();

    if (sub_29D93A928())
    {
      sub_29D6E3D70(MEMORY[0x29EDCA190]);
    }
  }

  else
  {
    type metadata accessor for BloodPressureJournalPromptTileViewActionHandler(0);
    sub_29D873EAC(&qword_2A1A22F00, 255, type metadata accessor for BloodPressureJournalPromptTileViewActionHandler, &unk_29D93FE70);
    v8 = v12;
    sub_29D934038();
  }

  sub_29D9340B8();
  sub_29D934078();
  sub_29D934088();
  (*(v13 + 8))(v6, v14);
  v9 = sub_29D9340F8();
  return (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
}

uint64_t sub_29D871F00()
{
  sub_29D936978();
  v1 = OBJC_IVAR____TtCC5Heart40BloodPressureJournalSetUpJournalExecutor7Planner_signals;
  v2 = sub_29D937358();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D871FA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5Heart40BloodPressureJournalSetUpJournalExecutor7Planner_signals;
  v4 = sub_29D937358();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D87201C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D873410();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29D9374E8();
  sub_29D936978();

  return sub_29D69417C(v8);
}

uint64_t sub_29D87211C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29D873EAC(&qword_2A1A24650, 255, type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner, &unk_29D94FB10);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29D8721F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29D873EAC(&qword_2A1A24650, 255, type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner, &unk_29D94FB10);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29D8722B8()
{
  sub_29D936978();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner(uint64_t a1)
{
  result = qword_2A1A24638;
  if (!qword_2A1A24638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D872370(uint64_t a1)
{
  result = sub_29D937358();
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

void sub_29D872458(uint64_t a1)
{
  if (!qword_2A1A246C0)
  {
    sub_29D8724C0();
    sub_29D872514();
    v1 = sub_29D937458();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A246C0);
    }
  }
}

unint64_t sub_29D8724C0()
{
  result = qword_2A1A23000;
  if (!qword_2A1A23000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23000);
  }

  return result;
}

unint64_t sub_29D872514()
{
  result = qword_2A1A23008;
  if (!qword_2A1A23008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23008);
  }

  return result;
}

uint64_t sub_29D872568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D8707F8(a1);
}

uint64_t sub_29D8725FC(uint64_t a1)
{
  v3 = sub_29D937358();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v11 = *(v1 + 16);
  v8(v7, a1, v3);
  type metadata accessor for BloodPressureJournalSetUpJournalExecutor.Planner(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtCC5Heart40BloodPressureJournalSetUpJournalExecutor7Planner_signals, v7, v3);
  swift_unknownObjectRetain();
  return v9;
}

uint64_t sub_29D872728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29D873EAC(qword_2A1A24588, a2, type metadata accessor for BloodPressureJournalSetUpJournalExecutor, &unk_29D94FBA0);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

uint64_t sub_29D872828()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}