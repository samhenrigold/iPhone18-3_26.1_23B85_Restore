uint64_t sub_10002BF5C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002C040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100037F08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100001B40(&qword_100048178, &unk_100039530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002C150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100037F08();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100001B40(&qword_100048178, &unk_100039530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10002C258(uint64_t a1)
{
  sub_100037F08();
  if (v1 <= 0x3F)
  {
    sub_10002C2F8(319, &qword_1000488A0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002C2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000387F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ZeoliteEvalExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteEvalExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002C49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002C4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 sub_10002C55C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002C578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002C5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10002C644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002C668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 81))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10002C6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10002C7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000488E8;
  if (!qword_1000488E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000488E8);
  }

  return result;
}

unint64_t sub_10002C7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000488F0;
  if (!qword_1000488F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000488F0);
  }

  return result;
}

unint64_t sub_10002C850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000488F8;
  if (!qword_1000488F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000488F8);
  }

  return result;
}

unint64_t sub_10002C8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048900;
  if (!qword_100048900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048900);
  }

  return result;
}

unint64_t sub_10002C900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048908;
  if (!qword_100048908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048908);
  }

  return result;
}

unint64_t sub_10002C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048910;
  if (!qword_100048910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048910);
  }

  return result;
}

unint64_t sub_10002C9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048918;
  if (!qword_100048918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048918);
  }

  return result;
}

unint64_t sub_10002CA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048920;
  if (!qword_100048920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048920);
  }

  return result;
}

unint64_t sub_10002CA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048928;
  if (!qword_100048928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048928);
  }

  return result;
}

unint64_t sub_10002CAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048930;
  if (!qword_100048930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048930);
  }

  return result;
}

unint64_t sub_10002CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048938;
  if (!qword_100048938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048938);
  }

  return result;
}

unint64_t sub_10002CB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048940;
  if (!qword_100048940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048940);
  }

  return result;
}

unint64_t sub_10002CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048948;
  if (!qword_100048948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048948);
  }

  return result;
}

unint64_t sub_10002CC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048950;
  if (!qword_100048950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048950);
  }

  return result;
}

unint64_t sub_10002CC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048958;
  if (!qword_100048958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048958);
  }

  return result;
}

unint64_t sub_10002CCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048960;
  if (!qword_100048960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048960);
  }

  return result;
}

unint64_t sub_10002CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048968;
  if (!qword_100048968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048968);
  }

  return result;
}

unint64_t sub_10002CD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048970;
  if (!qword_100048970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048970);
  }

  return result;
}

unint64_t sub_10002CDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048978;
  if (!qword_100048978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048978);
  }

  return result;
}

unint64_t sub_10002CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048980;
  if (!qword_100048980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048980);
  }

  return result;
}

unint64_t sub_10002CE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048988;
  if (!qword_100048988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048988);
  }

  return result;
}

unint64_t sub_10002CED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048990;
  if (!qword_100048990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048990);
  }

  return result;
}

unint64_t sub_10002CF2C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045668;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002CF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961447473616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617373654D78616DLL && a2 == 0xEB00000000736567 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D7265746C6966 && a2 == 0xEE00736567617373 || (sub_100038A58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xEE00736567617373 || (sub_100038A58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5470756E61656C63 && a2 == 0xEB00000000747865 || (sub_100038A58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_100038A58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72437265746C6966 && a2 == 0xEE00616972657469)
  {

    return 7;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002D238@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_1000489D0, &qword_10003AB98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v67 = 1;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002E6D4(v9, v10, v11);
  sub_100038B58();
  if (v2)
  {
    v70 = v2;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    v15 = 0;
    v16 = 7;
    v17 = 128;
    v18 = 2048;
LABEL_4:
    sub_10000387C(a1);
    v50 = v16;
    v51 = v17;
    v52 = v18;
    v53 = v15;
    v54 = v14;
    v55 = v13;
    v56 = v68;
    v57 = v69;
    v58 = v12;
    v59 = v67;
    *v60 = *v66;
    *&v60[3] = *&v66[3];
    v61 = 1;
    v62 = 0;
    v65 = 0;
    v63 = 0;
    v64 = 0;
    return sub_10002E728(&v50);
  }

  LOBYTE(v50) = 0;
  v39 = sub_100038978();
  LOBYTE(v50) = 1;
  v38 = sub_100038978();
  LOBYTE(v50) = 2;
  v37 = sub_100038978();
  LOBYTE(v50) = 3;
  v15 = sub_100038918();
  v36 = a2;
  LOBYTE(v50) = 4;
  v14 = sub_100038918();
  LOBYTE(v50) = 5;
  v13 = sub_100038918();
  LOBYTE(v50) = 6;
  v20 = sub_100038938();
  v70 = 0;
  v12 = v20;
  v67 = v21 & 1;
  v46 = 7;
  sub_10002E758(v20, v21, v22);
  v23 = v70;
  sub_100038948();
  v70 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v16 = v39;
    v17 = v38;
    v18 = v37;
    goto LABEL_4;
  }

  (*(v6 + 8))(v8, v5);
  v34 = *(&v47 + 1);
  v35 = v47;
  v32 = *(&v48 + 1);
  v33 = v48;
  HIDWORD(v31) = v49;
  v24 = v39;
  *&v40 = v39;
  v25 = v38;
  *(&v40 + 1) = v38;
  v26 = v37;
  *&v41 = v37;
  BYTE8(v41) = v15;
  BYTE9(v41) = v14;
  BYTE10(v41) = v13;
  *&v42 = v12;
  v27 = v67;
  BYTE8(v42) = v67;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  sub_10001FBA8(&v40, &v50);
  sub_10000387C(a1);
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v53 = v15;
  v54 = v14;
  v55 = v13;
  v58 = v12;
  v59 = v27;
  v61 = v35;
  v62 = v34;
  v63 = v33;
  v64 = v32;
  v65 = BYTE4(v31);
  result = sub_10002E728(&v50);
  v28 = v43;
  v29 = v36;
  *(v36 + 32) = v42;
  *(v29 + 48) = v28;
  *(v29 + 64) = v44;
  *(v29 + 80) = v45;
  v30 = v41;
  *v29 = v40;
  *(v29 + 16) = v30;
  return result;
}

uint64_t sub_10002D800(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002D96C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100001B40(&qword_1000489E8, &qword_10003ABA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002E7AC(v9, v10, v11);
  sub_100038B58();
  if (v2)
  {
    sub_10000387C(a1);
  }

  else
  {
    v35 = 0;
    v12 = sub_100038978();
    v34 = 1;
    v13 = sub_100038908();
    v15 = v14;
    v31 = v13;
    v33 = 2;
    v16 = sub_100038908();
    v18 = v17;
    v30 = v16;
    v32 = 3;
    v19 = sub_100038908();
    v20 = *(v6 + 8);
    v29 = v19;
    v21 = v8;
    v23 = v22;
    v20(v21, v5);

    sub_10000387C(a1);

    v25 = v30;
    v26 = v31;
    *a2 = v12;
    a2[1] = v26;
    a2[2] = v15;
    a2[3] = v25;
    v27 = v29;
    a2[4] = v18;
    a2[5] = v27;
    a2[6] = v23;
  }

  return result;
}

uint64_t sub_10002DC04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C6E4F746E6573 && a2 == 0xE800000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002DD24(void *a1)
{
  v3 = sub_100001B40(&qword_1000489F8, &qword_10003ABA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = a1[3];
  v8 = sub_1000036D0(a1, v7);
  sub_10002E800(v8, v9, v10);
  sub_100038B58();
  if (!v1)
  {
    v15 = 0;
    v7 = sub_100038938();
    v14 = 1;
    v12[3] = sub_100038918();
    v13 = 2;
    sub_100038908();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000387C(a1);
  return v7;
}

uint64_t sub_10002DF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961446B656577 && a2 == 0xE800000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F487472617473 && a2 == 0xE900000000000072 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F48646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_10002E030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048AB0, &qword_10003B1A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_1000036D0(a1, a1[3]);
  sub_10002F3E4(v9, v10, v11);
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  sub_100001B40(&qword_100048A48, qword_10003AD10);
  v24 = 0;
  sub_10002F438(&qword_100048AC0, sub_10002F4B0, &protocol conformance descriptor for <A> [A]);
  sub_100038948();
  v12 = v25;
  v23 = 1;
  v13 = sub_100038938();
  v21 = v14;
  v20 = v13;
  v22 = 2;
  v15 = sub_100038938();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  result = sub_10000387C(a1);
  v19 = v20;
  *a2 = v12;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17 & 1;
  return result;
}

uint64_t sub_10002E28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496769666E6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E75526563726F66 && a2 == 0xE800000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365526563726F66 && a2 == 0xEA00000000007465 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010003BAE0 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567617473 && a2 == 0xE600000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010003BB00 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261506465626D65 && a2 == 0xEF73726574656D61 || (sub_100038A58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72615065726F6373 && a2 == 0xEF73726574656D61 || (sub_100038A58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010003BB20 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010003BB40 == a2 || (sub_100038A58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010003BB60 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_100038A58();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_10002E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000489A0;
  if (!qword_1000489A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489A0);
  }

  return result;
}

unint64_t sub_10002E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000489C8;
  if (!qword_1000489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489C8);
  }

  return result;
}

unint64_t sub_10002E6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000489D8;
  if (!qword_1000489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489D8);
  }

  return result;
}

unint64_t sub_10002E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000489E0;
  if (!qword_1000489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489E0);
  }

  return result;
}

unint64_t sub_10002E7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000489F0;
  if (!qword_1000489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000489F0);
  }

  return result;
}

unint64_t sub_10002E800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A00;
  if (!qword_100048A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A00);
  }

  return result;
}

unint64_t sub_10002E854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A10;
  if (!qword_100048A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A10);
  }

  return result;
}

uint64_t sub_10002E8A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SmsMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SmsMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002EBC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002EC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10002ED28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002ED3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10002ED98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10002EE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A38;
  if (!qword_100048A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A38);
  }

  return result;
}

unint64_t sub_10002EEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A50;
  if (!qword_100048A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A50);
  }

  return result;
}

unint64_t sub_10002EEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A58;
  if (!qword_100048A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A58);
  }

  return result;
}

unint64_t sub_10002EF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A60;
  if (!qword_100048A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A60);
  }

  return result;
}

unint64_t sub_10002EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A68;
  if (!qword_100048A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A68);
  }

  return result;
}

unint64_t sub_10002F000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A70;
  if (!qword_100048A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A70);
  }

  return result;
}

unint64_t sub_10002F058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A78;
  if (!qword_100048A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A78);
  }

  return result;
}

unint64_t sub_10002F0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A80;
  if (!qword_100048A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A80);
  }

  return result;
}

unint64_t sub_10002F108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A88;
  if (!qword_100048A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A88);
  }

  return result;
}

unint64_t sub_10002F160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A90;
  if (!qword_100048A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A90);
  }

  return result;
}

unint64_t sub_10002F1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048A98;
  if (!qword_100048A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048A98);
  }

  return result;
}

unint64_t sub_10002F210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AA0;
  if (!qword_100048AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AA0);
  }

  return result;
}

unint64_t sub_10002F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AA8;
  if (!qword_100048AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AA8);
  }

  return result;
}

uint64_t sub_10002F2BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D6F437473616CLL && a2 == 0xEE006E6F6974656CLL;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726575517473616CLL && a2 == 0xEB00000000646569 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574497473616CLL && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_100038A58();

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

unint64_t sub_10002F3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AB8;
  if (!qword_100048AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AB8);
  }

  return result;
}

uint64_t sub_10002F438(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048A48, qword_10003AD10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002F4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AC8;
  if (!qword_100048AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AC8);
  }

  return result;
}

unint64_t sub_10002F504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AE0;
  if (!qword_100048AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AE0);
  }

  return result;
}

unint64_t sub_10002F558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AE8;
  if (!qword_100048AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AE8);
  }

  return result;
}

uint64_t sub_10002F5AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002F63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AF0;
  if (!qword_100048AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AF0);
  }

  return result;
}

unint64_t sub_10002F758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048AF8;
  if (!qword_100048AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048AF8);
  }

  return result;
}

unint64_t sub_10002F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048B00;
  if (!qword_100048B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048B00);
  }

  return result;
}

uint64_t sub_10002F848(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_100037F08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_100001B40(&qword_100048178, &unk_100039530);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002F970, 0, 0);
}

id sub_10002F970()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = *(type metadata accessor for TransparencyExtractor(0) + 20);
  v8 = *(v3 + 56);
  v7 = v3 + 56;
  v6 = v8;
  (v8)(v1, 1, 1, v2);
  v9 = *v4;
  if (*v4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v13 = sub_1000388A8();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v10 = v0[11];
  v11 = v0[4];
  v12 = v0[2];
  v5 = sub_10002FE98(v0[3] + v5, v10, v9, 0);
  sub_10001FD94(v10, &qword_100048178, &unk_100039530);
  (v6)(v12, 1, 1, v11);
  v4 = v6;
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_4:
    v14 = 0;
    v15 = v0[5];
    v53 = (v15 + 48);
    v54 = v5 & 0xC000000000000001;
    v45 = (v15 + 16);
    v46 = v5 & 0xFFFFFFFFFFFFFF8;
    v48 = (v15 + 8);
    v51 = (v15 + 32);
    v16 = &unk_100039530;
    v49 = v13;
    v50 = v7;
    v52 = v5;
    v47 = v4;
    do
    {
      if (v54)
      {
        v22 = sub_100038848();
      }

      else
      {
        if (v14 >= *(v46 + 16))
        {
          goto LABEL_22;
        }

        v22 = *(v5 + 8 * v14 + 32);
      }

      v23 = v22;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v24 = v4;
      v25 = v7;
      v26 = v0[10];
      v27 = v16;
      v28 = v0[4];
      sub_10001FA38(v0[2], v26, &qword_100048178, v27);
      if ((*v53)(v26, 1, v28) == 1)
      {
        sub_10001FD94(v0[10], &qword_100048178, v27);
        v29 = [v23 timestamp];
        v16 = v27;
        if (v29)
        {
          v30 = v0[2];
          v31 = v29;
          sub_100037EE8();

          sub_10001FD94(v30, &qword_100048178, v27);
          v32 = 0;
        }

        else
        {
          sub_10001FD94(v0[2], &qword_100048178, v27);

          v32 = 1;
        }

        v7 = v25;
        v21 = v14 + 1;
        v4 = v24;
        (v24)(v0[8], v32, 1, v0[4]);
        v20 = v0 + 8;
        v5 = v52;
      }

      else
      {
        v16 = v27;
        v33 = *v51;
        (*v51)(v0[7], v0[10], v0[4]);
        result = [v23 timestamp];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v35 = result;
        v36 = v0[2];
        sub_100037EE8();

        sub_100037CA4(&qword_100048D98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v37 = sub_100038628();

        sub_10001FD94(v36, &qword_100048178, v27);
        v38 = v0[9];
        if (v37)
        {
          v39 = v0[6];
          v40 = v0[4];
          v17 = *v48;
          (*v48)(v0[7], v40);
          (*v45)(v38, v39, v40);
        }

        else
        {
          v33(v0[9], v0[7], v0[4]);
          v17 = *v48;
        }

        v4 = v47;
        v18 = v0[9];
        v19 = v0[4];
        v17(v0[6], v19);
        v7 = v50;
        (v47)(v18, 0, 1, v19);
        v20 = v0 + 9;
        v5 = v52;
        v13 = v49;
        v21 = v14 + 1;
      }

      sub_10002E8A8(*v20, v0[2]);
      ++v14;
    }

    while (v21 != v13);
  }

LABEL_25:
  v41 = v0[3];
  v42 = swift_task_alloc();
  *(v42 + 16) = v41;
  v43 = sub_10001BA28(sub_100037C78, v42, v5);

  v44 = v0[1];

  return v44(v43, 24);
}

uint64_t sub_10002FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100001B40(&qword_100048178, &unk_100039530);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &aBlock - v12;
  sub_10001FA38(a1, &aBlock - v12, &qword_100048178, &unk_100039530);
  result = sub_10001FA38(a2, v11, &qword_100048178, &unk_100039530);
  if ((a4 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_100037F08();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    isa = 0;
    if (v17(v13, 1, v15) != 1)
    {
      isa = sub_100037EC8().super.isa;
      (*(v16 + 8))(v13, v15);
    }

    if (v17(v11, 1, v15) == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_100037EC8().super.isa;
      (*(v16 + 8))(v11, v15);
    }

    v20 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v19 maxEvents:a3 lastN:a4 reversed:0];

    v21 = swift_allocObject();
    *(v21 + 16) = _swiftEmptyArrayStorage;
    v22 = [BiomeLibrary() GenerativeExperiences];
    swift_unknownObjectRelease();
    v23 = [v22 TransparencyLog];
    swift_unknownObjectRelease();
    v24 = sub_100038638();
    v25 = [v23 publisherWithUseCase:v24 options:v20];

    v34 = sub_100037C94;
    v35 = v21;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_100037D14;
    v33 = &unk_100046A28;
    v26 = _Block_copy(&aBlock);

    v34 = sub_100037C9C;
    v35 = v21;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_100037D14;
    v33 = &unk_100046A50;
    v27 = _Block_copy(&aBlock);

    v28 = [v25 sinkWithCompletion:v26 receiveInput:v27];

    _Block_release(v27);
    _Block_release(v26);

    swift_beginAccess();
    v29 = *(v21 + 16);

    return v29;
  }

  return result;
}

uint64_t sub_1000302D8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 prompt];
  if (v6)
  {
    v7 = v6;
    sub_100038648();

    v8 = a2[2];
    if (v8)
    {
      v9 = a2[1];

      v10 = [v5 useCase];
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = v10;
      v12 = sub_100038648();
      v14 = v13;

      if (v9 == v12 && v8 == v14)
      {
      }

      else
      {
        v16 = sub_100038A58();

        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    v17 = a2[4];
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = a2[3];

    v19 = [v5 model];
    if (v19)
    {
      v20 = v19;
      v21 = sub_100038648();
      v23 = v22;

      if (v18 == v21 && v17 == v23)
      {

        goto LABEL_15;
      }

      v24 = sub_100038A58();

      if (v24)
      {
LABEL_15:
        v25 = a2[6];
        if (!v25)
        {
LABEL_23:
          sub_100038158();
          v15 = 0;
          goto LABEL_24;
        }

        v26 = a2[5];

        v27 = [v5 modelVersion];
        if (v27)
        {
          v28 = v27;
          v29 = sub_100038648();
          v31 = v30;

          if (v26 == v29 && v25 == v31)
          {

            goto LABEL_23;
          }

          v32 = sub_100038A58();

          if (v32)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_21:

      v15 = 1;
      goto LABEL_24;
    }

LABEL_20:

    goto LABEL_21;
  }

  v15 = 1;
LABEL_24:
  v33 = sub_100038178();
  return (*(*(v33 - 8) + 56))(a3, v15, 1, v33);
}

void sub_1000305E8(void *a1, uint64_t a2)
{
  v4 = [a1 state];
  if (v4 == 1)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v11 = sub_100038598();
    sub_100003680(v11, qword_100048DC8);
    v12 = a1;
    oslog = sub_100038578();
    v13 = sub_1000387A8();

    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = [v12 error];
    if (v16)
    {
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 4) = v16;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Error reading data: %@", v14, 0xCu);
    sub_10001FD94(v15, &qword_100048190, &qword_10003B590);

    goto LABEL_23;
  }

  if (!v4)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v5 = sub_100038598();
    sub_100003680(v5, qword_100048DC8);

    v6 = sub_100038578();
    v7 = sub_1000387A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      v9 = *(a2 + 16);
      if (v9 >> 62)
      {
        v10 = sub_1000388A8();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v6, v7, "Data reading completed. Found %ld messages.", v8, 0xCu);
    }

    else
    {
    }

    return;
  }

  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v18 = sub_100038598();
  sub_100003680(v18, qword_100048DC8);
  oslog = sub_100038578();
  v19 = sub_1000387C8();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v19, "Data reading ends with unknown reason.", v20, 2u);
LABEL_23:
  }

LABEL_24:
}

void sub_10003095C(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 prompt];
    if (v4)
    {

      swift_beginAccess();
      v5 = v6;
      sub_1000386E8();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100038708();
      }

      sub_100038728();
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_100030A6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100037D00;

  return sub_10002F848(a1);
}

uint64_t sub_100030B04(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_100038178();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_100038278();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = sub_100037F08();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_1000381E8();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = sub_100038748();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  sub_100001B40(&qword_100048DA0, &qword_10003B5A8);
  v2[27] = swift_task_alloc();
  sub_100001B40(&qword_100048178, &unk_100039530);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = sub_100038028();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100030E78, 0, 0);
}

uint64_t sub_100030E78()
{
  v1 = v0[31];
  v2 = v0[5];
  v3 = type metadata accessor for EmailExtractor(0);
  sub_10001FA38(v2 + *(v3 + 20), v1, &qword_100048178, &unk_100039530);
  sub_100038018();
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_100030F80;

  return MessageExtractor.isDataAccessible()();
}

uint64_t sub_100030F80(char a1)
{
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_100031080, 0, 0);
}

uint64_t sub_100031080()
{
  if (*(v0 + 416) == 1)
  {
    v1 = *(v0 + 240);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v3 + 56);
    *(v0 + 296) = v4;
    *(v0 + 304) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v4(v1, 1, 1, v2);
    sub_100038008();
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 376) = 0;
    *(v0 + 384) = _swiftEmptyArrayStorage;
    v5 = sub_100037CA4(&qword_100048DA8, &type metadata accessor for MessageExtractor, &protocol conformance descriptor for MessageExtractor);
    v6 = swift_task_alloc();
    *(v0 + 392) = v6;
    *v6 = v0;
    v6[1] = sub_1000313E4;
    v7 = *(v0 + 256);
    v8 = *(v0 + 216);

    return dispatch thunk of AsyncIteratorProtocol.next()(v8, v7, v5);
  }

  else
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v9 = sub_100038598();
    sub_100003680(v9, qword_100048DC8);
    v10 = sub_100038578();
    v11 = sub_1000387A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Email interface: data not accessible.", v12, 2u);
    }

    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 32);

    (*(v15 + 8))(v13, v14);
    (*(v17 + 56))(v18, 1, 1, v16);

    v19 = *(v0 + 8);

    return v19(0, 7);
  }
}

uint64_t sub_1000313E4()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_100032914;
  }

  else
  {
    v2 = sub_1000314F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000314F8()
{
  v2 = v0[13].i64[1];
  v3 = v0[9].i64[1];
  v4 = v0[10].i64[0];
  v175 = v0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v44 = v0[11].i64[1];
    v45 = *(v4 + 32);
    v45(v44, v2, v3);
    v46 = sub_1000381C8();
    v48 = v47;

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
      v74 = v0[23].i64[1];
      (*(v0[10].i64[0] + 8))(v0[11].i64[1], v0[9].i64[1]);
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        goto LABEL_138;
      }

      v75 = v0[24].i64[0];
      v76 = vdupq_n_s64(v74 + 1);
      goto LABEL_131;
    }

    v50 = v0[2].i64[1];
    v51 = *(v50 + 24);
    if (v51 != 2 && (v51 & 1) != 0)
    {
      sub_1000381A8();
      if (v52)
      {
        v53 = sub_100038668();
        v55 = v54;

        if (v53 == 0x6E65672D6F747561 && v55 == 0xEE00646574617265)
        {

          goto LABEL_98;
        }

        v128 = sub_100038A58();

        if (v128)
        {
LABEL_98:
          v129 = v0[22].i64[1];
          v130 = (*(v0[10].i64[0] + 8))(v0[11].i64[1], v0[9].i64[1]);
          if (!__OFADD__(v129, 1))
          {
            v75 = v0[24].i64[0];
            v76 = v0[23];
            v133 = vdupq_n_s64(v129 + 1);
LABEL_130:
            v0[22] = v133;
LABEL_131:
            v0[23] = v76;
LABEL_132:
            v0[24].i64[0] = v75;
            v169 = sub_100037CA4(&qword_100048DA8, &type metadata accessor for MessageExtractor, &protocol conformance descriptor for MessageExtractor);
            v170 = swift_task_alloc();
            v0[24].i64[1] = v170;
            *v170 = v0;
            v170[1] = sub_1000313E4;
            v131 = v0[16].i64[0];
            v130 = v0[13].i64[1];
            v132 = v169;

            return dispatch thunk of AsyncIteratorProtocol.next()(v130, v131, v132);
          }

          goto LABEL_141;
        }
      }

      if (sub_100037FE8())
      {
        v134 = v0[21].i64[1];
        v130 = (*(v0[10].i64[0] + 8))(v0[11].i64[1], v0[9].i64[1]);
        if (__OFADD__(v134, 1))
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v75 = v0[24].i64[0];
        v133 = v0[22];
        v76 = v0[23];
        v135 = vdupq_n_s64(v134 + 1);
LABEL_129:
        v0[21] = v135;
        goto LABEL_130;
      }

      v50 = v0[2].i64[1];
    }

    v136 = *(v50 + 48);
    v137 = *(v50 + 56);
    v139 = *(v50 + 64);
    v138 = *(v50 + 72);
    v140 = *(v50 + 80);
    if (!v136)
    {
      goto LABEL_109;
    }

    if (v136 == 1)
    {
LABEL_110:
      (*(v175[10].i64[0] + 16))(v175[11].i64[0], v175[11].i64[1], v175[9].i64[1]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v175[24].i64[0];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_1000299A0(0, v75[2] + 1, 1, v175[24].i64[0]);
      }

      v143 = v75[2];
      v142 = v75[3];
      if (v143 >= v142 >> 1)
      {
        v75 = sub_1000299A0((v142 > 1), v143 + 1, 1, v75);
      }

      v145 = v175[14].i64[1];
      v144 = v175[15].i64[0];
      v146 = v175[11].i64[0];
      v147 = v175[9].i64[1];
      v148 = v175[10].i64[0];
      v150 = v175[7].i64[1];
      v149 = v175[8].i64[0];
      v75[2] = v143 + 1;
      v45(v75 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v143, v146, v147);
      sub_10001FA38(v144, v145, &qword_100048178, &unk_100039530);
      v151 = (*(v149 + 48))(v145, 1, v150);
      v152 = v175[11].i64[1];
      v154 = v175[9].i64[1];
      v153 = v175[10].i64[0];
      if (v151 == 1)
      {
        i64 = &v175[15].i64[1];
        v156 = v175[15].i64[0];
        sub_10001FD94(v175[14].i64[1], &qword_100048178, &unk_100039530);
        sub_1000381D8();
        (*(v153 + 8))(v152, v154);
        sub_10001FD94(v156, &qword_100048178, &unk_100039530);
      }

      else
      {
        i64 = v175[14].i64;
        v184 = v175[14].i64[0];
        v177 = v175[15].i64[0];
        v188 = v75;
        v158 = v175[8].i64[1];
        v157 = v175[9].i64[0];
        v160 = v175[7].i64[1];
        v159 = v175[8].i64[0];
        v181 = *(v159 + 32);
        v181(v157, v175[14].i64[1], v160);
        sub_1000381D8();
        sub_100037CA4(&qword_100048D98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v161 = sub_100038628();
        (*(v153 + 8))(v152, v154);
        sub_10001FD94(v177, &qword_100048178, &unk_100039530);
        if (v161)
        {
          v162 = v157;
        }

        else
        {
          v162 = v158;
        }

        if (v161)
        {
          v163 = v158;
        }

        else
        {
          v163 = v157;
        }

        v75 = v188;
        (*(v159 + 8))(v162, v160);
        v181(v184, v163, v160);
      }

      v164 = *i64;
      v165 = v175[15].i64[0];
      (v175[18].i64[1])(*i64, 0, 1, v175[7].i64[1]);
      sub_10002E8A8(v164, v165);
      v0 = v175;
      goto LABEL_132;
    }

    if ((sub_100032E64(v175[11].i64[1], v136) & 1) == 0)
    {
      v0 = v175;
      v166 = v175[20].i64[1];
      v130 = (*(v175[10].i64[0] + 8))(v175[11].i64[1], v175[9].i64[1]);
      if (__OFADD__(v166, 1))
      {
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v75 = v175[24].i64[0];
      v133 = v175[22];
      v76 = v175[23];
      v135 = v175[21];
      v167 = vdupq_n_s64(v166 + 1);
    }

    else
    {
LABEL_109:
      if ((v139 & 1) != 0 || (v140 & 1) != 0 || sub_100033704(v175[11].i64[1], v137, v138))
      {
        goto LABEL_110;
      }

      v0 = v175;
      v168 = v175[19].i64[1];
      v130 = (*(v175[10].i64[0] + 8))(v175[11].i64[1], v175[9].i64[1]);
      if (__OFADD__(v168, 1))
      {
LABEL_143:
        __break(1u);
        return dispatch thunk of AsyncIteratorProtocol.next()(v130, v131, v132);
      }

      v75 = v175[24].i64[0];
      v133 = v175[22];
      v76 = v175[23];
      v167 = v175[20];
      v135 = v175[21];
      v175[19].i64[1] = v168 + 1;
    }

    v0[20] = v167;
    goto LABEL_129;
  }

  v171 = *(v0[16].i64[1] + 8);
  v171(v0[17].i64[0], v0[16].i64[0]);
  if (qword_100048160 != -1)
  {
LABEL_136:
    swift_once();
  }

  v5 = sub_100038598();
  sub_100003680(v5, qword_100048DC8);
  v6 = sub_100038578();
  v7 = sub_1000387A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v175[23].i64[0];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Filtered %ld empty body messages.", v9, 0xCu);
  }

  v10 = v175;
  v11 = v175[2].i64[1];

  v12 = *(v11 + 24);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v13 = sub_100038578();
    v14 = sub_1000387A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v175[22].i64[0];
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v13, v14, "Filtered %ld auto-generated messages", v16, 0xCu);
    }

    v17 = sub_100038578();
    v18 = sub_1000387A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v175[21].i64[0];
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Filtered %ld group or no-reply apple messages", v20, 0xCu);
    }

    v10 = v175;
  }

  if (v10[40] >= 1)
  {
    v21 = sub_100038578();
    v22 = sub_1000387A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v175[20].i64[0];
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v21, v22, "Filtered %ld messages by week days.", v24, 0xCu);
    }

    v10 = v175;
  }

  if (v10[39] >= 1)
  {
    v25 = sub_100038578();
    v26 = sub_1000387A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v175[19].i64[1];
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v25, v26, "Filtered %ld messages by hours.", v28, 0xCu);
    }

    v10 = v175;
  }

  v29 = *(v10[5] + 25);
  if (v29 == 2 || (v29 & 1) == 0)
  {
    v56 = sub_100038078();
    v57 = *(v56 + 16);
    if (v57)
    {
      v174 = 0;
      v58 = v10[10];
      v61 = *(v58 + 16);
      v60 = v58 + 16;
      v59 = v61;
      v176 = (*(v60 + 64) + 32) & ~*(v60 + 64);
      v62 = v56 + v176;
      v186 = *(v60 + 56);
      v63 = (v60 - 8);
      v34 = _swiftEmptyArrayStorage;
      v182 = v12;
      v179 = v61;
      v61(v10[13], v56 + v176, v10[9]);
      while (1)
      {
        if ((v12 & 1) == 0 || (v65 = *(sub_100038268() + 16), , v66 = v65 > 1, v67 = v186, v66))
        {
          v59(v10[12], v10[13], v10[9]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_100029978(0, v34[2] + 1, 1, v34);
          }

          v69 = v34[2];
          v68 = v34[3];
          v70 = v69 >= v68 >> 1 ? sub_100029978((v68 > 1), v69 + 1, 1, v34) : v34;
          v71 = v10[12];
          v72 = v10[9];
          (*v63)(v10[13], v72);
          v70[2] = v69 + 1;
          v67 = v186;
          v73 = v71;
          v34 = v70;
          (*(v60 + 16))(v70 + v176 + v69 * v186, v73, v72);
          v12 = v182;
          v59 = v179;
        }

        else
        {
          (*v63)(v10[13], v10[9]);
          if (__OFADD__(v174++, 1))
          {
            __break(1u);
            goto LABEL_136;
          }
        }

        v62 += v67;
        if (!--v57)
        {
          break;
        }

        v59(v10[13], v62, v10[9]);
      }

      if (v12 != 2)
      {
        goto LABEL_58;
      }
    }

    else
    {

      v174 = 0;
      v34 = _swiftEmptyArrayStorage;
      if (v12 != 2)
      {
LABEL_58:
        if (v12)
        {
          v77 = sub_100038578();
          v78 = sub_1000387A8();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 134217984;
            *(v79 + 4) = v174;
            _os_log_impl(&_mh_execute_header, v77, v78, "Filtered %ld conversations with a single message.", v79, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v30 = v10[48];
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = v10[20];
      v178 = v10[10];
      v33 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v172 = *(v32 + 16);
      v34 = _swiftEmptyArrayStorage;
      v173 = *(v32 + 72);
      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      do
      {
        v37 = v10[20];
        v36 = v10[21];
        v38 = v10[19];
        v185 = v31;
        v172(v36, v33, v38);
        sub_1000381B8();
        sub_100001B40(&qword_1000489B8, &qword_10003AB88);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10003B310;
        v172(v39 + v35, v36, v38);
        sub_1000381C8();
        sub_100038238();
        (*(v37 + 8))(v36, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100029978(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        v10 = v175;
        if (v41 >= v40 >> 1)
        {
          v34 = sub_100029978((v40 > 1), v41 + 1, 1, v34);
        }

        v42 = v175[7].i64[0];
        v43 = v175[4].i64[1];
        v34[2] = v41 + 1;
        (*(v178 + 32))(v34 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v41, v42, v43);
        v33 += v173;
        v31 = v185 - 1;
      }

      while (v185 != 1);
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
    }
  }

  v80 = sub_100038578();
  v81 = sub_1000387A8();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = v34;
    v83 = swift_slowAlloc();
    *v83 = 134217984;
    *(v83 + 4) = v82[2];

    _os_log_impl(&_mh_execute_header, v80, v81, "Finished extract step. Extracted %ld conversations.", v83, 0xCu);
    v34 = v82;
  }

  else
  {
  }

  v84 = v34[2];
  if (v84)
  {
    v85 = v10[10];
    v86 = v10[7];
    sub_10001C598(0, v84, 0);
    v87 = _swiftEmptyArrayStorage;
    v89 = *(v85 + 16);
    v88 = v85 + 16;
    v183 = v89;
    v90 = v34 + ((*(v88 + 64) + 32) & ~*(v88 + 64));
    v180 = *(v88 + 56);
    do
    {
      v91 = v10[11];
      v92 = v10[9];
      v183(v91, v90, v92);
      sub_100038248();
      sub_100038258();
      sub_100038158();
      (*(v88 - 8))(v91, v92);
      v94 = _swiftEmptyArrayStorage[2];
      v93 = _swiftEmptyArrayStorage[3];
      if (v94 >= v93 >> 1)
      {
        sub_10001C598((v93 > 1), v94 + 1, 1);
      }

      v95 = v10[8];
      v96 = v10[6];
      _swiftEmptyArrayStorage[2] = v94 + 1;
      (*(v86 + 32))(_swiftEmptyArrayStorage + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v94, v95, v96);
      v90 += v180;
      --v84;
    }

    while (v84);
  }

  else
  {

    v87 = _swiftEmptyArrayStorage;
  }

  v97 = v10[5];
  if ((*(v97 + 40) & 1) == 0)
  {
    v102 = *(v97 + 32);
    v103 = _swiftEmptyArrayStorage[2];

    v104 = sub_100038578();
    if (v103 < v102)
    {
      v105 = sub_1000387C8();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 134218240;
        *(v106 + 4) = v102;
        *(v106 + 12) = 2048;
        v107 = _swiftEmptyArrayStorage[2];

        *(v106 + 14) = v107;

        _os_log_impl(&_mh_execute_header, v104, v105, "Not enough data to sample with sampling size %ld. Only %ld items were extract extracted.", v106, 0x16u);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v110 = v175[18].i64[1];
      v111 = v175[17].i64[1];
      v112 = v175[16].i64[0];
      v113 = v175[7].i64[1];
      v114 = v175[2].i64[0];
      sub_10001FD94(v175[15].i64[0], &qword_100048178, &unk_100039530);
      v171(v111, v112);
      v115 = v113;
      v10 = v175;
      v110(v114, 1, 1, v115);
      v87 = 0;
      v116 = 17;
      goto LABEL_94;
    }

    v108 = sub_1000387A8();
    if (os_log_type_enabled(v104, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 134218240;
      *(v109 + 4) = _swiftEmptyArrayStorage[2];

      *(v109 + 12) = 2048;
      *(v109 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v104, v108, "Subsampling from %ld to %ld items.", v109, 0x16u);
    }

    else
    {
    }

    sub_100036FF8();
    v74 = sub_10001B994(v102, _swiftEmptyArrayStorage);
    if ((v119 & 1) == 0)
    {
      goto LABEL_84;
    }

    v1 = v119;
    v44 = v118;
    v0 = v117;
    sub_100038A68();
    swift_unknownObjectRetain_n();
    v124 = swift_dynamicCastClass();
    if (!v124)
    {
      swift_unknownObjectRelease();
      v124 = _swiftEmptyArrayStorage;
    }

    v125 = v124[2];

    if (!__OFSUB__(v1 >> 1, v44))
    {
      if (v125 == (v1 >> 1) - v44)
      {
        v87 = swift_dynamicCastClass();
        if (!v87)
        {
          swift_unknownObjectRelease();
          v87 = _swiftEmptyArrayStorage;
        }

        v10 = v175;
        v171(v175[17].i64[1], v175[16].i64[0]);
        swift_unknownObjectRelease();
        goto LABEL_92;
      }

      goto LABEL_139;
    }

LABEL_138:
    __break(1u);
LABEL_139:
    swift_unknownObjectRelease();
    v119 = v1;
    v118 = v44;
    v117 = v0;
LABEL_84:
    v120 = v175[17].i64[1];
    v121 = v175[16].i64[0];
    sub_100036E58(v74, v117, v118, v119);
    v87 = v122;
    swift_unknownObjectRelease();
    v123 = v121;
    v10 = v175;
    v171(v120, v123);
LABEL_92:
    v100 = v10[30];
    v101 = v10[4];
    goto LABEL_93;
  }

  v98 = v10[30];
  v99 = v10[4];
  v171(v10[35], v10[32]);
  v100 = v98;
  v101 = v99;
LABEL_93:
  sub_10002E8A8(v100, v101);
  v116 = 24;
LABEL_94:
  v187 = v116;

  v126 = v10[1];

  return v126(v87, v187);
}

uint64_t sub_100032914()
{
  v0[2] = v0[50];
  v0[51] = sub_100001B40(&qword_100048DB0, &unk_10003B5B0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1000329AC, 0, 0);
}

uint64_t sub_1000329AC()
{
  v1 = v0[50];
  v31 = *(v0[33] + 8);
  v31(v0[34], v0[32]);
  v0[3] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v2 = sub_100038598();
    sub_100003680(v2, qword_100048DC8);

    v3 = sub_100038578();
    v4 = sub_1000387A8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[48];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      v8 = *(v6 + 16);

      *(v7 + 4) = v8;

      _os_log_impl(&_mh_execute_header, v3, v4, "Task canceled at extraction loop. Extracted %ld messages.", v7, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v21 = v0[37];
    v22 = v0[35];
    v23 = v0[32];
    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[24];
    v27 = v0[15];
    v28 = v0[4];
    sub_10001FD94(v0[30], &qword_100048178, &unk_100039530);
    v31(v22, v23);
    v21(v28, 1, 1, v27);
    (*(v25 + 8))(v24, v26);
  }

  else
  {

    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v9 = sub_100038598();
    sub_100003680(v9, qword_100048DC8);
    swift_errorRetain();
    v10 = sub_100038578();
    v11 = sub_1000387C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error at extraction loop: %@.", v12, 0xCu);
      sub_10001FD94(v13, &qword_100048190, &qword_10003B590);
    }

    v15 = v0[37];
    v16 = v0[35];
    v17 = v0[32];
    v18 = v0[30];
    v19 = v0[15];
    v20 = v0[4];

    sub_10001FD94(v18, &qword_100048178, &unk_100039530);
    v31(v16, v17);
    v15(v20, 1, 1, v19);
  }

  v29 = v0[1];

  return v29(0, 10);
}

uint64_t sub_100032E64(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v81 = a1;
  v83 = sub_1000381E8();
  v79 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100037F08();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100037FA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100037F38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100037F88();
  v85 = *(v87 - 8);
  v13 = __chkstk_darwin(v87);
  v82 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v68 - v15;
  sub_100037F48();
  v17 = [objc_allocWithZone(NSDateFormatter) init];
  sub_100037F18();
  isa = sub_100037F28().super.isa;
  (*(v10 + 8))(v12, v9);
  [v17 setLocale:isa];

  sub_100037F58();
  v19 = sub_100037F98().super.isa;
  v20 = *(v6 + 8);
  v75 = v8;
  v76 = v6 + 8;
  v77 = v5;
  v20(v8, v5);
  [v17 setTimeZone:v19];

  v21 = sub_100038638();
  [v17 setDateFormat:v21];

  v22 = v81;
  sub_1000381D8();
  v23 = sub_100037EC8().super.isa;
  v24 = *(v88 + 8);
  v74 = v4;
  v88 += 8;
  v24(v4, v84);
  v25 = [v17 stringFromDate:v23];

  v26 = sub_100038648();
  v28 = v27;

  v29 = sub_100029E60(v26, v28);
  if (v29 == 7)
  {
    (*(v85 + 8))(v16, v87);

    return 0;
  }

  else
  {
    v72 = v20;
    v73 = v17;
    v80 = v16;
    v31 = *(v86 + 16);
    v32 = (v86 + 32);
    v33 = v29;
    do
    {
      v34 = v31;
      v35 = v31-- != 0;
      v30 = v35;
      if (!v35)
      {
        break;
      }

      if (qword_10003B5D0[*v32] == qword_10003B5D0[v33])
      {
        break;
      }

      ++v32;
    }

    while ((sub_100038A58() & 1) == 0);
    v71 = v24;
    v36 = v83;
    v37 = v78;
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v38 = sub_100038598();
    sub_100003680(v38, qword_100048DC8);
    v39 = v79;
    (*(v79 + 16))(v37, v22, v36);
    v40 = v85;
    (*(v85 + 16))(v82, v80, v87);

    v41 = sub_100038578();
    v42 = sub_1000387B8();

    if (os_log_type_enabled(v41, v42))
    {
      v70 = v34 != 0;
      v43 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v89[0] = v81;
      *v43 = 136316162;
      v44 = v74;
      v69 = v42;
      sub_1000381D8();
      sub_100037CA4(&qword_100048DB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v68 = v41;
      v45 = v84;
      v46 = sub_100038A38();
      v48 = v47;
      v71(v44, v45);
      (*(v39 + 8))(v37, v83);
      v49 = sub_10001BFAC(v46, v48, v89);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      v50 = v75;
      v51 = v82;
      sub_100037F58();
      sub_100037CA4(&qword_100048DC0, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
      v52 = v77;
      v53 = sub_100038A38();
      v55 = v54;
      v72(v50, v52);
      v56 = *(v85 + 8);
      v57 = v87;
      v56(v51, v87);
      v58 = v56;
      v59 = sub_10001BFAC(v53, v55, v89);

      *(v43 + 14) = v59;
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_10001BFAC(qword_10003B5D0[v33], 0xE300000000000000, v89);
      *(v43 + 32) = 2080;
      v60 = sub_1000386F8();
      v62 = sub_10001BFAC(v60, v61, v89);

      *(v43 + 34) = v62;
      *(v43 + 42) = 1024;
      v63 = v69;
      *(v43 + 44) = v70;
      v64 = v68;
      _os_log_impl(&_mh_execute_header, v68, v63, "WeekDays filter | message date: %s, timezone: %s, local week day: %s, weekDays: %s, isIn: %{BOOL}d", v43, 0x30u);
      swift_arrayDestroy();

      v58(v80, v57);
    }

    else
    {

      v65 = *(v40 + 8);
      v66 = v87;
      v65(v82, v87);
      (*(v39 + 8))(v37, v83);
      v65(v80, v66);
    }
  }

  return v30;
}

BOOL sub_100033704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  v4 = sub_100037FA8();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000381E8();
  v66 = *(v71 - 8);
  __chkstk_darwin(v71);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100037F08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100037F68();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100037F88();
  v64 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  sub_100037F48();
  (*(v12 + 104))(v14, enum case for Calendar.Component.hour(_:), v11);
  v67 = a1;
  sub_1000381D8();
  v21 = sub_100037F78();
  v22 = *(v8 + 8);
  v59 = v8 + 8;
  v60 = v7;
  v57 = v22;
  v22(v10, v7);
  (*(v12 + 8))(v14, v11);
  v58 = v21;
  v24 = v21 >= v69 && v21 < v70;
  v68 = v24;
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v25 = sub_100038598();
  sub_100003680(v25, qword_100048DC8);
  v27 = v65;
  v26 = v66;
  (*(v66 + 16))(v65, v67, v71);
  v28 = v64;
  (*(v64 + 16))(v18, v20, v15);
  v29 = sub_100038578();
  v30 = sub_1000387B8();
  v31 = v28;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v72[0] = v67;
    *v32 = 136316418;
    v55 = v29;
    sub_1000381D8();
    sub_100037CA4(&qword_100048DB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v54 = v30;
    v33 = v60;
    v34 = sub_100038A38();
    v53 = v15;
    v56 = v20;
    v35 = v31;
    v36 = v26;
    v38 = v37;
    v57(v10, v33);
    (*(v36 + 8))(v27, v71);
    v39 = sub_10001BFAC(v34, v38, v72);

    *(v32 + 4) = v39;
    *(v32 + 12) = 2080;
    v40 = v61;
    sub_100037F58();
    sub_100037CA4(&qword_100048DC0, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v41 = v63;
    v42 = sub_100038A38();
    v44 = v43;
    (*(v62 + 8))(v40, v41);
    v45 = *(v35 + 8);
    v46 = v53;
    v45(v18, v53);
    v47 = sub_10001BFAC(v42, v44, v72);

    *(v32 + 14) = v47;
    *(v32 + 22) = 2048;
    *(v32 + 24) = v58;
    *(v32 + 32) = 2048;
    *(v32 + 34) = v69;
    *(v32 + 42) = 2048;
    *(v32 + 44) = v70;
    *(v32 + 52) = 1024;
    v48 = v68;
    *(v32 + 54) = v68;
    v49 = v55;
    _os_log_impl(&_mh_execute_header, v55, v54, "BetweenHours filter | message date: %s, timezone: %s, local hour: %ld,  startHour: %ld, endHour: %ld, isIn: %{BOOL}d", v32, 0x3Au);
    swift_arrayDestroy();

    v45(v56, v46);
  }

  else
  {

    v50 = *(v28 + 8);
    v50(v18, v15);
    (*(v26 + 8))(v27, v71);
    v50(v20, v15);
    return v68;
  }

  return v48;
}

uint64_t sub_100033DE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100037D00;

  return sub_100030B04(a1);
}

uint64_t SmsMessage.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SmsMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmsMessage(0) + 20);
  v4 = sub_100037F08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SmsMessage.sender.getter()
{
  v1 = *(v0 + *(type metadata accessor for SmsMessage(0) + 24));

  return v1;
}

uint64_t SmsMessage.groupID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SmsMessage(0) + 28));

  return v1;
}

uint64_t SmsMessage.init(content:timestamp:sender:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for SmsMessage(0);
  v15 = v14[5];
  v16 = sub_100037F08();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &a8[v14[7]];
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_100034080()
{
  v1 = 0x746E65746E6F63;
  v2 = 0x7265646E6573;
  if (*v0 != 2)
  {
    v2 = 0x444970756F7267;
  }

  if (*v0)
  {
    v1 = 0x6D617473656D6974;
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

uint64_t sub_1000340FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003729C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100034124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000343B8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100034160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000343B8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t SmsMessage.encode(to:)(void *a1)
{
  v3 = sub_100001B40(&qword_100048B08, &qword_10003B320);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  v7 = sub_1000036D0(a1, a1[3]);
  sub_1000343B8(v7, v8, v9);
  sub_100038B68();
  v11[15] = 0;
  sub_1000389E8();
  if (!v1)
  {
    type metadata accessor for SmsMessage(0);
    v11[14] = 1;
    sub_100037F08();
    sub_100037CA4(&qword_1000489A8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100038A18();
    v11[13] = 2;
    sub_100038998();
    v11[12] = 3;
    sub_100038998();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1000343B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048B10;
  if (!qword_100048B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048B10);
  }

  return result;
}

uint64_t SmsMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_100037F08();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100001B40(&qword_100048B18, &qword_10003B328);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v27 - v6;
  v8 = type metadata accessor for SmsMessage(0);
  __chkstk_darwin(v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000036D0(a1, a1[3]);
  sub_1000343B8(v11, v12, v13);
  v30 = v7;
  v14 = v32;
  sub_100038B58();
  if (v14)
  {
    return sub_10000387C(a1);
  }

  v15 = v28;
  v36 = 0;
  v16 = v10;
  *v10 = sub_100038958();
  v10[1] = v17;
  v32 = v17;
  v35 = 1;
  sub_100037CA4(&qword_100048A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100038988();
  v18 = v8;
  (*(v15 + 32))(v16 + *(v8 + 20), v5, v3);
  v34 = 2;
  v19 = sub_100038908();
  v20 = (v16 + *(v8 + 24));
  *v20 = v19;
  v20[1] = v21;
  v33 = 3;
  v22 = sub_100038908();
  v24 = v23;
  (*(v29 + 8))(v30, v31);
  v25 = (v16 + *(v18 + 28));
  *v25 = v22;
  v25[1] = v24;
  sub_10003480C(v16, v27);
  sub_10000387C(a1);
  return sub_100034870(v16);
}

uint64_t sub_10003480C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034870(uint64_t a1)
{
  v2 = type metadata accessor for SmsMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100037F08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000349D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100037F08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100034A74(uint64_t a1)
{
  sub_100037F08();
  if (v1 <= 0x3F)
  {
    sub_100034B08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100034B08()
{
  if (!qword_1000485E8)
  {
    v0 = sub_1000387F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000485E8);
    }
  }
}

unint64_t sub_100034B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048BB8;
  if (!qword_100048BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048BB8);
  }

  return result;
}

unint64_t sub_100034BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048BC0;
  if (!qword_100048BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048BC0);
  }

  return result;
}

unint64_t sub_100034C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100048BC8;
  if (!qword_100048BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048BC8);
  }

  return result;
}

uint64_t sub_100034C70@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100037F08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SmsMessage(0);
  v8 = *(v91 - 8);
  __chkstk_darwin(v91);
  v10 = (&v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a1 eventBody];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 interaction];
  if (!v13)
  {

LABEL_10:
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v31 = sub_100038598();
    sub_100003680(v31, qword_100048DC8);
    v32 = sub_100038578();
    v33 = sub_1000387C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Interaction intent read from biome is not of INSendMessageIntent type, message will be discarded.", v34, 2u);
    }

    goto LABEL_15;
  }

  v90 = a1;
  v14 = a2;
  v15 = v13;
  v16 = sub_100037E98();
  v18 = v17;

  v19 = [v12 absoluteTimestamp];
  if (!v19)
  {

    v29 = v16;
    v30 = v18;
LABEL_9:
    sub_100003924(v29, v30);
    a2 = v14;
    a1 = v90;
    goto LABEL_10;
  }

  v88 = v18;
  v89 = v16;
  v20 = v19;
  sub_100037EE8();

  v21 = [v12 groupIdentifier];
  if (!v21)
  {
    (*(v5 + 8))(v7, v4);

    v30 = v88;
    v29 = v89;
    goto LABEL_9;
  }

  v85 = v8;
  v86 = v4;
  v87 = v5;
  v22 = v21;
  v23 = sub_100038648();
  v25 = v24;

  v26 = objc_allocWithZone(NSKeyedUnarchiver);
  v27 = v88;
  v28 = v89;
  sub_100037BD8(v89, v88);
  v37 = sub_100037B18(v28, v27);
  v83 = v25;
  v38 = v91;
  sub_100003924(v28, v27);
  sub_100037C2C();
  sub_100038648();
  v84 = v37;
  v39 = sub_1000387D8();

  if (!v39)
  {

    a2 = v14;
LABEL_27:
    v43 = v7;
    goto LABEL_28;
  }

  v40 = [v39 intent];
  a2 = v14;
  if (!v40)
  {

    goto LABEL_27;
  }

  v41 = v40;
  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  v43 = v7;
  if (v42)
  {
    v44 = v42;
    if ([v42 outgoingMessageType] == 2)
    {
      v45 = v41;

      if (qword_100048160 != -1)
      {
        swift_once();
      }

      v46 = sub_100038598();
      sub_100003680(v46, qword_100048DC8);
      v47 = sub_100038578();
      v48 = sub_1000387B8();
      v49 = os_log_type_enabled(v47, v48);
      v8 = v85;
      v50 = v86;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "MessageIntent read from biome has incorrect contents, message will be discarded.";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v47, v48, v52, v51, 2u);

        goto LABEL_32;
      }

LABEL_48:

      sub_100003924(v89, v88);
      goto LABEL_34;
    }

    v57 = [v44 content];
    v45 = v41;
    if (!v57)
    {

      if (qword_100048160 != -1)
      {
        swift_once();
      }

      v70 = sub_100038598();
      sub_100003680(v70, qword_100048DC8);
      v47 = sub_100038578();
      v48 = sub_1000387B8();
      v71 = os_log_type_enabled(v47, v48);
      v8 = v85;
      v50 = v86;
      if (v71)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "Message content was nil, discarding message";
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v81 = v39;
    v82 = a2;
    v58 = v57;
    v59 = sub_100038648();
    v61 = v60;

    *v10 = v59;
    v10[1] = v61;
    (*(v87 + 16))(v10 + *(v38 + 20), v43, v86);
    v62 = [v44 sender];
    if (v62 && (v63 = v62, v64 = [v62 contactIdentifier], v63, v64) || (v65 = objc_msgSend(v44, "sender")) != 0 && (v66 = v65, v64 = objc_msgSend(v65, "customIdentifier"), v66, v64))
    {
      v67 = sub_100038648();
      v69 = v68;

      sub_100003924(v89, v88);
    }

    else
    {
      v72 = [v44 sender];
      if (!v72)
      {
        (*(v87 + 8))(v43, v86);

        sub_100003924(v89, v88);
        v67 = 0;
        v69 = 0;
        goto LABEL_52;
      }

      v73 = v72;
      v74 = [v72 displayName];

      v67 = sub_100038648();
      v69 = v75;

      sub_100003924(v89, v88);
    }

    (*(v87 + 8))(v43, v86);
LABEL_52:
    v76 = v91;
    v77 = (v10 + *(v91 + 24));
    *v77 = v67;
    v77[1] = v69;
    v78 = (v10 + *(v76 + 28));
    a2 = v82;
    v79 = v83;
    *v78 = v23;
    v78[1] = v79;
    sub_100037AB4(v10, a2);
    v35 = 0;
    v8 = v85;
    return (*(v8 + 56))(a2, v35, 1, v91);
  }

LABEL_28:
  v8 = v85;
  v50 = v86;
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v53 = sub_100038598();
  sub_100003680(v53, qword_100048DC8);
  v54 = sub_100038578();
  v55 = sub_1000387B8();
  if (!os_log_type_enabled(v54, v55))
  {

    sub_100003924(v89, v88);
LABEL_34:

    goto LABEL_35;
  }

  v56 = swift_slowAlloc();
  *v56 = 0;
  _os_log_impl(&_mh_execute_header, v54, v55, "Interaction intent read from biome is not of INSendMessageIntent type, message will be discarded.", v56, 2u);

LABEL_32:
  sub_100003924(v89, v88);
LABEL_35:
  (*(v87 + 8))(v43, v50);
LABEL_15:
  v35 = 1;
  return (*(v8 + 56))(a2, v35, 1, v91);
}

uint64_t sub_1000357EC(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  sub_100001B40(&qword_1000483E0, qword_100039630);
  v2[25] = swift_task_alloc();
  v3 = sub_100038178();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = sub_100001B40(&qword_100048D80, &qword_10003B580);
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for SmsMessage(0);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  sub_100001B40(&qword_100048D88, &qword_10003B588);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_100001B40(&qword_100048178, &unk_100039530);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_100035A40, 0, 0);
}

uint64_t sub_100035A40()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[24];
  v4 = type metadata accessor for SmsExtractor(0);
  sub_10001FA38(v3 + *(v4 + 20), v1, &qword_100048178, &unk_100039530);
  v76 = sub_100037F08();
  v78 = *(v76 - 8);
  v5 = *(v78 + 56);
  v5(v2, 1, 1);
  v69 = v5;
  v6 = v0[24];
  v7 = *(v3 + 9);
  v8 = v0[41];
  v10 = v0[39];
  v9 = v0[40];
  if (*(v6 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *v6;
  }

  sub_10001FA38(v0[42], v0[40], &qword_100048178, &unk_100039530);
  sub_10001FA38(v8, v10, &qword_100048178, &unk_100039530);
  v12 = *(v78 + 48);
  v13 = v12(v9, 1, v76);

  isa = 0;
  if (v13 != 1)
  {
    v15 = v0[40];
    isa = sub_100037EC8().super.isa;
    (*(v78 + 8))(v15, v76);
  }

  v16 = v0[39];
  if (v12(v16, 1, v76) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_100037EC8().super.isa;
    (*(v78 + 8))(v16, v76);
  }

  v18 = v7;
  v72 = v0[42];
  v74 = v0[41];
  v19 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v17 maxEvents:v11 lastN:0 reversed:0];

  v20 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v21 = [v20 Intent];
  swift_unknownObjectRelease();
  v22 = sub_100038638();

  v23 = v19;
  v24 = [v21 publisherWithUseCase:v22 options:v19];

  v25 = swift_allocObject();
  *(v25 + 16) = _swiftEmptyArrayStorage;
  v26 = swift_allocObject();
  *(v26 + 16) = v18 & 1;
  v0[6] = sub_100037A84;
  v0[7] = v26;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100036664;
  v0[5] = &unk_100046988;
  v27 = _Block_copy(v0 + 2);

  v28 = [v24 filterWithIsIncluded:v27];
  _Block_release(v27);
  v0[12] = sub_100037AA4;
  v0[13] = v25;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100037D14;
  v0[11] = &unk_1000469B0;
  v29 = _Block_copy(v0 + 8);

  v0[18] = sub_100037AAC;
  v0[19] = v25;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100037D14;
  v0[17] = &unk_1000469D8;
  v30 = _Block_copy(v0 + 14);

  v31 = [v28 sinkWithCompletion:v29 receiveInput:v30];

  _Block_release(v30);
  _Block_release(v29);

  sub_10001FD94(v74, &qword_100048178, &unk_100039530);
  sub_10001FD94(v72, &qword_100048178, &unk_100039530);
  swift_beginAccess();
  v32 = *(v25 + 16);

  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = *(v0[33] + 80);
    aBlock = (v32 + ((v34 + 32) & ~v34));
    result = sub_10003480C(aBlock, v0[35]);
    if (v33 != 1)
    {
      v42 = v0[33];
      v43 = 1;
      while (v43 < *(v32 + 16))
      {
        sub_10003480C(aBlock + *(v42 + 72) * v43, v0[34]);
        if (sub_100037ED8())
        {
          v45 = v0[34];
          v44 = v0[35];
          sub_100034870(v44);
          result = sub_100037AB4(v45, v44);
        }

        else
        {
          result = sub_100034870(v0[34]);
        }

        if (v33 == ++v43)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_38;
    }

LABEL_11:
    v37 = v0[36];
    v36 = v0[37];
    v39 = v0[32];
    v38 = v0[33];
    sub_100037AB4(v0[35], v36);
    (*(v38 + 56))(v36, 0, 1, v39);
    sub_10001FA38(v36, v37, &qword_100048D88, &qword_10003B588);
    if ((*(v38 + 48))(v37, 1, v39) == 1)
    {
      sub_10001FD94(v0[36], &qword_100048D88, &qword_10003B588);
      result = v69(v0[38], 1, 1, v76);
    }

    else
    {
      v46 = v0[36];
      (*(v78 + 16))(v0[38], v46 + *(v0[32] + 20), v76);
      sub_100034870(v46);
      result = v69(v0[38], 0, 1, v76);
    }

    v79 = *(v32 + 16);
    if (v79)
    {
      v47 = 0;
      v48 = v0[27];
      v75 = (v48 + 56);
      v77 = v0[33];
      v73 = (v48 + 48);
      v70 = v48;
      v49 = (v48 + 32);
      v50 = _swiftEmptyArrayStorage;
      v71 = v0[30];
      while (v47 < *(v32 + 16))
      {
        v51 = v32;
        v52 = v0[31];
        v54 = v0[25];
        v53 = v0[26];
        v55 = aBlock + *(v77 + 72) * v47;
        v56 = v52 + *(v71 + 48);
        *v52 = v47;
        sub_10003480C(v55, v56);

        sub_100038158();
        (*v75)(v54, 0, 1, v53);
        sub_10001FD94(v52, &qword_100048D80, &qword_10003B580);
        if ((*v73)(v54, 1, v53) == 1)
        {
          result = sub_10001FD94(v0[25], &qword_1000483E0, qword_100039630);
        }

        else
        {
          v58 = v0[28];
          v57 = v0[29];
          v59 = v0[26];
          v60 = *v49;
          (*v49)(v57, v0[25], v59);
          v60(v58, v57, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_100029950(0, *(v50 + 2) + 1, 1, v50);
          }

          v62 = *(v50 + 2);
          v61 = *(v50 + 3);
          if (v62 >= v61 >> 1)
          {
            v50 = sub_100029950((v61 > 1), v62 + 1, 1, v50);
          }

          v63 = v0[28];
          v64 = v0[26];
          *(v50 + 2) = v62 + 1;
          result = v60(&v50[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v62], v63, v64);
        }

        ++v47;
        v32 = v51;
        if (v79 == v47)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    v50 = _swiftEmptyArrayStorage;
LABEL_33:
    v66 = v0[37];
    v65 = v0[38];
    v67 = v0[23];

    sub_10001FD94(v66, &qword_100048D88, &qword_10003B588);
    sub_10002E8A8(v65, v67);
    aBlocka = 24;
    v41 = v50;
  }

  else
  {
    v40 = v0[23];

    v69(v40, 1, 1, v76);
    v41 = 0;
    aBlocka = 10;
  }

  v68 = v0[1];

  return v68(v41, aBlocka);
}

uint64_t sub_10003648C(void *a1, char a2)
{
  v4 = [a1 eventBody];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 intentClass];

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = sub_100038648();
  v9 = v8;

  if (v7 == 0xD000000000000013 && 0x800000010003BC60 == v9)
  {
  }

  else
  {
    v11 = sub_100038A58();

    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = [a1 eventBody];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 bundleID];

  if (v14)
  {
    v15 = sub_100038648();
    v17 = v16;

    if (v15 == 0xD000000000000013 && 0x800000010003BC80 == v17)
    {

      if ((a2 & 1) == 0)
      {
        LOBYTE(v14) = 1;
        return v14 & 1;
      }

      goto LABEL_18;
    }

    LOBYTE(v14) = sub_100038A58();

    if (v14 & 1) != 0 && (a2)
    {
LABEL_18:
      v18 = [a1 eventBody];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 interactionDirection];

        LOBYTE(v14) = v20 == 2;
        return v14 & 1;
      }

LABEL_20:
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_100036664(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_1000366BC(void *a1, uint64_t a2)
{
  v4 = [a1 state];
  if (v4 == 1)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v9 = sub_100038598();
    sub_100003680(v9, qword_100048DC8);
    v10 = a1;
    oslog = sub_100038578();
    v11 = sub_1000387A8();

    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_22;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = [v10 error];
    if (v14)
    {
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v12 + 4) = v14;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, oslog, v11, "Error reading data: %@", v12, 0xCu);
    sub_10001FD94(v13, &qword_100048190, &qword_10003B590);

    goto LABEL_21;
  }

  if (!v4)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v5 = sub_100038598();
    sub_100003680(v5, qword_100048DC8);

    v6 = sub_100038578();
    v7 = sub_1000387A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      *(v8 + 4) = *(*(a2 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v6, v7, "Data reading completed. Found %ld messages.", v8, 0xCu);
    }

    else
    {
    }

    return;
  }

  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v16 = sub_100038598();
  sub_100003680(v16, qword_100048DC8);
  oslog = sub_100038578();
  v17 = sub_1000387C8();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v17, "Data reading ends with unknown reason.", v18, 2u);
LABEL_21:
  }

LABEL_22:
}

uint64_t sub_100036A10(void *a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_100048D88, &qword_10003B588);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for SmsMessage(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  sub_100034C70(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001FD94(v6, &qword_100048D88, &qword_10003B588);
  }

  sub_100037AB4(v6, v13);
  sub_10003480C(v13, v11);
  swift_beginAccess();
  v15 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_100029BF8(0, v15[2] + 1, 1, v15);
    *(a2 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_100029BF8((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_100037AB4(v11, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18);
  *(a2 + 16) = v15;
  swift_endAccess();
  return sub_100034870(v13);
}

void sub_100036C54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100036CBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100036D54;

  return sub_1000357EC(a1);
}

uint64_t sub_100036D54(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_100036E58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100001B40(&qword_1000483E8, &unk_10003B5C0);
      v7 = *(sub_100038178() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_100038178();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_100036FF8()
{
  v1 = sub_100038178();
  v26 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v29 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v2);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 2);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      result = swift_stdlib_random();
      v11 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v12 = -v7 % v7;
        if (v12 > v31 * v7)
        {
          do
          {
            v31 = 0;
            result = swift_stdlib_random();
          }

          while (v12 > v31 * v7);
          v11 = (v31 * v7) >> 64;
        }
      }

      v13 = v9 + v11;
      if (__OFADD__(v9, v11))
      {
        break;
      }

      if (v9 != v13)
      {
        v14 = *(v6 + 2);
        if (v9 >= v14)
        {
          goto LABEL_19;
        }

        v15 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = &v6[v28];
        v17 = *(v26 + 72);
        v18 = *(v26 + 16);
        v27 = v17 * v9;
        result = v18(v30, &v6[v28 + v17 * v9], v15);
        if (v13 >= v14)
        {
          goto LABEL_20;
        }

        v19 = v17 * v13;
        v18(v29, &v16[v17 * v13], v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v15;
        if ((result & 1) == 0)
        {
          result = sub_10001DDCC(v6);
          v6 = result;
        }

        if (v9 >= *(v6 + 2))
        {
          goto LABEL_21;
        }

        v20 = &v6[v28];
        v21 = *v23;
        result = (*v23)(&v6[v28 + v27], v29, v15);
        if (v13 >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        result = v21(&v20[v19], v30, v15);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10003729C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_100038A58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_100038A58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_100038A58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100038A58();

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

uint64_t sub_100037418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = sub_100001B40(&qword_100048178, &unk_100039530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000374F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 48) = (a2 + 1);
  }

  else
  {
    v7 = sub_100001B40(&qword_100048178, &unk_100039530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000375D8(uint64_t a1)
{
  if (!qword_1000488A0)
  {
    sub_100037F08();
    v1 = sub_1000387F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000488A0);
    }
  }
}

uint64_t sub_100037644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100001B40(&qword_100048178, &unk_100039530);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100037720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_100001B40(&qword_100048178, &unk_100039530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100037810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100001B40(&qword_100048178, &unk_100039530);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000378EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100001B40(&qword_100048178, &unk_100039530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000379C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000375D8(319);
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100037A3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100037B18(uint64_t a1, uint64_t a2)
{
  isa = sub_100037E88().super.isa;
  v8 = 0;
  v4 = [v2 initForReadingFromData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_100037DF8();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100037BD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100037C2C()
{
  result = qword_100048D90;
  if (!qword_100048D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100048D90);
  }

  return result;
}

uint64_t sub_100037CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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