uint64_t sub_2516092D0(uint64_t a1)
{
  v2 = *v1;
  sub_25163590C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x25307C200](*&v3);
  sub_25163539C();
  return sub_25163594C();
}

uint64_t sub_251609344(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_2516358DC();
  }
}

BOOL sub_25160938C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((*(a1 + 48) & 1) == 0)
  {
    if ((*(a2 + 48) & 1) != 0 || v4 != *a2)
    {
      return 0;
    }

    if (v5 == *(a2 + 8) && v6 == *(a2 + 16))
    {
      return 1;
    }

    return (sub_2516358DC() & 1) != 0;
  }

  v7 = 0;
  if ((*(a2 + 48) & 1) != 0 && v4 == *a2)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    if ((v5 != *(a2 + 8) || v6 != *(a2 + 16)) && (sub_2516358DC() & 1) == 0 || v8 != v11)
    {
      return 0;
    }

    if (v9 == v12 && v10 == v13)
    {
      return 1;
    }

    return (sub_2516358DC() & 1) != 0;
  }

  return v7;
}

uint64_t _s13HealthDomains17ContributingDatumV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      sub_251601D84();
      sub_251609714(v5, v6, 0);
      sub_251609714(v2, v3, 0);
      v8 = sub_25163561C();
      v4 = 0;
      v7 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((a2[2] & 1) == 0)
  {
LABEL_6:
    sub_251609714(*a2, a2[1], v7);
    sub_251609714(v2, v3, v4);
    v8 = 0;
    goto LABEL_10;
  }

  sub_251601D84();
  v4 = 1;
  sub_251609714(v5, v6, 1);
  sub_251609714(v2, v3, 1);
  if (sub_25163561C())
  {
    v8 = sub_25163561C();
  }

  else
  {
    v8 = 0;
  }

  v7 = 1;
LABEL_10:
  sub_251609768(v2, v3, v4);
  sub_251609768(v5, v6, v7);
  return v8 & 1;
}

uint64_t type metadata accessor for ContributingDatum(uint64_t a1)
{
  result = qword_280DD72F8;
  if (!qword_280DD72F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251609618(uint64_t a1)
{
  if (!qword_280DD70B8)
  {
    sub_2515F8380(255);
    v1 = sub_25163563C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DD70B8);
    }
  }
}

uint64_t sub_251609670(uint64_t a1, uint64_t a2)
{
  sub_251609618(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2516096D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v7 = vars8;
  }
}

id sub_251609714(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

void sub_251609750(void *result, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_251609768(result, a2, a3 & 1);
  }
}

void sub_251609768(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

id sub_2516097C0(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_251609714(result, a2, a3 & 1);
  }

  return result;
}

BOOL _s13HealthDomains17ContributingDatumV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2515F8380(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251609618(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25160B204(0);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 24);
  v17 = *(a2 + 24);
  if (!v16)
  {
    if (!v17)
    {

      goto LABEL_12;
    }

LABEL_10:

    return 0;
  }

  if (!v17)
  {
    goto LABEL_10;
  }

  if ((*(a1 + 16) != *(a2 + 16) || v16 != v17) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if ((sub_25161F7D0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v53 = v6;
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  v21 = *(a1 + 56);
  v20 = *(a1 + 64);
  v23 = *(a1 + 72);
  v22 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = *(a2 + 48);
  v26 = *(a2 + 56);
  v27 = *(a2 + 64);
  v29 = *(a2 + 72);
  v28 = *(a2 + 80);
  v30 = *(a2 + 88);
  if (v24 == 255)
  {
    if (v30 == 255)
    {
      goto LABEL_19;
    }

LABEL_18:
    v31 = *(a1 + 40);
    v32 = *(a2 + 40);
    v33 = v18;
    v34 = *(a2 + 48);
    v35 = v21;
    v36 = v26;
    v51 = v20;
    v52 = v23;
    v37 = v29;
    v49 = v22;
    v50 = v29;
    v53 = v28;
    sub_25160B268(v19, v18, v21, v20, v23, v22, v24);
    v38 = v37;
    v39 = v53;
    sub_25160B268(v32, v34, v36, v27, v38, v53, v30);
    sub_251609F24(v31, v33, v35, v51, v52, v49, v24);
    sub_251609F24(v32, v34, v36, v27, v50, v39, v30);
    return 0;
  }

  if (v30 == 255)
  {
    goto LABEL_18;
  }

  v56[0] = *(a2 + 40);
  v56[1] = v25;
  v56[2] = v26;
  v56[3] = v27;
  v56[4] = v29;
  v56[5] = v28;
  v57 = v30 & 1;
  v54[0] = v19;
  v54[1] = v18;
  v54[2] = v21;
  v54[3] = v20;
  v54[4] = v23;
  v54[5] = v22;
  v55 = v24 & 1;
  if (!sub_25160938C(v54, v56))
  {
    return 0;
  }

LABEL_19:
  v40 = *(type metadata accessor for ContributingDatum(0) + 32);
  v41 = *(v13 + 48);
  sub_25160A118(a1 + v40, v15, sub_251609618);
  sub_25160A118(a2 + v40, &v15[v41], sub_251609618);
  v42 = *(v53 + 48);
  if (v42(v15, 1, v5) == 1)
  {
    if (v42(&v15[v41], 1, v5) == 1)
    {
      sub_25160B280(v15, sub_251609618);
      return 1;
    }

    v47 = sub_25160B204;
    goto LABEL_29;
  }

  sub_25160A118(v15, v11, sub_251609618);
  v44 = v42(&v15[v41], 1, v5);
  v45 = sub_25160B204;
  if (v44 == 1)
  {
LABEL_28:
    v48 = v45;
    sub_25160B280(v11, sub_2515F8380);
    v47 = v48;
LABEL_29:
    sub_25160B280(v15, v47);
    return 0;
  }

  sub_251601234(&v15[v41], v8);
  sub_25163516C();
  sub_25160B2E0(&qword_27F446BE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if ((sub_25163532C() & 1) == 0)
  {
    sub_25160B280(v8, sub_2515F8380);
    v45 = sub_251609618;
    goto LABEL_28;
  }

  v46 = sub_25163532C();
  sub_25160B280(v8, sub_2515F8380);
  sub_25160B280(v11, sub_2515F8380);
  sub_25160B280(v15, sub_251609618);
  return (v46 & 1) != 0;
}

unint64_t sub_251609D44()
{
  result = qword_27F446E48;
  if (!qword_27F446E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E48);
  }

  return result;
}

unint64_t sub_251609D98()
{
  result = qword_27F446E50;
  if (!qword_27F446E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E50);
  }

  return result;
}

unint64_t sub_251609DEC()
{
  result = qword_27F446E58;
  if (!qword_27F446E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E58);
  }

  return result;
}

unint64_t sub_251609E40()
{
  result = qword_27F446E68;
  if (!qword_27F446E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E68);
  }

  return result;
}

uint64_t sub_251609E94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2515F8380(255);
    sub_25160B2E0(a2, MEMORY[0x277CC9578], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251609F24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_251609F3C(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_251609F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

unint64_t sub_251609F8C()
{
  result = qword_27F446E88;
  if (!qword_27F446E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E88);
  }

  return result;
}

unint64_t sub_251609FE0()
{
  result = qword_27F446E90;
  if (!qword_27F446E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446E90);
  }

  return result;
}

uint64_t sub_25160A034(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_25160A3A4(255, &qword_280DD70B0, &type metadata for ClassificationLevelID, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25160A0C4()
{
  result = qword_27F446EA0;
  if (!qword_27F446EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446EA0);
  }

  return result;
}

uint64_t sub_25160A118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25160A1B0()
{
  result = qword_27F446EB8;
  if (!qword_27F446EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446EB8);
  }

  return result;
}

void sub_25160A274(uint64_t a1)
{
  sub_25160A3A4(319, qword_280DD70C8, &type metadata for ClassificationLevelID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25160A3A4(319, &qword_280DD70B0, &type metadata for ClassificationLevelID, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_25160A3A4(319, &qword_280DD7308, &type metadata for ContributingDatum.CodableValue, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_251609618(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25160A3A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25160A414(uint64_t a1, unsigned int a2)
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

uint64_t sub_25160A45C(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25160A4E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_25160A52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for ContributingDatum.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContributingDatum.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25160A6F0()
{
  result = qword_27F446EC8;
  if (!qword_27F446EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446EC8);
  }

  return result;
}

unint64_t sub_25160A748()
{
  result = qword_27F446ED0;
  if (!qword_27F446ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446ED0);
  }

  return result;
}

unint64_t sub_25160A7A0()
{
  result = qword_27F446ED8;
  if (!qword_27F446ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446ED8);
  }

  return result;
}

unint64_t sub_25160A7F8()
{
  result = qword_27F446EE0;
  if (!qword_27F446EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446EE0);
  }

  return result;
}

uint64_t sub_25160A84C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000025163B830 == a2 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76654C656C616373 && a2 == 0xED00007344496C65 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x56656C6261646F63 && a2 == 0xEC00000065756C61 || (sub_2516358DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = sub_2516358DC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_25160AA18()
{
  result = qword_27F446EF0;
  if (!qword_27F446EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446EF0);
  }

  return result;
}

unint64_t sub_25160AA6C()
{
  result = qword_27F446F00;
  if (!qword_27F446F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F00);
  }

  return result;
}

unint64_t sub_25160AAC0()
{
  result = qword_27F446F10;
  if (!qword_27F446F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F10);
  }

  return result;
}

unint64_t sub_25160AB14()
{
  result = qword_27F446F18;
  if (!qword_27F446F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F18);
  }

  return result;
}

uint64_t sub_25160AB68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_25160B9EC(0, &qword_27F446F20, sub_25160AA18, &type metadata for ContributingDatum.CodableValue.BloodPressureCodingKeys, MEMORY[0x277D844C8]);
  v41 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - v5;
  sub_25160B9EC(0, &qword_27F446F28, sub_25160AA6C, &type metadata for ContributingDatum.CodableValue.QuantityCodingKeys, v3);
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  sub_25160B9EC(0, &qword_27F446F30, sub_25160AAC0, &type metadata for ContributingDatum.CodableValue.CodingKeys, v3);
  v11 = v10;
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_25160AAC0();
  v15 = v43;
  sub_25163596C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v17 = v39;
  v16 = v40;
  v18 = v41;
  v19 = sub_25163580C();
  v20 = (2 * *(v19 + 16)) | 1;
  v51 = v19;
  v52 = v19 + 32;
  v53 = 0;
  v54 = v20;
  v21 = sub_251603D80();
  if (v21 == 2 || v53 != v54 >> 1)
  {
    v23 = sub_2516356FC();
    swift_allocError();
    v25 = v24;
    sub_25160354C(0);
    *v25 = &type metadata for ContributingDatum.CodableValue;
    sub_25163579C();
    sub_2516356DC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v42 + 8))(v13, v11);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  LODWORD(v43) = v21;
  if (v21)
  {
    LOBYTE(v48) = 1;
    sub_25160AA18();
    sub_25163578C();
    v39 = v11;
    LOBYTE(v45) = 0;
    sub_25160B1B0();
    v22 = v18;
    sub_2516357FC();
    v27 = v48;
    v28 = v49;
    v29 = v50;
    v55 = 1;
    sub_2516357FC();
    (*(v38 + 8))(v16, v22);
    v30 = v29;
    v31 = v27;
    v32 = v28;
    (*(v42 + 8))(v13, v39);
    swift_unknownObjectRelease();
    v33 = v45;
    v34 = v46;
    v35 = v47;
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_25160AA6C();
    sub_25163578C();
    sub_25160B1B0();
    sub_2516357FC();
    (*(v17 + 8))(v9, v7);
    (*(v42 + 8))(v13, v11);
    swift_unknownObjectRelease();
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v31 = v48;
    v32 = v49;
    v30 = v50;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v44);
  v36 = v37;
  *v37 = v31;
  v36[1] = v32;
  v36[2] = v30;
  v36[3] = v33;
  v36[4] = v34;
  v36[5] = v35;
  *(v36 + 48) = v43 & 1;
  return result;
}

unint64_t sub_25160B1B0()
{
  result = qword_27F446F38;
  if (!qword_27F446F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F38);
  }

  return result;
}

void sub_25160B204(uint64_t a1)
{
  if (!qword_27F446F40)
  {
    sub_251609618(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F446F40);
    }
  }
}

uint64_t sub_25160B268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_2516096D4(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_25160B280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25160B2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25160B3A4(uint64_t a1, int a2)
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

uint64_t sub_25160B3EC(uint64_t result, int a2, int a3)
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

unint64_t sub_25160B440()
{
  result = qword_27F446F48;
  if (!qword_27F446F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F48);
  }

  return result;
}

unint64_t sub_25160B498()
{
  result = qword_27F446F50;
  if (!qword_27F446F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F50);
  }

  return result;
}

unint64_t sub_25160B4F0()
{
  result = qword_27F446F58;
  if (!qword_27F446F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F58);
  }

  return result;
}

unint64_t sub_25160B548()
{
  result = qword_27F446F60;
  if (!qword_27F446F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F60);
  }

  return result;
}

unint64_t sub_25160B5A0()
{
  result = qword_27F446F68;
  if (!qword_27F446F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F68);
  }

  return result;
}

unint64_t sub_25160B5F8()
{
  result = qword_27F446F70;
  if (!qword_27F446F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F70);
  }

  return result;
}

unint64_t sub_25160B650()
{
  result = qword_27F446F78;
  if (!qword_27F446F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F78);
  }

  return result;
}

unint64_t sub_25160B6A8()
{
  result = qword_27F446F80;
  if (!qword_27F446F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F80);
  }

  return result;
}

unint64_t sub_25160B700()
{
  result = qword_27F446F88;
  if (!qword_27F446F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F88);
  }

  return result;
}

unint64_t sub_25160B758()
{
  result = qword_27F446F90;
  if (!qword_27F446F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446F90);
  }

  return result;
}

unint64_t sub_25160B7AC()
{
  result = qword_27F446FA0;
  if (!qword_27F446FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FA0);
  }

  return result;
}

uint64_t sub_25160B800(void *a1)
{
  sub_25160B9EC(0, &qword_27F446FA8, sub_25160B7AC, &type metadata for CodableQuantity.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160B7AC();
  v9 = v8;
  sub_25163596C();
  if (!v1)
  {
    v11[15] = 0;
    sub_2516357DC();
    v11[14] = 1;
    v9 = sub_2516357BC();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_25160B9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ClassificationQuality.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClassificationQuality.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25160BBA8()
{
  result = qword_27F446FB0;
  if (!qword_27F446FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FB0);
  }

  return result;
}

unint64_t sub_25160BC00()
{
  result = qword_27F446FB8;
  if (!qword_27F446FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FB8);
  }

  return result;
}

unint64_t sub_25160BC58()
{
  result = qword_27F446FC0;
  if (!qword_27F446FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FC0);
  }

  return result;
}

uint64_t ClassificationFactorSet.init(age:sex:wheelchairUse:pregnancyStatus:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t ClassificationFactorSet.age.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ClassificationFactorSet.hash(into:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 32);
  if (*(v0 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v4 = *v0;
    sub_25163592C();
    MEMORY[0x25307C1E0](v4);
  }

  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v1);
  return MEMORY[0x25307C1E0](v3);
}

uint64_t ClassificationFactorSet.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  sub_25163590C();
  sub_25163592C();
  if (v2 != 1)
  {
    MEMORY[0x25307C1E0](v1);
  }

  MEMORY[0x25307C1E0](v4);
  MEMORY[0x25307C1E0](v3);
  MEMORY[0x25307C1E0](v5);
  return sub_25163594C();
}

uint64_t sub_25160BEE0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0 + 32);
  if (*(v0 + 8) == 1)
  {
    sub_25163592C();
  }

  else
  {
    v4 = *v0;
    sub_25163592C();
    MEMORY[0x25307C1E0](v4);
  }

  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v1);
  return MEMORY[0x25307C1E0](v3);
}

uint64_t sub_25160BF60(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  sub_25163590C();
  sub_25163592C();
  if (v3 != 1)
  {
    MEMORY[0x25307C1E0](v2);
  }

  MEMORY[0x25307C1E0](v5);
  MEMORY[0x25307C1E0](v4);
  MEMORY[0x25307C1E0](v6);
  return sub_25163594C();
}

BOOL _s13HealthDomains23ClassificationFactorSetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (v3 == v6)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    if (v7 != 1 || v2 != v5)
    {
      return 0;
    }

    return v4 == *(a2 + 32);
  }

  result = 0;
  if ((*(a2 + 8) & 1) == 0)
  {
    v11 = *a1 == *a2 && v3 == v6;
    if (v11 && v2 == v5)
    {
      return v4 == *(a2 + 32);
    }
  }

  return result;
}

unint64_t sub_25160C074()
{
  result = qword_27F446FC8;
  if (!qword_27F446FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FC8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25160C0DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25160C120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t StandardMeasure.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t StandardMeasure.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StandardMeasure.symbol.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall StandardMeasure.init(identifier:name:symbol:)(HealthDomains::StandardMeasure *__return_ptr retstr, HealthDomains::MeasureIdentifier identifier, Swift::String name, Swift::String symbol)
{
  v4 = *(identifier.identifier._countAndFlagsBits + 8);
  retstr->identifier.identifier._countAndFlagsBits = *identifier.identifier._countAndFlagsBits;
  retstr->identifier.identifier._object = v4;
  retstr->name._countAndFlagsBits = identifier.identifier._object;
  *&retstr->name._object = name;
  retstr->symbol._object = symbol._countAndFlagsBits;
}

uint64_t sub_25160C1F8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25160C228()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25160C26C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25160C2B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25160C338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2516358DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25160C3C0(uint64_t a1)
{
  v2 = sub_25160C768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160C3FC(uint64_t a1)
{
  v2 = sub_25160C768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25160C438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25160C7BC(0, &qword_27F446FE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160C768();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_2516357BC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_25160C5C4(void *a1)
{
  sub_25160C7BC(0, &qword_27F446FD8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160C768();
  sub_25163597C();
  sub_25163584C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25160C714()
{
  result = qword_27F446FD0;
  if (!qword_27F446FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FD0);
  }

  return result;
}

unint64_t sub_25160C768()
{
  result = qword_27F446FE0;
  if (!qword_27F446FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FE0);
  }

  return result;
}

void sub_25160C7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25160C768();
    v7 = a3(a1, &type metadata for ClassificationTypeRawID.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25160C834()
{
  result = qword_27F446FF0;
  if (!qword_27F446FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FF0);
  }

  return result;
}

unint64_t sub_25160C88C()
{
  result = qword_27F446FF8;
  if (!qword_27F446FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F446FF8);
  }

  return result;
}

unint64_t sub_25160C8E4()
{
  result = qword_27F447000;
  if (!qword_27F447000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447000);
  }

  return result;
}

uint64_t WheelchairUseTimeline.wheelchairUse(at:)(uint64_t a1)
{
  sub_25160D804(0, &qword_27F446CB0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + *(type metadata accessor for WheelchairUseTimeline(0) + 20));
  v14 = a1;
  sub_2515FAA38(sub_25160D064, v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25160D0F4(v5);
    return 0;
  }

  else
  {
    sub_25160D68C(v5, v9, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
    v11 = *&v9[*(v6 + 20)];
    sub_25160D16C(v9);
  }

  return v11;
}

uint64_t WheelchairUseTimeline.ChangeMoment.init(date:wheelchairUse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25163516C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static WheelchairUseTimeline.ChangeMoment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25163514C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t WheelchairUseTimeline.ChangeMoment.hash(into:)(uint64_t a1)
{
  sub_25163516C();
  sub_25160D644(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v2 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  return MEMORY[0x25307C1E0](*(v1 + *(v2 + 20)));
}

uint64_t WheelchairUseTimeline.ChangeMoment.hashValue.getter()
{
  sub_25163590C();
  sub_25163516C();
  sub_25160D644(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  v1 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  MEMORY[0x25307C1E0](*(v0 + *(v1 + 20)));
  return sub_25163594C();
}

uint64_t sub_25160CD20(uint64_t a1)
{
  sub_25163590C();
  sub_25163516C();
  sub_25160D644(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  MEMORY[0x25307C1E0](*(v1 + *(a1 + 20)));
  return sub_25163594C();
}

uint64_t sub_25160CDC4(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_25160D644(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  return MEMORY[0x25307C1E0](*(v2 + *(a2 + 20)));
}

uint64_t sub_25160CE50(uint64_t a1, uint64_t a2)
{
  sub_25163590C();
  sub_25163516C();
  sub_25160D644(&qword_27F446BA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2516352CC();
  MEMORY[0x25307C1E0](*(v2 + *(a2 + 20)));
  return sub_25163594C();
}

uint64_t WheelchairUseTimeline.changeMoments.getter()
{
  type metadata accessor for WheelchairUseTimeline(0);
}

uint64_t WheelchairUseTimeline.init(dateRange:changeMoments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25160D68C(a1, a3, sub_2515F8380);
  result = type metadata accessor for WheelchairUseTimeline(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_25160CFD4(uint64_t a1, uint64_t a2)
{
  sub_25163516C();
  sub_25160D644(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return sub_25163530C() & 1;
}

uint64_t sub_25160D064(uint64_t a1)
{
  sub_25163516C();
  sub_25160D644(&qword_280DD7318, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  return sub_25163530C() & 1;
}

uint64_t sub_25160D0F4(uint64_t a1)
{
  sub_25160D804(0, &qword_27F446CB0, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25160D16C(uint64_t a1)
{
  v2 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WheelchairUseTimeline.init(dateRange:wheelchairChangeSamples:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v49 = sub_25163516C();
  v4 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(0);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25163576C())
  {
    v14 = 0;
    v42 = a2 & 0xFFFFFFFFFFFFFF8;
    v43 = a2 & 0xC000000000000001;
    v15 = MEMORY[0x277D84F90];
    v16 = *MEMORY[0x277CCDEC0];
    v40 = (v4 + 32);
    v41 = v16;
    while (1)
    {
      if (v43)
      {
        v17 = MEMORY[0x25307BF90](v14, a2);
      }

      else
      {
        if (v14 >= *(v42 + 16))
        {
          goto LABEL_25;
        }

        v17 = *(a2 + 8 * v14 + 32);
      }

      v4 = v17;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = v12;
      v20 = [v17 categoryType];
      v21 = [v20 identifier];

      v22 = sub_25163537C();
      v24 = v23;

      v25 = sub_25163537C();
      v12 = v26;
      if (v22 == v25 && v24 == v26)
      {
      }

      else
      {
        v28 = sub_2516358DC();

        if ((v28 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v29 = [v4 value];
      v30 = [v4 startDate];
      v31 = v48;
      sub_25163515C();

      if (v29 != 2)
      {
        v29 = v29 == 1;
      }

      v32 = v44;
      (*v40)(v44, v31, v49);
      *&v32[*(v47 + 20)] = v29;
      v33 = v32;
      v34 = v45;
      sub_25160D68C(v33, v45, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      v12 = v19;
      sub_25160D68C(v34, v19, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2515F8B28(0, v15[2] + 1, 1, v15);
      }

      v4 = v15[2];
      v35 = v15[3];
      if (v4 >= v35 >> 1)
      {
        v15 = sub_2515F8B28((v35 > 1), v4 + 1, 1, v15);
      }

      v15[2] = v4 + 1;
      sub_25160D68C(v19, v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v4, type metadata accessor for WheelchairUseTimeline.ChangeMoment);
      ++v14;
      if (v18 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_29:

  v36 = v39;
  sub_25160D68C(v38, v39, sub_2515F8380);
  result = type metadata accessor for WheelchairUseTimeline(0);
  *(v36 + *(result + 20)) = v15;
  return result;
}

uint64_t sub_25160D644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25160D68C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25160D764(uint64_t a1)
{
  sub_2515F8380(319);
  if (v1 <= 0x3F)
  {
    sub_25160D804(319, &qword_27F447020, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25160D804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WheelchairUseTimeline.ChangeMoment(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_25160D88C(uint64_t a1)
{
  sub_25163516C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWheelchairUse(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ConstellationIdentifier.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConstellationIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25160DA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_251610D64();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_25160DAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_251610D64();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

HealthDomains::ConstellationIdentifier_optional __swiftcall ConstellationIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.identifier = rawValue;
  return result;
}

uint64_t Constellation.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Constellation.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Constellation.symbol.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_25160DBAC(uint64_t a1)
{
  v2 = sub_25160E1B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160DBE8(uint64_t a1)
{
  v2 = sub_25160E1B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25160DC24()
{
  if (*v0)
  {
    return 0x6E7574726F70706FLL;
  }

  else
  {
    return 0x74617262656C6563;
  }
}

uint64_t sub_25160DC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617262656C6563 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E7574726F70706FLL && a2 == 0xEB00000000797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_25160DD54(uint64_t a1)
{
  v2 = sub_25160E204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160DD90(uint64_t a1)
{
  v2 = sub_25160E204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25160DDCC(uint64_t a1)
{
  v2 = sub_25160E15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160DE08(uint64_t a1)
{
  v2 = sub_25160E15C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Constellation.Kind.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_251610078(0, &qword_27F447038, sub_25160E15C, &type metadata for Constellation.Kind.OpportunityCodingKeys, MEMORY[0x277D84538]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - v5;
  sub_251610078(0, &qword_27F447048, sub_25160E1B0, &type metadata for Constellation.Kind.CelebrationCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v20 = &v19 - v7;
  sub_251610078(0, &qword_27F447058, sub_25160E204, &type metadata for Constellation.Kind.CodingKeys, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160E204();
  sub_25163597C();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    sub_25160E15C();
    v15 = v23;
    sub_25163582C();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    sub_25160E1B0();
    v15 = v20;
    sub_25163582C();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

unint64_t sub_25160E15C()
{
  result = qword_27F447040;
  if (!qword_27F447040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447040);
  }

  return result;
}

unint64_t sub_25160E1B0()
{
  result = qword_27F447050;
  if (!qword_27F447050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447050);
  }

  return result;
}

unint64_t sub_25160E204()
{
  result = qword_27F447060;
  if (!qword_27F447060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447060);
  }

  return result;
}

uint64_t Constellation.Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_251610078(0, &qword_27F447068, sub_25160E15C, &type metadata for Constellation.Kind.OpportunityCodingKeys, MEMORY[0x277D844C8]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - v5;
  sub_251610078(0, &qword_27F447070, sub_25160E1B0, &type metadata for Constellation.Kind.CelebrationCodingKeys, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  sub_251610078(0, &qword_27F447078, sub_25160E204, &type metadata for Constellation.Kind.CodingKeys, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160E204();
  v14 = v34;
  sub_25163596C();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = sub_25163580C();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = sub_251603D80();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = sub_2516356FC();
    swift_allocError();
    v24 = v23;
    sub_25160354C(0);
    *v24 = &type metadata for Constellation.Kind;
    sub_25163579C();
    sub_2516356DC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    sub_25160E15C();
    sub_25163578C();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    sub_25160E1B0();
    sub_25163578C();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_25160E770(uint64_t a1)
{
  v2 = sub_25160ED00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160E7AC(uint64_t a1)
{
  v2 = sub_25160ED00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25160E7E8()
{
  if (*v0)
  {
    return 0x726F697661686562;
  }

  else
  {
    return 0x68746C616568;
  }
}

uint64_t sub_25160E820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x68746C616568 && a2 == 0xE600000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F697661686562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_25160E8F8(uint64_t a1)
{
  v2 = sub_25160EDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160E934(uint64_t a1)
{
  v2 = sub_25160EDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25160E970(uint64_t a1)
{
  v2 = sub_25160ED54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160E9AC(uint64_t a1)
{
  v2 = sub_25160ED54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Constellation.Affect.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_251610078(0, &qword_27F447080, sub_25160ED00, &type metadata for Constellation.Affect.BehaviorCodingKeys, MEMORY[0x277D84538]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - v5;
  sub_251610078(0, &qword_27F447090, sub_25160ED54, &type metadata for Constellation.Affect.HealthCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v20 = &v19 - v7;
  sub_251610078(0, &qword_27F4470A0, sub_25160EDA8, &type metadata for Constellation.Affect.CodingKeys, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160EDA8();
  sub_25163597C();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    sub_25160ED00();
    v15 = v23;
    sub_25163582C();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    sub_25160ED54();
    v15 = v20;
    sub_25163582C();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

unint64_t sub_25160ED00()
{
  result = qword_27F447088;
  if (!qword_27F447088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447088);
  }

  return result;
}

unint64_t sub_25160ED54()
{
  result = qword_27F447098;
  if (!qword_27F447098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447098);
  }

  return result;
}

unint64_t sub_25160EDA8()
{
  result = qword_27F4470A8;
  if (!qword_27F4470A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4470A8);
  }

  return result;
}

uint64_t Constellation.Affect.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_251610078(0, &qword_27F4470B0, sub_25160ED00, &type metadata for Constellation.Affect.BehaviorCodingKeys, MEMORY[0x277D844C8]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - v5;
  sub_251610078(0, &qword_27F4470B8, sub_25160ED54, &type metadata for Constellation.Affect.HealthCodingKeys, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  sub_251610078(0, &qword_27F4470C0, sub_25160EDA8, &type metadata for Constellation.Affect.CodingKeys, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160EDA8();
  v14 = v34;
  sub_25163596C();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = sub_25163580C();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = sub_251603D80();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = sub_2516356FC();
    swift_allocError();
    v24 = v23;
    sub_25160354C(0);
    *v24 = &type metadata for Constellation.Affect;
    sub_25163579C();
    sub_2516356DC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    sub_25160ED00();
    sub_25163578C();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    sub_25160ED54();
    sub_25163578C();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void __swiftcall Constellation.init(identifier:name:symbol:kind:affect:)(HealthDomains::Constellation *__return_ptr retstr, HealthDomains::ConstellationIdentifier identifier, Swift::String name, Swift::String symbol, HealthDomains::Constellation::Kind kind, HealthDomains::Constellation::Affect affect)
{
  v6 = *(identifier.identifier._countAndFlagsBits + 8);
  v7 = *symbol._object;
  v8 = *kind;
  retstr->identifier.identifier._countAndFlagsBits = *identifier.identifier._countAndFlagsBits;
  retstr->identifier.identifier._object = v6;
  retstr->name._countAndFlagsBits = identifier.identifier._object;
  *&retstr->name._object = name;
  retstr->symbol._object = symbol._countAndFlagsBits;
  retstr->kind = v7;
  retstr->affect = v8;
}

uint64_t sub_25160F324()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C6F626D7973;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x746365666661;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_25160F3AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251610BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25160F3D4(uint64_t a1)
{
  v2 = sub_25160FF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25160F410(uint64_t a1)
{
  v2 = sub_25160FF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Constellation.encode(to:)(void *a1)
{
  sub_251610078(0, &qword_27F4470C8, sub_25160FF28, &type metadata for Constellation.CodingKeys, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v22 = v1[3];
  v23 = v9;
  v10 = v1[4];
  v20 = v1[5];
  v21 = v10;
  v27 = *(v1 + 48);
  HIDWORD(v19) = *(v1 + 49);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_25160FF28();

  sub_25163597C();
  v25 = v7;
  v26 = v8;
  v28 = 0;
  sub_25160FF7C();
  v15 = v24;
  sub_25163588C();
  if (v15)
  {
  }

  else
  {
    v16 = v27;
    v17 = BYTE4(v19);

    LOBYTE(v25) = 1;
    sub_25163584C();
    LOBYTE(v25) = 2;
    sub_25163584C();
    LOBYTE(v25) = v16;
    v28 = 3;
    sub_25160FFD0();
    sub_25163588C();
    LOBYTE(v25) = v17;
    v28 = 4;
    sub_251610024();
    sub_25163588C();
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t Constellation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  MEMORY[0x25307C1E0](v2);
  return MEMORY[0x25307C1E0](v3);
}

uint64_t Constellation.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 49);
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  MEMORY[0x25307C1E0](v1);
  MEMORY[0x25307C1E0](v2);
  return sub_25163594C();
}

uint64_t Constellation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_251610078(0, &qword_27F4470F0, sub_25160FF28, &type metadata for Constellation.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25160FF28();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v33;
  LOBYTE(v34) = 0;
  sub_2516100E0();
  v11 = v5;
  sub_2516357FC();
  v12 = v38;
  v32 = v39;
  LOBYTE(v38) = 1;
  v13 = sub_2516357BC();
  v31 = v14;
  v28 = v13;
  v29 = v12;
  LOBYTE(v38) = 2;
  v15 = a1;
  v16 = sub_2516357BC();
  v30 = v17;
  LOBYTE(v34) = 3;
  sub_251610134();
  sub_2516357FC();
  v46 = v38;
  v47 = 4;
  sub_251610188();
  sub_2516357FC();
  (*(v9 + 8))(v8, v11);
  v26 = v48;
  v18 = v28;
  v19 = v29;
  v21 = v31;
  v20 = v32;
  *&v34 = v29;
  *(&v34 + 1) = v32;
  *&v35 = v28;
  *(&v35 + 1) = v31;
  v27 = v16;
  v22 = v30;
  *&v36 = v16;
  *(&v36 + 1) = v30;
  LOBYTE(v37) = v46;
  HIBYTE(v37) = v48;
  v23 = v35;
  *v10 = v34;
  *(v10 + 16) = v23;
  *(v10 + 32) = v36;
  *(v10 + 48) = v37;
  sub_2516101DC(&v34, &v38);
  __swift_destroy_boxed_opaque_existential_1(v15);
  v38 = v19;
  v39 = v20;
  v40 = v18;
  v41 = v21;
  v42 = v27;
  v43 = v22;
  v44 = v46;
  v45 = v26;
  return sub_251610214(&v38);
}

uint64_t sub_25160FC20()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 49);
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  MEMORY[0x25307C1E0](v1);
  MEMORY[0x25307C1E0](v2);
  return sub_25163594C();
}

uint64_t sub_25160FCD4(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  MEMORY[0x25307C1E0](v2);
  return MEMORY[0x25307C1E0](v3);
}

uint64_t sub_25160FD58(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  sub_25163590C();
  sub_25163539C();
  sub_25163539C();
  sub_25163539C();
  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v3);
  return sub_25163594C();
}

uint64_t _s13HealthDomains13ConstellationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 49);
  v15 = *(a1 + 49);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_2516358DC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      return 0;
    }

    return v15 ^ v14 ^ 1u;
  }

  v13 = sub_2516358DC();
  result = 0;
  if ((v13 & 1) != 0 && ((v6 ^ v11) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

unint64_t sub_25160FF28()
{
  result = qword_27F4470D0;
  if (!qword_27F4470D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4470D0);
  }

  return result;
}

unint64_t sub_25160FF7C()
{
  result = qword_27F4470D8;
  if (!qword_27F4470D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4470D8);
  }

  return result;
}

unint64_t sub_25160FFD0()
{
  result = qword_27F4470E0;
  if (!qword_27F4470E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4470E0);
  }

  return result;
}

unint64_t sub_251610024()
{
  result = qword_27F4470E8;
  if (!qword_27F4470E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4470E8);
  }

  return result;
}

void sub_251610078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2516100E0()
{
  result = qword_27F4470F8;
  if (!qword_27F4470F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4470F8);
  }

  return result;
}

unint64_t sub_251610134()
{
  result = qword_27F447100;
  if (!qword_27F447100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447100);
  }

  return result;
}

unint64_t sub_251610188()
{
  result = qword_27F447108;
  if (!qword_27F447108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447108);
  }

  return result;
}

unint64_t sub_251610248()
{
  result = qword_27F447110;
  if (!qword_27F447110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447110);
  }

  return result;
}

unint64_t sub_2516102A0()
{
  result = qword_27F447118;
  if (!qword_27F447118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447118);
  }

  return result;
}

unint64_t sub_251610304()
{
  result = qword_27F447120;
  if (!qword_27F447120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447120);
  }

  return result;
}

unint64_t sub_251610374()
{
  result = qword_27F447128;
  if (!qword_27F447128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447128);
  }

  return result;
}

unint64_t sub_2516103CC()
{
  result = qword_27F447130;
  if (!qword_27F447130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447130);
  }

  return result;
}

unint64_t sub_251610424()
{
  result = qword_27F447138;
  if (!qword_27F447138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447138);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2516104A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_2516104EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2516105E0()
{
  result = qword_27F447140;
  if (!qword_27F447140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447140);
  }

  return result;
}

unint64_t sub_251610638()
{
  result = qword_27F447148;
  if (!qword_27F447148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447148);
  }

  return result;
}

unint64_t sub_251610690()
{
  result = qword_27F447150;
  if (!qword_27F447150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447150);
  }

  return result;
}

unint64_t sub_2516106E8()
{
  result = qword_27F447158;
  if (!qword_27F447158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447158);
  }

  return result;
}

unint64_t sub_251610740()
{
  result = qword_27F447160;
  if (!qword_27F447160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447160);
  }

  return result;
}

unint64_t sub_251610798()
{
  result = qword_27F447168;
  if (!qword_27F447168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447168);
  }

  return result;
}

unint64_t sub_2516107F0()
{
  result = qword_27F447170;
  if (!qword_27F447170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447170);
  }

  return result;
}

unint64_t sub_251610848()
{
  result = qword_27F447178;
  if (!qword_27F447178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447178);
  }

  return result;
}

unint64_t sub_2516108A0()
{
  result = qword_27F447180;
  if (!qword_27F447180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447180);
  }

  return result;
}

unint64_t sub_2516108F8()
{
  result = qword_27F447188;
  if (!qword_27F447188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447188);
  }

  return result;
}

unint64_t sub_251610950()
{
  result = qword_27F447190;
  if (!qword_27F447190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447190);
  }

  return result;
}

unint64_t sub_2516109A8()
{
  result = qword_27F447198;
  if (!qword_27F447198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447198);
  }

  return result;
}

unint64_t sub_251610A00()
{
  result = qword_27F4471A0;
  if (!qword_27F4471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471A0);
  }

  return result;
}

unint64_t sub_251610A58()
{
  result = qword_27F4471A8;
  if (!qword_27F4471A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471A8);
  }

  return result;
}

unint64_t sub_251610AB0()
{
  result = qword_27F4471B0;
  if (!qword_27F4471B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471B0);
  }

  return result;
}

unint64_t sub_251610B08()
{
  result = qword_27F4471B8;
  if (!qword_27F4471B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471B8);
  }

  return result;
}

unint64_t sub_251610B60()
{
  result = qword_27F4471C0;
  if (!qword_27F4471C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471C0);
  }

  return result;
}

uint64_t sub_251610BB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746365666661 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2516358DC();

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

unint64_t sub_251610D64()
{
  result = qword_27F4471C8;
  if (!qword_27F4471C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471C8);
  }

  return result;
}

id sub_251610DE0()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F4471D0 = result;
  return result;
}

id static NSBundle.healthDomains.getter()
{
  if (qword_27F446AE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4471D0;

  return v1;
}

uint64_t Array<A>.levels.getter()
{
  nullsub_1();
}

uint64_t static Array<A>.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2516354CC();
  sub_2516358BC();
  swift_allocObject();
  v3 = sub_25163545C();
  sub_2516356AC();
  sub_2516354CC();
  return v3;
}

uint64_t sub_251610F60()
{
  nullsub_1();
}

uint64_t sub_251610FAC(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t ClassificationFactorTimelineProvider.factorTimeline(of:over:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2516110B8, 0, 0);
}

uint64_t sub_2516110B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = type metadata accessor for ClassificationFactorTimeline(0);
  *v5 = v0;
  v5[1] = sub_2516111CC;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000021, 0x800000025163B8A0, sub_251611504, v3, v6);
}

uint64_t sub_2516111CC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251611308, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_251611308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25161136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a6;
  sub_251611730(0, &qword_27F4471D8, MEMORY[0x277D85670]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  (*(a7 + 8))(a3, a4, a5, sub_2516116A4, v18, v21, a7);
}

uint64_t sub_251611528(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationFactorTimeline(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251611730(0, &qword_27F446E28, MEMORY[0x277D84C48]);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_2516117A8(a1, v9 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_251611730(0, &qword_27F4471D8, MEMORY[0x277D85670]);
    return sub_2516354FC();
  }

  else
  {
    sub_251611828(v7, v4);
    sub_251611730(0, &qword_27F4471D8, MEMORY[0x277D85670]);
    return sub_25163550C();
  }
}

uint64_t sub_2516116A4(uint64_t a1)
{
  sub_251611730(0, &qword_27F4471D8, MEMORY[0x277D85670]);

  return sub_251611528(a1);
}

void sub_251611730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClassificationFactorTimeline(255);
    v7 = sub_2516041EC();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2516117A8(uint64_t a1, uint64_t a2)
{
  sub_251611730(0, &qword_27F446E28, MEMORY[0x277D84C48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251611828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationFactorTimeline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ClassificationLevelDefinition.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void ClassificationLevelDefinition.quality.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t ClassificationLevelDefinition.qualityGroup.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t ClassificationLevelDefinition.localizedTitle.getter()
{
  v1 = sub_25163518C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25163534C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  sub_25163569C();

  MEMORY[0x25307BC70](v3, v4);
  MEMORY[0x25307BC70](0x454C5449545FLL, 0xE600000000000000);
  sub_25163535C();
  if (qword_27F446AE0 != -1)
  {
    swift_once();
  }

  v6 = qword_27F4471D0;
  sub_25163517C();
  return sub_25163538C();
}

uint64_t sub_251611A94()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x477974696C617571;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E61526E497369;
  if (v1 != 1)
  {
    v5 = 0x7974696C617571;
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

uint64_t sub_251611B5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251612DEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251611B90(uint64_t a1)
{
  v2 = sub_251612804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251611BCC(uint64_t a1)
{
  v2 = sub_251612804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassificationLevelDefinition.encode(to:)(void *a1)
{
  sub_251612900(0, &qword_27F4471E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v27 = *(v1 + 16);
  v23 = v1[3];
  v22 = *(v1 + 32);
  v10 = v1[5];
  v20 = v1[6];
  v21 = v10;
  v19 = *(v1 + 56);
  v11 = v1[9];
  v18[0] = v1[8];
  v18[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251612804();

  sub_25163597C();
  v25 = v9;
  v26 = v8;
  v28 = 0;
  sub_251609DEC();
  v12 = v24;
  sub_25163588C();
  if (v12)
  {
  }

  else
  {
    v13 = v22;
    v14 = v23;
    v16 = v20;
    v15 = v21;

    LOBYTE(v25) = 1;
    sub_25163585C();
    v25 = v14;
    LOBYTE(v26) = v13;
    v28 = 2;
    sub_251612858();
    sub_25163588C();
    v25 = v15;
    v26 = v16;
    v28 = 3;
    sub_2516128AC();

    sub_25163583C();

    LOBYTE(v25) = 4;
    sub_25163585C();
    LOBYTE(v25) = 5;
    sub_25163584C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ClassificationLevelDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  sub_25163539C();
  sub_25163592C();
  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v3);
  sub_25163592C();
  if (v4)
  {
    sub_25163539C();
  }

  sub_25163592C();

  return sub_25163539C();
}

uint64_t ClassificationLevelDefinition.hashValue.getter()
{
  sub_25163590C();
  ClassificationLevelDefinition.hash(into:)(v1);
  return sub_25163594C();
}

uint64_t ClassificationLevelDefinition.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_251612900(0, &qword_27F447200, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251612804();
  sub_25163596C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  sub_251609FE0();
  sub_2516357FC();
  v11 = v34;
  v10 = v35;
  LOBYTE(v34) = 1;
  LODWORD(v51) = sub_2516357CC();
  LOBYTE(v29) = 2;
  sub_251612964();
  sub_2516357FC();
  v28 = v34;
  v27 = v35;
  LOBYTE(v29) = 3;
  sub_2516129B8();
  sub_2516357AC();
  v25 = v34;
  v26 = v35;
  LOBYTE(v34) = 4;
  v24 = sub_2516357CC();
  v47 = 5;
  v12 = sub_2516357BC();
  v13 = v51 & 1;
  v24 &= 1u;
  v14 = *(v7 + 8);
  v51 = v12;
  v15 = v9;
  v17 = v16;
  v14(v15, v6);
  *&v29 = v11;
  *(&v29 + 1) = v10;
  LOBYTE(v30) = v13;
  *(&v30 + 1) = v50[0];
  DWORD1(v30) = *(v50 + 3);
  *(&v30 + 1) = v28;
  v18 = v27;
  LOBYTE(v31) = v27;
  *(&v31 + 1) = *v49;
  DWORD1(v31) = *&v49[3];
  v19 = v26;
  *(&v31 + 1) = v25;
  *&v32 = v26;
  BYTE8(v32) = v24;
  *(&v32 + 9) = *v48;
  HIDWORD(v32) = *&v48[3];
  *&v33 = v51;
  *(&v33 + 1) = v17;
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  v21 = v30;
  *a2 = v29;
  a2[1] = v21;
  a2[4] = v33;
  sub_251612A0C(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34 = v11;
  v35 = v10;
  v36 = v13;
  *v37 = v50[0];
  *&v37[3] = *(v50 + 3);
  v38 = v28;
  v39 = v18;
  *v40 = *v49;
  *&v40[3] = *&v49[3];
  v41 = v25;
  v42 = v19;
  v43 = v24;
  *v44 = *v48;
  *&v44[3] = *&v48[3];
  v45 = v51;
  v46 = v17;
  return sub_251612A44(&v34);
}

uint64_t sub_25161248C()
{
  sub_25163590C();
  ClassificationLevelDefinition.hash(into:)(v1);
  return sub_25163594C();
}

uint64_t sub_2516124D0(uint64_t a1)
{
  sub_25163590C();
  ClassificationLevelDefinition.hash(into:)(v2);
  return sub_25163594C();
}

void static ClassificationLevelDefinition.subscript.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x800000025163B740;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x4E574F4E4B4E55;
  *(a1 + 72) = 0xE700000000000000;
}

void static ClassificationLevelDefinition.unknown.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x800000025163B740;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x4E574F4E4B4E55;
  *(a1 + 72) = 0xE700000000000000;
}

void static ClassificationLevelDefinition.unavailable.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001FLL;
  *(a1 + 8) = 0x800000025163B720;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0x414C494156414E55;
  *(a1 + 72) = 0xEB00000000454C42;
}

uint64_t _s13HealthDomains29ClassificationLevelDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = a1[5];
  v5 = a1[6];
  v7 = *(a1 + 56);
  v24 = a1[9];
  v25 = a1[8];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = *(a2 + 32);
  v11 = a2[5];
  v12 = a2[6];
  v13 = *(a2 + 56);
  v23 = a2[8];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    result = 0;
    if (v2 != v8)
    {
      return result;
    }

    if (v3 != v9)
    {
      return result;
    }

    v22 = a2[9];
    if (v4 != v10)
    {
      return result;
    }
  }

  else
  {
    v20 = a2[5];
    v21 = a1[6];
    v15 = *(a1 + 56);
    v22 = a2[9];
    v16 = sub_2516358DC();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

    if (v2 != v8)
    {
      return result;
    }

    if (v3 != v9)
    {
      return result;
    }

    v7 = v15;
    v11 = v20;
    v5 = v21;
    if (v4 != v10)
    {
      return result;
    }
  }

  if (!v5)
  {
    if (!v12)
    {
      v17 = v7;

      if (v17 == v13)
      {
        goto LABEL_23;
      }
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (v6 != v11 || v5 != v12)
  {
    v18 = v7;
    v19 = sub_2516358DC();
    result = 0;
    if (v19 & 1) == 0 || ((v18 ^ v13))
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v7 != v13)
  {
    return 0;
  }

LABEL_23:
  if (v25 == v23 && v24 == v22)
  {
    return 1;
  }

  return sub_2516358DC();
}

unint64_t sub_251612804()
{
  result = qword_27F4471E8;
  if (!qword_27F4471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471E8);
  }

  return result;
}

unint64_t sub_251612858()
{
  result = qword_27F4471F0;
  if (!qword_27F4471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471F0);
  }

  return result;
}

unint64_t sub_2516128AC()
{
  result = qword_27F4471F8;
  if (!qword_27F4471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4471F8);
  }

  return result;
}

void sub_251612900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251612804();
    v7 = a3(a1, &type metadata for ClassificationLevelDefinition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251612964()
{
  result = qword_27F447208;
  if (!qword_27F447208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447208);
  }

  return result;
}

unint64_t sub_2516129B8()
{
  result = qword_27F447210;
  if (!qword_27F447210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447210);
  }

  return result;
}

unint64_t sub_251612A78()
{
  result = qword_27F447218;
  if (!qword_27F447218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447218);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_251612AE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_251612B30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassificationLevelDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClassificationLevelDefinition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_251612CE8()
{
  result = qword_27F447220;
  if (!qword_27F447220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447220);
  }

  return result;
}

unint64_t sub_251612D40()
{
  result = qword_27F447228;
  if (!qword_27F447228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447228);
  }

  return result;
}

unint64_t sub_251612D98()
{
  result = qword_27F447230;
  if (!qword_27F447230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447230);
  }

  return result;
}

uint64_t sub_251612DEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E61526E497369 && a2 == 0xE900000000000065 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x477974696C617571 && a2 == 0xEC00000070756F72 || (sub_2516358DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025163B8D0 == a2 || (sub_2516358DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025163B8F0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t MeasurementClassifierParameters.maximumWindowDuration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

HealthDomains::MeasurementClassifierParameters __swiftcall MeasurementClassifierParameters.init(maximumWindowDuration:maximumDurationBetweenMeasurements:)(Swift::Double_optional maximumWindowDuration, Swift::Double maximumDurationBetweenMeasurements)
{
  *v3 = *&maximumWindowDuration.is_nil;
  *(v3 + 8) = v2 & 1;
  *(v3 + 16) = maximumWindowDuration.value;
  result.maximumWindowDuration.value = maximumWindowDuration.value;
  result.maximumWindowDuration.is_nil = maximumWindowDuration.is_nil;
  result.maximumDurationBetweenMeasurements = maximumDurationBetweenMeasurements;
  return result;
}

void static MeasurementClassifierParameters.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x415DFE2000000000;
}

void static MeasurementClassifierParameters.aboutThirteenWeeksOfPrefetching.getter(uint64_t a1@<X8>)
{
  *a1 = 0x415DFE2000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x415DFE2000000000;
}

uint64_t getEnumTagSinglePayload for MeasurementClassifierParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeasurementClassifierParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_25161310C(void *a1, int a2)
{
  v26 = a2;
  v3 = MEMORY[0x277D84538];
  sub_251614B88(0, &qword_27F447288, sub_251614310, &type metadata for ClassificationQuality.Polarity.OverCodingKeys, MEMORY[0x277D84538]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - v5;
  sub_251614B88(0, &qword_27F447298, sub_251614364, &type metadata for ClassificationQuality.Polarity.AgnosticCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_251614B88(0, &qword_27F4472A8, sub_2516143B8, &type metadata for ClassificationQuality.Polarity.UnderCodingKeys, v3);
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_251614B88(0, &qword_27F4472B8, sub_25161440C, &type metadata for ClassificationQuality.Polarity.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25161440C();
  sub_25163597C();
  if (v26)
  {
    if (v26 == 1)
    {
      v28 = 1;
      sub_251614364();
      sub_25163582C();
      (*(v21 + 8))(v8, v22);
    }

    else
    {
      v29 = 2;
      sub_251614310();
      v17 = v23;
      sub_25163582C();
      (*(v24 + 8))(v17, v25);
    }
  }

  else
  {
    v27 = 0;
    sub_2516143B8();
    sub_25163582C();
    (*(v19 + 8))(v11, v20);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_251613508(uint64_t a1)
{
  v2 = sub_251614364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251613544(uint64_t a1)
{
  v2 = sub_251614364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251613580()
{
  v1 = 0x636974736F6E6761;
  if (*v0 != 1)
  {
    v1 = 1919252079;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265646E75;
  }
}

uint64_t sub_2516135D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251614460(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251613604(uint64_t a1)
{
  v2 = sub_25161440C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251613640(uint64_t a1)
{
  v2 = sub_25161440C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25161367C(uint64_t a1)
{
  v2 = sub_251614310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2516136B8(uint64_t a1)
{
  v2 = sub_251614310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2516136F4(uint64_t a1)
{
  v2 = sub_2516143B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251613730(uint64_t a1)
{
  v2 = sub_2516143B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25161376C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_251614574(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Bool __swiftcall ClassificationQuality.isComparable(to:)(HealthDomains::ClassificationQuality to)
{
  v2 = *(to.rawValue + 8);
  v3 = *(v1 + 8);
  return v3 == 1 || v2 == 1 || v3 == v2;
}

uint64_t sub_251613818()
{
  if (*v0)
  {
    return 0x79746972616C6F70;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_25161384C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_2516358DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79746972616C6F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2516358DC();

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

uint64_t sub_251613928(uint64_t a1)
{
  v2 = sub_251613B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251613964(uint64_t a1)
{
  v2 = sub_251613B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassificationQuality.encode(to:)(void *a1)
{
  sub_251614B88(0, &qword_27F447238, sub_251613B58, &type metadata for ClassificationQuality.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251613B58();
  sub_25163597C();
  v14 = 0;
  v8 = v10[1];
  sub_25163587C();
  if (!v8)
  {
    v13 = v11;
    v12 = 1;
    sub_251613BAC();
    sub_25163588C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_251613B58()
{
  result = qword_27F447240;
  if (!qword_27F447240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447240);
  }

  return result;
}

unint64_t sub_251613BAC()
{
  result = qword_27F447248;
  if (!qword_27F447248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447248);
  }

  return result;
}

uint64_t ClassificationQuality.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x25307C1E0](*v0);
  return MEMORY[0x25307C1E0](v1);
}

uint64_t ClassificationQuality.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  MEMORY[0x25307C1E0](v2);
  return sub_25163594C();
}

uint64_t ClassificationQuality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_251614B88(0, &qword_27F447250, sub_251613B58, &type metadata for ClassificationQuality.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251613B58();
  sub_25163596C();
  if (!v2)
  {
    v9 = v14;
    v17 = 0;
    v10 = sub_2516357EC();
    v15 = 1;
    sub_251613FE0();
    sub_2516357FC();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    *v9 = v10;
    *(v9 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_251613EE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25163590C();
  MEMORY[0x25307C1E0](v1);
  MEMORY[0x25307C1E0](v2);
  return sub_25163594C();
}

uint64_t sub_251613F44()
{
  v1 = *(v0 + 8);
  MEMORY[0x25307C1E0](*v0);
  return MEMORY[0x25307C1E0](v1);
}

uint64_t sub_251613F84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_25163590C();
  MEMORY[0x25307C1E0](v2);
  MEMORY[0x25307C1E0](v3);
  return sub_25163594C();
}

unint64_t sub_251613FE0()
{
  result = qword_27F447258;
  if (!qword_27F447258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447258);
  }

  return result;
}

unint64_t sub_251614034()
{
  result = qword_27F447260;
  if (!qword_27F447260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447260);
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

uint64_t getEnumTagSinglePayload for ClassificationQuality(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassificationQuality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2516141B4()
{
  result = qword_27F447268;
  if (!qword_27F447268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447268);
  }

  return result;
}

unint64_t sub_25161420C()
{
  result = qword_27F447270;
  if (!qword_27F447270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447270);
  }

  return result;
}

unint64_t sub_251614264()
{
  result = qword_27F447278;
  if (!qword_27F447278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447278);
  }

  return result;
}

unint64_t sub_2516142BC()
{
  result = qword_27F447280;
  if (!qword_27F447280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447280);
  }

  return result;
}

unint64_t sub_251614310()
{
  result = qword_27F447290;
  if (!qword_27F447290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447290);
  }

  return result;
}

unint64_t sub_251614364()
{
  result = qword_27F4472A0;
  if (!qword_27F4472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4472A0);
  }

  return result;
}

unint64_t sub_2516143B8()
{
  result = qword_27F4472B0;
  if (!qword_27F4472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4472B0);
  }

  return result;
}

unint64_t sub_25161440C()
{
  result = qword_27F4472C0;
  if (!qword_27F4472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4472C0);
  }

  return result;
}

uint64_t sub_251614460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E75 && a2 == 0xE500000000000000;
  if (v4 || (sub_2516358DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974736F6E6761 && a2 == 0xE800000000000000 || (sub_2516358DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1919252079 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2516358DC();

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

uint64_t sub_251614574(void *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_251614B88(0, &qword_27F4472C8, sub_251614310, &type metadata for ClassificationQuality.Polarity.OverCodingKeys, MEMORY[0x277D844C8]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v29 - v4;
  sub_251614B88(0, &qword_27F4472D0, sub_251614364, &type metadata for ClassificationQuality.Polarity.AgnosticCodingKeys, v2);
  v34 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - v6;
  sub_251614B88(0, &qword_27F4472D8, sub_2516143B8, &type metadata for ClassificationQuality.Polarity.UnderCodingKeys, v2);
  v8 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  sub_251614B88(0, &qword_27F4472E0, sub_25161440C, &type metadata for ClassificationQuality.Polarity.CodingKeys, v2);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25161440C();
  v15 = v38;
  sub_25163596C();
  if (!v15)
  {
    v16 = v10;
    v38 = v8;
    v17 = v35;
    v18 = v36;
    v19 = sub_25163580C();
    v20 = (2 * *(v19 + 16)) | 1;
    v39 = v19;
    v40 = v19 + 32;
    v41 = 0;
    v42 = v20;
    v21 = sub_2516033AC();
    v22 = v14;
    if (v21 == 3 || v41 != v42 >> 1)
    {
      v24 = sub_2516356FC();
      v10 = swift_allocError();
      v26 = v25;
      sub_25160354C(0);
      *v26 = &type metadata for ClassificationQuality.Polarity;
      sub_25163579C();
      sub_2516356DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v37 + 8))(v14, v12);
    }

    else
    {
      v10 = v21;
      if (v21)
      {
        v23 = v37;
        if (v21 != 1)
        {
          LODWORD(v38) = v21;
          v43 = 2;
          sub_251614310();
          sub_25163578C();
          (*(v32 + 8))(v18, v33);
          (*(v23 + 8))(v22, v12);
          swift_unknownObjectRelease();
          v10 = v38;
          goto LABEL_9;
        }

        v43 = 1;
        sub_251614364();
        sub_25163578C();
        (*(v31 + 8))(v17, v34);
        (*(v23 + 8))(v22, v12);
      }

      else
      {
        v43 = 0;
        sub_2516143B8();
        sub_25163578C();
        v28 = v37;
        (*(v30 + 8))(v16, v38);
        (*(v28 + 8))(v14, v12);
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_251614B88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_251614C34()
{
  result = qword_27F4472E8;
  if (!qword_27F4472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4472E8);
  }

  return result;
}

unint64_t sub_251614C8C()
{
  result = qword_27F4472F0;
  if (!qword_27F4472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4472F0);
  }

  return result;
}

unint64_t sub_251614CE4()
{
  result = qword_27F4472F8;
  if (!qword_27F4472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4472F8);
  }

  return result;
}

unint64_t sub_251614D3C()
{
  result = qword_27F447300;
  if (!qword_27F447300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447300);
  }

  return result;
}

unint64_t sub_251614D94()
{
  result = qword_27F447308;
  if (!qword_27F447308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447308);
  }

  return result;
}

unint64_t sub_251614DEC()
{
  result = qword_27F447310;
  if (!qword_27F447310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447310);
  }

  return result;
}

unint64_t sub_251614E44()
{
  result = qword_27F447318;
  if (!qword_27F447318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447318);
  }

  return result;
}

unint64_t sub_251614E9C()
{
  result = qword_27F447320;
  if (!qword_27F447320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447320);
  }

  return result;
}

unint64_t sub_251614EF4()
{
  result = qword_27F447328;
  if (!qword_27F447328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447328);
  }

  return result;
}

uint64_t sub_251614F54()
{
  v0 = sub_25163529C();
  __swift_allocate_value_buffer(v0, qword_27F447330);
  __swift_project_value_buffer(v0, qword_27F447330);
  return sub_25163528C();
}

uint64_t static Logger.domains.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F446AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_25163529C();
  v3 = __swift_project_value_buffer(v2, qword_27F447330);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_251615110(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25163595C();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_2516354FC();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_25163550C();
  }
}

uint64_t ClassificationPolicy.classificationBatches<A>(of:considering:limitingDateRange:batchSize:batchHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v65 = a8;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v60 = a2;
  v69 = a1;
  v63 = a3;
  v64 = a10;
  sub_2515F8380(0);
  v62 = *(v11 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClassificationFactorTimeline(0);
  v58 = *(v13 - 8);
  v57 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v75 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a7 - 8);
  v56 = *(v72 + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = a7;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v55 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  v25 = sub_25163524C();
  v73 = swift_allocBox();
  v27 = v26;
  v71 = a9;
  v28 = v55;
  (*(a9 + 48))(a7, a9);
  v29 = sub_25163546C();
  v30 = *(TupleTypeMetadata2 + 48);
  (*(v22 + 32))(v21, v24, AssociatedTypeWitness);
  *&v21[v30] = v29;
  *v27 = 0;
  v31 = *(v25 + 28);
  v32 = sub_25163525C();
  bzero(v27 + v31, *(*(v32 - 8) + 64));
  sub_251605B44(v21, v27 + v31, TupleTypeMetadata2);
  v33 = v72;
  v34 = v70;
  (*(v72 + 16))(v74, v28, v70);
  v55 = type metadata accessor for ClassificationFactorTimeline;
  sub_251618B84(v60, v75, type metadata accessor for ClassificationFactorTimeline);
  v35 = v59;
  sub_251618B84(v63, v59, sub_2515F8380);
  v36 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v37 = (v56 + *(v58 + 80) + v36) & ~*(v58 + 80);
  v38 = (v57 + *(v62 + 80) + v37) & ~*(v62 + 80);
  v39 = (v61 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v34;
  *(v40 + 2) = v34;
  v43 = v64;
  v42 = v65;
  v44 = v71;
  v45 = v72;
  *(v40 + 3) = v65;
  *(v40 + 4) = v44;
  v47 = v73;
  v46 = v74;
  *(v40 + 5) = v43;
  *(v40 + 6) = v47;
  (*(v45 + 32))(&v40[v36], v46, v41);
  sub_251618BEC(v75, &v40[v37], v55);
  sub_251618BEC(v35, &v40[v38], sub_2515F8380);
  v48 = v67;
  *&v40[v39] = v66;
  v49 = &v40[(v39 + 15) & 0xFFFFFFFFFFFFFFF8];
  v50 = v68;
  *v49 = v48;
  v49[1] = v50;
  v51 = swift_allocObject();
  v52 = v71;
  v51[2] = v70;
  v51[3] = v42;
  v51[4] = v52;
  v51[5] = v43;
  v51[6] = v73;
  v51[7] = v48;
  v51[8] = v50;
  v53 = *(v43 + 24);
  swift_retain_n();
  swift_retain_n();
  v53(sub_251618C54, v40, sub_251618DE8, v51, v42, v43);
}

uint64_t sub_2516158D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  v15 = sub_25163524C();
  v16 = swift_projectBox();
  os_unfair_lock_lock(v16);
  v17 = sub_251615A50(v16 + *(v15 + 28), a3, a1, a4, a5, a6, a9, a10, a11, a12);
  os_unfair_lock_unlock(v16);
  swift_getWitnessTable();
  if ((sub_2516355EC() & 1) == 0)
  {
    a7(v17, 0);
  }
}

uint64_t sub_251615A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a5;
  v38 = a8;
  v40 = a4;
  v41 = a6;
  v39 = a2;
  sub_2515F8380(0);
  v35[2] = v13;
  MEMORY[0x28223BE20](v13);
  v36 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_25163563C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v35 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v35[0] = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v35 - v24;
  v26 = *(a9 + 56);
  v35[1] = a3;
  v42 = a1;
  v26(a3, a1, v40, a7, a9);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v27 = v42;
  }

  else
  {
    (*(v21 + 32))(v25, v20, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = *(AssociatedConformanceWitness + 8);
    v30 = swift_checkMetadataState();
    v31 = v36;
    v29(v30, AssociatedConformanceWitness);
    sub_25163516C();
    sub_2515FA0F4();
    if (sub_2516352EC())
    {
      sub_2516012D0(v31);
      v27 = v42;
    }

    else
    {
      v32 = sub_2516352EC();
      sub_2516012D0(v31);
      v27 = v42;
      if ((v32 & 1) == 0)
      {
        (*(v21 + 16))(v35[0], v25, AssociatedTypeWitness);
        swift_getAssociatedTypeWitness();
        sub_2516354CC();
        swift_getTupleTypeMetadata2();
        sub_2516354AC();
      }
    }

    (*(v21 + 8))(v25, AssociatedTypeWitness);
  }

  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  v33 = *(v27 + *(swift_getTupleTypeMetadata2() + 48));
  if (sub_25163548C() < v41)
  {
    return sub_25163546C();
  }

  sub_251615F00(v27, a7, v38, a9);
  return v33;
}

uint64_t sub_251615F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  return sub_2516354BC();
}

uint64_t sub_251615FBC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  v13 = sub_25163524C();
  if (v12)
  {
    return a3(v12, 256);
  }

  v15 = v13;
  v16 = swift_projectBox();
  os_unfair_lock_lock(v16);
  v17 = sub_251619664(v16 + *(v15 + 28), a5, a6, a7);

  os_unfair_lock_unlock(v16);
  a3(v17, 1);
}

uint64_t ClassificationPolicy.classifications<A>(of:considering:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a1;
  v59 = a6;
  v60 = a8;
  v61 = a3;
  v62 = a4;
  v58 = a2;
  v10 = type metadata accessor for ClassificationFactorTimeline(0);
  v56 = *(v10 - 8);
  v57 = *(v56 + 64);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a5 - 8);
  v54 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = a5;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v50 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  v22 = sub_25163524C();
  v23 = swift_allocBox();
  v51 = a7;
  v52 = v23;
  v25 = v24;
  (*(a7 + 48))(a5, a7);
  v26 = sub_25163546C();
  v27 = *(TupleTypeMetadata2 + 48);
  (*(v19 + 32))(v18, v21, AssociatedTypeWitness);
  *&v18[v27] = v26;
  *v25 = 0;
  v28 = *(v22 + 28);
  v29 = sub_25163525C();
  bzero(v25 + v28, *(*(v29 - 8) + 64));
  sub_251605B44(v18, v25 + v28, TupleTypeMetadata2);
  v30 = v65;
  v31 = v53;
  v32 = v50;
  (*(v65 + 16))(v53, v64, v50);
  v33 = v55;
  sub_251618B84(v58, v55, type metadata accessor for ClassificationFactorTimeline);
  v34 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v35 = (v54 + *(v56 + 80) + v34) & ~*(v56 + 80);
  v36 = swift_allocObject();
  v37 = v32;
  v38 = v59;
  *(v36 + 2) = v32;
  *(v36 + 3) = v38;
  v39 = v51;
  v40 = v52;
  v41 = v60;
  *(v36 + 4) = v51;
  *(v36 + 5) = v41;
  *(v36 + 6) = v40;
  v42 = v31;
  v43 = v37;
  (*(v65 + 32))(&v36[v34], v42);
  sub_251618BEC(v33, &v36[v35], type metadata accessor for ClassificationFactorTimeline);
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v38;
  v44[4] = v39;
  v44[5] = v41;
  v45 = v41;
  v46 = v61;
  v47 = v62;
  v44[6] = v40;
  v44[7] = v46;
  v44[8] = v47;
  v48 = *(v41 + 24);
  swift_retain_n();

  v48(sub_251618E00, v36, sub_251618E34, v44, v38, v45);
}

uint64_t sub_2516165CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a4;
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_25163563C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  v22 = *(a7 + 56);
  v23 = v26;
  v26 = a1;
  v22(v23, a1, v28, a5, a7);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v16 + 32))(v21, v15, AssociatedTypeWitness);
  (*(v16 + 16))(v19, v21, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  sub_2516354AC();
  return (*(v16 + 8))(v21, AssociatedTypeWitness);
}

uint64_t sub_251616880(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  swift_getTupleTypeMetadata2();
  v13 = sub_25163524C();
  if (v12)
  {
    return a3(v12, 1);
  }

  v15 = v13;
  v16 = swift_projectBox();
  os_unfair_lock_lock(v16);
  v17 = sub_251619664(v16 + *(v15 + 28), a5, a6, a7);

  os_unfair_lock_unlock(v16);
  a3(v17, 0);
}

uint64_t ClassificationPolicy.classifications<A>(of:considering:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a1;
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_25163563C();
  v43 = *(v49 - 8);
  v11 = MEMORY[0x28223BE20](v49);
  v13 = &v39 - v12;
  v52 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v39 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = sub_25163563C();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v39 - v22;
  v56 = *(a4 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v50 = swift_getAssociatedTypeWitness();
  v42 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v51 = &v39 - v26;
  v41 = swift_getAssociatedTypeWitness();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v27 = *(a5 + 48);
  v60 = a5;
  v61 = &v39 - v28;
  v59 = a3;
  v29 = a3;
  v30 = v55;
  v27(v29);
  v62 = sub_25163546C();
  (*(v56 + 16))(v25, v57, a4);
  v31 = v50;
  sub_2516353BC();
  v32 = v51;
  swift_getAssociatedConformanceWitness();
  sub_25163565C();
  v56 = *(v30 + 6);
  v57 = v30 + 48;
  if ((v56)(v23, 1, v17) != 1)
  {
    v34 = *(v30 + 4);
    v54 = v60 + 56;
    v55 = v34;
    v35 = v52;
    v45 = (v52 + 2);
    v46 = (v52 + 4);
    v36 = v52 + 1;
    v52 = (v30 + 8);
    v53 = (v35 + 6);
    ++v43;
    v44 = v36;
    (v34)(v19, v23, v17);
    while (1)
    {
      (*(v60 + 56))(v19, v61, v58, v59);
      if ((*v53)(v13, 1, AssociatedTypeWitness) == 1)
      {
        (*v52)(v19, v17);
        (*v43)(v13, v49);
      }

      else
      {
        v37 = v47;
        (*v46)(v47, v13, AssociatedTypeWitness);
        (*v45)(v48, v37, AssociatedTypeWitness);
        sub_2516354CC();
        sub_2516354AC();
        v38 = v37;
        v31 = v50;
        v32 = v51;
        (*v44)(v38, AssociatedTypeWitness);
        (*v52)(v19, v17);
      }

      sub_25163565C();
      if ((v56)(v23, 1, v17) == 1)
      {
        break;
      }

      (v55)(v19, v23, v17);
    }
  }

  (*(v42 + 8))(v32, v31);
  (*(v40 + 8))(v61, v41);
  return v62;
}

uint64_t ClassificationPolicy.mostRecentClassification<A>(from:considering:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a6;
  v68 = a8;
  v69 = a3;
  v70 = a4;
  v66 = a2;
  v71 = a1;
  v10 = type metadata accessor for ClassificationFactorTimeline(0);
  v64 = *(v10 - 8);
  v65 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 - 8);
  v72 = a5;
  v73 = v13;
  v62 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_25163563C();
  v57 = AssociatedTypeWitness;
  v58 = v17;
  v18 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = &v57 - v21;
  v23 = *(v18 - 8);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v57 - v25;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v24);
  v29 = &v57 - v28;
  v30 = sub_25163524C();
  v31 = swift_allocBox();
  v59 = a7;
  v60 = v31;
  v33 = v32;
  (*(a7 + 48))(v72, a7);
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  v34 = *(TupleTypeMetadata2 + 48);
  (*(v27 + 32))(v22, v29, v57);
  (*(v23 + 32))(&v22[v34], v26, v58);
  *v33 = 0;
  v35 = *(v30 + 28);
  v36 = sub_25163525C();
  bzero(v33 + v35, *(*(v36 - 8) + 64));
  sub_251605B44(v22, v33 + v35, TupleTypeMetadata2);
  v37 = v73;
  v38 = v61;
  v39 = v72;
  (*(v73 + 16))(v61, v74, v72);
  v40 = v63;
  sub_251618B84(v66, v63, type metadata accessor for ClassificationFactorTimeline);
  v41 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v42 = (v62 + *(v64 + 80) + v41) & ~*(v64 + 80);
  v43 = swift_allocObject();
  v44 = v39;
  v45 = v67;
  *(v43 + 2) = v39;
  *(v43 + 3) = v45;
  v46 = v59;
  v47 = v60;
  v48 = v68;
  *(v43 + 4) = v59;
  *(v43 + 5) = v48;
  *(v43 + 6) = v47;
  v49 = v38;
  v50 = v44;
  (*(v73 + 32))(&v43[v41], v49);
  sub_251618BEC(v40, &v43[v42], type metadata accessor for ClassificationFactorTimeline);
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v45;
  v51[4] = v46;
  v51[5] = v48;
  v52 = v48;
  v53 = v69;
  v54 = v70;
  v51[6] = v47;
  v51[7] = v53;
  v51[8] = v54;
  v55 = *(v48 + 24);
  swift_retain_n();

  v55(sub_251618FE4, v43, sub_25161916C, v51, v45, v52);
}

void sub_251617620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, void (*a11)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a9(255, AssociatedTypeWitness);
  swift_getTupleTypeMetadata2();
  v17 = sub_25163524C();
  v18 = swift_projectBox();
  os_unfair_lock_lock(v18);
  a11(v18 + *(v17 + 28), a3, a1, a4, a5, a6, a7, a8);

  os_unfair_lock_unlock(v18);
}

uint64_t sub_251617758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_25163563C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v25 - v18;
  v20 = *(a7 + 56);
  v26 = a1;
  v20(a3, a1, v28, a5, a7);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v22 = *(v17 + 32);
  v22(v19, v16, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  v23 = *(swift_getTupleTypeMetadata2() + 48);
  v24 = v26;
  (*(v13 + 8))(v26 + v23, v12);
  v22((v24 + v23), v19, AssociatedTypeWitness);
  return (*(v17 + 56))(v24 + v23, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_2516179DC(void **a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[2] = a6;
  v24[3] = a8;
  v24[4] = a4;
  v25 = a3;
  v24[1] = a2;
  swift_getAssociatedTypeWitness();
  v9 = sub_25163563C();
  sub_2516041EC();
  v10 = sub_25163595C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v24 - v13);
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = v24 - v16;
  v18 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v19 = sub_25163524C();
  if (v18)
  {
    *v14 = v18;
    swift_storeEnumTagMultiPayload();
    v20 = v18;
    v25(v14);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v22 = v19;
    v23 = swift_projectBox();
    os_unfair_lock_lock(v23);
    sub_251617CA0(v23 + *(v22 + 28), v17);
    os_unfair_lock_unlock(v23);
    (*(v15 + 16))(v14, v17, v9);
    swift_storeEnumTagMultiPayload();
    v25(v14);
    (*(v11 + 8))(v14, v10);
    return (*(v15 + 8))(v17, v9);
  }
}

uint64_t sub_251617CA0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_25163563C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(v6 - 8) + 16);
  v9 = a1 + *(TupleTypeMetadata2 + 48);

  return v8(a4, v9, v6);
}

uint64_t ClassificationPolicy.classificationBatches<A>(of:considering:limitingDateRange:batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a4;
  v29 = a6;
  v30 = a8;
  v27[1] = a9;
  v28 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v10 = sub_25163554C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = sub_25163557C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v27 - v19;
  swift_checkMetadataState();
  sub_251618068(v13);
  sub_25163552C();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 16))(v18, v20, v14);
  v21 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v22 = swift_allocObject();
  v24 = v28;
  v23 = v29;
  *(v22 + 2) = v28;
  *(v22 + 3) = v23;
  v25 = v30;
  *(v22 + 4) = a7;
  *(v22 + 5) = v25;
  (*(v15 + 32))(&v22[v21], v18, v14);
  ClassificationPolicy.classificationBatches<A>(of:considering:limitingDateRange:batchSize:batchHandler:)(v31, v32, v33, v34, sub_2516191A0, v22, v24, v23, a7, v25);

  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_251618068@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D858A0];
  sub_2516041EC();
  v4 = sub_25163554C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

void sub_251618100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v8 = sub_25163553C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  if ((a2 & 0x100) != 0)
  {
    v14 = a1;
    v12 = a1;
LABEL_8:
    sub_25163557C();
    sub_25163556C();
    return;
  }

  v14 = a1;

  swift_checkMetadataState();
  swift_getWitnessTable();
  if ((sub_2516355EC() & 1) == 0)
  {
    v14 = a1;
    sub_25163557C();
    sub_25163555C();
    (*(v9 + 8))(v11, v8);
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_251619658(a1, a2, 0);
  if (a2)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }
}

uint64_t ClassificationPolicy.classifications<A>(of:considering:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_251618340, 0, 0);
}

uint64_t sub_251618340()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  swift_getAssociatedTypeWitness();
  v6 = sub_2516354CC();
  *v5 = v0;
  v5[1] = sub_25161847C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000020, 0x800000025163B970, sub_251619294, v2, v6);
}

uint64_t sub_25161847C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_251618598;
  }

  else
  {

    v2 = sub_251604C08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_251618598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2516185FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = a2 & 1;
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v6 = sub_25163551C();
  return sub_251615110(&v8, v6);
}

uint64_t ClassificationPolicy.mostRecentClassification<A>(from:considering:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2516186BC, 0, 0);
}

uint64_t sub_2516186BC()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  *(v2 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  swift_getAssociatedTypeWitness();
  v6 = sub_25163563C();
  *v5 = v0;
  v5[1] = sub_2516187F8;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000002BLL, 0x800000025163B9A0, sub_2516192DC, v2, v6);
}

uint64_t sub_2516187F8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_251618598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_251618934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = a3;
  v28 = a4;
  v26 = a11;
  v29 = a12;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a9(255, AssociatedTypeWitness);
  sub_2516041EC();
  v18 = sub_25163551C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - v20;
  (*(v19 + 16))(&v25 - v20, a1, v18);
  v22 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  *(v23 + 4) = a7;
  *(v23 + 5) = a8;
  (*(v19 + 32))(&v23[v22], v21, v18);
  v29(v27, v28, v26, v23, a5, a6, a7, a8);
}

uint64_t sub_251618AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v6 = sub_25163551C();
  return sub_251615110(a1, v6);
}

uint64_t sub_251618B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251618BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251618C54(uint64_t a1)
{
  v3 = *(v1 + 16);
  v14 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = (*(*(v3 - 8) + 80) + 56) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(type metadata accessor for ClassificationFactorTimeline(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_2515F8380(0);
  v11 = (v8 + v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80);
  v12 = (*(*(v10 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2516158D8(a1, *(v1 + 48), v1 + v5, v1 + v8, v1 + v11, *(v1 + v12), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v3, v14, *(&v14 + 1), v4);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for ClassificationFactorTimeline(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_25163516C();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v8, v11);
  sub_2515F8380(0);
  v12(v0 + v8 + *(v13 + 36), v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

void sub_251619018(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(*(v8 - 8) + 64);
  v13 = (*(*(v8 - 8) + 80) + 56) & ~*(*(v8 - 8) + 80);
  v14 = *(type metadata accessor for ClassificationFactorTimeline(0) - 8);
  sub_251617620(a1, v4[6], v4 + v13, v4 + ((v13 + v12 + *(v14 + 80)) & ~*(v14 + 80)), v8, v9, v10, v11, a2, a3, a4);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_2516191A0(void *a1, __int16 a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v8 = *(sub_25163557C() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  sub_251618100(a1, a2 & 0x1FF, v9, v5, v6, v7);
}

uint64_t sub_2516193A8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v6 = *(sub_25163551C() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_251618AF8(a1, v7, v3, v4, v5);
}

uint64_t objectdestroy_17Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, unint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3(255, AssociatedTypeWitness);
  v9 = sub_2516041EC();
  v10 = a4(0, v8, v9, MEMORY[0x277D84950]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 + 48) & ~v12;
  v14 = *(v11 + 64);
  (*(v11 + 8))(v4 + v13, v10);

  return MEMORY[0x2821FE8E8](v4, v13 + v14, v12 | 7);
}

uint64_t sub_251619568(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  sub_2516041EC();
  v8 = *(sub_25163551C() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_2516185FC(a1, a2 & 1, v9, v5, v6, v7);
}

void sub_251619658(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_251619664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_2516354CC();
  return *(a1 + *(swift_getTupleTypeMetadata2() + 48));
}

uint64_t Domain.Affect.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2516197DC()
{
  result = qword_27F447348;
  if (!qword_27F447348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447348);
  }

  return result;
}

void *sub_251619830@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_251619910()
{
  result = qword_27F447350;
  if (!qword_27F447350)
  {
    sub_251619968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447350);
  }

  return result;
}

void sub_251619968()
{
  if (!qword_27F447358)
  {
    v0 = sub_2516354CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F447358);
    }
  }
}

unint64_t sub_2516199D8()
{
  result = qword_27F447360;
  if (!qword_27F447360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447360);
  }

  return result;
}

uint64_t ClassificationChangeDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 > 1)
  {
    if (v2 == 2)
    {
      v4 = 3;
      return MEMORY[0x25307C1E0](v4);
    }

    if (v2 == 3)
    {
      v4 = 4;
      return MEMORY[0x25307C1E0](v4);
    }
  }

  else
  {
    if (!v2)
    {
      v4 = 1;
      return MEMORY[0x25307C1E0](v4);
    }

    if (v2 == 1)
    {
      v4 = 2;
      return MEMORY[0x25307C1E0](v4);
    }
  }

  v5 = *(v1 + 16);
  MEMORY[0x25307C1E0](0);
  sub_25163562C();
  if (v5)
  {
    return sub_25163592C();
  }

  sub_25163592C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x25307C200](v7);
}

uint64_t ClassificationChangeDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25163590C();
  ClassificationChangeDescriptor.hash(into:)(v3);
  return sub_25163594C();
}

uint64_t sub_251619B50()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25163590C();
  ClassificationChangeDescriptor.hash(into:)(v3);
  return sub_25163594C();
}

uint64_t sub_251619BA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_25163590C();
  ClassificationChangeDescriptor.hash(into:)(v4);
  return sub_25163594C();
}

uint64_t SampleTypeChangeDescriptor.affectedDateRange(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  sub_2515F8E44(0);
  v30 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_25163516C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v28 = v10[2];
  v28(v13, a1, v9);
  sub_25163510C();
  v29 = v10[1];
  v29(v13, v9);
  sub_2515F8380(0);
  v27 = v16;
  v17 = *(v16 + 36);
  sub_2515FA0F4();
  result = sub_25163530C();
  if (result)
  {
    v19 = v10[4];
    v19(v8, v15, v9);
    v20 = a1;
    v21 = v30;
    v28(&v8[*(v30 + 48)], v20 + v17, v9);
    sub_25161A3CC(v8, v6);
    v22 = *(v21 + 48);
    v23 = v31;
    v19(v31, v6, v9);
    v24 = &v6[v22];
    v25 = v29;
    v29(v24, v9);
    sub_25161A430(v8, v6);
    v19(&v23[*(v27 + 36)], &v6[*(v21 + 48)], v9);
    return v25(v6, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SampleTypeChangeDescriptor.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_251601D84();
  if ((sub_25163561C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t SampleTypeChangeDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_25163562C();
  if (v3 == 1)
  {
    return sub_25163592C();
  }

  sub_25163592C();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x25307C200](v5);
}

uint64_t SampleTypeChangeDescriptor.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_25163590C();
  sub_25163562C();
  if (v2 == 1)
  {
    sub_25163592C();
  }

  else
  {
    sub_25163592C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x25307C200](v3);
  }

  return sub_25163594C();
}

uint64_t sub_25161A084()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v4[10] = v1;
  v5 = v2;
  sub_25163590C();
  SampleTypeChangeDescriptor.hash(into:)(v4);
  return sub_25163594C();
}

uint64_t sub_25161A0DC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = v3;
  sub_25163590C();
  SampleTypeChangeDescriptor.hash(into:)(v5);
  return sub_25163594C();
}

uint64_t sub_25161A12C(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_251601D84();
  if (sub_25163561C())
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _s13HealthDomains30ClassificationChangeDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1 > 1)
  {
    if (v3 == 2)
    {
      if (v6 != 2)
      {
        goto LABEL_20;
      }

      sub_251601D74(2);
      v9 = 2;
    }

    else
    {
      if (v3 != 3)
      {
LABEL_10:
        if (v6 < 4)
        {
          goto LABEL_20;
        }

        sub_251601D84();
        sub_251601D64(v6);
        sub_251601D64(v3);
        sub_251601D64(v3);
        sub_251601D64(v6);
        v10 = sub_25163561C();
        sub_251601D74(v3);
        sub_251601D74(v6);
        sub_251601D74(v6);
        sub_251601D74(v3);
        if (v10)
        {
          if ((v4 & 1) == 0)
          {
            return (v7 & 1) == 0 && v2 == v5;
          }

          if (v7)
          {
            return 1;
          }
        }

        return 0;
      }

      if (v6 != 3)
      {
        goto LABEL_20;
      }

      sub_251601D74(3);
      v9 = 3;
    }

LABEL_19:
    sub_251601D74(v9);
    return 1;
  }

  if (!v3)
  {
    if (v6)
    {
      goto LABEL_20;
    }

    sub_251601D74(0);
    v9 = 0;
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  if (v6 != 1)
  {
LABEL_20:
    sub_251601D64(*a1);
    sub_251601D64(v6);
    sub_251601D74(v3);
    sub_251601D74(v6);
    return 0;
  }

  v8 = 1;
  sub_251601D74(1);
  sub_251601D74(1);
  return v8;
}

uint64_t sub_25161A3CC(uint64_t a1, uint64_t a2)
{
  sub_2515F8E44(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25161A430(uint64_t a1, uint64_t a2)
{
  sub_2515F8E44(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25161A498()
{
  result = qword_27F447368;
  if (!qword_27F447368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447368);
  }

  return result;
}

unint64_t sub_25161A4F0()
{
  result = qword_27F447370;
  if (!qword_27F447370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447370);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HealthDomains30ClassificationChangeDescriptorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25161A55C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 17))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25161A5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_25161A610(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_25161A644(uint64_t *a1, int a2)
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

uint64_t sub_25161A68C(uint64_t result, int a2, int a3)
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

double BuiltinDomainRegistry.measure(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void __swiftcall BuiltinDomainRegistry.escalation(for:)(HealthDomains::Escalation_optional *__return_ptr retstr, HealthDomains::EscalationIdentifier a2)
{
  countAndFlagsBits = a2.identifier._countAndFlagsBits;
  v3 = 0xD00000000000001ELL;
  v4 = sub_25163518C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25163534C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *countAndFlagsBits;
  v7 = countAndFlagsBits[1];
  v8 = 0xD000000000000016;
  v98 = *countAndFlagsBits;
  v99 = v7;
  if (__PAIR128__(0x800000025163BA10, 0xD000000000000016) == *countAndFlagsBits || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v9 = sub_25163536C();
    v10 = objc_opt_self();
    v11 = [v10 bundleWithIdentifier_];

    sub_25163517C();
    v12 = sub_25163538C();
    v8 = v13;
    sub_25163533C();
    v14 = sub_25163536C();
    v15 = [v10 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v17;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    goto LABEL_55;
  }

  if (v6 == 0xD00000000000002ELL && 0x800000025163BA30 == v7 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v20 = sub_25163536C();
    v21 = objc_opt_self();
    v22 = [v21 bundleWithIdentifier_];

    sub_25163517C();
    v6 = 0x6974616C61637345;
    v3 = 0xEB00000000736E6FLL;
    v12 = sub_25163538C();
    v8 = v23;
    sub_25163533C();
    v24 = sub_25163536C();
    v7 = [v21 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v25;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  v12 = v3 + 4;
  if (v6 == v3 + 4 && 0x800000025163BA60 == v7 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v26 = sub_25163536C();
    v27 = objc_opt_self();
    v28 = [v27 bundleWithIdentifier_];

    sub_25163517C();
    v6 = 0x6974616C61637345;
    v3 = 0xEB00000000736E6FLL;
    v12 = sub_25163538C();
    v8 = v29;
    sub_25163533C();
    v30 = sub_25163536C();
    v7 = [v27 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v31;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  if (v6 == v3 - 5 && 0x800000025163BA90 == v7 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v32 = sub_25163536C();
    v33 = objc_opt_self();
    v34 = [v33 bundleWithIdentifier_];

    sub_25163517C();
    v6 = 0x6974616C61637345;
    v3 = 0xEB00000000736E6FLL;
    v12 = sub_25163538C();
    v8 = v35;
    sub_25163533C();
    v36 = sub_25163536C();
    v7 = [v33 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v37;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  if (v6 == v8 && 0x800000025163BAB0 == v7 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v38 = sub_25163536C();
    v39 = objc_opt_self();
    v40 = [v39 bundleWithIdentifier_];

    sub_25163517C();
    v6 = 0x6974616C61637345;
    v3 = 0xEB00000000736E6FLL;
    v12 = sub_25163538C();
    v8 = v41;
    sub_25163533C();
    v42 = sub_25163536C();
    v7 = [v39 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v43;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  if (v6 == v3 + 7 && 0x800000025163BAD0 == v7 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v44 = sub_25163536C();
    v45 = objc_opt_self();
    v46 = [v45 bundleWithIdentifier_];

    sub_25163517C();
    v6 = 0x6974616C61637345;
    v3 = 0xEB00000000736E6FLL;
    v12 = sub_25163538C();
    v8 = v47;
    sub_25163533C();
    v48 = sub_25163536C();
    v7 = [v45 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v49;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  v8 = (v3 + 6);
  if (v6 == v3 + 6 && 0x800000025163BB00 == v7 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v50 = sub_25163536C();
    v51 = objc_opt_self();
    v52 = [v51 bundleWithIdentifier_];

    sub_25163517C();
    v6 = 0x6974616C61637345;
    v3 = 0xEB00000000736E6FLL;
    v12 = sub_25163538C();
    v8 = v53;
    sub_25163533C();
    v54 = sub_25163536C();
    v7 = [v51 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v55;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  if ((v6 != v3 + 5 || 0x800000025163BB30 != v7) && (sub_2516358DC() & 1) == 0)
  {
    v63 = 0xD00000000000001ELL;
    if (v6 == v3 + 9 && 0x800000025163BB60 == v99 || (sub_2516358DC() & 1) != 0)
    {

      sub_25163533C();
      v64 = sub_25163536C();
      v65 = objc_opt_self();
      v66 = [v65 bundleWithIdentifier_];

      sub_25163517C();
      v12 = sub_25163538C();
      v8 = v67;
      sub_25163533C();
      v63 = sub_25163536C();
      v68 = [v65 bundleWithIdentifier_];

      sub_25163517C();
      v16 = sub_25163538C();
      v18 = v69;
      v19 = sub_25163577C();
      if (v19 <= 3)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    if (v98 == v8 && 0x800000025163BB90 == v99 || (sub_2516358DC() & 1) != 0)
    {

      sub_25163533C();
      v70 = sub_25163536C();
      v71 = objc_opt_self();
      v72 = [v71 bundleWithIdentifier_];

      sub_25163517C();
      v12 = sub_25163538C();
      v8 = v73;
      sub_25163533C();
      v63 = sub_25163536C();
      v74 = [v71 bundleWithIdentifier_];

      sub_25163517C();
      v16 = sub_25163538C();
      v18 = v75;
      v19 = sub_25163577C();
      if (v19 <= 3)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    if ((v98 != v63 + 13 || 0x800000025163BBC0 != v99) && (sub_2516358DC() & 1) == 0)
    {
      goto LABEL_56;
    }

    sub_25163533C();
    v76 = sub_25163536C();
    v77 = objc_opt_self();
    v78 = [v77 bundleWithIdentifier_];

    sub_25163517C();
    v12 = sub_25163538C();
    v8 = v79;
    sub_25163533C();
    v80 = sub_25163536C();
    v81 = [v77 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v82;
    v19 = sub_25163577C();
    if (v19 <= 3)
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    if (v98 == v8 && 0x800000025163BBF0 == v99 || (sub_2516358DC() & 1) != 0)
    {

      sub_25163533C();
      v83 = sub_25163536C();
      v84 = objc_opt_self();
      v85 = [v84 bundleWithIdentifier_];

      sub_25163517C();
      v12 = sub_25163538C();
      v8 = v86;
      sub_25163533C();
      v87 = sub_25163536C();
      v88 = [v84 bundleWithIdentifier_];

      sub_25163517C();
      v16 = sub_25163538C();
      v18 = v89;
      v19 = sub_25163577C();
      if (v19 <= 3)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    if ((v98 != v12 || 0x800000025163BC20 != v99) && (sub_2516358DC() & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_25163533C();
    v90 = sub_25163536C();
    v91 = objc_opt_self();
    v92 = [v91 bundleWithIdentifier_];

    sub_25163517C();
    v12 = sub_25163538C();
    v8 = v93;
    sub_25163533C();
    v94 = sub_25163536C();
    v95 = [v91 bundleWithIdentifier_];

    sub_25163517C();
    v16 = sub_25163538C();
    v18 = v96;
    v19 = sub_25163577C();
    if (v19 > 3)
    {
      __break(1u);
LABEL_66:
      retstr->value.tier = HealthDomains_Escalation_Tier_t1;
      retstr->value.name = 0u;
      retstr->value.description = 0u;
      retstr->value.identifier = 0u;
      return;
    }

LABEL_39:
    retstr->value.identifier.identifier._countAndFlagsBits = v98;
    retstr->value.identifier.identifier._object = v99;
    retstr->value.name._countAndFlagsBits = v12;
    retstr->value.name._object = v8;
    retstr->value.description._countAndFlagsBits = v16;
    retstr->value.description._object = v18;
    retstr->value.tier = v19;
    return;
  }

  sub_25163533C();
  v56 = sub_25163536C();
  v57 = objc_opt_self();
  v58 = [v57 bundleWithIdentifier_];

  sub_25163517C();
  v12 = sub_25163538C();
  v8 = v59;
  sub_25163533C();
  v60 = sub_25163536C();
  v61 = [v57 bundleWithIdentifier_];

  sub_25163517C();
  v16 = sub_25163538C();
  v18 = v62;
  v19 = sub_25163577C();
  if (v19 <= 3)
  {
    goto LABEL_39;
  }

  __break(1u);
}

void __swiftcall BuiltinDomainRegistry.constellation(for:)(HealthDomains::Constellation_optional *__return_ptr retstr, HealthDomains::ConstellationIdentifier a2)
{
  countAndFlagsBits = a2.identifier._countAndFlagsBits;
  v4 = sub_25163518C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25163534C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *countAndFlagsBits;
  v6 = countAndFlagsBits[1];
  if (__PAIR128__(0x800000025163B410, 0xD00000000000002BLL) == __PAIR128__(v6, v7) || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v8 = sub_25163536C();
    v9 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v10 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v11 = 0x800000025163C530;
    retstr->value.name._countAndFlagsBits = v10;
    retstr->value.name._object = v12;
    v13 = 0xD00000000000002DLL;
LABEL_4:
    retstr->value.symbol._countAndFlagsBits = v13;
    retstr->value.symbol._object = v11;
LABEL_5:
    v14 = 1;
LABEL_6:
    *&retstr->value.kind = v14;
    return;
  }

  if (v7 == 0xD000000000000015 && 0x800000025163B440 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v15 = sub_25163536C();
    v16 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v17 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v17;
    retstr->value.name._object = v18;
    v19 = xmmword_251639280;
LABEL_11:
    retstr->value.symbol = v19;
    goto LABEL_5;
  }

  if (v7 == 0xD000000000000026 && 0x800000025163B460 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v20 = sub_25163536C();
    v21 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v22 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v11 = 0x800000025163C4D0;
    retstr->value.name._countAndFlagsBits = v22;
    retstr->value.name._object = v23;
    v13 = 0xD000000000000022;
    goto LABEL_4;
  }

  if (v7 == 0xD000000000000015 && 0x800000025163B490 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v24 = sub_25163536C();
    v25 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v26 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v27 = 0x800000025163C470;
    retstr->value.name._countAndFlagsBits = v26;
    retstr->value.name._object = v28;
    retstr->value.symbol._countAndFlagsBits = 0xD000000000000015;
LABEL_20:
    retstr->value.symbol._object = v27;
    *&retstr->value.kind = 0;
    return;
  }

  if (v7 == 0xD00000000000001DLL && 0x800000025163B4B0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v29 = sub_25163536C();
    v30 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v31 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v32 = 0x800000025163C470;
    retstr->value.name._countAndFlagsBits = v31;
    retstr->value.name._object = v33;
    retstr->value.symbol._countAndFlagsBits = 0xD000000000000015;
LABEL_25:
    retstr->value.symbol._object = v32;
LABEL_26:
    v14 = 257;
    goto LABEL_6;
  }

  if (v7 == 0xD000000000000019 && 0x800000025163B4D0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v34 = sub_25163536C();
    v35 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v36 = sub_25163538C();
    v38 = "figure.flexibility";
LABEL_31:
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v27 = ((v38 - 32) | 0x8000000000000000);
    retstr->value.name._countAndFlagsBits = v36;
    retstr->value.name._object = v37;
    v39 = 0xD000000000000012;
LABEL_32:
    retstr->value.symbol._countAndFlagsBits = v39;
    goto LABEL_20;
  }

  if (v7 == 0xD000000000000027 && 0x800000025163B4F0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v40 = sub_25163536C();
    v41 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v42 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v11 = 0x800000025163C3D0;
    retstr->value.name._countAndFlagsBits = v42;
    retstr->value.name._object = v43;
    v13 = 0xD000000000000016;
    goto LABEL_4;
  }

  if (v7 == 0xD00000000000001DLL && 0x800000025163B520 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v44 = sub_25163536C();
    v45 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v46 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v11 = 0x800000025163C380;
    retstr->value.name._countAndFlagsBits = v46;
    retstr->value.name._object = v47;
    v13 = 0xD000000000000017;
    goto LABEL_4;
  }

  if (v7 == 0xD000000000000018 && 0x800000025163B540 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v48 = sub_25163536C();
    v49 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v50 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v50;
    retstr->value.name._object = v51;
    v19 = xmmword_251639270;
    goto LABEL_11;
  }

  if (v7 == 0xD000000000000029 && 0x800000025163B560 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v52 = sub_25163536C();
    v53 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v54 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v11 = 0x800000025163C2E0;
    retstr->value.name._countAndFlagsBits = v54;
    retstr->value.name._object = v55;
    v13 = 0xD000000000000012;
    goto LABEL_4;
  }

  if (v7 == 0xD00000000000001DLL && 0x800000025163B590 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v56 = sub_25163536C();
    v57 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v36 = sub_25163538C();
    v38 = "brain.head.profile";
    goto LABEL_31;
  }

  if (v7 == 0xD00000000000002ELL && 0x800000025163B5B0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v58 = sub_25163536C();
    v59 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v60 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v32 = 0x800000025163C2E0;
    retstr->value.name._countAndFlagsBits = v60;
    retstr->value.name._object = v61;
    retstr->value.symbol._countAndFlagsBits = 0xD000000000000012;
    goto LABEL_25;
  }

  if (v7 == 0xD00000000000001ELL && 0x800000025163B5E0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v62 = sub_25163536C();
    v63 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v64 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v64;
    retstr->value.name._object = v65;
    v19 = xmmword_251639260;
    goto LABEL_11;
  }

  if (v7 == 0xD00000000000001DLL && 0x800000025163B600 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v66 = sub_25163536C();
    v67 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v68 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v68;
    retstr->value.name._object = v69;
    v70 = xmmword_251639250;
LABEL_73:
    retstr->value.symbol = v70;
    *&retstr->value.kind = 0;
    return;
  }

  if (v7 == 0xD000000000000016 && 0x800000025163B620 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v71 = sub_25163536C();
    v72 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v73 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v73;
    retstr->value.name._object = v74;
    v70 = xmmword_251639240;
    goto LABEL_73;
  }

  if (v7 == 0xD000000000000017 && 0x800000025163B640 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v75 = sub_25163536C();
    v76 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v77 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v77;
    retstr->value.name._object = v78;
    v70 = xmmword_251639230;
    goto LABEL_73;
  }

  if (v7 == 0xD00000000000001FLL && 0x800000025163B660 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v79 = sub_25163536C();
    v80 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v81 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v81;
    retstr->value.name._object = v82;
    retstr->value.symbol = xmmword_251639230;
    goto LABEL_26;
  }

  if (v7 == 0xD00000000000001CLL && 0x800000025163B680 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v83 = sub_25163536C();
    v84 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v85 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v27 = 0x800000025163C1C0;
    retstr->value.name._countAndFlagsBits = v85;
    retstr->value.name._object = v86;
    v39 = 0xD000000000000011;
    goto LABEL_32;
  }

  if (v7 == 0xD000000000000013 && 0x800000025163B6A0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v87 = sub_25163536C();
    v88 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v89 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v89;
    retstr->value.name._object = v90;
    v70 = xmmword_251639220;
    goto LABEL_73;
  }

  if (v7 == 0xD00000000000002DLL && 0x800000025163B6C0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v91 = sub_25163536C();
    v92 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v93 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    retstr->value.name._countAndFlagsBits = v93;
    retstr->value.name._object = v94;
    retstr->value.symbol = xmmword_251639220;
    goto LABEL_26;
  }

  if (v7 == 0xD000000000000016 && 0x800000025163B6F0 == v6 || (sub_2516358DC() & 1) != 0)
  {

    sub_25163533C();
    v95 = sub_25163536C();
    v96 = [objc_opt_self() bundleWithIdentifier_];

    sub_25163517C();
    v97 = sub_25163538C();
    retstr->value.identifier.identifier._countAndFlagsBits = v7;
    retstr->value.identifier.identifier._object = v6;
    v27 = 0x800000025163C100;
    retstr->value.name._countAndFlagsBits = v97;
    retstr->value.name._object = v98;
    v39 = 0xD000000000000023;
    goto LABEL_32;
  }

  *&retstr->value.kind = 0;
  retstr->value.name = 0u;
  retstr->value.symbol = 0u;
  retstr->value.identifier = 0u;
}

double sub_25161D510@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ClassificationStore.classifications<A>(of:over:calendar:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[3] = a2;
  v11 = sub_25163522C();
  v8[10] = v11;
  v12 = *(v11 - 8);
  v8[11] = v12;
  v8[12] = *(v12 + 64);
  v8[13] = swift_task_alloc();
  sub_2515F8380(0);
  v14 = *(v13 - 8);
  v8[14] = v14;
  v8[15] = *(v14 + 64);
  v8[16] = swift_task_alloc();
  v15 = *(a4 - 8);
  v8[17] = v15;
  v8[18] = *(v15 + 64);
  v16 = swift_task_alloc();
  v17 = *a1;
  v18 = a1[1];
  v8[19] = v16;
  v8[20] = v17;
  v8[21] = v18;

  return MEMORY[0x2822009F8](sub_25161D744, 0, 0);
}

uint64_t sub_25161D744()
{
  v27 = *(v0 + 160);
  v28 = *(v0 + 168);
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v21 = *(v0 + 144);
  v22 = *(v0 + 120);
  v4 = *(v0 + 104);
  v23 = *(v0 + 152);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v24 = v5;
  v25 = *(v0 + 64);
  v26 = v4;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v29 = *(v0 + 48);
  (*(v1 + 16))();
  sub_251601094(v9, v2);
  (*(v6 + 16))(v4, v7, v5);
  v10 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v11 = (v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 16) & ~*(v3 + 80);
  v13 = (v22 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v0 + 176) = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v29;
  *(v14 + 40) = v25;
  (*(v1 + 32))(v14 + v10, v23, v8);
  v15 = (v14 + v11);
  *v15 = v27;
  v15[1] = v28;
  sub_251601234(v2, v14 + v12);
  (*(v6 + 32))(v14 + v13, v26, v24);

  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  v17 = sub_2516354CC();
  *v16 = v0;
  v16[1] = sub_25161D988;
  v18 = *(v0 + 56);
  v19 = *(v0 + 40);

  return sub_25161DE3C(v0 + 16, sub_25161DCBC, v14, v19, v17, v18);
}

uint64_t sub_25161D988()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_25161DB30;
  }

  else
  {

    v2 = sub_25161DAA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25161DAA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25161DB30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25161DBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a11;
  v16[6] = a1;
  v16[7] = a2;
  v21[0] = a4;
  v21[1] = a5;
  v17 = *(a10 + 8);

  v17(v21, a6, a7, sub_25161F5B8, v16, a9, a11, a8, a10);
}

uint64_t sub_25161DCBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v14 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v8 = (*(*(v5 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2515F8380(0);
  v10 = (v8 + *(*(v9 - 8) + 80) + 16) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = *(sub_25163522C() - 8);
  return sub_25161DBC0(a1, a2, v2 + v7, *(v2 + v8), *(v2 + v8 + 8), v2 + v10, v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v5, v14, *(&v14 + 1), v6);
}

uint64_t sub_25161DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25161DE64, 0, 0);
}

uint64_t sub_25161DE64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v0 + 64) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3 + 16;
  *(v4 + 40) = v5;

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_25161DFC0;
  v7 = *(v0 + 16);

  return MEMORY[0x28216C3C0](v7, 0, 0, 0xD00000000000001ELL, 0x800000025163C590, sub_25161F320, v4, sub_25161F584);
}

uint64_t sub_25161DFC0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25161E148;
  }

  else
  {

    v2 = sub_25161E0E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25161E0E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25161E148()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ClassificationStore.mostRecentClassification<A>(of:calendar:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[7] = a7;
  v8[8] = v7;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v11 = sub_25163522C();
  v8[9] = v11;
  v12 = *(v11 - 8);
  v8[10] = v12;
  v8[11] = *(v12 + 64);
  v8[12] = swift_task_alloc();
  v13 = *(a4 - 8);
  v8[13] = v13;
  v8[14] = *(v13 + 64);
  v14 = swift_task_alloc();
  v15 = *a2;
  v16 = a2[1];
  v8[15] = v14;
  v8[16] = v15;
  v8[17] = v16;

  return MEMORY[0x2822009F8](sub_25161E2FC, 0, 0);
}

uint64_t sub_25161E2FC()
{
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);
  v20 = *(v0 + 56);
  v21 = v3;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v24 = *(v0 + 40);
  (*(v4 + 16))(v1, *(v0 + 64), v8);
  (*(v5 + 16))(v3, v7, v6);
  v9 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v5 + 80) + v10 + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 144) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v24;
  *(v12 + 40) = v20;
  (*(v4 + 32))(v12 + v9, v1, v8);
  v13 = (v12 + v10);
  *v13 = v22;
  v13[1] = v23;
  (*(v5 + 32))(v12 + v11, v21, v6);

  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  v15 = sub_25163563C();
  *v14 = v0;
  v14[1] = sub_25161E504;
  v16 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);

  return sub_25161DE3C(v18, sub_25161E6D8, v12, v17, v15, v16);
}

uint64_t sub_25161E504()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25161E65C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25161E65C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25161E6D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  v8 = *(v2 + 5);
  v9 = (*(*(v5 - 8) + 64) + ((*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_25163522C() - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *&v2[v9 + 8];
  v14[0] = *&v2[v9];
  v14[1] = v12;
  return (*(v7 + 16))(v14, &v2[v11], a1, a2, v6, v8, v5, v7);
}

uint64_t ClassificationStore.classificationAxisTimeline<A>(for:over:calendar:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a4;
  v9[5] = a5;
  v9[2] = a1;
  v9[3] = a3;
  v12 = sub_25163522C();
  v9[10] = v12;
  v13 = *(v12 - 8);
  v9[11] = v13;
  v9[12] = *(v13 + 64);
  v9[13] = swift_task_alloc();
  sub_2515F8380(0);
  v15 = *(v14 - 8);
  v9[14] = v15;
  v9[15] = *(v15 + 64);
  v9[16] = swift_task_alloc();
  v16 = *(a5 - 8);
  v9[17] = v16;
  v9[18] = *(v16 + 64);
  v17 = swift_task_alloc();
  v18 = *a2;
  v19 = a2[1];
  v9[19] = v17;
  v9[20] = v18;
  v9[21] = v19;

  return MEMORY[0x2822009F8](sub_25161E9B0, 0, 0);
}

uint64_t sub_25161E9B0()
{
  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v28 = *(v0 + 152);
  v29 = v2;
  v26 = *(v0 + 144);
  v27 = *(v0 + 120);
  v25 = *(v0 + 112);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v30 = v5;
  v31 = v3;
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v34 = *(v0 + 48);
  (*(v1 + 16))();
  sub_251601094(v9, v2);
  (*(v4 + 16))(v3, v7, v5);
  v10 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v11 = (v26 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v25 + 80) + v11 + 16) & ~*(v25 + 80);
  v13 = (v27 + *(v4 + 80) + v12) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v0 + 176) = v14;
  *(v14 + 16) = v8;
  *(v14 + 24) = v34;
  *(v14 + 40) = v6;
  (*(v1 + 32))(v14 + v10, v28, v8);
  v15 = (v14 + v11);
  *v15 = v32;
  v15[1] = v33;
  sub_251601234(v29, v14 + v12);
  (*(v4 + 32))(v14 + v13, v31, v30);

  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for ClassificationAxisTimeline(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  *v16 = v0;
  v16[1] = sub_25161EC88;
  v21 = *(v0 + 56);
  v22 = *(v0 + 40);
  v23 = *(v0 + 16);

  return sub_25161DE3C(v23, sub_25161F020, v14, v22, v20, v21);
}

uint64_t sub_25161EC88()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25161DB30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t objectdestroyTm()
{
  v19 = *(v0 + 16);
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 48) & ~v2;
  v3 = (*(v1 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2515F8380(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 80);
  v7 = (v3 + v6 + 16) & ~v6;
  v8 = *(*(v4 - 8) + 64);
  v18 = sub_25163522C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v17 = *(v9 + 64);
  v12 = v2 | v6 | v10;
  (*(v1 + 8))(v0 + v16, v19);

  v13 = sub_25163516C();
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v7, v13);
  v14(v0 + v7 + *(v5 + 44), v13);
  (*(v9 + 8))(v0 + v11, v18);

  return MEMORY[0x2821FE8E8](v0, v11 + v17, v12 | 7);
}

uint64_t sub_25161F020(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = *(v2 + 4);
  v5 = *(v2 + 5);
  v7 = (*(*(v3 - 8) + 64) + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2515F8380(0);
  v9 = (v7 + *(*(v8 - 8) + 80) + 16) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(sub_25163522C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *&v2[v7 + 8];
  v17[0] = *&v2[v7];
  v17[1] = v13;
  return (*(v6 + 24))(v17, &v2[v9], &v2[v12], a1, a2, v4, v5, v3, v6);
}

void sub_25161F1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25163525C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25161F248()
{
  if (!qword_27F447380)
  {
    v0 = sub_25163563C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F447380);
    }
  }
}

void sub_25161F298(uint64_t a1, os_unfair_lock_t lock, void (*a3)(__int128 *__return_ptr, uint64_t (*)(), void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock(lock);
  sub_25161F330(&lock[2], a3, a4, a1, a5, a6);

  os_unfair_lock_unlock(lock);
}

double sub_25161F330(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t (*)(), void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_25161F59C(*a1, a1[1]);
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a4;

  a2(&v13, sub_25161F5AC, v11);

  result = *&v13;
  *a1 = v13;
  return result;
}

uint64_t sub_25161F3F8(uint64_t a1, void *a2)
{
  sub_2516041EC();
  v3 = sub_25163595C();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_25163526C();
}

void sub_25161F508(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  sub_25161F58C(v2, v3);
  os_unfair_lock_unlock((a1 + 16));
  if (v2)
  {
    v2();

    sub_25161F59C(v2, v3);
  }
}

uint64_t sub_25161F58C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25161F59C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25161F5B8(uint64_t a1, char a2)
{
  v3 = *(v2 + 48);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_25161F5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_25161FC28(v13, v10);
      sub_25161FC28(v14, v7);
      if ((sub_25163514C() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 20);
      v17 = &v10[v16];
      v18 = v10[v16 + 8];
      v20 = *&v10[v16 + 16];
      v19 = *&v10[v16 + 24];
      v21 = v10[v16 + 32];
      v22 = &v7[v16];
      v23 = v7[v16 + 8];
      v25 = *&v7[v16 + 16];
      v24 = *&v7[v16 + 24];
      if (v18)
      {
        if (v20 == v25)
        {
          v26 = v23;
        }

        else
        {
          v26 = 0;
        }

        if (v26 != 1)
        {
          break;
        }
      }

      else
      {
        if (v23)
        {
          break;
        }

        if (*v17 != *v22 || v20 != v25)
        {
          break;
        }
      }

      if (v19 != v24 || v21 != v22[32])
      {
        break;
      }

      sub_25161FC8C(v7);
      sub_25161FC8C(v10);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_25161FC8C(v7);
    sub_25161FC8C(v10);
  }

  return 0;
}

uint64_t sub_25161F7D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2516358DC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t ConstellationMeasures.constellationIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

HealthDomains::ConstellationMeasures __swiftcall ConstellationMeasures.init(constellationIdentifier:measureIdentifiers:)(HealthDomains::ConstellationIdentifier constellationIdentifier, Swift::OpaquePointer measureIdentifiers)
{
  v3 = *(constellationIdentifier.identifier._countAndFlagsBits + 8);
  *v2 = *constellationIdentifier.identifier._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = constellationIdentifier.identifier._object;
  result.constellationIdentifier = constellationIdentifier;
  result.measureIdentifiers = measureIdentifiers;
  return result;
}

uint64_t static ConstellationMeasures.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  return sub_25161F7D0(v2, v3);
}

uint64_t ConstellationMeasures.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_25163539C();
  result = MEMORY[0x25307C1E0](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_25163539C();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ConstellationMeasures.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_25163590C();
  sub_25163539C();
  MEMORY[0x25307C1E0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_25163539C();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_25163594C();
}

uint64_t sub_25161FA1C()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_25163590C();
  ConstellationMeasures.hash(into:)(v2);
  return sub_25163594C();
}

uint64_t sub_25161FA74(uint64_t a1)
{
  v3[9] = *v1;
  v4 = *(v1 + 8);
  sub_25163590C();
  ConstellationMeasures.hash(into:)(v3);
  return sub_25163594C();
}

uint64_t sub_25161FAC4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2516358DC() & 1) == 0)
  {
    return 0;
  }

  return sub_25161F7D0(v2, v3);
}

unint64_t sub_25161FB3C()
{
  result = qword_27F447388;
  if (!qword_27F447388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F447388);
  }

  return result;
}

uint64_t sub_25161FB90(uint64_t a1, int a2)
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

uint64_t sub_25161FBD8(uint64_t result, int a2, int a3)
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

uint64_t sub_25161FC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25161FC8C(uint64_t a1)
{
  v2 = type metadata accessor for ClassificationFactorTimeline.ChangeMoment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25161FCE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t MeasurementClassifier.classificationBatches(over:calendar:batchSize:batchHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v49 = a7;
  v43 = a6;
  v47 = a4;
  v50 = a3;
  v45 = a2;
  v53 = sub_25163522C();
  v51 = *(v53 - 8);
  v46 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v11;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v44 = &v38 - v20;
  sub_2515F8E44(0);
  sub_25163516C();
  sub_2516232AC(a1, v21, sub_2515F8380);
  v22 = v43;
  (*(v12 + 16))(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v43);
  sub_2516232AC(v21, v19, sub_2515F8380);
  sub_2516232AC(a1, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2515F8380);
  v23 = v51;
  (*(v51 + 16))(v11, v45, v53);
  v24 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v25 = *(v42 + 80);
  v26 = (v13 + v25 + v24) & ~v25;
  v27 = (v15 + v25 + v26) & ~v25;
  v28 = (v15 + *(v23 + 80) + v27) & ~*(v23 + 80);
  v29 = (v46 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v22;
  v32 = v49;
  *(v30 + 2) = v22;
  *(v30 + 3) = v32;
  v33 = v48;
  *(v30 + 4) = v47;
  *(v30 + 5) = v33;
  v34 = &v30[v24];
  v35 = v31;
  (*(v12 + 32))(v34, v39);
  sub_251623850(v19, &v30[v26], sub_2515F8380);
  sub_251623850(v40, &v30[v27], sub_2515F8380);
  (*(v51 + 32))(&v30[v28], v41, v53);
  *&v30[v29] = v50;
  v36 = *(v32 + 32);

  v36(sub_251620414, v30, v35, v32);

  return sub_2516238E0(v44, sub_2515F8380);
}

uint64_t sub_2516201B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v30 = a4;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2516041EC();
  v13 = sub_25163595C();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  (*(v23 + 16))(v16, a1, v13);
  sub_25161FCE8(v13, &v32, v20);
  (*(v17 + 32))(v22, v20, AssociatedTypeWitness);
  sub_251620590(v22, v26, v27, v28, v29, a2, v31, a9, a10);
  return (*(v17 + 8))(v22, AssociatedTypeWitness);
}

uint64_t sub_251620414(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  sub_2515F8380(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(sub_25163522C() - 8);
  v13 = (v11 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_2516201B8(a1, v1[4], v1[5], v1 + v5, v1 + v9, v1 + v11, v1 + v13, *(v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_251620590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v59 = a4;
  v49 = a3;
  v57 = a2;
  v47 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v48 = *(v54 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v38 - v11;
  v55 = sub_25163522C();
  v53 = *(v55 - 8);
  v43 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  sub_2515F8380(0);
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v38 = &v38 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a9;
  (*(v41 + 40))(v60, a8, v41);
  v46 = v61;
  v44 = v62;
  v45 = __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(v20 + 16))(v22, v9, a8);
  sub_2516232AC(v57, v19, sub_2515F8380);
  v23 = v53;
  (*(v53 + 16))(v13, v59, v55);
  v24 = v54;
  (*(v54 + 16))(v56, v47, AssociatedTypeWitness);
  sub_2516232AC(v49, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2515F8380);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = *(v42 + 80);
  v27 = (v21 + v26 + v25) & ~v26;
  v28 = (v15 + *(v23 + 80) + v27) & ~*(v23 + 80);
  v29 = (v43 + *(v24 + 80) + v28) & ~*(v24 + 80);
  v30 = (v48 + v26 + v29) & ~v26;
  v31 = swift_allocObject();
  v32 = a8;
  v33 = v41;
  *(v31 + 2) = a8;
  *(v31 + 3) = v33;
  v34 = v51;
  *(v31 + 4) = v50;
  *(v31 + 5) = v34;
  (*(v20 + 32))(&v31[v25], v22, v32);
  sub_251623850(v38, &v31[v27], sub_2515F8380);
  (*(v53 + 32))(&v31[v28], v40, v55);
  (*(v54 + 32))(&v31[v29], v56, AssociatedTypeWitness);
  sub_251623850(v39, &v31[v30], sub_2515F8380);
  *&v31[(v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v52;
  v35 = v44;
  v36 = *(v44 + 8);

  v36(MEMORY[0x277D84FA0], v57, v59, sub_251623940, v31, v46, v35);

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

void sub_251620AA0(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a8;
  v30 = a7;
  v31 = a3;
  sub_251623174(0, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  MEMORY[0x28223BE20](v15);
  v17 = (&v28 - v16);
  v18 = type metadata accessor for ClassificationFactorTimeline(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251623240(a1, v17, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32[0] = *v17;
    v21 = v32[0];
    sub_2516041EC();
    swift_willThrowTypedImpl();
    v22 = v21;
    a2(v21, 256);
  }

  else
  {
    sub_251623850(v17, v20, type metadata accessor for ClassificationFactorTimeline);
    (*(a11 + 48))(v32, a5, a6, a10, a11);
    v23 = v33;
    v24 = v34;
    v25 = __swift_project_boxed_opaque_existential_1(v32, v33);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    ClassificationPolicy.classificationBatches<A>(of:considering:limitingDateRange:batchSize:batchHandler:)(v25, v20, v29, a9, a2, v31, AssociatedTypeWitness, v23, AssociatedConformanceWitness, v24);
    sub_2516238E0(v20, type metadata accessor for ClassificationFactorTimeline);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }
}

uint64_t MeasurementClassifier.mostRecentClassification(calendar:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v9 = sub_25163522C();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v6, a4);
  (*(v10 + 16))(v13, v25, v9);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  v20 = v27;
  *(v19 + 4) = v26;
  *(v19 + 5) = v20;
  (*(v14 + 32))(&v19[v17], v16, a4);
  (*(v10 + 32))(&v19[v18], v13, v24);
  v21 = *(a5 + 56);

  v21(sub_2516216CC, v19, a4, a5);
}

uint64_t sub_251620F70(char *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a5;
  v59 = a4;
  v67 = a1;
  v68 = a3;
  v66 = a2;
  sub_2515F8E44(0);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v51 - v12;
  sub_2515F8380(0);
  v51 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v51 - v16;
  v60 = a7;
  v58 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_25163563C();
  v64 = sub_2516041EC();
  v17 = sub_25163595C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v51 - v19);
  v21 = sub_25163516C();
  v65 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v63 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v62 = &v51 - v24;
  sub_251623174(0, qword_27F447390, sub_2516231E8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v51 - v26);
  sub_2516231E8(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v51 - v32;
  sub_251623240(v67, v27, qword_27F447390, sub_2516231E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = *v27;
    v34 = v69;
    swift_willThrowTypedImpl();
    *v20 = v34;
    swift_storeEnumTagMultiPayload();
    v35 = v34;
    v66(v20);

    return (*(v18 + 8))(v20, v17);
  }

  sub_251623850(v27, v33, sub_2516231E8);
  sub_2516232AC(v33, v31, sub_2516231E8);
  v37 = v65;
  if ((*(v65 + 48))(v31, 1, v21) == 1)
  {
    sub_2516238E0(v31, sub_2516231E8);
    (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1, 1);
    swift_storeEnumTagMultiPayload();
    v66(v20);
    (*(v18 + 8))(v20, v17);
    v38 = v33;
  }

  else
  {
    v67 = v33;
    v39 = *(v37 + 32);
    v40 = v62;
    v39(v62, v31, v21);
    v41 = v63;
    sub_25163510C();
    sub_2515FA0F4();
    result = sub_25163530C();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v42 = *(v37 + 16);
    v43 = v52;
    v42(v52, v40, v21);
    v44 = v55;
    v42((v43 + *(v55 + 48)), v41, v21);
    v45 = v54;
    sub_2516232AC(v43, v54, sub_2515F8E44);
    v46 = *(v44 + 48);
    v47 = v37;
    v48 = v53;
    v39(v53, v45, v21);
    v49 = *(v47 + 8);
    v49(v45 + v46, v21);
    sub_251623850(v43, v45, sub_2515F8E44);
    v39((v48 + *(v51 + 36)), (v45 + *(v44 + 48)), v21);
    v49(v45, v21);
    v50 = v56;
    sub_2516232AC(v48, v56, sub_2515F8380);
    sub_2516238E0(v48, sub_2515F8380);
    sub_2516222F8(v50, v57, v66, v68, v58, v60, &unk_28638B988, sub_251623524);
    sub_2516238E0(v50, sub_2515F8380);
    v49(v63, v21);
    v49(v62, v21);
    v38 = v67;
  }

  return sub_2516238E0(v38, sub_2516231E8);
}

uint64_t sub_2516216CC(char *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(sub_25163522C() - 8);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_251620F70(a1, v8, v9, v1 + v5, v10, v3, v4);
}

uint64_t sub_2516217B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v26 = a6;
  v27 = a4;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v10 = sub_25163595C();
  MEMORY[0x28223BE20](v10);
  v28 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_25163595C();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - v20;
  (*(v22 + 16))(v15, v29, v12);
  sub_25161FCE8(v12, &v32, v19);
  (*(v16 + 32))(v21, v19, AssociatedTypeWitness);
  sub_251621ADC(v21, v25, v26, v30, v31, a7, v28);
  return (*(v16 + 8))(v21, AssociatedTypeWitness);
}

uint64_t sub_251621ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a4;
  v43 = a5;
  v48 = a2;
  v49 = a3;
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v41 = *(v45 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v32 - v9;
  v44 = sub_25163522C();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v44);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a7;
  v34 = a7;
  v19 = *(a7 + 40);
  v20 = v36;
  v19(v50, a6, v18);
  v39 = v51;
  v37 = v52;
  v38 = __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v15 + 16))(v17, v20, a6);
  sub_2516232AC(v48, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2515F8380);
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v44);
  v21 = v45;
  (*(v45 + 16))(v46, v40, AssociatedTypeWitness);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = (v16 + *(v35 + 80) + v22) & ~*(v35 + 80);
  v24 = (v13 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = (v11 + *(v21 + 80) + v24) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 2) = a6;
  *(v26 + 3) = v27;
  v28 = v43;
  *(v26 + 4) = v42;
  *(v26 + 5) = v28;
  (*(v15 + 32))(&v26[v22], v17, a6);
  sub_251623850(v32, &v26[v23], sub_2515F8380);
  (*(v10 + 32))(&v26[v24], v33, v44);
  (*(v45 + 32))(&v26[v25], v46, AssociatedTypeWitness);
  v29 = v37;
  v30 = *(v37 + 8);

  v30(MEMORY[0x277D84FA0], v48, v49, sub_251623698, v26, v39, v29);

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_251621F40(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a6;
  v34 = a7;
  v31 = a5;
  v32 = a4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  swift_getAssociatedTypeWitness();
  sub_25163563C();
  sub_2516041EC();
  v10 = sub_25163595C();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v29 - v11);
  sub_251623174(0, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  MEMORY[0x28223BE20](v13);
  v15 = (&v29 - v14);
  v16 = type metadata accessor for ClassificationFactorTimeline(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251623240(v35, v15, &qword_27F446E28, type metadata accessor for ClassificationFactorTimeline);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38[0] = *v15;
    v19 = v38[0];
    swift_willThrowTypedImpl();
    *v12 = v19;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v36(v12);

    return (*(v30 + 8))(v12, v10);
  }

  else
  {
    sub_251623850(v15, v18, type metadata accessor for ClassificationFactorTimeline);
    (*(a9 + 48))(v38, v31, v33, a8, a9);
    v23 = v39;
    v22 = v40;
    v24 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v25 = swift_allocObject();
    v25[2] = a8;
    v25[3] = a9;
    v26 = v37;
    v25[4] = v36;
    v25[5] = v26;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

    ClassificationPolicy.mostRecentClassification<A>(from:considering:completion:)(v24, v18, sub_2516238B8, v25, AssociatedTypeWitness, v23, AssociatedConformanceWitness, v22);

    sub_2516238E0(v18, type metadata accessor for ClassificationFactorTimeline);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }
}

uint64_t sub_2516222F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a6;
  v42 = a8;
  v38 = a7;
  v39 = a3;
  v9 = v8;
  v37 = a2;
  v40 = a4;
  v36 = a1;
  v11 = sub_25163522C();
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2515F8380(0);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v9);
  sub_2516232AC(v36, v17, sub_2515F8380);
  (*(v12 + 16))(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v11);
  v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v22 = (v19 + *(v35 + 80) + v21) & ~*(v35 + 80);
  v23 = (v15 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v32;
  v26 = v40;
  v27 = v41;
  *(v24 + 2) = v32;
  *(v24 + 3) = v27;
  *(v24 + 4) = v39;
  *(v24 + 5) = v26;
  v28 = &v24[v21];
  v29 = v25;
  (*(v18 + 32))(v28, v20);
  sub_251623850(v17, &v24[v22], sub_2515F8380);
  (*(v12 + 32))(&v24[v23], v34, v33);
  v30 = *(v27 + 32);

  v30(v42, v24, v29, v27);
}

uint64_t sub_251622604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a5;
  v44 = a6;
  v40 = a4;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ClassificationAxisTimeline(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  sub_2516041EC();
  v13 = sub_25163595C();
  v45 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = a7;
  v42 = a8;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_25163595C();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = *(v14 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v22 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v39 - v26;
  (*(v28 + 16))(v18, v46, v15);
  sub_25161FCE8(v15, v49, v25);
  v39 = *(v19 + 32);
  v39(v27, v25, v14);
  v29 = v41;
  v30 = v42;
  (*(v42 + 40))(v49, v41, v42);
  v46 = v50;
  v40 = v51;
  v45 = __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v19 + 16))(v22, v27, v14);
  v31 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v32 = (v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *(v33 + 24) = v30;
  v39((v33 + v31), v22, v14);
  v34 = (v33 + v32);
  v35 = v48;
  *v34 = v47;
  v34[1] = v35;
  v36 = v40;
  v37 = *(v40 + 8);

  v37(MEMORY[0x277D84FA0], v43, v44, sub_251622DC8, v33, v46, v36);

  (*(v19 + 8))(v27, v14);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}