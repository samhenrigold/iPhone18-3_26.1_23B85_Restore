unint64_t sub_1C057F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17360[0];
  if (!qword_1EBE17360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE17360);
  }

  return result;
}

uint64_t sub_1C057F670(uint64_t a1)
{
  result = sub_1C095DB0C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C057F900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D80, &qword_1C0970448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0581370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  if (a1)
  {
    v4 = v3;
    v5 = qword_1ED5CE288;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED5DA968;
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (*(qword_1ED5DA968 + 16) && (, v9 = sub_1C0516A8C(v8, v7), v11 = v10, , (v11 & 1) != 0) && (v12 = *(*(v6 + 56) + 8 * v9), v12 == v4))
    {
LABEL_14:
      (*(v12 + 88))(a1);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_1ED5CE280 != -1)
      {
        swift_once();
      }

      v13 = qword_1ED5DA960;
      if (*(qword_1ED5DA960 + 16))
      {

        v14 = sub_1C0516A8C(v8, v7);
        v16 = v15;

        if (v16)
        {
          v17 = *(*(v13 + 56) + 8 * v14);
          v18 = *(v17 + 16);
          v19 = (v17 + 32);
          while (v18)
          {
            v20 = *v19++;
            v12 = v20;
            --v18;
            if (v20 == v4)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

  return 0;
}

void *sub_1C0581508(uint64_t a1)
{
  v2 = sub_1C095DBBC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C058B498(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1C0581588(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
LABEL_8:

    if (v10)
    {
      Node.int64Value.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      if (swift_dynamicCast())
      {
        v11 = v12;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_16;
    }

LABEL_15:
    v11 = 0;
LABEL_16:

    return v11;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C058170C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  if (!v10)
  {
    return 0;
  }

  sub_1C0519574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0583270(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_1C0516A8C(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v10);
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);

LABEL_8:

LABEL_13:
    v13 = a3(v12);

    return v13;
  }

  __break(1u);
  return result;
}

char sub_1C058339C@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_Number.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 15)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 15;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_Number.DefinedValues.init(rawValue:)(v16);

  return v7;
}

char sub_1C05835E8@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_commonStock_StockAttribute.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 20)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 20;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_commonStock_StockAttribute.DefinedValues.init(rawValue:)(v16);

  return v7;
}

char sub_1C058378C@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_MonthOfYear.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 12)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 12;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_MonthOfYear.DefinedValues.init(rawValue:)(v16);

  return v7;
}

char sub_1C0583918@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_appleMessage_MessageAttribute.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 35)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 35;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_appleMessage_MessageAttribute.DefinedValues.init(rawValue:)(v16);

  return v7;
}

char sub_1C0583AD0@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_MeasurementUnit.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 54)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 54;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_MeasurementUnit.DefinedValues.init(rawValue:)(v16);

  return v7;
}

void *sub_1C0583C9C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 10)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 10;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

char sub_1C0583E58@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_DateTimeRange.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 25)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 25;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_DateTimeRange.DefinedValues.init(rawValue:)(v16);

  return v7;
}

char sub_1C0584080@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_TimeUnit.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 13)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 13;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_TimeUnit.DefinedValues.init(rawValue:)(v16);

  return v7;
}

void *sub_1C05842A8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 9)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 9;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

char sub_1C05844EC@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_MediaItemType.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 36)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 36;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_MediaItemType.DefinedValues.init(rawValue:)(v16);

  return v7;
}

char sub_1C0584890@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_appleEmail_EmailAttribute.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 11)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 11;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_appleEmail_EmailAttribute.DefinedValues.init(rawValue:)(v16);

  return v7;
}

void *sub_1C0584A94@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 8)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 8;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

void *sub_1C0584CF0@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 34)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 34;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

void *sub_1C0584ED8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 7)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 7;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

char sub_1C058507C@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_AttachmentType.DefinedValues.init(rawValue:)(v6);
  v8 = v18;
  if (v18 != 43)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 43;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13[2];
  v15 = v13[3];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  UsoEntity_common_AttachmentType.DefinedValues.init(rawValue:)(v16);

  return v7;
}

uint64_t sub_1C058521C@<X0>(BOOL *a3@<X8>)
{
  v5 = *(v3 + 16);

  v6 = sub_1C095DD6C();

  if (!v6)
  {
    v14 = 0;
    goto LABEL_16;
  }

  v8 = *(v5 + 32);
  if (!*(v8 + 16))
  {
LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  v9 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v11);
LABEL_9:

    v12 = sub_1C0518BC4();

    if (v12)
    {

      v13 = sub_1C095DD6C();

      v14 = v13 != 0;
LABEL_16:
      *a3 = v14;
      return result;
    }

    goto LABEL_15;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C05853C8@<X0>(char *a3@<X8>)
{
  v5 = *(v3 + 16);

  v6 = sub_1C095DD6C();

  if (!v6)
  {
    v8 = 0;
    goto LABEL_23;
  }

  if (v6 == 1)
  {
    v8 = 1;
LABEL_23:
    *a3 = v8;
    return result;
  }

  v9 = *(v5 + 32);
  if (!*(v9 + 16))
  {
LABEL_22:
    v8 = 2;
    goto LABEL_23;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
LABEL_12:

    v13 = sub_1C0518BC4();

    if (v13)
    {

      v14 = sub_1C095DD6C();

      if (v14 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      if (!v14)
      {
        v8 = 0;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C058559C@<X0>(void (*a2)(uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(v3 + 16);

  v7 = sub_1C095DD6C();

  if (v7 <= 2)
  {
    *a3 = v7;
    return result;
  }

  v9 = *(v6 + 32);
  if (!*(v9 + 16))
  {
    goto LABEL_17;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
LABEL_17:
    *a3 = 3;
    return result;
  }

  v14 = v13[2];
  v15 = v13[3];

  a2(v14, v15);
}

uint64_t sub_1C0585764@<X0>(void (*a2)(uint64_t, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(v3 + 16);

  v7 = sub_1C095DD6C();

  if (v7 <= 3)
  {
    *a3 = v7;
    return result;
  }

  v9 = *(v6 + 32);
  if (!*(v9 + 16))
  {
    goto LABEL_17;
  }

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v13 = sub_1C0518BC4();

  if (!v13)
  {
LABEL_17:
    *a3 = 4;
    return result;
  }

  v14 = v13[2];
  v15 = v13[3];

  a2(v14, v15);
}

void *sub_1C0585924@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 14)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 14;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

void *sub_1C0585AE0@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 6)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 6;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

void *sub_1C0585C9C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v17, v6, v7);
  v9 = v17;
  if (v17 != 5)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 5;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v14 = sub_1C0518BC4();

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14[2];
  v16 = v14[3];

  a1(v15, v16);
}

char *static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)(uint64_t a1)
{
  v73 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v2 = MEMORY[0x1EEE9AC00](v73);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v72 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v66 - v18;
  v20 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v76 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v74 = (&v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v68 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v66 - v28;
  v80 = a1;
  sub_1C05149F8(a1, v19, &qword_1EBE17408, &unk_1C0993370);
  v30 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v77 = v31 + 48;
  v78 = v32;
  if (v32(v19, 1, v30) == 1)
  {
    sub_1C05145B4(v19, &qword_1EBE17408, &unk_1C0993370);
LABEL_5:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v33 = v76;
    (*(v76 + 56))(&v22[*(v20 + 20)], 1, 1, v23);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C058D1B0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_5;
  }

  sub_1C058D220(v19, v22, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  v33 = v76;
LABEL_6:
  sub_1C05149F8(&v22[*(v20 + 20)], v11, &qword_1EBE17400, &unk_1C0970CA0);
  v34 = *(v33 + 48);
  v35 = v34(v11, 1, v23);
  v79 = v34;
  if (v35 == 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
    *v29 = MEMORY[0x1E69E7CC0];
    *(v29 + 1) = v36;
    *(v29 + 2) = v36;
    *(v29 + 3) = v36;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    sub_1C058D1B0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    v37 = *(v23 + 36);
    v38 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v38 - 8) + 56))(&v29[v37], 1, 1, v38);
    v39 = v34(v11, 1, v23);
    v40 = v29;
    if (v39 != 1)
    {
      sub_1C05145B4(v11, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C058D1B0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    v40 = v29;
    sub_1C058D220(v11, v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  sub_1C05149F8(v80, v17, &qword_1EBE17408, &unk_1C0993370);
  v41 = v78(v17, 1, v30);
  v42 = v71;
  if (v41 == 1)
  {
    sub_1C05145B4(v17, &qword_1EBE17408, &unk_1C0993370);
    v43 = v73;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = v73;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C058D220(v17, v42, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
      goto LABEL_16;
    }

    sub_1C058D1B0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v45 = *(v43 + 20);
  v46 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v46 - 8) + 56))(v42 + v45, 1, 1, v46);
  (*(v33 + 56))(v42 + *(v43 + 24), 1, 1, v23);
LABEL_16:
  v47 = &unk_1C0970CA0;
  v48 = v72;
  sub_1C05149F8(v42 + *(v43 + 24), v72, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C058D1B0(v42, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  v49 = v79(v48, 1, v23);
  sub_1C05145B4(v48, &qword_1EBE17400, &unk_1C0970CA0);
  if (v49 == 1)
  {
    goto LABEL_29;
  }

  v50 = v67;
  sub_1C05149F8(v80, v67, &qword_1EBE17408, &unk_1C0993370);
  if (v78(v50, 1, v30) == 1)
  {
    sub_1C05145B4(v50, &qword_1EBE17408, &unk_1C0993370);
    v47 = v69;
    v51 = v70;
LABEL_23:
    v53 = v68;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v54 = *(v43 + 20);
    v55 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
    (*(*(v55 - 8) + 56))(&v47[v54], 1, 1, v55);
    (*(v76 + 56))(&v47[*(v43 + 24)], 1, 1, v23);
    goto LABEL_24;
  }

  v52 = swift_getEnumCaseMultiPayload();
  v47 = v69;
  v51 = v70;
  if (v52 != 1)
  {
    sub_1C058D1B0(v50, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_23;
  }

  sub_1C058D220(v50, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  v53 = v68;
LABEL_24:
  sub_1C05149F8(&v47[*(v43 + 24)], v51, &qword_1EBE17400, &unk_1C0970CA0);
  v56 = v79;
  if (v79(v51, 1, v23) == 1)
  {
    v57 = MEMORY[0x1E69E7CC0];
    *v53 = MEMORY[0x1E69E7CC0];
    *(v53 + 1) = v57;
    *(v53 + 2) = v57;
    *(v53 + 3) = v57;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    sub_1C058D1B0(v47, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C058D1B0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v58 = *(v23 + 36);
    v59 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v59 - 8) + 56))(&v53[v58], 1, 1, v59);
    if (v56(v51, 1, v23) != 1)
    {
      sub_1C05145B4(v51, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C058D1B0(v47, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C058D1B0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C058D220(v51, v53, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  sub_1C058D220(v53, v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_29:
  if (qword_1EBE154C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for UsoGraphVocabManager();
  inited = swift_initStackObject();
  v61 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(inited + 24) = sub_1C051DA50(v61);
  v62 = v74;
  sub_1C058D0FC(v40, v74, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  v63 = v75;
  sub_1C0798000(v62, inited);
  if (v63)
  {
    sub_1C058D1B0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    swift_setDeallocating();
  }

  else
  {
    v47 = _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(v64);

    swift_setDeallocating();

    sub_1C058D1B0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return v47;
}

uint64_t static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = [v2 task];
    USOSerializedGraph.usoSerializedGraphToUsoGraphSiriNl()();
    v5 = v4;

    if (v5)
    {
      v6 = _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(v5);
      swift_unknownObjectRelease();

      return v6;
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x1E69E7CC0];
}

void *static UsoConversionUtils.extractFirstEntityFromGraph(graph:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  swift_unownedRetain();

  *&v27[0] = a1;
  *(&v27[0] + 1) = v2;
  v26[0] = 0;
  v26[1] = 0;
  v29[0] = 0;
  v29[1] = 0;
  v4 = sub_1C0519A28(v27, v26, v29);

  swift_unownedRelease();
  v5 = _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(a1);
  v6 = v5;
  if (v5 >> 62)
  {
    if (!sub_1C095DCDC())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1C68DDAD0](0, v6);
    v10 = *(v24 + 16);
    v9 = *(v24 + 24);

    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v8 = *(v6 + 32);
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
  }

  if (v10 == 0x627265566F6ELL && v9 == 0xE600000000000000)
  {
  }

  else
  {
    v11 = sub_1C095DF3C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v7)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v6);
    goto LABEL_15;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  v12 = *(v6 + 32);

LABEL_15:
  v13 = *(v12 + 48);

  v14 = *(v13 + 16);

  if (v14 == 1)
  {

    if (v7)
    {
      v15 = MEMORY[0x1C68DDAD0](0, v6);
    }

    else
    {
      v15 = *(v6 + 32);
    }

    v16 = *(v15 + 48);

    sub_1C0581508(v16);
    v18 = v17;
    v4 = v19;

    if (!v18)
    {
      return 0;
    }

    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!(v4 >> 62))
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_22:
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68DDAD0](0, v4);
          goto LABEL_25;
        }

        if (*(v6 + 16))
        {

LABEL_25:

LABEL_29:
          v23 = sub_1C0518BC4();

          return v23;
        }

        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_27:

  if (*(v4 + 16) == 1)
  {
    v20 = *(v4 + 48);
    v21 = *(v4 + 80);
    v22 = *(v4 + 96);
    v27[2] = *(v4 + 64);
    v27[3] = v21;
    v28 = v22;
    v27[0] = *(v4 + 32);
    v27[1] = v20;
    sub_1C05149F8(v27, v26, &unk_1EBE17410, qword_1C0970CB0);

    v25 = v28;

    type metadata accessor for UsoValue();
    *(swift_allocObject() + 16) = v25;
    goto LABEL_29;
  }

LABEL_34:

  return 0;
}

uint64_t static UsoConversionUtils.arrayOfNonPrimitives(usoEntity:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CD0];
  v1 = sub_1C0586DA4(a1, &v3);

  return v1;
}

uint64_t sub_1C0586DA4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (qword_1ED5D7CA0 != -1)
  {
LABEL_79:
    v54 = a1;
    swift_once();
    a1 = v54;
  }

  if (v3 == xmmword_1ED5D7CA8 && v4 == *(&xmmword_1ED5D7CA8 + 1))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  if (sub_1C095DF3C())
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v7 = v3 == xmmword_1ED5BDEE0 && v4 == *(&xmmword_1ED5BDEE0 + 1);
  if (v7 || (sub_1C095DF3C() & 1) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  v71 = v9;
  *(v9 + 32) = v6;
  v10 = *(*(v6 + 48) + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 56);

  v3 = a2;
  sub_1C051DFC8(v73, v11);
  v4 = *(v6 + 32);
  v62 = v4 + 64;
  v12 = 1 << *(v4 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v4 + 64);
  v61 = (v12 + 63) >> 6;

  v15 = 0;
  v16 = &qword_1EBE174E8;
  v17 = &qword_1C0970D80;
LABEL_19:
  v19 = v61;
  v18 = v62;
  do
  {
    if (!v14)
    {
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          return v71;
        }

        v14 = *(v18 + 8 * v20);
        ++v15;
        if (v14)
        {
          v15 = v20;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

LABEL_25:
    v21 = *(*(v4 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v21 >> 62)
    {
      v23 = v16;
      v3 = v17;
      a1 = sub_1C095DCDC();
      v17 = v3;
      v19 = v61;
      v18 = v62;
      v22 = a1;
      v16 = v23;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 &= v14 - 1;
  }

  while (!v22);
  v55 = v4;
  v24 = v21 & 0xC000000000000001;
  v59 = v21 + 32;
  v60 = v21 & 0xFFFFFFFFFFFFFF8;

  v25 = 0;
  v63 = v21 & 0xC000000000000001;
  v64 = v22;
  v56 = v21;
  v57 = a2;
  while (1)
  {
    if (v24)
    {
      result = MEMORY[0x1C68DDAD0](v25, v21);
      v3 = result;
      v26 = __OFADD__(v25++, 1);
      if (v26)
      {
        break;
      }

      goto LABEL_37;
    }

    if (v25 >= *(v60 + 16))
    {
      goto LABEL_83;
    }

    v3 = *(v59 + 8 * v25);

    v26 = __OFADD__(v25++, 1);
    if (v26)
    {
      break;
    }

LABEL_37:
    v27 = sub_1C0518BC4();
    if (v27)
    {
      v67 = v3;
      v68 = v25;
      v28 = *a2;
      v70 = v27;
      v29 = *(swift_unownedRetainStrong() + 56);

      if (!*(v28 + 16) || (v30 = sub_1C095DFDC(), v31 = -1 << *(v28 + 32), v32 = v30 & ~v31, ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0))
      {
LABEL_43:
        v34 = sub_1C0586DA4(v70, a2);
        v35 = v34;
        v36 = v34 >> 62;
        if (v34 >> 62)
        {
          v37 = sub_1C095DCDC();
        }

        else
        {
          v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v71 >> 62;
        if (v71 >> 62)
        {
          result = sub_1C095DCDC();
        }

        else
        {
          result = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = v37;
        v26 = __OFADD__(result, v37);
        v39 = result + v37;
        if (v26)
        {
          goto LABEL_81;
        }

        v69 = v35;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v38)
          {
            v40 = v71 & 0xFFFFFFFFFFFFFF8;
            if (v39 <= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              result = v71;
              goto LABEL_56;
            }

LABEL_55:
            result = sub_1C095DC4C();
            v40 = result & 0xFFFFFFFFFFFFFF8;
LABEL_56:
            v41 = *(v40 + 16);
            v65 = v40;
            v42 = (*(v40 + 24) >> 1) - v41;
            v71 = result;
            if (v36)
            {
              v45 = sub_1C095DCDC();
              if (v45)
              {
                v46 = v45;
                result = sub_1C095DCDC();
                if (v42 < result)
                {
                  goto LABEL_86;
                }

                v58 = result;
                if (v46 < 1)
                {
                  goto LABEL_87;
                }

                v72 = v65 + 8 * v41 + 32;
                sub_1C058D308();
                v47 = 0;
                do
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E8, &qword_1C0970D80);
                  v48 = v46;
                  v49 = sub_1C058B410(v73, v47, v69);
                  v51 = *v50;

                  (v49)(v73, 0);
                  v46 = v48;
                  *(v72 + 8 * v47++) = v51;
                }

                while (v48 != v47);
                v21 = v56;
                a2 = v57;
                v24 = v63;
                v22 = v64;
                v3 = v67;
                v25 = v68;
                v44 = v65;
                v43 = v58;
LABEL_66:

                if (v43 < v66)
                {
                  goto LABEL_82;
                }

                if (v43 > 0)
                {
                  v52 = *(v44 + 16);
                  v26 = __OFADD__(v52, v43);
                  v53 = v52 + v43;
                  if (v26)
                  {
                    goto LABEL_84;
                  }

                  *(v44 + 16) = v53;
                }

LABEL_71:

                goto LABEL_30;
              }
            }

            else
            {
              v43 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v43)
              {
                if (v42 < v43)
                {
                  goto LABEL_85;
                }

                v44 = v40;
                type metadata accessor for UsoEntity();
                swift_arrayInitWithCopy();
                v24 = v63;
                v22 = v64;
                v3 = v67;
                v25 = v68;
                goto LABEL_66;
              }
            }

            v3 = v67;
            v24 = v63;
            v22 = v64;
            v25 = v68;
            if (v66 > 0)
            {
              goto LABEL_82;
            }

            goto LABEL_71;
          }
        }

        else if (!v38)
        {
          goto LABEL_55;
        }

        sub_1C095DCDC();
        goto LABEL_55;
      }

      v33 = ~v31;
      while (*(*(v28 + 48) + 8 * v32) != v29)
      {
        v32 = (v32 + 1) & v33;
        if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v25 = v68;
      if (v68 == v22)
      {
LABEL_76:

        v16 = &qword_1EBE174E8;
        v17 = &qword_1C0970D80;
        v4 = v55;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_30:

      if (v25 == v22)
      {
        goto LABEL_76;
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

unint64_t static UsoConversionUtils.convertToFloat(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_1C051D6F4(a1, a2, a3);
  v6 = MEMORY[0x1E69E6158];
  v7 = sub_1C095DB8C();
  v28 = v4;
  v29 = v3;
  v26 = 46;
  v27 = 0xE100000000000000;
  v8 = sub_1C095DB8C();
  if (v7)
  {
    if (v8)
    {
      v28 = 44;
      v29 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v8);
      v22 = &v28;
      v9 = sub_1C058B30C(sub_1C058D088, &v20, v4, v3);
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        v28 = 46;
        v29 = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v9);
        v22 = &v28;
        v12 = sub_1C058B30C(sub_1C058D36C, &v20, v4, v3);
        if ((v13 & 1) == 0 && v12 >> 14 < v11 >> 14)
        {
          v28 = v4;
          v29 = v3;
          v26 = 46;
          v27 = 0xE100000000000000;
          v24 = 0;
          v25 = 0xE000000000000000;
          v22 = v5;
          v23 = v5;
          v20 = v6;
          v21 = v5;
          v28 = sub_1C095DB6C();
          v29 = v14;
          v26 = 44;
          v27 = 0xE100000000000000;
          v24 = 46;
          v25 = 0xE100000000000000;
          v22 = v5;
          v23 = v5;
          v20 = v6;
          v21 = v5;
          v4 = sub_1C095DB6C();
          v3 = v15;

          goto LABEL_14;
        }
      }

      v28 = v4;
      v29 = v3;
      v26 = 44;
      v27 = 0xE100000000000000;
      v24 = 0;
      v25 = 0xE000000000000000;
      v22 = v5;
      v23 = v5;
      goto LABEL_13;
    }

    v28 = v4;
    v29 = v3;
    v26 = 44;
    v27 = 0xE100000000000000;
    v24 = 46;
    v25 = 0xE100000000000000;
  }

  else
  {
    if ((v8 & 1) == 0)
    {

      goto LABEL_14;
    }

    v28 = v4;
    v29 = v3;
    v26 = 44;
    v27 = 0xE100000000000000;
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v22 = v5;
  v23 = v5;
LABEL_13:
  v20 = v6;
  v21 = v5;
  v4 = sub_1C095DB6C();
  v3 = v16;
LABEL_14:
  LODWORD(v28) = 0;
  v17 = sub_1C058B52C(v4, v3, &v28);

  v18 = v28;
  LOBYTE(v28) = !v17;
  if (!v17)
  {
    v18 = 0;
  }

  return v18 | (!v17 << 32);
}

BOOL static UsoConversionUtils.isDecimalPercentage(_:)(uint64_t a1)
{
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Decimal))
  {
    sub_1C058521C(&v4);
    v1 = v4;

    return !v1;
  }

  else
  {
    return 0;
  }
}

float static UsoConversionUtils.preciseRound(_:_:)(float a1)
{
  MEMORY[0x1C68DD980](10.0);
  sub_1C095D18C();
  v2 = sub_1C095DAFC();
  sub_1C095DA3C();
  v4 = v3;

  return roundf(v4 * a1) / v4;
}

unint64_t static UsoConversionUtils.resolveEntityAsPercent(entity:smallAmount:largeAmount:)(uint64_t a1, float a2, float a3)
{
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Number))
  {
    sub_1C058339C(&v14);
    if (v14 == 15)
    {

      goto LABEL_4;
    }

    if (v14 <= 4u)
    {
      if (v14 > 1u)
      {
        if (v14 != 2 && v14 != 3)
        {
          goto LABEL_30;
        }
      }

      else if (v14)
      {

        LOBYTE(v11) = 0;
        LODWORD(v7) = 1094713344;
        return v7 | (v11 << 32);
      }
    }

    else if (v14 <= 9u)
    {
      if (v14 != 5 && v14 != 6)
      {
        goto LABEL_30;
      }
    }

    else if (v14 != 10 && v14 != 12 && v14 != 13)
    {
LABEL_30:
      v7 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(a1, 0.0, 100.0, a2, a3);

      v11 = HIDWORD(v7) & 1;
      return v7 | (v11 << 32);
    }

    LOBYTE(v11) = 0;
    LODWORD(v7) = 1120403456;
    return v7 | (v11 << 32);
  }

LABEL_4:
  v6 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(a1, 0.0, 100.0, a2, a3);
  LODWORD(v7) = v6;
  if ((v6 & 0x100000000) != 0)
  {
    LOBYTE(v11) = 1;
    return v7 | (v11 << 32);
  }

  v8 = *&v6;
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Decimal))
  {
    sub_1C058521C(&v15);
    v9 = v15;

    if (!v9)
    {
      goto LABEL_32;
    }
  }

  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_MultipliedNumber))
  {
    if (!sub_1C0583270(0x696C7069746C756DLL, 0xEA00000000007265, sub_1C06029F0))
    {
LABEL_29:

      goto LABEL_33;
    }

    if (!sub_1C0581370(v10, type metadata accessor for UsoEntity_common_Decimal))
    {
LABEL_12:

      goto LABEL_29;
    }

    sub_1C058521C(&v16);
    if (v16)
    {

      goto LABEL_12;
    }

LABEL_32:
    v8 = v8 * 100.0;
  }

LABEL_33:
  LOBYTE(v11) = 0;
  v12 = 100.0;
  if (v8 <= 100.0)
  {
    v12 = v8;
  }

  if (v8 < 0.0)
  {
    v12 = 0.0;
  }

  *&v7 = v12;
  return v7 | (v11 << 32);
}

unint64_t static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Number))
  {
    v10 = sub_1C058339C(v41);
    if (v41[0] != 15)
    {
      switch(v41[0])
      {
        case 1:

          v14 = 0;
          v16 = 12.0;
          goto LABEL_53;
        case 2:

          v14 = 0;
          v16 = 1000.0;
          goto LABEL_53;
        case 3:

          v14 = 0;
          v16 = 1.0e12;
          goto LABEL_53;
        case 4:
          v35 = a3 * 0.5;
          v33 = a2 * 0.5;
          goto LABEL_48;
        case 5:

          v14 = 0;
          v16 = 1000000.0;
          goto LABEL_53;
        case 6:

          v14 = 0;
          v16 = 100000.0;
          goto LABEL_53;
        case 7:
          goto LABEL_51;
        case 8:
          v33 = a3 * a4;
          v34 = 1.0 - a4;
          goto LABEL_47;
        case 9:

          v14 = 0;
          v16 = a3;
          goto LABEL_53;
        case 0xA:

          v14 = 0;
          v16 = 10000.0;
          goto LABEL_53;
        case 0xB:
          v33 = a3 * a5;
          v34 = 1.0 - a5;
LABEL_47:
          v35 = v34 * a2;
LABEL_48:
          v36 = v33 + v35;
          MEMORY[0x1C68DD980](v10, 10.0);
          sub_1C095D18C();
          v37 = sub_1C095DAFC();
          sub_1C095DA3C();
          v39 = v38;

          v14 = 0;
          v15 = roundf(v36 * v39) / v39;
          goto LABEL_49;
        case 0xC:

          v14 = 0;
          v16 = 100.0;
          goto LABEL_53;
        case 0xD:

          v14 = 0;
          v16 = 10000000.0;
          goto LABEL_53;
        case 0xE:

          v14 = 0;
          v16 = a2;
          goto LABEL_53;
        default:

          v14 = 0;
          v16 = 1000000000.0;
          goto LABEL_53;
      }
    }
  }

  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Integer))
  {
    v11 = sub_1C0581588(0x5672656765746E69, 0xEC00000065756C61);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      v15 = v11;
LABEL_49:
      v16 = v15;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Decimal))
  {
    sub_1C058521C(v43);
    if (!v43[0])
    {

      v14 = 0;
      v16 = 0.01;
      goto LABEL_53;
    }

    v17 = sub_1C058170C(0x6163696E6F6E6163, 0xEF676E697274536CLL);
    if (v18)
    {
      v42 = 0.0;
      v19 = sub_1C058B52C(v17, v18, &v42);

      if (v19)
      {
        v16 = v42;
      }

      else
      {
        v16 = 0.0;
      }

      v14 = !v19;
      goto LABEL_53;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (!sub_1C0581370(a1, type metadata accessor for UsoEntity_common_MixedFraction))
  {
    if (!sub_1C0581370(a1, type metadata accessor for UsoEntity_common_MultipliedNumber))
    {
      goto LABEL_52;
    }

    if (sub_1C0583270(0x65756C6176, 0xE500000000000000, sub_1C06029F0))
    {
      if (sub_1C0583270(0x696C7069746C756DLL, 0xEA00000000007265, sub_1C06029F0))
      {

        v23 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v22, a2, a3, 0.1, 0.3);

        if ((v23 & 0x100000000) == 0)
        {

          v25 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v24, a2, a3, 0.1, 0.3);

          if ((v25 & 0x100000000) == 0)
          {
            v14 = 0;
            v15 = *&v23 * *&v25;
            goto LABEL_49;
          }

LABEL_52:
          v16 = 0.0;
          v14 = 1;
          goto LABEL_53;
        }
      }

      else
      {
      }
    }

    goto LABEL_51;
  }

  v20 = sub_1C0581588(0xD000000000000010, 0x80000001C09CC420);
  v14 = v21;
  if (v21)
  {
    v16 = 0.0;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_51;
    }

    v26 = v20;
    v27 = sub_1C0581588(0x6F746172656D756ELL, 0xEE0065756C615672);
    if (v28)
    {
      v27 = 1.0;
    }

    v16 = v27 / v26;
  }

  v29 = sub_1C0581588(0x6C6156656C6F6877, 0xEA00000000006575);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    v32 = v16;
    if (v14)
    {
      v32 = 0.0;
    }

    v16 = v32 + v29;
    v14 = 0;
  }

LABEL_53:
  v43[1] = v14 & 1;
  return LODWORD(v16) | ((v14 & 1) << 32);
}

uint64_t Siri_Nl_Core_Protocol_UUID.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *(a2 + 8) = bswap64(sub_1C095D1BC());
  v5 = bswap64(v4);
  v6 = sub_1C095D1DC();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a2 = v5;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.taskId.getter@<X0>(void *a1@<X8>)
{
  v169 = a1;
  v163 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  MEMORY[0x1EEE9AC00](v163);
  v168 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  MEMORY[0x1EEE9AC00](v161);
  v167 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  MEMORY[0x1EEE9AC00](v159);
  v166 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  MEMORY[0x1EEE9AC00](v157);
  v165 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  MEMORY[0x1EEE9AC00](v155);
  v164 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  MEMORY[0x1EEE9AC00](v154);
  v162 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  MEMORY[0x1EEE9AC00](v153);
  v160 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  MEMORY[0x1EEE9AC00](v152);
  v158 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  MEMORY[0x1EEE9AC00](v151);
  v156 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v141 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v132 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v140 = &v132 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v132 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v139 = &v132 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v148 = &v132 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v138 = &v132 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v147 = &v132 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v137 = &v132 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v146 = &v132 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v136 = &v132 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v145 = &v132 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v135 = &v132 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v144 = &v132 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v134 = &v132 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v142 = &v132 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v133 = &v132 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v132 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v132 = &v132 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v132 - v50;
  v52 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  MEMORY[0x1EEE9AC00](v52);
  v143 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v132 - v55;
  v57 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v58 = *(v57 - 8);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v132 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v132 - v62;
  sub_1C05149F8(v170, v56, &qword_1EBE17408, &unk_1C0993370);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    sub_1C05145B4(v56, &qword_1EBE17408, &unk_1C0993370);
    v64 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
    return (*(*(v64 - 8) + 56))(v169, 1, 1, v64);
  }

  else
  {
    sub_1C058D220(v56, v63, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C058D0FC(v63, v61, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v66 = v63;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v68 = v160;
        sub_1C058D220(v61, v160, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v91 = *(v153 + 20);
        v92 = v144;
        sub_1C05149F8(v68 + v91, v144, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v93 = v73(v92, 1, v71);
        sub_1C05145B4(v92, &qword_1EBE17420, &qword_1C0993380);
        if (v93 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
          goto LABEL_23;
        }

        v111 = v135;
        sub_1C05149F8(v68 + v91, v135, &qword_1EBE17420, &qword_1C0993380);
        v122 = v73(v111, 1, v71);
        v113 = v169;
        if (v122 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
          goto LABEL_47;
        }

        v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
        goto LABEL_65;
      case 2u:
        v170 = v63;
        v76 = v143;
        sub_1C058D220(v61, v143, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v77 = *(v52 + 20);
        sub_1C05149F8(v76 + v77, v51, &qword_1EBE17420, &qword_1C0993380);
        v78 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v79 = *(v78 - 8);
        v80 = *(v79 + 48);
        v81 = v80(v51, 1, v78);
        sub_1C05145B4(v51, &qword_1EBE17420, &qword_1C0993380);
        if (v81 == 1)
        {
          sub_1C058D1B0(v76, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
          sub_1C058D1B0(v170, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          return (*(v79 + 56))(v169, 1, 1, v78);
        }

        else
        {
          v115 = v132;
          sub_1C05149F8(v76 + v77, v132, &qword_1EBE17420, &qword_1C0993380);
          v116 = v80(v115, 1, v78);
          v117 = v169;
          if (v116 == 1)
          {
            *v169 = 0;
            *(v117 + 8) = 0;
            *(v117 + 16) = 0;
            *(v117 + 24) = 1;
            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            sub_1C058D1B0(v76, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
            sub_1C058D1B0(v170, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            if (v80(v115, 1, v78) != 1)
            {
              sub_1C05145B4(v115, &qword_1EBE17420, &qword_1C0993380);
            }
          }

          else
          {
            sub_1C058D1B0(v76, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
            sub_1C058D1B0(v170, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            sub_1C058D220(v115, v117, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
          }

          return (*(v79 + 56))(v117, 0, 1, v78);
        }

      case 3u:
        v68 = v164;
        sub_1C058D220(v61, v164, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
        v97 = *(v155 + 20);
        v98 = v146;
        sub_1C05149F8(v68 + v97, v146, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v99 = v73(v98, 1, v71);
        sub_1C05145B4(v98, &qword_1EBE17420, &qword_1C0993380);
        if (v99 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
          goto LABEL_23;
        }

        v111 = v137;
        sub_1C05149F8(v68 + v97, v137, &qword_1EBE17420, &qword_1C0993380);
        v124 = v73(v111, 1, v71);
        v113 = v169;
        if (v124 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
          goto LABEL_47;
        }

        v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
        goto LABEL_65;
      case 4u:
        v68 = v162;
        sub_1C058D220(v61, v162, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        v100 = *(v154 + 20);
        v101 = v145;
        sub_1C05149F8(v68 + v100, v145, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v102 = v73(v101, 1, v71);
        sub_1C05145B4(v101, &qword_1EBE17420, &qword_1C0993380);
        if (v102 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
          goto LABEL_23;
        }

        v111 = v136;
        sub_1C05149F8(v68 + v100, v136, &qword_1EBE17420, &qword_1C0993380);
        v125 = v73(v111, 1, v71);
        v113 = v169;
        if (v125 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
          goto LABEL_47;
        }

        v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
        goto LABEL_65;
      case 5u:
        v68 = v158;
        sub_1C058D220(v61, v158, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v94 = *(v152 + 20);
        v95 = v142;
        sub_1C05149F8(v68 + v94, v142, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v96 = v73(v95, 1, v71);
        sub_1C05145B4(v95, &qword_1EBE17420, &qword_1C0993380);
        if (v96 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
          goto LABEL_23;
        }

        v111 = v134;
        sub_1C05149F8(v68 + v94, v134, &qword_1EBE17420, &qword_1C0993380);
        v123 = v73(v111, 1, v71);
        v113 = v169;
        if (v123 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
          goto LABEL_47;
        }

        v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
        goto LABEL_65;
      case 6u:
        v170 = v63;
        v107 = v168;
        sub_1C058D220(v61, v168, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v108 = *(v163 + 20);
        v109 = v150;
        sub_1C05149F8(v107 + v108, v150, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v110 = v73(v109, 1, v71);
        sub_1C05145B4(v109, &qword_1EBE17420, &qword_1C0993380);
        if (v110 == 1)
        {
          sub_1C058D1B0(v107, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
          v106 = v170;
          goto LABEL_24;
        }

        v111 = v141;
        sub_1C05149F8(v107 + v108, v141, &qword_1EBE17420, &qword_1C0993380);
        v128 = v73(v111, 1, v71);
        v113 = v169;
        v129 = v170;
        if (v128 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          sub_1C058D1B0(v107, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
          v127 = v129;
          goto LABEL_48;
        }

        sub_1C058D1B0(v107, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v131 = v129;
        goto LABEL_66;
      case 7u:
        v170 = v63;
        v85 = v156;
        sub_1C058D220(v61, v156, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
        v86 = *(v151 + 20);
        sub_1C05149F8(v85 + v86, v47, &qword_1EBE17420, &qword_1C0993380);
        v87 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v88 = *(v87 - 8);
        v89 = *(v88 + 48);
        v90 = v89(v47, 1, v87);
        sub_1C05145B4(v47, &qword_1EBE17420, &qword_1C0993380);
        if (v90 == 1)
        {
          sub_1C058D1B0(v85, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
          sub_1C058D1B0(v170, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          return (*(v88 + 56))(v169, 1, 1, v87);
        }

        else
        {
          v119 = v133;
          sub_1C05149F8(v85 + v86, v133, &qword_1EBE17420, &qword_1C0993380);
          v120 = v89(v119, 1, v87);
          v121 = v169;
          if (v120 == 1)
          {
            *v169 = 0;
            *(v121 + 8) = 0;
            *(v121 + 16) = 0;
            *(v121 + 24) = 1;
            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            sub_1C058D1B0(v85, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
            sub_1C058D1B0(v170, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            if (v89(v119, 1, v87) != 1)
            {
              sub_1C05145B4(v119, &qword_1EBE17420, &qword_1C0993380);
            }
          }

          else
          {
            sub_1C058D1B0(v85, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
            sub_1C058D1B0(v170, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            sub_1C058D220(v119, v121, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
          }

          return (*(v88 + 56))(v121, 0, 1, v87);
        }

      case 8u:
        v68 = v167;
        sub_1C058D220(v61, v167, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
        v103 = *(v161 + 20);
        v104 = v149;
        sub_1C05149F8(v68 + v103, v149, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v105 = v73(v104, 1, v71);
        sub_1C05145B4(v104, &qword_1EBE17420, &qword_1C0993380);
        if (v105 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
          goto LABEL_23;
        }

        v111 = v140;
        sub_1C05149F8(v68 + v103, v140, &qword_1EBE17420, &qword_1C0993380);
        v126 = v73(v111, 1, v71);
        v113 = v169;
        if (v126 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
          goto LABEL_47;
        }

        v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
        goto LABEL_65;
      case 9u:
        v68 = v166;
        sub_1C058D220(v61, v166, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
        v69 = *(v159 + 20);
        v70 = v148;
        sub_1C05149F8(v68 + v69, v148, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v74 = v73(v70, 1, v71);
        sub_1C05145B4(v70, &qword_1EBE17420, &qword_1C0993380);
        if (v74 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
          goto LABEL_23;
        }

        v111 = v139;
        sub_1C05149F8(v68 + v69, v139, &qword_1EBE17420, &qword_1C0993380);
        v112 = v73(v111, 1, v71);
        v113 = v169;
        if (v112 == 1)
        {
          *v169 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 0;
          *(v113 + 24) = 1;
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
          goto LABEL_47;
        }

        v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
        goto LABEL_65;
      case 0xAu:
        v68 = v165;
        sub_1C058D220(v61, v165, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
        v82 = *(v157 + 24);
        v83 = v147;
        sub_1C05149F8(v68 + v82, v147, &qword_1EBE17420, &qword_1C0993380);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        v72 = *(v71 - 8);
        v73 = *(v72 + 48);
        v84 = v73(v83, 1, v71);
        sub_1C05145B4(v83, &qword_1EBE17420, &qword_1C0993380);
        if (v84 == 1)
        {
          v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
LABEL_23:
          sub_1C058D1B0(v68, v75);
          v106 = v66;
LABEL_24:
          sub_1C058D1B0(v106, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          result = (*(v72 + 56))(v169, 1, 1, v71);
        }

        else
        {
          v111 = v138;
          sub_1C05149F8(v68 + v82, v138, &qword_1EBE17420, &qword_1C0993380);
          v118 = v73(v111, 1, v71);
          v113 = v169;
          if (v118 == 1)
          {
            *v169 = 0;
            *(v113 + 8) = 0;
            *(v113 + 16) = 0;
            *(v113 + 24) = 1;
            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            v114 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
LABEL_47:
            sub_1C058D1B0(v68, v114);
            v127 = v66;
LABEL_48:
            sub_1C058D1B0(v127, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            if (v73(v111, 1, v71) != 1)
            {
              sub_1C05145B4(v111, &qword_1EBE17420, &qword_1C0993380);
            }
          }

          else
          {
            v130 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
LABEL_65:
            sub_1C058D1B0(v68, v130);
            v131 = v66;
LABEL_66:
            sub_1C058D1B0(v131, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            sub_1C058D220(v111, v113, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
          }

          result = (*(v72 + 56))(v113, 0, 1, v71);
        }

        break;
      default:
        sub_1C058D1B0(v63, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        v67 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
        (*(*(v67 - 8) + 56))(v169, 1, 1, v67);
        return sub_1C058D1B0(v61, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    }
  }

  return result;
}

id Siri_Nl_Core_Protocol_UserDialogAct.convertToUserDialogAct()()
{
  v1 = v0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  sub_1C05149F8(v1, v13, &qword_1EBE17408, &unk_1C0993370);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C05145B4(v13, &qword_1EBE17408, &unk_1C0993370);
    return 0;
  }

  sub_1C058D220(v13, v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  sub_1C058D0FC(v20, v18, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C058D1B0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v21 = v18;
LABEL_7:
    sub_1C058D1B0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    return 0;
  }

  v22 = v18;
  v23 = v41;
  sub_1C058D220(v22, v41, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  v24 = *(v9 + 20);
  sub_1C05149F8(v23 + v24, v8, &qword_1EBE17400, &unk_1C0970CA0);
  v25 = v40;
  v26 = *(v39 + 48);
  v27 = v26(v8, 1, v40);
  sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  if (v27 == 1)
  {
    sub_1C058D1B0(v23, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    v21 = v20;
    goto LABEL_7;
  }

  v29 = v37;
  sub_1C05149F8(v23 + v24, v37, &qword_1EBE17400, &unk_1C0970CA0);
  if (v26(v29, 1, v25) == 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v38;
    *v38 = MEMORY[0x1E69E7CC0];
    *(v31 + 1) = v30;
    *(v31 + 2) = v30;
    *(v31 + 3) = v30;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v32 = *(v25 + 36);
    v33 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
    (*(*(v33 - 8) + 56))(&v31[v32], 1, 1, v33);
    if (v26(v29, 1, v25) != 1)
    {
      sub_1C05145B4(v29, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    v31 = v38;
    sub_1C058D220(v29, v38, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v34 = _sSo18USOSerializedGraphC12SiriOntologyE9fromProto05protoB0AbC0c21_Nl_Core_Protocol_UsoB0V_tFZ_0(v31);
  sub_1C058D1B0(v31, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v35 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask_];

  sub_1C058D1B0(v23, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  sub_1C058D1B0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  return v35;
}

void __swiftcall Siri_Nl_Core_Protocol_UserParse.convertToUserParse()(SIRINLUUserParse *__return_ptr retstr)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v71 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v88 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v70 - v10;
  v86 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  MEMORY[0x1EEE9AC00](v86);
  v92 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v70 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v70 - v23;
  v75 = sub_1C095D1DC();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0) - 8;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v1;
  v30 = *v1;
  v94 = MEMORY[0x1E69E7CC0];
  v31 = *(v30 + 16);
  v73 = v25;
  if (v31)
  {
    v32 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v33 = (v16 + 48);
    v93 = *(v27 + 72);
    v82 = v4;
    v83 = (v5 + 48);
    v80 = MEMORY[0x1E69E7CC0];
    v81 = v14;
    v34 = v89;
    v35 = v91;
    v84 = v33;
    v85 = v15;
    while (1)
    {
      sub_1C058D0FC(v32, v29, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
      sub_1C05149F8(v29, v14, &qword_1EBE17408, &unk_1C0993370);
      if ((*v33)(v14, 1, v15) == 1)
      {
        sub_1C05145B4(v14, &qword_1EBE17408, &unk_1C0993370);
      }

      else
      {
        sub_1C058D220(v14, v35, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        sub_1C058D0FC(v35, v34, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1C058D1B0(v35, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          sub_1C058D1B0(v34, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        }

        else
        {
          v36 = v92;
          sub_1C058D220(v34, v92, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
          v37 = v82;
          v38 = v87;
          v39 = *(v86 + 20);
          sub_1C05149F8(v36 + v39, v87, &qword_1EBE17400, &unk_1C0970CA0);
          v90 = *v83;
          LODWORD(v36) = v90(v38, 1, v37);
          sub_1C05145B4(v38, &qword_1EBE17400, &unk_1C0970CA0);
          if (v36 != 1)
          {
            v40 = v79;
            sub_1C05149F8(v92 + v39, v79, &qword_1EBE17400, &unk_1C0970CA0);
            v41 = v90(v40, 1, v37);
            v42 = v37;
            v43 = v88;
            if (v41 == 1)
            {
              v44 = MEMORY[0x1E69E7CC0];
              *v88 = MEMORY[0x1E69E7CC0];
              v43[1] = v44;
              v43[2] = v44;
              v43[3] = v44;
              _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
              v45 = *(v42 + 36);
              v46 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
              v47 = v88 + v45;
              v48 = v79;
              v43 = v88;
              (*(*(v46 - 8) + 56))(v47, 1, 1, v46);
              v49 = v90(v48, 1, v42);
              v33 = v84;
              v14 = v81;
              if (v49 != 1)
              {
                sub_1C05145B4(v48, &qword_1EBE17400, &unk_1C0970CA0);
              }
            }

            else
            {
              sub_1C058D220(v40, v88, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
              v33 = v84;
              v14 = v81;
            }

            v50 = _sSo18USOSerializedGraphC12SiriOntologyE9fromProto05protoB0AbC0c21_Nl_Core_Protocol_UsoB0V_tFZ_0(v43);
            sub_1C058D1B0(v43, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask_];

            sub_1C058D1B0(v92, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
            sub_1C058D1B0(v91, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            v51 = sub_1C058D1B0(v29, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
            MEMORY[0x1C68DD810](v51);
            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C095D9AC();
            }

            sub_1C095D9DC();
            v80 = v94;
            v15 = v85;
            v34 = v89;
            v35 = v91;
            goto LABEL_10;
          }

          sub_1C058D1B0(v92, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
          v35 = v91;
          sub_1C058D1B0(v91, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          v33 = v84;
          v15 = v85;
          v34 = v89;
          v14 = v81;
        }
      }

      sub_1C058D1B0(v29, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
LABEL_10:
      v32 += v93;
      if (!--v31)
      {
        goto LABEL_20;
      }
    }
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v52 = v78;
  v53 = v78[1];
  v54 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 32);
  v55 = v72;
  sub_1C05149F8(v52 + v54, v72, &qword_1EBE17420, &qword_1C0993380);
  v56 = v77;
  v57 = *(v76 + 48);
  v58 = v57(v55, 1, v77);
  sub_1C05145B4(v55, &qword_1EBE17420, &qword_1C0993380);
  if (v58 == 1)
  {
    v59 = v73;
    sub_1C095D1CC();
    v60 = v75;
    v61 = v74;
  }

  else
  {
    v62 = v70;
    sub_1C05149F8(v52 + v54, v70, &qword_1EBE17420, &qword_1C0993380);
    v63 = v57(v62, 1, v56);
    v61 = v74;
    if (v63 == 1)
    {
      v64 = v71;
      *v71 = 0;
      v64[1] = 0;
      v64[2] = 0;
      *(v64 + 24) = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v65 = v57(v62, 1, v56);
      v60 = v75;
      if (v65 != 1)
      {
        sub_1C05145B4(v62, &qword_1EBE17420, &qword_1C0993380);
      }
    }

    else
    {
      v64 = v71;
      sub_1C058D220(v62, v71, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v60 = v75;
    }

    v59 = v73;
    Siri_Nl_Core_Protocol_UUID.uuid.getter();
    sub_1C058D1B0(v64, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  v66 = objc_allocWithZone(SIRINLUUserParse);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17428, &qword_1C0970CC8);
  v67 = sub_1C095D98C();

  v68 = sub_1C095D19C();
  v69 = sub_1C095D74C();
  [v66 initWithUserDialogActs:v67 probability:v68 nsUUID:v69 parserId:v53];

  (*(v61 + 8))(v59, v60);
}

SIRINLURequestID __swiftcall Siri_Nl_Core_Protocol_RequestID.convertToRequestId()()
{
  v0 = objc_allocWithZone(SIRINLURequestID);
  v1 = sub_1C095D74C();
  v2 = sub_1C095D74C();
  v3 = [v0 initWithIdAsString:v1 connectionID:v2];

  v7 = v3;
  result._connectionID = v6;
  result._nluRequestId = v5;
  result._idAsString = v4;
  result.super.isa = v7;
  return result;
}

void __swiftcall Siri_Nl_Core_Protocol_NluResponse.convertToResponse()(SIRINLUResponse *__return_ptr retstr)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  v40 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = *(type metadata accessor for Siri_Nl_Core_Protocol_NluResponse(0) + 28);
  v41 = v1;
  v15 = v1 + v14;
  v16 = v5;
  sub_1C05149F8(v15, v13, &qword_1EBE17430, &qword_1C0970CD0);
  v17 = *(v6 + 48);
  v18 = v17(v13, 1, v16);
  sub_1C05145B4(v13, &qword_1EBE17430, &qword_1C0970CD0);
  if (v18 == 1)
  {
    v19 = objc_allocWithZone(SIRINLURequestID);
    v20 = sub_1C095D74C();
    v21 = sub_1C095D74C();
    v22 = [v19 initWithIdAsString:v20 connectionID:v21];

    v23 = v41;
  }

  else
  {
    v23 = v41;
    v24 = v39;
    sub_1C05149F8(v41 + v14, v39, &qword_1EBE17430, &qword_1C0970CD0);
    if (v17(v24, 1, v16) == 1)
    {
      *v8 = 0;
      *(v8 + 1) = 0xE000000000000000;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0xE000000000000000;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v25 = v16;
      v26 = *(v16 + 28);
      v27 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
      (*(*(v27 - 8) + 56))(&v8[v26], 1, 1, v27);
      if (v17(v24, 1, v25) != 1)
      {
        sub_1C05145B4(v24, &qword_1EBE17430, &qword_1C0970CD0);
      }
    }

    else
    {
      sub_1C058D220(v24, v8, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);
    }

    v28 = objc_allocWithZone(SIRINLURequestID);
    v29 = sub_1C095D74C();
    v30 = sub_1C095D74C();
    v22 = [v28 initWithIdAsString:v29 connectionID:v30];

    sub_1C058D1B0(v8, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);
  }

  v31 = *v23;
  v42 = MEMORY[0x1E69E7CC0];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v34 = *(v40 + 72);
    do
    {
      sub_1C058D0FC(v33, v4, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);
      Siri_Nl_Core_Protocol_UserParse.convertToUserParse()(v35);
      v36 = sub_1C058D1B0(v4, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);
      MEMORY[0x1C68DD810](v36);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C095D9AC();
      }

      sub_1C095D9DC();
      v33 += v34;
      --v32;
    }

    while (v32);
  }

  v37 = objc_allocWithZone(SIRINLUResponse);
  sub_1C058D164();
  v38 = sub_1C095D98C();

  [v37 initWithRequestId:v22 parses:v38];
}

uint64_t SIRINLUUserDialogAct.taskId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1C058B30C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1C095D7DC();
    v13[0] = sub_1C095D8BC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t (*sub_1C058B410(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C68DDAD0](a2, a3);
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
    return sub_1C058B490;
  }

  __break(1u);
  return result;
}

void *sub_1C058B498(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_1C058B52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1C095DC0C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_1C058B660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C095DD5C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C0516A8C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1C058B754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17440, &unk_1C09789D0);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1C057EAFC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C058B84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17458, &unk_1C0970D00);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C0516A8C(v5, v6);
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

unint64_t sub_1C058B950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17450, &qword_1C0970CF8);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C0516A8C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1C058BA64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174D0, &qword_1C0970D58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174D8, &unk_1C0970D60);
    v7 = sub_1C095DD5C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C05149F8(v9, v5, &qword_1EBE174D0, &qword_1C0970D58);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C0516A8C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0);
      result = sub_1C058D220(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
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

unint64_t sub_1C058BC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174C0, &qword_1C0970D48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174C8, &qword_1C0970D50);
    v7 = sub_1C095DD5C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C05149F8(v9, v5, &qword_1EBE174C0, &qword_1C0970D48);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C0516A8C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0);
      result = sub_1C058D220(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
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

unint64_t sub_1C058BE34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174B0, &qword_1C0970D38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174B8, &qword_1C0970D40);
    v7 = sub_1C095DD5C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1C05149F8(v9, v5, &qword_1EBE174B0, &qword_1C0970D38);
      v11 = *v5;
      result = sub_1C057EAB4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
      result = sub_1C058D220(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
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

unint64_t sub_1C058C00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174A8, &qword_1C0970D30);
    v3 = sub_1C095DD5C();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C057EAB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C058C0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17498, &unk_1C0970D20);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1C0516A8C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_1C058C208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D0, &qword_1C0970AC0);
    v3 = sub_1C095DD5C();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C0514E38();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_1C058C2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17480, &qword_1C0970A70);
  v3 = sub_1C095DD5C();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1C057EAB4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = v3[7] + 16 * v9;
    *v12 = v5;
    *(v12 + 8) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v5 = *(v11 - 2);
    v17 = *v11;

    v9 = sub_1C057EAB4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C058C430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1C095DD5C();
  LODWORD(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_1C057EAB4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 4 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 2);
    v17 = *v12;

    v10 = sub_1C057EAB4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C058C538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17470, &qword_1C0982390);
  v3 = sub_1C095DD5C();
  v4 = *(a1 + 32);
  v12 = *(a1 + 40);
  result = sub_1C0514E38();
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v12;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;

    swift_unownedRetain();
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v7 - 1);
    v12 = *v7;
    result = sub_1C0514E38();
    v7 = (v7 + 24);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C058C658(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17228, &qword_1C0970A00);
  v3 = sub_1C095DD5C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1C0514E38();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1C0514E38();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(uint64_t a1)
{
  v111 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v2 = *(a1 + 32);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_65;
  }

  swift_unownedRetain();

  *&v106 = a1;
  *(&v106 + 1) = v2;
  v101 = 0uLL;
  v96 = 0uLL;
  v3 = sub_1C0519A28(&v106, &v101, &v96);

  swift_unownedRelease();
  v92 = *(v3 + 16);
  if (!v92)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v91 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v86 = v3;
  while (1)
  {
    v93 = v4;
    v6 = (v91 + 80 * v4);
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    v110 = v6[4];
    v10 = *v6;
    v108 = v8;
    v109 = v9;
    v106 = v10;
    v107 = v7;
    v11 = v110;
    sub_1C05149F8(&v106, &v101, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C05149F8(&v106, &v101, &unk_1EBE17410, qword_1C0970CB0);

    swift_unownedRelease();
    v13 = *(&v107 + 1);
    v12 = v108;

    sub_1C0514A70(&v106);
    if (qword_1ED5BD000 != -1)
    {
      swift_once();
    }

    if (v13 == qword_1ED5BD008 && v12 == unk_1ED5BD010)
    {
    }

    else
    {
      v14 = sub_1C095DF3C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_1C05149F8(&v106, &v101, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v106);
    swift_unownedRetainStrong();
    v15 = *(*(&v11 + 1) + 64);
    v16 = *(*(&v11 + 1) + 72);

    v17 = swift_unownedRelease();
    *&v101 = v15;
    *(&v101 + 1) = v16;
    *&v96 = 14906;
    *(&v96 + 1) = 0xE200000000000000;
    sub_1C051D6F4(v17, v18, v19);
    v20 = sub_1C095DB3C();

    if (v20[2] != 2)
    {

LABEL_26:
      sub_1C05145B4(&v106, &unk_1EBE17410, qword_1C0970CB0);
      goto LABEL_55;
    }

    v21 = v20[5];
    *&v101 = v20[4];
    *(&v101 + 1) = v21;

    v22 = sub_1C095D8DC();
    if (v20[2] < 2uLL)
    {
      goto LABEL_64;
    }

    v89 = v23;
    v90 = v22;
    v25 = v20[6];
    v24 = v20[7];

    *&v101 = v25;
    *(&v101 + 1) = v24;
    v26 = sub_1C095D8DC();
    v87 = v27;
    v88 = v26;
    v28 = MEMORY[0x1E69E7CC0];
    v100 = sub_1C05178E0(MEMORY[0x1E69E7CC0], &qword_1EBE17490, &qword_1C0970AD0);
    swift_beginAccess();
    v29 = *(v11 + 16);
    v30 = *(v29 + 16);
    if (v30)
    {

      swift_beginAccess();
      v31 = v30 - 1;
      for (i = 32; ; i += 64)
      {
        v33 = *(v29 + i + 48);
        v35 = *(v29 + i);
        v34 = *(v29 + i + 16);
        v103 = *(v29 + i + 32);
        v104 = v33;
        v101 = v35;
        v102 = v34;
        v36 = v35;
        swift_unownedRetainStrong();
        v37 = *(*(&v11 + 1) + 56);
        sub_1C0514AC4(&v101, &v96);

        if (v36 == v37 && (v38 = *(v11 + 24), *(v38 + 16)) && (v39 = sub_1C0514E38(), (v40 & 1) != 0))
        {
          v41 = *(*(v38 + 56) + 8 * v39);

          swift_unownedRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1C05198E0(0, v28[2] + 1, 1, v28);
          }

          v43 = v28[2];
          v42 = v28[3];
          if (v43 >= v42 >> 1)
          {
            v28 = sub_1C05198E0((v42 > 1), v43 + 1, 1, v28);
          }

          v98 = v103;
          v99 = v104;
          v44 = v101;
          v96 = v101;
          v97 = v102;
          v28[2] = v43 + 1;
          v45 = &v28[10 * v43];
          v46 = v97;
          v47 = v99;
          *(v45 + 4) = v98;
          *(v45 + 5) = v47;
          *(v45 + 2) = v44;
          *(v45 + 3) = v46;
          v45[12] = v11;
          v45[13] = v41;
          if (!v31)
          {
LABEL_27:

            break;
          }
        }

        else
        {
          sub_1C0514A70(&v101);
          if (!v31)
          {
            goto LABEL_27;
          }
        }

        --v31;
      }
    }

    v48 = sub_1C0519EEC(v28);

    v49 = *(v48 + 16);
    if (v49)
    {
      break;
    }

LABEL_52:

    v82 = v100;
    type metadata accessor for UsoTask();
    v83 = swift_allocObject();
    v83[2] = v90;
    v83[3] = v89;
    v83[4] = v88;
    v83[5] = v87;
    v83[6] = v82;

    MEMORY[0x1C68DD810](v84);
    v3 = v86;
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C095D9AC();
    }

    sub_1C095D9DC();
    sub_1C05145B4(&v106, &unk_1EBE17410, qword_1C0970CB0);

    v5 = v111;

LABEL_55:
    v4 = v93 + 1;
    if (v93 + 1 == v92)
    {

      return v5;
    }

    if (v4 >= *(v3 + 16))
    {
      goto LABEL_63;
    }
  }

  v50 = 0;
  v94 = v48;
  v95 = v49 - 1;
  v51 = 32;
  do
  {
    v52 = *(v48 + v51 + 16);
    v53 = *(v48 + v51 + 32);
    v54 = *(v48 + v51 + 48);
    v105 = *(v48 + v51 + 64);
    v55 = *(v48 + v51);
    v103 = v53;
    v104 = v54;
    v101 = v55;
    v102 = v52;
    v56 = v105;
    sub_1C05149F8(&v101, &v96, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C05149F8(&v101, &v96, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v101);
    type metadata accessor for UsoValue();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    sub_1C05149F8(&v101, &v96, &unk_1EBE17410, qword_1C0970CB0);

    swift_unownedRelease();
    v59 = *(&v102 + 1);
    v58 = v103;

    sub_1C0514A70(&v101);
    v60 = v100;
    if (!*(v100 + 16) || (sub_1C0516A8C(v59, v58), (v61 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1C0970C90;
      *(v66 + 32) = v57;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v96 = v60;
      v100 = 0x8000000000000000;
      v69 = sub_1C0516A8C(v59, v58);
      v70 = *(v60 + 16);
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_61;
      }

      v73 = v68;
      if (*(v60 + 24) < v72)
      {
        sub_1C051A220(v72, isUniquelyReferenced_nonNull_native);
        v74 = sub_1C0516A8C(v59, v58);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_66;
        }

        v69 = v74;
        if ((v73 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_44:

        v76 = v96;
        *(*(v96 + 56) + 8 * v69) = v66;

        sub_1C05145B4(&v101, &unk_1EBE17410, qword_1C0970CB0);
        v100 = v76;
LABEL_48:
        v48 = v94;
        goto LABEL_49;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v68)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_1C066FC80();
        if (v73)
        {
          goto LABEL_44;
        }
      }

LABEL_46:
      v77 = v96;
      *(v96 + 8 * (v69 >> 6) + 64) |= 1 << v69;
      v78 = (v77[6] + 16 * v69);
      *v78 = v59;
      v78[1] = v58;
      *(v77[7] + 8 * v69) = v66;

      sub_1C05145B4(&v101, &unk_1EBE17410, qword_1C0970CB0);
      v79 = v77[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        goto LABEL_62;
      }

      v77[2] = v81;
      v100 = v77;
      goto LABEL_48;
    }

    v63 = sub_1C07A8CC0(&v96, v59, v58);
    if (*v62)
    {
      v64 = v62;

      MEMORY[0x1C68DD810](v65);
      if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C095D9AC();
      }

      sub_1C095D9DC();
    }

    (v63)(&v96, 0);

    sub_1C05145B4(&v101, &unk_1EBE17410, qword_1C0970CB0);

LABEL_49:
    if (v95 == v50)
    {
      goto LABEL_52;
    }

    ++v50;
    v51 += 80;
  }

  while (v50 < *(v48 + 16));
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C058D0A4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C() & 1;
  }
}

uint64_t sub_1C058D0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C058D164()
{
  result = qword_1EBE17438;
  if (!qword_1EBE17438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE17438);
  }

  return result;
}

uint64_t sub_1C058D1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C058D220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *sub_1C058D288@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1C058D308()
{
  result = qword_1EBE174F0;
  if (!qword_1EBE174F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE174E8, &qword_1C0970D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE174F0);
  }

  return result;
}

uint64_t UtteranceAlignment.init(asrHypothesisIndex:spans:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static UtteranceAlignment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1C055B00C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C058D3C8()
{
  if (*v0)
  {
    return 0x736E617073;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C058D404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C09CC440 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E617073 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C095DF3C();

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
  return result;
}

uint64_t sub_1C058D500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C058D748(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C058D53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C058D748(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t UtteranceAlignment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17520, &qword_1C0970DB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v12[0] = *(v1 + 8);
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058D748(v8, v9, v10);
  sub_1C095E05C();
  v14 = 0;
  sub_1C095DEEC();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17530, &qword_1C0970DB8);
    sub_1C058E52C(&qword_1EBE17538, sub_1C058D79C, MEMORY[0x1E69E6300]);
    sub_1C095DECC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C058D748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17528;
  if (!qword_1EBE17528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17528);
  }

  return result;
}

unint64_t sub_1C058D79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17540;
  if (!qword_1EBE17540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17540);
  }

  return result;
}

uint64_t UtteranceAlignment.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1C095E01C();

  return sub_1C056D100(a1, v3);
}

uint64_t UtteranceAlignment.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C056D100(v3, v1);
  return sub_1C095E03C();
}

uint64_t UtteranceAlignment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17548, &qword_1C0970DC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058D748(v9, v10, v11);
  sub_1C095E04C();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_1C095DE2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17530, &qword_1C0970DB8);
    v16 = 1;
    sub_1C058E52C(&qword_1EBE17550, sub_1C058E5A4, MEMORY[0x1E69E6330]);
    sub_1C095DDFC();
    (*(v6 + 8))(v8, v5);
    v13 = v15[1];
    *a2 = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C058DAA4()
{
  v1 = *(v0 + 8);
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C056D100(v3, v1);
  return sub_1C095E03C();
}

uint64_t sub_1C058DB04(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1C095E01C();

  return sub_1C056D100(a1, v3);
}

uint64_t sub_1C058DB54(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C056D100(v4, v2);
  return sub_1C095E03C();
}

uint64_t sub_1C058DBE0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1C055B00C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t UtteranceSpan.init(startIndex:endIndex:startUnicodeScalarIndex:endUnicodeScalarIndex:startMilliSeconds:endMilliSeconds:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_1C058DC48()
{
  v1 = *v0;
  v2 = 0x646E497472617473;
  v3 = 0xD000000000000015;
  v4 = 0x696C6C694D646E65;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 1)
  {
    v5 = 0x7865646E49646E65;
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

uint64_t sub_1C058DD20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C058EC48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C058DD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C058E640(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C058DD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C058E640(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t UtteranceSpan.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17560, &qword_1C0970DC8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v14[6] = v1[2];
  v14[7] = v8;
  LODWORD(v6) = v1[5];
  v14[4] = v1[4];
  v14[5] = v9;
  v14[3] = v6;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058E640(v10, v11, v12);
  sub_1C095E05C();
  v20 = 0;
  sub_1C095DEEC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = 1;
  sub_1C095DEEC();
  v18 = 2;
  sub_1C095DEEC();
  v17 = 3;
  sub_1C095DEEC();
  v16 = 4;
  sub_1C095DEDC();
  v15 = 5;
  sub_1C095DEDC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t UtteranceSpan.hash(into:)()
{
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E01C();
}

uint64_t UtteranceSpan.hashValue.getter()
{
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t UtteranceSpan.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17570, &qword_1C0970DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058E640(v9, v10, v11);
  sub_1C095E04C();
  if (!v2)
  {
    v26 = 0;
    v12 = sub_1C095DE2C();
    v25 = 1;
    v13 = sub_1C095DE2C();
    v24 = 2;
    v20 = sub_1C095DE2C();
    v23 = 3;
    v19 = sub_1C095DE2C();
    v22 = 4;
    v18 = sub_1C095DE0C();
    v21 = 5;
    v17 = sub_1C095DE0C();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    a2[1] = v13;
    v15 = v19;
    a2[2] = v20;
    a2[3] = v15;
    v16 = v17;
    a2[4] = v18;
    a2[5] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C058E340()
{
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t sub_1C058E3E4()
{
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E01C();
}

uint64_t sub_1C058E458(uint64_t a1)
{
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t sub_1C058E52C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17530, &qword_1C0970DB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C058E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17558;
  if (!qword_1EBE17558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17558);
  }

  return result;
}

BOOL _s12SiriOntology13UtteranceSpanV2eeoiySbAC_ACtFZ_0(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

unint64_t sub_1C058E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17568;
  if (!qword_1EBE17568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17568);
  }

  return result;
}

unint64_t sub_1C058E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17578;
  if (!qword_1EBE17578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17578);
  }

  return result;
}

unint64_t sub_1C058E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17580;
  if (!qword_1EBE17580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17580);
  }

  return result;
}

uint64_t sub_1C058E744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C058E78C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UtteranceSpan(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UtteranceSpan(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UtteranceSpan.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UtteranceSpan.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for UtteranceAlignment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C058EA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17588;
  if (!qword_1EBE17588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17588);
  }

  return result;
}

unint64_t sub_1C058EA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17590;
  if (!qword_1EBE17590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17590);
  }

  return result;
}

unint64_t sub_1C058EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE17598;
  if (!qword_1EBE17598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17598);
  }

  return result;
}

unint64_t sub_1C058EB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE175A0;
  if (!qword_1EBE175A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE175A0);
  }

  return result;
}

unint64_t sub_1C058EB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE175A8;
  if (!qword_1EBE175A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE175A8);
  }

  return result;
}

unint64_t sub_1C058EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE175B0;
  if (!qword_1EBE175B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE175B0);
  }

  return result;
}

uint64_t sub_1C058EC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E497472617473 && a2 == 0xEA00000000007865;
  if (v4 || (sub_1C095DF3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C09CC460 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C09CC480 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C09CC4A0 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C6C694D646E65 && a2 == 0xEF73646E6F636553)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C095DF3C();

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

uint64_t sub_1C058EE60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "angeQualifier_MiddleOf";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v3 == 2)
    {
      v4 = "andConfirmation_DontDelete";
    }

    else
    {
      v4 = "andConfirmation_ShowAll";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "andConfirmation_DeleteOnce";
    }

    else
    {
      v4 = "angeQualifier_MiddleOf";
    }

    v5 = 0xD00000000000002ALL;
  }

  v6 = "andConfirmation_DontDelete";
  v7 = 0xD000000000000027;
  if (a2 != 2)
  {
    v7 = 0xD00000000000002CLL;
    v6 = "andConfirmation_ShowAll";
  }

  if (a2)
  {
    v2 = "andConfirmation_DeleteOnce";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD00000000000002ALL;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C058EF70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000023;
  v3 = "ntQualifier_EndOf";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "angeQualifier_HalfOf";
    v12 = 0xD000000000000026;
    if (a1 == 6)
    {
      v12 = 0xD000000000000023;
    }

    else
    {
      v11 = "angeQualifier_AllOf";
    }

    v13 = "angeQualifier_EndOf";
    v14 = 0xD000000000000029;
    if (a1 != 4)
    {
      v14 = 0xD000000000000024;
      v13 = "angeQualifier_LaterPartOf";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = "angeQualifier_StartOf";
    v6 = 0xD00000000000002BLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000023;
      v5 = "angeQualifier_EarlierPartOf";
    }

    v7 = "angeQualifier_RestOf";
    v8 = 0xD000000000000025;
    if (!a1)
    {
      v8 = 0xD000000000000024;
      v7 = "ntQualifier_EndOf";
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "angeQualifier_HalfOf";
      }

      else
      {
        v3 = "angeQualifier_AllOf";
        v2 = 0xD000000000000026;
      }
    }

    else if (a2 == 4)
    {
      v3 = "angeQualifier_EndOf";
      v2 = 0xD000000000000029;
    }

    else
    {
      v3 = "angeQualifier_LaterPartOf";
      v2 = 0xD000000000000024;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "angeQualifier_StartOf";
      v2 = 0xD00000000000002BLL;
    }

    else
    {
      v3 = "angeQualifier_EarlierPartOf";
    }
  }

  else if (a2)
  {
    v3 = "angeQualifier_RestOf";
    v2 = 0xD000000000000025;
  }

  else
  {
    v2 = 0xD000000000000024;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C095DF3C();
  }

  return v15 & 1;
}

uint64_t sub_1C058F16C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000023;
  v3 = "tionTrigger_TextMessageReceived";
  if (a1 > 3u)
  {
    v4 = "ntQualifier_Minimum";
    if (a1 == 6)
    {
      v10 = 0xD000000000000023;
    }

    else
    {
      v10 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v4 = "ntQualifier_Average";
    }

    v6 = "ntQualifier_Possible";
    if (a1 != 4)
    {
      v6 = "ntQualifier_Maximum";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = 0xD000000000000023;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = "ntQualifier_Remaining";
    if (a1 == 2)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v5 = 0xD000000000000024;
    }

    if (a1 != 2)
    {
      v4 = "ntQualifier_StartOf";
    }

    v6 = "ntQualifier_Total";
    v7 = 0xD000000000000025;
    if (!a1)
    {
      v7 = 0xD000000000000021;
      v6 = "tionTrigger_TextMessageReceived";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ntQualifier_Minimum";
        goto LABEL_40;
      }

      v3 = "ntQualifier_Average";
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v3 = "ntQualifier_Possible";
    }

    else
    {
      v3 = "ntQualifier_Maximum";
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "ntQualifier_Total";
        v2 = 0xD000000000000025;
        goto LABEL_40;
      }

LABEL_39:
      v2 = 0xD000000000000021;
      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v3 = "ntQualifier_Remaining";
    }

    else
    {
      v3 = "ntQualifier_StartOf";
      v2 = 0xD000000000000024;
    }
  }

LABEL_40:
  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C058F348(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000028;
  v3 = "ntUnitType_SpeedUnit";
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = "tionTrigger_TextMessageSent";
    v14 = "tionTrigger_FaceTimeSent";
    v15 = 0xD00000000000002CLL;
    if (a1 != 8)
    {
      v15 = 0xD00000000000002FLL;
      v14 = "tionTrigger_FaceTimeReceived";
    }

    if (a1 == 7)
    {
      v15 = 0xD000000000000028;
    }

    else
    {
      v13 = v14;
    }

    v16 = "tionTrigger_CommunicationSent";
    v17 = 0xD00000000000002BLL;
    if (a1 == 5)
    {
      v17 = 0xD000000000000028;
    }

    else
    {
      v16 = "tionTrigger_CallReceived";
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v15;
    }

    if (v4 <= 6)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xD000000000000031;
    v6 = "tionTrigger_CallSent";
    v7 = 0xD000000000000025;
    v8 = "tionTrigger_EmailSent";
    v9 = 0xD00000000000002DLL;
    if (a1 == 3)
    {
      v9 = 0xD000000000000029;
    }

    else
    {
      v8 = "tionTrigger_EmailReceived";
    }

    if (a1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    v10 = "unicationReceived";
    if (a1)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v10 = "ntUnitType_SpeedUnit";
    }

    if (a1 <= 1u)
    {
      v11 = v5;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v3 = "tionTrigger_CommunicationSent";
      }

      else
      {
        v3 = "tionTrigger_CallReceived";
        v2 = 0xD00000000000002BLL;
      }
    }

    else if (a2 == 7)
    {
      v3 = "tionTrigger_TextMessageSent";
    }

    else if (a2 == 8)
    {
      v3 = "tionTrigger_FaceTimeSent";
      v2 = 0xD00000000000002CLL;
    }

    else
    {
      v3 = "tionTrigger_FaceTimeReceived";
      v2 = 0xD00000000000002FLL;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "unicationReceived";
      v2 = 0xD000000000000024;
    }

    else
    {
      v2 = 0xD000000000000031;
    }
  }

  else if (a2 == 2)
  {
    v3 = "tionTrigger_CallSent";
    v2 = 0xD000000000000025;
  }

  else if (a2 == 3)
  {
    v3 = "tionTrigger_EmailSent";
    v2 = 0xD000000000000029;
  }

  else
  {
    v3 = "tionTrigger_EmailReceived";
    v2 = 0xD00000000000002DLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1C095DF3C();
  }

  return v18 & 1;
}

uint64_t sub_1C058F5B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "DateTime_Weekdays";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v4 = 0xD000000000000024;
    }

    if (v3 == 2)
    {
      v5 = "ntUnitType_DistanceUnit";
    }

    else
    {
      v5 = "ntUnitType_WeightUnit";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000027;
    }

    else
    {
      v4 = 0xD000000000000025;
    }

    if (v3)
    {
      v5 = "ntUnitType_EnergyUnit";
    }

    else
    {
      v5 = "DateTime_Weekdays";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ntUnitType_DistanceUnit";
    v6 = "ntUnitType_WeightUnit";
    v7 = 0xD000000000000024;
    v8 = a2 == 2;
  }

  else
  {
    v6 = "ntUnitType_EnergyUnit";
    v7 = 0xD000000000000027;
    v8 = a2 == 0;
  }

  if (v8)
  {
    v9 = 0xD000000000000025;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && (v5 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C095DF3C();
  }

  return v11 & 1;
}

uint64_t sub_1C058F6C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000021;
  v3 = "common_CalendarEventType_Event";
  v4 = a1;
  v5 = 0xD000000000000024;
  if (a1 == 4)
  {
    v5 = 0xD000000000000022;
    v6 = "tionMode_SendCopy";
  }

  else
  {
    v6 = "tionMode_SharePlay";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "tionMode_Airdrop";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000021;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (v4 == 1)
  {
    v10 = "tionMode_Namedrop";
  }

  else
  {
    v10 = "tionMode_Together";
  }

  if (!v4)
  {
    v9 = 0xD000000000000021;
    v10 = "common_CalendarEventType_Event";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "tionMode_Airdrop";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000022;
      v3 = "tionMode_SendCopy";
    }

    else
    {
      v2 = 0xD000000000000024;
      v3 = "tionMode_SharePlay";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "tionMode_Namedrop";
    }

    else
    {
      v2 = 0xD000000000000020;
      v3 = "tionMode_Together";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C058F81C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "ventType_Meeting";
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = "ventType_Appointment";
      v3 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000020;
    }

    else
    {
      v3 = 0xD000000000000021;
    }

    if (v2)
    {
      v4 = "ventType_Conflict";
    }

    else
    {
      v4 = "rection_Rightward";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a2 == 2)
    {
      v6 = "ventType_Meeting";
    }

    else
    {
      v6 = "ventType_Appointment";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000020;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (a2)
    {
      v6 = "ventType_Conflict";
    }

    else
    {
      v6 = "rection_Rightward";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C058F94C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = "common_SettingValueType_Target";
  if (a1 == 5)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000021;
  }

  if (a1 == 5)
  {
    v5 = "rection_Leftward";
  }

  else
  {
    v5 = "common_SpatialDirection_Down";
  }

  if (a1 == 3)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (a1 == 3)
  {
    v7 = "common_SpatialDirection_Farther";
  }

  else
  {
    v7 = "common_SpatialDirection_Further";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000001ELL;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (a1 == 1)
  {
    v10 = "common_SpatialDirection_Up";
  }

  else
  {
    v10 = "common_SpatialDirection_Nearer";
  }

  if (!a1)
  {
    v9 = 0xD00000000000001ALL;
    v10 = "common_SettingValueType_Target";
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v7 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001ELL;
        v3 = "common_SpatialDirection_Up";
      }

      else
      {
        v3 = "common_SpatialDirection_Nearer";
      }
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "rection_Leftward";
    }

    else
    {
      v2 = 0xD000000000000021;
      v3 = "common_SpatialDirection_Down";
    }
  }

  else if (a2 == 3)
  {
    v3 = "common_SpatialDirection_Farther";
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = "common_SpatialDirection_Further";
  }

  if (v12 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C058FAE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2 == 2)
    {
      v4 = "common_ReactionCategory_Emoji";
    }

    else
    {
      v4 = "common_ReactionCategory_Memoji";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2)
    {
      v4 = "common_ReactionCategory_Genmoji";
    }

    else
    {
      v4 = "Version_Soundtrack";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2 == 2)
    {
      v6 = "common_ReactionCategory_Emoji";
    }

    else
    {
      v6 = "common_ReactionCategory_Memoji";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v6 = "common_ReactionCategory_Genmoji";
    }

    else
    {
      v6 = "Version_Soundtrack";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C058FBF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "nStatus_NotCompleted";
  if (a1 > 3u)
  {
    v5 = "ureMode_SpatialVideo";
    v10 = 0xD000000000000026;
    if (a1 != 6)
    {
      v10 = 0xD000000000000027;
      v5 = "ureMode_AudioRecording";
    }

    v7 = "common_MediaCaptureMode_Selfie";
    v11 = 0xD000000000000024;
    if (a1 == 4)
    {
      v11 = 0xD00000000000001DLL;
    }

    else
    {
      v7 = "common_MediaCaptureMode_Video";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0xD000000000000022;
    v5 = "ureMode_SpatialPhoto";
    if (a1 == 2)
    {
      v6 = 0xD00000000000001DLL;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a1 != 2)
    {
      v5 = "common_MediaCaptureMode_Photo";
    }

    v7 = "ureMode_Screenshot";
    if (a1)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v7 = "nStatus_NotCompleted";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }
  }

  if (v8)
  {
    v12 = v7;
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
        v3 = "common_MediaCaptureMode_Selfie";
        goto LABEL_40;
      }

      v13 = "common_MediaCaptureMode_SpatialVideo";
      goto LABEL_37;
    }

    if (a2 == 6)
    {
      v3 = "ureMode_SpatialVideo";
      v2 = 0xD000000000000026;
    }

    else
    {
      v3 = "ureMode_AudioRecording";
      v2 = 0xD000000000000027;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0xD000000000000022;
        goto LABEL_40;
      }

      v13 = "common_MediaCaptureMode_SpatialPhoto";
LABEL_37:
      v3 = (v13 - 32);
      v2 = 0xD000000000000024;
      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v3 = "ureMode_SpatialPhoto";
    }

    else
    {
      v3 = "common_MediaCaptureMode_Photo";
      v2 = 0xD00000000000001ELL;
    }
  }

LABEL_40:
  if (v9 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C095DF3C();
  }

  return v14 & 1;
}

uint64_t sub_1C058FDE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "common_SearchQualifier_Another";
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = "common_SpatialPosition_Left";
    v13 = 0xD000000000000022;
    if (a1 != 2)
    {
      v13 = 0xD00000000000001ALL;
      v12 = "sition_BottomRight";
    }

    v14 = "common_SpatialPosition_Right";
    v15 = 0xD00000000000001BLL;
    if (!a1)
    {
      v15 = 0xD00000000000001CLL;
      v14 = "common_SearchQualifier_Another";
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v4 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = "sition_BottomLeft";
    v6 = "common_SpatialPosition_TopLeft";
    v7 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001DLL;
      v6 = "common_SpatialPosition_TopRight";
    }

    if (a1 == 6)
    {
      v7 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = v6;
    }

    v8 = "common_SpatialPosition_Top";
    v9 = 0xD000000000000021;
    if (a1 == 4)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = "common_SpatialPosition_Center";
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        v3 = "common_SpatialPosition_Center";
        v2 = 0xD000000000000021;
        goto LABEL_44;
      }

      v16 = "common_SpatialPosition_Center";
    }

    else
    {
      if (a2 == 6)
      {
        v3 = "sition_BottomLeft";
        v2 = 0xD00000000000001ELL;
        goto LABEL_44;
      }

      if (a2 == 7)
      {
        v3 = "common_SpatialPosition_TopLeft";
        v2 = 0xD00000000000001FLL;
        goto LABEL_44;
      }

      v16 = "common_SpatialPosition_Bottom";
    }

    v3 = (v16 - 32);
    goto LABEL_44;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "common_SpatialPosition_Left";
      v2 = 0xD000000000000022;
    }

    else
    {
      v3 = "sition_BottomRight";
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2)
  {
    v3 = "common_SpatialPosition_Right";
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

LABEL_44:
  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1C095DF3C();
  }

  return v17 & 1;
}

uint64_t sub_1C059001C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "common_OffsetDirection_Before";
  if (a1 > 3u)
  {
    v4 = "lifier_Personalized";
    if (a1 != 6)
    {
      v4 = "common_SearchQualifier_Exactly";
    }

    v6 = "common_SearchQualifier_NewToMe";
    v10 = 0xD000000000000023;
    if (a1 == 4)
    {
      v10 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = "common_SearchQualifier_New";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0xD00000000000001ELL;
    }
  }

  else
  {
    v4 = "lifier_Approximate";
    if (a1 == 2)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a1 != 2)
    {
      v4 = "common_SearchQualifier_Favorite";
    }

    v6 = "common_SearchQualifier_Old";
    v7 = 0xD000000000000022;
    if (!a1)
    {
      v7 = 0xD00000000000001ALL;
      v6 = "common_OffsetDirection_Before";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "common_SearchQualifier_Old";
        v2 = 0xD000000000000022;
      }

      else
      {
        v2 = 0xD00000000000001ALL;
      }

      goto LABEL_39;
    }

    if (a2 == 2)
    {
      v3 = "lifier_Approximate";
      v2 = 0xD00000000000001FLL;
      goto LABEL_39;
    }

    v12 = "common_SearchQualifier_NewToMe";
LABEL_38:
    v3 = (v12 - 32);
    goto LABEL_39;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v12 = "common_SearchQualifier_Exactly";
    }

    else
    {
      v12 = "common_SearchQualifier_Another";
    }

    goto LABEL_38;
  }

  if (a2 == 4)
  {
    v3 = "common_SearchQualifier_NewToMe";
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = "common_SearchQualifier_New";
    v2 = 0xD000000000000023;
  }

LABEL_39:
  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C0590200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000022;
  v3 = 0xD000000000000023;
  v4 = "common_RequiredStatus_Optional";
  if (a1 == 5)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (a1 == 5)
  {
    v6 = "tatus_RespondedNo";
  }

  else
  {
    v6 = "tatus_NotResponded";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000022;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (a1 == 3)
  {
    v8 = "tatus_RespondedMaybe";
  }

  else
  {
    v8 = "tatus_RespondedYes";
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (a1 > 4u)
  {
    v8 = v6;
  }

  v10 = 0xD000000000000024;
  if (a1 == 1)
  {
    v10 = 0xD00000000000001FLL;
    v11 = "tatus_ResponseMaybe";
  }

  else
  {
    v11 = "common_ResponseStatus_Responded";
  }

  if (a1)
  {
    v3 = v10;
    v12 = v11;
  }

  else
  {
    v12 = "common_RequiredStatus_Optional";
  }

  v13 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v9;
  }

  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001FLL;
        v4 = "tatus_ResponseMaybe";
      }

      else
      {
        v2 = 0xD000000000000024;
        v4 = "common_ResponseStatus_Responded";
      }
    }

    else
    {
      v2 = 0xD000000000000023;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v4 = "tatus_RespondedNo";
    }

    else
    {
      v2 = 0xD000000000000020;
      v4 = "tatus_NotResponded";
    }
  }

  else if (a2 == 3)
  {
    v4 = "tatus_RespondedMaybe";
  }

  else
  {
    v2 = 0xD000000000000021;
    v4 = "tatus_RespondedYes";
  }

  if (v14 == v2 && (v15 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1C095DF3C();
  }

  return v16 & 1;
}

uint64_t sub_1C059039C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = "tType_EmailMessage";
  v4 = a1;
  v5 = 0xD000000000000026;
  if (a1 == 4)
  {
    v6 = "common_CurrencyAmount_Free";
  }

  else
  {
    v5 = 0xD000000000000020;
    v6 = "mount_StatementBalance";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001ALL;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v8 = "mount_MaximumAllowed";
  }

  else
  {
    v8 = v6;
  }

  if (v4 == 1)
  {
    v9 = 0xD00000000000001FLL;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (v4 == 1)
  {
    v10 = "mount_MinimumAllowed";
  }

  else
  {
    v10 = "common_CurrencyAmount_AmountDue";
  }

  if (!v4)
  {
    v9 = 0xD000000000000024;
    v10 = "tType_EmailMessage";
  }

  if (v4 > 2)
  {
    v11 = v8;
  }

  else
  {
    v7 = v9;
    v11 = v10;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ALL;
      v3 = "mount_MaximumAllowed";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000026;
      v3 = "common_CurrencyAmount_Free";
    }

    else
    {
      v2 = 0xD000000000000020;
      v3 = "mount_StatementBalance";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001FLL;
      v3 = "mount_MinimumAllowed";
    }

    else
    {
      v3 = "common_CurrencyAmount_AmountDue";
    }
  }

  if (v7 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C0590504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v2 == 2)
    {
      v4 = "common_AdjustmentType_Scroll";
    }

    else
    {
      v4 = "common_AdjustmentType_Resize";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v2)
    {
      v4 = "common_AdjustmentType_Zoom";
    }

    else
    {
      v4 = "common_ZoomDirection_ZoomToFit";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (a2 == 2)
    {
      v6 = "common_AdjustmentType_Scroll";
    }

    else
    {
      v6 = "common_AdjustmentType_Resize";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v6 = "common_AdjustmentType_Zoom";
    }

    else
    {
      v6 = "common_ZoomDirection_ZoomToFit";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C0590614(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "common_SortDirection_Trending";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "tion_ZoomToFitWidth";
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = "common_ZoomDirection_ZoomOut";
      v4 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000023;
    }

    else
    {
      v4 = 0xD00000000000001BLL;
    }

    if (v3)
    {
      v5 = "common_ZoomDirection_ZoomIn";
    }

    else
    {
      v5 = "common_SortDirection_Trending";
    }
  }

  if (a2 > 1u)
  {
    v2 = "tion_ZoomToFitWidth";
    v6 = "common_ZoomDirection_ZoomOut";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD00000000000001CLL;
    }

    else
    {
      v8 = 0xD00000000000001ELL;
    }
  }

  else
  {
    v6 = "common_ZoomDirection_ZoomIn";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000023;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C0590734(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  v3 = "common_SizeDirection_Smaller";
  if (a1 > 4u)
  {
    v4 = "common_SortDirection_Oldest";
    v5 = 0xD000000000000019;
    v11 = "common_SortDirection_Best";
    v12 = 0xD00000000000001DLL;
    if (a1 == 8)
    {
      v12 = 0xD00000000000001CLL;
    }

    else
    {
      v11 = "common_SortDirection_Typical";
    }

    if (a1 != 7)
    {
      v5 = v12;
      v4 = v11;
    }

    v8 = "common_SortDirection_Unpopular";
    v9 = 0xD000000000000020;
    if (a1 != 5)
    {
      v9 = 0xD00000000000001BLL;
      v8 = "tion_Recommended";
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v4 = "common_SortDirection_Worst";
    v5 = 0xD00000000000001DLL;
    v6 = "common_SortDirection_Atypical";
    v7 = 0xD00000000000001ELL;
    if (a1 == 3)
    {
      v7 = 0xD00000000000001CLL;
    }

    else
    {
      v6 = "common_SortDirection_Popular";
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "common_SortDirection_Newest";
    v9 = 0xD00000000000001ALL;
    if (!a1)
    {
      v9 = 0xD00000000000001BLL;
      v8 = "common_SizeDirection_Smaller";
    }

    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 > 6u)
    {
      if (a2 == 7)
      {
        v3 = "common_SortDirection_Oldest";
        v2 = 0xD000000000000019;
        goto LABEL_44;
      }

      if (a2 == 8)
      {
        v15 = "common_SortDirection_Typical";
LABEL_33:
        v3 = (v15 - 32);
        v2 = 0xD00000000000001CLL;
        goto LABEL_44;
      }

      v16 = "common_SortDirection_Trending";
LABEL_42:
      v3 = (v16 - 32);
      v2 = 0xD00000000000001DLL;
      goto LABEL_44;
    }

    if (a2 == 5)
    {
      v3 = "common_SortDirection_Unpopular";
      v2 = 0xD000000000000020;
    }

    else
    {
      v3 = "tion_Recommended";
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          v3 = "common_SortDirection_Popular";
          v2 = 0xD00000000000001ELL;
          goto LABEL_44;
        }

        v15 = "common_SortDirection_Popular";
        goto LABEL_33;
      }

      v16 = "common_SortDirection_Atypical";
      goto LABEL_42;
    }

    if (a2)
    {
      v3 = "common_SortDirection_Newest";
      v2 = 0xD00000000000001ALL;
    }
  }

LABEL_44:
  if (v13 == v2 && (v14 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1C095DF3C();
  }

  return v17 & 1;
}

uint64_t sub_1C0590984(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  v3 = "Type_DefiniteReference";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD00000000000001CLL;
  }

  if (a1 == 4)
  {
    v6 = "common_SizeDirection_Narrower";
  }

  else
  {
    v6 = "common_SizeDirection_Taller";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "common_SizeDirection_Shorter";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000001ALL;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (v4 == 1)
  {
    v10 = "common_SizeDirection_Bigger";
  }

  else
  {
    v10 = "common_SizeDirection_Wider";
  }

  if (!v4)
  {
    v9 = 0xD00000000000001BLL;
    v10 = "Type_DefiniteReference";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001DLL;
      v3 = "common_SizeDirection_Shorter";
    }

    else if (a2 == 4)
    {
      v3 = "common_SizeDirection_Narrower";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "common_SizeDirection_Taller";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001ALL;
      v3 = "common_SizeDirection_Bigger";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "common_SizeDirection_Wider";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C0590AE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001CLL;
  v3 = "common_PhoneCallMode_Video";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD00000000000001CLL;
    }

    if (v4)
    {
      v5 = "common_PlaybackState_Seeking";
    }

    else
    {
      v5 = "common_PhoneCallMode_Video";
    }
  }

  else
  {
    if (a1 == 2)
    {
      v7 = "common_PlaybackState_Playing";
    }

    else
    {
      if (a1 == 3)
      {
        v5 = "common_PlaybackState_Playing";
        v6 = 0xD000000000000020;
        goto LABEL_14;
      }

      v7 = "common_PlaybackState_Stopped";
    }

    v5 = v7 - 32;
    v6 = 0xD00000000000001CLL;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "common_PlaybackState_Seeking";
    }
  }

  else if (a2 == 2)
  {
    v3 = "common_PlaybackState_Paused";
  }

  else
  {
    v3 = "common_PlaybackState_Playing";
    if (a2 == 3)
    {
      v2 = 0xD000000000000020;
    }

    else
    {
      v3 = "tate_Interrupted";
    }
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C095DF3C();
  }

  return v8 & 1;
}

uint64_t sub_1C0590C40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "Type_MusicPlaylist";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v7 = "common_PhoneCallMode_Phone";
    }

    else
    {
      v7 = "Type_MusicPlaylist";
    }
  }

  else if (a1 == 2)
  {
    v7 = "common_PhoneCallMode_Shared";
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = "common_PhoneCallMode_Audio";
    }

    else
    {
      v5 = "common_PhoneCallMode_Video";
    }

    v7 = (v5 - 32);
    v6 = 0xD00000000000001ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "common_PhoneCallMode_Phone";
    }
  }

  else if (a2 == 2)
  {
    v3 = "common_PhoneCallMode_Shared";
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = "common_PhoneCallMode_DropIn";
    if (a2 != 3)
    {
      v3 = "common_PhoneCallMode_Audio";
    }
  }

  if (v6 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C095DF3C();
  }

  return v8 & 1;
}

uint64_t sub_1C0590D90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "common_ScheduleType_Scheduled";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD000000000000025;
    }

    if (v3)
    {
      v4 = "ger_AppleIntelligence";
    }

    else
    {
      v4 = "common_ScheduleType_Scheduled";
    }
  }

  else if (a1 == 2)
  {
    v4 = "common_VoiceTrigger_JustSiri";
    v5 = 0xD00000000000001BLL;
  }

  else if (a1 == 3)
  {
    v4 = "common_VoiceTrigger_HeySiri";
    v5 = 0xD000000000000025;
  }

  else
  {
    v4 = "ger_OtherSiriTriggers";
    v5 = 0xD000000000000027;
  }

  if (a2 <= 1u)
  {
    v6 = "ger_AppleIntelligence";
    v7 = 0xD00000000000001CLL;
    v8 = a2 == 0;
  }

  else
  {
    if (a2 == 2)
    {
      v2 = "common_VoiceTrigger_JustSiri";
      v9 = 0xD00000000000001BLL;
      goto LABEL_22;
    }

    v2 = "common_VoiceTrigger_HeySiri";
    v6 = "ger_OtherSiriTriggers";
    v7 = 0xD000000000000027;
    v8 = a2 == 3;
  }

  if (v8)
  {
    v9 = 0xD000000000000025;
  }

  else
  {
    v9 = v7;
  }

  if (!v8)
  {
    v2 = v6;
  }

LABEL_22:
  if (v5 == v9 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C0590EF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000018;
  v3 = 0xD00000000000001BLL;
  v4 = "common_MessageState_Received";
  v5 = a1;
  v6 = 0xD00000000000001CLL;
  if (a1 == 4)
  {
    v6 = 0xD000000000000018;
    v7 = "common_ReactionType_Exclamation";
  }

  else
  {
    v7 = "common_ReactionType_Like";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000001FLL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "common_ReactionType_Love";
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000019;
  }

  else
  {
    v9 = 0xD000000000000018;
  }

  if (v5 == 1)
  {
    v10 = "common_ReactionType_Dislike";
  }

  else
  {
    v10 = "common_ReactionType_Laugh";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "common_MessageState_Received";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001FLL;
      v4 = "common_ReactionType_Love";
    }

    else if (a2 == 4)
    {
      v4 = "common_ReactionType_Exclamation";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v4 = "common_ReactionType_Like";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000019;
      v4 = "common_ReactionType_Dislike";
    }

    else
    {
      v4 = "common_ReactionType_Laugh";
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C0591058(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000018;
  v3 = "common_ListPosition_Tenth";
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xD00000000000001ALL;
    v14 = "common_MessageState_Unsaved";
    if (a1 == 2)
    {
      v15 = 0xD00000000000001BLL;
    }

    else
    {
      v15 = 0xD000000000000019;
    }

    if (a1 != 2)
    {
      v14 = "common_MessageState_Deleted";
    }

    if (a1)
    {
      v13 = 0xD00000000000001BLL;
      v16 = "common_MessageState_Unsent";
    }

    else
    {
      v16 = "common_ListPosition_Tenth";
    }

    if (a1 <= 1u)
    {
      v11 = v13;
    }

    else
    {
      v11 = v15;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = "common_MessageState_Unread";
    v6 = "common_MessageState_Read";
    v7 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v6 = "common_MessageState_Sent";
    }

    if (a1 == 6)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v9 = "common_MessageState_Draft";
    v10 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v10 = 0xD000000000000019;
    }

    else
    {
      v9 = "common_MessageState_Saved";
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v18 = "common_MessageState_Draft";
        goto LABEL_48;
      }

      v17 = "common_MessageState_Deleted";
    }

    else
    {
      if (!a2)
      {
        goto LABEL_51;
      }

      v17 = "common_MessageState_Unsaved";
    }

    v3 = v17 - 32;
    v2 = 0xD00000000000001BLL;
    goto LABEL_52;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v18 = "common_MessageState_Saved";
LABEL_48:
      v3 = v18 - 32;
      v2 = 0xD000000000000019;
      goto LABEL_52;
    }

    v3 = "common_MessageState_Saved";
LABEL_51:
    v2 = 0xD00000000000001ALL;
    goto LABEL_52;
  }

  if (a2 == 6)
  {
    v3 = "common_MessageState_Unread";
  }

  else if (a2 == 7)
  {
    v3 = "common_MessageState_Read";
  }

  else
  {
    v3 = "common_MessageState_Sent";
    v2 = 0xD00000000000001CLL;
  }

LABEL_52:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1C095DF3C();
  }

  return v19 & 1;
}