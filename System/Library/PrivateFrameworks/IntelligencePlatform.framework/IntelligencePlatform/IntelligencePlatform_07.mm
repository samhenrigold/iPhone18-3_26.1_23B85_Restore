unint64_t sub_1ABB08064()
{
  result = qword_1EB4D23D8;
  if (!qword_1EB4D23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23D8);
  }

  return result;
}

unint64_t sub_1ABB080B8()
{
  result = qword_1EB4D23E0;
  if (!qword_1EB4D23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23E0);
  }

  return result;
}

unint64_t sub_1ABB0810C()
{
  result = qword_1EB4D23E8;
  if (!qword_1EB4D23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D23E8);
  }

  return result;
}

unint64_t sub_1ABB081A0()
{
  result = qword_1EB4CFBA0;
  if (!qword_1EB4CFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFBA0);
  }

  return result;
}

unint64_t sub_1ABB081F4()
{
  result = qword_1EB4CFBA8[0];
  if (!qword_1EB4CFBA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFBA8);
  }

  return result;
}

uint64_t sub_1ABB08288(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1ABB082DC()
{
  result = qword_1EB4D2418;
  if (!qword_1EB4D2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2418);
  }

  return result;
}

unint64_t sub_1ABB08330()
{
  result = qword_1EB4D2420;
  if (!qword_1EB4D2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2420);
  }

  return result;
}

unint64_t sub_1ABB08384()
{
  result = qword_1EB4D2428;
  if (!qword_1EB4D2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2428);
  }

  return result;
}

uint64_t sub_1ABB083E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB08424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABB0848C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB084CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

_BYTE *storeEnumTagSinglePayload for AssetRegistryOverrideError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryLookupError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB08734(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB087E4()
{
  result = qword_1EB4D2430;
  if (!qword_1EB4D2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2430);
  }

  return result;
}

unint64_t sub_1ABB0883C()
{
  result = qword_1EB4D2438;
  if (!qword_1EB4D2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2438);
  }

  return result;
}

unint64_t sub_1ABB08894()
{
  result = qword_1EB4D2440;
  if (!qword_1EB4D2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2440);
  }

  return result;
}

unint64_t sub_1ABB088EC()
{
  result = qword_1EB4D2448;
  if (!qword_1EB4D2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2448);
  }

  return result;
}

unint64_t sub_1ABB08944()
{
  result = qword_1EB4D2450;
  if (!qword_1EB4D2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2450);
  }

  return result;
}

unint64_t sub_1ABB0899C()
{
  result = qword_1EB4D2458;
  if (!qword_1EB4D2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2458);
  }

  return result;
}

unint64_t sub_1ABB089F4()
{
  result = qword_1EB4D2460;
  if (!qword_1EB4D2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2460);
  }

  return result;
}

unint64_t sub_1ABB08A4C()
{
  result = qword_1EB4D2468;
  if (!qword_1EB4D2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2468);
  }

  return result;
}

unint64_t sub_1ABB08AA4()
{
  result = qword_1EB4D2470;
  if (!qword_1EB4D2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2470);
  }

  return result;
}

unint64_t sub_1ABB08AFC()
{
  result = qword_1EB4D2478;
  if (!qword_1EB4D2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2478);
  }

  return result;
}

unint64_t sub_1ABB08B54()
{
  result = qword_1EB4D2480;
  if (!qword_1EB4D2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2480);
  }

  return result;
}

unint64_t sub_1ABB08BAC()
{
  result = qword_1EB4D2488;
  if (!qword_1EB4D2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2488);
  }

  return result;
}

unint64_t sub_1ABB08C04()
{
  result = qword_1EB4D2490;
  if (!qword_1EB4D2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2490);
  }

  return result;
}

unint64_t sub_1ABB08C5C()
{
  result = qword_1EB4D2498;
  if (!qword_1EB4D2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2498);
  }

  return result;
}

unint64_t sub_1ABB08CB4()
{
  result = qword_1EB4D24A0;
  if (!qword_1EB4D24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24A0);
  }

  return result;
}

unint64_t sub_1ABB08D0C()
{
  result = qword_1EB4D24A8;
  if (!qword_1EB4D24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24A8);
  }

  return result;
}

unint64_t sub_1ABB08D64()
{
  result = qword_1EB4D24B0;
  if (!qword_1EB4D24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24B0);
  }

  return result;
}

unint64_t sub_1ABB08DBC()
{
  result = qword_1EB4D24B8;
  if (!qword_1EB4D24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24B8);
  }

  return result;
}

unint64_t sub_1ABB08E14()
{
  result = qword_1EB4D24C0;
  if (!qword_1EB4D24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24C0);
  }

  return result;
}

unint64_t sub_1ABB08E6C()
{
  result = qword_1EB4D24C8;
  if (!qword_1EB4D24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24C8);
  }

  return result;
}

unint64_t sub_1ABB08EC4()
{
  result = qword_1EB4D24D0;
  if (!qword_1EB4D24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24D0);
  }

  return result;
}

unint64_t sub_1ABB08F1C()
{
  result = qword_1EB4D24D8;
  if (!qword_1EB4D24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24D8);
  }

  return result;
}

unint64_t sub_1ABB08F74()
{
  result = qword_1EB4D24E0;
  if (!qword_1EB4D24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24E0);
  }

  return result;
}

unint64_t sub_1ABB08FCC()
{
  result = qword_1EB4D24E8;
  if (!qword_1EB4D24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24E8);
  }

  return result;
}

unint64_t sub_1ABB09024()
{
  result = qword_1EB4D24F0;
  if (!qword_1EB4D24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24F0);
  }

  return result;
}

unint64_t sub_1ABB0907C()
{
  result = qword_1EB4D24F8;
  if (!qword_1EB4D24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D24F8);
  }

  return result;
}

unint64_t sub_1ABB090D4()
{
  result = qword_1EB4D2500;
  if (!qword_1EB4D2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2500);
  }

  return result;
}

uint64_t sub_1ABB0914C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (!*(a5 + 16) || (result = sub_1ABA94FC8(result, a2, a3, a4, a5, a6, a7, a8, v63, v66, v70, v74, v77, v80, v84, v85, v86, v87), (v11 & 1) == 0))
  {
    *a9 = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0;
    *(a9 + 40) = 1;
    return result;
  }

  v18 = *(a5 + 56) + 72 * result;
  v19 = *v18;
  v20 = *(v18 + 16);
  v21 = *(v18 + 32);
  *&v90[15] = *(v18 + 47);
  v89 = v20;
  *v90 = v21;
  v88 = v19;
  v22 = *(v18 + 64);
  v91 = *(v18 + 56);
  v23 = *(&v19 + 1);
  v24 = v19;
  v25 = *(&v20 + 1);
  v26 = v20;
  if (v90[18])
  {
    v27 = *&v90[8];

    sub_1ABA9A290(v28, v29, v30, v31, v32, v33, v34, v35, v64, *&v90[16], v89, v75, v78, v81);

    v36._countAndFlagsBits = v24;
    v36._object = v23;
    TrialNamespace.init(rawValue:)(v36);
    if (v82 == 9)
    {

      sub_1ABB03E8C();
      sub_1ABA7D104();
      swift_allocError();
      *v37 = v24;
      *(v37 + 8) = v23;
      *(v37 + 16) = 0;
LABEL_18:
      swift_willThrow();
      return sub_1ABB0A890(&v88);
    }

    v41 = sub_1ABF24D84();
    if (v41 >= 2)
    {

      sub_1ABB03E8C();
      sub_1ABA7D104();
      swift_allocError();
      *v58 = *v90;
      *(v58 + 8) = v27;
      *(v58 + 16) = 1;
      goto LABEL_18;
    }

    v42 = v41;

    result = sub_1ABB0A890(&v88);
    v43 = v42 | (v68 << 8) | 0x80;
    v23 = v72;
    v24 = v82;
    goto LABEL_25;
  }

  if (BYTE8(v89))
  {
    sub_1ABA9A290(result, v11, v12, v13, v14, v15, v16, v17, v64, v67, v71, 47, 0xE100000000000000, *(&v88 + 1));
    sub_1ABAAA4A0();
    sub_1ABAAA44C();

    v38 = sub_1ABF23B44();

    if (v38)
    {
      sub_1ABAFC69C();
      sub_1ABA7D104();
      v39 = swift_allocError();
      sub_1ABA8E0B8(v39, v40);
    }

    v24 &= 1u;
    result = sub_1ABF23B44();
    if (result)
    {
      sub_1ABAFC69C();
      sub_1ABA7D104();
      v52 = swift_allocError();
      sub_1ABA8E0B8(v52, v53);
      v54 = v24;
      v55 = v23;
      v56 = v26;
      v57 = 1;
LABEL_22:
      sub_1ABAF7FB8(v54, v55, v56, v57);
    }

    v43 = 1;
    v25 = v26;
  }

  else
  {
    v44 = sub_1ABA9A290(result, v11, v12, v13, v14, v15, v16, v17, v64, v67, v71, 47, 0xE100000000000000, v19);
    sub_1ABA9A290(v44, v45, v46, v47, v48, v49, v50, v51, v65, v69, v73, v76, v79, v83);
    sub_1ABAAA4A0();
    sub_1ABAAA44C();

    if ((sub_1ABF23B44() & 1) == 0)
    {

      sub_1ABAF8054();
      sub_1ABA7D104();
      v59 = swift_allocError();
      sub_1ABA8E0B8(v59, v60);
      sub_1ABB0A890(&v88);
      return sub_1ABB0A890(&v88);
    }

    sub_1ABB0A890(&v88);
    result = sub_1ABF23B44();
    if ((result & 1) == 0)
    {
      sub_1ABAF8054();
      sub_1ABA7D104();
      v61 = swift_allocError();
      sub_1ABA8E0B8(v61, v62);
      sub_1ABA7D104();
      goto LABEL_22;
    }

    v43 = 0;
    v25 = 0;
  }

LABEL_25:
  *a9 = v24;
  *(a9 + 8) = v23;
  *(a9 + 16) = v25;
  *(a9 + 24) = v43;
  *(a9 + 32) = v91;
  *(a9 + 40) = v22;
  return result;
}

uint64_t sub_1ABB09550(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E7562 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF86A60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0961C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656C646E7562;
  }
}

void sub_1ABB09654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4D2568, &qword_1ABF381E8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7ED98();
  sub_1ABA9474C();
  v30 = sub_1ABB0B670();
  sub_1ABA7BD38(&type metadata for AssetRegistryJSONFile.Entry.LocalEntry.LocalRelativeEntry.CodingKeys, v31, v30);
  if (!v24)
  {
    sub_1ABB03BEC();
    sub_1ABA81518();
    sub_1ABF24E64();
    v32 = sub_1ABF24E14();
    v34 = v33;
    v35 = sub_1ABA7BCF0();
    v36(v35);
    *v28 = a14;
    *(v28 + 8) = v32;
    *(v28 + 16) = v34;
  }

  sub_1ABA84B54(v26);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB097B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB09824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB09550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0984C(uint64_t a1)
{
  v2 = sub_1ABB0B670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB09888(uint64_t a1)
{
  v2 = sub_1ABB0B670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB09900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABB097B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1ABB09930@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABAB83BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABB09964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB097B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0998C(uint64_t a1)
{
  v2 = sub_1ABB0B02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB099C8(uint64_t a1)
{
  v2 = sub_1ABB0B02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABB09A04()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4D2538, &qword_1ABF37CD8);
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7ED98();
  sub_1ABA9474C();
  v10 = sub_1ABB0B02C();
  sub_1ABA7BD38(&type metadata for AssetRegistryJSONFile.Entry.LocalEntry.CodingKeys, v11, v10);
  if (!v0)
  {
    v12 = sub_1ABF24E14();
    v14 = v13;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    *(v5 + 8) = v14;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB09BD4(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      result = 0x726F74636166;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = 0x64616F6C6E776F64;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1ABB09C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1ABA7BCA8();
  v27 = v26;
  v29 = v28;
  sub_1ABAD219C(&qword_1EB4D2530, &qword_1ABF37CD0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABB0AFD8();
  sub_1ABF252C4();
  if (v25)
  {
    sub_1ABA84B54(v27);
  }

  else
  {
    v31 = sub_1ABF24E14();
    v42 = v32;
    v33 = sub_1ABF24E14();
    v41 = v34;
    v39 = v33;
    v38 = sub_1ABF24E14();
    v40 = v35;
    sub_1ABB040D8();
    sub_1ABF24DF4();
    v36 = sub_1ABA7D158();
    v37(v36);
    *v29 = v31;
    *(v29 + 8) = v42;
    *(v29 + 16) = v39;
    *(v29 + 24) = v41;
    *(v29 + 32) = v38;
    *(v29 + 40) = v40;
    *(v29 + 48) = a11;

    sub_1ABA84B54(v27);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB09F28(uint64_t a1)
{
  v2 = sub_1ABB0AFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB09F64(uint64_t a1)
{
  v2 = sub_1ABB0AFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1ABB09FDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABAB83F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABB0A00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABAB8444(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1ABB0A040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAB83F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0A068(uint64_t a1)
{
  v2 = sub_1ABB0AE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0A0A4(uint64_t a1)
{
  v2 = sub_1ABB0AE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABB0A0E0()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D2520, &unk_1ABF37CC0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  sub_1ABA9474C();
  v6 = sub_1ABB0AE0C();
  sub_1ABA7BD38(&type metadata for AssetRegistryJSONFile.Entry.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_1ABB0AE60();
    sub_1ABA81518();
    sub_1ABF24E64();
    v14 = v15;
    LOBYTE(v15) = 2;
    v8 = sub_1ABF24E54();
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    sub_1ABB0AF5C();
    sub_1ABA9926C();
    sub_1ABF24E64();
    v9 = sub_1ABA7BCF0();
    v10(v9);
    *v4 = v14;
    *(v4 + 8) = v16;
    *(v4 + 16) = v17;
    *(v4 + 24) = v18;
    *(v4 + 32) = v13;
    *(v4 + 40) = v12;
    *(v4 + 48) = v11;
    *(v4 + 50) = 0;
    *(v4 + 56) = v8;
    *(v4 + 64) = v15;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB0A390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0A454(char a1)
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](a1 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0A49C(char a1)
{
  if (a1)
  {
    return 0x73656972746E65;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1ABB0A4D0(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D2508, &qword_1ABF37A60);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7ED98();
  v4 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0AA30();
  sub_1ABF252C4();
  if (!v1)
  {
    v4 = sub_1ABF24E14();
    sub_1ABAD219C(&qword_1EB4D2510, &qword_1ABF37A68);
    sub_1ABB0AA84();
    sub_1ABA9926C();
    sub_1ABF24E64();
    v6 = sub_1ABA835EC();
    v7(v6);
  }

  sub_1ABA84B54(a1);
  return v4;
}

uint64_t sub_1ABB0A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0A704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0A390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0A72C(uint64_t a1)
{
  v2 = sub_1ABB0AA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0A768(uint64_t a1)
{
  v2 = sub_1ABB0AA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0A7A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB0A4D0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1ABB0A7D4(uint64_t a1)
{
  v2 = sub_1ABB0B304();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1ABB0A810(uint64_t a1)
{
  v2 = sub_1ABB0B304();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1ABB0A8C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB0A900(uint64_t result, int a2, int a3)
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

__n128 sub_1ABB0A964(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0A980(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 51))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 50);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB0A9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 50) = -a2;
    }
  }

  return result;
}

unint64_t sub_1ABB0AA30()
{
  result = qword_1ED86B548;
  if (!qword_1ED86B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B548);
  }

  return result;
}

unint64_t sub_1ABB0AA84()
{
  result = qword_1ED86B3F8;
  if (!qword_1ED86B3F8)
  {
    sub_1ABAE2850(&qword_1EB4D2510, &qword_1ABF37A68);
    sub_1ABB0AB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B3F8);
  }

  return result;
}

unint64_t sub_1ABB0AB10()
{
  result = qword_1ED86B4B8;
  if (!qword_1ED86B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4B8);
  }

  return result;
}

__n128 sub_1ABB0AB74(uint64_t a1, uint64_t a2)
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

uint64_t sub_1ABB0AB90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB0ABD0(uint64_t result, int a2, int a3)
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

uint64_t sub_1ABB0AC40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB0AC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_1ABB0AD08()
{
  result = qword_1EB4D2518;
  if (!qword_1EB4D2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2518);
  }

  return result;
}

unint64_t sub_1ABB0AD60()
{
  result = qword_1ED86B538;
  if (!qword_1ED86B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B538);
  }

  return result;
}

unint64_t sub_1ABB0ADB8()
{
  result = qword_1ED86B540;
  if (!qword_1ED86B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B540);
  }

  return result;
}

unint64_t sub_1ABB0AE0C()
{
  result = qword_1ED86B4D0;
  if (!qword_1ED86B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4D0);
  }

  return result;
}

unint64_t sub_1ABB0AE60()
{
  result = qword_1ED86B4F8;
  if (!qword_1ED86B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4F8);
  }

  return result;
}

unint64_t sub_1ABB0AEB4()
{
  result = qword_1ED86B4D8;
  if (!qword_1ED86B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4D8);
  }

  return result;
}

unint64_t sub_1ABB0AF08()
{
  result = qword_1EB4D2528;
  if (!qword_1EB4D2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2528);
  }

  return result;
}

unint64_t sub_1ABB0AF5C()
{
  result = qword_1ED86B400;
  if (!qword_1ED86B400)
  {
    sub_1ABAE2850(&qword_1EB4D2068, &qword_1ABF41380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B400);
  }

  return result;
}

unint64_t sub_1ABB0AFD8()
{
  result = qword_1ED86B4F0;
  if (!qword_1ED86B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4F0);
  }

  return result;
}

unint64_t sub_1ABB0B02C()
{
  result = qword_1ED86B510;
  if (!qword_1ED86B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B510);
  }

  return result;
}

unint64_t sub_1ABB0B080()
{
  result = qword_1ED86B518;
  if (!qword_1ED86B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B518);
  }

  return result;
}

_BYTE *sub_1ABB0B0F4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABB0B19C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB0B284()
{
  result = qword_1EB4D2540;
  if (!qword_1EB4D2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2540);
  }

  return result;
}

unint64_t sub_1ABB0B2DC(uint64_t a1)
{
  result = sub_1ABB0B304();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB0B304()
{
  result = qword_1EB4D2548;
  if (!qword_1EB4D2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2548);
  }

  return result;
}

unint64_t sub_1ABB0B35C()
{
  result = qword_1EB4D2550;
  if (!qword_1EB4D2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2550);
  }

  return result;
}

unint64_t sub_1ABB0B3B4()
{
  result = qword_1EB4D2558;
  if (!qword_1EB4D2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2558);
  }

  return result;
}

unint64_t sub_1ABB0B40C()
{
  result = qword_1EB4D2560;
  if (!qword_1EB4D2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2560);
  }

  return result;
}

unint64_t sub_1ABB0B464()
{
  result = qword_1ED86B500;
  if (!qword_1ED86B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B500);
  }

  return result;
}

unint64_t sub_1ABB0B4BC()
{
  result = qword_1ED86B508;
  if (!qword_1ED86B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B508);
  }

  return result;
}

unint64_t sub_1ABB0B514()
{
  result = qword_1ED86B4E0;
  if (!qword_1ED86B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4E0);
  }

  return result;
}

unint64_t sub_1ABB0B56C()
{
  result = qword_1ED86B4E8;
  if (!qword_1ED86B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4E8);
  }

  return result;
}

unint64_t sub_1ABB0B5C4()
{
  result = qword_1ED86B4C0;
  if (!qword_1ED86B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4C0);
  }

  return result;
}

unint64_t sub_1ABB0B61C()
{
  result = qword_1ED86B4C8;
  if (!qword_1ED86B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4C8);
  }

  return result;
}

unint64_t sub_1ABB0B670()
{
  result = qword_1ED86B530;
  if (!qword_1ED86B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B530);
  }

  return result;
}

_BYTE *sub_1ABB0B6C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB0B7A0()
{
  result = qword_1EB4D2570;
  if (!qword_1EB4D2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2570);
  }

  return result;
}

unint64_t sub_1ABB0B7F8()
{
  result = qword_1ED86B520;
  if (!qword_1ED86B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B520);
  }

  return result;
}

unint64_t sub_1ABB0B850()
{
  result = qword_1ED86B528;
  if (!qword_1ED86B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B528);
  }

  return result;
}

uint64_t sub_1ABB0B8BC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FileLoader(0);

  v4 = static FileLoader.inIntelligencePlatform(searchPaths:)(&unk_1F208ECD8);
  if (v2)
  {
  }

  v6 = v4;
  type metadata accessor for AssetRegistryServerConfigLoader();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for AssetRegistryBasicServer();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  result = swift_allocObject();
  *(result + 16) = v8;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1ABB0B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssetRegistryBasicServer.assetEntryResult(for:in:localOptions:)(a1, a2, a3, a4, v7);
  sub_1ABB0D100(a5);
  return sub_1ABB0BA88(v7);
}

uint64_t sub_1ABB0B9E4()
{

  return v0;
}

uint64_t sub_1ABB0BA0C()
{
  sub_1ABB0B9E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB0BA88(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D2578, &unk_1ABF38350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetRegistryOverrideAssetEntryParameters.verifyValidity()()
{
  v1 = *(v0 + 24);
  if ((v1 & 0x80) == 0)
  {
    if (v1)
    {
      sub_1ABAAA4A0();
      v2 = sub_1ABAAA44C();
      if ((sub_1ABA80668(v2, MEMORY[0x1E69E6158], v3, v4, v2, v5, v6, v7, 47) & 1) == 0)
      {
        return;
      }

      sub_1ABAFC69C();
    }

    else
    {
      sub_1ABAAA4A0();
      v8 = sub_1ABAAA44C();
      if (sub_1ABA80668(v8, MEMORY[0x1E69E6158], v9, v10, v8, v11, v12, v13, 47))
      {
        return;
      }

      sub_1ABAF8054();
    }

    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1ABB0BBE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65764F7261656C63 && a2 == 0xED00006564697272)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0BCB4(char a1)
{
  if (a1)
  {
    return 0x65764F7261656C63;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_1ABB0BCF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABF86B90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB0BD94(uint64_t a1)
{
  v2 = sub_1ABB0C320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0BDD0(uint64_t a1)
{
  v2 = sub_1ABB0C320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0BE14(uint64_t a1)
{
  v2 = *v1;
  sub_1ABF25234();
  sub_1ABAB8190(v4, v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0BE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0BBE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0BE88(uint64_t a1)
{
  v2 = sub_1ABB0C2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0BEC4(uint64_t a1)
{
  v2 = sub_1ABB0C2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB0BF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0BCF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB0BF30(uint64_t a1)
{
  v2 = sub_1ABB0C374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0BF6C(uint64_t a1)
{
  v2 = sub_1ABB0C374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryOverrideAssetEntryParameters.encode(to:)(void *a1)
{
  v31 = sub_1ABAD219C(&qword_1EB4D2580, &qword_1ABF38360);
  sub_1ABA7BB64();
  v29 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - v5;
  v32 = sub_1ABAD219C(&qword_1EB4D2588, &qword_1ABF38368);
  sub_1ABA7BB64();
  v30 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v33 = sub_1ABAD219C(&qword_1EB4D2590, &qword_1ABF38370);
  sub_1ABA7BB64();
  v11 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = *v1;
  v26 = v1[1];
  v27 = v15;
  v25 = v1[2];
  v16 = *(v1 + 26);
  v17 = *(v1 + 12);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0C2CC();
  sub_1ABF252E4();
  if ((~v17 & 0xFE) != 0)
  {
    v21 = v17 | (v16 << 16);
    LOBYTE(v34) = 0;
    sub_1ABB0C374();
    v22 = v33;
    sub_1ABF24EC4();
    v34 = v27;
    v35 = v26;
    v36 = v25;
    v38 = BYTE2(v21);
    v37 = v21;
    sub_1ABAFFF44();
    v23 = v32;
    sub_1ABF24F84();
    (*(v30 + 8))(v9, v23);
    return (*(v11 + 8))(v14, v22);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_1ABB0C320();
    v18 = v28;
    v19 = v33;
    sub_1ABF24EC4();
    (*(v29 + 8))(v18, v31);
    return (*(v11 + 8))(v14, v19);
  }
}

unint64_t sub_1ABB0C2CC()
{
  result = qword_1EB4D2598;
  if (!qword_1EB4D2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2598);
  }

  return result;
}

unint64_t sub_1ABB0C320()
{
  result = qword_1EB4D25A0;
  if (!qword_1EB4D25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25A0);
  }

  return result;
}

unint64_t sub_1ABB0C374()
{
  result = qword_1EB4D25A8;
  if (!qword_1EB4D25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25A8);
  }

  return result;
}

uint64_t AssetRegistryOverrideAssetEntryParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = sub_1ABAD219C(&qword_1EB4D25B0, &qword_1ABF38378);
  sub_1ABA7BB64();
  v49 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44[-v5];
  v7 = sub_1ABAD219C(&qword_1EB4D25B8, &qword_1ABF38380);
  sub_1ABA7BB64();
  v50 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44[-v10];
  v12 = sub_1ABAD219C(&qword_1EB4D25C0, &unk_1ABF38388);
  sub_1ABA7BB64();
  v51 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44[-v15];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0C2CC();
  v17 = v58;
  sub_1ABF252C4();
  if (v17)
  {
    return sub_1ABA84B54(a1);
  }

  v47 = v6;
  v48 = v11;
  v58 = a1;
  v46 = v7;
  v18 = v52;
  v19 = v53;
  sub_1ABF24EA4();
  result = sub_1ABAD4EA4();
  v24 = result;
  if (v22 == v23 >> 1)
  {
    goto LABEL_7;
  }

  if (v22 >= (v23 >> 1))
  {
    __break(1u);
    return result;
  }

  v45 = *(v21 + v22);
  v25 = sub_1ABAD4E90();
  v27 = v26;
  v29 = v28;
  swift_unknownObjectRelease();
  v24 = v25;
  if (v27 != v29 >> 1)
  {
LABEL_7:
    v53 = v24;
    v31 = sub_1ABF24B44();
    swift_allocError();
    v33 = v32;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v33 = &type metadata for AssetRegistryOverrideAssetEntryParameters;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_1ABA7D168();
    v35(v34, v12);
    a1 = v58;
    return sub_1ABA84B54(a1);
  }

  if (v45)
  {
    LOBYTE(v54) = 1;
    sub_1ABB0C320();
    v30 = v47;
    sub_1ABA7BD5C(&type metadata for AssetRegistryOverrideAssetEntryParameters.ClearOverrideCodingKeys, &v54);
    swift_unknownObjectRelease();
    (*(v49 + 8))(v30, v18);
    v36 = sub_1ABA7D168();
    v37(v36, v12);
    v38 = 0;
    v39 = 0uLL;
    v40 = 254;
  }

  else
  {
    LOBYTE(v54) = 0;
    sub_1ABB0C374();
    sub_1ABA7BD5C(&type metadata for AssetRegistryOverrideAssetEntryParameters.OverrideCodingKeys, &v54);
    sub_1ABAFFF98();
    sub_1ABF24E64();
    v41 = v51;
    swift_unknownObjectRelease();
    v42 = sub_1ABA806A8();
    v43(v42);
    (*(v41 + 8))(v16, v12);
    v39 = v54;
    v38 = v55;
    v40 = v56 | (v57 << 16);
  }

  *v19 = v39;
  *(v19 + 16) = v38;
  *(v19 + 24) = v40;
  *(v19 + 26) = BYTE2(v40);
  return sub_1ABA84B54(v58);
}

unint64_t sub_1ABB0C944(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB0C974();
  result = sub_1ABB0C9C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB0C974()
{
  result = qword_1EB4D25C8;
  if (!qword_1EB4D25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25C8);
  }

  return result;
}

unint64_t sub_1ABB0C9C8()
{
  result = qword_1EB4D25D0;
  if (!qword_1EB4D25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25D0);
  }

  return result;
}

uint64_t sub_1ABB0CA1C(uint64_t a1)
{
  if ((*(a1 + 24) & 0x7E) != 0)
  {
    return (*(a1 + 24) << 24 >> 31) - (*(a1 + 24) & 0x7Eu) + 128;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB0CA44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 27))
  {
    return (*a1 + 126);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7) & 1) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB0CA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 23) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 26) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_1ABB0CAF4(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 2 * ((((-a2 >> 1) & 0x3F) - (a2 << 6)) & 0x7F);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryOverrideAssetEntryParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryOverrideAssetEntryParameters.OverrideCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB0CCE8()
{
  result = qword_1EB4D25D8;
  if (!qword_1EB4D25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25D8);
  }

  return result;
}

unint64_t sub_1ABB0CD40()
{
  result = qword_1EB4D25E0;
  if (!qword_1EB4D25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25E0);
  }

  return result;
}

unint64_t sub_1ABB0CD98()
{
  result = qword_1EB4D25E8;
  if (!qword_1EB4D25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25E8);
  }

  return result;
}

unint64_t sub_1ABB0CDF0()
{
  result = qword_1EB4D25F0;
  if (!qword_1EB4D25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25F0);
  }

  return result;
}

unint64_t sub_1ABB0CE48()
{
  result = qword_1EB4D25F8;
  if (!qword_1EB4D25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D25F8);
  }

  return result;
}

unint64_t sub_1ABB0CEA0()
{
  result = qword_1EB4D2600;
  if (!qword_1EB4D2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2600);
  }

  return result;
}

unint64_t sub_1ABB0CEF8()
{
  result = qword_1EB4D2608;
  if (!qword_1EB4D2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2608);
  }

  return result;
}

unint64_t sub_1ABB0CF50()
{
  result = qword_1EB4D2610;
  if (!qword_1EB4D2610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2610);
  }

  return result;
}

uint64_t sub_1ABB0CFA4(char *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(GDXPCAssetRegistryService) init];
  v3 = sub_1ABF21854();
  sub_1ABA806BC(v3);
  v4 = sub_1ABF21844();
  v5 = sub_1ABF217F4();
  sub_1ABA806BC(v5);
  v6 = sub_1ABF217E4();
  result = swift_allocObject();
  *(result + 24) = v1;
  *(result + 16) = v2;
  *(result + 32) = v4;
  *(result + 40) = v6;
  return result;
}

uint64_t AssetRegistryRemoteWritableBackendXPC.__allocating_init<>()()
{
  v0 = [objc_allocWithZone(GDXPCAssetRegistryService) init];
  v1 = sub_1ABF21854();
  sub_1ABA806BC(v1);
  v2 = sub_1ABF21844();
  v3 = sub_1ABF217F4();
  sub_1ABA806BC(v3);
  v4 = sub_1ABF217E4();
  v5 = swift_allocObject();
  sub_1ABAD219C(&qword_1EB4D2040, &qword_1ABF35230);
  v6 = swift_allocObject();
  *(v6 + 24) = 1;
  *(v6 + 16) = v0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v4;
  *(v5 + 16) = v6;
  return v5;
}

uint64_t sub_1ABB0D100@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  if (v1[3])
  {
    v10 = *v1;
    v11 = *(v1 + 2);
    sub_1ABB0DD10(v2, v3, v4);
    sub_1ABB05FF4();
    if (sub_1ABF25014())
    {
      sub_1ABB05FA0(v10, *(&v10 + 1), v11);
    }

    else
    {
      swift_allocError();
      *v9 = v10;
      *(v9 + 16) = v11;
    }

    return swift_willThrow();
  }

  else
  {
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);
    v7 = *(v1 + 6);
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v7;
    *(a1 + 26) = BYTE2(v7);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    sub_1ABAF8040(v2, v3, v4, v7);
  }
}

uint64_t sub_1ABB0D1E8(uint64_t result, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    *&v4 = result;
    *(&v4 + 1) = a2;
    v5 = a3;
    sub_1ABB0DD28(result, a2, a3);
    sub_1ABB08384();
    if (sub_1ABF25014())
    {
      sub_1ABB0DC54(v4, *(&v4 + 1), v5);
    }

    else
    {
      swift_allocError();
      *v3 = v4;
      *(v3 + 16) = v5;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1ABB0D298(uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  sub_1ABB0D570(&v26, v27);
  if (v4)
  {
    objc_autoreleasePoolPop(v6);
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    v7 = v27[0];
    v8 = *(v3 + 16);
    v9 = sub_1ABF23BD4();
    sub_1ABA8EF78();
    v10 = sub_1ABF23BD4();
    sub_1ABA7D0F8();
    v11 = sub_1ABF21DB4();
    *&v27[0] = 0;
    v12 = [v8 assetEntryResultDataForAssetId:v9 inDomainId:v10 remoteOptionsData:v11 error:v27];

    v13 = *&v27[0];
    if (v12)
    {
      sub_1ABF21DD4();

      v14 = sub_1ABA8EF78();
      sub_1ABB0DBF0(v14, v15);

      v16 = objc_autoreleasePoolPush();
      sub_1ABAD219C(&qword_1EB4D2578, &unk_1ABF38350);
      sub_1ABB0DD40(&qword_1EB4D26F0, &qword_1EB4D2578, &unk_1ABF38350);
      sub_1ABA7EDA8();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v16);
      v29[0] = v27[0];
      v29[1] = v27[1];
      v29[2] = v27[2];
      v30 = v28;
      sub_1ABD4EA04();

      v21 = sub_1ABA8EF78();
      sub_1ABA96210(v21, v22);
      sub_1ABB0D100(a3);
      v24 = sub_1ABA8EF78();
      sub_1ABA96210(v24, v25);
      sub_1ABA96210(v7, *(&v7 + 1));
      sub_1ABB0BA88(v29);
    }

    else
    {
      v17 = v13;
      v18 = sub_1ABF21BE4();

      swift_willThrow();
      sub_1ABB0DB9C();
      swift_allocError();
      *v19 = v18;
      swift_willThrow();
      v20 = sub_1ABA7D0F8();
      sub_1ABA96210(v20, v23);
    }
  }
}

uint64_t sub_1ABB0D570@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1ABAFCB88();
  result = sub_1ABF21834();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

void *sub_1ABB0D5E4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1ABB0D614()
{
  sub_1ABB0D5E4();

  return swift_deallocClassInstance();
}

uint64_t AssetRegistryRemoteWritableBackendXPC.overrideAssetEntry(for:in:overrideAssetEntryParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *a5;
  v7 = a5[1];
  v8 = a5[2];
  v9 = *(a5 + 12) | (*(a5 + 26) << 16);
  v10 = sub_1ABB0D678();
  v11 = sub_1ABB0D970(v10, v6, v7, v8, v9);
  v13 = v12;

  if (!v5)
  {
    v15 = sub_1ABB0D66C();
    v16 = sub_1ABF23BD4();
    v17 = sub_1ABF23BD4();
    sub_1ABA7D0F8();
    v18 = sub_1ABF21DB4();
    v37 = 0;
    v19 = [v15 overrideAssetEntryForAssetId:v16 inDomainId:v17 overrideAssetEntryParametersData:v18 error:&v37];
    swift_unknownObjectRelease();

    v20 = v37;
    if (v19)
    {
      v36 = v13;
      sub_1ABF21DD4();

      sub_1ABB0D684();
      v21 = sub_1ABA8EF78();
      sub_1ABB0DBF0(v21, v22);
      v23 = objc_autoreleasePoolPush();
      sub_1ABAD219C(&qword_1EB4D2620, &qword_1ABF38818);
      sub_1ABB0DD40(&qword_1EB4D2628, &qword_1EB4D2620, &qword_1ABF38818);
      sub_1ABA7EDA8();
      sub_1ABF217D4();
      objc_autoreleasePoolPop(v23);

      v29 = sub_1ABA8EF78();
      sub_1ABA96210(v29, v30);
      v31 = v37;
      v32 = v38;
      v33 = v40;
      LOBYTE(v23) = v39;
      sub_1ABB0D1E8(v37, v38, v39 | (v40 << 8));
      v34 = sub_1ABA8EF78();
      sub_1ABA96210(v34, v35);
      sub_1ABA96210(v11, v36);
      return sub_1ABB0DC48(v31, v32, v23, v33);
    }

    else
    {
      v24 = v20;
      v25 = sub_1ABF21BE4();

      swift_willThrow();
      sub_1ABB0DB9C();
      swift_allocError();
      *v26 = v25;
      swift_willThrow();
      v27 = sub_1ABA7D0F8();
      return sub_1ABA96210(v27, v28);
    }
  }

  return result;
}

uint64_t *sub_1ABB0D970(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x80) == 0)
  {
    if (a5)
    {
      v17 = a3;
      v18 = a4;
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      v11 = &v17;
      if (sub_1ABF23B44())
      {
        sub_1ABAFC69C();
LABEL_10:
        swift_allocError();
        *v15 = 0;
        swift_willThrow();
        return v11;
      }
    }

    else
    {
      v17 = a2;
      v18 = a3;
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      v11 = &v17;
      if ((sub_1ABF23B44() & 1) == 0)
      {
        sub_1ABAF8054();
        goto LABEL_10;
      }
    }
  }

  v12 = a5 & 0xFFFFFF;
  v13 = objc_autoreleasePoolPush();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v21 = BYTE2(v12);
  v20 = v12;
  sub_1ABB0C9C8();
  v11 = a1;
  v14 = sub_1ABF21834();
  if (!v5)
  {
    v11 = v14;
  }

  objc_autoreleasePoolPop(v13);
  return v11;
}

uint64_t AssetRegistryRemoteWritableBackendXPC.__deallocating_deinit()
{
  AssetRegistryRemoteWritableBackendXPC.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABB0DB9C()
{
  result = qword_1EB4D2618;
  if (!qword_1EB4D2618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2618);
  }

  return result;
}

uint64_t sub_1ABB0DBF0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1ABB0DC48(uint64_t result, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_1ABB0DC54(result, a2, a3);
  }

  return result;
}

uint64_t sub_1ABB0DC54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1ABB0DD10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1ABB0DD28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1ABB0DD40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetRegistryResult.init(_:)@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  sub_1ABF247E4();
  sub_1ABA7BB64();
  v25[0] = v14;
  v25[1] = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v25[2] = a6;
  v27[4] = a6;
  v17 = type metadata accessor for AssetRegistryResult(0, v27);
  sub_1ABA7BB64();
  v19 = v18;
  sub_1ABA7BB88();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v25 - v22;
  a1(v21);
  swift_storeEnumTagMultiPayload();
  return (*(v19 + 32))(v26, v23, v17);
}

uint64_t AssetRegistryResult.get()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  sub_1ABA7BD7C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a2, v16);
  }

  v18 = *(v6 + 32);
  v18(v12, v16, v4);
  (*(v6 + 16))(v9, v12, v4);
  if (sub_1ABF25014())
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    swift_allocError();
    v18(v20, v9, v4);
  }

  swift_willThrow();
  return (*(v6 + 8))(v12, v4);
}

uint64_t sub_1ABB0E328(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB0E3F8(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1ABB0E474(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAB8190(v3, *v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0E328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB0E544@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB01724();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB0E57C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABB0E5D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABB0E6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABB0E708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1ABB0E7BC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_1ABF25234();
  a4(v7, a2[2], a2[3], a2[4], a2[5], a2[6]);
  return sub_1ABF25294();
}

uint64_t sub_1ABB0E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB0307C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB0E89C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABB0E8E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABB0E934(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AssetRegistryResult.encode(to:)(void *a1, void *a2)
{
  v75 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = sub_1ABA835FC();
  v10 = type metadata accessor for AssetRegistryResult.FailureCodingKeys(v8, v9);
  sub_1ABA7BD8C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v68 = v10;
  v66 = v11;
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v70 = v13;
  v71 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v67 = v15;
  sub_1ABA7BD7C();
  v69 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v65 = v19 - v18;
  v20 = sub_1ABA835FC();
  v22 = type metadata accessor for AssetRegistryResult.SuccessCodingKeys(v20, v21);
  sub_1ABA806D4();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v60 = v22;
  v58 = v23;
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v62 = v25;
  v63 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7FBE0();
  v59 = v27;
  sub_1ABA7BD7C();
  v61 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v57 = v31 - v30;
  sub_1ABA7BD7C();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v37 = v36 - v35;
  v73 = v6;
  v74 = v3;
  v78 = v3;
  v79 = v4;
  v64 = v4;
  v80 = v5;
  v81 = v6;
  v72 = v7;
  v82 = v7;
  v38 = sub_1ABA835FC();
  type metadata accessor for AssetRegistryResult.CodingKeys(v38, v39);
  sub_1ABA931F0();
  swift_getWitnessTable();
  v40 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v76 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v56 - v43;
  sub_1ABA93E20(v75, v75[3]);
  sub_1ABF252E4();
  (*(v33 + 16))(v37, v77, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v69;
    v47 = v64;
    v46 = v65;
    (*(v69 + 32))(v65, v37, v64);
    LOBYTE(v78) = 1;
    v48 = v67;
    sub_1ABF24EC4();
    v49 = v71;
    sub_1ABF24F84();
    (*(v70 + 8))(v48, v49);
    (*(v45 + 8))(v46, v47);
  }

  else
  {
    v50 = v61;
    v51 = v57;
    v52 = v74;
    (*(v61 + 32))(v57, v37, v74);
    LOBYTE(v78) = 0;
    v53 = v59;
    sub_1ABF24EC4();
    v54 = v63;
    sub_1ABF24F84();
    (*(v62 + 8))(v53, v54);
    (*(v50 + 8))(v51, v52);
  }

  return (*(v76 + 8))(v44, v40);
}

uint64_t AssetRegistryResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v103 = a1;
  v90 = a7;
  v12 = sub_1ABA835FC();
  v14 = type metadata accessor for AssetRegistryResult.FailureCodingKeys(v12, v13);
  sub_1ABA7BD8C();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v87 = v15;
  v88 = v14;
  v81 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v80 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v89 = v18;
  v19 = sub_1ABA8E630();
  v21 = type metadata accessor for AssetRegistryResult.SuccessCodingKeys(v19, v20);
  sub_1ABA806D4();
  swift_getWitnessTable();
  sub_1ABA8BE78();
  v85 = v21;
  v84 = v22;
  v79 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v78 = v23;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  v86 = v25;
  v26 = sub_1ABA8E630();
  type metadata accessor for AssetRegistryResult.CodingKeys(v26, v27);
  sub_1ABA931F0();
  WitnessTable = swift_getWitnessTable();
  v91 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v95 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  v93 = a3;
  v94 = a2;
  *&v100 = a2;
  *(&v100 + 1) = a3;
  v83 = a4;
  *&v101 = a4;
  *(&v101 + 1) = a5;
  v82 = a6;
  v102 = a6;
  v32 = type metadata accessor for AssetRegistryResult(0, &v100);
  sub_1ABA7BB64();
  v77 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v73 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v73 - v41;
  sub_1ABA93E20(v103, v103[3]);
  v92 = v31;
  v43 = v97;
  sub_1ABF252C4();
  if (v43)
  {
    return sub_1ABA84B54(v103);
  }

  v75 = v36;
  WitnessTable = 0;
  v76 = v39;
  v74 = v42;
  v97 = v32;
  v44 = v91;
  *&v98 = sub_1ABF24EA4();
  sub_1ABF241F4();
  swift_getWitnessTable();
  *&v100 = sub_1ABF24914();
  *(&v100 + 1) = v45;
  *&v101 = v46;
  *(&v101 + 1) = v47;
  sub_1ABF24904();
  swift_getWitnessTable();
  sub_1ABF244C4();
  v48 = v98;
  if (v98 == 2 || (v73 = v100, v98 = v100, v99 = v101, (sub_1ABF24574() & 1) == 0))
  {
    v52 = sub_1ABF24B44();
    swift_allocError();
    v54 = v53;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v54 = v97;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    v55 = sub_1ABA94770();
    v56(v55, v44);
LABEL_12:
    swift_unknownObjectRelease();
    return sub_1ABA84B54(v103);
  }

  if (v48)
  {
    LOBYTE(v98) = 1;
    v49 = v44;
    v50 = WitnessTable;
    sub_1ABF24D94();
    v51 = v90;
    if (v50)
    {
      goto LABEL_9;
    }

    v60 = v75;
    sub_1ABF24E64();
    sub_1ABAA5EF8();
    v62();
    v63 = sub_1ABA905D4();
    v64(v63, v49);
    sub_1ABA81528();
    swift_unknownObjectRelease();
    v65 = v97;
    swift_storeEnumTagMultiPayload();
    v66 = v60;
  }

  else
  {
    LOBYTE(v98) = 0;
    v57 = WitnessTable;
    sub_1ABF24D94();
    v51 = v90;
    if (v57)
    {
LABEL_9:
      v58 = sub_1ABA94770();
      v59(v58, v44);
      sub_1ABA81528();
      goto LABEL_12;
    }

    v66 = v76;
    sub_1ABF24E64();
    v67 = sub_1ABA8FE30();
    v68(v67);
    v69 = sub_1ABA905D4();
    v70(v69, v44);
    sub_1ABA81528();
    swift_unknownObjectRelease();
    v65 = v97;
    swift_storeEnumTagMultiPayload();
  }

  v71 = *(v77 + 32);
  v72 = v74;
  v71(v74, v66, v65);
  v71(v51, v72, v65);
  return sub_1ABA84B54(v103);
}

uint64_t AssetRegistryResult<>.verifyValidity()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v13, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v9 + 8))(v12, a1);
  }

  (*(v5 + 32))(v7, v12, v4);
  (*(a2 + 24))(v4, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1ABB0F8A0(uint64_t a1)
{
  v2 = sub_1ABB0FA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB0F8DC(uint64_t a1)
{
  v2 = sub_1ABB0FA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetRegistryOverrideAssetEntrySuccess.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D26F8, &qword_1ABF38960);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB0FA1C();
  sub_1ABF252E4();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1ABB0FA1C()
{
  result = qword_1EB4D2700;
  if (!qword_1EB4D2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2700);
  }

  return result;
}

uint64_t sub_1ABB0FA98(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB0FAF8(uint64_t a1)
{
  *(a1 + 8) = sub_1ABB0FB28();
  result = sub_1ABB0FB7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB0FB28()
{
  result = qword_1EB4D2708;
  if (!qword_1EB4D2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2708);
  }

  return result;
}

unint64_t sub_1ABB0FB7C()
{
  result = qword_1EB4D2710[0];
  if (!qword_1EB4D2710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D2710);
  }

  return result;
}

uint64_t sub_1ABB0FC00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB0FC7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1ABB0FDB0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1ABB0FFA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB10070(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB10164()
{
  result = qword_1EB4D2898;
  if (!qword_1EB4D2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2898);
  }

  return result;
}

unint64_t sub_1ABB101BC()
{
  result = qword_1EB4D28A0;
  if (!qword_1EB4D28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28A0);
  }

  return result;
}

uint64_t sub_1ABB102C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FileLoader.data(forFile:withExtension:)(a1, a2, 1852797802, 0xE400000000000000);
  if (!v3)
  {
    v10 = v8;
    if (v8 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v11 = v7;
      sub_1ABB10458();
      sub_1ABF217D4();
      a3 = v13;
      v12 = v13 == a1 && v14 == a2;
      if (!v12 && (sub_1ABF25054() & 1) == 0)
      {

        sub_1ABB104AC();
        swift_allocError();
        swift_willThrow();
      }

      sub_1ABAC9310(v11, v10);
    }
  }

  return a3;
}

uint64_t sub_1ABB10420()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1ABB10458()
{
  result = qword_1ED86B4B0;
  if (!qword_1ED86B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B4B0);
  }

  return result;
}

unint64_t sub_1ABB104AC()
{
  result = qword_1EB4D28A8;
  if (!qword_1EB4D28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetRegistryServerConfigLoaderError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1ABB105B0(uint64_t a1)
{
  v2 = sub_1ABB10650();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1ABB105EC(uint64_t a1)
{
  v2 = sub_1ABB10650();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1ABB10628(uint64_t a1)
{
  result = sub_1ABB10650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB10650()
{
  result = qword_1EB4D28B0;
  if (!qword_1EB4D28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28B0);
  }

  return result;
}

unint64_t sub_1ABB106A8()
{
  result = qword_1EB4D28B8;
  if (!qword_1EB4D28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28B8);
  }

  return result;
}

uint64_t AssetRegistryShouldVerifyValidity.init(from:jsonDecoder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v21 = a6;
  v22 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = objc_autoreleasePoolPush();
  sub_1ABB10984(a3, a1, a2, a4, a5, &v23);
  objc_autoreleasePoolPop(v17);
  if (!v6)
  {
    v18 = v13;
    v19 = *(v22 + 32);
    v19(v16, v18, a4);
    (*(a5 + 24))(a4, a5);
    v19(v21, v16, a4);
  }

  return sub_1ABA96210(a1, a2);
}

void AssetRegistryShouldVerifyValidity.encodeToJsonData(jsonEncoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    sub_1ABB109C0(&v6, &v5);
    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_1ABB10984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = sub_1ABF217D4();
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_1ABB109C0@<X0>(void *a4@<X4>, uint64_t *a5@<X8>)
{
  result = sub_1ABF21834();
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
    a5[1] = v9;
  }

  return result;
}

uint64_t sub_1ABB10A40(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7463614670696B73;
    }

    else
    {
      v4 = 0xD000000000000013;
    }
  }

  else
  {
    v4 = 0x73736572646461;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB10AF8(uint64_t a1)
{
  sub_1ABF25234();
  v1 = sub_1ABAB526C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB10B50(uint64_t a1)
{
  sub_1ABB24730(a1);
  Features.FeatureFlag.feature.getter();
  v1 = sub_1ABF24AE4();
  sub_1ABAA023C(v1, v2, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB10B9C(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    v4 = 1954047348;
  }

  else
  {
    v4 = 0x65676E6172;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB10C78(uint64_t a1)
{
  sub_1ABB24730(a1);
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10D1C(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x616564696C637565;
    }

    else
    {
      v4 = 7630692;
    }
  }

  else
  {
    v4 = 0x656E69736F63;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB10DA4(uint64_t a1)
{
  sub_1ABB24730(a1);
  MEMORY[0x1AC5AA8A0]((v1 & 1u) + 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB10DE4(uint64_t a1)
{
  sub_1ABB24730(a1);
  if (v1)
  {
    sub_1ABA9E08C();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    sub_1ABA7BB94();
    v7 = v8 | 2;
  }

  sub_1ABA8C920(v2, v7, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB10E6C(uint64_t a1, uint64_t a2)
{
  sub_1ABF25234();
  sub_1ABAD4B80();
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t sub_1ABB10EC0(uint64_t a1)
{
  sub_1ABB24730(a1);
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB10F34(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABB10F7C(uint64_t a1)
{
  v1 = sub_1ABF25234();
  sub_1ABA9EF7C(v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB10FBC(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x7473726966;
    }
  }

  else
  {
    v4 = 1953718636;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB11068(uint64_t a1)
{
  sub_1ABB24730(a1);
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB11118(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    v4 = 0x7241746E65746E69;
  }

  else
  {
    v4 = 0x79676F6C6F746E6FLL;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB111EC(uint64_t a1)
{
  sub_1ABB24730(a1);
  sub_1ABA8071C();
  if (v1)
  {
    v4 = 0x6974657263736964;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB11268(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    v4 = 0x726F746365726964;
  }

  else
  {
    v4 = 1701603686;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB112EC(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    v4 = 0x6472617774756FLL;
  }

  else
  {
    v4 = 0x647261776E69;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB113B8(uint64_t a1)
{
  sub_1ABB24730(a1);
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t sub_1ABB1144C(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7461636964657270;
    }

    else
    {
      v4 = 0x7463656A626FLL;
    }
  }

  else
  {
    v4 = 0x7463656A627573;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB114F4(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x796C68746E6F6DLL;
    }

    else
    {
      v4 = 0x6C61756E6E61;
    }
  }

  else
  {
    v4 = 0x796C6B656577;
  }

  sub_1ABA8C920(v2, v4, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB115C4(uint64_t a1)
{
  sub_1ABA9F054(a1);
  v3 = v1(v2);
  sub_1ABAA023C(v3, v4, v5);

  return sub_1ABF25294();
}

uint64_t sub_1ABB1160C(uint64_t a1)
{
  v2 = sub_1ABB24730(a1);
  if (v1)
  {
    sub_1ABA9E08C();
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  sub_1ABA8C920(v2, v7, v3);

  return sub_1ABF25294();
}

uint64_t sub_1ABB116F0(uint64_t a1, char a2)
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](a2 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB11734(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void))
{
  sub_1ABF25234();
  a3(a2);
  return sub_1ABF25294();
}

uint64_t sub_1ABB11798(uint64_t a1)
{
  sub_1ABA9F054(a1);
  v1(v4, v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABB117D8(uint64_t a1)
{
  sub_1ABB24730(a1);
  sub_1ABF25264();
  return sub_1ABF25294();
}

uint64_t sub_1ABB11814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABB1182C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABB118B4()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B10, &qword_1ABF39D80);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABB241FC();
  sub_1ABF252E4();
  sub_1ABF24F34();
  v3 = sub_1ABA8E0A8();
  v4(v3);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB119BC(void *a1)
{
  v5 = sub_1ABAD219C(&qword_1EB4D2B20, &qword_1ABF39D88);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7ED98();
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABB241FC();
  sub_1ABF252C4();
  if (!v2)
  {
    v1 = sub_1ABF24E14();
    (*(v7 + 8))(v3, v5);
  }

  sub_1ABA84B54(a1);
  return v1;
}

uint64_t sub_1ABB11B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB1182C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB11B2C(uint64_t a1)
{
  v2 = sub_1ABB241FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB11B68(uint64_t a1)
{
  v2 = sub_1ABB241FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB11BA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB119BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

id sub_1ABB11BEC()
{
  v0 = type metadata accessor for AutonamingViewIdentifierType();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___GDAutonamingViewIdentifierTypeInner_data];
  *v2 = 0x6E6F737265504850;
  *(v2 + 1) = 0xE800000000000000;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EB4D28C0 = result;
  return result;
}

id static AutonamingViewIdentifierType.phPerson.getter()
{
  if (qword_1EB4D0250 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4D28C0;

  return v1;
}

uint64_t sub_1ABB11D20(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB11DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB11D20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB11DD8(uint64_t a1)
{
  v2 = sub_1ABB11FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB11E14(uint64_t a1)
{
  v2 = sub_1ABB11FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB11EA0(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D28C8, &qword_1ABF390B0);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABB11FDC();
  sub_1ABF252E4();
  sub_1ABB12030();
  sub_1ABF24F84();
  return (*(v5 + 8))(v1, v3);
}

unint64_t sub_1ABB11FDC()
{
  result = qword_1EB4D28D0;
  if (!qword_1EB4D28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28D0);
  }

  return result;
}

unint64_t sub_1ABB12030()
{
  result = qword_1EB4D28E0;
  if (!qword_1EB4D28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28E0);
  }

  return result;
}

void AutonamingViewIdentifierType.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1ABA9F664();
  AutonamingViewIdentifierType.init(from:)();
}

void AutonamingViewIdentifierType.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D28E8, &qword_1ABF390B8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v3, v3[3]);
  v5 = sub_1ABB11FDC();
  sub_1ABA89290(&type metadata for AutonamingViewIdentifierType.CodingKeys, v6, v5);
  if (v1)
  {
    sub_1ABA84B54(v3);
    type metadata accessor for AutonamingViewIdentifierType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABB12248();
    sub_1ABA9E2F4();
    sub_1ABF24E64();
    v7 = v13;
    v8 = &v0[OBJC_IVAR___GDAutonamingViewIdentifierTypeInner_data];
    *v8 = v12;
    *(v8 + 1) = v7;
    v11.receiver = v0;
    v11.super_class = type metadata accessor for AutonamingViewIdentifierType();
    objc_msgSendSuper2(&v11, sel_init);
    v9 = sub_1ABA8E0A8();
    v10(v9);
    sub_1ABA84B54(v3);
  }

  sub_1ABA7BC90();
}

unint64_t sub_1ABB12248()
{
  result = qword_1EB4D28F0;
  if (!qword_1EB4D28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D28F0);
  }

  return result;
}

uint64_t sub_1ABB1229C()
{
  v0 = sub_1ABF25234();
  sub_1ABA9EF7C(v0);
  return sub_1ABF25294();
}

void sub_1ABB122E0(uint64_t *a1@<X8>)
{
  AutonamingViewIdentifierType.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1ABB12330(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

__objc2_class **AutonamingView.__allocating_init(subgraph:isForLiveServing:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return AutonamingView.init(subgraph:isForLiveServing:)(a1, v3);
}

__objc2_class **AutonamingView.init(subgraph:isForLiveServing:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR___GDAutonamingViewInner_subgraph] = a1;
  sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
  swift_allocObject();
  sub_1ABA9F664();
  swift_retain_n();
  *&v2[OBJC_IVAR___GDAutonamingViewInner_context] = sub_1ABAE6998();
  *&v2[OBJC_IVAR___GDAutonamingViewInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  *&v2[OBJC_IVAR___GDAutonamingViewInner_rejectedIdentifiers] = MEMORY[0x1E69E7CD0];
  v2[OBJC_IVAR___GDAutonamingViewInner_isForLiveServing] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AutonamingView();
  objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA9F664();

  return &off_1E7963000;
}

void sub_1ABB124B8()
{
  sub_1ABA7BCA8();
  v64 = v3;
  v65 = v0;
  v63 = v4;
  v53 = v5;
  v58 = sub_1ABF23744();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v55 = v21;
  v56 = v20;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v54 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA806EC();
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  v61 = v27;
  v62 = v26;
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v30 = (v29 - v28);
  sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v51 - v32;
  v34 = type metadata accessor for CustomGraphPerson(0);
  v59 = v33;
  v52 = v34;
  sub_1ABA7B9B4(v33, 1, 1, v34);
  v60 = v30;
  sub_1ABF21EA4();
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v35 = sub_1ABA7AA24(v13, qword_1ED871EF8);
  (*(v15 + 16))(v19, v35, v13);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v36 = sub_1ABF23764();
  v37 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v36, v37, v39, "ViewEngine.Serving.AutonamingView.PersonLookup", "", v38, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v40 = v58;
  (*(v7 + 16))(v57, v12, v58);
  sub_1ABF237B4();
  swift_allocObject();
  sub_1ABA7D1BC();
  v41 = sub_1ABF237A4();
  (*(v7 + 8))(v12, v40);
  *v2 = "ViewEngine.Serving.AutonamingView.PersonLookup";
  *(v2 + 8) = 46;
  *(v2 + 16) = 2;
  *(v2 + 24) = v41;
  (*(v55 + 32))(v2 + *(v54 + 24), v24, v56);
  v42 = OBJC_IVAR___GDAutonamingViewInner_rejectedIdentifiers;
  v43 = v65;
  swift_beginAccess();
  v44 = *&v43[v42];

  v46 = v63;
  v45 = v64;
  v47 = sub_1ABB13404(v63, v64, v44);

  if (v47)
  {
    sub_1ABA7B9B4(v53, 1, 1, v52);
    v48 = v59;
  }

  else
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    *(&v51 - 4) = v43;
    *(&v51 - 3) = v46;
    *(&v51 - 2) = v45;
    v48 = v59;
    *(&v51 - 1) = v59;
    swift_unknownObjectRetain();
    sub_1ABF22454();
    swift_unknownObjectRelease();
    if (!v1)
    {
      sub_1ABB17F28(v48, v53);
    }
  }

  v50 = v60;
  sub_1ABB12A74(v48, v60, v43, v2);
  sub_1ABB17FFC(v2, type metadata accessor for LogSignpost);
  (*(v61 + 8))(v50, v62);
  sub_1ABAB480C(v48, &qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB12A74(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v78 = a2;
  v5 = sub_1ABF23784();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABF23744();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ABF21EB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for CustomGraphPerson(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  sub_1ABB17F28(a1, &v64 - v25);
  sub_1ABB17F28(v26, v23);
  v27 = sub_1ABA7E1E0(v23, 1, v18);
  v77 = v9;
  if (v27 == 1)
  {
    sub_1ABAB480C(v26, &qword_1EB4D2920, &qword_1ABF6CB70);
    v72 = 0;
  }

  else
  {
    sub_1ABB17F98(v23, v20);
    CustomGraphPerson.toObjectiveCGraphObject()(v28);
    v72 = v29;
    sub_1ABB17FFC(v20, type metadata accessor for CustomGraphPerson);
    sub_1ABAB480C(v26, &qword_1EB4D2920, &qword_1ABF6CB70);
  }

  sub_1ABF21EA4();
  v71 = type metadata accessor for Analytics();
  v69 = "iewIdentifierType";
  v30 = *(v11 + 16);
  v31 = v73;
  v30(v73, v78, v10);
  v32 = v74;
  v30(v74, v17, v10);
  v33 = *(v11 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = v10;
  v36 = (v12 + v33 + v34) & ~v33;
  v37 = (v12 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = v17;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v70 = v11;
  v40 = *(v11 + 32);
  v40(v39 + v34, v31, v35);
  v40(v39 + v36, v32, v35);
  v41 = v72;
  *(v39 + v37) = v72;
  v42 = v78;
  v43 = v75;
  *(v39 + v38) = v75;
  v44 = v41;
  v45 = v43;
  static Analytics.sendEventForProductionLazy(eventName:eventPayloadBuilder:)(0xD00000000000002ELL, v69 | 0x8000000000000000, sub_1ABB243F8, v39);

  type metadata accessor for LogSignpost(0);
  v46 = *v76;
  v47 = *(v76 + 16);
  v48 = sub_1ABF23764();
  v49 = v77;
  sub_1ABF23794();
  v50 = sub_1ABF24704();
  result = sub_1ABF247D4();
  v52 = v35;
  v53 = v70;
  if ((result & 1) == 0)
  {
LABEL_16:

    (*(v67 + 8))(v49, v68);
    return (*(v53 + 8))(v42, v52);
  }

  v54 = v70;
  v55 = v52;
  if ((v47 & 1) == 0)
  {
    if (v46)
    {
LABEL_12:

      v56 = v64;
      sub_1ABF237C4();
      v57 = v56;

      v58 = v65;
      v59 = v56;
      v60 = v66;
      if ((*(v65 + 88))(v59, v66) == *MEMORY[0x1E69E93E8])
      {
        v61 = "[Error] Interval already ended";
      }

      else
      {
        (*(v58 + 8))(v57, v60);
        v61 = "";
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      v63 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v48, v50, v63, v46, v61, v62, 2u);
      MEMORY[0x1AC5AB8B0](v62, -1, -1);
      v52 = v55;
      v53 = v54;
      v42 = v78;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v46 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v46 & 0xFFFFF800) != 0xD800)
  {
    if (v46 >> 16 <= 0x10)
    {
      v46 = &v79;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1ABB130E0()
{
  sub_1ABA8D0C4();
  if (*(v2 + 16))
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    sub_1ABF25234();
    sub_1ABA894AC();
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABAA51D0();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      if (((1 << (v6 & v8)) & *(v3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v10 = (*(v3 + 48) + 16 * v9);
      v11 = v10[1];
      if (*v10 == v5 && v11 == v4)
      {
        break;
      }

      v13 = sub_1ABA94798(*v10, v11, v5);
      v6 = v9 + 1;
    }

    while ((v13 & 1) == 0);
  }

  sub_1ABA8D1F0();
}

void sub_1ABB131AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1ABA8A238();
  a29 = v31;
  a30 = v34;
  if (*(v33 + 16))
  {
    v35 = v33;
    v36 = v32;
    sub_1ABF25234();
    sub_1ABBB4ED8(&a10, v36);
    sub_1ABF25294();
    sub_1ABAA51D0();
    sub_1ABA89D84();
    if (v37)
    {
      sub_1ABA8071C();
      v52 = v38;
      while (1)
      {
        v39 = 0xE400000000000000;
        v40 = 1701736302;
        switch(*(*(v35 + 48) + v30))
        {
          case 1:
            v40 = sub_1ABA97980();
            v39 = 0x80000001ABF7EE20;
            break;
          case 2:
            v40 = sub_1ABA9F400();
            break;
          case 3:
            v41 = 0x47746E657665;
            goto LABEL_12;
          case 4:
            v40 = sub_1ABA7D198();
            break;
          case 5:
            v40 = sub_1ABA7FC1C();
            break;
          case 6:
            v41 = 0x476C61636F6CLL;
LABEL_12:
            v40 = sub_1ABA80704(v41);
            break;
          case 7:
            sub_1ABA7BB94();
            v40 = v42 + 10;
            v39 = 0x80000001ABF7EE80;
            break;
          case 8:
            sub_1ABA7BB94();
            v40 = v43 + 8;
            v39 = v52;
            break;
          default:
            break;
        }

        v44 = 0xE400000000000000;
        v45 = 1701736302;
        switch(v36)
        {
          case 1:
            sub_1ABA8BA2C();
            v44 = 0x80000001ABF7EE20;
            break;
          case 2:
            v44 = 0xE700000000000000;
            sub_1ABA8BE94();
            break;
          case 3:
            v46 = 0x47746E657665;
            goto LABEL_22;
          case 4:
            sub_1ABA890F4();
            v44 = 0xED00007865646E49;
            break;
          case 5:
            sub_1ABA891B0();
            v44 = 0xEC0000007865646ELL;
            break;
          case 6:
            v46 = 0x476C61636F6CLL;
LABEL_22:
            v45 = v46 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
            v44 = 0xEF7865646E496870;
            break;
          case 7:
            sub_1ABA7BB94();
            v45 = v47 + 10;
            v44 = 0x80000001ABF7EE80;
            break;
          case 8:
            sub_1ABA7BB94();
            v45 = v48 + 8;
            v44 = v52;
            break;
          default:
            break;
        }

        if (v40 == v45 && v39 == v44)
        {
          break;
        }

        v50 = sub_1ABA8CF7C(v40, v39, v45);

        if ((v50 & 1) == 0)
        {
          sub_1ABB24764();
          if (v51)
          {
            continue;
          }
        }

        goto LABEL_30;
      }
    }
  }

LABEL_30:
  sub_1ABA9A2A8();
}

BOOL sub_1ABB13404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1ABF25234();
  sub_1ABF23D34();
  v6 = sub_1ABF25294();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1ABF25054();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1ABB134F0(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    sub_1ABF25224();
    sub_1ABB24748();
    do
    {
      sub_1ABAB508C();
    }

    while (v6 && *(a2[6] + 8 * v5) != a1);
  }

  return v2;
}

uint64_t sub_1ABB13550(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1ABA93208(), sub_1ABAAFEEC(v5), sub_1ABAA51D0(), sub_1ABA89D84(), (v6 & 1) != 0))
  {
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x7465736E75;
      switch(*(*(a2 + 48) + v2))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = sub_1ABAB1010();
          break;
        case 2:
          v8 = sub_1ABA9F8F8();
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = sub_1ABA8C52C();
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = sub_1ABAA0B4C();
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = sub_1ABA8AD0C();
          break;
        case 6:
          sub_1ABA8BE84();
          v8 = v15 + 3591;
          v7 = 0xE600000000000000;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v13 = 1752457574;
          goto LABEL_30;
        case 8:
          v7 = 0xE700000000000000;
          v8 = sub_1ABA9521C();
          break;
        case 9:
          v7 = 0xE700000000000000;
          v12 = sub_1ABA8AAA0();
          goto LABEL_28;
        case 0xA:
          v7 = 0xE600000000000000;
          v13 = 1953720691;
LABEL_30:
          v8 = v13 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v8 = sub_1ABA7ABD8() | 0x7261506400000000;
          v11 = 7630437;
          goto LABEL_25;
        case 0xC:
          v8 = sub_1ABA7ABD8() | 0x746F6D6400000000;
          goto LABEL_24;
        case 0xD:
          v8 = sub_1ABA7ABD8() | 0x7461666400000000;
LABEL_24:
          v11 = 7497064;
LABEL_25:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v7 = 0xE700000000000000;
          v10 = sub_1ABA8C6EC();
          goto LABEL_20;
        case 0xF:
          v8 = sub_1ABA8A360();
          break;
        case 0x10:
          v7 = 0xE300000000000000;
          v8 = 7237491;
          break;
        case 0x11:
          v7 = 0xE800000000000000;
          v14 = sub_1ABA9F9E8();
          goto LABEL_35;
        case 0x12:
          v7 = 0xE700000000000000;
          v12 = sub_1ABA9FAEC();
LABEL_28:
          v8 = v12 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v7 = 0xE400000000000000;
          v8 = 1701210487;
          break;
        case 0x14:
          v7 = 0xE700000000000000;
          v10 = sub_1ABA8A494();
LABEL_20:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v7 = 0xE600000000000000;
          v8 = sub_1ABA9FBC0();
          break;
        case 0x16:
          v8 = sub_1ABA97980();
          v7 = 0x80000001ABF81E70;
          break;
        case 0x17:
          v7 = 0xE800000000000000;
          v14 = sub_1ABA8B24C();
LABEL_35:
          v8 = v14 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = sub_1ABAA1264();
          break;
        case 0x19:
          v8 = sub_1ABAB543C();
          v7 = 0xE900000000000065;
          break;
        case 0x1A:
          v7 = 0xE600000000000000;
          v8 = sub_1ABA9FCE4();
          break;
        case 0x1B:
          v9 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v8 = sub_1ABAA0A28();
          break;
        case 0x1D:
          v9 = 1631811949;
LABEL_38:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v16 = 0xE500000000000000;
      v17 = 0x7465736E75;
      switch(a1)
      {
        case 1:
          v16 = 0xE700000000000000;
          sub_1ABA96004();
          break;
        case 2:
          sub_1ABA8B480();
          break;
        case 3:
          v16 = 0xE600000000000000;
          sub_1ABA8AEB8();
          break;
        case 4:
          v16 = 0xE600000000000000;
          sub_1ABA950B0();
          break;
        case 5:
          v16 = 0xE600000000000000;
          sub_1ABAA03D8();
          break;
        case 6:
          sub_1ABA8BE84();
          v17 = v27 + 3591;
          v16 = 0xE600000000000000;
          break;
        case 7:
          v16 = 0xE600000000000000;
          v24 = 1752457574;
          goto LABEL_67;
        case 8:
          v16 = 0xE700000000000000;
          sub_1ABAB5C34();
          break;
        case 9:
          v16 = 0xE700000000000000;
          sub_1ABA9FF9C();
          goto LABEL_65;
        case 10:
          v16 = 0xE600000000000000;
          v24 = 1953720691;
LABEL_67:
          v17 = v24 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          sub_1ABA82DCC();
          v17 = v20 | 0x7261506400000000;
          v21 = 7630437;
          goto LABEL_62;
        case 12:
          sub_1ABA82DCC();
          v17 = v22 | 0x746F6D6400000000;
          goto LABEL_61;
        case 13:
          sub_1ABA82DCC();
          v17 = v26 | 0x7461666400000000;
LABEL_61:
          v21 = 7497064;
LABEL_62:
          v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v16 = 0xE700000000000000;
          sub_1ABA8B0D0();
          goto LABEL_57;
        case 15:
          sub_1ABAA0118();
          break;
        case 16:
          v16 = 0xE300000000000000;
          v17 = 7237491;
          break;
        case 17:
          v16 = 0xE800000000000000;
          sub_1ABA8B634();
          goto LABEL_72;
        case 18:
          v16 = 0xE700000000000000;
          sub_1ABA8B844();
LABEL_65:
          v17 = v23 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v16 = 0xE400000000000000;
          v17 = 1701210487;
          break;
        case 20:
          v16 = 0xE700000000000000;
          sub_1ABAA029C();
LABEL_57:
          v17 = v19 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v16 = 0xE600000000000000;
          sub_1ABA8BA58();
          break;
        case 22:
          sub_1ABA8BA2C();
          v16 = 0x80000001ABF81E70;
          break;
        case 23:
          v16 = 0xE800000000000000;
          sub_1ABAA0510();
LABEL_72:
          v17 = v25 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v16 = 0xE800000000000000;
          sub_1ABA97728();
          break;
        case 25:
          sub_1ABAA1B7C();
          v16 = 0xE900000000000065;
          break;
        case 26:
          v16 = 0xE600000000000000;
          sub_1ABAA06AC();
          break;
        case 27:
          v18 = 1699772781;
          goto LABEL_75;
        case 28:
          sub_1ABA9FE44();
          break;
        case 29:
          v18 = 1631811949;
LABEL_75:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v8 == v17 && v7 == v16)
      {
        break;
      }

      v29 = sub_1ABA8CF7C(v8, v7, v17);

      if ((v29 & 1) == 0)
      {
        sub_1ABB24764();
        if (v30)
        {
          continue;
        }
      }

      return v29 & 1;
    }

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1ABB139DC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v3 = a2[2];
  if (v3)
  {
    sub_1ABF25234();
    v7 = sub_1ABA9DF4C();
    a3(v7);
    sub_1ABF25294();
    sub_1ABB24748();
    do
    {
      sub_1ABAB508C();
    }

    while (v9 && *(a2[6] + 8 * v8) != a1);
  }

  return v3;
}

uint64_t sub_1ABB13A64(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v44 = a3;
  v49 = a1;
  v7 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for CustomGraphPerson(0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_1ABF22854();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF87040);
  v47 = a2;
  v17 = *(a2 + OBJC_IVAR___GDAutonamingViewInner_subgraph);
  v19 = *(v17 + 40);
  v18 = *(v17 + 48);

  MEMORY[0x1AC5A9410](v19, v18);

  MEMORY[0x1AC5A9410](0xD000000000000025, 0x80000001ABF87060);
  v46 = sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1ABF34060;
  v40 = v10;
  v41 = v9;
  v21 = _Records_GDEntityPredicate_records;
  if (_Records_GDEntityPredicate_records)
  {
    v22 = v20;
    sub_1ABF22BB4();
    sub_1ABA91D48(v21[2412], *(v21 + 604), *(v21 + 605), &v53);
    v23 = v53;

    v24 = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69A0138];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = v25;
    *(v22 + 32) = v23;
    *(v22 + 96) = v24;
    *(v22 + 104) = v25;
    *(v22 + 72) = v44;
    *(v22 + 80) = a4;

    sub_1ABF22834();
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v26 = v45;
    sub_1ABF22B44();
    if (v26)
    {

      sub_1ABAB480C(&v53, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      return (*(v50 + 8))(v16, v48);
    }

    else
    {

      sub_1ABAB480C(&v53, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      v28 = *(v50 + 8);
      v50 += 8;
      v44 = v28;
      v28(v16, v48);
      v45 = OBJC_IVAR___GDAutonamingViewInner_context;
      v43 = "GRDBInternal/Row.swift";
      v42 = xmmword_1ABF34740;
      v30 = v40;
      v29 = v41;
      while (1)
      {
        if (!sub_1ABE7EDC8())
        {
        }

        sub_1ABB370C4(&v53);
        if (BYTE8(v53))
        {
        }

        sub_1ABC4A328(&v53, v53);
        sub_1ABE545E4();
        if (sub_1ABA7E1E0(v29, 1, v30) == 1)
        {

          return sub_1ABAB480C(v29, &qword_1EB4D2920, &qword_1ABF6CB70);
        }

        v31 = v51;
        sub_1ABB17F98(v29, v51);
        v32 = swift_allocObject();
        *(v32 + 16) = v42;
        v33 = *v31;
        v34 = (*v31 & 0x80000000000000) != 0 ? 3826797 : 3828069;
        *&v53 = v34;
        *(&v53 + 1) = 0xE300000000000000;
        v56 = v33;
        v35 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v35);

        v36 = v53;
        *(v32 + 56) = MEMORY[0x1E69E6158];
        *(v32 + 64) = MEMORY[0x1E69A0138];
        *(v32 + 32) = v36;
        sub_1ABF22834();
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
        sub_1ABF229D4();

        sub_1ABAB480C(&v53, &unk_1EB4D38A0, &qword_1ABF3A8B0);
        v44(v13, v48);
        if (!v52)
        {
          break;
        }

        sub_1ABB17FFC(v51, type metadata accessor for CustomGraphPerson);
      }

      v37 = v39;
      sub_1ABAB480C(v39, &qword_1EB4D2920, &qword_1ABF6CB70);
      sub_1ABB17F98(v51, v37);
      return sub_1ABA7B9B4(v37, 0, 1, v30);
    }
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB141A0()
{
  v0 = type metadata accessor for CustomGraphPerson(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  v4 = v3 - v2;
  v5 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1ABB124B8();
  sub_1ABB17F28(v10, v7);
  if (sub_1ABA7E1E0(v7, 1, v0) == 1)
  {
    sub_1ABAB480C(v10, &qword_1EB4D2920, &qword_1ABF6CB70);
    return 0;
  }

  else
  {
    sub_1ABB17F98(v7, v4);
    CustomGraphPerson.toObjectiveCGraphObject()(v13);
    v11 = v14;
    sub_1ABB17FFC(v4, type metadata accessor for CustomGraphPerson);
    sub_1ABAB480C(v10, &qword_1EB4D2920, &qword_1ABF6CB70);
  }

  return v11;
}

uint64_t sub_1ABB144D8()
{
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  sub_1ABB145B4(v0, 0, 1);
}

__n128 AutonamingViewFeedback.__allocating_init(feedback:)(uint64_t a1)
{
  sub_1ABA96928();
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = v3;
  return result;
}

void sub_1ABB145B4(void *a1, uint64_t a2, char a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1ABF21EB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = a1;
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABB24300(&qword_1EB4CF050, v12, type metadata accessor for AutonamingViewFeedback, &protocol conformance descriptor for AutonamingViewFeedback);
  v13 = sub_1ABF21B14();
  if (v4)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B40);
    v16 = v4;
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v4;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1ABA78000, v17, v18, "Failed to encode Feedback: %@", v19, 0xCu);
      sub_1ABAB480C(v20, &unk_1EB4D57F0, &qword_1ABF390C0);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v23 = v13;
    v33 = *(v3 + OBJC_IVAR___GDFeedbackServiceInner_server);
    v34 = v14;
    v24 = sub_1ABF21DB4();
    v25 = sub_1ABF23BD4();
    v26 = a2;
    v27 = v25;
    if (a3)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    sub_1ABF21E74();
    v29 = sub_1ABF21E34();
    (*(v9 + 8))(v11, v8);
    v35[0] = 0;
    v30 = [v33 logWithFeedbackData:v24 type:v27 variant:0 eventId:v28 withTimestamp:v29 shouldProcessImmediately:1 error:v35];

    if (v30)
    {
      v31 = v35[0];
    }

    else
    {
      v32 = v35[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    sub_1ABA96210(v23, v34);
  }
}

void sub_1ABB14958()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700();
  type metadata accessor for EntityResolutionRankingStatefulFeedback();
  v5 = sub_1ABB24300(&qword_1EB4D2B98, 255, type metadata accessor for EntityResolutionRankingStatefulFeedback, &protocol conformance descriptor for EntityResolutionRankingStatefulFeedback);
  sub_1ABA95700(v5);
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABA7D1BC();
    v9 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v10 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v11);
      sub_1ABA9EA40(&dword_1ABA78000, v12, v13, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v10, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v14 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v14);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v6, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v15 = sub_1ABA99280();
    v17 = v16(v15);
    sub_1ABA7BDA4(v17, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v18 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABB14BE0()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700();
  type metadata accessor for EntityResolutionRankingDirectFeedback();
  v5 = sub_1ABB24300(&qword_1EB4D2B90, 255, type metadata accessor for EntityResolutionRankingDirectFeedback, &protocol conformance descriptor for EntityResolutionRankingDirectFeedback);
  sub_1ABA95700(v5);
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABA7D1BC();
    v9 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v10 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v11);
      sub_1ABA9EA40(&dword_1ABA78000, v12, v13, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v10, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v14 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v14);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v6, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v15 = sub_1ABA99280();
    v17 = v16(v15);
    sub_1ABA7BDA4(v17, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v18 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABB14E68()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700();
  type metadata accessor for EntityTaggingDirectFeedback();
  v5 = sub_1ABB24300(&qword_1EB4D2B40, 255, type metadata accessor for EntityTaggingDirectFeedback, &protocol conformance descriptor for EntityTaggingDirectFeedback);
  sub_1ABA95700(v5);
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABA7D1BC();
    v9 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v10 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v11);
      sub_1ABA9EA40(&dword_1ABA78000, v12, v13, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v10, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v14 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v14);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v6, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v15 = sub_1ABA99280();
    v17 = v16(v15);
    sub_1ABA7BDA4(v17, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v18 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABB150F0()
{
  sub_1ABA7BCA8();
  sub_1ABA83608();
  v3 = sub_1ABAAD23C(*MEMORY[0x1E69E9840]);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA806EC();
  sub_1ABA82700();
  type metadata accessor for EntityTaggingStatefulFeedback();
  v5 = sub_1ABB24300(&qword_1EB4D2B78, 255, type metadata accessor for EntityTaggingStatefulFeedback, &protocol conformance descriptor for EntityTaggingStatefulFeedback);
  sub_1ABA95700(v5);
  if (v0)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABA7D1BC();
    v9 = sub_1ABF237D4();
    sub_1ABF24664();
    sub_1ABAA9158();
    if (sub_1ABB247B4())
    {
      sub_1ABA8C938();
      swift_slowAlloc();
      v10 = sub_1ABAB6580();
      sub_1ABAB0F50(5.7779e-34);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      sub_1ABA9E1B4(v11);
      sub_1ABA9EA40(&dword_1ABA78000, v12, v13, "Failed to encode Feedback: %@");
      sub_1ABAB480C(v10, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v14 = sub_1ABA7E368();
      MEMORY[0x1AC5AB8B0](v14);
    }

    else
    {
    }
  }

  else
  {
    sub_1ABB2479C(v6, OBJC_IVAR___GDFeedbackServiceInner_server);
    sub_1ABAA1494();
    sub_1ABF23BD4();
    sub_1ABAA56EC();
    sub_1ABF21E34();
    v15 = sub_1ABA99280();
    v17 = v16(v15);
    sub_1ABA7BDA4(v17, sel_logWithFeedbackData_type_variant_eventId_withTimestamp_shouldProcessImmediately_error_);
    sub_1ABAA0D2C();

    v18 = 0;
    if ((v3 & 1) == 0)
    {
      sub_1ABA8CE48();

      swift_willThrow();
    }

    sub_1ABAB3BB8();
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB153C0()
{
  sub_1ABAA1958();
  sub_1ABAA27EC(v2, v3);
  sub_1ABB220B4(v1, v0);
  swift_endAccess();

  CustomGraphPerson.toObjectiveCGraphObject()(v4);
  v6 = v5;
  sub_1ABB15544(&v21);

  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v7 = swift_allocObject();
  sub_1ABAA16EC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v16, v21);
  v17[64] = 0;
  sub_1ABAA2BAC(v17);
  if (v0)
  {
  }
}

uint64_t sub_1ABB1547C(uint64_t a1, void *a2)
{
  sub_1ABAA27EC(a1, a2);
  sub_1ABB220B4(a1, a2);
  swift_endAccess();

  sub_1ABB15544(v7);
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = v7[1];
  *(v4 + 32) = v7[0];
  *(v4 + 48) = v5;
  *(v4 + 64) = 0;
  sub_1ABAA2BAC(v4);
  if (a2)
  {
  }
}

uint64_t sub_1ABB15544@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1ABF21BC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = sub_1ABB22FFC(v2, &selRef_suggestedNameStringInner);
  v13 = v12;
  v14 = [v2 suggestedNameComponentsInner];
  if (v14)
  {
    v15 = v14;

    sub_1ABF21BA4();

    (*(v5 + 32))(v10, v7, v4);
    v16 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    [v16 setStyle_];
    v17 = sub_1ABF21B94();
    v18 = [v16 stringFromPersonNameComponents_];

    v11 = sub_1ABF23C04();
    v13 = v19;

    (*(v5 + 8))(v10, v4);
  }

  result = sub_1ABB22FFC(v2, &selRef_suggestedContactIdentifierInner);
  *a1 = result;
  a1[1] = v21;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1ABB1574C()
{
  sub_1ABAA1958();
  sub_1ABAA27EC(v1, v2);

  sub_1ABA894AC();
  sub_1ABB18838(v3, v4, v5);
  swift_endAccess();

  CustomGraphPerson.toObjectiveCGraphObject()(v6);
  v8 = v7;
  sub_1ABB15544(&v23);

  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v9 = swift_allocObject();
  sub_1ABAA16EC(v9, v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v18, v23);
  v19[64] = 1;
  sub_1ABAA2BAC(v19);
  if (v0)
  {
  }
}

uint64_t sub_1ABB15814()
{
  sub_1ABAA1958();
  sub_1ABAA27EC(v1, v2);

  sub_1ABA894AC();
  sub_1ABB18838(v3, v4, v5);
  swift_endAccess();

  sub_1ABB15544(&v20);
  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v6 = swift_allocObject();
  sub_1ABAA16EC(v6, v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, v15, v20);
  v16[64] = 1;
  sub_1ABAA2BAC(v16);
  if (v0)
  {
  }
}

uint64_t sub_1ABB158E8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1ABF23C04();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  v13 = sub_1ABA9F664();
  a6(v13, v10, v11);
}

id AutonamingView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1ABB159F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AutonamingView.__allocating_init(viewName:)(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_allocWithZone(v2);
  v4 = sub_1ABF23BD4();

  v9[0] = 0;
  v5 = [v3 initWithViewName:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v5;
}

void *AutonamingView.init(viewName:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ViewService();
  v6 = static ViewService.clientService.getter(v5);
  v7 = ViewService.subgraphView(name:tableName:batchSize:)(a1, a2, 0x6870617267627573, 0xE800000000000000, 10);

  if (v2)
  {
    ObjectType = swift_getObjectType();
    sub_1ABA90F50(ObjectType);
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for AutonamingView());
    v9 = v7;
    v7 = v8;
    AutonamingView.init(subgraph:isForLiveServing:)(v9, 1);
    sub_1ABA7D1BC();
    v12 = swift_getObjectType();
    sub_1ABA90F50(v12);
  }

  return v7;
}

Swift::Void __swiftcall AutonamingView.reset()()
{
  v1 = OBJC_IVAR___GDAutonamingViewInner_rejectedIdentifiers;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CD0];

  type metadata accessor for AutonamingViewFeedback();
  sub_1ABA96928();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 2;
  sub_1ABB145B4(v2, 0, 1);
}

uint64_t sub_1ABB15E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6361746E6F436E63 && a2 == 0xE900000000000074;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB15F2C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x6361746E6F436E63;
  }
}

uint64_t sub_1ABB15F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB15E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB15FA8(uint64_t a1)
{
  v2 = sub_1ABB221DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB15FE4(uint64_t a1)
{
  v2 = sub_1ABB221DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AutonamingViewFeedback.MatchingInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4D2928, &qword_1ABF390C8);
  sub_1ABA7BB64();
  v34 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v33 - v30;
  v32 = *(v23 + 16);
  v33[1] = *(v23 + 24);
  v33[2] = v32;
  sub_1ABA88DCC(v26, v26[3]);
  sub_1ABB221DC();
  sub_1ABF252E4();
  sub_1ABF24ED4();
  if (!v24)
  {
    sub_1ABF24ED4();
  }

  (*(v34 + 8))(v31, v27);
  sub_1ABA7BC90();
}

void AutonamingViewFeedback.MatchingInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v28 = v27;
  v29 = sub_1ABAD219C(&qword_1EB4D2938, &qword_1ABF390D0);
  sub_1ABA7BB64();
  v31 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v26, v26[3]);
  sub_1ABB221DC();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v26);
  }

  else
  {
    v33 = sub_1ABF24DB4();
    v35 = v34;
    v36 = sub_1ABF24DB4();
    v38 = v37;
    v39 = v36;
    (*(v31 + 8))(v24, v29);
    *v28 = v33;
    v28[1] = v35;
    v28[2] = v39;
    v28[3] = v38;

    sub_1ABA84B54(v26);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB1633C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A6572 && a2 == 0xE600000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000001ABF86E40 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABB16494(char a1)
{
  result = 0x6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x7463656A6572;
      break;
    case 2:
      result = 0x7465736572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB16514(uint64_t a1, uint64_t a2)
{
  sub_1ABA7BB94();
  v5 = v3 == v4 && 0x80000001ABF86E60 == a2;
  if (v5 || (v6 = v3, sub_1ABA97980(), (sub_1ABF25054() & 1) != 0))
  {

    return 0;
  }

  else if (v6 == 1868983913 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v9 = sub_1ABF25054();

    if (v9)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB16614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB1633C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB1663C(uint64_t a1)
{
  v2 = sub_1ABB22230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB16678(uint64_t a1)
{
  v2 = sub_1ABB22230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB166B4(uint64_t a1)
{
  v2 = sub_1ABB223D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB166F0(uint64_t a1)
{
  v2 = sub_1ABB223D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB1672C(uint64_t a1)
{
  v2 = sub_1ABB22284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB16768(uint64_t a1)
{
  v2 = sub_1ABB22284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB167A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB167F0(uint64_t a1)
{
  v2 = sub_1ABB2232C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB1682C(uint64_t a1)
{
  v2 = sub_1ABB2232C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB16868(uint64_t a1)
{
  v2 = sub_1ABB222D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB168A4(uint64_t a1)
{
  v2 = sub_1ABB222D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AutonamingViewFeedback.FeedbackType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4D2940, &qword_1ABF390D8);
  sub_1ABA7BB64();
  v60 = v30;
  v61 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v59 = v32;
  v58 = sub_1ABAD219C(&qword_1EB4D2948, &qword_1ABF390E0);
  sub_1ABA7BB64();
  v57[1] = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  v57[0] = v35;
  sub_1ABAD219C(&qword_1EB4D2950, &qword_1ABF390E8);
  sub_1ABA7BB64();
  v64 = v37;
  v65 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v57 - v39;
  sub_1ABAD219C(&qword_1EB4D2958, &qword_1ABF390F0);
  sub_1ABA7BB64();
  v62 = v42;
  v63 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7BCE0();
  v44 = sub_1ABAD219C(&qword_1EB4D2960, &qword_1ABF390F8);
  sub_1ABA7BB64();
  v70 = v45;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA83634();
  v47 = *v23;
  v68 = v23[1];
  v69 = v47;
  v48 = *(v23 + 2);
  v66 = *(v23 + 1);
  v67 = v48;
  v49 = *(v23 + 48);
  sub_1ABA88DCC(v28, v28[3]);
  sub_1ABB22230();
  sub_1ABF252E4();
  if (!v49)
  {
    v51 = v62;
    LOBYTE(v71) = 0;
    sub_1ABB223D4();
    v52 = v44;
    sub_1ABA9E2F4();
    sub_1ABF24EC4();
    LOBYTE(v71) = 0;
    v53 = v63;
    sub_1ABF24F34();
    if (!v24)
    {
      v71 = v66;
      v72 = v67;
      sub_1ABB22380();
      sub_1ABF24F84();
    }

    (*(v51 + 8))(v26, v53);
    goto LABEL_13;
  }

  if (v49 != 1)
  {
    v52 = v44;
    if (v66 | v68 | v69 | v67 | *(&v66 + 1) | *(&v67 + 1))
    {
      LOBYTE(v71) = 3;
      sub_1ABB22284();
      sub_1ABA88BF0(&type metadata for AutonamingViewFeedback.FeedbackType.DidUpdateUserFeedbackCodingKeys, &v71);
      v54 = sub_1ABAB562C();
    }

    else
    {
      LOBYTE(v71) = 2;
      sub_1ABB222D8();
      sub_1ABA88BF0(&type metadata for AutonamingViewFeedback.FeedbackType.ResetCodingKeys, &v71);
      v54 = sub_1ABAB562C();
      v55 = v58;
    }

    v56(v54, v55);
LABEL_13:
    (*(v70 + 8))(v25, v52);
    goto LABEL_14;
  }

  LOBYTE(v71) = 1;
  sub_1ABB2232C();
  sub_1ABA9E2F4();
  sub_1ABF24EC4();
  LOBYTE(v71) = 0;
  v50 = v65;
  sub_1ABF24F34();
  if (!v24)
  {
    v71 = v66;
    v72 = v67;
    sub_1ABB22380();
    sub_1ABF24F84();
  }

  (*(v64 + 8))(v40, v50);
  (*(v70 + 8))(v25, v44);
LABEL_14:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void AutonamingViewFeedback.FeedbackType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v105 = v23;
  v27 = v26;
  v101 = v28;
  v103 = sub_1ABAD219C(&qword_1EB4D2998, &qword_1ABF39100);
  sub_1ABA7BB64();
  v100 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v99 = v31;
  sub_1ABAD219C(&qword_1EB4D29A0, &qword_1ABF39108);
  sub_1ABA7BB64();
  v94 = v33;
  v95 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  v98 = v35;
  v102 = sub_1ABAD219C(&qword_1EB4D29A8, &qword_1ABF39110);
  sub_1ABA7BB64();
  v97 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA83634();
  v38 = sub_1ABAD219C(&qword_1EB4D29B0, &qword_1ABF39118);
  sub_1ABA7BB64();
  v96 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v88 - v41;
  v43 = sub_1ABAD219C(&qword_1EB4D29B8, &unk_1ABF39120);
  sub_1ABA7BB64();
  v45 = v44;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7ED98();
  v47 = v27[3];
  v104 = v27;
  sub_1ABA88DCC(v27, v47);
  sub_1ABB22230();
  v48 = v105;
  sub_1ABF252C4();
  if (v48)
  {
    goto LABEL_8;
  }

  v91 = v38;
  v92 = v42;
  v49 = v103;
  v93 = v24;
  v105 = v45;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v51 == v52 >> 1)
  {
LABEL_7:
    v67 = sub_1ABF24B44();
    swift_allocError();
    v69 = v68;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v69 = &type metadata for AutonamingViewFeedback.FeedbackType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v70 = sub_1ABAB562C();
    v71(v70, v43);
LABEL_8:
    v72 = v104;
LABEL_9:
    sub_1ABA84B54(v72);
    sub_1ABA7BC90();
    return;
  }

  v89 = 0;
  if (v51 < (v52 >> 1))
  {
    v53 = *(v50 + v51);
    v54 = sub_1ABAD4E90();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v90 = v54;
    if (v56 == v58 >> 1)
    {
      v59 = v49;
      v60 = v43;
      v61 = v89;
      v63 = v100;
      v62 = v101;
      switch(v53)
      {
        case 1:
          LOBYTE(v106) = 1;
          sub_1ABB2232C();
          v65 = v60;
          sub_1ABA97464(&type metadata for AutonamingViewFeedback.FeedbackType.RejectCodingKeys, &v106);
          LOBYTE(v106) = 0;
          sub_1ABF24E14();
          v79 = v105;
          sub_1ABA8D354();
          sub_1ABF24E64();
          swift_unknownObjectRelease();
          v86 = sub_1ABA9E8D0();
          v87(v86);
          (*(v79 + 8))(v25, v60);
          v84 = v106;
          v85 = v107;
          v83 = 1;
          break;
        case 2:
          LOBYTE(v106) = 2;
          sub_1ABB222D8();
          v73 = v98;
          sub_1ABA97464(&type metadata for AutonamingViewFeedback.FeedbackType.ResetCodingKeys, &v106);
          swift_unknownObjectRelease();
          (*(v94 + 8))(v73, v95);
          v74 = sub_1ABA81538();
          v75(v74);
          v61 = 0;
          v65 = 0;
          v84 = 0uLL;
          v83 = 2;
          goto LABEL_13;
        case 3:
          LOBYTE(v106) = 3;
          sub_1ABB22284();
          v76 = v99;
          sub_1ABA97464(&type metadata for AutonamingViewFeedback.FeedbackType.DidUpdateUserFeedbackCodingKeys, &v106);
          swift_unknownObjectRelease();
          (*(v63 + 8))(v76, v59);
          v77 = sub_1ABA81538();
          v78(v77);
          v65 = 0;
          v84 = 0uLL;
          v83 = 2;
          v61 = 1;
LABEL_13:
          v85 = 0uLL;
          break;
        default:
          LOBYTE(v106) = 0;
          sub_1ABB223D4();
          v64 = v92;
          v65 = v60;
          sub_1ABA97464(&type metadata for AutonamingViewFeedback.FeedbackType.ConfirmCodingKeys, &v106);
          LOBYTE(v106) = 0;
          v66 = v91;
          sub_1ABF24E14();
          sub_1ABA8D354();
          sub_1ABF24E64();
          v80 = v96;
          swift_unknownObjectRelease();
          (*(v80 + 8))(v64, v66);
          v81 = sub_1ABA81538();
          v82(v81);
          v83 = 0;
          v84 = v106;
          v85 = v107;
          break;
      }

      v72 = v104;
      *v62 = v61;
      *(v62 + 8) = v65;
      *(v62 + 16) = v84;
      *(v62 + 32) = v85;
      *(v62 + 48) = v83;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AutonamingViewFeedback.init(feedback:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  return v1;
}

uint64_t AutonamingViewFeedback.feedback.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_1ABB230AC(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1ABB175FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB17690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB175FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB176BC(uint64_t a1)
{
  v2 = sub_1ABB2315C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB176F8(uint64_t a1)
{
  v2 = sub_1ABB2315C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutonamingViewFeedback.__deallocating_deinit()
{
  sub_1ABA88AFC();
  sub_1ABA96928();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB17780(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D29C8, &qword_1ABF39130);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA83634();
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABB2315C();
  sub_1ABF252E4();
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v14 = *(v3 + 48);
  v15 = *(v3 + 56);
  v16 = *(v3 + 64);
  sub_1ABB230AC(v10, v11, v12, v13, v14, v15, v16);
  sub_1ABB231B0();
  sub_1ABF24F84();
  sub_1ABB23104(v10, v11, v12, v13, v14, v15, v16);
  return (*(v7 + 8))(v2, v5);
}

uint64_t AutonamingViewFeedback.__allocating_init(from:)()
{
  sub_1ABA96928();
  swift_allocObject();
  sub_1ABA9F664();
  AutonamingViewFeedback.init(from:)();
  return v0;
}

void AutonamingViewFeedback.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D29E0, &qword_1ABF39138);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v3, v3[3]);
  v5 = sub_1ABB2315C();
  sub_1ABA89290(&type metadata for AutonamingViewFeedback.CodingKeys, v6, v5);
  if (v1)
  {
    type metadata accessor for AutonamingViewFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABB23204();
    sub_1ABA9E2F4();
    sub_1ABF24E64();
    v7 = sub_1ABA8E0A8();
    v8(v7);
    *(v0 + 16) = v9;
    *(v0 + 32) = v10;
    *(v0 + 48) = v11;
    *(v0 + 64) = v12;
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB17AAC@<X0>(uint64_t *a1@<X8>)
{
  result = AutonamingViewFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABB17B20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1ABAD219C(&qword_1EB4D2BC0, &qword_1ABF39E20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  sub_1ABAD219C(&qword_1EB4D2BC8, &qword_1ABF39E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF39090;
  *(inited + 32) = 0x6E6F697461727544;
  *(inited + 40) = 0xEF73646E6F636553;
  sub_1ABF21E84();
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 0x6C75736552646148;
  *(inited + 64) = 0xE900000000000074;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001ABF86FA0;
  if (a3 && (sub_1ABB22FFC(a3, &selRef_suggestedContactIdentifier), v14))
  {

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x80000001ABF86FC0;
  if (a3)
  {
    v16 = [a3 suggestedNameComponents];
    if (v16)
    {
      v17 = v16;
      sub_1ABF21BA4();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v21 = sub_1ABF21BC4();
    sub_1ABA7B9B4(v8, v18, 1, v21);
    sub_1ABB244A0(v8, v11);
    v20 = sub_1ABA7E1E0(v11, 1, v21) != 1;
  }

  else
  {
    v19 = sub_1ABF21BC4();
    sub_1ABA7B9B4(v11, 1, 1, v19);
    v20 = 0;
  }

  sub_1ABAB480C(v11, &qword_1EB4D2BC0, &qword_1ABF39E20);
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001ABF86FE0;
  if (a3 && (sub_1ABB22FFC(a3, &selRef_suggestedNameString), v22))
  {

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x80000001ABF87000;
  if (a3)
  {
    v24 = [a3 autonamingSuggestionReason];
  }

  else
  {
    v24 = 0;
  }

  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x80000001ABF87020;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1ABA84F5C();
  return sub_1ABF239C4();
}

uint64_t sub_1ABB17F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB17F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphPerson(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB17FFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABB18078(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1ABF34750;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1ABB182BC()
{
  sub_1ABA9F2FC();
  memcpy(__dst, v4, 0x90uLL);
  sub_1ABF25234();
  KnosisFact.hash(into:)(v28);
  sub_1ABF25294();
  sub_1ABAA51D0();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    sub_1ABB24704();
    v10 = (1 << v8) & *(v3 + 56 + v9);
    if (!v10)
    {
      break;
    }

    sub_1ABA8A01C();
    v13 = v13 && v11 == v12;
    if (v13 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABAE4304(v1);
      memcpy(__dst, (*(v3 + 48) + 144 * v8), 0x90uLL);
      v14 = sub_1ABA7D000();
      memcpy(v14, v15, 0x90uLL);
      sub_1ABAE42A8(__dst, v28);
      return v10 == 0;
    }

    v5 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *v2;
  sub_1ABAE42A8(v1, __dst);
  v17 = sub_1ABA9DF4C();
  v18 = sub_1ABB1C8A0(v17, v8, isUniquelyReferenced_nonNull_native);
  sub_1ABA972C8(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28[0]);
  memcpy(v0, v1, 0x90uLL);
  return v10 == 0;
}

void sub_1ABB18530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABA8A8E4();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  sub_1ABAB2AC0();
  sub_1ABB39A6C(&a12, v37);
  sub_1ABF25294();
  sub_1ABA94780();
  if (((*(v33 + 56 + v39) >> v32) & 1) == 0)
  {
LABEL_40:
    swift_isUniquelyReferenced_nonNull_native();
    v53 = sub_1ABAA108C();
    sub_1ABB1CB88(v53, v54, v55);
    *a9 = a12;
    goto LABEL_43;
  }

  v40 = ~v38;
  while (1)
  {
    v41 = *(*(v33 + 48) + v32);
    v42 = v41 >> 6;
    if (v41 >> 6)
    {
      if (v42 != 1)
      {
        if (v41 == 128)
        {
          if (v37 == 128)
          {
            goto LABEL_42;
          }
        }

        else if (v41 == 129)
        {
          if (v37 == 129)
          {
            goto LABEL_42;
          }
        }

        else if (v37 == 130)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      if ((v37 & 0xC0) != 0x40)
      {
        goto LABEL_39;
      }

      v43 = 0xE800000000000000;
      v44 = 0x6E656B6F54796E61;
      switch(v41 & 0x3F)
      {
        case 1u:
          v43 = 0xE600000000000000;
          v44 = sub_1ABA8B08C();
          break;
        case 2u:
          v44 = sub_1ABA96F50();
          break;
        case 3u:
          v44 = sub_1ABB24710();
          break;
        case 4u:
          v44 = sub_1ABA9EB7C();
          break;
        case 5u:
          v46 = sub_1ABA8B08C();
          v44 = sub_1ABA9ECD0(v46);
          break;
        default:
          break;
      }

      v47 = 0xE800000000000000;
      v48 = 0x6E656B6F54796E61;
      switch(v42)
      {
        case 1u:
          goto LABEL_29;
        case 2u:
          goto LABEL_31;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_30;
        case 5u:
          goto LABEL_33;
        default:
          break;
      }
    }

    else
    {
      v45 = v37;
      if (v37 >= 0x40u)
      {
        goto LABEL_39;
      }

      v43 = 0xE800000000000000;
      v44 = 0x6E656B6F54796E61;
      switch(*(*(v33 + 48) + v32))
      {
        case 1:
          v43 = 0xE600000000000000;
          v44 = sub_1ABA8B08C();
          break;
        case 2:
          v44 = sub_1ABA96F50();
          break;
        case 3:
          v44 = sub_1ABB24710();
          break;
        case 4:
          v44 = sub_1ABA9EB7C();
          break;
        case 5:
          v49 = sub_1ABA8B08C();
          v44 = sub_1ABA9ECD0(v49);
          break;
        default:
          break;
      }

      v47 = 0xE800000000000000;
      v48 = 0x6E656B6F54796E61;
      switch(v45)
      {
        case 1:
LABEL_29:
          v47 = 0xE600000000000000;
          v48 = 0x786966657270;
          break;
        case 2:
LABEL_31:
          v48 = 0x6E656B6F546C6C61;
          v47 = 0xE900000000000073;
          break;
        case 3:
LABEL_32:
          v48 = 0x69666572506C6C61;
          v47 = 0xEB00000000736578;
          break;
        case 4:
LABEL_30:
          v47 = 0xE600000000000000;
          v48 = 0x657361726870;
          break;
        case 5:
LABEL_33:
          v48 = 0x6850786966657270;
          v47 = 0xEC00000065736172;
          break;
        default:
          break;
      }
    }

    if (v44 == v48 && v43 == v47)
    {
      break;
    }

    v51 = sub_1ABF25054();

    if (v51)
    {
      goto LABEL_42;
    }

LABEL_39:
    v32 = (v32 + 1) & v40;
    sub_1ABB24704();
    if (((*(v33 + 56 + v52) >> v32) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_42:
  v37 = *(*(v33 + 48) + v32);
LABEL_43:
  *a10 = v37;
  sub_1ABA89EC8();
}

BOOL sub_1ABB18838(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1ABF25234();
  sub_1ABF23D34();
  v8 = sub_1ABF25294();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1ABF25054() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1ABB1CFD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

void sub_1ABB18984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABA8A8E4();
  a31 = v34;
  a32 = v35;
  v36 = v32;
  v38 = v37;
  v62 = v39;
  v40 = *v32;
  sub_1ABF25234();
  sub_1ABBB4ED8(&a12, v38);
  sub_1ABF25294();
  sub_1ABA94780();
  if ((*(v40 + 56 + v42) >> v33))
  {
    v43 = ~v41;
    sub_1ABA8071C();
    v63 = v44;
    v64 = v45;
    while (1)
    {
      v46 = 0xE400000000000000;
      v47 = 1701736302;
      switch(*(*(v40 + 48) + v33))
      {
        case 1:
          v47 = sub_1ABA97980();
          v46 = 0x80000001ABF7EE20;
          break;
        case 2:
          v47 = sub_1ABA9F400();
          break;
        case 3:
          v48 = 0x47746E657665;
          goto LABEL_11;
        case 4:
          v47 = sub_1ABA7D198();
          break;
        case 5:
          v47 = sub_1ABA7FC1C();
          break;
        case 6:
          v48 = 0x476C61636F6CLL;
LABEL_11:
          v47 = sub_1ABA80704(v48);
          break;
        case 7:
          sub_1ABA7BB94();
          v47 = v49 + 10;
          v46 = v63;
          break;
        case 8:
          sub_1ABA7BB94();
          v47 = v50 + 8;
          v46 = v64;
          break;
        default:
          break;
      }

      v51 = 0xE400000000000000;
      v52 = 1701736302;
      switch(v38)
      {
        case 1:
          sub_1ABA8BA2C();
          v51 = 0x80000001ABF7EE20;
          break;
        case 2:
          v51 = 0xE700000000000000;
          sub_1ABA8BE94();
          break;
        case 3:
          v53 = 0x47746E657665;
          goto LABEL_21;
        case 4:
          sub_1ABA890F4();
          v51 = 0xED00007865646E49;
          break;
        case 5:
          sub_1ABA891B0();
          v51 = 0xEC0000007865646ELL;
          break;
        case 6:
          v53 = 0x476C61636F6CLL;
LABEL_21:
          v52 = v53 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
          v51 = 0xEF7865646E496870;
          break;
        case 7:
          sub_1ABA7BB94();
          v52 = v54 + 10;
          v51 = v63;
          break;
        case 8:
          sub_1ABA7BB94();
          v52 = v55 + 8;
          v51 = v64;
          break;
        default:
          break;
      }

      if (v47 == v52 && v46 == v51)
      {
        break;
      }

      v57 = sub_1ABA89728(v47, v46, v52);

      if (v57)
      {
        goto LABEL_31;
      }

      v33 = (v33 + 1) & v43;
      sub_1ABB24704();
      if (((*(v40 + 56 + v58) >> v33) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v38 = *(*(v40 + 48) + v33);
  }

  else
  {
LABEL_29:
    swift_isUniquelyReferenced_nonNull_native();
    v59 = sub_1ABAA108C();
    sub_1ABB1D13C(v59, v60, v61);
    *v36 = a12;
  }

  *v62 = v38;
  sub_1ABA89EC8();
}

BOOL sub_1ABB18D34()
{
  sub_1ABA9F2FC();
  memcpy(__dst, v4, 0x58uLL);
  sub_1ABF25234();
  KnosisInternalFact.hash(into:)(v28);
  sub_1ABF25294();
  sub_1ABAA51D0();
  v7 = ~v6;
  while (1)
  {
    v8 = v5 & v7;
    sub_1ABB24704();
    v10 = (1 << v8) & *(v3 + 56 + v9);
    if (!v10)
    {
      break;
    }

    sub_1ABA8A01C();
    v13 = v13 && v11 == v12;
    if (v13 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABB24250(v1);
      memcpy(__dst, (*(v3 + 48) + 88 * v8), 0x58uLL);
      v14 = sub_1ABA7D000();
      memcpy(v14, v15, 0x58uLL);
      sub_1ABB242A4(__dst, v28);
      return v10 == 0;
    }

    v5 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *v2;
  sub_1ABB242A4(v1, __dst);
  v17 = sub_1ABA9DF4C();
  v18 = sub_1ABB1D684(v17, v8, isUniquelyReferenced_nonNull_native);
  sub_1ABA972C8(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28[0]);
  memcpy(v0, v1, 0x58uLL);
  return v10 == 0;
}

void sub_1ABB18E84()
{
  sub_1ABA9DE04();
  v3 = v2;
  v20 = v4;
  v18 = v0;
  v5 = *v0;
  v19 = v2 & 1;
  sub_1ABB11118(*(*v0 + 40));
  sub_1ABA94780();
  if ((*(v5 + 56 + v7) >> v1))
  {
    v8 = ~v6;
    if (v3)
    {
      v9 = 0x7241746E65746E69;
    }

    else
    {
      v9 = 0x79676F6C6F746E6FLL;
    }

    if (v3)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    while (1)
    {
      v11 = *(*(v5 + 48) + v1) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
      v12 = *(*(v5 + 48) + v1) ? 0xE900000000000067 : 0xE800000000000000;
      if (v11 == v9 && v12 == v10)
      {
        break;
      }

      v14 = sub_1ABF25054();

      if (v14)
      {
        goto LABEL_22;
      }

      v1 = (v1 + 1) & v8;
      sub_1ABB24704();
      if (((*(v5 + 56 + v15) >> v1) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v17 = *(*(v5 + 48) + v1);
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v18;
    v17 = v19;
    sub_1ABB1D804(v19, v1, isUniquelyReferenced_nonNull_native);
    *v18 = v21;
  }

  *v20 = v17;
  sub_1ABA88CCC();
}

uint64_t sub_1ABB19000(void *a1, char *a2)
{
  v4 = *v2;
  sub_1ABF25234();
  v5 = *a2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  v9 = *(a2 + 3);
  v44 = *(a2 + 2);
  v45 = v9;
  v29 = a2;
  v46 = a2[64];
  sub_1ABF23D34();
  sub_1ABF23D34();
  v39[0] = v44;
  v39[1] = v45;
  LOBYTE(v39[2]) = v46;
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(__dst);
  sub_1ABF25294();
  v32 = v4 + 56;
  v33 = v4;
  sub_1ABAA51D0();
  v12 = v11 & ~v10;
  if ((*(v13 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v31 = ~v10;
    while (1)
    {
      memcpy(__dst, (*(v33 + 48) + 72 * v12), 0x41uLL);
      v14 = __dst[0] == v5 && __dst[1] == v6;
      if (v14 || (sub_1ABF25054() & 1) != 0)
      {
        v15 = __dst[2] == v8 && __dst[3] == v7;
        if (v15 || (sub_1ABF25054() & 1) != 0)
        {
          v16 = v5;
          v17 = v7;
          v18 = v8;
          v19 = __dst[4];
          v20 = __dst[5];
          v21 = __dst[6];
          v22 = __dst[7];
          v23 = __dst[8];
          v34 = __dst[4];
          v35 = __dst[5];
          v36 = __dst[6];
          v37 = __dst[7];
          v38 = __dst[8];
          v40 = v44;
          v41 = v45;
          v42 = v46;
          sub_1ABB24348(__dst, v39);
          v24 = v20;
          v8 = v18;
          v7 = v17;
          v5 = v16;
          sub_1ABAFF488(v19, v24, v21, v22, v23);
          sub_1ABAFF4E8(&v44, v39);
          LOBYTE(v21) = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(&v34, &v40);
          sub_1ABAFF544(v40, *(&v40 + 1), v41, *(&v41 + 1), v42);
          sub_1ABAFF544(v34, v35, v36, v37, v38);
          sub_1ABB243A4(__dst);
          if (v21)
          {
            break;
          }
        }
      }

      v12 = (v12 + 1) & v31;
      if (((*(v32 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1ABB243A4(v29);
    v27 = *(v33 + 48);
    memcpy(v39, (v27 + 72 * v12), 0x41uLL);
    memcpy(a1, (v27 + 72 * v12), 0x41uLL);
    sub_1ABB24348(v39, &v34);
    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[0] = *v28;
    sub_1ABB24348(v29, __dst);
    sub_1ABB1DA00(v29, v12, isUniquelyReferenced_nonNull_native);
    *v28 = *&v39[0];
    memcpy(a1, v29, 0x41uLL);
    return 1;
  }
}

void sub_1ABB192D0()
{
  sub_1ABA8D0C4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  sub_1ABF25234();
  sub_1ABF25264();
  v10 = sub_1ABA9DF4C();
  MEMORY[0x1AC5AA8D0](v10);
  v11 = sub_1ABAB526C();
  MEMORY[0x1AC5AA8D0](v11);
  v12 = sub_1ABF25294();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v9 + 48) + 24 * v14);
      v17 = *v16;
      v19 = *(v16 + 1);
      v18 = *(v16 + 2);
      v20 = v17 == v6 && v19 == v4;
      if (v20 && v18 == v2)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v0;
    sub_1ABB1DCA8(v6, v4, v2, v14, isUniquelyReferenced_nonNull_native);
    *v0 = v23;
  }

  *v8 = v6;
  *(v8 + 8) = v4;
  *(v8 + 16) = v2;
  sub_1ABA8D1F0();
}

void sub_1ABB193F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1ABA9DE04();
  v14 = v12;
  v16 = v15;
  v18 = v17;
  v19 = *v12;
  sub_1ABA93208();
  sub_1ABAAFEEC(v20);
  sub_1ABA94780();
  if ((*(v19 + 56 + v22) >> v13))
  {
    v23 = ~v21;
    sub_1ABA8071C();
    v50 = v24;
    while (1)
    {
      v25 = 0xE500000000000000;
      v26 = 0x7465736E75;
      switch(*(*(v19 + 48) + v13))
      {
        case 1:
          v25 = 0xE700000000000000;
          v26 = sub_1ABAB1010();
          break;
        case 2:
          v26 = sub_1ABA9F8F8();
          break;
        case 3:
          v25 = 0xE600000000000000;
          v26 = sub_1ABA8C52C();
          break;
        case 4:
          v25 = 0xE600000000000000;
          v26 = sub_1ABAA0B4C();
          break;
        case 5:
          v25 = 0xE600000000000000;
          v26 = sub_1ABA8AD0C();
          break;
        case 6:
          sub_1ABA8BE84();
          v26 = v33 + 3591;
          v25 = 0xE600000000000000;
          break;
        case 7:
          v25 = 0xE600000000000000;
          v31 = 1752457574;
          goto LABEL_30;
        case 8:
          v25 = 0xE700000000000000;
          v26 = sub_1ABA9521C();
          break;
        case 9:
          v25 = 0xE700000000000000;
          v30 = sub_1ABA8AAA0();
          goto LABEL_28;
        case 0xA:
          v25 = 0xE600000000000000;
          v31 = 1953720691;
LABEL_30:
          v26 = v31 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v26 = sub_1ABA7ABD8() | 0x7261506400000000;
          v29 = 7630437;
          goto LABEL_25;
        case 0xC:
          v26 = sub_1ABA7ABD8() | 0x746F6D6400000000;
          goto LABEL_24;
        case 0xD:
          v26 = sub_1ABA7ABD8() | 0x7461666400000000;
LABEL_24:
          v29 = 7497064;
LABEL_25:
          v25 = v29 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v25 = 0xE700000000000000;
          v28 = sub_1ABA8C6EC();
          goto LABEL_20;
        case 0xF:
          v26 = sub_1ABA8A360();
          break;
        case 0x10:
          v25 = 0xE300000000000000;
          v26 = 7237491;
          break;
        case 0x11:
          v25 = 0xE800000000000000;
          v32 = sub_1ABA9F9E8();
          goto LABEL_35;
        case 0x12:
          v25 = 0xE700000000000000;
          v30 = sub_1ABA9FAEC();
LABEL_28:
          v26 = v30 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v25 = 0xE400000000000000;
          v26 = 1701210487;
          break;
        case 0x14:
          v25 = 0xE700000000000000;
          v28 = sub_1ABA8A494();
LABEL_20:
          v26 = v28 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v25 = 0xE600000000000000;
          v26 = sub_1ABA9FBC0();
          break;
        case 0x16:
          v26 = sub_1ABA97980();
          v25 = v50;
          break;
        case 0x17:
          v25 = 0xE800000000000000;
          v32 = sub_1ABA8B24C();
LABEL_35:
          v26 = v32 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v25 = 0xE800000000000000;
          v26 = sub_1ABAA1264();
          break;
        case 0x19:
          v26 = sub_1ABAB543C();
          v25 = 0xE900000000000065;
          break;
        case 0x1A:
          v25 = 0xE600000000000000;
          v26 = sub_1ABA9FCE4();
          break;
        case 0x1B:
          v27 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v26 = sub_1ABAA0A28();
          break;
        case 0x1D:
          v27 = 1631811949;
LABEL_38:
          v26 = v27 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v34 = 0xE500000000000000;
      v35 = 0x7465736E75;
      switch(v16)
      {
        case 1:
          v34 = 0xE700000000000000;
          sub_1ABA96004();
          break;
        case 2:
          sub_1ABA8B480();
          break;
        case 3:
          v34 = 0xE600000000000000;
          sub_1ABA8AEB8();
          break;
        case 4:
          v34 = 0xE600000000000000;
          sub_1ABA950B0();
          break;
        case 5:
          v34 = 0xE600000000000000;
          sub_1ABAA03D8();
          break;
        case 6:
          sub_1ABA8BE84();
          v35 = v43 + 3591;
          v34 = 0xE600000000000000;
          break;
        case 7:
          v34 = 0xE600000000000000;
          v40 = 1752457574;
          goto LABEL_67;
        case 8:
          v34 = 0xE700000000000000;
          sub_1ABAB5C34();
          break;
        case 9:
          v34 = 0xE700000000000000;
          sub_1ABA9FF9C();
          goto LABEL_65;
        case 10:
          v34 = 0xE600000000000000;
          v40 = 1953720691;
LABEL_67:
          v35 = v40 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          sub_1ABA82DCC();
          sub_1ABA88F50();
          goto LABEL_62;
        case 12:
          sub_1ABA82DCC();
          v35 = v38 | 0x746F6D6400000000;
          goto LABEL_61;
        case 13:
          sub_1ABA82DCC();
          v35 = v42 | 0x7461666400000000;
LABEL_61:
          v34 = 7497064;
LABEL_62:
          v34 = v34 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v34 = 0xE700000000000000;
          sub_1ABA8B0D0();
          goto LABEL_57;
        case 15:
          sub_1ABAA0118();
          break;
        case 16:
          v34 = 0xE300000000000000;
          v35 = 7237491;
          break;
        case 17:
          v34 = 0xE800000000000000;
          sub_1ABA8B634();
          goto LABEL_72;
        case 18:
          v34 = 0xE700000000000000;
          sub_1ABA8B844();
LABEL_65:
          v35 = v39 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v34 = 0xE400000000000000;
          v35 = 1701210487;
          break;
        case 20:
          v34 = 0xE700000000000000;
          sub_1ABAA029C();
LABEL_57:
          v35 = v37 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v34 = 0xE600000000000000;
          sub_1ABA8BA58();
          break;
        case 22:
          sub_1ABA8BA2C();
          v34 = v50;
          break;
        case 23:
          v34 = 0xE800000000000000;
          sub_1ABAA0510();
LABEL_72:
          v35 = v41 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v34 = 0xE800000000000000;
          sub_1ABA97728();
          break;
        case 25:
          sub_1ABAA1B7C();
          v34 = 0xE900000000000065;
          break;
        case 26:
          v34 = 0xE600000000000000;
          sub_1ABAA06AC();
          break;
        case 27:
          v36 = 1699772781;
          goto LABEL_75;
        case 28:
          sub_1ABA9FE44();
          break;
        case 29:
          v36 = 1631811949;
LABEL_75:
          v35 = v36 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v26 == v35 && v25 == v34)
      {
        break;
      }

      v45 = sub_1ABA89728(v26, v25, v35);

      if (v45)
      {
        goto LABEL_85;
      }

      v13 = (v13 + 1) & v23;
      sub_1ABB24704();
      if (((*(v19 + 56 + v46) >> v13) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    v16 = *(*(v19 + 48) + v13);
  }

  else
  {
LABEL_83:
    swift_isUniquelyReferenced_nonNull_native();
    v47 = sub_1ABAA108C();
    sub_1ABB1DE44(v47, v48, v49);
    *v14 = a12;
  }

  *v18 = v16;
  sub_1ABA88CCC();
}

void sub_1ABB1988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1ABA8A8E4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v61 = v32;
  v62 = v41;
  v42 = *v32;
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  sub_1ABF25294();
  v43 = v42 + 56;
  sub_1ABAA51D0();
  v46 = v45 & ~v44;
  if ((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v44;
    v60 = v42;
    v48 = *(v42 + 48);
    while (1)
    {
      v49 = (v48 + 32 * v46);
      v50 = v49[1];
      v51 = v49[2];
      v52 = v49[3];
      v53 = *v49 == v40 && v50 == v38;
      if (v53 || (sub_1ABA94798(*v49, v50, v40) & 1) != 0)
      {
        v54 = v51 == v36 && v52 == v34;
        if (v54 || (sub_1ABA8CF7C(v51, v52, v36) & 1) != 0)
        {
          break;
        }
      }

      v46 = (v46 + 1) & v47;
      if (((*(v43 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v56 = (*(v60 + 48) + 32 * v46);
    v57 = v56[1];
    v58 = v56[2];
    v59 = v56[3];
    *v62 = *v56;
    v62[1] = v57;
    v62[2] = v58;
    v62[3] = v59;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *v61;

    sub_1ABB1E4F4(v40, v38, v36, v34, v46, isUniquelyReferenced_nonNull_native);
    *v61 = v63;
    *v62 = v40;
    v62[1] = v38;
    v62[2] = v36;
    v62[3] = v34;
  }

  sub_1ABA89EC8();
}

BOOL sub_1ABB19B10()
{
  sub_1ABA8CA7C();
  v4 = *v1;
  sub_1ABF25224();
  sub_1ABAA489C();
  while (1)
  {
    sub_1ABA9F1F8();
    v7 = v6 & v5;
    if ((v6 & v5) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v3) == v0)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAA3BB4();
  sub_1ABA9EA60();
  sub_1ABB1E84C(v8, v9, v10, v11, v12, v13);
  sub_1ABA972C8(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
LABEL_6:
  result = v7 == 0;
  *v2 = v0;
  return result;
}

uint64_t sub_1ABB19BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1ABB18078(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v32 = *(v16 + 24);
    v31 = *(v16 + 32);
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 40 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    *(v28 + 24) = v32;
    *(v28 + 32) = v31;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB19E44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BB0, &qword_1ABF39E08);
  result = sub_1ABF24A44();
  v5 = result;
  if (*(v3 + 16))
  {
    v39 = v1;
    v40 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v41 = result;
    if (v10)
    {
      do
      {
        v13 = __clz(__rbit64(v10));
        v44 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 144 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v47 = *(v16 + 16);
        v53 = *(v16 + 24);
        v50 = *(v16 + 40);
        v51 = *(v16 + 32);
        v43 = *(v16 + 48);
        v19 = *(v16 + 50);
        v59 = *(v16 + 51);
        v60 = *(v16 + 55);
        v20 = *(v16 + 56);
        v21 = *(v16 + 64);
        v46 = *(v16 + 96);
        v58 = *(v16 + 88);
        v57 = *(v16 + 72);
        v52 = *(v16 + 104);
        v48 = *(v16 + 120);
        v49 = *(v16 + 112);
        v42 = *(v16 + 128);
        v54 = *(v16 + 130);
        v56 = *(v16 + 135);
        v55 = *(v16 + 131);
        v22 = *(v16 + 136);
        sub_1ABF25234();

        v45 = v18;
        sub_1ABF23D34();
        switch(v19)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            v24 = v47;
            MEMORY[0x1AC5AA8D0](v47);
            break;
          case 2:
            v23 = 2;
            goto LABEL_16;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            sub_1ABF23D34();
            goto LABEL_18;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
LABEL_18:
            v24 = v47;
            break;
          default:
            v23 = 0;
LABEL_16:
            MEMORY[0x1AC5AA8A0](v23);
            v24 = v47;
            sub_1ABF23D34();
            break;
        }

        sub_1ABF23D34();
        switch(v54)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v46);
            goto LABEL_28;
          case 2:
            v25 = 2;
            goto LABEL_24;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            goto LABEL_26;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            goto LABEL_28;
          default:
            v25 = 0;
LABEL_24:
            MEMORY[0x1AC5AA8A0](v25);
LABEL_26:
            sub_1ABF23D34();
LABEL_28:
            sub_1ABD8F210();

            result = sub_1ABF25294();
            v5 = v41;
            v26 = -1 << *(v41 + 32);
            v27 = result & ~v26;
            v28 = v27 >> 6;
            if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) != 0)
            {
              v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
              v30 = v19;
              goto LABEL_37;
            }

            v31 = 0;
            v32 = (63 - v26) >> 6;
            v30 = v19;
            break;
        }

        do
        {
          if (++v28 == v32 && (v31 & 1) != 0)
          {
LABEL_45:
            __break(1u);
            return result;
          }

          v33 = v28 == v32;
          if (v28 == v32)
          {
            v28 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v28);
        }

        while (v34 == -1);
        v29 = __clz(__rbit64(~v34)) + (v28 << 6);
LABEL_37:
        *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v35 = *(v41 + 48) + 144 * v29;
        *v35 = v17;
        *(v35 + 8) = v45;
        *(v35 + 16) = v24;
        *(v35 + 24) = v53;
        *(v35 + 32) = v51;
        *(v35 + 40) = v50;
        *(v35 + 48) = v43;
        *(v35 + 50) = v30;
        *(v35 + 51) = v59;
        *(v35 + 55) = v60;
        *(v35 + 56) = v20;
        *(v35 + 64) = v21;
        *(v35 + 72) = v57;
        *(v35 + 88) = v58;
        *(v35 + 96) = v46;
        *(v35 + 104) = v52;
        *(v35 + 112) = v49;
        *(v35 + 120) = v48;
        *(v35 + 128) = v42;
        *(v35 + 130) = v54;
        *(v35 + 135) = v56;
        *(v35 + 131) = v55;
        *(v35 + 136) = v22;
        ++*(v41 + 16);
        v3 = v40;
        v10 = v44;
      }

      while (v44);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v44 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      v37 = v5;
      sub_1ABB18078(0, (v36 + 63) >> 6, v7);
      v5 = v37;
    }

    else
    {
      *v7 = -1 << v36;
    }

    v2 = v39;
    *(v3 + 16) = 0;
  }

  v38 = v5;

  *v2 = v38;
  return result;
}

uint64_t sub_1ABB1A334(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1ABB18078(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1ABF25234();
    sub_1ABF23D34();
    result = sub_1ABF25294();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ABB1A590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1ABAD219C(&qword_1EB4D2BA0, &qword_1ABF39DF0);
  result = sub_1ABF24A44();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_37:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1ABB18078(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1ABF25234();
    if (v16 >> 6)
    {
      if (v16 >> 6 == 1)
      {
        MEMORY[0x1AC5AA8A0](4);
        sub_1ABF23D34();
      }

      else
      {
        if (v16 == 128)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16 == 129 ? 1 : 2;
        }

        MEMORY[0x1AC5AA8A0](v17);
      }
    }

    else
    {
      MEMORY[0x1AC5AA8A0](3);
      sub_1ABF23D34();
    }

    result = sub_1ABF25294();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_31;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}