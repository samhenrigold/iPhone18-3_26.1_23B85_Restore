unint64_t sub_2388A4128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31270;
  if (!qword_27DF31270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31270);
  }

  return result;
}

unint64_t sub_2388A4180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31278;
  if (!qword_27DF31278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31278);
  }

  return result;
}

unint64_t sub_2388A41D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31280;
  if (!qword_27DF31280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31280);
  }

  return result;
}

unint64_t sub_2388A4230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31288;
  if (!qword_27DF31288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31288);
  }

  return result;
}

unint64_t sub_2388A4288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31290;
  if (!qword_27DF31290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31290);
  }

  return result;
}

unint64_t sub_2388A42E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31298;
  if (!qword_27DF31298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31298);
  }

  return result;
}

unint64_t sub_2388A4338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312A0;
  if (!qword_27DF312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312A0);
  }

  return result;
}

unint64_t sub_2388A4390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312A8;
  if (!qword_27DF312A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312A8);
  }

  return result;
}

unint64_t sub_2388A43E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2388A4430(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2388A447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312B0;
  if (!qword_27DF312B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312B0);
  }

  return result;
}

unint64_t sub_2388A44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312C0;
  if (!qword_27DF312C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312C0);
  }

  return result;
}

unint64_t sub_2388A4524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312C8;
  if (!qword_27DF312C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312C8);
  }

  return result;
}

uint64_t sub_2388A4578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    return sub_238810DC4(a3, a4, a5);
  }

  return result;
}

unint64_t sub_2388A45C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312D0;
  if (!qword_27DF312D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312D0);
  }

  return result;
}

uint64_t sub_2388A461C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_238810E44(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2388A4684(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2388A46D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xE900000000000065 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2388D3368();

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

unint64_t sub_2388A487C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2388D3138();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2388A48C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF313A8, &qword_2388DAA68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388A5594(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  LOBYTE(v22) = 0;
  v12 = sub_2388D31D8();
  v14 = v13;
  v15 = v12;
  v25 = 1;
  sub_238826CFC(v12, v13, v16);
  sub_2388D31F8();
  (*(v6 + 8))(v8, v5);
  v17 = v22;
  v18 = v23;
  v19 = v24;
  result = sub_2388158BC(a1);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_2388A4AC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388A4BE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF312D8, &qword_2388DAA00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388A4E2C(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v28 = 0;
  v12 = sub_2388D31D8();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_2388D31D8();
  v24 = v15;
  v26 = 2;
  v16 = sub_2388D31D8();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  result = sub_2388158BC(a1);
  *a2 = v25;
  a2[1] = v14;
  v21 = v24;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v16;
  a2[5] = v19;
  return result;
}

unint64_t sub_2388A4E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312E0;
  if (!qword_27DF312E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312E0);
  }

  return result;
}

uint64_t sub_2388A4E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
  if (v4 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1349545844 && a2 == 0xE400000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796465657267 && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (sub_2388D3368() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002388DF8B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388A508C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF312E8, &qword_2388DAA08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388A5348(v9, v10, v11);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v46 = 0;
  v12 = sub_2388D3198();
  v14 = v13;
  v15 = v12;
  v45 = 1;
  v16 = sub_2388D31A8();
  v18 = v17;
  v35 = v16;
  v44 = 2;
  v19 = sub_2388D3198();
  v33 = v20;
  v34 = v19;
  v43 = 3;
  v32 = sub_2388D3188();
  v42 = 4;
  v21 = sub_2388D31C8();
  v30 = v22;
  v31 = v21;
  v41 = 5;
  v23 = sub_2388D31A8();
  v24 = *(v6 + 8);
  v29 = v23;
  v25 = v8;
  v27 = v26;
  v24(v25, v5);
  v40 = v14 & 1;
  v39 = v18 & 1;
  v38 = v33 & 1;
  v37 = v30 & 1;
  v36 = v27 & 1;
  result = sub_2388158BC(a1);
  *a2 = v15;
  *(a2 + 8) = v40;
  *(a2 + 16) = v35;
  *(a2 + 24) = v39;
  *(a2 + 32) = v34;
  *(a2 + 40) = v38;
  *(a2 + 41) = v32;
  *(a2 + 48) = v31;
  *(a2 + 56) = v37;
  *(a2 + 64) = v29;
  *(a2 + 72) = v36;
  return result;
}

unint64_t sub_2388A5348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF312F0;
  if (!qword_27DF312F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF312F0);
  }

  return result;
}

unint64_t sub_2388A539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31300;
  if (!qword_27DF31300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31300);
  }

  return result;
}

unint64_t sub_2388A53F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31318;
  if (!qword_27DF31318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31318);
  }

  return result;
}

unint64_t sub_2388A5444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31330;
  if (!qword_27DF31330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31330);
  }

  return result;
}

unint64_t sub_2388A5498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31338;
  if (!qword_27DF31338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31338);
  }

  return result;
}

unint64_t sub_2388A54EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31378;
  if (!qword_27DF31378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31378);
  }

  return result;
}

unint64_t sub_2388A5540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31398;
  if (!qword_27DF31398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31398);
  }

  return result;
}

unint64_t sub_2388A5594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313B0;
  if (!qword_27DF313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313B0);
  }

  return result;
}

unint64_t sub_2388A55E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313C0;
  if (!qword_27DF313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptCoderV1.SamplingParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TranscriptCoderV1.SamplingParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2388A5800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313C8;
  if (!qword_27DF313C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313C8);
  }

  return result;
}

unint64_t sub_2388A5858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313D0;
  if (!qword_27DF313D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313D0);
  }

  return result;
}

unint64_t sub_2388A58B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313D8;
  if (!qword_27DF313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313D8);
  }

  return result;
}

unint64_t sub_2388A5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313E0;
  if (!qword_27DF313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313E0);
  }

  return result;
}

unint64_t sub_2388A5960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313E8;
  if (!qword_27DF313E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313E8);
  }

  return result;
}

unint64_t sub_2388A59B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313F0;
  if (!qword_27DF313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313F0);
  }

  return result;
}

unint64_t sub_2388A5A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF313F8;
  if (!qword_27DF313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF313F8);
  }

  return result;
}

unint64_t sub_2388A5A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31400;
  if (!qword_27DF31400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31400);
  }

  return result;
}

unint64_t sub_2388A5AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31408;
  if (!qword_27DF31408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31408);
  }

  return result;
}

unint64_t sub_2388A5B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31410;
  if (!qword_27DF31410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31410);
  }

  return result;
}

unint64_t sub_2388A5B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31418;
  if (!qword_27DF31418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31418);
  }

  return result;
}

unint64_t sub_2388A5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31420;
  if (!qword_27DF31420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31420);
  }

  return result;
}

unint64_t sub_2388A5C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31428;
  if (!qword_27DF31428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31428);
  }

  return result;
}

unint64_t sub_2388A5C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31430;
  if (!qword_27DF31430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31430);
  }

  return result;
}

unint64_t sub_2388A5CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31438;
  if (!qword_27DF31438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31438);
  }

  return result;
}

unint64_t sub_2388A5D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31440;
  if (!qword_27DF31440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31440);
  }

  return result;
}

unint64_t sub_2388A5D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31448;
  if (!qword_27DF31448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31448);
  }

  return result;
}

unint64_t sub_2388A5DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31450;
  if (!qword_27DF31450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31450);
  }

  return result;
}

unint64_t sub_2388A5E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31458;
  if (!qword_27DF31458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31458);
  }

  return result;
}

unint64_t sub_2388A5E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31460;
  if (!qword_27DF31460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31460);
  }

  return result;
}

unint64_t sub_2388A5EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31468;
  if (!qword_27DF31468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31468);
  }

  return result;
}

unint64_t sub_2388A5F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31470;
  if (!qword_27DF31470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31470);
  }

  return result;
}

unint64_t sub_2388A5F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31478;
  if (!qword_27DF31478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31478);
  }

  return result;
}

unint64_t sub_2388A5FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31480;
  if (!qword_27DF31480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31480);
  }

  return result;
}

uint64_t sub_2388A603C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

unint64_t Transcript.Entry.description.getter()
{
  v1 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2388A7320(v0, v6, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_238841DD8(v6, v3);
      v18 = Transcript.Prompt.description.getter();
      sub_2388A7388(v3, type metadata accessor for Transcript.Prompt);
      return v18;
    }

    v13 = v6[1];
    v14 = v6[2];
    v15 = v6[3];
    v23 = *v6;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v12 = Transcript.Instructions.description.getter();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v8 = v6[1];
    if (EnumCaseMultiPayload == 3)
    {
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      v23 = *v6;
      v24 = v8;
      v25 = v9;
      v26 = v10;
      v27 = v11;
      v12 = Transcript.ToolOutput.description.getter();
    }

    else
    {
      v19 = v6[2];
      v20 = v6[3];
      v23 = *v6;
      v24 = v8;
      v25 = v19;
      v26 = v20;
      v12 = Transcript.Response.description.getter();
    }

LABEL_9:
    v18 = v12;

    goto LABEL_10;
  }

  v16 = v6[1];
  v17 = v6[2];
  v23 = *v6;
  v24 = v16;
  v25 = v17;
  v18 = Transcript.ToolCalls.description.getter();
LABEL_10:

  return v18;
}

uint64_t Transcript.Instructions.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v2, 0);
    v3 = (v1 + 56);
    do
    {
      v4 = v3[3] >> 62;
      if (v4)
      {
        if (v4 != 1)
        {
          MEMORY[0x23EE66C20](*(v3 - 3), *(v3 - 2));
          MEMORY[0x23EE66C20](41, 0xE100000000000000);
          v6 = 0x206567616D4928;
          v5 = 0xE700000000000000;
          goto LABEL_9;
        }

        v6 = v3[6];
        v5 = v3[7];
      }

      else
      {
        v6 = *(v3 - 1);
        v5 = *v3;
      }

LABEL_9:
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2388B7BD0((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v10 = sub_2388D27B8();
  v12 = v11;

  MEMORY[0x23EE66C20](v10, v12);

  return 0x63757274736E4928;
}

unint64_t Transcript.Prompt.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_13;
  }

  v32 = v0;
  v33 = &v32 - v6;
  v34 = v4;
  v37 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v9, 0);
  v10 = v37;
  v11 = (v8 + 56);
  do
  {
    v12 = v11[3] >> 62;
    if (!v12)
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      goto LABEL_7;
    }

    if (v12 == 1)
    {
      v13 = v11[6];
      v14 = v11[7];
LABEL_7:

      goto LABEL_9;
    }

    v15 = *(v11 - 3);
    v16 = *(v11 - 2);
    v35 = 0x206567616D4928;
    v36 = 0xE700000000000000;
    MEMORY[0x23EE66C20](v15, v16);
    MEMORY[0x23EE66C20](41, 0xE100000000000000);
    v13 = v35;
    v14 = v36;
LABEL_9:
    v37 = v10;
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2388B7BD0((v17 > 1), v18 + 1, 1);
      v10 = v37;
    }

    *(v10 + 16) = v18 + 1;
    v19 = v10 + 16 * v18;
    *(v19 + 32) = v13;
    *(v19 + 40) = v14;
    v11 += 11;
    --v9;
  }

  while (v9);
  v7 = v33;
  v4 = v34;
  v1 = v32;
LABEL_13:
  v35 = v10;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v20 = sub_2388D27B8();
  v22 = v21;

  v35 = 0x2974706D6F725028;
  v36 = 0xE900000000000020;
  MEMORY[0x23EE66C20](v20, v22);

  v24 = v35;
  v23 = v36;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_2388D2FA8();

  v35 = 0xD000000000000012;
  v36 = 0x80000002388DF8D0;
  v25 = type metadata accessor for Transcript.Prompt(0);
  sub_238896400(v1 + *(v25 + 28), v7);
  v26 = type metadata accessor for Transcript.ResponseFormat(0);
  if ((*(*(v26 - 8) + 48))(v7, 1, v26) == 1)
  {
    sub_2388A72B8(v7);
    v27 = 0xE500000000000000;
    v28 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_2388A7320(v7, v4, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
    sub_2388A7388(v7, type metadata accessor for Transcript.ResponseFormat);
    v28 = *v4;
    v27 = v4[1];

    sub_2388A7388(v4, type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat);
  }

  MEMORY[0x23EE66C20](v28, v27);

  v29 = v35;
  v30 = v36;
  v35 = v24;
  v36 = v23;

  MEMORY[0x23EE66C20](v29, v30);

  return v35;
}

uint64_t Transcript.ToolCalls.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v2, 0);
    v3 = v25;
    v4 = *(v1 + 16);
    v5 = (v1 + 112);
    while (1)
    {
      v21 = v2;
      v22 = v4;
      v23 = v3;
      v6 = *(v5 - 6);
      v7 = *(v5 - 5);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v5 - 32);
      v24[0] = *(v5 - 8);
      v24[1] = *(v5 - 7);

      sub_238814698(v6, v7, v10);

      sub_238814698(v6, v7, v10);

      MEMORY[0x23EE66C20](8250, 0xE200000000000000);
      MEMORY[0x23EE66C20](v8, v9);

      sub_238810DC4(v6, v7, v10);

      v11 = v7;
      v3 = v23;
      sub_238810DC4(v6, v11, v10);

      v13 = v24[0];
      v14 = v24[1];
      v25 = v23;
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2388B7BD0((v15 > 1), v16 + 1, 1);
        v3 = v25;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      if (!v22)
      {
        break;
      }

      v5 += 11;
      v4 = v22 - 1;
      v2 = v21 - 1;
      if (v21 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
    sub_238841E3C();
    v18 = sub_2388D27B8();
    v20 = v19;

    strcpy(v24, "(ToolCalls) ");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    MEMORY[0x23EE66C20](v18, v20);

    return v24[0];
  }

  return result;
}

uint64_t Transcript.ToolOutput.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2388D2FA8();

  strcpy(v21, "(ToolOutput ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  MEMORY[0x23EE66C20](v1, v2);
  MEMORY[0x23EE66C20](8233, 0xE200000000000000);
  v4 = v21[0];
  v5 = *(v3 + 16);
  if (v5)
  {
    v19 = v21[0];
    v20 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v5, 0);
    v6 = (v3 + 56);
    while (1)
    {
      v7 = v6[3] >> 62;
      if (v7)
      {
        if (v7 != 1)
        {
          v10 = *(v6 - 3);
          v11 = *(v6 - 2);
          strcpy(v21, "(Image ");
          v21[1] = 0xE700000000000000;
          MEMORY[0x23EE66C20](v10, v11);
          MEMORY[0x23EE66C20](41, 0xE100000000000000);
          v9 = v21[0];
          v8 = 0xE700000000000000;
          goto LABEL_9;
        }

        v9 = v6[6];
        v8 = v6[7];
      }

      else
      {
        v9 = *(v6 - 1);
        v8 = *v6;
      }

LABEL_9:
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2388B7BD0((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v8;
      v6 += 11;
      if (!--v5)
      {
        v4 = v19;
        break;
      }
    }
  }

  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v15 = sub_2388D27B8();
  v17 = v16;

  MEMORY[0x23EE66C20](v15, v17);

  return v4;
}

uint64_t Transcript.Response.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v2, 0);
    v3 = (v1 + 56);
    do
    {
      v4 = v3[3] >> 62;
      if (v4)
      {
        if (v4 != 1)
        {
          MEMORY[0x23EE66C20](*(v3 - 3), *(v3 - 2));
          MEMORY[0x23EE66C20](41, 0xE100000000000000);
          v6 = 0x206567616D4928;
          v5 = 0xE700000000000000;
          goto LABEL_9;
        }

        v6 = v3[6];
        v5 = v3[7];
      }

      else
      {
        v6 = *(v3 - 1);
        v5 = *v3;
      }

LABEL_9:
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2388B7BD0((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238841E3C();
  v10 = sub_2388D27B8();
  v12 = v11;

  MEMORY[0x23EE66C20](v10, v12);

  return 0x736E6F7073655228;
}

uint64_t Transcript.TextSegment.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2388A6F1C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transcript.StructuredSegment.description.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_2388A6F7C()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Transcript.ImageSegment.description.getter()
{
  MEMORY[0x23EE66C20](*v0, v0[1]);
  MEMORY[0x23EE66C20](41, 0xE100000000000000);
  return 0x206567616D4928;
}

uint64_t sub_2388A7008()
{
  MEMORY[0x23EE66C20](*v0, v0[1]);
  MEMORY[0x23EE66C20](41, 0xE100000000000000);
  return 0x206567616D4928;
}

uint64_t Transcript.Segment.description.getter()
{
  v1 = v0[6] >> 62;
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EE66C20](*v0, v0[1]);
      MEMORY[0x23EE66C20](41, 0xE100000000000000);
      return 0x206567616D4928;
    }

    v2 = v0[9];
  }

  else
  {
    v2 = v0[2];
  }

  return v2;
}

uint64_t sub_2388A70F4()
{
  v1 = v0[6] >> 62;
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x23EE66C20](*v0, v0[1]);
      MEMORY[0x23EE66C20](41, 0xE100000000000000);
      return 0x206567616D4928;
    }

    v2 = v0[9];
  }

  else
  {
    v2 = v0[2];
  }

  return v2;
}

uint64_t Transcript.ToolCall.description.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[2];

  MEMORY[0x23EE66C20](8250, 0xE200000000000000);
  MEMORY[0x23EE66C20](v1, v2);
  return v4;
}

uint64_t sub_2388A7250()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[2];

  MEMORY[0x23EE66C20](8250, 0xE200000000000000);
  MEMORY[0x23EE66C20](v1, v2);
  return v4;
}

uint64_t sub_2388A72B8(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388A7320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388A7388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388A73E8@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = sub_2388D1058();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Transcript.Entry(0);
  v66 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v57 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v59 = (&v55 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v65 = &v55 - v17;
  v18 = type metadata accessor for Transcript.ToolDefinition(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  EnumCaseMultiPayload = *v2;
  v23 = *(a1 + 16);
  v67 = *v2;
  v63 = v23;
  v64 = a2;
  v56 = a1;
  if (v23)
  {
    v55 = v7;
    v71 = MEMORY[0x277D84F90];

    sub_2388B8140(0, v23, 0);
    v24 = v71;
    v25 = a1 + 32;
    v26 = v23;
    do
    {
      sub_238815814(v25, v68);
      v27 = v69;
      v28 = v70;
      v29 = sub_238815878(v68, v69);
      v23 = &v55;
      MEMORY[0x28223BE20](v29);
      v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31);
      Transcript.ToolDefinition.init<A>(tool:)(v31, v27, v28, v21);
      sub_2388158BC(v68);
      v71 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2388B8140((v33 > 1), v34 + 1, 1);
        v24 = v71;
      }

      *(v24 + 16) = v34 + 1;
      sub_2388A7AA4(v21, v24 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v34, type metadata accessor for Transcript.ToolDefinition);
      v25 += 40;
      --v26;
    }

    while (v26);
    EnumCaseMultiPayload = v67;
    v7 = v55;
    v35 = v67[2];
    if (!v35)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
    v35 = EnumCaseMultiPayload[2];
    if (!v35)
    {
LABEL_13:
      if (v63)
      {
        sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
        v40 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_2388D3F70;
        v42 = EnumCaseMultiPayload;
        v43 = (v41 + v40);
        v44 = v60;
        sub_2388D1048();
        v45 = sub_2388D1038();
        v47 = v46;
        (*(v61 + 8))(v44, v62);
        *v43 = v45;
        v43[1] = v47;
        v43[2] = MEMORY[0x277D84F90];
        v43[3] = v24;
        swift_storeEnumTagMultiPayload();
        v68[0] = v41;
        result = sub_23881FC90(v42);
        EnumCaseMultiPayload = v68[0];
      }

      else
      {
LABEL_20:
      }

      *v64 = EnumCaseMultiPayload;
      return result;
    }
  }

  v36 = 0;
  while (1)
  {
    if (v36 >= EnumCaseMultiPayload[2])
    {
      __break(1u);
      goto LABEL_23;
    }

    v19 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v37 = EnumCaseMultiPayload + v19;
    v38 = v7;
    v23 = *(v66 + 72) * v36;
    v39 = v65;
    sub_23889777C(&v37[v23], v65, type metadata accessor for Transcript.Entry);
    sub_2388A7AA4(v39, v16, type metadata accessor for Transcript.Entry);
    v7 = v38;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_2388A8BAC(v16, type metadata accessor for Transcript.Entry);
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    ++v36;
    EnumCaseMultiPayload = v67;
    if (v35 == v36)
    {
      goto LABEL_13;
    }
  }

  if (v36 >= v67[2])
  {
LABEL_23:
    __break(1u);
LABEL_24:
    EnumCaseMultiPayload = sub_238895348(EnumCaseMultiPayload);
    goto LABEL_18;
  }

  v49 = v58;
  sub_23889777C(&v37[v23], v58, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = v59;
  sub_2388A7AA4(v49, v59, type metadata accessor for Transcript.Entry);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v51 = *EnumCaseMultiPayload;
  v50 = EnumCaseMultiPayload[1];
  v52 = EnumCaseMultiPayload[2];

  sub_2388A86E0(v53, v56);
  swift_bridgeObjectRelease_n();
  v54 = v57;
  *v57 = v51;
  v54[1] = v50;
  v16 = v54;
  v54[2] = v52;
  v54[3] = v24;
  swift_storeEnumTagMultiPayload();

  EnumCaseMultiPayload = v67;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (v36 < EnumCaseMultiPayload[2])
  {
    sub_23889535C(v16, EnumCaseMultiPayload + v19 + v23);

    goto LABEL_20;
  }

  __break(1u);
LABEL_26:
  result = sub_2388A8BAC(EnumCaseMultiPayload, type metadata accessor for Transcript.Entry);
  __break(1u);
  return result;
}

uint64_t sub_2388A7AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388A7B0C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2388A81A8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2388A7C38(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_2388D34A8();

    sub_2388D2938();
    v23 = sub_2388D34E8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_2388D3368() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_23888D8B4(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_2388D34A8();

            sub_2388D2938();
            v41 = sub_2388D34E8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_2388D3368() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2388A82E4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x23EE68030](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_238826BEC(v13);
    return v5;
  }

  result = MEMORY[0x23EE68030](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2388A81A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2388D34A8();
  sub_2388D2938();
  v6 = sub_2388D34E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2388D3368() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2388BBED4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2388A851C(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_2388A82E4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_23888D8B4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_2388D34A8();

        sub_2388D2938();
        v19 = sub_2388D34E8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_2388D3368() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_2388A851C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2388D2F28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2388D34A8();

        sub_2388D2938();
        v10 = sub_2388D34E8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2388A86E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ToolDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v52[0] = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v8, 0);
    v9 = v52[0];
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_23889777C(v10, v7, type metadata accessor for Transcript.ToolDefinition);
      v13 = *v7;
      v12 = v7[1];

      sub_2388A8BAC(v7, type metadata accessor for Transcript.ToolDefinition);
      v52[0] = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2388B7BD0((v14 > 1), v15 + 1, 1);
        v9 = v52[0];
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  v17 = sub_2388C6560(v9);

  v18 = *(a2 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v55 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v18, 0);
    v19 = v55;
    v20 = a2 + 32;
    do
    {
      sub_238815814(v20, v52);
      v21 = v53;
      v22 = v54;
      sub_238815878(v52, v53);
      v23 = (*(v22 + 40))(v21, v22);
      v25 = v24;
      sub_2388158BC(v52);
      v55 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2388B7BD0((v26 > 1), v27 + 1, 1);
        v19 = v55;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 40;
      --v18;
    }

    while (v18);
  }

  v29 = sub_2388C6560(v19);

  if (*(v29 + 16) <= *(v17 + 16) >> 3)
  {
    v52[0] = v17;
    sub_2388A7B0C(v29);

    v30 = v52[0];
  }

  else
  {
    v30 = sub_2388A7C38(v29, v17);
  }

  v32 = 0;
  v33 = v30 + 56;
  v34 = 1 << *(v30 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v30 + 56);
  v37 = (v34 + 63) >> 6;
  *&v31 = 136446466;
  v50 = v31;
  v51 = v30;
  while (v36)
  {
    v38 = v32;
LABEL_24:
    v39 = (*(v30 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
    v41 = *v39;
    v40 = v39[1];
    v42 = qword_27DF2F9E0;

    if (v42 != -1)
    {
      swift_once();
    }

    v36 &= v36 - 1;
    v43 = sub_2388D2408();
    sub_2388413AC(v43, qword_27DF3F8E0);

    v44 = sub_2388D23E8();
    v45 = sub_2388D2E18();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v46 = v50;
      *(v46 + 4) = sub_2388C0770(v41, v40, v52);
      *(v46 + 12) = 2082;
      v48 = sub_2388C0770(v41, v40, v52);

      *(v46 + 14) = v48;
      _os_log_impl(&dword_23880E000, v44, v45, "Tool definition '%{public}s' is found in transcript but its implementation is missing in 'tools'. '%{public}s' will be ignored in the new LanguageModelSession.", v46, 0x16u);
      swift_arrayDestroy();
      v49 = v47;
      v30 = v51;
      MEMORY[0x23EE68030](v49, -1, -1);
      MEMORY[0x23EE68030](v46, -1, -1);
    }

    else
    {
    }

    v32 = v38;
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v37)
    {

      return;
    }

    v36 = *(v33 + 8 * v38);
    ++v32;
    if (v36)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_2388A8BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388A8C0C(uint64_t *a1, uint64_t *a2)
{
  if (a1[2])
  {
    if (a2[2])
    {
      type metadata accessor for CGImage(0);
      sub_2388A9594();
      return sub_2388D1348() & 1;
    }

    return 0;
  }

  if (a2[2])
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return sub_2388D3368();
}

uint64_t sub_2388A8CCC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2388D3368();
  }
}

uint64_t sub_2388A8CFC(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CGImage(0);
  sub_2388A9594();
  return sub_2388D1348() & 1;
}

uint64_t Instructions.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(a3 + 8))(&v8, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t sub_2388A8DE4@<X0>(void *a2@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  swift_cvw_initWithCopy();

  swift_cvw_destroy();
  sub_23881FB68(v4);
  *a2 = v5;
  return swift_cvw_destroy();
}

char *Instructions.init<each A>(_:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!a2)
  {
    *a5 = MEMORY[0x277D84F90];
    return result;
  }

  v5 = a2;
  v29 = a5;
  v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
  v8 = MEMORY[0x277D84F90];
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v30 = result;
  v9 = result;
  v10 = a2;
  do
  {
    v31 = &v27;
    v11 = *v6;
    v12 = *v7;
    v13 = *(*v6 - 8);
    MEMORY[0x28223BE20](result);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    (*(v12 + 8))(&v32, v11, v12);
    result = (*(v13 + 8))(v15, v11);
    v16 = v32;
    v17 = *(v32 + 16);
    v18 = *(v8 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v8 + 3) >> 1)
    {
      if (!*(v16 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = sub_2388B7528(result, v20, 1, v8);
      v8 = result;
      if (!*(v16 + 16))
      {
LABEL_3:

        if (v17)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v17)
    {
      goto LABEL_24;
    }

    swift_arrayInitWithCopy();

    if (v17)
    {
      v21 = *(v8 + 2);
      v22 = __OFADD__(v21, v17);
      v23 = v21 + v17;
      if (v22)
      {
        goto LABEL_25;
      }

      *(v8 + 2) = v23;
    }

LABEL_4:
    v9 += 8;
    ++v7;
    ++v6;
    --v10;
  }

  while (v10);
  v24 = v28;
  *v29 = v8;
  v25 = v24 - 8;
  v26 = v30 - 8;
  do
  {
    result = (*(*(*(v25 + 8 * v5) - 8) + 8))(*&v26[8 * v5]);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t String.instructionsRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  v8[0] = v6;
  v8[1] = v8;

  sub_2388A8DE4(a3);
}

uint64_t Array<A>.instructionsRepresentation.getter@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  sub_2388D2B18();
  sub_238810E44(&qword_27DF31488, &qword_2388DB4E0);
  swift_getWitnessTable();
  sub_2388A9458();
  v5 = sub_2388D2A98();

  v7[0] = v5;
  v7[2] = v7;

  sub_2388A8DE4(a4);
}

id CGImageRef.instructionsRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *a1 = v2;

  return v4;
}

id sub_2388A9368@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2388D3F70;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *a1 = v3;

  return v5;
}

void *sub_2388A93E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(&v5, *(a1 + a2 - 16));
  *a3 = v5;
  return result;
}

__n128 sub_2388A944C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_2388A9458()
{
  result = qword_27DF31490;
  if (!qword_27DF31490)
  {
    sub_238810E8C(&qword_27DF31488, &qword_2388DB4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31490);
  }

  return result;
}

uint64_t sub_2388A94EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_2388A9534(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2388A9594()
{
  result = qword_27DF30F68;
  if (!qword_27DF30F68)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F68);
  }

  return result;
}

FoundationModels::Instructions __swiftcall Instructions.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  result.components._rawValue = swift_allocObject();
  *(result.components._rawValue + 1) = xmmword_2388D3F70;
  *(result.components._rawValue + 4) = countAndFlagsBits;
  *(result.components._rawValue + 5) = object;
  *(result.components._rawValue + 48) = 0;
  v4->components._rawValue = result.components._rawValue;
  return result;
}

void Instructions.StringInterpolation.init(literalCapacity:interpolationCount:)(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B7528(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

Swift::Void __swiftcall Instructions.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v5 = *v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2388B7528(0, *(v5 + 2) + 1, 1, v5);
      *v1 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2388B7528((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[24 * v8];
    *(v9 + 4) = countAndFlagsBits;
    *(v9 + 5) = object;
    v9[48] = 0;
    *v1 = v5;
  }
}

uint64_t Instructions.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(&v5, a2, a3);
  v3 = v5;

  return sub_23881FB68(v3);
}

{
  v3._countAndFlagsBits = sub_2388D32F8();
  Instructions.StringInterpolation.appendLiteral(_:)(v3);
}

void sub_2388A9850(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B7528(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

double sub_2388A98B4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_238810E44(&qword_27DF2F9F8, &unk_2388D3F80);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2388D3F70;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *a2 = v5;
  return result;
}

unint64_t sub_2388A9954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31498;
  if (!qword_27DF31498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31498);
  }

  return result;
}

unint64_t sub_2388A99AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314A0;
  if (!qword_27DF314A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314A0);
  }

  return result;
}

unint64_t sub_2388A9A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314A8;
  if (!qword_27DF314A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314A8);
  }

  return result;
}

unint64_t sub_2388A9A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314B0;
  if (!qword_27DF314B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314B0);
  }

  return result;
}

void *Instructions.init(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2388A9B30@<X0>(void *a2@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  swift_cvw_initWithCopy();

  swift_cvw_destroy();
  sub_23881FAF4(v4);
  *a2 = v5;
  return swift_cvw_destroy();
}

char *Prompt.init<each A>(_:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!a2)
  {
    *a5 = MEMORY[0x277D84F90];
    return result;
  }

  v5 = a2;
  v29 = a5;
  v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
  v8 = MEMORY[0x277D84F90];
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v30 = result;
  v9 = result;
  v10 = a2;
  do
  {
    v31 = &v27;
    v11 = *v6;
    v12 = *v7;
    v13 = *(*v6 - 8);
    MEMORY[0x28223BE20](result);
    v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    (*(v12 + 8))(&v32, v11, v12);
    result = (*(v13 + 8))(v15, v11);
    v16 = v32;
    v17 = *(v32 + 16);
    v18 = *(v8 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v8 + 3) >> 1)
    {
      if (!*(v16 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = sub_2388B6F38(result, v20, 1, v8);
      v8 = result;
      if (!*(v16 + 16))
      {
LABEL_3:

        if (v17)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v17)
    {
      goto LABEL_24;
    }

    swift_arrayInitWithCopy();

    if (v17)
    {
      v21 = *(v8 + 2);
      v22 = __OFADD__(v21, v17);
      v23 = v21 + v17;
      if (v22)
      {
        goto LABEL_25;
      }

      *(v8 + 2) = v23;
    }

LABEL_4:
    v9 += 8;
    ++v7;
    ++v6;
    --v10;
  }

  while (v10);
  v24 = v28;
  *v29 = v8;
  v25 = v24 - 8;
  v26 = v30 - 8;
  do
  {
    result = (*(*(*(v25 + 8 * v5) - 8) + 8))(*&v26[8 * v5]);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t Prompt.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(a3 + 8))(&v8, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t String.promptRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  v8[0] = v6;
  v8[1] = v8;

  sub_2388A9B30(a3);
}

uint64_t Array<A>.promptRepresentation.getter@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  sub_2388D2B18();
  sub_238810E44(&qword_27DF314B8, &qword_2388DB8C0);
  swift_getWitnessTable();
  sub_2388AA228();
  v5 = sub_2388D2A98();

  v7[0] = v5;
  v7[2] = v7;

  sub_2388A9B30(a4);
}

id CGImageRef.promptRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *a1 = v2;

  return v4;
}

id sub_2388AA138@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2388D3F70;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *a1 = v3;

  return v5;
}

void *sub_2388AA1B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(&v5, *(a1 + a2 - 16));
  *a3 = v5;
  return result;
}

__n128 sub_2388AA21C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_2388AA228()
{
  result = qword_27DF314C0;
  if (!qword_27DF314C0)
  {
    sub_238810E8C(&qword_27DF314B8, &qword_2388DB8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314C0);
  }

  return result;
}

FoundationModels::Prompt __swiftcall Prompt.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  result.components._rawValue = swift_allocObject();
  *(result.components._rawValue + 1) = xmmword_2388D3F70;
  *(result.components._rawValue + 4) = countAndFlagsBits;
  *(result.components._rawValue + 5) = object;
  *(result.components._rawValue + 48) = 0;
  v4->components._rawValue = result.components._rawValue;
  return result;
}

void Prompt.StringInterpolation.init(literalCapacity:interpolationCount:)(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B6F38(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

Swift::Void __swiftcall Prompt.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v5 = *v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2388B6F38(0, *(v5 + 2) + 1, 1, v5);
      *v1 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2388B6F38((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[24 * v8];
    *(v9 + 4) = countAndFlagsBits;
    *(v9 + 5) = object;
    v9[48] = 0;
    *v1 = v5;
  }
}

uint64_t Prompt.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(&v5, a2, a3);
  v3 = v5;

  return sub_23881FAF4(v3);
}

{
  v3._countAndFlagsBits = sub_2388A9918(a1, a2, a3);
  Prompt.StringInterpolation.appendLiteral(_:)(v3);
}

void sub_2388AA514(uint64_t a1@<X1>, char **a2@<X8>)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = sub_2388B6F38(0, (a1 + 1) & ~((a1 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  }
}

double sub_2388AA56C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_238810E44(&qword_27DF2FA20, &qword_2388DB880);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2388D3F70;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *a2 = v5;
  return result;
}

unint64_t sub_2388AA5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314C8;
  if (!qword_27DF314C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314C8);
  }

  return result;
}

unint64_t sub_2388AA62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314D0;
  if (!qword_27DF314D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314D0);
  }

  return result;
}

unint64_t sub_2388AA684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314D8;
  if (!qword_27DF314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314D8);
  }

  return result;
}

unint64_t sub_2388AA6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF314E0;
  if (!qword_27DF314E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF314E0);
  }

  return result;
}

void *Prompt.init(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t Tool<>.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  v4[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_238814708(v4, a1);
  v10[1] = MEMORY[0x277D83B88];
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v5 = sub_2388D28B8();
  v7 = v6;
  sub_23881476C(v4);
  result = type metadata accessor for GenerationSchema(0);
  v9 = (a1 + *(result + 20));
  *v9 = v5;
  v9[1] = v7;
  return result;
}

{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v4, a1);
  v10[1] = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v5 = sub_2388D28B8();
  v7 = v6;
  sub_23881476C(v4);
  result = type metadata accessor for GenerationSchema(0);
  v9 = (a1 + *(result + 20));
  *v9 = v5;
  v9[1] = v7;
  return result;
}

uint64_t dispatch thunk of Tool.call(arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_238833668;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2388AABA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 632) = v5;
  *(v6 + 624) = a5;
  *(v6 + 616) = a4;
  *(v6 + 608) = a3;
  *(v6 + 600) = a2;
  *(v6 + 592) = a1;
  v7 = sub_2388D0D88();
  *(v6 + 640) = v7;
  *(v6 + 648) = *(v7 - 8);
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = type metadata accessor for Transcript.Entry(0);
  *(v6 + 672) = swift_task_alloc();
  v8 = sub_2388D1058();
  *(v6 + 680) = v8;
  *(v6 + 688) = *(v8 - 8);
  *(v6 + 696) = swift_task_alloc();
  v9 = sub_2388D1818();
  *(v6 + 704) = v9;
  *(v6 + 712) = *(v9 - 8);
  *(v6 + 720) = swift_task_alloc();
  v10 = sub_2388D1858();
  *(v6 + 728) = v10;
  *(v6 + 736) = *(v10 - 8);
  *(v6 + 744) = swift_task_alloc();
  v11 = sub_2388D1868();
  *(v6 + 752) = v11;
  *(v6 + 760) = *(v11 - 8);
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  v12 = sub_2388D1598();
  *(v6 + 784) = v12;
  *(v6 + 792) = *(v12 - 8);
  *(v6 + 800) = swift_task_alloc();
  v13 = sub_2388D15A8();
  *(v6 + 808) = v13;
  *(v6 + 816) = *(v13 - 8);
  *(v6 + 824) = swift_task_alloc();
  v14 = *(v5 + 40);
  *(v6 + 832) = v14;
  *(v6 + 960) = *MEMORY[0x277D71DD0];
  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v6 + 856) = v15;
  *v15 = v6;
  v15[1] = sub_2388AAF8C;
  v16 = *(v6 + 824);

  return v18(v16);
}

uint64_t sub_2388AAF8C()
{
  v2 = *v1;
  v2[108] = v0;

  v3 = v2[75];
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_2388D2B38();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v9 = sub_2388AC558;
    v10 = v4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v7 = sub_2388D2B38();
      v6 = v8;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v2[110] = v6;
    v2[109] = v7;
    v9 = sub_2388AB12C;
    v10 = v7;
  }

  return MEMORY[0x2822009F8](v9, v10, v6);
}

uint64_t sub_2388AB12C(uint64_t a1)
{
  v2 = sub_2388D1518();
  if (*(v2 + 16))
  {
    v3 = *(v1 + 800);
    v4 = *(v1 + 792);
    v5 = *(v1 + 784);
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    v6 = sub_2388D1588();
    isUniquelyReferenced_nonNull_native = (*(v4 + 8))(v3, v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(v1 + 888) = v6;
  v15 = *(v6 + 16);
  v94 = v6;
  if (v15)
  {
    v16 = 0;
    v17 = *(*(v1 + 760) + 80);
    v18 = v6 + ((v17 + 32) & ~v17);
    v102 = (v1 + 970);
    v105 = *(v1 + 864);
    v108 = MEMORY[0x277D84F90];
    v93 = *(v6 + 16);
    v92 = v18;
    while (v16 < *(v6 + 16))
    {
      v22 = *(v1 + 960);
      v23 = *(v1 + 720);
      v24 = *(v1 + 712);
      v25 = *(v1 + 704);
      (*(*(v1 + 760) + 16))(*(v1 + 776), v18 + *(*(v1 + 760) + 72) * v16, *(v1 + 752));
      sub_2388D1828();
      if ((*(v24 + 88))(v23, v25) == v22)
      {
        v26 = *(v1 + 744);
        v27 = *(v1 + 736);
        v28 = *(v1 + 728);
        v29 = *(v1 + 720);
        v30 = *(v1 + 696);
        v31 = *(v1 + 688);
        v100 = *(v1 + 680);
        (*(*(v1 + 712) + 96))(v29, *(v1 + 704));
        (*(v27 + 32))(v26, v29, v28);
        v32 = sub_2388D1808();
        v34 = v33;
        v99 = sub_2388D1838();
        v101 = v35;
        v36 = sub_2388D1848();
        v38 = v37;

        sub_2388D1048();
        v39 = sub_2388D1038();
        v41 = v40;
        (*(v31 + 8))(v30, v100);
        *(v1 + 520) = v39;
        *(v1 + 528) = v41;
        GeneratedContent.init(id:text:)((v1 + 520), v36, v38, v1 + 480);
        if (v105)
        {
          v84 = *(v1 + 816);
          v104 = *(v1 + 808);
          v107 = *(v1 + 824);
          v85 = *(v1 + 776);
          v86 = *(v1 + 760);
          v87 = *(v1 + 752);
          v88 = *(v1 + 744);
          v89 = *(v1 + 736);
          v90 = *(v1 + 728);

          (*(v89 + 8))(v88, v90);
          (*(v86 + 8))(v85, v87);
          (*(v84 + 8))(v107, v104);

          v83 = *(v1 + 8);
          goto LABEL_28;
        }

        v42 = *(v1 + 776);
        v43 = *(v1 + 760);
        v44 = *(v1 + 752);
        (*(*(v1 + 736) + 8))(*(v1 + 744), *(v1 + 728));
        (*(v43 + 8))(v42, v44);
        v45 = *(v1 + 480);
        v97 = *(v1 + 488);
        v95 = *(v1 + 497);
        v96 = *(v1 + 496);
        v47 = *(v1 + 504);
        v46 = *(v1 + 512);
        *v102 = *(v1 + 964);
        *(v1 + 974) = *(v1 + 968);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2388B7660(0, v108[2] + 1, 1, v108);
          v108 = isUniquelyReferenced_nonNull_native;
        }

        v49 = v108[2];
        v48 = v108[3];
        if (v49 >= v48 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2388B7660((v48 > 1), v49 + 1, 1, v108);
          v108 = isUniquelyReferenced_nonNull_native;
        }

        v105 = 0;
        v109 = *v102;
        v110 = *(v1 + 974);
        v108[2] = v49 + 1;
        v50 = &v108[13 * v49];
        v50[4] = v32;
        v50[5] = v34;
        v50[6] = v32;
        v50[7] = v34;
        v50[8] = v99;
        v50[9] = v101;
        v50[10] = v98;
        v50[11] = v97;
        *(v50 + 96) = v96;
        *(v50 + 97) = v95;
        *(v50 + 98) = v109;
        *(v50 + 51) = v110;
        v50[13] = v47;
        v50[14] = v46;
        v50[15] = v36;
        v50[16] = v38;
        v15 = v93;
        v6 = v94;
        v18 = v92;
      }

      else
      {
        v19 = *(v1 + 720);
        v20 = *(v1 + 712);
        v21 = *(v1 + 704);
        (*(*(v1 + 760) + 8))(*(v1 + 776), *(v1 + 752));
        isUniquelyReferenced_nonNull_native = (*(v20 + 8))(v19, v21);
      }

      if (v15 == ++v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    return MEMORY[0x282200740](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14);
  }

  v108 = MEMORY[0x277D84F90];
LABEL_17:
  *(v1 + 896) = v108;
  v51 = v108[2];
  if (v51)
  {
    v52 = (v1 + 536);
    *(v1 + 536) = MEMORY[0x277D84F90];
    sub_2388B82E4(0, v51, 0);
    v53 = *(v1 + 536);
    v54 = v51 - 1;
    for (i = 6; ; i += 13)
    {
      v56 = *&v108[i + 2];
      *(v1 + 16) = *&v108[i];
      *(v1 + 32) = v56;
      v57 = *&v108[i + 4];
      v58 = *&v108[i + 6];
      v59 = *&v108[i + 8];
      *(v1 + 96) = v108[i + 10];
      *(v1 + 64) = v58;
      *(v1 + 80) = v59;
      *(v1 + 48) = v57;
      sub_238827C78(v1 + 16, v1 + 104);
      *v52 = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_2388B82E4((v60 > 1), v61 + 1, 1);
        v53 = *v52;
      }

      *(v53 + 16) = v61 + 1;
      v62 = v53 + 88 * v61;
      v63 = *(v1 + 32);
      *(v62 + 32) = *(v1 + 16);
      *(v62 + 48) = v63;
      v64 = *(v1 + 48);
      v65 = *(v1 + 64);
      v66 = *(v1 + 80);
      *(v62 + 112) = *(v1 + 96);
      *(v62 + 80) = v65;
      *(v62 + 96) = v66;
      *(v62 + 64) = v64;
      if (!v54)
      {
        break;
      }

      --v54;
    }

    v67 = *(v1 + 696);
    v68 = *(v1 + 688);
    v69 = *(v1 + 680);
    v70 = *(v1 + 672);
    v71 = *(v1 + 632);
    v103 = *(v1 + 616);
    v106 = *(v1 + 624);
    sub_2388D1048();
    v72 = sub_2388D1038();
    v74 = v73;
    v75 = *(v68 + 8);
    *(v1 + 904) = v75;
    *(v1 + 912) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v67, v69);
    v76 = v71[1];
    *(v1 + 920) = v76;
    *(v1 + 928) = v71[2];
    *v70 = v72;
    v70[1] = v74;
    v70[2] = v53;
    swift_storeEnumTagMultiPayload();
    v76(v70);
    sub_2388AE208(v70);
    v77 = sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
    v78 = v71[7];
    v79 = v71[8];
    v80 = swift_task_alloc();
    *(v1 + 936) = v80;
    v80[2] = v108;
    v80[3] = v71;
    v80[4] = v78;
    v80[5] = v79;
    v80[6] = v103;
    v80[7] = v106;
    v80[8] = v94;
    v81 = sub_238810E44(&qword_27DF314F0, &qword_2388DBCB8);
    v82 = swift_task_alloc();
    *(v1 + 944) = v82;
    *v82 = v1;
    v82[1] = sub_2388AB9C0;
    v11 = *(v1 + 608);
    v10 = *(v1 + 600);
    v12 = &unk_2388DBCB0;
    isUniquelyReferenced_nonNull_native = v1 + 544;
    v8 = v77;
    v9 = v81;
    v13 = v80;
    v14 = v77;

    return MEMORY[0x282200740](isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14);
  }

  (*(*(v1 + 816) + 32))(*(v1 + 592), *(v1 + 824), *(v1 + 808));

  v83 = *(v1 + 8);
LABEL_28:

  return v83();
}

uint64_t sub_2388AB9C0()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {

    v3 = *(v2 + 880);
    v4 = *(v2 + 872);
    v5 = sub_2388AC63C;
  }

  else
  {

    v3 = *(v2 + 880);
    v4 = *(v2 + 872);
    v5 = sub_2388ABB38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2388ABB38()
{
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 552);
    *(v0 + 552) = MEMORY[0x277D84F90];
    sub_2388B82A4(0, v2, 0);
    v4 = 0;
    v5 = *(v0 + 552);
    v6 = (v1 + 48);
    v104 = v2;
    v107 = v1;
    do
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_51;
      }

      v7 = v6[1];
      v111 = *v6;
      v113 = *(v6 - 2);
      v8 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v10 = v6[5];
      v12 = v6[6];
      v121 = *(v6 - 1);

      v116 = v12;
      sub_238827CD8(v8, v9, v11, v10, v12);
      *v3 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2388B82A4((v13 > 1), v14 + 1, 1);
        v5 = *v3;
      }

      ++v4;
      *(v5 + 16) = v14 + 1;
      v15 = (v5 + 72 * v14);
      v15[4] = v113;
      v15[5] = v121;
      v15[6] = v111;
      v15[7] = v7;
      v15[8] = v8;
      v15[9] = v9;
      v15[10] = v11;
      v15[11] = v10;
      v15[12] = v116;
      v6 += 9;
      v1 = v107;
    }

    while (v104 != v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v16 = sub_238834090(v5);

  if (*(v16 + 16))
  {
    sub_238810E44(&qword_27DF2FB58, &unk_2388D4960);
    v17 = sub_2388D3128();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v18 = v110;
  v19 = v110[119];
  v110[70] = v17;

  sub_2388AE354(v20, 1, v110 + 70);
  if (v19)
  {

    return swift_unexpectedError();
  }

  v22 = v110[111];

  v23 = v110[70];
  v24 = *(v22 + 16);
  v25 = v110[111];
  if (v24)
  {
    v26 = v110[95];
    v110[71] = MEMORY[0x277D84F90];
    sub_2388B8264(0, v24, 0);
    v27 = 0;
    v28 = v110[71];
    v101 = v23;
    v102 = v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v99 = v24;
    do
    {
      if (v27 >= *(v18[111] + 16))
      {
        goto LABEL_52;
      }

      (*(v18[95] + 16))(v18[96], v102 + *(v18[95] + 72) * v27, v18[94]);
      v29 = sub_2388D1808();
      v31 = v30;
      v32 = sub_2388D1808();
      if (!*(v23 + 16))
      {
        goto LABEL_54;
      }

      v34 = sub_238820AA8(v32, v33);
      v36 = v35;

      if ((v36 & 1) == 0)
      {
        goto LABEL_53;
      }

      v119 = v31;
      v122 = v29;
      v37 = v18[95];
      v38 = v18[94];
      v39 = (*(v23 + 56) + 56 * v34);
      v105 = v18[96];
      v108 = *v39;
      v41 = v39[2];
      v40 = v39[3];
      v42 = v39[4];
      v43 = v39[5];
      v44 = v18;
      v45 = v39[6];
      v117 = v39[1];

      v114 = v42;
      v46 = v42;
      v47 = v45;
      sub_238827CD8(v41, v40, v46, v43, v45);
      (*(v37 + 8))(v105, v38);
      v44[71] = v28;
      v49 = *(v28 + 16);
      v48 = *(v28 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2388B8264((v48 > 1), v49 + 1, 1);
        v28 = v110[71];
      }

      ++v27;
      *(v28 + 16) = v49 + 1;
      v50 = (v28 + 72 * v49);
      v50[4] = v122;
      v50[5] = v119;
      v18 = v110;
      v50[6] = v108;
      v50[7] = v117;
      v50[8] = v41;
      v50[9] = v40;
      v50[10] = v114;
      v50[11] = v43;
      v50[12] = v47;
      v23 = v101;
    }

    while (v99 != v27);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v96 = *(v28 + 16);
  if (!v96)
  {

    v90 = v18[106];
LABEL_47:
    (*(v18[102] + 8))(v18[103], v18[101]);
    v18[106] = v90;
    v124 = (v18[104] + *v18[104]);
    v91 = swift_task_alloc();
    v18[107] = v91;
    *v91 = v18;
    v91[1] = sub_2388AAF8C;
    v92 = v18[103];

    return v124(v92);
  }

  v51 = 0;
  v93 = (v18 + 72);
  v94 = v18[106] & 0x107;
  v95 = v28 + 32;
  while (1)
  {
    v52 = v95 + 72 * v51;
    v53 = *(v52 + 16);
    v54 = *(v52 + 32);
    v55 = *(v52 + 48);
    v56 = *(v52 + 64);
    v18[32] = v56;
    *(v18 + 14) = v54;
    *(v18 + 15) = v55;
    *(v18 + 13) = v53;
    *(v18 + 12) = *v52;
    v112 = v18[27];
    v115 = v18[26];
    v58 = v18[28];
    v57 = v18[29];
    v59 = v18[30];
    v60 = v18[31];
    v61 = v56;
    v106 = v18[25];
    v109 = v18[24];
    v118 = v59;
    v120 = v56;
    v123 = v60;
    v103 = v57;
    if (v59 >> 62)
    {
      break;
    }

    sub_238827E14((v18 + 24), (v18 + 51), &qword_27DF2FF78, &qword_2388DC1E0);
    sub_238827CD8(v58, v57, v59, v60, v61);
    v97 = v57;
    v98 = v58;
LABEL_43:
    v80 = v51 + 1;
    v100 = v18[115];
    v81 = v18;
    v82 = v18[113];
    v83 = v81[87];
    v84 = v81[85];
    v85 = v81[84];
    sub_2388D1048();
    v86 = sub_2388D1038();
    v88 = v87;
    v82(v83, v84);
    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_2388D3F70;
    *(v89 + 32) = v86;
    *(v89 + 40) = v88;
    v51 = v80;
    *(v89 + 48) = v98;
    *(v89 + 56) = v97;
    v90 = v94;
    *(v89 + 80) = v94;
    sub_2388AE6A4(v58, v103, v118, v123, v120);
    *v85 = v109;
    v85[1] = v106;
    v85[2] = v115;
    v85[3] = v112;
    v85[4] = v89;
    swift_storeEnumTagMultiPayload();
    v100(v85);
    sub_2388AE208(v85);
    if (v80 == v96)
    {

      v18 = v110;
      goto LABEL_47;
    }

    v18 = v110;
  }

  if (v59 >> 62 == 1)
  {
    sub_2388D0DC8();
    swift_allocObject();
    sub_238827E14((v110 + 24), (v110 + 42), &qword_27DF2FF78, &qword_2388DC1E0);
    sub_238827CD8(v58, v57, v59, v60, v61);
    v62 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v110[73] = v63;
    sub_238815B14();
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
    v18 = v110;
    sub_2388D2F08();
    sub_2388D0D98();
    v64 = sub_238819C1C(v58, v57, v59, v62);
    v97 = v65;
    v98 = v64;

    sub_2388AE6A4(v58, v57, v59, v123, v120);
    goto LABEL_43;
  }

  v66 = *(v58 + 16);
  sub_238827E14((v18 + 24), (v18 + 33), &qword_27DF2FF78, &qword_2388DC1E0);
  sub_238827CD8(v58, v57, v59, v60, v61);
  v67 = 0;
  v68 = MEMORY[0x277D84F90];
LABEL_33:
  v69 = (v58 + 48 + 24 * v67);
  while (1)
  {
    if (v66 == v67)
    {
      sub_2388AE6A4(v58, v57, v59, v123, v61);
      *v93 = v68;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
      v78 = sub_2388D27B8();
      v97 = v79;
      v98 = v78;

      v18 = v110;
      goto LABEL_43;
    }

    if (v67 >= *(v58 + 16))
    {
      break;
    }

    v70 = v69 + 24;
    ++v67;
    v71 = *v69;
    v69 += 24;
    if ((v71 & 1) == 0)
    {
      v73 = *(v70 - 5);
      v72 = *(v70 - 4);

      v74 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_2388B686C(0, *(v68 + 2) + 1, 1, v68);
      }

      v76 = *(v68 + 2);
      v75 = *(v68 + 3);
      if (v76 >= v75 >> 1)
      {
        v68 = sub_2388B686C((v75 > 1), v76 + 1, 1, v68);
      }

      *(v68 + 2) = v76 + 1;
      v77 = &v68[16 * v76];
      *(v77 + 4) = v73;
      *(v77 + 5) = v72;
      v57 = v74;
      v59 = v118;
      v61 = v120;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  __break(1u);
  return result;
}

uint64_t sub_2388AC558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2388AC63C()
{
  (*(v0[102] + 8))(v0[103], v0[101]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2388AC73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[84] = v12;
  v8[83] = a8;
  v8[82] = a7;
  v8[81] = a6;
  v8[80] = a5;
  v8[79] = a4;
  v8[78] = a3;
  v8[77] = a2;
  v8[76] = a1;
  v9 = sub_238810E44(&qword_27DF314F8, &qword_2388DBCC0);
  v8[85] = v9;
  v8[86] = *(v9 - 8);
  v8[87] = swift_task_alloc();
  sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388AC874, 0, 0);
}

uint64_t sub_2388AC874()
{
  v1 = *(v0 + 624);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 328);
    v38 = **(v0 + 616);
    v4 = **(v0 + 632);
    v37 = sub_2388D2BE8();
    v5 = *(v37 - 8);
    v36 = *(v5 + 56);
    v34 = v4;
    v35 = (v5 + 48);
    v33 = (v5 + 8);
    v6 = (v1 + 48);
    do
    {
      v8 = *(v0 + 712);
      v41 = *(v0 + 704);
      v42 = v2;
      v39 = *(v0 + 640);
      v40 = *(v0 + 656);
      v10 = *v6;
      v9 = v6[1];
      *(v0 + 16) = *(v6 - 1);
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = v6[3];
      v11 = v6[4];
      v13 = v6[2];
      *(v0 + 112) = *(v6 + 10);
      *(v0 + 80) = v12;
      *(v0 + 96) = v11;
      *(v0 + 64) = v13;
      v15 = v6[3];
      v14 = v6[4];
      v16 = v6[2];
      *(v0 + 408) = *(v6 + 10);
      *(v0 + 376) = v15;
      *(v0 + 392) = v14;
      *(v0 + 360) = v16;
      v17 = v6[1];
      *v3 = *v6;
      *(v0 + 344) = v17;
      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v36(v8, 1, 1, v37);
      v20 = swift_allocObject();
      v21 = *(v0 + 376);
      *(v20 + 72) = *(v0 + 360);
      *(v20 + 88) = v21;
      *(v20 + 104) = *(v0 + 392);
      v22 = *(v0 + 344);
      *(v20 + 40) = *v3;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = v4;
      *(v20 + 120) = *(v0 + 408);
      *(v20 + 56) = v22;
      *(v20 + 128) = v39;
      *(v20 + 144) = v40;
      *(v20 + 160) = v19;
      *(v20 + 168) = v18;
      sub_238827E14(v8, v41, &qword_27DF2FD28, &qword_2388D8CE0);
      v23 = (*v35)(v41, 1, v37);
      v24 = *(v0 + 704);
      if (v23 == 1)
      {
        sub_238827E14(v0 + 16, v0 + 120, &qword_27DF31500, &qword_2388DC1D0);
        v4 = v34;

        sub_2388AE890(v24);
      }

      else
      {
        sub_238827E14(v0 + 16, v0 + 224, &qword_27DF31500, &qword_2388DC1D0);
        v4 = v34;

        sub_2388D2BD8();
        (*v33)(v24, v37);
      }

      if (*(v20 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_2388D2B38();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
      v28 = v27 | v25;
      if (v27 | v25)
      {
        v28 = v0 + 544;
        *(v0 + 544) = 0;
        *(v0 + 552) = 0;
        *(v0 + 560) = v25;
        *(v0 + 568) = v27;
      }

      v7 = *(v0 + 712);
      *(v0 + 576) = 1;
      *(v0 + 584) = v28;
      *(v0 + 592) = v38;
      swift_task_create();

      sub_2388AE890(v7);
      v6 = (v6 + 104);
      --v2;
    }

    while (v42 != 1);
  }

  v29 = sub_2388B77B0(0, *(*(v0 + 672) + 16), 0, MEMORY[0x277D84F90]);
  sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  sub_2388D2C28();
  *(v0 + 720) = v29;
  v30 = swift_task_alloc();
  *(v0 + 728) = v30;
  *v30 = v0;
  v30[1] = sub_2388ACCEC;
  v31 = *(v0 + 680);

  return MEMORY[0x2822004E8](v0 + 416, 0, 0, v31, v0 + 600);
}

uint64_t sub_2388ACCEC()
{

  if (v0)
  {

    v1 = sub_2388ACFC8;
  }

  else
  {
    v1 = sub_2388ACE04;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2388ACE04()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 448);
  *(v0 + 488) = *(v0 + 432);
  *(v0 + 504) = v3;
  *(v0 + 520) = *(v0 + 464);
  *(v0 + 536) = *(v0 + 480);
  if (v2)
  {
    v4 = *(v0 + 720);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_2388B77B0((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    v7 = &v4[9 * v6];
    v7[4] = v1;
    v7[5] = v2;
    v8 = *(v0 + 488);
    v9 = *(v0 + 504);
    v10 = *(v0 + 520);
    v7[12] = *(v0 + 536);
    *(v7 + 4) = v9;
    *(v7 + 5) = v10;
    *(v7 + 3) = v8;
    *(v0 + 720) = v4;
    v11 = swift_task_alloc();
    *(v0 + 728) = v11;
    *v11 = v0;
    v11[1] = sub_2388ACCEC;
    v12 = *(v0 + 680);

    return MEMORY[0x2822004E8](v0 + 416, 0, 0, v12, v0 + 600);
  }

  else
  {
    v13 = *(v0 + 720);
    v14 = *(v0 + 608);
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    *v14 = v13;

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_2388ACFC8()
{
  (*(v0[86] + 8))(v0[87], v0[85]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2388AD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v13;
  *(v8 + 344) = v12;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a1;
  *(v8 + 304) = a4;
  v9 = sub_2388D2358();
  *(v8 + 368) = v9;
  *(v8 + 376) = *(v9 - 8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388AD158, 0, 0);
}

uint64_t sub_2388AD158()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (!*(*(v0 + 304) + 16) || (v4 = sub_238820AA8(v2, v3), (v5 & 1) == 0))
  {
    sub_2388D2FA8();
    MEMORY[0x23EE66C20](0xD00000000000004CLL, 0x80000002388DF8F0);
    MEMORY[0x23EE66C20](v2, v3);
    MEMORY[0x23EE66C20](0xD000000000000012, 0x80000002388DF940);
    sub_238810E44(&qword_27DF31508, &qword_2388DC220);
    v6 = sub_2388D2778();
    MEMORY[0x23EE66C20](v6);

    sub_2388151C8(v7, v8, v9);
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = MEMORY[0x277D84F90];
    *(v10 + 24) = 0;
    *(v10 + 32) = 5;
    swift_willThrow();

    v11 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_238815814(*(*(v0 + 304) + 56) + 40 * v4, v0 + 96);
  sub_238828174((v0 + 96), v0 + 56);
  sub_2388D2348();

  return MEMORY[0x2822009F8](sub_2388AD35C, 0, 0);
}

uint64_t sub_2388AD35C()
{
  v13 = v0;
  if (qword_27DF2F9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_2388D2388();
  sub_2388413AC(v1, qword_27DF3F910);

  v2 = sub_2388D2368();
  v3 = sub_2388D2E38();

  if (sub_2388D2E68())
  {
    v5 = v0[42];
    v4 = v0[43];
    v7 = v0[40];
    v6 = v0[41];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_2388C0770(v7, v6, v12);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_2388C0770(v5, v4, v12);
    v10 = sub_2388D2338();
    _os_signpost_emit_with_name_impl(&dword_23880E000, v2, v3, v10, "ToolCalling", "SessionID=%{public}s RequestID=%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE68030](v9, -1, -1);
    MEMORY[0x23EE68030](v8, -1, -1);
  }

  (*(v0[47] + 16))(v0[48], v0[49], v0[46]);
  sub_2388D23C8();
  swift_allocObject();
  v0[50] = sub_2388D23B8();

  return MEMORY[0x2822009F8](sub_2388AD58C, 0, 0);
}

uint64_t sub_2388AD58C()
{
  v1 = *(v0 + 312);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_238815878((v0 + 56), v3);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  *(v0 + 16) = *(v1 + 32);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v7 = *(v1 + 32);
  v6 = *(v1 + 48);
  *(v0 + 208) = *(v1 + 64);
  *(v0 + 176) = v7;
  *(v0 + 192) = v6;
  sub_2388AE8F8(v0 + 16, v0 + 216);
  v8 = swift_task_alloc();
  *(v0 + 408) = v8;
  *v8 = v0;
  v8[1] = sub_2388AD67C;

  return sub_2388ADB70(v0 + 136, v0 + 176, v3, v2);
}

uint64_t sub_2388AD67C()
{
  v2 = *v1;
  *(v2 + 416) = v0;

  sub_238810DC4(*(v2 + 176), *(v2 + 184), *(v2 + 192));

  if (v0)
  {
    v3 = sub_2388AD9AC;
  }

  else
  {
    v3 = sub_2388AD7B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2388AD7B0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 296);
  v4 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_238815878((v0 + 56), v5);
  v7 = *(v6 + 40);

  v8 = v7(v5, v6);
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v8;
  *(v3 + 24) = v9;
  *(v3 + 32) = v12;
  *(v3 + 48) = v11;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2388AD894, 0, 0);
}

uint64_t sub_2388AD894()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  sub_2388CEFFC(v0[50], v0[40], v0[41], v0[42], v0[43]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2388AD934, 0, 0);
}

uint64_t sub_2388AD934()
{
  sub_2388158BC((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2388AD9AC()
{
  v1 = *(v0 + 416);
  v2 = sub_238815814(v0 + 56, v0 + 256);
  sub_23885AA1C(v2, v3, v4);
  v5 = swift_allocError();
  v7 = v6;
  *(v0 + 424) = v5;
  sub_238828174((v0 + 256), v6);
  *(v7 + 40) = v1;
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_2388ADA5C, 0, 0);
}

uint64_t sub_2388ADA5C()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];
  sub_2388CEFFC(v0[50], v0[40], v0[41], v0[42], v0[43]);

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2388ADAFC, 0, 0);
}

uint64_t sub_2388ADAFC()
{
  sub_2388158BC((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2388ADB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 48) = AssociatedTypeWitness;
  *(v5 + 56) = *(AssociatedTypeWitness - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  *(v5 + 80) = v8;
  *(v5 + 88) = *(v8 - 8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = *a2;
  *(v5 + 152) = *(a2 + 16);
  *(v5 + 153) = *(a2 + 17);
  *(v5 + 120) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_2388ADD04, 0, 0);
}

uint64_t sub_2388ADD04()
{
  v21 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 153);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 152);
  v16[0] = *(v0 + 104);
  v16[1] = v4;
  v17 = v6;
  v18 = v3;
  v19 = v1;
  v20 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  sub_238814698(v16[0], v4, v6);

  v8(v16, v5, AssociatedConformanceWitness);
  v15 = (*(*(v0 + 32) + 72) + **(*(v0 + 32) + 72));
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_2388ADF28;
  v10 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 32);
  v13 = *(v0 + 24);

  return v15(v11, v10, v13, v12);
}

uint64_t sub_2388ADF28()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2388AE170;
  }

  else
  {
    v2 = sub_2388AE03C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2388AE03C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v11 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[2];
  (*(v4 + 16))(v5, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2388AE954(v5, v6, AssociatedConformanceWitness, v7);
  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2388AE170()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2388AE208(uint64_t a1)
{
  v2 = type metadata accessor for Transcript.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388AE264(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2388414A0;

  return sub_2388AC73C(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_2388AE354(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_2388D3438();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v3 + v6 + 48);
    v38 = *(v3 + v6 + 32);
    v39 = v7;
    v8 = *(v3 + v6 + 16);
    v37[0] = *(v3 + v6);
    v37[1] = v8;
    v9 = *(v3 + v6 + 64);
    v40 = v9;
    v10 = *(&v39 + 1);
    v34 = v39;
    v11 = v8;
    v33 = v38;
    v12 = v37[0];
    sub_238827E14(v37, v36, &qword_27DF2FF78, &qword_2388DC1E0);
    if (!*(&v12 + 1))
    {
      goto LABEL_18;
    }

    v31 = v10;
    v32 = v9;
    v37[0] = v12;
    v13 = *a3;
    v15 = sub_238820AA8(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_238821778();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v22[6] + 16 * v15) = v12;
    v23 = v22[7] + 56 * v15;
    *v23 = v11;
    *(v23 + 16) = v33;
    *(v23 + 32) = v34;
    *(v23 + 40) = v31;
    *(v23 + 48) = v32;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    ++v5;
    v22[2] = v26;
    v6 += 72;
    a2 = 1;
    v3 = a1;
    if (v30 == v5)
    {
      goto LABEL_18;
    }
  }

  sub_238823204(v18, a2 & 1);
  v20 = sub_238820AA8(v12, *(&v12 + 1));
  if ((v19 & 1) != (v21 & 1))
  {
    goto LABEL_23;
  }

  v15 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v27 = swift_allocError();
  swift_willThrow();
  v41 = v27;
  v28 = v27;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_2388AE6A4(v33, *(&v33 + 1), v34, v31, v32);

    return;
  }

LABEL_24:
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
  sub_2388D30A8();
  MEMORY[0x23EE66C20](39, 0xE100000000000000);
  sub_2388D30B8();
  __break(1u);
}

uint64_t sub_2388AE6A4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v6)
    {
    }

    sub_238810DC4(result, a2, a3);
LABEL_9:
  }

  if (v6 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2388AE70C()
{
  swift_unknownObjectRelease();

  sub_238810DC4(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2388AE790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = v1[17];
  v9 = v1[18];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238833668;

  return sub_2388AD06C(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_2388AE890(uint64_t a1)
{
  v2 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388AE954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, a2);
  if (swift_dynamicCast())
  {
    v11 = *(v8 + 8);
    v11(a1, a2);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = *(&v30[0] + 1);
    v15 = *&v30[0];
  }

  else
  {
    sub_238810E44(&qword_27DF2FA58, &qword_2388D4000);
    if (swift_dynamicCast())
    {
      sub_238828174(v30, v27);
      v17 = v28;
      v18 = v29;
      sub_238815878(v27, v28);
      (*(v18 + 24))(v22, v17, v18);
      v11 = *(v8 + 8);
      v11(a1, a2);
      v15 = v22[0];
      v16 = v22[1];
      v13 = v25;
      v14 = v26;
      v19 = 256;
      if (!v24)
      {
        v19 = 0;
      }

      v12 = v19 | v23 | 0x4000000000000000;
      sub_2388158BC(v27);
    }

    else
    {
      (*(a3 + 8))(v30, a2, a3);
      v11 = *(v8 + 8);
      v11(a1, a2);
      v16 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *&v30[0];
      v12 = 0x8000000000000000;
    }
  }

  result = (v11)(v10, a2);
  *a4 = v15;
  a4[1] = v16;
  a4[2] = v12;
  a4[3] = v13;
  a4[4] = v14;
  return result;
}

uint64_t DynamicGenerationSchema.init(referenceTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2388D3F70;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = type metadata accessor for DynamicGenerationSchema(0);

  result = sub_2388D2318();
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 2;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  *(a3 + 48) = v6;
  *(a3 + *(v7 + 32)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t DynamicGenerationSchema.init(dictionaryOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x23EE66C20](a1[4], a1[5]);
  MEMORY[0x23EE66C20](93, 0xE100000000000000);
  v4 = a1[6];
  v5 = type metadata accessor for DynamicGenerationSchema(0);
  v6 = *(a1 + *(v5 + 32));

  sub_2388D2298();
  result = sub_2388B7DA4(a1, type metadata accessor for DynamicGenerationSchema);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0x3A676E697274535BLL;
  *(a2 + 40) = 0xE900000000000020;
  *(a2 + 48) = v4;
  *(a2 + *(v5 + 32)) = v6;
  return result;
}

uint64_t DynamicGenerationSchema.init(arrayOf:minimumElements:maximumElements:)@<X0>(void *a1@<X0>, uint64_t a6@<X8>)
{
  MEMORY[0x23EE66C20](a1[4], a1[5]);
  MEMORY[0x23EE66C20](62, 0xE100000000000000);
  v8 = a1[6];
  v9 = type metadata accessor for DynamicGenerationSchema(0);
  v10 = *(a1 + *(v9 + 32));

  sub_2388D22F8();
  result = sub_2388B7DA4(a1, type metadata accessor for DynamicGenerationSchema);
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *a6 = 0;
  *(a6 + 24) = 2;
  *(a6 + 32) = 0x3C7961727241;
  *(a6 + 40) = 0xE600000000000000;
  *(a6 + 48) = v8;
  *(a6 + *(v9 + 32)) = v10;
  return result;
}

uint64_t sub_2388AEF04@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerationSchema(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_2388B7D3C(v4, v8, type metadata accessor for GenerationSchema.Kind);
  v16[1] = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v9 = sub_2388D28B8();
  v11 = v10;
  sub_2388B7DA4(v4, type metadata accessor for GenerationSchema.Kind);
  v12 = &v8[*(v6 + 28)];
  *v12 = v9;
  v12[1] = v11;

  sub_2388B7DA4(v8, type metadata accessor for GenerationSchema);
  v13 = type metadata accessor for DynamicGenerationSchema(0);
  v14 = MEMORY[0x277D84F90];
  result = sub_2388D22A8();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v14;
  *(a1 + *(v13 + 32)) = v14;
  return result;
}

uint64_t sub_2388AF0DC@<X0>(char a2@<W1>, void (**a3)(char *, char *, uint64_t)@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v8 = sub_238810E44(&qword_27DF31710, &qword_2388DC2D8);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v36 - v9;
  v40 = sub_238810E44(&qword_27DF31718, &qword_2388DC2E0);
  v10 = *(v40 - 8);
  v11 = MEMORY[0x28223BE20](v40);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_2388D2328();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v41 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238810E44(&qword_27DF31720, &qword_2388DC2E8);
  v18 = *(v10 + 72);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v39 = swift_allocObject();
  v20 = v39 + v19;
  if (a2)
  {
    v21 = 1;
  }

  else
  {
    sub_2388D21C8();
    v21 = 0;
  }

  v22 = *(v45 + 56);
  v23 = 1;
  v22(v20, v21, 1, v8);
  if ((a4 & 1) == 0)
  {
    sub_2388D21B8();
    v23 = 0;
  }

  v22(v20 + v18, v23, 1, v8);
  sub_238827E14(v20, v15, &qword_27DF31718, &qword_2388DC2E0);
  sub_238840FB4(v15, v13, &qword_27DF31718, &qword_2388DC2E0);
  v24 = (v45 + 32);
  v37 = *(v45 + 48);
  v25 = v37(v13, 1, v8);
  v38 = v24;
  if (v25 == 1)
  {
    sub_238827E88(v13, &qword_27DF31718, &qword_2388DC2E0);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = *v24;
    v36(v44, v13, v8);
    v26 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_2388B7280(0, *(v26 + 2) + 1, 1, v26, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_2388B7280((v27 > 1), v28 + 1, 1, v26, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    *(v26 + 2) = v28 + 1;
    v36(&v26[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v28], v44, v8);
  }

  sub_238827E14(v20 + v18, v15, &qword_27DF31718, &qword_2388DC2E0);
  sub_238840FB4(v15, v13, &qword_27DF31718, &qword_2388DC2E0);
  if (v37(v13, 1, v8) == 1)
  {
    sub_238827E88(v13, &qword_27DF31718, &qword_2388DC2E0);
  }

  else
  {
    v29 = *v38;
    (*v38)(v44, v13, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_2388B7280(0, *(v26 + 2) + 1, 1, v26, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    v31 = *(v26 + 2);
    v30 = *(v26 + 3);
    if (v31 >= v30 >> 1)
    {
      v26 = sub_2388B7280((v30 > 1), v31 + 1, 1, v26, &qword_27DF31728, &unk_2388DC2F0, &qword_27DF31710, &qword_2388DC2D8);
    }

    *(v26 + 2) = v31 + 1;
    v29(&v26[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31], v44, v8);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v41;
  sub_2388D22A8();

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 2;
  *(a5 + 32) = 0x7265626D754ELL;
  *(a5 + 40) = 0xE600000000000000;
  v33 = MEMORY[0x277D84F90];
  *(a5 + 48) = MEMORY[0x277D84F90];
  v34 = type metadata accessor for DynamicGenerationSchema(0);
  *(a5 + *(v34 + 32)) = v33;
  return (*(v42 + 32))(a5 + *(v34 + 28), v32, v43);
}

uint64_t sub_2388AF734@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v72 = a2;
  v69 = a1;
  v80 = a3;
  v3 = sub_238810E44(&qword_27DF31518, &qword_2388DBF50);
  v4 = *(v3 - 8);
  v84 = v3;
  v85 = v4;
  MEMORY[0x28223BE20](v3);
  v83 = &v64 - v5;
  v79 = sub_238810E44(&qword_27DF31700, &qword_2388DC2C8);
  v67 = *(v79 - 8);
  v68 = v79 - 8;
  v73 = v67;
  v6 = MEMORY[0x28223BE20](v79 - 8);
  v81 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v64 - v8;
  v9 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v64 - v11;
  v12 = sub_2388D2328();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x28223BE20](v12);
  v76 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - v17;
  v19 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for GenerationSchema(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v21 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);
  *v21 = 0u;
  v21[1] = 0u;
  v70 = v10;
  v27 = *(v10 + 56);
  v27(v18, 1, 1, v9);
  v28 = *(type metadata accessor for StringGuides(0) + 20);
  v71 = v9;
  v27(&v26[v28], 1, 1, v9);
  *v26 = 0;
  sub_2388150EC(v18, &v26[v28]);
  swift_storeEnumTagMultiPayload();
  sub_2388B7D3C(v21, v25, type metadata accessor for GenerationSchema.Kind);
  v86 = MEMORY[0x277D837D0];
  sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
  v29 = sub_2388D28B8();
  v31 = v30;
  sub_2388B7DA4(v21, type metadata accessor for GenerationSchema.Kind);
  v32 = &v25[*(v23 + 28)];
  v74 = v31;
  v75 = v29;
  *v32 = v29;
  v32[1] = v31;

  sub_2388B7DA4(v25, type metadata accessor for GenerationSchema);
  sub_238810E44(&qword_27DF31708, &qword_2388DC2D0);
  v33 = *(v67 + 72);
  v34 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v73 = swift_allocObject();
  v35 = v73 + v34;
  if (v69)
  {
    sub_2388D2188();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = v84;
  v38 = *(v85 + 56);
  v39 = 1;
  v38(v35, v36, 1, v84);
  v40 = v66;
  sub_238827E14(v72, v66, &qword_27DF2FA30, &qword_2388D44E0);
  v42 = v70;
  v41 = v71;
  if ((*(v70 + 48))(v40, 1, v71) != 1)
  {
    v43 = v65;
    (*(v42 + 32))(v65, v40, v41);
    sub_2388D1C88();
    sub_2388D2198();
    (*(v42 + 8))(v43, v41);
    v39 = 0;
  }

  v38(v35 + v33, v39, 1, v37);
  v44 = v82;
  sub_238827E14(v35, v82, &qword_27DF31700, &qword_2388DC2C8);
  v45 = v81;
  sub_238840FB4(v44, v81, &qword_27DF31700, &qword_2388DC2C8);
  v46 = *(v85 + 48);
  v47 = (v85 + 32);
  if (v46(v45, 1, v37) == 1)
  {
    sub_238827E88(v45, &qword_27DF31700, &qword_2388DC2C8);
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = *v47;
    (*v47)(v83, v45, v37);
    v48 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_2388B7280(0, *(v48 + 2) + 1, 1, v48, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    if (v51 >= v50 >> 1)
    {
      v48 = sub_2388B7280((v50 > 1), v51 + 1, 1, v48, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    *(v48 + 2) = v51 + 1;
    v52 = &v48[((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v51];
    v37 = v84;
    v49(v52, v83, v84);
    v45 = v81;
  }

  v53 = v35 + v33;
  v54 = v82;
  sub_238827E14(v53, v82, &qword_27DF31700, &qword_2388DC2C8);
  sub_238840FB4(v54, v45, &qword_27DF31700, &qword_2388DC2C8);
  if (v46(v45, 1, v37) == 1)
  {
    sub_238827E88(v45, &qword_27DF31700, &qword_2388DC2C8);
  }

  else
  {
    v55 = *v47;
    (*v47)(v83, v45, v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_2388B7280(0, *(v48 + 2) + 1, 1, v48, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    v57 = *(v48 + 2);
    v56 = *(v48 + 3);
    if (v57 >= v56 >> 1)
    {
      v48 = sub_2388B7280((v56 > 1), v57 + 1, 1, v48, &qword_27DF31510, "rd", &qword_27DF31518, &qword_2388DBF50);
    }

    *(v48 + 2) = v57 + 1;
    v55(&v48[((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v57], v83, v84);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v58 = v76;
  sub_2388D22A8();

  v59 = v80;
  *v80 = 0;
  v59[1] = 0;
  v59[2] = 0;
  *(v59 + 24) = 2;
  v60 = v74;
  v59[4] = v75;
  v59[5] = v60;
  v61 = MEMORY[0x277D84F90];
  v59[6] = MEMORY[0x277D84F90];
  v62 = type metadata accessor for DynamicGenerationSchema(0);
  *(v59 + *(v62 + 32)) = v61;
  return (*(v77 + 32))(v59 + *(v62 + 28), v58, v78);
}

uint64_t DynamicGenerationSchema.init(name:description:anyOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v116 = a1;
  v106 = sub_2388D2328();
  v115 = *(v106 - 8);
  v11 = MEMORY[0x28223BE20](v106);
  v101 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v99 - v13;
  v118 = type metadata accessor for DynamicGenerationSchema(0);
  v15 = MEMORY[0x28223BE20](v118);
  v114 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v99 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v110 = &v99 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v99 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v99 - v24;
  v26 = *(a5 + 16);
  v111 = v23;
  v112 = a2;
  v108 = a5;
  v109 = v26;
  v104 = a4;
  v105 = a6;
  v102 = v14;
  v103 = a3;
  if (v26)
  {
    v27 = a5 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v28 = *(v23 + 72);

    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2388B7D3C(v27, v25, type metadata accessor for DynamicGenerationSchema);
      v31 = *(v25 + 6);

      result = sub_2388B7DA4(v25, type metadata accessor for DynamicGenerationSchema);
      v32 = *(v31 + 16);
      v33 = *(v29 + 16);
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_94;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v34 <= *(v29 + 24) >> 1)
      {
        if (!*(v31 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v33 <= v34)
        {
          v35 = v33 + v32;
        }

        else
        {
          v35 = v33;
        }

        result = sub_2388B686C(result, v35, 1, v29);
        v29 = result;
        if (!*(v31 + 16))
        {
LABEL_3:

          if (v32)
          {
            goto LABEL_95;
          }

          goto LABEL_4;
        }
      }

      if ((*(v29 + 24) >> 1) - *(v29 + 16) < v32)
      {
        goto LABEL_99;
      }

      swift_arrayInitWithCopy();

      if (v32)
      {
        v36 = *(v29 + 16);
        v37 = __OFADD__(v36, v32);
        v38 = v36 + v32;
        if (v37)
        {
          goto LABEL_101;
        }

        *(v29 + 16) = v38;
      }

LABEL_4:
      v27 += v28;
      if (!--v26)
      {
        goto LABEL_19;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_19:
  v39 = *(v29 + 16);
  if (!v39)
  {
    v107 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v40 = 0;
  v100 = v39 - 1;
  v107 = MEMORY[0x277D84F90];
  v41 = v112;
  v42 = v116;
  while (2)
  {
    v43 = (v29 + 40 + 16 * v40);
    v44 = v40;
    while (1)
    {
      if (v44 >= *(v29 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
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
        return result;
      }

      v46 = *(v43 - 1);
      v45 = *v43;
      if (v46 != v42 || v45 != v41)
      {
        result = sub_2388D3368();
        if ((result & 1) == 0)
        {
          break;
        }
      }

LABEL_24:
      ++v44;
      v43 += 2;
      if (v39 == v44)
      {
        goto LABEL_42;
      }
    }

    if (v46 == sub_2388D2148() && v45 == v48)
    {

LABEL_23:

      v41 = v112;
      v42 = v116;
      goto LABEL_24;
    }

    v49 = sub_2388D3368();

    if (v49)
    {
      goto LABEL_23;
    }

    v50 = v107;
    result = swift_isUniquelyReferenced_nonNull_native();
    v119 = v50;
    if (result)
    {
      v51 = v50;
    }

    else
    {
      result = sub_2388B7BD0(0, *(v50 + 16) + 1, 1);
      v51 = v119;
    }

    v41 = v112;
    v42 = v116;
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      result = sub_2388B7BD0((v52 > 1), v53 + 1, 1);
      v42 = v116;
      v41 = v112;
      v51 = v119;
    }

    v40 = v44 + 1;
    *(v51 + 16) = v53 + 1;
    v107 = v51;
    v54 = v51 + 16 * v53;
    *(v54 + 32) = v46;
    *(v54 + 40) = v45;
    if (v100 != v44)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v55 = v109;
  if (v109)
  {
    v56 = *(v118 + 32);
    v57 = v108 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v58 = MEMORY[0x277D84F90];
    v59 = *(v111 + 72);
    while (1)
    {
      v60 = v113;
      sub_2388B7D3C(v57, v113, type metadata accessor for DynamicGenerationSchema);
      v61 = *(v60 + v56);

      result = sub_2388B7DA4(v60, type metadata accessor for DynamicGenerationSchema);
      v62 = *(v61 + 16);
      v63 = v58[2];
      v64 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        goto LABEL_97;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v64 <= v58[3] >> 1)
      {
        if (!*(v61 + 16))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v63 <= v64)
        {
          v65 = v63 + v62;
        }

        else
        {
          v65 = v63;
        }

        result = sub_2388B6F7C(result, v65, 1, v58, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        v58 = result;
        if (!*(v61 + 16))
        {
LABEL_44:

          if (v62)
          {
            goto LABEL_98;
          }

          goto LABEL_45;
        }
      }

      if ((v58[3] >> 1) - v58[2] < v62)
      {
        goto LABEL_100;
      }

      swift_arrayInitWithCopy();

      if (v62)
      {
        v66 = v58[2];
        v37 = __OFADD__(v66, v62);
        v67 = v66 + v62;
        if (v37)
        {
          goto LABEL_102;
        }

        v58[2] = v67;
      }

LABEL_45:
      v57 += v59;
      if (!--v55)
      {
        goto LABEL_60;
      }
    }
  }

  v58 = MEMORY[0x277D84F90];
LABEL_60:
  v68 = v58[2];
  v69 = MEMORY[0x277D84F90];
  if (v68)
  {
    v70 = 0;
    v72 = v110;
    v71 = v111;
    while (1)
    {
      if (v70 >= v58[2])
      {
        goto LABEL_96;
      }

      v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v74 = *(v71 + 72);
      sub_2388B7D3C(v58 + v73 + v74 * v70, v72, type metadata accessor for DynamicGenerationSchema);
      if (*(v72 + 24) > 1u)
      {
        sub_2388D2148();
LABEL_75:

LABEL_76:
        sub_2388B7BF0(v72, v117);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2388B7CD8(0, *(v69 + 16) + 1, 1);
          v72 = v110;
          v71 = v111;
          v69 = v119;
        }

        v82 = *(v69 + 16);
        v81 = *(v69 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_2388B7CD8((v81 > 1), v82 + 1, 1);
          v72 = v110;
          v71 = v111;
          v69 = v119;
        }

        *(v69 + 16) = v82 + 1;
        result = sub_2388B7BF0(v117, v69 + v73 + v82 * v74);
        goto LABEL_64;
      }

      v76 = *v72;
      v75 = *(v72 + 8);

      if (v76 == v116 && v75 == v112)
      {
        break;
      }

      v77 = sub_2388D3368();

      if (v77)
      {
        goto LABEL_63;
      }

      v78 = sub_2388D2148();
      if (!v75)
      {
        v72 = v110;
        v71 = v111;
        goto LABEL_75;
      }

      if (v76 == v78 && v75 == v79)
      {

        v72 = v110;
        v71 = v111;
      }

      else
      {
        v83 = sub_2388D3368();

        v72 = v110;
        v71 = v111;
        if ((v83 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      result = sub_2388B7DA4(v72, type metadata accessor for DynamicGenerationSchema);
LABEL_64:
      if (v68 == ++v70)
      {
        goto LABEL_85;
      }
    }

LABEL_63:
    v72 = v110;
    result = sub_2388B7DA4(v110, type metadata accessor for DynamicGenerationSchema);
    v71 = v111;
    goto LABEL_64;
  }

  v71 = v111;
LABEL_85:

  v84 = v109;
  if (v109)
  {
    v119 = MEMORY[0x277D84F90];
    v85 = v71;
    sub_2388B7C94(0, v109, 0);
    v86 = v119;
    v87 = v108 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v117 = *(v85 + 72);
    v88 = (v115 + 16);
    v89 = v106;
    v90 = v101;
    do
    {
      v91 = v114;
      sub_2388B7D3C(v87, v114, type metadata accessor for DynamicGenerationSchema);
      (*v88)(v90, v91 + *(v118 + 28), v89);
      sub_2388B7DA4(v91, type metadata accessor for DynamicGenerationSchema);
      v119 = v86;
      v93 = *(v86 + 16);
      v92 = *(v86 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_2388B7C94((v92 > 1), v93 + 1, 1);
        v89 = v106;
        v86 = v119;
      }

      *(v86 + 16) = v93 + 1;
      (*(v115 + 32))(v86 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v93, v90, v89);
      v87 += v117;
      --v84;
    }

    while (v84);

    v84 = v109;
  }

  else
  {

    v89 = v106;
  }

  v94 = v102;
  v95 = v116;
  v96 = v112;
  sub_2388D22D8();

  v97 = v105;
  *v105 = v95;
  v97[1] = v96;
  v97[2] = v84;
  *(v97 + 24) = 1;
  v97[4] = v95;
  v97[5] = v96;
  v97[6] = v107;
  v98 = v118;
  *(v97 + *(v118 + 32)) = v69;
  return (*(v115 + 32))(v97 + *(v98 + 28), v94, v89);
}

uint64_t sub_2388B0B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2388D34A8();
  sub_2388D2938();
  v6 = sub_2388D34E8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2388D3368() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2388B0C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_2388D1948();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2388BCBC0(&qword_27DF31630, MEMORY[0x277D0E218], MEMORY[0x277D0E220]), v7 = sub_2388D2798(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2388BCBC0(&qword_27DF31638, MEMORY[0x277D0E218], MEMORY[0x277D0E228]);
      v15 = sub_2388D27C8();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t DynamicGenerationSchema.init(name:description:properties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v136 = a3;
  v135 = a2;
  v137 = a5;
  v147 = sub_2388D22C8();
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2388D2328();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DynamicGenerationSchema(0);
  v10 = *(v141 - 8);
  v11 = MEMORY[0x28223BE20](v141);
  v150 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v143 = &v127 - v14;
  MEMORY[0x28223BE20](v13);
  v148 = &v127 - v15;
  v146 = type metadata accessor for DynamicGenerationSchema.Property(0);
  v16 = *(v146 - 8);
  v17 = MEMORY[0x28223BE20](v146);
  v153 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v152 = (&v127 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v127 - v22;
  v24 = *(a4 + 16);
  v144 = v10;
  v145 = a1;
  v151 = v21;
  v140 = a4;
  v129 = v8;
  v130 = v24;
  v139 = v16;
  if (!v24)
  {
    v47 = v21;
    v131 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v154 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v24, 0);
  v25 = v154;
  v26 = a4 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v27 = *(v16 + 72);
  v28 = v26;
  do
  {
    v29 = v152;
    sub_2388B7D3C(v28, v152, type metadata accessor for DynamicGenerationSchema.Property);
    v31 = *v29;
    v30 = v29[1];

    sub_2388B7DA4(v29, type metadata accessor for DynamicGenerationSchema.Property);
    v154 = v25;
    v33 = *(v25 + 16);
    v32 = *(v25 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_2388B7BD0((v32 > 1), v33 + 1, 1);
      v25 = v154;
    }

    *(v25 + 16) = v33 + 1;
    v34 = v25 + 16 * v33;
    *(v34 + 32) = v31;
    *(v34 + 40) = v30;
    v28 += v27;
    --v24;
  }

  while (v24);
  v131 = v25;
  v35 = *(v140 + 16);
  a1 = v145;
  if (!v35)
  {
    v47 = v151;
    v10 = v144;
LABEL_27:

    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    LODWORD(v48) = 1;
    v49 = v47;
    v50 = *(MEMORY[0x277D84F90] + 16);
    if (!v50)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v36 = MEMORY[0x277D84F90];
  v37 = v35;
  do
  {
    sub_2388B7D3C(v26, v23, type metadata accessor for DynamicGenerationSchema.Property);
    v39 = *(v23 + 2);

    result = sub_2388B7DA4(v23, type metadata accessor for DynamicGenerationSchema.Property);
    v40 = *(v39 + 16);
    v41 = *(v36 + 16);
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v42 <= *(v36 + 24) >> 1)
    {
      if (!*(v39 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v41 <= v42)
      {
        v43 = v41 + v40;
      }

      else
      {
        v43 = v41;
      }

      result = sub_2388B686C(result, v43, 1, v36);
      v36 = result;
      if (!*(v39 + 16))
      {
LABEL_8:

        if (v40)
        {
          goto LABEL_142;
        }

        goto LABEL_9;
      }
    }

    if ((*(v36 + 24) >> 1) - *(v36 + 16) < v40)
    {
      goto LABEL_144;
    }

    swift_arrayInitWithCopy();

    if (v40)
    {
      v44 = *(v36 + 16);
      v45 = __OFADD__(v44, v40);
      v46 = v44 + v40;
      if (v45)
      {
        goto LABEL_146;
      }

      *(v36 + 16) = v46;
    }

LABEL_9:
    v26 += v27;
    --v37;
  }

  while (v37);
  LODWORD(v48) = 0;
  v10 = v144;
  a1 = v145;
  v49 = v151;
  v50 = *(v36 + 16);
  if (!v50)
  {
LABEL_25:
    v138 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_28:
  v51 = 0;
  v52 = v36 + 40;
  v127 = v50 - 1;
  v138 = MEMORY[0x277D84F90];
  LODWORD(v142) = v48;
  v128 = v36 + 40;
  while (2)
  {
    v53 = (v52 + 16 * v51);
    v54 = v51;
    while (2)
    {
      if (v54 >= *(v36 + 16))
      {
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v56 = *(v53 - 1);
      v55 = *v53;
      v57 = v56 == v49 && v55 == a1;
      if (v57 || (result = sub_2388D3368(), v49 = v151, (result & 1) != 0))
      {
LABEL_32:
        ++v54;
        v53 += 2;
        if (v50 == v54)
        {
          LOBYTE(v48) = v142;
          goto LABEL_49;
        }

        continue;
      }

      break;
    }

    if (v56 == sub_2388D2148() && v55 == v58)
    {

LABEL_31:

      a1 = v145;
      v49 = v151;
      goto LABEL_32;
    }

    v59 = sub_2388D3368();

    if (v59)
    {
      goto LABEL_31;
    }

    v60 = v138;
    result = swift_isUniquelyReferenced_nonNull_native();
    v61 = v60;
    v154 = v60;
    if ((result & 1) == 0)
    {
      result = sub_2388B7BD0(0, *(v60 + 16) + 1, 1);
      v61 = v154;
    }

    a1 = v145;
    v49 = v151;
    v48 = *(v61 + 16);
    v62 = *(v61 + 24);
    if (v48 >= v62 >> 1)
    {
      result = sub_2388B7BD0((v62 > 1), v48 + 1, 1);
      v49 = v151;
      a1 = v145;
      v61 = v154;
    }

    v51 = v54 + 1;
    *(v61 + 16) = v48 + 1;
    v138 = v61;
    v63 = v61 + 16 * v48;
    *(v63 + 32) = v56;
    *(v63 + 40) = v55;
    LOBYTE(v48) = v142;
    v52 = v128;
    if (v127 != v54)
    {
      continue;
    }

    break;
  }

LABEL_49:

  if ((v48 & 1) == 0)
  {
    v82 = v140 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v83 = *(v139 + 72);
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      v84 = v153;
      sub_2388B7D3C(v82, v153, type metadata accessor for DynamicGenerationSchema.Property);
      v85 = *(v84 + 24);

      result = sub_2388B7DA4(v84, type metadata accessor for DynamicGenerationSchema.Property);
      v86 = *(v85 + 16);
      v87 = v64[2];
      v88 = v87 + v86;
      if (__OFADD__(v87, v86))
      {
        goto LABEL_139;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v88 <= v64[3] >> 1)
      {
        if (!*(v85 + 16))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v87 <= v88)
        {
          v89 = v87 + v86;
        }

        else
        {
          v89 = v87;
        }

        result = sub_2388B6F7C(result, v89, 1, v64, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        v64 = result;
        if (!*(v85 + 16))
        {
LABEL_77:

          if (v86)
          {
            goto LABEL_140;
          }

          goto LABEL_78;
        }
      }

      if ((v64[3] >> 1) - v64[2] < v86)
      {
        goto LABEL_143;
      }

      swift_arrayInitWithCopy();

      if (v86)
      {
        v90 = v64[2];
        v45 = __OFADD__(v90, v86);
        v91 = v90 + v86;
        if (v45)
        {
          goto LABEL_145;
        }

        v64[2] = v91;
      }

LABEL_78:
      v82 += v83;
      if (!--v35)
      {
        goto LABEL_51;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_51:
  v65 = v64[2];
  if (v65)
  {
    v66 = 0;
    v153 = MEMORY[0x277D84F90];
    v68 = v147;
    v67 = v148;
    while (1)
    {
      if (v66 >= v64[2])
      {
        goto LABEL_136;
      }

      v69 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v70 = *(v10 + 72);
      sub_2388B7D3C(v64 + v69 + v70 * v66, v67, type metadata accessor for DynamicGenerationSchema);
      if (*(v67 + 24) > 1u)
      {
        sub_2388D2148();
LABEL_67:

LABEL_68:
        sub_2388B7BF0(v67, v150);
        v76 = v153;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v154 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2388B7CD8(0, *(v76 + 16) + 1, 1);
          v67 = v148;
          v76 = v154;
        }

        v79 = *(v76 + 16);
        v78 = *(v76 + 24);
        v80 = v76;
        if (v79 >= v78 >> 1)
        {
          sub_2388B7CD8((v78 > 1), v79 + 1, 1);
          v67 = v148;
          v80 = v154;
        }

        *(v80 + 16) = v79 + 1;
        v153 = v80;
        result = sub_2388B7BF0(v150, v80 + v69 + v79 * v70);
        goto LABEL_56;
      }

      v72 = *v67;
      v71 = *(v67 + 8);

      if (v72 == v151 && v71 == v145)
      {
        break;
      }

      v73 = sub_2388D3368();

      if (v73)
      {
        goto LABEL_54;
      }

      v74 = sub_2388D2148();
      if (!v71)
      {
        v67 = v148;
        goto LABEL_67;
      }

      if (v72 == v74 && v71 == v75)
      {

        v67 = v148;
      }

      else
      {
        v81 = sub_2388D3368();

        v67 = v148;
        if ((v81 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

LABEL_55:
      result = sub_2388B7DA4(v67, type metadata accessor for DynamicGenerationSchema);
LABEL_56:
      if (v65 == ++v66)
      {
        goto LABEL_93;
      }
    }

LABEL_54:
    v67 = v148;
    goto LABEL_55;
  }

  v153 = MEMORY[0x277D84F90];
  v68 = v147;
LABEL_93:

  v155 = MEMORY[0x277D84FA0];
  result = v153;
  v92 = *(v153 + 16);
  v93 = MEMORY[0x277D84F90];
  if (v92)
  {
    v94 = 0;
    v95 = MEMORY[0x277D84F90];
    v142 = *(v153 + 16);
    while (2)
    {
      v148 = v95;
      v96 = v155;
      v97 = v155 + 56;
      v98 = v94;
LABEL_96:
      if (v98 < v92)
      {
        v94 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_138;
        }

        v150 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v99 = *(v10 + 72);
        v100 = v153 + v150 + v99 * v98;
        if (*(v100 + 24) > 1u)
        {
          v101 = 0;
          v102 = 0;
          if (!*(v96 + 16))
          {
            goto LABEL_119;
          }
        }

        else
        {
          v101 = *v100;
          v102 = *(v100 + 8);

          if (!*(v96 + 16))
          {
            goto LABEL_119;
          }
        }

        sub_2388D34A8();
        sub_2388D34C8();

        if (v102)
        {
          sub_2388D2938();
        }

        v103 = sub_2388D34E8();
        v104 = -1 << *(v96 + 32);
        v105 = v103 & ~v104;
        if ((*(v97 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
        {
          v106 = ~v104;
          v107 = *(v96 + 48);
          do
          {
            v108 = (v107 + 16 * v105);
            v109 = v108[1];
            if (v109)
            {
              if (v102)
              {
                v110 = *v108 == v101 && v109 == v102;
                if (v110 || (sub_2388D3368() & 1) != 0)
                {

LABEL_116:

                  v98 = v94;
                  v92 = v142;
                  v68 = v147;
                  v10 = v144;
                  if (v94 == v142)
                  {
                    v95 = v148;
                    goto LABEL_126;
                  }

                  goto LABEL_96;
                }
              }
            }

            else if (!v102)
            {
              goto LABEL_116;
            }

            v105 = (v105 + 1) & v106;
          }

          while (((*(v97 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) != 0);
        }

        v68 = v147;
        v10 = v144;
LABEL_119:

        sub_2388BA970(&v154, v101, v102);

        sub_2388B7D3C(v100, v143, type metadata accessor for DynamicGenerationSchema);
        v95 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_2388B6F7C(0, *(v95 + 2) + 1, 1, v95, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        }

        v112 = *(v95 + 2);
        v111 = *(v95 + 3);
        if (v112 >= v111 >> 1)
        {
          v95 = sub_2388B6F7C((v111 > 1), v112 + 1, 1, v95, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        }

        *(v95 + 2) = v112 + 1;
        result = sub_2388B7BF0(v143, &v95[v150 + v112 * v99]);
        v92 = v142;
        if (v94 == v142)
        {
LABEL_126:
          v93 = MEMORY[0x277D84F90];
          goto LABEL_127;
        }

        continue;
      }

      break;
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
LABEL_127:

    if (v130)
    {
      v148 = v95;
      v154 = v93;
      v113 = v130;
      sub_2388B7FAC(0, v130, 0);
      v114 = v154;
      v115 = v140 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v116 = *(v139 + 72);
      v117 = (v149 + 16);
      v118 = v129;
      do
      {
        v119 = v152;
        sub_2388B7D3C(v115, v152, type metadata accessor for DynamicGenerationSchema.Property);
        (*v117)(v118, v119 + *(v146 + 28), v68);
        sub_2388B7DA4(v119, type metadata accessor for DynamicGenerationSchema.Property);
        v154 = v114;
        v121 = *(v114 + 16);
        v120 = *(v114 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_2388B7FAC((v120 > 1), v121 + 1, 1);
          v114 = v154;
        }

        *(v114 + 16) = v121 + 1;
        (*(v149 + 32))(v114 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v121, v118, v68);
        v115 += v116;
        --v113;
      }

      while (v113);

      v95 = v148;
    }

    else
    {
    }

    v122 = v132;
    v123 = v151;
    v124 = v145;
    sub_2388D2308();

    v125 = v137;
    *v137 = v123;
    v125[1] = v124;
    v125[2] = v131;
    *(v125 + 24) = 0;
    v125[4] = v123;
    v125[5] = v124;
    v125[6] = v138;
    v126 = v141;
    *(v125 + *(v141 + 32)) = v95;
    return (*(v133 + 32))(v125 + *(v126 + 28), v122, v134);
  }

  return result;
}

uint64_t DynamicGenerationSchema.init(name:description:anyOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v36 = sub_2388D2328();
  v11 = *(v36 - 8);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(a5 + 16);
  v18 = MEMORY[0x277D84F90];
  v32 = v17;
  if (v17)
  {
    v27 = &v26 - v15;
    v28 = a4;
    v29 = a1;
    v30 = a2;
    v31 = a6;
    v37 = MEMORY[0x277D84F90];

    v19 = a5;
    sub_2388B7C94(0, v17, 0);
    v20 = v37;
    v35 = v11 + 32;
    v26 = v19;
    v21 = v19 + 40;
    v34 = xmmword_2388D3F70;
    do
    {
      sub_238810E44(&qword_27DF31510, "rd");
      sub_238810E44(&qword_27DF31518, &qword_2388DBF50);
      *(swift_allocObject() + 16) = v34;

      sub_2388D21A8();
      sub_2388D22A8();

      v37 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2388B7C94((v22 > 1), v23 + 1, 1);
        v20 = v37;
      }

      *(v20 + 16) = v23 + 1;
      (*(v11 + 32))(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v14, v36);
      v21 += 16;
      --v17;
    }

    while (v17);

    a2 = v30;
    a6 = v31;
    a1 = v29;
    v16 = v27;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_2388D22D8();

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v32;
  *(a6 + 24) = 1;
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = v18;
  v24 = type metadata accessor for DynamicGenerationSchema(0);
  *(a6 + *(v24 + 32)) = v18;
  return (*(v11 + 32))(a6 + *(v24 + 28), v16, v36);
}

uint64_t DynamicGenerationSchema.init<A>(type:guides:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  v9 = type metadata accessor for GenerationSchema(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  type metadata accessor for AnyGenerationGuides(0);
  sub_23882A508(a2, a3);
  (*(a4 + 40))(a3, a4);

  sub_2388C263C(v15, v14);

  sub_2388B7DA4(v12, type metadata accessor for GenerationSchema);
  sub_2388C16F8(x8_0);

  return sub_2388B7DA4(v14, type metadata accessor for GenerationSchema);
}

uint64_t sub_2388B2394@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v53) = a4;
  v51[0] = a1;
  v51[1] = a3;
  LODWORD(v52) = a2;
  v61 = sub_238810E44(&qword_27DF315E0, &qword_2388DC140);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v63 = v51 - v6;
  v58 = sub_238810E44(&qword_27DF315E8, &unk_2388DC148);
  v54 = *(v58 - 8);
  v7 = v54;
  v8 = MEMORY[0x28223BE20](v58);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = v51 - v11;
  v12 = sub_2388D2328();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v57 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerationSchema(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 0;
  v21 = 1;
  v16[8] = 1;
  *(v16 + 2) = 0;
  v16[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_2388B7D3C(v16, v20, type metadata accessor for GenerationSchema.Kind);
  v65 = MEMORY[0x277D83B88];
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v22 = sub_2388D28B8();
  v24 = v23;
  sub_2388B7DA4(v16, type metadata accessor for GenerationSchema.Kind);
  v25 = &v20[*(v18 + 28)];
  v55 = v24;
  v56 = v22;
  *v25 = v22;
  v25[1] = v24;

  sub_2388B7DA4(v20, type metadata accessor for GenerationSchema);
  sub_238810E44(&qword_27DF315F0, &qword_2388DC158);
  v26 = *(v7 + 72);
  v27 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v54 = swift_allocObject();
  v28 = v54 + v27;
  if ((v52 & 1) == 0)
  {
    sub_2388D21E8();
    v21 = 0;
  }

  v29 = *(v64 + 56);
  v30 = 1;
  v31 = v21;
  v32 = v61;
  v29(v28, v31, 1, v61);
  if ((v53 & 1) == 0)
  {
    sub_2388D21D8();
    v30 = 0;
  }

  v29(v28 + v26, v30, 1, v32);
  v33 = v62;
  sub_238827E14(v28, v62, &qword_27DF315E8, &unk_2388DC148);
  sub_238840FB4(v33, v10, &qword_27DF315E8, &unk_2388DC148);
  v34 = *(v64 + 48);
  v35 = (v64 + 32);
  v36 = v34(v10, 1, v32);
  v53 = v35;
  if (v36 == 1)
  {
    sub_238827E88(v10, &qword_27DF315E8, &unk_2388DC148);
    v37 = MEMORY[0x277D84F90];
    v38 = v32;
  }

  else
  {
    v52 = *v35;
    v52(v63, v10, v32);
    v37 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2388B7280(0, *(v37 + 2) + 1, 1, v37, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    v40 = *(v37 + 2);
    v39 = *(v37 + 3);
    if (v40 >= v39 >> 1)
    {
      v37 = sub_2388B7280((v39 > 1), v40 + 1, 1, v37, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    *(v37 + 2) = v40 + 1;
    v38 = v61;
    v52(&v37[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v40], v63, v61);
  }

  v41 = v28 + v26;
  v42 = v62;
  sub_238827E14(v41, v62, &qword_27DF315E8, &unk_2388DC148);
  sub_238840FB4(v42, v10, &qword_27DF315E8, &unk_2388DC148);
  if (v34(v10, 1, v38) == 1)
  {
    sub_238827E88(v10, &qword_27DF315E8, &unk_2388DC148);
  }

  else
  {
    v43 = *v53;
    (*v53)(v63, v10, v38);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2388B7280(0, *(v37 + 2) + 1, 1, v37, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    v45 = *(v37 + 2);
    v44 = *(v37 + 3);
    if (v45 >= v44 >> 1)
    {
      v37 = sub_2388B7280((v44 > 1), v45 + 1, 1, v37, &qword_27DF315F8, &unk_2388DC160, &qword_27DF315E0, &qword_2388DC140);
    }

    *(v37 + 2) = v45 + 1;
    v43(&v37[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v45], v63, v38);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v57;
  sub_2388D22A8();

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 2;
  v47 = v55;
  *(a5 + 32) = v56;
  *(a5 + 40) = v47;
  v48 = MEMORY[0x277D84F90];
  *(a5 + 48) = MEMORY[0x277D84F90];
  v49 = type metadata accessor for DynamicGenerationSchema(0);
  *(a5 + *(v49 + 32)) = v48;
  return (*(v59 + 32))(a5 + *(v49 + 28), v46, v60);
}

uint64_t DynamicGenerationSchema.Property.init(name:description:schema:isOptional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, void *a7@<X8>)
{
  v18[3] = a6;
  v19 = a3;
  v20 = a4;
  v11 = sub_2388D2248();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2388D2328();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = *(a5 + 48);
  v16 = type metadata accessor for DynamicGenerationSchema(0);
  a7[3] = *(a5 + *(v16 + 32));
  (*(v13 + 16))(v15, a5 + *(v16 + 28), v12);

  sub_2388D2238();
  type metadata accessor for DynamicGenerationSchema.Property(0);
  sub_2388D22B8();
  return sub_2388B7DA4(a5, type metadata accessor for DynamicGenerationSchema);
}

uint64_t DynamicGenerationSchema.Property.init(name:description:schema:optionality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v18[2] = a3;
  v18[3] = a4;
  v18[1] = a1;
  v11 = sub_2388D2248();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2388D2328();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = *(a5 + 48);
  v16 = type metadata accessor for DynamicGenerationSchema(0);
  a7[3] = *(a5 + *(v16 + 32));
  (*(v13 + 16))(v15, a5 + *(v16 + 28), v12);

  sub_2388D2238();
  type metadata accessor for DynamicGenerationSchema.Property(0);
  sub_2388D22B8();
  return sub_2388B7DA4(a5, type metadata accessor for DynamicGenerationSchema);
}

uint64_t sub_2388B2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v317 = a4;
  v324 = a2;
  v325 = a3;
  v334 = a1;
  v327 = a5;
  v5 = sub_2388D2088();
  v290 = *(v5 - 8);
  v291 = v5;
  MEMORY[0x28223BE20](v5);
  v287 = &v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_2388D1F98();
  v302 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v309 = &v281 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_2388D1FE8();
  v292 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v299 = &v281 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_2388D1F18();
  v298 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v301 = &v281 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D2168();
  v285 = *(v10 - 8);
  v286 = v10;
  MEMORY[0x28223BE20](v10);
  v284 = &v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2388D2138();
  v311 = *(v12 - 8);
  v312 = v12;
  MEMORY[0x28223BE20](v12);
  v310 = &v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for DynamicGenerationSchema(0);
  v315 = *(v323 - 8);
  v14 = MEMORY[0x28223BE20](v323);
  v282 = &v281 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v283 = (&v281 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v293 = &v281 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v318 = (&v281 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v296 = (&v281 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v289 = (&v281 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v295 = (&v281 - v27);
  MEMORY[0x28223BE20](v26);
  v307 = &v281 - v28;
  v29 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v322 = &v281 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v316 = &v281 - v32;
  v303 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v303);
  v306 = (&v281 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v305 = type metadata accessor for GenerationSchema(0);
  MEMORY[0x28223BE20](v305);
  v304 = &v281 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2388D20D8();
  v326 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v281 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2388D2108();
  v320 = *(v38 - 8);
  v321 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v281 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2388D2018();
  v314 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v281 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2388D2178();
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44);
  v319 = &v281 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v288 = &v281 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v294 = &v281 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = (&v281 - v52);
  v54 = *(v45 + 16);
  v55 = v334;
  v334 = v45 + 16;
  v313 = v54;
  v54(&v281 - v52, v55, v44);
  v56 = (*(v45 + 88))(v53, v44);
  if (v56 != *MEMORY[0x277D0DBF8])
  {
    if (v56 == *MEMORY[0x277D0DC00])
    {
      (*(v45 + 8))(v53, v44);
      return sub_2388AEF04(v327);
    }

    v70 = v44;
    if (v56 == *MEMORY[0x277D0DC08])
    {
      (*(v45 + 96))(v53, v44);
      v71 = swift_projectBox();
      v73 = v320;
      v72 = v321;
      (*(v320 + 16))(v40, v71, v321);
      v74 = sub_2388D2008();
      v76 = v75;
      v77 = MEMORY[0x23EE66380]();
      sub_2388B2394(v74, v76 & 1, v77, v78 & 1, v327);
      (*(v73 + 8))(v40, v72);
    }

    if (v56 == *MEMORY[0x277D0DBE8])
    {
      (*(v45 + 96))(v53, v44);
      v99 = swift_projectBox();
      v100 = v314;
      (*(v314 + 16))(v43, v99, v41);
      sub_2388D2008();
      v102 = v101;
      v103 = MEMORY[0x23EE66290]();
      sub_2388AF0DC(v102 & 1, v103, v104 & 1, v327);
      (*(v100 + 8))(v43, v41);
    }

    v106 = v45;
    if (v56 == *MEMORY[0x277D0DC10])
    {
      (*(v45 + 96))(v53, v44);
      v107 = swift_projectBox();
      v109 = v310;
      v108 = v311;
      v110 = v312;
      (*(v311 + 16))(v310, v107, v312);
      sub_2388D2118();
      sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_2388D3F70;
      *(v111 + 32) = sub_2388D2128();
      *(v111 + 40) = v112;
      v113 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
      v114 = v316;
      (*(*(v113 - 8) + 56))(v316, 1, 1, v113);
      sub_2388AF734(v111, v114, v327);

      sub_238827E88(v114, &qword_27DF2FA30, &qword_2388D44E0);
      (*(v108 + 8))(v109, v110);
    }

    if (v56 == *MEMORY[0x277D0DBD8])
    {
      (*(v45 + 96))(v53, v44);
      v321 = *v53;
      v133 = swift_projectBox();
      v134 = v302;
      v136 = v308;
      v135 = v309;
      (*(v302 + 16))(v309, v133, v308);
      v137 = sub_2388D1F88();
      v139 = v325;
      if (!v138)
      {
        v182 = sub_2388D2FF8();
        swift_allocError();
        v184 = v183;
        v185 = sub_238810E44(&qword_27DF315D0, &unk_2388DC640);
        v184[3] = &type metadata for DynamicGenerationSchema.JSONKey;
        v184[4] = sub_238841320(v185, v186, v187);
        v188 = swift_allocObject();
        *v184 = v188;
        *(v188 + 16) = 0x656C746974;
        *(v188 + 24) = 0xE500000000000000;
        *(v188 + 32) = 0;
        *(v188 + 40) = 1;
        sub_238834238(v324);
        sub_2388D2FD8();
        (*(*(v182 - 8) + 104))(v184, *MEMORY[0x277D84158], v182);
        swift_willThrow();
        (*(v134 + 8))(v135, v136);
      }

      v140 = v137;
      v61 = v138;
      swift_beginAccess();
      v141 = *(v139 + 16);

      v142 = sub_2388B0B78(v140, v61, v141);

      if (v142)
      {
        sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_2388D3F70;
        *(v66 + 32) = v140;
        *(v66 + 40) = v61;
        v67 = v323;

        v68 = v327;
        sub_2388D2318();
        (*(v134 + 8))(v309, v308);

        *v68 = 0;
        v68[1] = 0;
        v68[2] = 0;
        *(v68 + 24) = 2;
        v68[4] = v140;
        goto LABEL_5;
      }

      swift_beginAccess();

      sub_2388BA540(v331, v140, v61);
      swift_endAccess();

      v320 = sub_2388D1F78();
      v190 = v189;
      v160 = MEMORY[0x23EE661F0]();
      v191 = *(v160 + 16);
      if (!v191)
      {

        v162 = MEMORY[0x277D84F90];
        v193 = v324;
LABEL_70:
        v234 = v296;
        DynamicGenerationSchema.init(name:description:anyOf:)(v140, v61, v320, v190, v162, v296);
        v235 = v328;
        v236 = v325;
        v237 = v317;
        v238 = v309;
        if (*(v193 + 16))
        {
          sub_2388B7D3C(v234, v293, type metadata accessor for DynamicGenerationSchema);
          swift_beginAccess();
          v239 = *(v237 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v237 + 16) = v239;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v239 = sub_2388B6F7C(0, v239[2] + 1, 1, v239, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
            *(v237 + 16) = v239;
          }

          v242 = v239[2];
          v241 = v239[3];
          if (v242 >= v241 >> 1)
          {
            v239 = sub_2388B6F7C((v241 > 1), v242 + 1, 1, v239, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
          }

          v239[2] = v242 + 1;
          sub_2388B7BF0(v293, v239 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v242);
          *(v237 + 16) = v239;
          swift_endAccess();
          v193 = v324;
          v234 = v296;
        }

        v243 = sub_2388D1F68();
        if (v243)
        {
          sub_2388B57BC(v243, v193, v236, v237);
          if (v235)
          {

            sub_2388B7DA4(v234, type metadata accessor for DynamicGenerationSchema);
            (*(v302 + 8))(v238, v308);
          }
        }

        (*(v302 + 8))(v238, v308);
        sub_2388B7BF0(v234, v327);
      }

      v314 = v190;
      v312 = v140;
      v316 = v61;
      v329 = MEMORY[0x277D84F90];
      v322 = v191;
      sub_2388B7CD8(0, v191, 0);
      v192 = 0;
      v162 = v329;
      v323 = v160 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v193 = v324;
      v326 = *(v324 + 16);
      v161 = v45 + 8;
      while (v192 < *(v160 + 16))
      {
        v313(v319, v323 + *(v45 + 72) * v192, v70);

        v194 = swift_isUniquelyReferenced_nonNull_native();
        if (!v194 || (v195 = *(v193 + 24) >> 1, v61 = v193, v195 <= v326))
        {
          v61 = sub_2388B7900(v194, v326 + 1, 1, v193);
          v195 = *(v61 + 3) >> 1;
        }

        if (v195 <= *(v61 + 2))
        {
          goto LABEL_104;
        }

        swift_arrayInitWithCopy();
        ++*(v61 + 2);
        v196 = v319;
        v197 = v328;
        sub_2388B2F10(v319, v61, v325, v317, v318);
        v328 = v197;
        if (v197)
        {

          (*v161)(v196, v70);
          (*(v302 + 8))(v309, v308);
        }

        (*v161)(v196, v70);

        v329 = v162;
        v199 = v162[2];
        v198 = v162[3];
        v61 = (v199 + 1);
        if (v199 >= v198 >> 1)
        {
          sub_2388B7CD8((v198 > 1), v199 + 1, 1);
          v162 = v329;
        }

        ++v192;
        v162[2] = v61;
        sub_2388B7BF0(v318, v162 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v199);
        v193 = v324;
        if (v322 == v192)
        {

          v61 = v316;
          v140 = v312;
          v190 = v314;
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v166 = v325;
    if (v56 == *MEMORY[0x277D0DBD0])
    {
      (*(v45 + 96))(v53, v44);
      v167 = *v53;
      v168 = swift_projectBox();
      v169 = v298;
      v170 = v300;
      v171 = (*(v298 + 16))(v301, v168, v300);
      v172 = MEMORY[0x23EE66190](v171);
      v173 = v328;
      if (v172)
      {
        sub_2388B57BC(v172, v324, v166, v317);
        v174 = v173;
        if (v173)
        {

          (*(v169 + 8))(v301, v170);
        }

        v215 = v166;
        v334 = v167;
      }

      else
      {
        v215 = v166;
        v334 = v167;
        v174 = v328;
      }

      v226 = v294;
      MEMORY[0x23EE661A0](v172);
      v332 = v324;

      sub_23881FE00(&unk_284B3B3F8);
      v227 = v295;
      sub_2388B2F10(v226, v332, v215, v317, v295);
      v328 = v174;
      if (v174)
      {

        (*(v106 + 8))(v226, v44);
        (*(v169 + 8))(v301, v300);
      }

      (*(v106 + 8))(v226, v44);

      v332 = 0x3A676E697274535BLL;
      v333 = 0xE900000000000020;
      MEMORY[0x23EE66C20](v227[4], v227[5]);
      MEMORY[0x23EE66C20](93, 0xE100000000000000);
      v228 = v332;
      v229 = v333;
      v230 = v227[6];
      v231 = v323;
      v232 = *(v227 + *(v323 + 32));

      v233 = v327;
      sub_2388D2298();
      (*(v169 + 8))(v301, v300);
      sub_2388B7DA4(v227, type metadata accessor for DynamicGenerationSchema);

      *v233 = 0;
      v233[1] = 0;
      v233[2] = 0;
      *(v233 + 24) = 2;
      v233[4] = v228;
      v233[5] = v229;
      v233[6] = v230;
      *(v233 + *(v231 + 32)) = v232;
      return result;
    }

    v175 = v328;
    if (v56 == *MEMORY[0x277D0DBE0])
    {
      (*(v45 + 96))(v53, v70);
      v176 = *v53;
      v177 = swift_projectBox();
      v178 = v292;
      v179 = v297;
      v180 = (*(v292 + 16))(v299, v177, v297);
      v181 = MEMORY[0x23EE66240](v180);
      if (v181)
      {
        sub_2388B57BC(v181, v324, v166, v317);
        if (v175)
        {

          (*(v178 + 8))(v299, v179);
        }

        v334 = v176;
      }

      else
      {
        v334 = v176;
      }

      v247 = v288;
      MEMORY[0x23EE66250](v181);
      v332 = v324;

      sub_23881FE00(&unk_284B3B438);
      v248 = v289;
      sub_2388B2F10(v247, v332, v166, v317, v289);
      if (v175)
      {

        (*(v106 + 8))(v247, v70);
        (*(v178 + 8))(v299, v297);
      }

      (*(v106 + 8))(v247, v70);

      v250 = v299;
      v326 = MEMORY[0x23EE66270](v249);
      LODWORD(v325) = v251;
      v324 = sub_2388D1FC8();
      v332 = 0x3C7961727241;
      v333 = 0xE600000000000000;
      MEMORY[0x23EE66C20](v248[4], v248[5]);
      MEMORY[0x23EE66C20](62, 0xE100000000000000);
      v328 = 0;
      v321 = v333;
      v322 = v332;
      v252 = v248[6];
      v253 = v323;
      v254 = *(v248 + *(v323 + 32));

      v255 = v327;
      sub_2388D22F8();
      (*(v178 + 8))(v250, v297);
      sub_2388B7DA4(v248, type metadata accessor for DynamicGenerationSchema);

      *v255 = 0;
      v255[1] = 0;
      v255[2] = 0;
      *(v255 + 24) = 2;
      v256 = v321;
      v255[4] = v322;
      v255[5] = v256;
      v255[6] = v252;
      *(v255 + *(v253 + 32)) = v254;
      return result;
    }

    if (v56 != *MEMORY[0x277D0DBF0])
    {
      if (v56 == *MEMORY[0x277D0DC18])
      {
        (*(v45 + 96))(v53, v70);
        v334 = *v53;
        v216 = swift_projectBox();
        v217 = v284;
        v218 = v285;
        v219 = v286;
        (*(v285 + 16))(v284, v216, v286);
        v220 = sub_2388D2158();
        v222 = v221;
        sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
        v223 = swift_allocObject();
        *(v223 + 16) = xmmword_2388D3F70;
        *(v223 + 32) = v220;
        *(v223 + 40) = v222;
        v224 = v323;

        v225 = v327;
        sub_2388D2318();
        (*(v218 + 8))(v217, v219);

        *v225 = 0;
        v225[1] = 0;
        v225[2] = 0;
        *(v225 + 24) = 2;
        v225[4] = v220;
        v225[5] = v222;
        v225[6] = v223;
        *(v225 + *(v224 + 32)) = MEMORY[0x277D84F90];
      }

      else
      {
        v244 = sub_2388D2FF8();
        swift_allocError();
        v246 = v245;
        sub_238834238(v324);
        sub_2388D2FD8();
        (*(*(v244 - 8) + 104))(v246, *MEMORY[0x277D84168], v244);
        swift_willThrow();
        return (*(v45 + 8))(v53, v70);
      }

      return result;
    }

    (*(v45 + 96))(v53, v70);
    v200 = *v53;
    v201 = swift_projectBox();
    v203 = v290;
    v202 = v291;
    v204 = v287;
    (*(v290 + 16))(v287, v201, v291);
    v205 = sub_2388D2068();
    if (!v206)
    {
      v257 = sub_2388D2FF8();
      swift_allocError();
      v259 = v258;
      v260 = sub_238810E44(&qword_27DF315D0, &unk_2388DC640);
      v259[3] = &type metadata for DynamicGenerationSchema.JSONKey;
      v259[4] = sub_238841320(v260, v261, v262);
      v263 = swift_allocObject();
      *v259 = v263;
      *(v263 + 16) = 0x656C746974;
      *(v263 + 24) = 0xE500000000000000;
      *(v263 + 32) = 0;
      *(v263 + 40) = 1;
      sub_238834238(v324);
      sub_2388D2FD8();
      (*(*(v257 - 8) + 104))(v259, *MEMORY[0x277D84158], v257);
      swift_willThrow();
      (*(v203 + 8))(v204, v202);
    }

    v207 = v205;
    v208 = v206;
    v334 = v200;
    swift_beginAccess();
    v209 = *(v166 + 16);

    v210 = sub_2388B0B78(v207, v208, v209);

    if (v210)
    {
      sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
      v211 = swift_allocObject();
      *(v211 + 16) = xmmword_2388D3F70;
      *(v211 + 32) = v207;
      *(v211 + 40) = v208;
      v212 = v204;
      v213 = v323;

      v214 = v327;
      sub_2388D2318();
      *v214 = 0;
      v214[1] = 0;
      v214[2] = 0;
      *(v214 + 24) = 2;
      v214[4] = v207;
      v214[5] = v208;
      v214[6] = v211;
      *(v214 + *(v213 + 32)) = MEMORY[0x277D84F90];
      (*(v203 + 8))(v212, v202);
    }

    swift_beginAccess();

    sub_2388BA540(v331, v207, v208);
    swift_endAccess();

    v264 = sub_2388D2058();
    v265 = v166;
    MEMORY[0x28223BE20](v264);
    v266 = v324;
    *(&v281 - 4) = v204;
    *(&v281 - 3) = v266;
    *(&v281 - 2) = v166;
    v267 = v317;
    *(&v281 - 1) = v317;
    v268 = v328;
    v269 = sub_238897DD4(sub_2388BB098, (&v281 - 6), v264);
    v328 = v268;
    if (v268)
    {

      (*(v290 + 8))(v204, v291);
    }

    v326 = v269;

    v270 = sub_2388D2048();
    DynamicGenerationSchema.init(name:description:properties:)(v208, v270, v271, v326, v283);
    if (*(v266 + 16))
    {
      v272 = v282;
      sub_2388B7D3C(v283, v282, type metadata accessor for DynamicGenerationSchema);
      swift_beginAccess();
      v273 = *(v267 + 16);
      v274 = swift_isUniquelyReferenced_nonNull_native();
      *(v267 + 16) = v273;
      if ((v274 & 1) == 0)
      {
        v273 = sub_2388B6F7C(0, v273[2] + 1, 1, v273, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
        *(v267 + 16) = v273;
      }

      v276 = v273[2];
      v275 = v273[3];
      if (v276 >= v275 >> 1)
      {
        v273 = sub_2388B6F7C((v275 > 1), v276 + 1, 1, v273, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
      }

      v273[2] = v276 + 1;
      sub_2388B7BF0(v272, v273 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v276);
      *(v267 + 16) = v273;
      swift_endAccess();
      v266 = v324;
    }

    v277 = sub_2388D2038();
    if (v277)
    {
      v278 = v328;
      sub_2388B57BC(v277, v266, v265, v267);
      v328 = v278;
      v280 = v290;
      v279 = v291;
      if (v278)
      {

        sub_2388B7DA4(v283, type metadata accessor for DynamicGenerationSchema);
LABEL_102:
        (*(v280 + 8))(v287, v279);
      }
    }

    else
    {
      v280 = v290;
      v279 = v291;
    }

    sub_2388B7BF0(v283, v327);
    goto LABEL_102;
  }

  (*(v45 + 96))(v53, v44);
  v334 = *v53;
  v57 = swift_projectBox();
  v58 = v326;
  (*(v326 + 16))(v37, v57, v35);
  v59 = sub_2388D20B8();
  if (!v60)
  {
    v79 = sub_2388D2098();
    v80 = MEMORY[0x23EE66340](v79);
    sub_2388D20C8();
    v81 = v37;
    if (v82)
    {

      v83 = v322;
      v84 = v328;
      sub_2388D1D08();
      if (v84)
      {

LABEL_25:
        (*(v58 + 8))(v81, v35);
      }

      v105 = 0;
    }

    else
    {
      v105 = 1;
      v83 = v322;
    }

    v124 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
    (*(*(v124 - 8) + 56))(v83, v105, 1, v124);
    sub_2388AF734(v80, v83, v327);

    sub_238827E88(v83, &qword_27DF2FA30, &qword_2388D44E0);
    goto LABEL_25;
  }

  v45 = v59;
  v61 = v60;
  v322 = v37;
  v62 = v325;
  swift_beginAccess();
  v63 = *(v62 + 16);

  v64 = sub_2388B0B78(v45, v61, v63);

  if (v64)
  {
    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_2388D3F70;
    *(v66 + 32) = v45;
    *(v66 + 40) = v61;
    v67 = v323;

    v68 = v327;
    sub_2388D2318();
    (*(v58 + 8))(v322, v35);

    *v68 = 0;
    v68[1] = 0;
    v68[2] = 0;
    *(v68 + 24) = 2;
    v68[4] = v45;
LABEL_5:
    v68[5] = v61;
    v68[6] = v66;
    *(v68 + *(v67 + 32)) = MEMORY[0x277D84F90];
    return result;
  }

  v85 = v322;
  v86 = MEMORY[0x23EE66340](v65);
  if (!v86)
  {

    v115 = sub_2388D2FF8();
    swift_allocError();
    v117 = v116;
    v118 = sub_238834238(v324);
    sub_238810E44(&qword_27DF315D8, qword_2388DD310);
    v119 = v35;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D3F70;
    *(inited + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
    *(inited + 64) = sub_238841320(inited, v121, v122);
    v123 = swift_allocObject();
    *(inited + 32) = v123;
    *(v123 + 16) = 1836412517;
    *(v123 + 24) = 0xE400000000000000;
    *(v123 + 32) = 0;
    *(v123 + 40) = 1;
    v329 = v118;
    sub_23881FEF4(inited);
    sub_2388D2FD8();
    (*(*(v115 - 8) + 104))(v117, *MEMORY[0x277D84168], v115);
    swift_willThrow();
    (*(v58 + 8))(v85, v119);
  }

  v321 = v35;
  v87 = *(v86 + 16);
  if (v87)
  {
    v320 = v86;
    v88 = v322;
    v89 = sub_2388D20C8();
    if (v90)
    {

      v91 = sub_2388D2FF8();
      swift_allocError();
      v93 = v92;
      v94 = sub_238834238(v324);
      sub_238810E44(&qword_27DF315D8, qword_2388DD310);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_2388D3F70;
      *(v95 + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
      *(v95 + 64) = sub_238841320(v95, v96, v97);
      v98 = swift_allocObject();
      *(v95 + 32) = v98;
      *(v98 + 16) = 0x6E726574746170;
      *(v98 + 24) = 0xE700000000000000;
      *(v98 + 32) = 0;
      *(v98 + 40) = 1;
      v329 = v94;
      sub_23881FEF4(v95);
      v329 = 0;
      v330 = 0xE000000000000000;
      sub_2388D2FA8();

      v329 = 0xD00000000000001FLL;
      v330 = 0x80000002388DF9F0;
      MEMORY[0x23EE66C20](v45, v61);

      sub_2388D2FD8();
      (*(*(v91 - 8) + 104))(v93, *MEMORY[0x277D84168], v91);
      swift_willThrow();
      (*(v326 + 8))(v88, v321);
    }

    v143 = v89;
    v324 = sub_2388D2098();
    v319 = v144;
    v145 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    v146 = v306;
    v147 = v306 + *(v145 + 64);
    *v306 = v143;
    v146[1] = 0;
    v146[2] = v143;
    v146[3] = 0;
    v148 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
    v149 = *(*(v148 - 8) + 56);
    v149(v316, 1, 1, v148);
    v150 = type metadata accessor for StringGuides(0);
    v318 = v87;
    v151 = *(v150 + 20);
    v149(&v147[v151], 1, 1, v148);
    *v147 = 0;

    sub_2388150EC(v316, &v147[v151]);
    swift_storeEnumTagMultiPayload();
    v152 = v304;
    sub_2388B7D3C(v146, v304, type metadata accessor for GenerationSchema.Kind);
    v329 = MEMORY[0x277D837D0];
    sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
    v153 = sub_2388D28B8();
    v155 = v154;
    sub_2388B7DA4(v146, type metadata accessor for GenerationSchema.Kind);
    v156 = (v152 + *(v305 + 20));
    *v156 = v153;
    v156[1] = v155;

    sub_2388B7DA4(v152, type metadata accessor for GenerationSchema);
    v157 = v323;
    v158 = v327;
    sub_2388D22E8();

    *v158 = v45;
    v158[1] = v61;
    v158[2] = v318;
    *(v158 + 24) = 1;
    v158[4] = v153;
    v158[5] = v155;
    v159 = MEMORY[0x277D84F90];
    v158[6] = MEMORY[0x277D84F90];
    *(v158 + *(v157 + 32)) = v159;
    v160 = v307;
    sub_2388B7D3C(v158, v307, type metadata accessor for DynamicGenerationSchema);
    v161 = v317;
    swift_beginAccess();
    v162 = *(v161 + 16);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    *(v161 + 16) = v162;
    if (v163)
    {
LABEL_33:
      v165 = v162[2];
      v164 = v162[3];
      if (v165 >= v164 >> 1)
      {
        v162 = sub_2388B6F7C((v164 > 1), v165 + 1, 1, v162, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
      }

      v162[2] = v165 + 1;
      sub_2388B7BF0(v160, v162 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v165);
      *(v161 + 16) = v162;
      swift_endAccess();
      swift_beginAccess();
      sub_2388BA540(v331, v45, v61);
      swift_endAccess();

      (*(v326 + 8))(v322, v321);
    }

LABEL_105:
    v162 = sub_2388B6F7C(0, v162[2] + 1, 1, v162, &qword_27DF2FAB0, &qword_2388DC290, type metadata accessor for DynamicGenerationSchema);
    *(v161 + 16) = v162;
    goto LABEL_33;
  }

  v125 = sub_2388D2FF8();
  swift_allocError();
  v127 = v126;
  v128 = sub_238834238(v324);
  sub_238810E44(&qword_27DF315D8, qword_2388DD310);
  v129 = swift_initStackObject();
  *(v129 + 16) = xmmword_2388D3F70;
  *(v129 + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
  *(v129 + 64) = sub_238841320(v129, v130, v131);
  v132 = swift_allocObject();
  *(v129 + 32) = v132;
  *(v132 + 16) = 1836412517;
  *(v132 + 24) = 0xE400000000000000;
  *(v132 + 32) = 0;
  *(v132 + 40) = 1;
  v329 = v128;
  sub_23881FEF4(v129);
  sub_2388D2FD8();
  (*(*(v125 - 8) + 104))(v127, *MEMORY[0x277D84168], v125);
  swift_willThrow();
  (*(v58 + 8))(v322, v321);
}

uint64_t sub_2388B57BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = a4;
  v66 = a3;
  v69 = a2;
  v7 = type metadata accessor for DynamicGenerationSchema(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D2178();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v58 - v14;
  v15 = sub_238810E44(&qword_27DF31608, &qword_2388DC178);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v71 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v70 = &v58 - v18;
  v19 = *(a1 + 64);
  v59 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v58 = (v20 + 63) >> 6;
  v61 = v11 + 16;
  v73 = (v11 + 32);
  v63 = v11;
  v65 = (v11 + 8);
  v64 = a1;

  v24 = 0;
  v68 = xmmword_2388D6660;
  v75 = v10;
  v60 = v9;
  if (v22)
  {
    while (1)
    {
      v72 = v5;
      v25 = v24;
LABEL_13:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v25 << 6);
      v30 = (*(v64 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = v63;
      v34 = v62;
      (*(v63 + 16))(v62, *(v64 + 56) + *(v63 + 72) * v29, v10);
      v35 = sub_238810E44(&qword_27DF31610, &qword_2388DC180);
      v36 = *(v35 + 48);
      v37 = v71;
      *v71 = v31;
      v37[1] = v32;
      v27 = v37;
      (*(v33 + 32))(v37 + v36, v34, v10);
      (*(*(v35 - 8) + 56))(v27, 0, 1, v35);

      v74 = v25;
      v5 = v72;
      v9 = v60;
LABEL_14:
      v38 = v27;
      v39 = v70;
      sub_238840FB4(v38, v70, &qword_27DF31608, &qword_2388DC178);
      v40 = sub_238810E44(&qword_27DF31610, &qword_2388DC180);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {
      }

      v41 = v5;
      v42 = v39;
      v43 = *v39;
      v44 = *(v42 + 1);
      (*v73)(v76, &v42[*(v40 + 48)], v75);
      sub_238810E44(&qword_27DF31600, &qword_2388DC170);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      *(inited + 32) = 0x7366656424;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = 0;
      *(inited + 56) = 1;
      *(inited + 64) = v43;
      *(inited + 72) = v44;
      *(inited + 80) = 0;
      *(inited + 88) = 1;
      result = v69;
      v46 = *(v69 + 16);
      v47 = v46 + 2;
      if (__OFADD__(v46, 2))
      {
        goto LABEL_31;
      }

      v48 = v9;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v50 = *(v49 + 24) >> 1, v51 = v49, v50 < v47))
      {
        if (v46 <= v47)
        {
          v52 = v46 + 2;
        }

        else
        {
          v52 = v46;
        }

        result = sub_2388B7900(result, v52, 1, v49);
        v51 = result;
        v50 = *(result + 24) >> 1;
      }

      if (v50 - *(v51 + 16) < 2)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      v53 = *(v51 + 16);
      v54 = __OFADD__(v53, 2);
      v55 = v53 + 2;
      if (v54)
      {
        goto LABEL_33;
      }

      *(v51 + 16) = v55;
      v9 = v48;
      v56 = v76;
      sub_2388B2F10(v76, v51, v66, v67, v48);
      v5 = v41;
      if (v41)
      {
        (*v65)(v56, v75);
      }

      sub_2388B7DA4(v48, type metadata accessor for DynamicGenerationSchema);
      v10 = v75;
      result = (*v65)(v56, v75);
      v24 = v74;
      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v58 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v58;
    }

    v27 = v71;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v58)
      {
        v74 = v26 - 1;
        v57 = sub_238810E44(&qword_27DF31610, &qword_2388DC180);
        (*(*(v57 - 8) + 56))(v27, 1, 1, v57);
        v22 = 0;
        goto LABEL_14;
      }

      v22 = *(v59 + 8 * v25);
      ++v24;
      if (v22)
      {
        v72 = v5;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_2388B5E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v64 = a6;
  v61 = a5;
  v60 = a4;
  v67 = a3;
  v59 = a7;
  v9 = sub_2388D2248();
  MEMORY[0x28223BE20](v9 - 8);
  v58 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2388D2328();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DynamicGenerationSchema(0);
  v12 = MEMORY[0x28223BE20](v53);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = (v52 - v15);
  v16 = sub_2388D2178();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v52 - v22;
  v25 = *a1;
  v24 = a1[1];
  v54 = a2;
  v26 = MEMORY[0x23EE662C0](v21);
  if (*(v26 + 16) && (v27 = sub_238820AA8(v25, v24), (v28 & 1) != 0))
  {
    (*(v17 + 16))(v20, *(v26 + 56) + *(v17 + 72) * v27, v16);

    (*(v17 + 32))(v23, v20, v16);
    sub_238810E44(&qword_27DF31600, &qword_2388DC170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2388D6660;
    *(inited + 32) = 0x69747265706F7270;
    *(inited + 40) = 0xEA00000000007365;
    *(inited + 48) = 0;
    *(inited + 56) = 1;
    *(inited + 64) = v25;
    *(inited + 72) = v24;
    *(inited + 80) = 0;
    *(inited + 88) = 1;
    v65 = v67;

    sub_23881FE00(inited);
    v30 = v63;
    v31 = v62;
    sub_2388B2F10(v23, v65, v60, v61, v63);
    v32 = v31;
    if (!v31)
    {

      v67 = sub_2388D1F28();
      v64 = v47;
      sub_2388B7D3C(v30, v14, type metadata accessor for DynamicGenerationSchema);
      v48 = sub_2388D2078();
      v60 = v52;
      v49 = v25;
      v65 = v25;
      v66 = v24;
      v52[1] = v25;
      MEMORY[0x28223BE20](v48);
      v52[-2] = &v65;
      LODWORD(v61) = sub_23884235C(sub_2388BCB68, &v52[-4], v48);
      v62 = 0;

      v50 = v59;
      *v59 = v49;
      v50[1] = v24;
      v50[2] = *(v14 + 6);
      v51 = v53;
      v50[3] = *&v14[*(v53 + 32)];
      (*(v55 + 16))(v57, &v14[*(v51 + 28)], v56);

      sub_2388D2238();
      type metadata accessor for DynamicGenerationSchema.Property(0);
      sub_2388D22B8();
      sub_2388B7DA4(v14, type metadata accessor for DynamicGenerationSchema);
      sub_2388B7DA4(v63, type metadata accessor for DynamicGenerationSchema);
      return (*(v17 + 8))(v23, v16);
    }

    (*(v17 + 8))(v23, v16);
  }

  else
  {

    v34 = sub_2388D2FF8();
    v63 = swift_allocError();
    v36 = v35;
    v37 = sub_238810E44(&qword_27DF315D0, &unk_2388DC640);
    v62 = *(v37 + 48);
    v36[3] = &type metadata for DynamicGenerationSchema.JSONKey;
    v40 = sub_238841320(v37, v38, v39);
    v36[4] = v40;
    v41 = swift_allocObject();
    *v36 = v41;
    v42 = v25;
    *(v41 + 16) = v25;
    *(v41 + 24) = v24;
    *(v41 + 32) = 0;
    *(v41 + 40) = 1;

    v43 = sub_238834238(v67);
    sub_238810E44(&qword_27DF315D8, qword_2388DD310);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_2388D3F70;
    *(v44 + 56) = &type metadata for DynamicGenerationSchema.JSONKey;
    *(v44 + 64) = v40;
    v45 = swift_allocObject();
    *(v44 + 32) = v45;
    *(v45 + 16) = 0x69747265706F7270;
    *(v45 + 24) = 0xEA00000000007365;
    *(v45 + 32) = 0;
    *(v45 + 40) = 1;
    v65 = v43;
    sub_23881FEF4(v44);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_2388D2FA8();

    v65 = 0xD000000000000013;
    v66 = 0x80000002388DFA10;
    MEMORY[0x23EE66C20](v42, v24);
    MEMORY[0x23EE66C20](39, 0xE100000000000000);
    sub_2388D2FD8();
    v46 = v36;
    v32 = v63;
    (*(*(v34 - 8) + 104))(v46, *MEMORY[0x277D84158], v34);
    result = swift_willThrow();
  }

  *v64 = v32;
  return result;
}

uint64_t sub_2388B65E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_2388B6604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2388D32F8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2388B6660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238841320(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2388B669C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238841320(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_2388B66F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31698, &unk_2388DC240);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF2FB78, &unk_2388D4980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B686C(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B6978(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF316F0, &qword_2388DC2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF316F8, &qword_2388DC2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B6AC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF316E0, &qword_2388DC2A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF316E8, &qword_2388DC2B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B6C08(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF316B0, &qword_2388DC260);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B6D14(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF316B8, &qword_2388DC268);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2388B6E18(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF316A8, &qword_2388DC258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2388B6F7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_238810E44(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2388B7158(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B7280(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_238810E44(a5, a6);
  v16 = *(sub_238810E44(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_238810E44(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2388B7544(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_238810E44(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2388B7660(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31650, &qword_2388DC1C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF31500, &qword_2388DC1D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B77B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_238810E44(&qword_27DF31668, &qword_2388DC1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(&qword_27DF314E8, &qword_2388DC200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2388B7900(char *result, int64_t a2, char a3, char *a4)
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
    sub_238810E44(&qword_27DF31600, &qword_2388DC170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2388B7A30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_238810E44(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_238810E44(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2388B7B78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2388B8D08(a1, a2, a3, *v3, &qword_27DF316A0, &qword_2388DC250, &type metadata for GeneratedJSON);
  *v3 = result;
  return result;
}

void *sub_2388B7BB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2388B8538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2388B7BD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2388B867C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2388B7BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicGenerationSchema(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2388B7C54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2388B8788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}