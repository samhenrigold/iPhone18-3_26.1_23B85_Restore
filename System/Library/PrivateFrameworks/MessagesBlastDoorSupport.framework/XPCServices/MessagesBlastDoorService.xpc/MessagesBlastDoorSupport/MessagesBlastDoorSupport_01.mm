uint64_t sub_100028738(uint64_t a1, uint64_t a2)
{
  if (qword_1000FC000 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_1000FC610;
  if (*(off_1000FC610 + 2))
  {
    v3 = sub_100099FF8(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + v3);
    }
  }

  else
  {
  }

  return 86;
}

uint64_t getEnumTagSinglePayload for MetadataKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100028938()
{
  result = qword_1000FC620;
  if (!qword_1000FC620)
  {
    sub_10001308C(&qword_1000FC628, qword_1000CA0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC620);
  }

  return result;
}

unint64_t sub_1000289A0()
{
  result = qword_1000FC630;
  if (!qword_1000FC630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC630);
  }

  return result;
}

uint64_t sub_1000289F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000C5974();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  result = type metadata accessor for MessageDictionary(0);
  v7 = (v1 + *(result + 136));
  v8 = v7[1];
  v9 = 0uLL;
  if (v8 >> 60 == 15)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  else
  {
    v20 = *v7;
    sub_1000C1464();
    swift_allocObject();
    sub_100018C68(v20, v8);
    sub_1000C1454();
    sub_1000294BC();
    v25 = v8;
    sub_1000C1444();
    *&v35[48] = v30;
    *&v35[64] = v31;
    v36 = v32;
    v37 = v33;
    v34 = v26;
    *v35 = v27;
    *&v35[16] = v28;
    *&v35[32] = v29;
    v10 = v26;
    v23 = *&v35[24];
    v24 = *&v35[8];
    v21 = *&v35[56];
    v22 = *&v35[40];
    v11 = v27;
    v12 = *(&v31 + 1);
    v14 = v32;

    v13 = sub_100043604();

    sub_100018CBC(v20, v25);
    result = sub_100029510(&v34);
    v19 = v21;
    v18 = v22;
    v17 = v23;
    v9 = v24;
    v16 = BYTE8(v26);
    v15 = BYTE1(v32) << 8;
  }

  *a1 = v10;
  *(a1 + 8) = v16;
  *(a1 + 16) = v11;
  *(a1 + 24) = v9;
  *(a1 + 40) = v17;
  *(a1 + 56) = v18;
  *(a1 + 72) = v19;
  *(a1 + 88) = v12;
  *(a1 + 96) = v15 | v14;
  *(a1 + 104) = v13;
  return result;
}

uint64_t sub_100028FA0@<X0>(uint64_t a1@<X8>)
{
  sub_1000289F4(v6);
  if (v7)
  {

    sub_1000C21B4();
    sub_100018F90(v6, &qword_1000FC638, &unk_1000CA160);
    v4 = sub_1000C21C4();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    v2 = sub_1000C21C4();
    v3 = *(*(v2 - 8) + 56);

    return v3(a1, 1, 1, v2);
  }
}

uint64_t sub_100029204@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C4E44();
  __chkstk_darwin(v2 - 8);
  sub_1000289F4(v7);
  if (v7[13])
  {
    sub_1000C4E34();

    sub_1000C4E54();
    sub_100018F90(v7, &qword_1000FC638, &unk_1000CA160);
    v5 = sub_1000C4E64();
    return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  }

  else
  {
    v3 = sub_1000C4E64();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }
}

unint64_t sub_1000294BC()
{
  result = qword_1000FC640;
  if (!qword_1000FC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC640);
  }

  return result;
}

__n128 sub_100029564(uint64_t a1, __int128 *a2)
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

uint64_t sub_100029588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000295D0(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

unint64_t sub_10002964C(uint64_t a1)
{
  result = sub_100012A54();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000296BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_100029844(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v2)
  {
    sub_10002988C();
    swift_allocError();
    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_100029844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002988C()
{
  result = qword_1000FC650;
  if (!qword_1000FC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC650);
  }

  return result;
}

__n128 sub_1000298F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100029914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 95))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100029970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000299F4(char a1)
{
  result = 26979;
  switch(a1)
  {
    case 1:
      result = 29539;
      break;
    case 2:
      result = 1751215219;
      break;
    case 3:
      result = 1935764595;
      break;
    case 4:
      result = 7566700;
      break;
    case 5:
      result = 7171187;
      break;
    case 6:
      result = 25699;
      break;
    case 7:
      result = 26728;
      break;
    case 8:
      result = 29286;
      break;
    case 9:
      result = 28006;
      break;
    case 10:
      result = 25456;
      break;
    case 11:
      result = 1836081763;
      break;
    case 12:
      result = 1768055395;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100029AE8(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FC668, &qword_1000CA390);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001530C(a1, a1[3]);
  sub_10002AC6C();
  sub_1000C5D04();
  v8[15] = 0;
  sub_1000C5AF4();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000C5B64();
    v8[12] = 2;
    sub_1000C5AF4();
    v8[11] = 3;
    sub_1000C5AF4();
    v8[10] = 4;
    sub_1000C5AF4();
    v8[9] = 5;
    sub_1000C5AF4();
    v8[8] = 6;
    sub_1000C5B04();
    v8[7] = 7;
    sub_1000C5B04();
    v8[6] = 8;
    sub_1000C5B04();
    v8[5] = 9;
    sub_1000C5B04();
    v8[4] = 10;
    sub_1000C5B04();
    v8[3] = 11;
    sub_1000C5B04();
    v8[2] = 12;
    sub_1000C5B04();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100029DE8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000299F4(*a1);
  v5 = v4;
  if (v3 == sub_1000299F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_100029E70()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000299F4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100029ED4(uint64_t a1)
{
  sub_1000299F4(*v1);
  sub_1000C52C4();
}

Swift::Int sub_100029F28()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000299F4(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100029F88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002A118(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100029FB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000299F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10002A000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002A034(uint64_t a1)
{
  v2 = sub_10002AC6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002A070(uint64_t a1)
{
  v2 = sub_10002AC6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10002A0AC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10002A164(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 79) = *(v8 + 15);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_10002A118(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F11A0;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002A164@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC658, &qword_1000CA388);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v76 = 1;
  v9 = a1[3];
  v40 = a1;
  sub_10001530C(a1, v9);
  sub_10002AC6C();
  sub_1000C5CF4();
  if (v2)
  {
    v47 = v2;
    v39 = 0;
    v38 = 0;
    v43 = 0;
    v42 = 0;
    v44 = 2;
    v45 = 2;
    v46 = 2;
    v41 = 2;
    sub_100015F68(v40);
    v53 = 0uLL;
    v54 = 0;
    v55 = v76;
    v56 = v73;
    v57 = v74;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = v42;
    v63 = v43;
    v64 = v38;
    v65 = v39;
    v66 = 2;
    v67 = 2;
    v68 = v41;
    v69 = v46;
    v70 = v45;
    v71 = v44;
    v72 = 2;
    return sub_10002ACC0(&v53);
  }

  else
  {
    LOBYTE(v53) = 0;
    *&v37 = sub_1000C5A04();
    *(&v37 + 1) = v11;
    LOBYTE(v53) = 1;
    v36 = sub_1000C5A74();
    v76 = BYTE1(v36) & 1;
    LOBYTE(v53) = 2;
    v34 = sub_1000C5A04();
    v35 = v12;
    LOBYTE(v53) = 3;
    v32 = sub_1000C5A04();
    v33 = v13;
    LOBYTE(v53) = 4;
    v42 = sub_1000C5A04();
    v43 = v14;
    LOBYTE(v53) = 5;
    v38 = sub_1000C5A04();
    v39 = v15;
    LOBYTE(v53) = 6;
    v31 = sub_1000C5A14();
    LOBYTE(v53) = 7;
    v30 = sub_1000C5A14();
    LOBYTE(v53) = 8;
    v16 = sub_1000C5A14();
    v47 = 0;
    v41 = v16;
    LOBYTE(v53) = 9;
    v46 = sub_1000C5A14();
    v47 = 0;
    LOBYTE(v53) = 10;
    v45 = sub_1000C5A14();
    v47 = 0;
    LOBYTE(v53) = 11;
    v44 = sub_1000C5A14();
    v47 = 0;
    v75 = 12;
    v17 = sub_1000C5A14();
    v47 = 0;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v48 = v37;
    LOBYTE(v49) = v36;
    v29 = v76;
    BYTE1(v49) = v76;
    v19 = v34;
    v20 = v35;
    *(&v49 + 1) = v34;
    *&v50 = v35;
    v21 = v32;
    v22 = v33;
    *(&v50 + 1) = v32;
    *&v51 = v33;
    *(&v51 + 1) = v42;
    *v52 = v43;
    v23 = v38;
    v24 = v39;
    *&v52[8] = v38;
    *&v52[16] = v39;
    v25 = v31;
    v52[24] = v31;
    v52[25] = v30;
    v52[26] = v41;
    v52[27] = v46;
    v52[28] = v45;
    v52[29] = v44;
    v52[30] = v18;
    sub_10002ACF0(&v48, &v53);
    sub_100015F68(v40);
    v53 = v37;
    v54 = v36;
    v55 = v29;
    v58 = v19;
    v59 = v20;
    v60 = v21;
    v61 = v22;
    v62 = v42;
    v63 = v43;
    v64 = v23;
    v65 = v24;
    v66 = v25;
    v67 = v30;
    v68 = v41;
    v69 = v46;
    v70 = v45;
    v71 = v44;
    v72 = v18;
    result = sub_10002ACC0(&v53);
    v26 = v51;
    a2[2] = v50;
    a2[3] = v26;
    a2[4] = *v52;
    *(a2 + 79) = *&v52[15];
    v27 = v49;
    *a2 = v48;
    a2[1] = v27;
  }

  return result;
}

unint64_t sub_10002AC6C()
{
  result = qword_1000FC660;
  if (!qword_1000FC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelayReachabilityContextDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RelayReachabilityContextDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002AE7C()
{
  result = qword_1000FC670;
  if (!qword_1000FC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC670);
  }

  return result;
}

unint64_t sub_10002AED4()
{
  result = qword_1000FC678;
  if (!qword_1000FC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC678);
  }

  return result;
}

unint64_t sub_10002AF2C()
{
  result = qword_1000FC680;
  if (!qword_1000FC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC680);
  }

  return result;
}

uint64_t TranscriptBackgroundCommandDictionary.encode(to:)(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FC688, &qword_1000CA4F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001530C(a1, a1[3]);
  sub_10002B264();
  sub_1000C5D04();
  v8[15] = 0;
  sub_1000C5B74();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000C5AF4();
    v8[13] = 2;
    sub_1000C5AF4();
    v8[12] = 3;
    sub_1000C5AF4();
    v8[11] = 4;
    sub_1000C5AF4();
    v8[10] = 5;
    sub_1000C5AF4();
    v8[9] = 6;
    sub_1000C5B34();
    v8[8] = 7;
    sub_1000C5B34();
    v8[7] = 8;
    sub_1000C5B34();
    v8[6] = 9;
    sub_1000C5AF4();
    v8[5] = 10;
    sub_1000C5B04();
    v8[4] = 11;
    sub_1000C5B24();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10002B264()
{
  result = qword_1000FC690;
  if (!qword_1000FC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC690);
  }

  return result;
}

double TranscriptBackgroundCommandDictionary.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002B760(a2, v10);
  if (!v2)
  {
    v5 = v18;
    *(a1 + 128) = v17;
    *(a1 + 144) = v5;
    *(a1 + 160) = v19;
    *(a1 + 176) = v20;
    v6 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v6;
    v7 = v16;
    *(a1 + 96) = v15;
    *(a1 + 112) = v7;
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v9;
  }

  return result;
}

uint64_t sub_10002B360(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 6580579;
    v7 = 0x72626162617274;
    if (a1 != 10)
    {
      v7 = 28786;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x73666162617274;
    v9 = 0x76706162617274;
    if (a1 != 7)
    {
      v9 = 0x6162617274;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684628084;
    v2 = 0x736162617274;
    v3 = 0x726162617274;
    if (a1 != 4)
    {
      v3 = 0x6B6162617274;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x64696162617274;
    if (a1 != 1)
    {
      v4 = 0x64696F62617274;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10002B4B0()
{
  v0 = TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000C5C04();
  }

  return v5 & 1;
}

Swift::Int sub_10002B538()
{
  sub_1000C5CB4();
  TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10002B59C(uint64_t a1)
{
  TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter();
  sub_1000C52C4();
}

Swift::Int sub_10002B5F0()
{
  sub_1000C5CB4();
  TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_10002B650@<X0>(Swift::String *a1@<X0>, MessagesBlastDoorService::TranscriptBackgroundCommandDictionary::CodingKeys_optional *a2@<X8>)
{
  result = _s24MessagesBlastDoorService37TranscriptBackgroundCommandDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10002B680@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptBackgroundCommandDictionary.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10002B6B4@<X0>(uint64_t a1@<X0>, MessagesBlastDoorService::TranscriptBackgroundCommandDictionary::CodingKeys_optional *a2@<X8>, void *a3@<X1>)
{
  result = _s24MessagesBlastDoorService37TranscriptBackgroundCommandDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_10002B6E8(uint64_t a1)
{
  v2 = sub_10002B264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B724(uint64_t a1)
{
  v2 = sub_10002B264();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = sub_1000124CC(&qword_1000FC6B0, &qword_1000CA718);
  v5 = *(v104 - 8);
  __chkstk_darwin(v104);
  v7 = &v34 - v6;
  sub_10001530C(a1, a1[3]);
  sub_10002B264();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v8 = v5;
  LOBYTE(v67) = 0;
  v9 = sub_1000C5A84();
  v103 = v10 & 1;
  LOBYTE(v67) = 1;
  v52 = sub_1000C5A04();
  v54 = v11;
  LOBYTE(v67) = 2;
  v12 = sub_1000C5A04();
  v53 = v13;
  v48 = v12;
  LOBYTE(v67) = 3;
  v47 = sub_1000C5A04();
  v51 = v14;
  LOBYTE(v67) = 4;
  v46 = sub_1000C5A04();
  v50 = v15;
  LOBYTE(v67) = 5;
  v45 = sub_1000C5A04();
  v49 = v16;
  LOBYTE(v67) = 6;
  v43 = sub_1000C5A44();
  v44 = 0;
  v102 = v17 & 1;
  LOBYTE(v67) = 7;
  v42 = sub_1000C5A44();
  v100 = v18 & 1;
  LOBYTE(v67) = 8;
  v41 = sub_1000C5A44();
  v98 = v19 & 1;
  LOBYTE(v67) = 9;
  v20 = sub_1000C5A04();
  v40 = v21;
  v22 = v20;
  LOBYTE(v67) = 10;
  v39 = sub_1000C5A14();
  v94 = 11;
  v44 = sub_1000C5A34();
  v24 = v23;
  (*(v8 + 8))(v7, v104);
  v95 = v24 & 1;
  *&v55 = v9;
  v36 = v103;
  BYTE8(v55) = v103;
  v25 = v52;
  v26 = v53;
  *&v56 = v52;
  *(&v56 + 1) = v54;
  *&v57 = v48;
  *(&v57 + 1) = v53;
  v27 = v51;
  *&v58 = v47;
  *(&v58 + 1) = v51;
  *&v59 = v46;
  *(&v59 + 1) = v50;
  *&v60 = v45;
  *(&v60 + 1) = v49;
  *&v61 = v43;
  v35 = v102;
  BYTE8(v61) = v102;
  *&v62 = v42;
  v37 = v100;
  BYTE8(v62) = v100;
  *&v63 = v41;
  v38 = v98;
  BYTE8(v63) = v98;
  *&v64 = v22;
  *(&v64 + 1) = v40;
  LOBYTE(v65) = v39;
  *(&v65 + 1) = v44;
  LODWORD(v104) = v95;
  v66 = v95;
  sub_10002C2B4(&v55, &v67);
  sub_100015F68(a1);
  v67 = v9;
  v68 = v36;
  v69 = v25;
  v70 = v54;
  v71 = v48;
  v72 = v26;
  v73 = v47;
  v74 = v27;
  v75 = v46;
  v76 = v50;
  v77 = v45;
  v78 = v49;
  v79 = v43;
  v80 = v35;
  *v81 = *v101;
  *&v81[3] = *&v101[3];
  v82 = v42;
  v83 = v37;
  *&v84[3] = *&v99[3];
  *v84 = *v99;
  v85 = v41;
  v86 = v38;
  *v87 = *v97;
  *&v87[3] = *&v97[3];
  v88 = v22;
  v89 = v40;
  v90 = v39;
  *&v91[3] = *&v96[3];
  *v91 = *v96;
  v92 = v44;
  v93 = v104;
  result = sub_100015058(&v67);
  v29 = v64;
  *(a2 + 128) = v63;
  *(a2 + 144) = v29;
  *(a2 + 160) = v65;
  *(a2 + 176) = v66;
  v30 = v60;
  *(a2 + 64) = v59;
  *(a2 + 80) = v30;
  v31 = v62;
  *(a2 + 96) = v61;
  *(a2 + 112) = v31;
  v32 = v56;
  *a2 = v55;
  *(a2 + 16) = v32;
  v33 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v33;
  return result;
}

unint64_t _s24MessagesBlastDoorService37TranscriptBackgroundCommandDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F12F8;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10002BF34()
{
  result = qword_1000FC698;
  if (!qword_1000FC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC698);
  }

  return result;
}

unint64_t sub_10002BF8C()
{
  result = qword_1000FC6A0;
  if (!qword_1000FC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6A0);
  }

  return result;
}

unint64_t sub_10002BFE4()
{
  result = qword_1000FC6A8;
  if (!qword_1000FC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6A8);
  }

  return result;
}

__n128 sub_10002C038(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10002C074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
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

uint64_t sub_10002C0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptBackgroundCommandDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptBackgroundCommandDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002C300(uint64_t a1)
{
  result = sub_1000128B0();
  *(a1 + 8) = result;
  return result;
}

void sub_10002C370(uint64_t a1@<X1>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v105 = a2;
  v4 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v4 - 8);
  v94 = &v88 - v5;
  v6 = sub_1000C5974();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = __chkstk_darwin(v6);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v97 = &v88 - v10;
  __chkstk_darwin(v9);
  v96 = &v88 - v11;
  v12 = sub_1000C4ED4();
  v13 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v95 = &v88 - v14;
  v15 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v88 - v19;
  v21 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v21 - 8);
  v101 = &v88 - v22;
  v23 = sub_1000C1974();
  *&v100 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000C4FC4();
  v102 = *(v26 - 8);
  v103 = v26;
  __chkstk_darwin(v26);
  v104 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000C1984();
  if (v29 >> 60 == 15)
  {
    goto LABEL_16;
  }

  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_15;
    }

    v32 = *(v28 + 16);
    v31 = *(v28 + 24);
    v33 = __OFSUB__(v31, v32);
    v34 = v31 - v32;
    if (!v33)
    {
      if (v34 >= 1)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v30)
  {
    if (!__OFSUB__(HIDWORD(v28), v28))
    {
      if (HIDWORD(v28) - v28 >= 1)
      {
        goto LABEL_9;
      }

LABEL_15:
      sub_100018CBC(v28, v29);
LABEL_16:
      sub_10002D3E8(a1, v18);
      sub_1000C1994();
      if (v2)
      {
        sub_100018F90(v18, &qword_1000FC3B8, &qword_1000C9788);
      }

      else
      {
        sub_1000C2174();
      }

      return;
    }

    goto LABEL_32;
  }

  if (!BYTE6(v29))
  {
    goto LABEL_15;
  }

LABEL_9:
  v91 = v28;
  v92 = v29;
  isa = sub_1000C1544().super.isa;
  v36 = [(objc_class *)isa _imOptionallyDecompressData];

  v37 = sub_1000C1564();
  v39 = v38;

  v40 = v39 >> 62;
  v90 = v39;
  v89 = v37;
  if ((v39 >> 62) > 1)
  {
    if (v40 != 2)
    {
      goto LABEL_28;
    }

    v42 = *(v37 + 16);
    v41 = *(v37 + 24);
    v33 = __OFSUB__(v41, v42);
    v43 = v41 - v42;
    if (!v33)
    {
      if (v43 > 0)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v40)
  {
    if (!__OFSUB__(HIDWORD(v37), v37))
    {
      if (HIDWORD(v37) - v37 > 0)
      {
        goto LABEL_22;
      }

LABEL_28:
      v70 = v100;
      (*(v100 + 104))(v25, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v23);
      sub_1000C1964();
      (*(v70 + 8))(v25, v23);
      v71 = v104;
      sub_1000C4FB4();
      sub_100014F70();
      v72 = sub_1000C5704();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1000C94D0;
      v75 = v101;
      v74 = v102;
      v105 = *(v102 + 16);
      v76 = v103;
      v105(v101, v71, v103);
      (*(v74 + 56))(v75, 0, 1, v76);
      v77 = sub_1000C4A84();
      v79 = v78;
      sub_100018F90(v75, &qword_1000FC438, &unk_1000C9DC0);
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_100014FBC();
      *(v73 + 32) = v77;
      *(v73 + 40) = v79;
      v80 = sub_1000C5554();
      sub_1000C1A44("Read receipt unpacking explosion: %{public}@", 44, 2, &_mh_execute_header, v72, v80, v73);

      sub_10002D458(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v105(v81, v71, v76);
      swift_willThrow();
      sub_100018CD0(v89, v90);
      sub_100018CBC(v91, v92);
      (*(v74 + 8))(v71, v76);
      return;
    }

LABEL_34:
    __break(1u);
    return;
  }

  if (!BYTE6(v39))
  {
    goto LABEL_28;
  }

LABEL_22:
  sub_1000C1464();
  swift_allocObject();
  v44 = sub_1000C1454();
  sub_10002D4A0();
  v88 = v44;
  sub_1000C1444();
  if (v2)
  {
    v106 = v2;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v45 = v96;
    v46 = v99;
    if (swift_dynamicCast())
    {

      v47 = v97;
      v48 = v98;
      (*(v98 + 32))(v97, v45, v46);
      v49 = v100;
      (*(v100 + 104))(v25, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v23);
      sub_1000C1964();
      (*(v49 + 8))(v25, v23);
      v50 = *(v48 + 16);
      v50(v93, v47, v46);
      sub_1000C4FA4();
      sub_100014F70();
      v51 = sub_1000C5704();
      v105 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v52 = swift_allocObject();
      v100 = xmmword_1000C94D0;
      *(v52 + 16) = xmmword_1000C94D0;
      v53 = v94;
      v50(v94, v47, v46);
      (*(v98 + 56))(v53, 0, 1, v46);
      v54 = sub_1000C4A84();
      v56 = v55;
      sub_100018F90(v53, &qword_1000FC430, &unk_1000C9B00);
      *(v52 + 56) = &type metadata for String;
      v57 = sub_100014FBC();
      *(v52 + 64) = v57;
      *(v52 + 32) = v54;
      *(v52 + 40) = v56;
      v58 = sub_1000C5554();
      sub_1000C1A44("ReadReceipt unpacking error: %{public}@", 39, 2, &_mh_execute_header, v51, v58, v52);

      v59 = sub_1000C5704();
      v60 = swift_allocObject();
      *(v60 + 16) = v100;
      v62 = v101;
      v61 = v102;
      v105 = *(v102 + 16);
      v63 = v103;
      v105(v101, v104, v103);
      (*(v61 + 56))(v62, 0, 1, v63);
      v64 = sub_1000C4A84();
      v66 = v65;
      sub_100018F90(v62, &qword_1000FC438, &unk_1000C9DC0);
      *(v60 + 56) = &type metadata for String;
      *(v60 + 64) = v57;
      *(v60 + 32) = v64;
      *(v60 + 40) = v66;
      v67 = sub_1000C5554();
      sub_1000C1A44("ReadReceipt unpacking explosion: %{public}@", 43, 2, &_mh_execute_header, v59, v67, v60);

      sub_10002D458(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v68 = v104;
      v105(v69, v104, v63);
      swift_willThrow();

      sub_100018CD0(v89, v90);
      sub_100018CBC(v91, v92);
      (*(v61 + 8))(v68, v63);
      (*(v98 + 8))(v97, v99);
    }

    else
    {

      sub_100014F70();
      v82 = sub_1000C5704();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1000C94D0;
      v106 = v2;
      v84 = sub_1000C4A84();
      v86 = v85;
      *(v83 + 56) = &type metadata for String;
      *(v83 + 64) = sub_100014FBC();
      *(v83 + 32) = v84;
      *(v83 + 40) = v86;
      v87 = sub_1000C5554();
      sub_1000C1A44("ReadReceipt unpacking unknown error: %{public}@", 47, 2, &_mh_execute_header, v82, v87, v83);

      swift_getErrorValue();
      swift_getDynamicType();
      v106 = 0;
      v107 = 0xE000000000000000;
      sub_1000C5944(22);

      v106 = 0xD000000000000014;
      v107 = 0x80000001000D5330;
      v110._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v110);

      sub_10002D458(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v91, v92);
      sub_100018CD0(v89, v90);
    }
  }

  else
  {
    v103 = v108;
    v104 = v107;
    v102 = v109;
    sub_10002D3E8(a1, v20);
    sub_1000C1994();
    sub_1000C2174();
    sub_100018CBC(v91, v92);
    sub_100018CD0(v89, v90);
  }
}

uint64_t sub_10002D264@<X0>(uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X8>)
{
  v7 = sub_1000C19B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10002D458(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v4)
  {
    sub_10002C370(a3, a4);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_10002D3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002D4A0()
{
  result = qword_1000FC6C0;
  if (!qword_1000FC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6C0);
  }

  return result;
}

__n128 sub_10002D4F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10002D520(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 119))
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

uint64_t sub_10002D568(uint64_t result, int a2, int a3)
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
    *(result + 118) = 0;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 119) = 1;
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

    *(result + 119) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D5E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC6E0, &qword_1000CA868);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_10001530C(a1, a1[3]);
  sub_10002DF18();
  sub_1000C5D04();
  *&v17 = *v3;
  LOBYTE(v14[0]) = 0;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5BB4();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1000C5B84();
    v9 = *(v3 + 72);
    v22[2] = *(v3 + 56);
    v22[3] = v9;
    v23[0] = *(v3 + 88);
    *(v23 + 15) = *(v3 + 103);
    v10 = *(v3 + 40);
    v22[0] = *(v3 + 24);
    v22[1] = v10;
    v11 = *(v3 + 72);
    v19 = *(v3 + 56);
    v20 = v11;
    v21[0] = *(v3 + 88);
    *(v21 + 15) = *(v3 + 103);
    v12 = *(v3 + 40);
    v17 = *(v3 + 24);
    v18 = v12;
    v16 = 2;
    sub_10002ACF0(v22, v14);
    sub_10002E028();
    sub_1000C5BB4();
    v14[2] = v19;
    v14[3] = v20;
    *v15 = v21[0];
    *&v15[15] = *(v21 + 15);
    v14[0] = v17;
    v14[1] = v18;
    sub_10002ACC0(v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10002D880(char *a1, char *a2)
{
  if (qword_1000CA9C0[*a1] == qword_1000CA9C0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000C5C04();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002D8E8()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10002D944(uint64_t a1)
{
  sub_1000C52C4();
}

Swift::Int sub_10002D984()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_10002D9DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002DB6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10002DA40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002DB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002DA74(uint64_t a1)
{
  v2 = sub_10002DF18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002DAB0(uint64_t a1)
{
  v2 = sub_10002DF18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10002DAEC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10002DBB8(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = *v13;
    *(a1 + 111) = *&v13[15];
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_10002DB6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1438;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002DBB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_1000124CC(&qword_1000FC6C8, &qword_1000CA858);
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v19 - v6;
  sub_10001530C(a1, a1[3]);
  sub_10002DF18();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v8 = v5;
  v22 = a2;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  LOBYTE(v23) = 0;
  sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v9 = v42;
  sub_1000C5AC4();
  v10 = v25[0];
  LOBYTE(v25[0]) = 1;
  v20 = sub_1000C5A94();
  v21 = v11;
  v31 = 2;
  sub_10002DF6C();
  sub_1000C5AC4();
  (*(v8 + 8))(v7, v9);
  v39 = v34;
  v40 = v35;
  v41[0] = v36[0];
  *(v41 + 15) = *(v36 + 15);
  v37 = v32;
  v38 = v33;
  v13 = v20;
  v12 = v21;
  *&v23 = v10;
  *(&v23 + 1) = v20;
  *v24 = v21;
  *&v24[8] = v32;
  *&v24[24] = v33;
  *&v24[40] = v34;
  *&v24[87] = *(v36 + 15);
  *&v24[72] = v36[0];
  *&v24[56] = v35;
  sub_10002DFC0(&v23, v25);
  sub_100015F68(a1);
  v28 = v39;
  v29 = v40;
  *v30 = v41[0];
  *&v30[15] = *(v41 + 15);
  v26 = v37;
  v25[0] = v10;
  v25[1] = v13;
  v25[2] = v12;
  v27 = v38;
  result = sub_10002DFF8(v25);
  v15 = *&v24[64];
  v16 = v22;
  *(v22 + 64) = *&v24[48];
  *(v16 + 80) = v15;
  *(v16 + 96) = *&v24[80];
  *(v16 + 111) = *&v24[95];
  v17 = *v24;
  *v16 = v23;
  *(v16 + 16) = v17;
  v18 = *&v24[32];
  *(v16 + 32) = *&v24[16];
  *(v16 + 48) = v18;
  return result;
}

unint64_t sub_10002DF18()
{
  result = qword_1000FC6D0;
  if (!qword_1000FC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6D0);
  }

  return result;
}

unint64_t sub_10002DF6C()
{
  result = qword_1000FC6D8;
  if (!qword_1000FC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6D8);
  }

  return result;
}

unint64_t sub_10002E028()
{
  result = qword_1000FC6E8;
  if (!qword_1000FC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RelayReachabilityRequestDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RelayReachabilityRequestDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002E1D0()
{
  result = qword_1000FC6F0;
  if (!qword_1000FC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6F0);
  }

  return result;
}

unint64_t sub_10002E228()
{
  result = qword_1000FC6F8;
  if (!qword_1000FC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC6F8);
  }

  return result;
}

unint64_t sub_10002E280()
{
  result = qword_1000FC700;
  if (!qword_1000FC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC700);
  }

  return result;
}

uint64_t Message.init(messageDictionary:validatorContext:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[6] = a3;
  v6 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  v10 = sub_1000C3244();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = type metadata accessor for MessageDictionary(0);
  v20[4] = &off_1000F5D48;
  v14 = sub_10002E5DC(v20);
  sub_10002E640(a1, v14);
  sub_1000B0354(v20, v13);
  if (v3)
  {
    sub_100018F90(a2, &qword_1000FC3B8, &qword_1000C9788);
    return sub_10002E6A4(a1);
  }

  else
  {
    v18 = v11;
    v19 = v10;
    v16 = _swiftEmptyArrayStorage;
    if (*a1)
    {
      v16 = *a1;
    }

    v17[2] = v16;
    sub_10002D3E8(a2, v9);

    v17[1] = sub_1000C3204();
    v17[0] = sub_1000C3214();
    sub_1000C3234();
    sub_1000A89BC();
    sub_1000C4DF4();
    sub_100018F90(a2, &qword_1000FC3B8, &qword_1000C9788);
    sub_10002E6A4(a1);
    return (*(v18 + 8))(v13, v19);
  }
}

uint64_t *sub_10002E5DC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002E640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageDictionary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E6A4(uint64_t a1)
{
  v2 = type metadata accessor for MessageDictionary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for DoubleValue(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DoubleValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DoubleValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

void *sub_10002E770@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10002E7A4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void *sub_10002E7A4(void *a1)
{
  v3 = sub_10001530C(a1, a1[3]);
  sub_1000C5CE4();
  if (v1)
  {
    sub_100015F68(a1);
  }

  else
  {
    sub_10001530C(v8, v8[3]);
    v4 = sub_1000C5C14();
    v9 = 0;
    v6 = sub_10009B378(v4, v5, &v9);

    if (v6)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0;
    }

    sub_100015F68(v8);
    sub_100015F68(a1);
  }

  return v3;
}

uint64_t sub_10002E9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64[4] = a1;
  v64[3] = a2;
  v2 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v2 - 8);
  v74 = v64 - v3;
  v4 = sub_1000C4FC4();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v77 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C31B4();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C3194();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v65 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C2E14();
  __chkstk_darwin(v10 - 8);
  v64[2] = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C31F4();
  v73 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v64[1] = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v71 = v64 - v17;
  __chkstk_darwin(v16);
  v19 = v64 - v18;
  v20 = sub_1000C4EB4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v64 - v25;
  sub_1000C1DC4();
  sub_1000C1DB4();
  v79 = v26;
  v80 = v21;
  (*(v21 + 16))(v24, v26, v20);
  sub_1000C5014();
  swift_allocObject();
  v27 = v78;
  sub_1000C5004();
  if (v27)
  {
    v84 = v27;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v28 = swift_dynamicCast();
    v72 = v20;
    if (v28)
    {

      v29 = *(v73 + 32);
      v78 = v12;
      v29(v71, v19, v12);
      v30 = v65;
      sub_1000C31D4();
      v31 = sub_1000C3184();
      v33 = v32;
      (*(v66 + 8))(v30, v67);
      v82 = v31;
      v83 = v33;
      v85._countAndFlagsBits = 8250;
      v85._object = 0xE200000000000000;
      sub_1000C52E4(v85);
      v34 = v68;
      sub_1000C31C4();
      v35 = sub_1000C31A4();
      v37 = v36;
      (*(v69 + 8))(v34, v70);
      v86._countAndFlagsBits = v35;
      v86._object = v37;
      sub_1000C52E4(v86);

      if (sub_1000C31E4())
      {
        v81._countAndFlagsBits = 0;
        v81._object = 0xE000000000000000;
        sub_1000C5944(16);

        strcpy(&v81, ". Extra Info: ");
        HIBYTE(v81._object) = -18;
        v38 = sub_1000C51A4();
        v40 = v39;

        v87._countAndFlagsBits = v38;
        v87._object = v40;
        sub_1000C52E4(v87);

        sub_1000C52E4(v81);
      }

      v41 = v77;
      sub_1000C4FB4();
      sub_100014F70();
      v42 = sub_1000C56E4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1000C94D0;
      v44 = v74;
      v45 = v75;
      v70 = *(v75 + 16);
      v46 = v76;
      v70(v74, v41, v76);
      (*(v45 + 56))(v44, 0, 1, v46);
      v47 = sub_1000C4A84();
      v49 = v48;
      sub_10002FA20(v44);
      *(v43 + 56) = &type metadata for String;
      *(v43 + 64) = sub_100014FBC();
      *(v43 + 32) = v47;
      *(v43 + 40) = v49;
      v50 = sub_1000C5554();
      sub_1000C1A44("LargeImage explosion: %{public}@", 32, 2, &_mh_execute_header, v42, v50, v43);

      sub_10002FA88(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v70(v51, v41, v46);
      swift_willThrow();
      (*(v45 + 8))(v41, v46);
      (*(v73 + 8))(v71, v78);
      (*(v80 + 8))(v79, v72);
    }

    else
    {

      v53 = v77;
      sub_1000C4FB4();
      sub_100014F70();
      v73 = sub_1000C56E4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1000C94D0;
      v55 = v74;
      v56 = v75;
      v78 = *(v75 + 16);
      v57 = v76;
      v78(v74, v53, v76);
      (*(v56 + 56))(v55, 0, 1, v57);
      v58 = sub_1000C4A84();
      v60 = v59;
      sub_10002FA20(v55);
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100014FBC();
      *(v54 + 32) = v58;
      *(v54 + 40) = v60;
      v61 = sub_1000C5554();
      v62 = v73;
      sub_1000C1A44("LargeImage explosion: %{public}@", 32, 2, &_mh_execute_header, v73, v61, v54);

      sub_10002FA88(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v78(v63, v53, v57);
      swift_willThrow();

      (*(v56 + 8))(v53, v57);
      return (*(v80 + 8))(v79, v72);
    }
  }

  else
  {
    v78 = v12;

    sub_1000C4FE4();

    sub_1000C1DD4();
    sub_1000C1DA4();
    return (*(v80 + 8))(v79, v20);
  }
}

uint64_t sub_10002FA20(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10002FAD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10002FAEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10002FB34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002FBA0()
{
  result = qword_1000FC710;
  if (!qword_1000FC710)
  {
    sub_1000C40A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC710);
  }

  return result;
}

Swift::Int sub_10002FC10()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C5CC4(v1);
  return sub_1000C5CD4();
}

Swift::Int sub_10002FC84()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C5CC4(v1);
  return sub_1000C5CD4();
}

uint64_t sub_10002FCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = sub_1000124CC(&qword_1000FC718, &qword_1000CAB38);
  __chkstk_darwin(v5 - 8);
  v7 = &v67 - v6;
  v8 = sub_1000C13C4();
  v80 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - v12;
  v14 = sub_1000C14E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v87;
  v19 = sub_100030590(a1, a2);
  v20 = v18;
  if (v18)
  {
    sub_100030780();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  v23 = v19;
  v83 = v8;
  v84 = v17;
  v77 = v14;
  v75 = v7;
  v79 = v10;
  if (v19 >> 62)
  {
LABEL_51:
    v24 = sub_1000C59A4();
    v25 = v77;
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_52:

    sub_100030780();
    swift_allocError();
    *v66 = 1;
    return swift_willThrow();
  }

  v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v77;
  if (!v24)
  {
    goto LABEL_52;
  }

LABEL_5:
  v26 = 0;
  v76 = v23 & 0xFFFFFFFFFFFFFF8;
  v86 = (v15 + 48);
  v87 = v23 & 0xC000000000000001;
  v81 = v13;
  v82 = (v15 + 32);
  v73 = v20;
  v74 = (v80 + 6);
  v71 = v80 + 1;
  v72 = (v80 + 4);
  v80 = (v15 + 8);
  v85 = v24;
  while (1)
  {
    if (v87)
    {
      v27 = sub_1000C5954();
    }

    else
    {
      if (v26 >= *(v76 + 16))
      {
        goto LABEL_50;
      }

      v27 = *(v23 + 8 * v26 + 32);
    }

    v15 = v27;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v29 = [v27 value];
    sub_1000C5224();
    v20 = v30;

    sub_1000C14C4();

    if ((*v86)(v13, 1, v25) != 1)
    {
      break;
    }

    sub_100018F90(v13, &qword_1000FC3E8, &unk_1000C9E10);
LABEL_7:
    ++v26;
    if (v28 == v85)
    {
      goto LABEL_52;
    }
  }

  v31 = v13;
  v32 = v23;
  v33 = v84;
  (*v82)(v84, v31, v25);
  v34 = sub_1000C14B4();
  v20 = v83;
  if (!v35)
  {
    (*v80)(v33, v25);

    goto LABEL_18;
  }

  v36 = v34;
  v37 = v35;
  v38 = v75;
  sub_1000C13B4();
  if ((*v74)(v38, 1, v20) == 1)
  {
    v20 = v77;
    (*v80)(v33, v77);

    v39 = v38;
    v25 = v20;
    sub_100018F90(v39, &qword_1000FC718, &qword_1000CAB38);
LABEL_18:
    v23 = v32;
    v13 = v81;
    goto LABEL_7;
  }

  (*v72)(v79, v38, v20);
  if ((v36 != *v78 || v37 != v78[1]) && (sub_1000C5C04() & 1) == 0)
  {
    v25 = v77;
    if (v36 == v78[2] && v37 == v78[3])
    {
    }

    else
    {
      v54 = sub_1000C5C04();

      if ((v54 & 1) == 0)
      {

        v20 = v83;
        v43 = v84;
        v23 = v32;
        goto LABEL_47;
      }
    }

    v55 = sub_1000307D4(v78[8], v78[9]);
    v23 = v32;
    if (v56)
    {
      v90 = v55;
      v91 = v56;
      v88 = 32;
      v89 = 0xE100000000000000;
      v69 = sub_100018D24();
      v57 = sub_1000C58B4();

      v13 = v81;
      if (v57[2])
      {
        v58 = v57[5];
        v68 = v57[4];

        v90 = v68;
        v91 = v58;
        v88 = 44;
        v89 = 0xE100000000000000;
        v44 = sub_1000C58B4();

        if (v44[2] == 2)
        {
          v59 = v44[4];
          v60 = v44[5];
          v90 = 0;

          v61 = v59;
          v62 = v73;
          v63 = sub_10009B378(v61, v60, &v90);
          v73 = v62;

          if (v63)
          {
            if (v44[2] < 2uLL)
            {
              goto LABEL_54;
            }

LABEL_29:
            v50 = v44[6];
            v51 = v44[7];

            v90 = 0;
            v52 = v73;
            v53 = sub_10009B378(v50, v51, &v90);
            v73 = v52;

            if (v53)
            {

              sub_1000C4094();
              v64 = v83;
              v65 = v84;

              (*v71)(v79, v64);
              return (*v80)(v65, v25);
            }

            goto LABEL_43;
          }
        }
      }

LABEL_42:

LABEL_43:

      v20 = v83;
      v43 = v84;
      goto LABEL_48;
    }

    v20 = v83;
    v43 = v84;
LABEL_47:
    v13 = v81;
    goto LABEL_48;
  }

  v40 = v78;
  v41 = sub_1000307D4(v78[6], v78[7]);
  v25 = v77;
  if (v42)
  {
    v43 = v84;
    v23 = v32;
    goto LABEL_26;
  }

  v41 = sub_1000307D4(v40[4], v40[5]);
  v23 = v32;
  if (!v42)
  {

    v43 = v84;
    goto LABEL_47;
  }

  v43 = v84;
LABEL_26:
  v13 = v81;
  v90 = v41;
  v91 = v42;
  v88 = 44;
  v89 = 0xE100000000000000;
  sub_100018D24();
  v44 = sub_1000C58B4();

  if (v44[2] != 2)
  {

    v20 = v83;
LABEL_48:
    (*v71)(v79, v20);
    (*v80)(v43, v25);
    goto LABEL_7;
  }

  v45 = v44[4];
  v46 = v44[5];
  v90 = 0;

  v47 = v45;
  v48 = v73;
  v49 = sub_10009B378(v47, v46, &v90);
  v73 = v48;

  if (!v49)
  {
    goto LABEL_42;
  }

  if (v44[2] >= 2uLL)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t sub_100030590(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v13 = 0;
  v4 = [v2 contactsWithData:isa error:&v13];

  v5 = v13;
  if (!v4)
  {
    v6 = v13;
    sub_1000C1474();

LABEL_11:
    swift_willThrow();
    return v6;
  }

  sub_10001D1A8(0, &qword_1000FC730, CNContact_ptr);
  v6 = sub_1000C53A4();
  v7 = v5;

  if (v6 >> 62)
  {
    if (sub_1000C59A4())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    sub_100030780();
    swift_allocError();
    *v11 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_1000C5954();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 urlAddresses];
  sub_1000124CC(&qword_1000FC738, &unk_1000CAB40);
  v6 = sub_1000C53A4();

  return v6;
}

unint64_t sub_100030780()
{
  result = qword_1000FC720;
  if (!qword_1000FC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC720);
  }

  return result;
}

void *sub_1000307D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1394();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - v12;
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = sub_1000C13A4();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v39 = v10;
  v40 = v13;
  sub_10001D1A8(0, &qword_1000FC728, NSPredicate_ptr);
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000C94D0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100014FBC();
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  result = sub_1000C54E4();
  v48 = result;
  v20 = v17;
  v46 = *(v17 + 16);
  if (!v46)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_14:

    if (v22[2])
    {
      v33 = v39;
      (*(v5 + 16))(v39, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v34 = v40;
      (*(v5 + 32))(v40, v33, v4);
      v35 = sub_1000C1384();
      v37 = v36;

      (*(v5 + 8))(v34, v4);
      if (v37)
      {
        return v35;
      }
    }

    else
    {
    }

    return 0;
  }

  v21 = 0;
  v41 = (v5 + 8);
  v44 = (v5 + 32);
  v45 = v5 + 16;
  v22 = _swiftEmptyArrayStorage;
  v42 = v5;
  v43 = v4;
  while (v21 < *(v20 + 16))
  {
    v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v24 = *(v5 + 72);
    (*(v5 + 16))(v15, v20 + v23 + v24 * v21, v4);
    v25 = sub_1000C1374();
    v26 = [v48 evaluateWithObject:v25];

    if (v26)
    {
      v27 = v20;
      v28 = *v44;
      (*v44)(v47, v15, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100045AC0(0, v22[2] + 1, 1);
        v22 = v49;
      }

      v31 = v22[2];
      v30 = v22[3];
      if (v31 >= v30 >> 1)
      {
        sub_100045AC0((v30 > 1), v31 + 1, 1);
        v22 = v49;
      }

      v22[2] = v31 + 1;
      v32 = v22 + v23 + v31 * v24;
      v4 = v43;
      result = (v28)(v32, v47, v43);
      v20 = v27;
      v5 = v42;
    }

    else
    {
      result = (*v41)(v15, v4);
    }

    if (v46 == ++v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MapPreviewUnpacker.MapPreviewUnpackerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapPreviewUnpacker.MapPreviewUnpackerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100030D4C()
{
  result = qword_1000FC740;
  if (!qword_1000FC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC740);
  }

  return result;
}

unint64_t sub_100030DB4()
{
  result = qword_1000FC748;
  if (!qword_1000FC748)
  {
    sub_1000C45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC748);
  }

  return result;
}

uint64_t sub_100030E0C@<X0>(uint64_t a3@<X8>)
{
  v18[3] = a3;
  v4 = sub_1000124CC(&qword_1000FC750, &qword_1000CAC78);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1000C45B4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  sub_100014F70();
  v14 = sub_1000C5814();
  v15 = sub_1000C5554();
  sub_1000C1A44("Entering Collaboration Notice Action unpacker", 45, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000310F8();
  sub_1000C1444();

  if (!v3)
  {
    sub_1000C45A4();
    v17 = *(v8 + 48);
    if (v17(v6, 1, v7) == 1)
    {
      (*(v8 + 104))(v13, enum case for CollaborationNoticeAction.ActionType.invalid(_:), v7);
      if (v17(v6, 1, v7) != 1)
      {
        sub_10003114C(v6);
      }
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
    }

    (*(v8 + 16))(v11, v13, v7);
    sub_1000C45C4();
    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

unint64_t sub_1000310F8()
{
  result = qword_1000FC758;
  if (!qword_1000FC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC758);
  }

  return result;
}

uint64_t sub_10003114C(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC750, &qword_1000CAC78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003120C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v42 = a4;
  v5 = sub_1000124CC(&qword_1000FC768, &qword_1000CAD30);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v30 - v6;
  v36 = sub_1000C4CF4();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000C14E4();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C4CC4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C5514();
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v16 = sub_1000C5724();
  v17 = *(v12 + 16);
  v37 = a1;
  v17(v14, a1, v11);
  v33 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v5;
    v20 = v19;
    v43 = v19;
    *v18 = 136446210;
    sub_1000C4CB4();
    sub_1000C4CE4();
    (*(v34 + 8))(v8, v36);
    sub_10003A4D0(&qword_1000FC778, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = v32;
    v22 = sub_1000C5BE4();
    v24 = v23;
    (*(v35 + 8))(v10, v21);
    (*(v12 + 8))(v14, v11);
    v25 = sub_10008AC30(v22, v24, &v43);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v33, "BlastDoor processing thumbnail for video: %{public}s", v18, 0xCu);
    sub_100015F68(v20);
    v5 = v31;
  }

  else
  {

    v26 = (*(v12 + 8))(v14, v11);
  }

  __chkstk_darwin(v26);
  v28 = v40;
  v27 = v41;
  *(&v30 - 4) = v37;
  *(&v30 - 3) = v28;
  *(&v30 - 2) = v27;
  sub_1000124CC(&qword_1000FC770, &qword_1000CAD38);
  (*(v39 + 104))(v38, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_1000C5434();
}

uint64_t sub_1000316D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  v37 = a3;
  v33 = a1;
  v38 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v4 = *(v38 - 8);
  v36 = *(v4 + 64);
  __chkstk_darwin(v38);
  v6 = &v27 - v5;
  v30 = &v27 - v5;
  v31 = sub_1000C26A4();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C4CC4();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v32 = &v27 - v14;
  v16 = sub_1000C5404();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v34, v9);
  v17 = v31;
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v31);
  v18 = v4;
  (*(v4 + 16))(v6, v33, v38);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = (v8 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v12, v28);
  v24 = v37;
  *(v23 + v20) = v37;
  (*(v7 + 32))(v23 + v21, v29, v17);
  (*(v18 + 32))(v23 + v22, v30, v38);
  v25 = v24;
  sub_10005BDF4(0, 0, v32, &unk_1000CAD58, v23);
}

uint64_t sub_100031A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v10 = sub_1000C26A4();
  v7[11] = v10;
  v11 = *(v10 - 8);
  v7[12] = v11;
  v7[13] = *(v11 + 64);
  v7[14] = swift_task_alloc();
  v12 = sub_1000C4CF4();
  v7[15] = v12;
  v7[16] = *(v12 - 8);
  v7[17] = swift_task_alloc();
  v13 = sub_1000C14E4();
  v7[18] = v13;
  v7[19] = *(v13 - 8);
  v7[20] = swift_task_alloc();
  v14 = sub_1000C4CC4();
  v7[21] = v14;
  v15 = *(v14 - 8);
  v7[22] = v15;
  v7[23] = *(v15 + 64);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_100031CEC, 0, 0);
}

uint64_t sub_100031CEC(uint64_t a1)
{
  v51 = v1;
  v2 = v1[25];
  v3 = v1[21];
  v4 = v1[22];
  v5 = v1[3];
  v6 = sub_1000C5514();
  v1[26] = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v7 = sub_1000C5724();
  v47 = *(v4 + 16);
  (v47)(v2, v5, v3);
  v8 = os_log_type_enabled(v7, v6);
  v9 = v1[25];
  v10 = v1[21];
  v11 = v1[22];
  if (v8)
  {
    v13 = v1[19];
    v12 = v1[20];
    v14 = v1[17];
    v41 = v1[18];
    v48 = v6;
    v15 = v1[16];
    v38 = v1[15];
    buf = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *buf = 136446210;
    v39 = v10;
    sub_1000C4CB4();
    sub_1000C4CE4();
    (*(v15 + 8))(v14, v38);
    sub_10003A4D0(&qword_1000FC778, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v16 = sub_1000C5BE4();
    v18 = v17;
    (*(v13 + 8))(v12, v41);
    (*(v11 + 8))(v9, v39);
    v19 = sub_10008AC30(v16, v18, &v50);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v48, "Task running for video: %{public}s)", buf, 0xCu);
    sub_100015F68(v45);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v20 = v1[22];
  v40 = v1[21];
  v42 = v1[24];
  v21 = v1[14];
  v36 = v1[23];
  v37 = v1[13];
  v23 = v1[11];
  v22 = v1[12];
  v24 = v1[10];
  bufa = v21;
  v46 = v24;
  v25 = v1[7];
  v26 = v1[8];
  v28 = v1[5];
  v27 = v1[6];
  v49 = v1[4];
  v47();
  (*(v22 + 16))(v21, v28, v23);
  (*(v26 + 16))(v24, v27, v25);
  v29 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v30 = (v36 + *(v22 + 80) + v29) & ~*(v22 + 80);
  v31 = (v37 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v32 = swift_allocObject();
  v1[27] = v32;
  *(v32 + 16) = v49;
  (*(v20 + 32))(v32 + v29, v42, v40);
  (*(v22 + 32))(v32 + v30, bufa, v23);
  (*(v26 + 32))(v32 + v31, v46, v25);
  v33 = v49;
  v34 = swift_task_alloc();
  v1[28] = v34;
  *v34 = v1;
  v34[1] = sub_100032114;

  return File.withResource<A>(_:)(v34, &unk_1000CAD68, v32, &type metadata for () + 8);
}

uint64_t sub_100032114()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1000322D8;
  }

  else
  {

    v2 = sub_100032230;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100032230()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000322D8()
{

  v1 = sub_1000C5534();
  v2 = sub_1000C5724();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Caught error: %@", v3, 0xCu);
    sub_100018F90(v4, &qword_1000FC468, &qword_1000CAD70);
  }

  v6 = v0[29];

  v0[2] = v6;
  sub_1000C5424();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100032464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10003248C, 0, 0);
}

uint64_t sub_10003248C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = sub_10003AD80();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  *v5 = v0;
  v5[1] = sub_1000325C8;
  v6 = *(v0 + 24);

  return _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v6, v2, v3, 0, 0, &unk_1000CAD80, v4, &type metadata for () + 8);
}

uint64_t sub_1000325C8()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_100032700, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100032700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100032764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a2;
  v6[56] = a3;
  sub_1000124CC(&qword_1000FC770, &qword_1000CAD38);
  v6[59] = swift_task_alloc();
  v7 = sub_1000124CC(&qword_1000FC798, &unk_1000CAD90);
  v6[60] = v7;
  v6[61] = *(v7 - 8);
  v6[62] = swift_task_alloc();
  v8 = sub_1000C2764();
  v6[63] = v8;
  v6[64] = *(v8 - 8);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v9 = sub_1000C2684();
  v6[67] = v9;
  v6[68] = *(v9 - 8);
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v10 = sub_1000C2664();
  v6[71] = v10;
  v6[72] = *(v10 - 8);
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v6[75] = swift_task_alloc();
  v11 = sub_1000C4D84();
  v6[76] = v11;
  v6[77] = *(v11 - 8);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v12 = sub_1000C54F4();
  v6[80] = v12;
  v6[81] = *(v12 - 8);
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v13 = sub_1000C2724();
  v6[84] = v13;
  v6[85] = *(v13 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v14 = sub_1000C2744();
  v6[89] = v14;
  v6[90] = *(v14 - 8);
  v6[91] = swift_task_alloc();
  v15 = sub_1000C26B4();
  v6[92] = v15;
  v6[93] = *(v15 - 8);
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v16 = sub_1000C14E4();
  v6[99] = v16;
  v6[100] = *(v16 - 8);
  v6[101] = swift_task_alloc();
  v17 = sub_1000C4CF4();
  v6[102] = v17;
  v6[103] = *(v17 - 8);
  v6[104] = swift_task_alloc();

  return _swift_task_switch(sub_100032CEC, 0, 0);
}

uint64_t sub_100032CEC(uint64_t a1)
{
  v2 = v1[104];
  v3 = v1[103];
  v4 = v1[102];
  v5 = v1[101];
  v6 = v1[100];
  v7 = v1[99];
  sub_1000C4CB4();
  sub_1000C4CE4();
  (*(v3 + 8))(v2, v4);
  v1[105] = sub_1000124CC(&qword_1000FC7A0, &qword_1000CADA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C94D0;
  *(v8 + 32) = sub_1000C5224();
  *(v8 + 40) = v9;
  *(v8 + 72) = &type metadata for Bool;
  *(v8 + 48) = 1;
  sub_10006B6DC(v8);
  swift_setDeallocating();
  sub_100018F90(v8 + 32, &qword_1000FC7A8, &qword_1000CADA8);
  swift_deallocClassInstance();
  v10 = objc_allocWithZone(AVURLAsset);
  sub_1000C1494(v11);
  v13 = v12;
  isa = sub_1000C5174().super.isa;

  v15 = [v10 initWithURL:v13 options:isa];
  v1[106] = v15;

  (*(v6 + 8))(v5, v7);
  v16 = sub_1000C5514();
  v1[107] = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v17 = sub_1000C5724();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "Created asset: %{public}@", v18, 0xCu);
    sub_100018F90(v19, &qword_1000FC468, &qword_1000CAD70);
  }

  v21 = sub_1000C5514();
  v22 = sub_1000C5724();
  sub_1000C1A54(v21, &_mh_execute_header, v22, "About to query for tracks", 25, 2, _swiftEmptyArrayStorage);

  v1[2] = v1;
  v1[7] = v1 + 50;
  v1[3] = sub_1000330D8;
  v23 = swift_continuation_init();
  v1[17] = sub_1000124CC(&qword_1000FC7B0, &qword_1000CADB0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10003A3CC;
  v1[13] = &unk_1000F3A88;
  v1[14] = v23;
  [v15 loadTracksWithMediaType:AVMediaTypeVideo completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1000330D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 864) = v2;
  if (v2)
  {
    v3 = *(v1 + 848);

    v4 = sub_100038638;
  }

  else
  {
    v4 = sub_100033220;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100033220(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = sub_1000C5514();
  v4 = sub_1000C5724();
  sub_1000C1A54(v3, &_mh_execute_header, v4, "Queried for tracks", 18, 2, _swiftEmptyArrayStorage);

  if (v2 >> 62)
  {
    v6 = sub_1000C59A4();
    v5 = sub_1000C59A4();
    *(v1 + 872) = v6;
    if (v5)
    {
LABEL_3:
      v7 = __OFSUB__(v5, 1);
      v8 = v5 - 1;
      if (v7)
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v2 + 8 * v8 + 32);
LABEL_8:
          v10 = v9;

          goto LABEL_11;
        }

        __break(1u);
      }

      v9 = sub_1000C5954();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v5;
    *(v1 + 872) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_11:
  *(v1 + 880) = v10;
  v11 = sub_1000C5514();
  v12 = sub_1000C5724();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349056;
    *(v13 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v12, v11, "Tracks found: %{public}ld)", v13, 0xCu);
  }

  v14 = *(v1 + 848);
  if (v10)
  {
    v15 = *(v1 + 784);
    v16 = *(v1 + 744);
    v17 = *(v1 + 736);
    v18 = objc_opt_self();
    v19 = v10;
    *(v1 + 1484) = [v18 videoAssetIsSpatial:v14];
    sub_1000C2694();
    v20 = *(v16 + 88);
    *(v1 + 888) = v20;
    *(v1 + 896) = (v16 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v21 = v20(v15, v17);
    *(v1 + 1460) = v21;
    v22 = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    *(v1 + 1464) = enum case for VideoPreview.FrameConstraints.singleFrame(_:);
    if (v21 == v22)
    {
      v23 = *(v1 + 784);
      v24 = *(v1 + 736);
      v25 = *(v1 + 728);
      v26 = *(v1 + 720);
      v27 = *(v1 + 712);
      v28 = *(*(v1 + 744) + 96);
      *(v1 + 904) = v28;
      v28(v23, v24);
      (*(v26 + 32))(v25, v23, v27);
      sub_1000124CC(&qword_1000FC7E0, &qword_1000CADD8);
      v29 = sub_1000C1674();
      *(v1 + 912) = v29;
      v30 = swift_task_alloc();
      *(v1 + 920) = v30;
      *v30 = v1;
      v30[1] = sub_100033B2C;

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v1 + 368, v29, 0, 0);
    }

    if (v21 == enum case for VideoPreview.FrameConstraints.multiFrame(_:))
    {
      v32 = *(v1 + 784);
      v33 = *(v1 + 704);
      v34 = *(v1 + 680);
      v35 = *(v1 + 672);
      v36 = *(*(v1 + 744) + 96);
      v36(v32, *(v1 + 736));
      (*(v34 + 32))(v33, v32, v35);
      if (sub_1000C26F4() >= 1 && sub_1000C2704() >= 1)
      {
        v37 = *(v1 + 704);
        v38 = *(v1 + 680);
        v39 = *(v1 + 672);
        v40 = sub_1000C26F4();
        v41 = sub_1000C2704();
        v42 = sub_1000C26C4();
        (*(v38 + 8))(v37, v39);
        *(v1 + 1000) = v41;
        *(v1 + 992) = v40;
        *(v1 + 984) = v42;
        *(v1 + 976) = v36;
        v43 = swift_task_alloc();
        *(v1 + 1008) = v43;
        *v43 = v1;
        v43[1] = sub_1000341F4;
        v44 = *(v1 + 664);

        return AVAssetTrack.info.getter(v44);
      }

      v45 = *(v1 + 848);
      v46 = *(v1 + 704);
      v47 = *(v1 + 680);
      v48 = *(v1 + 672);

      sub_1000C4FC4();
      sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v50 = swift_allocError();
      sub_1000C4FB4();
      v53 = v50;
      swift_willThrow();
    }

    else
    {
      v45 = *(v1 + 848);
      v46 = *(v1 + 784);
      v47 = *(v1 + 744);
      v48 = *(v1 + 736);

      sub_1000C4FC4();
      sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v49 = swift_allocError();
      sub_1000C4FB4();
      v53 = v49;
      swift_willThrow();
    }

    (*(v47 + 8))(v46, v48);
  }

  else
  {

    sub_1000C4FC4();
    sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v31 = swift_allocError();
    sub_1000C4FB4();
    v53 = v31;
    swift_willThrow();
  }

  **(v1 + 464) = v53;

  v51 = *(v1 + 8);

  return v51();
}

uint64_t sub_100033B2C()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_100038834;
  }

  else
  {

    v4 = sub_100033CAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100033CAC()
{
  *(v0 + 936) = *(v0 + 368);
  sub_1000124CC(&qword_1000FC7E8, &unk_1000CADE0);
  v1 = sub_1000C1694();
  *(v0 + 952) = v1;
  v2 = swift_task_alloc();
  *(v0 + 960) = v2;
  *v2 = v0;
  v2[1] = sub_100033DBC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v1, 0, 0);
}

uint64_t sub_100033DBC()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_100038A58;
  }

  else
  {

    v4 = sub_100033F3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100033F3C()
{
  v28 = v0;
  *(v0 + 192) = *(v0 + 144);
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 176);
  *(v0 + 208) = *(v0 + 160);
  *(v0 + 224) = v3;
  v4 = 0;
  *&v3 = 0;
  v30 = CGRectApplyAffineTransform(*(&v1 - 3), (v0 + 192));
  width = v30.size.width;
  height = v30.size.height;
  v7 = sub_1000C2734();
  v8 = fmin(width / height, 1.77777778);
  if (width / height < 0.75)
  {
    v9 = 0.75;
  }

  else
  {
    v9 = v8;
  }

  v10 = ceil(v7 / v9);
  if (height == 0.0 || width == 0.0)
  {
    v12 = sub_1000C5514();
    v13 = sub_1000C5724();
    v14 = os_log_type_enabled(v13, v12);
    v15 = *(v0 + 728);
    v16 = *(v0 + 720);
    v17 = *(v0 + 712);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v0 + 384) = v7;
      *(v0 + 392) = v10;
      type metadata accessor for CGSize(0);
      v20 = sub_1000C5284();
      v22 = sub_10008AC30(v20, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v12, "video size is zero, falling back to maxPtSize: %s", v18, 0xCu);
      sub_100015F68(v19);
    }

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v11 = v7 / width;
    if (v7 / width <= v10 / height)
    {
      v11 = v10 / height;
    }

    v7 = ceil(width * v11);
    v10 = ceil(height * v11);
    (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  }

  v23 = *(v0 + 904);
  *(v0 + 1000) = v10;
  *(v0 + 992) = v7;
  *(v0 + 984) = 0;
  *(v0 + 976) = v23;
  v24 = swift_task_alloc();
  *(v0 + 1008) = v24;
  *v24 = v0;
  v24[1] = sub_1000341F4;
  v25 = *(v0 + 664);

  return AVAssetTrack.info.getter(v25);
}

uint64_t sub_1000341F4()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 880);
    v4 = *(v2 + 848);

    v5 = sub_100038C7C;
  }

  else
  {
    v5 = sub_100034350;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100034350(uint64_t a1)
{
  v2 = sub_1000C5514();
  v3 = sub_1000C5724();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v1[125];
    v5 = v1[124];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v3, v2, "thumbnailFitPxSize: %f x %f", v6, 0x16u);
  }

  v7 = swift_task_alloc();
  v1[128] = v7;
  *v7 = v1;
  v7[1] = sub_1000344AC;

  return AVAsset.isAutoLoop.getter();
}

uint64_t sub_1000344AC(char a1)
{
  v3 = *v2;
  *(v3 + 1485) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v4 = *(v3 + 848);

    v5 = sub_100038E78;
  }

  else
  {
    v5 = sub_100034604;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100034604()
{
  v1 = *(v0 + 848);

  v2 = objc_allocWithZone(AVAssetReader);
  *(v0 + 408) = 0;
  v3 = [v2 initWithAsset:v1 error:v0 + 408];
  *(v0 + 1040) = v3;
  v4 = *(v0 + 408);
  v5 = *(v0 + 848);
  if (!v3)
  {
    v37 = *(v0 + 880);
    v38 = *(v0 + 664);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = v4;
    v42 = sub_1000C1474();

    v179 = v42;
    swift_willThrow();

    (*(v39 + 8))(v38, v40);
    goto LABEL_32;
  }

  v6 = *(v0 + 992);
  v7 = v4;

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000CACB0;
  *(v8 + 32) = sub_1000C5224();
  *(v8 + 40) = v9;
  *(v8 + 72) = sub_1000124CC(&qword_1000FC7B8, &qword_1000CADB8);
  *(v8 + 48) = &off_1000F14A0;
  *(v8 + 80) = sub_1000C5224();
  *(v8 + 88) = v10;
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  v11 = *(v0 + 992);
  if (v11 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v12 = *(v0 + 1000);
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 96) = v11;
  *(v8 + 128) = sub_1000C5224();
  *(v8 + 136) = v13;
  if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v14 = *(v0 + 1000);
  if (v14 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_67;
  }

  v15 = *(v0 + 888);
  v16 = *(v0 + 776);
  v17 = *(v0 + 736);
  *(v8 + 168) = &type metadata for Int;
  *(v8 + 144) = v14;
  v18 = sub_10006B6DC(v8);
  swift_setDeallocating();
  sub_1000124CC(&qword_1000FC7A8, &qword_1000CADA8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000C2694();
  v19 = v15(v16, v17);
  v20 = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  *(v0 + 1468) = enum case for VideoPreview.FrameConstraints.multiFrame(_:);
  if (v19 == v20)
  {
    v21 = *(v0 + 776);
    v22 = *(v0 + 696);
    v23 = v0 + 680;
    v24 = *(v0 + 680);
    v25 = (v0 + 672);
    v26 = *(v0 + 672);
    (*(v0 + 976))(v21, *(v0 + 736));
    (*(v24 + 32))(v22, v21, v26);
    if (sub_1000C26D4() >= 1)
    {
      v27 = sub_1000C5224();
      v29 = v28;
      v30 = sub_1000C26D4();
      *(v0 + 328) = &type metadata for Int;
      *(v0 + 304) = v30;
      sub_10001D8C8((v0 + 304), (v0 + 336));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003B408((v0 + 336), v27, v29, isUniquelyReferenced_nonNull_native);
    }

    v32 = (v0 + 696);
    *(v0 + 1048) = v18;
    if (sub_1000C26C4() >= 1 && (sub_1000C26E4() & 1) != 0)
    {
      sub_1000124CC(&qword_1000FC7D8, &qword_1000CADD0);
      v33 = sub_1000C16B4();
      *(v0 + 1056) = v33;
      v34 = swift_task_alloc();
      *(v0 + 1064) = v34;
      *v34 = v0;
      v34[1] = sub_100035B44;
      v35 = v0 + 1384;
      v36 = v33;
LABEL_23:

      return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v35, v36, 0, 0);
    }
  }

  else
  {
    v32 = (v0 + 776);
    v25 = (v0 + 736);
    v23 = v0 + 744;
  }

  (*(*v23 + 8))(*v32, *v25);
  v180 = *(v0 + 1468);
  v43 = *(v0 + 888);
  v44 = *(v0 + 880);
  v45 = *(v0 + 768);
  v46 = *(v0 + 736);
  v47 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v48 = v44;
  isa = sub_1000C5174().super.isa;

  v50 = [v47 initWithTrack:v48 outputSettings:isa];
  *(v0 + 1080) = v50;

  sub_1000C2694();
  if (v43(v45, v46) == v180)
  {
    v51 = *(v0 + 768);
    v52 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 672);
    (*(v0 + 976))(v51, *(v0 + 736));
    (*(v53 + 32))(v52, v51, v54);
    [v50 setAppliesPreferredTrackTransform:sub_1000C2714() & 1];
    if (sub_1000C26D4() == 1)
    {
      [v50 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v50 setAppliesPreferredTrackTransform:1];
  }

  v55 = *(v0 + 1040);
  v56 = *(v0 + 1464);
  v57 = *(v0 + 888);
  v58 = *(v0 + 760);
  v59 = *(v0 + 744);
  v60 = *(v0 + 736);
  [v50 setAlwaysCopiesSampleData:0];
  [v55 addOutput:v50];
  sub_1000C2694();
  v61 = v57(v58, v60);
  (*(v59 + 8))(v58, v60);
  if (v61 == v56)
  {
    sub_1000124CC(&qword_1000FC7C8, &qword_1000CADC0);
    v62 = sub_1000C1684();
    *(v0 + 1088) = v62;
    v63 = swift_task_alloc();
    *(v0 + 1096) = v63;
    *v63 = v0;
    v63[1] = sub_100037068;
    v35 = v0 + 1456;
    v36 = v62;
    goto LABEL_23;
  }

  v64 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v65 = [v64 copyNextSampleBuffer];
  if (v65)
  {
    v66 = *(v0 + 984);
    v67 = *(v0 + 1464);
    v68 = *(v0 + 1460);
    v69 = v65;
    v70 = v69;
    if (v68 != v67 && !v66)
    {
LABEL_29:
      v71 = *(v0 + 1080);
      v72 = *(v0 + 880);
      v73 = *(v0 + 848);
      v74 = *(v0 + 664);
      v75 = *(v0 + 648);
      v76 = *(v0 + 640);

      (*(v75 + 8))(v74, v76);
      goto LABEL_30;
    }

    v85 = 0;
    v86 = *(v0 + 616);
    v145 = (v86 + 16);
    v146 = (*(v0 + 648) + 16);
    v87 = *(v0 + 576);
    v88 = *(v0 + 544);
    v89 = *(v0 + 512);
    v143 = (v88 + 16);
    v144 = (v87 + 16);
    v147 = (*(v0 + 744) + 8);
    v137 = (v89 + 16);
    v138 = (*(v0 + 488) + 8);
    v139 = (v89 + 8);
    v140 = (v88 + 8);
    v141 = (v87 + 8);
    v142 = (v86 + 8);
    if (CMSampleBufferGetNumSamples(v69))
    {
      goto LABEL_38;
    }

    do
    {
LABEL_37:
    }

    while (!CMSampleBufferGetNumSamples(v70));
    while (1)
    {
LABEL_38:

      v90 = sub_1000C55B4();
      if (!v90)
      {
        v120 = *(v0 + 1080);
        v121 = *(v0 + 1040);
        v122 = *(v0 + 880);
        v177 = *(v0 + 848);
        v171 = *(v0 + 664);
        v123 = *(v0 + 648);
        v124 = *(v0 + 640);
        sub_1000C4FC4();
        sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v125 = swift_allocError();
        sub_1000C4FB4();
        v179 = v125;
        swift_willThrow();

        (*(v123 + 8))(v171, v124);
        goto LABEL_32;
      }

      v91 = v90;
      v92 = sub_1000C5514();
      v93 = sub_1000C5724();
      if (os_log_type_enabled(v93, v92))
      {
        v94 = swift_slowAlloc();
        *v94 = 134217984;
        *(v94 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v93, v92, "BlastDoor processing thumbnail %ld", v94, 0xCu);
      }

      v174 = *(v0 + 1464);
      v167 = *(v0 + 888);
      v163 = *(v0 + 752);
      v165 = *(v0 + 736);
      v95 = *(v0 + 664);
      v96 = *(v0 + 656);
      v97 = *(v0 + 640);
      v98 = *(v0 + 632);
      v150 = *(v0 + 624);
      v151 = *(v0 + 608);
      v181 = v85;
      v99 = *(v0 + 600);
      v100 = *(v0 + 592);
      v152 = *(v0 + 584);
      v153 = *(v0 + 568);
      v149 = *(v0 + 560);
      v154 = *(v0 + 552);
      v156 = *(v0 + 536);

      sub_1000C55C4();
      sub_1000C5654();
      type metadata accessor for CVBuffer(0);
      v101 = sub_1000C4D54();
      (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
      v148 = v91;
      sub_1000C4D64();
      v102 = *v146;
      (*v146)(v96, v95, v97);
      sub_1000C2654();
      v102(v96, v95, v97);
      sub_1000C2674();
      (*v145)(v150, v98, v151);
      (*v144)(v152, v100, v153);
      (*v143)(v154, v149, v156);
      sub_1000C2754();
      sub_1000C2694();
      v103 = v167(v163, v165);
      v104 = *(v0 + 1080);
      if (v103 == v174)
      {
        v157 = *(v0 + 1040);
        v158 = *(v0 + 880);
        v161 = *(v0 + 848);
        v178 = *(v0 + 640);
        v183 = *(v0 + 664);
        v169 = *(v0 + 632);
        v172 = *(v0 + 648);
        v164 = *(v0 + 592);
        v166 = *(v0 + 608);
        v162 = *(v0 + 568);
        v159 = *(v0 + 536);
        v160 = *(v0 + 560);
        v126 = *(v0 + 528);
        v127 = *(v0 + 520);
        v129 = *(v0 + 496);
        v128 = *(v0 + 504);
        v155 = *(v0 + 480);
        (*v147)(*(v0 + 752), *(v0 + 736));
        v130 = sub_1000C5514();
        v131 = sub_1000C5724();
        sub_1000C1A54(v130, &_mh_execute_header, v131, "This was a single frame request - handling continuation", 55, 2, _swiftEmptyArrayStorage);

        (*v137)(v127, v126, v128);
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v138)(v129, v155);
        *(v0 + 424) = 0;
        sub_1000C5424();

        (*v139)(v126, v128);
        (*v140)(v160, v159);
        (*v141)(v164, v162);
        (*v142)(v169, v166);
        (*(v172 + 8))(v183, v178);
        goto LABEL_30;
      }

      (*v147)(*(v0 + 752), *(v0 + 736));
      v105 = [v104 copyNextSampleBuffer];
      v106 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v107 = v105;
      v182 = v181 + 1;
      if (v105)
      {
        v108 = *(v0 + 1460) != *(v0 + 1464) && v106 == *(v0 + 984);
        v109 = v108;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(v0 + 496);
      v175 = *(v0 + 480);
      (*v137)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
      sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
      sub_1000C3FF4();
      sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
      sub_1000C5414();
      (*v138)(v110, v175);
      v111 = *(v0 + 632);
      v170 = *(v0 + 592);
      v176 = *(v0 + 608);
      v168 = *(v0 + 568);
      v112 = *(v0 + 560);
      v113 = *(v0 + 536);
      v114 = *(v0 + 528);
      v115 = *(v0 + 504);
      if (v109)
      {
        *(v0 + 416) = 0;
        sub_1000C5424();
      }

      (*v139)(v114, v115);
      (*v140)(v112, v113);
      (*v141)(v170, v168);
      (*v142)(v111, v176);
      if (!v107)
      {
        break;
      }

      v116 = *(v0 + 984);
      v117 = *(v0 + 1464);
      v118 = *(v0 + 1460);
      v119 = v107;
      v70 = v119;
      v108 = v118 == v117;
      v85 = v182;
      if (!v108 && v182 == v116)
      {
        goto LABEL_29;
      }

      if (!CMSampleBufferGetNumSamples(v119))
      {
        goto LABEL_37;
      }
    }

    v132 = *(v0 + 1080);
    v133 = *(v0 + 1040);
    v134 = *(v0 + 880);
    v135 = *(v0 + 848);
    (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

LABEL_30:

    v77 = *(v0 + 8);
    goto LABEL_33;
  }

  v78 = *(v0 + 1080);
  v79 = *(v0 + 1040);
  v80 = *(v0 + 880);
  v173 = *(v0 + 848);
  v81 = *(v0 + 664);
  v82 = *(v0 + 648);
  v83 = *(v0 + 640);
  sub_1000C4FC4();
  sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v84 = swift_allocError();
  sub_1000C4FB4();
  v179 = v84;
  swift_willThrow();

  (*(v82 + 8))(v81, v83);
LABEL_32:
  **(v0 + 464) = v179;

  v77 = *(v0 + 8);
LABEL_33:

  return v77();
}

uint64_t sub_100035B44()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {

    v2 = sub_10003909C;
  }

  else
  {

    v2 = sub_100035CC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100035CC0()
{
  v174 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  *(v0 + 1408) = *(v0 + 1384);
  *(v0 + 1416) = v2;
  *(v0 + 1424) = v1;
  Seconds = CMTimeGetSeconds((v0 + 1408));
  v4 = sub_1000C26C4();
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v5 = Seconds / ((v4 - 1) + 0.1);
  if (v5 <= 0.0)
  {
    (*(*(v0 + 680) + 8))(*(v0 + 696), *(v0 + 672));
  }

  else
  {
    v6 = *(v0 + 680);
    CMTimeMakeWithSeconds(&v171, v5, 1000);
    epoch = v171.epoch;
    v8 = *&v171.timescale;
    *(v0 + 1432) = v171.value;
    *(v0 + 1440) = v8;
    *(v0 + 1448) = epoch;
    v9 = CMTimeCopyAsDictionary((v0 + 1432), kCFAllocatorDefault);
    v10 = (v6 + 8);
    v11 = *(v0 + 1048);
    if (!v9)
    {
      v55 = *(v0 + 1040);
      v56 = *(v0 + 880);
      v57 = *(v0 + 848);
      v148 = *(v0 + 672);
      v151 = *(v0 + 696);
      v58 = *(v0 + 648);
      v155 = *(v0 + 640);
      v159 = *(v0 + 664);

      sub_1000C4FC4();
      sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v59 = swift_allocError();
      sub_1000C4FB4();
      v167 = v59;
      swift_willThrow();

      (*v10)(v151, v148);
      (*(v58 + 8))(v159, v155);
      goto LABEL_22;
    }

    v12 = v9;
    v13 = *(v0 + 696);
    v14 = *(v0 + 672);
    v15 = sub_1000C5224();
    v17 = v16;
    *(v0 + 264) = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
    *(v0 + 240) = v12;
    sub_10001D8C8((v0 + 240), (v0 + 272));
    v18 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171.value = v11;
    sub_10003B408((v0 + 272), v15, v17, isUniquelyReferenced_nonNull_native);

    (*v10)(v13, v14);
  }

  v166 = *(v0 + 1468);
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);
  v22 = *(v0 + 768);
  v23 = *(v0 + 736);
  v24 = objc_allocWithZone(AVAssetReaderTrackOutput);
  v25 = v21;
  isa = sub_1000C5174().super.isa;

  v27 = [v24 initWithTrack:v25 outputSettings:isa];
  *(v0 + 1080) = v27;

  sub_1000C2694();
  if (v20(v22, v23) == v166)
  {
    v28 = *(v0 + 768);
    v29 = *(v0 + 688);
    v30 = *(v0 + 680);
    v31 = *(v0 + 672);
    (*(v0 + 976))(v28, *(v0 + 736));
    (*(v30 + 32))(v29, v28, v31);
    [v27 setAppliesPreferredTrackTransform:sub_1000C2714() & 1];
    if (sub_1000C26D4() == 1)
    {
      [v27 setLimitsImageQueueCapacityToOneFrame:1];
    }

    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  }

  else
  {
    (*(*(v0 + 744) + 8))(*(v0 + 768), *(v0 + 736));
    [v27 setAppliesPreferredTrackTransform:1];
  }

  v32 = *(v0 + 1040);
  v33 = *(v0 + 1464);
  v34 = *(v0 + 888);
  v35 = *(v0 + 760);
  v36 = *(v0 + 744);
  v37 = *(v0 + 736);
  [v27 setAlwaysCopiesSampleData:0];
  [v32 addOutput:v27];
  sub_1000C2694();
  v38 = v34(v35, v37);
  (*(v36 + 8))(v35, v37);
  if (v38 == v33)
  {
    sub_1000124CC(&qword_1000FC7C8, &qword_1000CADC0);
    v39 = sub_1000C1684();
    *(v0 + 1088) = v39;
    v40 = swift_task_alloc();
    *(v0 + 1096) = v40;
    *v40 = v0;
    v40[1] = sub_100037068;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 1456, v39, 0, 0);
  }

  v41 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v42 = [v41 copyNextSampleBuffer];
  if (v42)
  {
    v43 = *(v0 + 984);
    v44 = *(v0 + 1464);
    v45 = *(v0 + 1460);
    v46 = v42;
    v47 = v46;
    if (v45 == v44 || v43)
    {
      v67 = 0;
      v68 = *(v0 + 616);
      v128 = (v68 + 16);
      v129 = (*(v0 + 648) + 16);
      v69 = *(v0 + 576);
      v70 = *(v0 + 544);
      v71 = *(v0 + 512);
      v126 = (v70 + 16);
      v127 = (v69 + 16);
      v130 = (*(v0 + 744) + 8);
      v120 = (v71 + 16);
      v121 = (*(v0 + 488) + 8);
      v122 = (v71 + 8);
      v123 = (v70 + 8);
      v124 = (v69 + 8);
      v125 = (v68 + 8);
      if (CMSampleBufferGetNumSamples(v46))
      {
        goto LABEL_28;
      }

      do
      {
LABEL_27:
      }

      while (!CMSampleBufferGetNumSamples(v47));
      while (1)
      {
LABEL_28:

        v72 = sub_1000C55B4();
        if (!v72)
        {
          v103 = *(v0 + 1080);
          v104 = *(v0 + 1040);
          v105 = *(v0 + 880);
          v164 = *(v0 + 848);
          v157 = *(v0 + 664);
          v106 = *(v0 + 648);
          v107 = *(v0 + 640);
          sub_1000C4FC4();
          sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v108 = swift_allocError();
          sub_1000C4FB4();
          v167 = v108;
          swift_willThrow();

          (*(v106 + 8))(v157, v107);
          goto LABEL_22;
        }

        v73 = v72;
        v74 = sub_1000C5514();
        v75 = sub_1000C5724();
        if (os_log_type_enabled(v75, v74))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v75, v74, "BlastDoor processing thumbnail %ld", v76, 0xCu);
        }

        v161 = *(v0 + 1464);
        v152 = *(v0 + 888);
        v146 = *(v0 + 752);
        v149 = *(v0 + 736);
        v77 = *(v0 + 664);
        v78 = *(v0 + 656);
        v79 = *(v0 + 640);
        v80 = *(v0 + 632);
        v133 = *(v0 + 624);
        v134 = *(v0 + 608);
        v168 = v67;
        v81 = *(v0 + 600);
        v82 = *(v0 + 592);
        v135 = *(v0 + 584);
        v136 = *(v0 + 568);
        v132 = *(v0 + 560);
        v137 = *(v0 + 552);
        v139 = *(v0 + 536);

        sub_1000C55C4();
        sub_1000C5654();
        type metadata accessor for CVBuffer(0);
        v172 = v83;
        v173 = &protocol witness table for CVBufferRef;
        v171.value = v73;
        v84 = sub_1000C4D54();
        (*(*(v84 - 8) + 56))(v81, 1, 1, v84);
        v131 = v73;
        sub_1000C4D64();
        v85 = *v129;
        (*v129)(v78, v77, v79);
        sub_1000C2654();
        v85(v78, v77, v79);
        sub_1000C2674();
        (*v128)(v133, v80, v134);
        (*v127)(v135, v82, v136);
        (*v126)(v137, v132, v139);
        sub_1000C2754();
        sub_1000C2694();
        v86 = v152(v146, v149);
        v87 = *(v0 + 1080);
        if (v86 == v161)
        {
          v140 = *(v0 + 1040);
          v141 = *(v0 + 880);
          v144 = *(v0 + 848);
          v165 = *(v0 + 640);
          v170 = *(v0 + 664);
          v154 = *(v0 + 632);
          v158 = *(v0 + 648);
          v147 = *(v0 + 592);
          v150 = *(v0 + 608);
          v145 = *(v0 + 568);
          v142 = *(v0 + 536);
          v143 = *(v0 + 560);
          v109 = *(v0 + 528);
          v110 = *(v0 + 520);
          v112 = *(v0 + 496);
          v111 = *(v0 + 504);
          v138 = *(v0 + 480);
          (*v130)(*(v0 + 752), *(v0 + 736));
          v113 = sub_1000C5514();
          v114 = sub_1000C5724();
          sub_1000C1A54(v113, &_mh_execute_header, v114, "This was a single frame request - handling continuation", 55, 2, _swiftEmptyArrayStorage);

          (*v120)(v110, v109, v111);
          sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_1000C3FF4();
          sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
          sub_1000C5414();
          (*v121)(v112, v138);
          *(v0 + 424) = 0;
          sub_1000C5424();

          (*v122)(v109, v111);
          (*v123)(v143, v142);
          (*v124)(v147, v145);
          (*v125)(v154, v150);
          (*(v158 + 8))(v170, v165);
          goto LABEL_19;
        }

        (*v130)(*(v0 + 752), *(v0 + 736));
        v88 = [v87 copyNextSampleBuffer];
        v89 = v168 + 1;
        if (__OFADD__(v168, 1))
        {
          goto LABEL_52;
        }

        v90 = v88;
        v169 = v168 + 1;
        if (v88)
        {
          v91 = *(v0 + 1460) != *(v0 + 1464) && v89 == *(v0 + 984);
          v92 = v91;
        }

        else
        {
          v92 = 1;
        }

        v93 = *(v0 + 496);
        v162 = *(v0 + 480);
        (*v120)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v121)(v93, v162);
        v94 = *(v0 + 632);
        v156 = *(v0 + 592);
        v163 = *(v0 + 608);
        v153 = *(v0 + 568);
        v95 = *(v0 + 560);
        v96 = *(v0 + 536);
        v97 = *(v0 + 528);
        v98 = *(v0 + 504);
        if (v92)
        {
          *(v0 + 416) = 0;
          sub_1000C5424();
        }

        (*v122)(v97, v98);
        (*v123)(v95, v96);
        (*v124)(v156, v153);
        (*v125)(v94, v163);
        if (!v90)
        {
          break;
        }

        v99 = *(v0 + 984);
        v100 = *(v0 + 1464);
        v101 = *(v0 + 1460);
        v102 = v90;
        v47 = v102;
        v91 = v101 == v100;
        v67 = v169;
        if (!v91 && v169 == v99)
        {
          goto LABEL_18;
        }

        if (!CMSampleBufferGetNumSamples(v102))
        {
          goto LABEL_27;
        }
      }

      v115 = *(v0 + 1080);
      v116 = *(v0 + 1040);
      v117 = *(v0 + 880);
      v118 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_18:
      v48 = *(v0 + 1080);
      v49 = *(v0 + 880);
      v50 = *(v0 + 848);
      v51 = *(v0 + 664);
      v52 = *(v0 + 648);
      v53 = *(v0 + 640);

      (*(v52 + 8))(v51, v53);
    }

LABEL_19:

    v54 = *(v0 + 8);
    goto LABEL_23;
  }

  v60 = *(v0 + 1080);
  v61 = *(v0 + 1040);
  v62 = *(v0 + 880);
  v160 = *(v0 + 848);
  v63 = *(v0 + 664);
  v64 = *(v0 + 648);
  v65 = *(v0 + 640);
  sub_1000C4FC4();
  sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v66 = swift_allocError();
  sub_1000C4FB4();
  v167 = v66;
  swift_willThrow();

  (*(v64 + 8))(v63, v65);
LABEL_22:
  **(v0 + 464) = v167;

  v54 = *(v0 + 8);
LABEL_23:

  return v54();
}

uint64_t sub_100037068()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_1000392EC;
  }

  else
  {
    v2 = sub_1000371C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000371C8()
{
  v1 = ceilf(*(v0 + 1456));
  *(v0 + 1472) = v1;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -2147500000.0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v1 >= 2147500000.0)
  {
    goto LABEL_9;
  }

  *(v0 + 1112) = kCMTimeZero.value;
  *(v0 + 1476) = *&kCMTimeZero.timescale;
  *(v0 + 1120) = kCMTimeZero.epoch;
  sub_1000124CC(&qword_1000FC7D0, &qword_1000CADC8);
  v2 = sub_1000C16A4();
  *(v0 + 1128) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1136) = v3;
  *v3 = v0;
  v3[1] = sub_10003733C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 432, v2, 0, 0);
}

uint64_t sub_10003733C()
{

  if (v0)
  {

    v1 = sub_100039520;
  }

  else
  {

    v1 = sub_1000374B0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000374B0()
{
  v167 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C59A4())
  {
    v3 = v0 + 1304;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = &MBDHTMLToSuper_MENTION_Frame__classData;
    v145 = i;
    while (1)
    {
      if (v5)
      {
        v7 = sub_1000C5954();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v7 = *(v1 + 32 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (([v7 v6[17].base_meths] & 1) == 0)
      {
        v10 = *(v0 + 880);
        [v8 timeMapping];
        v11 = v160;
        v12 = *(&v159 + 1);
        *(v0 + 1336) = v159;
        *(v0 + 1344) = v12;
        *(v0 + 1352) = v11;
        v13 = [v10 makeSampleCursorWithPresentationTimeStamp:v0 + 1336];
        if (v13)
        {
          v14 = v13;
          do
          {
            if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
            {
              break;
            }

            if ([v14 stepInPresentationOrderByCount:1] != 1)
            {
              break;
            }

            [v14 presentationTimeStamp];
            [v8 timeMapping];
            v15 = v160;
            *(v0 + 1144) = v159;
            *(v0 + 1160) = v15;
            *(v0 + 1176) = v161;
            sub_1000C54D4();
          }

          while ((sub_1000C5634() & 1) == 0);
          if (([v14 currentSampleDependencyInfo] & 0x1000000) == 0)
          {

            [v14 presentationTimeStamp];
            v83 = v159;
            v84 = v160;
            v85 = *(&v159 + 1);
            [v8 timeMapping];
            v86 = v159;
            v87 = v160;
            v88 = *(&v161 + 1);
            v89 = v161;
            v90 = *(&v159 + 1);
            [v8 timeMapping];
            v91 = v162;
            v92 = v166;
            v93 = v165;
            v94 = v164;
            v95 = v163;
            *(v0 + 1360) = v83;
            *(v0 + 1368) = v85;
            *(v0 + 1376) = v84;
            *(v0 + 1240) = v86;
            *(v0 + 1248) = v90;
            *(v0 + 1256) = v87;
            *(v0 + 1272) = v89;
            *(v0 + 1280) = v88;
            *(v0 + 1288) = v91;
            *(v0 + 1296) = v95;
            *(v0 + 1304) = v94;
            *(v0 + 1320) = v93;
            *(v0 + 1328) = v92;
            CMTimeMapTimeFromRangeToRange(&v159, (v0 + 1360), (v0 + 1240), (v0 + 1288));
            v17 = *(&v159 + 1);
            v18 = v159;
            v16 = v160;

            goto LABEL_22;
          }

          i = v145;
          v5 = v1 & 0xC000000000000001;
          v6 = &MBDHTMLToSuper_MENTION_Frame__classData;
        }
      }

      if (v4 == i)
      {

        v16 = *(v0 + 1120);
        v3 = v0 + 1304;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v16 = *(v0 + 1120);
LABEL_21:
  v17 = *(v3 + 172);
  v18 = *(v0 + 1112);
LABEL_22:
  v19 = *(v0 + 1040);
  v20 = sub_1000C5644(1, *(v0 + 1472));
  *(v0 + 1192) = v18;
  *(v0 + 1200) = v17;
  *(v0 + 1208) = v16;
  *(v0 + 1216) = v20;
  *(v0 + 1224) = v21;
  *(v0 + 1228) = v22;
  *(v0 + 1232) = v23;
  [v19 setTimeRange:v0 + 1192];
  v24 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v25 = [v24 copyNextSampleBuffer];
  if (v25)
  {
    v26 = *(v0 + 984);
    v27 = *(v0 + 1464);
    v28 = *(v0 + 1460);
    v29 = v25;
    v30 = v29;
    if (v28 == v27 || v26)
    {
      v46 = 0;
      v47 = *(v0 + 616);
      v120 = (v47 + 16);
      v121 = (*(v0 + 648) + 16);
      v48 = *(v0 + 576);
      v49 = *(v0 + 544);
      v50 = *(v0 + 512);
      v118 = (v49 + 16);
      v119 = (v48 + 16);
      v122 = (*(v0 + 744) + 8);
      v112 = (v50 + 16);
      v113 = (*(v0 + 488) + 8);
      v114 = (v50 + 8);
      v115 = (v49 + 8);
      v116 = (v48 + 8);
      v117 = (v47 + 8);
      if (CMSampleBufferGetNumSamples(v29))
      {
        goto LABEL_34;
      }

      do
      {
LABEL_33:
      }

      while (!CMSampleBufferGetNumSamples(v30));
      while (1)
      {
LABEL_34:

        v51 = sub_1000C55B4();
        if (!v51)
        {
          v96 = *(v0 + 1080);
          v97 = *(v0 + 1040);
          v98 = *(v0 + 880);
          v153 = *(v0 + 848);
          v147 = *(v0 + 664);
          v99 = *(v0 + 648);
          v100 = *(v0 + 640);
          sub_1000C4FC4();
          sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v101 = swift_allocError();
          sub_1000C4FB4();
          v155 = v101;
          swift_willThrow();

          (*(v99 + 8))(v147, v100);
          goto LABEL_28;
        }

        v52 = v51;
        v53 = sub_1000C5514();
        v54 = sub_1000C5724();
        if (os_log_type_enabled(v54, v53))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v54, v53, "BlastDoor processing thumbnail %ld", v55, 0xCu);
        }

        v150 = *(v0 + 1464);
        v138 = *(v0 + 752);
        v140 = *(v0 + 736);
        v142 = *(v0 + 888);
        v56 = *(v0 + 664);
        v156 = v46;
        v57 = *(v0 + 656);
        v58 = *(v0 + 640);
        v59 = *(v0 + 632);
        v125 = *(v0 + 624);
        v126 = *(v0 + 608);
        v60 = *(v0 + 600);
        v61 = *(v0 + 592);
        v127 = *(v0 + 584);
        v128 = *(v0 + 568);
        v124 = *(v0 + 560);
        v129 = *(v0 + 552);
        v131 = *(v0 + 536);

        sub_1000C55C4();
        sub_1000C5654();
        type metadata accessor for CVBuffer(0);
        *(&v160 + 1) = v62;
        *&v161 = &protocol witness table for CVBufferRef;
        *&v159 = v52;
        v63 = sub_1000C4D54();
        (*(*(v63 - 8) + 56))(v60, 1, 1, v63);
        v64 = v52;
        sub_1000C4D64();
        v65 = *v121;
        (*v121)(v57, v56, v58);
        sub_1000C2654();
        v65(v57, v56, v58);
        v1 = v124;
        sub_1000C2674();
        (*v120)(v125, v59, v126);
        (*v119)(v127, v61, v128);
        (*v118)(v129, v124, v131);
        sub_1000C2754();
        sub_1000C2694();
        v66 = v142(v138, v140);
        v67 = *(v0 + 1080);
        v123 = v64;
        if (v66 == v150)
        {
          v132 = *(v0 + 1040);
          v133 = *(v0 + 880);
          v136 = *(v0 + 848);
          v148 = *(v0 + 648);
          v154 = *(v0 + 640);
          v158 = *(v0 + 664);
          v141 = *(v0 + 608);
          v144 = *(v0 + 632);
          v137 = *(v0 + 568);
          v139 = *(v0 + 592);
          v134 = *(v0 + 536);
          v135 = *(v0 + 560);
          v102 = *(v0 + 528);
          v103 = *(v0 + 520);
          v105 = *(v0 + 496);
          v104 = *(v0 + 504);
          v130 = *(v0 + 480);
          (*v122)(*(v0 + 752), *(v0 + 736));
          v106 = sub_1000C5514();
          v107 = sub_1000C5724();
          sub_1000C1A54(v106, &_mh_execute_header, v107, "This was a single frame request - handling continuation", 55, 2, _swiftEmptyArrayStorage);

          (*v112)(v103, v102, v104);
          sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_1000C3FF4();
          sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
          sub_1000C5414();
          (*v113)(v105, v130);
          *(v0 + 424) = 0;
          sub_1000C5424();

          (*v114)(v102, v104);
          (*v115)(v135, v134);
          (*v116)(v139, v137);
          (*v117)(v144, v141);
          (*(v148 + 8))(v158, v154);
          goto LABEL_26;
        }

        (*v122)(*(v0 + 752), *(v0 + 736));
        v68 = [v67 copyNextSampleBuffer];
        v69 = v156 + 1;
        if (__OFADD__(v156, 1))
        {
          goto LABEL_60;
        }

        v70 = v68;
        v157 = v156 + 1;
        if (v68)
        {
          v72 = *(v0 + 1460) != *(v0 + 1464) && v69 == *(v0 + 984);
        }

        else
        {
          v72 = 1;
        }

        v73 = *(v0 + 496);
        v151 = *(v0 + 480);
        (*v112)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v113)(v73, v151);
        v74 = *(v0 + 632);
        v146 = *(v0 + 592);
        v152 = *(v0 + 608);
        v143 = *(v0 + 568);
        v75 = *(v0 + 560);
        v76 = *(v0 + 536);
        v77 = *(v0 + 528);
        v78 = *(v0 + 504);
        if (v72)
        {
          *(v0 + 416) = 0;
          sub_1000C5424();
        }

        (*v114)(v77, v78);
        (*v115)(v75, v76);
        (*v116)(v146, v143);
        (*v117)(v74, v152);
        v46 = v69;
        if (!v70)
        {
          break;
        }

        v79 = *(v0 + 984);
        v80 = *(v0 + 1464);
        v81 = *(v0 + 1460);
        v82 = v70;
        v30 = v82;
        if (v81 != v80 && v157 == v79)
        {
          goto LABEL_25;
        }

        if (!CMSampleBufferGetNumSamples(v82))
        {
          goto LABEL_33;
        }
      }

      v108 = *(v0 + 1080);
      v109 = *(v0 + 1040);
      v110 = *(v0 + 880);
      v111 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_25:
      v31 = *(v0 + 1080);
      v32 = *(v0 + 880);
      v33 = *(v0 + 848);
      v34 = *(v0 + 664);
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);

      (*(v35 + 8))(v34, v36);
    }

LABEL_26:

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 1080);
    v39 = *(v0 + 1040);
    v40 = *(v0 + 880);
    v149 = *(v0 + 848);
    v41 = *(v0 + 664);
    v42 = *(v0 + 648);
    v43 = *(v0 + 640);
    sub_1000C4FC4();
    sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v44 = swift_allocError();
    sub_1000C4FB4();
    v155 = v44;
    swift_willThrow();

    (*(v42 + 8))(v41, v43);
LABEL_28:
    **(v0 + 464) = v155;

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100038638(uint64_t a1)
{
  v2 = *(v1 + 848);
  swift_willThrow();

  **(v1 + 464) = *(v1 + 864);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100038834()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 928);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100038A58()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 968);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100038C7C()
{
  v1 = *(v0 + 880);

  **(v0 + 464) = *(v0 + 1016);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100038E78()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 664);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);

  (*(v3 + 8))(v2, v4);
  **(v0 + 464) = *(v0 + 1032);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10003909C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  **(v0 + 464) = *(v0 + 1072);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000392EC()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  v4 = *(v0 + 664);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);

  (*(v5 + 8))(v4, v6);
  **(v0 + 464) = *(v0 + 1104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100039520()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1476);
  v5 = sub_1000C5644(1, *(v0 + 1472));
  *(v0 + 1192) = v2;
  *(v0 + 1200) = v4;
  *(v0 + 1208) = v1;
  *(v0 + 1216) = v5;
  *(v0 + 1224) = v6;
  *(v0 + 1228) = v7;
  *(v0 + 1232) = v8;
  [v3 setTimeRange:v0 + 1192];
  v9 = *(v0 + 1080);
  [*(v0 + 1040) startReading];
  v10 = [v9 copyNextSampleBuffer];
  if (v10)
  {
    v11 = *(v0 + 984);
    v12 = *(v0 + 1464);
    v13 = *(v0 + 1460);
    v14 = v10;
    v15 = v14;
    if (v13 == v12 || v11)
    {
      v31 = 0;
      v32 = *(v0 + 616);
      v90 = (v32 + 16);
      v91 = (*(v0 + 648) + 16);
      v33 = *(v0 + 576);
      v34 = *(v0 + 544);
      v35 = *(v0 + 512);
      v88 = (v34 + 16);
      v89 = (v33 + 16);
      v92 = (*(v0 + 744) + 8);
      v82 = (v35 + 16);
      v83 = (*(v0 + 488) + 8);
      v84 = (v35 + 8);
      v85 = (v34 + 8);
      v86 = (v33 + 8);
      v87 = (v32 + 8);
      if (CMSampleBufferGetNumSamples(v14))
      {
        goto LABEL_13;
      }

      do
      {
LABEL_12:
      }

      while (!CMSampleBufferGetNumSamples(v15));
      while (1)
      {
LABEL_13:

        v36 = sub_1000C55B4();
        if (!v36)
        {
          v66 = *(v0 + 1080);
          v67 = *(v0 + 1040);
          v68 = *(v0 + 880);
          v122 = *(v0 + 848);
          v116 = *(v0 + 664);
          v69 = *(v0 + 648);
          v70 = *(v0 + 640);
          sub_1000C4FC4();
          sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          v71 = swift_allocError();
          sub_1000C4FB4();
          v124 = v71;
          swift_willThrow();

          (*(v69 + 8))(v116, v70);
          goto LABEL_7;
        }

        v37 = v36;
        v38 = sub_1000C5514();
        v39 = sub_1000C5724();
        if (os_log_type_enabled(v39, v38))
        {
          v40 = swift_slowAlloc();
          *v40 = 134217984;
          *(v40 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v39, v38, "BlastDoor processing thumbnail %ld", v40, 0xCu);
        }

        v119 = *(v0 + 1464);
        v112 = *(v0 + 888);
        v108 = *(v0 + 752);
        v110 = *(v0 + 736);
        v41 = *(v0 + 664);
        v42 = *(v0 + 656);
        v43 = *(v0 + 640);
        v44 = *(v0 + 632);
        v95 = *(v0 + 624);
        v96 = *(v0 + 608);
        v125 = v31;
        v45 = *(v0 + 600);
        v46 = *(v0 + 592);
        v97 = *(v0 + 584);
        v98 = *(v0 + 568);
        v94 = *(v0 + 560);
        v99 = *(v0 + 552);
        v101 = *(v0 + 536);

        sub_1000C55C4();
        sub_1000C5654();
        type metadata accessor for CVBuffer(0);
        v47 = sub_1000C4D54();
        (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
        v93 = v37;
        sub_1000C4D64();
        v48 = *v91;
        (*v91)(v42, v41, v43);
        sub_1000C2654();
        v48(v42, v41, v43);
        sub_1000C2674();
        (*v90)(v95, v44, v96);
        (*v89)(v97, v46, v98);
        (*v88)(v99, v94, v101);
        sub_1000C2754();
        sub_1000C2694();
        v49 = v112(v108, v110);
        v50 = *(v0 + 1080);
        if (v49 == v119)
        {
          v102 = *(v0 + 1040);
          v103 = *(v0 + 880);
          v123 = *(v0 + 640);
          v127 = *(v0 + 664);
          v114 = *(v0 + 632);
          v117 = *(v0 + 648);
          v109 = *(v0 + 592);
          v111 = *(v0 + 608);
          v106 = *(v0 + 848);
          v107 = *(v0 + 568);
          v104 = *(v0 + 536);
          v105 = *(v0 + 560);
          v72 = *(v0 + 528);
          v73 = *(v0 + 520);
          v75 = *(v0 + 496);
          v74 = *(v0 + 504);
          v100 = *(v0 + 480);
          (*v92)(*(v0 + 752), *(v0 + 736));
          v76 = sub_1000C5514();
          v77 = sub_1000C5724();
          sub_1000C1A54(v76, &_mh_execute_header, v77, "This was a single frame request - handling continuation", 55, 2, _swiftEmptyArrayStorage);

          (*v82)(v73, v72, v74);
          sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
          sub_1000C3FF4();
          sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
          sub_1000C5414();
          (*v83)(v75, v100);
          *(v0 + 424) = 0;
          sub_1000C5424();

          (*v84)(v72, v74);
          (*v85)(v105, v104);
          (*v86)(v109, v107);
          (*v87)(v114, v111);
          (*(v117 + 8))(v127, v123);
          goto LABEL_5;
        }

        (*v92)(*(v0 + 752), *(v0 + 736));
        v51 = [v50 copyNextSampleBuffer];
        v52 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          __break(1u);
        }

        v53 = v51;
        v126 = v125 + 1;
        if (v51)
        {
          v54 = *(v0 + 1460) != *(v0 + 1464) && v52 == *(v0 + 984);
          v55 = v54;
        }

        else
        {
          v55 = 1;
        }

        v56 = *(v0 + 496);
        v120 = *(v0 + 480);
        (*v82)(*(v0 + 520), *(v0 + 528), *(v0 + 504));
        sub_10003A4D0(&qword_1000FC7C0, &type metadata accessor for VideoPreview, &protocol conformance descriptor for VideoPreview);
        sub_1000C3FF4();
        sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
        sub_1000C5414();
        (*v83)(v56, v120);
        v57 = *(v0 + 632);
        v115 = *(v0 + 592);
        v121 = *(v0 + 608);
        v113 = *(v0 + 568);
        v58 = *(v0 + 560);
        v59 = *(v0 + 536);
        v60 = *(v0 + 528);
        v61 = *(v0 + 504);
        if (v55)
        {
          *(v0 + 416) = 0;
          sub_1000C5424();
        }

        (*v84)(v60, v61);
        (*v85)(v58, v59);
        (*v86)(v115, v113);
        (*v87)(v57, v121);
        if (!v53)
        {
          break;
        }

        v62 = *(v0 + 984);
        v63 = *(v0 + 1464);
        v64 = *(v0 + 1460);
        v65 = v53;
        v15 = v65;
        v54 = v64 == v63;
        v31 = v126;
        if (!v54 && v126 == v62)
        {
          goto LABEL_4;
        }

        if (!CMSampleBufferGetNumSamples(v65))
        {
          goto LABEL_12;
        }
      }

      v78 = *(v0 + 1080);
      v79 = *(v0 + 1040);
      v80 = *(v0 + 880);
      v81 = *(v0 + 848);
      (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));
    }

    else
    {
LABEL_4:
      v16 = *(v0 + 1080);
      v17 = *(v0 + 880);
      v18 = *(v0 + 848);
      v19 = *(v0 + 664);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);

      (*(v20 + 8))(v19, v21);
    }

LABEL_5:

    v22 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 1080);
    v24 = *(v0 + 1040);
    v25 = *(v0 + 880);
    v118 = *(v0 + 848);
    v26 = *(v0 + 664);
    v27 = *(v0 + 648);
    v28 = *(v0 + 640);
    sub_1000C4FC4();
    sub_10003A4D0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v29 = swift_allocError();
    sub_1000C4FB4();
    v124 = v29;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
LABEL_7:
    **(v0 + 464) = v124;

    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_10003A3CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10001530C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001D1A8(0, &qword_1000FC7F0, AVAssetTrack_ptr);
    **(*(v4 + 64) + 40) = sub_1000C53A4();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10003A4D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003A518()
{
  v17 = sub_1000C4CC4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_1000C26A4();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v14, v12 | 7);
}

uint64_t sub_10003A71C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C4CC4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000C26A4() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000124CC(&qword_1000FC780, &qword_1000CAD40) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10003A8F0;

  return sub_100031A88(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t sub_10003A8F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003A9E4()
{
  v17 = sub_1000C4CC4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_1000C26A4();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1000124CC(&qword_1000FC780, &qword_1000CAD40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_10003ABCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C4CC4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C26A4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000124CC(&qword_1000FC780, &qword_1000CAD40) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10003A8F0;

  return sub_100032464(a1, v13, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_10003AD80()
{
  result = qword_1000FC790;
  if (!qword_1000FC790)
  {
    sub_10001D1A8(255, &qword_1000FC1B0, OS_dispatch_queue_serial_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC790);
  }

  return result;
}

uint64_t sub_10003ADE8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10003B8E8;

  return sub_100032764(a1, v6, v7, v9, v8, a2);
}

uint64_t sub_10003AEB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000124CC(&qword_1000FC7F8, &unk_1000CADF0);
  v34 = v4;
  result = sub_1000C59C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1000C5CB4();
      sub_1000C52C4();
      result = sub_1000C5CD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10003B150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
  v33 = v4;
  result = sub_1000C59C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10001D8C8(v24, v34);
      }

      else
      {
        sub_10001D804(v24, v34);
      }

      sub_1000C5CB4();
      sub_1000C52C4();
      result = sub_1000C5CD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10001D8C8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_10003B408(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100099FF8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10003B72C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10003B150(v16, a4 & 1);
    v11 = sub_100099FF8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1000C5C54();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100015F68(v22);

    return sub_10001D8C8(a1, v22);
  }

  else
  {
    sub_10003B558(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10003B558(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001D8C8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10003B5C4()
{
  v1 = v0;
  sub_1000124CC(&qword_1000FC7F8, &unk_1000CADF0);
  v2 = *v0;
  v3 = sub_1000C59B4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_10003B72C()
{
  v1 = v0;
  sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
  v2 = *v0;
  v3 = sub_1000C59B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001D804(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001D8C8(v25, (*(v4 + 56) + v22));
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

  return result;
}

unint64_t sub_10003B8FC(uint64_t a1)
{
  result = sub_100012958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003B928()
{
  result = qword_1000FC800;
  if (!qword_1000FC800)
  {
    sub_1000C4394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC800);
  }

  return result;
}

uint64_t sub_10003B9C0@<X0>(uint64_t a1@<X8>)
{
  v526 = a1;
  v389 = sub_1000C3964();
  v388 = *(v389 - 8);
  __chkstk_darwin(v389);
  v387 = &v357 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = sub_1000C1664();
  v390 = *(v391 - 8);
  __chkstk_darwin(v391);
  v384 = &v357 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000124CC(&qword_1000FC830, &qword_1000CAEB0);
  __chkstk_darwin(v3 - 8);
  v382 = &v357 - v4;
  v386 = sub_1000C39B4();
  v385 = *(v386 - 8);
  __chkstk_darwin(v386);
  v383 = &v357 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = sub_1000C3984();
  v380 = *(v381 - 8);
  __chkstk_darwin(v381);
  v379 = &v357 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = sub_1000C3784();
  v377 = *(v378 - 8);
  __chkstk_darwin(v378);
  v376 = &v357 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = sub_1000C3744();
  v374 = *(v375 - 8);
  __chkstk_darwin(v375);
  v373 = &v357 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = sub_1000C3674();
  v400 = *(v401 - 8);
  __chkstk_darwin(v401);
  v399 = &v357 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_1000C3AA4();
  v408 = *(v409 - 8);
  __chkstk_darwin(v409);
  v407 = &v357 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v417 = sub_1000C3A04();
  v416 = *(v417 - 8);
  __chkstk_darwin(v417);
  v425 = &v357 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = sub_1000C3624();
  v423 = *(v424 - 8);
  __chkstk_darwin(v424);
  v432 = &v357 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_1000C3A64();
  v430 = *(v431 - 8);
  __chkstk_darwin(v431);
  v433 = &v357 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = sub_1000C3A84();
  v437 = *(v438 - 8);
  __chkstk_darwin(v438);
  v436 = &v357 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = sub_1000C3934();
  v443 = *(v444 - 8);
  __chkstk_darwin(v444);
  v445 = &v357 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = sub_1000C3904();
  v449 = *(v450 - 8);
  __chkstk_darwin(v450);
  v448 = &v357 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = sub_1000C36E4();
  v458 = *(v459 - 8);
  __chkstk_darwin(v459);
  v460 = &v357 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_1000C3764();
  v456 = *(v457 - 8);
  __chkstk_darwin(v457);
  v455 = &v357 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = sub_1000C3884();
  v464 = *(v465 - 8);
  __chkstk_darwin(v465);
  v463 = &v357 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = sub_1000C38C4();
  v469 = *(v470 - 8);
  __chkstk_darwin(v470);
  v468 = &v357 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = sub_1000C37E4();
  v474 = *(v475 - 8);
  __chkstk_darwin(v475);
  v473 = &v357 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = sub_1000C3A24();
  v479 = *(v480 - 8);
  __chkstk_darwin(v480);
  v478 = &v357 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = sub_1000C38A4();
  v484 = *(v485 - 8);
  __chkstk_darwin(v485);
  v483 = &v357 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = sub_1000C3644();
  v490 = *(v491 - 8);
  __chkstk_darwin(v491);
  v489 = &v357 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = sub_1000C3864();
  v502 = *(v503 - 8);
  __chkstk_darwin(v503);
  v496 = &v357 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = sub_1000C3704();
  v500 = *(v501 - 8);
  __chkstk_darwin(v501);
  v499 = &v357 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000C3824();
  v507 = *(v27 - 8);
  v508 = v27;
  __chkstk_darwin(v27);
  v506 = &v357 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000C3724();
  v511 = *(v29 - 8);
  v512 = v29;
  __chkstk_darwin(v29);
  v510 = &v357 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000C38E4();
  v515 = *(v31 - 8);
  v516 = v31;
  __chkstk_darwin(v31);
  v514 = &v357 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000C36B4();
  v519 = *(v33 - 8);
  v520 = v33;
  __chkstk_darwin(v33);
  v518 = &v357 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000124CC(&qword_1000FC838, &qword_1000CAEB8);
  v36 = __chkstk_darwin(v35 - 8);
  v372 = &v357 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v370 = &v357 - v39;
  v40 = __chkstk_darwin(v38);
  v371 = &v357 - v41;
  v42 = __chkstk_darwin(v40);
  v369 = &v357 - v43;
  v44 = __chkstk_darwin(v42);
  v368 = &v357 - v45;
  v46 = __chkstk_darwin(v44);
  v367 = &v357 - v47;
  v48 = __chkstk_darwin(v46);
  v398 = &v357 - v49;
  v50 = __chkstk_darwin(v48);
  v397 = &v357 - v51;
  v52 = __chkstk_darwin(v50);
  v406 = &v357 - v53;
  v54 = __chkstk_darwin(v52);
  v415 = &v357 - v55;
  v56 = __chkstk_darwin(v54);
  v414 = &v357 - v57;
  v58 = __chkstk_darwin(v56);
  v413 = &v357 - v59;
  v60 = __chkstk_darwin(v58);
  v412 = &v357 - v61;
  v62 = __chkstk_darwin(v60);
  v422 = &v357 - v63;
  v64 = __chkstk_darwin(v62);
  v421 = &v357 - v65;
  v66 = __chkstk_darwin(v64);
  v420 = &v357 - v67;
  v68 = __chkstk_darwin(v66);
  v419 = &v357 - v69;
  v70 = __chkstk_darwin(v68);
  v429 = &v357 - v71;
  v72 = __chkstk_darwin(v70);
  v428 = &v357 - v73;
  v74 = __chkstk_darwin(v72);
  v435 = &v357 - v75;
  v76 = __chkstk_darwin(v74);
  v442 = &v357 - v77;
  v78 = __chkstk_darwin(v76);
  v441 = &v357 - v79;
  v80 = __chkstk_darwin(v78);
  v447 = &v357 - v81;
  v82 = __chkstk_darwin(v80);
  v454 = &v357 - v83;
  v84 = __chkstk_darwin(v82);
  v453 = &v357 - v85;
  v86 = __chkstk_darwin(v84);
  v452 = &v357 - v87;
  v88 = __chkstk_darwin(v86);
  v462 = &v357 - v89;
  v90 = __chkstk_darwin(v88);
  v467 = &v357 - v91;
  v92 = __chkstk_darwin(v90);
  v472 = &v357 - v93;
  v94 = __chkstk_darwin(v92);
  v477 = &v357 - v95;
  v96 = __chkstk_darwin(v94);
  v482 = &v357 - v97;
  v98 = __chkstk_darwin(v96);
  v488 = &v357 - v99;
  v100 = __chkstk_darwin(v98);
  v495 = &v357 - v101;
  v102 = __chkstk_darwin(v100);
  v494 = &v357 - v103;
  v104 = __chkstk_darwin(v102);
  v498 = &v357 - v105;
  v106 = __chkstk_darwin(v104);
  v505 = &v357 - v107;
  v108 = __chkstk_darwin(v106);
  v509 = &v357 - v109;
  v110 = __chkstk_darwin(v108);
  v513 = &v357 - v111;
  v112 = __chkstk_darwin(v110);
  v517 = &v357 - v113;
  __chkstk_darwin(v112);
  v521 = &v357 - v114;
  v115 = sub_1000C3804();
  v522 = *(v115 - 8);
  v523 = v115;
  v116 = __chkstk_darwin(v115);
  v366 = &v357 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __chkstk_darwin(v116);
  v364 = &v357 - v119;
  v120 = __chkstk_darwin(v118);
  v365 = &v357 - v121;
  v122 = __chkstk_darwin(v120);
  v362 = &v357 - v123;
  v124 = __chkstk_darwin(v122);
  v361 = &v357 - v125;
  v126 = __chkstk_darwin(v124);
  v360 = &v357 - v127;
  v128 = __chkstk_darwin(v126);
  v363 = &v357 - v129;
  v130 = __chkstk_darwin(v128);
  v359 = &v357 - v131;
  v132 = __chkstk_darwin(v130);
  v392 = &v357 - v133;
  v134 = __chkstk_darwin(v132);
  v396 = &v357 - v135;
  v136 = __chkstk_darwin(v134);
  v395 = &v357 - v137;
  v138 = __chkstk_darwin(v136);
  v394 = &v357 - v139;
  v140 = __chkstk_darwin(v138);
  v393 = &v357 - v141;
  v142 = __chkstk_darwin(v140);
  v405 = &v357 - v143;
  v144 = __chkstk_darwin(v142);
  v404 = &v357 - v145;
  v146 = __chkstk_darwin(v144);
  v403 = &v357 - v147;
  v148 = __chkstk_darwin(v146);
  v402 = &v357 - v149;
  v150 = __chkstk_darwin(v148);
  v411 = &v357 - v151;
  v152 = __chkstk_darwin(v150);
  v410 = &v357 - v153;
  v154 = __chkstk_darwin(v152);
  v418 = &v357 - v155;
  v156 = __chkstk_darwin(v154);
  v427 = &v357 - v157;
  v158 = __chkstk_darwin(v156);
  v426 = &v357 - v159;
  v160 = __chkstk_darwin(v158);
  v434 = &v357 - v161;
  v162 = __chkstk_darwin(v160);
  v440 = &v357 - v163;
  v164 = __chkstk_darwin(v162);
  v439 = &v357 - v165;
  v166 = __chkstk_darwin(v164);
  v446 = &v357 - v167;
  v168 = __chkstk_darwin(v166);
  v451 = &v357 - v169;
  v170 = __chkstk_darwin(v168);
  v461 = &v357 - v171;
  v172 = __chkstk_darwin(v170);
  v466 = &v357 - v173;
  v174 = __chkstk_darwin(v172);
  v471 = &v357 - v175;
  v176 = __chkstk_darwin(v174);
  v476 = &v357 - v177;
  v178 = __chkstk_darwin(v176);
  v481 = &v357 - v179;
  v180 = __chkstk_darwin(v178);
  v492 = &v357 - v181;
  v182 = __chkstk_darwin(v180);
  v487 = &v357 - v183;
  v184 = __chkstk_darwin(v182);
  v486 = &v357 - v185;
  v186 = __chkstk_darwin(v184);
  v493 = &v357 - v187;
  v188 = __chkstk_darwin(v186);
  v497 = &v357 - v189;
  v190 = __chkstk_darwin(v188);
  v504 = &v357 - v191;
  v192 = __chkstk_darwin(v190);
  v194 = &v357 - v193;
  v195 = __chkstk_darwin(v192);
  v197 = &v357 - v196;
  __chkstk_darwin(v195);
  v199 = &v357 - v198;
  v200 = sub_1000C3694();
  v201 = *(v200 - 8);
  __chkstk_darwin(v200);
  v203 = &v357 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1000C3A34();
  v205 = *(v204 - 8);
  v206 = __chkstk_darwin(v204);
  v358 = &v357 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v206);
  v209 = &v357 - v208;
  sub_1000C1654();
  (*(v205 + 16))(v209, v524, v204);
  v210 = (*(v205 + 88))(v209, v204);
  if (v210 == enum case for LinkPresentation.SpecializationMetadata.songMetadata(_:))
  {
    (*(v205 + 96))(v209, v204);
    (*(v201 + 32))(v203, v209, v200);
    v211 = v521;
    sub_1000C3684();
    v212 = v522;
    v213 = v523;
    if ((*(v522 + 48))(v211, 1, v523) == 1)
    {
      (*(v201 + 8))(v203, v200);
      return sub_100018F90(v211, &qword_1000FC838, &qword_1000CAEB8);
    }

    else
    {
      (*(v212 + 32))(v199, v211, v213);
      v221 = sub_1000C37F4();
      sub_1000C1624(v221);
      (*(v212 + 8))(v199, v213);
      return (*(v201 + 8))(v203, v200);
    }
  }

  v215 = v522;
  v216 = v523;
  if (v210 == enum case for LinkPresentation.SpecializationMetadata.albumMetadata(_:))
  {
    (*(v205 + 96))(v209, v204);
    v218 = v518;
    v217 = v519;
    v219 = v520;
    (*(v519 + 32))(v518, v209, v520);
    v220 = v517;
    sub_1000C36A4();
    if ((*(v215 + 48))(v220, 1, v216) != 1)
    {
      (*(v215 + 32))(v197, v220, v216);
      v225 = sub_1000C37F4();
      sub_1000C1624(v225);
      (*(v215 + 8))(v197, v216);
      return (*(v217 + 8))(v218, v219);
    }

    (*(v217 + 8))(v218, v219);
    return sub_100018F90(v220, &qword_1000FC838, &qword_1000CAEB8);
  }

  if (v210 == enum case for LinkPresentation.SpecializationMetadata.musicVideoMetadata(_:))
  {
    (*(v205 + 96))(v209, v204);
    v223 = v514;
    v222 = v515;
    v224 = v516;
    (*(v515 + 32))(v514, v209, v516);
    v220 = v513;
    sub_1000C38D4();
    if ((*(v215 + 48))(v220, 1, v216) != 1)
    {
      (*(v215 + 32))(v194, v220, v216);
      v231 = sub_1000C37F4();
      sub_1000C1624(v231);
      (*(v215 + 8))(v194, v216);
      return (*(v222 + 8))(v223, v224);
    }

    (*(v222 + 8))(v223, v224);
    return sub_100018F90(v220, &qword_1000FC838, &qword_1000CAEB8);
  }

  if (v210 == enum case for LinkPresentation.SpecializationMetadata.artistMetadata(_:))
  {
    (*(v205 + 96))(v209, v204);
    v227 = v510;
    v226 = v511;
    v228 = v512;
    (*(v511 + 32))(v510, v209, v512);
    v229 = v509;
    sub_1000C3714();
    v230 = v215;
    if ((*(v215 + 48))(v229, 1, v216) == 1)
    {
      (*(v226 + 8))(v227, v228);
      return sub_100018F90(v229, &qword_1000FC838, &qword_1000CAEB8);
    }

    v237 = *(v215 + 32);
    v238 = v504;
    v237(v504, v229, v216);
    v239 = sub_1000C37F4();
    sub_1000C1624(v239);
    (*(v230 + 8))(v238, v216);
    return (*(v226 + 8))(v227, v228);
  }

  if (v210 == enum case for LinkPresentation.SpecializationMetadata.playlistMetadata(_:))
  {
    (*(v205 + 96))(v209, v204);
    v233 = v506;
    v232 = v507;
    v234 = v508;
    (*(v507 + 32))(v506, v209, v508);
    v235 = v505;
    sub_1000C3814();
    v236 = v215;
    if ((*(v215 + 48))(v235, 1, v216) == 1)
    {
LABEL_19:
      (*(v232 + 8))(v233, v234);
      return sub_100018F90(v235, &qword_1000FC838, &qword_1000CAEB8);
    }

    v241 = *(v215 + 32);
    v242 = &v527;
LABEL_26:
    v243 = *(v242 - 32);
    v241(v243, v235, v216);
    v244 = sub_1000C37F4();
    sub_1000C1624(v244);
    (*(v236 + 8))(v243, v216);
    return (*(v232 + 8))(v233, v234);
  }

  if (v210 == enum case for LinkPresentation.SpecializationMetadata.radioMetadata(_:))
  {
    (*(v205 + 96))(v209, v204);
    v226 = v500;
    v227 = v499;
    v228 = v501;
    (*(v500 + 32))(v499, v209, v501);
    v220 = v498;
    sub_1000C36F4();
    v240 = v215;
    if ((*(v215 + 48))(v220, 1, v216) == 1)
    {
      (*(v226 + 8))(v227, v228);
      return sub_100018F90(v220, &qword_1000FC838, &qword_1000CAEB8);
    }

    v248 = *(v215 + 32);
    v249 = v493;
    v248(v493, v220, v216);
    v250 = sub_1000C37F4();
    sub_1000C1624(v250);
    (*(v240 + 8))(v249, v216);
    return (*(v226 + 8))(v227, v228);
  }

  if (v210 != enum case for LinkPresentation.SpecializationMetadata.softwareMetadata(_:))
  {
    if (v210 == enum case for LinkPresentation.SpecializationMetadata.bookMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v490;
      v233 = v489;
      v234 = v491;
      (*(v490 + 32))(v489, v209, v491);
      v235 = v488;
      sub_1000C3634();
      v236 = v215;
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v241 = *(v215 + 32);
      v242 = &v513;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.audioBookMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v484;
      v233 = v483;
      v234 = v485;
      (*(v484 + 32))(v483, v209, v485);
      v235 = v482;
      sub_1000C3894();
      v236 = v215;
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v241 = *(v215 + 32);
      v242 = &v508;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.podcastEpisodeMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v479;
      v233 = v478;
      v234 = v480;
      (*(v479 + 32))(v478, v209, v480);
      v235 = v477;
      sub_1000C3A14();
      v236 = v215;
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v241 = *(v215 + 32);
      v242 = &v503;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.podcastMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v474;
      v233 = v473;
      v234 = v475;
      (*(v474 + 32))(v473, v209, v475);
      v235 = v472;
      sub_1000C37D4();
      v236 = v215;
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v241 = *(v215 + 32);
      v242 = &v498;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.tvEpisodeMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v469;
      v233 = v468;
      v234 = v470;
      (*(v469 + 32))(v468, v209, v470);
      v235 = v467;
      sub_1000C38B4();
      v236 = v215;
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v241 = *(v215 + 32);
      v242 = &v493;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.tvSeasonMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v464;
      v233 = v463;
      v234 = v465;
      (*(v464 + 32))(v463, v209, v465);
      v235 = v462;
      sub_1000C3874();
      v236 = v215;
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v241 = *(v215 + 32);
      v242 = &v483;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.tvShowMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      v232 = v456;
      v233 = v455;
      v234 = v457;
      (*(v456 + 32))(v455, v209, v457);
      v235 = v452;
      sub_1000C3754();
      if ((*(v215 + 48))(v235, 1, v216) == 1)
      {
        goto LABEL_19;
      }

      v236 = v215;
      v241 = *(v215 + 32);
      v242 = &v478;
      goto LABEL_26;
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.movieMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v458 + 32))(v460, v209, v459);
      v268 = v453;
      sub_1000C36C4();
      v269 = *(v215 + 48);
      if (v269(v268, 1, v216) == 1)
      {
        sub_100018F90(v453, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v272 = v439;
        (*(v215 + 32))(v439, v453, v216);
        v273 = sub_1000C37F4();
        sub_1000C1624(v273);
        (*(v215 + 8))(v272, v216);
      }

      v274 = v454;
      sub_1000C36D4();
      if (v269(v274, 1, v216) != 1)
      {
        v277 = v440;
        (*(v215 + 32))(v440, v454, v216);
        v278 = sub_1000C37F4();
        sub_1000C1624(v278);
        (*(v215 + 8))(v277, v216);
        return (*(v458 + 8))(v460, v459);
      }

      (*(v458 + 8))(v460, v459);
      v271 = &v486;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.movieBundleMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v449 + 32))(v448, v209, v450);
      v270 = v447;
      sub_1000C38F4();
      if ((*(v215 + 48))(v270, 1, v216) != 1)
      {
        v279 = v434;
        (*(v215 + 32))(v434, v447, v216);
        v280 = sub_1000C37F4();
        sub_1000C1624(v280);
        (*(v215 + 8))(v279, v216);
        return (*(v449 + 8))(v448, v450);
      }

      (*(v449 + 8))(v448, v450);
      v271 = &v479;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.cloudSharingMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v443 + 32))(v445, v209, v444);
      v275 = v441;
      sub_1000C3914();
      v276 = *(v215 + 48);
      if (v276(v275, 1, v216) == 1)
      {
        sub_100018F90(v441, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v282 = v426;
        (*(v215 + 32))(v426, v441, v216);
        v283 = sub_1000C37F4();
        sub_1000C1624(v283);
        (*(v215 + 8))(v282, v216);
      }

      v284 = v442;
      sub_1000C3924();
      if (v276(v284, 1, v216) != 1)
      {
        v287 = v427;
        (*(v215 + 32))(v427, v442, v216);
        v288 = sub_1000C37F4();
        sub_1000C1624(v288);
        (*(v215 + 8))(v287, v216);
        return (*(v443 + 8))(v445, v444);
      }

      (*(v443 + 8))(v445, v444);
      v271 = &v474;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.cloudFamilyInvitationMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v437 + 32))(v436, v209, v438);
      v281 = v435;
      sub_1000C3A74();
      if ((*(v215 + 48))(v281, 1, v216) != 1)
      {
        v289 = v418;
        (*(v215 + 32))(v418, v435, v216);
        v290 = sub_1000C37F4();
        sub_1000C1624(v290);
        (*(v215 + 8))(v289, v216);
        return (*(v437 + 8))(v436, v438);
      }

      (*(v437 + 8))(v436, v438);
      v271 = &v467;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.gameCenterInvitationMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v430 + 32))(v433, v209, v431);
      v285 = v428;
      sub_1000C3A54();
      v286 = *(v215 + 48);
      if (v286(v285, 1, v216) == 1)
      {
        sub_100018F90(v428, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v293 = v410;
        (*(v215 + 32))(v410, v428, v216);
        v294 = sub_1000C37F4();
        sub_1000C1624(v294);
        (*(v215 + 8))(v293, v216);
      }

      v295 = v429;
      sub_1000C3A44();
      if (v286(v295, 1, v216) != 1)
      {
        v298 = v411;
        (*(v215 + 32))(v411, v429, v216);
        v299 = sub_1000C37F4();
        sub_1000C1624(v299);
        (*(v215 + 8))(v298, v216);
        return (*(v430 + 8))(v433, v431);
      }

      (*(v430 + 8))(v433, v431);
      v271 = &v461;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.mapMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v423 + 32))(v432, v209, v424);
      v291 = v419;
      sub_1000C35E4();
      v292 = *(v215 + 48);
      if (v292(v291, 1, v216) == 1)
      {
        sub_100018F90(v419, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v300 = v402;
        (*(v215 + 32))(v402, v419, v216);
        v301 = sub_1000C37F4();
        sub_1000C1624(v301);
        (*(v215 + 8))(v300, v216);
      }

      v302 = v420;
      sub_1000C3604();
      if (v292(v302, 1, v216) == 1)
      {
        sub_100018F90(v420, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v304 = v403;
        (*(v215 + 32))(v403, v420, v216);
        v305 = sub_1000C37F4();
        sub_1000C1624(v305);
        (*(v215 + 8))(v304, v216);
      }

      v306 = v421;
      sub_1000C3614();
      if (v292(v306, 1, v216) == 1)
      {
        sub_100018F90(v421, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v307 = v404;
        (*(v215 + 32))(v404, v421, v216);
        v308 = sub_1000C37F4();
        sub_1000C1624(v308);
        (*(v215 + 8))(v307, v216);
      }

      v309 = v422;
      sub_1000C35F4();
      if (v292(v309, 1, v216) != 1)
      {
        v310 = v405;
        (*(v215 + 32))(v405, v422, v216);
        v311 = sub_1000C37F4();
        sub_1000C1624(v311);
        (*(v215 + 8))(v310, v216);
        return (*(v423 + 8))(v432, v424);
      }

      (*(v423 + 8))(v432, v424);
      v271 = &v454;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.mapCollectionMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v416 + 32))(v425, v209, v417);
      v296 = v412;
      sub_1000C39D4();
      v297 = *(v215 + 48);
      if (v297(v296, 1, v216) == 1)
      {
        sub_100018F90(v412, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v312 = v393;
        (*(v215 + 32))(v393, v412, v216);
        v313 = sub_1000C37F4();
        sub_1000C1624(v313);
        (*(v215 + 8))(v312, v216);
      }

      v314 = v413;
      sub_1000C39E4();
      if (v297(v314, 1, v216) == 1)
      {
        sub_100018F90(v413, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v317 = v394;
        (*(v215 + 32))(v394, v413, v216);
        v318 = sub_1000C37F4();
        sub_1000C1624(v318);
        (*(v215 + 8))(v317, v216);
      }

      v319 = v414;
      sub_1000C39F4();
      if (v297(v319, 1, v216) == 1)
      {
        sub_100018F90(v414, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v320 = v395;
        (*(v215 + 32))(v395, v414, v216);
        v321 = sub_1000C37F4();
        sub_1000C1624(v321);
        (*(v215 + 8))(v320, v216);
      }

      v322 = v415;
      sub_1000C39C4();
      if (v297(v322, 1, v216) != 1)
      {
        v323 = v396;
        (*(v215 + 32))(v396, v415, v216);
        v324 = sub_1000C37F4();
        sub_1000C1624(v324);
        (*(v215 + 8))(v323, v216);
        return (*(v416 + 8))(v425, v417);
      }

      (*(v416 + 8))(v425, v417);
      v271 = &v447;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.mapCollectionPublisherMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v408 + 32))(v407, v209, v409);
      v303 = v406;
      sub_1000C3A94();
      if ((*(v215 + 48))(v303, 1, v216) != 1)
      {
        v325 = v392;
        (*(v215 + 32))(v392, v406, v216);
        v326 = sub_1000C37F4();
        sub_1000C1624(v326);
        (*(v215 + 8))(v325, v216);
        return (*(v408 + 8))(v407, v409);
      }

      (*(v408 + 8))(v407, v409);
      v271 = &v438;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.fileMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v400 + 32))(v399, v209, v401);
      v315 = v397;
      sub_1000C3664();
      v316 = *(v215 + 48);
      if (v316(v315, 1, v216) == 1)
      {
        sub_100018F90(v397, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v327 = v359;
        (*(v215 + 32))(v359, v397, v216);
        v328 = sub_1000C37F4();
        sub_1000C1624(v328);
        (*(v215 + 8))(v327, v216);
      }

      v329 = v398;
      sub_1000C3654();
      if (v316(v329, 1, v216) != 1)
      {
        v331 = v363;
        (*(v215 + 32))(v363, v398, v216);
        v332 = sub_1000C37F4();
        sub_1000C1624(v332);
        (*(v215 + 8))(v331, v216);
        return (*(v400 + 8))(v399, v401);
      }

      (*(v400 + 8))(v399, v401);
      v271 = &v430;
      return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.appleNewsMetadata(_:))
    {
      return (*(v205 + 8))(v209, v204);
    }

    if (v210 == enum case for LinkPresentation.SpecializationMetadata.stocksMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v374 + 32))(v373, v209, v375);
      v330 = v367;
      sub_1000C3734();
      if ((*(v215 + 48))(v330, 1, v216) != 1)
      {
        v334 = v360;
        (*(v215 + 32))(v360, v367, v216);
        v335 = sub_1000C37F4();
        sub_1000C1624(v335);
        (*(v215 + 8))(v334, v216);
        return (*(v374 + 8))(v373, v375);
      }

      (*(v374 + 8))(v373, v375);
      v271 = &v399;
    }

    else if (v210 == enum case for LinkPresentation.SpecializationMetadata.appleTVMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v377 + 32))(v376, v209, v378);
      v333 = v368;
      sub_1000C3774();
      if ((*(v215 + 48))(v333, 1, v216) != 1)
      {
        v337 = v361;
        (*(v215 + 32))(v361, v368, v216);
        v338 = sub_1000C37F4();
        sub_1000C1624(v338);
        (*(v215 + 8))(v337, v216);
        return (*(v377 + 8))(v376, v378);
      }

      (*(v377 + 8))(v376, v378);
      v271 = &v400;
    }

    else if (v210 == enum case for LinkPresentation.SpecializationMetadata.photosMomentMetadata(_:))
    {
      (*(v205 + 96))(v209, v204);
      (*(v380 + 32))(v379, v209, v381);
      v336 = v369;
      sub_1000C3974();
      if ((*(v215 + 48))(v336, 1, v216) != 1)
      {
        v341 = v362;
        (*(v215 + 32))(v362, v369, v216);
        v342 = sub_1000C37F4();
        sub_1000C1624(v342);
        (*(v215 + 8))(v341, v216);
        return (*(v380 + 8))(v379, v381);
      }

      (*(v380 + 8))(v379, v381);
      v271 = &v401;
    }

    else
    {
      if (v210 == enum case for LinkPresentation.SpecializationMetadata.photosStatusMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.photosSharedLibraryInvitationMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.businessChatMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.walletPassMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.appStoreStoryMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.summarizedLinkMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.faceTimeInviteMetadata(_:) || v210 == enum case for LinkPresentation.SpecializationMetadata.passwordsInviteMetadata(_:))
      {
        return (*(v205 + 8))(v209, v204);
      }

      if (v210 != enum case for LinkPresentation.SpecializationMetadata.gameActivityMetadata(_:))
      {
        if (v210 == enum case for LinkPresentation.SpecializationMetadata.sharedObjectMetadata(_:))
        {
          (*(v205 + 96))(v209, v204);
          v343 = swift_projectBox();
          (*(v385 + 16))(v383, v343, v386);
          v344 = v371;
          sub_1000C39A4();
          if ((*(v215 + 48))(v344, 1, v216) == 1)
          {
            sub_100018F90(v371, &qword_1000FC838, &qword_1000CAEB8);
          }

          else
          {
            v352 = v365;
            (*(v215 + 32))(v365, v371, v216);
            v353 = sub_1000C37F4();
            sub_1000C1624(v353);
            (*(v215 + 8))(v352, v216);
          }

          v354 = v382;
          sub_1000C3994();
          if ((*(v205 + 48))(v354, 1, v204) == 1)
          {
            (*(v385 + 8))(v383, v386);
            sub_100018F90(v382, &qword_1000FC830, &qword_1000CAEB0);
          }

          else
          {
            (*(v205 + 32))(v358, v382, v204);
            v355 = v525;
            sub_10003B9C0(v384);
            v525 = v355;
            if (v355)
            {
              (*(v205 + 8))(v358, v204);
              (*(v385 + 8))(v383, v386);
              (*(v390 + 8))(v526, v391);
            }

            else
            {
              v356 = v384;
              sub_1000C1644();
              (*(v390 + 8))(v356, v391);
              (*(v205 + 8))(v358, v204);
              (*(v385 + 8))(v383, v386);
            }
          }
        }

        sub_1000422BC();
        v348 = swift_allocError();
        *v349 = 0;
        *(v349 + 8) = 0;
        *(v349 + 16) = 1;
        v525 = v348;
        swift_willThrow();
        (*(v390 + 8))(v526, v391);
        return (*(v205 + 8))(v209, v204);
      }

      (*(v205 + 96))(v209, v204);
      (*(v388 + 32))(v387, v209, v389);
      v339 = v370;
      sub_1000C3944();
      v340 = *(v215 + 48);
      if (v340(v339, 1, v216) == 1)
      {
        sub_100018F90(v370, &qword_1000FC838, &qword_1000CAEB8);
      }

      else
      {
        v345 = v364;
        (*(v215 + 32))(v364, v370, v216);
        v346 = sub_1000C37F4();
        sub_1000C1624(v346);
        (*(v215 + 8))(v345, v216);
      }

      v347 = v372;
      sub_1000C3954();
      if (v340(v347, 1, v216) != 1)
      {
        v350 = v366;
        (*(v215 + 32))(v366, v372, v216);
        v351 = sub_1000C37F4();
        sub_1000C1624(v351);
        (*(v215 + 8))(v350, v216);
        return (*(v388 + 8))(v387, v389);
      }

      (*(v388 + 8))(v387, v389);
      v271 = &v404;
    }

    return sub_100018F90(*(v271 - 32), &qword_1000FC838, &qword_1000CAEB8);
  }

  (*(v205 + 96))(v209, v204);
  v245 = v496;
  (*(v502 + 32))(v496, v209, v503);
  v246 = v494;
  sub_1000C3854();
  v247 = *(v215 + 48);
  if ((v247)(v246, 1, v216) == 1)
  {
    sub_100018F90(v246, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    v251 = *(v215 + 32);
    v524 = v247;
    v252 = v486;
    v251(v486, v246, v216);
    v253 = sub_1000C37F4();
    sub_1000C1624(v253);
    v254 = v252;
    v247 = v524;
    (*(v215 + 8))(v254, v216);
  }

  v255 = v495;
  sub_1000C3844();
  if ((v247)(v255, 1, v216) == 1)
  {
    sub_100018F90(v255, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    v256 = v487;
    (*(v215 + 32))(v487, v255, v216);
    v257 = sub_1000C37F4();
    sub_1000C1624(v257);
    (*(v215 + 8))(v256, v216);
  }

  v258 = sub_1000C3834();
  if (v258)
  {
    v524 = v258;
    v259 = *(v258 + 16);
    v260 = v492;
    if (v259)
    {
      v262 = v215 + 16;
      v261 = *(v215 + 16);
      v263 = &v524[(*(v262 + 64) + 32) & ~*(v262 + 64)];
      v264 = *(v262 + 56);
      do
      {
        v261(v260, v263, v216);
        v265 = sub_1000C37F4();
        (*(v262 - 8))(v260, v216);
        sub_1000C1624(v265);
        v263 += v264;
        --v259;
      }

      while (v259);
    }

    v266 = *(v502 + 8);
    v267 = v496;
  }

  else
  {
    v266 = *(v502 + 8);
    v267 = v245;
  }

  return v266(v267, v503);
}

uint64_t sub_100040238@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C1664();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000124CC(&qword_1000FC830, &qword_1000CAEB0);
  __chkstk_darwin(v4 - 8);
  v74 = &v63 - v5;
  v6 = sub_1000C3A34();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FC838, &qword_1000CAEB8);
  v9 = __chkstk_darwin(v8 - 8);
  v73 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  v13 = sub_1000C3804();
  v76 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v71 = &v63 - v17;
  v18 = __chkstk_darwin(v16);
  v67 = &v63 - v19;
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = sub_1000124CC(&qword_1000FC410, &unk_1000CAEC0);
  __chkstk_darwin(v22 - 8);
  v24 = &v63 - v23;
  v25 = sub_1000C35D4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  sub_1000C1654();
  sub_1000C3794();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_100018F90(v24, &qword_1000FC410, &unk_1000CAEC0);
  }

  v64 = v26;
  v65 = v25;
  (*(v26 + 32))(v28, v24, v25);
  v75 = v28;
  sub_1000C35B4();
  v30 = v76;
  v66 = *(v76 + 48);
  if (v66(v12, 1, v13) == 1)
  {
    sub_100018F90(v12, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    (*(v30 + 32))(v21, v12, v13);
    v33 = sub_1000C37F4();
    sub_1000C1624(v33);
    (*(v30 + 8))(v21, v13);
  }

  v31 = v80;
  v32 = v78;
  v34 = v73;
  v35 = v75;
  sub_1000C35C4();
  v36 = v66(v34, 1, v13);
  v66 = v13;
  if (v36 == 1)
  {
    sub_100018F90(v34, &qword_1000FC838, &qword_1000CAEB8);
  }

  else
  {
    v37 = v67;
    (*(v30 + 32))(v67, v34, v13);
    v38 = sub_1000C37F4();
    sub_1000C1624(v38);
    (*(v30 + 8))(v37, v13);
  }

  v39 = v77;
  v40 = sub_1000C35A4();
  v41 = v79;
  if (v40)
  {
    v73 = v40;
    v42 = *(v40 + 16);
    v43 = v66;
    v44 = v71;
    if (v42)
    {
      v45 = *(v76 + 16);
      v46 = &v73[(*(v76 + 80) + 32) & ~*(v76 + 80)];
      v47 = *(v76 + 72);
      v48 = (v76 + 8);
      do
      {
        v45(v44, v46, v43);
        v49 = sub_1000C37F4();
        (*v48)(v44, v43);
        sub_1000C1624(v49);
        v46 += v47;
        --v42;
      }

      while (v42);
    }

    v41 = v79;
    v31 = v80;
    v39 = v77;
    v32 = v78;
    v35 = v75;
  }

  v50 = sub_1000C3584();
  if (v50)
  {
    v73 = v50;
    v51 = *(v50 + 16);
    v52 = v72;
    v53 = v66;
    if (v51)
    {
      v54 = *(v76 + 16);
      v55 = &v73[(*(v76 + 80) + 32) & ~*(v76 + 80)];
      v56 = *(v76 + 72);
      v57 = (v76 + 8);
      do
      {
        v54(v52, v55, v53);
        v58 = sub_1000C37F4();
        (*v57)(v52, v53);
        sub_1000C1624(v58);
        v55 += v56;
        --v51;
      }

      while (v51);
    }

    v41 = v79;
    v31 = v80;
    v39 = v77;
    v32 = v78;
    v35 = v75;
  }

  v59 = v74;
  sub_1000C3594();
  v60 = (*(v32 + 48))(v59, 1, v41);
  v61 = v81;
  if (v60 == 1)
  {
    (*(v64 + 8))(v35, v65);
    return sub_100018F90(v59, &qword_1000FC830, &qword_1000CAEB0);
  }

  else
  {
    (*(v32 + 32))(v39, v59, v41);
    v62 = v68;
    sub_10003B9C0(v68);
    if (v31)
    {
      (*(v32 + 8))(v39, v41);
      (*(v64 + 8))(v35, v65);
      return (*(v69 + 8))(v61, v70);
    }

    else
    {
      sub_1000C1644();
      (*(v69 + 8))(v62, v70);
      (*(v32 + 8))(v39, v41);
      return (*(v64 + 8))(v35, v65);
    }
  }
}

void sub_100040A6C()
{
  v0 = sub_1000C3E74();
  sub_100042258(v0, qword_1000FC808);
  v1 = sub_100042220(v0, qword_1000FC808);
  sub_100040AB8(v1);
}

void sub_100040AB8(uint64_t a1@<X8>)
{
  v15[0] = a1;
  v1 = sub_1000C3E44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C3E94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(NSKeyedArchiver);
  v10 = [v9 initRequiringSecureCoding:{1, v15[0]}];
  [v10 encodeObject:0];
  v11 = [v10 encodedData];
  v12 = sub_1000C1564();
  v14 = v13;

  sub_100018C68(v12, v14);
  sub_1000C3E84();
  (*(v6 + 16))(v4, v8, v5);
  (*(v2 + 104))(v4, enum case for EncodedAttachments.EncodedContent.other(_:), v1);
  sub_1000C3E64();
  (*(v6 + 8))(v8, v5);
  sub_100018CD0(v12, v14);
}

uint64_t sub_100040D2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a2;
  v76 = a1;
  v65 = a4;
  v5 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v5 - 8);
  v70 = &v61 - v6;
  v7 = sub_1000C4FC4();
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C27A4();
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000C3E74();
  *&v81 = *(v79 - 1);
  __chkstk_darwin(v79);
  v80 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C3EA4();
  __chkstk_darwin(v12 - 8);
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C1664();
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C37C4();
  v74 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v75 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v61 - v20;
  v22 = sub_1000C1A94();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4C14();
  v26 = sub_1000C1A84();
  v27 = sub_1000C5514();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v69 = v21;
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Going through new LinkPresentation unpacking flow.", v28, 2u);
    v21 = v69;
  }

  (*(v23 + 8))(v25, v22);
  sub_100018C68(v76, v77);
  v29 = v75;
  v30 = v78;
  sub_1000C37A4();
  if (v30)
  {
    sub_100014F70();
    v31 = sub_1000C56C4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v32 = swift_allocObject();
    v81 = xmmword_1000C94D0;
    *(v32 + 16) = xmmword_1000C94D0;
    v82 = v30;
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v33 = sub_1000C4A84();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    v80 = sub_100014FBC();
    *(v32 + 64) = v80;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v36 = sub_1000C5554();
    sub_1000C1A44("LinkPresentationUnpacker unpacking error: %{public}@", 52, 2, &_mh_execute_header, v31, v36, v32);

    swift_errorRetain();
    v37 = v71;
    sub_1000C4FD4();
    v38 = sub_1000C56C4();
    v39 = swift_allocObject();
    *(v39 + 16) = v81;
    *&v81 = v30;
    v40 = v72;
    v41 = v73;
    v79 = *(v72 + 16);
    v42 = v70;
    v79(v70, v37, v73);
    (*(v40 + 56))(v42, 0, 1, v41);
    v43 = sub_1000C4A84();
    v45 = v44;
    sub_100018F90(v42, &qword_1000FC438, &unk_1000C9DC0);
    v46 = v80;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v46;
    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    v47 = sub_1000C5554();
    sub_1000C1A44("LinkPresentationUnpacker explosion: %{public}@", 46, 2, &_mh_execute_header, v38, v47, v39);

    sub_100018BFC();
    swift_allocError();
    v79(v48, v37, v41);
    swift_willThrow();

    return (*(v40 + 8))(v37, v41);
  }

  else
  {
    (*(v74 + 32))(v21, v29, v17);
    sub_100040238(v16);
    v78 = v16;
    v50 = *(a3 + 16);
    if (v50)
    {
      v69 = v21;
      v82 = _swiftEmptyArrayStorage;
      sub_100045990(0, v50, 0);
      v51 = 0;
      v52 = v82;
      v77 = v81 + 32;
      v53 = (a3 + 40);
      v54 = v80;
      do
      {
        v55 = *(v53 - 1);
        v56 = *v53;
        sub_100018C68(v55, *v53);
        sub_10004168C(v51, v55, v56, v54);
        sub_100018CD0(v55, v56);
        v82 = v52;
        v58 = *(v52 + 2);
        v57 = *(v52 + 3);
        if (v58 >= v57 >> 1)
        {
          sub_100045990((v57 > 1), v58 + 1, 1);
          v52 = v82;
        }

        ++v51;
        v53 += 2;
        *(v52 + 2) = v58 + 1;
        v54 = v80;
        (*(v81 + 32))(&v52[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v58], v80, v79);
      }

      while (v50 != v51);
      v21 = v69;
    }

    sub_1000C3E54();
    v59 = v17;
    v60 = v62;
    (*(v74 + 16))(v62, v21, v59);
    (*(v63 + 104))(v60, enum case for BalloonPlugin.Payload.linkPresentation(_:), v64);
    sub_1000C4474();
    (*(v74 + 8))(v21, v59);
    return (*(v67 + 8))(v78, v68);
  }
}

uint64_t sub_10004168C@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v7 = sub_1000C3E94();
  v70 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C3E44();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v61 - v14;
  v63 = sub_1000C3E74();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v67 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C3E34();
  v65 = *(v16 - 8);
  v66 = v16;
  __chkstk_darwin(v16);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = sub_1000C4D84();
  v75 = *(v21 - 8);
  v76 = v21;
  v22 = __chkstk_darwin(v21);
  v68 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v78 = &v61 - v24;
  v74 = a1;
  LOBYTE(a1) = sub_1000C1634(a1);
  v25 = sub_1000C5514();
  v77 = sub_100014F70();
  v26 = sub_1000C56B4();
  v27 = v26;
  if (a1)
  {
    v28 = v84;
    v29 = a2;
    if (os_log_type_enabled(v26, v25))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v27, v25, "%ld should be an image, assessing type", v30, 0xCu);
    }

    *(&v82 + 1) = &type metadata for Data;
    v83 = &protocol witness table for Data;
    *&v81 = a2;
    *(&v81 + 1) = a3;
    v31 = sub_1000C4D54();
    (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
    sub_100018C68(a2, a3);
    v32 = v78;
    sub_1000C4D64();
    sub_1000C4D74();
    sub_10001530C(&v81, *(&v82 + 1));
    sub_1000C2834();
    if (v28)
    {
      (*(v75 + 8))(v32, v76);
      return sub_100015F68(&v81);
    }

    else
    {
      v36 = v80;
      v37 = v75;
      if (v80)
      {
        v38 = v79;
        sub_100015F68(&v81);
        v39 = sub_1000C5514();
        v40 = sub_1000C56B4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1000C94D0;
        *(v41 + 56) = &type metadata for String;
        *(v41 + 64) = sub_100014FBC();
        *(v41 + 32) = v38;
        *(v41 + 40) = v36;

        sub_1000C1A54(v39, &_mh_execute_header, v40, "Handling image attachments with type: %s", v61);

        v42 = v78;

        v43 = v76;
        (*(v37 + 16))(v68, v42, v76);
        v44 = v69;
        sub_1000C3E24();
        v46 = v65;
        v45 = v66;
        v47 = v64;
        (*(v65 + 16))(v64, v44, v66);
        (*(v72 + 104))(v47, enum case for EncodedAttachments.EncodedContent.astc(_:), v73);
        v48 = v67;
        sub_1000C3E64();
        v55 = sub_1000C5514();
        v56 = sub_1000C56B4();
        sub_1000C1A54(v55, &_mh_execute_header, v56, "Encoded plugin attachment as astc.", 34, 2, _swiftEmptyArrayStorage);

        (*(v46 + 8))(v69, v45);
        (*(v37 + 8))(v42, v43);
        return (*(v62 + 32))(v71, v48, v63);
      }

      else
      {
        sub_100015F68(&v81);
        v49 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100018C68(v29, a3);
        v50 = sub_100046284(v29, a3);
        sub_100018CD0(v29, a3);
        if ([v50 decodeObject])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();

          sub_100018F90(&v81, &qword_1000FC828, &qword_1000CF790);
          v51 = sub_1000C5974();
          swift_allocError();
          v53 = v52;
          sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1000C94D0;
          *(v54 + 56) = &type metadata for MessageDictionary.CodingKeys;
          *(v54 + 64) = sub_1000421CC();
          *(v54 + 32) = 22;
          *&v81 = 0;
          *(&v81 + 1) = 0xE000000000000000;
          sub_1000C5944(56);
          v85._object = 0x80000001000D5F60;
          v85._countAndFlagsBits = 0xD000000000000035;
          sub_1000C52E4(v85);
          v79 = v74;
          v86._countAndFlagsBits = sub_1000C5BE4();
          sub_1000C52E4(v86);

          v87._countAndFlagsBits = 41;
          v87._object = 0xE100000000000000;
          sub_1000C52E4(v87);
          sub_1000C5964();
          (*(*(v51 - 8) + 104))(v53, enum case for DecodingError.dataCorrupted(_:), v51);
          swift_willThrow();
        }

        else
        {

          v81 = 0u;
          v82 = 0u;
          sub_100018F90(&v81, &qword_1000FC828, &qword_1000CF790);
          v57 = sub_1000C5514();
          v58 = sub_1000C56B4();
          sub_1000C1A54(v57, &_mh_execute_header, v58, "Encoded plugin attachment as null-archived data.", 48, 2, _swiftEmptyArrayStorage);

          if (qword_1000FC008 != -1)
          {
            swift_once();
          }

          v59 = v63;
          v60 = sub_100042220(v63, qword_1000FC808);
          (*(v62 + 16))(v71, v60, v59);
        }

        return (*(v37 + 8))(v32, v76);
      }
    }
  }

  else
  {
    sub_1000C1A54(v25, &_mh_execute_header, v26, "Encoded plugin attachment as raw data.", 38, 2, _swiftEmptyArrayStorage);

    sub_100018C68(a2, a3);
    v34 = v84;
    result = sub_1000C3E84();
    if (!v34)
    {
      v35 = v70;
      (*(v70 + 16))(v13, v9, v7);
      (*(v72 + 104))(v13, enum case for EncodedAttachments.EncodedContent.other(_:), v73);
      sub_1000C3E64();
      return (*(v35 + 8))(v9, v7);
    }
  }

  return result;
}

uint64_t sub_100042178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C5574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000421CC()
{
  result = qword_1000FC820;
  if (!qword_1000FC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC820);
  }

  return result;
}

uint64_t sub_100042220(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100042258(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000422BC()
{
  result = qword_1000FC840;
  if (!qword_1000FC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC840);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LinkPresentationUnpackerError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkPresentationUnpackerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkPresentationUnpackerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100042374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100042390(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

__n128 sub_1000423C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000423D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100042430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100042494(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_1000124CC(&qword_1000FC870, &qword_1000CB048);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10001530C(a1, a1[3]);
  sub_100042D80();
  sub_1000C5D04();
  v15 = a2;
  v17 = 0;
  sub_1000124CC(&qword_1000FC858, &qword_1000CB040);
  sub_100042E28(&qword_1000FC878, sub_100042EA0, &protocol conformance descriptor for <A> [A]);
  sub_1000C5B44();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_100018C68(a3, v14);
    sub_100042EA0();
    sub_1000C5BB4();
    sub_100018CD0(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100042688@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100042B30(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000426D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616F6C7961705F5FLL;
  }

  else
  {
    v3 = 0x6863617474615F5FLL;
  }

  if (v2)
  {
    v4 = 0xEF5F5F73746E656DLL;
  }

  else
  {
    v4 = 0xEB000000005F5F64;
  }

  if (*a2)
  {
    v5 = 0x616F6C7961705F5FLL;
  }

  else
  {
    v5 = 0x6863617474615F5FLL;
  }

  if (*a2)
  {
    v6 = 0xEB000000005F5F64;
  }

  else
  {
    v6 = 0xEF5F5F73746E656DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_100042794()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_10004282C(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000428B0()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

void sub_100042944(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F14D0;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1000429A4(uint64_t *a1@<X8>)
{
  v2 = 0x6863617474615F5FLL;
  if (*v1)
  {
    v2 = 0x616F6C7961705F5FLL;
  }

  v3 = 0xEF5F5F73746E656DLL;
  if (*v1)
  {
    v3 = 0xEB000000005F5F64;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000429F8()
{
  if (*v0)
  {
    return 0x616F6C7961705F5FLL;
  }

  else
  {
    return 0x6863617474615F5FLL;
  }
}

void sub_100042A48(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F14D0;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_100042AB8(uint64_t a1)
{
  v2 = sub_100042D80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042AF4(uint64_t a1)
{
  v2 = sub_100042D80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042B30(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FC848, &qword_1000CB038);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_10001530C(a1, a1[3]);
  sub_100042D80();
  sub_1000C5CF4();
  if (v1)
  {
    v8 = 0;
    sub_100015F68(a1);
  }

  else
  {
    sub_1000124CC(&qword_1000FC858, &qword_1000CB040);
    v14 = 0;
    sub_100042E28(&qword_1000FC860, sub_100042DD4, &protocol conformance descriptor for <A> [A]);
    sub_1000C5A54();
    v8 = v12;
    v14 = 1;
    sub_100042DD4();
    sub_1000C5AC4();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_100018C68(v9, v10);
    sub_100015F68(a1);

    sub_100018CD0(v9, v10);
  }

  return v8;
}

unint64_t sub_100042D80()
{
  result = qword_1000FC850;
  if (!qword_1000FC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC850);
  }

  return result;
}

unint64_t sub_100042DD4()
{
  result = qword_1000FC868;
  if (!qword_1000FC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC868);
  }

  return result;
}

uint64_t sub_100042E28(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FC858, &qword_1000CB040);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100042EA0()
{
  result = qword_1000FC880;
  if (!qword_1000FC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC880);
  }

  return result;
}

unint64_t sub_100042F08()
{
  result = qword_1000FC888;
  if (!qword_1000FC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC888);
  }

  return result;
}

unint64_t sub_100042F60()
{
  result = qword_1000FC890;
  if (!qword_1000FC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC890);
  }

  return result;
}

unint64_t sub_100042FB8()
{
  result = qword_1000FC898;
  if (!qword_1000FC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC898);
  }

  return result;
}

Swift::Int sub_10004301C()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_100043070()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

void sub_1000430B4(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1520;
  v6._object = v3;
  v5 = sub_1000C59F4(v4, v6);

  *a2 = v5 != 0;
}

void sub_100043124(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1558;
  v7._object = a2;
  v6 = sub_1000C59F4(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_100043188(uint64_t a1)
{
  v2 = sub_100043498();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000431C4(uint64_t a1)
{
  v2 = sub_100043498();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100043200@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC8A0, &qword_1000CB238);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100043498();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v9 = sub_1000C5AB4();
  (*(v6 + 8))(v8, v5);
  result = sub_100015F68(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_100043360(void *a1)
{
  v2 = sub_1000124CC(&qword_1000FC8B0, &qword_1000CB240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10001530C(a1, a1[3]);
  sub_100043498();
  sub_1000C5D04();
  sub_1000C5BA4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100043498()
{
  result = qword_1000FC8A8;
  if (!qword_1000FC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8A8);
  }

  return result;
}

unint64_t sub_100043500()
{
  result = qword_1000FC8B8;
  if (!qword_1000FC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8B8);
  }

  return result;
}

unint64_t sub_100043558()
{
  result = qword_1000FC8C0;
  if (!qword_1000FC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8C0);
  }

  return result;
}

unint64_t sub_1000435B0()
{
  result = qword_1000FC8C8;
  if (!qword_1000FC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8C8);
  }

  return result;
}