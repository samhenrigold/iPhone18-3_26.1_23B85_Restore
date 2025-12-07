uint64_t sub_1A7D25748(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_1A7E22B70();

  v5 = 0xE700000000000000;
  v6 = 0x6C6C65436E6F4ELL;
  if (v3 != 1)
  {
    v6 = 7958081;
    v5 = 0xE300000000000000;
  }

  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1819043139;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v7, v8);

  v9 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1A7CCCAA4(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *a1 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    result = sub_1A7CCCAA4((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v13;
  v14 = v9 + 16 * v12;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x80000001A7EAEB10;
  *a1 = v9;
  v15 = *(v9 + 24);
  if ((v12 + 2) > (v15 >> 1))
  {
    result = sub_1A7CCCAA4((v15 > 1), v12 + 2, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 2;
  v16 = v9 + 16 * v13;
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = 0x80000001A7EAEB30;
  *a1 = v9;
  v17 = *(v4 + 16);
  if (v17)
  {
    v18 = v4 + 32;
    do
    {
      v19 = LinkEndpoint.uniqueID.getter();
      MEMORY[0x1AC561C90](v19);

      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1A7CCCAA4((v20 > 1), v21 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = 8237;
      *(v22 + 40) = 0xE200000000000000;
      v18 += 8;
      --v17;
    }

    while (v17);
    *a1 = v9;
  }

  return result;
}

uint64_t sub_1A7D25988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1A7D259CC(uint64_t *a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  return v3(v4, v5, &v7);
}

uint64_t sub_1A7D25A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7D25AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5B78, &unk_1A7E488D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D25B5C()
{
  result = qword_1EB2B5B80;
  if (!qword_1EB2B5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B80);
  }

  return result;
}

__n128 sub_1A7D25BB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A7D25BC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A7D25C0C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1A7D25C7C()
{
  result = qword_1EB2B5B88;
  if (!qword_1EB2B5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5B88);
  }

  return result;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.cli.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7463656E6E6F43;
  v4 = 0x80000001A7EAEB70;
  v5 = 0xD000000000000018;
  result = 0x656E6E6F63736944;
  if (*v1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v5 = 0x656E6E6F63736944;
    v4 = 0xEA00000000007463;
    v7 = 1;
  }

  if (*v1)
  {
    v3 = v5;
    v2 = v4;
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  *(a1 + 17) = v8;
  return result;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.interfaceName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.localRAT.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.remoteRAT.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.kind.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.ipFamily.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

unint64_t IDSLinksCompactQualityReport.MetadataMeasurement.dict.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 5);
  v18 = *(v0 + 4);
  v19 = *(v0 + 6);
  v6 = *(v0 + 7);
  v7 = *(v0 + 9);
  v20 = *(v0 + 8);
  v21 = *(v0 + 10);
  v8 = *(v0 + 11);
  v10 = *(v0 + 12);
  v9 = *(v0 + 13);
  sub_1A7CC7FFC(&qword_1EB2B5B90, &unk_1A7E47550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47510;
  *(inited + 32) = 116;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 28017;
  *(inited + 56) = 0xE200000000000000;
  v13 = MEMORY[0x1E69E6530];
  *(inited + 72) = v12;
  *(inited + 80) = 118;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v13;
  *(inited + 128) = 25705;
  *(inited + 136) = 0xE200000000000000;
  v14 = MEMORY[0x1E69E7230];
  *(inited + 144) = v1;
  *(inited + 168) = v14;
  *(inited + 176) = 6580585;
  *(inited + 184) = 0xE300000000000000;
  *(inited + 192) = v3;
  *(inited + 216) = v13;
  *(inited + 224) = 20073;
  *(inited + 232) = 0xE200000000000000;
  *(inited + 240) = v2;
  *(inited + 248) = v4;
  *(inited + 264) = v12;
  *(inited + 272) = 21100;
  *(inited + 280) = 0xE200000000000000;
  *(inited + 288) = v18;
  *(inited + 296) = v5;
  *(inited + 312) = v12;
  *(inited + 320) = 21106;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 336) = v19;
  *(inited + 344) = v6;
  *(inited + 360) = v12;
  *(inited + 368) = 107;
  *(inited + 376) = 0xE100000000000000;
  *(inited + 384) = v20;
  *(inited + 392) = v7;
  *(inited + 408) = v12;
  *(inited + 416) = 28777;
  *(inited + 424) = 0xE200000000000000;
  *(inited + 432) = v21;
  *(inited + 440) = v8;
  *(inited + 456) = v12;
  *(inited + 464) = 21603;
  *(inited + 472) = 0xE200000000000000;
  v15 = MEMORY[0x1E69E63B0];
  *(inited + 480) = v10;
  *(inited + 504) = v15;
  *(inited + 512) = 21604;
  *(inited + 520) = 0xE200000000000000;
  *(inited + 552) = v15;
  *(inited + 528) = v9;

  v16 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8, &qword_1A7E54870);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_1A7D26084(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496B6E696CLL;
    v6 = 0x6361667265746E69;
    if (a1 != 2)
    {
      v6 = 0x5441526C61636F6CLL;
    }

    if (a1)
    {
      v5 = 0x74736E496B6E696CLL;
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
    v1 = 0x796C696D61467069;
    v2 = 0x547463656E6E6F63;
    if (a1 != 7)
    {
      v2 = 0x656E6E6F63736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x415265746F6D6572;
    if (a1 != 4)
    {
      v3 = 1684957547;
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

uint64_t sub_1A7D261CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D2A95C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D26200(uint64_t a1)
{
  v2 = sub_1A7D29478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D2623C(uint64_t a1)
{
  v2 = sub_1A7D29478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5B98, &qword_1A7E47560);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = v1[1];
  v16[8] = v1[2];
  v16[9] = v7;
  v8 = v1[3];
  v16[6] = v1[4];
  v16[7] = v8;
  v9 = v1[5];
  v11 = v1[7];
  v10 = v1[8];
  v16[2] = v1[6];
  v16[3] = v11;
  v16[0] = v10;
  v12 = v1[10];
  v16[1] = v1[9];
  v16[4] = v12;
  v16[5] = v9;
  v13 = v1[11];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29478();
  sub_1A7E23260();
  v26 = 0;
  v14 = v17;
  sub_1A7E23040();
  if (!v14)
  {
    v17 = v13;
    v25 = 1;
    sub_1A7E23020();
    v24 = 2;
    sub_1A7E22FF0();
    v23 = 3;
    sub_1A7E22FF0();
    v22 = 4;
    sub_1A7E22FF0();
    v21 = 5;
    sub_1A7E22FF0();
    v20 = 6;
    sub_1A7E22FF0();
    v19 = 7;
    sub_1A7E23010();
    v18 = 8;
    sub_1A7E23010();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IDSLinksCompactQualityReport.MetadataMeasurement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5BA8, &qword_1A7E47568);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29478();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v47[0] = 0;
  v9 = sub_1A7E22F40();
  v47[0] = 1;
  v10 = sub_1A7E22F20();
  v47[0] = 2;
  v37 = sub_1A7E22EF0();
  v39 = v11;
  v47[0] = 3;
  v12 = sub_1A7E22EF0();
  v38 = v13;
  v32 = v12;
  v47[0] = 4;
  v36 = 0;
  v31 = sub_1A7E22EF0();
  v35 = v14;
  v47[0] = 5;
  v30 = sub_1A7E22EF0();
  v34 = v15;
  v47[0] = 6;
  v29 = sub_1A7E22EF0();
  v33 = v16;
  v47[0] = 7;
  sub_1A7E22F10();
  v18 = v17;
  v61 = 8;
  sub_1A7E22F10();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v40) = v9;
  *(&v40 + 1) = v10;
  *&v41 = v37;
  v21 = v39;
  *(&v41 + 1) = v39;
  *&v42 = v32;
  v22 = v38;
  *(&v42 + 1) = v38;
  *&v43 = v31;
  v23 = v35;
  *(&v43 + 1) = v35;
  *&v44 = v30;
  v24 = v34;
  *(&v44 + 1) = v34;
  *&v45 = v29;
  *(&v45 + 1) = v33;
  *&v46 = v18;
  *(&v46 + 1) = v20;
  v25 = v45;
  a2[4] = v44;
  a2[5] = v25;
  a2[6] = v46;
  v26 = v41;
  *a2 = v40;
  a2[1] = v26;
  v27 = v43;
  a2[2] = v42;
  a2[3] = v27;
  sub_1A7D294CC(&v40, v47);
  sub_1A7B0CD6C(a1);
  v47[0] = v9;
  v48 = v10;
  v49 = v37;
  v50 = v21;
  v51 = v32;
  v52 = v22;
  v53 = v31;
  v54 = v23;
  v55 = v30;
  v56 = v24;
  v57 = v29;
  v58 = v33;
  v59 = v18;
  v60 = v20;
  return sub_1A7D29504(v47);
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.intervals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.localRAT.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.remoteRAT.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.isExpensive.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.isConstrained.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

unint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.dict.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A7CC7FFC(&qword_1EB2B5B90, &unk_1A7E47550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47520;
  *(inited + 32) = 116;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 25969;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v8;
  *(inited + 80) = 118;
  v9 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v9;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v2;
  *(inited + 168) = v9;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
  *(inited + 192) = v1;
  *(inited + 216) = v10;
  *(inited + 224) = 21100;
  *(inited + 232) = 0xE200000000000000;
  v11 = sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  *(inited + 240) = v4;
  *(inited + 264) = v11;
  *(inited + 272) = 21106;
  *(inited + 280) = 0xE200000000000000;
  *(inited + 288) = v3;
  *(inited + 312) = v11;
  *(inited + 320) = 101;
  *(inited + 328) = 0xE100000000000000;
  v12 = sub_1A7CC7FFC(&qword_1EB2B5BB8, &qword_1A7E47580);
  *(inited + 336) = v6;
  *(inited + 360) = v12;
  *(inited + 368) = 99;
  *(inited + 408) = v12;
  *(inited + 376) = 0xE100000000000000;
  *(inited + 384) = v5;

  v13 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8, &qword_1A7E54870);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_1A7D26EB8()
{
  v1 = *v0;
  v2 = 0x74736E496B6E696CLL;
  v3 = 0x415265746F6D6572;
  v4 = 0x736E657078457369;
  if (v1 != 4)
  {
    v4 = 0x7274736E6F437369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61767265746E69;
  if (v1 != 1)
  {
    v5 = 0x5441526C61636F6CLL;
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

uint64_t sub_1A7D26F98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D2AC5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D26FC0(uint64_t a1)
{
  v2 = sub_1A7D29534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D26FFC(uint64_t a1)
{
  v2 = sub_1A7D29534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5BC0, &qword_1A7E47588);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v16 = v1[2];
  v17 = v7;
  v9 = v1[5];
  v14 = v1[4];
  v15 = v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29534();
  sub_1A7E23260();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_1A7E23020();
  if (!v10)
  {
    v12 = v15;
    v11 = v16;
    v20 = v17;
    v19 = 1;
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    sub_1A7D29588();
    sub_1A7E23030();
    v20 = v11;
    v19 = 2;
    sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
    sub_1A7D29604();
    sub_1A7E23030();
    v20 = v12;
    v19 = 3;
    sub_1A7E23030();
    v20 = v14;
    v19 = 4;
    sub_1A7CC7FFC(&qword_1EB2B5BB8, &qword_1A7E47580);
    sub_1A7D29680();
    sub_1A7E23030();
    v20 = v9;
    v19 = 5;
    sub_1A7E23030();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IDSLinksCompactQualityReport.ExpenseMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5BE8, &qword_1A7E47590);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29534();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v21) = 0;
    v19 = sub_1A7E22F20();
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    v20 = 1;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v18 = a2;
    v10 = v21;
    sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
    v20 = 2;
    sub_1A7D29778();
    sub_1A7E22F30();
    v17 = v6;
    v11 = v21;
    v20 = 3;
    sub_1A7E22F30();
    v12 = v21;
    sub_1A7CC7FFC(&qword_1EB2B5BB8, &qword_1A7E47580);
    v20 = 4;
    v16[1] = sub_1A7D297F4();
    sub_1A7E22F30();
    v13 = v21;
    v20 = 5;
    sub_1A7E22F30();
    (*(v17 + 8))(v8, v5);
    v14 = v21;
    v15 = v18;
    *v18 = v19;
    v15[1] = v10;
    v15[2] = v11;
    v15[3] = v12;
    v15[4] = v13;
    v15[5] = v14;

    sub_1A7B0CD6C(a1);
  }
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.intervals.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.rtts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t IDSLinksCompactQualityReport.StatsMeasurement.dict.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1A7CC7FFC(&qword_1EB2B5B90, &unk_1A7E47550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47530;
  *(inited + 32) = 116;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 29553;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = 118;
  v6 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v6;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v2;
  *(inited + 168) = v6;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v7 = sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
  *(inited + 192) = v1;
  *(inited + 216) = v7;
  *(inited + 224) = 114;
  *(inited + 264) = v7;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = v3;

  v8 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8, &qword_1A7E54870);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1A7D27918()
{
  v1 = 0x6C61767265746E69;
  if (*v0 != 1)
  {
    v1 = 1937011826;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736E496B6E696CLL;
  }
}

uint64_t sub_1A7D2797C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D2AE78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D279A4(uint64_t a1)
{
  v2 = sub_1A7D29870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D279E0(uint64_t a1)
{
  v2 = sub_1A7D29870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5C08, &qword_1A7E47598);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29870();
  sub_1A7E23260();
  LOBYTE(v15) = 0;
  sub_1A7E23020();
  if (!v2)
  {
    v9 = v12;
    v15 = v13;
    v14 = 1;
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    sub_1A7D29588();
    sub_1A7E23030();
    v15 = v9;
    v14 = 2;
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IDSLinksCompactQualityReport.StatsMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5C18, &qword_1A7E475A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29870();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v14) = 0;
    v12 = sub_1A7E22F20();
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    v13 = 1;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v10 = v14;
    v13 = 2;
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v12;
    a2[1] = v10;
    a2[2] = v11;

    sub_1A7B0CD6C(a1);
  }
}

unint64_t IDSLinksCompactQualityReport.PacketStatsMeasurement.dict.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1A7CC7FFC(&qword_1EB2B5B90, &unk_1A7E47550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47520;
  *(inited + 32) = 116;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 28785;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v8;
  *(inited + 80) = 118;
  v9 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v9;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v2;
  *(inited + 168) = v9;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
  *(inited + 192) = v1;
  *(inited + 216) = v10;
  *(inited + 224) = 29552;
  *(inited + 232) = 0xE200000000000000;
  v11 = sub_1A7CC7FFC(&qword_1EB2B5C20, &qword_1A7E475A8);
  *(inited + 240) = v4;
  *(inited + 264) = v11;
  *(inited + 272) = 29296;
  *(inited + 280) = 0xE200000000000000;
  *(inited + 288) = v3;
  *(inited + 312) = v11;
  *(inited + 320) = 29538;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 336) = v6;
  *(inited + 360) = v11;
  *(inited + 368) = 29282;
  *(inited + 408) = v11;
  *(inited + 376) = 0xE200000000000000;
  *(inited + 384) = v5;

  v12 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8, &qword_1A7E54870);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_1A7D280B0()
{
  v1 = *v0;
  v2 = 0x74736E496B6E696CLL;
  v3 = 0x527374656B636170;
  v4 = 0x6E65537365747962;
  if (v1 != 4)
  {
    v4 = 0x6365527365747962;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61767265746E69;
  if (v1 != 1)
  {
    v5 = 0x537374656B636170;
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

uint64_t sub_1A7D281A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D2AFA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D281C8(uint64_t a1)
{
  v2 = sub_1A7D298C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D28204(uint64_t a1)
{
  v2 = sub_1A7D298C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.PacketStatsMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5C28, &qword_1A7E475B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v10 = v1[5];
  v16 = v1[4];
  v17 = v9;
  v15 = v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D298C4();
  v11 = v4;
  sub_1A7E23260();
  LOBYTE(v21) = 0;
  sub_1A7E23020();
  if (!v2)
  {
    v13 = v17;
    v12 = v18;
    v21 = v19;
    v20 = 1;
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    sub_1A7D29588();
    sub_1A7E23030();
    v21 = v12;
    v20 = 2;
    sub_1A7CC7FFC(&qword_1EB2B5C20, &qword_1A7E475A8);
    sub_1A7D29918();
    sub_1A7E23030();
    v21 = v13;
    v20 = 3;
    sub_1A7E23030();
    v21 = v16;
    v20 = 4;
    sub_1A7E23030();
    v21 = v15;
    v20 = 5;
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v7, v11);
}

uint64_t IDSLinksCompactQualityReport.PacketStatsMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5C40, &qword_1A7E475B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D298C4();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v24) = 0;
    v22 = sub_1A7E22F20();
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    v23 = 1;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v10 = v24;
    v11 = sub_1A7CC7FFC(&qword_1EB2B5C20, &qword_1A7E475A8);
    v23 = 2;
    v21 = sub_1A7D29994();
    sub_1A7E22F30();
    v20 = a2;
    v12 = v24;
    v23 = 3;
    sub_1A7E22F30();
    v13 = v11;
    v14 = v24;
    v23 = 4;
    v19[1] = v13;
    sub_1A7E22F30();
    v15 = v6;
    v16 = v24;
    v23 = 5;
    sub_1A7E22F30();
    (*(v15 + 8))(v8, v5);
    v17 = v24;
    v18 = v20;
    *v20 = v22;
    v18[1] = v10;
    v18[2] = v12;
    v18[3] = v14;
    v18[4] = v16;
    v18[5] = v17;

    sub_1A7B0CD6C(a1);
  }
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.intervals.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.averageRTTs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.acksMissing.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t IDSLinksCompactQualityReport.BurstMeasurement.dict.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1A7CC7FFC(&qword_1EB2B5B90, &unk_1A7E47550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E47540;
  *(inited + 32) = 116;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 25201;
  *(inited + 56) = 0xE200000000000000;
  *(inited + 72) = v7;
  *(inited + 80) = 118;
  v8 = MEMORY[0x1E69E6530];
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 1;
  *(inited + 120) = v8;
  *(inited + 128) = 6580585;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v1;
  *(inited + 168) = v8;
  *(inited + 176) = 30313;
  *(inited + 184) = 0xE200000000000000;
  v9 = sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
  *(inited + 192) = v4;
  *(inited + 216) = v9;
  *(inited + 224) = 114;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = v3;
  *(inited + 264) = v9;
  *(inited + 272) = 6451312;
  v10 = MEMORY[0x1E69E7668];
  *(inited + 280) = 0xE300000000000000;
  *(inited + 288) = v2;
  *(inited + 312) = v10;
  *(inited + 320) = 28001;
  *(inited + 328) = 0xE200000000000000;
  *(inited + 360) = sub_1A7CC7FFC(&qword_1EB2B5C50, &qword_1A7E475C0);
  *(inited + 336) = v5;

  v11 = sub_1A7CE3C64(inited);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8, &qword_1A7E54870);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1A7D28BBC()
{
  v1 = *v0;
  v2 = 0x74736E496B6E696CLL;
  v3 = 0x6C61767265746E69;
  v4 = 0x5265676172657661;
  if (v1 != 3)
  {
    v4 = 0x7373694D736B6361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x507374656B636170;
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

uint64_t sub_1A7D28C84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7D2B1C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7D28CAC(uint64_t a1)
{
  v2 = sub_1A7D29A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D28CE8(uint64_t a1)
{
  v2 = sub_1A7D29A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5C58, &qword_1A7E475C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v17 = *(v1 + 8);
  v8 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v8;
  v14 = *(v1 + 32);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29A10();
  v9 = v4;
  sub_1A7E23260();
  LOBYTE(v19) = 0;
  sub_1A7E23020();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v15;
  v12 = v16;
  v13 = v14;
  LOBYTE(v19) = 1;
  sub_1A7E23060();
  v19 = v12;
  v18 = 2;
  sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
  sub_1A7D29588();
  sub_1A7E23030();
  v19 = v11;
  v18 = 3;
  sub_1A7E23030();
  v19 = v13;
  v18 = 4;
  sub_1A7CC7FFC(&qword_1EB2B5C50, &qword_1A7E475C0);
  sub_1A7D29A64();
  sub_1A7E23030();
  return (*(v5 + 8))(v7, v9);
}

uint64_t IDSLinksCompactQualityReport.BurstMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B5C70, &qword_1A7E475D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D29A10();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(a1);
  }

  else
  {
    LOBYTE(v17) = 0;
    v15 = sub_1A7E22F20();
    LOBYTE(v17) = 1;
    v14 = sub_1A7E22F60();
    sub_1A7CC7FFC(&qword_1EB2B5BB0, &unk_1A7E47570);
    v16 = 2;
    sub_1A7D296FC();
    sub_1A7E22F30();
    v10 = v17;
    v16 = 3;
    sub_1A7E22F30();
    v11 = v17;
    sub_1A7CC7FFC(&qword_1EB2B5C50, &qword_1A7E475C0);
    v16 = 4;
    sub_1A7D29AE0();
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    *a2 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;

    sub_1A7B0CD6C(a1);
  }
}

uint64_t IDSLinksCompactQualityReport.measurements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IDSLinksCompactQualityReport.asArray.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1A7CCEBF4(0, v2, 0);
    v3 = v14;
    v4 = v1 + 32;
    do
    {
      sub_1A7CC99E0(v4, v11);
      v5 = v12;
      v6 = v13;
      sub_1A7CC9878(v11, v12);
      v7 = (*(v6 + 24))(v5, v6);
      sub_1A7B0CD6C(v11);
      v14 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1A7CCEBF4((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_1A7D29478()
{
  result = qword_1EB2B5BA0;
  if (!qword_1EB2B5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BA0);
  }

  return result;
}

unint64_t sub_1A7D29534()
{
  result = qword_1EB2B5BC8;
  if (!qword_1EB2B5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BC8);
  }

  return result;
}

unint64_t sub_1A7D29588()
{
  result = qword_1EB2B5BD0;
  if (!qword_1EB2B5BD0)
  {
    sub_1A7CC9830(&qword_1EB2B5BB0, &unk_1A7E47570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BD0);
  }

  return result;
}

unint64_t sub_1A7D29604()
{
  result = qword_1EB2B5BD8;
  if (!qword_1EB2B5BD8)
  {
    sub_1A7CC9830(&qword_1EB2B4AA0, &qword_1A7E45010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BD8);
  }

  return result;
}

unint64_t sub_1A7D29680()
{
  result = qword_1EB2B5BE0;
  if (!qword_1EB2B5BE0)
  {
    sub_1A7CC9830(&qword_1EB2B5BB8, &qword_1A7E47580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BE0);
  }

  return result;
}

unint64_t sub_1A7D296FC()
{
  result = qword_1EB2B5BF0;
  if (!qword_1EB2B5BF0)
  {
    sub_1A7CC9830(&qword_1EB2B5BB0, &unk_1A7E47570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BF0);
  }

  return result;
}

unint64_t sub_1A7D29778()
{
  result = qword_1EB2B5BF8;
  if (!qword_1EB2B5BF8)
  {
    sub_1A7CC9830(&qword_1EB2B4AA0, &qword_1A7E45010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5BF8);
  }

  return result;
}

unint64_t sub_1A7D297F4()
{
  result = qword_1EB2B5C00;
  if (!qword_1EB2B5C00)
  {
    sub_1A7CC9830(&qword_1EB2B5BB8, &qword_1A7E47580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C00);
  }

  return result;
}

unint64_t sub_1A7D29870()
{
  result = qword_1EB2B5C10;
  if (!qword_1EB2B5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C10);
  }

  return result;
}

unint64_t sub_1A7D298C4()
{
  result = qword_1EB2B5C30;
  if (!qword_1EB2B5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C30);
  }

  return result;
}

unint64_t sub_1A7D29918()
{
  result = qword_1EB2B5C38;
  if (!qword_1EB2B5C38)
  {
    sub_1A7CC9830(&qword_1EB2B5C20, &qword_1A7E475A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C38);
  }

  return result;
}

unint64_t sub_1A7D29994()
{
  result = qword_1EB2B5C48;
  if (!qword_1EB2B5C48)
  {
    sub_1A7CC9830(&qword_1EB2B5C20, &qword_1A7E475A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C48);
  }

  return result;
}

unint64_t sub_1A7D29A10()
{
  result = qword_1EB2B5C60;
  if (!qword_1EB2B5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C60);
  }

  return result;
}

unint64_t sub_1A7D29A64()
{
  result = qword_1EB2B5C68;
  if (!qword_1EB2B5C68)
  {
    sub_1A7CC9830(&qword_1EB2B5C50, &qword_1A7E475C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C68);
  }

  return result;
}

unint64_t sub_1A7D29AE0()
{
  result = qword_1EB2B5C78;
  if (!qword_1EB2B5C78)
  {
    sub_1A7CC9830(&qword_1EB2B5C50, &qword_1A7E475C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C78);
  }

  return result;
}

unint64_t sub_1A7D29B88()
{
  result = qword_1EB2B2A18;
  if (!qword_1EB2B2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A18);
  }

  return result;
}

unint64_t sub_1A7D29BDC()
{
  result = qword_1EB2B2A20;
  if (!qword_1EB2B2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A20);
  }

  return result;
}

unint64_t sub_1A7D29C5C()
{
  result = qword_1EB2B2A30;
  if (!qword_1EB2B2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A30);
  }

  return result;
}

unint64_t sub_1A7D29CB0()
{
  result = qword_1EB2B2A38;
  if (!qword_1EB2B2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A38);
  }

  return result;
}

unint64_t sub_1A7D29D30()
{
  result = qword_1EB2B2A48;
  if (!qword_1EB2B2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A48);
  }

  return result;
}

unint64_t sub_1A7D29D84()
{
  result = qword_1EB2B2A50;
  if (!qword_1EB2B2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A50);
  }

  return result;
}

unint64_t sub_1A7D29E04()
{
  result = qword_1EB2B2A00;
  if (!qword_1EB2B2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A00);
  }

  return result;
}

unint64_t sub_1A7D29E58()
{
  result = qword_1EB2B2A08;
  if (!qword_1EB2B2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A08);
  }

  return result;
}

uint64_t sub_1A7D29ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A7D29F14()
{
  result = qword_1EB2B2A60;
  if (!qword_1EB2B2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A60);
  }

  return result;
}

unint64_t sub_1A7D29F68()
{
  result = qword_1EB2B2A68;
  if (!qword_1EB2B2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2A68);
  }

  return result;
}

__n128 sub_1A7D29FE0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A7D2A004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A7D2A04C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A7D2A0C8(uint64_t a1, int a2)
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

uint64_t sub_1A7D2A110(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7D2A160(uint64_t a1, int a2)
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

uint64_t sub_1A7D2A1A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1A7D2A204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A7D2A24C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSLinksCompactQualityReport.MetadataMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IDSLinksCompactQualityReport.MetadataMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A7D2A438()
{
  result = qword_1EB2B5C80;
  if (!qword_1EB2B5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C80);
  }

  return result;
}

unint64_t sub_1A7D2A490()
{
  result = qword_1EB2B5C88;
  if (!qword_1EB2B5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C88);
  }

  return result;
}

unint64_t sub_1A7D2A4E8()
{
  result = qword_1EB2B5C90;
  if (!qword_1EB2B5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C90);
  }

  return result;
}

unint64_t sub_1A7D2A540()
{
  result = qword_1EB2B5C98;
  if (!qword_1EB2B5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5C98);
  }

  return result;
}

unint64_t sub_1A7D2A598()
{
  result = qword_1EB2B5CA0;
  if (!qword_1EB2B5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CA0);
  }

  return result;
}

unint64_t sub_1A7D2A5F0()
{
  result = qword_1EB2B5CA8;
  if (!qword_1EB2B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CA8);
  }

  return result;
}

unint64_t sub_1A7D2A648()
{
  result = qword_1EB2B5CB0;
  if (!qword_1EB2B5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CB0);
  }

  return result;
}

unint64_t sub_1A7D2A6A0()
{
  result = qword_1EB2B5CB8;
  if (!qword_1EB2B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CB8);
  }

  return result;
}

unint64_t sub_1A7D2A6F8()
{
  result = qword_1EB2B5CC0;
  if (!qword_1EB2B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CC0);
  }

  return result;
}

unint64_t sub_1A7D2A750()
{
  result = qword_1EB2B5CC8;
  if (!qword_1EB2B5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CC8);
  }

  return result;
}

unint64_t sub_1A7D2A7A8()
{
  result = qword_1EB2B5CD0;
  if (!qword_1EB2B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CD0);
  }

  return result;
}

unint64_t sub_1A7D2A800()
{
  result = qword_1EB2B5CD8;
  if (!qword_1EB2B5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CD8);
  }

  return result;
}

unint64_t sub_1A7D2A858()
{
  result = qword_1EB2B5CE0;
  if (!qword_1EB2B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CE0);
  }

  return result;
}

unint64_t sub_1A7D2A8B0()
{
  result = qword_1EB2B5CE8;
  if (!qword_1EB2B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CE8);
  }

  return result;
}

unint64_t sub_1A7D2A908()
{
  result = qword_1EB2B5CF0;
  if (!qword_1EB2B5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5CF0);
  }

  return result;
}

uint64_t sub_1A7D2A95C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496B6E696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xED0000656D614E65 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x796C696D61467069 && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x547463656E6E6F63 && a2 == 0xEB00000000656D69 || (sub_1A7E230D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEE00656D69547463)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2AC5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5441526C61636F6CLL && a2 == 0xE800000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x415265746F6D6572 && a2 == 0xE900000000000054 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E657078457369 && a2 == 0xEB00000000657669 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274736E6F437369 && a2 == 0xED000064656E6961)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2AE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1937011826 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2AFA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537374656B636170 && a2 == 0xEB00000000746E65 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x527374656B636170 && a2 == 0xEF64657669656365 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65537365747962 && a2 == 0xE900000000000074 || (sub_1A7E230D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6365527365747962 && a2 == 0xED00006465766965)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2B1C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E496B6E696CLL && a2 == 0xEE00444965636E61;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x507374656B636170 && a2 == 0xEF74737275427265 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE900000000000073 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5265676172657661 && a2 == 0xEB00000000735454 || (sub_1A7E230D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373694D736B6361 && a2 == 0xEB00000000676E69)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7D2B3E4()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBE3C((v0 + 48), &v2);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  return swift_dynamicCast() & v3;
}

uint64_t sub_1A7D2B464(uint64_t a1, uint64_t a2)
{
  sub_1A7CC7FFC(&qword_1EB2B5CF8, &qword_1A7E523D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_1A7E231D0();
}

uint64_t CLIDefaultPrinter.init(printer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CLIDefaultPrinter.print(cliFormattable:)(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_1A7CC9878(a1, v3);
  v15[0] = 0;
  v5 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v5, v15))
  {
    v6 = 80;
  }

  else
  {
    v6 = WORD1(v15[0]);
  }

  (*(v4 + 16))(v15, v6, 0, 1, v3, v4);
  v7 = v16;
  v8 = v17;
  sub_1A7CC9878(v15, v16);
  v9 = (*(v8 + 24))(v7, v8);
  sub_1A7B0CD6C(v15);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      v2(v12, v13);

      v11 += 2;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1A7D2B670()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC0B0);
  sub_1A7B0CB00(v3, qword_1EB2DC0B0);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418D0;
  v5 = sub_1A7D2B80C();
  *(v4 + 32) = &type metadata for LEToolCommand;
  *(v4 + 40) = v5;
  v6 = sub_1A7D2B860();
  *(v4 + 48) = &type metadata for IDSToolPacketLogCommand;
  *(v4 + 56) = v6;
  v7 = sub_1A7E21EF0();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A7E21F40();
}

unint64_t sub_1A7D2B80C()
{
  result = qword_1EB2B5D00;
  if (!qword_1EB2B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D00);
  }

  return result;
}

unint64_t sub_1A7D2B860()
{
  result = qword_1EB2B5D08;
  if (!qword_1EB2B5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D08);
  }

  return result;
}

uint64_t sub_1A7D2B8C4(uint64_t a1)
{
  sub_1A7D2BA50();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A7D2B94C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B3010 != -1)
  {
    swift_once();
  }

  v3 = sub_1A7E21F80();
  v4 = sub_1A7B0CB00(v3, qword_1EB2DC0B0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1A7D2B9F8()
{
  result = qword_1EB2B5D10;
  if (!qword_1EB2B5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D10);
  }

  return result;
}

unint64_t sub_1A7D2BA50()
{
  result = qword_1EB2B5D18;
  if (!qword_1EB2B5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D18);
  }

  return result;
}

unint64_t sub_1A7D2BAA8()
{
  result = qword_1EB2B5D20;
  if (!qword_1EB2B5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D20);
  }

  return result;
}

uint64_t sub_1A7D2BAFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return sub_1A7D2BD28(a1);
}

uint64_t sub_1A7D2BBA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7D2BC00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E48128;
  *(v3 + 24) = v1;

  sub_1A7D21128(v4, &unk_1A7E44460, v3, v2);
}

uint64_t sub_1A7D2BC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD2A2C;

  return sub_1A7D2BAFC(a1);
}

uint64_t sub_1A7D2BD28(uint64_t a1)
{
  v1[21] = a1;
  sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = type metadata accessor for LinkState(0);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D2BE24, 0, 0);
}

uint64_t sub_1A7D2BE24()
{
  v1 = LinkEngine.linkConnector.getter();
  v41 = v2;
  if (v1)
  {
    v3 = *(v0 + 168);
    v4 = sub_1A7CC7FFC(&qword_1EB2B4A58, &qword_1A7E4DED0);
    *(v0 + 80) = v4;
    *(v0 + 88) = sub_1A7CC97CC();
    os_unfair_lock_lock((v3 + 16));
    *(v0 + 56) = *(v3 + 24);

    os_unfair_lock_unlock((v3 + 16));
    v5 = sub_1A7CC9878((v0 + 56), v4);
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    *(v0 + 40) = swift_getAssociatedTypeWitness();
    *(v0 + 48) = swift_getAssociatedConformanceWitness();
    v8 = sub_1A7CC98BC((v0 + 16));
    v9 = -1 << *(*v7 + 32);
    v10 = ~v9;
    v11 = (*v7 + 64);
    v12 = *v11;
    v13 = -v9;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    *v8 = *v7;
    v8[1] = v11;
    v8[2] = v10;
    v8[3] = 0;
    v8[4] = v14 & v12;

    sub_1A7B0CD6C((v0 + 56));
    sub_1A7CC9920(v0 + 16, *(v0 + 40));
    sub_1A7E22A00();
    for (i = *(v0 + 160); i; i = *(v0 + 160))
    {
      os_unfair_lock_lock((i + 40));
      v16 = type metadata accessor for LinkStateComponent(0);
      v17 = v16;
      v18 = *(i + 48);
      if (*(v18 + 16) && (v19 = sub_1A7CD0DFC(v16), (v20 & 1) != 0))
      {
        sub_1A7B0CD10(*(v18 + 56) + 32 * v19, v0 + 96);
      }

      else
      {
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      v21 = *(v0 + 192);
      os_unfair_lock_unlock((i + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      v22 = swift_dynamicCast();
      v23 = *(v17 - 8);
      v42 = *(v23 + 56);
      v42(v21, v22 ^ 1u, 1, v17);
      v43 = *(v23 + 48);
      v24 = v43(v21, 1, v17);
      v25 = *(v0 + 224);
      v26 = *(v0 + 192);
      if (v24)
      {
        sub_1A7CD9FEC(v26);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v27 = *(v0 + 216);
        v28 = *(v0 + 192);
        sub_1A7CD0EC4(v26, v27);
        sub_1A7CD9FEC(v28);
        sub_1A7CF4888(v27, v25, type metadata accessor for LinkState);
      }

      v29 = *(v0 + 224);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v30 = *(v0 + 208);
        v31 = *(v0 + 176);
        v32 = *(v0 + 184);
        sub_1A7CD0E68(v29);
        sub_1A7E22CC0();
        swift_storeEnumTagMultiPayload();
        sub_1A7CD0EC4(v30, v32);
        v42(v32, 0, 1, v17);
        os_unfair_lock_lock((i + 40));
        sub_1A7CDA3E0(v32, v31);
        v33 = v43(v31, 1, v17);
        v34 = *(v0 + 176);
        if (v33 == 1)
        {
          sub_1A7CD9FEC(*(v0 + 176));
          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
        }

        else
        {
          *(v0 + 152) = v17;
          v35 = sub_1A7CC98BC((v0 + 128));
          sub_1A7CF4888(v34, v35, type metadata accessor for LinkStateComponent);
        }

        v36 = *(v0 + 208);
        v37 = *(v0 + 184);
        sub_1A7CC8D74(v0 + 128, v17);
        os_unfair_lock_unlock((i + 40));
        sub_1A7CD0E68(v36);
        sub_1A7CD9FEC(v37);
        ObjectType = swift_getObjectType();
        (*(v41 + 8))(i, ObjectType);
      }

      else
      {

        sub_1A7CD0E68(v29);
      }

      sub_1A7CC9920(v0 + 16, *(v0 + 40));
      sub_1A7E22A00();
    }

    swift_unknownObjectRelease();
    sub_1A7B0CD6C((v0 + 16));
  }

  v39 = *(v0 + 8);

  return v39();
}

double sub_1A7D2C3A8()
{
  *&result = 0x1010100000001;
  qword_1EB2DC298 = 0x1010100000001;
  return result;
}

double sub_1A7D2C3BC()
{
  result = 7.74859723e-304;
  qword_1EB2DC2A0 = 0x101010001000101;
  return result;
}

uint64_t LinkEndpoint.uniqueID.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = ((v3 + 63) >> 6);

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    while (1)
    {
LABEL_10:
      v10 = __clz(__rbit64(v5)) | (v7 << 6);
      v11 = *(*(v1 + 48) + 8 * v10);
      sub_1A7B0CD10(*(v1 + 56) + 32 * v10, v34);
      v33 = v11;
      sub_1A7B0CD10(v34, v28);
      sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
      sub_1A7CC7FFC(&qword_1EB2B4C90, &qword_1A7E41BE0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }

      v5 &= v5 - 1;
      sub_1A7CC9970(&v33, &qword_1EB2B5D28, &qword_1A7E48188);
      if (*(&v30 + 1))
      {
        break;
      }

      sub_1A7CC9970(&v29, &qword_1EB2B5D30, &qword_1A7E48190);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    sub_1A7B14FF0(&v29, v32);
    sub_1A7B14FF0(v32, &v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A7CCCCBC(0, v8[2] + 1, 1, v8);
    }

    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1A7CCCCBC((v12 > 1), v13 + 1, 1, v8);
    }

    v8[2] = v13 + 1;
    sub_1A7B14FF0(&v29, &v8[5 * v13 + 4]);
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v33 = v8;

  sub_1A7D2C8A8(&v33);

  v14 = v33;
  v15 = v33[2];
  if (v15)
  {
    *&v32[0] = MEMORY[0x1E69E7CC0];
    sub_1A7CCE918(0, v15, 0);
    v16 = *&v32[0];
    v17 = v14 + 32;
    do
    {
      sub_1A7CC99E0(v17, &v33);
      v18 = v35;
      v19 = v36;
      sub_1A7CC9878(&v33, v35);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      sub_1A7B0CD6C(&v33);
      *&v32[0] = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1A7CCE918((v23 > 1), v24 + 1, 1);
        v16 = *&v32[0];
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v33 = v16;
  sub_1A7CC7FFC(&qword_1EB2B4AA0, &qword_1A7E45010);
  sub_1A7CD0F8C();
  v26 = sub_1A7E221F0();

  return v26;
}

uint64_t LinkEndpoint.components.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

IDSFoundation::LinkEndpoint __swiftcall LinkEndpoint.init()()
{
  v1 = v0;
  result.components._rawValue = sub_1A7CE2568(MEMORY[0x1E69E7CC0]);
  v1->components._rawValue = result.components._rawValue;
  return result;
}

uint64_t sub_1A7D2C828(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A7D2C8A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A7D602F8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A7D2C914(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A7D2C914(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A7E23080();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A7CC7FFC(&qword_1EB2B4C90, &qword_1A7E41BE0);
        v5 = sub_1A7E22580();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A7D2CBE0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A7D2CA1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A7D2CA1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v28 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_1A7CC99E0(v5, &v25);
      sub_1A7CC99E0(v5 - 40, v22);
      v7 = v26;
      v8 = v27;
      sub_1A7CC9878(&v25, v26);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      v13 = v23;
      v12 = v24;
      sub_1A7CC9878(v22, v23);
      if (v9 == (*(v12 + 8))(v13, v12) && v11 == v14)
      {

        sub_1A7B0CD6C(v22);
        result = sub_1A7B0CD6C(&v25);
LABEL_5:
        a3 = v28 + 1;
        v5 = v21 + 40;
        v6 = v20 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_1A7E230D0();

      sub_1A7B0CD6C(v22);
      result = sub_1A7B0CD6C(&v25);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1A7B14FF0(v5, &v25);
      v17 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v17;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1A7B14FF0(&v25, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A7D2CBE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v105 = v5;
      v129 = v8;
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v5 = *&v8[16 * v106 + 24];
          sub_1A7D2D4A4((*a3 + 40 * v107), (*a3 + 40 * *&v8[16 * v106 + 16]), *a3 + 40 * v5, v6);
          if (v105)
          {
          }

          if (v5 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A7CF0024(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v108 = &v8[16 * v106];
          *v108 = v107;
          *(v108 + 1) = v5;
          v129 = v8;
          result = sub_1A7CEFF98(v106 - 1);
          v8 = v129;
          v106 = *(v129 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_1A7CF0024(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v121 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1A7CC99E0(*a3 + 40 * v7, &v126);
      v113 = v9;
      sub_1A7CC99E0(v10 + 40 * v9, v123);
      v11 = v127;
      v12 = v128;
      sub_1A7CC9878(&v126, v127);
      v13 = (*(v12 + 8))(v11, v12);
      v15 = v14;
      v16 = v124;
      v17 = v125;
      sub_1A7CC9878(v123, v124);
      v19 = v13 == (*(v17 + 8))(v16, v17) && v15 == v18;
      v110 = v5;
      if (v19)
      {
        v119 = 0;
      }

      else
      {
        v119 = sub_1A7E230D0();
      }

      sub_1A7B0CD6C(v123);
      result = sub_1A7B0CD6C(&v126);
      v20 = v113 + 2;
      v21 = v10 + 40 * v113 + 80;
      v117 = v6;
      v22 = 40 * v113 + 40;
      v8 = v121;
      do
      {
        v24 = v20;
        v25 = v7;
        v5 = v22;
        if (v20 >= v6)
        {
          break;
        }

        sub_1A7CC99E0(v21, &v126);
        sub_1A7CC99E0(v21 - 40, v123);
        v26 = v127;
        v27 = v128;
        sub_1A7CC9878(&v126, v127);
        v28 = (*(v27 + 8))(v26, v27);
        v30 = v29;
        v32 = v124;
        v31 = v125;
        sub_1A7CC9878(v123, v124);
        v34 = v28 == (*(v31 + 8))(v32, v31) && v30 == v33;
        v23 = v34 ? 0 : sub_1A7E230D0();

        sub_1A7B0CD6C(v123);
        result = sub_1A7B0CD6C(&v126);
        v20 = v24 + 1;
        v21 += 40;
        v7 = v25 + 1;
        v22 = v5 + 40;
        v8 = v121;
        v6 = v117;
      }

      while (((v119 ^ v23) & 1) == 0);
      if (v119)
      {
        v9 = v113;
        if (v24 < v113)
        {
          goto LABEL_134;
        }

        if (v113 < v24)
        {
          v6 = v113;
          v35 = 40 * v113;
          do
          {
            if (v6 != v25)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v38 = v37 + v35;
              v39 = v37 + v5;
              sub_1A7B14FF0((v37 + v35), &v126);
              v40 = *(v39 + 32);
              v41 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v41;
              *(v38 + 32) = v40;
              result = sub_1A7B14FF0(&v126, v39);
            }

            ++v6;
            v5 -= 40;
            v35 += 40;
          }

          while (v6 < v25--);
        }

        v7 = v24;
        v5 = v110;
      }

      else
      {
        v7 = v24;
        v5 = v110;
        v9 = v113;
      }
    }

    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCC08C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_1A7CCC08C((v58 > 1), v59 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_73:
          if (v67)
          {
            goto LABEL_121;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_124;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_128;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_87:
        if (v85)
        {
          goto LABEL_123;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_94:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        sub_1A7D2D4A4((*a3 + 40 * v102), (*a3 + 40 * *&v8[16 * v63 + 32]), *a3 + 40 * v103, v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A7CF0024(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v129 = v8;
        result = sub_1A7CEFF98(v63);
        v8 = v129;
        v60 = *(v129 + 2);
        v7 = v6;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v43)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v44 = *a3;
  v45 = *a3 + 40 * v7;
  v114 = v9;
  v115 = v43;
  v46 = v9 - v7;
LABEL_42:
  v118 = v45;
  v120 = v7;
  v116 = v46;
  while (1)
  {
    sub_1A7CC99E0(v45, &v126);
    sub_1A7CC99E0(v45 - 40, v123);
    v47 = v127;
    v48 = v128;
    sub_1A7CC9878(&v126, v127);
    v49 = (*(v48 + 8))(v47, v48);
    v51 = v50;
    v52 = v124;
    v6 = v125;
    sub_1A7CC9878(v123, v124);
    if (v49 == (*(v6 + 8))(v52, v6) && v51 == v53)
    {

      sub_1A7B0CD6C(v123);
      sub_1A7B0CD6C(&v126);
LABEL_41:
      v7 = v120 + 1;
      v45 = v118 + 40;
      v46 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v111;
        v8 = v121;
        v9 = v114;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v55 = sub_1A7E230D0();

    sub_1A7B0CD6C(v123);
    result = sub_1A7B0CD6C(&v126);
    if ((v55 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v44)
    {
      break;
    }

    sub_1A7B14FF0(v45, &v126);
    v56 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v56;
    *(v45 + 32) = *(v45 - 8);
    sub_1A7B14FF0(&v126, v45 - 40);
    v45 -= 40;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

uint64_t sub_1A7D2D4A4(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1A7CC99E0(v30, v55);
          v33 = v29;
          sub_1A7CC99E0(v29, v52);
          v34 = v56;
          v35 = v57;
          sub_1A7CC9878(v55, v56);
          v36 = (*(v35 + 8))(v34, v35);
          v38 = v37;
          v40 = v53;
          v39 = v54;
          sub_1A7CC9878(v52, v53);
          v42 = v36 == (*(v39 + 8))(v40, v39) && v38 == v41;
          v43 = v42 ? 0 : sub_1A7E230D0();

          sub_1A7B0CD6C(v52);
          sub_1A7B0CD6C(v55);
          if (v43)
          {
            break;
          }

          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v32 = v30 > v51;
          v30 -= 40;
          v29 = v33;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            v4 = v51;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 16);
          *(v5 + 32) = *(v33 + 32);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1A7CC99E0(v7, v55);
        sub_1A7CC99E0(v4, v52);
        v14 = v56;
        v15 = v57;
        sub_1A7CC9878(v55, v56);
        v16 = (*(v15 + 8))(v14, v15);
        v18 = v17;
        v19 = v53;
        v20 = v54;
        sub_1A7CC9878(v52, v53);
        v22 = v16 == (*(v20 + 8))(v19, v20) && v18 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_1A7E230D0();

        sub_1A7B0CD6C(v52);
        sub_1A7B0CD6C(v55);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      sub_1A7B0CD6C(v52);
      sub_1A7B0CD6C(v55);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

uint64_t sub_1A7D2D920()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC2A8);
  sub_1A7B0CB00(v3, qword_1EB2DC2A8);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418D0;
  v5 = type metadata accessor for IDSToolPacketLogDumpCommand(0);
  v6 = sub_1A7D2DD0C(&qword_1EB2B5D48, type metadata accessor for IDSToolPacketLogDumpCommand, &unk_1A7E52380);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = type metadata accessor for IDSToolPacketLogClearCommand(0);
  v8 = sub_1A7D2DD0C(&qword_1EB2B5D50, type metadata accessor for IDSToolPacketLogClearCommand, &unk_1A7E4F3E0);
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  v9 = sub_1A7E21EF0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D2DB28(uint64_t a1)
{
  sub_1A7D2B860();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1A7D2DBB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B47A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1A7E21F80();
  v4 = sub_1A7B0CB00(v3, qword_1EB2DC2A8);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_1A7D2DC5C()
{
  result = qword_1EB2B5D38;
  if (!qword_1EB2B5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D38);
  }

  return result;
}

unint64_t sub_1A7D2DCB8()
{
  result = qword_1EB2B5D40;
  if (!qword_1EB2B5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D40);
  }

  return result;
}

uint64_t sub_1A7D2DD0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A7D2DD64()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC2C0);
  sub_1A7B0CB00(v3, qword_1EB2DC2C0);
  v4 = sub_1A7E21EF0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D2DEA8()
{
  v1[9] = v0;
  type metadata accessor for LEToolOptions(0);
  v1[10] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v1[11] = swift_task_alloc();
  sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  v1[12] = swift_task_alloc();
  type metadata accessor for LEToolLinksRequest(0);
  v1[13] = swift_task_alloc();
  v2 = sub_1A7CC7FFC(&qword_1EB2B5DC8, &qword_1A7E48620);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D2E030, 0, 0);
}

uint64_t sub_1A7D2E030()
{
  type metadata accessor for LEToolLinksListCommand(0);
  sub_1A7CC7FFC(&qword_1EB2B5D78, &unk_1A7E48410);
  sub_1A7E21FC0();
  v25 = v0;
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A7CCECAC(0, v2, 0);
    v3 = 32;
    v4 = v26;
    do
    {
      v5 = *(v1 + v3);
      v6 = 0x7032702D736469;
      if (v5 != 1)
      {
        v6 = 0x72762D736469;
      }

      v7 = 0xE700000000000000;
      if (v5 != 1)
      {
        v7 = 0xE600000000000000;
      }

      if (*(v1 + v3))
      {
        v8 = v6;
      }

      else
      {
        v8 = 0x616C65722D736469;
      }

      if (*(v1 + v3))
      {
        v9 = v7;
      }

      else
      {
        v9 = 0xE900000000000079;
      }

      v11 = *(v26 + 16);
      v10 = *(v26 + 24);

      if (v11 >= v10 >> 1)
      {
        sub_1A7CCECAC((v10 > 1), v11 + 1, 1);
      }

      *(v26 + 16) = v11 + 1;
      v12 = v26 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v13 = v0[15];
  v14 = v25[16];
  v15 = v25[13];
  v16 = v25[14];
  v17 = v25[11];
  v18 = v25[12];
  v19 = swift_task_alloc();
  v25[17] = v19;
  *(v19 + 16) = v4;
  v25[8] = type metadata accessor for LEToolLink(0);
  sub_1A7E21BC0();

  (*(v13 + 16))(v18, v14, v16);
  v20 = *(v13 + 56);
  v20(v18, 0, 1, v16);
  v20(v15, 1, 1, v16);
  sub_1A7D30374(v18, v15);
  sub_1A7D30C00(v15, v17, type metadata accessor for LEToolLinksRequest);
  type metadata accessor for LEToolRequest(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  sub_1A7E21DC0();
  v25[5] = &type metadata for CLIDefaultPrinter;
  v25[6] = &protocol witness table for CLIDefaultPrinter;
  v25[2] = sub_1A7D2B464;
  v25[3] = 0;
  v21 = swift_task_alloc();
  v25[18] = v21;
  *v21 = v25;
  v21[1] = sub_1A7D2E374;
  v22 = v25[10];
  v23 = v25[11];

  return sub_1A7DE8A40(v23, v22, (v25 + 2));
}

uint64_t sub_1A7D2E374()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(v2 + 152) = v0;

  sub_1A7D30BA0(v4, type metadata accessor for LEToolOptions);
  sub_1A7D30BA0(v3, type metadata accessor for LEToolRequestMessage);
  sub_1A7B0CD6C((v2 + 16));
  if (v0)
  {
    v5 = sub_1A7D2E5D4;
  }

  else
  {
    v5 = sub_1A7D2E4F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A7D2E4F8()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1A7D30BA0(v1, type metadata accessor for LEToolLinksRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A7D2E5D4()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_1A7D30BA0(v1, type metadata accessor for LEToolLinksRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A7D2E6B0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v39 = a3;
  v3 = sub_1A7CC7FFC(&qword_1EB2B5DD0, &qword_1A7E48628);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5DD8, &qword_1A7E48630);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B5DE0, &qword_1A7E48638);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = sub_1A7CC7FFC(&qword_1EB2B5DE8, &qword_1A7E48640);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = sub_1A7CC7FFC(&qword_1EB2B5DF0, &qword_1A7E48648);
  v19 = *(v18 - 8);
  v36 = v18;
  v37 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v32 = &v32 - v20;
  sub_1A7CF3788(&qword_1EB2B5DF8, &qword_1EB2B5DD8, &qword_1A7E48630, MEMORY[0x1E6968DA8]);
  sub_1A7E217D0();
  swift_getKeyPath();
  sub_1A7E21760();

  (*(v7 + 8))(v9, v6);
  sub_1A7CC7FFC(&qword_1EB2B5E00, &unk_1A7E48670);
  sub_1A7CC7FFC(&qword_1EB2B5E08, &qword_1A7E55BE0);
  v21 = MEMORY[0x1E6968D58];
  sub_1A7CF3788(&qword_1EB2B5E10, &qword_1EB2B5DE0, &qword_1A7E48638, MEMORY[0x1E6968D58]);
  sub_1A7CF3788(&qword_1EB2B5E18, &qword_1EB2B5E00, &unk_1A7E48670, v21);
  sub_1A7E21780();
  (*(v11 + 8))(v13, v10);
  v42 = v35;
  sub_1A7CC7FFC(&qword_1EB2B5E20, &qword_1A7E48680);
  v22 = MEMORY[0x1E6968BC8];
  sub_1A7CF3788(&qword_1EB2B5E28, &qword_1EB2B5DE8, &qword_1A7E48640, MEMORY[0x1E6968BC8]);
  sub_1A7CF3788(&qword_1EB2B5E30, &qword_1EB2B5E20, &qword_1A7E48680, MEMORY[0x1E6968C80]);
  v23 = v32;
  v24 = v33;
  sub_1A7E21770();
  (*(v34 + 8))(v17, v24);
  v43 = 0;
  v25 = v38;
  sub_1A7E217C0();
  v26 = sub_1A7CC7FFC(&qword_1EB2B5E38, &qword_1A7E48688);
  v27 = v39;
  v39[3] = v26;
  v27[4] = sub_1A7D303EC();
  sub_1A7CC98BC(v27);
  sub_1A7CF3788(&qword_1EB2B5EF0, &qword_1EB2B5DF0, &qword_1A7E48648, v22);
  sub_1A7CF3788(&qword_1EB2B5EF8, &qword_1EB2B5DD0, &qword_1A7E48628, MEMORY[0x1E6968D20]);
  v28 = v23;
  v29 = v36;
  v30 = v40;
  sub_1A7E217B0();
  (*(v41 + 8))(v25, v30);
  return (*(v37 + 8))(v28, v29);
}

uint64_t sub_1A7D2ECE4(uint64_t a1)
{
  v1 = sub_1A7CC7FFC(&qword_1EB2B5E78, &qword_1A7E48690);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  sub_1A7CF3788(&qword_1EB2B5F28, &qword_1EB2B5E78, &qword_1A7E48690, MEMORY[0x1E6968DA8]);
  sub_1A7E217D0();
  swift_getKeyPath();
  sub_1A7E21760();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1A7D2EE34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B5E90, &qword_1A7E48698);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A7CF3788(&qword_1EB2B5F00, &qword_1EB2B5E90, &qword_1A7E48698, MEMORY[0x1E6968DA8]);
  sub_1A7E217D0();
  v9 = a2;
  sub_1A7CC7FFC(&qword_1EB2B5EA0, &qword_1A7E486A0);
  sub_1A7CF3788(&qword_1EB2B5F08, &qword_1EB2B5EA0, &qword_1A7E486A0, MEMORY[0x1E6968C08]);
  sub_1A7CF3788(&qword_1EB2B5F10, &qword_1EB2B5E08, &qword_1A7E55BE0, MEMORY[0x1E69E6328]);
  sub_1A7E21790();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A7D2F014@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[0] = a3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B5EE0, &qword_1A7E486B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5EB0, &qword_1A7E486A8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  v13[1] = a2;
  sub_1A7CC7FFC(&qword_1EB2B5E08, &qword_1A7E55BE0);
  sub_1A7E217C0();
  sub_1A7CF3788(&qword_1EB2B5F18, &qword_1EB2B5EE0, &qword_1A7E486B0, MEMORY[0x1E6968DA8]);
  sub_1A7E217D0();
  sub_1A7CF3788(&qword_1EB2B5F20, &qword_1EB2B5EB0, &qword_1A7E486A8, MEMORY[0x1E6968D20]);
  sub_1A7CF3788(&qword_1EB2B5F10, &qword_1EB2B5E08, &qword_1A7E55BE0, MEMORY[0x1E69E6328]);
  sub_1A7CD35B8();
  sub_1A7E217A0();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A7D2F298()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D30324(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  type metadata accessor for LEToolLinksListCommand(0);
  sub_1A7E21D80();
  sub_1A7E21DB0();
  v4 = sub_1A7E21DA0();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_1A7D30AF8();
  return sub_1A7E21FB0();
}

uint64_t sub_1A7D2F47C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_1A7CC7FFC(&qword_1EB2B5D78, &unk_1A7E48410);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v25 - v3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B5690, &qword_1A7E45388);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v25 - v5;
  v33 = sub_1A7CC7FFC(&qword_1EB2B5F38, &qword_1A7E486E0);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v25 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B59C0, &qword_1A7E468C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1A7E21D90();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for LEToolLinksListCommand(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7E21D80();
  type metadata accessor for LEToolOptions(0);
  sub_1A7D30324(&qword_1EB2B56B0, type metadata accessor for LEToolOptions, &unk_1A7E46D5C);
  sub_1A7E21DD0();
  v16 = *(v13 + 28);
  sub_1A7E21D80();
  sub_1A7E21DB0();
  v17 = sub_1A7E21DA0();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  sub_1A7D30AF8();
  sub_1A7E21FB0();
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D30B4C();
  v18 = v34;
  sub_1A7E23250();
  if (!v18)
  {
    v20 = v29;
    v19 = v30;
    v36 = 0;
    sub_1A7CF3788(&qword_1EB2B56D8, &qword_1EB2B5690, &qword_1A7E45388, MEMORY[0x1E698CF40]);
    sub_1A7E22F30();
    (*(v20 + 40))(v15, v32, v4);
    v35 = 1;
    sub_1A7CF3788(&qword_1EB2B5F48, &qword_1EB2B5D78, &unk_1A7E48410, MEMORY[0x1E698CF68]);
    v21 = v19;
    v22 = v28;
    v23 = v33;
    sub_1A7E22F30();
    (*(v31 + 8))(v7, v23);
    (*(v26 + 40))(&v15[v16], v21, v22);
    sub_1A7D30C00(v15, v27, type metadata accessor for LEToolLinksListCommand);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D30BA0(v15, type metadata accessor for LEToolLinksListCommand);
}

uint64_t sub_1A7D2FA18()
{
  if (*v0)
  {
    return 0x646E694B6B6E696CLL;
  }

  else
  {
    return 0x736E6F6974706FLL;
  }
}

uint64_t sub_1A7D2FA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E694B6B6E696CLL && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7D2FB3C(uint64_t a1)
{
  v2 = sub_1A7D30B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D2FB78(uint64_t a1)
{
  v2 = sub_1A7D30B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D2FBB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A7CD22FC;

  return sub_1A7D2DEA8();
}

uint64_t sub_1A7D2FC80()
{
  v0 = sub_1A7CC7FFC(&qword_1EB2B5678, &qword_1A7E4F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A7E21F80();
  sub_1A7CC7A10(v3, qword_1EB2DC2D8);
  sub_1A7B0CB00(v3, qword_1EB2DC2D8);
  sub_1A7CC7FFC(&qword_1EB2B5680, &qword_1A7E45380);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  v5 = type metadata accessor for LEToolLinksListCommand(0);
  v6 = sub_1A7D30324(&qword_1EB2B5D70, type metadata accessor for LEToolLinksListCommand, &unk_1A7E485D0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = sub_1A7E21EF0();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A7E21F40();
}

uint64_t sub_1A7D2FE3C(uint64_t a1)
{
  sub_1A7D2FF44();
  sub_1A7E21E90();
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_1A7D2FEEC()
{
  result = qword_1EB2B5D58;
  if (!qword_1EB2B5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D58);
  }

  return result;
}

unint64_t sub_1A7D2FF44()
{
  result = qword_1EB2B5D60;
  if (!qword_1EB2B5D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D60);
  }

  return result;
}

unint64_t sub_1A7D2FF9C()
{
  result = qword_1EB2B5D68;
  if (!qword_1EB2B5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5D68);
  }

  return result;
}

uint64_t type metadata accessor for LEToolLinksListCommand(uint64_t a1)
{
  result = qword_1EB2B5D80;
  if (!qword_1EB2B5D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A7D30064(uint64_t a1)
{
  sub_1A7D0293C(319);
  if (v1 <= 0x3F)
  {
    sub_1A7D300E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7D300E8(uint64_t a1)
{
  if (!qword_1EB2B5D90)
  {
    sub_1A7CC9830(&qword_1EB2B5D98, &qword_1A7E48438);
    v1 = sub_1A7E21FF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B5D90);
    }
  }
}

unint64_t sub_1A7D301A4()
{
  result = qword_1EB2B5DA8;
  if (!qword_1EB2B5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5DA8);
  }

  return result;
}

unint64_t sub_1A7D301F8()
{
  result = qword_1EB2B5DB0;
  if (!qword_1EB2B5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5DB0);
  }

  return result;
}

uint64_t sub_1A7D30324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A7D30374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A7D303EC()
{
  result = qword_1EB2B5E40;
  if (!qword_1EB2B5E40)
  {
    sub_1A7CC9830(&qword_1EB2B5E38, &qword_1A7E48688);
    sub_1A7D30478();
    sub_1A7D30A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E40);
  }

  return result;
}

unint64_t sub_1A7D30478()
{
  result = qword_1EB2B5E48;
  if (!qword_1EB2B5E48)
  {
    sub_1A7CC9830(&qword_1EB2B5DF0, &qword_1A7E48648);
    sub_1A7D30504();
    sub_1A7D306F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E48);
  }

  return result;
}

unint64_t sub_1A7D30504()
{
  result = qword_1EB2B5E50;
  if (!qword_1EB2B5E50)
  {
    sub_1A7CC9830(&qword_1EB2B5DE8, &qword_1A7E48640);
    sub_1A7D30590();
    sub_1A7D30640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E50);
  }

  return result;
}

unint64_t sub_1A7D30590()
{
  result = qword_1EB2B5E58;
  if (!qword_1EB2B5E58)
  {
    sub_1A7CC9830(&qword_1EB2B5DE0, &qword_1A7E48638);
    sub_1A7CF3788(&qword_1EB2B5E60, &qword_1EB2B5DD8, &qword_1A7E48630, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E58);
  }

  return result;
}

unint64_t sub_1A7D30640()
{
  result = qword_1EB2B5E68;
  if (!qword_1EB2B5E68)
  {
    sub_1A7CC9830(&qword_1EB2B5E00, &unk_1A7E48670);
    sub_1A7CF3788(&qword_1EB2B5E70, &qword_1EB2B5E78, &qword_1A7E48690, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E68);
  }

  return result;
}

unint64_t sub_1A7D306F0()
{
  result = qword_1EB2B5E80;
  if (!qword_1EB2B5E80)
  {
    sub_1A7CC9830(&qword_1EB2B5E20, &qword_1A7E48680);
    sub_1A7CF3788(&qword_1EB2B5E88, &qword_1EB2B5E90, &qword_1A7E48698, MEMORY[0x1E6968DA0]);
    sub_1A7D307A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E80);
  }

  return result;
}

unint64_t sub_1A7D307A8()
{
  result = qword_1EB2B5E98;
  if (!qword_1EB2B5E98)
  {
    sub_1A7CC9830(&qword_1EB2B5EA0, &qword_1A7E486A0);
    sub_1A7D30860();
    sub_1A7CF3788(&qword_1EB2B5ED8, &qword_1EB2B5EE0, &qword_1A7E486B0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5E98);
  }

  return result;
}

unint64_t sub_1A7D30860()
{
  result = qword_1EB2B5EA8;
  if (!qword_1EB2B5EA8)
  {
    sub_1A7CC9830(&qword_1EB2B5EB0, &qword_1A7E486A8);
    sub_1A7D3094C(&qword_1EB2B5EB8, sub_1A7D309C4, MEMORY[0x1E69E6330]);
    sub_1A7D3094C(&qword_1EB2B5EC8, sub_1A7D30A18, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5EA8);
  }

  return result;
}

uint64_t sub_1A7D3094C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B5E08, &qword_1A7E55BE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7D309C4()
{
  result = qword_1EB2B5EC0;
  if (!qword_1EB2B5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5EC0);
  }

  return result;
}

unint64_t sub_1A7D30A18()
{
  result = qword_1EB2B5ED0;
  if (!qword_1EB2B5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5ED0);
  }

  return result;
}

unint64_t sub_1A7D30A6C()
{
  result = qword_1EB2B5EE8;
  if (!qword_1EB2B5EE8)
  {
    sub_1A7CC9830(&qword_1EB2B5DD0, &qword_1A7E48628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5EE8);
  }

  return result;
}

unint64_t sub_1A7D30AF8()
{
  result = qword_1EB2B5F30;
  if (!qword_1EB2B5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F30);
  }

  return result;
}

unint64_t sub_1A7D30B4C()
{
  result = qword_1EB2B5F40;
  if (!qword_1EB2B5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F40);
  }

  return result;
}

uint64_t sub_1A7D30BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7D30C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D30C7C()
{
  result = qword_1EB2B5F50;
  if (!qword_1EB2B5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F50);
  }

  return result;
}

unint64_t sub_1A7D30CD4()
{
  result = qword_1EB2B5F58;
  if (!qword_1EB2B5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F58);
  }

  return result;
}

unint64_t sub_1A7D30D2C()
{
  result = qword_1EB2B5F60;
  if (!qword_1EB2B5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F60);
  }

  return result;
}

uint64_t LinkEngineConnectFirstController.__allocating_init(fallbackDelay:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LinkEngineConnectFirstController.update(linkConnector:scheduler:links:behavior:now:)(uint64_t a1, void (**a2)(unint64_t, uint64_t), void *a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v12 = a3[3];
  v13 = a3[4];
  v14 = sub_1A7CC9878(a3, v12);
  return sub_1A7D339FC(a1, a2, v14, a4, a5, a6, v6, v12, v13) & 1;
}

uint64_t sub_1A7D30E50()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B5F68);
  sub_1A7B0CB00(v0, qword_1EB2B5F68);
  return sub_1A7E22050();
}

uint64_t LinkEngineConnectFirstController.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t LinkEngineConnectFirstController.init(fallbackDelay:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1A7D30F70(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v2 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = sub_1A7E22CF0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  LinkEngineLink.state.getter(v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = v7;
LABEL_6:
    sub_1A7CD0E68(v19);
    v17 = 1;
    return v17 & 1;
  }

  v15 = v7;
  v16 = *(v9 + 32);
  v16(v14, v15, v8);
  LinkEngineLink.state.getter(v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v9 + 8))(v14, v8);
    v19 = v4;
    goto LABEL_6;
  }

  v16(v11, v4, v8);
  v17 = sub_1A7E22CB0();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  return v17 & 1;
}

uint64_t sub_1A7D311D4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A7D6035C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A7D31250(v6);
  return sub_1A7E22C00();
}

void sub_1A7D31250(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A7E23080();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LinkEngineLink();
        v6 = sub_1A7E22580();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1A7D31A3C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A7D31354(0, v2, 1, a1);
  }
}

void sub_1A7D31354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v59 - v11;
  v79 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v79);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = sub_1A7E22CF0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v73 = &v59 - v24;
  v60 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v71 = type metadata accessor for LinkStateComponent(0);
    v72 = v71 - 8;
    v70 = (v21 + 32);
    v67 = (v21 + 8);
    v26 = v71;
    v75 = v25;
    v27 = (v25 + 8 * a3 - 8);
    v28 = a1 - a3;
LABEL_5:
    v63 = a3;
    v29 = *(v75 + 8 * a3);
    v61 = v28;
    v62 = v27;
    while (1)
    {
      v80 = v28;
      v30 = *v27;

      v83 = v30;

      os_unfair_lock_lock(v29 + 10);
      v31 = *&v29[12]._os_unfair_lock_opaque;
      if (*(v31 + 16) && (v32 = sub_1A7CD0DFC(v26), (v33 & 1) != 0))
      {
        sub_1A7B0CD10(*(v31 + 56) + 32 * v32, &v81);
      }

      else
      {
        v81 = 0u;
        v82 = 0u;
      }

      os_unfair_lock_unlock(v29 + 10);
      v34 = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      v35 = v74;
      v78 = v34;
      v36 = swift_dynamicCast();
      v37 = *(v26 - 8);
      v77 = *(v37 + 56);
      v77(v35, v36 ^ 1u, 1, v26);
      v76 = *(v37 + 48);
      if (v76(v35, 1, v26))
      {
        sub_1A7CC9970(v35, &qword_1EB2B4A80, &unk_1A7E41910);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v38 = v20;
        v39 = v19;
        v40 = v66;
        sub_1A7CD0EC4(v35, v66);
        sub_1A7CC9970(v35, &qword_1EB2B4A80, &unk_1A7E41910);
        v41 = v40;
        v19 = v39;
        v20 = v38;
        v26 = v71;
        sub_1A7CDA450(v41, v19, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v42 = *v70;
      (*v70)(v73, v19, v20);
      v43 = v83;
      os_unfair_lock_lock(v83 + 10);
      v44 = *&v43[12]._os_unfair_lock_opaque;
      if (*(v44 + 16) && (v45 = sub_1A7CD0DFC(v26), (v46 & 1) != 0))
      {
        sub_1A7B0CD10(*(v44 + 56) + 32 * v45, &v81);
      }

      else
      {
        v81 = 0u;
        v82 = 0u;
      }

      os_unfair_lock_unlock(v83 + 10);
      v47 = v69;
      v48 = swift_dynamicCast();
      v77(v47, v48 ^ 1u, 1, v26);
      if (v76(v47, 1, v26))
      {
        sub_1A7CC9970(v47, &qword_1EB2B4A80, &unk_1A7E41910);
        v49 = v68;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v50 = v64;
        sub_1A7CD0EC4(v47, v64);
        sub_1A7CC9970(v47, &qword_1EB2B4A80, &unk_1A7E41910);
        v51 = v50;
        v49 = v68;
        sub_1A7CDA450(v51, v68, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*v67)(v73, v20);
        sub_1A7CD0E68(v49);

        v26 = v71;
        goto LABEL_26;
      }

      v52 = v65;
      v42(v65, v49, v20);
      v53 = v73;
      v54 = sub_1A7E22CB0();
      v55 = *v67;
      (*v67)(v52, v20);
      v55(v53, v20);

      v26 = v71;
      v56 = v80;
      if ((v54 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_27:
      if (!v75)
      {
        __break(1u);
        return;
      }

      v57 = *v27;
      v29 = v27[1];
      *v27 = v29;
      v27[1] = v57;
      --v27;
      v58 = __CFADD__(v56, 1);
      v28 = v56 + 1;
      if (v58)
      {
LABEL_4:
        a3 = v63 + 1;
        v27 = v62 + 1;
        v28 = v61 - 1;
        if (v63 + 1 == v60)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    sub_1A7CD0E68(v19);

LABEL_26:
    v56 = v80;
    goto LABEL_27;
  }
}

void sub_1A7D31A3C(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v177 = a4;
  v178 = a1;
  v7 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v172 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v181 = &v172 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v172 - v16;
  v205 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v205);
  v191 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v172 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v193 = &v172 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v172 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v172 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v180 = &v172 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v172 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v172 - v32;
  v203 = sub_1A7E22CF0();
  MEMORY[0x1EEE9AC00](v203);
  v192 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v201 = &v172 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v172 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v185 = &v172 - v40;
  v41 = a3[1];
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v44 = *v178;
    if (!*v178)
    {
      goto LABEL_175;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_168:
      v43 = sub_1A7CF0024(v43);
    }

    v212 = v43;
    v168 = *(v43 + 2);
    if (v168 >= 2)
    {
      while (*a3)
      {
        v169 = *&v43[16 * v168];
        v170 = *&v43[16 * v168 + 24];
        sub_1A7D32C6C((*a3 + 8 * v169), (*a3 + 8 * *&v43[16 * v168 + 16]), (*a3 + 8 * v170), v44);
        if (v5)
        {
          goto LABEL_146;
        }

        if (v170 < v169)
        {
          goto LABEL_162;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1A7CF0024(v43);
        }

        if (v168 - 2 >= *(v43 + 2))
        {
          goto LABEL_163;
        }

        v171 = &v43[16 * v168];
        *v171 = v169;
        *(v171 + 1) = v170;
        v212 = v43;
        sub_1A7CEFF98(v168 - 1);
        v43 = v212;
        v168 = *(v212 + 2);
        if (v168 <= 1)
        {
          goto LABEL_146;
        }
      }

      goto LABEL_172;
    }

LABEL_146:
  }

  else
  {
    v208 = v24;
    v42 = 0;
    v198 = (v39 + 32);
    v196 = (v39 + 8);
    v43 = MEMORY[0x1E69E7CC0];
    v183 = a3;
    v194 = v9;
    v200 = v12;
    while (1)
    {
      v44 = v42;
      v45 = v42 + 1;
      if (v42 + 1 >= v41)
      {
        ++v42;
LABEL_34:
        v80 = v177;
        goto LABEL_41;
      }

      v202 = v41;
      v46 = *a3;
      *&v210 = *(*a3 + 8 * v45);
      v209 = *(v46 + 8 * v42);

      LODWORD(v204) = sub_1A7D30F70(&v210, &v209);
      if (v5)
      {

        return;
      }

      v47 = v42 + 2;
      v174 = v42;
      if (v42 + 2 >= v202)
      {
        v42 += 2;
        v80 = v177;
        goto LABEL_38;
      }

      v173 = v43;
      v48 = (v46 + 8 * v42 + 16);
      v184 = 0;
      while (1)
      {
        v190 = v47;
        v56 = *(v48 - 1);
        v55 = *v48;

        v207 = v56;

        os_unfair_lock_lock((v55 + 40));
        v57 = type metadata accessor for LinkStateComponent(0);
        v58 = v57;
        v59 = *(v55 + 48);
        if (*(v59 + 16))
        {
          v60 = sub_1A7CD0DFC(v57);
          v61 = v187;
          if (v62)
          {
            sub_1A7B0CD10(*(v59 + 56) + 32 * v60, &v210);
          }

          else
          {
            v210 = 0u;
            v211 = 0u;
          }
        }

        else
        {
          v210 = 0u;
          v211 = 0u;
          v61 = v187;
        }

        os_unfair_lock_unlock((v55 + 40));
        v63 = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        v64 = v186;
        v206 = v63;
        v65 = swift_dynamicCast();
        v66 = *(v58 - 8);
        v67 = *(v66 + 56);
        v67(v64, v65 ^ 1u, 1, v58);
        v68 = *(v66 + 48);
        if (v68(v64, 1, v58))
        {
          sub_1A7CC9970(v64, &qword_1EB2B4A80, &unk_1A7E41910);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v69 = v179;
          sub_1A7CD0EC4(v64, v179);
          sub_1A7CC9970(v64, &qword_1EB2B4A80, &unk_1A7E41910);
          v70 = v69;
          v61 = v187;
          sub_1A7CDA450(v70, v187, type metadata accessor for LinkState);
        }

        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1A7CD0E68(v61);

          v5 = v184;
          a3 = v183;
          goto LABEL_31;
        }

        v199 = *v198;
        v199(v185, v61, v203);
        v71 = v207;
        os_unfair_lock_lock(v207 + 10);
        v72 = *&v71[12]._os_unfair_lock_opaque;
        if (*(v72 + 16))
        {
          v73 = sub_1A7CD0DFC(v58);
          if (v74)
          {
            sub_1A7B0CD10(*(v72 + 56) + 32 * v73, &v210);
          }

          else
          {
            v210 = 0u;
            v211 = 0u;
          }
        }

        else
        {
          v210 = 0u;
          v211 = 0u;
        }

        os_unfair_lock_unlock(v207 + 10);
        v75 = v181;
        v76 = swift_dynamicCast();
        v67(v75, v76 ^ 1u, 1, v58);
        if (v68(v75, 1, v58))
        {
          sub_1A7CC9970(v75, &qword_1EB2B4A80, &unk_1A7E41910);
          v77 = v180;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v78 = v175;
          sub_1A7CD0EC4(v75, v175);
          sub_1A7CC9970(v75, &qword_1EB2B4A80, &unk_1A7E41910);
          v79 = v78;
          v77 = v180;
          sub_1A7CDA450(v79, v180, type metadata accessor for LinkState);
        }

        v5 = v184;
        a3 = v183;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v196)(v185, v203);
          sub_1A7CD0E68(v77);

LABEL_31:
          v42 = v190;
          if ((v204 & 1) == 0)
          {
            v80 = v177;
            v43 = v173;
            v44 = v174;
            goto LABEL_41;
          }

          goto LABEL_10;
        }

        v49 = v176;
        v50 = v203;
        v199(v176, v77, v203);
        v51 = a3;
        v52 = v185;
        LODWORD(v206) = sub_1A7E22CB0();
        v53 = *v196;
        (*v196)(v49, v50);
        v54 = v52;
        a3 = v51;
        v53(v54, v50);

        v42 = v190;
        if ((v204 ^ v206))
        {
          break;
        }

LABEL_10:
        v47 = v42 + 1;
        ++v48;
        if (v202 == v42 + 1)
        {
          v45 = v42;
          v42 = v202;
          goto LABEL_37;
        }
      }

      v45 = v190 - 1;
LABEL_37:
      v80 = v177;
      v43 = v173;
LABEL_38:
      v44 = v174;
      if ((v204 & 1) == 0)
      {
        goto LABEL_41;
      }

      if (v42 < v174)
      {
        break;
      }

      if (v174 <= v45)
      {
        v162 = 8 * v42 - 8;
        v163 = 8 * v174;
        v164 = v42;
        v165 = v174;
        while (1)
        {
          if (v165 != --v164)
          {
            v167 = *a3;
            if (!*a3)
            {
              goto LABEL_173;
            }

            v166 = *(v167 + v163);
            *(v167 + v163) = *(v167 + v162);
            *(v167 + v162) = v166;
          }

          ++v165;
          v162 -= 8;
          v163 += 8;
          if (v165 >= v164)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_41:
      v81 = a3[1];
      if (v42 >= v81)
      {
        goto LABEL_79;
      }

      if (__OFSUB__(v42, v44))
      {
        goto LABEL_165;
      }

      if (v42 - v44 >= v80)
      {
        goto LABEL_79;
      }

      if (__OFADD__(v44, v80))
      {
        goto LABEL_166;
      }

      if (&v44[v80] >= v81)
      {
        v82 = a3[1];
      }

      else
      {
        v82 = &v44[v80];
      }

      if (v82 < v44)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (v42 == v82)
      {
        goto LABEL_79;
      }

      v173 = v43;
      v184 = v5;
      v83 = *a3;
      v206 = type metadata accessor for LinkStateComponent(0);
      v199 = (v206 - 8);
      v202 = v83;
      v84 = (v83 + 8 * v42 - 8);
      v174 = v44;
      v85 = &v44[-v42];
      v182 = v82;
      while (2)
      {
        v190 = v42;
        v86 = *(v202 + 8 * v42);
        v188 = v85;
        v189 = v84;
        while (2)
        {
          v87 = *v84;

          v207 = v87;

          os_unfair_lock_lock(v86 + 10);
          v88 = *&v86[12]._os_unfair_lock_opaque;
          if (*(v88 + 16) && (v89 = sub_1A7CD0DFC(v206), (v90 & 1) != 0))
          {
            sub_1A7B0CD10(*(v88 + 56) + 32 * v89, &v210);
          }

          else
          {
            v210 = 0u;
            v211 = 0u;
          }

          os_unfair_lock_unlock(v86 + 10);
          v91 = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
          v92 = v200;
          v204 = v91;
          v93 = v206;
          v94 = swift_dynamicCast();
          v95 = *(v93 - 8);
          v96 = *(v95 + 56);
          v96(v92, v94 ^ 1u, 1, v93);
          v97 = *(v95 + 48);
          if (v97(v92, 1, v93))
          {
            sub_1A7CC9970(v92, &qword_1EB2B4A80, &unk_1A7E41910);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v98 = v193;
            sub_1A7CD0EC4(v92, v193);
            sub_1A7CC9970(v92, &qword_1EB2B4A80, &unk_1A7E41910);
            sub_1A7CDA450(v98, v208, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v103 = v208;
LABEL_73:
            sub_1A7CD0E68(v103);

            goto LABEL_74;
          }

          v197 = *v198;
          v197(v201, v208, v203);
          v99 = v207;
          os_unfair_lock_lock(v207 + 10);
          v100 = *&v99[12]._os_unfair_lock_opaque;
          if (*(v100 + 16) && (v101 = sub_1A7CD0DFC(v206), (v102 & 1) != 0))
          {
            sub_1A7B0CD10(*(v100 + 56) + 32 * v101, &v210);
          }

          else
          {
            v210 = 0u;
            v211 = 0u;
          }

          os_unfair_lock_unlock(v207 + 10);
          v104 = v194;
          v105 = v206;
          v106 = swift_dynamicCast();
          v96(v104, v106 ^ 1u, 1, v105);
          if (v97(v104, 1, v105))
          {
            sub_1A7CC9970(v104, &qword_1EB2B4A80, &unk_1A7E41910);
            v107 = v195;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v108 = v191;
            sub_1A7CD0EC4(v104, v191);
            sub_1A7CC9970(v104, &qword_1EB2B4A80, &unk_1A7E41910);
            v107 = v195;
            sub_1A7CDA450(v108, v195, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*v196)(v201, v203);
            v103 = v107;
            goto LABEL_73;
          }

          v109 = v192;
          v110 = v203;
          v197(v192, v107, v203);
          v111 = v201;
          v112 = sub_1A7E22CB0();
          v113 = *v196;
          (*v196)(v109, v110);
          v113(v111, v110);

          if ((v112 & 1) == 0)
          {
            break;
          }

LABEL_74:
          if (!v202)
          {
            goto LABEL_170;
          }

          v114 = *v84;
          v86 = v84[1];
          *v84 = v86;
          v84[1] = v114;
          --v84;
          if (!__CFADD__(v85++, 1))
          {
            continue;
          }

          break;
        }

        v42 = v190 + 1;
        v84 = v189 + 1;
        v85 = v188 - 1;
        if ((v190 + 1) != v182)
        {
          continue;
        }

        break;
      }

      v42 = v182;
      v5 = v184;
      a3 = v183;
      v43 = v173;
      v44 = v174;
LABEL_79:
      if (v42 < v44)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1A7CCC08C(0, *(v43 + 2) + 1, 1, v43);
      }

      v117 = *(v43 + 2);
      v116 = *(v43 + 3);
      v118 = v117 + 1;
      if (v117 >= v116 >> 1)
      {
        v43 = sub_1A7CCC08C((v116 > 1), v117 + 1, 1, v43);
      }

      *(v43 + 2) = v118;
      v119 = &v43[16 * v117];
      *(v119 + 4) = v44;
      *(v119 + 5) = v42;
      v44 = *v178;
      if (!*v178)
      {
        goto LABEL_174;
      }

      if (v117)
      {
        while (1)
        {
          v120 = v118 - 1;
          if (v118 >= 4)
          {
            break;
          }

          if (v118 == 3)
          {
            v121 = *(v43 + 4);
            v122 = *(v43 + 5);
            v131 = __OFSUB__(v122, v121);
            v123 = v122 - v121;
            v124 = v131;
LABEL_99:
            if (v124)
            {
              goto LABEL_153;
            }

            v137 = &v43[16 * v118];
            v139 = *v137;
            v138 = *(v137 + 1);
            v140 = __OFSUB__(v138, v139);
            v141 = v138 - v139;
            v142 = v140;
            if (v140)
            {
              goto LABEL_156;
            }

            v143 = &v43[16 * v120 + 32];
            v145 = *v143;
            v144 = *(v143 + 1);
            v131 = __OFSUB__(v144, v145);
            v146 = v144 - v145;
            if (v131)
            {
              goto LABEL_159;
            }

            if (__OFADD__(v141, v146))
            {
              goto LABEL_160;
            }

            if (v141 + v146 >= v123)
            {
              if (v123 < v146)
              {
                v120 = v118 - 2;
              }

              goto LABEL_120;
            }

            goto LABEL_113;
          }

          v147 = &v43[16 * v118];
          v149 = *v147;
          v148 = *(v147 + 1);
          v131 = __OFSUB__(v148, v149);
          v141 = v148 - v149;
          v142 = v131;
LABEL_113:
          if (v142)
          {
            goto LABEL_155;
          }

          v150 = &v43[16 * v120];
          v152 = *(v150 + 4);
          v151 = *(v150 + 5);
          v131 = __OFSUB__(v151, v152);
          v153 = v151 - v152;
          if (v131)
          {
            goto LABEL_158;
          }

          if (v153 < v141)
          {
            goto LABEL_3;
          }

LABEL_120:
          v158 = v120 - 1;
          if (v120 - 1 >= v118)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          if (!*a3)
          {
            goto LABEL_171;
          }

          v159 = *&v43[16 * v158 + 32];
          v160 = *&v43[16 * v120 + 40];
          sub_1A7D32C6C((*a3 + 8 * v159), (*a3 + 8 * *&v43[16 * v120 + 32]), (*a3 + 8 * v160), v44);
          if (v5)
          {
            goto LABEL_146;
          }

          if (v160 < v159)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1A7CF0024(v43);
          }

          if (v158 >= *(v43 + 2))
          {
            goto LABEL_150;
          }

          v161 = &v43[16 * v158];
          *(v161 + 4) = v159;
          *(v161 + 5) = v160;
          v212 = v43;
          sub_1A7CEFF98(v120);
          v43 = v212;
          v118 = *(v212 + 2);
          if (v118 <= 1)
          {
            goto LABEL_3;
          }
        }

        v125 = &v43[16 * v118 + 32];
        v126 = *(v125 - 64);
        v127 = *(v125 - 56);
        v131 = __OFSUB__(v127, v126);
        v128 = v127 - v126;
        if (v131)
        {
          goto LABEL_151;
        }

        v130 = *(v125 - 48);
        v129 = *(v125 - 40);
        v131 = __OFSUB__(v129, v130);
        v123 = v129 - v130;
        v124 = v131;
        if (v131)
        {
          goto LABEL_152;
        }

        v132 = &v43[16 * v118];
        v134 = *v132;
        v133 = *(v132 + 1);
        v131 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v131)
        {
          goto LABEL_154;
        }

        v131 = __OFADD__(v123, v135);
        v136 = v123 + v135;
        if (v131)
        {
          goto LABEL_157;
        }

        if (v136 >= v128)
        {
          v154 = &v43[16 * v120 + 32];
          v156 = *v154;
          v155 = *(v154 + 1);
          v131 = __OFSUB__(v155, v156);
          v157 = v155 - v156;
          if (v131)
          {
            goto LABEL_161;
          }

          if (v123 < v157)
          {
            v120 = v118 - 2;
          }

          goto LABEL_120;
        }

        goto LABEL_99;
      }

LABEL_3:
      v41 = a3[1];
      if (v42 >= v41)
      {
        goto LABEL_136;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
  }
}

uint64_t sub_1A7D32C6C(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v128 = (&v116 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v127 = (&v116 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v131 = (&v116 - v15);
  v139 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v139);
  v119 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v116 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v116 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v116 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v120 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v123 = (&v116 - v31);
  v137 = sub_1A7E22CF0();
  v32 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v125 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v132 = &v116 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v118 = &v116 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v39 = a2;
  v130 = &v116 - v40;
  v41 = a2 - a1;
  v42 = v41 / 8;
  v43 = &a3[-v39];
  v44 = &a3[-v39 + 7];
  if (&a3[-v39] >= 0)
  {
    v44 = &a3[-v39];
  }

  v45 = v44 >> 3;
  if (v42 >= v44 >> 3)
  {
    if (a4 != v39 || v39 + 8 * v45 <= a4)
    {
      v81 = v39;
      memmove(a4, v39, 8 * v45);
      v39 = v81;
    }

    v138 = &a4[8 * v45];
    if (v43 < 8 || v39 <= a1)
    {
      v80 = v39;
    }

    else
    {
      v130 = (v32 + 32);
      v123 = (v32 + 8);
      v136 = a4;
      v82 = v128;
      v124 = v19;
      v133 = a1;
      do
      {
        v134 = v39;
        v83 = (v39 - 8);
        v84 = a3 - 8;
        v85 = v138;
        v86 = v122;
        v127 = v83;
        while (1)
        {
          v87 = *(v85 - 8);
          v88 = *v83;

          v142 = v88;

          os_unfair_lock_lock(v87 + 10);
          v89 = type metadata accessor for LinkStateComponent(0);
          v90 = v89;
          v91 = *&v87[12]._os_unfair_lock_opaque;
          v92 = *(v91 + 16);
          v135 = v84;
          v129 = (v85 - 8);
          if (v92 && (v93 = sub_1A7CD0DFC(v89), (v94 & 1) != 0))
          {
            sub_1A7B0CD10(*(v91 + 56) + 32 * v93, &v140);
          }

          else
          {
            v140 = 0u;
            v141 = 0u;
          }

          v131 = v87;
          os_unfair_lock_unlock(v87 + 10);
          sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
          v95 = swift_dynamicCast();
          v96 = *(v90 - 8);
          v97 = *(v96 + 56);
          v97(v82, v95 ^ 1u, 1, v90);
          v98 = *(v96 + 48);
          if (v98(v82, 1, v90))
          {
            sub_1A7CC9970(v82, &qword_1EB2B4A80, &unk_1A7E41910);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v99 = v121;
            sub_1A7CD0EC4(v82, v121);
            sub_1A7CC9970(v82, &qword_1EB2B4A80, &unk_1A7E41910);
            v100 = v99;
            v86 = v122;
            sub_1A7CDA450(v100, v122, type metadata accessor for LinkState);
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1A7CD0E68(v86);

            a3 = v135;
            a4 = v136;
            goto LABEL_67;
          }

          v101 = *v130;
          (*v130)(v132, v86, v137);
          v102 = v142;
          os_unfair_lock_lock(v142 + 10);
          v103 = *&v102[12]._os_unfair_lock_opaque;
          if (*(v103 + 16) && (v104 = sub_1A7CD0DFC(v90), (v105 & 1) != 0))
          {
            sub_1A7B0CD10(*(v103 + 56) + 32 * v104, &v140);
          }

          else
          {
            v140 = 0u;
            v141 = 0u;
          }

          os_unfair_lock_unlock(v142 + 10);
          v106 = v126;
          v107 = swift_dynamicCast();
          v97(v106, v107 ^ 1u, 1, v90);
          if (v98(v106, 1, v90))
          {
            sub_1A7CC9970(v106, &qword_1EB2B4A80, &unk_1A7E41910);
            v108 = v124;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v109 = v119;
            sub_1A7CD0EC4(v106, v119);
            sub_1A7CC9970(v106, &qword_1EB2B4A80, &unk_1A7E41910);
            v108 = v124;
            sub_1A7CDA450(v109, v124, type metadata accessor for LinkState);
          }

          a3 = v135;
          a4 = v136;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            break;
          }

          v110 = v125;
          v111 = v137;
          v101(v125, v108, v137);
          v112 = v132;
          v113 = sub_1A7E22CB0();
          v114 = *v123;
          (*v123)(v110, v111);
          v114(v112, v111);

          v82 = v128;
          if (v113)
          {
            goto LABEL_67;
          }

          v83 = v127;
          v85 = v129;
          if (a3 + 8 != v138)
          {
            *a3 = *v129;
          }

          v84 = a3 - 8;
          v138 = v85;
          if (v85 <= a4)
          {
            v138 = v85;
            v80 = v134;
            goto LABEL_74;
          }
        }

        (*v123)(v132, v137);
        sub_1A7CD0E68(v108);

        v82 = v128;
LABEL_67:
        v80 = v127;
        if (a3 + 8 != v134)
        {
          *a3 = *v127;
        }

        if (v138 <= a4)
        {
          break;
        }

        v39 = v80;
      }

      while (v80 > v133);
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v42] <= a4)
    {
      v46 = v39;
      memmove(a4, a1, 8 * v42);
      v39 = v46;
    }

    v138 = &a4[8 * v42];
    if (v41 >= 8 && v39 < a3)
    {
      v129 = (v32 + 32);
      v126 = (v32 + 8);
      v47 = v131;
      v48 = v123;
      v135 = a3;
      while (1)
      {
        v134 = v39;
        v49 = *v39;
        v50 = *a4;

        v142 = v50;

        os_unfair_lock_lock((v49 + 40));
        v51 = type metadata accessor for LinkStateComponent(0);
        v52 = v51;
        v53 = *(v49 + 48);
        v54 = *(v53 + 16);
        v136 = a4;
        v133 = a1;
        if (v54 && (v55 = sub_1A7CD0DFC(v51), (v56 & 1) != 0))
        {
          sub_1A7B0CD10(*(v53 + 56) + 32 * v55, &v140);
        }

        else
        {
          v140 = 0u;
          v141 = 0u;
        }

        os_unfair_lock_unlock((v49 + 40));
        v132 = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        v57 = swift_dynamicCast();
        v58 = *(v52 - 8);
        v59 = *(v58 + 56);
        v59(v47, v57 ^ 1u, 1, v52);
        v60 = *(v58 + 48);
        if (v60(v47, 1, v52))
        {
          sub_1A7CC9970(v47, &qword_1EB2B4A80, &unk_1A7E41910);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v61 = v120;
          sub_1A7CD0EC4(v47, v120);
          sub_1A7CC9970(v47, &qword_1EB2B4A80, &unk_1A7E41910);
          v62 = v61;
          v48 = v123;
          sub_1A7CDA450(v62, v123, type metadata accessor for LinkState);
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v64 = v142;
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        v128 = *v129;
        v128(v130, v48, v137);
        os_unfair_lock_lock(v64 + 10);
        v65 = *&v64[12]._os_unfair_lock_opaque;
        if (*(v65 + 16) && (v66 = sub_1A7CD0DFC(v52), (v67 & 1) != 0))
        {
          sub_1A7B0CD10(*(v65 + 56) + 32 * v66, &v140);
        }

        else
        {
          v140 = 0u;
          v141 = 0u;
        }

        os_unfair_lock_unlock(v64 + 10);
        v69 = v127;
        v70 = swift_dynamicCast();
        v59(v69, v70 ^ 1u, 1, v52);
        if (v60(v69, 1, v52))
        {
          sub_1A7CC9970(v69, &qword_1EB2B4A80, &unk_1A7E41910);
          v71 = v124;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v72 = v117;
          sub_1A7CD0EC4(v69, v117);
          sub_1A7CC9970(v69, &qword_1EB2B4A80, &unk_1A7E41910);
          v71 = v124;
          sub_1A7CDA450(v72, v124, type metadata accessor for LinkState);
        }

        a4 = v136;
        v68 = v133;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v126)(v130, v137);
          sub_1A7CD0E68(v71);

LABEL_32:
          v47 = v131;
LABEL_33:
          v77 = v134;
          v39 = (v134 + 8);
          v79 = v135;
          if (v68 == v134)
          {
            goto LABEL_35;
          }

LABEL_34:
          *v68 = *v77;
          goto LABEL_35;
        }

        v73 = v118;
        v74 = v137;
        v128(v118, v71, v137);
        v75 = v130;
        LODWORD(v132) = sub_1A7E22CB0();
        v76 = *v126;
        (*v126)(v73, v74);
        v76(v75, v74);

        v47 = v131;
        if (v132)
        {
          goto LABEL_33;
        }

        v77 = a4;
        v78 = v68 == a4;
        a4 += 8;
        v39 = v134;
        v79 = v135;
        if (!v78)
        {
          goto LABEL_34;
        }

LABEL_35:
        a1 = v68 + 8;
        if (a4 >= v138 || v39 >= v79)
        {
          goto LABEL_37;
        }
      }

      sub_1A7CD0E68(v48);

      a4 = v136;
      v68 = v133;
      goto LABEL_32;
    }

LABEL_37:
    v80 = a1;
  }

LABEL_74:
  if (v80 != a4 || v80 >= &a4[(v138 - a4 + (v138 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v80, a4, 8 * ((v138 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1A7D339FC(uint64_t a1, void (**a2)(unint64_t, uint64_t), uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v272 = a7;
  v286 = a6;
  v281 = a2;
  v279 = a1;
  v289 = sub_1A7E22CF0();
  v12 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  *&v260 = &v249 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v249 - v15;
  v17 = sub_1A7CC7FFC(&qword_1EB2B5B78, &unk_1A7E488D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v266 = &v249 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v255 = &v249 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v270 = &v249 - v22;
  v23 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v256 = &v249 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v259 = &v249 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v261 = (&v249 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v269 = &v249 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v283 = &v249 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v271 = &v249 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v280 = &v249 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v284 = &v249 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v249 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v277 = (&v249 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v288 = (&v249 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v278 = &v249 - v47;
  v48 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v48);
  v258 = &v249 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v268 = (&v249 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v265 = &v249 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v282 = &v249 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v276 = &v249 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v267 = &v249 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v274 = (&v249 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v275 = (&v249 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v285 = (&v249 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v249 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v287 = (&v249 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v273 = (&v249 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v249 - v74;
  v77 = MEMORY[0x1EEE9AC00](v76);
  v262 = v79;
  v80 = *(v79 + 16);
  v263 = &v249 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = a8;
  v80(v77);
  v81 = *a5;
  v291 = a4;
  v292 = v48;
  v82 = a4 >> 62;
  if (v81 == 1)
  {
    if (!v82)
    {
      v83 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v83)
      {
        goto LABEL_164;
      }

LABEL_4:
      v84 = type metadata accessor for LinkStateComponent(0);
      if (v83 < 1)
      {
        goto LABEL_167;
      }

      v85 = v84;
      v16 = 0;
      v285 = (v291 & 0xC000000000000001);
      v272 = v291 & 0xFFFFFFFFFFFFFF8;
      v282 = (v84 - 8);
      v276 = (v12 + 8);
      v275 = (v12 + 16);
      v274 = (v281 + 3);
      v280 = v75;
      v86 = v278;
      v283 = v83;
      v284 = v84;
      do
      {
        if (v285)
        {
          v87 = MEMORY[0x1AC562480](v16, v291);
        }

        else
        {
          if (v16 >= *(v272 + 16))
          {
            goto LABEL_94;
          }

          v87 = *(v291 + 8 * v16 + 32);
        }

        os_unfair_lock_lock((v87 + 40));
        v88 = *(v87 + 48);
        v290 = (v87 + 48);
        if (*(v88 + 16) && (v89 = sub_1A7CD0DFC(v85), (v90 & 1) != 0))
        {
          sub_1A7B0CD10(*(v88 + 56) + 32 * v89, &v293);
        }

        else
        {
          v293 = 0u;
          v294 = 0u;
        }

        os_unfair_lock_unlock((v87 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        v91 = swift_dynamicCast();
        v92 = *(v85 - 8);
        v12 = *(v92 + 56);
        (v12)(v86, v91 ^ 1u, 1, v85);
        v93 = *(v92 + 48);
        if (v93(v86, 1, v85))
        {
          v94 = v86;
          sub_1A7CC9970(v86, &qword_1EB2B4A80, &unk_1A7E41910);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v95 = v273;
          sub_1A7CD0EC4(v86, v273);
          v94 = v86;
          sub_1A7CC9970(v86, &qword_1EB2B4A80, &unk_1A7E41910);
          v75 = v280;
          sub_1A7CDA450(v95, v280, type metadata accessor for LinkState);
        }

        if (swift_getEnumCaseMultiPayload() >= 2)
        {

          sub_1A7CD0E68(v75);
          v86 = v94;
          v85 = v284;
        }

        else
        {
          v96 = v289;
          (*v276)(v75, v289);
          v97 = v287;
          (*v275)(v287, v286, v96);
          swift_storeEnumTagMultiPayload();
          v98 = v288;
          sub_1A7CD0EC4(v97, v288);
          v85 = v284;
          (v12)(v98, 0, 1, v284);
          os_unfair_lock_lock((v87 + 40));
          v99 = v277;
          v12 = &unk_1A7E41910;
          sub_1A7CD1F00(v98, v277, &qword_1EB2B4A80, &unk_1A7E41910);
          if (v93(v99, 1, v85) == 1)
          {
            sub_1A7CC9970(v99, &qword_1EB2B4A80, &unk_1A7E41910);
            v293 = 0u;
            v294 = 0u;
          }

          else
          {
            *(&v294 + 1) = v85;
            v100 = sub_1A7CC98BC(&v293);
            sub_1A7CDA450(v99, v100, type metadata accessor for LinkStateComponent);
          }

          sub_1A7CC8D74(&v293, v85);
          os_unfair_lock_unlock((v87 + 40));
          sub_1A7CD0E68(v287);
          sub_1A7CC9970(v288, &qword_1EB2B4A80, &unk_1A7E41910);
          ObjectType = swift_getObjectType();
          v281[3](v87, ObjectType);

          v86 = v278;
          v75 = v280;
        }

        ++v16;
      }

      while (v283 != v16);
      goto LABEL_163;
    }

LABEL_96:
    v83 = sub_1A7E22DA0();
    if (!v83)
    {
      goto LABEL_164;
    }

    goto LABEL_4;
  }

  v296 = MEMORY[0x1E69E7CC0];
  if (v82)
  {
    v102 = sub_1A7E22DA0();
  }

  else
  {
    v102 = *((v291 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v252 = v16;
  v290 = v102;
  v257 = v12;
  if (!v102)
  {
    goto LABEL_54;
  }

  v103 = 0;
  v16 = v291 & 0xC000000000000001;
  v104 = v12;
  v12 = (v291 & 0xFFFFFFFFFFFFFF8);
  v288 = (v104 + 8);
  while (!v16)
  {
    if (v103 >= *(v12 + 2))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v75 = *(v291 + 8 * v103 + 32);

    v105 = (v103 + 1);
    if (__OFADD__(v103, 1))
    {
      goto LABEL_52;
    }

LABEL_33:
    os_unfair_lock_lock((v75 + 40));
    v106 = *(v75 + 48);
    if (*(v106 + 16) && (v107 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v108 & 1) != 0))
    {
      sub_1A7B0CD10(*(v106 + 56) + 32 * v107, &v293);
    }

    else
    {
      v293 = 0u;
      v294 = 0u;
    }

    os_unfair_lock_unlock((v75 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if (swift_dynamicCast() & 1) != 0 && v295 != 2 && (v295)
    {
    }

    else
    {
      os_unfair_lock_lock((v75 + 40));
      v109 = type metadata accessor for LinkStateComponent(0);
      v110 = v109;
      v111 = *(v75 + 48);
      if (*(v111 + 16) && (v112 = sub_1A7CD0DFC(v109), (v113 & 1) != 0))
      {
        sub_1A7B0CD10(*(v111 + 56) + 32 * v112, &v293);
      }

      else
      {
        v293 = 0u;
        v294 = 0u;
      }

      os_unfair_lock_unlock((v75 + 40));
      v114 = swift_dynamicCast();
      v115 = *(v110 - 8);
      (*(v115 + 56))(v41, v114 ^ 1u, 1, v110);
      if ((*(v115 + 48))(v41, 1, v110))
      {
        sub_1A7CC9970(v41, &qword_1EB2B4A80, &unk_1A7E41910);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v116 = v285;
        sub_1A7CD0EC4(v41, v285);
        sub_1A7CC9970(v41, &qword_1EB2B4A80, &unk_1A7E41910);
        sub_1A7CDA450(v116, v68, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v288)(v68, v289);
        sub_1A7E22BF0();
        sub_1A7E22C40();
        sub_1A7E22C50();
        sub_1A7E22C00();
      }

      else
      {

        sub_1A7CD0E68(v68);
      }
    }

    ++v103;
    if (v105 == v290)
    {
      goto LABEL_53;
    }
  }

  v75 = MEMORY[0x1AC562480](v103, v291);
  v105 = (v103 + 1);
  if (!__OFADD__(v103, 1))
  {
    goto LABEL_33;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v12 = v257;
LABEL_54:

  *&v293 = sub_1A7DB25A8(v117);
  sub_1A7D311D4(&v293);
  v118 = v289;
  v16 = v275;

  v83 = v293;
  if ((v293 & 0x8000000000000000) != 0 || (v293 & 0x4000000000000000) != 0)
  {
    if (sub_1A7E22DA0())
    {
      goto LABEL_57;
    }
  }

  else if (*(v293 + 16))
  {
LABEL_57:
    if ((v83 & 0xC000000000000001) != 0)
    {
      goto LABEL_168;
    }

    if (*(v83 + 16))
    {
      v278 = *(v83 + 32);

      goto LABEL_60;
    }

    __break(1u);

    __break(1u);
    return result;
  }

  v172 = *(v12 + 7);
  v278 = v12 + 56;
  v277 = v172;
  (v172)(v270, 1, 1, v118);
  if (!v290)
  {
LABEL_159:
    v243 = v270;
    v244 = v255;
    sub_1A7CD1F00(v270, v255, &qword_1EB2B5B78, &unk_1A7E488D0);
    v245 = v257;
    if ((*(v257 + 6))(v244, 1, v118) == 1)
    {
      sub_1A7CC9970(v243, &qword_1EB2B5B78, &unk_1A7E488D0);
      v246 = v244;
    }

    else
    {
      v247 = v252;
      v245[4](v252, v244, v118);
      (*(a9 + 24))(v247, v264, a9);
      (v245[1])(v247, v118);
      v246 = v243;
    }

    sub_1A7CC9970(v246, &qword_1EB2B5B78, &unk_1A7E488D0);
LABEL_163:
    v83 = 0;
    goto LABEL_164;
  }

  v75 = 0;
  v280 = v291 & 0xC000000000000001;
  v276 = v291 & 0xFFFFFFFFFFFFFF8;
  v275 = (v257 + 16);
  v250 = v281 + 2;
  v274 = (v257 + 8);
  v273 = v281 + 1;
  v253 = (v257 + 32);
  v174 = 1;
  *&v173 = 136315650;
  v251 = v173;
  *&v173 = 136315394;
  v249 = v173;
  while (2)
  {
    if (v280)
    {
      v175 = MEMORY[0x1AC562480](v75, v291);
      v176 = (v75 + 1);
      if (__OFADD__(v75, 1))
      {
        goto LABEL_165;
      }

LABEL_110:
      os_unfair_lock_lock((v175 + 40));
      v16 = v175 + 48;
      v177 = *(v175 + 48);
      if (*(v177 + 16) && (v178 = sub_1A7CD0DFC(&type metadata for LinkIsPendingRemoval), (v179 & 1) != 0))
      {
        sub_1A7B0CD10(*(v177 + 56) + 32 * v178, &v293);
      }

      else
      {
        v293 = 0u;
        v294 = 0u;
      }

      os_unfair_lock_unlock((v175 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if (swift_dynamicCast() & 1) != 0 && v296 != 2 && (v296)
      {

        v83 = v290;
        if (v176 == v290)
        {
          goto LABEL_159;
        }

        goto LABEL_103;
      }

      v287 = v176;
      os_unfair_lock_lock((v175 + 40));
      v180 = type metadata accessor for LinkStateComponent(0);
      v181 = v180;
      v182 = *v16;
      v183 = *(*v16 + 16);
      v288 = v75;
      if (v183 && (v184 = sub_1A7CD0DFC(v180), (v185 & 1) != 0))
      {
        sub_1A7B0CD10(*(v182 + 56) + 32 * v184, &v293);
      }

      else
      {
        v293 = 0u;
        v294 = 0u;
      }

      os_unfair_lock_unlock((v175 + 40));
      v186 = v283;
      v187 = swift_dynamicCast();
      v188 = *(v181 - 8);
      v284 = *(v188 + 56);
      (v284)(v186, v187 ^ 1u, 1, v181);
      v189 = *(v188 + 48);
      v83 = v188 + 48;
      v285 = v189;
      if ((v189)(v186, 1, v181))
      {
        sub_1A7CC9970(v186, &qword_1EB2B4A80, &unk_1A7E41910);
        v190 = v282;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v191 = v265;
        sub_1A7CD0EC4(v186, v265);
        sub_1A7CC9970(v186, &qword_1EB2B4A80, &unk_1A7E41910);
        v190 = v282;
        sub_1A7CDA450(v191, v282, type metadata accessor for LinkState);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 4) >= 2)
        {
          if ((*(v190 + 9) & 1) == 0)
          {

            goto LABEL_155;
          }

          if (qword_1EB2B47C0 != -1)
          {
            swift_once();
          }

          v218 = sub_1A7E22060();
          sub_1A7B0CB00(v218, qword_1EB2B5F68);

          v219 = sub_1A7E22040();
          v220 = sub_1A7E228F0();

          if (os_log_type_enabled(v219, v220))
          {
            v221 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            *&v293 = v271;
            *v221 = v249;
            v254 = v220;
            v222 = *(v175 + 16);
            v223 = *(v175 + 24);

            v224 = sub_1A7B0CB38(v222, v223, &v293);

            *(v221 + 4) = v224;
            *(v221 + 12) = 2080;
            v225 = v267;
            LinkEngineLink.state.getter(v267);
            v226 = LinkState.description.getter();
            v228 = v227;
            sub_1A7CD0E68(v225);
            v229 = sub_1A7B0CB38(v226, v228, &v293);

            *(v221 + 14) = v229;
            _os_log_impl(&dword_1A7AD9000, v219, v254, "%s: %s -> connecting (reconnect)", v221, 0x16u);
            v230 = v271;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v230, -1, -1);
            MEMORY[0x1AC5654B0](v221, -1, -1);
          }

          v231 = v270;
          v232 = v256;
          v233 = v258;
          v118 = v289;
          (*v275)(v258, v286, v289);
          swift_storeEnumTagMultiPayload();
          v234 = v233;
          v235 = v259;
          sub_1A7CD0EC4(v234, v259);
          (v284)(v235, 0, 1, v181);
          os_unfair_lock_lock((v175 + 40));
          sub_1A7CD1F00(v235, v232, &qword_1EB2B4A80, &unk_1A7E41910);
          if ((v285)(v232, 1, v181) == 1)
          {
            sub_1A7CC9970(v232, &qword_1EB2B4A80, &unk_1A7E41910);
            v293 = 0u;
            v294 = 0u;
          }

          else
          {
            *(&v294 + 1) = v181;
            v240 = sub_1A7CC98BC(&v293);
            sub_1A7CDA450(v232, v240, type metadata accessor for LinkStateComponent);
          }

          v75 = v288;
          sub_1A7CC8D74(&v293, v181);
          os_unfair_lock_unlock((v175 + 40));
          sub_1A7CD0E68(v258);
          sub_1A7CC9970(v259, &qword_1EB2B4A80, &unk_1A7E41910);
          v241 = swift_getObjectType();
          v281[2](v175, v241);
          v242 = v266;
          sub_1A7E22CD0();

          sub_1A7CC9970(v231, &qword_1EB2B5B78, &unk_1A7E488D0);
          (v277)(v242, 0, 1, v118);
          sub_1A7D25AEC(v242, v231);
          v174 = 0;
          v83 = v290;
          if (v287 == v290)
          {
            goto LABEL_159;
          }

LABEL_103:
          ++v75;
          continue;
        }

        if ((v174 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v16 = v260;
          (*v253)(v260, v190, v118);
          sub_1A7E22CE0();
          v214 = sub_1A7E232A0();
          v83 = v290;
          v215 = v287;
          v75 = v288;
          if (v214)
          {
            v216 = v266;
            sub_1A7E22CD0();

            (*v274)(v16, v118);
            v217 = v270;
            sub_1A7CC9970(v270, &qword_1EB2B5B78, &unk_1A7E488D0);
            (v277)(v216, 0, 1, v118);
            sub_1A7D25AEC(v216, v217);
            v174 = 0;
            if (v215 == v83)
            {
              goto LABEL_159;
            }
          }

          else
          {
            (*v274)(v16, v118);

            if (v215 == v83)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_103;
        }

        if (EnumCaseMultiPayload == 1)
        {

          sub_1A7CD0E68(v190);
LABEL_155:
          v83 = v290;
          v75 = v288;
          if (v287 == v290)
          {
            goto LABEL_159;
          }

          goto LABEL_103;
        }

        (*v274)(v190, v118);
        if ((v174 & 1) == 0)
        {
LABEL_147:

          if (v287 == v290)
          {
            goto LABEL_159;
          }

          v174 = 0;
          v75 = v288 + 1;
          continue;
        }
      }

      if (qword_1EB2B47C0 != -1)
      {
        swift_once();
      }

      v193 = sub_1A7E22060();
      sub_1A7B0CB00(v193, qword_1EB2B5F68);

      v194 = sub_1A7E22040();
      v195 = sub_1A7E228F0();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *&v293 = v271;
        *v196 = v251;
        v197 = sub_1A7E22230();
        v254 = v195;
        v199 = sub_1A7B0CB38(v197, v198, &v293);

        *(v196 + 4) = v199;
        *(v196 + 12) = 2080;
        v200 = *(v175 + 16);
        v201 = *(v175 + 24);

        v202 = sub_1A7B0CB38(v200, v201, &v293);

        *(v196 + 14) = v202;
        *(v196 + 22) = 2080;
        v203 = v267;
        LinkEngineLink.state.getter(v267);
        v204 = LinkState.description.getter();
        v206 = v205;
        sub_1A7CD0E68(v203);
        v207 = sub_1A7B0CB38(v204, v206, &v293);

        *(v196 + 24) = v207;
        _os_log_impl(&dword_1A7AD9000, v194, v254, "%s %s: %s -> connecting", v196, 0x20u);
        v208 = v271;
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v208, -1, -1);
        v209 = v196;
        v118 = v289;
        MEMORY[0x1AC5654B0](v209, -1, -1);
      }

      v210 = v261;
      v211 = v268;
      (*v275)(v268, v286, v118);
      swift_storeEnumTagMultiPayload();
      v212 = v211;
      v213 = v269;
      sub_1A7CD0EC4(v212, v269);
      (v284)(v213, 0, 1, v181);
      os_unfair_lock_lock((v175 + 40));
      sub_1A7CD1F00(v213, v210, &qword_1EB2B4A80, &unk_1A7E41910);
      if ((v285)(v210, 1, v181) == 1)
      {
        sub_1A7CC9970(v210, &qword_1EB2B4A80, &unk_1A7E41910);
        v293 = 0u;
        v294 = 0u;
      }

      else
      {
        *(&v294 + 1) = v181;
        v236 = sub_1A7CC98BC(&v293);
        sub_1A7CDA450(v210, v236, type metadata accessor for LinkStateComponent);
      }

      v237 = v288;
      sub_1A7CC8D74(&v293, v181);
      os_unfair_lock_unlock((v175 + 40));
      sub_1A7CD0E68(v268);
      sub_1A7CC9970(v269, &qword_1EB2B4A80, &unk_1A7E41910);
      v238 = swift_getObjectType();
      v281[1](v175, v238);
      v239 = v266;
      sub_1A7E22CD0();

      v83 = v270;
      sub_1A7CC9970(v270, &qword_1EB2B5B78, &unk_1A7E488D0);
      (v277)(v239, 0, 1, v118);
      sub_1A7D25AEC(v239, v83);
      if (v287 == v290)
      {
        goto LABEL_159;
      }

      v174 = 0;
      v75 = v237 + 1;
      continue;
    }

    break;
  }

  if (v75 >= *(v276 + 16))
  {
    goto LABEL_166;
  }

  v175 = *(v291 + 8 * v75 + 32);

  v176 = (v75 + 1);
  if (!__OFADD__(v75, 1))
  {
    goto LABEL_110;
  }

LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  v278 = MEMORY[0x1AC562480](0, v83);
LABEL_60:

  if (qword_1EB2B47C0 != -1)
  {
    swift_once();
  }

  v119 = sub_1A7E22060();
  v120 = sub_1A7B0CB00(v119, qword_1EB2B5F68);
  v121 = v278;

  v269 = v120;
  v122 = sub_1A7E22040();
  v123 = sub_1A7E228F0();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v293 = v125;
    *v124 = 136315138;
    v126 = *(v121 + 2);
    v127 = *(v121 + 3);

    v128 = sub_1A7B0CB38(v126, v127, &v293);

    *(v124 + 4) = v128;
    _os_log_impl(&dword_1A7AD9000, v122, v123, "earliest connected link: %s", v124, 0xCu);
    sub_1A7B0CD6C(v125);
    MEMORY[0x1AC5654B0](v125, -1, -1);
    MEMORY[0x1AC5654B0](v124, -1, -1);
  }

  if (v290)
  {
    v129 = v291;
    v283 = (v291 & 0xC000000000000001);
    v12 = type metadata accessor for LinkStateComponent(0);
    v130 = 0;
    v270 = v129 & 0xFFFFFFFFFFFFFF8;
    v282 = v12 - 8;
    v273 = (v257 + 8);
    v268 = (v257 + 16);
    v266 = (v281 + 3);
    *&v131 = 136315906;
    v260 = v131;
    do
    {
      if (v283)
      {
        v75 = MEMORY[0x1AC562480](v130, v291);
        v132 = (v130 + 1);
        if (__OFADD__(v130, 1))
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (v130 >= *(v270 + 16))
        {
          goto LABEL_95;
        }

        v75 = *(v291 + 8 * v130 + 32);

        v132 = (v130 + 1);
        if (__OFADD__(v130, 1))
        {
          goto LABEL_93;
        }
      }

      os_unfair_lock_lock((v75 + 40));
      v133 = *(v75 + 48);
      v288 = (v75 + 48);
      if (*(v133 + 16) && (v134 = sub_1A7CD0DFC(v12), (v135 & 1) != 0))
      {
        sub_1A7B0CD10(*(v133 + 56) + 32 * v134, &v293);
      }

      else
      {
        v293 = 0u;
        v294 = 0u;
      }

      os_unfair_lock_unlock((v75 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      v136 = v284;
      v137 = swift_dynamicCast();
      v138 = *(v12 - 1);
      v285 = *(v138 + 56);
      (v285)(v136, v137 ^ 1u, 1, v12);
      v287 = *(v138 + 48);
      if ((v287)(v136, 1, v12))
      {
        sub_1A7CC9970(v136, &qword_1EB2B4A80, &unk_1A7E41910);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v139 = v274;
        sub_1A7CD0EC4(v136, v274);
        sub_1A7CC9970(v136, &qword_1EB2B4A80, &unk_1A7E41910);
        v140 = v139;
        v16 = v275;
        sub_1A7CDA450(v140, v275, type metadata accessor for LinkState);
      }

      if (swift_getEnumCaseMultiPayload() >= 2)
      {

        sub_1A7CD0E68(v16);
      }

      else
      {
        (*v273)(v16, v289);
        if (v75 != v278)
        {
          v277 = v132;
          v141 = v16;
          v142 = v278;

          v143 = sub_1A7E22040();
          v144 = sub_1A7E228F0();
          v145 = v142;

          LODWORD(v272) = v144;
          if (os_log_type_enabled(v143, v144))
          {
            v146 = swift_slowAlloc();
            v265 = swift_slowAlloc();
            *&v293 = v265;
            *v146 = v260;
            v261 = v143;
            v147 = *(v75 + 16);
            v148 = *(v75 + 24);

            v149 = sub_1A7B0CB38(v147, v148, &v293);

            *(v146 + 4) = v149;
            *(v146 + 12) = 2080;
            v150 = *(v145 + 2);
            v151 = *(v145 + 3);

            v152 = sub_1A7B0CB38(v150, v151, &v293);

            *(v146 + 14) = v152;
            *(v146 + 22) = 2080;
            v153 = v267;
            LinkEngineLink.state.getter(v267);
            v154 = LinkState.description.getter();
            v156 = v155;
            sub_1A7CD0E68(v153);
            v157 = sub_1A7B0CB38(v154, v156, &v293);

            *(v146 + 24) = v157;
            *(v146 + 32) = 2080;
            LinkEngineLink.state.getter(v153);
            v158 = LinkState.description.getter();
            v160 = v159;
            v161 = v153;
            v162 = v271;
            sub_1A7CD0E68(v161);
            v163 = sub_1A7B0CB38(v158, v160, &v293);
            v16 = v275;

            *(v146 + 34) = v163;
            v164 = v261;
            _os_log_impl(&dword_1A7AD9000, v261, v272, "%s: Disconnecting because it is not %s; state: %s, earlier link state: %s", v146, 0x2Au);
            v165 = v265;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v165, -1, -1);
            MEMORY[0x1AC5654B0](v146, -1, -1);
          }

          else
          {

            v162 = v271;
            v16 = v141;
          }

          v166 = v276;
          (*v268)(v276, v286, v289);
          swift_storeEnumTagMultiPayload();
          v167 = v166;
          v168 = v280;
          sub_1A7CD0EC4(v167, v280);
          (v285)(v168, 0, 1, v12);
          os_unfair_lock_lock((v75 + 40));
          sub_1A7CD1F00(v168, v162, &qword_1EB2B4A80, &unk_1A7E41910);
          v169 = (v287)(v162, 1, v12);
          v132 = v277;
          if (v169 == 1)
          {
            sub_1A7CC9970(v162, &qword_1EB2B4A80, &unk_1A7E41910);
            v293 = 0u;
            v294 = 0u;
          }

          else
          {
            *(&v294 + 1) = v12;
            v170 = sub_1A7CC98BC(&v293);
            sub_1A7CDA450(v162, v170, type metadata accessor for LinkStateComponent);
          }

          sub_1A7CC8D74(&v293, v12);
          os_unfair_lock_unlock((v75 + 40));
          sub_1A7CD0E68(v276);
          sub_1A7CC9970(v280, &qword_1EB2B4A80, &unk_1A7E41910);
          v171 = swift_getObjectType();
          v281[3](v75, v171);
        }
      }

      ++v130;
    }

    while (v132 != v290);
  }

  v83 = 1;
LABEL_164:
  (*(v262 + 8))(v263, v264);
  return v83;
}

unint64_t sub_1A7D35E78()
{
  result = qword_1EB2B5F80;
  if (!qword_1EB2B5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5F80);
  }

  return result;
}

uint64_t sub_1A7D35F2C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2D90);
  sub_1A7B0CB00(v0, qword_1EB2B2D90);
  return sub_1A7E22050();
}

uint64_t LEToolLinksListRequest.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B5DC8, &qword_1A7E48620);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_1A7D30374(a1, a2);
}

uint64_t sub_1A7D3603C()
{
  v0 = sub_1A7E21830();
  sub_1A7CC7A10(v0, qword_1EB2B5F88);
  sub_1A7B0CB00(v0, qword_1EB2B5F88);
  return sub_1A7D36088();
}

uint64_t sub_1A7D36088()
{
  sub_1A7E21800();
  type metadata accessor for LEToolLink(0);
  sub_1A7E21820();
  sub_1A7E21820();
  sub_1A7E21820();
  sub_1A7E21820();
  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();

  swift_getKeyPath();

  sub_1A7E21810();
}

uint64_t sub_1A7D3627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D3630C(uint64_t a1)
{
  v2 = sub_1A7D365E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D36348(uint64_t a1)
{
  v2 = sub_1A7D365E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D36390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LEToolLinksListRequest.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5FA0, &qword_1A7E48900);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D365E4();
  sub_1A7E23260();
  if (qword_1EB2B47D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A7E21830();
  sub_1A7B0CB00(v6, qword_1EB2B5F88);
  sub_1A7CC7FFC(&qword_1EB2B5DC8, &qword_1A7E48620);
  sub_1A7D369A0(&qword_1EB2B5FB0, MEMORY[0x1E6969C98]);
  sub_1A7E22F90();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A7D365E4()
{
  result = qword_1EB2B5FA8;
  if (!qword_1EB2B5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5FA8);
  }

  return result;
}

uint64_t LEToolLinksListRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v19 = &v18 - v5;
  v6 = sub_1A7CC7FFC(&qword_1EB2B5FB8, &qword_1A7E48908);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for LEToolLinksListRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A7CC7FFC(&qword_1EB2B5DC8, &qword_1A7E48620);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D365E4();
  sub_1A7E23250();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    if (qword_1EB2B47D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1A7E21830();
    sub_1A7B0CB00(v15, qword_1EB2B5F88);
    sub_1A7D369A0(&qword_1EB2B5FC0, MEMORY[0x1E6969C90]);
    sub_1A7E22E80();
    (*(v13 + 8))(v8, v6);
    v16 = v20;
    sub_1A7D30374(v14, v11);
    sub_1A7D3705C(v11, v16, type metadata accessor for LEToolLinksListRequest);
  }

  sub_1A7B0CD6C(a1);
  return sub_1A7D36944(v11);
}

uint64_t sub_1A7D36944(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLinksListRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A7D369A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B5DC8, &qword_1A7E48620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D36A08(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B5FA0, &qword_1A7E48900);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D365E4();
  sub_1A7E23260();
  if (qword_1EB2B47D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A7E21830();
  sub_1A7B0CB00(v6, qword_1EB2B5F88);
  sub_1A7CC7FFC(&qword_1EB2B5DC8, &qword_1A7E48620);
  sub_1A7D369A0(&qword_1EB2B5FB0, MEMORY[0x1E6969C98]);
  sub_1A7E22F90();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A7D36BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7D36C5C(uint64_t a1)
{
  v2 = sub_1A7D37008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D36C98(uint64_t a1)
{
  v2 = sub_1A7D37008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7D36CD4(uint64_t a1)
{
  v2 = sub_1A7D370C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7D36D10(uint64_t a1)
{
  v2 = sub_1A7D370C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolLinksRequest.encode(to:)(void *a1)
{
  v15 = sub_1A7CC7FFC(&qword_1EB2B5FC8, &qword_1A7E48910);
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for LEToolLinksRequest(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A7CC7FFC(&qword_1EB2B5FD0, &qword_1A7E48918);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D37008();
  sub_1A7E23260();
  sub_1A7D3705C(v14, v7, type metadata accessor for LEToolLinksRequest);
  sub_1A7D370C4();
  sub_1A7E22F80();
  type metadata accessor for LEToolLinksListRequest(0);
  sub_1A7D37504(&qword_1EB2B5FE8, &protocol conformance descriptor for LEToolLinksListRequest);
  v12 = v15;
  sub_1A7E23030();
  sub_1A7D36944(v7);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A7D37008()
{
  result = qword_1EB2B5FD8;
  if (!qword_1EB2B5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5FD8);
  }

  return result;
}

uint64_t sub_1A7D3705C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A7D370C4()
{
  result = qword_1EB2B5FE0;
  if (!qword_1EB2B5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B5FE0);
  }

  return result;
}

uint64_t LEToolLinksRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for LEToolLinksRequest(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A7CC7FFC(&qword_1EB2B5FF0, &qword_1A7E48920);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5FF8, &unk_1A7E48928);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7D37008();
  v11 = v30;
  sub_1A7E23250();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_1A7E22F70();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_1A7CDB53C() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_1A7E22BD0();
    swift_allocError();
    v20 = v19;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v20 = v22;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return sub_1A7B0CD6C(v17);
  }

  sub_1A7D370C4();
  sub_1A7E22E70();
  type metadata accessor for LEToolLinksListRequest(0);
  sub_1A7D37504(&qword_1EB2B6000, &protocol conformance descriptor for LEToolLinksListRequest);
  v22 = v10;
  sub_1A7E22F30();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_1A7D37548(v4, v12);
  v17 = v30;
  return sub_1A7B0CD6C(v17);
}

uint64_t sub_1A7D37504(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LEToolLinksListRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A7D37548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolLinksRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A7D37604(uint64_t a1)
{
  sub_1A7D37670(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A7D37670(uint64_t a1)
{
  if (!qword_1EB2B6018)
  {
    sub_1A7CC9830(&qword_1EB2B5DC8, &qword_1A7E48620);
    v1 = sub_1A7E229A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2B6018);
    }
  }
}

uint64_t sub_1A7D376D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolLinksListRequest(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1A7B11FC4);
}

uint64_t sub_1A7D3772C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A7D377A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LEToolLinksListRequest(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1A7B11FC0);
}

uint64_t sub_1A7D3780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A7D37888(uint64_t a1)
{
  v2 = type metadata accessor for LEToolLinksListRequest(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_1A7D37670(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

unint64_t sub_1A7D37974()
{
  result = qword_1EB2B6030;
  if (!qword_1EB2B6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6030);
  }

  return result;
}

unint64_t sub_1A7D379CC()
{
  result = qword_1EB2B6038;
  if (!qword_1EB2B6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6038);
  }

  return result;
}

unint64_t sub_1A7D37A24()
{
  result = qword_1EB2B6040;
  if (!qword_1EB2B6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6040);
  }

  return result;
}

unint64_t sub_1A7D37A7C()
{
  result = qword_1EB2B6048;
  if (!qword_1EB2B6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6048);
  }

  return result;
}

unint64_t sub_1A7D37AD4()
{
  result = qword_1EB2B6050;
  if (!qword_1EB2B6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6050);
  }

  return result;
}

unint64_t sub_1A7D37B2C()
{
  result = qword_1EB2B6058;
  if (!qword_1EB2B6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6058);
  }

  return result;
}

unint64_t sub_1A7D37B84()
{
  result = qword_1EB2B6060;
  if (!qword_1EB2B6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6060);
  }

  return result;
}

unint64_t sub_1A7D37BDC()
{
  result = qword_1EB2B6068;
  if (!qword_1EB2B6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6068);
  }

  return result;
}

unint64_t sub_1A7D37C34()
{
  result = qword_1EB2B6070;
  if (!qword_1EB2B6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6070);
  }

  return result;
}

void IDSToolPacketLogResponse.print(to:style:)(void *a1)
{
  if (*(v1 + 8))
  {
    sub_1A7CC9878(a1, a1[3]);
    sub_1A7E22B70();

    v2 = CLIString.description.getter();
    v4 = v3;

    MEMORY[0x1AC561C90](v2, v4);

    v5._countAndFlagsBits = 0xD000000000000016;
    v5._object = 0x80000001A7EAEE50;
    CLIPrinter.print(_:)(v5);
  }

  else
  {
    sub_1A7CC9878(a1, a1[3]);
    v6._object = 0x80000001A7EAEE30;
    v6._countAndFlagsBits = 0xD000000000000014;
    CLIPrinter.print(_:)(v6);
  }
}

void sub_1A7D37E04(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  sub_1A7D37E5C(a1, a2);
}

void sub_1A7D37E5C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a2;
  v64[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A7E222E0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A7CC7FFC(&unk_1EB2B7BF0, &unk_1A7E4E930);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v61 = type metadata accessor for IDSLinksQualityReportBuilder(0);
  v14 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  if (a1 == 1)
  {
    v28 = *(v2 + 16);
    os_unfair_lock_lock((v28 + 200));
    sub_1A7CC9600((v28 + 208), v63);
    os_unfair_lock_unlock((v28 + 200));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    type metadata accessor for IDSLinksQualityReportBuilderComponent(0);
    if (swift_dynamicCast())
    {
      v30 = v61;
      v29 = v62;
      if (v64[0])
      {
        v31 = (v64[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
        os_unfair_lock_lock((v64[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
        v32 = sub_1A7CC7FFC(&qword_1EB2B53D8, &qword_1A7E44060);
        sub_1A7D3B8CC(v31 + *(v32 + 28), v10, type metadata accessor for IDSLinksQualityReportBuilder);
        os_unfair_lock_unlock(v31);

        (*(v14 + 56))(v10, 0, 1, v30);
        sub_1A7D3B934(v10, v19, type metadata accessor for IDSLinksQualityReportBuilder);
LABEL_26:
        v58 = *&v19[*(v30 + 20)];

        sub_1A7D3B99C(v19, type metadata accessor for IDSLinksQualityReportBuilder);
        *v29 = v58;
        *(v29 + 1) = 0;
        *(v29 + 16) = 0;
        return;
      }
    }

    else
    {
      v30 = v61;
      v29 = v62;
    }

    (*(v14 + 56))(v10, 1, 1, v30);
    sub_1A7E22050();
    v57 = *(v30 + 20);
    *&v19[v57] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v14 + 48))(v10, 1, v30) != 1)
    {
      sub_1A7CC9970(v10, &unk_1EB2B7BF0, &unk_1A7E4E930);
    }

    goto LABEL_26;
  }

  if (a1 == 2)
  {
    v23 = *(v2 + 16);
    os_unfair_lock_lock((v23 + 200));
    sub_1A7CC9600((v23 + 208), v63);
    os_unfair_lock_unlock((v23 + 200));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    type metadata accessor for IDSLinksQualityReportBuilderComponent(0);
    if (swift_dynamicCast())
    {
      v24 = v61;
      v25 = v62;
      if (v64[0])
      {
        v26 = (v64[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
        os_unfair_lock_lock((v64[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
        v27 = sub_1A7CC7FFC(&qword_1EB2B53D8, &qword_1A7E44060);
        sub_1A7D3B8CC(v26 + *(v27 + 28), v13, type metadata accessor for IDSLinksQualityReportBuilder);
        os_unfair_lock_unlock(v26);

        (*(v14 + 56))(v13, 0, 1, v24);
        sub_1A7D3B934(v13, v22, type metadata accessor for IDSLinksQualityReportBuilder);
        goto LABEL_18;
      }
    }

    else
    {
      v24 = v61;
      v25 = v62;
    }

    (*(v14 + 56))(v13, 1, 1, v24);
    sub_1A7E22050();
    v40 = *(v24 + 20);
    *&v22[v40] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v14 + 48))(v13, 1, v24) != 1)
    {
      sub_1A7CC9970(v13, &unk_1EB2B7BF0, &unk_1A7E4E930);
    }

LABEL_18:

    v42 = sub_1A7DBB5A0(v41);

    sub_1A7D3B99C(v22, type metadata accessor for IDSLinksQualityReportBuilder);
    v64[0] = v42;
    if (qword_1EB2B2D88 != -1)
    {
      swift_once();
    }

    v43 = sub_1A7E22060();
    v44 = sub_1A7B0CB00(v43, qword_1EB2B2D90);
    sub_1A7D96B84(v44, v64, v63);

    v45 = v63[0];
    v46 = objc_opt_self();
    v63[0] = v45;
    IDSLinksCompactQualityReport.asArray.getter();
    sub_1A7CC7FFC(&unk_1EB2B66C0, &qword_1A7E41BD0);
    v47 = sub_1A7E22520();

    v63[0] = 0;
    v48 = [v46 dataWithJSONObject:v47 options:0 error:v63];

    v49 = v63[0];
    if (v48)
    {
      v50 = sub_1A7E21A10();
      v52 = v51;

      sub_1A7E222D0();
      v53 = sub_1A7E222B0();
      v55 = v54;
      sub_1A7CC7E50(v50, v52);

      if (v55)
      {
        *v25 = v53;
        *(v25 + 1) = v55;
        v56 = 2;
LABEL_29:
        *(v25 + 16) = v56;
        return;
      }
    }

    else
    {
      v59 = v49;
      v60 = sub_1A7E217F0();

      swift_willThrow();
    }

    *v25 = 0;
    *(v25 + 1) = 0;
    v56 = 3;
    goto LABEL_29;
  }

  v33 = *(v2 + 16);
  os_unfair_lock_lock((v33 + 200));
  sub_1A7CC9600((v33 + 208), v63);
  os_unfair_lock_unlock((v33 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  type metadata accessor for IDSLinksQualityReportBuilderComponent(0);
  if ((swift_dynamicCast() & 1) != 0 && v64[0])
  {
    v34 = (v64[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
    os_unfair_lock_lock((v64[0] + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
    v35 = sub_1A7CC7FFC(&qword_1EB2B53D8, &qword_1A7E44060);
    sub_1A7D3B8CC(v34 + *(v35 + 28), v7, type metadata accessor for IDSLinksQualityReportBuilder);
    os_unfair_lock_unlock(v34);

    (*(v14 + 56))(v7, 0, 1, v61);
    sub_1A7D3B934(v7, v16, type metadata accessor for IDSLinksQualityReportBuilder);
  }

  else
  {
    v37 = v61;
    (*(v14 + 56))(v7, 1, 1, v61);
    sub_1A7E22050();
    v38 = *(v37 + 20);
    *&v16[v38] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v14 + 48))(v7, 1, v37) != 1)
    {
      sub_1A7CC9970(v7, &unk_1EB2B7BF0, &unk_1A7E4E930);
    }
  }

  v64[0] = a1;
  v36.value.syncTokenByLinkCycle._rawValue = v64;
  IDSLinksQualityReportBuilder.delta(since:)(v36);
  sub_1A7D3B99C(v16, type metadata accessor for IDSLinksQualityReportBuilder);
  v39 = v62;
  *v62 = *v63;
  *(v39 + 16) = 1;
}

uint64_t sub_1A7D38804(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v90 - v6;
  v95 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v90 - v9;
  v10 = type metadata accessor for LEToolLink(0);
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v90 - v14;
  v15 = *(a1 + 16);
  v166 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEB90(0, v15, 0);
  v16 = v166;
  v17 = a1 + 64;
  v18 = -1 << *(a1 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 64);
  v102 = a1;
  v98 = v15;
  v99 = a1 + 64;
  if (v15)
  {
    v97 = v4;
    v21 = (63 - v18) >> 6;
    v104 = type metadata accessor for LinkStateComponent(0);
    v96 = v104 - 8;

    v15 = 0;
    v23 = 0;
    v103 = v21;
    while (1)
    {
      if (!v20)
      {
        do
        {
          v24 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          if (v24 >= v21)
          {
            goto LABEL_67;
          }

          v20 = *(v17 + 8 * v24);
          ++v15;
        }

        while (!v20);
        v15 = v24;
      }

      v25 = *(*(a1 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v20)))));
      v26 = *(v25 + 24);
      v106 = *(v25 + 16);

      v107 = v26;

      os_unfair_lock_lock((v25 + 40));
      v27 = *(v25 + 48);
      if (*(v27 + 16) && (v28 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v29 & 1) != 0))
      {
        sub_1A7B0CD10(*(v27 + 56) + 32 * v28, &v161);
      }

      else
      {
        v161 = 0u;
        v162 = 0u;
      }

      v108 = v23;
      v167 = v16;
      os_unfair_lock_unlock((v25 + 40));
      v105 = sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v30 = v163;
      v31 = v164;
      v32 = v165;
      if (v163 == 1)
      {
        goto LABEL_22;
      }

      sub_1A7CDB7B8(v163, v164, v165);
      sub_1A7CDBC48(v30, v31, v32);
      if (v30)
      {
        v125 = v31;
        LinkEndpoint.toolRepresentation.getter(&v133);
        v124 = v32;
        LinkEndpoint.toolRepresentation.getter(&v140);
        sub_1A7CE0528(v30, &v123);
        v33 = v123;
        sub_1A7CDB84C(v30, v31, v32);
        v34 = MEMORY[0x1E69E7CC0];
        if (v33)
        {
          v34 = v33;
        }

        v130 = v137;
        v131 = v138;
        LOWORD(v132[0]) = v139;
        v126 = v133;
        v127 = v134;
        v128 = v135;
        v129 = v136;
        *(v132 + 8) = v140;
        *(&v132[1] + 8) = v141;
        *(&v132[2] + 8) = v142;
        WORD4(v132[6]) = v146;
        *(&v132[5] + 8) = v145;
        *(&v132[4] + 8) = v144;
        *(&v132[3] + 8) = v143;
        v111 = v135;
        v112 = v136;
        v109 = v133;
        v110 = v134;
        v115 = v132[0];
        v116 = v132[1];
        v113 = v137;
        v114 = v138;
        v120 = v132[5];
        v121 = v132[6];
        v118 = v132[3];
        v119 = v132[4];
        v117 = v132[2];
        v122 = v34;
        nullsub_15();
        v157 = v119;
        v158 = v120;
        v159 = v121;
        v160 = v122;
        v153 = v115;
        v154 = v116;
        v155 = v117;
        v156 = v118;
        v149 = v111;
        v150 = v112;
        v151 = v113;
        v152 = v114;
        v147 = v109;
        v148 = v110;
        goto LABEL_24;
      }

LABEL_23:
      sub_1A7D21964(&v147);
LABEL_24:
      v35 = v97;
      os_unfair_lock_lock((v25 + 40));
      v36 = *(v25 + 48);
      if (*(v36 + 16) && (v37 = sub_1A7CD0DFC(v104), (v38 & 1) != 0))
      {
        sub_1A7B0CD10(*(v36 + 56) + 32 * v37, &v109);
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
      }

      os_unfair_lock_unlock((v25 + 40));
      v39 = v104;
      v40 = swift_dynamicCast();
      v41 = *(v39 - 8);
      (*(v41 + 56))(v35, v40 ^ 1u, 1, v39);
      v42 = *(v101 + 24);
      if ((*(v41 + 48))(v35, 1, v39))
      {
        sub_1A7CC9970(v35, &qword_1EB2B4A80, &unk_1A7E41910);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v43 = v94;
        sub_1A7D3B8CC(v35, v94, type metadata accessor for LinkState);
        sub_1A7CC9970(v35, &qword_1EB2B4A80, &unk_1A7E41910);
        sub_1A7D3B934(v43, &v12[v42], type metadata accessor for LinkState);
      }

      v44 = v108;

      v45 = v107;
      *v12 = v106;
      *(v12 + 1) = v45;
      v46 = v152;
      *(v12 + 5) = v151;
      *(v12 + 6) = v46;
      v47 = v150;
      *(v12 + 3) = v149;
      *(v12 + 4) = v47;
      v48 = v156;
      *(v12 + 9) = v155;
      *(v12 + 10) = v48;
      v49 = v154;
      *(v12 + 7) = v153;
      *(v12 + 8) = v49;
      *(v12 + 28) = v160;
      v50 = v159;
      *(v12 + 12) = v158;
      *(v12 + 13) = v50;
      *(v12 + 11) = v157;
      v51 = v148;
      *(v12 + 1) = v147;
      *(v12 + 2) = v51;
      v16 = v167;
      v53 = *(v167 + 16);
      v52 = *(v167 + 24);
      v166 = v167;
      if (v53 >= v52 >> 1)
      {
        sub_1A7CCEB90((v52 > 1), v53 + 1, 1);
        v16 = v166;
      }

      v23 = v44 + 1;
      v20 &= v20 - 1;
      *(v16 + 16) = v53 + 1;
      result = sub_1A7D3B934(v12, v16 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v53, type metadata accessor for LEToolLink);
      v17 = v99;
      a1 = v102;
      v21 = v103;
      if (v23 == v98)
      {
        goto LABEL_36;
      }
    }

    v32 = 0;
    v31 = 0;
    v163 = 1;
    v164 = 0;
    v165 = 0;
LABEL_22:
    sub_1A7CDBC48(1, v31, v32);
    goto LABEL_23;
  }

  v21 = (63 - v18) >> 6;

LABEL_36:
  v103 = v21;
  if (!v20)
  {
    goto LABEL_37;
  }

  do
  {
LABEL_41:
    v55 = *(*(a1 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v20)))));
    v56 = *(v55 + 16);
    v57 = *(v55 + 24);

    os_unfair_lock_lock((v55 + 40));
    v58 = *(v55 + 48);
    v59 = *(v58 + 16);
    v107 = v56;
    if (v59 && (v60 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v61 & 1) != 0))
    {
      sub_1A7B0CD10(*(v58 + 56) + 32 * v60, &v161);
    }

    else
    {
      v161 = 0u;
      v162 = 0u;
    }

    v167 = v16;
    os_unfair_lock_unlock((v55 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    v62 = swift_dynamicCast();
    v108 = v57;
    if ((v62 & 1) == 0)
    {
      v65 = 0;
      v63 = 0;
      v163 = 1;
      v164 = 0;
      v165 = 0;
LABEL_52:
      sub_1A7CDBC48(1, v63, v65);
LABEL_53:
      sub_1A7D21964(&v147);
      goto LABEL_54;
    }

    v64 = v163;
    v63 = v164;
    v65 = v165;
    if (v163 == 1)
    {
      goto LABEL_52;
    }

    v66 = v165;
    sub_1A7CDB7B8(v163, v164, v165);
    v67 = v66;
    sub_1A7CDBC48(v64, v63, v66);
    if (!v64)
    {
      goto LABEL_53;
    }

    v125 = v63;
    LinkEndpoint.toolRepresentation.getter(&v133);
    v124 = v66;
    LinkEndpoint.toolRepresentation.getter(&v140);
    sub_1A7CE0528(v64, &v123);
    v68 = v123;
    sub_1A7CDB84C(v64, v63, v67);
    v69 = MEMORY[0x1E69E7CC0];
    if (v68)
    {
      v69 = v68;
    }

    v130 = v137;
    v131 = v138;
    LOWORD(v132[0]) = v139;
    v126 = v133;
    v127 = v134;
    v128 = v135;
    v129 = v136;
    *(v132 + 8) = v140;
    *(&v132[1] + 8) = v141;
    *(&v132[2] + 8) = v142;
    WORD4(v132[6]) = v146;
    *(&v132[5] + 8) = v145;
    *(&v132[4] + 8) = v144;
    *(&v132[3] + 8) = v143;
    v111 = v135;
    v112 = v136;
    v109 = v133;
    v110 = v134;
    v115 = v132[0];
    v116 = v132[1];
    v113 = v137;
    v114 = v138;
    v120 = v132[5];
    v121 = v132[6];
    v118 = v132[3];
    v119 = v132[4];
    v117 = v132[2];
    v122 = v69;
    nullsub_15();
    v157 = v119;
    v158 = v120;
    v159 = v121;
    v160 = v122;
    v153 = v115;
    v154 = v116;
    v155 = v117;
    v156 = v118;
    v149 = v111;
    v150 = v112;
    v151 = v113;
    v152 = v114;
    v147 = v109;
    v148 = v110;
LABEL_54:
    v70 = v92;
    os_unfair_lock_lock((v55 + 40));
    v71 = type metadata accessor for LinkStateComponent(0);
    v72 = v71;
    v73 = *(v55 + 48);
    if (*(v73 + 16) && (v74 = sub_1A7CD0DFC(v71), (v75 & 1) != 0))
    {
      sub_1A7B0CD10(*(v73 + 56) + 32 * v74, &v109);
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
    }

    os_unfair_lock_unlock((v55 + 40));
    v76 = swift_dynamicCast();
    v77 = *(v72 - 8);
    (*(v77 + 56))(v70, v76 ^ 1u, 1, v72);
    v78 = *(v101 + 24);
    if ((*(v77 + 48))(v70, 1, v72))
    {
      sub_1A7CC9970(v70, &qword_1EB2B4A80, &unk_1A7E41910);
      v79 = v93;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v80 = v91;
      sub_1A7D3B8CC(v70, v91, type metadata accessor for LinkState);
      sub_1A7CC9970(v70, &qword_1EB2B4A80, &unk_1A7E41910);
      v79 = v93;
      sub_1A7D3B934(v80, &v93[v78], type metadata accessor for LinkState);
    }

    v81 = v108;

    *v79 = v107;
    *(v79 + 8) = v81;
    v82 = v152;
    *(v79 + 80) = v151;
    *(v79 + 96) = v82;
    v83 = v150;
    *(v79 + 48) = v149;
    *(v79 + 64) = v83;
    v84 = v156;
    *(v79 + 144) = v155;
    *(v79 + 160) = v84;
    v85 = v154;
    *(v79 + 112) = v153;
    *(v79 + 128) = v85;
    *(v79 + 224) = v160;
    v86 = v159;
    *(v79 + 192) = v158;
    *(v79 + 208) = v86;
    *(v79 + 176) = v157;
    v87 = v148;
    *(v79 + 16) = v147;
    *(v79 + 32) = v87;
    v16 = v167;
    v89 = *(v167 + 16);
    v88 = *(v167 + 24);
    v166 = v167;
    if (v89 >= v88 >> 1)
    {
      sub_1A7CCEB90((v88 > 1), v89 + 1, 1);
      v79 = v93;
      v16 = v166;
    }

    v20 &= v20 - 1;
    *(v16 + 16) = v89 + 1;
    result = sub_1A7D3B934(v79, v16 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v89, type metadata accessor for LEToolLink);
    a1 = v102;
    v21 = v103;
    v17 = v99;
  }

  while (v20);
LABEL_37:
  while (1)
  {
    v54 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v54 >= v21)
    {

      return v16;
    }

    v20 = *(v17 + 8 * v54);
    ++v15;
    if (v20)
    {
      v15 = v54;
      goto LABEL_41;
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1A7D39440()
{
  if (qword_1EB2B2FA0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB2DC0A0);
  v1 = qword_1EB2DC0A8;
  v0[25] = qword_1EB2DC0A8;

  os_unfair_lock_unlock(&dword_1EB2DC0A0);
  if (v1 >> 62)
  {
    result = sub_1A7E22DA0();
    v0[26] = result;
    if (result)
    {
LABEL_5:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = MEMORY[0x1E69E7CC0];
        v0[27] = 0;
        v0[28] = v3;
        v4 = v0[25];
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1AC562480](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v0[29] = v5;
        v6 = swift_task_alloc();
        v0[30] = v6;
        *v6 = v0;
        v6[1] = sub_1A7D395E8;
        v7 = v0[24];

        return sub_1A7DE2130((v0 + 13), v7);
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[26] = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  v8 = v0[1];
  v9 = MEMORY[0x1E69E7CC0];

  return v8(v9);
}

uint64_t sub_1A7D395E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7D396E4, 0, 0);
}

uint64_t sub_1A7D396E4()
{
  v1 = *(v0 + 152);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v1;
  *(v0 + 80) = *(v0 + 168);
  *(v0 + 96) = *(v0 + 184);
  v2 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 224);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7CCDC84(0, *(v4 + 2) + 1, 1, *(v0 + 224));
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1A7CCDC84((v5 > 1), v6 + 1, 1, v4);
  }

  v8 = *(v0 + 208);
  v7 = *(v0 + 216);

  *(v4 + 2) = v6 + 1;
  v9 = &v4[88 * v6];
  v10 = *(v0 + 32);
  *(v9 + 2) = *(v0 + 16);
  *(v9 + 3) = v10;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  *(v9 + 14) = *(v0 + 96);
  *(v9 + 5) = v12;
  *(v9 + 6) = v13;
  *(v9 + 4) = v11;
  if (v7 + 1 == v8)
  {

    v14 = *(v0 + 8);

    return v14(v4);
  }

  else
  {
    v16 = *(v0 + 216) + 1;
    *(v0 + 216) = v16;
    *(v0 + 224) = v4;
    v17 = *(v0 + 200);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1AC562480]();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    *(v0 + 232) = v18;
    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    *v19 = v0;
    v19[1] = sub_1A7D395E8;
    v20 = *(v0 + 192);

    return sub_1A7DE2130(v0 + 104, v20);
  }
}

uint64_t sub_1A7D398D8(uint64_t a1)
{
  v1[3] = a1;
  sub_1A7CC7FFC(&unk_1EB2B7CA0, &unk_1A7E48E90);
  v1[4] = swift_task_alloc();
  v2 = sub_1A7CC7FFC(&qword_1EB2B5DC8, &qword_1A7E48620);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for LEToolLinksListRequest(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for LEToolLinksRequest(0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for LEToolRequest(0);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D39A70, 0, 0);
}

uint64_t sub_1A7D39A70()
{
  v45 = v0;
  if (qword_1EB2B2DC8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB2DC090);
  v1 = qword_1EB2DC098;

  os_unfair_lock_unlock(&dword_1EB2DC090);
  v2 = v1;
  if (v1 >> 62)
  {
    result = sub_1A7E22DA0();
    v2 = v1;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_25:
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_5:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[6];
  v39 = v2 & 0xC000000000000001;
  v35 = (v5 + 48);
  v33 = (v5 + 8);
  v34 = (v5 + 32);
  v41 = v2;
  v42 = MEMORY[0x1E69E7CC0];
  v40 = result;
  do
  {
    if (v39)
    {
      v6 = MEMORY[0x1AC562480](v4);
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    sub_1A7D3B8CC(v0[3], v0[12], type metadata accessor for LEToolRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v0[12];
    if (EnumCaseMultiPayload == 3)
    {
      v19 = *v8;
      sub_1A7D37E5C(*v8, &v43);
      sub_1A7D3B854(v19);
      v20 = *(&v43 + 1);
      v17 = v43;
      v21 = v44;
      v22 = v37 & 0xF00000000000FFFFLL | 0x800000000000000;
      v23 = 0x1000000000000000;
      v37 = v22;
    }

    else if (EnumCaseMultiPayload)
    {
      v22 = v38 & 0xF00000000000FFFFLL | 0x800000000000000;
      sub_1A7D3B99C(v8, type metadata accessor for LEToolRequest);
      v17 = 0;
      v20 = 0;
      v21 = 0;
      v23 = 0x4000000000000000;
      v38 = v22;
    }

    else
    {
      v10 = v0[9];
      v9 = v0[10];
      v11 = v0[8];
      v13 = v0[4];
      v12 = v0[5];
      sub_1A7D3B934(v8, v9, type metadata accessor for LEToolLinksRequest);
      sub_1A7D3B8CC(v9, v10, type metadata accessor for LEToolLinksRequest);
      sub_1A7D3B934(v10, v11, type metadata accessor for LEToolLinksListRequest);
      v14 = *(v6 + 16);
      os_unfair_lock_lock((v14 + 16));
      v15 = *(v14 + 24);

      os_unfair_lock_unlock((v14 + 16));
      v16 = sub_1A7D38804(v15);

      sub_1A7D36390(v11, v13);
      if ((*v35)(v13, 1, v12) == 1)
      {
        v17 = v16;
        v18 = v0[4];
        sub_1A7D3B99C(v0[8], type metadata accessor for LEToolLinksListRequest);
        sub_1A7CC9970(v18, &unk_1EB2B7CA0, &unk_1A7E48E90);
      }

      else
      {
        (*v34)(v0[7], v0[4], v0[5]);
        v0[2] = v16;

        sub_1A7CC7FFC(&qword_1EB2B7CB0, qword_1A7E48EA0);
        sub_1A7D3B868();
        v24 = sub_1A7E22490();
        v26 = v0[7];
        v25 = v0[8];
        v27 = v0[5];
        v28 = v24;

        (*v33)(v26, v27);
        sub_1A7D3B99C(v25, type metadata accessor for LEToolLinksListRequest);

        v17 = v28;
      }

      sub_1A7D3B99C(v0[10], type metadata accessor for LEToolLinksRequest);
      v20 = 0;
      v21 = 0;
      v23 = 0;
      v22 = v36 & 0xF00000000000FFFFLL | 0x800000000000000;
      v36 = v22;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1A7CCDC84(0, *(v42 + 2) + 1, 1, v42);
    }

    v30 = *(v42 + 2);
    v29 = *(v42 + 3);
    if (v30 >= v29 >> 1)
    {
      v42 = sub_1A7CCDC84((v29 > 1), v30 + 1, 1, v42);
    }

    ++v4;

    v2 = v41;
    *(v42 + 2) = v30 + 1;
    v31 = &v42[88 * v30];
    *(v31 + 4) = v17;
    *(v31 + 5) = v20;
    *(v31 + 6) = v21;
    *(v31 + 7) = v23;
    *(v31 + 8) = 0;
    *(v31 + 13) = v22;
  }

  while (v40 != v4);
LABEL_26:

  v32 = v0[1];

  return v32(v42);
}

uint64_t sub_1A7D3A004(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for IDSToolRequest(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3A09C, 0, 0);
}

uint64_t sub_1A7D3A09C()
{
  sub_1A7E21720();
  swift_allocObject();
  sub_1A7E21710();
  sub_1A7D3B79C();
  sub_1A7E21700();

  sub_1A7E21750();
  swift_allocObject();
  v0[13] = sub_1A7E21740();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1A7D3A200;
  v2 = v0[12];

  return sub_1A7D3A4F8((v0 + 2), v2);
}

uint64_t sub_1A7D3A200()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_1A7D3A478;
  }

  else
  {
    v2 = sub_1A7D3A31C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A7D3A31C()
{
  *(v0 + 40) = *(v0 + 16);
  v1 = *(v0 + 120);
  *(v0 + 56) = *(v0 + 32);
  sub_1A7D3B7F4();
  v2 = sub_1A7E21730();
  v4 = v3;
  v5 = *(v0 + 96);

  if (v1)
  {
    sub_1A7D3B848();
    sub_1A7D3B99C(v5, type metadata accessor for IDSToolRequest);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_1A7D3B848();
    sub_1A7D3B99C(v5, type metadata accessor for IDSToolRequest);

    v8 = *(v0 + 8);

    return v8(v2, v4);
  }
}

uint64_t sub_1A7D3A478()
{
  sub_1A7D3B99C(*(v0 + 96), type metadata accessor for IDSToolRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3A4F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A7E21850();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1A7E21940();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  type metadata accessor for LEToolRequestMessage(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for IDSToolRequest.Request(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7D3A67C, 0, 0);
}

uint64_t sub_1A7D3A67C()
{
  sub_1A7D3B8CC(*(v0 + 24), *(v0 + 104), type metadata accessor for IDSToolRequest.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 104);
  if (EnumCaseMultiPayload == 1)
  {
    *(v0 + 184) = *v2;
    if (qword_1EB2B2DB0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EB2DC088;

    return MEMORY[0x1EEE6DFA0](sub_1A7D3AB9C, v3, 0);
  }

  else
  {
    sub_1A7D3B934(v2, *(v0 + 88), type metadata accessor for LEToolRequestMessage);
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1A7D3A7FC;
    v5 = *(v0 + 88);

    return sub_1A7D39420(v5);
  }
}

uint64_t sub_1A7D3A7FC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D3AF20, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[17] = v4;
    *v4 = v3;
    v4[1] = sub_1A7D3A988;
    v5 = v3[11];

    return sub_1A7D398D8(v5);
  }
}

uint64_t sub_1A7D3A988(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {

    v5 = sub_1A7D3AFDC;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1A7D3AAB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A7D3AAB8()
{
  v1 = v0[11];
  v2 = v0[2];
  v5 = v0[15];
  sub_1A7DDF56C(v0[19]);
  sub_1A7D3B99C(v1, type metadata accessor for LEToolRequestMessage);
  *v2 = v5;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A7D3AB9C()
{
  if (*(v0 + 184))
  {
    sub_1A7D0D48C();
    v1 = sub_1A7D3ADD8;
  }

  else
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    sub_1A7E218D0();
    (*(v7 + 104))(v6, *MEMORY[0x1E6968F70], v8);
    sub_1A7CC7DFC();
    sub_1A7E21910();
    (*(v7 + 8))(v6, v8);
    v9 = *(v5 + 8);
    v9(v3, v4);
    sub_1A7D0C510(v2);
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    *(v0 + 160) = sub_1A7E218F0();
    *(v0 + 168) = v12;
    v9(v10, v11);
    v1 = sub_1A7D3AD2C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A7D3AD2C()
{
  v1 = v0[21];
  v2 = v0[2];
  *v2 = v0[20];
  *(v2 + 8) = v1;
  *(v2 + 16) = 1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A7D3ADD8()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A7D3AE80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3AF20()
{
  sub_1A7D3B99C(*(v0 + 88), type metadata accessor for LEToolRequestMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3AFDC()
{
  sub_1A7D3B99C(*(v0 + 88), type metadata accessor for LEToolRequestMessage);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7D3B22C(void *a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_1A7E21A10();
  v7 = v6;

  v2[3] = v5;
  v2[4] = v7;
  type metadata accessor for IDSToolRequestHandler();
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_1A7D3B304;

  return sub_1A7D3A004(v5, v7);
}

uint64_t sub_1A7D3B304(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  sub_1A7CC7E50(v9, v8);
  if (v4)
  {
    if (v10)
    {
      v12 = *(v7 + 16);
      v13 = sub_1A7E217E0();

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
    v15 = sub_1A7E219F0();
    sub_1A7CC7E50(a1, a2);
    (v14)[2](v14, v15, 0);
    _Block_release(v14);
  }

  else
  {
    sub_1A7CC7E50(a1, a2);
  }

  v16 = *(v11 + 8);

  return v16();
}

IDSToolObjCRequestHandler __swiftcall IDSToolObjCRequestHandler.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IDSToolObjCRequestHandler()
{
  result = qword_1EB2B6078;
  if (!qword_1EB2B6078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6078);
  }

  return result;
}

uint64_t sub_1A7D3B628()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A7CD2A2C;

  return sub_1A7D3B22C(v2, v3);
}

uint64_t sub_1A7D3B6DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7DE50A4(v2, v3, v4);
}

unint64_t sub_1A7D3B79C()
{
  result = qword_1EB2B6080;
  if (!qword_1EB2B6080)
  {
    type metadata accessor for IDSToolRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6080);
  }

  return result;
}

unint64_t sub_1A7D3B7F4()
{
  result = qword_1EB2B6088;
  if (!qword_1EB2B6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B6088);
  }

  return result;
}