uint64_t sub_25B8EBA40(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return sub_25B946ED8();
  }

  return result;
}

unint64_t sub_25B8EBA7C()
{
  v2 = qword_27FBAB330;
  if (!qword_27FBAB330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EBAF8()
{
  v2 = qword_27FBAB338;
  if (!qword_27FBAB338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB338);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8EBB74(uint64_t a1)
{
  if (*(a1 + 8) > 2uLL)
  {
  }

  return a1;
}

void *sub_25B8EBBBC(const void *a1, void *a2)
{
  v6 = sub_25B946B98();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB3E8, &qword_25B94B260);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_25B8EBCE4(uint64_t a1)
{
  v3 = sub_25B946B98();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_25B8EBD8C()
{
  v2 = qword_27FBAB3F0;
  if (!qword_27FBAB3F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EBE04()
{
  v2 = qword_27FBAB3F8;
  if (!qword_27FBAB3F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EBE80()
{
  v2 = qword_27FBAB400;
  if (!qword_27FBAB400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8ECDDC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8ECF44(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_25B8ED668(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8ED7D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_25B8EDDE8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8EDF50(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_25B8EF5D4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 19) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 236;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 20;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8EF73C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEC)
  {
    v5 = ((a3 + 19) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEC)
  {
    v4 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 19;
    }
  }

  return result;
}

unint64_t sub_25B8EF964()
{
  v2 = qword_27FBAB410;
  if (!qword_27FBAB410)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EF9F8()
{
  v2 = qword_27FBAB418;
  if (!qword_27FBAB418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFA8C()
{
  v2 = qword_27FBAB420;
  if (!qword_27FBAB420)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFB20()
{
  v2 = qword_27FBAB428;
  if (!qword_27FBAB428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFBB4()
{
  v2 = qword_27FBAB430;
  if (!qword_27FBAB430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFC48()
{
  v2 = qword_27FBAB438;
  if (!qword_27FBAB438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFCDC()
{
  v2 = qword_27FBAB440;
  if (!qword_27FBAB440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFD70()
{
  v2 = qword_27FBAB448;
  if (!qword_27FBAB448)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFE04()
{
  v2 = qword_27FBAB450;
  if (!qword_27FBAB450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFE98()
{
  v2 = qword_27FBAB458;
  if (!qword_27FBAB458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFF2C()
{
  v2 = qword_27FBAB460;
  if (!qword_27FBAB460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8EFFC0()
{
  v2 = qword_27FBAB468;
  if (!qword_27FBAB468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB468);
    return WitnessTable;
  }

  return v2;
}

void *sub_25B8F003C(void *a1, void *a2)
{
  if (a1[1] > 2uLL)
  {
    *a2 = *a1;
    v3 = a1[1];
    sub_25B946ED8();
    a2[1] = v3;
  }

  else
  {
    *a2 = *a1;
  }

  return a2;
}

uint64_t sub_25B8F0198(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB470, &qword_25B94B898);
  v9 = sub_25B8F00F0();
  if (sub_25B8F010C() < v9)
  {
    sub_25B947618("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
    __break(1u);
  }

  sub_25B8F0538();
  if ((sub_25B947178() & 1) == 0)
  {
    v5 = sub_25B8F0128();
    if (sub_25B8F0144() < v5)
    {
      sub_25B947618("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
      __break(1u);
    }

    if (sub_25B947178())
    {
      result = sub_25B8F0128();
      v4 = a1 - result;
      if (v4 == v4)
      {
        if (v4 + 10 == (v4 + 10))
        {
          v6 = v4 + 10;
          v7 = 0;
          goto LABEL_19;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v3 = sub_25B8F0160();
      if (sub_25B8F017C() < v3)
      {
        sub_25B947618("Fatal error", 11, 2, "Range requires lowerBound <= upperBound", 39, 2, "Swift/ClosedRange.swift", 23, 2, 409, 0);
        __break(1u);
      }

      if ((sub_25B947178() & 1) == 0)
      {
        v6 = 0;
        v7 = 1;
        goto LABEL_19;
      }

      result = sub_25B8F0160();
      v2 = a1 - result;
      if (v2 == v2)
      {
        if (v2 + 10 == (v2 + 10))
        {
          v6 = v2 + 10;
          v7 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_25B8F00F0();
  if (a1 - result == (a1 - result))
  {
    v6 = a1 - result;
    v7 = 0;
LABEL_19:
    LOBYTE(v10) = v6;
    HIBYTE(v10) = v7 & 1;
    return v10;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25B8F0538()
{
  v2 = qword_27FBAB478;
  if (!qword_27FBAB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB470, &qword_25B94B898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB478);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8F05C0(unsigned __int8 a1)
{
  v14 = a1;
  v13[0] = sub_25B947818();
  v13[1] = v1;
  v2 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v2);

  v12 = a1 >> 4;
  sub_25B8F07E8();
  sub_25B8F07D0();
  v11[0] = sub_25B9470D8();
  v11[1] = v3;
  sub_25B9477F8();
  sub_25B86AEEC(v11);
  v4 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v4);

  v10 = a1 & 0xF;
  sub_25B8F07D0();
  v9[0] = sub_25B9470D8();
  v9[1] = v5;
  sub_25B9477F8();
  sub_25B86AEEC(v9);
  v6 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v6);

  sub_25B946ED8();
  sub_25B86AEEC(v13);
  return sub_25B946FE8();
}

unint64_t sub_25B8F07E8()
{
  v2 = qword_27FBAB480;
  if (!qword_27FBAB480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB480);
    return WitnessTable;
  }

  return v2;
}

NetworkInfo::IPv4Address __swiftcall IPv4Address.init(rawValue:)(Swift::UInt32 rawValue)
{
  v3 = v1;
  result.rawValue.s_addr = IPv4Address.init(rawValue:)(rawValue).rawValue.s_addr;
  *v3 = v4;
  return result;
}

char *sub_25B8F09E4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v15 = 0;
  v14 = 0;
  v19 = a1;
  v20 = a2;
  v18 = a3;
  v17 = a4;
  v12 = a3;
  v13 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB4B0, "\\}");
  result = sub_25B8F0EC0(MEMORY[0x277D84900], sub_25B8F2558, v11, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84900], MEMORY[0x277D84A98], &v16, v5, MEMORY[0x277D84AC0], v4);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = v16;
    if (!v16)
    {
      return 0;
    }

    v14 = v16;
    return strlen(v16);
  }

  return result;
}

uint64_t sub_25B8F0B48(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v14 = a1;
  v15 = a2;
  v13[3] = a3;
  v13[1] = a4;
  v13[0] = a3;
  v10 = a1;
  v11 = a2;
  v12 = a4;
  v6 = type metadata accessor for in_addr(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB4B0, "\\}");
  result = sub_25B8F0DC0(v13, sub_25B8F2588, v9, v6, MEMORY[0x277D84A98], v4, MEMORY[0x277D84AC0], v8);
  if (v7)
  {
    __break(1u);
  }

  return result;
}

const char *sub_25B8F0C34@<X0>(const void *a1@<X0>, socklen_t a2@<W3>, const char **a3@<X8>)
{
  v7 = sub_25B9474E8();
  if ((a2 & 0x80000000) != 0)
  {
    sub_25B947618("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
    __break(1u);
  }

  result = inet_ntop(2, a1, v7, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8F0DC0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

char *sub_25B8F0EC0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a9;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v44 = a12;
  v45 = "Fatal error";
  v46 = "baseAddress must be a properly aligned pointer for types Element and T";
  v47 = "Swift/UnsafeBufferPointer.swift";
  v48 = "Division results in an overflow in remainder operation";
  v49 = "Swift/IntegerTypes.swift";
  v50 = "Buffer must contain a whole number of Element instances";
  v51 = "Division by zero in remainder operation";
  v52 = "Division results in an overflow";
  v53 = "Division by zero";
  v54 = "UnsafeMutableBufferPointer with negative count";
  v64 = a6;
  v63 = a7;
  v62 = a8;
  v61 = a10;
  v55 = *(a8 - 8);
  v56 = a8 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v58 = v20 - v57;
  v59 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - v57);
  result = v20 - v59;
  v60 = v20 - v59;
  if (v14)
  {
    v34 = v38;
    v28 = v38;
    v16 = *(v41 - 8);
    v29 = v16;
    v30 = v41 - 8;
    v17 = *(v16 + 80) + 1;
    v31 = *(v16 + 80);
    if (__OFSUB__(v17, 1))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if ((v28 & v31) != 0)
    {
      result = sub_25B947638();
      __break(1u);
    }

    v26 = *(v29 + 72);
    v27 = *(*(v40 - 8) + 72);
    if (v26 != v27)
    {
      v25 = v39 * v27;
      if ((v39 * v27) >> 64 != (v39 * v27) >> 63)
      {
LABEL_40:
        __break(1u);
        return result;
      }

      if (v26)
      {
        if (v25 != 0x8000000000000000 || v26 != -1)
        {
          v24 = v25 / v26;
          if (v27 >= v26)
          {
            if (v27 != 0x8000000000000000 || v26 != -1)
            {
              v23 = v27 % v26 == 0;
LABEL_26:
              if (!v23)
              {
                sub_25B947638();
                __break(1u);
              }

              v22 = v24;
              goto LABEL_34;
            }

            sub_25B947618(v45, 11, 2, v48, 54, 2, v49, 24, 2, 9154, 0);
            __break(1u);
          }

          if (v27)
          {
            if (v26 != 0x8000000000000000 || v27 != -1)
            {
              v23 = v26 % v27 == 0;
              goto LABEL_26;
            }

            sub_25B947618(v45, 11, 2, v48, 54, 2, v49, 24, 2, 9154, 0);
            __break(1u);
          }

          sub_25B947618(v45, 11, 2, v51, 39, 2, v49, 24, 2, 9149, 0);
          __break(1u);
        }

        sub_25B947618(v45, 11, 2, v52, 31, 2, v49, 24, 2, 9019, 0);
        __break(1u);
      }

      sub_25B947618(v45, 11, 2, v53, 16, 2, v49, 24, 2, 9012, 0);
      __break(1u);
    }

    v22 = v39;
LABEL_34:
    v21 = v22;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v19 = v43;
      v36(v28, v21, v58);
      v20[1] = v19;
      if (v19)
      {
        return (*(v55 + 32))(v44, v58, v42);
      }

      result = 0;
      v32 = 0;
      return result;
    }

    result = sub_25B947638();
    __break(1u);
    goto LABEL_39;
  }

  v15 = v43;
  result = (v36)(0, 0, v60);
  v33 = v15;
  if (v15)
  {
    return (*(v55 + 32))(v44, v60, v42);
  }

  v32 = 0;
  return result;
}

uint64_t IPv4Address.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v20 = 0;
  countAndFlagsBits = 0;
  v18 = 0;
  v19[5] = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B947998();
  if (!v13)
  {
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v10._countAndFlagsBits = sub_25B947848();
    v10._object = v2;
    countAndFlagsBits = v10._countAndFlagsBits;
    v18 = v2;
    sub_25B946ED8();
    IPv4Address.init(_:)(v10);
    if ((v16 & 1) == 0)
    {
      v20 = v15;

      __swift_destroy_boxed_opaque_existential_1(v19);
      *a2 = v20;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v9 = sub_25B947598();
    swift_allocError();
    v8 = v3;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25B947988();
    v14[0] = sub_25B947818();
    v14[1] = v4;
    v5 = sub_25B946F48("Invalid IPv4 Address ", 21, 1);
    MEMORY[0x25F8715F0](v5);

    sub_25B9477F8();
    v6 = sub_25B946F48(".", 1, 1);
    MEMORY[0x25F8715F0](v6);

    sub_25B946ED8();
    sub_25B86AEEC(v14);
    sub_25B946FE8();
    sub_25B947588();
    (*(*(v9 - 8) + 104))(v8, *MEMORY[0x277D84168]);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NetworkInfo::IPv4Address_optional __swiftcall IPv4Address.init(_:)(Swift::String a1)
{
  v3 = v1;
  sub_25B946FD8();
  if (v4 == 1)
  {
    *v3 = 0;
    *(v3 + 4) = 0;
  }

  else
  {

    *v3 = 0;
    *(v3 + 4) = 1;
  }

  return v2;
}

uint64_t IPv4Address.encode(to:)(void *a1)
{
  v4 = 0;
  v5 = a1;
  v4 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B9479B8();
  IPv4Address.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25B947858();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t IPv4Address.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _DWORD *a4@<X8>)
{
  v16 = 0;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v10[0] = sub_25B947818();
  v10[1] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  sub_25B9477E8();
  v6 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v6);

  sub_25B946ED8();
  sub_25B86AEEC(v10);
  v7._countAndFlagsBits = sub_25B946FE8();
  *&result = IPv4Address.init(_:)(v7);
  if (v12)
  {
    sub_25B946F48("Invalid IPv4 String literal.", 28, 1);
    result = sub_25B947628();
    __break(1u);
  }

  else
  {
    v16 = v11;
    *a4 = v11;
  }

  return result;
}

uint64_t sub_25B8F20CC@<X0>(void *a1@<X1>, const char *a2@<X0>, _DWORD *a3@<X8>)
{
  result = inet_pton(2, a2, a1);
  *a3 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_25B8F21C8()
{
  v2 = qword_27FBAB488;
  if (!qword_27FBAB488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F2244()
{
  v2 = qword_27FBAB490;
  if (!qword_27FBAB490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F22C0()
{
  v2 = qword_27FBAB498;
  if (!qword_27FBAB498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB498);
    return WitnessTable;
  }

  return v2;
}

NetworkInfo::IPv4Address sub_25B8F2354@<W0>(in_addr *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue.s_addr = IPv4Address.init(rawValue:)(a1->s_addr).rawValue.s_addr;
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_25B8F239C@<X0>(_DWORD *a1@<X8>)
{
  result = IPv4Address.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_25B8F2404()
{
  v2 = qword_27FBAB4A0;
  if (!qword_27FBAB4A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F24B0()
{
  v2 = qword_27FBAB4A8;
  if (!qword_27FBAB4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4A8);
    return WitnessTable;
  }

  return v2;
}

NetworkInfo::IPv4Subnetwork __swiftcall IPv4Subnetwork.init(baseAddress:subnetworkMask:)(NetworkInfo::IPv4Address baseAddress, NetworkInfo::IPv4Address subnetworkMask)
{
  v5 = v2;
  v6 = **&baseAddress.rawValue.s_addr;
  v7 = **&subnetworkMask.rawValue.s_addr;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = vcnt_s8((v7 + 1));
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] != 1)
    {
      sub_25B946F48("Subnetwork mask must be a power of 2.", 37, 1);
      sub_25B947628();
      __break(1u);
    }

    baseAddress.rawValue.s_addr = IPv4Address.init(rawValue:)(v6 & v7).rawValue.s_addr;
    *v5 = __PAIR64__(v7, v8);
  }

  result.baseAddress = baseAddress;
  return result;
}

uint64_t sub_25B8F2728(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  sub_25B946ED8();
  v12[0] = sub_25B946F48("baseAddress", 11, 1);
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x25F870E10](v12[0], v2, a1, a2);
  sub_25B86AEEC(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  sub_25B946ED8();
  v11[0] = sub_25B946F48("subnetworkMask", 14, 1);
  v11[1] = v3;
  v6 = MEMORY[0x25F870E10](v11[0], v3, a1, a2);
  sub_25B86AEEC(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_25B8F2928()
{
  v2 = qword_27FBAB4B8;
  if (!qword_27FBAB4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8F29A4(char a1)
{
  if (a1)
  {
    return sub_25B946F48("subnetworkMask", 14, 1);
  }

  else
  {
    return sub_25B946F48("baseAddress", 11, 1);
  }
}

uint64_t sub_25B8F2A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8F2728(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_25B8F2ACC()
{
  v2 = qword_27FBAB4C0;
  if (!qword_27FBAB4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t IPv4Subnetwork.description.getter()
{
  v5[2] = 0;
  v5[0] = sub_25B947818();
  v5[1] = v0;
  v1 = sub_25B946F48("");
  MEMORY[0x25F8715F0](v1);

  sub_25B8D3C04();
  sub_25B9477E8();
  v2 = sub_25B946F48("/", 1, 1);
  MEMORY[0x25F8715F0](v2);

  sub_25B9477E8();
  v3 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v3);

  sub_25B946ED8();
  sub_25B86AEEC(v5);
  return sub_25B946FE8();
}

uint64_t IPv4Subnetwork.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v17 = a1;
  v32 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB4C8, &qword_25B94BAE0);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v7 - v21;
  v32 = MEMORY[0x28223BE20](v17);
  v24 = v32[3];
  v25 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v24);
  sub_25B8F2ACC();
  v2 = v23;
  sub_25B9479A8();
  v26 = v2;
  v27 = v2;
  if (v2)
  {
    v9 = v27;
  }

  else
  {
    v12 = &v30;
    v30 = 0;
    v3 = sub_25B8F2FA8();
    v4 = v26;
    v13 = v3;
    sub_25B9476D8();
    v14 = v4;
    v15 = v4;
    if (!v4)
    {
      LODWORD(v33) = v31;
      v28 = 1;
      sub_25B9476D8();
      v10 = 0;
      v11 = 0;
      HIDWORD(v33) = v29;
      (*(v19 + 8))(v22, v18);
      v5 = v17;
      *v16 = v33;
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }

    v8 = v15;
    (*(v19 + 8))(v22, v18);
    v9 = v8;
  }

  v7 = v9;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_25B8F2FA8()
{
  v2 = qword_27FBAB4D0;
  if (!qword_27FBAB4D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t IPv4Subnetwork.encode(to:)(uint64_t a1)
{
  v6 = a1;
  v27 = 0;
  v26 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB4D8, &qword_25B94BAE8);
  v7 = *(v16 - 8);
  v8 = v16 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v5 - v9;
  v27 = MEMORY[0x28223BE20](v6);
  v14 = *v1;
  v10 = v1[1];
  v26 = v1;
  v11 = v27[3];
  v12 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v11);
  sub_25B8F2ACC();
  sub_25B9479C8();
  v18 = &v25;
  v25 = v14;
  v15 = &v24;
  v24 = 0;
  v2 = sub_25B8A797C();
  v3 = v17;
  v19 = v2;
  sub_25B947778();
  v20 = v3;
  v21 = v3;
  if (v3)
  {
    v5[2] = v21;
  }

  else
  {
    v23 = v10;
    v22 = 1;
    sub_25B947778();
    v5[4] = 0;
    v5[5] = 0;
  }

  return (*(v7 + 8))(v13, v16);
}

BOOL static IPv4Subnetwork.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v13 = 0;
  v12 = 0;
  v2 = *a1;
  v6 = a1[1];
  v13 = a1;
  v3 = *a2;
  v7 = a2[1];
  v12 = a2;
  v11 = v2;
  v10 = v3;
  if (static IPv4Address.== infix(_:_:)(&v11, &v10))
  {
    v9 = v6;
    v8 = v7;
    return static IPv4Address.== infix(_:_:)(&v9, &v8);
  }

  else
  {
    return 0;
  }
}

uint64_t IPv4Subnetwork.hash(into:)(uint64_t a1)
{
  sub_25B8F22C0();
  sub_25B947968();
  return sub_25B947968();
}

unint64_t sub_25B8F34F4()
{
  v2 = qword_27FBAB4E0;
  if (!qword_27FBAB4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4E0);
    return WitnessTable;
  }

  return v2;
}

void IPv4Subnetwork.Iterator.currentAddress.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v3 & 1;
}

uint64_t IPv4Subnetwork.Iterator.currentAddress.setter(uint64_t result)
{
  v2 = *(result + 4) & 1;
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

NetworkInfo::IPv4Address_optional __swiftcall IPv4Subnetwork.Iterator.next()()
{
  v5 = v0;
  v7 = *v1;
  v8 = *(v1 + 4);
  if (v8)
  {
    *v0 = v7;
    *(v0 + 4) = v8 & 1;
    return v4;
  }

  v2.i32[0] = v7 | *(v6 + 8);
  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] == 32)
  {
    *v6 = 0;
    *(v6 + 4) = 1;
  }

  else
  {
    sub_25B8D2EF0();
    v4 = sub_25B947608();
    if (v10 == -1)
    {
      __break(1u);
      return v4;
    }

    sub_25B947608();
    LODWORD(v4) = IPv4Address.init(rawValue:)(rawValue);
    *v6 = v11;
    *(v6 + 4) = 0;
  }

  *v5 = v7;
  *(v5 + 4) = 0;
  return v4;
}

uint64_t sub_25B8F3810@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 4);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 4) = v4 & 1;
  *(a3 + 8) = v5;
  return result;
}

void *IPv4Subnetwork.underestimatedCount.getter()
{
  sub_25B8D2EF0();
  result = sub_25B947608();
  v1 = (-v4 - 1);
  v3 = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    return v3;
  }

  __break(1u);
  return result;
}

NetworkInfo::IPv4Subnetwork::Iterator __swiftcall IPv4Subnetwork.makeIterator()()
{
  v7 = 0;
  v2 = v1[1];
  v5 = *v1;
  v6 = 0;
  v4 = v2;
  *&result.currentAddress.value.rawValue.s_addr = sub_25B8F3810(&v5, &v4, v0);
  result.subnetworkMask.rawValue.s_addr = v3;
  return result;
}

uint64_t sub_25B8F3924()
{
  v1 = IPv4Subnetwork.makeIterator()();
  LODWORD(result) = v1.currentAddress.value.rawValue.s_addr;
  BYTE4(result) = v1.currentAddress.is_nil;
  return result;
}

unint64_t sub_25B8F3A40()
{
  v2 = qword_27FBAB4E8;
  if (!qword_27FBAB4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F3AD4()
{
  v2 = qword_27FBAB4F0;
  if (!qword_27FBAB4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for IPv4Subnetwork(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for IPv4Subnetwork(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_25B8F3E58()
{
  v2 = qword_27FBAB4F8;
  if (!qword_27FBAB4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F3EEC()
{
  v2 = qword_27FBAB500;
  if (!qword_27FBAB500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F3F80()
{
  v2 = qword_27FBAB508;
  if (!qword_27FBAB508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB508);
    return WitnessTable;
  }

  return v2;
}

__n128 IPv6Address.rawValue.setter(unint64_t a1, unint64_t a2)
{
  v4.n128_u64[0] = a1;
  v4.n128_u64[1] = a2;
  result = v4;
  *v2 = v4;
  return result;
}

__n128 IPv6Address.init(rawValue:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4.n128_u64[0] = a1;
  v4.n128_u64[1] = a2;
  result = v4;
  *a3 = v4;
  return result;
}

double IPv6Address.init(rawValue:)@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, __n128 *a9@<X8>, unint64_t a10)
{
  v13[1] = 0uLL;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  LOBYTE(v12) = a1;
  BYTE1(v12) = a2;
  BYTE2(v12) = a3;
  BYTE3(v12) = a4;
  BYTE4(v12) = a5;
  BYTE5(v12) = a6;
  BYTE6(v12) = a7;
  HIBYTE(v12) = a8;
  IPv6Address.init(rawValue:)(v12, a10, v13);
  result = v13[0].n128_f64[0];
  *a9 = v13[0];
  return result;
}

double IPv6Address.init(rawValue:)@<D0>(__int16 a1@<W0>, __int16 a2@<W1>, __int16 a3@<W2>, __int16 a4@<W3>, __int16 a5@<W4>, __int16 a6@<W5>, __int16 a7@<W6>, __int16 a8@<W7>, __n128 *a9@<X8>)
{
  v13[1] = 0uLL;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  LOWORD(v11) = a1;
  WORD1(v11) = a2;
  WORD2(v11) = a3;
  HIWORD(v11) = a4;
  LOWORD(v12) = a5;
  WORD1(v12) = a6;
  WORD2(v12) = a7;
  HIWORD(v12) = a8;
  IPv6Address.init(rawValue:)(v11, v12, v13);
  result = v13[0].n128_f64[0];
  *a9 = v13[0];
  return result;
}

double IPv6Address.init(rawValue:)@<D0>(unsigned int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, __n128 *a5@<X8>)
{
  v12 = 0uLL;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  IPv6Address.init(rawValue:)(__PAIR64__(a2, a1), __PAIR64__(a4, a3), &v7);
  result = v7.n128_f64[0];
  *a5 = v7;
  return result;
}

char *sub_25B8F4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = 0;
  v15 = 0;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  v20 = a1;
  v21 = a2;
  v19 = v22;
  v18 = a5;
  v13 = v22;
  v14 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB4B0, "\\}");
  result = sub_25B8F0EC0(MEMORY[0x277D84900], sub_25B8F579C, v12, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84900], MEMORY[0x277D84A98], &v17, v6, MEMORY[0x277D84AC0], v5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v16 = v17;
    if (!v17)
    {
      return 0;
    }

    v15 = v17;
    return strlen(v17);
  }

  return result;
}

uint64_t sub_25B8F44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v19 = a3;
  *(&v19 + 1) = a4;
  v17 = a1;
  v18 = a2;
  v16 = v19;
  v15 = a5;
  v14 = v19;
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v7 = type metadata accessor for in6_addr(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB4B0, "\\}");
  result = sub_25B8F0DC0(&v14, sub_25B8F57E0, v10, v7, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v9);
  if (v8)
  {
    __break(1u);
  }

  return result;
}

const char *sub_25B8F45E4@<X0>(const void *a1@<X0>, socklen_t a2@<W3>, const char **a3@<X8>)
{
  v7 = sub_25B9474E8();
  if ((a2 & 0x80000000) != 0)
  {
    sub_25B947618("Fatal error", 11, 2, "Negative value is not representable", 35, 2, "Swift/Integers.swift", 20, 2, 3049, 0);
    __break(1u);
  }

  result = inet_ntop(30, a1, v7, a2);
  *a3 = result;
  return result;
}

uint64_t IPv6Address.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = 0uLL;
  v16 = 0;
  v17 = 0;
  v18[5] = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B947998();
  if (!v12)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v16 = sub_25B947848();
    v17 = v2;
    sub_25B946ED8();
    IPv6Address.init(_:)(&v14);
    if ((v15 & 1) == 0)
    {
      v19 = v14;

      __swift_destroy_boxed_opaque_existential_1(v18);
      *a2 = v19;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v9 = sub_25B947598();
    swift_allocError();
    v8 = v3;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25B947988();
    v13[0] = sub_25B947818();
    v13[1] = v4;
    v5 = sub_25B946F48("Invalid IPv6 Address ", 21, 1);
    MEMORY[0x25F8715F0](v5);

    sub_25B9477F8();
    v6 = sub_25B946F48(".", 1, 1);
    MEMORY[0x25F8715F0](v6);

    sub_25B946ED8();
    sub_25B86AEEC(v13);
    sub_25B946FE8();
    sub_25B947588();
    (*(*(v9 - 8) + 104))(v8, *MEMORY[0x277D84168]);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IPv6Address.init(_:)@<X0>(uint64_t a3@<X8>)
{
  sub_25B946FD8();
  if (v5 == 1)
  {
    *a3 = 0u;
    *(a3 + 16) = 0;
  }

  else
  {

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t IPv6Address.encode(to:)(void *a1)
{
  v4 = 0uLL;
  v5 = a1;
  v4 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B9479B8();
  IPv6Address.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25B947858();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t IPv6Address.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v15 = 0uLL;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v9[0] = sub_25B947818();
  v9[1] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  sub_25B9477E8();
  v6 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v6);

  sub_25B946ED8();
  sub_25B86AEEC(v9);
  sub_25B946FE8();
  result = IPv6Address.init(_:)(&v10);
  if (v11)
  {
    sub_25B946F48("Invalid IPv6 String literal.", 28, 1);
    result = sub_25B947628();
    __break(1u);
  }

  else
  {
    v15 = v10;
    *a4 = v10;
  }

  return result;
}

uint64_t IPv6Address.hash(into:)(uint64_t a1)
{
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  return sub_25B947968();
}

uint64_t sub_25B8F5390@<X0>(void *a1@<X1>, const char *a2@<X0>, _DWORD *a3@<X8>)
{
  result = inet_pton(30, a2, a1);
  *a3 = result;
  return result;
}

unint64_t sub_25B8F540C()
{
  v2 = qword_27FBAB510;
  if (!qword_27FBAB510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F5488()
{
  v2 = qword_27FBAB518;
  if (!qword_27FBAB518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F5504()
{
  v2 = qword_27FBAB520;
  if (!qword_27FBAB520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB520);
    return WitnessTable;
  }

  return v2;
}

double sub_25B8F5598@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPv6Address.init(rawValue:)(*a1, a1[1], &v4);
  result = v4.n128_f64[1];
  *a2 = v4.n128_u64[0];
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

__n128 sub_25B8F55F8@<Q0>(__n128 *a1@<X8>)
{
  v4.n128_u64[0] = IPv6Address.rawValue.getter();
  v4.n128_u64[1] = v1;
  result = v4;
  *a1 = v4;
  return result;
}

unint64_t sub_25B8F5660()
{
  v2 = qword_27FBAB528;
  if (!qword_27FBAB528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F56F4()
{
  v2 = qword_27FBAB530;
  if (!qword_27FBAB530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB530);
    return WitnessTable;
  }

  return v2;
}

uint64_t MACAddress.rawValue.getter()
{
  LOWORD(v2) = *v0;
  BYTE2(v2) = *(v0 + 2);
  BYTE3(v2) = *(v0 + 3);
  BYTE4(v2) = *(v0 + 4);
  BYTE5(v2) = *(v0 + 5);
  return v2;
}

uint64_t MACAddress.rawValue.setter(uint64_t result, char a2, char a3, char a4, char a5, char a6)
{
  *v6 = result;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  return result;
}

uint64_t MACAddress.init(rawValue:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  LOBYTE(v7) = result;
  BYTE1(v7) = a2;
  BYTE2(v7) = a3;
  HIBYTE(v7) = a4;
  LOBYTE(v8) = a5;
  HIBYTE(v8) = a6;
  *a7 = v7;
  *(a7 + 4) = v8;
  return result;
}

uint64_t MACAddress.intValue.getter()
{
  v1 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[5];
  v2 = *v0 << 40;
  v16 = v2 + (v1 << 32);
  if (__CFADD__(v2, v1 << 32))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v16 + (v12 << 24);
  if (__CFADD__(v16, v12 << 24))
  {
    goto LABEL_23;
  }

  v10 = v11 + (v13 << 16);
  if (__CFADD__(v11, v13 << 16))
  {
    goto LABEL_24;
  }

  v9 = v10 + (v14 << 8);
  if (__CFADD__(v10, v14 << 8))
  {
    goto LABEL_25;
  }

  if (!__CFADD__(v9, v15))
  {
    return v9 + v15;
  }

LABEL_26:
  __break(1u);
  return result;
}

double MACAddress.linkLocalIPv6Address.getter@<D0>(__n128 *a1@<X8>)
{
  LOBYTE(v3) = *v1 ^ 2;
  *(&v3 + 1) = *(v1 + 1);
  *(&v3 + 3) = -257;
  *(&v3 + 5) = *(v1 + 3);
  HIBYTE(v3) = *(v1 + 5);
  return IPv6Address.init(rawValue:)(-2, -128, 0, 0, 0, 0, 0, 0, a1, v3);
}

uint64_t MACAddress.description.getter()
{
  v28[2] = 0;
  v16 = *v0;
  v17 = v0[1];
  v18 = v0[2];
  v19 = v0[3];
  v20 = v0[4];
  v21 = v0[5];
  v28[0] = sub_25B947818();
  v28[1] = v1;
  v2 = sub_25B946F48("");
  MEMORY[0x25F8715F0](v2);

  v27[0] = sub_25B8F05C0(v16);
  v27[1] = v3;
  sub_25B9477F8();
  sub_25B86AEEC(v27);
  v4 = sub_25B946F48(":");
  MEMORY[0x25F8715F0](v4);

  v26[0] = sub_25B8F05C0(v17);
  v26[1] = v5;
  sub_25B9477F8();
  sub_25B86AEEC(v26);
  v6 = sub_25B946F48(":", 1, 1);
  MEMORY[0x25F8715F0](v6);

  v25[0] = sub_25B8F05C0(v18);
  v25[1] = v7;
  sub_25B9477F8();
  sub_25B86AEEC(v25);
  v8 = sub_25B946F48(":", 1, 1);
  MEMORY[0x25F8715F0](v8);

  v24[0] = sub_25B8F05C0(v19);
  v24[1] = v9;
  sub_25B9477F8();
  sub_25B86AEEC(v24);
  v10 = sub_25B946F48(":", 1, 1);
  MEMORY[0x25F8715F0](v10);

  v23[0] = sub_25B8F05C0(v20);
  v23[1] = v11;
  sub_25B9477F8();
  sub_25B86AEEC(v23);
  v12 = sub_25B946F48(":", 1, 1);
  MEMORY[0x25F8715F0](v12);

  v22[0] = sub_25B8F05C0(v21);
  v22[1] = v13;
  sub_25B9477F8();
  sub_25B86AEEC(v22);
  v14 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v14);

  sub_25B946ED8();
  sub_25B86AEEC(v28);
  return sub_25B946FE8();
}

uint64_t MACAddress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v21[5] = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B947998();
  if (!v14)
  {
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v10 = sub_25B947848();
    v11 = v2;
    v19 = v10;
    v20 = v2;
    sub_25B946ED8();
    MACAddress.init(_:)(v10, v11, &v16);
    if ((v18 & 1) == 0)
    {
      v22 = v16;
      v23 = ((v16 | (v17 << 32)) & 0xFFFFFFFFFFFFLL) >> 32;

      __swift_destroy_boxed_opaque_existential_1(v21);
      *a2 = v22;
      *(a2 + 4) = v23;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v9 = sub_25B947598();
    swift_allocError();
    v8 = v3;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25B947988();
    v15[0] = sub_25B947818();
    v15[1] = v4;
    v5 = sub_25B946F48("Invalid MAC Address ", 20, 1);
    MEMORY[0x25F8715F0](v5);

    sub_25B9477F8();
    v6 = sub_25B946F48(".", 1, 1);
    MEMORY[0x25F8715F0](v6);

    sub_25B946ED8();
    sub_25B86AEEC(v15);
    sub_25B946FE8();
    sub_25B947588();
    (*(*(v9 - 8) + 104))(v8, *MEMORY[0x277D84168]);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MACAddress.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v14 = a1;
  v15 = a2;
  sub_25B946ED8();
  v10 = a1;
  v11 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB538, &qword_25B94C080);
  sub_25B8F6E00(&v16, sub_25B8F6DCC, v9, v3, MEMORY[0x277D84A98], MEMORY[0x277D839B0], v8, &v13);

  v12 = v13 & 1;
  if (v13)
  {
    *a3 = v16;
    *(a3 + 4) = v17;
    *(a3 + 6) = 0;
  }

  else
  {

    *a3 = 0;
    *(a3 + 4) = 0;
    *(a3 + 6) = 1;
  }

  return result;
}

uint64_t MACAddress.encode(to:)(void *a1)
{
  v9 = 0;
  v10 = 0;
  v11 = a1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  LOBYTE(v9) = *v1;
  BYTE1(v9) = v2;
  BYTE2(v9) = v3;
  HIBYTE(v9) = v4;
  LOBYTE(v10) = v5;
  HIBYTE(v10) = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B9479B8();
  MACAddress.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_25B947858();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t MACAddress.hash(into:)(uint64_t a1)
{
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  return sub_25B947968();
}

void sub_25B8F693C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  memset(v19, 0, sizeof(v19));
  v22 = a1;
  v23 = a2;
  v20 = a3;
  v21 = a4;
  sub_25B947038();
  sub_25B8F7568();
  sub_25B9473F8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB560, &qword_25B94C200);
  sub_25B8F75E0();
  sub_25B947418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB578, &qword_25B94C208);
    sub_25B9475E8();
    if (v18)
    {
      break;
    }

    sub_25B8F76FC();
    sub_25B9473D8();
    if (v16)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_25B8F0198(v15) >> 8;
    }

    if ((v8 & 1) == 0)
    {
      sub_25B9473D8();
      v7 = (v14 & 1) != 0 ? 1 : sub_25B8F0198(v13) >> 8;
      if ((v7 & 1) == 0)
      {
        sub_25B947518();
        if (v17 == 5)
        {
          continue;
        }

        sub_25B9473D8();
        if ((v12 & 1) == 0)
        {
          v5 = sub_25B8F00B8();
          if (v11 == v5 || v11 == sub_25B8F00D4())
          {
            continue;
          }
        }
      }
    }

    *a5 = 0;
    sub_25B8F7774(v19);
    return;
  }

  sub_25B946ED8();
  sub_25B8F76FC();
  v9 = sub_25B9473E8();

  *a5 = (v9 & 1) != 0;
  sub_25B8F7774(v19);
}

uint64_t sub_25B8F6E00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeMutableRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_25B947638();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

unint64_t sub_25B8F6FC8()
{
  v2 = qword_27FBAB540;
  if (!qword_27FBAB540)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8F705C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  result = MACAddress.init(rawValue:)(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], &v5);
  v3 = v5 | (v6 << 8) | (v7 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40);
  *a2 = v5 | (v6 << 8) | (v7 << 16) | (v8 << 24);
  *(a2 + 4) = WORD2(v3);
  *(a2 + 6) = 0;
  return result;
}

uint64_t sub_25B8F70FC@<X0>(uint64_t a1@<X8>)
{
  result = MACAddress.rawValue.getter();
  *a1 = result;
  *(a1 + 2) = BYTE2(result);
  *(a1 + 3) = BYTE3(result);
  *(a1 + 4) = BYTE4(result);
  *(a1 + 5) = BYTE5(result);
  return result;
}

unint64_t sub_25B8F7170()
{
  v2 = qword_27FBAB548;
  if (!qword_27FBAB548)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F7204()
{
  v2 = qword_27FBAB550;
  if (!qword_27FBAB550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB550);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_memcpy6_1(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t getEnumTagSinglePayload for MACAddress(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 6))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MACAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 0;
    if (a3)
    {
      *(result + 6) = 1;
    }
  }

  else if (a3)
  {
    *(result + 6) = 0;
  }

  return result;
}

unint64_t sub_25B8F7568()
{
  v2 = qword_27FBAB558;
  if (!qword_27FBAB558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F75E0()
{
  v2 = qword_27FBAB568;
  if (!qword_27FBAB568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB560, &qword_25B94C200);
    sub_25B8F7684();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F7684()
{
  v2 = qword_27FBAB570;
  if (!qword_27FBAB570)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F76FC()
{
  v2 = qword_27FBAB580;
  if (!qword_27FBAB580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB580);
    return WitnessTable;
  }

  return v2;
}

uint64_t PingStatistics.latencyMinimum.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PingStatistics.latencyAverage.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PingStatistics.latencyMaximum.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PingStatistics.latencyStandardDeviation.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

void *PingStatistics.init(packetsTransmitted:packetsReceived:latencyMinimum:latencyAverage:latencyMaximum:latencyStandardDeviation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  __b[0] = a1;
  __b[1] = a2;
  __b[2] = a3;
  __b[3] = a4;
  __b[4] = a5;
  __b[5] = a6;
  __b[6] = a7;
  __b[7] = a8;
  __b[8] = a10;
  __b[9] = a11;
  return memcpy(a9, __b, 0x50uLL);
}

uint64_t sub_25B8F7B98(uint64_t a1, uint64_t a2)
{
  v24[2] = a1;
  v24[3] = a2;
  sub_25B946ED8();
  v24[0] = sub_25B946F48("packetsTransmitted", 18, 1);
  v24[1] = v2;
  v23[2] = a1;
  v23[3] = a2;
  v18 = MEMORY[0x25F870E10](v24[0], v2, a1, a2);
  sub_25B86AEEC(v24);
  if (v18)
  {

    v25 = 0;
    v15 = 0;
LABEL_14:

    return v15;
  }

  sub_25B946ED8();
  v23[0] = sub_25B946F48("packetsReceived", 15, 1);
  v23[1] = v3;
  v22[2] = a1;
  v22[3] = a2;
  v14 = MEMORY[0x25F870E10](v23[0], v3, a1, a2);
  sub_25B86AEEC(v23);
  if (v14)
  {

    v25 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  sub_25B946ED8();
  v22[0] = sub_25B946F48("latencyMinimum", 14, 1);
  v22[1] = v4;
  v21[2] = a1;
  v21[3] = a2;
  v13 = MEMORY[0x25F870E10](v22[0], v4, a1, a2);
  sub_25B86AEEC(v22);
  if (v13)
  {

    v25 = 2;
    v15 = 2;
    goto LABEL_14;
  }

  sub_25B946ED8();
  v21[0] = sub_25B946F48("latencyAverage", 14, 1);
  v21[1] = v5;
  v20[2] = a1;
  v20[3] = a2;
  v12 = MEMORY[0x25F870E10](v21[0], v5, a1, a2);
  sub_25B86AEEC(v21);
  if (v12)
  {

    v25 = 3;
    v15 = 3;
    goto LABEL_14;
  }

  sub_25B946ED8();
  v20[0] = sub_25B946F48("latencyMaximum", 14, 1);
  v20[1] = v6;
  v19[2] = a1;
  v19[3] = a2;
  v11 = MEMORY[0x25F870E10](v20[0], v6, a1, a2);
  sub_25B86AEEC(v20);
  if (v11)
  {

    v25 = 4;
    v15 = 4;
    goto LABEL_14;
  }

  sub_25B946ED8();
  v19[0] = sub_25B946F48("latencyStandardDeviation", 24, 1);
  v19[1] = v7;
  v10 = MEMORY[0x25F870E10](v19[0], v7, a1, a2);
  sub_25B86AEEC(v19);
  if (v10)
  {

    v25 = 5;
    v15 = 5;
    goto LABEL_14;
  }

  return 6;
}

unint64_t sub_25B8F7FF0()
{
  v2 = qword_27FBAB588;
  if (!qword_27FBAB588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB588);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8F806C(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_25B946F48("packetsTransmitted", 18, 1);
    case 1:
      return sub_25B946F48("packetsReceived", 15, 1);
    case 2:
      return sub_25B946F48("latencyMinimum", 14, 1);
    case 3:
      return sub_25B946F48("latencyAverage", 14, 1);
    case 4:
      return sub_25B946F48("latencyMaximum", 14, 1);
  }

  return sub_25B946F48("latencyStandardDeviation", 24, 1);
}

uint64_t sub_25B8F8224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8F7B98(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_25B8F8280()
{
  v2 = qword_27FBAB590;
  if (!qword_27FBAB590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB590);
    return WitnessTable;
  }

  return v2;
}

uint64_t PingStatistics.packetsDropped.getter()
{
  v1 = v0[1];
  if (!__OFSUB__(*v0, v1))
  {
    return *v0 - v1;
  }

  __break(1u);
  return result;
}

uint64_t PingStatistics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v31 = v59;
  v32 = a2;
  v33 = a1;
  v58 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB598, &qword_25B94C210);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v15 - v37;
  v58 = MEMORY[0x28223BE20](v33);
  v40 = v58[3];
  v41 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v40);
  sub_25B8F8280();
  v2 = v39;
  sub_25B9479A8();
  v42 = v2;
  v43 = v2;
  if (v2)
  {
    v15[7] = v43;
    v15[0] = v43;
  }

  else
  {
    v57 = 0;
    v3 = sub_25B9476C8();
    v28 = 0;
    v29 = v3;
    v30 = 0;
    v59[0] = v3;
    v56 = 1;
    v4 = sub_25B9476C8();
    v25 = 0;
    v26 = v4;
    v27 = 0;
    v59[1] = v4;
    v53 = 2;
    sub_25B9476D8();
    v23 = 0;
    v24 = 0;
    v59[2] = v54;
    v31[3] = v55;
    v50 = 3;
    sub_25B9476D8();
    v21 = 0;
    v22 = 0;
    v5 = v31;
    v6 = v52;
    v31[4] = v51;
    v5[5] = v6;
    v47 = 4;
    sub_25B9476D8();
    v19 = 0;
    v20 = 0;
    v7 = v31;
    v8 = v49;
    v31[6] = v48;
    v7[7] = v8;
    v44 = 5;
    sub_25B9476D8();
    v17 = 0;
    v18 = 0;
    v9 = v34;
    v10 = v38;
    v11 = v35;
    v12 = v31;
    v13 = v46;
    v16 = v59;
    v31[8] = v45;
    v12[9] = v13;
    (*(v11 + 8))(v10, v9);
    memcpy(v32, v16, 0x50uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t PingStatistics.encode(to:)(uint64_t a1)
{
  v5 = a1;
  v41 = 0;
  v40 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB5A0, &qword_25B94C218);
  v6 = *(v22 - 8);
  v7 = v22 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v4 - v8;
  v41 = MEMORY[0x28223BE20](v5);
  v21 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  v16 = v1[8];
  v17 = v1[9];
  v40 = v1;
  v18 = v41[3];
  v19 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v18);
  sub_25B8F8280();
  sub_25B9479C8();
  v2 = v23;
  v39 = 0;
  sub_25B947768();
  v24 = v2;
  v25 = v2;
  if (v2)
  {
    v4[5] = v25;
  }

  else
  {
    v38 = 1;
    sub_25B947768();
    v4[15] = 0;
    v4[16] = 0;
    v36 = v10;
    v37 = v11;
    v35 = 2;
    sub_25B947778();
    v4[13] = 0;
    v4[14] = 0;
    v33 = v12;
    v34 = v13;
    v32 = 3;
    sub_25B947778();
    v4[11] = 0;
    v4[12] = 0;
    v30 = v14;
    v31 = v15;
    v29 = 4;
    sub_25B947778();
    v4[9] = 0;
    v4[10] = 0;
    v27 = v16;
    v28 = v17;
    v26 = 5;
    sub_25B947778();
    v4[7] = 0;
    v4[8] = 0;
  }

  return (*(v6 + 8))(v20, v22);
}

BOOL static PingStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    if (a1[1] == a2[1])
    {
      if (sub_25B9479D8())
      {
        return (sub_25B9479D8() & 1) != 0 && (sub_25B9479D8() & 1) != 0 && (sub_25B9479D8() & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t PingStatistics.hash(into:)(uint64_t a1)
{
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  sub_25B947968();
  return sub_25B947968();
}

uint64_t PingStatistics.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v3 = v0;
  memcpy(v2, __dst, sizeof(v2));
  sub_25B8F9420();
  return sub_25B947568();
}

unint64_t sub_25B8F9420()
{
  v2 = qword_27FBAB5A8;
  if (!qword_27FBAB5A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F94E4()
{
  v2 = qword_27FBAB5B0;
  if (!qword_27FBAB5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB5B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8F9590(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 80))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25B8F9670(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3)
    {
      *(result + 80) = 1;
    }
  }

  else if (a3)
  {
    *(result + 80) = 0;
  }

  return result;
}

unint64_t sub_25B8F9878()
{
  v2 = qword_27FBAB5B8;
  if (!qword_27FBAB5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F990C()
{
  v2 = qword_27FBAB5C0;
  if (!qword_27FBAB5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8F99A0()
{
  v2 = qword_27FBAB5C8;
  if (!qword_27FBAB5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8F9A1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8F9B00();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8F9A88(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8F9B68(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8F9B00()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_domains);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8F9B68(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_domains);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8F9C58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8F9D3C();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8F9CC4(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8F9DA4(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8F9D3C()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_dnsOnlyDomains);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8F9DA4(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_dnsOnlyDomains);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8F9E94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8F9F78();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8F9F00(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8F9FE0(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8F9F78()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_urls);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8F9FE0(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_urls);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8FA0D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8FA1B4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FA13C(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8FA21C(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8FA1B4()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_extraURLs);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8FA21C(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_extraURLs);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8FA30C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8FA3F0();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FA378(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8FA458(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8FA3F0()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_tcpProbedHosts);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8FA458(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_tcpProbedHosts);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B8FA548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8FA624() & 1;
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FA5B8(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8FA68C(v4 & 1);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FA624()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_disablePacketCapture);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_25B8FA68C(char a1)
{
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_disablePacketCapture);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8FA76C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8FA848() & 1;
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FA7DC(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8FA8B0(v4 & 1);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FA848()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_disableRaisingLogLevels);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_25B8FA8B0(char a1)
{
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_disableRaisingLogLevels);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8FA990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8FAA6C() & 1;
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FAA00(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8FAAD4(v4 & 1);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8FAA6C()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_enableNetworkSnapshot);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_25B8FAAD4(char a1)
{
  v3 = (v1 + OBJC_IVAR___NetworkInfoConfiguration_enableNetworkSnapshot);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8FABB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8FACA8();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8FAC24(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8FAD1C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8FACA8()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoConfiguration_workingDir);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8FAD1C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v5 = (v2 + OBJC_IVAR___NetworkInfoConfiguration_workingDir);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

_BYTE *NetworkInfoConfiguration.init()()
{
  v162 = "Fatal error";
  v163 = "Unexpectedly found nil while unwrapping an Optional value";
  v164 = "NetworkInfo/NetworkInfoConfiguration.swift";
  v227 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFE8, &unk_25B94A980);
  v165 = *(*(v1 - 8) + 64);
  v166 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v167 = &v92[-v166];
  v168 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v166]);
  v169 = &v92[-v168];
  v170 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v168]);
  v171 = &v92[-v170];
  v172 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v170]);
  v173 = &v92[-v172];
  v174 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v172]);
  v175 = &v92[-v174];
  v176 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v174]);
  v177 = &v92[-v176];
  v178 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v176]);
  v179 = &v92[-v178];
  v180 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v178]);
  v181 = &v92[-v180];
  v182 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v180]);
  v183 = &v92[-v182];
  v184 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v182]);
  v185 = &v92[-v184];
  v186 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v184]);
  v187 = &v92[-v186];
  v188 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v186]);
  v189 = &v92[-v188];
  v190 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v188]);
  v191 = &v92[-v190];
  v192 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v190]);
  v193 = &v92[-v192];
  v194 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v192]);
  v195 = &v92[-v194];
  v196 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v194]);
  v197 = &v92[-v196];
  v198 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v196]);
  v199 = &v92[-v198];
  v200 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v198]);
  v201 = &v92[-v200];
  v202 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v92[-v200]);
  v219 = &v92[-v202];
  v227 = v0;
  v207 = v0;
  v206 = OBJC_IVAR___NetworkInfoConfiguration_domains;
  v215 = 5;
  v210 = MEMORY[0x277D837D0];
  v205 = sub_25B947838();
  v204 = v20;
  v220 = 1;
  v21 = sub_25B946F48("apple.com", 9, 1);
  v22 = v204;
  *v204 = v21;
  v22[1] = v23;
  v203 = 13;
  v24 = sub_25B946F48("www.apple.com");
  v25 = v204;
  v26 = v220;
  v204[2] = v24;
  v25[3] = v27;
  v28 = sub_25B946F48("mensura.cdn-apple.com", 21, v26 & 1);
  v29 = v204;
  v30 = v220;
  v32 = v31;
  v33 = v203;
  v204[4] = v28;
  v29[5] = v32;
  v34 = sub_25B946F48("17.253.144.13", v33, v30 & 1);
  v35 = v204;
  v36 = v220;
  v204[6] = v34;
  v35[7] = v37;
  v38 = sub_25B946F48("2620:149:af0::13", 16, v36 & 1);
  v39 = v204;
  v204[8] = v38;
  v39[9] = v40;
  sub_25B8860FC();
  *&v207[v206] = v41;
  v212 = v227;
  v211 = OBJC_IVAR___NetworkInfoConfiguration_dnsOnlyDomains;
  v209 = sub_25B947838();
  v208 = v42;
  v43 = sub_25B946F48("mask.icloud.com", 15, v220 & 1);
  v44 = v208;
  v45 = v220;
  *v208 = v43;
  v44[1] = v46;
  v47 = sub_25B946F48("mask-h2.icloud.com", 18, v45 & 1);
  v48 = v208;
  v208[2] = v47;
  v48[3] = v49;
  sub_25B8860FC();
  *&v212[v211] = v50;
  v213 = v227;
  v214 = OBJC_IVAR___NetworkInfoConfiguration_urls;
  v221 = sub_25B946B48();
  v216 = sub_25B947838();
  v217 = v51;
  sub_25B946F48("https://apple.com", 17, v220 & 1);
  v218 = v52;
  sub_25B946B38();

  v222 = *(v221 - 8);
  v223 = v221 - 8;
  v224 = v222[6];
  v225 = v222 + 6;
  if (v224(v219, v220) != 1)
  {
    v156 = v222[4];
    v157 = v222 + 4;
    v156(v217, v219, v221);
    v158 = v222[9];
    v159 = v217 + v158;
    v161 = 1;
    sub_25B946F48("https://captive.apple.com", 25, 1);
    v160 = v53;
    sub_25B946B38();

    if ((v224)(v201, v161, v221) != 1)
    {
      v156(v159, v201, v221);
      v153 = v217 + 2 * v158;
      v155 = 1;
      sub_25B946F48("https://mensura.cdn-apple.com/.well-known/nq", 44, 1);
      v154 = v54;
      sub_25B946B38();

      if ((v224)(v199, v155, v221) != 1)
      {
        v156(v153, v199, v221);
        v150 = v217 + 3 * v158;
        v152 = 1;
        sub_25B946F48("http://17.253.144.13", 20, 1);
        v151 = v55;
        sub_25B946B38();

        if ((v224)(v197, v152, v221) != 1)
        {
          v156(v150, v197, v221);
          v147 = v217 + 4 * v158;
          v149 = 1;
          sub_25B946F48("http://[2620:149:af0::13]", 25, 1);
          v148 = v56;
          sub_25B946B38();

          if ((v224)(v195, v149, v221) != 1)
          {
            v156(v147, v195, v221);
            sub_25B8860FC();
            *&v213[v214] = v57;
            v141 = v227;
            v142 = OBJC_IVAR___NetworkInfoConfiguration_extraURLs;
            v143 = sub_25B947838();
            v144 = v58;
            v146 = 1;
            sub_25B946F48("http://static.ess.apple.com", 27, 1);
            v145 = v59;
            sub_25B946B38();

            if ((v224)(v193, v146, v221) == 1)
            {
              goto LABEL_40;
            }

            goto LABEL_13;
          }

          sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 32, 0);
          __break(1u);
        }

        sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 31, 0);
        __break(1u);
      }

      sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 30, 0);
      __break(1u);
    }

    sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 29, 0);
    __break(1u);
  }

  sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 28, 0);
  __break(1u);
LABEL_13:
  v156(v144, v193, v221);
  v138 = v144 + v158;
  v140 = 1;
  sub_25B946F48("http://init-p01st.push.apple.com/bag", 36, 1);
  v139 = v60;
  sub_25B946B38();

  if ((v224)(v191, v140, v221) != 1)
  {
    v156(v138, v191, v221);
    v135 = v144 + 2 * v158;
    v137 = 1;
    sub_25B946F48("https://aggregator.ess.apple.com", 32, 1);
    v136 = v61;
    sub_25B946B38();

    if ((v224)(v189, v137, v221) != 1)
    {
      v156(v135, v189, v221);
      v132 = v144 + 3 * v158;
      v134 = 1;
      sub_25B946F48("https://identity.ess.apple.com", 30, 1);
      v133 = v62;
      sub_25B946B38();

      if ((v224)(v187, v134, v221) != 1)
      {
        v156(v132, v187, v221);
        v129 = v144 + 4 * v158;
        v131 = 1;
        sub_25B946F48("https://query.ess.apple.com", 27, 1);
        v130 = v63;
        sub_25B946B38();

        if ((v224)(v185, v131, v221) != 1)
        {
          v156(v129, v185, v221);
          v126 = v144 + 5 * v158;
          v128 = 1;
          sub_25B946F48("https://profile.ess.apple.com", 29, 1);
          v127 = v64;
          sub_25B946B38();

          if ((v224)(v183, v128, v221) != 1)
          {
            v156(v126, v183, v221);
            v123 = v144 + 6 * v158;
            v125 = 1;
            sub_25B946F48("https://init.ess.apple.com", 26, 1);
            v124 = v65;
            sub_25B946B38();

            if ((v224)(v181, v125, v221) != 1)
            {
              v156(v123, v181, v221);
              v120 = v144 + 7 * v158;
              v122 = 1;
              sub_25B946F48("https://pds.ess.apple.com", 25, 1);
              v121 = v66;
              sub_25B946B38();

              if ((v224)(v179, v122, v221) != 1)
              {
                v156(v120, v179, v221);
                v117 = v144 + 8 * v158;
                v119 = 1;
                sub_25B946F48("https://pds-init.ess.apple.com", 30, 1);
                v118 = v67;
                sub_25B946B38();

                if ((v224)(v177, v119, v221) != 1)
                {
                  v156(v117, v177, v221);
                  v114 = v144 + 9 * v158;
                  v116 = 1;
                  sub_25B946F48("https://kt-prod.ess.apple.com", 29, 1);
                  v115 = v68;
                  sub_25B946B38();

                  if ((v224)(v175, v116, v221) != 1)
                  {
                    v156(v114, v175, v221);
                    v111 = v144 + 10 * v158;
                    v113 = 1;
                    sub_25B946F48("https://init-kt-prod.ess.apple.com", 34, 1);
                    v112 = v69;
                    sub_25B946B38();

                    if ((v224)(v173, v113, v221) != 1)
                    {
                      v156(v111, v173, v221);
                      v108 = v144 + 11 * v158;
                      v110 = 1;
                      sub_25B946F48("https://kt-audit-prod.ess.apple.com", 35, 1);
                      v109 = v70;
                      sub_25B946B38();

                      if ((v224)(v171, v110, v221) != 1)
                      {
                        v156(v108, v171, v221);
                        v105 = v144 + 12 * v158;
                        v107 = 1;
                        sub_25B946F48("https://provision.ess.apple.com", 31, 1);
                        v106 = v71;
                        sub_25B946B38();

                        if ((v224)(v169, v107, v221) != 1)
                        {
                          v156(v105, v169, v221);
                          v102 = v144 + 13 * v158;
                          v104 = 1;
                          sub_25B946F48("https://mspgw.push.apple.com", 28, 1);
                          v103 = v72;
                          sub_25B946B38();

                          if ((v224)(v167, v104, v221) != 1)
                          {
                            v156(v102, v167, v221);
                            sub_25B8860FC();
                            *&v141[v142] = v73;
                            v99 = v227;
                            v98 = OBJC_IVAR___NetworkInfoConfiguration_tcpProbedHosts;
                            v97 = MEMORY[0x277D837D0];
                            v96 = sub_25B947838();
                            v95 = v74;
                            v94 = 26;
                            v93 = 1;
                            v75 = sub_25B946F48("courier.push.apple.com:443");
                            v76 = v93;
                            v77 = v95;
                            *v95 = v75;
                            v77[1] = v78;
                            v79 = sub_25B946F48("courier.push.apple.com:5223", 27, v76 & 1);
                            v80 = v93;
                            v81 = v95;
                            v83 = v82;
                            v84 = v94;
                            v95[2] = v79;
                            v81[3] = v83;
                            v85 = sub_25B946F48("int-courier.push.apple.com", v84, v80 & 1);
                            v86 = v95;
                            v95[4] = v85;
                            v86[5] = v87;
                            sub_25B8860FC();
                            *&v99[v98] = v88;
                            v227[OBJC_IVAR___NetworkInfoConfiguration_disablePacketCapture] = 0;
                            v227[OBJC_IVAR___NetworkInfoConfiguration_disableRaisingLogLevels] = 0;
                            v227[OBJC_IVAR___NetworkInfoConfiguration_enableNetworkSnapshot] = 0;
                            v89 = &v227[OBJC_IVAR___NetworkInfoConfiguration_workingDir];
                            *v89 = 0;
                            v89[1] = 0;
                            v100 = v227;
                            v90 = type metadata accessor for NetworkInfoConfiguration();
                            v226.receiver = v100;
                            v226.super_class = v90;
                            v101 = objc_msgSendSuper2(&v226, sel_init);
                            MEMORY[0x277D82BE0](v101);
                            v227 = v101;
                            MEMORY[0x277D82BD8](v101);
                            return v101;
                          }

                          sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 49, 0);
                          __break(1u);
                        }

                        sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 48, 0);
                        __break(1u);
                      }

                      sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 47, 0);
                      __break(1u);
                    }

                    sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 46, 0);
                    __break(1u);
                  }

                  sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 45, 0);
                  __break(1u);
                }

                sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 44, 0);
                __break(1u);
              }

              sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 43, 0);
              __break(1u);
            }

            sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 42, 0);
            __break(1u);
          }

          sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 41, 0);
          __break(1u);
        }

        sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 40, 0);
        __break(1u);
      }

      sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 39, 0);
      __break(1u);
    }

    sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 38, 0);
    __break(1u);
  }

  sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 37, 0);
  __break(1u);
LABEL_40:
  result = sub_25B947618(v162, 11, 2, v163, 57, 2, v164, 42, 2, 36, 0);
  __break(1u);
  return result;
}

id NetworkInfoConfiguration.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SCUtil.init()@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v13 = 0;
  v4 = 0;
  v10 = sub_25B946C48();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](0);
  v9 = &v4 - v5;
  v2 = type metadata accessor for SCUtil(v1);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v12 = &v4 - v6;
  v13 = &v4 - v6;
  sub_25B946C38();
  (*(v7 + 32))(v12, v9, v10);
  return sub_25B8CEF04(v12, v11);
}

uint64_t type metadata accessor for SCUtil(uint64_t a1)
{
  v2 = qword_27FBAB660;
  if (!qword_27FBAB660)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SCUtil.getIPv6Gateway()(uint64_t a1)
{
  v2[28] = v1;
  v2[27] = a1;
  v2[14] = v2;
  v2[15] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[18] = 0;
  v2[23] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v3 = sub_25B946C48();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  v2[15] = v1;

  return MEMORY[0x2822009F8](sub_25B8FDD04, 0);
}

uint64_t sub_25B8FDD04()
{
  v19 = v0[37];
  v0[14] = v0;
  v14 = *MEMORY[0x277CE1690];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1690]);
  v1 = sub_25B946F78();
  v15 = static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)(v1, v2);
  v16 = v3;
  v0[38] = v15;
  v0[39] = v3;

  MEMORY[0x277D82BD8](v14);
  v0[6] = v15;
  v0[7] = v16;
  type metadata accessor for SCDynamicStore(0);
  v0[8] = sub_25B947818();
  v0[9] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 8));
  v18 = sub_25B946FE8();
  v22 = v8;
  sub_25B947838();
  v17 = v9;
  sub_25B946ED8();
  *v17 = v15;
  v17[1] = v16;
  sub_25B8860FC();
  v21 = v10;
  v20 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v18, v22, v21, v20, v19);

  sub_25B947328();
  v11 = swift_task_alloc();
  v23[40] = v11;
  *v11 = v23[14];
  v11[1] = sub_25B8FDFD0;
  v12 = v23[32];

  return MEMORY[0x2822005A8](v23 + 16, 0, 0, v12, v23 + 17);
}

uint64_t sub_25B8FDFD0()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 328) = v0;

  if (v0)
  {
    v2 = sub_25B8FEAB8;
  }

  else
  {
    v2 = sub_25B8FE13C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B8FE13C()
{
  *(v0 + 112) = v0;
  v45 = *(v0 + 128);
  if (v45)
  {
    v1 = *(v44 + 328);
    v2 = *(v44 + 312);
    v3 = *(v44 + 304);
    *(v44 + 144) = v45;
    v43 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v41 = 0;
    }

    else
    {
      *(v44 + 200) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v42 = *(v44 + 208);
      }

      else
      {
        v42 = 0;
      }

      v41 = v42;
    }

    if (v41)
    {
      *(v44 + 184) = v41;
      v40 = *MEMORY[0x277CE1780];
      MEMORY[0x277D82BE0](*MEMORY[0x277CE1780]);
      *(v44 + 192) = v40;
      type metadata accessor for CFString(0);
      sub_25B898754();
      sub_25B946F18();
      MEMORY[0x277D82BD8](*(v44 + 192));
      if (*(v44 + 40))
      {
        v4 = swift_dynamicCast();
        if (v4)
        {
          v38 = *(v44 + 96);
          v39 = *(v44 + 104);
        }

        else
        {
          v38 = 0;
          v39 = 0;
        }

        v36 = v38;
        v37 = v39;
      }

      else
      {
        sub_25B88BBA0((v44 + 16));
        v36 = 0;
        v37 = 0;
      }

      if (v37)
      {
        v34 = *(v44 + 296);
        v35 = *(v44 + 280);
        v31 = *(v44 + 272);
        v32 = *(v44 + 256);
        v5 = *(v44 + 216);
        v33 = *(v44 + 288);
        v30 = *(v44 + 264);
        *(v44 + 80) = v36;
        *(v44 + 88) = v37;
        IPv6Address.init(_:)(v5);

        MEMORY[0x277D82BD8](v45);
        (*(v30 + 8))(v31, v32);
        (*(v33 + 8))(v34, v35);

        goto LABEL_23;
      }
    }

    (*(*(v44 + 240) + 16))(*(v44 + 248), *(v44 + 224), *(v44 + 232));
    oslog = sub_25B946C18();
    v27 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v29 = sub_25B947838();
    if (os_log_type_enabled(oslog, v27))
    {
      buf = sub_25B9474D8();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v24 = sub_25B8895FC(0, v22, v22);
      v25 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v44 + 152) = buf;
      *(v44 + 160) = v24;
      *(v44 + 168) = v25;
      sub_25B889650(0, (v44 + 152));
      sub_25B889650(0, (v44 + 152));
      *(v44 + 176) = v29;
      v26 = swift_task_alloc();
      v26[2] = v44 + 152;
      v26[3] = v44 + 160;
      v26[4] = v44 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v27, "No IPv6 Router in SCDynamicStore.", buf, 2u);
      sub_25B8896B0(v24, 0, v22);
      sub_25B8896B0(v25, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v20 = *(v44 + 296);
    v21 = *(v44 + 280);
    v17 = *(v44 + 272);
    v18 = *(v44 + 256);
    v13 = *(v44 + 248);
    v14 = *(v44 + 232);
    v15 = *(v44 + 216);
    v19 = *(v44 + 288);
    v16 = *(v44 + 264);
    v12 = *(v44 + 240);
    MEMORY[0x277D82BD8](oslog);
    (*(v12 + 8))(v13, v14);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 1;
    MEMORY[0x277D82BD8](v45);
    (*(v16 + 8))(v17, v18);
    (*(v19 + 8))(v20, v21);
  }

  else
  {
    v10 = *(v44 + 296);
    v11 = *(v44 + 280);
    v8 = *(v44 + 216);
    v9 = *(v44 + 288);
    (*(*(v44 + 264) + 8))(*(v44 + 272), *(v44 + 256));
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    (*(v9 + 8))(v10, v11);
  }

LABEL_23:

  v6 = *(*(v44 + 112) + 8);

  return v6();
}

uint64_t sub_25B8FEAB8()
{
  v6 = v0[37];
  v4 = v0[36];
  v5 = v0[35];
  v1 = v0[33];
  v0[14] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[14] + 8);

  return v2();
}

uint64_t sub_25B8FEBD0()
{
  v1[27] = v0;
  v1[14] = v1;
  v1[15] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[18] = 0;
  v1[23] = 0;
  v1[10] = 0;
  v1[11] = 0;
  v2 = sub_25B946C48();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[15] = v0;

  return MEMORY[0x2822009F8](sub_25B8FEDC4, 0);
}

uint64_t sub_25B8FEDC4()
{
  v19 = v0[36];
  v0[14] = v0;
  v14 = *MEMORY[0x277CE1690];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1690]);
  v1 = sub_25B946F78();
  v15 = static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)(v1, v2);
  v16 = v3;
  v0[37] = v15;
  v0[38] = v3;

  MEMORY[0x277D82BD8](v14);
  v0[6] = v15;
  v0[7] = v16;
  type metadata accessor for SCDynamicStore(0);
  v0[8] = sub_25B947818();
  v0[9] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 8));
  v18 = sub_25B946FE8();
  v22 = v8;
  sub_25B947838();
  v17 = v9;
  sub_25B946ED8();
  *v17 = v15;
  v17[1] = v16;
  sub_25B8860FC();
  v21 = v10;
  v20 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v18, v22, v21, v20, v19);

  sub_25B947328();
  v11 = swift_task_alloc();
  v23[39] = v11;
  *v11 = v23[14];
  v11[1] = sub_25B8FF090;
  v12 = v23[31];

  return MEMORY[0x2822005A8](v23 + 16, 0, 0, v12, v23 + 17);
}

uint64_t sub_25B8FF090()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 320) = v0;

  if (v0)
  {
    v2 = sub_25B8FFB6C;
  }

  else
  {
    v2 = sub_25B8FF1FC;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B8FF1FC()
{
  *(v0 + 112) = v0;
  v44 = *(v0 + 128);
  if (v44)
  {
    v1 = *(v43 + 320);
    v2 = *(v43 + 304);
    v3 = *(v43 + 296);
    *(v43 + 144) = v44;
    v42 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v40 = 0;
    }

    else
    {
      *(v43 + 200) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v41 = *(v43 + 208);
      }

      else
      {
        v41 = 0;
      }

      v40 = v41;
    }

    if (v40)
    {
      *(v43 + 184) = v40;
      v39 = *MEMORY[0x277CE1650];
      MEMORY[0x277D82BE0](*MEMORY[0x277CE1650]);
      *(v43 + 192) = v39;
      type metadata accessor for CFString(0);
      sub_25B898754();
      sub_25B946F18();
      MEMORY[0x277D82BD8](*(v43 + 192));
      if (*(v43 + 40))
      {
        v4 = swift_dynamicCast();
        if (v4)
        {
          v37 = *(v43 + 96);
          v38 = *(v43 + 104);
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        v35 = v37;
        v36 = v38;
      }

      else
      {
        sub_25B88BBA0((v43 + 16));
        v35 = 0;
        v36 = 0;
      }

      if (v36)
      {
        v31 = *(v43 + 288);
        v32 = *(v43 + 272);
        v28 = *(v43 + 264);
        v29 = *(v43 + 248);
        v30 = *(v43 + 280);
        v27 = *(v43 + 256);
        *(v43 + 80) = v35;
        *(v43 + 88) = v36;

        MEMORY[0x277D82BD8](v44);
        (*(v27 + 8))(v28, v29);
        (*(v30 + 8))(v31, v32);

        v33 = v35;
        v34 = v36;
        goto LABEL_23;
      }
    }

    (*(*(v43 + 232) + 16))(*(v43 + 240), *(v43 + 216), *(v43 + 224));
    oslog = sub_25B946C18();
    v24 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v26 = sub_25B947838();
    if (os_log_type_enabled(oslog, v24))
    {
      buf = sub_25B9474D8();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v21 = sub_25B8895FC(0, v19, v19);
      v22 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v43 + 152) = buf;
      *(v43 + 160) = v21;
      *(v43 + 168) = v22;
      sub_25B889650(0, (v43 + 152));
      sub_25B889650(0, (v43 + 152));
      *(v43 + 176) = v26;
      v23 = swift_task_alloc();
      v23[2] = v43 + 152;
      v23[3] = v43 + 160;
      v23[4] = v43 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v24, "No global IPv6 configuration in SCDynamicStore.", buf, 2u);
      sub_25B8896B0(v21, 0, v19);
      sub_25B8896B0(v22, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v17 = *(v43 + 288);
    v18 = *(v43 + 272);
    v14 = *(v43 + 264);
    v15 = *(v43 + 248);
    v11 = *(v43 + 240);
    v12 = *(v43 + 224);
    v16 = *(v43 + 280);
    v13 = *(v43 + 256);
    v10 = *(v43 + 232);
    MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12);
    MEMORY[0x277D82BD8](v44);
    (*(v13 + 8))(v14, v15);
    (*(v16 + 8))(v17, v18);

    v33 = 0;
    v34 = 0;
  }

  else
  {
    v8 = *(v43 + 288);
    v9 = *(v43 + 272);
    v7 = *(v43 + 280);
    (*(*(v43 + 256) + 8))(*(v43 + 264), *(v43 + 248));
    (*(v7 + 8))(v8, v9);

    v33 = 0;
    v34 = 0;
  }

LABEL_23:

  v5 = *(*(v43 + 112) + 8);

  return v5(v33, v34);
}

uint64_t sub_25B8FFB6C()
{
  v6 = v0[36];
  v4 = v0[35];
  v5 = v0[34];
  v1 = v0[32];
  v0[14] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[14] + 8);

  return v2();
}

uint64_t SCUtil.getIPv6Addresses(bsdName:)(uint64_t a1, uint64_t a2)
{
  v3[30] = v2;
  v3[29] = a2;
  v3[28] = a1;
  v3[12] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[13] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[16] = 0;
  v3[21] = 0;
  v3[23] = 0;
  v4 = sub_25B946C48();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[13] = v2;

  return MEMORY[0x2822009F8](sub_25B8FFEB4, 0);
}

uint64_t sub_25B8FFEB4()
{
  v21 = v0[39];
  v15 = v0[29];
  v14 = v0[28];
  v0[12] = v0;
  v16 = *MEMORY[0x277CE1690];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1690]);
  v1 = sub_25B946F78();
  v17 = static SCDynamicStoreRef.Keys.createNetworkInterfaceEntity(interfaceName:entity:)(v14, v15, v1, v2);
  v18 = v3;
  v0[40] = v17;
  v0[41] = v3;

  MEMORY[0x277D82BD8](v16);
  v0[8] = v17;
  v0[9] = v18;
  type metadata accessor for SCDynamicStore(0);
  v0[10] = sub_25B947818();
  v0[11] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 10));
  v20 = sub_25B946FE8();
  v24 = v8;
  sub_25B947838();
  v19 = v9;
  sub_25B946ED8();
  *v19 = v17;
  v19[1] = v18;
  sub_25B8860FC();
  v23 = v10;
  v22 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v20, v24, v23, v22, v21);

  sub_25B947328();
  v11 = swift_task_alloc();
  v25[42] = v11;
  *v11 = v25[12];
  v11[1] = sub_25B9001A4;
  v12 = v25[34];

  return MEMORY[0x2822005A8](v25 + 14, 0, 0, v12, v25 + 15);
}

uint64_t sub_25B9001A4()
{
  v4 = *v1;
  *(v4 + 96) = *v1;
  *(v4 + 344) = v0;

  if (v0)
  {
    v2 = sub_25B900D88;
  }

  else
  {
    v2 = sub_25B900310;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B900310()
{
  *(v0 + 96) = v0;
  v44 = *(v0 + 112);
  if (v44)
  {
    v1 = *(v43 + 344);
    v2 = *(v43 + 328);
    v3 = *(v43 + 320);
    *(v43 + 128) = v44;
    v42 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v40 = 0;
    }

    else
    {
      *(v43 + 208) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v41 = *(v43 + 216);
      }

      else
      {
        v41 = 0;
      }

      v40 = v41;
    }

    if (v40)
    {
      *(v43 + 168) = v40;
      v39 = *MEMORY[0x277CE1758];
      MEMORY[0x277D82BE0](*MEMORY[0x277CE1758]);
      *(v43 + 176) = v39;
      type metadata accessor for CFString(0);
      sub_25B898754();
      sub_25B946F18();
      MEMORY[0x277D82BD8](*(v43 + 176));
      if (*(v43 + 40))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
        v4 = swift_dynamicCast();
        if (v4)
        {
          v38 = *(v43 + 200);
        }

        else
        {
          v38 = 0;
        }

        v37 = v38;
      }

      else
      {
        sub_25B88BBA0((v43 + 16));
        v37 = 0;
      }

      if (v37)
      {
        *(v43 + 184) = v37;
        *(v43 + 192) = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
        sub_25B905BE8();
        v36 = sub_25B947108();
        v33 = *(v43 + 312);
        v34 = *(v43 + 296);
        v30 = *(v43 + 288);
        v31 = *(v43 + 272);
        v32 = *(v43 + 304);
        v29 = *(v43 + 280);

        MEMORY[0x277D82BD8](v44);
        (*(v29 + 8))(v30, v31);
        (*(v32 + 8))(v33, v34);

        v35 = v36;
        goto LABEL_23;
      }
    }

    (*(*(v43 + 256) + 16))(*(v43 + 264), *(v43 + 240), *(v43 + 248));
    oslog = sub_25B946C18();
    v26 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v28 = sub_25B947838();
    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_25B9474D8();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v23 = sub_25B8895FC(0, v21, v21);
      v24 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v43 + 136) = buf;
      *(v43 + 144) = v23;
      *(v43 + 152) = v24;
      sub_25B889650(0, (v43 + 136));
      sub_25B889650(0, (v43 + 136));
      *(v43 + 160) = v28;
      v25 = swift_task_alloc();
      v25[2] = v43 + 136;
      v25[3] = v43 + 144;
      v25[4] = v43 + 152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v26, "No IPv6 addresses in SCDynamicStore.", buf, 2u);
      sub_25B8896B0(v23, 0, v21);
      sub_25B8896B0(v24, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v18 = *(v43 + 312);
    v19 = *(v43 + 296);
    v15 = *(v43 + 288);
    v16 = *(v43 + 272);
    v12 = *(v43 + 264);
    v13 = *(v43 + 248);
    v17 = *(v43 + 304);
    v14 = *(v43 + 280);
    v11 = *(v43 + 256);
    MEMORY[0x277D82BD8](oslog);
    (*(v11 + 8))(v12, v13);
    v20 = sub_25B947838();
    MEMORY[0x277D82BD8](v44);
    (*(v14 + 8))(v15, v16);
    (*(v17 + 8))(v18, v19);

    v35 = v20;
  }

  else
  {
    v9 = *(v43 + 312);
    v8 = *(v43 + 296);
    v7 = *(v43 + 304);
    (*(*(v43 + 280) + 8))(*(v43 + 288), *(v43 + 272));
    v10 = sub_25B947838();
    (*(v7 + 8))(v9, v8);

    v35 = v10;
  }

LABEL_23:

  v5 = *(*(v43 + 96) + 8);

  return v5(v35);
}

uint64_t sub_25B900D88()
{
  v6 = v0[39];
  v4 = v0[38];
  v5 = v0[37];
  v1 = v0[35];
  v0[12] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[12] + 8);

  return v2();
}

uint64_t sub_25B900EA8(uint64_t a1)
{
  v2[28] = v1;
  v2[27] = a1;
  v2[14] = v2;
  v2[15] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[18] = 0;
  v2[23] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v3 = sub_25B946C48();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  v2[15] = v1;

  return MEMORY[0x2822009F8](sub_25B9010A0, 0);
}

uint64_t sub_25B9010A0()
{
  v19 = v0[37];
  v0[14] = v0;
  v14 = *MEMORY[0x277CE1688];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1688]);
  v1 = sub_25B946F78();
  v15 = static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)(v1, v2);
  v16 = v3;
  v0[38] = v15;
  v0[39] = v3;

  MEMORY[0x277D82BD8](v14);
  v0[6] = v15;
  v0[7] = v16;
  type metadata accessor for SCDynamicStore(0);
  v0[8] = sub_25B947818();
  v0[9] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 8));
  v18 = sub_25B946FE8();
  v22 = v8;
  sub_25B947838();
  v17 = v9;
  sub_25B946ED8();
  *v17 = v15;
  v17[1] = v16;
  sub_25B8860FC();
  v21 = v10;
  v20 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v18, v22, v21, v20, v19);

  sub_25B947328();
  v11 = swift_task_alloc();
  v23[40] = v11;
  *v11 = v23[14];
  v11[1] = sub_25B90136C;
  v12 = v23[32];

  return MEMORY[0x2822005A8](v23 + 16, 0, 0, v12, v23 + 17);
}

uint64_t sub_25B90136C()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 328) = v0;

  if (v0)
  {
    v2 = sub_25B8FEAB8;
  }

  else
  {
    v2 = sub_25B9014D8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B9014D8()
{
  *(v0 + 112) = v0;
  v42 = *(v0 + 128);
  if (v42)
  {
    v1 = *(v41 + 328);
    v2 = *(v41 + 312);
    v3 = *(v41 + 304);
    *(v41 + 144) = v42;
    v40 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v38 = 0;
    }

    else
    {
      *(v41 + 200) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v39 = *(v41 + 208);
      }

      else
      {
        v39 = 0;
      }

      v38 = v39;
    }

    if (v38)
    {
      *(v41 + 184) = v38;
      v37 = *MEMORY[0x277CE1748];
      MEMORY[0x277D82BE0](*MEMORY[0x277CE1748]);
      *(v41 + 192) = v37;
      type metadata accessor for CFString(0);
      sub_25B898754();
      sub_25B946F18();
      MEMORY[0x277D82BD8](*(v41 + 192));
      if (*(v41 + 40))
      {
        v4 = swift_dynamicCast();
        if (v4)
        {
          v36 = *(v41 + 96);
        }

        else
        {
          v36 = 0;
        }

        v35 = v36;
      }

      else
      {
        sub_25B88BBA0((v41 + 16));
        v35 = 0;
      }

      if (v35._object)
      {
        v33 = *(v41 + 296);
        v34 = *(v41 + 280);
        v30 = *(v41 + 272);
        v31 = *(v41 + 256);
        v32 = *(v41 + 288);
        v29 = *(v41 + 264);
        *(v41 + 80) = v35;
        IPv4Address.init(_:)(v35);

        MEMORY[0x277D82BD8](v42);
        (*(v29 + 8))(v30, v31);
        (*(v32 + 8))(v33, v34);

        goto LABEL_23;
      }
    }

    (*(*(v41 + 240) + 16))(*(v41 + 248), *(v41 + 224), *(v41 + 232));
    oslog = sub_25B946C18();
    v26 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v28 = sub_25B947838();
    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_25B9474D8();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v23 = sub_25B8895FC(0, v21, v21);
      v24 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v41 + 152) = buf;
      *(v41 + 160) = v23;
      *(v41 + 168) = v24;
      sub_25B889650(0, (v41 + 152));
      sub_25B889650(0, (v41 + 152));
      *(v41 + 176) = v28;
      v25 = swift_task_alloc();
      v25[2] = v41 + 152;
      v25[3] = v41 + 160;
      v25[4] = v41 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v26, "No IPv4 gateway in SCDynamicStore.", buf, 2u);
      sub_25B8896B0(v23, 0, v21);
      sub_25B8896B0(v24, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v19 = *(v41 + 296);
    v20 = *(v41 + 280);
    v16 = *(v41 + 272);
    v17 = *(v41 + 256);
    v12 = *(v41 + 248);
    v13 = *(v41 + 232);
    v14 = *(v41 + 216);
    v18 = *(v41 + 288);
    v15 = *(v41 + 264);
    v11 = *(v41 + 240);
    MEMORY[0x277D82BD8](oslog);
    (*(v11 + 8))(v12, v13);
    *v14 = 0;
    *(v14 + 4) = 1;
    MEMORY[0x277D82BD8](v42);
    (*(v15 + 8))(v16, v17);
    (*(v18 + 8))(v19, v20);
  }

  else
  {
    v9 = *(v41 + 296);
    v10 = *(v41 + 280);
    v7 = *(v41 + 216);
    v8 = *(v41 + 288);
    (*(*(v41 + 264) + 8))(*(v41 + 272), *(v41 + 256));
    *v7 = 0;
    *(v7 + 4) = 1;
    (*(v8 + 8))(v9, v10);
  }

LABEL_23:

  v5 = *(*(v41 + 112) + 8);

  return v5();
}

uint64_t sub_25B901E4C()
{
  v1[27] = v0;
  v1[14] = v1;
  v1[15] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[18] = 0;
  v1[23] = 0;
  v1[10] = 0;
  v1[11] = 0;
  v2 = sub_25B946C48();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[15] = v0;

  return MEMORY[0x2822009F8](sub_25B902040, 0);
}

uint64_t sub_25B902040()
{
  v19 = v0[36];
  v0[14] = v0;
  v14 = *MEMORY[0x277CE1688];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1688]);
  v1 = sub_25B946F78();
  v15 = static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)(v1, v2);
  v16 = v3;
  v0[37] = v15;
  v0[38] = v3;

  MEMORY[0x277D82BD8](v14);
  v0[6] = v15;
  v0[7] = v16;
  type metadata accessor for SCDynamicStore(0);
  v0[8] = sub_25B947818();
  v0[9] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 8));
  v18 = sub_25B946FE8();
  v22 = v8;
  sub_25B947838();
  v17 = v9;
  sub_25B946ED8();
  *v17 = v15;
  v17[1] = v16;
  sub_25B8860FC();
  v21 = v10;
  v20 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v18, v22, v21, v20, v19);

  sub_25B947328();
  v11 = swift_task_alloc();
  v23[39] = v11;
  *v11 = v23[14];
  v11[1] = sub_25B90230C;
  v12 = v23[31];

  return MEMORY[0x2822005A8](v23 + 16, 0, 0, v12, v23 + 17);
}

uint64_t sub_25B90230C()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 320) = v0;

  if (v0)
  {
    v2 = sub_25B8FFB6C;
  }

  else
  {
    v2 = sub_25B902478;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B902478()
{
  *(v0 + 112) = v0;
  v44 = *(v0 + 128);
  if (v44)
  {
    v1 = *(v43 + 320);
    v2 = *(v43 + 304);
    v3 = *(v43 + 296);
    *(v43 + 144) = v44;
    v42 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v40 = 0;
    }

    else
    {
      *(v43 + 200) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v41 = *(v43 + 208);
      }

      else
      {
        v41 = 0;
      }

      v40 = v41;
    }

    if (v40)
    {
      *(v43 + 184) = v40;
      v39 = *MEMORY[0x277CE1650];
      MEMORY[0x277D82BE0](*MEMORY[0x277CE1650]);
      *(v43 + 192) = v39;
      type metadata accessor for CFString(0);
      sub_25B898754();
      sub_25B946F18();
      MEMORY[0x277D82BD8](*(v43 + 192));
      if (*(v43 + 40))
      {
        v4 = swift_dynamicCast();
        if (v4)
        {
          v37 = *(v43 + 96);
          v38 = *(v43 + 104);
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        v35 = v37;
        v36 = v38;
      }

      else
      {
        sub_25B88BBA0((v43 + 16));
        v35 = 0;
        v36 = 0;
      }

      if (v36)
      {
        v31 = *(v43 + 288);
        v32 = *(v43 + 272);
        v28 = *(v43 + 264);
        v29 = *(v43 + 248);
        v30 = *(v43 + 280);
        v27 = *(v43 + 256);
        *(v43 + 80) = v35;
        *(v43 + 88) = v36;

        MEMORY[0x277D82BD8](v44);
        (*(v27 + 8))(v28, v29);
        (*(v30 + 8))(v31, v32);

        v33 = v35;
        v34 = v36;
        goto LABEL_23;
      }
    }

    (*(*(v43 + 232) + 16))(*(v43 + 240), *(v43 + 216), *(v43 + 224));
    oslog = sub_25B946C18();
    v24 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v26 = sub_25B947838();
    if (os_log_type_enabled(oslog, v24))
    {
      buf = sub_25B9474D8();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v21 = sub_25B8895FC(0, v19, v19);
      v22 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v43 + 152) = buf;
      *(v43 + 160) = v21;
      *(v43 + 168) = v22;
      sub_25B889650(0, (v43 + 152));
      sub_25B889650(0, (v43 + 152));
      *(v43 + 176) = v26;
      v23 = swift_task_alloc();
      v23[2] = v43 + 152;
      v23[3] = v43 + 160;
      v23[4] = v43 + 168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v24, "No global IPv4 configuration in SCDynamicStore.", buf, 2u);
      sub_25B8896B0(v21, 0, v19);
      sub_25B8896B0(v22, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v17 = *(v43 + 288);
    v18 = *(v43 + 272);
    v14 = *(v43 + 264);
    v15 = *(v43 + 248);
    v11 = *(v43 + 240);
    v12 = *(v43 + 224);
    v16 = *(v43 + 280);
    v13 = *(v43 + 256);
    v10 = *(v43 + 232);
    MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12);
    MEMORY[0x277D82BD8](v44);
    (*(v13 + 8))(v14, v15);
    (*(v16 + 8))(v17, v18);

    v33 = 0;
    v34 = 0;
  }

  else
  {
    v8 = *(v43 + 288);
    v9 = *(v43 + 272);
    v7 = *(v43 + 280);
    (*(*(v43 + 256) + 8))(*(v43 + 264), *(v43 + 248));
    (*(v7 + 8))(v8, v9);

    v33 = 0;
    v34 = 0;
  }

LABEL_23:

  v5 = *(*(v43 + 112) + 8);

  return v5(v33, v34);
}

uint64_t sub_25B902DE8(uint64_t a1, uint64_t a2)
{
  v3[30] = v2;
  v3[29] = a2;
  v3[28] = a1;
  v3[12] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[13] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[16] = 0;
  v3[21] = 0;
  v3[23] = 0;
  v4 = sub_25B946C48();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[13] = v2;

  return MEMORY[0x2822009F8](sub_25B903010, 0);
}

uint64_t sub_25B903010()
{
  v21 = v0[39];
  v15 = v0[29];
  v14 = v0[28];
  v0[12] = v0;
  v16 = *MEMORY[0x277CE1688];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1688]);
  v1 = sub_25B946F78();
  v17 = static SCDynamicStoreRef.Keys.createNetworkInterfaceEntity(interfaceName:entity:)(v14, v15, v1, v2);
  v18 = v3;
  v0[40] = v17;
  v0[41] = v3;

  MEMORY[0x277D82BD8](v16);
  v0[8] = v17;
  v0[9] = v18;
  type metadata accessor for SCDynamicStore(0);
  v0[10] = sub_25B947818();
  v0[11] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 10));
  v20 = sub_25B946FE8();
  v24 = v8;
  sub_25B947838();
  v19 = v9;
  sub_25B946ED8();
  *v19 = v17;
  v19[1] = v18;
  sub_25B8860FC();
  v23 = v10;
  v22 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v20, v24, v23, v22, v21);

  sub_25B947328();
  v11 = swift_task_alloc();
  v25[42] = v11;
  *v11 = v25[12];
  v11[1] = sub_25B903300;
  v12 = v25[34];

  return MEMORY[0x2822005A8](v25 + 14, 0, 0, v12, v25 + 15);
}

uint64_t sub_25B903300()
{
  v4 = *v1;
  *(v4 + 96) = *v1;
  *(v4 + 344) = v0;

  if (v0)
  {
    v2 = sub_25B900D88;
  }

  else
  {
    v2 = sub_25B90346C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B90346C()
{
  *(v0 + 96) = v0;
  v44 = *(v0 + 112);
  if (v44)
  {
    v1 = *(v43 + 344);
    v2 = *(v43 + 328);
    v3 = *(v43 + 320);
    *(v43 + 128) = v44;
    v42 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v40 = 0;
    }

    else
    {
      *(v43 + 208) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v41 = *(v43 + 216);
      }

      else
      {
        v41 = 0;
      }

      v40 = v41;
    }

    if (v40)
    {
      *(v43 + 168) = v40;
      v39 = *MEMORY[0x277CE1758];
      MEMORY[0x277D82BE0](*MEMORY[0x277CE1758]);
      *(v43 + 176) = v39;
      type metadata accessor for CFString(0);
      sub_25B898754();
      sub_25B946F18();
      MEMORY[0x277D82BD8](*(v43 + 176));
      if (*(v43 + 40))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
        v4 = swift_dynamicCast();
        if (v4)
        {
          v38 = *(v43 + 200);
        }

        else
        {
          v38 = 0;
        }

        v37 = v38;
      }

      else
      {
        sub_25B88BBA0((v43 + 16));
        v37 = 0;
      }

      if (v37)
      {
        *(v43 + 184) = v37;
        *(v43 + 192) = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
        sub_25B905BE8();
        v36 = sub_25B947108();
        v33 = *(v43 + 312);
        v34 = *(v43 + 296);
        v30 = *(v43 + 288);
        v31 = *(v43 + 272);
        v32 = *(v43 + 304);
        v29 = *(v43 + 280);

        MEMORY[0x277D82BD8](v44);
        (*(v29 + 8))(v30, v31);
        (*(v32 + 8))(v33, v34);

        v35 = v36;
        goto LABEL_23;
      }
    }

    (*(*(v43 + 256) + 16))(*(v43 + 264), *(v43 + 240), *(v43 + 248));
    oslog = sub_25B946C18();
    v26 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v28 = sub_25B947838();
    if (os_log_type_enabled(oslog, v26))
    {
      buf = sub_25B9474D8();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v23 = sub_25B8895FC(0, v21, v21);
      v24 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v43 + 136) = buf;
      *(v43 + 144) = v23;
      *(v43 + 152) = v24;
      sub_25B889650(0, (v43 + 136));
      sub_25B889650(0, (v43 + 136));
      *(v43 + 160) = v28;
      v25 = swift_task_alloc();
      v25[2] = v43 + 136;
      v25[3] = v43 + 144;
      v25[4] = v43 + 152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v26, "No IPv4 addresses in SCDynamicStore.", buf, 2u);
      sub_25B8896B0(v23, 0, v21);
      sub_25B8896B0(v24, 0, MEMORY[0x277D84F70] + 8);
      sub_25B9474B8();
    }

    v18 = *(v43 + 312);
    v19 = *(v43 + 296);
    v15 = *(v43 + 288);
    v16 = *(v43 + 272);
    v12 = *(v43 + 264);
    v13 = *(v43 + 248);
    v17 = *(v43 + 304);
    v14 = *(v43 + 280);
    v11 = *(v43 + 256);
    MEMORY[0x277D82BD8](oslog);
    (*(v11 + 8))(v12, v13);
    v20 = sub_25B947838();
    MEMORY[0x277D82BD8](v44);
    (*(v14 + 8))(v15, v16);
    (*(v17 + 8))(v18, v19);

    v35 = v20;
  }

  else
  {
    v9 = *(v43 + 312);
    v8 = *(v43 + 296);
    v7 = *(v43 + 304);
    (*(*(v43 + 280) + 8))(*(v43 + 288), *(v43 + 272));
    v10 = sub_25B947838();
    (*(v7 + 8))(v9, v8);

    v35 = v10;
  }

LABEL_23:

  v5 = *(*(v43 + 96) + 8);

  return v5(v35);
}

uint64_t SCUtil.getDNSConfiguration()()
{
  v1[18] = v0;
  v1[6] = v1;
  v1[7] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v1[10] = 0;
  v1[15] = 0;
  v2 = sub_25B946C48();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB618, &qword_25B94C4E8);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB620, &unk_25B94C4F0);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[7] = v0;

  return MEMORY[0x2822009F8](sub_25B9040D0, 0);
}

uint64_t sub_25B9040D0()
{
  v19 = v0[27];
  v0[6] = v0;
  v14 = *MEMORY[0x277CE1678];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1678]);
  v1 = sub_25B946F78();
  v15 = static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)(v1, v2);
  v16 = v3;
  v0[28] = v15;
  v0[29] = v3;

  MEMORY[0x277D82BD8](v14);
  v0[2] = v15;
  v0[3] = v16;
  type metadata accessor for SCDynamicStore(0);
  v0[4] = sub_25B947818();
  v0[5] = v4;
  v5 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v5);

  v6 = type metadata accessor for SCUtil(0);
  sub_25B904DD4(v6);
  v7 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v7);

  sub_25B946ED8();
  sub_25B86AEEC((v0 + 4));
  v18 = sub_25B946FE8();
  v22 = v8;
  sub_25B947838();
  v17 = v9;
  sub_25B946ED8();
  *v17 = v15;
  v17[1] = v16;
  sub_25B8860FC();
  v21 = v10;
  v20 = sub_25B947838();
  static SCDynamicStoreRef.notifications(name:keys:patterns:)(v18, v22, v21, v20, v19);

  sub_25B947328();
  v11 = swift_task_alloc();
  v23[30] = v11;
  *v11 = v23[6];
  v11[1] = sub_25B90439C;
  v12 = v23[22];

  return MEMORY[0x2822005A8](v23 + 8, 0, 0, v12, v23 + 9);
}

uint64_t sub_25B90439C()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 248) = v0;

  if (v0)
  {
    v2 = sub_25B904C50;
  }

  else
  {
    v2 = sub_25B904508;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_25B904508()
{
  *(v0 + 48) = v0;
  v38 = *(v0 + 64);
  if (v38)
  {
    v1 = *(v37 + 248);
    v2 = *(v37 + 232);
    v3 = *(v37 + 224);
    *(v37 + 80) = v38;
    v36 = SCDynamicStoreRef.value(key:)(v3, v2);
    if (v1)
    {

      v34 = 0;
    }

    else
    {
      *(v37 + 128) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB628, &qword_25B94C510);
      if (swift_dynamicCast())
      {
        v35 = *(v37 + 136);
      }

      else
      {
        v35 = 0;
      }

      v34 = v35;
    }

    if (v34)
    {
      v30 = *(v37 + 216);
      v31 = *(v37 + 200);
      v27 = *(v37 + 192);
      v28 = *(v37 + 176);
      v29 = *(v37 + 208);
      v26 = *(v37 + 184);
      *(v37 + 120) = v34;
      type metadata accessor for SCDNSSettings();
      v32 = SCDNSSettings.__allocating_init(raw:)(v34);
      MEMORY[0x277D82BD8](v38);
      (*(v26 + 8))(v27, v28);
      (*(v29 + 8))(v30, v31);

      v33 = v32;
    }

    else
    {
      (*(*(v37 + 160) + 16))(*(v37 + 168), *(v37 + 144), *(v37 + 152));
      v24 = sub_25B946C18();
      v23 = sub_25B947458();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v25 = sub_25B947838();
      if (os_log_type_enabled(v24, v23))
      {
        buf = sub_25B9474D8();
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v20 = sub_25B8895FC(0, v18, v18);
        v21 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v37 + 88) = buf;
        *(v37 + 96) = v20;
        *(v37 + 104) = v21;
        sub_25B889650(0, (v37 + 88));
        sub_25B889650(0, (v37 + 88));
        *(v37 + 112) = v25;
        v22 = swift_task_alloc();
        v22[2] = v37 + 88;
        v22[3] = v37 + 96;
        v22[4] = v37 + 104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
        sub_25B8A3F58();
        sub_25B947158();

        _os_log_impl(&dword_25B859000, v24, v23, "Error: No DNS Server addresses in SCDynamicStore.", buf, 2u);
        sub_25B8896B0(v20, 0, v18);
        sub_25B8896B0(v21, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }

      v16 = *(v37 + 216);
      v17 = *(v37 + 200);
      v13 = *(v37 + 192);
      v14 = *(v37 + 176);
      v10 = *(v37 + 168);
      v11 = *(v37 + 152);
      v15 = *(v37 + 208);
      v12 = *(v37 + 184);
      v9 = *(v37 + 160);
      MEMORY[0x277D82BD8](v24);
      (*(v9 + 8))(v10, v11);
      MEMORY[0x277D82BD8](v38);
      (*(v12 + 8))(v13, v14);
      (*(v15 + 8))(v16, v17);

      v33 = 0;
    }
  }

  else
  {
    v7 = *(v37 + 216);
    v8 = *(v37 + 200);
    v6 = *(v37 + 208);
    (*(*(v37 + 184) + 8))(*(v37 + 192), *(v37 + 176));
    (*(v6 + 8))(v7, v8);

    v33 = 0;
  }

  v4 = *(*(v37 + 48) + 8);

  return v4(v33);
}

uint64_t sub_25B904C50()
{
  v6 = v0[27];
  v4 = v0[26];
  v5 = v0[25];
  v1 = v0[23];
  v0[6] = v0;
  (*(v1 + 8))();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[6] + 8);

  return v2();
}

uint64_t sub_25B904DD4(uint64_t a1)
{
  v1 = sub_25B947A18();
  MEMORY[0x25F870E30](v1);
}

uint64_t sub_25B904E68(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  sub_25B946ED8();
  v1._countAndFlagsBits = v3;
  v1._object = v4;
  *&result = IPv4Address.init(_:)(v1);
  return result;
}

uint64_t sub_25B904F00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B904FE4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B904F6C(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B90504C(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B904FE4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo13SCDNSSettings_searchDomains);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B90504C(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo13SCDNSSettings_searchDomains);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B90513C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B905220();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B9051A8(void *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B905288(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B905220()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo13SCDNSSettings_serverAddresses);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B905288(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo13SCDNSSettings_serverAddresses);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

char *SCDNSSettings.init(raw:)(uint64_t a1)
{
  v23 = 0;
  v22 = a1;
  v10 = *MEMORY[0x277CE1710];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1710]);
  v19 = v10;
  type metadata accessor for CFString(0);
  sub_25B898754();
  sub_25B946F18();
  MEMORY[0x277D82BD8](v10);
  if (v20[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
    if (swift_dynamicCast())
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    sub_25B88BBA0(v20);
    v9 = 0;
  }

  v18 = v9;
  if (v9)
  {
    v21 = v18;
  }

  else
  {
    v21 = sub_25B947838();
  }

  *OBJC_IVAR____TtC11NetworkInfo13SCDNSSettings_serverAddresses = v21;
  v6 = v23;
  v7 = *MEMORY[0x277CE1708];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1708]);
  v15 = v7;
  sub_25B946F18();
  MEMORY[0x277D82BD8](v7);
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
    v1 = swift_dynamicCast();
    if (v1)
    {
      v4 = v12;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    sub_25B88BBA0(v16);
    v5 = 0;
  }

  v14 = v5;
  if (v5)
  {
    v17 = v14;
  }

  else
  {
    v17 = sub_25B947838();
  }

  *&v6[OBJC_IVAR____TtC11NetworkInfo13SCDNSSettings_searchDomains] = v17;
  v13.receiver = v23;
  v13.super_class = type metadata accessor for SCDNSSettings();
  v3 = objc_msgSendSuper2(&v13, sel_init);
  MEMORY[0x277D82BE0](v3);
  v23 = v3;

  MEMORY[0x277D82BD8](v23);
  return v3;
}

id SCDNSSettings.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCDNSSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B9058E8(uint64_t a1)
{
  v10 = a1;
  v30 = 0;
  v29 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB658, &qword_25B94C550);
  v11 = *(v18 - 8);
  v12 = v18 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v8 - v13;
  v30 = MEMORY[0x28223BE20](v10);
  v29 = v1;
  v14 = v30[3];
  v15 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v14);
  sub_25B905D14();
  sub_25B9479C8();
  v2 = sub_25B904FE4();
  v21 = &v28;
  v28 = v2;
  v17 = &v27;
  v27 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  v3 = sub_25B8D2AFC();
  v4 = v20;
  v22 = v3;
  sub_25B947778();
  v23 = v4;
  v24 = v4;
  if (v4)
  {
    v8[2] = v24;
    sub_25B86CFA0(&v28);
    return (*(v11 + 8))(v16, v18);
  }

  else
  {
    sub_25B86CFA0(&v28);
    v5 = sub_25B905220();
    v6 = v23;
    v26 = v5;
    v25 = 1;
    sub_25B947778();
    v8[4] = v6;
    v9 = v6;
    if (v6)
    {
      v8[1] = v9;
    }

    sub_25B86CFA0(&v26);
    return (*(v11 + 8))(v16, v18);
  }
}

unint64_t sub_25B905BE8()
{
  v2 = qword_27FBAB630;
  if (!qword_27FBAB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAADA0, &unk_25B949920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B905C98()
{
  v2 = qword_27FBAB648;
  if (!qword_27FBAB648)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B905D14()
{
  v2 = qword_27FBAB650;
  if (!qword_27FBAB650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB650);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B905F04(uint64_t a1)
{
  v3 = sub_25B946C48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_25B906230()
{
  v2 = qword_27FBAB670;
  if (!qword_27FBAB670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB670);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B9062C4()
{
  v2 = qword_27FBAB678;
  if (!qword_27FBAB678)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B906358()
{
  v2 = qword_27FBAB680;
  if (!qword_27FBAB680)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB680);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B9063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = v7;
  v8[15] = a7;
  v8[14] = a6;
  v8[13] = a5;
  v8[12] = a4;
  v8[11] = a3;
  v8[10] = a2;
  v8[9] = a1;
  v8[4] = v8;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v8[8] = 0;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v8[8] = v7;
  return MEMORY[0x2822009F8](sub_25B906484, 0);
}

uint64_t sub_25B906484()
{
  v7 = v0[16];
  v6 = v0[15];
  v12 = v0[14];
  v11 = v0[13];
  v10 = v0[12];
  v9 = v0[11];
  v8 = v0[10];
  v0[4] = v0;
  v14 = sub_25B946F48("async(group:qos:flags:execute:)", 31, 1);
  v15 = v1;
  v0[17] = v1;
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v8);

  v16 = swift_task_alloc();
  v0[18] = v16;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  v16[6] = v10;
  v16[7] = v11;
  v16[8] = v12;
  v2 = swift_task_alloc();
  v13[19] = v2;
  *v2 = v13[4];
  v2[1] = sub_25B906650;
  v3 = v13[15];
  v4 = v13[9];

  return MEMORY[0x2822008A0](v4, 0, 0, v14, v15, sub_25B906C28, v16, v3);
}

uint64_t sub_25B906650()
{
  v6 = *v1;
  v6[4] = *v1;
  v6[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25B906860, 0);
  }

  else
  {
    v4 = v6[16];
    v5 = v6[10];

    v2 = *(v6[4] + 8);

    return v2();
  }
}

uint64_t sub_25B906860()
{
  v3 = v0[16];
  v4 = v0[10];
  v0[4] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_25B90695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v39 = a3;
  v37 = a4;
  v38 = a5;
  v28 = a6;
  v29 = a7;
  v27 = a8;
  v35 = sub_25B906EE4;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v55 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
  v34 = sub_25B947268();
  v30 = *(v34 - 8);
  v31 = v34 - 8;
  v25 = v30;
  v26 = *(v30 + 64);
  v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v29);
  v33 = &v23 - v23;
  v54 = v10;
  v53 = a2;
  v52 = v11;
  v51 = v12;
  v50 = v13;
  v48 = v14;
  v49 = v9;

  (*(v30 + 16))(v33, v24, v34);
  v32 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v15 = swift_allocObject();
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v36 = v15;
  v15[2] = v27;
  v15[3] = v16;
  v15[4] = v17;
  (*(v18 + 32))(v15 + v19, v20, v21);
  v46 = v35;
  v47 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = 0;
  v44 = sub_25B9074A8;
  v45 = &block_descriptor_1;
  v40 = _Block_copy(&aBlock);
  MEMORY[0x25F871270](v39, v37, v38);
  _Block_release(v40);
}

id *sub_25B906C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v17 = a4;
  v10 = sub_25B90755C;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v26 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
  v13 = 0;
  v15 = MEMORY[0x277D84950];
  v18 = sub_25B947978();
  v9 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v12);
  v16 = (&v9 - v9);
  v25 = &v9 - v9;
  v23 = v6;
  v24 = v5;
  v22 = a3;

  v19 = v17;
  v20 = v11;
  v21 = v12;
  sub_25B907048(v10, v17, v14, v16);

  v7 = sub_25B947268();
  sub_25B907294(v16, v7);
  return sub_25B90759C(v16, v17, v18);
}

uint64_t sub_25B906DCC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
  v4 = sub_25B947268();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

id *sub_25B906EE4()
{
  v6 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB688, &qword_25B94C730);
  v1 = *(sub_25B947268() - 8);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_25B906C54(v2, v3, v4, v6);
}

uint64_t sub_25B906F8C(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4)
{

  a1();

  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_25B907048@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = a4;
  v23 = a1;
  v10 = a2;
  v11 = a3;
  v26 = a2;
  v25 = a3;
  v12 = *(a3 - 8);
  v13 = a3 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v17 = &v8 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v14);
  v16 = &v8 - v15;
  v18 = sub_25B947978();
  v20 = *(*(v18 - 8) + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v17);
  v21 = &v8 - v19;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v5);
  v24 = &v8 - v22;
  v23(v6);
  swift_storeEnumTagMultiPayload();
  sub_25B907704(v21, v24, v10, v11, v18);
  return sub_25B907704(v24, v9, v10, v11, v18);
}

uint64_t sub_25B907294(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v8 = a2;
  v17 = *(a2 + 16);
  v24 = v17;
  v9 = *(v17 - 8);
  v10 = v17 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v12 = &v8 - v11;
  v18 = *(v2 + 24);
  v23 = v18;
  v13 = *(v18 - 8);
  v14 = v18 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v11);
  v16 = &v8 - v15;
  v21 = sub_25B947978();
  v20 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v19);
  v22 = &v8 - v20;
  sub_25B907624(v3, &v8 - v20, v4, v5, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v22, v18);
    return sub_25B947248();
  }

  else
  {
    (*(v9 + 32))(v12, v22, v17);
    return sub_25B947258();
  }
}

uint64_t sub_25B9074A8(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id *sub_25B90759C(id *a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_25B907624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a4 - 8) + 16))(a2, a1);
  }

  else
  {
    (*(*(a3 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_25B907704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a4 - 8) + 32))(a2, a1);
  }

  else
  {
    (*(*(a3 - 8) + 32))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t static Sysctl.getSysctl<A>(_:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = a4;
  v15 = a1;
  v17 = a2;
  v21 = a3;
  v19 = sub_25B907BC0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v18 = &v33;
  v33 = 0;
  v16 = &v32;
  v32 = 0;
  v39 = a3;
  v13 = *(a3 - 8);
  v11 = a3 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v23 = &v9 - v4;
  v38 = &v9 - v4;
  v36 = v15;
  v37 = v17;
  v35 = v5;
  v34 = v12;
  (*(v13 + 16))();
  v33 = v14;
  v32 = 0;
  sub_25B946ED8();
  v20 = &v25;
  v26 = v21;
  v27 = v16;
  v28 = v15;
  v29 = v17;
  v30 = v18;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB688, &qword_25B94C730);
  v7 = v22;
  sub_25B907C08(v23, v19, v20, v21, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84950], &v31);
  v24 = v7;
  if (v7)
  {
    v9 = v31;

    return (*(v13 + 8))(v23, v21);
  }

  else
  {

    return (*(v13 + 32))(v10, v23, v21);
  }
}

uint64_t sub_25B907A50(void *a1, int *a2, uint64_t a3, uint64_t a4, size_t *a5, uint64_t a6, uint64_t *a7)
{
  sub_25B946ED8();
  v15 = sub_25B946FC8();

  v16 = sysctlbyname((v15 + 32), a1, a5, 0, 0);
  swift_unknownObjectRelease();

  *a2 = v16;
  v18 = *a2;
  result = sub_25B946CE8();
  if (v18 != result)
  {
    MEMORY[0x25F870AC0]();
    nullsub_1();
    v10 = v8;
    sub_25B90814C();
    v11 = swift_allocError();
    *v9 = v10;
    swift_willThrow();
    result = v11;
    *a7 = v11;
  }

  return result;
}

uint64_t sub_25B907C08(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t static Sysctl.setSysctl<A>(_:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v19 = 0;
  v25 = a4;
  v23 = a1;
  v24 = a2;
  v22 = a3;
  v21 = v4;
  v20 = *(*(a4 - 8) + 64);
  v9 = v20;
  v19 = 0;
  sub_25B946ED8();
  v13 = a4;
  v14 = &v19;
  v15 = a1;
  v16 = a2;
  v17 = v9;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB688, &qword_25B94C730);
  sub_25B907C08(a3, sub_25B907FEC, v12, a4, v5, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84950], &v18);
}

uint64_t sub_25B907E7C(void *a1, int *a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t a6, uint64_t *a7)
{
  sub_25B946ED8();
  v15 = sub_25B946FC8();

  v16 = sysctlbyname((v15 + 32), 0, 0, a1, a5);
  swift_unknownObjectRelease();

  *a2 = v16;
  v18 = *a2;
  result = sub_25B946CE8();
  if (v18 != result)
  {
    MEMORY[0x25F870AC0]();
    nullsub_1();
    v10 = v8;
    sub_25B90814C();
    v11 = swift_allocError();
    *v9 = v10;
    swift_willThrow();
    result = v11;
    *a7 = v11;
  }

  return result;
}

unint64_t sub_25B90814C()
{
  v2 = qword_27FBAB690;
  if (!qword_27FBAB690)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB690);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B908200@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger;
  v2 = sub_25B946C48();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B908274()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_originalLogLevels);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B9082DC(uint64_t a1)
{
  sub_25B946ED8();
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_originalLogLevels);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_25B9083CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A0, &qword_25B94C760);
  sub_25B947838();
  v5 = v0;
  *v0 = sub_25B946F48("net.route.verbose", 17, 1);
  v5[1] = v1;
  v5[2] = 2;
  v5[3] = sub_25B946F48("net.inet6.icmp6.nd6_debug", 25, 1);
  v5[4] = v2;
  v5[5] = 2;
  v5[6] = sub_25B946F48("net.inet6.ip6.select_srcaddr_debug", 34, 1);
  v5[7] = v3;
  v5[8] = 1;
  sub_25B8860FC();
  result = sub_25B946EC8();
  qword_27FBB1148 = result;
  return result;
}

uint64_t *sub_25B9084F0()
{
  if (qword_27FBAAA70 != -1)
  {
    swift_once();
  }

  return &qword_27FBB1148;
}

uint64_t sub_25B908550()
{
  v1 = *sub_25B9084F0();
  sub_25B946ED8();
  return v1;
}

void *sub_25B908594()
{
  v125 = sub_25B8994FC;
  v126 = sub_25B88B668;
  v127 = sub_25B909308;
  v128 = sub_25B90EC3C;
  v129 = sub_25B88B5F4;
  v130 = sub_25B88B5F4;
  v131 = sub_25B88B6B4;
  v132 = sub_25B88B5F4;
  v133 = sub_25B88B5F4;
  v134 = sub_25B90EC88;
  v163 = 0;
  v141 = __b;
  v143 = 40;
  memset(__b, 0, sizeof(__b));
  v158 = 0;
  v159 = 0;
  v155 = 0;
  v135 = sub_25B946C48();
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  v138 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v135);
  v139 = v28 - v138;
  v163 = v0;
  v140 = *sub_25B9084F0();
  sub_25B946ED8();
  v142 = &v164;
  sub_25B946EB8();
  v1 = v144;
  memcpy(v141, v142, v143);
  for (i = v1; ; i = v31)
  {
    v121 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A8, &qword_25B94C768);
    sub_25B946EF8();
    v122 = v160;
    v123 = v161;
    if (!v161)
    {
      result = __b;
      sub_25B909218(__b);
      return result;
    }

    v119 = v122;
    v120 = v123;
    v115 = v123;
    v114 = v122;
    v158 = v122;
    v159 = v123;
    type metadata accessor for Sysctl();
    v2 = v121;
    v156 = 0;
    static Sysctl.getSysctl<A>(_:defaultValue:)(v114, v115, MEMORY[0x277D83B88], &v157);
    v116 = v2;
    v117 = v115;
    v118 = v2;
    if (v2)
    {
      break;
    }

    v94 = v157;
    v155 = v157;
    (*(v136 + 16))(v139, v124 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v135);
    sub_25B946ED8();
    v99 = 32;
    v100 = 7;
    v3 = swift_allocObject();
    v4 = v115;
    v95 = v3;
    *(v3 + 16) = v114;
    *(v3 + 24) = v4;
    v101 = swift_allocObject();
    *(v101 + 16) = v94;
    v112 = sub_25B946C18();
    v113 = sub_25B947448();
    v97 = 17;
    v103 = swift_allocObject();
    *(v103 + 16) = 32;
    v104 = swift_allocObject();
    v98 = 8;
    *(v104 + 16) = 8;
    v5 = swift_allocObject();
    v6 = v95;
    v96 = v5;
    *(v5 + 16) = v125;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v96;
    v105 = v7;
    *(v7 + 16) = v126;
    *(v7 + 24) = v8;
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    v107 = swift_allocObject();
    *(v107 + 16) = v98;
    v9 = swift_allocObject();
    v10 = v101;
    v102 = v9;
    *(v9 + 16) = v127;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v102;
    v109 = v11;
    *(v11 + 16) = v128;
    *(v11 + 24) = v12;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v108 = sub_25B947838();
    v110 = v13;

    v14 = v103;
    v15 = v110;
    *v110 = v129;
    v15[1] = v14;

    v16 = v104;
    v17 = v110;
    v110[2] = v130;
    v17[3] = v16;

    v18 = v105;
    v19 = v110;
    v110[4] = v131;
    v19[5] = v18;

    v20 = v106;
    v21 = v110;
    v110[6] = v132;
    v21[7] = v20;

    v22 = v107;
    v23 = v110;
    v110[8] = v133;
    v23[9] = v22;

    v24 = v109;
    v25 = v110;
    v110[10] = v134;
    v25[11] = v24;
    sub_25B8860FC();

    if (os_log_type_enabled(v112, v113))
    {
      v80 = sub_25B9474D8();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v81 = sub_25B8895FC(0, v79, v79);
      v82 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v84 = &v150;
      v150 = v80;
      v85 = &v149;
      v149 = v81;
      v86 = &v148;
      v148 = v82;
      v83 = 2;
      sub_25B889650(2, &v150);
      sub_25B889650(v83, v84);
      v26 = v116;
      v146 = v129;
      v147 = v103;
      sub_25B889664(&v146, v84, v85, v86);
      v87 = v26;
      v88 = v103;
      v89 = v104;
      v90 = v105;
      v91 = v106;
      v92 = v107;
      v93 = v109;
      if (v26)
      {
        v72 = v88;
        v73 = v89;
        v74 = v90;
        v75 = v91;
        v76 = v92;
        v77 = v93;
        v36 = v93;
        v35 = v92;
        v34 = v91;
        v33 = v90;
        v32 = v89;

        __break(1u);
      }

      else
      {
        v146 = v130;
        v147 = v104;
        sub_25B889664(&v146, &v150, &v149, &v148);
        v65 = 0;
        v66 = v103;
        v67 = v104;
        v68 = v105;
        v69 = v106;
        v70 = v107;
        v71 = v109;
        v146 = v131;
        v147 = v105;
        sub_25B889664(&v146, &v150, &v149, &v148);
        v58 = 0;
        v59 = v103;
        v60 = v104;
        v61 = v105;
        v62 = v106;
        v63 = v107;
        v64 = v109;
        v146 = v132;
        v147 = v106;
        sub_25B889664(&v146, &v150, &v149, &v148);
        v51 = 0;
        v52 = v103;
        v53 = v104;
        v54 = v105;
        v55 = v106;
        v56 = v107;
        v57 = v109;
        v146 = v133;
        v147 = v107;
        sub_25B889664(&v146, &v150, &v149, &v148);
        v44 = 0;
        v45 = v103;
        v46 = v104;
        v47 = v105;
        v48 = v106;
        v49 = v107;
        v50 = v109;
        v146 = v134;
        v147 = v109;
        sub_25B889664(&v146, &v150, &v149, &v148);
        v37 = 0;
        v38 = v103;
        v39 = v104;
        v40 = v105;
        v41 = v106;
        v42 = v107;
        v43 = v109;
        _os_log_impl(&dword_25B859000, v112, v113, "captured sysctl %s = %ld", v80, 0x16u);
        sub_25B8896B0(v81, 0, v79);
        sub_25B8896B0(v82, 1, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();

        v78 = v37;
      }
    }

    else
    {

      v78 = v116;
    }

    v31 = v78;
    MEMORY[0x277D82BD8](v112);
    (*(v136 + 8))(v139, v135);
    sub_25B946ED8();
    v28[2] = &v153;
    v153 = v94;
    v29 = 0;
    v154 = 0;
    v28[1] = v152;
    v152[0] = v114;
    v152[1] = v115;
    v28[3] = &v151;
    v30 = sub_25B908360();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6B8, &qword_25B94C770);
    sub_25B946F28();
    v30();
  }

  v28[0] = v118;

  result = __b;
  sub_25B909218(__b);
  return result;
}

void sub_25B909310()
{
  v311 = sub_25B8994FC;
  v312 = sub_25B88B668;
  v313 = sub_25B909308;
  v314 = sub_25B90EC3C;
  v315 = sub_25B88B5F4;
  v316 = sub_25B88B5F4;
  v317 = sub_25B88B6B4;
  v318 = sub_25B88B5F4;
  v319 = sub_25B88B5F4;
  v320 = sub_25B90EC88;
  v321 = sub_25B8994FC;
  v322 = sub_25B88B668;
  v323 = sub_25B909308;
  v324 = sub_25B90EC3C;
  v325 = sub_25B8A3B24;
  v326 = sub_25B8A3C9C;
  v327 = sub_25B8A3CE8;
  v328 = sub_25B88B5F4;
  v329 = sub_25B88B5F4;
  v330 = sub_25B88B6B4;
  v331 = sub_25B88B5F4;
  v332 = sub_25B88B5F4;
  v333 = sub_25B90EC88;
  v334 = sub_25B88B5F4;
  v335 = sub_25B88B5F4;
  v336 = sub_25B8A3EB8;
  v366 = 0;
  memset(__b, 0, sizeof(__b));
  v360 = 0;
  v361 = 0;
  v359 = 0;
  v358 = 0;
  v357 = 0;
  v1 = v337;
  v338 = sub_25B946C48();
  v339 = *(v338 - 8);
  v340 = v338 - 8;
  v341 = (v339[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v338);
  v342 = v69 - v341;
  v343 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69 - v341);
  v344 = v69 - v343;
  v366 = v0;
  sub_25B908594();
  v345 = v1;
  v346 = v1;
  if (!v1)
  {
    v307 = *sub_25B9084F0();
    sub_25B946ED8();
    v308 = &v367;
    sub_25B946EB8();
    memcpy(__b, v308, sizeof(__b));
    for (i = v345; ; i = v206)
    {
      v303 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A8, &qword_25B94C768);
      sub_25B946EF8();
      v304 = v362;
      v305 = v363;
      v306 = v364;
      if (!v363)
      {
        break;
      }

      v300 = v304;
      v301 = v305;
      v302 = v306;
      v280 = v306;
      v279 = v305;
      v278 = v304;
      v360 = v304;
      v361 = v305;
      v359 = v306;
      v276 = v339[2];
      v277 = v339 + 2;
      v276(v344, v310 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v338);
      sub_25B946ED8();
      v285 = 32;
      v286 = 7;
      v3 = swift_allocObject();
      v4 = v279;
      v281 = v3;
      *(v3 + 16) = v278;
      *(v3 + 24) = v4;
      v287 = swift_allocObject();
      *(v287 + 16) = v280;
      v298 = sub_25B946C18();
      v299 = sub_25B947448();
      v283 = 17;
      v289 = swift_allocObject();
      *(v289 + 16) = 32;
      v290 = swift_allocObject();
      v284 = 8;
      *(v290 + 16) = 8;
      v5 = swift_allocObject();
      v6 = v281;
      v282 = v5;
      *(v5 + 16) = v311;
      *(v5 + 24) = v6;
      v7 = swift_allocObject();
      v8 = v282;
      v291 = v7;
      *(v7 + 16) = v312;
      *(v7 + 24) = v8;
      v292 = swift_allocObject();
      *(v292 + 16) = 0;
      v293 = swift_allocObject();
      *(v293 + 16) = v284;
      v9 = swift_allocObject();
      v10 = v287;
      v288 = v9;
      *(v9 + 16) = v313;
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v288;
      v295 = v11;
      *(v11 + 16) = v314;
      *(v11 + 24) = v12;
      v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
      v294 = sub_25B947838();
      v296 = v13;

      v14 = v289;
      v15 = v296;
      *v296 = v315;
      v15[1] = v14;

      v16 = v290;
      v17 = v296;
      v296[2] = v316;
      v17[3] = v16;

      v18 = v291;
      v19 = v296;
      v296[4] = v317;
      v19[5] = v18;

      v20 = v292;
      v21 = v296;
      v296[6] = v318;
      v21[7] = v20;

      v22 = v293;
      v23 = v296;
      v296[8] = v319;
      v23[9] = v22;

      v24 = v295;
      v25 = v296;
      v296[10] = v320;
      v25[11] = v24;
      sub_25B8860FC();

      if (os_log_type_enabled(v298, v299))
      {
        v262 = sub_25B9474D8();
        v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v263 = sub_25B8895FC(0, v261, v261);
        v264 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v266 = &v351;
        v351 = v262;
        v267 = &v350;
        v350 = v263;
        v268 = &v349;
        v349 = v264;
        v265 = 2;
        sub_25B889650(2, &v351);
        sub_25B889650(v265, v266);
        v26 = v303;
        v347 = v315;
        v348 = v289;
        sub_25B889664(&v347, v266, v267, v268);
        v269 = v26;
        v270 = v289;
        v271 = v290;
        v272 = v291;
        v273 = v292;
        v274 = v293;
        v275 = v295;
        if (v26)
        {
          v254 = v270;
          v255 = v271;
          v256 = v272;
          v257 = v273;
          v258 = v274;
          v259 = v275;
          v218 = v275;
          v217 = v274;
          v216 = v273;
          v215 = v272;
          v214 = v271;

          __break(1u);
        }

        else
        {
          v347 = v316;
          v348 = v290;
          sub_25B889664(&v347, &v351, &v350, &v349);
          v247 = 0;
          v248 = v289;
          v249 = v290;
          v250 = v291;
          v251 = v292;
          v252 = v293;
          v253 = v295;
          v347 = v317;
          v348 = v291;
          sub_25B889664(&v347, &v351, &v350, &v349);
          v240 = 0;
          v241 = v289;
          v242 = v290;
          v243 = v291;
          v244 = v292;
          v245 = v293;
          v246 = v295;
          v347 = v318;
          v348 = v292;
          sub_25B889664(&v347, &v351, &v350, &v349);
          v233 = 0;
          v234 = v289;
          v235 = v290;
          v236 = v291;
          v237 = v292;
          v238 = v293;
          v239 = v295;
          v347 = v319;
          v348 = v293;
          sub_25B889664(&v347, &v351, &v350, &v349);
          v226 = 0;
          v227 = v289;
          v228 = v290;
          v229 = v291;
          v230 = v292;
          v231 = v293;
          v232 = v295;
          v347 = v320;
          v348 = v295;
          sub_25B889664(&v347, &v351, &v350, &v349);
          v219 = 0;
          v220 = v289;
          v221 = v290;
          v222 = v291;
          v223 = v292;
          v224 = v293;
          v225 = v295;
          _os_log_impl(&dword_25B859000, v298, v299, "Setting sysctl %s = %ld", v262, 0x16u);
          sub_25B8896B0(v263, 0, v261);
          sub_25B8896B0(v264, 1, MEMORY[0x277D84F70] + 8);
          sub_25B9474B8();

          v260 = v219;
        }
      }

      else
      {

        v260 = v303;
      }

      v211 = v260;
      MEMORY[0x277D82BD8](v298);
      v208 = v339[1];
      v209 = v339 + 1;
      v208(v344, v338);
      v210 = &v358;
      v358 = v280;
      type metadata accessor for Sysctl();
      v27 = v211;
      static Sysctl.setSysctl<A>(_:newValue:)(v278, v279, v210, MEMORY[0x277D83B88]);
      v212 = v27;
      v213 = v27;
      if (v27)
      {
        v28 = v342;
        v181 = v213;
        v179 = 0;
        v29 = v213;
        v357 = v181;
        v276(v28, v310 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v338);
        sub_25B946ED8();
        v189 = 32;
        v190 = 7;
        v30 = swift_allocObject();
        v31 = v279;
        v182 = v30;
        *(v30 + 16) = v278;
        *(v30 + 24) = v31;
        v180 = 24;
        v32 = swift_allocObject();
        v33 = v181;
        v184 = v32;
        *(v32 + 16) = v280;
        v34 = v33;
        v188 = swift_allocObject();
        *(v188 + 16) = v181;
        sub_25B8A1C38();

        v204 = sub_25B946C18();
        v205 = sub_25B947458();
        v186 = 17;
        v193 = swift_allocObject();
        *(v193 + 16) = 32;
        v194 = swift_allocObject();
        v187 = 8;
        *(v194 + 16) = 8;
        v35 = swift_allocObject();
        v36 = v182;
        v183 = v35;
        *(v35 + 16) = v321;
        *(v35 + 24) = v36;
        v37 = swift_allocObject();
        v38 = v183;
        v195 = v37;
        *(v37 + 16) = v322;
        *(v37 + 24) = v38;
        v196 = swift_allocObject();
        *(v196 + 16) = 0;
        v197 = swift_allocObject();
        *(v197 + 16) = v187;
        v39 = swift_allocObject();
        v40 = v184;
        v185 = v39;
        *(v39 + 16) = v323;
        *(v39 + 24) = v40;
        v41 = swift_allocObject();
        v42 = v185;
        v198 = v41;
        *(v41 + 16) = v324;
        *(v41 + 24) = v42;
        v199 = swift_allocObject();
        *(v199 + 16) = 64;
        v200 = swift_allocObject();
        *(v200 + 16) = v187;
        v43 = swift_allocObject();
        v44 = v188;
        v191 = v43;
        *(v43 + 16) = v325;
        *(v43 + 24) = v44;
        v45 = swift_allocObject();
        v46 = v191;
        v192 = v45;
        *(v45 + 16) = v326;
        *(v45 + 24) = v46;
        v47 = swift_allocObject();
        v48 = v192;
        v202 = v47;
        *(v47 + 16) = v327;
        *(v47 + 24) = v48;
        v201 = sub_25B947838();
        v203 = v49;

        v50 = v193;
        v51 = v203;
        *v203 = v328;
        v51[1] = v50;

        v52 = v194;
        v53 = v203;
        v203[2] = v329;
        v53[3] = v52;

        v54 = v195;
        v55 = v203;
        v203[4] = v330;
        v55[5] = v54;

        v56 = v196;
        v57 = v203;
        v203[6] = v331;
        v57[7] = v56;

        v58 = v197;
        v59 = v203;
        v203[8] = v332;
        v59[9] = v58;

        v60 = v198;
        v61 = v203;
        v203[10] = v333;
        v61[11] = v60;

        v62 = v199;
        v63 = v203;
        v203[12] = v334;
        v63[13] = v62;

        v64 = v200;
        v65 = v203;
        v203[14] = v335;
        v65[15] = v64;

        v66 = v202;
        v67 = v203;
        v203[16] = v336;
        v67[17] = v66;
        sub_25B8860FC();

        if (os_log_type_enabled(v204, v205))
        {
          v163 = sub_25B9474D8();
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
          v162 = 1;
          v164 = sub_25B8895FC(1, v161, v161);
          v165 = sub_25B8895FC(v162, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v166 = &v356;
          v356 = v163;
          v167 = &v355;
          v355 = v164;
          v168 = &v354;
          v354 = v165;
          sub_25B889650(2, &v356);
          sub_25B889650(3, v166);
          v68 = v179;
          v352 = v328;
          v353 = v193;
          sub_25B889664(&v352, v166, v167, v168);
          v169 = v68;
          v170 = v193;
          v171 = v194;
          v172 = v195;
          v173 = v196;
          v174 = v197;
          v175 = v198;
          v176 = v199;
          v177 = v200;
          v178 = v202;
          if (v68)
          {
            v151 = v170;
            v152 = v171;
            v153 = v172;
            v154 = v173;
            v155 = v174;
            v156 = v175;
            v157 = v176;
            v158 = v177;
            v159 = v178;
            v69[8] = v178;
            v69[7] = v177;
            v69[6] = v176;
            v69[5] = v175;
            v69[4] = v174;
            v69[3] = v173;
            v69[2] = v172;
            v69[1] = v171;

            __break(1u);
          }

          else
          {
            v352 = v329;
            v353 = v194;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v141 = 0;
            v142 = v193;
            v143 = v194;
            v144 = v195;
            v145 = v196;
            v146 = v197;
            v147 = v198;
            v148 = v199;
            v149 = v200;
            v150 = v202;
            v352 = v330;
            v353 = v195;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v131 = 0;
            v132 = v193;
            v133 = v194;
            v134 = v195;
            v135 = v196;
            v136 = v197;
            v137 = v198;
            v138 = v199;
            v139 = v200;
            v140 = v202;
            v352 = v331;
            v353 = v196;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v121 = 0;
            v122 = v193;
            v123 = v194;
            v124 = v195;
            v125 = v196;
            v126 = v197;
            v127 = v198;
            v128 = v199;
            v129 = v200;
            v130 = v202;
            v352 = v332;
            v353 = v197;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v111 = 0;
            v112 = v193;
            v113 = v194;
            v114 = v195;
            v115 = v196;
            v116 = v197;
            v117 = v198;
            v118 = v199;
            v119 = v200;
            v120 = v202;
            v352 = v333;
            v353 = v198;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v101 = 0;
            v102 = v193;
            v103 = v194;
            v104 = v195;
            v105 = v196;
            v106 = v197;
            v107 = v198;
            v108 = v199;
            v109 = v200;
            v110 = v202;
            v352 = v334;
            v353 = v199;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v91 = 0;
            v92 = v193;
            v93 = v194;
            v94 = v195;
            v95 = v196;
            v96 = v197;
            v97 = v198;
            v98 = v199;
            v99 = v200;
            v100 = v202;
            v352 = v335;
            v353 = v200;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v81 = 0;
            v82 = v193;
            v83 = v194;
            v84 = v195;
            v85 = v196;
            v86 = v197;
            v87 = v198;
            v88 = v199;
            v89 = v200;
            v90 = v202;
            v352 = v336;
            v353 = v202;
            sub_25B889664(&v352, &v356, &v355, &v354);
            v71 = 0;
            v72 = v193;
            v73 = v194;
            v74 = v195;
            v75 = v196;
            v76 = v197;
            v77 = v198;
            v78 = v199;
            v79 = v200;
            v80 = v202;
            _os_log_impl(&dword_25B859000, v204, v205, "Could not set sysctl %s to %ld: %@", v163, 0x20u);
            v70 = 1;
            sub_25B8896B0(v164, 1, v161);
            sub_25B8896B0(v165, v70, MEMORY[0x277D84F70] + 8);
            sub_25B9474B8();

            v160 = v71;
          }
        }

        else
        {

          v160 = v179;
        }

        v69[0] = v160;
        MEMORY[0x277D82BD8](v204);
        v208(v342, v338);

        v207 = v69[0];
      }

      else
      {
        v207 = 0;
      }

      v206 = v207;
    }

    sub_25B909218(__b);
  }
}

void sub_25B90BE08()
{
  v317 = sub_25B8994FC;
  v318 = sub_25B88B668;
  v319 = sub_25B909308;
  v320 = sub_25B90EC3C;
  v321 = sub_25B88B5F4;
  v322 = sub_25B88B5F4;
  v323 = sub_25B88B6B4;
  v324 = sub_25B88B5F4;
  v325 = sub_25B88B5F4;
  v326 = sub_25B90EC88;
  v327 = sub_25B8994FC;
  v328 = sub_25B88B668;
  v329 = sub_25B909308;
  v330 = sub_25B90EC3C;
  v331 = sub_25B8A3B24;
  v332 = sub_25B8A3C9C;
  v333 = sub_25B8A3CE8;
  v334 = sub_25B88B5F4;
  v335 = sub_25B88B5F4;
  v336 = sub_25B88B6B4;
  v337 = sub_25B88B5F4;
  v338 = sub_25B88B5F4;
  v339 = sub_25B90EC88;
  v340 = sub_25B88B5F4;
  v341 = sub_25B88B5F4;
  v342 = sub_25B8A3EB8;
  v374 = 0;
  v350 = __b;
  v352 = 40;
  memset(__b, 0, sizeof(__b));
  v368 = 0;
  v369 = 0;
  v367 = 0;
  v366 = 0;
  v365 = 0;
  v343 = sub_25B946C48();
  v344 = *(v343 - 8);
  v345 = v343 - 8;
  v346 = (v344[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v343);
  v347 = &v69 - v346;
  v348 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v69 - v346);
  v349 = &v69 - v348;
  v374 = v0;
  sub_25B908274();
  v351 = &v375;
  sub_25B946EB8();
  v2 = v353;
  memcpy(v350, v351, v352);
  for (i = v2; ; i = v215)
  {
    v312 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A8, &qword_25B94C768);
    sub_25B946EF8();
    v313 = v370;
    v314 = v371;
    v315 = v372;
    if (!v371)
    {
      break;
    }

    v309 = v313;
    v310 = v314;
    v311 = v315;
    v289 = v315;
    v288 = v314;
    v287 = v313;
    v368 = v313;
    v369 = v314;
    v367 = v315;
    v285 = v344[2];
    v286 = v344 + 2;
    v285(v349, v316 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v343);
    sub_25B946ED8();
    v294 = 32;
    v295 = 7;
    v3 = swift_allocObject();
    v4 = v288;
    v290 = v3;
    *(v3 + 16) = v287;
    *(v3 + 24) = v4;
    v296 = swift_allocObject();
    *(v296 + 16) = v289;
    v307 = sub_25B946C18();
    v308 = sub_25B947448();
    v292 = 17;
    v298 = swift_allocObject();
    *(v298 + 16) = 32;
    v299 = swift_allocObject();
    v293 = 8;
    *(v299 + 16) = 8;
    v5 = swift_allocObject();
    v6 = v290;
    v291 = v5;
    *(v5 + 16) = v317;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v291;
    v300 = v7;
    *(v7 + 16) = v318;
    *(v7 + 24) = v8;
    v301 = swift_allocObject();
    *(v301 + 16) = 0;
    v302 = swift_allocObject();
    *(v302 + 16) = v293;
    v9 = swift_allocObject();
    v10 = v296;
    v297 = v9;
    *(v9 + 16) = v319;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v297;
    v304 = v11;
    *(v11 + 16) = v320;
    *(v11 + 24) = v12;
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v303 = sub_25B947838();
    v305 = v13;

    v14 = v298;
    v15 = v305;
    *v305 = v321;
    v15[1] = v14;

    v16 = v299;
    v17 = v305;
    v305[2] = v322;
    v17[3] = v16;

    v18 = v300;
    v19 = v305;
    v305[4] = v323;
    v19[5] = v18;

    v20 = v301;
    v21 = v305;
    v305[6] = v324;
    v21[7] = v20;

    v22 = v302;
    v23 = v305;
    v305[8] = v325;
    v23[9] = v22;

    v24 = v304;
    v25 = v305;
    v305[10] = v326;
    v25[11] = v24;
    sub_25B8860FC();

    if (os_log_type_enabled(v307, v308))
    {
      v271 = sub_25B9474D8();
      v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v272 = sub_25B8895FC(0, v270, v270);
      v273 = sub_25B8895FC(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v275 = &v359;
      v359 = v271;
      v276 = &v358;
      v358 = v272;
      v277 = &v357;
      v357 = v273;
      v274 = 2;
      sub_25B889650(2, &v359);
      sub_25B889650(v274, v275);
      v26 = v312;
      v355 = v321;
      v356 = v298;
      sub_25B889664(&v355, v275, v276, v277);
      v278 = v26;
      v279 = v298;
      v280 = v299;
      v281 = v300;
      v282 = v301;
      v283 = v302;
      v284 = v304;
      if (v26)
      {
        v263 = v279;
        v264 = v280;
        v265 = v281;
        v266 = v282;
        v267 = v283;
        v268 = v284;
        v227 = v284;
        v226 = v283;
        v225 = v282;
        v224 = v281;
        v223 = v280;

        __break(1u);
      }

      else
      {
        v355 = v322;
        v356 = v299;
        sub_25B889664(&v355, &v359, &v358, &v357);
        v256 = 0;
        v257 = v298;
        v258 = v299;
        v259 = v300;
        v260 = v301;
        v261 = v302;
        v262 = v304;
        v355 = v323;
        v356 = v300;
        sub_25B889664(&v355, &v359, &v358, &v357);
        v249 = 0;
        v250 = v298;
        v251 = v299;
        v252 = v300;
        v253 = v301;
        v254 = v302;
        v255 = v304;
        v355 = v324;
        v356 = v301;
        sub_25B889664(&v355, &v359, &v358, &v357);
        v242 = 0;
        v243 = v298;
        v244 = v299;
        v245 = v300;
        v246 = v301;
        v247 = v302;
        v248 = v304;
        v355 = v325;
        v356 = v302;
        sub_25B889664(&v355, &v359, &v358, &v357);
        v235 = 0;
        v236 = v298;
        v237 = v299;
        v238 = v300;
        v239 = v301;
        v240 = v302;
        v241 = v304;
        v355 = v326;
        v356 = v304;
        sub_25B889664(&v355, &v359, &v358, &v357);
        v228 = 0;
        v229 = v298;
        v230 = v299;
        v231 = v300;
        v232 = v301;
        v233 = v302;
        v234 = v304;
        _os_log_impl(&dword_25B859000, v307, v308, "Restoring sysctl %s = %ld", v271, 0x16u);
        sub_25B8896B0(v272, 0, v270);
        sub_25B8896B0(v273, 1, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();

        v269 = v228;
      }
    }

    else
    {

      v269 = v312;
    }

    v220 = v269;
    MEMORY[0x277D82BD8](v307);
    v217 = v344[1];
    v218 = v344 + 1;
    v217(v349, v343);
    v219 = &v366;
    v366 = v289;
    type metadata accessor for Sysctl();
    v27 = v220;
    static Sysctl.setSysctl<A>(_:newValue:)(v287, v288, v219, MEMORY[0x277D83B88]);
    v221 = v27;
    v222 = v27;
    if (v27)
    {
      v28 = v347;
      v190 = v222;
      v188 = 0;
      v29 = v222;
      v365 = v190;
      v285(v28, v316 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger, v343);
      sub_25B946ED8();
      v198 = 32;
      v199 = 7;
      v30 = swift_allocObject();
      v31 = v288;
      v191 = v30;
      *(v30 + 16) = v287;
      *(v30 + 24) = v31;
      v189 = 24;
      v32 = swift_allocObject();
      v33 = v190;
      v193 = v32;
      *(v32 + 16) = v289;
      v34 = v33;
      v197 = swift_allocObject();
      *(v197 + 16) = v190;
      sub_25B8A1C38();

      v213 = sub_25B946C18();
      v214 = sub_25B947458();
      v195 = 17;
      v202 = swift_allocObject();
      *(v202 + 16) = 32;
      v203 = swift_allocObject();
      v196 = 8;
      *(v203 + 16) = 8;
      v35 = swift_allocObject();
      v36 = v191;
      v192 = v35;
      *(v35 + 16) = v327;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v192;
      v204 = v37;
      *(v37 + 16) = v328;
      *(v37 + 24) = v38;
      v205 = swift_allocObject();
      *(v205 + 16) = 0;
      v206 = swift_allocObject();
      *(v206 + 16) = v196;
      v39 = swift_allocObject();
      v40 = v193;
      v194 = v39;
      *(v39 + 16) = v329;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v194;
      v207 = v41;
      *(v41 + 16) = v330;
      *(v41 + 24) = v42;
      v208 = swift_allocObject();
      *(v208 + 16) = 64;
      v209 = swift_allocObject();
      *(v209 + 16) = v196;
      v43 = swift_allocObject();
      v44 = v197;
      v200 = v43;
      *(v43 + 16) = v331;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v200;
      v201 = v45;
      *(v45 + 16) = v332;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v201;
      v211 = v47;
      *(v47 + 16) = v333;
      *(v47 + 24) = v48;
      v210 = sub_25B947838();
      v212 = v49;

      v50 = v202;
      v51 = v212;
      *v212 = v334;
      v51[1] = v50;

      v52 = v203;
      v53 = v212;
      v212[2] = v335;
      v53[3] = v52;

      v54 = v204;
      v55 = v212;
      v212[4] = v336;
      v55[5] = v54;

      v56 = v205;
      v57 = v212;
      v212[6] = v337;
      v57[7] = v56;

      v58 = v206;
      v59 = v212;
      v212[8] = v338;
      v59[9] = v58;

      v60 = v207;
      v61 = v212;
      v212[10] = v339;
      v61[11] = v60;

      v62 = v208;
      v63 = v212;
      v212[12] = v340;
      v63[13] = v62;

      v64 = v209;
      v65 = v212;
      v212[14] = v341;
      v65[15] = v64;

      v66 = v211;
      v67 = v212;
      v212[16] = v342;
      v67[17] = v66;
      sub_25B8860FC();

      if (os_log_type_enabled(v213, v214))
      {
        v172 = sub_25B9474D8();
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v171 = 1;
        v173 = sub_25B8895FC(1, v170, v170);
        v174 = sub_25B8895FC(v171, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v175 = &v364;
        v364 = v172;
        v176 = &v363;
        v363 = v173;
        v177 = &v362;
        v362 = v174;
        sub_25B889650(2, &v364);
        sub_25B889650(3, v175);
        v68 = v188;
        v360 = v334;
        v361 = v202;
        sub_25B889664(&v360, v175, v176, v177);
        v178 = v68;
        v179 = v202;
        v180 = v203;
        v181 = v204;
        v182 = v205;
        v183 = v206;
        v184 = v207;
        v185 = v208;
        v186 = v209;
        v187 = v211;
        if (v68)
        {
          v160 = v179;
          v161 = v180;
          v162 = v181;
          v163 = v182;
          v164 = v183;
          v165 = v184;
          v166 = v185;
          v167 = v186;
          v168 = v187;
          v78 = v187;
          v77 = v186;
          v76 = v185;
          v75 = v184;
          v74 = v183;
          v73 = v182;
          v72 = v181;
          v71 = v180;

          __break(1u);
        }

        else
        {
          v360 = v335;
          v361 = v203;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v150 = 0;
          v151 = v202;
          v152 = v203;
          v153 = v204;
          v154 = v205;
          v155 = v206;
          v156 = v207;
          v157 = v208;
          v158 = v209;
          v159 = v211;
          v360 = v336;
          v361 = v204;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v140 = 0;
          v141 = v202;
          v142 = v203;
          v143 = v204;
          v144 = v205;
          v145 = v206;
          v146 = v207;
          v147 = v208;
          v148 = v209;
          v149 = v211;
          v360 = v337;
          v361 = v205;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v130 = 0;
          v131 = v202;
          v132 = v203;
          v133 = v204;
          v134 = v205;
          v135 = v206;
          v136 = v207;
          v137 = v208;
          v138 = v209;
          v139 = v211;
          v360 = v338;
          v361 = v206;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v120 = 0;
          v121 = v202;
          v122 = v203;
          v123 = v204;
          v124 = v205;
          v125 = v206;
          v126 = v207;
          v127 = v208;
          v128 = v209;
          v129 = v211;
          v360 = v339;
          v361 = v207;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v110 = 0;
          v111 = v202;
          v112 = v203;
          v113 = v204;
          v114 = v205;
          v115 = v206;
          v116 = v207;
          v117 = v208;
          v118 = v209;
          v119 = v211;
          v360 = v340;
          v361 = v208;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v100 = 0;
          v101 = v202;
          v102 = v203;
          v103 = v204;
          v104 = v205;
          v105 = v206;
          v106 = v207;
          v107 = v208;
          v108 = v209;
          v109 = v211;
          v360 = v341;
          v361 = v209;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v90 = 0;
          v91 = v202;
          v92 = v203;
          v93 = v204;
          v94 = v205;
          v95 = v206;
          v96 = v207;
          v97 = v208;
          v98 = v209;
          v99 = v211;
          v360 = v342;
          v361 = v211;
          sub_25B889664(&v360, &v364, &v363, &v362);
          v80 = 0;
          v81 = v202;
          v82 = v203;
          v83 = v204;
          v84 = v205;
          v85 = v206;
          v86 = v207;
          v87 = v208;
          v88 = v209;
          v89 = v211;
          _os_log_impl(&dword_25B859000, v213, v214, "Could not restore %s to %ld: %@", v172, 0x20u);
          v79 = 1;
          sub_25B8896B0(v173, 1, v170);
          sub_25B8896B0(v174, v79, MEMORY[0x277D84F70] + 8);
          sub_25B9474B8();

          v169 = v80;
        }
      }

      else
      {

        v169 = v188;
      }

      v70 = v169;
      MEMORY[0x277D82BD8](v213);
      v217(v347, v343);

      v216 = v70;
    }

    else
    {
      v216 = 0;
    }

    v215 = v216;
  }

  sub_25B909218(__b);
}

uint64_t LogLevels.deinit()
{
  v3 = OBJC_IVAR____TtC11NetworkInfo9LogLevels_logger;
  v1 = sub_25B946C48();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_25B86CFA0((v0 + OBJC_IVAR____TtC11NetworkInfo9LogLevels_originalLogLevels));
  return v4;
}

uint64_t sub_25B90E9A0()
{
  sub_25B946F48("com.apple.NetworkInfoDiagnostic", 31, 1);
  sub_25B946F48("collection", 10, 1);
  sub_25B946C28();
  v2 = OBJC_IVAR____TtC11NetworkInfo9LogLevels_originalLogLevels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6A0, &qword_25B94C760);
  sub_25B947838();
  v0 = sub_25B946EC8();
  result = v3;
  *(v3 + v2) = v0;
  return result;
}

uint64_t sub_25B90EBC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25B90EC88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_25B90ECFC();
  v5 = MEMORY[0x277D83B88];

  return sub_25B8A34EC(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_25B90ECFC()
{
  v2 = qword_27FBAB6B0;
  if (!qword_27FBAB6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for LogLevels(uint64_t a1)
{
  v2 = qword_27FBAB6C0;
  if (!qword_27FBAB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_25B90F924(uint64_t a1)
{
  updated = sub_25B946C48();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bridgeSetMemberInterfaces(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v55 = "bridgeSetMemberInterfaces(_:)";
  v56 = sub_25B910408;
  v57 = sub_25B8A3C9C;
  v58 = sub_25B8A3CE8;
  v59 = sub_25B88B5F4;
  v60 = sub_25B88B5F4;
  v61 = sub_25B8A3EB8;
  v83 = 0;
  v82 = 0;
  v77 = 0uLL;
  v78 = 0;
  v67 = 0;
  v62 = sub_25B946C48();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v70);
  v66 = v28 - v65;
  v83 = v2;
  v82 = v1;
  MEMORY[0x277D82BE0](v1);
  sub_25B946ED8();
  type metadata accessor for SCNetworkInterface(v67);
  v68 = sub_25B9471B8();
  v71 = SCBridgeInterfaceSetMemberInterfaces();
  MEMORY[0x277D82BD8](v68);

  MEMORY[0x277D82BD8](v70);
  if (!v71)
  {
    v3 = v66;
    static SCError.current(_:)(v55, 0x1DuLL, 2u, &v79);
    v37 = v79;
    v38 = v80;
    v39 = v81;
    v77 = v79;
    LOBYTE(v78) = v80;
    HIDWORD(v78) = v81;
    v4 = sub_25B917470();
    (*(v63 + 16))(v3, v4, v62);
    v43 = 7;
    v5 = swift_allocObject();
    v6 = v37.n128_u64[1];
    v7 = v38;
    v8 = v39;
    v41 = v5;
    *(v5 + 16) = v37.n128_u64[0];
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    *(v5 + 36) = v8;
    sub_25B8A1C38();

    v52 = sub_25B946C18();
    v53 = sub_25B947458();
    v40 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v9 = swift_allocObject();
    v10 = v41;
    v44 = v9;
    *(v9 + 16) = v56;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v44;
    v45 = v11;
    *(v11 + 16) = v57;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v45;
    v49 = v13;
    *(v13 + 16) = v58;
    *(v13 + 24) = v14;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v48 = sub_25B947838();
    v50 = v15;

    v16 = v46;
    v17 = v50;
    *v50 = v59;
    v17[1] = v16;

    v18 = v47;
    v19 = v50;
    v50[2] = v60;
    v19[3] = v18;

    v20 = v49;
    v21 = v50;
    v50[4] = v61;
    v21[5] = v20;
    sub_25B8860FC();

    if (os_log_type_enabled(v52, v53))
    {
      v30 = sub_25B9474D8();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v31 = sub_25B8895FC(1, v29, v29);
      v32 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v33 = &v76;
      v76 = v30;
      v34 = &v75;
      v75 = v31;
      v35 = &v74;
      v74 = v32;
      sub_25B889650(2, &v76);
      sub_25B889650(1, v33);
      v22 = v54;
      v72 = v59;
      v73 = v46;
      sub_25B889664(&v72, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v72 = v60;
        v73 = v47;
        sub_25B889664(&v72, &v76, &v75, &v74);
        v28[2] = 0;
        v72 = v61;
        v73 = v49;
        sub_25B889664(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_25B859000, v52, v53, "Unable to set bridge interface member interfaces: %@", v30, 0xCu);
        sub_25B8896B0(v31, 1, v29);
        sub_25B8896B0(v32, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v52);
    (*(v63 + 8))(v66, v62);
    sub_25B9115BC();
    v23 = swift_allocError();
    v24 = v37.n128_u64[1];
    v25 = v38;
    v26 = v39;
    v28[1] = v23;
    *v27 = v37.n128_u64[0];
    *(v27 + 8) = v24;
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;
    swift_willThrow();
  }
}

uint64_t sub_25B910354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v8 = HIDWORD(a3);
  sub_25B9115BC();
  result = swift_allocError();
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = v7;
  *(v4 + 20) = v8;
  return result;
}

uint64_t sub_25B910408()
{
  LOBYTE(v2) = *(v0 + 32);
  HIDWORD(v2) = *(v0 + 36);
  return sub_25B910354(*(v0 + 16), *(v0 + 24), v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bridgeDisplayName(_:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v56 = "bridgeDisplayName(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v78 = 0uLL;
  v79 = 0;
  v63 = sub_25B946C48();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v71);
  v67 = v29 - v66;
  v84 = v2;
  v85 = v3;
  v83 = v1;
  MEMORY[0x277D82BE0](v1);
  sub_25B946ED8();
  v69 = sub_25B946F58();
  v72 = SCBridgeInterfaceSetLocalizedDisplayName();
  MEMORY[0x277D82BD8](v69);

  MEMORY[0x277D82BD8](v71);
  if (!v72)
  {
    v4 = v67;
    static SCError.current(_:)(v56, 0x15uLL, 2u, &v80);
    v38 = v80;
    v39 = v81;
    v40 = v82;
    v78 = v80;
    LOBYTE(v79) = v81;
    HIDWORD(v79) = v82;
    v5 = sub_25B917470();
    (*(v64 + 16))(v4, v5, v63);
    v44 = 7;
    v6 = swift_allocObject();
    v7 = v38.n128_u64[1];
    v8 = v39;
    v9 = v40;
    v42 = v6;
    *(v6 + 16) = v38.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v10 = swift_allocObject();
    v11 = v42;
    v45 = v10;
    *(v10 + 16) = v57;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v45;
    v46 = v12;
    *(v12 + 16) = v58;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v50 = v14;
    *(v14 + 16) = v59;
    *(v14 + 24) = v15;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v16;

    v17 = v47;
    v18 = v51;
    *v51 = v60;
    v18[1] = v17;

    v19 = v48;
    v20 = v51;
    v51[2] = v61;
    v20[3] = v19;

    v21 = v50;
    v22 = v51;
    v51[4] = v62;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v77;
      v77 = v31;
      v35 = &v76;
      v76 = v32;
      v36 = &v75;
      v75 = v33;
      sub_25B889650(2, &v77);
      sub_25B889650(1, v34);
      v23 = v55;
      v73 = v60;
      v74 = v47;
      sub_25B889664(&v73, v34, v35, v36);
      v37 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v73 = v61;
        v74 = v48;
        sub_25B889664(&v73, &v77, &v76, &v75);
        v29[1] = 0;
        v73 = v62;
        v74 = v50;
        sub_25B889664(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to set bridge interface localized display name: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v64 + 8))(v67, v63);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v38.n128_u64[1];
    v26 = v39;
    v27 = v40;
    v29[0] = v24;
    *v28 = v38.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCNetworkInterfaceRef.bridgeRemove()()
{
  v52 = "bridgeRemove()";
  v53 = sub_25B910408;
  v54 = sub_25B8A3C9C;
  v55 = sub_25B8A3CE8;
  v56 = sub_25B88B5F4;
  v57 = sub_25B88B5F4;
  v58 = sub_25B8A3EB8;
  v76 = 0;
  v71 = 0uLL;
  v72 = 0;
  v59 = sub_25B946C48();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = v25 - v62;
  v76 = MEMORY[0x28223BE20](v64);
  MEMORY[0x277D82BE0](v76);
  v65 = SCBridgeInterfaceRemove();
  MEMORY[0x277D82BD8](v64);
  if (!v65)
  {
    v0 = v63;
    static SCError.current(_:)(v52, 0xEuLL, 2u, &v73);
    v34 = v73;
    v35 = v74;
    v36 = v75;
    v71 = v73;
    LOBYTE(v72) = v74;
    HIDWORD(v72) = v75;
    v1 = sub_25B917470();
    (*(v60 + 16))(v0, v1, v59);
    v40 = 7;
    v2 = swift_allocObject();
    v3 = v34.n128_u64[1];
    v4 = v35;
    v5 = v36;
    v38 = v2;
    *(v2 + 16) = v34.n128_u64[0];
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    *(v2 + 36) = v5;
    sub_25B8A1C38();

    v49 = sub_25B946C18();
    v50 = sub_25B947458();
    v37 = 17;
    v43 = swift_allocObject();
    *(v43 + 16) = 64;
    v44 = swift_allocObject();
    *(v44 + 16) = 8;
    v39 = 32;
    v6 = swift_allocObject();
    v7 = v38;
    v41 = v6;
    *(v6 + 16) = v53;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v41;
    v42 = v8;
    *(v8 + 16) = v54;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v42;
    v46 = v10;
    *(v10 + 16) = v55;
    *(v10 + 24) = v11;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v45 = sub_25B947838();
    v47 = v12;

    v13 = v43;
    v14 = v47;
    *v47 = v56;
    v14[1] = v13;

    v15 = v44;
    v16 = v47;
    v47[2] = v57;
    v16[3] = v15;

    v17 = v46;
    v18 = v47;
    v47[4] = v58;
    v18[5] = v17;
    sub_25B8860FC();

    if (os_log_type_enabled(v49, v50))
    {
      v27 = sub_25B9474D8();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v28 = sub_25B8895FC(1, v26, v26);
      v29 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v30 = &v70;
      v70 = v27;
      v31 = &v69;
      v69 = v28;
      v32 = &v68;
      v68 = v29;
      sub_25B889650(2, &v70);
      sub_25B889650(1, v30);
      v19 = v51;
      v66 = v56;
      v67 = v43;
      sub_25B889664(&v66, v30, v31, v32);
      v33 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v66 = v57;
        v67 = v44;
        sub_25B889664(&v66, &v70, &v69, &v68);
        v25[2] = 0;
        v66 = v58;
        v67 = v46;
        sub_25B889664(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_25B859000, v49, v50, "Unable to remove bridge interface: %@", v27, 0xCu);
        sub_25B8896B0(v28, 1, v26);
        sub_25B8896B0(v29, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v49);
    (*(v60 + 8))(v63, v59);
    sub_25B9115BC();
    v20 = swift_allocError();
    v21 = v34.n128_u64[1];
    v22 = v35;
    v23 = v36;
    v25[1] = v20;
    *v24 = v34.n128_u64[0];
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;
    *(v24 + 20) = v23;
    swift_willThrow();
  }
}

unint64_t sub_25B9115BC()
{
  v2 = qword_27FBAB6D0;
  if (!qword_27FBAB6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB6D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkInterfaceEntity(interfaceName:entity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  sub_25B946ED8();
  ifname = sub_25B946F58();
  sub_25B946ED8();
  v5 = sub_25B946F58();
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(allocator, domain, ifname, v5);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](ifname);

  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v10 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkInterfaceEntity);
  return v10;
}

uint64_t static SCDynamicStoreRef.notifications(name:keys:patterns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v14 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v18 = sub_25B91385C;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6D8, &qword_25B94C798) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v21);
  v17 = &v12 - v13;
  v32 = v7;
  v33 = v6;
  v31 = v8;
  v30 = v9;
  v29 = v5;
  sub_25B946ED8();
  sub_25B946ED8();
  sub_25B946ED8();
  v19 = &v24;
  v25 = v14;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v20 = type metadata accessor for SCDynamicStore(0);
  sub_25B914F5C();
  v16 = v10;
  sub_25B914F70(v17);
  sub_25B947348();
}

CFPropertyListRef SCDynamicStoreRef.value(key:)(uint64_t a1, uint64_t a2)
{
  v102 = a1;
  v104 = a2;
  v85 = "value(key:)";
  v86 = sub_25B8994FC;
  v87 = sub_25B88B668;
  v88 = sub_25B910408;
  v89 = sub_25B8A3C9C;
  v90 = sub_25B8A3CE8;
  v91 = sub_25B88B5F4;
  v92 = sub_25B88B5F4;
  v93 = sub_25B88B6B4;
  v94 = sub_25B88B5F4;
  v95 = sub_25B88B5F4;
  v96 = sub_25B8A3EB8;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v113 = 0uLL;
  v114 = 0;
  v107 = 0;
  v97 = sub_25B946C48();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v105);
  v101 = v43 - v100;
  v119 = v3;
  v120 = v4;
  v118 = v2;
  MEMORY[0x277D82BE0](v2);
  sub_25B946ED8();
  v103 = sub_25B946F58();
  v106 = SCDynamicStoreCopyValue(v105, v103);
  MEMORY[0x277D82BD8](v103);

  MEMORY[0x277D82BD8](v105);
  if (v106)
  {
    v83 = v106;
    result = v106;
    v107 = v106;
  }

  else
  {
    v6 = v101;
    SCError.init(context:rawValue:)(v85, 0xBuLL, 2u, 1004, &v115);
    v60 = v115;
    v61 = v116;
    v62 = v117;
    v113 = v115;
    LOBYTE(v114) = v116;
    HIDWORD(v114) = v117;
    v7 = sub_25B91292C();
    (*(v98 + 16))(v6, v7, v97);
    sub_25B946ED8();
    v68 = 32;
    v69 = 7;
    v8 = swift_allocObject();
    v9 = v104;
    v63 = v8;
    *(v8 + 16) = v102;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v60.n128_u64[1];
    v12 = v61;
    v13 = v62;
    v67 = v10;
    *(v10 + 16) = v60.n128_u64[0];
    *(v10 + 24) = v11;
    *(v10 + 32) = v12;
    *(v10 + 36) = v13;
    sub_25B8A1C38();

    v81 = sub_25B946C18();
    v82 = sub_25B947458();
    v65 = 17;
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    v66 = 8;
    *(v73 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v63;
    v64 = v14;
    *(v14 + 16) = v86;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v64;
    v74 = v16;
    *(v16 + 16) = v87;
    *(v16 + 24) = v17;
    v75 = swift_allocObject();
    *(v75 + 16) = 64;
    v76 = swift_allocObject();
    *(v76 + 16) = v66;
    v18 = swift_allocObject();
    v19 = v67;
    v70 = v18;
    *(v18 + 16) = v88;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v70;
    v71 = v20;
    *(v20 + 16) = v89;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v71;
    v78 = v22;
    *(v22 + 16) = v90;
    *(v22 + 24) = v23;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v77 = sub_25B947838();
    v79 = v24;

    v25 = v72;
    v26 = v79;
    *v79 = v91;
    v26[1] = v25;

    v27 = v73;
    v28 = v79;
    v79[2] = v92;
    v28[3] = v27;

    v29 = v74;
    v30 = v79;
    v79[4] = v93;
    v30[5] = v29;

    v31 = v75;
    v32 = v79;
    v79[6] = v94;
    v32[7] = v31;

    v33 = v76;
    v34 = v79;
    v79[8] = v95;
    v34[9] = v33;

    v35 = v78;
    v36 = v79;
    v79[10] = v96;
    v36[11] = v35;
    sub_25B8860FC();

    if (os_log_type_enabled(v81, v82))
    {
      v52 = sub_25B9474D8();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v51 = 1;
      v53 = sub_25B8895FC(1, v50, v50);
      v54 = sub_25B8895FC(v51, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v56 = &v112;
      v112 = v52;
      v57 = &v111;
      v111 = v53;
      v58 = &v110;
      v110 = v54;
      v55 = 2;
      sub_25B889650(2, &v112);
      sub_25B889650(v55, v56);
      v37 = v84;
      v108 = v91;
      v109 = v72;
      sub_25B889664(&v108, v56, v57, v58);
      v59 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v108 = v92;
        v109 = v73;
        sub_25B889664(&v108, &v112, &v111, &v110);
        v48 = 0;
        v108 = v93;
        v109 = v74;
        sub_25B889664(&v108, &v112, &v111, &v110);
        v47 = 0;
        v108 = v94;
        v109 = v75;
        sub_25B889664(&v108, &v112, &v111, &v110);
        v46 = 0;
        v108 = v95;
        v109 = v76;
        sub_25B889664(&v108, &v112, &v111, &v110);
        v45 = 0;
        v108 = v96;
        v109 = v78;
        sub_25B889664(&v108, &v112, &v111, &v110);
        _os_log_impl(&dword_25B859000, v81, v82, "Unable to find value for key %s: %@", v52, 0x16u);
        v44 = 1;
        sub_25B8896B0(v53, 1, v50);
        sub_25B8896B0(v54, v44, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v81);
    (*(v98 + 8))(v101, v97);
    sub_25B9115BC();
    v38 = swift_allocError();
    v39 = v60.n128_u64[1];
    v40 = v61;
    v41 = v62;
    v43[1] = v38;
    *v42 = v60.n128_u64[0];
    *(v42 + 8) = v39;
    *(v42 + 16) = v40;
    *(v42 + 20) = v41;
    swift_willThrow();
    return v49;
  }

  return result;
}

uint64_t static SCDynamicStoreRef.Keys.createNetworkGlobalEntity(entity:)(uint64_t a1, uint64_t a2)
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  domain = *MEMORY[0x277CE1648];
  MEMORY[0x277D82BE0](*MEMORY[0x277CE1648]);
  sub_25B946ED8();
  v3 = sub_25B946F58();
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator, domain, v3);
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](domain);
  MEMORY[0x277D82BD8](allocator);
  v7 = sub_25B946F78();
  MEMORY[0x277D82BD8](NetworkGlobalEntity);
  return v7;
}

uint64_t sub_25B9128E0()
{
  v1 = sub_25B946C48();
  __swift_allocate_value_buffer(v1, qword_27FBB1158);
  __swift_project_value_buffer(v1, qword_27FBB1158);
  return sub_25B946C38();
}

uint64_t sub_25B91292C()
{
  if (qword_27FBAAA78 != -1)
  {
    swift_once();
  }

  v0 = sub_25B946C48();
  return __swift_project_value_buffer(v0, qword_27FBB1158);
}

uint64_t sub_25B912998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B91292C();
  v1 = sub_25B946C48();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

SCDynamicStoreRef sub_25B9129FC(uint64_t a1, uint64_t a2, void (__cdecl *a3)(SCDynamicStoreRef, CFArrayRef, void *), SCDynamicStoreContext *a4)
{
  allocator = *MEMORY[0x277CBECE8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBECE8]);
  sub_25B946ED8();
  v9 = sub_25B946F58();
  v11 = SCDynamicStoreCreate(allocator, v9, a3, a4);
  MEMORY[0x277D82BD8](v9);

  MEMORY[0x277D82BD8](allocator);
  MEMORY[0x277D82BE0](v11);
  if (v11)
  {
    MEMORY[0x277D82BD8](v11);
    return v11;
  }

  else
  {
    sub_25B9115BC();
    swift_allocError();
    SCError.init(context:rawValue:)("create(name:callback:context:)", 0x1EuLL, 2u, 1001, v5);
    swift_willThrow();
    MEMORY[0x277D82BD8](0);
    return v6;
  }
}

uint64_t sub_25B912BB8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B912C7C(uint64_t a1)
{
  v10 = a1;
  v13 = 0;
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v7 + 16))();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation, v6, v9);
  (*(v7 + 8))(v10, v9);
  return v11;
}

uint64_t sub_25B912DBC()
{
  v3 = OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_25B912EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v67 = a1;
  v77 = a2;
  v76 = a3;
  v61._rawValue = a4;
  v62._rawValue = a5;
  v69 = sub_25B9138DC;
  v70 = sub_25B913934;
  v71 = sub_25B913A9C;
  v74 = sub_25B913CE8;
  v49 = sub_25B917060;
  __b[5] = *MEMORY[0x277D85DE8];
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v75 = __b;
  memset(__b, 0, 0x28uLL);
  v88 = 0;
  v87 = 0;
  v82 = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB700, &qword_25B94C7C8);
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v54 = &v25[-v53];
  v72 = 0;
  v55 = (*(*(sub_25B947478() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v56 = &v25[-v55];
  v57 = (*(*(sub_25B947468() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v58 = &v25[-v57];
  v5 = sub_25B946E88();
  v59 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v60 = &v25[-v59];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v63 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v72);
  v68 = &v25[-v63];
  v94 = v7;
  v92 = v8;
  v93 = v9;
  v91 = v10;
  v90 = v11;
  _s4InfoCMa(v6);
  (*(v64 + 16))(v68, v67, v66);
  v73 = sub_25B912C30(v68);
  v89 = v73;
  __b[0] = 1;
  __b[1] = v73;
  __b[2] = v69;
  __b[3] = v70;
  __b[4] = v71;
  type metadata accessor for SCDynamicStore(v72);
  v12 = sub_25B9129FC(v77, v76, v74, v75);
  v78 = 0;
  v79 = v12;
  v80 = 0;
  v13 = v12;
  v46 = v12;
  MEMORY[0x277D82BE0](v12);
  v88 = v13;
  SCDynamicStoreRef.notificationKeys(_:_:)(v61, v62);
  v47 = v14;
  v48 = v14;
  if (v14)
  {
    v26 = v48;
    MEMORY[0x277D82BD8](v46);
    v28 = v26;
    v27 = 1;
    v30 = v27;
    v29 = v28;
    v23 = v28;
    v87 = v29;
    v24 = v29;
    v95 = v29;
    sub_25B947308();

    if (v30)
    {
      MEMORY[0x277D82BD8](v88);
    }

    sub_25B913870();
  }

  else
  {
    MEMORY[0x277D82BD8](v46);
    v42 = 0;
    v35 = sub_25B8A4858();
    v32 = 36;
    v15 = sub_25B947818();
    v37 = &v85;
    v85 = v15;
    v86 = v16;
    v34 = 1;
    v17 = sub_25B946F48("com.apple.Manta.SCDynamicStoreQueue.", v32, 1);
    v33 = v18;
    MEMORY[0x25F8715F0](v17);

    v83 = v77;
    v84 = v76;
    sub_25B9477F8();
    v19 = sub_25B946F48("", v42, v34 & 1);
    v36 = v20;
    MEMORY[0x25F8715F0](v19);

    v39 = v85;
    v38 = v86;
    sub_25B946ED8();
    sub_25B86AEEC(v37);
    v40 = sub_25B946FE8();
    v41 = v21;
    sub_25B89CE88();
    sub_25B89CEA0();
    sub_25B89CF40(v56);
    v44 = sub_25B947498();
    v82 = v44;
    v43 = v88;
    MEMORY[0x277D82BE0](v88);
    MEMORY[0x277D82BE0](v44);
    SCDynamicStoreRef.dispatchQueue(_:)(v44);
    v45 = 0;
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    v31 = v88;
    MEMORY[0x277D82BE0](v88);
    MEMORY[0x277D82BE0](v31);
    *(swift_allocObject() + 16) = v31;
    sub_25B9472C8();
    v81 = v31;
    sub_25B9472F8();
    (*(v51 + 8))(v54, v50);
    MEMORY[0x277D82BD8](v88);
    sub_25B913870();
  }
}

uint64_t sub_25B91388C(uint64_t a1)
{

  return a1;
}

uint64_t sub_25B9138F4()
{
}

uint64_t sub_25B91394C(uint64_t a1)
{
  v7[3] = a1;

  v7[2] = a1;
  v7[0] = sub_25B947818();
  v7[1] = v1;
  v2 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v2);

  _s4InfoCMa(0);
  sub_25B9477D8();
  v3 = sub_25B946F48("", 0, 1);
  MEMORY[0x25F8715F0](v3);

  sub_25B946ED8();
  sub_25B86AEEC(v7);
  sub_25B946FE8();
  v6 = sub_25B946F58();
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BD8](v6);

  return v6;
}

uint64_t sub_25B913AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB6E0, &qword_25B94C7A0);
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v12 = v7 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB700, &qword_25B94C7C8);
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20](v15);
  v20 = v7 - v19;
  v25 = result;
  v24 = v4;
  v23 = v5;
  if (v5)
  {
    v7[1] = v14;
    v6 = v12;
    v7[0] = v14;
    v22 = v14;

    (*(v9 + 16))(v6, v7[0] + OBJC_IVAR____TtCE11NetworkInfoaSo17SCDynamicStoreRef4Info_continuation, v8);

    MEMORY[0x277D82BE0](v15);
    v21 = v15;
    sub_25B9472F8();
    (*(v9 + 8))(v12, v8);
    return (*(v17 + 8))(v20, v16);
  }

  return result;
}

uint64_t sub_25B913CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a2);
  sub_25B913AB4(a1, a2, a3);
  MEMORY[0x277D82BD8](a2);
  return MEMORY[0x277D82BD8](a1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCDynamicStoreRef.notificationKeys(_:_:)(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  rawValue = a1._rawValue;
  v71 = a2._rawValue;
  v64 = "notificationKeys(_:_:)";
  v65 = sub_25B910408;
  v66 = sub_25B8A3C9C;
  v67 = sub_25B8A3CE8;
  v68 = sub_25B88B5F4;
  v69 = sub_25B88B5F4;
  v70 = sub_25B8A3EB8;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v85 = 0uLL;
  v86 = 0;
  v73 = sub_25B946C48();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v29 - v76;
  v94 = MEMORY[0x28223BE20](rawValue);
  v93 = v3;
  v92 = v2;
  v91 = v94;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  v79 = sub_25B89906C();
  if (sub_25B9473E8())
  {
    v61 = 0;
  }

  else
  {
    sub_25B946ED8();
    v60 = sub_25B9471B8();

    v61 = v60;
  }

  v59 = v61;
  v90 = v71;
  if (sub_25B9473E8())
  {
    v58 = 0;
  }

  else
  {
    sub_25B946ED8();
    v57 = sub_25B9471B8();

    v58 = v57;
  }

  v55 = v58;
  v56 = SCDynamicStoreSetNotificationKeys(v62, v59, v58);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v59);
  if (!v56)
  {
    v4 = v77;
    static SCError.current(_:)(v64, 0x16uLL, 2u, &v87);
    v38 = v87;
    v39 = v88;
    v40 = v89;
    v85 = v87;
    LOBYTE(v86) = v88;
    HIDWORD(v86) = v89;
    v5 = sub_25B91292C();
    (*(v74 + 16))(v4, v5, v73);
    v44 = 7;
    v6 = swift_allocObject();
    v7 = v38.n128_u64[1];
    v8 = v39;
    v9 = v40;
    v42 = v6;
    *(v6 + 16) = v38.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v41 = 17;
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v10 = swift_allocObject();
    v11 = v42;
    v45 = v10;
    *(v10 + 16) = v65;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v45;
    v46 = v12;
    *(v12 + 16) = v66;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v50 = v14;
    *(v14 + 16) = v67;
    *(v14 + 24) = v15;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v16;

    v17 = v47;
    v18 = v51;
    *v51 = v68;
    v18[1] = v17;

    v19 = v48;
    v20 = v51;
    v51[2] = v69;
    v20[3] = v19;

    v21 = v50;
    v22 = v51;
    v51[4] = v70;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v84;
      v84 = v31;
      v35 = &v83;
      v83 = v32;
      v36 = &v82;
      v82 = v33;
      sub_25B889650(2, &v84);
      sub_25B889650(1, v34);
      v23 = v63;
      v80 = v68;
      v81 = v47;
      sub_25B889664(&v80, v34, v35, v36);
      v37 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v80 = v69;
        v81 = v48;
        sub_25B889664(&v80, &v84, &v83, &v82);
        v29[2] = 0;
        v80 = v70;
        v81 = v50;
        sub_25B889664(&v80, &v84, &v83, &v82);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to set notification keys: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v74 + 8))(v77, v73);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v38.n128_u64[1];
    v26 = v39;
    v27 = v40;
    v29[1] = v24;
    *v28 = v38.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    swift_willThrow();
  }
}

uint64_t SCDynamicStoreRef.dispatchQueue(_:)(uint64_t a1)
{
  v63 = a1;
  v56 = "dispatchQueue(_:)";
  v57 = sub_25B910408;
  v58 = sub_25B8A3C9C;
  v59 = sub_25B8A3CE8;
  v60 = sub_25B88B5F4;
  v61 = sub_25B88B5F4;
  v62 = sub_25B8A3EB8;
  v81 = 0;
  v80 = 0;
  v75 = 0uLL;
  v76 = 0;
  v65 = sub_25B946C48();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v64);
  v69 = v29 - v68;
  v81 = v2;
  v80 = v1;
  result = SCDynamicStoreSetDispatchQueue(v1, v2);
  if (!result)
  {
    v4 = v69;
    v41 = 17;
    static SCError.current(_:)(v56, 0x11uLL, 2u, &v77);
    v38 = v77;
    v39 = v78;
    v40 = v79;
    v75 = v77;
    LOBYTE(v76) = v78;
    HIDWORD(v76) = v79;
    v5 = sub_25B91292C();
    (*(v66 + 16))(v4, v5, v65);
    v44 = 7;
    v6 = swift_allocObject();
    v7 = v38.n128_u64[1];
    v8 = v39;
    v9 = v40;
    v42 = v6;
    *(v6 + 16) = v38.n128_u64[0];
    *(v6 + 24) = v7;
    *(v6 + 32) = v8;
    *(v6 + 36) = v9;
    sub_25B8A1C38();

    v53 = sub_25B946C18();
    v54 = sub_25B947458();
    v47 = swift_allocObject();
    *(v47 + 16) = 64;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v43 = 32;
    v10 = swift_allocObject();
    v11 = v42;
    v45 = v10;
    *(v10 + 16) = v57;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v45;
    v46 = v12;
    *(v12 + 16) = v58;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v46;
    v50 = v14;
    *(v14 + 16) = v59;
    *(v14 + 24) = v15;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v49 = sub_25B947838();
    v51 = v16;

    v17 = v47;
    v18 = v51;
    *v51 = v60;
    v18[1] = v17;

    v19 = v48;
    v20 = v51;
    v51[2] = v61;
    v20[3] = v19;

    v21 = v50;
    v22 = v51;
    v51[4] = v62;
    v22[5] = v21;
    sub_25B8860FC();

    if (os_log_type_enabled(v53, v54))
    {
      v31 = sub_25B9474D8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v32 = sub_25B8895FC(1, v30, v30);
      v33 = sub_25B8895FC(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v34 = &v74;
      v74 = v31;
      v35 = &v73;
      v73 = v32;
      v36 = &v72;
      v72 = v33;
      sub_25B889650(2, &v74);
      sub_25B889650(1, v34);
      v23 = v55;
      v70 = v60;
      v71 = v47;
      sub_25B889664(&v70, v34, v35, v36);
      v37 = v23;
      if (v23)
      {

        __break(1u);
      }

      else
      {
        v70 = v61;
        v71 = v48;
        sub_25B889664(&v70, &v74, &v73, &v72);
        v29[1] = 0;
        v70 = v62;
        v71 = v50;
        sub_25B889664(&v70, &v74, &v73, &v72);
        _os_log_impl(&dword_25B859000, v53, v54, "Unable to set dispatch queue: %@", v31, 0xCu);
        sub_25B8896B0(v32, 1, v30);
        sub_25B8896B0(v33, 0, MEMORY[0x277D84F70] + 8);
        sub_25B9474B8();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v53);
    (*(v66 + 8))(v69, v65);
    sub_25B9115BC();
    v24 = swift_allocError();
    v25 = v38.n128_u64[1];
    v26 = v39;
    v27 = v40;
    v29[0] = v24;
    *v28 = v38.n128_u64[0];
    *(v28 + 8) = v25;
    *(v28 + 16) = v26;
    *(v28 + 20) = v27;
    return swift_willThrow();
  }

  return result;
}