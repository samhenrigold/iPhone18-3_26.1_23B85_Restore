uint64_t sub_22B9DC3A4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9DC4D4, 0, 0);
  }
}

uint64_t sub_22B9DC4D4()
{
  v19 = v0;
  swift_unknownObjectRetain();
  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 40);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;
    sub_22B9358B4((v3 + 16), *(v3 + 40));
    v6 = sub_22B9B580C();
    v8 = sub_22B99153C(v6, v7, &v18);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;

    v10 = sub_22B9C3040(v9);
    v12 = v11;

    v13 = sub_22B99153C(v10, v12, &v18);

    *(v4 + 14) = v13;
    _os_log_impl(&dword_22B92A000, v1, v2, "Import Stragglers Step summary for job: %s, %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v5, -1, -1);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v15 = sub_22B9C3254(v14);

  v16 = *(v0 + 8);

  return v16(v15, 0);
}

uint64_t type metadata accessor for UnknownRecord(uint64_t a1)
{
  result = qword_281415C20;
  if (!qword_281415C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22B9DC72C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x614E64726F636572;
    v5 = 1684632935;
    if (a1 != 2)
    {
      v5 = 0x65636976726573;
    }

    if (a1)
    {
      v4 = 0x795464726F636572;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x615465676E616863;
    if (a1 != 4)
    {
      v2 = 0x656D614E656E6F7ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22B9DC858(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D59D8, &qword_22BA19AC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9DDA80();
  sub_22BA10D9C();
  v8[31] = 0;
  sub_22BA10B7C();
  if (!v1)
  {
    v8[30] = 1;
    sub_22BA10B7C();
    v8[29] = 2;
    sub_22BA10B7C();
    v8[28] = 3;
    sub_22BA10B7C();
    v8[27] = 4;
    sub_22BA10B7C();
    v8[26] = 5;
    sub_22BA10B7C();
    type metadata accessor for UnknownRecord(0);
    v8[25] = 6;
    sub_22BA0FD8C();
    sub_22B9DDB94(&qword_27D8D5058, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22BA10BAC();
    v8[24] = 7;
    sub_22BA10BAC();
    v8[15] = 8;
    sub_22BA10B7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22B9DCB58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - v7;
  v9 = sub_22B9349C8(&qword_27D8D59C8, &qword_22BA19AC0);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  v12 = type metadata accessor for UnknownRecord(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v48 = a1;
  sub_22B9358B4(a1, v15);
  sub_22B9DDA80();
  v16 = v47;
  sub_22BA10D8C();
  if (v16)
  {
    return sub_22B936C4C(v48);
  }

  v17 = v6;
  v18 = v45;
  v19 = v46;
  v47 = v14;
  v57 = 0;
  v20 = v11;
  v21 = sub_22BA10ACC();
  v23 = v47;
  *v47 = v21;
  v23[1] = v24;
  v56 = 1;
  v23[2] = sub_22BA10ACC();
  v23[3] = v25;
  v55 = 2;
  v23[4] = sub_22BA10ACC();
  v23[5] = v26;
  v54 = 3;
  v23[6] = sub_22BA10ACC();
  v23[7] = v27;
  v53 = 4;
  v23[8] = sub_22BA10ACC();
  v23[9] = v28;
  v52 = 5;
  v23[10] = sub_22BA10ACC();
  v23[11] = v29;
  sub_22BA0FD8C();
  v51 = 6;
  v41[1] = sub_22B9DDB94(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v42 = 0;
  sub_22BA10AFC();
  v43 = 0;
  v30 = v18;
  sub_22B935A74(v8, v23 + v12[10]);
  v50 = 7;
  v31 = v43;
  sub_22BA10AFC();
  v43 = v31;
  if (v31)
  {
    (*(v18 + 8))(v20, v19);
    v32 = 0;
    v33 = v47;
  }

  else
  {
    v33 = v47;
    sub_22B935A74(v17, v47 + v12[11]);
    v49 = 8;
    v34 = v43;
    v35 = sub_22BA10ACC();
    v43 = v34;
    if (!v34)
    {
      v38 = v35;
      v39 = v36;
      (*(v30 + 8))(v20, v19);
      v40 = (v33 + v12[12]);
      *v40 = v38;
      v40[1] = v39;
      sub_22B9DDAD4(v33, v44);
      sub_22B936C4C(v48);
      return sub_22B9DDB38(v33);
    }

    (*(v30 + 8))(v20, v19);
    v32 = 1;
  }

  v37 = v42;
  sub_22B936C4C(v48);

  if (!v37)
  {
  }

  result = sub_22B936BEC(v33 + v12[10], &unk_27D8D4A90, &qword_22BA126A0);
  if (v32)
  {
    return sub_22B936BEC(v33 + v12[11], &unk_27D8D4A90, &qword_22BA126A0);
  }

  return result;
}

uint64_t sub_22B9DD178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B9DDCF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B9DD1A0(uint64_t a1)
{
  v2 = sub_22B9DDA80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9DD1DC(uint64_t a1)
{
  v2 = sub_22B9DDA80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9DD218()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22B9DD248()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22B9DD2C8(uint64_t a1)
{
  *(a1 + 8) = sub_22B9DDB94(&qword_27D8D59A8, type metadata accessor for UnknownRecord, &unk_22BA19A38);
  result = sub_22B9DDB94(&qword_27D8D59B0, type metadata accessor for UnknownRecord, &unk_22BA19A10);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B9DD34C(void *a1, void *a2)
{
  v4 = sub_22BA0FD8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v56[-v12];
  v14 = sub_22B9349C8(&qword_27D8D59B8, &qword_22BA19AB8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56[-v19];
  v21 = a1[1];
  v22 = a2[1];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*a1 != *a2 || v21 != v22)
    {
      v23 = v18;
      v24 = sub_22BA10C6C();
      v18 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = a1[3];
  v26 = a2[3];
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v25 != v26)
    {
      v27 = v18;
      v28 = sub_22BA10C6C();
      v18 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v29 = a1[5];
  v30 = a2[5];
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v29 != v30)
    {
      v31 = v18;
      v32 = sub_22BA10C6C();
      v18 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v33 = a1[7];
  v34 = a2[7];
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v33 != v34)
    {
      v35 = v18;
      v36 = sub_22BA10C6C();
      v18 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  v37 = a1[9];
  v38 = a2[9];
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v37 != v38)
    {
      v39 = v18;
      v40 = sub_22BA10C6C();
      v18 = v39;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v38)
  {
    return 0;
  }

  v41 = a1[11];
  v42 = a2[11];
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    v62 = v18;
    if ((a1[10] != a2[10] || v41 != v42) && (sub_22BA10C6C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v62 = v18;
    if (v42)
    {
      return 0;
    }
  }

  v59 = type metadata accessor for UnknownRecord(0);
  v61 = v59[10];
  v43 = *(v62 + 48);
  sub_22B94498C(v61 + a1, v20);
  v60 = v43;
  sub_22B94498C(v61 + a2, &v43[v20]);
  v61 = *(v5 + 48);
  if (v61(v20, 1, v4) == 1)
  {
    if (v61(&v60[v20], 1, v4) == 1)
    {
      v58 = v5 + 48;
      sub_22B936BEC(v20, &unk_27D8D4A90, &qword_22BA126A0);
      goto LABEL_50;
    }

LABEL_48:
    v44 = v20;
LABEL_56:
    sub_22B936BEC(v44, &qword_27D8D59B8, &qword_22BA19AB8);
    return 0;
  }

  sub_22B94498C(v20, v13);
  if (v61(&v60[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_48;
  }

  v58 = v5 + 48;
  (*(v5 + 32))(v7, &v60[v20], v4);
  sub_22B9DDB94(&qword_27D8D59C0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v57 = sub_22BA0FFBC();
  v60 = *(v5 + 8);
  (v60)(v7, v4);
  (v60)(v13, v4);
  sub_22B936BEC(v20, &unk_27D8D4A90, &qword_22BA126A0);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v45 = v59[11];
  v46 = *(v62 + 48);
  sub_22B94498C(a1 + v45, v17);
  sub_22B94498C(a2 + v45, &v17[v46]);
  v47 = v61;
  if (v61(v17, 1, v4) != 1)
  {
    sub_22B94498C(v17, v11);
    if (v47(&v17[v46], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v17[v46], v4);
      sub_22B9DDB94(&qword_27D8D59C0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v49 = sub_22BA0FFBC();
      v50 = *(v5 + 8);
      v50(v7, v4);
      v50(v11, v4);
      sub_22B936BEC(v17, &unk_27D8D4A90, &qword_22BA126A0);
      if ((v49 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_60;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_55;
  }

  if (v47(&v17[v46], 1, v4) != 1)
  {
LABEL_55:
    v44 = v17;
    goto LABEL_56;
  }

  sub_22B936BEC(v17, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_60:
  v51 = v59[12];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (v55 && (*v52 == *v54 && v53 == v55 || (sub_22BA10C6C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v55)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_22B9DDA80()
{
  result = qword_27D8D59D0;
  if (!qword_27D8D59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59D0);
  }

  return result;
}

uint64_t sub_22B9DDAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9DDB38(uint64_t a1)
{
  v2 = type metadata accessor for UnknownRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9DDB94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B9DDBF0()
{
  result = qword_27D8D59E0;
  if (!qword_27D8D59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59E0);
  }

  return result;
}

unint64_t sub_22B9DDC48()
{
  result = qword_27D8D59E8;
  if (!qword_27D8D59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59E8);
  }

  return result;
}

unint64_t sub_22B9DDCA0()
{
  result = qword_27D8D59F0;
  if (!qword_27D8D59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D59F0);
  }

  return result;
}

uint64_t sub_22B9DDCF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795464726F636572 && a2 == 0xEA00000000006570 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x615465676E616863 && a2 == 0xE900000000000067 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000 || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BAE0 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1BB00 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22B9DDFF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4C5255656C6966;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xE900000000000065;
    if (a1 == 2)
    {
      v5 = 0x727574616E676973;
    }

    else
    {
      v5 = 1684632949;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 1702521203;
    }

    else
    {
      v5 = 0x4C5255656C6966;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x727574616E676973;
  v9 = 0xE900000000000065;
  if (a2 != 2)
  {
    v8 = 1684632949;
    v9 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22BA10C6C();
  }

  return v12 & 1;
}

uint64_t sub_22B9DE118(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE400000000000000;
    v11 = 0x615465676E616863;
    v12 = 0xE900000000000067;
    if (a1 != 2)
    {
      v11 = 0x614E64726F636572;
      v12 = 0xEA0000000000656DLL;
    }

    v13 = 6518387;
    if (a1)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v13 = 1684632935;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0x6E6F697461657263;
    v4 = 0xEC00000065746144;
    v5 = 0x800000022BA1BAE0;
    if (a1 != 7)
    {
      v5 = 0x800000022BA1BB00;
    }

    if (a1 != 6)
    {
      v3 = 0xD000000000000010;
      v4 = v5;
    }

    v6 = 0x795464726F636572;
    v7 = 0xEA00000000006570;
    if (a1 != 4)
    {
      v6 = 0x656D614E656E6F7ALL;
      v7 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE900000000000067;
        if (v8 != 0x615465676E616863)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEA0000000000656DLL;
        if (v8 != 0x614E64726F636572)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE300000000000000;
      if (v8 != 6518387)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v8 != 1684632935)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEA00000000006570;
      if (v8 != 0x795464726F636572)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE800000000000000;
      if (v8 != 0x656D614E656E6F7ALL)
      {
LABEL_52:
        v16 = sub_22BA10C6C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEC00000065746144;
    if (v8 != 0x6E6F697461657263)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v14 = "modificationDate";
    }

    else
    {
      v14 = "modifiedByDevice";
    }

    v15 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000010)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_22B9DE3E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000032;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000034;
  if (a1 == 2)
  {
    v5 = 0xE900000000000033;
  }

  else
  {
    v5 = 0xE900000000000034;
  }

  if (a1)
  {
    v3 = 0xE900000000000032;
  }

  if (a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 2)
  {
    v4 = 0xE900000000000033;
  }

  if (!a2)
  {
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B9DE4A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7265646E6573;
    }

    else
    {
      v4 = 1701669236;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6469754772;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1682531172;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x444974616863;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265646E6573;
    }

    else
    {
      v9 = 1701669236;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1682531172;
    if (a2 != 3)
    {
      v6 = 0x444974616863;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6469754772;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_22BA10C6C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_22B9DE600(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000022BA1B9F0;
    if (a1 == 1)
    {
      v5 = 0x72636E4574616863;
      v6 = 0xEF32766465747079;
    }

    if (a1)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0x800000022BA1B9C0;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = 0x556567617373656DLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 5)
    {
      v4 = 0xEF31566574616470;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 3)
  {
    v3 = 0x656D686361747461;
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000022BA1BA10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x72636E4574616863;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (a2 == 1)
      {
        v7 = 0xEF32766465747079;
      }

      else
      {
        v7 = 0x800000022BA1B9F0;
      }

      if (v3 != v8)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v9 = "chatLockRecordType";
    goto LABEL_39;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v7 = 0xEA0000000000746ELL;
      if (v3 != 0x656D686361747461)
      {
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v9 = "recoverableMessage";
LABEL_39:
    v7 = (v9 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (a2 == 5)
  {
    v7 = 0xEF31566574616470;
    if (v3 != 0x556567617373656DLL)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_44:
      v10 = sub_22BA10C6C();
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v4 != v7)
  {
    goto LABEL_44;
  }

  v10 = 1;
LABEL_45:

  return v10 & 1;
}

uint64_t sub_22B9DE858(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064756F6C4369;
  v3 = 0x6D6F724664616572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x646574726F706D69;
    }

    if (v4 == 2)
    {
      v6 = 0x800000022BA1C230;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x546E657474697277;
    }

    else
    {
      v5 = 0x6D6F724664616572;
    }

    if (v4)
    {
      v6 = 0xEF64756F6C43696FLL;
    }

    else
    {
      v6 = 0xEE0064756F6C4369;
    }
  }

  v7 = 0xD000000000000011;
  v8 = 0x800000022BA1C230;
  if (a2 != 2)
  {
    v7 = 0x646574726F706D69;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x546E657474697277;
    v2 = 0xEF64756F6C43696FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22BA10C6C();
  }

  return v11 & 1;
}

uint64_t sub_22B9DE9BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x7274656D656C6554;
    v12 = 0xE900000000000079;
    v13 = 0x6172745374736554;
    v14 = 0xEE007372656C6767;
    if (a1 != 8)
    {
      v13 = 1953719636;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x6C6E4F746E756F43;
    v16 = 0xE900000000000079;
    if (a1 != 5)
    {
      v15 = 0x74696E4972657355;
      v16 = 0xED00006465746169;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE800000000000000;
    v5 = 0x6369646F69726550;
    v6 = 0xE600000000000000;
    v7 = 0x70756B636142;
    if (a1 != 3)
    {
      v7 = 0xD000000000000017;
      v6 = 0x800000022BA1BD10;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6C6C69666B636142;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v8 = 0x6C616974696E49;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x6C6C69666B636142)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6C616974696E49)
        {
          goto LABEL_57;
        }
      }
    }

    else if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x6369646F69726550)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 3)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x70756B636142)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0x800000022BA1BD10;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_57;
      }
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v17 = 0xEE007372656C6767;
        if (v9 != 0x6172745374736554)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        if (v9 != 1953719636)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    v18 = 0x7274656D656C6554;
LABEL_46:
    v17 = 0xE900000000000079;
    if (v9 != v18)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 == 5)
  {
    v18 = 0x6C6E4F746E756F43;
    goto LABEL_46;
  }

  v17 = 0xED00006465746169;
  if (v9 != 0x74696E4972657355)
  {
LABEL_57:
    v19 = sub_22BA10C6C();
    goto LABEL_58;
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v19 = 1;
LABEL_58:

  return v19 & 1;
}

uint64_t sub_22B9DECE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000636E79;
  v3 = 0x536C616974696E69;
  if (a1 <= 3u)
  {
    v4 = 0x6369646F69726570;
    v5 = 0xEC000000636E7953;
    if (a1 != 2)
    {
      v4 = 0x795370756B636162;
      v5 = 0xEA0000000000636ELL;
    }

    v8 = 0x6C6C69666B636162;
    v9 = 0xEC000000636E7953;
    if (!a1)
    {
      v8 = 0x536C616974696E69;
      v9 = 0xEB00000000636E79;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x74696E4972657375;
    v5 = 0xED00006465746169;
    v6 = 0x7274656D656C6574;
    v7 = 0xE900000000000079;
    if (a1 != 7)
    {
      v6 = 0x7361685074736574;
      v7 = 0xE900000000000065;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD000000000000017;
    v9 = 0x800000022BA1BB80;
    if (a1 != 4)
    {
      v8 = 0x6C6E4F746E756F63;
      v9 = 0xED0000636E795379;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000022BA1BB80;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v14 = 0x6C6E4F746E756F63;
      v15 = 0x636E795379;
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v2 = 0xE900000000000079;
          if (v11 != 0x7274656D656C6574)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v3 = 0x7361685074736574;
        v2 = 0xE900000000000065;
        goto LABEL_40;
      }

      v14 = 0x74696E4972657375;
      v15 = 0x6465746169;
    }

    v2 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v2 = 0xEA0000000000636ELL;
      if (v11 != 0x795370756B636162)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v13 = 0x6369646F69726570;
    goto LABEL_31;
  }

  if (a2)
  {
    v13 = 0x6C6C69666B636162;
LABEL_31:
    v2 = 0xEC000000636E7953;
    if (v11 != v13)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v11 != v3)
  {
LABEL_45:
    v16 = sub_22BA10C6C();
    goto LABEL_46;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_22B9DEFE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x656D686361747461;
  v5 = 0xEB0000000073746ELL;
  v6 = 0xD000000000000013;
  v7 = 0x800000022BA1BBF0;
  if (a1 != 4)
  {
    v6 = 0x556567617373656DLL;
    v7 = 0xEE00736574616470;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x7374616863;
  if (a1 != 1)
  {
    v9 = 0x736567617373656DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x73736572676F7270;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEB0000000073746ELL;
      if (v10 != 0x656D686361747461)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x800000022BA1BBF0;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00736574616470;
      if (v10 != 0x556567617373656DLL)
      {
LABEL_34:
        v13 = sub_22BA10C6C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7374616863)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x736567617373656DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x73736572676F7270)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

id SyncResumer.init(delegate:syncStateManager:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___MCSSyncResumer_initialRestartDateKey];
  *v3 = 0xD000000000000014;
  *(v3 + 1) = 0x800000022BA1E5E0;
  *&v2[OBJC_IVAR___MCSSyncResumer_minTimeBetweenInitialRestarts] = 0x408C200000000000;
  v4 = &v2[OBJC_IVAR___MCSSyncResumer_backfillRestartDateKey];
  *v4 = 0xD000000000000012;
  *(v4 + 1) = 0x800000022BA1E600;
  *&v2[OBJC_IVAR___MCSSyncResumer_minTimeBetweenBackfillRestarts] = 0x40AC200000000000;
  *&v2[OBJC_IVAR___MCSSyncResumer_delegate] = a1;
  *&v2[OBJC_IVAR___MCSSyncResumer_syncStateManager] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SyncResumer();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_22B9DF490(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 57) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 56) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v8 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9DF554, v8, v7);
}

uint64_t sub_22B9DF554()
{
  v1 = *(v0 + 57);
  v2 = *(*(v0 + 40) + OBJC_IVAR___MCSSyncResumer_delegate);
  if (v1 > 8)
  {
    v3 = 99;
  }

  else
  {
    v3 = aXyzCcC_0[v1];
  }

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22B9E0EB0;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);

  return sub_22B9BDBA8(v2, v7, v5, v8, v6, v3, 1);
}

uint64_t sub_22B9DF640(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 56) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v7 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9DF700, v7, v6);
}

uint64_t sub_22B9DF700()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR___MCSSyncResumer_delegate);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_22B9DF7C8;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);

  return sub_22B9BDBA8(v1, v5, v3, v6, v4, 89, 1);
}

uint64_t sub_22B9DF7C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id SyncResumer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyncResumer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncResumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B9DFC08()
{
  if (qword_281414B60 != -1)
  {
    swift_once();
  }

  v0 = qword_28141ACE8;
  if ([qword_28141ACE8 valueForKey_])
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = v4;
      goto LABEL_11;
    }
  }

  else
  {
    sub_22B936BEC(&v7, &unk_27D8D5A30, qword_22BA13390);
  }

  v1 = 0;
LABEL_11:
  if ([v0 valueForKey_])
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      v2 = v4;
      goto LABEL_19;
    }
  }

  else
  {
    sub_22B936BEC(&v7, &unk_27D8D5A30, qword_22BA13390);
  }

  v2 = 0;
LABEL_19:
  if ([v0 valueForKey_])
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      if (((v4 | v2) & 1) == 0)
      {
        return v1;
      }

      return 1;
    }
  }

  else
  {
    sub_22B936BEC(&v7, &unk_27D8D5A30, qword_22BA13390);
  }

  if (v2)
  {
    return 1;
  }

  return v1;
}

BOOL sub_22B9DFE58(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42[-v7];
  v9 = sub_22BA0FD8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v42[-v17];
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v19 = qword_28141ACF0;
  v20 = sub_22BA0FFCC();
  v21 = [v19 valueForKey_];

  if (v21)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (!*(&v47 + 1))
  {
    sub_22B936BEC(v48, &unk_27D8D5A30, qword_22BA13390);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_19;
  }

  v22 = swift_dynamicCast();
  (*(v10 + 56))(v8, v22 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_19:
    sub_22B936BEC(v8, &unk_27D8D4A90, &qword_22BA126A0);
    return 1;
  }

  (*(v10 + 32))(v18, v8, v9);
  sub_22BA0FD7C();
  sub_22BA0FCCC();
  v24 = v23;
  sub_22BA0FCCC();
  v26 = v24 - v25;
  v45 = v26 >= a3;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v27 = sub_22BA0FEFC();
  sub_22B936CA8(v27, qword_28141AD40);
  (*(v10 + 16))(v13, v18, v9);

  v28 = sub_22BA0FEDC();
  v29 = sub_22BA1042C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v48[0] = v44;
    *v30 = 136315906;
    *(v30 + 4) = sub_22B99153C(a1, a2, v48);
    *(v30 + 12) = 2080;
    if (v26 < a3)
    {
      v31 = 28494;
    }

    else
    {
      v31 = 7562585;
    }

    v43 = v29;
    if (v26 < a3)
    {
      v32 = 0xE200000000000000;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = sub_22B99153C(v31, v32, v48);

    *(v30 + 14) = v33;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v26;
    *(v30 + 32) = 2080;
    sub_22B9E0E58();
    v34 = sub_22BA10C1C();
    v36 = v35;
    v37 = *(v10 + 8);
    v37(v13, v9);
    v38 = sub_22B99153C(v34, v36, v48);

    *(v30 + 34) = v38;
    _os_log_impl(&dword_22B92A000, v28, v43, "Will restart %s %s. Has been %f secs since last restart %s", v30, 0x2Au);
    v39 = v44;
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v39, -1, -1);
    MEMORY[0x23189ADD0](v30, -1, -1);

    v37(v16, v9);
    v37(v18, v9);
    return v45;
  }

  else
  {

    v41 = *(v10 + 8);
    v41(v13, v9);
    v41(v16, v9);
    v41(v18, v9);
    return v45;
  }
}

void sub_22B9E03CC(uint64_t a1, unint64_t a2)
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v4 = qword_28141ACF0;
  v5 = sub_22BA0FFCC();
  v6 = [v4 stringForKey_];

  if (v6)
  {
    v7 = sub_22BA0FFFC();
    v9 = v8;

    if ((v9 & 0x2000000000000000) == 0)
    {
      if ((v7 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  if ((v9 & 0xF00000000000000) == 0)
  {
LABEL_12:

    v9 = 0xE800000000000000;
    v7 = 0x6C6C69466B636142;
    goto LABEL_13;
  }

LABEL_9:
  if (v7 == 0x6369646F69726550 && v9 == 0xE800000000000000 || (sub_22BA10C6C() & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  type metadata accessor for SyncCoordinator();

  static SyncCoordinator.initiateSync(for:delegate:forceRunNow:)(v7, v9, 0, 0);

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v10 = sub_22BA0FEFC();
  sub_22B936CA8(v10, qword_28141AD40);

  oslog = sub_22BA0FEDC();
  v11 = sub_22BA1046C();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315650;

    v14 = sub_22B99153C(v7, v9, v20);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_22B99153C(a1, a2, v20);
    *(v12 + 22) = 2080;
    v15 = sub_22BA0FF7C();
    v17 = v16;

    v18 = sub_22B99153C(v15, v17, v20);

    *(v12 + 24) = v18;
    _os_log_impl(&dword_22B92A000, oslog, v11, "Resuming %s from key %s %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v13, -1, -1);
    MEMORY[0x23189ADD0](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22B9E095C(void *a1, const char *a2, void *a3)
{
  if (qword_281414B68 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v4 = qword_28141ACF0;
  v5 = *a1;
  result = [qword_28141ACF0 BOOLForKey_];
  if (result)
  {
    [v4 removeObjectForKey_];
    result = sub_22B92DA70(1, 0);
    if (result)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v7 = sub_22BA0FEFC();
      sub_22B936CA8(v7, qword_28141AD40);
      v8 = sub_22BA0FEDC();
      v9 = sub_22BA1046C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_22B92A000, v8, v9, a2, v10, 2u);
        MEMORY[0x23189ADD0](v10, -1, -1);
      }

      v11 = sub_22BA0FFFC();
      sub_22B9E03CC(v11, v12);
    }
  }

  return result;
}

unint64_t sub_22B9E0AFC()
{
  result = qword_281414B30;
  if (!qword_281414B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414B30);
  }

  return result;
}

uint64_t sub_22B9E0B64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B943E68;

  return sub_22B9DF640(a1, a2, a3, a4, v10);
}

uint64_t sub_22B9E0C28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B945AC8;

  return sub_22B9DF490(a1, a2, a3, a4, v10, v11);
}

unint64_t sub_22B9E0E58()
{
  result = qword_281416BF0;
  if (!qword_281416BF0)
  {
    sub_22BA0FD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416BF0);
  }

  return result;
}

uint64_t sub_22B9E0EBC(__int16 a1)
{
  v1 = HIBYTE(a1);
  BYTE8(v3) = 0;
  sub_22BA108FC();
  MEMORY[0x231899730](0x536B726F7774656ELL, 0xEF203D2065746174);
  sub_22BA10A2C();
  MEMORY[0x231899730](0x537265776F70202CLL, 0xEF203D2065746174);
  *&v3 = v1 & 1;
  sub_22BA10A2C();
  return *(&v3 + 1);
}

uint64_t sub_22B9E0FD8()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_22B9E0EBC(v1 | *v0);
}

uint64_t sub_22B9E0FF4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isDeviceOnWifi];
  v2 = [v0 isDeviceOnData];

  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 isDeviceCharging];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 256;
  }

  if (v1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3;
  }

  return v5 | v6;
}

uint64_t getEnumTagSinglePayload for DeviceState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B9E1228()
{
  result = qword_27D8D5AA0;
  if (!qword_27D8D5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AA0);
  }

  return result;
}

unint64_t sub_22B9E1280()
{
  result = qword_27D8D5AA8;
  if (!qword_27D8D5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AA8);
  }

  return result;
}

uint64_t sub_22B9E1370(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22BA0FEFC();
  sub_22B9C40C0(v3, a2);
  sub_22B936CA8(v3, a2);
  sub_22BA0FECC();
  return sub_22BA0FEEC();
}

unint64_t sub_22B9E13D8(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA153C0;
  result = *MEMORY[0x277D44030];
  if (!*MEMORY[0x277D44030])
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = sub_22BA0FFFC();
  v19 = MEMORY[0x277D849A8];
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  *(inited + 72) = v19;
  *(inited + 48) = a1;
  result = *MEMORY[0x277D44040];
  if (!*MEMORY[0x277D44040])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = sub_22BA0FFFC();
  v22 = MEMORY[0x277D83B88];
  *(inited + 80) = v21;
  *(inited + 88) = v23;
  *(inited + 120) = v22;
  *(inited + 96) = a2;
  result = *MEMORY[0x277D44080];
  if (!*MEMORY[0x277D44080])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 128) = sub_22BA0FFFC();
  *(inited + 136) = v24;
  *(inited + 168) = v22;
  *(inited + 144) = a3;
  result = *MEMORY[0x277D44010];
  if (!*MEMORY[0x277D44010])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 176) = sub_22BA0FFFC();
  *(inited + 184) = v25;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = a4 & 1;
  result = *MEMORY[0x277D44028];
  if (!*MEMORY[0x277D44028])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 224) = sub_22BA0FFFC();
  *(inited + 232) = v26;
  v27 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = a5;
  *(inited + 248) = a6;

  v28 = sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  swift_arrayDestroy();
  if (!a8)
  {
    return v28;
  }

  result = *MEMORY[0x277D44070];
  if (*MEMORY[0x277D44070])
  {
    v29 = sub_22BA0FFFC();
    v31 = v30;
    v35 = v27;
    *&v34 = a7;
    *(&v34 + 1) = a8;
    sub_22B936C98(&v34, v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64(v33, v29, v31, isUniquelyReferenced_nonNull_native);

    return v28;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_22B9E15F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22BA13410;
  result = *MEMORY[0x277D44090];
  if (*MEMORY[0x277D44090])
  {
    *(inited + 32) = sub_22BA0FFFC();
    *(inited + 40) = v10;
    v11 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    result = *MEMORY[0x277D44098];
    if (*MEMORY[0x277D44098])
    {
      *(inited + 80) = sub_22BA0FFFC();
      *(inited + 88) = v12;
      *(inited + 120) = v11;
      *(inited + 96) = a3;
      *(inited + 104) = a4;

      v13 = sub_22B9BBA8C(inited);
      swift_setDeallocating();
      sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
      swift_arrayDestroy();
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22B9E1700(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 associatedMessageGuid];
    [v4 setAssociatedMessageGUID_];

    v8 = [v6 associatedMessageType];
    [v4 setAssociatedMessageType_];
    v9 = [v6 associatedMessageRangeLocation];
    v10 = [v6 associatedMessageRangeLength];

    [v4 setAssociatedMessageRange_];
    if (a2)
    {
      v11 = a2;
      if ([v11 hasAssociatedMessageEmoji])
      {
        v12 = [v11 associatedMessageEmoji];
        if (v12)
        {
          v13 = v12;
          sub_22BA0FFFC();

          osloga = sub_22BA0FFCC();

          v14 = osloga;
LABEL_12:
          [v4 setAssociatedMessageEmoji_];
          goto LABEL_13;
        }
      }
    }

    v14 = 0;
    goto LABEL_12;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v17 = sub_22BA0FEFC();
  sub_22B936CA8(v17, qword_28141AD10);

  oslog = sub_22BA0FEDC();
  v18 = sub_22BA1044C();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22B99153C(a3, a4, &v23);
    _os_log_impl(&dword_22B92A000, oslog, v18, "No Proto for IMAssociatedMessageItem %s", v19, 0xCu);
    sub_22B936C4C(v20);
    MEMORY[0x23189ADD0](v20, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);
  }

LABEL_13:
}

void sub_22B9E199C(uint64_t a1)
{
  v2 = type metadata accessor for MessageRecord(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22B9E1B48();
  sub_22B936918(a1, v5);
  v6 = sub_22B96631C(v5);
  v7 = a1 + *(v3 + 144);
  v8 = *v7;
  if (*v7 != 1)
  {
    v10 = *(v7 + 8);
    v9 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = v6;
    sub_22B9E1B94(v8, v10, v9, v11);
    v13 = [v12 guid];
    if (v13)
    {
      v14 = v13;
      v15 = sub_22BA0FFFC();
      v17 = v16;

      sub_22B966A88(v8, v10, v9, v11, v15, v17);

      v18 = [v12 guid];

      if (v18)
      {
        v19 = sub_22BA0FFFC();
        v21 = v20;

        sub_22B9E1700(v8, v11, v19, v21);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_22B9E1B48()
{
  result = qword_27D8D5AB0;
  if (!qword_27D8D5AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8D5AB0);
  }

  return result;
}

id sub_22B9E1B94(id result, void *a2, void *a3, void *a4)
{
  if (result != 1)
  {
    v6 = result;
    v7 = a4;
    v8 = v6;
    v9 = a2;

    return a3;
  }

  return result;
}

uint64_t sub_22B9E1BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_22B9E1C94()
{
  result = qword_281414A18;
  if (!qword_281414A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A18);
  }

  return result;
}

void sub_22B9E1CEC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 data];
  if (v4)
  {
    v24 = v4;
    sub_22B99C3C8(a1);
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD10);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B92A000, v6, v7, "Unable to get domain model, returning .unknown", v8, 2u);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    v9 = [v2 recordName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22BA0FFFC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [v2 recordType];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22BA0FFFC();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 16) = v16;
    *(a1 + 24) = v18;
    v19 = type metadata accessor for UnknownRecord(0);
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    v20 = v19[10];
    v21 = sub_22BA0FD8C();
    v22 = *(*(v21 - 8) + 56);
    v22(a1 + v20, 1, 1, v21);
    v22(a1 + v19[11], 1, 1, v21);
    v23 = (a1 + v19[12]);
    type metadata accessor for DatabaseRecord(0);
    *v23 = 0;
    v23[1] = 0;

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t dispatch thunk of static IMDaemonCoreBridge.indexMessageGUIDs(_:lane:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B945AC8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of static IMDaemonCoreBridge.indexChatGUIDs(_:lane:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B943E68;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of static IMDaemonCoreBridge.syncReportDictionary(attemptCount:wasSuccessful:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v14 = (*(a4 + 312) + **(a4 + 312));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B9B1A0C;
  v12.n128_f64[0] = a5;

  return v14(a1, a2, a3, a4, v12);
}

unint64_t sub_22B9E2648()
{
  result = qword_27D8D5AB8;
  if (!qword_27D8D5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AB8);
  }

  return result;
}

unint64_t sub_22B9E269C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 == 5)
    {
      v7 = 0x656D686361747461;
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
    v1 = 0x61746F5474616863;
    v2 = 0x546567617373656DLL;
    v3 = 0x4C6567617373656DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6576694C74616863;
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

uint64_t sub_22B9E280C(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5AD0, &qword_22BA1A048);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9E37CC();
  sub_22BA10D9C();
  v8[15] = 0;
  sub_22BA10BFC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_22BA10BFC();
  v8[13] = 2;
  sub_22BA10BFC();
  v8[12] = 3;
  sub_22BA10BFC();
  v8[11] = 4;
  sub_22BA10BFC();
  v8[10] = 5;
  sub_22BA10BFC();
  v8[9] = 6;
  sub_22BA10BFC();
  v8[8] = 7;
  sub_22BA10BFC();
  v8[7] = 8;
  sub_22BA10BFC();
  v8[6] = 9;
  sub_22BA10BFC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22B9E2A94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B9E31A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B9E2AC8(uint64_t a1)
{
  v2 = sub_22B9E37CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9E2B04(uint64_t a1)
{
  v2 = sub_22B9E37CC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22B9E2B40@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22B9E34F8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_22B9E2BA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    if (!*(result + 16))
    {
      v15 = 0;
      v9 = 0;
      v6 = 0;
      v12 = 0;
      goto LABEL_23;
    }

    v4 = sub_22B990A58(0x616E614D74616863, 0xEF656E6F5A656574);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      if (*(v2 + 16))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (*(v2 + 16))
      {
LABEL_5:
        v7 = sub_22B990A58(0xD000000000000012, 0x800000022BA1C0C0);
        if (v8)
        {
          v9 = *(*(v2 + 56) + 8 * v7);

          if (*(v2 + 16))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v9 = 0;
          if (*(v2 + 16))
          {
LABEL_7:
            v10 = sub_22B990A58(0xD000000000000015, 0x800000022BA1C0E0);
            if (v11)
            {
              v12 = *(*(v2 + 56) + 8 * v10);

              if (*(v2 + 16))
              {
LABEL_9:
                v13 = sub_22B990A58(0xD000000000000011, 0x800000022BA1C100);
                if (v14)
                {
                  v15 = *(*(v2 + 56) + 8 * v13);

                  if (!*(v2 + 16))
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  v15 = 0;
                  if (!*(v2 + 16))
                  {
                    goto LABEL_23;
                  }
                }

                v26 = sub_22B990A58(0xD00000000000001CLL, 0x800000022BA1C120);
                if (v27)
                {
                  v28 = *(*(v2 + 56) + 8 * v26);

                  goto LABEL_24;
                }

LABEL_23:
                v28 = 0;
LABEL_24:

                if (!v6)
                {
                  v50 = 0;
                  v51 = 0;
                  if (v9)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_30;
                }

                if (*(v6 + 16))
                {
                  v29 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                  if (v30)
                  {
                    v51 = *(*(v6 + 56) + 8 * v29);
                    if (!*(v6 + 16))
                    {
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                    v51 = 0;
                    if (!*(v6 + 16))
                    {
                      goto LABEL_38;
                    }
                  }

                  v31 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                  if (v32)
                  {
                    v50 = *(*(v6 + 56) + 8 * v31);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v51 = 0;
                }

LABEL_38:
                v50 = 0;
LABEL_39:

                if (v9)
                {
LABEL_40:
                  if (*(v9 + 16))
                  {
                    v33 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                    if (v34)
                    {
                      v49 = *(*(v9 + 56) + 8 * v33);
                      if (!*(v9 + 16))
                      {
                        goto LABEL_48;
                      }
                    }

                    else
                    {
                      v49 = 0;
                      if (!*(v9 + 16))
                      {
                        goto LABEL_48;
                      }
                    }

                    v35 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                    if (v36)
                    {
                      v19 = *(*(v9 + 56) + 8 * v35);
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    v49 = 0;
                  }

LABEL_48:
                  v19 = 0;
LABEL_49:

                  if (v12)
                  {
LABEL_50:
                    if (*(v12 + 16))
                    {
                      v37 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                      if (v38)
                      {
                        v20 = *(*(v12 + 56) + 8 * v37);
                        if (!*(v12 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      else
                      {
                        v20 = 0;
                        if (!*(v12 + 16))
                        {
                          goto LABEL_58;
                        }
                      }

                      v39 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                      if (v40)
                      {
                        v21 = *(*(v12 + 56) + 8 * v39);
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      v20 = 0;
                    }

LABEL_58:
                    v21 = 0;
LABEL_59:

                    if (v15)
                    {
LABEL_60:
                      if (!*(v15 + 16))
                      {
                        v22 = 0;
                        goto LABEL_67;
                      }

                      v41 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                      if (v42)
                      {
                        v22 = *(*(v15 + 56) + 8 * v41);
                        if (!*(v15 + 16))
                        {
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        v22 = 0;
                        if (!*(v15 + 16))
                        {
                          goto LABEL_67;
                        }
                      }

                      v43 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                      if (v44)
                      {
                        v23 = *(*(v15 + 56) + 8 * v43);
                        goto LABEL_68;
                      }

LABEL_67:
                      v23 = 0;
LABEL_68:

                      if (v28)
                      {
LABEL_69:
                        if (*(v28 + 16))
                        {
                          v45 = sub_22B990A58(0x65725F6C61746F74, 0xED00007364726F63);
                          if (v46)
                          {
                            v24 = *(*(v28 + 56) + 8 * v45);
                            if (!*(v28 + 16))
                            {
                              goto LABEL_77;
                            }
                          }

                          else
                          {
                            v24 = 0;
                            if (!*(v28 + 16))
                            {
                              goto LABEL_77;
                            }
                          }

                          v47 = sub_22B990A58(0x6365725F6576696CLL, 0xEC0000007364726FLL);
                          if (v48)
                          {
                            v2 = *(*(v28 + 56) + 8 * v47);
LABEL_78:

                            goto LABEL_79;
                          }
                        }

                        else
                        {
                          v24 = 0;
                        }

LABEL_77:
                        v2 = 0;
                        goto LABEL_78;
                      }

LABEL_33:
                      v24 = 0;
                      v2 = 0;
LABEL_79:
                      v25 = 0;
                      v17 = v50;
                      v16 = v51;
                      v18 = v49;
                      goto LABEL_80;
                    }

LABEL_32:
                    v22 = 0;
                    v23 = 0;
                    if (v28)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_33;
                  }

LABEL_31:
                  v20 = 0;
                  v21 = 0;
                  if (v15)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_32;
                }

LABEL_30:
                v49 = 0;
                v19 = 0;
                if (v12)
                {
                  goto LABEL_50;
                }

                goto LABEL_31;
              }
            }

            else
            {
              v12 = 0;
              if (*(v2 + 16))
              {
                goto LABEL_9;
              }
            }

            v15 = 0;
            goto LABEL_23;
          }
        }

        v15 = 0;
        v12 = 0;
        goto LABEL_23;
      }
    }

    v15 = 0;
    v9 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
LABEL_80:
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  *(a2 + 64) = v24;
  *(a2 + 72) = v2;
  *(a2 + 80) = v25;
  return result;
}

__n128 sub_22B9E311C(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B9E3138(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B9E3158(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_22B9E31A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746F5474616863 && a2 == 0xEA0000000000736CLL;
  if (v4 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576694C74616863 && a2 == 0xE900000000000073 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xED0000736C61746FLL || (sub_22BA10C6C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6567617373656DLL && a2 == 0xEC00000073657669 || (sub_22BA10C6C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BA1E820 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF736576694C746ELL || (sub_22BA10C6C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BA1E840 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BA1E860 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022BA1E880 == a2 || (sub_22BA10C6C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022BA1E8A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_22BA10C6C();

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

uint64_t sub_22B9E34F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22B9349C8(&qword_27D8D5AC0, &qword_22BA1A040);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_22B9358B4(a1, a1[3]);
  sub_22B9E37CC();
  sub_22BA10D8C();
  if (v2)
  {
    return sub_22B936C4C(a1);
  }

  v34 = 0;
  v9 = sub_22BA10B4C();
  v33 = 1;
  v10 = sub_22BA10B4C();
  v32 = 2;
  v24 = sub_22BA10B4C();
  v31 = 3;
  v23 = sub_22BA10B4C();
  v30 = 4;
  v22 = sub_22BA10B4C();
  v29 = 5;
  v21 = sub_22BA10B4C();
  v28 = 6;
  v20 = sub_22BA10B4C();
  v27 = 7;
  v19 = sub_22BA10B4C();
  v26 = 8;
  v18 = sub_22BA10B4C();
  v25 = 9;
  v17 = sub_22BA10B4C();
  (*(v6 + 8))(v8, v5);
  result = sub_22B936C4C(a1);
  *a2 = v9;
  a2[1] = v10;
  v12 = v23;
  a2[2] = v24;
  a2[3] = v12;
  v13 = v21;
  a2[4] = v22;
  a2[5] = v13;
  v14 = v19;
  a2[6] = v20;
  a2[7] = v14;
  v15 = v17;
  a2[8] = v18;
  a2[9] = v15;
  return result;
}

unint64_t sub_22B9E37CC()
{
  result = qword_27D8D5AC8;
  if (!qword_27D8D5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AC8);
  }

  return result;
}

unint64_t sub_22B9E3834()
{
  result = qword_27D8D5AD8;
  if (!qword_27D8D5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AD8);
  }

  return result;
}

unint64_t sub_22B9E388C()
{
  result = qword_27D8D5AE0;
  if (!qword_27D8D5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AE0);
  }

  return result;
}

unint64_t sub_22B9E38E4()
{
  result = qword_27D8D5AE8;
  if (!qword_27D8D5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5AE8);
  }

  return result;
}

uint64_t sub_22B9E3948()
{
  sub_22BA0F9BC();
  swift_allocObject();
  result = sub_22BA0F9AC();
  qword_27D8DE1D8 = result;
  return result;
}

uint64_t sub_22B9E3988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B947814;

  return sub_22B9E3A3C(a1, a2);
}

uint64_t sub_22B9E3A3C(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_22BA1003C();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9E3ACC, 0, 0);
}

uint64_t sub_22B9E3ACC()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22B9E3AFC, v1, 0);
}

uint64_t sub_22B9E3AFC()
{
  v1 = v0[19];
  swift_beginAccess();
  v2 = sub_22B9C537C(*(v1 + 192));
  if (v2 < 1)
  {

    v14 = v0[1];

    return v14(0, 0);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    sub_22B9349C8(&qword_27D8D5AF0, &qword_22BA1A208);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    v9 = "byteSizeExceeded";
    v11 = v7 & 1;
    v10 = (v7 & 1) == 0;
    v12 = 0xD000000000000010;
    if (v7)
    {
      v12 = 0xD000000000000011;
    }

    *(inited + 32) = v12;
    v13 = inited + 32;
    if (v10)
    {
      v9 = "h";
    }

    *(inited + 40) = v9 | 0x8000000000000000;
    *(inited + 48) = v5;
    *(inited + 56) = v6;
    *(inited + 64) = v11;
    v0[20] = sub_22B9BC02C(inited);
    swift_setDeallocating();
    sub_22B936BEC(v13, &qword_27D8D5AF8, &qword_22BA1A210);

    return MEMORY[0x2822009F8](sub_22B9E3C78, 0, 0);
  }
}

uint64_t sub_22B9E3C78()
{
  v25 = v0;
  if (qword_27D8D4990 != -1)
  {
    swift_once();
  }

  v0[14] = v0[20];
  sub_22B9E4290();
  v1 = sub_22BA0F99C();
  v0[21] = v1;
  v0[22] = v2;
  v3 = v1;
  v4 = v2;
  sub_22BA1002C();
  v5 = sub_22BA1000C();
  v0[23] = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_22B9E4104;
    v11 = v0[16];
    v10 = v0[17];
    v31 = 98;
    v30 = 39;
    v29 = 2;
    v28 = 21;
    v27 = "performStep(context:)";

    return sub_22B9E81AC(v11, v10, v7, v8, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/SyncSteps/ReportRecordFailuresTelemetryStep.swift", 125, 2);
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);

    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1044C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[20];
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315138;
      v0[15] = v18;
      v21 = sub_22BA1005C();
      v23 = sub_22B99153C(v21, v22, &v24);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22B92A000, v15, v16, "Failed to get json string for record failure report: %s", v19, 0xCu);
      sub_22B936C4C(v20);
      MEMORY[0x23189ADD0](v20, -1, -1);
      MEMORY[0x23189ADD0](v19, -1, -1);
      sub_22B9359BC(v3, v4);
    }

    else
    {
      sub_22B9359BC(v3, v4);
    }

    v13 = v0[1];

    return v13(0, 0);
  }
}

uint64_t sub_22B9E4104()
{

  return MEMORY[0x2822009F8](sub_22B9E421C, 0, 0);
}

uint64_t sub_22B9E421C()
{
  sub_22B9359BC(v0[21], v0[22]);

  v1 = v0[1];

  return v1(0, 0);
}

unint64_t sub_22B9E4290()
{
  result = qword_27D8D5B00;
  if (!qword_27D8D5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B00);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DevicePolicy(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DevicePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DevicePolicy(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22B9E43A0(char a1, char a2, char a3)
{
  v6 = sub_22B9E0FF4();
  v7 = v6 & 0x1FF;
  v8 = sub_22B9E0EBC(v6 & 0x1FF);
  v10 = v9;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v11 = sub_22BA0FEFC();
  sub_22B936CA8(v11, qword_28141AD40);

  v12 = sub_22BA0FEDC();
  v13 = sub_22BA1046C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 67109890;
    *(v14 + 4) = a1 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = a2 & 1;
    *(v14 + 14) = 1024;
    *(v14 + 16) = a3 & 1;
    *(v14 + 20) = 2080;
    v16 = sub_22B99153C(v8, v10, &v21);

    *(v14 + 22) = v16;
    _os_log_impl(&dword_22B92A000, v12, v13, "[DevicePolicy]:\n    evaluateUserSyncOnly = %{BOOL}d\n    maintainWifi = %{BOOL}d\n    maintainCharging = %{BOOL}d\n    initialDeviceState = %s", v14, 0x1Eu);
    sub_22B936C4C(v15);
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v14, -1, -1);
  }

  else
  {
  }

  v17 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = v17 | (v7 << 24);
  v19 = 256;
  if ((a2 & 1) == 0)
  {
    v19 = 0;
  }

  return (v18 | v19) & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
}

uint64_t sub_22B9E457C()
{
  sub_22B936C4C((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_22B9E45D8(unint64_t a1, unint64_t a2, char a3)
{
  sub_22B9A2EAC(a1, a2, a3 & 1);
  if (a3)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    oslog = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B92A000, oslog, v5, "Successfully nil'd out local store count from database", v6, 2u);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    oslog = sub_22BA0FEDC();
    v8 = sub_22BA1046C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_22BA1005C();
      v13 = sub_22B99153C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22B92A000, oslog, v8, "Successfully wrote to database our new local store count: %s", v9, 0xCu);
      sub_22B936C4C(v10);
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);

      return;
    }
  }
}

uint64_t sub_22B9E4824(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22B9E4848, 0, 0);
}

uint64_t sub_22B9E4848()
{
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  v6 = *(v0 + 24);
  swift_unknownObjectWeakInit();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v6;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_22B9349C8(&qword_27D8D5B18, &qword_22BA1A340);
  *v3 = v0;
  v3[1] = sub_22B9E4988;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000021, 0x800000022BA1E990, sub_22B9E57B0, v2, v4);
}

uint64_t sub_22B9E4988()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22B9E4AC8;
  }

  else
  {

    v2 = sub_22B9E4AAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B9E4AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22B9E4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, a1, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    aBlock[4] = sub_22B9E5810;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9E4E3C;
    aBlock[3] = &unk_283F57BB0;
    v13 = _Block_copy(aBlock);

    [v10 setFetchRecordsCompletionBlock_];
    _Block_release(v13);
    v14 = (a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
    v15 = *(a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v16 = v14[4];
    sub_22B9358B4(v14, v15);
    (*(v16 + 8))(v10, v15, v16);
  }

  else
  {
    sub_22B9E57BC();
    v17 = swift_allocError();
    *v18 = 0;
    aBlock[0] = v17;
    sub_22BA102AC();
  }
}

uint64_t sub_22B9E4D88(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
    return sub_22BA102AC();
  }

  if (!a1)
  {
    sub_22B9E57BC();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
  return sub_22BA102BC();
}

uint64_t sub_22B9E4E3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    sub_22B951A54(0, &qword_281414A30, 0x277CBC5A0);
    sub_22B977228();
    v4 = sub_22BA0FF6C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_22B9E4F0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a6;
  v38 = a1;
  v39 = a2;
  v8 = sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v37 = *(v9 + 16);
  v37(&v35 - v10, a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  v14 = *(v9 + 32);
  v14(v13 + v12, v11, v8);

  v15 = v39;
  sub_22BA105AC();
  v37(v11, v38, v8);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v14(v16 + v12, v11, v8);

  sub_22BA1058C();
  swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    v17 = v35;
    v18 = *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v19 = *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
    sub_22B9358B4((v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase), v18);
    (*(v19 + 8))(v15, v18, v19);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD40);
    sub_22B935B38(v36, v43);
    swift_unknownObjectRetain();
    v21 = v15;
    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v24 = 136315650;
      v27 = sub_22B9358B4(v43, v43[3]);
      v28 = *v27;
      v29 = v27[1];

      sub_22B936C4C(v43);
      v30 = sub_22B99153C(v28, v29, &v42);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v40 = 0x2E636E7973;
      v41 = 0xE500000000000000;
      sub_22B9358B4((v17 + 16), *(v17 + 40));
      v31 = sub_22B9B580C();
      MEMORY[0x231899730](v31);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v32 = sub_22BA10C1C();
      MEMORY[0x231899730](v32);

      v33 = sub_22B99153C(v40, v41, &v42);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      *v25 = v21;
      v34 = v21;
      _os_log_impl(&dword_22B92A000, v22, v23, "Added fetch operation for %s (sync: %s): %@", v24, 0x20u);
      sub_22B95DEF0(v25);
      MEMORY[0x23189ADD0](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v26, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }

    else
    {

      sub_22B936C4C(v43);
    }
  }
}

uint64_t sub_22B9E53C4(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = sub_22B9349C8(&qword_27D8D5B10, &qword_22BA1A330);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  result = swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    v14[0] = a1;
    v14[1] = a2;
    v15 = (a3 & 1) != 0;
    v13 = a1;
    sub_22B930C44(a2);
    sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
    sub_22BA1033C();
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_22B9E552C(void *a1, void *a2, char a3)
{
  sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  v7 = *(v3 + 16);

  return sub_22B9E53C4(a1, a2, a3 & 1, v7);
}

uint64_t sub_22B9E55C4(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = 0;
  if (a2)
  {
    v6 = a1;
  }

  sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  return sub_22BA1034C();
}

uint64_t sub_22B9E5650()
{
  v1 = sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B9E5720(void *a1, char a2)
{
  sub_22B9349C8(&qword_27D8D5B08, &unk_22BA1A320);
  v5 = *(v2 + 16);

  return sub_22B9E55C4(a1, a2 & 1, v5);
}

unint64_t sub_22B9E57BC()
{
  result = qword_27D8D5B28;
  if (!qword_27D8D5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B28);
  }

  return result;
}

uint64_t sub_22B9E5810(uint64_t a1, void *a2)
{
  sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);

  return sub_22B9E4D88(a1, a2);
}

uint64_t sub_22B9E589C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9E58D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_22B9E5918(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B9E597C()
{
  result = qword_27D8D5B30;
  if (!qword_27D8D5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B30);
  }

  return result;
}

id SyncTelemetryReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_22B9E5A04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_22BA0FFFC();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000022BA1EAF0;
    v2 = 0xD000000000000011;
  }

  qword_28141AED0 = v2;
  *algn_28141AED8 = v4;
}

id SyncTelemetryReporter.init()()
{
  ObjectType = swift_getObjectType();
  v50 = sub_22BA104FC();
  v0 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v2 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BA0FF4C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22BA0FF2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BA104EC();
  MEMORY[0x28223BE20](v8 - 8);
  v49 = OBJC_IVAR___IMDSyncTelemetryReporterInternal_reportingQueue;
  sub_22B9E0AFC();
  sub_22BA104DC();
  (*(v5 + 104))(v7, *MEMORY[0x277D851A8], v4);
  sub_22BA1054C();
  (*(v5 + 8))(v7, v4);
  sub_22BA0FF3C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v50);
  *&v52[v49] = sub_22BA1053C();
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v9 = qword_28141ACF0;
  v10 = sub_22BA0FFCC();
  v11 = [v9 stringForKey_];

  if (v11)
  {
    v12 = sub_22BA0FFFC();
    v14 = v13;

    v15 = ObjectType;
    v16 = sub_22B9E758C();
    v18 = sub_22B9E13D8(38, 0, 0, 0, v16, v17, v12, v14);
  }

  else
  {
    v15 = ObjectType;
    v19 = sub_22B9E758C();
    v18 = sub_22B9E13D8(38, 0, 0, 0, v19, v20, 0, 0);
  }

  v21 = sub_22B9E758C();
  v23 = sub_22B9E15F4(v21, v22, 0x746C7561666544, 0xE700000000000000);

  if (qword_281414D10 != -1)
  {
    swift_once();
  }

  v24 = sub_22BA0FEFC();
  v25 = sub_22B936CA8(v24, qword_28141ACF8);

  v26 = sub_22BA0FEDC();
  v27 = sub_22BA1046C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v25;
    v30 = v29;
    v53 = v29;
    *v28 = 136315394;
    v31 = sub_22BA0FF7C();
    v33 = v32;

    v34 = sub_22B99153C(v31, v33, &v53);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v35 = sub_22BA0FF7C();
    v37 = sub_22B99153C(v35, v36, &v53);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_22B92A000, v26, v27, "init RTCReporter with sessionInfo: %s, userInfo: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v30, -1, -1);
    v38 = v28;
    v15 = ObjectType;
    MEMORY[0x23189ADD0](v38, -1, -1);
  }

  else
  {
  }

  sub_22B98C248(v18);

  sub_22B98C248(v23);

  v39 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v40 = sub_22BA0FF5C();

  v41 = sub_22BA0FF5C();

  v42 = sub_22BA101DC();
  v43 = [v39 initWithSessionInfo:v40 userInfo:v41 frameworksToCheck:v42];

  *&v52[OBJC_IVAR___IMDSyncTelemetryReporterInternal_reporter] = v43;
  if (!v43)
  {
    v44 = sub_22BA0FEDC();
    v45 = sub_22BA1044C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22B92A000, v44, v45, "RTCReporter fail to init and return nil", v46, 2u);
      MEMORY[0x23189ADD0](v46, -1, -1);
    }
  }

  v54.receiver = v52;
  v54.super_class = v15;
  return objc_msgSendSuper2(&v54, sel_init);
}

uint64_t sub_22B9E6220(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a7;
  v56 = a8;
  v54 = a6;
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v14 = sub_22BA0FF4C();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40[-v20];
  v22 = sub_22BA0FF1C();
  v57 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v40[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_22BA102BC();
  }

  v26 = Strong;
  v45 = a13;
  v44 = a12;
  v43 = a11;
  v42 = a10;
  v41 = a9;
  v27 = *(Strong + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reportingQueue);
  v47 = v24;
  v48 = v27;
  sub_22BA0FF0C();
  (*(v18 + 16))(v21, a1, v17);
  v28 = *(v18 + 80);
  v49 = v22;
  v29 = (v28 + 88) & ~v28;
  v30 = (v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = v14;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v50 & 1;
  v34 = v51;
  v33 = v52;
  *(v32 + 24) = v26;
  *(v32 + 32) = v34;
  *(v32 + 40) = v33;
  *(v32 + 48) = v54;
  v35 = v56;
  *(v32 + 56) = v55;
  *(v32 + 64) = v35;
  *(v32 + 72) = v41;
  *(v32 + 80) = v42;
  (*(v18 + 32))(v32 + v29, v21, v17);
  *(v32 + v30) = v43;
  *(v32 + v31) = v44;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  aBlock[4] = sub_22B9E763C;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9E6FC8;
  aBlock[3] = &unk_283F57DD8;
  v36 = _Block_copy(aBlock);
  v37 = v26;

  sub_22BA0FF3C();
  v38 = v47;
  MEMORY[0x231899B90](0, v16, v47, v36);
  _Block_release(v36);
  (*(v53 + 8))(v16, v46);
  (*(v57 + 8))(v38, v49);
}

void sub_22B9E6644(int a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  v82 = a10;
  v85[2] = *MEMORY[0x277D85DE8];
  v15 = sub_22BA0FF1C();
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && !*(a2 + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reporter))
  {
    if (qword_281414D10 == -1)
    {
LABEL_25:
      v66 = sub_22BA0FEFC();
      sub_22B936CA8(v66, qword_28141ACF8);
      v67 = sub_22BA0FEDC();
      v68 = sub_22BA1044C();
      if (os_log_type_enabled(v67, v68))
      {
        v81 = a9;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v85[0] = v70;
        *v69 = 136315650;
        v71 = sub_22BA1091C();
        v73 = sub_22B99153C(v71, v72, v85);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2080;
        v74 = sub_22BA1091C();
        v76 = sub_22B99153C(v74, v75, v85);

        *(v69 + 14) = v76;
        *(v69 + 22) = 2048;
        *(v69 + 24) = v81;
        _os_log_impl(&dword_22B92A000, v67, v68, "Reporter is not initialized during non-isolated dispatch. %s:%s:%lu", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v70, -1, -1);
        MEMORY[0x23189ADD0](v69, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_33:
    swift_once();
    goto LABEL_25;
  }

  v77 = v16;
  v78 = a2;
  LODWORD(v81) = a1;
  if (qword_281414D10 != -1)
  {
    swift_once();
  }

  v19 = sub_22BA0FEFC();
  sub_22B936CA8(v19, qword_28141ACF8);

  v20 = sub_22BA0FEDC();
  v21 = sub_22BA1046C();

  v22 = os_log_type_enabled(v20, v21);
  v79 = a11;
  v80 = a12;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v85[0] = v24;
    *v23 = 136315906;
    *(v23 + 4) = sub_22B99153C(0xD000000000000041, 0x800000022BA1EAA0, v85);
    *(v23 + 12) = 2080;
    v25 = sub_22BA0FF7C();
    v27 = sub_22B99153C(v25, v26, v85);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2048;
    *(v23 + 24) = a12;
    *(v23 + 32) = 2048;
    *(v23 + 34) = 0;
    _os_log_impl(&dword_22B92A000, v20, v21, "[SyncTelemetryReporting:%s]: Sending payload to RTC: %s, category: %ld, event: %ld", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v24, -1, -1);
    MEMORY[0x23189ADD0](v23, -1, -1);
  }

  type metadata accessor for SyncCoordinator();
  v28 = [objc_opt_self() isMainThread];
  v29 = v81;
  if (v28)
  {
    v30 = off_281416A80;
    swift_unknownObjectRetain();
    if (v30)
    {
LABEL_9:
      v31 = sub_22B9358B4((v30 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v30 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
      v32 = *(*v31 + 32);
      v33 = *(*v31 + 40);

      v34 = sub_22B9E758C();
      v36 = sub_22B9E13D8(38, 0, 0, 0, v34, v35, v32, v33);

      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    sub_22B9E0AFC();
    v37 = sub_22BA1050C();
    v38 = sub_22BA0FF0C();
    MEMORY[0x28223BE20](v38);
    sub_22B9349C8(&qword_27D8D5B50, &qword_22BA1A4E0);
    sub_22BA1051C();

    (*(v77 + 8))(v18, v15);
    v30 = v85[0];
    if (v85[0])
    {
      goto LABEL_9;
    }
  }

  v39 = sub_22B9E758C();
  v36 = sub_22B9E13D8(38, 0, 0, 0, v39, v40, 0, 0);

LABEL_12:
  v41 = sub_22B9E758C();
  v43 = sub_22B9E15F4(v41, v42, 0x746C7561666544, 0xE700000000000000);

  if ((v29 & 1) == 0)
  {

    v52 = *(v78 + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reporter);
    if (!v52)
    {
      goto LABEL_28;
    }

    v53 = v80;
    if ((v80 & 0x8000000000000000) == 0)
    {
      if (!(v80 >> 16))
      {
        sub_22B98C248(v79);
        v54 = sub_22BA0FF5C();

        v85[0] = 0;
        v55 = [v52 sendMessageWithCategory:v53 type:0 payload:v54 error:v85];

        v50 = v85[0];
        if (v55)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v44 = objc_opt_self();
  sub_22B98C248(v36);

  v45 = sub_22BA0FF5C();

  sub_22B98C248(v43);

  v46 = sub_22BA0FF5C();

  v47 = v80;
  if ((v80 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v80 >> 16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_22B98C248(v79);
  v48 = sub_22BA0FF5C();

  v85[0] = 0;
  v49 = [v44 sendOneMessageWithSessionInfo:v45 userInfo:v46 category:v47 type:0 payload:v48 error:v85];

  v50 = v85[0];
  if (v49)
  {
LABEL_16:
    v51 = v50;
LABEL_28:
    sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
    sub_22BA102BC();
    return;
  }

LABEL_21:
  v56 = v50;
  v57 = sub_22BA0FB6C();

  swift_willThrow();
  v58 = v57;
  v59 = sub_22BA0FEDC();
  v60 = sub_22BA1044C();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v85[0] = v62;
    *v61 = 136315138;
    swift_getErrorValue();
    v63 = sub_22B9587B4(v83, v84);
    v65 = sub_22B99153C(v63, v64, v85);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_22B92A000, v59, v60, "Encountered error while trying to send payload to RTC: %s", v61, 0xCu);
    sub_22B936C4C(v62);
    MEMORY[0x23189ADD0](v62, -1, -1);
    MEMORY[0x23189ADD0](v61, -1, -1);
  }

  sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  sub_22BA102BC();
}

uint64_t sub_22B9E6FC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t SyncTelemetryReporter.postMessage(payload:category:)(uint64_t a1, uint64_t a2)
{
  v17 = sub_22BA0FF4C();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BA0FF1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR___IMDSyncTelemetryReporterInternal_reportingQueue);
  sub_22BA0FF0C();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a1;
  aBlock[4] = sub_22B9E75F4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9E6FC8;
  aBlock[3] = &unk_283F57D48;
  v14 = _Block_copy(aBlock);

  sub_22BA0FF3C();
  MEMORY[0x231899B90](0, v7, v11, v14);
  _Block_release(v14);
  (*(v5 + 8))(v7, v17);
  (*(v9 + 8))(v11, v8);
}

void sub_22B9E7288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_22B9E772C(a2, a3);
    }
  }
}

id SyncTelemetryReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B9E758C()
{
  if (qword_281416948 != -1)
  {
    swift_once();
  }

  v0 = qword_28141AED0;

  return v0;
}

uint64_t sub_22B9E7600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22B9E763C()
{
  v1 = *(sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22B9E6644(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22B9E772C(uint64_t a1, uint64_t a2)
{
  v51[2] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v5 = sub_22BA0FF1C();
  v6 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 1)
  {
    v47 = v7;
    v48 = v6;
    v50 = a1;
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141ACF8);

    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1046C();

    v13 = os_log_type_enabled(v11, v12);
    v49 = a2;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v46 = v2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v51[0] = v16;
      *v15 = 136315906;
      *(v15 + 4) = sub_22B99153C(0xD00000000000002BLL, 0x800000022BA1EB10, v51);
      *(v15 + 12) = 2080;
      v17 = sub_22BA0FF7C();
      v19 = sub_22B99153C(v17, v18, v51);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v50;
      *(v15 + 32) = 2048;
      *(v15 + 34) = 0;
      _os_log_impl(&dword_22B92A000, v11, v12, "[SyncTelemetryReporting:%s]: Sending payload to RTC: %s, category: %ld, event: %ld", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v16, -1, -1);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    type metadata accessor for SyncCoordinator();
    if ([objc_opt_self() isMainThread])
    {
      v20 = off_281416A80;
      swift_unknownObjectRetain();
      v21 = v50;
      if (v20)
      {
LABEL_8:
        v22 = sub_22B9358B4(&v20[OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState], *&v20[OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24]);
        v23 = *(*v22 + 32);
        v24 = *(*v22 + 40);

        v25 = sub_22B9E758C();
        v27 = sub_22B9E13D8(38, 0, 0, 0, v25, v26, v23, v24);

        swift_unknownObjectRelease();
LABEL_15:
        v36 = sub_22B9E758C();
        v38 = sub_22B9E15F4(v36, v37, 0x746C7561666544, 0xE700000000000000);

        v39 = objc_opt_self();
        sub_22B98C248(v27);

        v40 = sub_22BA0FF5C();

        sub_22B98C248(v38);

        v41 = sub_22BA0FF5C();

        if (!(v21 >> 16))
        {
          sub_22B98C248(v49);
          v42 = sub_22BA0FF5C();

          v51[0] = 0;
          v43 = [v39 sendOneMessageWithSessionInfo:v40 userInfo:v41 category:v21 type:0 payload:v42 error:v51];

          if (v43)
          {
            v44 = v51[0];
          }

          else
          {
            v45 = v51[0];
            sub_22BA0FB6C();

            swift_willThrow();
          }

          return;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      sub_22B9E0AFC();
      v32 = sub_22BA1050C();
      v33 = sub_22BA0FF0C();
      MEMORY[0x28223BE20](v33);
      sub_22B9349C8(&qword_27D8D5B50, &qword_22BA1A4E0);
      sub_22BA1051C();

      (*(v47 + 8))(v9, v48);
      v20 = v51[0];
      v21 = v50;
      if (v51[0])
      {
        goto LABEL_8;
      }
    }

    v34 = sub_22B9E758C();
    v27 = sub_22B9E13D8(38, 0, 0, 0, v34, v35, 0, 0);

    goto LABEL_15;
  }

  if (qword_281414D10 != -1)
  {
LABEL_20:
    swift_once();
  }

  v28 = sub_22BA0FEFC();
  sub_22B936CA8(v28, qword_28141ACF8);
  v29 = sub_22BA0FEDC();
  v30 = sub_22BA1044C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22B92A000, v29, v30, "RTCReporting reserves category==0, a value greater than 0 must be supplied.", v31, 2u);
    MEMORY[0x23189ADD0](v31, -1, -1);
  }
}

void sub_22B9E7DF4(void *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ActionRecord(0);
  if (*(a1 + *(v5 + 68) + 8))
  {
    v6 = sub_22BA0FFCC();
  }

  else
  {
    v6 = 0;
  }

  sub_22B94498C(a1 + *(v5 + 64), v4);
  v7 = sub_22BA0FD8C();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_22BA0FCFC();
    (*(v8 + 8))(v4, v7);
  }

  if (a1[1])
  {
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSender:v6 time:v9 guid:v10 type:5];

  if (v11)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B9E7FA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
    [v3 setActionType_];
    v6 = [v5 originalMessageGuid];

    [v3 setOriginalMessageGUID_];
    sub_22B977794();
    if (v7)
    {
      osloga = sub_22BA0FFCC();

      [v3 setOtherHandle_];
    }

    else
    {
      [v3 setOtherHandle_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v11 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22B99153C(a2, a3, &v16);
      _os_log_impl(&dword_22B92A000, oslog, v11, "No Proto for IMMessageActionItem %s", v12, 0xCu);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }
  }
}

uint64_t sub_22B9E81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 1347) = v13;
  *(v8 + 1176) = v12;
  *(v8 + 1346) = v11;
  *(v8 + 1160) = v10;
  *(v8 + 1345) = a8;
  *(v8 + 1152) = a7;
  *(v8 + 1144) = a6;
  *(v8 + 1344) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 1128) = a3;
  *(v8 + 1120) = a1;
  return MEMORY[0x2822009F8](sub_22B9E820C, 0, 0);
}

uint64_t sub_22B9E820C()
{
  v1 = v0[140];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[148] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  sub_22B9358B4((v1 + v2), *(v1 + v2 + 24));
  if ((sub_22BA08808() & 1) != 0 || (sub_22B92DA70(1, 0)) && (v3 = qword_28141ADC8, v0[149] = qword_28141ADC8, v3))
  {
    v4 = qword_28141ADD0;
    v0[150] = qword_28141ADD0;
    v0[151] = *(v4 + 296);
    v0[152] = (v4 + 296) & 0xFFFFFFFFFFFFLL | 0xDDD000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v6 = sub_22BA1029C();
    v0[153] = v6;
    v0[154] = v5;

    return MEMORY[0x2822009F8](sub_22B9E8364, v6, v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B9E8364()
{
  *(v0 + 1348) = (*(v0 + 1208))() & 1;

  return MEMORY[0x2822009F8](sub_22B9E83E4, 0, 0);
}

uint64_t sub_22B9E83E4()
{
  if (*(v0 + 1348) == 1)
  {
    v1 = (v0 + 1112);
    v2 = *(v0 + 1347);
    v3 = sub_22B9ECB18();
    *(v0 + 1112) = v3;
    v4 = sub_22B9EB0F4(v2);
    v5 = MEMORY[0x277D837D0];
    *(v0 + 1088) = MEMORY[0x277D837D0];
    *(v0 + 1064) = v4;
    *(v0 + 1072) = v6;
    sub_22B9ECC48(v0 + 1064, v0 + 136);
    if (*(v0 + 160))
    {
      sub_22B936C98((v0 + 136), (v0 + 584));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 584), 0x6D614E70756F7267, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      *v1 = v3;
    }

    else
    {
      sub_22B949698(v0 + 136);
      sub_22B9EB6F0(0x6D614E70756F7267, 0xE900000000000065, (v0 + 168));
      sub_22B949698(v0 + 168);
    }

    sub_22B949698(v0 + 1064);
    v10 = sub_22BA0FD9C();
    *(v0 + 224) = v5;
    *(v0 + 200) = v10;
    *(v0 + 208) = v11;
    sub_22B9ECC48(v0 + 200, v0 + 232);
    if (*(v0 + 256))
    {
      sub_22B936C98((v0 + 232), (v0 + 104));
      v12 = *v1;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 104), 0x73736553636E7973, 0xED000044496E6F69, v13);
      *v1 = v12;
    }

    else
    {
      sub_22B949698(v0 + 232);
      sub_22B9EB6F0(0x73736553636E7973, 0xED000044496E6F69, (v0 + 264));
      sub_22B949698(v0 + 264);
    }

    v14 = (*(v0 + 1120) + *(v0 + 1184));
    sub_22B949698(v0 + 200);
    v15 = sub_22B9358B4(v14, v14[3]);
    v16 = *(*v15 + 32);
    v17 = *(*v15 + 40);
    *(v0 + 320) = v5;
    *(v0 + 296) = v16;
    *(v0 + 304) = v17;
    sub_22B9ECC48(v0 + 296, v0 + 328);
    if (*(v0 + 352))
    {
      sub_22B936C98((v0 + 328), (v0 + 1032));

      v18 = *v1;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1032), 0x4449656369766564, 0xE800000000000000, v19);
      *v1 = v18;
    }

    else
    {

      sub_22B949698(v0 + 328);
      sub_22B9EB6F0(0x4449656369766564, 0xE800000000000000, (v0 + 360));
      sub_22B949698(v0 + 360);
    }

    v20 = *(v0 + 1120);
    sub_22B949698(v0 + 296);
    sub_22B9358B4((v20 + 16), *(v20 + 40));
    v21 = sub_22BA1039C();
    v22 = sub_22B937ED8();
    *(v0 + 416) = v22;
    *(v0 + 392) = v21;
    sub_22B9ECC48(v0 + 392, v0 + 424);
    if (*(v0 + 448))
    {
      sub_22B936C98((v0 + 424), (v0 + 1000));
      v23 = *v1;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1000), 0x65707954636E7973, 0xE800000000000000, v24);
      *v1 = v23;
    }

    else
    {
      sub_22B949698(v0 + 424);
      sub_22B9EB6F0(0x65707954636E7973, 0xE800000000000000, (v0 + 456));
      sub_22B949698(v0 + 456);
    }

    sub_22B949698(v0 + 392);
    v25 = sub_22BA1039C();
    *(v0 + 512) = v22;
    *(v0 + 488) = v25;
    sub_22B9ECC48(v0 + 488, v0 + 520);
    if (*(v0 + 544))
    {
      sub_22B936C98((v0 + 520), (v0 + 968));
      v26 = *v1;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 968), 0x65747441636E7973, 0xEC0000007374706DLL, v27);
      *v1 = v26;
    }

    else
    {
      sub_22B949698(v0 + 520);
      sub_22B9EB6F0(0x65747441636E7973, 0xEC0000007374706DLL, (v0 + 552));
      sub_22B949698(v0 + 552);
    }

    sub_22B949698(v0 + 488);
    v28 = qword_28141ADC8;
    *(v0 + 1240) = qword_28141ADC8;
    if (v28)
    {
      v29 = qword_28141ADD0;
      *(v0 + 1248) = qword_28141ADD0;
      *(v0 + 1256) = *(v29 + 288);
      *(v0 + 1264) = (v29 + 288) & 0xFFFFFFFFFFFFLL | 0xAF0000000000000;
      v30 = *(v0 + 1232);
      v31 = *(v0 + 1224);

      return MEMORY[0x2822009F8](sub_22B9E8A60, v31, v30);
    }

    else
    {
      v32 = *(v0 + 1136);
      if (v32)
      {
        v33 = *(v0 + 1128);
        *(v0 + 96) = v5;
        *(v0 + 72) = v33;
        *(v0 + 80) = v32;
        sub_22B9ECC48(v0 + 72, v0 + 616);
        if (*(v0 + 640))
        {
          sub_22B936C98((v0 + 616), (v0 + 680));

          v34 = *v1;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 680), 0x64616F6C796170, 0xE700000000000000, v35);
          *v1 = v34;
        }

        else
        {

          sub_22B949698(v0 + 616);
          sub_22B9EB6F0(0x64616F6C796170, 0xE700000000000000, (v0 + 648));
          sub_22B949698(v0 + 648);
        }

        sub_22B949698(v0 + 72);
      }

      v36 = *(v0 + 1176);
      v37 = *(v0 + 1346);
      v38 = *(v0 + 1168);
      v39 = *(v0 + 1160);
      v40 = *(v0 + 1345);
      v41 = *(v0 + 1152);
      v42 = *(v0 + 1144);
      sub_22B9358B4((*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
      v43 = *(v0 + 1112);
      *(v0 + 1328) = v43;
      *(v0 + 16) = v42;
      *(v0 + 24) = v41;
      *(v0 + 32) = v40;
      *(v0 + 40) = v39;
      *(v0 + 48) = v38;
      *(v0 + 56) = v37;
      *(v0 + 64) = v36;
      v44 = swift_task_alloc();
      *(v0 + 1336) = v44;
      *v44 = v0;
      v44[1] = sub_22B9E9124;
      v45 = *(v0 + 1344);
      v46 = *(v0 + 1347);

      return sub_22B9EA8E4(v46, v43, v45, v0 + 16);
    }
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22B9E8A60()
{
  *(v0 + 1272) = (*(v0 + 1256))();
  *(v0 + 1280) = v1;

  return MEMORY[0x2822009F8](sub_22B9E8AE0, 0, 0);
}

uint64_t sub_22B9E8AE0()
{
  v1 = (v0 + 1112);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1272);
  v4 = MEMORY[0x277D837D0];
  *(v0 + 864) = MEMORY[0x277D837D0];
  *(v0 + 840) = v3;
  *(v0 + 848) = v2;
  sub_22B9ECC48(v0 + 840, v0 + 872);
  if (*(v0 + 896))
  {
    sub_22B936C98((v0 + 872), (v0 + 936));
    v5 = *(v0 + 1112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64((v0 + 936), 0x7453656369766564, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
    *(v0 + 1112) = v5;
  }

  else
  {
    sub_22B949698(v0 + 872);
    sub_22B9EB6F0(0x7453656369766564, 0xEB00000000657461, (v0 + 904));
    sub_22B949698(v0 + 904);
  }

  sub_22B949698(v0 + 840);
  v7 = qword_28141ADC8;
  *(v0 + 1288) = qword_28141ADC8;
  if (v7)
  {
    v8 = qword_28141ADD0;
    *(v0 + 1296) = qword_28141ADD0;
    *(v0 + 1304) = *(v8 + 224);
    *(v0 + 1312) = (v8 + 224) & 0xFFFFFFFFFFFFLL | 0x1DF5000000000000;
    v9 = *(v0 + 1232);
    v10 = *(v0 + 1224);

    return MEMORY[0x2822009F8](sub_22B9E8DF8, v10, v9);
  }

  else
  {
    v11 = *(v0 + 1136);
    if (v11)
    {
      v12 = *(v0 + 1128);
      *(v0 + 96) = v4;
      *(v0 + 72) = v12;
      *(v0 + 80) = v11;
      sub_22B9ECC48(v0 + 72, v0 + 616);
      if (*(v0 + 640))
      {
        sub_22B936C98((v0 + 616), (v0 + 680));

        v13 = *v1;
        v14 = swift_isUniquelyReferenced_nonNull_native();
        sub_22B9BAE64((v0 + 680), 0x64616F6C796170, 0xE700000000000000, v14);
        *v1 = v13;
      }

      else
      {

        sub_22B949698(v0 + 616);
        sub_22B9EB6F0(0x64616F6C796170, 0xE700000000000000, (v0 + 648));
        sub_22B949698(v0 + 648);
      }

      sub_22B949698(v0 + 72);
    }

    v15 = *(v0 + 1176);
    v16 = *(v0 + 1346);
    v17 = *(v0 + 1168);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1345);
    v20 = *(v0 + 1152);
    v21 = *(v0 + 1144);
    sub_22B9358B4((*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
    v22 = *(v0 + 1112);
    *(v0 + 1328) = v22;
    *(v0 + 16) = v21;
    *(v0 + 24) = v20;
    *(v0 + 32) = v19;
    *(v0 + 40) = v18;
    *(v0 + 48) = v17;
    *(v0 + 56) = v16;
    *(v0 + 64) = v15;
    v23 = swift_task_alloc();
    *(v0 + 1336) = v23;
    *v23 = v0;
    v23[1] = sub_22B9E9124;
    v24 = *(v0 + 1344);
    v25 = *(v0 + 1347);

    return sub_22B9EA8E4(v25, v22, v24, v0 + 16);
  }
}

uint64_t sub_22B9E8DF8()
{
  *(v0 + 1096) = (*(v0 + 1304))();
  *(v0 + 1104) = v1;
  *(v0 + 1320) = v1;

  return MEMORY[0x2822009F8](sub_22B9E8E7C, 0, 0);
}

uint64_t sub_22B9E8E7C()
{
  v1 = (v0 + 1112);
  v2 = *(v0 + 1320);
  v3 = MEMORY[0x277D837D0];
  if (v2)
  {
    v4 = *(v0 + 1096);
    *(v0 + 736) = MEMORY[0x277D837D0];
    *(v0 + 712) = v4;
    *(v0 + 720) = v2;
    sub_22B9ECC48(v0 + 712, v0 + 744);
    if (*(v0 + 768))
    {
      sub_22B936C98((v0 + 744), (v0 + 808));
      v5 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 808), 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
      *v1 = v5;
    }

    else
    {
      sub_22B949698(v0 + 744);
      sub_22B9EB6F0(0x437972746E756F63, 0xEB0000000065646FLL, (v0 + 776));
      sub_22B949698(v0 + 776);
    }

    sub_22B949698(v0 + 712);
  }

  v7 = *(v0 + 1136);
  if (v7)
  {
    v8 = *(v0 + 1128);
    *(v0 + 96) = v3;
    *(v0 + 72) = v8;
    *(v0 + 80) = v7;
    sub_22B9ECC48(v0 + 72, v0 + 616);
    if (*(v0 + 640))
    {
      sub_22B936C98((v0 + 616), (v0 + 680));

      v9 = *v1;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 680), 0x64616F6C796170, 0xE700000000000000, v10);
      *v1 = v9;
    }

    else
    {

      sub_22B949698(v0 + 616);
      sub_22B9EB6F0(0x64616F6C796170, 0xE700000000000000, (v0 + 648));
      sub_22B949698(v0 + 648);
    }

    sub_22B949698(v0 + 72);
  }

  v11 = *(v0 + 1176);
  v12 = *(v0 + 1346);
  v13 = *(v0 + 1168);
  v14 = *(v0 + 1160);
  v15 = *(v0 + 1345);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1144);
  sub_22B9358B4((*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 1120) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
  v18 = *(v0 + 1112);
  *(v0 + 1328) = v18;
  *(v0 + 16) = v17;
  *(v0 + 24) = v16;
  *(v0 + 32) = v15;
  *(v0 + 40) = v14;
  *(v0 + 48) = v13;
  *(v0 + 56) = v12;
  *(v0 + 64) = v11;
  v19 = swift_task_alloc();
  *(v0 + 1336) = v19;
  *v19 = v0;
  v19[1] = sub_22B9E9124;
  v20 = *(v0 + 1344);
  v21 = *(v0 + 1347);

  return sub_22B9EA8E4(v21, v18, v20, v0 + 16);
}

uint64_t sub_22B9E9124()
{

  return MEMORY[0x2822009F8](sub_22B92BFF4, 0, 0);
}

uint64_t sub_22B9E923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 2380) = v17;
  *(v8 + 2152) = v16;
  *(v8 + 2379) = v15;
  *(v8 + 2136) = v14;
  *(v8 + 2378) = v13;
  *(v8 + 2120) = v12;
  *(v8 + 2377) = a8;
  *(v8 + 2112) = a7;
  *(v8 + 2376) = a6;
  *(v8 + 2104) = a3;
  *(v8 + 2096) = a1;
  sub_22BA1003C();
  *(v8 + 2160) = swift_task_alloc();
  v9 = sub_22BA0FD8C();
  *(v8 + 2168) = v9;
  *(v8 + 2176) = *(v9 - 8);
  *(v8 + 2184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9E9374, 0, 0);
}

uint64_t sub_22B9E9374()
{
  v1 = v0[262];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[274] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  sub_22B9358B4((v1 + v2), *(v1 + v2 + 24));
  if ((sub_22BA08808() & 1) != 0 || (sub_22B92DA70(1, 0)) && (v3 = qword_28141ADC8, v0[275] = qword_28141ADC8, v3))
  {
    v4 = qword_28141ADD0;
    v0[276] = qword_28141ADD0;
    v0[277] = *(v4 + 296);
    v0[278] = (v4 + 296) & 0xFFFFFFFFFFFFLL | 0xDDD000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v6 = sub_22BA1029C();
    v0[279] = v6;
    v0[280] = v5;

    return MEMORY[0x2822009F8](sub_22B9E94E0, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B9E94E0()
{
  *(v0 + 2381) = (*(v0 + 2216))() & 1;

  return MEMORY[0x2822009F8](sub_22B9E9560, 0, 0);
}

uint64_t sub_22B9E9560()
{
  if (*(v0 + 2381) == 1)
  {
    v1 = (v0 + 2088);
    v2 = *(v0 + 2380);
    v3 = sub_22B9ECB18();
    *(v0 + 2088) = v3;
    v4 = sub_22B9EB0F4(v2);
    v5 = MEMORY[0x277D837D0];
    *(v0 + 1336) = MEMORY[0x277D837D0];
    *(v0 + 1312) = v4;
    *(v0 + 1320) = v6;
    sub_22B9ECC48(v0 + 1312, v0 + 1280);
    if (*(v0 + 1304))
    {
      sub_22B936C98((v0 + 1280), (v0 + 512));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 512), 0x6D614E70756F7267, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      *v1 = v3;
    }

    else
    {
      sub_22B949698(v0 + 1280);
      sub_22B9EB6F0(0x6D614E70756F7267, 0xE900000000000065, (v0 + 1248));
      sub_22B949698(v0 + 1248);
    }

    sub_22B949698(v0 + 1312);
    v10 = sub_22BA1039C();
    v11 = sub_22B937ED8();
    *(v0 + 1240) = v11;
    *(v0 + 1216) = v10;
    sub_22B9ECC48(v0 + 1216, v0 + 1152);
    if (*(v0 + 1176))
    {
      sub_22B936C98((v0 + 1152), (v0 + 1696));
      v12 = *v1;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1696), 0x65747441636E7973, 0xEC0000007374706DLL, v13);
      *v1 = v12;
    }

    else
    {
      sub_22B949698(v0 + 1152);
      sub_22B9EB6F0(0x65747441636E7973, 0xEC0000007374706DLL, (v0 + 2016));
      sub_22B949698(v0 + 2016);
    }

    v14 = *(v0 + 2376);
    sub_22B949698(v0 + 1216);
    v15 = v14 >> 6;
    if (v14 > 0x3F)
    {
      v16 = v0 + 576;
      v17 = sub_22BA1070C();
      *(v0 + 600) = v11;
      *(v0 + 576) = v17;
      sub_22B9ECC48(v0 + 576, v0 + 608);
      if (*(v0 + 632))
      {
        sub_22B936C98((v0 + 608), (v0 + 1888));
        v18 = *v1;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v18;
        v20 = (v0 + 1888);
LABEL_18:
        sub_22B9BAE64(v20, 0x63637553636E7973, 0xEB00000000737365, v19);
        *v1 = v47;
LABEL_22:
        sub_22B949698(v16);
        if (v15)
        {
          if (v15 == 1)
          {
            v24 = 0xE800000000000000;
            v25 = 0x6465727265666564;
          }

          else
          {
            v24 = 0xEB0000000064656CLL;
            v25 = 0x7564656863736572;
          }
        }

        else
        {
          v24 = 0xE800000000000000;
          v25 = 0x64656873696E6966;
        }

        *(v0 + 696) = v5;
        *(v0 + 672) = v25;
        *(v0 + 680) = v24;
        sub_22B9ECC48(v0 + 672, v0 + 704);
        if (*(v0 + 728))
        {
          sub_22B936C98((v0 + 704), (v0 + 1856));
          v26 = *v1;
          v27 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1856), 0x74617453636E7973, 0xEA00000000007375, v27);
          *v1 = v26;
        }

        else
        {
          sub_22B949698(v0 + 704);
          sub_22B9EB6F0(0x74617453636E7973, 0xEA00000000007375, (v0 + 736));
          sub_22B949698(v0 + 736);
        }

        sub_22B949698(v0 + 672);
        sub_22BA0FD6C();
        sub_22BA0FCEC();
        v28 = sub_22BA1036C();
        *(v0 + 792) = v11;
        *(v0 + 768) = v28;
        sub_22B9ECC48(v0 + 768, v0 + 800);
        if (*(v0 + 824))
        {
          sub_22B936C98((v0 + 800), (v0 + 1824));
          v29 = *v1;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1824), 0x61727544636E7973, 0xEC0000006E6F6974, v30);
          *v1 = v29;
        }

        else
        {
          sub_22B949698(v0 + 800);
          sub_22B9EB6F0(0x61727544636E7973, 0xEC0000006E6F6974, (v0 + 832));
          sub_22B949698(v0 + 832);
        }

        sub_22B949698(v0 + 768);
        v31 = sub_22BA0FD9C();
        *(v0 + 888) = v5;
        *(v0 + 864) = v31;
        *(v0 + 872) = v32;
        sub_22B9ECC48(v0 + 864, v0 + 896);
        if (*(v0 + 920))
        {
          sub_22B936C98((v0 + 896), (v0 + 1792));
          v33 = *v1;
          v34 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1792), 0x73736553636E7973, 0xED000044496E6F69, v34);
          *v1 = v33;
        }

        else
        {
          sub_22B949698(v0 + 896);
          sub_22B9EB6F0(0x73736553636E7973, 0xED000044496E6F69, (v0 + 928));
          sub_22B949698(v0 + 928);
        }

        v35 = (*(v0 + 2096) + *(v0 + 2192));
        sub_22B949698(v0 + 864);
        v36 = sub_22B9358B4(v35, v35[3]);
        v37 = *(*v36 + 32);
        v38 = *(*v36 + 40);
        *(v0 + 984) = v5;
        *(v0 + 960) = v37;
        *(v0 + 968) = v38;
        sub_22B9ECC48(v0 + 960, v0 + 992);
        if (*(v0 + 1016))
        {
          sub_22B936C98((v0 + 992), (v0 + 1760));

          v39 = *v1;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1760), 0x4449656369766564, 0xE800000000000000, v40);
          *v1 = v39;
        }

        else
        {

          sub_22B949698(v0 + 992);
          sub_22B9EB6F0(0x4449656369766564, 0xE800000000000000, (v0 + 1024));
          sub_22B949698(v0 + 1024);
        }

        v41 = *(v0 + 2096);
        sub_22B949698(v0 + 960);
        sub_22B9358B4((v41 + 16), *(v41 + 40));
        v42 = sub_22BA1039C();
        *(v0 + 1080) = v11;
        *(v0 + 1056) = v42;
        sub_22B9ECC48(v0 + 1056, v0 + 1088);
        if (*(v0 + 1112))
        {
          sub_22B936C98((v0 + 1088), (v0 + 1728));
          v43 = *v1;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          sub_22B9BAE64((v0 + 1728), 0x65707954636E7973, 0xE800000000000000, v44);
          *v1 = v43;
        }

        else
        {
          sub_22B949698(v0 + 1088);
          sub_22B9EB6F0(0x65707954636E7973, 0xE800000000000000, (v0 + 1120));
          sub_22B949698(v0 + 1120);
        }

        v45 = *(v0 + 2096);
        sub_22B949698(v0 + 1056);
        v46 = *(v45 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
        *(v0 + 2248) = v46;

        return MEMORY[0x2822009F8](sub_22B9E9DB8, v46, 0);
      }

      sub_22B949698(v0 + 608);
      sub_22B9EB6F0(0x63637553636E7973, 0xEB00000000737365, (v0 + 640));
      v23 = v0 + 640;
    }

    else
    {
      v16 = v0 + 1920;
      if (*(v0 + 2376))
      {
        sub_22BA10C6C();
      }

      v21 = sub_22BA1070C();
      *(v0 + 1944) = v11;
      *(v0 + 1920) = v21;
      sub_22B9ECC48(v0 + 1920, v0 + 1952);
      if (*(v0 + 1976))
      {
        sub_22B936C98((v0 + 1952), (v0 + 544));
        v22 = *v1;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v22;
        v20 = (v0 + 544);
        goto LABEL_18;
      }

      sub_22B949698(v0 + 1952);
      sub_22B9EB6F0(0x63637553636E7973, 0xEB00000000737365, (v0 + 1984));
      v23 = v0 + 1984;
    }

    sub_22B949698(v23);
    goto LABEL_22;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B9E9DB8()
{
  if (qword_281416A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2248);
  swift_beginAccess();
  v2 = *(v1 + 128);
  *(v0 + 16) = *(v1 + 112);
  *(v0 + 32) = v2;
  v3 = *(v1 + 144);
  v4 = *(v1 + 160);
  v5 = *(v1 + 176);
  *(v0 + 96) = *(v1 + 192);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v7 = *(v1 + 160);
  v6 = *(v1 + 176);
  v8 = *(v1 + 144);
  *(v0 + 448) = *(v1 + 192);
  *(v0 + 416) = v7;
  *(v0 + 432) = v6;
  *(v0 + 400) = v8;
  v9 = *(v1 + 128);
  *(v0 + 368) = *(v1 + 112);
  *(v0 + 384) = v9;
  sub_22B964698(v0 + 16, v0 + 280);
  sub_22B9BF828();
  v10 = sub_22BA0F99C();
  v11 = *(v0 + 416);
  *(v0 + 136) = *(v0 + 400);
  *(v0 + 152) = v11;
  *(v0 + 168) = *(v0 + 432);
  *(v0 + 184) = *(v0 + 448);
  v12 = *(v0 + 384);
  *(v0 + 104) = *(v0 + 368);
  *(v0 + 120) = v12;
  v13 = v10;
  v15 = v14;
  sub_22B9646D0(v0 + 104);
  sub_22BA1002C();
  v16 = sub_22BA1000C();
  v18 = v17;
  sub_22B9359BC(v13, v15);
  if (!v18)
  {
    v18 = 0x800000022BA1DF60;
    v16 = 0xD00000000000001ALL;
  }

  *(v0 + 2264) = v18;
  *(v0 + 2256) = v16;

  return MEMORY[0x2822009F8](sub_22B9E9FA4, 0, 0);
}

uint64_t sub_22B9E9FA4()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  *(v0 + 1208) = MEMORY[0x277D837D0];
  *(v0 + 1184) = v2;
  *(v0 + 1192) = v1;
  sub_22B9ECC48(v0 + 1184, v0 + 1344);
  if (*(v0 + 1368))
  {
    sub_22B936C98((v0 + 1344), (v0 + 1664));
    v3 = *(v0 + 2088);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64((v0 + 1664), 0x6E756F43636E7973, 0xEA00000000007374, isUniquelyReferenced_nonNull_native);
    *(v0 + 2088) = v3;
  }

  else
  {
    sub_22B949698(v0 + 1344);
    sub_22B9EB6F0(0x6E756F43636E7973, 0xEA00000000007374, (v0 + 1376));
    sub_22B949698(v0 + 1376);
  }

  sub_22B949698(v0 + 1184);
  v5 = qword_28141ADC8;
  *(v0 + 2272) = qword_28141ADC8;
  if (v5)
  {
    v6 = qword_28141ADD0;
    *(v0 + 2280) = qword_28141ADD0;
    *(v0 + 2288) = *(v6 + 288);
    *(v0 + 2296) = (v6 + 288) & 0xFFFFFFFFFFFFLL | 0xAF0000000000000;
    v7 = *(v0 + 2240);
    v8 = *(v0 + 2232);

    return MEMORY[0x2822009F8](sub_22B9EA1FC, v8, v7);
  }

  else
  {
    v9 = *(v0 + 2152);
    v10 = *(v0 + 2379);
    v11 = *(v0 + 2144);
    v12 = *(v0 + 2136);
    v13 = *(v0 + 2378);
    v14 = *(v0 + 2128);
    v15 = *(v0 + 2120);
    sub_22B9358B4((*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
    v16 = *(v0 + 2088);
    *(v0 + 2360) = v16;
    *(v0 + 456) = v15;
    *(v0 + 464) = v14;
    *(v0 + 472) = v13;
    *(v0 + 480) = v12;
    *(v0 + 488) = v11;
    *(v0 + 496) = v10;
    *(v0 + 504) = v9;
    v17 = swift_task_alloc();
    *(v0 + 2368) = v17;
    *v17 = v0;
    v17[1] = sub_22B9EA744;
    v18 = *(v0 + 2377);
    v19 = *(v0 + 2380);

    return sub_22B9EA8E4(v19, v16, v18, v0 + 456);
  }
}

uint64_t sub_22B9EA1FC()
{
  *(v0 + 2304) = (*(v0 + 2288))();
  *(v0 + 2312) = v1;

  return MEMORY[0x2822009F8](sub_22B9EA27C, 0, 0);
}

uint64_t sub_22B9EA27C()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2304);
  *(v0 + 1560) = MEMORY[0x277D837D0];
  *(v0 + 1536) = v2;
  *(v0 + 1544) = v1;
  sub_22B9ECC48(v0 + 1536, v0 + 1568);
  if (*(v0 + 1592))
  {
    sub_22B936C98((v0 + 1568), (v0 + 1632));
    v3 = *(v0 + 2088);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22B9BAE64((v0 + 1632), 0x7453656369766564, 0xEB00000000657461, isUniquelyReferenced_nonNull_native);
    *(v0 + 2088) = v3;
  }

  else
  {
    sub_22B949698(v0 + 1568);
    sub_22B9EB6F0(0x7453656369766564, 0xEB00000000657461, (v0 + 1600));
    sub_22B949698(v0 + 1600);
  }

  sub_22B949698(v0 + 1536);
  v5 = qword_28141ADC8;
  *(v0 + 2320) = qword_28141ADC8;
  if (v5)
  {
    v6 = qword_28141ADD0;
    *(v0 + 2328) = qword_28141ADD0;
    *(v0 + 2336) = *(v6 + 224);
    *(v0 + 2344) = (v6 + 224) & 0xFFFFFFFFFFFFLL | 0x1DF5000000000000;
    v7 = *(v0 + 2240);
    v8 = *(v0 + 2232);

    return MEMORY[0x2822009F8](sub_22B9EA4D4, v8, v7);
  }

  else
  {
    v9 = *(v0 + 2152);
    v10 = *(v0 + 2379);
    v11 = *(v0 + 2144);
    v12 = *(v0 + 2136);
    v13 = *(v0 + 2378);
    v14 = *(v0 + 2128);
    v15 = *(v0 + 2120);
    sub_22B9358B4((*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
    v16 = *(v0 + 2088);
    *(v0 + 2360) = v16;
    *(v0 + 456) = v15;
    *(v0 + 464) = v14;
    *(v0 + 472) = v13;
    *(v0 + 480) = v12;
    *(v0 + 488) = v11;
    *(v0 + 496) = v10;
    *(v0 + 504) = v9;
    v17 = swift_task_alloc();
    *(v0 + 2368) = v17;
    *v17 = v0;
    v17[1] = sub_22B9EA744;
    v18 = *(v0 + 2377);
    v19 = *(v0 + 2380);

    return sub_22B9EA8E4(v19, v16, v18, v0 + 456);
  }
}

uint64_t sub_22B9EA4D4()
{
  *(v0 + 2072) = (*(v0 + 2336))();
  *(v0 + 2080) = v1;
  *(v0 + 2352) = v1;

  return MEMORY[0x2822009F8](sub_22B9EA558, 0, 0);
}

uint64_t sub_22B9EA558()
{
  v1 = *(v0 + 2352);
  if (v1)
  {
    v2 = (v0 + 2088);
    v3 = *(v0 + 2072);
    *(v0 + 1432) = MEMORY[0x277D837D0];
    *(v0 + 1408) = v3;
    *(v0 + 1416) = v1;
    sub_22B9ECC48(v0 + 1408, v0 + 1440);
    if (*(v0 + 1464))
    {
      sub_22B936C98((v0 + 1440), (v0 + 1504));
      v4 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_22B9BAE64((v0 + 1504), 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
      *v2 = v4;
    }

    else
    {
      sub_22B949698(v0 + 1440);
      sub_22B9EB6F0(0x437972746E756F63, 0xEB0000000065646FLL, (v0 + 1472));
      sub_22B949698(v0 + 1472);
    }

    sub_22B949698(v0 + 1408);
  }

  v6 = *(v0 + 2152);
  v7 = *(v0 + 2379);
  v8 = *(v0 + 2144);
  v9 = *(v0 + 2136);
  v10 = *(v0 + 2378);
  v11 = *(v0 + 2128);
  v12 = *(v0 + 2120);
  sub_22B9358B4((*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService), *(*(v0 + 2096) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService + 24));
  v13 = *(v0 + 2088);
  *(v0 + 2360) = v13;
  *(v0 + 456) = v12;
  *(v0 + 464) = v11;
  *(v0 + 472) = v10;
  *(v0 + 480) = v9;
  *(v0 + 488) = v8;
  *(v0 + 496) = v7;
  *(v0 + 504) = v6;
  v14 = swift_task_alloc();
  *(v0 + 2368) = v14;
  *v14 = v0;
  v14[1] = sub_22B9EA744;
  v15 = *(v0 + 2377);
  v16 = *(v0 + 2380);

  return sub_22B9EA8E4(v16, v13, v15, v0 + 456);
}

uint64_t sub_22B9EA744()
{

  return MEMORY[0x2822009F8](sub_22B9EA85C, 0, 0);
}

uint64_t sub_22B9EA85C()
{
  (*(v0[272] + 8))(v0[273], v0[271]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B9EA8E4(char a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 105) = a3;
  *(v5 + 16) = a2;
  *(v5 + 104) = a1;
  *(v5 + 40) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22B9EA960, 0, 0);
}

uint64_t sub_22B9EA960()
{
  v20 = v0;
  v1 = qword_28141ADC8;
  v0[6] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[7] = qword_28141ADD0;
    v0[8] = *(v2 + 296);
    v0[9] = (v2 + 296) & 0xFFFFFFFFFFFFLL | 0xDDD000000000000;
    if (qword_281416450 != -1)
    {
      swift_once();
    }

    sub_22BA102EC();
    v4 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B9EABF8, v4, v3);
  }

  else
  {
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141ACF8);
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315650;
      v11 = sub_22BA1091C();
      v13 = sub_22B99153C(v11, v12, &v19);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_22BA1091C();
      v16 = sub_22B99153C(v14, v15, &v19);

      *(v9 + 14) = v16;
      *(v9 + 22) = 2048;
      *(v9 + 24) = *(v8 + 48);
      _os_log_impl(&dword_22B92A000, v6, v7, "Tried reporting to RTC but RTC is disabled [%s:%s:%lu]", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v10, -1, -1);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22B9EABF8()
{
  *(v0 + 106) = (*(v0 + 64))() & 1;

  return MEMORY[0x2822009F8](sub_22B9EAC70, 0, 0);
}

uint64_t sub_22B9EAC70()
{
  v33 = v0;
  if (*(v0 + 106) == 1)
  {
    v28 = *(v0 + 105);
    v1 = *(v0 + 24);
    v30 = *(v0 + 16);
    v31 = *(v0 + 40);
    v2 = 2;
    if (*(v0 + 104) - 88 < 9)
    {
      v2 = 3;
    }

    v29 = v2;
    v3 = *v1;
    v4 = v1[1];
    v5 = *(v1 + 16);
    v6 = v1[3];
    v7 = v1[4];
    v8 = *(v1 + 40);
    v9 = v1[6];
    v10 = swift_allocObject();
    *(v0 + 80) = v10;
    swift_unknownObjectWeakInit();
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v28;
    *(v11 + 32) = v3;
    *(v11 + 40) = v4;
    *(v11 + 48) = v5;
    *(v11 + 56) = v6;
    *(v11 + 64) = v7;
    *(v11 + 72) = v8;
    *(v11 + 80) = v9;
    *(v11 + 88) = v30;
    *(v11 + 96) = v29;
    *(v11 + 104) = v31;
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_22B9EAFC0;
    v13 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v12, 0, 0, 0xD000000000000041, 0x800000022BA1EAA0, sub_22B9ECCB8, v11, v13);
  }

  else
  {
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141ACF8);
    v15 = sub_22BA0FEDC();
    v16 = sub_22BA1044C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 24);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315650;
      v20 = sub_22BA1091C();
      v22 = sub_22B99153C(v20, v21, &v32);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_22BA1091C();
      v25 = sub_22B99153C(v23, v24, &v32);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2048;
      *(v18 + 24) = *(v17 + 48);
      _os_log_impl(&dword_22B92A000, v15, v16, "Tried reporting to RTC but RTC is disabled [%s:%s:%lu]", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_22B9EAFC0()
{

  return MEMORY[0x2822009F8](sub_22B92BFF4, 0, 0);
}

unint64_t sub_22B9EB0F4(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 19:
    case 74:
    case 96:
      result = 0xD000000000000018;
      break;
    case 2:
    case 10:
    case 11:
    case 18:
    case 37:
    case 51:
    case 53:
    case 63:
    case 72:
    case 91:
    case 97:
      result = 0xD000000000000015;
      break;
    case 3:
    case 4:
    case 7:
    case 8:
    case 30:
    case 44:
    case 57:
    case 67:
    case 73:
    case 83:
    case 84:
    case 88:
      result = 0xD000000000000016;
      break;
    case 5:
    case 9:
    case 25:
    case 29:
    case 43:
    case 52:
    case 62:
    case 85:
      result = 0xD000000000000014;
      break;
    case 6:
    case 27:
    case 36:
    case 50:
    case 86:
    case 98:
      result = 0xD00000000000001ELL;
      break;
    case 12:
    case 15:
    case 17:
    case 28:
    case 42:
    case 93:
      result = 0xD000000000000013;
      break;
    case 13:
    case 24:
    case 92:
      result = 0xD00000000000001DLL;
      break;
    case 14:
    case 75:
      result = 0xD00000000000001BLL;
      break;
    case 16:
    case 41:
    case 82:
      result = 0xD000000000000012;
      break;
    case 20:
    case 26:
    case 35:
    case 49:
    case 81:
      result = 0xD000000000000020;
      break;
    case 21:
    case 32:
    case 38:
    case 46:
    case 60:
    case 70:
      result = 0xD000000000000021;
      break;
    case 22:
      result = 0xD000000000000029;
      break;
    case 23:
    case 39:
    case 61:
    case 71:
    case 94:
      result = 0xD00000000000001FLL;
      break;
    case 31:
    case 45:
    case 95:
      result = 0xD000000000000019;
      break;
    case 33:
    case 47:
    case 56:
    case 66:
    case 80:
      result = 0xD000000000000022;
      break;
    case 34:
    case 48:
      result = 0xD00000000000002ALL;
      break;
    case 40:
      result = 0xD000000000000011;
      break;
    case 54:
    case 64:
    case 77:
    case 89:
    case 90:
      result = 0xD000000000000017;
      break;
    case 55:
    case 65:
      result = 0xD00000000000001ALL;
      break;
    case 58:
    case 68:
    case 76:
      result = 0xD000000000000023;
      break;
    case 59:
    case 69:
      result = 0xD00000000000002BLL;
      break;
    case 78:
      result = 0xD000000000000024;
      break;
    case 79:
      result = 0xD00000000000002CLL;
      break;
    case 87:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

double sub_22B9EB6F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22B990A58(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B9EBF40();
      v10 = v12;
    }

    sub_22B936C98((*(v10 + 56) + 32 * v8), a3);
    sub_22B9EB794(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22B9EB794(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22BA107DC() + 1) & ~v5;
    do
    {
      sub_22BA10D3C();

      sub_22BA1008C();
      v10 = sub_22BA10D6C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22B9EB944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22BA107DC() + 1) & ~v5;
    do
    {
      sub_22BA10D3C();

      sub_22BA1008C();
      v9 = sub_22BA10D6C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22B9EBAF4()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D4BC0, &qword_22BA18560);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

id sub_22B9EBC5C()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5968, &unk_22BA19760);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        result = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_22B9EBDD0()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D57A0, &qword_22BA18568);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_22B9EBF40()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22B936B20(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22B936C98(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_22B9EC0E4()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5990, &qword_22BA197A0);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        LOBYTE(v22) = *(v22 + 40);
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;
        *(v29 + 40) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void *sub_22B9EC284()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D5790, &unk_22BA19790);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_22B9EC3D4()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5998, &qword_22BA197A8);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22B9EC530()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_22B958068(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_22B936B20(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_22B936C98(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22B9EC6D4()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D5970, &unk_22BA19770);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_22B9EC830()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5808, qword_22BA18600);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_22B9EC9A8()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D5980, &unk_22BA19780);
  v2 = *v0;
  v3 = sub_22BA10A6C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

unint64_t sub_22B9ECB18()
{
  if (qword_28141ADC8)
  {
    result = (*(qword_28141ADD0 + 304))();
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141ACF8);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1044C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B92A000, v2, v3, "Encountered error accessing DaemonCoreBridge when grabbing initial sync state.", v4, 2u);
      MEMORY[0x23189ADD0](v4, -1, -1);
    }
  }

  v5 = MEMORY[0x277D84F90];

  return sub_22B9BBA8C(v5);
}

uint64_t sub_22B9ECC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B9ECD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_22B9680E0(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_22BA107CC();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v27 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = v11[1];
    v28 = *v11;
    v13 = *(*(a1 + 56) + 8 * v6);
    v14 = *(v29 + 16);
    v15 = *(v29 + 24);

    result = v13;
    if (v14 >= v15 >> 1)
    {
      v24 = result;
      sub_22B9680E0((v15 > 1), v14 + 1, 1);
      result = v24;
    }

    *(v29 + 16) = v14 + 1;
    v16 = v29 + 32 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v28;
    *(v16 + 48) = v12;
    *(v16 + 56) = 0;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v26;
    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22B951A48(v6, v26, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22B951A48(v6, v26, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v9;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B9ECFDC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_22BA102EC();
  v3[7] = sub_22BA102DC();

  return MEMORY[0x2822009F8](sub_22B9ED094, v2, 0);
}

uint64_t sub_22B9ED094()
{
  v0[8] = *(v0[5] + 112);
  v1 = sub_22BA1029C();
  v0[9] = v1;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_22B9ED144, v1, v2);
}

uint64_t sub_22B9ED144()
{
  *(v0 + 16) = 0;
  v1 = [*(v0 + 64) batchOfRecordsToWriteWithFilter:*(v0 + 24) limit:*(v0 + 32) error:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 40);
    sub_22B951A54(0, &qword_281414A30, 0x277CBC5A0);
    *(v0 + 88) = sub_22BA0FF6C();
    v5 = v2;

    return MEMORY[0x2822009F8](sub_22B9ED3CC, v4, 0);
  }

  else
  {
    v6 = v2;

    v7 = sub_22BA0FB6C();

    swift_willThrow();
    v8 = sub_22BA0FB5C();
    sub_22B951A54(0, &qword_281414A18, 0x277D82BB8);
    if (qword_281414A90 != -1)
    {
      swift_once();
    }

    if (sub_22BA1072C())
    {
      v9 = sub_22B93769C(MEMORY[0x277D84F90]);
      v11 = v10;

      v12 = *(v0 + 8);

      return v12(v9, v11);
    }

    else
    {
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }
  }
}

uint64_t sub_22B9ED3CC()
{
  sub_22B9EEB84(v0[11]);
  v1 = v0[9];
  v2 = v0[10];

  return MEMORY[0x2822009F8](sub_22B9ED460, v1, v2);
}

uint64_t sub_22B9ED460()
{
  v1 = *(v0 + 88);

  v2 = sub_22B9ECD7C(v1);

  v3 = sub_22B93769C(v2);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_22B9ED51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B9ED548, v5, 0);
}

uint64_t sub_22B9ED548()
{
  v25 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 40);
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
      v2 = *(v0 + 40);
    }

    v3 = *(v0 + 32);
    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    v5 = v3;
    sub_22B930C44(v2);
    swift_unknownObjectRetain();
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();

    sub_22B930C58(v2);
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 32);
      v8 = *(v0 + 40);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v10 = 138412802;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2112;
      v13 = v9;
      sub_22B930C44(v8);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      *(v10 + 22) = 2080;
      sub_22BA0FDCC();
      sub_22B944034();
      v15 = sub_22BA10C1C();
      v17 = sub_22B99153C(v15, v16, &v24);

      *(v10 + 24) = v17;
      _os_log_impl(&dword_22B92A000, v6, v7, "Write Sync failed to save record to CK %@ %@ %s", v10, 0x20u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v11, -1, -1);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 72) = v18;
    *v18 = v0;
    v18[1] = sub_22B9ED910;
    v19 = *(v0 + 32);
    v20 = *(v0 + 16);

    return sub_22B9EDA08(v19, v1, v20);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 48) + 112);
    sub_22BA102EC();
    *(v0 + 64) = sub_22BA102DC();
    v23 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B9ED894, v23, v22);
  }
}

uint64_t sub_22B9ED894()
{
  v1 = v0[7];
  v2 = v0[5];

  [v1 recordUpdateSucceededWithRecord_];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B9ED910()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B9EDA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_22B9EDA2C, v3, 0);
}

uint64_t sub_22B9EDA2C()
{
  v141 = v0;
  v1 = *(*sub_22B9358B4((v0[8] + 16), *(v0[8] + 40)) + 24);
  v0[10] = v1;
  swift_unknownObjectRetain();
  v2 = sub_22BA0FB5C();
  v3 = [v1 wasBatchFailure_];

  if (v3)
  {
    v4 = *(v0[9] + 128);
    if (*(v4 + 16))
    {
      v5 = v0[6];

      v6 = sub_22B990B14(v5);
      if (v7)
      {
        v8 = (*(v4 + 56) + 16 * v6);
        v10 = *v8;
        v9 = v8[1];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v11 = v0[6];
        v12 = sub_22BA0FEFC();
        sub_22B936CA8(v12, qword_28141AD40);

        v13 = v11;
        v14 = sub_22BA0FEDC();
        v15 = sub_22BA1046C();

        if (!os_log_type_enabled(v14, v15))
        {

          swift_unknownObjectRelease();

LABEL_55:
          v125 = v0[1];

          return v125();
        }

        v16 = v0[6];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v140 = v18;
        *v17 = 136315394;
        v19 = sub_22B99153C(v10, v9, &v140);

        *(v17 + 4) = v19;
        *(v17 + 12) = 2080;
        v20 = [v16 zoneID];
        v21 = [v20 zoneName];

        v22 = sub_22BA0FFFC();
        v24 = v23;

        v25 = sub_22B99153C(v22, v24, &v140);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_22B92A000, v14, v15, "Record %s was in a batch that failed, and so wasn't written to %s. Ignoring to retry on next batch.", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v18, -1, -1);
        v26 = v17;
        goto LABEL_53;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v78 = v0[6];
    v79 = sub_22BA0FEFC();
    sub_22B936CA8(v79, qword_28141AD40);
    v80 = v78;
    v14 = sub_22BA0FEDC();
    v81 = sub_22BA1044C();

    if (!os_log_type_enabled(v14, v81))
    {
      goto LABEL_54;
    }

    v82 = v0[6];
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v140 = v84;
    *v83 = 136315138;
    v85 = [v82 recordName];
    v86 = sub_22BA0FFFC();
    v88 = v87;

    v89 = sub_22B99153C(v86, v88, &v140);

    *(v83 + 4) = v89;
    v90 = "Failed to find %s in batch map for a guid, but we're ignoring the error since it doesn't look like this record is the cause (BatchRequestFailure)";
LABEL_52:
    _os_log_impl(&dword_22B92A000, v14, v81, v90, v83, 0xCu);
    sub_22B936C4C(v84);
    MEMORY[0x23189ADD0](v84, -1, -1);
    v26 = v83;
LABEL_53:
    MEMORY[0x23189ADD0](v26, -1, -1);
LABEL_54:

    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v27 = sub_22BA0FB5C();
  v28 = [v1 wasRecordArchived_];

  if (v28)
  {
    v29 = *(v0[9] + 128);
    if (*(v29 + 16))
    {
      v30 = v0[6];

      v31 = sub_22B990B14(v30);
      if (v32)
      {
        v33 = (*(v29 + 56) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v36 = v0[6];
        v37 = sub_22BA0FEFC();
        sub_22B936CA8(v37, qword_28141AD40);
        v38 = v36;

        v39 = sub_22BA0FEDC();
        v40 = sub_22BA1046C();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = v0[6];
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v140 = v43;
          *v42 = 136315394;
          *(v42 + 4) = sub_22B99153C(v35, v34, &v140);
          *(v42 + 12) = 2080;
          v44 = [v41 zoneID];
          v45 = [v44 zoneName];

          v46 = sub_22BA0FFFC();
          v48 = v47;

          v49 = sub_22B99153C(v46, v48, &v140);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_22B92A000, v39, v40, "Record %s was archived already to %s, marking synced", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v43, -1, -1);
          MEMORY[0x23189ADD0](v42, -1, -1);
        }

        v0[11] = *(v0[9] + 112);
        v0[12] = sub_22BA0FFCC();

        v0[13] = sub_22BA0FB5C();
        sub_22BA102EC();
        v0[14] = sub_22BA102DC();
        v50 = sub_22BA1029C();
        v52 = v51;
        v53 = sub_22B9EE92C;
        goto LABEL_38;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v107 = v0[6];
    v108 = sub_22BA0FEFC();
    sub_22B936CA8(v108, qword_28141AD40);
    v109 = v107;
    v14 = sub_22BA0FEDC();
    v81 = sub_22BA1044C();

    if (!os_log_type_enabled(v14, v81))
    {
      goto LABEL_54;
    }

    v110 = v0[6];
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v140 = v84;
    *v83 = 136315138;
    v111 = [v110 recordName];
    v112 = sub_22BA0FFFC();
    v114 = v113;

    v115 = sub_22B99153C(v112, v114, &v140);

    *(v83 + 4) = v115;
    v90 = "Failed to find %s in batch map for guid update, when we detected it was archived!!";
    goto LABEL_52;
  }

  v54 = sub_22BA0FB5C();
  v55 = [v1 wasDuplicateRecordFound_];

  if (v55)
  {
    v56 = *(v0[9] + 128);
    if (*(v56 + 16))
    {
      v57 = v0[6];

      v58 = sub_22B990B14(v57);
      if (v59)
      {
        v60 = (*(v56 + 56) + 16 * v58);
        v62 = *v60;
        v61 = v60[1];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v63 = v0[6];
        v64 = sub_22BA0FEFC();
        sub_22B936CA8(v64, qword_28141AD40);
        v65 = v63;

        v66 = sub_22BA0FEDC();
        v67 = sub_22BA1046C();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = v0[6];
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v140 = v70;
          *v69 = 136315394;
          *(v69 + 4) = sub_22B99153C(v62, v61, &v140);
          *(v69 + 12) = 2080;
          v71 = [v68 zoneID];
          v72 = [v71 zoneName];

          v73 = sub_22BA0FFFC();
          v75 = v74;

          v76 = sub_22B99153C(v73, v75, &v140);

          *(v69 + 14) = v76;
          _os_log_impl(&dword_22B92A000, v66, v67, "Record %s was duplicated in the batch to %s", v69, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v70, -1, -1);
          MEMORY[0x23189ADD0](v69, -1, -1);
        }

        v0[15] = *(v0[9] + 112);
        v0[16] = sub_22BA0FFCC();

        v0[17] = sub_22BA0FB5C();
        sub_22BA102EC();
        v0[18] = sub_22BA102DC();
        v50 = sub_22BA1029C();
        v52 = v77;
        v53 = sub_22B9EEA34;
        goto LABEL_38;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v116 = v0[6];
    v117 = sub_22BA0FEFC();
    sub_22B936CA8(v117, qword_28141AD40);
    v118 = v116;
    v14 = sub_22BA0FEDC();
    v81 = sub_22BA1044C();

    if (!os_log_type_enabled(v14, v81))
    {
      goto LABEL_54;
    }

    v119 = v0[6];
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v140 = v84;
    *v83 = 136315138;
    v120 = [v119 recordName];
    v121 = sub_22BA0FFFC();
    v123 = v122;

    v124 = sub_22B99153C(v121, v123, &v140);

    *(v83 + 4) = v124;
    v90 = "Failed to find %s in batch map for guid update, when we detected it was in the batch more than once!";
    goto LABEL_52;
  }

  v91 = sub_22BA0FB5C();
  v92 = [v1 wasRecordSizeFailure_];

  if (v92)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v93 = v0[7];
    v94 = sub_22BA0FEFC();
    sub_22B936CA8(v94, qword_28141AD40);
    v95 = v93;
    v96 = sub_22BA0FEDC();
    v97 = sub_22BA1044C();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v140 = v99;
      *v98 = 136315138;
      swift_getErrorValue();
      v100 = sub_22B958118(v0[3], v0[4]);
      v102 = sub_22B99153C(v100, v101, &v140);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_22B92A000, v96, v97, "Record exceeded maximum byte size: %s", v98, 0xCu);
      sub_22B936C4C(v99);
      MEMORY[0x23189ADD0](v99, -1, -1);
      MEMORY[0x23189ADD0](v98, -1, -1);
    }
  }

  if (!*(*(v0[9] + 128) + 16))
  {
LABEL_59:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v127 = v0[6];
    v126 = v0[7];
    v128 = sub_22BA0FEFC();
    sub_22B936CA8(v128, qword_28141AD40);
    v129 = v127;
    v130 = v126;
    v14 = sub_22BA0FEDC();
    v131 = sub_22BA1044C();

    if (!os_log_type_enabled(v14, v131))
    {
      goto LABEL_54;
    }

    v133 = v0[6];
    v132 = v0[7];
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v134 = 138412546;
    *(v134 + 4) = v133;
    *v135 = v133;
    *(v134 + 12) = 2112;
    v136 = v133;
    v137 = v132;
    v138 = _swift_stdlib_bridgeErrorToNSError();
    *(v134 + 14) = v138;
    v135[1] = v138;
    _os_log_impl(&dword_22B92A000, v14, v131, "Could not find local guid in batchRecordIDsToGUIDs map for recordID: %@ and error: %@", v134, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v135, -1, -1);
    v26 = v134;
    goto LABEL_53;
  }

  v103 = v0[6];

  sub_22B990B14(v103);
  if ((v104 & 1) == 0)
  {

    goto LABEL_59;
  }

  v105 = v0[9];

  v0[19] = *(v105 + 112);
  v0[20] = sub_22BA0FFCC();

  v0[21] = sub_22BA0FB5C();
  sub_22BA102EC();
  v0[22] = sub_22BA102DC();
  v50 = sub_22BA1029C();
  v52 = v106;
  v53 = sub_22B9EEADC;
LABEL_38:

  return MEMORY[0x2822009F8](v53, v50, v52);
}

uint64_t sub_22B9EE92C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[6];

  [v3 recordUpdateFailedWithID:v5 localGUID:v2 error:v1];

  return MEMORY[0x2822009F8](sub_22B9EE9D4, v4, 0);
}

uint64_t sub_22B9EE9D4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B9EEA34()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[9];
  v5 = v0[6];

  [v3 recordUpdateFailedWithID:v5 localGUID:v2 error:v1];

  return MEMORY[0x2822009F8](sub_22B9EF270, v4, 0);
}

uint64_t sub_22B9EEADC()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[9];
  v5 = v0[6];

  [v3 recordUpdateFailedWithID:v5 localGUID:v2 error:v1];

  return MEMORY[0x2822009F8](sub_22B9EF270, v4, 0);
}

uint64_t sub_22B9EEB84(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  if (v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v9 >= v5)
    {

      *(v30 + 128) = v7;
    }

    v4 = *(v1 + 8 * v9);
    ++v6;
  }

  while (!v4);
  while (1)
  {
    v10 = __clz(__rbit64(v4)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = v11[1];
    v32 = *v11;
    v13 = *(*(a1 + 56) + 8 * v10);

    v14 = v13;
    v15 = [v14 recordID];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_22B990B14(v15);
    v19 = v7[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v7[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_22B9EBDD0();
        v17 = v28;
      }
    }

    else
    {
      sub_22B9D84F8(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_22B990B14(v15);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }
    }

    v4 &= v4 - 1;
    if (v23)
    {
      v8 = (v7[7] + 16 * v17);
      *v8 = v32;
      v8[1] = v12;

      v6 = v9;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7[(v17 >> 6) + 8] |= 1 << v17;
      *(v7[6] + 8 * v17) = v15;
      v25 = (v7[7] + 16 * v17);
      *v25 = v32;
      v25[1] = v12;

      v26 = v7[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_25;
      }

      v7[2] = v27;
      v6 = v9;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v9 = v6;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
  result = sub_22BA10CBC();
  __break(1u);
  return result;
}

uint64_t sub_22B9EEE24()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22B9EEE44, v2, 0);
}

uint64_t sub_22B9EEE44()
{
  v0[3] = *(v0[2] + 112);
  sub_22BA102EC();
  v0[4] = sub_22BA102DC();
  v2 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9EEEE4, v2, v1);
}

uint64_t sub_22B9EEEE4()
{
  v1 = *(v0 + 24);

  [v1 resetFetchState];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9EEF54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B9EEFFC;

  return sub_22B9ECFDC(a1, a2);
}

uint64_t sub_22B9EEFFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B9EF10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B943E68;

  return sub_22B9ED51C(a1, a2, a3, a4, a5 & 1);
}

uint64_t sub_22B9EF1D4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22B9EF1F4, v2, 0);
}

uint64_t sub_22B9EF1F4()
{
  v1 = *(v0 + 16);
  *(v1 + 128) = sub_22B9BBDF0(MEMORY[0x277D84F90]);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9EF274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B9F166C();
}

void sub_22B9EF314(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isMergeBusinessSenderIndiaEnabled];

  if (v3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1;
    v6 = [v5 destinationCallerID];
    v7 = IMCountryCodeForNumber();

    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = sub_22BA0FFFC();
    v10 = v9;

    if (v8 == 28265 && v10 == 0xE200000000000000)
    {
    }

    else
    {
      v12 = sub_22BA10C6C();

      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v13 = IMIndiaBusinessShortCodeRegex();
    if (!v13)
    {
LABEL_20:

      return;
    }

    v14 = v13;
    v15 = sub_22BA0FFFC();
    v17 = v16;

    sub_22BA108FC();

    MEMORY[0x231899730](v15, v17);
    MEMORY[0x231899730](0xD00000000000001BLL, 0x800000022BA1F9A0);
    v18 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v19 = sub_22B9F04DC(0x3B2D3B534D535ELL, 0xE700000000000000, 0);
    v20 = [v5 cloudKitChatID];
    if (!v20)
    {
LABEL_19:

      goto LABEL_20;
    }

    v21 = v20;
    v22 = sub_22BA0FFFC();
    v24 = v23;
    v25 = [v19 firstMatchInString:v21 options:0 range:{0, sub_22BA1009C()}];

    if (!v25)
    {
LABEL_18:

      goto LABEL_19;
    }

    if ([v25 numberOfRanges] < 3)
    {

      goto LABEL_18;
    }

    [v25 rangeAtIndex_];
    sub_22BA1040C();
    if (v26)
    {

      goto LABEL_20;
    }

    v27 = sub_22BA1014C();
    v31 = v30;
    if ((v27 ^ v28) < 0x4000)
    {

      goto LABEL_20;
    }

    v62[4] = 0x3B2D3B534D53;
    v62[5] = 0xE600000000000000;
    v56 = v28;
    v58 = v27;
    v62[0] = v27;
    v62[1] = v28;
    v60 = v29;
    v62[2] = v29;
    v62[3] = v30;
    sub_22B9F3E7C();
    sub_22BA100BC();
    v63 = 0x3B2D3B534D53;
    v64 = 0xE600000000000000;
    v32 = sub_22BA0FFCC();
    [v25 rangeWithName_];

    sub_22BA1040C();
    if ((v33 & 1) == 0)
    {
      v34 = sub_22BA1014C();
      v35 = MEMORY[0x2318996E0](v34);
      v37 = v36;

      MEMORY[0x231899730](v35, v37);
    }

    v38 = [v5 sender];

    if (v38)
    {

      v39 = [v38 im_stripCategoryLabel];

      v40 = sub_22BA0FFFC();
      v42 = v41;

      MEMORY[0x2318996E0](v59, v57, v60, v31);

      v43 = sub_22BA0FFCC();

      v44 = [v43 im_stripCategoryLabel];

      v45 = sub_22BA0FFFC();
      v47 = v46;

      if (v40 == v45 && v42 == v47)
      {
      }

      else
      {
        v48 = sub_22BA10C6C();

        if ((v48 & 1) == 0)
        {

          return;
        }
      }

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v49 = sub_22BA0FEFC();
      sub_22B936CA8(v49, qword_28141AD10);
      v61 = v63;

      v50 = sub_22BA0FEDC();
      v51 = sub_22BA1046C();
      v52 = v64;

      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62[0] = v54;
        *v53 = 136315394;
        v55 = sub_22B99153C(v22, v24, v62);

        *(v53 + 4) = v55;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_22B99153C(v61, v52, v62);
        _os_log_impl(&dword_22B92A000, v50, v51, "Returning Chat ID for merged business thread. Original: %s mergedChatID: %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v54, -1, -1);
        MEMORY[0x23189ADD0](v53, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_22B9EFA08(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v20 = a1;
      v8 = a2;
      v9 = [v5 threadIdentifier];
      if (!v9)
      {
        v10 = [v7 threadIdentifier];
        [v5 setThreadIdentifier_];
        v9 = v10;
      }

      v11 = objc_opt_self();
      v12 = [v11 sharedFeatureFlags];
      v13 = [v12 isEmojiTapbacksEnabled];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          v16 = v20;
          if ([v15 associatedMessageType] == 2006)
          {
            v17 = [v15 associatedMessageEmoji];
            if (!v17)
            {
              v17 = [v7 associatedMessageEmoji];
              [v15 setAssociatedMessageEmoji_];
            }

            v16 = v17;
          }
        }
      }

      if (![v7 scheduleType] && objc_msgSend(v5, sel_scheduleType))
      {
        [v5 setScheduleType_];
        [v5 setScheduleState_];
      }

      v18 = [v11 sharedFeatureFlags];
      v19 = [v18 isRCSEncryptionEnabled];

      if (v19 && ([v5 encrypted] & 1) == 0 && objc_msgSend(v7, sel_encrypted))
      {
        [v5 setEncrypted_];
      }
    }
  }
}

uint64_t sub_22B9EFCD4(void *a1)
{
  v3 = (v1 + *(type metadata accessor for MessageRecord(0) + 140));
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *v3;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_10:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v19 = sub_22BA0FEFC();
    sub_22B936CA8(v19, qword_28141AD10);
    v20 = a1;
    v21 = sub_22BA0FEDC();
    v22 = sub_22BA1042C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58[0] = v24;
      *v23 = 136315138;
      v25 = [v20 guid];

      if (!v25)
      {
        __break(1u);
        goto LABEL_29;
      }

      v26 = sub_22BA0FFFC();
      v28 = v27;

      v29 = sub_22B99153C(v26, v28, v58);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_22B92A000, v21, v22, "No parent chat ID for item: %s", v23, 0xCu);
      sub_22B936C4C(v24);
      MEMORY[0x23189ADD0](v24, -1, -1);
      MEMORY[0x23189ADD0](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v7 = sub_22BA0FEFC();
  sub_22B936CA8(v7, qword_28141AD10);
  v8 = a1;

  v9 = sub_22BA0FEDC();
  v10 = sub_22BA1042C();
  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_19;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v58[0] = v12;
  *v11 = 136315394;
  v13 = [v8 guid];
  v57 = v8;

  if (!v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = sub_22BA0FFFC();
  v16 = v15;

  v17 = sub_22B99153C(v14, v16, v58);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2080;
  *(v11 + 14) = sub_22B99153C(v5, v4, v58);
  _os_log_impl(&dword_22B92A000, v9, v10, "Item %s has parent chat ID %s", v11, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x23189ADD0](v12, -1, -1);
  MEMORY[0x23189ADD0](v11, -1, -1);

  v8 = v57;
LABEL_19:
  v58[0] = 59;
  v58[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v18);
  v56[2] = v58;

  v32 = sub_22B9F05B8(2, 1, sub_22B9F3ED0, v56, v5, v4, v31);
  v33 = *(v32 + 16);
  if (!v33)
  {

    return 0;
  }

  v34 = (v32 + 32 * v33);
  v35 = *v34;
  v36 = v34[1];
  v38 = v34[2];
  v37 = v34[3];
  swift_bridgeObjectRetain_n();

  v39 = v8;
  v40 = sub_22BA0FEDC();
  v41 = sub_22BA1042C();
  if (!os_log_type_enabled(v40, v41))
  {

    goto LABEL_25;
  }

  v57 = v35;
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v58[0] = v43;
  *v42 = 136315394;
  v44 = [v39 guid];

  if (v44)
  {
    v45 = sub_22BA0FFFC();
    v47 = v46;

    v48 = sub_22B99153C(v45, v47, v58);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;

    v49 = v57;
    v50 = MEMORY[0x2318996E0](v57, v36, v38, v37);
    v52 = v51;

    v53 = sub_22B99153C(v50, v52, v58);

    *(v42 + 14) = v53;
    v35 = v49;
    _os_log_impl(&dword_22B92A000, v40, v41, "Item %s has chat address %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v43, -1, -1);
    MEMORY[0x23189ADD0](v42, -1, -1);
LABEL_25:

    MEMORY[0x2318996E0](v35, v36, v38, v37);

    v54 = sub_22BA0FFCC();

    v55 = MEMORY[0x23189A5A0](v54);

    return ([objc_opt_self() supportsBusinessChat] & 1) == 0 && v55;
  }

LABEL_30:

  __break(1u);
  return result;
}

BOOL sub_22B9F02F8(uint64_t a1)
{
  v2 = (v1 + *(type metadata accessor for MessageRecord(0) + 140));
  v3 = v2[1];
  v6 = 1;
  if (v3)
  {
    v4 = *v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v4)
    {
      v6 = 0;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 0;
  }

  result = [v7 errorCode] != 0;
  if (!v6)
  {
    return 0;
  }

  return result;
}

void sub_22B9F038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  v7 = sub_22BA0FFCC();
  if (a2)
  {
    v8 = sub_22BA0FFCC();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();
}

uint64_t sub_22B9F0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_22BA0FFFC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6(v7, v9, a3, a4);
}

id sub_22B9F04DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22BA0FFCC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22BA0FB6C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_22B9F05B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22BA1014C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22B97F934(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22B97F934((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22BA1013C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22BA100AC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22BA100AC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22BA1014C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22B97F934(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22BA1014C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22B97F934(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22B97F934((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22BA100AC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}