void sub_1A950E504(uint64_t a1)
{
  sub_1A950E98C();
  if (v2 <= 0x3F)
  {
    MEMORY[0x1EEE9AC00](v1);
    sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
    sub_1A957CC58();
    swift_getTupleTypeMetadata();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1A950E604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v4 = *(v3 + 80);
  v6 = ((v5 + v4 + ((v5 + v4 + ((v4 + 16) & ~v4)) & ~v4)) & ~v4) + v5;
  v7 = 20;
  if (v6 > 0x14)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_28:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1A950E778(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = *(v5 + 64) + 1;
  }

  v6 = *(v5 + 80);
  v8 = ((v7 + v6 + ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6)) & ~v6) + v7;
  if (v8 <= 0x14)
  {
    v8 = 20;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_42:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v8] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_27;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_1A950E98C()
{
  if (!qword_1EB3885F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3885F0);
    }
  }
}

uint64_t _s4SpecV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s4SpecV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A950EC30()
{
  result = qword_1EB3A2170[0];
  if (!qword_1EB3A2170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2170);
  }

  return result;
}

unint64_t sub_1A950EC88()
{
  result = qword_1EB3A2380[0];
  if (!qword_1EB3A2380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2380);
  }

  return result;
}

unint64_t sub_1A950ECE0()
{
  result = qword_1EB3A2590[0];
  if (!qword_1EB3A2590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2590);
  }

  return result;
}

unint64_t sub_1A950ED38()
{
  result = qword_1EB3A27A0[0];
  if (!qword_1EB3A27A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A27A0);
  }

  return result;
}

unint64_t sub_1A950ED90()
{
  result = qword_1EB3A29B0[0];
  if (!qword_1EB3A29B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A29B0);
  }

  return result;
}

unint64_t sub_1A950EDE8()
{
  result = qword_1EB3A2BC0[0];
  if (!qword_1EB3A2BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2BC0);
  }

  return result;
}

unint64_t sub_1A950EE94()
{
  result = qword_1EB3A33D0[0];
  if (!qword_1EB3A33D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A33D0);
  }

  return result;
}

unint64_t sub_1A950EEEC()
{
  result = qword_1EB3A35E0[0];
  if (!qword_1EB3A35E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A35E0);
  }

  return result;
}

unint64_t sub_1A950EF44()
{
  result = qword_1EB3A37F0[0];
  if (!qword_1EB3A37F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A37F0);
  }

  return result;
}

unint64_t sub_1A950EF9C()
{
  result = qword_1EB3A3A00[0];
  if (!qword_1EB3A3A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3A00);
  }

  return result;
}

unint64_t sub_1A950EFF4()
{
  result = qword_1EB3A3C10[0];
  if (!qword_1EB3A3C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3C10);
  }

  return result;
}

unint64_t sub_1A950F04C()
{
  result = qword_1EB3A3E20[0];
  if (!qword_1EB3A3E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3E20);
  }

  return result;
}

unint64_t sub_1A950F0A4()
{
  result = qword_1EB3A3F30;
  if (!qword_1EB3A3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A3F30);
  }

  return result;
}

unint64_t sub_1A950F0FC()
{
  result = qword_1EB3A3F38[0];
  if (!qword_1EB3A3F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3F38);
  }

  return result;
}

unint64_t sub_1A950F154()
{
  result = qword_1EB3A3FC0;
  if (!qword_1EB3A3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A3FC0);
  }

  return result;
}

unint64_t sub_1A950F1AC()
{
  result = qword_1EB3A3FC8[0];
  if (!qword_1EB3A3FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3FC8);
  }

  return result;
}

unint64_t sub_1A950F204()
{
  result = qword_1EB3A4050;
  if (!qword_1EB3A4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4050);
  }

  return result;
}

unint64_t sub_1A950F25C()
{
  result = qword_1EB3A4058[0];
  if (!qword_1EB3A4058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4058);
  }

  return result;
}

unint64_t sub_1A950F2B4()
{
  result = qword_1EB3A40E0;
  if (!qword_1EB3A40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A40E0);
  }

  return result;
}

unint64_t sub_1A950F30C()
{
  result = qword_1EB3A40E8[0];
  if (!qword_1EB3A40E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A40E8);
  }

  return result;
}

unint64_t sub_1A950F364()
{
  result = qword_1EB3A4170;
  if (!qword_1EB3A4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4170);
  }

  return result;
}

unint64_t sub_1A950F3BC()
{
  result = qword_1EB3A4178;
  if (!qword_1EB3A4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4178);
  }

  return result;
}

unint64_t sub_1A950F414()
{
  result = qword_1EB3A4200;
  if (!qword_1EB3A4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4200);
  }

  return result;
}

unint64_t sub_1A950F46C()
{
  result = qword_1EB3A4208[0];
  if (!qword_1EB3A4208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4208);
  }

  return result;
}

unint64_t sub_1A950F56C()
{
  result = qword_1EB3A4410;
  if (!qword_1EB3A4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4410);
  }

  return result;
}

unint64_t sub_1A950F5C4()
{
  result = qword_1EB3A4418[0];
  if (!qword_1EB3A4418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4418);
  }

  return result;
}

unint64_t sub_1A950F61C()
{
  result = qword_1EB3A44A0;
  if (!qword_1EB3A44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A44A0);
  }

  return result;
}

unint64_t sub_1A950F674()
{
  result = qword_1EB3A44A8[0];
  if (!qword_1EB3A44A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A44A8);
  }

  return result;
}

unint64_t sub_1A950F6CC()
{
  result = qword_1EB3A4530;
  if (!qword_1EB3A4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4530);
  }

  return result;
}

unint64_t sub_1A950F724()
{
  result = qword_1EB3A4538[0];
  if (!qword_1EB3A4538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4538);
  }

  return result;
}

unint64_t sub_1A950F77C()
{
  result = qword_1EB3A45C0;
  if (!qword_1EB3A45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A45C0);
  }

  return result;
}

unint64_t sub_1A950F7D4()
{
  result = qword_1EB3A45C8[0];
  if (!qword_1EB3A45C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A45C8);
  }

  return result;
}

unint64_t sub_1A950F82C()
{
  result = qword_1EB3A4650;
  if (!qword_1EB3A4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4650);
  }

  return result;
}

unint64_t sub_1A950F884()
{
  result = qword_1EB3A4658[0];
  if (!qword_1EB3A4658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4658);
  }

  return result;
}

unint64_t sub_1A950F8DC()
{
  result = qword_1EB3A46E0;
  if (!qword_1EB3A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A46E0);
  }

  return result;
}

unint64_t sub_1A950F934()
{
  result = qword_1EB3A46E8[0];
  if (!qword_1EB3A46E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A46E8);
  }

  return result;
}

unint64_t sub_1A950F98C()
{
  result = qword_1EB3A4770;
  if (!qword_1EB3A4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4770);
  }

  return result;
}

unint64_t sub_1A950F9E4()
{
  result = qword_1EB3A4778;
  if (!qword_1EB3A4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4778);
  }

  return result;
}

unint64_t sub_1A950FA3C()
{
  result = qword_1EB3A4800;
  if (!qword_1EB3A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4800);
  }

  return result;
}

unint64_t sub_1A950FA94()
{
  result = qword_1EB3A4808[0];
  if (!qword_1EB3A4808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4808);
  }

  return result;
}

uint64_t sub_1A950FAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C67676F74 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564696C73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A950FC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885697139 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A950FE3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A95C4D70 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A95C4D90 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365786F62 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C6F72746E6F63 && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C4DB0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C4DD0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

unint64_t sub_1A95100D4()
{
  result = qword_1EB388600;
  if (!qword_1EB388600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388600);
  }

  return result;
}

unint64_t sub_1A9510128()
{
  result = qword_1EB388608;
  if (!qword_1EB388608)
  {
    sub_1A93A7B68(&qword_1EB3884B8, &qword_1A9597038);
    sub_1A93B744C(&qword_1EB388610, &qword_1EB3884D0, &qword_1A9597040, &protocol conformance descriptor for TTSAudioEffect.Spec.GenericWire<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388608);
  }

  return result;
}

uint64_t sub_1A95101E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1A9510248()
{
  result = qword_1EB388618;
  if (!qword_1EB388618)
  {
    sub_1A93A7B68(&qword_1EB3884D8, &qword_1A9597048);
    sub_1A93B744C(&qword_1EB388620, &qword_1EB3884F0, &unk_1A9597050, &protocol conformance descriptor for TTSAudioEffect.Spec.GenericWire<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388618);
  }

  return result;
}

uint64_t sub_1A9510300(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3876C0, &qword_1A958EB68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9510378()
{
  result = qword_1EB388630;
  if (!qword_1EB388630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388630);
  }

  return result;
}

uint64_t TTSMarkupSpeech.tap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  TTSMarkupSpeech.subscript.getter(KeyPath, a3, a4);
  v12 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1A9510C28(0, v18[2] + 1, 1, v18);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1A9510C28((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[2 * v14];
  v15[4] = sub_1A951053C;
  v15[5] = v11;
  v17 = v12;
  return TTSMarkupSpeech.subscript.setter(&v17, KeyPath, a3, a4);
}

uint64_t TTSMarkupSpeech.handleEventTaps(event:ssml:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v21 = *a1;
  v22 = a1[1];
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, a4, a5);

  v12 = *(v24[0] + 16);

  if (v12)
  {
    v14 = swift_getKeyPath();
    TTSMarkupSpeech.subscript.getter(v14, a4, a5);

    v15 = *(v24[0] + 16);
    v17 = v21;
    v16 = v22;
    if (v15)
    {
      v18 = v24[0] + 40;
      do
      {
        v19 = *(v18 - 8);
        v25[0] = v17;
        v25[1] = v16;
        v24[3] = a4;
        v24[4] = a5;
        v20 = sub_1A93981E4(v24);
        (*(*(a4 - 8) + 16))(v20, v6, a4);
        v23[0] = a2;
        v23[1] = a3;

        v19(v25, v23, v24);

        sub_1A9378138(v24);
        v17 = v21;
        v16 = v22;
        v18 += 16;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

unint64_t TTSMarkupSpeech.handle(event:ssml:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a2;
  v53 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = *v11;
  v15 = v11[1];
  v16 = v11[2];
  v17 = v11[3];
  KeyPath = swift_getKeyPath();
  v54 = a4;
  v55 = a5;
  v19 = a4;
  v20 = v5;
  TTSMarkupSpeech.subscript.getter(KeyPath, v19, a5);

  if ((v66 & 1) == 0)
  {
    v22 = v63;
    v50 = v14;
    *&v63 = v14;
    *(&v63 + 1) = v15;
    v64 = v16;
    v65 = v17;
    v51 = a3;
    result = sub_1A9510BA8(v56, a3);
    v24 = result >> 14;
    if (result >> 14 < *(&v22 + 1) >> 14 && v22 >> 14 != *(&v22 + 1) >> 14)
    {
      v25 = v23 >> 14;
      if (v22 >> 14 < v23 >> 14 && v24 != v25)
      {
        v47 = v17;
        v48 = v16;
        v49 = v15;
        v26 = v54;
        v27 = *(v53 + 16);
        v27(v13, v20, v54);
        sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
        if (swift_dynamicCast())
        {
          v28 = *(v63 + 16);
          if (v28)
          {
            v53 = v63;
            v29 = v63 + 32;
            do
            {
              sub_1A9379534(v29, &v63);
              v30 = v65;
              v31 = v66;
              sub_1A93780F4(&v63, v65);
              v32 = swift_getKeyPath();
              TTSMarkupSpeech.subscript.getter(v32, v30, v31);

              if (v62 != 1)
              {
                v33 = v60 >> 14;
                if (v24 < *(&v60 + 1) >> 14 && v33 < v25 && v33 != *(&v60 + 1) >> 14)
                {
                  v36 = v65;
                  v37 = v66;
                  sub_1A93780F4(&v63, v65);
                  *&v60 = v50;
                  *(&v60 + 1) = v49;
                  *&v61 = v48;
                  *(&v61 + 1) = v47;
                  (*(v37 + 88))(&v60, v56, v51, v36, v37);
                }
              }

              sub_1A9378138(&v63);
              v29 += 40;
              --v28;
            }

            while (v28);

            v45 = v55;
            v39 = v51;
            v42 = v50;
            goto LABEL_29;
          }

          v39 = v51;
        }

        else
        {
          v27(v52, v20, v26);
          sub_1A937829C(&qword_1EB387678, &qword_1A958EAB8);
          v38 = swift_dynamicCast();
          v39 = v51;
          if (v38)
          {
            sub_1A932D070(&v60, &v63);
            v40 = v65;
            v41 = v66;
            sub_1A93780F4(&v63, v65);
            (*(v41 + 16))(&v57, v40, v41);
            v42 = v50;
            if (v59)
            {
              sub_1A932D070(&v57, &v60);
              v43 = *(&v61 + 1);
              v44 = v62;
              sub_1A93780F4(&v60, *(&v61 + 1));
              *&v57 = v42;
              *(&v57 + 1) = v49;
              v58 = v48;
              v59 = v47;
              (*(v44 + 88))(&v57, v56, v39, v43, v44);
              sub_1A9378138(&v60);
            }

            else
            {
              sub_1A937B960(&v57, &qword_1EB3868E8, &unk_1A958F280);
            }

            sub_1A9378138(&v63);
            goto LABEL_28;
          }

          v62 = 0;
          v60 = 0u;
          v61 = 0u;
          sub_1A937B960(&v60, &qword_1EB387680, qword_1A958EAC0);
        }

        v42 = v50;
LABEL_28:
        v45 = v55;
LABEL_29:
        *&v63 = v42;
        *(&v63 + 1) = v49;
        v64 = v48;
        v65 = v47;
        return TTSMarkupSpeech.handleEventTaps(event:ssml:)(&v63, v56, v39, v26, v45);
      }
    }
  }

  return result;
}

uint64_t sub_1A9510BA8(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if ((v3 >> 61) <= 1 && v3 >> 61)
  {
    if (v2[2] < 3u)
    {
      return *v2;
    }

    if ((a2 & 0x1000000000000000) != 0 && (a1 & 0x800000000000000) == 0)
    {
      return 15;
    }
  }

  else if ((a2 & 0x1000000000000000) != 0 && (a1 & 0x800000000000000) == 0)
  {
    return 15;
  }

  return 15;
}

void *sub_1A9510C28(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB388670, qword_1A95989D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386F50, &qword_1A958A790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t AXVoiceError.hashValue.getter()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t static AXVoiceLoader.assetType.getter()
{
  swift_beginAccess();
  v0 = qword_1EB388678;

  return v0;
}

uint64_t static AXVoiceLoader.assetType.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EB388678 = a1;
  off_1EB388680 = a2;
}

uint64_t sub_1A9510EE4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB388680;
  *a1 = qword_1EB388678;
  a1[1] = v2;
}

uint64_t sub_1A9510F34(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB388678 = v2;
  off_1EB388680 = v1;
}

uint64_t sub_1A9510F98()
{
  sub_1A957CF08();
  swift_beginAccess();
  v1 = qword_1EB388678;
  v0 = off_1EB388680;

  result = MEMORY[0x1AC585140](0xD000000000000017, 0x80000001A95C4E50);
  qword_1EB38DE38 = v1;
  qword_1EB38DE40 = v0;
  return result;
}

uint64_t *sub_1A9511040()
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  return &qword_1EB38DE38;
}

uint64_t static AXVoiceLoader.reloadNotification.getter()
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB38DE38;

  return v0;
}

uint64_t static AXVoiceLoader.reloadNotification.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38DE38 = a1;
  qword_1EB38DE40 = a2;
}

uint64_t (*static AXVoiceLoader.reloadNotification.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A9511228@<X0>(void *a1@<X8>)
{
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB38DE40;
  *a1 = qword_1EB38DE38;
  a1[1] = v2;
}

uint64_t sub_1A95112A8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EB38DE30;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38DE38 = v2;
  qword_1EB38DE40 = v1;
}

uint64_t sub_1A9511338()
{
  sub_1A937829C(&unk_1EB388300, &unk_1A9589B30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A95873F0;
  v1 = swift_allocObject();
  if (qword_1EB38DE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB38DE40;
  *(v1 + 16) = qword_1EB38DE38;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  type metadata accessor for AXCatalogUpdater();

  *(v3 + 16) = sub_1A93F0F70();
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t AXVoiceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  v2 = qword_1EB388678;
  v1 = off_1EB388680;

  static MobileAssetManager.DownloadOptions.downloadTimeout(_:)(60, &v9);
  v3 = sub_1A9547340();
  v5 = v4;
  v6 = sub_1A9547378();
  MobileAssetManager.init(assetType:currentCompatibilityVersion:compatibilityVersionKey:assetSupported:identifierKey:catalogDownloadOptions:)(v2, v1, 2, v3, v5, sub_1A9511664, 0, v6, (v0 + 16), v7, &v9);
  return v0;
}

uint64_t AXVoiceLoader.init()()
{
  swift_beginAccess();
  v2 = qword_1EB388678;
  v1 = off_1EB388680;

  static MobileAssetManager.DownloadOptions.downloadTimeout(_:)(60, &v9);
  v3 = sub_1A9547340();
  v5 = v4;
  v6 = sub_1A9547378();
  MobileAssetManager.init(assetType:currentCompatibilityVersion:compatibilityVersionKey:assetSupported:identifierKey:catalogDownloadOptions:)(v2, v1, 2, v3, v5, sub_1A9511664, 0, v6, (v0 + 16), v7, &v9);
  return v0;
}

void sub_1A95115E8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 physicalMemory];

  if (v1 <= 0x147D35700)
  {
    v2 = 150000000;
  }

  else
  {
    v2 = 0x7FFFFFFF;
  }

  dword_1EB3A7948 = v2;
}

uint64_t sub_1A9511664(void *a1)
{
  result = [a1 attributes];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = sub_1A957C038();

  sub_1A957CE88();
  if (!*(v3 + 16) || (v4 = sub_1A93B1014(v6), (v5 & 1) == 0))
  {

    sub_1A93B1058(v6);
    return 1;
  }

  sub_1A937BA14(*(v3 + 56) + 32 * v4, v7);
  sub_1A93B1058(v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (qword_1EB38DE48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return 0;
}

uint64_t sub_1A95117F8(uint64_t a1, uint64_t a2)
{
  v20 = v2;
  if (TTSIsInternalBuild(a1, a2))
  {
    v3 = sub_1A94CF400();
    v4 = *v3;
    v5 = *(**v3 + 400);

    v5(&v18, v6);
    v19 = v18;
    (*(*v4 + 408))(&v19);
  }

  v7 = *(v2 + 456);
  *(v2 + 16) = v7[1];
  v8 = v7[5];
  v10 = v7[2];
  v9 = v7[3];
  *(v2 + 64) = v7[4];
  *(v2 + 80) = v8;
  *(v2 + 32) = v10;
  *(v2 + 48) = v9;
  v12 = v7[2];
  v11 = v7[3];
  v13 = v7[5];
  *(v2 + 144) = v7[4];
  *(v2 + 160) = v13;
  *(v2 + 112) = v12;
  *(v2 + 128) = v11;
  *(v2 + 96) = v7[1];
  sub_1A93F1120(v2 + 16, v2 + 176);
  v14 = sub_1A9511EAC();
  v15 = sub_1A9547124();
  *(v2 + 464) = v15;
  v16 = swift_task_alloc();
  *(v2 + 472) = v16;
  *v16 = v2;
  v16[1] = sub_1A9511988;

  return MobileAssetManager.assets(downloadCatalog:returnTypes:filters:)(0, v14, v15);
}

uint64_t sub_1A9511988(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = *(v4 + 96);
    v6 = *(v4 + 112);
    v7 = *(v4 + 128);
    v8 = *(v4 + 160);
    *(v4 + 304) = *(v4 + 144);
    *(v4 + 320) = v8;
    *(v4 + 272) = v6;
    *(v4 + 288) = v7;
    *(v4 + 256) = v5;
    sub_1A93F4788(v4 + 256);

    v9 = sub_1A9514FFC;
  }

  else
  {
    *(v4 + 488) = a1;
    v10 = *(v4 + 96);
    v11 = *(v4 + 112);
    v12 = *(v4 + 128);
    v13 = *(v4 + 160);
    *(v4 + 384) = *(v4 + 144);
    *(v4 + 400) = v13;
    *(v4 + 352) = v11;
    *(v4 + 368) = v12;
    *(v4 + 336) = v10;
    sub_1A93F4788(v4 + 336);

    v9 = sub_1A9515000;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A9511B5C()
{
  v1 = *(v0 + 456);
  *(v0 + 16) = v1[1];
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(v0 + 144) = v1[4];
  *(v0 + 160) = v7;
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v1[1];
  sub_1A93F1120(v0 + 16, v0 + 176);
  v8 = sub_1A9547124();
  *(v0 + 464) = v8;
  v9 = swift_task_alloc();
  *(v0 + 472) = v9;
  *v9 = v0;
  v9[1] = sub_1A9511C48;

  return MobileAssetManager.assets(downloadCatalog:returnTypes:filters:)(0, 1, v8);
}

uint64_t sub_1A9511C48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = *(v4 + 96);
    v6 = *(v4 + 112);
    v7 = *(v4 + 128);
    v8 = *(v4 + 160);
    *(v4 + 304) = *(v4 + 144);
    *(v4 + 320) = v8;
    *(v4 + 272) = v6;
    *(v4 + 288) = v7;
    *(v4 + 256) = v5;
    sub_1A93F4788(v4 + 256);

    v9 = sub_1A9511E7C;
  }

  else
  {
    *(v4 + 488) = a1;
    v10 = *(v4 + 96);
    v11 = *(v4 + 112);
    v12 = *(v4 + 128);
    v13 = *(v4 + 160);
    *(v4 + 384) = *(v4 + 144);
    *(v4 + 400) = v13;
    *(v4 + 352) = v11;
    *(v4 + 368) = v12;
    *(v4 + 336) = v10;
    sub_1A93F4788(v4 + 336);

    v9 = sub_1A9511DD8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1A9511DD8()
{
  v1 = v0[61];
  v2 = v0[57];
  v0[55] = type metadata accessor for AXVoiceLoader();
  v0[56] = &protocol witness table for AXVoiceLoader;
  v0[52] = v2;

  v3 = sub_1A93AF238((v0 + 52), v1);

  sub_1A9378138(v0 + 52);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A9511EB4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9511F58;

  return sub_1A95133B4(v2, v3, 0);
}

uint64_t sub_1A9511F58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A951208C, 0, 0);
  }
}

uint64_t sub_1A951208C()
{
  v6 = v0;
  v1 = [*(v0 + 24) state];
  v2 = *(v0 + 24);
  if (v1 != 4)
  {
    sub_1A954A228();
    MAAsset.startDownloadAsync(options:)(&v5);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A9512118(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_task_alloc();
  *(v1 + 152) = v4;
  *v4 = v1;
  v4[1] = sub_1A95121BC;

  return sub_1A95133B4(v2, v3, 0);
}

uint64_t sub_1A95121BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 160) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A9512308, 0, 0);
  }
}

uint64_t sub_1A9512308()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A9512424;
  v2 = swift_continuation_init();
  v0[17] = sub_1A937829C(&qword_1EB388688, &unk_1A9598A00);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A9515004;
  v0[13] = &unk_1F1CED900;
  v0[14] = v2;
  [v1 cancelDownload_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A9512424()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9512504, 0, 0);
}

uint64_t sub_1A9512504()
{
  v1 = *(v0 + 160);
  [v1 refreshState];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A9512578(void *a1)
{
  v2[69] = v1;
  v3 = a1[1];
  v2[70] = *a1;
  v2[71] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A95125A4, 0, 0);
}

uint64_t sub_1A95125A4()
{
  v1 = *(v0 + 552);
  *(v0 + 80) = v1[1];
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 128) = v1[4];
  *(v0 + 144) = v2;
  *(v0 + 96) = v4;
  *(v0 + 112) = v3;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(v0 + 208) = v1[4];
  *(v0 + 224) = v7;
  *(v0 + 176) = v6;
  *(v0 + 192) = v5;
  *(v0 + 160) = v1[1];
  sub_1A93F1120(v0 + 80, v0 + 240);
  v8 = swift_task_alloc();
  *(v0 + 576) = v8;
  *v8 = v0;
  v8[1] = sub_1A9512688;
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);

  return MobileAssetManager.assets(voiceId:installedOnly:)(v10, v9, 1);
}

uint64_t sub_1A9512688(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 584) = a1;
  *(v3 + 592) = v1;

  v4 = *(v3 + 160);
  v5 = *(v3 + 176);
  v6 = *(v3 + 192);
  v7 = *(v3 + 224);
  if (v1)
  {
    *(v3 + 368) = *(v3 + 208);
    *(v3 + 384) = v7;
    *(v3 + 336) = v5;
    *(v3 + 352) = v6;
    *(v3 + 320) = v4;
    sub_1A93F4788(v3 + 320);
    v8 = sub_1A9512C4C;
  }

  else
  {
    *(v3 + 448) = *(v3 + 208);
    *(v3 + 464) = v7;
    *(v3 + 416) = v5;
    *(v3 + 432) = v6;
    *(v3 + 400) = v4;
    sub_1A93F4788(v3 + 400);
    v8 = sub_1A95127E0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A95127E0()
{
  v1 = v0[73];
  if (v1 >> 62)
  {
    v2 = sub_1A957CE48();
    v0[75] = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[75] = v2;
    if (v2)
    {
LABEL_3:
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[73];
        v0[76] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1AC585DE0](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v5 = v4;
        v0[77] = v4;
        v0[2] = v0;
        v0[7] = v0 + 68;
        v0[3] = sub_1A95129AC;
        v6 = swift_continuation_init();
        v0[67] = sub_1A937829C(&qword_1EB388690, &unk_1A9598A10);
        v0[60] = MEMORY[0x1E69E9820];
        v0[61] = 1107296256;
        v0[62] = sub_1A9515004;
        v0[63] = &unk_1F1CFC8F8;
        v0[64] = v6;
        [v5 purge_];
        v2 = (v0 + 2);
      }

      return MEMORY[0x1EEE6DEC8](v2);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A95129AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9512A8C, 0, 0);
}

uint64_t sub_1A9512A8C()
{
  v1 = v0[77];
  v2 = v0[75];
  v3 = v0[76] + 1;
  [v1 refreshState];

  if (v3 == v2)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[76] + 1;
    v0[76] = v6;
    v7 = v0[73];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC585DE0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v0[77] = v8;
    v0[2] = v0;
    v0[7] = v0 + 68;
    v0[3] = sub_1A95129AC;
    v9 = v8;
    v10 = swift_continuation_init();
    v0[67] = sub_1A937829C(&qword_1EB388690, &unk_1A9598A10);
    v0[60] = MEMORY[0x1E69E9820];
    v0[61] = 1107296256;
    v0[62] = sub_1A9515004;
    v0[63] = &unk_1F1CFC8F8;
    v0[64] = v10;
    [v9 purge_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A9512C64(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1A93780F4((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1A9512CC0(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_1A937829C(&qword_1EB388698, &qword_1A9598A20);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_1A9512DD4;

  return sub_1A95133B4(v6, v5, 0);
}

uint64_t sub_1A9512DD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A9512F28, 0, 0);
  }
}

uint64_t sub_1A9512F28()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  MAAsset.downloadProgressStream.getter(v2);
  sub_1A957C6D8();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A9513000(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A9513024, 0, 0);
}

uint64_t sub_1A9513024()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [v2 totalWritten];
  *v1 = v3 / [v2 totalExpected];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A95130B8(uint64_t a1, uint64_t *a2)
{
  v3[78] = v2;
  v3[77] = a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  v3[79] = v6;
  *v6 = v3;
  v6[1] = sub_1A9513164;

  return sub_1A95133B4(v4, v5, 0);
}

uint64_t sub_1A9513164(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 640) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9513298, 0, 0);
  }
}

uint64_t sub_1A9513298()
{
  v1 = v0[78];
  v0[75] = type metadata accessor for AXVoiceLoader();
  v0[76] = &protocol witness table for AXVoiceLoader;
  v0[72] = v1;

  sub_1A93AEF6C((v0 + 72), v0 + 37);
  sub_1A9378138(v0 + 72);
  memcpy(v0 + 2, v0 + 37, 0x118uLL);
  v2 = sub_1A932D058((v0 + 2));
  v3 = v0[80];
  if (v2 == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
  }

  else
  {
    v6 = v0[77];

    memcpy(v6, v0 + 2, 0x118uLL);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A95133B4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 424) = a2;
  *(v4 + 432) = v3;
  *(v4 + 464) = a3;
  *(v4 + 416) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95133DC, 0, 0);
}

uint64_t sub_1A95133DC()
{
  v1 = *(v0 + 432);
  *(v0 + 16) = v1[1];
  v2 = v1[5];
  v4 = v1[2];
  v3 = v1[3];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  *(v0 + 144) = v1[4];
  *(v0 + 160) = v7;
  *(v0 + 112) = v6;
  *(v0 + 128) = v5;
  *(v0 + 96) = v1[1];
  sub_1A93F1120(v0 + 16, v0 + 176);
  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  *v8 = v0;
  v8[1] = sub_1A95134BC;
  v9 = *(v0 + 464);
  v11 = *(v0 + 416);
  v10 = *(v0 + 424);

  return MobileAssetManager.asset(voiceId:installedOnly:)(v11, v10, v9);
}

uint64_t sub_1A95134BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v7 = *(v3 + 160);
  if (v1)
  {
    *(v3 + 304) = *(v3 + 144);
    *(v3 + 320) = v7;
    *(v3 + 272) = v5;
    *(v3 + 288) = v6;
    *(v3 + 256) = v4;
    sub_1A93F4788(v3 + 256);
    v8 = sub_1A95136F4;
  }

  else
  {
    *(v3 + 384) = *(v3 + 144);
    *(v3 + 400) = v7;
    *(v3 + 352) = v5;
    *(v3 + 368) = v6;
    *(v3 + 336) = v4;
    sub_1A93F4788(v3 + 336);
    v8 = sub_1A9513610;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A9513610()
{
  v1 = *(v0 + 448);
  if (v1)
  {
    [*(v0 + 448) refreshState];
    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_1A93D7B08();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1A951370C(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_1A957AFD8();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_1A9513814;

  return sub_1A95133B4(v6, v5, 1);
}

uint64_t sub_1A9513814(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A9513968, 0, 0);
  }
}

void sub_1A9513968()
{
  v1 = v0[7];
  v2 = [v1 getLocalUrl];

  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_1A957AF98();

    sub_1A957AF78();
    (*(v4 + 8))(v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);

    v7 = v0[1];

    v7();
  }

  else
  {
    __break(1u);
  }
}

void *AXVoiceLoader.deinit()
{

  return v0;
}

uint64_t AXVoiceLoader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A9513C54()
{
  v4 = (*(**v0 + 112) + **(**v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D99E4;

  return v4();
}

uint64_t sub_1A9513D68()
{
  v4 = (*(**v0 + 120) + **(**v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D254C;

  return v4();
}

uint64_t sub_1A9513E7C(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 176) + **(**v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t sub_1A9513FAC(uint64_t a1)
{
  v6 = (*(**v1 + 144) + **(**v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t sub_1A95140D0(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A9382328;

  return v6(a1);
}

uint64_t sub_1A95141F4(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t sub_1A9514318(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 168) + **(**v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t sub_1A9514448(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 192) + **(**v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

unint64_t sub_1A95145A8()
{
  result = qword_1EB3886A0;
  if (!qword_1EB3886A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3886A0);
  }

  return result;
}

uint64_t dispatch thunk of AXVoiceLoader.voices()()
{
  v4 = (*(*v0 + 112) + **(*v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D99C8;

  return v4();
}

uint64_t dispatch thunk of AXVoiceLoader.installedVoices()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D7EAC;

  return v4();
}

uint64_t dispatch thunk of AXVoiceLoader.download(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of AXVoiceLoader.cancelDownload(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A9382328;

  return v6(a1);
}

uint64_t dispatch thunk of AXVoiceLoader.purge(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of AXVoiceLoader.downloadProgress(voice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AXVoiceLoader.record(forVoice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AXVoiceLoader.url(forVoice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t OnDiskVoiceError.hashValue.getter()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t sub_1A951507C()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3A4A28);
  sub_1A937731C(v0, qword_1EB3A4A28);
  return sub_1A957BC78();
}

uint64_t AXOnDiskVoiceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AXOnDiskVoiceLoader.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1A951515C()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D254C;

  return v4();
}

uint64_t sub_1A951526C()
{
  v1[2] = v0;
  v2 = sub_1A957AFD8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9515338, v0, 0);
}

uint64_t sub_1A9515338()
{
  v23 = v0;
  v1 = v0[2];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
LABEL_3:

    v3 = v0[1];

    return v3(v2);
  }

  v5 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v6 = sub_1A957C0C8();
  v7 = [v5 initWithPath_];

  if (v7)
  {
    v8 = sub_1A957C0C8();
    v9 = [v7 URLForResource:v8 withExtension:0];

    if (v9)
    {
      v11 = v0[5];
      v10 = v0[6];
      v12 = v0[3];
      v13 = v0[4];
      sub_1A957AF98();

      (*(v13 + 32))(v10, v11, v12);
      v14 = sub_1A9518F4C(MEMORY[0x1E69E7CC0]);
      v15 = sub_1A951560C();
      v16 = v0[6];
      v17 = v0[3];
      v18 = v0[4];
      v20 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v14;
      sub_1A9519210(v20, sub_1A95184EC, 0, isUniquelyReferenced_nonNull_native, &v22);

      (*(v18 + 8))(v16, v17);
      v2 = v22;
      *(v1 + 112) = v22;

      goto LABEL_3;
    }
  }

  sub_1A95191BC();
  swift_allocError();
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

void *sub_1A951560C()
{
  v161 = *MEMORY[0x1E69E9840];
  v130 = sub_1A957BC88();
  v0 = *(v130 - 8);
  v1 = MEMORY[0x1EEE9AC00](v130);
  v3 = &v110 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v110 - v4;
  v117 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v115 = *(v117 - 8);
  v6 = MEMORY[0x1EEE9AC00](v117);
  v122 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v110 - v8;
  v140 = sub_1A957BBD8();
  v9 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A957AFD8();
  v125 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v138 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v133 = &v110 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v143 = &v110 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v110 - v18;
  v114 = objc_opt_self();
  v19 = [v114 defaultManager];
  v20 = sub_1A957AF58();
  *&v158[0] = 0;
  v21 = [v19 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:v158];

  v22 = *&v158[0];
  if (!v21)
  {
    v106 = *&v158[0];
    v107 = sub_1A957AEF8();

    v111 = v107;
    return swift_willThrow();
  }

  v23 = sub_1A957C4C8();
  v24 = v22;

  v126 = sub_1A9518F4C(MEMORY[0x1E69E7CC0]);
  v124 = *(v23 + 16);
  if (!v124)
  {
LABEL_46:

    return v126;
  }

  v26 = 0;
  v118 = v5;
  v110 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  v121 = v23 + v110;
  v147 = v125 + 16;
  v137 = (v9 + 8);
  v131 = 0x80000001A95C4EE0;
  v142 = (v125 + 8);
  v134 = (v0 + 8);
  v135 = (v0 + 16);
  *&v25 = 136315138;
  v128 = v25;
  v120 = xmmword_1A95873F0;
  v27 = v130;
  v136 = v3;
  v119 = v11;
  v28 = v133;
  v112 = v23;
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    v30 = *(v125 + 72);
    v127 = v26;
    v141 = v30;
    v146 = *(v125 + 16);
    v146(v129, v121 + v30 * v26, v11);
    if (sub_1A957AF48() != 0x6E6F6D6D6F63 || v31 != 0xE600000000000000)
    {
      break;
    }

LABEL_5:
    v29 = v127 + 1;
    (*v142)(v129, v11);
    v26 = v29;
    if (v29 == v124)
    {
      goto LABEL_46;
    }
  }

  v32 = sub_1A957D3E8();

  if (v32)
  {
    goto LABEL_5;
  }

  v33 = [v114 defaultManager];
  v34 = sub_1A957AF58();
  *&v158[0] = 0;
  v35 = [v33 contentsOfDirectoryAtURL:v34 includingPropertiesForKeys:0 options:0 error:v158];

  v36 = *&v158[0];
  if (!v35)
  {
    v108 = *&v158[0];

    v109 = sub_1A957AEF8();

    v111 = v109;
    swift_willThrow();
    return (*v142)(v129, v11);
  }

  v37 = sub_1A957C4C8();
  v38 = v36;

  v39 = *(v37 + 16);
  if (!v39)
  {
LABEL_45:

    v23 = v112;
    goto LABEL_5;
  }

  v113 = v37;
  v40 = v37 + v110;
  v41 = v143;
  while (1)
  {
    v144 = v40;
    v145 = v39;
    (v146)(v41);
    v43 = v139;
    sub_1A957BBC8();
    sub_1A957AF68();
    (*v137)(v43, v140);
    v44 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    v45 = sub_1A957AF58();
    v46 = [v44 initWithContentsOfURL_];

    if (!v46)
    {
      v159 = 0u;
      v160 = 0u;
      v48 = v138;
LABEL_27:
      sub_1A937B960(&v159, &qword_1EB3869D0, &qword_1A9587A10);
LABEL_28:
      if (qword_1EB3A4A20 != -1)
      {
        swift_once();
      }

      v71 = sub_1A937731C(v27, qword_1EB3A4A28);
      (*v135)(v3, v71, v27);
      v146(v48, v28, v11);
      v72 = sub_1A957BC68();
      v73 = sub_1A957CA78();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v158[0] = v132;
        *v74 = v128;
        sub_1A93BC760();
        v75 = sub_1A957D3A8();
        v76 = v48;
        v78 = v77;
        v79 = *v142;
        (*v142)(v76, v11);
        v80 = sub_1A937A5C0(v75, v78, v158);

        *(v74 + 4) = v80;
        _os_log_impl(&dword_1A9324000, v72, v73, "Missing mobile asset attributes on %s", v74, 0xCu);
        v81 = v132;
        sub_1A9378138(v132);
        MEMORY[0x1AC587CD0](v81, -1, -1);
        v82 = v74;
        v27 = v130;
        MEMORY[0x1AC587CD0](v82, -1, -1);

        (*v134)(v136, v27);
        v28 = v133;
        v79(v133, v11);
        v41 = v143;
        v79(v143, v11);
        v3 = v136;
      }

      else
      {

        v42 = *v142;
        (*v142)(v48, v11);
        (*v134)(v3, v27);
        v28 = v133;
        v42(v133, v11);
        v41 = v143;
        v42(v143, v11);
      }

      goto LABEL_14;
    }

    *&v158[0] = 0xD000000000000015;
    *(&v158[0] + 1) = v131;
    v47 = [v46 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v47)
    {
      sub_1A957CD58();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v158, 0, 32);
    }

    v48 = v138;
    v159 = v158[0];
    v160 = v158[1];
    if (!*(&v158[1] + 1))
    {
      goto LABEL_27;
    }

    sub_1A937829C(&qword_1EB3886C8, &unk_1A9598DD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_28;
    }

    v49 = v151;
    v50 = type metadata accessor for AXOnDiskVoiceLoader();
    v155[4] = &protocol witness table for AXOnDiskVoiceLoader;
    v155[3] = v50;
    v155[0] = v123;
    v152 = 0;
    v51 = *(*v123 + 192);

    v53 = v51(v52);
    v55 = v54;
    v56 = v143;
    v57 = sub_1A957AF48();
    CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)(v53, v55, v57, v58, 0, v153);
    v149[0] = v153[0];
    v149[1] = v153[1];
    v150 = v154;
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v59 = swift_allocObject();
    *(v59 + 16) = v120;
    *(v59 + 32) = *sub_1A9493C9C();
    *(v59 + 40) = *sub_1A9493C3C();
    v148[0] = v59;
    sub_1A9387410();
    sub_1A937829C(&unk_1EB388360, qword_1A958B690);
    sub_1A93B0F54();
    sub_1A957CE08();
    v148[0] = v148[1];
    sub_1A93AF494(v49, v155, &v152, v149, v148, v156);
    memcpy(v157, v156, sizeof(v157));
    memcpy(v158, v156, 0x118uLL);
    if (sub_1A932D058(v158) == 1)
    {
      if (qword_1EB3A4A20 != -1)
      {
        swift_once();
      }

      v60 = v130;
      v61 = sub_1A937731C(v130, qword_1EB3A4A28);
      v62 = v118;
      (*v135)(v118, v61, v60);

      v63 = sub_1A957BC68();
      v64 = sub_1A957CA78();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v156[0] = v132;
        *v65 = v128;
        v66 = sub_1A957C048();
        v68 = v67;

        v69 = sub_1A937A5C0(v66, v68, v156);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_1A9324000, v63, v64, "Voice initialization failed with info dictionary %s", v65, 0xCu);
        v70 = v132;
        sub_1A9378138(v132);
        MEMORY[0x1AC587CD0](v70, -1, -1);
        MEMORY[0x1AC587CD0](v65, -1, -1);

        (*v134)(v118, v60);
      }

      else
      {

        (*v134)(v62, v60);
      }

      v99 = *v142;
      v11 = v119;
      (*v142)(v28, v119);
      v41 = v143;
      v99(v143, v11);
      v27 = v60;
      v3 = v136;
      goto LABEL_14;
    }

    v83 = v11;
    v84 = sub_1A957C1A8();
    v86 = v85;
    v87 = v116;
    v88 = *(v117 + 48);
    memcpy(v116, v158, 0x118uLL);
    v146(&v87[v88], v56, v83);
    sub_1A93A7460(v87, v122, &qword_1EB3886B8, &unk_1A9598C20);
    memcpy(v155, v157, sizeof(v155));
    sub_1A937B3DC(v155, v153);
    v89 = v126;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v153[0] = v89;
    v92 = sub_1A937A490(v84, v86);
    v93 = v89[2];
    v94 = (v91 & 1) == 0;
    v95 = v93 + v94;
    if (__OFADD__(v93, v94))
    {
      goto LABEL_50;
    }

    v96 = v91;
    if (v89[3] >= v95)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A9518904();
      }

      goto LABEL_40;
    }

    sub_1A9518588(v95, isUniquelyReferenced_nonNull_native);
    v97 = sub_1A937A490(v84, v86);
    if ((v96 & 1) != (v98 & 1))
    {
      break;
    }

    v92 = v97;
LABEL_40:
    v41 = v143;
    v126 = *&v153[0];
    if (v96)
    {
      sub_1A951914C(v122, *(*&v153[0] + 56) + *(v115 + 72) * v92);
    }

    else
    {
      *(*&v153[0] + 8 * (v92 >> 6) + 64) |= 1 << v92;
      v100 = (v126[6] + 16 * v92);
      *v100 = v84;
      v100[1] = v86;
      sub_1A93A7460(v122, v126[7] + *(v115 + 72) * v92, &qword_1EB3886B8, &unk_1A9598C20);
      v101 = v126[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_51;
      }

      v126[2] = v103;
    }

    sub_1A937B960(v157, &unk_1EB387BC0, &qword_1A9587E30);
    v104 = *v142;
    v11 = v119;
    (*v142)(v28, v119);
    v104(v41, v11);
    v27 = v130;
LABEL_14:
    v40 = v144 + v141;
    v39 = v145 - 1;
    if (v145 == 1)
    {
      goto LABEL_45;
    }
  }

  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t sub_1A95165F8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A9516688;

  return sub_1A951526C();
}

uint64_t sub_1A9516688(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 16);
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A95167D8, v8, 0);
  }
}

uint64_t sub_1A95167D8()
{
  v1 = sub_1A9516858(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A9516858(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v37 = v1;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1A9461C94(0, v9, 0);
  v10 = v52;
  v11 = a1 + 64;
  result = sub_1A957CE18();
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v38 = a1 + 72;
    v39 = v9;
    v13 = *(a1 + 36);
    v14 = 1;
    v40 = a1;
    v41 = a1 + 64;
    while (1)
    {
      v15 = result >> 6;
      v16 = 1 << result;
      if ((*(v11 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        break;
      }

      v47 = v14;
      v48 = v13;
      v17 = *(a1 + 56);
      v18 = *(v45 + 72);
      v49 = result;
      v19 = v42;
      sub_1A9391BAC(v17 + v18 * result, v42, &qword_1EB3886B8, &unk_1A9598C20);
      v20 = v10;
      v21 = v43;
      sub_1A9391BAC(v19, v43, &qword_1EB3886B8, &unk_1A9598C20);
      v22 = *(v46 + 48);
      v23 = v44;
      memcpy(v44, v21, 0x118uLL);
      v24 = sub_1A957AFD8();
      v25 = &v21[v22];
      v10 = v20;
      (*(*(v24 - 8) + 32))(&v23[v22], v25, v24);
      memcpy(v51, v23, 0x118uLL);
      sub_1A937B3DC(v51, &v50);
      sub_1A937B960(v23, &qword_1EB3886B8, &unk_1A9598C20);
      sub_1A937B960(v19, &qword_1EB3886B8, &unk_1A9598C20);
      v52 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1A9461C94((v26 > 1), v27 + 1, 1);
        v10 = v52;
      }

      *(v10 + 16) = v27 + 1;
      memcpy((v10 + 280 * v27 + 32), v51, 0x118uLL);
      a1 = v40;
      v11 = v41;
      v28 = 1 << *(v40 + 32);
      result = v49;
      if (v49 >= v28)
      {
        goto LABEL_26;
      }

      v29 = *(v41 + 8 * v15);
      if ((v29 & v16) == 0)
      {
        goto LABEL_27;
      }

      if (v48 != *(v40 + 36))
      {
        goto LABEL_28;
      }

      v30 = v29 & (-2 << (v49 & 0x3F));
      if (v30)
      {
        result = __clz(__rbit64(v30)) | v49 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v40;
        v32 = v15 << 6;
        v33 = v15 + 1;
        v34 = (v38 + 8 * v15);
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1A932D0A4(v49, v48, 0);
            result = __clz(__rbit64(v35)) + v32;
            goto LABEL_18;
          }
        }

        sub_1A932D0A4(v49, v48, 0);
        result = v28;
LABEL_18:
        a1 = v31;
      }

      if (v47 == v39)
      {
        return v10;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v13 = *(a1 + 36);
        v14 = v47 + 1;
        if (result < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A9516C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[110] = v3;
  v4[109] = a3;
  v4[108] = a2;
  v4[107] = a1;
  v5 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v4[111] = v5;
  v4[112] = *(v5 - 8);
  v4[113] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[114] = v6;
  *v6 = v4;
  v6[1] = sub_1A9516D64;

  return sub_1A951526C();
}

uint64_t sub_1A9516D64(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 920) = a1;

  if (v1)
  {
    v4 = *(v3 + 880);

    v5 = sub_1A9517018;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 880);
    v5 = sub_1A9516E9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1A9516E9C()
{
  v1 = v0[115];
  v2 = sub_1A957C1A8();
  if (*(v1 + 16))
  {
    v4 = sub_1A937A490(v2, v3);
    v6 = v5;

    if (v6)
    {
      v7 = v0[113];
      v8 = v0[111];
      v9 = v0[107];
      sub_1A9391BAC(*(v0[115] + 56) + *(v0[112] + 72) * v4, v7, &qword_1EB3886B8, &unk_1A9598C20);

      v10 = *(v8 + 48);
      memmove(v0 + 72, v7, 0x118uLL);
      nullsub_23();
      memcpy(v9, v0 + 72, 0x118uLL);
      v11 = sub_1A957AFD8();
      (*(*(v11 - 8) + 8))(&v7[v10], v11);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = v0[107];
  sub_1A93847E0((v0 + 37));
  memcpy(v12, v0 + 37, 0x118uLL);
LABEL_6:

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A9517018()
{
  v1 = v0[107];
  sub_1A93847E0((v0 + 2));
  memcpy(v1, v0 + 2, 0x118uLL);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A9517094(uint64_t a1, uint64_t *a2)
{
  v3[37] = a1;
  v3[38] = v2;
  v5 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v6 = sub_1A957AFD8();
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[44] = v7;
  v3[45] = v8;
  v3[46] = v9;
  v10 = swift_task_alloc();
  v3[47] = v10;
  *v10 = v3;
  v10[1] = sub_1A95171F4;

  return sub_1A951526C();
}

uint64_t sub_1A95171F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = sub_1A951759C;
  }

  else
  {
    v5 = sub_1A9517320;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A9517320()
{
  v1 = *(v0 + 384);
  v2 = sub_1A957C1A8();
  if (!*(v1 + 16))
  {

    goto LABEL_8;
  }

  v4 = sub_1A937A490(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_8:

    (*(*(v0 + 344) + 56))(*(v0 + 296), 1, 1, *(v0 + 336));
    goto LABEL_14;
  }

  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 312);
  sub_1A9391BAC(*(*(v0 + 384) + 56) + *(*(v0 + 320) + 72) * v4, v10, &qword_1EB3886B8, &unk_1A9598C20);

  memcpy((v0 + 16), v10, 0x118uLL);
  (*(v8 + 32))(v7, &v10[*(v11 + 48)], v9);
  if (*(v0 + 136) == 2)
  {
    v12 = *(v0 + 88);
    v13 = vorrq_s8(*(v0 + 104), *(v0 + 120));
    v14 = *&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *(v0 + 96);
    if (v12 == 1 && !v14)
    {
      v16 = *(v0 + 344);
      v15 = *(v0 + 352);
      v17 = *(v0 + 336);
      v18 = *(v0 + 296);
LABEL_12:
      sub_1A957AF78();
      sub_1A937B48C(v0 + 16);
      (*(v16 + 8))(v15, v17);
      (*(v16 + 56))(v18, 0, 1, v17);
      goto LABEL_14;
    }

    if (v12 == 5 && !v14)
    {
      v16 = *(v0 + 344);
      v15 = *(v0 + 352);
      v17 = *(v0 + 336);
      v18 = *(v0 + 296);
      goto LABEL_12;
    }
  }

  v20 = *(v0 + 344);
  v19 = *(v0 + 352);
  v21 = *(v0 + 336);
  v22 = *(v0 + 296);
  sub_1A937B48C(v0 + 16);
  (*(v20 + 8))(v19, v21);
  (*(v20 + 56))(v22, 1, 1, v21);
LABEL_14:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A951759C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AXOnDiskVoiceLoader.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AXOnDiskVoiceLoader.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1A9517714(_DWORD *x8_0@<X8>)
{
  type metadata accessor for AXOnDiskVoiceLoader();

  VoiceLoader.requiredConditions.getter(x8_0);
}

uint64_t sub_1A95177E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AXOnDiskVoiceLoader();

  return VoiceLoader.allowDaemonFallback.getter();
}

uint64_t sub_1A9517820()
{
  v4 = (*(**v0 + 120) + **(**v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D99E4;

  return v4();
}

uint64_t sub_1A9517934()
{
  v4 = (*(**v0 + 168) + **(**v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D99E4;

  return v4();
}

uint64_t sub_1A9517A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v5 = v4;
  v5[1] = sub_1A93836DC;

  return VoiceLoader.record(forVoice:)();
}

uint64_t sub_1A9517B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v4 = v3;
  v4[1] = sub_1A93836DC;

  return VoiceLoader.download(voice:)();
}

uint64_t sub_1A9517BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v4 = v3;
  v4[1] = sub_1A9382328;

  return VoiceLoader.cancelDownload(voice:)();
}

uint64_t sub_1A9517C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v4 = v3;
  v4[1] = sub_1A93836DC;

  return VoiceLoader.purge(voice:)();
}

uint64_t sub_1A9517D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  type metadata accessor for AXOnDiskVoiceLoader();
  *v5 = v4;
  v5[1] = sub_1A93836DC;

  return VoiceLoader.downloadProgress(voice:)();
}

uint64_t sub_1A9517DEC(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 184) + **(**v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

unint64_t sub_1A9517F20()
{
  result = qword_1EB3886C0;
  if (!qword_1EB3886C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3886C0);
  }

  return result;
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.voices()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D99C8;

  return v4();
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.installedVoices()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93D7EAC;

  return v4();
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.record(forVoiceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A9382328;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AXOnDiskVoiceLoader.url(forVoice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A9382328;

  return v8(a1, a2);
}

uint64_t sub_1A95184EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_1A937829C(&qword_1EB3886F0, &qword_1A9598E08) + 48);
  v5 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
  v7 = *a1;
  v6 = a1[1];
  sub_1A9391BAC(a1 + v4, a2 + *(v5 + 48), &qword_1EB3886B8, &unk_1A9598C20);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_1A9518588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  sub_1A937829C(&qword_1EB3886D0, &unk_1A9598DE0);
  v40 = v4;
  result = sub_1A957D118();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1A93A7460(v28, v41, &qword_1EB3886B8, &unk_1A9598C20);
      }

      else
      {
        sub_1A9391BAC(v28, v41, &qword_1EB3886B8, &unk_1A9598C20);
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1A93A7460(v41, *(v9 + 56) + v27 * v17, &qword_1EB3886B8, &unk_1A9598C20);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_1A9518904()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - v3;
  sub_1A937829C(&qword_1EB3886D0, &unk_1A9598DE0);
  v4 = *v0;
  v5 = sub_1A957D108();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        v26 = *(v32 + 72) * v20;
        sub_1A9391BAC(*(v4 + 56) + v26, v31, &qword_1EB3886B8, &unk_1A9598C20);
        v27 = v33;
        v28 = (*(v33 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1A93A7460(v25, *(v27 + 56) + v26, &qword_1EB3886B8, &unk_1A9598C20);

        v15 = v34;
      }

      while (v34);
    }

    v18 = v10;
    v6 = v33;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1A9518B68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A937829C(&qword_1EB3886F0, &qword_1A9598E08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v38 - v5;
  v6 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_1A937829C(&qword_1EB3886F8, &qword_1A9598E10);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v38 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v44 = v19;
  if (v20)
  {
    v42 = v4;
    v43 = a1;
    v21 = v3;
    v22 = v18;
LABEL_11:
    v40 = v16;
    v41 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v22 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    sub_1A9391BAC(*(v16 + 56) + *(v7 + 72) * v26, v9, &qword_1EB3886B8, &unk_1A9598C20);
    v30 = *(v21 + 48);
    *v15 = v28;
    v15[1] = v29;
    v3 = v21;
    sub_1A93A7460(v9, v15 + v30, &qword_1EB3886B8, &unk_1A9598C20);
    v4 = v42;
    (*(v42 + 56))(v15, 0, 1, v3);

    v25 = v22;
    v32 = v40;
    v31 = v41;
    a1 = v43;
LABEL_12:
    *v1 = v32;
    v1[1] = v17;
    v33 = v45;
    v1[2] = v44;
    v1[3] = v25;
    v1[4] = v31;
    v34 = v1[5];
    sub_1A93A7460(v15, v33, &qword_1EB3886F8, &qword_1A9598E10);
    v35 = 1;
    if ((*(v4 + 48))(v33, 1, v3) != 1)
    {
      v36 = v39;
      sub_1A93A7460(v33, v39, &qword_1EB3886F0, &qword_1A9598E08);
      v34(v36);
      sub_1A937B960(v36, &qword_1EB3886F0, &qword_1A9598E08);
      v35 = 0;
    }

    v37 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
    return (*(*(v37 - 8) + 56))(a1, v35, 1, v37);
  }

  else
  {
    v23 = (v19 + 64) >> 6;
    if (v23 <= v18 + 1)
    {
      v24 = v18 + 1;
    }

    else
    {
      v24 = (v19 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v32 = v16;
        (*(v4 + 56))(v15, 1, 1, v3);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v22);
      ++v18;
      if (v20)
      {
        v42 = v4;
        v43 = a1;
        v21 = v3;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1A9518F4C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A937829C(&qword_1EB3886D0, &unk_1A9598DE0);
    v7 = sub_1A957D128();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_1A9391BAC(v9, v5, &qword_1EB3886D8, &unk_1A9598DF0);
      v11 = *v5;
      v10 = v5[1];
      result = sub_1A937A490(*v5, v10);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v7[6] + 16 * result);
      *v15 = v11;
      v15[1] = v10;
      v16 = v7[7];
      v17 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
      result = sub_1A93A7460(v5 + v22, v16 + *(*(v17 - 8) + 72) * v14, &qword_1EB3886B8, &unk_1A9598C20);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A951914C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A95191BC()
{
  result = qword_1EB3886E0;
  if (!qword_1EB3886E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3886E0);
  }

  return result;
}

uint64_t sub_1A9519210(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1A937829C(&qword_1EB3886B8, &unk_1A9598C20);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = sub_1A937829C(&qword_1EB3886E8, &qword_1A9598E00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (v39 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v40 = a1;
  v41 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v42 = v17;
  v43 = 0;
  v44 = v20 & v18;
  v45 = a2;
  v46 = a3;

  v39[1] = a3;

  while (1)
  {
    sub_1A9518B68(v15);
    v21 = sub_1A937829C(&qword_1EB3886D8, &unk_1A9598DF0);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      sub_1A932D088(v40);
    }

    v23 = *v15;
    v22 = v15[1];
    sub_1A93A7460(v15 + *(v21 + 48), v12, &qword_1EB3886B8, &unk_1A9598C20);
    v24 = *a5;
    v26 = sub_1A937A490(v23, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1A9518904();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_1A951914C(v12, v33[7] + *(v47 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_1A9518588(v29, a4 & 1);
      v31 = sub_1A937A490(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v23;
      v34[1] = v22;
      sub_1A93A7460(v12, v33[7] + *(v47 + 72) * v26, &qword_1EB3886B8, &unk_1A9598C20);
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v33[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t TTSMarkup.Audio.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v37, 0, v37, &v33);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (!*(v6 + 16) || (v7 = sub_1A937A490(6517363, 0xE300000000000000), (v8 & 1) == 0))
  {

    result = sub_1A951A85C(&v33);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    return result;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v10 = *v9;
  v11 = v9[1];

  *&v34 = v10;
  *(&v34 + 1) = v11;
  v13 = *((*v5 & *a1) + 0x100);
  v14 = v13(v12);
  if (v14 >> 62)
  {
    goto LABEL_24;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
LABEL_25:

    goto LABEL_29;
  }

  while (1)
  {
    v27 = a2;
    v17 = v13(v16);
    v18 = v17;
    if (v17 >> 62)
    {
      break;
    }

    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_27;
    }

LABEL_7:
    v19 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1AC585DE0](v19, v18);
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1A93D1250(&v28);

      if (v29)
      {
        sub_1A932D070(&v28, &v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1A93ADC90(0, *(v13 + 2) + 1, 1, v13);
        }

        v24 = *(v13 + 2);
        v23 = *(v13 + 3);
        if (v24 >= v23 >> 1)
        {
          v13 = sub_1A93ADC90((v23 > 1), v24 + 1, 1, v13);
        }

        *(v13 + 2) = v24 + 1;
        sub_1A932D070(&v30, v13 + 40 * v24 + 32);
      }

      else
      {
        sub_1A937B960(&v28, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v19;
      if (v22 == a2)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v26 = sub_1A957CE48();

    if (!v26)
    {
      goto LABEL_25;
    }
  }

  a2 = sub_1A957CE48();
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_27:
  v13 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v31 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v32 = &protocol witness table for <A> [A];

  *&v30 = v13;
  sub_1A93A38D8(&v30, v35);
  a2 = v27;
LABEL_29:
  sub_1A951A88C(&v33, a2);
  return sub_1A951A85C(&v33);
}

uint64_t static TTSMarkup.Audio.tag.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB388700;
  return result;
}

uint64_t static TTSMarkup.Audio.tag.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB388700 = v1;
  return result;
}

uint64_t sub_1A95199BC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB388700;
  return result;
}

uint64_t sub_1A9519A08(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB388700 = v1;
  return result;
}

unint64_t TTSMarkup.Audio.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 6517363;
  v2 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (*(v0 + 16))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = inited;

  v6 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v6;
}

double TTSMarkup.Audio.init(url:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  SpeechContext.init<each A>(_:)(&v7, 0, &v7, a3);
  *(a3 + 56) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return result;
}

void TTSMarkup.Audio.init(resourceName:bundle:)(void *a3@<X2>, uint64_t a4@<X8>)
{
  SpeechContext.init<each A>(_:)(&v11, 0, &v11, a4);
  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  v6 = sub_1A957C0C8();

  v7 = [a3 pathForResource:v6 ofType:0];

  if (v7)
  {
    v8 = sub_1A957C0F8();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0;
  }

  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
}

uint64_t TTSMarkup.Audio.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))(v3, a2);
}

{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A93836DC;

  return v9(v3, a2, a3);
}

uint64_t TTSMarkup.Audio.AudioError.hashValue.getter()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

unint64_t sub_1A9519E64()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 6517363;
  v2 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  if (*(v0 + 16))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = inited;

  v6 = sub_1A9381740(v5);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v6;
}

uint64_t sub_1A9519F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Audio.accept<A>(_:)(a1, a2, a3);
}

uint64_t TTSMarkup.Desc.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Desc.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = &type metadata for TTSMarkup.Desc;
  v7[4] = &protocol witness table for TTSMarkup.Desc;
  v7[0] = swift_allocObject();
  sub_1A951A8C4(v3, v7[0] + 16);
  TTSMarkupVisitor.visit(_:)(v7, a2, a3);
  return sub_1A9378138(v7);
}

{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951A10C, 0, 0);
}

uint64_t sub_1A951A10C()
{
  v1 = v0[10];
  sub_1A93ADE40(v1 + 8, (v0 + 2));
  v2 = v0[5];
  result = sub_1A937B960((v0 + 2), &qword_1EB3868E8, &unk_1A958F280);
  if (v2)
  {
    if (*(v0[10] + 32))
    {
      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1A948CF28;
      v5 = v0[8];
      v6 = v0[9];

      return TTSMarkupAsyncVisitor.visit(_:)(v1 + 8, v5, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t TTSMarkup.Desc.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v38, 0, v38, &v34);
  v37 = 0;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (*(v6 + 16) && (v7 = sub_1A937A490(0x676E616C3A6C6D78, 0xE800000000000000), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    *(&v36 + 1) = v11;
    v37 = v10;
  }

  else
  {
  }

  v13 = *((*v5 & *a1) + 0x100);
  v14 = v13(v12);
  if (v14 >> 62)
  {
    goto LABEL_25;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
LABEL_26:

    goto LABEL_30;
  }

  while (1)
  {
    v28 = a2;
    v17 = v13(v16);
    v18 = v17;
    if (v17 >> 62)
    {
      break;
    }

    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_28;
    }

LABEL_9:
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v13 = (v18 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1AC585DE0](v19, v18);
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v21 = *(v18 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1A93D1250(&v29);

      if (v30)
      {
        sub_1A932D070(&v29, &v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1A93ADC90(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_1A93ADC90((v24 > 1), v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        sub_1A932D070(&v31, &v20[5 * v25 + 4]);
      }

      else
      {
        sub_1A937B960(&v29, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v19;
      if (v23 == a2)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v26 = sub_1A957CE48();

    if (!v26)
    {
      goto LABEL_26;
    }
  }

  a2 = sub_1A957CE48();
  if (a2)
  {
    goto LABEL_9;
  }

LABEL_28:
  v20 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v32 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v33 = &protocol witness table for <A> [A];

  *&v31 = v20;
  sub_1A93A38D8(&v31, v35);
  a2 = v28;
LABEL_30:
  sub_1A951A8C4(&v34, a2);
  return sub_1A951A8FC(&v34);
}

unint64_t TTSMarkup.Desc.attributes.getter()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 0x676E616C3A6C6D78;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v4 = sub_1A9381740(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1A9381740(v6);
  }
}

unint64_t sub_1A951A698()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 0x676E616C3A6C6D78;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v4 = sub_1A9381740(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1A9381740(v6);
  }
}

uint64_t sub_1A951A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9382328;

  return TTSMarkup.Desc.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A951A930()
{
  result = qword_1EB388708;
  if (!qword_1EB388708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388708);
  }

  return result;
}

uint64_t sub_1A951A9D8()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB389288);
  v1 = sub_1A937731C(v0, qword_1EB389288);
  v2 = sub_1A93773F4();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *VoiceDatabaseXPC.Server.__allocating_init(daemon:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[15] = 0;
  v2[16] = sub_1A95246C0(MEMORY[0x1E69E7CC0]);
  v2[14] = a1;
  return v2;
}

void *VoiceDatabaseXPC.Server.init(daemon:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[15] = 0;
  v1[16] = sub_1A95246C0(MEMORY[0x1E69E7CC0]);
  v1[14] = a1;
  return v1;
}

uint64_t sub_1A951AB4C()
{
  v1 = v0;
  v2 = sub_1A957BD58();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A957BC88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v7 = sub_1A937731C(v3, qword_1EB389288);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_1A957BC68();
  v9 = sub_1A957CA98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A9324000, v8, v9, "*** Starting VoiceDatabaseXPC server ***", v10, 2u);
    MEMORY[0x1AC587CD0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_1A9550904();

  sub_1A957BD48();
  sub_1A957BD88();
  swift_allocObject();
  v11 = sub_1A957BD78();
  return (*(*v1 + 120))(v11);
}

uint64_t sub_1A951ADE4(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  sub_1A957B0A8();
  swift_weakInit();
  v4 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session;
  *(v3 + OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session) = 0;
  swift_beginAccess();
  swift_weakAssign();

  swift_beginAccess();
  *(v3 + v4) = a2;
  return v3;
}

uint64_t sub_1A951AEA8()
{
  v1 = v0;
  v2 = sub_1A957BC88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v36 - v7);
  if (qword_1EB389280 != -1)
  {
LABEL_22:
    swift_once();
  }

  v9 = sub_1A937731C(v2, qword_1EB389288);
  v10 = *(v3 + 16);
  v41 = v3 + 16;
  v42 = v9;
  v38 = v2;
  v40 = v10;
  (v10)(v8);

  v11 = sub_1A957BC68();
  v12 = sub_1A957CA98();
  v13 = os_log_type_enabled(v11, v12);
  v37 = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    swift_beginAccess();
    *(v14 + 4) = *(*(v1 + 128) + 16);

    _os_log_impl(&dword_1A9324000, v11, v12, "%ld active voice downloads.", v14, 0xCu);
    v15 = v14;
    v6 = v37;
    MEMORY[0x1AC587CD0](v15, -1, -1);
  }

  else
  {
  }

  v16 = *(v3 + 8);
  v3 += 8;
  v17 = v38;
  v39 = v16;
  v16(v8, v38);
  swift_beginAccess();
  v18 = *(v1 + 128);
  v1 = v18 + 64;
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  v44 = v18;

  v2 = 0;
  *&v23 = 134218242;
  v36 = v23;
  v43 = v3;
  while (v21)
  {
LABEL_15:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v2 << 6);
    v27 = (*(v44 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(*(v44 + 56) + 8 * v26);
    v40(v6, v42, v17);

    v8 = sub_1A957BC68();
    v45 = sub_1A957CA98();
    if (os_log_type_enabled(v8, v45))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = v36;
      if (v30 >> 62)
      {
        v33 = sub_1A957CE48();
      }

      else
      {
        v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v31 + 4) = v33;

      *(v31 + 12) = 2080;
      v34 = sub_1A937A5C0(v29, v28, &v46);

      *(v31 + 14) = v34;
      _os_log_impl(&dword_1A9324000, v8, v45, "%ld observers for voice %s.", v31, 0x16u);
      sub_1A9378138(v32);
      MEMORY[0x1AC587CD0](v32, -1, -1);
      MEMORY[0x1AC587CD0](v31, -1, -1);

      v6 = v37;
      v17 = v38;
    }

    else
    {
    }

    v3 = v43;
    v39(v6, v17);
  }

  while (1)
  {
    v24 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v24 >= v22)
    {
    }

    v21 = *(v1 + 8 * v24);
    ++v2;
    if (v21)
    {
      v2 = v24;
      goto LABEL_15;
    }
  }
}

double sub_1A951B2F0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1A951B328(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;

  return sub_1A951AEA8();
}

uint64_t (*sub_1A951B374(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A951B3C8;
}

uint64_t sub_1A951B3C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A951AEA8();
  }

  return result;
}

uint64_t sub_1A951B3FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 152))();
  if (!*(v7 + 16) || (v8 = sub_1A937A490(a2, a3), (v9 & 1) == 0))
  {
LABEL_15:
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }
  }

LABEL_19:
  v11 = sub_1A957CE48();
  if (!v11)
  {
  }

LABEL_5:
  v12 = 0;
  v17 = a1 | ((HIDWORD(a1) & 1) << 32);
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1AC585DE0](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = *(v10 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }
    }

    v18 = v14;

    a1 = a2;
    sub_1A9554E9C(v17);
    v15 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session;
    result = swift_beginAccess();
    if (!*(v13 + v15))
    {
      break;
    }

    sub_1A9524860();

    sub_1A957BD08();

    ++v12;
    if (v18 == v11)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A951B660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951B684, v3, 0);
}

uint64_t sub_1A951B684()
{
  v1 = (*(**(v0 + 72) + 152))();
  if (*(v1 + 16) && (v2 = sub_1A937A490(*(v0 + 48), *(v0 + 56)), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);

    v20 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
    {
      v6 = 0;
      v19 = v0;
      v0 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v0)
        {
          MEMORY[0x1AC585DE0](v6, v4);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          goto LABEL_11;
        }

        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }

LABEL_11:
        sub_1A957B0B8();
        sub_1A95265D8(&qword_1EB386AB0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        if (sub_1A957C098())
        {
        }

        else
        {
          sub_1A957CF78();
          sub_1A957CFB8();
          sub_1A957CFC8();
          sub_1A957CF88();
        }

        ++v6;
        if (v7 == i)
        {
          v8 = v20;
          v0 = v19;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      ;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v9 = *(v0 + 72);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);

    v12 = *(*v9 + 168);

    v13 = v12(v0 + 16);
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v15;
    *v15 = 0x8000000000000000;
    sub_1A95240DC(v8, v11, v10, isUniquelyReferenced_nonNull_native);

    *v15 = v21;
    v13(v0 + 16, 0);
  }

  else
  {
LABEL_16:
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A951B974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A95240DC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A937A490(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A9524258();
        v14 = v16;
      }

      result = sub_1A939748C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_1A951BA6C(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*v1 + 152))();
  v4 = v3;
  v5 = 0;
  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = v10;
  v27 = v3;
  v28 = v1;
  v26 = v3 + 64;
  while (1)
  {
    if (!v9)
    {
      do
      {
        v17 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_30;
        }

        if (v17 >= v10)
        {

          return;
        }

        v9 = *(v6 + 8 * v17);
        ++v5;
      }

      while (!v9);
      v5 = v17;
    }

    v18 = __clz(__rbit64(v9)) | (v5 << 6);
    v19 = (*(v4 + 48) + 16 * v18);
    v20 = v19[1];
    v31 = *v19;
    v21 = *(*(v4 + 56) + 8 * v18);
    v33[0] = MEMORY[0x1E69E7CC0];
    if (v21 >> 62)
    {
      v25 = v20;
      v22 = sub_1A957CE48();
      v20 = v25;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v20;

    if (v22)
    {
      break;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_5:

    v12 = (*(*v2 + 168))(v33);
    v13 = (v9 - 1) & v9;
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v15;
    *v15 = 0x8000000000000000;
    sub_1A95240DC(v11, v31, v32, isUniquelyReferenced_nonNull_native);

    *v15 = v34;
    v9 = v13;
    v12(v33, 0);
    v10 = v30;
  }

  v29 = v9;
  v23 = 0;
  while ((v21 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1AC585DE0](v23, v21);
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_28;
    }

LABEL_20:
    sub_1A957B0B8();
    sub_1A95265D8(&qword_1EB386AB0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    if (sub_1A957C098())
    {
    }

    else
    {
      sub_1A957CF78();
      sub_1A957CFB8();
      sub_1A957CFC8();
      sub_1A957CF88();
    }

    ++v23;
    if (v24 == v22)
    {
      v11 = v33[0];
      v4 = v27;
      v2 = v28;
      v6 = v26;
      v9 = v29;
      goto LABEL_5;
    }
  }

  if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v24 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1A951BDC8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1A957BC88();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951BE8C, v2, 0);
}

uint64_t sub_1A951BE8C()
{
  v21 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_1A937731C(v3, qword_1EB389288);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1A957BC68();
  v6 = sub_1A957CA98();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  if (v7)
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1A937A5C0(v12, v11, &v20);
    _os_log_impl(&dword_1A9324000, v5, v6, "Canceling dowload for %s.", v13, 0xCu);
    sub_1A9378138(v14);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);
  }

  v15 = (*(v9 + 8))(v8, v10);
  v0[12] = (*(**(v0[8] + 112) + 160))(v15);
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_1A951C0C8;
  v18 = v0[6];
  v17 = v0[7];

  return VoiceDatabase.cancelDownload(voiceId:)(v18, v17);
}

uint64_t sub_1A951C0C8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1A951C314;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1A951C1F0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A951C1F0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(*v1 + 176))(0x100000001, v3, v2);
  v4 = *(*v1 + 168);

  v5 = v4(v0 + 2);
  sub_1A951B974(0, v3, v2);
  v5(v0 + 2, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A951C314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A951C380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v4[19] = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v4[22] = *(v6 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = sub_1A957BC88();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951C504, v3, 0);
}

uint64_t sub_1A951C504()
{
  v70 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = sub_1A937731C(v3, qword_1EB389288);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);

  v6 = sub_1A957BC68();
  v7 = sub_1A957CA98();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  if (v8)
  {
    v64 = *(v0 + 224);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v67 = v4;
    v14 = swift_slowAlloc();
    v65 = v5;
    v15 = swift_slowAlloc();
    v69 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1A937A5C0(v13, v12, &v69);
    _os_log_impl(&dword_1A9324000, v6, v7, "Starting download for %s.", v14, 0xCu);
    sub_1A9378138(v15);
    v16 = v15;
    v5 = v65;
    MEMORY[0x1AC587CD0](v16, -1, -1);
    v17 = v14;
    v4 = v67;
    MEMORY[0x1AC587CD0](v17, -1, -1);

    v18 = *(v10 + 8);
    v19 = v18(v64, v11);
  }

  else
  {

    v18 = *(v10 + 8);
    v19 = v18(v9, v11);
  }

  v20 = (*(**(v0 + 144) + 152))(v19);
  if (*(v20 + 16) && (v21 = sub_1A937A490(*(v0 + 120), *(v0 + 128)), (v22 & 1) != 0))
  {
    v23 = *(v0 + 216);
    v24 = *(v0 + 200);
    v25 = *(*(v20 + 56) + 8 * v21);

    v5(v23, v4, v24);

    v26 = sub_1A957BC68();
    v27 = sub_1A957CA98();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 216);
    v30 = *(v0 + 200);
    if (v28)
    {
      v66 = *(v0 + 128);
      v68 = *(v0 + 216);
      v31 = v25;
      v32 = *(v0 + 120);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69 = v34;
      *v33 = 136315138;
      v35 = v32;
      v25 = v31;
      *(v33 + 4) = sub_1A937A5C0(v35, v66, &v69);
      _os_log_impl(&dword_1A9324000, v26, v27, "Already downloading %s. Attaching observer.", v33, 0xCu);
      sub_1A9378138(v34);
      MEMORY[0x1AC587CD0](v34, -1, -1);
      MEMORY[0x1AC587CD0](v33, -1, -1);

      v36 = v68;
    }

    else
    {

      v36 = v29;
    }

    v18(v36, v30);
    v53 = *(v0 + 136);
    v54 = *(v0 + 144);
    v56 = *(v0 + 120);
    v55 = *(v0 + 128);
    sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A95892B0;
    *(inited + 32) = v53;
    v69 = v25;

    sub_1A95243C8(inited);
    v58 = v69;
    v59 = (*(*v54 + 168))(v0 + 88);
    v61 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *v61;
    *v61 = 0x8000000000000000;
    sub_1A95240DC(v58, v56, v55, isUniquelyReferenced_nonNull_native);

    *v61 = v69;
    v59(v0 + 88, 0);

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);

    sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A95892B0;
    *(v41 + 32) = v38;
    v42 = (*v37)[21];

    v43 = v42(v0 + 56);
    v45 = v44;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *v45;
    *v45 = 0x8000000000000000;
    sub_1A95240DC(v41, v40, v39, v46);

    *v45 = v69;
    v47 = v43(v0 + 56, 0);
    *(v0 + 232) = (*(*v37[14] + 160))(v47);
    v48 = swift_task_alloc();
    *(v0 + 240) = v48;
    *v48 = v0;
    v48[1] = sub_1A951CB2C;
    v49 = *(v0 + 192);
    v50 = *(v0 + 120);
    v51 = *(v0 + 128);

    return VoiceDatabase.download(voiceId:)(v49, v50, v51);
  }
}

uint64_t sub_1A951CB2C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_1A951CE78;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1A951CC54;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A951CC54()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v19 = v6;
  v20 = v1;
  v7 = v0[18];
  v17 = v0[15];
  v18 = v0[16];
  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v10 = sub_1A95265D8(&qword_1EB388718, v9, type metadata accessor for VoiceDatabaseXPC.Server, &protocol conformance descriptor for VoiceDatabaseXPC.Server);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  (*(v4 + 32))(v13 + v11, v2, v5);
  *(v13 + v12) = v7;
  v14 = (v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v17;
  v14[1] = v18;
  swift_retain_n();

  sub_1A938A404(0, 0, v19, &unk_1A9599050, v13);

  (*(v4 + 8))(v20, v5);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A951CE78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A951CF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v9 = sub_1A957BC88();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = sub_1A937829C(&qword_1EB3872B8, &qword_1A958C7F8);
  v7[13] = v10;
  v7[14] = *(v10 - 8);
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951D050, a5, 0);
}

uint64_t sub_1A951D050()
{
  sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  sub_1A957C6F8();
  v2 = sub_1A95265D8(&qword_1EB388718, v1, type metadata accessor for VoiceDatabaseXPC.Server, &protocol conformance descriptor for VoiceDatabaseXPC.Server);
  v0[16] = v2;
  v3 = v0[7];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1A951D164;
  v5 = v0[13];

  return MEMORY[0x1EEE6D9C8](v0 + 18, v3, v2, v5);
}

uint64_t sub_1A951D164()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A951D274, v1, 0);
}

uint64_t sub_1A951D274()
{
  v32 = v0;
  v1 = *(v0 + 144);
  if (*(v0 + 148))
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(*v4 + 176))(0x100000000, v3, v2);
    v5 = *(*v4 + 168);

    v6 = v5(v0 + 16);
    sub_1A951B974(0, v3, v2);
    v6(v0 + 16, 0);
    if (qword_1EB389280 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = sub_1A937731C(v9, qword_1EB389288);
    (*(v8 + 16))(v7, v10, v9);

    v11 = sub_1A957BC68();
    v12 = sub_1A957CA98();

    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
    if (v13)
    {
      v18 = *(v0 + 64);
      v17 = *(v0 + 72);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1A937A5C0(v18, v17, &v30);
      _os_log_impl(&dword_1A9324000, v11, v12, "Finished downloading %s.", v19, 0xCu);
      sub_1A9378138(v20);
      MEMORY[0x1AC587CD0](v20, -1, -1);
      MEMORY[0x1AC587CD0](v19, -1, -1);
    }

    (*(v15 + 8))(v14, v16);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 64);
    v24 = *(v0 + 72);
    v25 = *(**(v0 + 56) + 176);
    v31 = 0;
    v25(v1, v23, v24);
    v26 = *(v0 + 128);
    v27 = *(v0 + 56);
    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_1A951D164;
    v29 = *(v0 + 104);

    return MEMORY[0x1EEE6D9C8](v0 + 144, v27, v26, v29);
  }
}

uint64_t sub_1A951D5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A9382328;

  return sub_1A951D684(a5);
}

uint64_t sub_1A951D684(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1A957BC88();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v2[23] = swift_task_alloc();
  v4 = sub_1A957BDC8();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  sub_1A937829C(&qword_1EB388720, &qword_1A9599068);
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for VoiceDatabaseXPC.Message(0);
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A951D86C, 0, 0);
}

uint64_t sub_1A951D86C()
{
  sub_1A95265D8(&qword_1EB386050, 255, type metadata accessor for VoiceDatabaseXPC.Message, &unk_1A959A838);
  sub_1A957BDF8();
  v3 = *(v0 + 248);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  (*(*(v0 + 232) + 56))(v4, 0, 1, *(v0 + 224));
  sub_1A9524E3C(v4, v3, type metadata accessor for VoiceDatabaseXPC.Message);
  sub_1A9550910();

  sub_1A957BDA8();

  v8 = sub_1A957BDD8();
  v9 = *(v7 + 8);
  v9(v5, v6);
  if (v8)
  {
    sub_1A955091C();
  }

  else
  {
    v18 = *(v0 + 208);
    v19 = *(v0 + 192);
    sub_1A957BDB8();
    v20 = sub_1A957BDD8();
    v9(v18, v19);
    if ((sub_1A955091C() & 1) != 0 && (v20 & 1) == 0)
    {
      v21 = *(v0 + 248);
      *(v0 + 112) = xmmword_1A9599020;
      sub_1A9524D50();
LABEL_38:
      sub_1A957BDE8();
      sub_1A9525A44(v21, type metadata accessor for VoiceDatabaseXPC.Message);

      v1 = *(v0 + 8);

      return v1();
    }
  }

  sub_1A9524CEC(*(v0 + 248), *(v0 + 240));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v11 = *(v0 + 240);
        v12 = *(v0 + 152);
        v13 = *v11;
        if (EnumCaseMultiPayload == 6)
        {
          *(v0 + 328) = *v11;
          v14 = swift_task_alloc();
          *(v0 + 336) = v14;
          *(v14 + 16) = v12;
          *(v14 + 24) = v13;
          v61 = sub_1A9524A04;
          v15 = swift_task_alloc();
          *(v0 + 344) = v15;
          *v15 = v0;
          v15[1] = sub_1A951E51C;
          v16 = *(v0 + 144);
          v17 = &unk_1A95990E8;
        }

        else
        {
          *(v0 + 352) = *v11;
          v59 = swift_task_alloc();
          *(v0 + 360) = v59;
          *(v59 + 16) = v12;
          *(v59 + 24) = v13;
          v61 = sub_1A9524A04;
          v60 = swift_task_alloc();
          *(v0 + 368) = v60;
          *v60 = v0;
          v60[1] = sub_1A951E650;
          v16 = *(v0 + 144);
          v17 = &unk_1A95990D8;
        }

        goto LABEL_33;
      }

      v42 = *(v0 + 184);
      v43 = *(v0 + 152);
      sub_1A9524E3C(*(v0 + 240), v42, type metadata accessor for VoiceQueryCriteria);
      v44 = swift_task_alloc();
      *(v0 + 400) = v44;
      *(v44 + 16) = v43;
      *(v44 + 24) = v42;
      v61 = sub_1A95254D0;
      v45 = swift_task_alloc();
      *(v0 + 408) = v45;
      *v45 = v0;
      v45[1] = sub_1A951EB30;
      v46 = *(v0 + 144);
      v47 = &unk_1A9599098;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v61 = sub_1A9524A04;
        v27 = swift_task_alloc();
        *(v0 + 376) = v27;
        *v27 = v0;
        v27[1] = sub_1A951E840;
        v28 = &unk_1A95990C8;
        v29 = *(v0 + 144);
LABEL_34:

        return v61(v29, v28);
      }

      v21 = *(v0 + 248);
      sub_1A9524D50();
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      goto LABEL_38;
    }

    v48 = *(v0 + 240);
    v49 = *v48;
    *(v0 + 416) = *v48;
    v50 = v48[1];
    *(v0 + 424) = v50;
    v51 = swift_task_alloc();
    *(v0 + 432) = v51;
    *(v51 + 16) = v49;
    *(v51 + 24) = v50;
    v61 = sub_1A9524A04;
    v52 = swift_task_alloc();
    *(v0 + 440) = v52;
    *v52 = v0;
    v52[1] = sub_1A951EC48;
    v16 = *(v0 + 144);
    v17 = &unk_1A9599080;
LABEL_33:
    v28 = v17;
    v29 = v16;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v30 = *(v0 + 240);
    v31 = *(v0 + 152);
    v32 = *v30;
    v33 = v30[1];
    if (EnumCaseMultiPayload)
    {
      *(v0 + 280) = v33;
      v57 = swift_task_alloc();
      *(v0 + 288) = v57;
      v57[2] = v31;
      v57[3] = v32;
      v57[4] = v33;
      v61 = sub_1A9524A04;
      v58 = swift_task_alloc();
      *(v0 + 296) = v58;
      *v58 = v0;
      v58[1] = sub_1A951E2B4;
      v16 = *(v0 + 144);
      v17 = &unk_1A9599108;
    }

    else
    {
      *(v0 + 304) = v33;
      v34 = swift_task_alloc();
      *(v0 + 312) = v34;
      v34[2] = v31;
      v34[3] = v32;
      v34[4] = v33;
      v61 = sub_1A9524A04;
      v35 = swift_task_alloc();
      *(v0 + 320) = v35;
      *v35 = v0;
      v35[1] = sub_1A951E3E8;
      v16 = *(v0 + 144);
      v17 = &unk_1A95990F8;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v0 + 240);
    v37 = *(v0 + 152);
    v38 = *v36;
    v39 = v36[1];
    *(v0 + 256) = v39;
    v40 = swift_task_alloc();
    *(v0 + 264) = v40;
    v40[2] = v37;
    v40[3] = v38;
    v40[4] = v39;
    v61 = sub_1A9524A04;
    v41 = swift_task_alloc();
    *(v0 + 272) = v41;
    *v41 = v0;
    v41[1] = sub_1A951E180;
    v16 = *(v0 + 144);
    v17 = &unk_1A9599118;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v53 = *(v0 + 184);
    v54 = *(v0 + 152);
    sub_1A9524E3C(*(v0 + 240), v53, type metadata accessor for VoiceQueryCriteria);
    v55 = swift_task_alloc();
    *(v0 + 384) = v55;
    *(v55 + 16) = v54;
    *(v55 + 24) = v53;
    v61 = sub_1A9524F50;
    v56 = swift_task_alloc();
    *(v0 + 392) = v56;
    *v56 = v0;
    v56[1] = sub_1A951E93C;
    v46 = *(v0 + 144);
    v47 = &unk_1A95990B0;
LABEL_30:
    v28 = v47;
    v29 = v46;
    goto LABEL_34;
  }

  v22 = *(v0 + 240);
  v23 = *v22;
  v24 = v22[1];
  v25 = swift_task_alloc();
  *(v0 + 448) = v25;
  *(v25 + 16) = v23;
  *(v25 + 17) = v24;
  v26 = swift_task_alloc();
  *(v0 + 456) = v26;
  *v26 = v0;
  v26[1] = sub_1A951ED9C;

  return sub_1A952344C(v23, v24);
}

uint64_t sub_1A951E180()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E2B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E3E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E51C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E650()
{

  return MEMORY[0x1EEE6DFA0](sub_1A951E784, 0, 0);
}

uint64_t sub_1A951E784()
{
  sub_1A9525A44(*(v0 + 248), type metadata accessor for VoiceDatabaseXPC.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A951E840()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951E93C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A951EA54, 0, 0);
}

uint64_t sub_1A951EA54()
{
  v1 = v0[23];
  sub_1A9525A44(v0[31], type metadata accessor for VoiceDatabaseXPC.Message);
  sub_1A9525A44(v1, type metadata accessor for VoiceQueryCriteria);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A951EB30()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9526630, 0, 0);
}

uint64_t sub_1A951EC48()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);

  sub_1A9450A78(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1A9526628, 0, 0);
}

uint64_t sub_1A951ED9C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1A951EF9C;
  }

  else
  {
    v2 = sub_1A951EEB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A951EEB0()
{
  sub_1A9524D50();
  v0[11] = 0;
  v0[10] = 0;
  sub_1A957BDE8();
  v1 = v0[31];

  sub_1A9525A44(v1, type metadata accessor for VoiceDatabaseXPC.Message);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A951EF9C()
{
  v26 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[58];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1A957D478();
    v16 = sub_1A937A5C0(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[58];
  swift_getErrorValue();
  v0[12] = sub_1A957D478();
  v0[13] = v21;
  sub_1A9524D50();
  sub_1A957BDE8();

  v22 = v0[31];

  sub_1A9525A44(v22, type metadata accessor for VoiceDatabaseXPC.Message);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A951F270(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v26 - v3;
  v4 = sub_1A957BD98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957BC88();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v12 = sub_1A937731C(v8, qword_1EB389288);
  (*(v9 + 16))(v11, v12, v8);
  v13 = *(v5 + 16);
  v13(v7, a1, v4);
  v14 = sub_1A957BC68();
  v15 = sub_1A957CA98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v9;
    v17 = v16;
    v27 = swift_slowAlloc();
    *v17 = 138412290;
    sub_1A95265D8(&qword_1EB385FD8, 255, MEMORY[0x1E69E84C0], MEMORY[0x1E69E84C8]);
    swift_allocError();
    v29 = v8;
    v13(v18, v7, v4);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v7, v4);
    v20 = v17;
    v21 = v27;
    v9 = v28;
    *(v20 + 1) = v19;
    *v21 = v19;
    v8 = v29;
    _os_log_impl(&dword_1A9324000, v14, v15, "Invalidated connection with error %@", v20, 0xCu);
    sub_1A937B960(v21, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v21, -1, -1);
    MEMORY[0x1AC587CD0](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v9 + 8))(v11, v8);
  v22 = sub_1A957C688();
  v23 = v30;
  (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v31;

  sub_1A93C4B70(0, 0, v23, &unk_1A9599128, v24);
}

uint64_t sub_1A951F6C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = (*Strong + 192) & 0xFFFFFFFFFFFFLL | 0x3549000000000000;
    v0[7] = *(*Strong + 192);
    v0[8] = v4;
    Strong = sub_1A951F770;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](Strong, v2, v3);
}

uint64_t sub_1A951F770()
{
  (*(v0 + 56))(*(v0 + 40));
  *(v0 + 72) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A951F830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A951F894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951F8B8, 0, 0);
}

uint64_t sub_1A951F8B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A9526620;
  v6 = v0[2];

  return (sub_1A9524A04)(v6, &unk_1A9599130, v4);
}

uint64_t sub_1A951F9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951F9C8, 0, 0);
}

uint64_t sub_1A951F9C8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A951FAB4;
  v6 = v0[2];

  return (sub_1A9524A04)(v6, &unk_1A9599138, v4);
}

uint64_t sub_1A951FAB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A951FBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A951FBE8, 0, 0);
}

uint64_t sub_1A951FBE8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A9526620;
  v6 = v0[2];

  return (sub_1A9524A04)(v6, &unk_1A9599140, v4);
}

uint64_t sub_1A951FCD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A951FCF8, 0, 0);
}

uint64_t sub_1A951FCF8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1A9526624;
  v5 = v0[2];

  return sub_1A9524A04(v5, &unk_1A9599148);
}

uint64_t sub_1A951FDD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A951FDFC, 0, 0);
}

uint64_t sub_1A951FDFC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1A951FEDC;
  v5 = v0[2];

  return sub_1A9524A04(v5, &unk_1A9599150);
}

uint64_t sub_1A951FEDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A951FFEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A952000C, 0, 0);
}

uint64_t sub_1A952000C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A95200C8;
  v2 = *(v0 + 16);

  return sub_1A9524A04(v2, &unk_1A9599158);
}

uint64_t sub_1A95200C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A95201BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95201E0, 0, 0);
}

uint64_t sub_1A95201E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A9526624;
  v3 = *(v0 + 16);

  return sub_1A9524F50(v3, &unk_1A9599160);
}

uint64_t sub_1A95202BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95202E0, 0, 0);
}

uint64_t sub_1A95202E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A9526624;
  v3 = *(v0 + 16);

  return sub_1A95254D0(v3, &unk_1A9599168);
}

uint64_t sub_1A95203BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A95203DC, 0, 0);
}

uint64_t sub_1A95203DC()
{
  v8 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = *sub_1A94CF400();
  v7[0] = v1;
  v7[1] = v2;
  v4 = *(*v3 + 408);

  sub_1A93F48E0(v1, v2);
  v4(v7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A95204B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95204D8, 0, 0);
}

uint64_t sub_1A95204D8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1A94CB3D4;
  v2 = v0[3];
  v3 = v0[2];

  return sub_1A9524A04(v3, v2);
}

uint64_t sub_1A9520584(uint64_t a1, char a2, char a3)
{
  *(v3 + 169) = a3;
  *(v3 + 168) = a2;
  *(v3 + 112) = a1;
  v4 = sub_1A957BC88();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A952064C, 0, 0);
}

uint64_t sub_1A952064C()
{
  v1 = *(v0 + 169);
  v2 = *(v0 + 168);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *(v3 + 16) = v2;
  *(v3 + 17) = v1;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_1A9520700;
  v5 = *(v0 + 169);
  v6 = *(v0 + 168);

  return sub_1A952344C(v6, v5);
}

uint64_t sub_1A9520700()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A95208A0;
  }

  else
  {
    v2 = sub_1A9520814;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9520814(uint64_t a1)
{
  sub_1A9524D50();
  v1[9] = 0;
  v1[8] = 0;
  sub_1A957BDE8();

  v2 = v1[1];

  return v2();
}

uint64_t sub_1A95208A0()
{
  v25 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1A957D478();
    v16 = sub_1A937A5C0(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[20];
  swift_getErrorValue();
  v0[10] = sub_1A957D478();
  v0[11] = v21;
  sub_1A9524D50();
  sub_1A957BDE8();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A9520B24(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v8 = sub_1A957BC88();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = *(a4 - 8);
  v9 = swift_task_alloc();
  v5[19] = v9;
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  v5[20] = v10;
  *v10 = v5;
  v10[1] = sub_1A9520CDC;

  return v12(v9);
}

uint64_t sub_1A9520CDC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1A9520E94;
  }

  else
  {
    v2 = sub_1A9520DF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9520DF0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  sub_1A957BDE8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A9520E94()
{
  v25 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1A957D478();
    v16 = sub_1A937A5C0(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[21];
  swift_getErrorValue();
  v0[8] = sub_1A957D478();
  v0[9] = v21;
  sub_1A9524D50();
  sub_1A957BDE8();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A952111C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9521140, 0, 0);
}

uint64_t sub_1A9521140()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 112);

    v0[8] = (*(*v2 + 160))(v3);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1A9521258;
    v6 = v0[6];
    v5 = v0[7];

    return VoiceDatabase.purge(voiceId:)(v6, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521258()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9521394, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9521394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A95213F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A952141C, 0, 0);
}

uint64_t sub_1A952141C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v0[8] = result;
  if (result)
  {
    v6 = (*(*result + 200) + **(*result + 200));
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1A9521258;
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    return v6(v4, v3, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A952159C, 0, 0);
}

uint64_t sub_1A952159C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v0[8] = result;
  if (result)
  {
    v6 = (*(*result + 208) + **(*result + 208));
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1A95216F8;
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    return v6(v4, v3, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A95216F8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9526634, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9521834(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9521854, 0, 0);
}

uint64_t sub_1A9521854()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 112);

    v4 = (*(*v2 + 160))(v3);
    v0[7] = v4;

    v7 = (*(*v4 + 488) + **(*v4 + 488));
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1A9521A08;
    v6 = v0[6];

    return v7(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521A08()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9521B44, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9521B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9521BA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9521BC8, 0, 0);
}

uint64_t sub_1A9521BC8()
{
  v0[7] = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_server;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 112);

    v4 = (*(*v2 + 160))(v3);
    v0[8] = v4;

    v7 = (*(*v4 + 496) + **(*v4 + 496));
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1A9521D80;
    v6 = v0[6];

    return v7(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9521D80()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A952219C;
  }

  else
  {

    v2 = sub_1A9521E9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9521E9C()
{
  if (v0[6])
  {
    goto LABEL_2;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = *(result + 112);

  v5 = (*(*v3 + 184))(v4);
  v0[11] = v5;

  if (!v5)
  {
LABEL_2:
    v1 = v0[1];

    return v1();
  }

  else
  {
    v7 = (*(*v5 + 136) + **(*v5 + 136));
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1A9522060;

    return v7();
  }
}

uint64_t sub_1A9522060()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9522200, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A952219C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9522200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9522284()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 112);

    v4 = (*(*v2 + 184))(v3);
    v0[6] = v4;

    if (v4)
    {
      v7 = (*(*v4 + 136) + **(*v4 + 136));
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = sub_1A9522454;

      return v7();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9522454()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A938BC8C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9522590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[186] = a3;
  v3[185] = a2;
  v3[184] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A95225B8, 0, 0);
}

uint64_t sub_1A95225B8()
{
  v0[187] = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_server;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[188] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = *Strong + 152;
    v0[189] = *v4;
    v0[190] = v4 & 0xFFFFFFFFFFFFLL | 0x8991000000000000;
    Strong = sub_1A9522670;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](Strong, v2, v3);
}

uint64_t sub_1A9522670()
{
  *(v0 + 1528) = (*(v0 + 1512))();

  return MEMORY[0x1EEE6DFA0](sub_1A95226EC, 0, 0);
}

uint64_t sub_1A95226EC()
{
  v0[192] = sub_1A93E90A0(v0[191]);
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 112);

    v4 = (*(*v2 + 160))(v3);
    v0[193] = v4;

    v7 = (*(*v4 + 392) + **(*v4 + 392));
    v5 = swift_task_alloc();
    v0[194] = v5;
    *v5 = v0;
    v5[1] = sub_1A9522894;
    v6 = v0[186];

    return v7(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9522894(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1560) = a1;
  *(v3 + 1568) = v1;

  if (v1)
  {
    v4 = sub_1A9522CE4;
  }

  else
  {

    v4 = sub_1A95229B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void *sub_1A95229B4()
{
  v26 = v0;
  v1 = *(v0 + 1560);
  v2 = *(v1 + 16);
  v3 = *(v0 + 1536);
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    result = sub_1A9461C94(0, v2, 0);
    if (*(v1 + 16))
    {
      v5 = 0;
      v21 = (v0 + 1440);
      v6 = v24;
      v22 = v1;
      v23 = v1 + 32;
      v7 = v3 + 56;
      v8 = 1;
      while (1)
      {
        v9 = (v23 + 280 * v5);
        v5 = v8;
        memcpy((v0 + 16), v9, 0x118uLL);
        if (!*(v3 + 16))
        {
          break;
        }

        v11 = *(v0 + 16);
        v10 = *(v0 + 24);
        sub_1A957D4F8();
        sub_1A937B3DC(v0 + 16, v0 + 576);
        sub_1A957C228();
        v12 = sub_1A957D548();
        v13 = -1 << *(v3 + 32);
        v14 = v12 & ~v13;
        if (((*(v7 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_15;
        }

        v15 = ~v13;
        while (1)
        {
          v16 = (*(v3 + 48) + 16 * v14);
          v17 = *v16 == v11 && v16[1] == v10;
          if (v17 || (sub_1A957D3E8() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v7 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        memcpy((v0 + 296), (v0 + 16), 0x118uLL);
        sub_1A937B3DC(v0 + 16, v0 + 856);
        *v21 = *sub_1A9493D44();
        *(v0 + 1456) = *(v0 + 360);
        sub_1A9387410();
        sub_1A957CD98();
        sub_1A93B1F40();
        if ((sub_1A957C098() & 1) == 0)
        {
          *(v0 + 1464) = *v21;
          sub_1A957CDD8();
        }

        sub_1A937B48C(v0 + 16);
        *(v0 + 489) = 3;
LABEL_19:
        memcpy(__dst, (v0 + 296), 0x118uLL);
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1A9461C94((v18 > 1), v19 + 1, 1);
        }

        *(v24 + 16) = v19 + 1;
        result = memcpy((v24 + 280 * v19 + 32), __dst, 0x118uLL);
        if (v5 == v2)
        {

          goto LABEL_26;
        }

        v8 = v5 + 1;
        if (v5 >= *(v22 + 16))
        {
          goto LABEL_29;
        }
      }

      sub_1A937B3DC(v0 + 16, v0 + 1136);
LABEL_15:
      memcpy((v0 + 296), (v0 + 16), 0x118uLL);
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_26:
    **(v0 + 1472) = v6;
    v20 = *(v0 + 8);

    return v20();
  }

  return result;
}

uint64_t sub_1A9522CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9522D54(uint64_t a1)
{
  v35 = sub_1A957B308();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1A957CE18();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1A957B1A8();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1A93ABB68((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1A932D0A4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1A932D0A4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_1A952305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9523080, 0, 0);
}

uint64_t sub_1A9523080()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 112);

    v4 = (*(*v2 + 160))(v3);
    v0[8] = v4;

    v7 = (*(*v4 + 400) + **(*v4 + 400));
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_1A9523234;
    v6 = v0[7];

    return v7(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9523234(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_1A9526634;
  }

  else
  {

    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_1A9523370;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A9523370()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = sub_1A9522D54(v0[12]);
  sub_1A93AD200(v3);

  v4 = sub_1A9522D54(v1);

  sub_1A93AD200(v4);

  nullsub_23();
  *v2 = v5;
  v2[1] = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A952344C(char a1, char a2)
{
  *(v2 + 49) = a2;
  *(v2 + 48) = a1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  *(v2 + 16) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A95234EC, 0, 0);
}

uint64_t sub_1A95234EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  v4 = sub_1A957C688();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;
  v6 = sub_1A93C4B70(0, 0, v1, &unk_1A9599260, v5);
  *(v0 + 24) = v6;
  if (v2 == 1)
  {
    v7 = v6;
    v8 = swift_task_alloc();
    *(v0 + 32) = v8;
    v9 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v8 = v0;
    v8[1] = sub_1A95236A0;
    v10 = MEMORY[0x1E69E7288];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v9, v7, v11, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1A95236A0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1A9523820;
  }

  else
  {
    v2 = sub_1A95237B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A95237B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9523820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A952388C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 16) = type metadata accessor for AXCatalogUpdater();
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1A9523930;

  return static AXCatalogUpdater.updateCatalog()();
}

uint64_t sub_1A9523930()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);
LABEL_8:

    return v4();
  }

  if (*(v2 + 40) != 1)
  {
    v4 = *(v3 + 8);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_1A95200C8;

  return static AXCatalogUpdater.downloadSampleAsset()();
}

uint64_t sub_1A9523AC4()
{
  v1 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_id;
  v2 = sub_1A957B0B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

double sub_1A9523B80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A957BE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = *v2;
  sub_1A957C668();
  v12 = sub_1A957C688();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v11;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1A938A404(0, 0, v10, &unk_1A9599250, v14);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void *VoiceDatabaseXPC.Server.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoiceDatabaseXPC.Server.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A9523E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB388738, &qword_1A9599270);
  v34 = v4;
  result = sub_1A957D118();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

void sub_1A95240DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9523E34(v16, a4 & 1);
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A957D438();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A9524258();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1A9524258()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388738, &qword_1A9599270);
  v2 = *v0;
  v3 = sub_1A957D108();
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

uint64_t sub_1A95243C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A957CE48();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A93B6054(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A95244B8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A95244B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A952649C();
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB388728, &qword_1A9599268);
            v9 = sub_1A9524638(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s6ServerC14RequestHandlerCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A9524638(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC585DE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1A95246B8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A95246C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB388738, &qword_1A9599270);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A95247C4()
{
  _s6ServerC14RequestHandlerCMa(0);
  sub_1A95265D8(&qword_1EB386058, 255, _s6ServerC14RequestHandlerCMa, &unk_1A9599170);
  return sub_1A957BD68();
}

unint64_t sub_1A9524860()
{
  result = qword_1EB388710;
  if (!qword_1EB388710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388710);
  }

  return result;
}

uint64_t sub_1A95248D8()
{
  v2 = *(sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A93836DC;

  return sub_1A951CF20(v9, v10, v11, v0 + v3, v5, v7, v8);
}

uint64_t sub_1A9524A04(uint64_t a1, int *a2)
{
  v2[14] = a1;
  v4 = sub_1A957BC88();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[18] = v5;
  *v5 = v2;
  v5[1] = sub_1A9524B54;

  return v7();
}

uint64_t sub_1A9524B54()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1A952662C;
  }

  else
  {
    v2 = sub_1A9524C68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9524C68(uint64_t a1)
{
  sub_1A9524D50();
  v1[9] = 0;
  v1[8] = 0;
  sub_1A957BDE8();

  v2 = v1[1];

  return v2();
}

uint64_t sub_1A9524CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceDatabaseXPC.Message(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A9524D50()
{
  result = qword_1EB386048;
  if (!qword_1EB386048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386048);
  }

  return result;
}

uint64_t sub_1A9524DA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A95203BC(v2, v3);
}

uint64_t sub_1A9524E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9524EA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A952305C(a1, v5, v4);
}

uint64_t sub_1A9524F50(uint64_t a1, int *a2)
{
  v2[13] = a1;
  v4 = sub_1A957BC88();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[17] = v5;
  *v5 = v2;
  v5[1] = sub_1A95250A8;

  return v7(v2 + 10);
}

uint64_t sub_1A95250A8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A9525254;
  }

  else
  {
    v2 = sub_1A95251BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A95251BC()
{
  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  sub_1A9526330();
  sub_1A957BDE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9525254()
{
  v25 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1A957D478();
    v16 = sub_1A937A5C0(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[15];
    v17 = v0[16];
    v19 = v0[14];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[18];
  swift_getErrorValue();
  v0[8] = sub_1A957D478();
  v0[9] = v21;
  sub_1A9524D50();
  sub_1A957BDE8();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A95254D0(uint64_t a1, int *a2)
{
  v2[14] = a1;
  v4 = sub_1A957BC88();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[18] = v5;
  *v5 = v2;
  v5[1] = sub_1A9525628;

  return v7(v2 + 8);
}

uint64_t sub_1A9525628()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1A95257C8;
  }

  else
  {
    v2 = sub_1A952573C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A952573C()
{
  sub_1A95263B4();
  sub_1A957BDE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A95257C8()
{
  v25 = v0;
  if (qword_1EB389280 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1A937731C(v4, qword_1EB389288);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA78();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1A957D478();
    v16 = sub_1A937A5C0(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1A9324000, v7, v8, "Encountered error fulfilling XPC request with error %s. Bubbling up to client.", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[19];
  swift_getErrorValue();
  v0[10] = sub_1A957D478();
  v0[11] = v21;
  sub_1A9524D50();
  sub_1A957BDE8();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A9525A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A9525AA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A9522590(a1, v5, v4);
}

uint64_t sub_1A9525B50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A9522264(v0);
}

uint64_t sub_1A9525BE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9521BA8(v2, v3);
}

uint64_t sub_1A9525C78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9521834(v2, v3);
}

uint64_t sub_1A9525D10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9521578(v2, v3, v4);
}

uint64_t sub_1A9525DB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A95213F8(v2, v3, v4);
}

uint64_t sub_1A9525E60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A952111C(v2, v3, v4);
}

uint64_t sub_1A9525F08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A951F6A0(v3, v4, v5, v2);
}

uint64_t sub_1A9525F9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A95213F8(v2, v3, v4);
}

uint64_t _s6ServerC14RequestHandlerCMa(uint64_t a1)
{
  result = qword_1EB389BF0;
  if (!qword_1EB389BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A95260E8(uint64_t a1)
{
  result = sub_1A957B0B8();
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

uint64_t sub_1A952618C()
{
  v1 = sub_1A957BE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A9526258()
{
  v2 = *(sub_1A957BE08() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A951D5E8(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_1A9526330()
{
  result = qword_1EB385F98;
  if (!qword_1EB385F98)
  {
    sub_1A93A7B68(&qword_1EB386958, &qword_1A9587790);
    sub_1A948C450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385F98);
  }

  return result;
}

unint64_t sub_1A95263B4()
{
  result = qword_1EB386060;
  if (!qword_1EB386060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386060);
  }

  return result;
}

uint64_t sub_1A9526408()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A952388C(v3, v4, v5, v2);
}

unint64_t sub_1A952649C()
{
  result = qword_1EB388730;
  if (!qword_1EB388730)
  {
    sub_1A93A7B68(&qword_1EB388728, &qword_1A9599268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388730);
  }

  return result;
}

uint64_t sub_1A9526500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s6ServerC14RequestHandlerCMa(0);
  v4 = swift_allocObject();
  sub_1A957B0A8();
  swift_weakInit();
  v5 = OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session;
  *(v4 + OBJC_IVAR____TtCCC12TextToSpeech16VoiceDatabaseXPC6Server14RequestHandler_session) = 0;
  swift_beginAccess();
  swift_weakAssign();
  swift_beginAccess();
  *(v4 + v5) = a1;

  *a2 = v4;
  return result;
}

uint64_t sub_1A95265D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1A9526684@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A95266E0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_1A9526738()
{
  v1 = v0;
  v2 = sub_1A957BC88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A9391C54();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1A957BC68();
  v8 = sub_1A957CA68();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v16 = *(v1 + 32);
    v11 = sub_1A957C198();
    v13 = sub_1A937A5C0(v11, v12, v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A9324000, v7, v8, "State => %s", v9, 0xCu);
    sub_1A9378138(v10);
    MEMORY[0x1AC587CD0](v10, -1, -1);
    MEMORY[0x1AC587CD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  v16 = *(v1 + 32);
  return sub_1A957BE68();
}

uint64_t sub_1A9526954@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1A9526998(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 32) = v2;
  return sub_1A9526738();
}

uint64_t (*sub_1A95269DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9526A30;
}

uint64_t sub_1A9526A30(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A9526738();
  }

  return result;
}

uint64_t sub_1A9526A64()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A957BC88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A9391C54();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_1A957BC68();
  v15 = sub_1A957CA68();

  v16 = os_log_type_enabled(v14, v15);
  v58 = v4;
  v59 = v1;
  if (v16)
  {
    v56 = v15;
    v57 = v14;
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62[0] = v54;
    v55 = v17;
    *v17 = 136315138;
    swift_beginAccess();
    v18 = *(v1 + 40);
    v19 = *(v18 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v52 = v9;
      v61 = MEMORY[0x1E69E7CC0];

      sub_1A940FCE4(0, v19, 0);
      v20 = v61;
      v21 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v53 = v6;
      v22 = *(v6 + 72);
      do
      {
        sub_1A9530850(v21, v8);
        v60 = *v8;
        swift_unknownObjectRetain();
        sub_1A95308B4(v8);
        v61 = v20;
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1A940FCE4((v23 > 1), v24 + 1, 1);
          v20 = v61;
        }

        *(v20 + 16) = v24 + 1;
        *(v20 + 16 * v24 + 32) = v60;
        v21 += v22;
        --v19;
      }

      while (v19);

      v4 = v58;
      v1 = v59;
      v9 = v52;
      v6 = v53;
    }

    v25 = sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
    v26 = MEMORY[0x1AC585390](v20, v25);
    v28 = v27;

    v29 = sub_1A937A5C0(v26, v28, v62);

    v30 = v55;
    *(v55 + 1) = v29;
    v14 = v57;
    _os_log_impl(&dword_1A9324000, v57, v56, "WorkItems => %s", v30, 0xCu);
    v31 = v54;
    sub_1A9378138(v54);
    MEMORY[0x1AC587CD0](v31, -1, -1);
    MEMORY[0x1AC587CD0](v30, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  v32 = *(v1 + 40);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v61 = MEMORY[0x1E69E7CC0];

    sub_1A940FCE4(0, v33, 0);
    v34 = v61;
    v35 = *(v6 + 80);
    *&v60 = v32;
    v36 = v32 + ((v35 + 32) & ~v35);
    v37 = *(v6 + 72);
    do
    {
      sub_1A9530850(v36, v8);
      v38 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 80);
      v41 = swift_unknownObjectRetain();
      v42 = v40(v41, ObjectType, v38);
      sub_1A95308B4(v8);
      v61 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1A940FCE4((v43 > 1), v44 + 1, 1);
        v34 = v61;
      }

      *(v34 + 16) = v44 + 1;
      v45 = v34 + 16 * v44;
      *(v45 + 32) = v42;
      *(v45 + 40) = v38;
      v36 += v37;
      --v33;
    }

    while (v33);

    v4 = v58;
    v1 = v59;
  }

  v46 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v47 = sub_1A957C688();
  v48 = *(v47 - 8);
  (*(v48 + 16))(v4, v1 + v46, v47);
  (*(v48 + 56))(v4, 0, 1, v47);
  v49 = sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v50 = swift_allocObject();
  v50[2] = v1;
  v50[3] = v49;
  v50[4] = v1;
  v50[5] = v34;
  swift_retain_n();
  sub_1A938A404(0, 0, v4, &unk_1A9599760, v50);
}

uint64_t sub_1A9527050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v7 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A95270F8, v7, v6);
}

uint64_t sub_1A95270F8()
{
  sub_1A957C638();
  *(v0 + 32) = sub_1A957C628();
  v2 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952718C, v2, v1);
}

uint64_t sub_1A952718C()
{
  v1 = *(v0 + 16);

  v2 = *(*v1 + 280);

  v2(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t TTSSpeechQueue.taskPriority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v4 = sub_1A957C688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A95272C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9527318(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 280);

  return v2(v3);
}

uint64_t sub_1A9527374()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A957BEC8();

  return v1;
}

uint64_t sub_1A95273E8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A957BED8();
}

uint64_t (*sub_1A9527458(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A957BEB8();
  return sub_1A95274FC;
}

void sub_1A95274FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1A95275B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388750, &unk_1A95992D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 304))(v6);
}

uint64_t sub_1A95276B8()
{
  swift_beginAccess();
  sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  sub_1A957BE98();
  return swift_endAccess();
}

uint64_t sub_1A952772C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388750, &unk_1A95992D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  sub_1A957BEA8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1A9527864(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1A937829C(&qword_1EB388750, &unk_1A95992D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue__uiActions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  sub_1A957BE98();
  swift_endAccess();
  return sub_1A95279D4;
}

void sub_1A95279D4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1A957BEA8();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1A957BEA8();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_1A9527B3C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758, &protocol conformance descriptor for TTSSpeechQueue);
  v5 = sub_1A957C5A8();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A9527BE4, v5, v4);
}

uint64_t sub_1A9527BE4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v4 = sub_1A9527E64(v2, (v0 + 16));
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1A9527D00;

  return sub_1A952C024(&unk_1A95992E8, v5);
}

uint64_t sub_1A9527D00()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A93D632C, v3, v2);
}

void *sub_1A9527E64(uint64_t a1, uint64_t *a2)
{
  v62 = a2;
  v55 = sub_1A937829C(&qword_1EB3887C0, &unk_1A95997F8);
  v3 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v41 - v4;
  v60 = sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0);
  v5 = *(v60 - 8);
  v6 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v41 - v8;
  v9 = sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v41 - v18;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = (a1 + 32);
  v42 = v17;
  v50 = *(v17 + 56);
  v49 = *MEMORY[0x1E69E8790];
  v47 = (v5 + 16);
  v48 = (v3 + 104);
  v45 = v5 + 32;
  v46 = v5 + 8;
  v51 = v17 + 56;
  v44 = (v17 + 48);
  v56 = MEMORY[0x1E69E7CC0];
  v52 = v14;
  do
  {
    v21 = v13;
    v61 = *v20;
    v22 = v57;
    v23 = v50(v57, 1, 1, v14);
    MEMORY[0x1EEE9AC00](v23);
    *(&v41 - 4) = v22;
    *(&v41 - 3) = v61;
    (*v48)(v54, v49, v55);
    swift_unknownObjectRetain();
    v24 = v58;
    sub_1A957C878();
    (*v47)(v59, v24, v60);
    v25 = v62;
    v26 = *v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1A9530C24(0, v26[2] + 1, 1, v26);
      *v62 = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v38 = sub_1A9530C24((v28 > 1), v29 + 1, 1, v26);
      *v62 = v38;
    }

    v30 = v60;
    (*(v5 + 8))(v58, v60);
    v31 = *v62;
    *(v31 + 16) = v29 + 1;
    (*(v5 + 32))(v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29, v59, v30);
    v32 = v57;
    v13 = v21;
    sub_1A9391BAC(v57, v21, &qword_1EB388760, &qword_1A9599360);
    sub_1A937B960(v32, &qword_1EB388760, &qword_1A9599360);
    swift_unknownObjectRelease();
    v14 = v52;
    if ((*v44)(v21, 1, v52) == 1)
    {
      sub_1A937B960(v21, &qword_1EB388760, &qword_1A9599360);
    }

    else
    {
      v33 = v43;
      sub_1A9530910(v21, v43);
      sub_1A9530910(v33, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1A9530A4C(0, v56[2] + 1, 1, v56);
      }

      v35 = v56[2];
      v34 = v56[3];
      v36 = v42;
      if (v35 >= v34 >> 1)
      {
        v39 = sub_1A9530A4C((v34 > 1), v35 + 1, 1, v56);
        v36 = v42;
        v56 = v39;
      }

      v37 = v56;
      v56[2] = v35 + 1;
      sub_1A9530910(v53, v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35);
    }

    ++v20;
    --v19;
  }

  while (v19);
  return v56;
}