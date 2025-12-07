uint64_t EXFDRDecodeClient.hashValue.getter()
{
  v1 = *v0;
  sub_24A1D1B0C();
  MEMORY[0x24C212F60](v1);
  return sub_24A1D1B2C();
}

uint64_t sub_24A1CCF1C()
{
  v1 = *v0;
  sub_24A1D1B0C();
  MEMORY[0x24C212F60](v1);
  return sub_24A1D1B2C();
}

uint64_t sub_24A1CCF90(uint64_t a1)
{
  v2 = *v1;
  sub_24A1D1B0C();
  MEMORY[0x24C212F60](v2);
  return sub_24A1D1B2C();
}

uint64_t sub_24A1CCFE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24A1CD0BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A1CD584();
  v5 = sub_24A1CDCB8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

BOOL sub_24A1CD160(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24A1CD190@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24A1CD1BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24A1CD294@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t EXFDRDecodeDataCtx.init(dataClass:uniqueID:uniqueIDLength:subCC:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t EXFDRDecodeTransferRawDataCtx.init(data:dataLength:clientExclave:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 12) = v4;
  return result;
}

__n128 EXFDRDecodeGetTrustedDataCtx.init(clientExclave:dataCtx:decodeOptions:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u32[0];
  v5 = a2[1].n128_u64[1];
  v6 = *a3;
  *a4 = *a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;
  return result;
}

uint64_t EXFDRDecodeTrustedDataCtx.dataCtx.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = v1[3];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

unint64_t sub_24A1CD3CC()
{
  result = qword_27EF38A70;
  if (!qword_27EF38A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A70);
  }

  return result;
}

unint64_t sub_24A1CD424()
{
  result = qword_27EF38A78;
  if (!qword_27EF38A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A78);
  }

  return result;
}

unint64_t sub_24A1CD47C()
{
  result = qword_27EF38A80;
  if (!qword_27EF38A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A80);
  }

  return result;
}

unint64_t sub_24A1CD4D4()
{
  result = qword_27EF38A88;
  if (!qword_27EF38A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A88);
  }

  return result;
}

unint64_t sub_24A1CD52C()
{
  result = qword_27EF38A90;
  if (!qword_27EF38A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A90);
  }

  return result;
}

unint64_t sub_24A1CD584()
{
  result = qword_27EF38A98;
  if (!qword_27EF38A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38A98);
  }

  return result;
}

unint64_t sub_24A1CD5DC()
{
  result = qword_27EF38AA0;
  if (!qword_27EF38AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AA0);
  }

  return result;
}

unint64_t sub_24A1CD634()
{
  result = qword_27EF38AA8;
  if (!qword_27EF38AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AA8);
  }

  return result;
}

unint64_t sub_24A1CD68C()
{
  result = qword_27EF38AB0;
  if (!qword_27EF38AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EXFDRDecodeClient(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EXFDRDecodeClient(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s16ExclaveFDRDecode17EXFDRDecodeOptionVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16ExclaveFDRDecode17EXFDRDecodeOptionVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_24A1CD900(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_24A1CD948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_24A1CD9B0(uint64_t a1, int a2)
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

uint64_t sub_24A1CD9F8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A1CDA80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24A1CDAC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A1CDB2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_24A1CDB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A1CDBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_24A1CDC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_27EF38AB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EF38AB8);
    }
  }
}

unint64_t sub_24A1CDCB8()
{
  result = qword_27EF38AC0;
  if (!qword_27EF38AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38AC0);
  }

  return result;
}

uint64_t sub_24A1CDD0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24A1CDDD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AD8, &qword_24A1D23D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A1D2380;
  sub_24A1D1A8C();

  MEMORY[0x24C212EA0](a1, a2);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000028;
  *(v4 + 40) = 0x800000024A1D3780;
  sub_24A1D1AFC();
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.__allocating_init(conclaveID:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service();
  sub_24A1CE20C(&qword_27EF38AC8, type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service, &unk_24A1D2680);
  sub_24A1D1A4C();

  if (v2)
  {
    v4 = sub_24A1D1A6C();
    MEMORY[0x24C212EA0](v4);

    sub_24A1CDDD8(0x203A726F727245, 0xE700000000000000);

    type metadata accessor for TransportError();
    sub_24A1CE20C(&qword_27EF38AD0, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    swift_allocError();
    *v5 = v8;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v7;
  }

  return v3;
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.init(conclaveID:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service();
  sub_24A1CE20C(&qword_27EF38AC8, type metadata accessor for ExclaveFDRDecodeRawDataStoreKitService.Service, &unk_24A1D2680);
  sub_24A1D1A4C();

  if (v3)
  {
    v4 = sub_24A1D1A6C();
    MEMORY[0x24C212EA0](v4);

    sub_24A1CDDD8(0x203A726F727245, 0xE700000000000000);

    type metadata accessor for TransportError();
    sub_24A1CE20C(&qword_27EF38AD0, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    swift_allocError();
    *v5 = v8;
    swift_willThrow();
    type metadata accessor for ExclaveFDRDecodeRawDataStoreKitClient();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + 16) = v7;
  }

  return v2;
}

uint64_t sub_24A1CE20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A1CE278(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 12);
  if (v2 == 1)
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = (v2 == 2) << 33;
  }

  sub_24A1CE40C(v4, v3 | v1);
}

uint64_t ExclaveFDRDecodeRawDataStoreKitClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A1CE40C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_24A1D197C();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A1D19CC();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v6 = sub_24A1D19EC();
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  v19 = __OFADD__(v18, 8);
  v20 = v18 + 8;
  if (v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v19 = __OFADD__(v20, 4);
  v21 = v20 + 4;
  if (v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = __OFADD__(v21, 8);
  v22 = v21 + 8;
  if (v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v22, 8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = a1;
  v24 = v15;
  v43 = v14;
  v37 = v3;
  v25 = v44;
  sub_24A1D1A0C();
  if (v25)
  {
    v26 = v46;
    type metadata accessor for TransportError();
    sub_24A1D16F8(&qword_27EF38AD0, 255, type metadata accessor for TransportError, MEMORY[0x277D714B8]);
    result = swift_allocError();
    *v28 = v26;
    return result;
  }

  v44 = v10;
  v29 = *(v24 + 32);
  v29(v13, v17, v43);
  sub_24A1D19DC();
  sub_24A1D19AC();
  sub_24A1CEA28(v23, v42 & 0xFFFFFFFFFFLL);
  sub_24A1D19BC();
  v30 = v44;
  sub_24A1D1A1C();
  v29(v13, v30, v43);
  v31 = v39;
  sub_24A1D196C();
  v32 = sub_24A1D192C();
  if (!v32)
  {
    return (*(v38 + 8))(v31, v37);
  }

  if (v32 == 1)
  {
    v33 = sub_24A1D0E00(v32);
    v34 = (v38 + 8);
    v45 = v33;
    sub_24A1D1740();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v35 = v33;
    return (*v34)(v31, v37);
  }

LABEL_15:
  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1CE990(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A1D1858();
  v5 = sub_24A1CDCB8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_24A1CE9E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24A1CDD0C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24A1CEA28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  sub_24A1D19AC();
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      ++v4;
      sub_24A1D198C();
      --v3;
    }

    while (v3);
  }

  sub_24A1D199C();
  return sub_24A1D19AC();
}

uint64_t sub_24A1CEA9C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_24A1D19CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v12(v9, 1, 1, v10);
  sub_24A1D0EE0(v13);
  v14 = sub_24A1D194C();
  v44 = a1;
  v15 = sub_24A1D05A4(sub_24A1D1914, v43, 0, v14);
  v16 = sub_24A1D193C();
  v17 = v16;
  v41 = a1;
  v18 = sub_24A1D0FC8(v16);
  if (v3)
  {
    v19 = v42;

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_24A1D10F8(v9);
    }

    v20 = sub_24A1D197C();
    result = (*(*(v20 - 8) + 8))(v41, v20);
    *v19 = v18;
  }

  else
  {
    v34 = v12;
    v35 = v11 + 56;
    v22 = v11;
    v23 = v38;
    v36 = v10;
    v37 = v9;
    v25 = v39[6];
    v24 = v39[7];
    __swift_project_boxed_opaque_existential_1(v39 + 3, v25);
    (*(v24 + 8))(v15, v17 | (v18 << 32), v25, v24);

    v39 = 0;
    v26 = v40;
    v27 = v36;
    sub_24A1D195C();
    v34(v23, 0, 1, v27);
    v28 = *(v22 + 48);
    v29 = v37;
    if (v28(v37, 1, v27) != 1)
    {
      sub_24A1D10F8(v29);
    }

    sub_24A1D11A4(v23, v29);
    if (!v28(v29, 1, v27))
    {
      sub_24A1D198C();
    }

    v30 = (v28)(v29, 1, v27);
    v31 = v30;
    if (v30 != 1)
    {
      if (v30)
      {
        sub_24A1D10F8(v29);
        v31 = 1;
      }

      else
      {
        sub_24A1D19BC();
      }
    }

    v32 = sub_24A1D19EC();
    return (*(*(v32 - 8) + 56))(v26, v31, 1, v32);
  }

  return result;
}

uint64_t sub_24A1CF04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) != 4)
  {
    goto LABEL_7;
  }

  sub_24A1D198C();
  sub_24A1D198C();
  sub_24A1D198C();
  sub_24A1D198C();
  v6 = *(a2 + 16);
  sub_24A1D19AC();
  if (v6)
  {
    v7 = a2 + 32;
    do
    {
      ++v7;
      sub_24A1D198C();
      --v6;
    }

    while (v6);
  }

  sub_24A1D199C();
  if (*(a4 + 16) == 4)
  {
    sub_24A1D198C();
    sub_24A1D198C();
    sub_24A1D198C();
    return sub_24A1D198C();
  }

  else
  {
LABEL_7:
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x24C212EA0](0xD000000000000036, 0x800000024A1D3C30);
    v9 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v9);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1CF280()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24A1CF2BC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v5 = v3;
  v58 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v16 = sub_24A1D19CC();
  v62 = *(v16 - 8);
  v63 = v15;
  v17 = *(v62 + 56);
  v64 = v16;
  v59 = v17;
  v60 = v62 + 56;
  v18 = (v17)(v15, 1, 1);
  if ((sub_24A1D1270(v18) & 1) == 0)
  {
    sub_24A1D14D4((v3 + 3), v65);
    v25 = v66;
    v57 = v67;
    v56 = __swift_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x28223BE20](v56);
    v26 = sub_24A1D0728(sub_24A1D1914, (&v55 - 4), 0, 4);
    v27 = sub_24A1D194C();
    MEMORY[0x28223BE20](v27);
    v29 = sub_24A1D05A4(sub_24A1D1914, (&v55 - 4), 0, v28);
    v30 = sub_24A1D193C();
    MEMORY[0x28223BE20](v30);
    v53 = a1;
    v31 = sub_24A1D0728(sub_24A1D1914, (&v55 - 4), 0, 4);
    v24 = sub_24A1D0FC8(v31);
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_1(v65);
      goto LABEL_6;
    }

    v38 = (*(v57 + 16))(v26, v29, v30, v31, v24, v25);
    v40 = v39;

    __swift_destroy_boxed_opaque_existential_1(v65);
    v41 = *(v40 + 16);
    v42 = __OFADD__(v41, 8);
    v43 = v41 + 8;
    if (v42)
    {
      __break(1u);
    }

    else
    {
      v42 = __OFADD__(v43, 8);
      v44 = v43 + 8;
      v37 = v63;
      if (!v42)
      {
        v57 = v38;
        if (!__OFADD__(v44, 4))
        {
          sub_24A1D195C();
          v45 = v64;
          v59(v10, 0, 1, v64);
          v46 = *(v62 + 48);
          if (v46(v37, 1, v45) != 1)
          {
            sub_24A1D10F8(v37);
          }

          sub_24A1D11A4(v10, v37);
          if (v46(v37, 1, v45))
          {
          }

          else
          {
            sub_24A1D0C0C(v57);
            sub_24A1D19AC();
            v51 = *(v40 + 16);
            if (v51)
            {
              v52 = v40 + 32;
              do
              {
                ++v52;
                sub_24A1D198C();
                --v51;
              }

              while (v51);
            }

            sub_24A1D199C();

            v45 = v64;
          }

          goto LABEL_22;
        }

LABEL_34:
        __break(1u);
        MEMORY[0x24C213030](v65[0]);
        v54 = 0;
        v53 = 231;
        result = sub_24A1D1A9C();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v19 = sub_24A1D194C();
  MEMORY[0x28223BE20](v19);
  v53 = a1;
  v21 = sub_24A1D05A4(sub_24A1D1914, (&v55 - 4), 0, v20);
  v22 = sub_24A1D193C();
  v23 = v22;
  LODWORD(v24) = sub_24A1D0FC8(v22);
  if (v4)
  {

LABEL_6:
    v32 = v63;
    if ((*(v62 + 48))(v63, 1, v64) != 1)
    {
      sub_24A1D10F8(v32);
    }

    v33 = sub_24A1D197C();
    result = (*(*(v33 - 8) + 8))(a1, v33);
    *v61 = v24;
    return result;
  }

  v35 = v5[6];
  v36 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v35);
  (*(v36 + 8))(v21, v23 | (v24 << 32), v35, v36);
  v37 = v63;

  sub_24A1D195C();
  v45 = v64;
  v59(v13, 0, 1, v64);
  v46 = *(v62 + 48);
  if (v46(v37, 1, v45) != 1)
  {
    sub_24A1D10F8(v37);
  }

  sub_24A1D11A4(v13, v37);
  if (!v46(v37, 1, v45))
  {
    sub_24A1D198C();
    v45 = v64;
  }

LABEL_22:
  v47 = (v46)(v37, 1, v45);
  v48 = v47;
  if (v47 == 1)
  {
    v49 = v58;
  }

  else
  {
    v49 = v58;
    if (v47)
    {
      sub_24A1D10F8(v37);
      v48 = 1;
    }

    else
    {
      sub_24A1D19BC();
    }
  }

  v50 = sub_24A1D19EC();
  return (*(*(v50 - 8) + 56))(v49, v48, 1, v50);
}

uint64_t sub_24A1CFBF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24A1D19FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  (*(v5 + 16))(v7, a1, v4);
  sub_24A1D1A3C();
  swift_allocObject();
  v9 = sub_24A1D1A2C();
  result = (*(v5 + 8))(a1, v4);
  *(v8 + 16) = v9;
  *a2 = v8;
  return result;
}

uint64_t sub_24A1CFD24@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  v18 = sub_24A1D19CC();
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = *(v78 + 56);
  v80 = v17;
  v76 = v19;
  v20 = (v19)(v17, 1, 1);
  if (sub_24A1D13C8(v20))
  {
    v74 = v15;
    sub_24A1D14D4(v6 + 24, v81);
    v22 = v82;
    v21 = v83;
    v23 = __swift_project_boxed_opaque_existential_1(v81, v82);
    v24 = sub_24A1D0FC8(v23);
    LODWORD(v25) = v24;
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(v81);
      v34 = v80;
      if ((*(v78 + 48))(v80, 1, v79) != 1)
      {
        sub_24A1D10F8(v34);
      }

      v35 = sub_24A1D197C();
      result = (*(*(v35 - 8) + 8))(a1, v35);
      goto LABEL_12;
    }

    v71 = v22;
    v72 = v23;
    v73 = v21;
    v75 = a3;
    v77 = a2;
    MEMORY[0x28223BE20](v24);
    *(&v71 - 2) = a1;
    v26 = sub_24A1D0728(sub_24A1D1914, (&v71 - 4), 0, 4);
    v27 = sub_24A1D194C();
    MEMORY[0x28223BE20](v27);
    *(&v71 - 2) = a1;
    v29 = sub_24A1D05A4(sub_24A1D1914, (&v71 - 4), 0, v28);
    v30 = sub_24A1D193C();
    v31 = v30;
    MEMORY[0x28223BE20](v30);
    *(&v71 - 2) = a1;
    v32 = sub_24A1D0728(sub_24A1D1914, (&v71 - 4), 0, 4);
    v33 = sub_24A1D1574(v32);
    v84[0] = v25;
    v85 = v26;
    v86 = v29;
    v87 = v31;
    v88 = v32;
    v89 = v33;
    v47 = (*(v73 + 8))(v84, v71);
    v49 = v48;
    v51 = v50;

    result = __swift_destroy_boxed_opaque_existential_1(v81);
    v52 = *(v49 + 16);
    v53 = __OFADD__(v52, 8);
    v54 = v52 + 8;
    if (v53)
    {
      __break(1u);
    }

    else
    {
      v53 = __OFADD__(v54, 8);
      v55 = v54 + 8;
      v56 = v74;
      if (!v53)
      {
        LODWORD(v72) = v51;
        result = v55 + 4;
        if (!__OFADD__(v55, 4))
        {
          sub_24A1D195C();
          v73 = 0;
          v63 = v79;
          v76(v56, 0, 1, v79);
          v58 = v63;
          v59 = *(v78 + 48);
          v60 = v80;
          if (v59(v80, 1, v63) != 1)
          {
            sub_24A1D10F8(v60);
          }

          sub_24A1D11A4(v56, v60);
          if (v59(v60, 1, v63))
          {
            goto LABEL_26;
          }

          v68 = v73;
          v62 = sub_24A1D0C0C(v47);
          if (v68)
          {
            goto LABEL_34;
          }

          v73 = 0;
          sub_24A1D19AC();
          v69 = *(v49 + 16);
          if (v69)
          {
            v70 = v49 + 32;
            do
            {
              ++v70;
              sub_24A1D198C();
              --v69;
            }

            while (v69);
          }

          sub_24A1D199C();
          goto LABEL_26;
        }

LABEL_42:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v75 = a3;
  v77 = a2;
  sub_24A1D14D4(v6 + 24, v81);
  v37 = v82;
  v38 = v83;
  v74 = __swift_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x28223BE20](v74);
  *(&v71 - 2) = a1;
  v39 = sub_24A1D0728(sub_24A1D1538, (&v71 - 4), 0, 4);
  v25 = sub_24A1D0FC8(v39);
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v81);
    v40 = v80;
    if ((*(v78 + 48))(v80, 1, v79) != 1)
    {
      sub_24A1D10F8(v40);
    }

    v41 = sub_24A1D197C();
    result = (*(*(v41 - 8) + 8))(a1, v41);
    goto LABEL_11;
  }

  v42 = (*(v38 + 16))(v39, v25, v37, v38);
  v44 = v43;
  v46 = v45;

  __swift_destroy_boxed_opaque_existential_1(v81);
  sub_24A1D1654(v44);
  sub_24A1D195C();
  v73 = 0;
  v57 = v79;
  v76(v12, 0, 1, v79);
  v58 = v57;
  v59 = *(v78 + 48);
  v60 = v80;
  if (v59(v80, 1, v58) != 1)
  {
    sub_24A1D10F8(v60);
  }

  sub_24A1D11A4(v12, v60);
  if (v59(v60, 1, v58))
  {
    goto LABEL_26;
  }

  v61 = v73;
  v62 = sub_24A1D089C(v42, v44, v46);
  if (v61)
  {
LABEL_34:
    LODWORD(v25) = v62;

    result = (v59)(v60, 1, v58);
    if (result != 1)
    {
      result = sub_24A1D10F8(v60);
    }

LABEL_11:
    a2 = v77;
LABEL_12:
    *a2 = v25;
    return result;
  }

  v73 = 0;
LABEL_26:

  v64 = (v59)(v60, 1, v58);
  v65 = v64;
  if (v64 == 1)
  {
    v66 = v75;
  }

  else
  {
    v66 = v75;
    if (v64)
    {
      sub_24A1D10F8(v60);
      v65 = 1;
    }

    else
    {
      sub_24A1D19BC();
    }
  }

  v67 = sub_24A1D19EC();
  return (*(*(v67 - 8) + 56))(v66, v65, 1, v67);
}

uint64_t sub_24A1D05A4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v21 = MEMORY[0x277D84F90];
    sub_24A1D0CEC(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v21;
      v10 = a4 - a3;
      if (a4 < a3)
      {
        v10 = 0;
      }

      v17 = v10 + 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v19 = a3 + v9;
        a1(&v20, &v19);
        if (v4)
        {
          goto LABEL_24;
        }

        v12 = v20;
        v21 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v20;
          sub_24A1D0CEC((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v8 = v21;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + v14 + 32) = v12;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v17 == ++v9)
        {
          goto LABEL_20;
        }

        if (v11 == v7)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_24A1D0728(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_24A1D0CEC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_24A1D0CEC((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_24A1D089C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_24A1D0C0C(a1);
  if (v3)
  {
    return v5;
  }

  v6 = *(a2 + 16);
  sub_24A1D19AC();
  v17 = v6;
  if (v6)
  {
    v7 = 0;
    v16 = a2 + 32;
    do
    {
      v8 = v16 + 48 * v7;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 24);
      v12 = *(v8 + 32);
      v13 = *(v8 + 16);

      sub_24A1CF04C(v9, v10, v13, v11);
      sub_24A1D19AC();
      v6 = *(v12 + 16);
      if (v6)
      {
        v14 = v12 + 32;
        do
        {
          ++v14;
          sub_24A1D198C();
          --v6;
        }

        while (v6);
      }

      ++v7;
      sub_24A1D199C();
    }

    while (v7 != v17);
  }

  sub_24A1D199C();
  return v6;
}

uint64_t sub_24A1D0A14()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_24A1D0A80(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *, uint64_t, uint64_t))
{
  result = a5(a1, &v8, a3, a4);
  if (v5)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_24A1D0C0C(uint64_t a1)
{
  if ((a1 & 0x7FFFFFFFFFFFFFC0) == 0)
  {
    return sub_24A1D19AC();
  }

  sub_24A1D1A8C();
  MEMORY[0x24C212EA0](0xD000000000000046, 0x800000024A1D3AD0);
  v2 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v2);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

char *sub_24A1D0CEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A1D0D0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24A1D0D0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38B08, &qword_24A1D26B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24A1D0E00(uint64_t a1)
{
  result = sub_24A1D194C();
  if ((result & 0x7FFFFFFFFFFFFFC0) != 0)
  {
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0xD000000000000046, 0x800000024A1D3AD0);
    v2 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v2);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1D0EE0(uint64_t a1)
{
  result = sub_24A1D194C();
  if (result != 0xD1E1F592CBAABCE3)
  {
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0xD000000000000045, 0x800000024A1D3B40);
    v2 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v2);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1D0FC8(uint64_t a1)
{
  v1 = sub_24A1D194C();
  switch(v1)
  {
    case 0xBE6B44F35C5CA9B9:
      return 1;
    case 0xE6C698D5A150ECB8:
      return 0;
    case 0x255D35955CB3DFB0:
      return 2;
  }

  sub_24A1D1A8C();

  v3 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v3);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1D10F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A1D11A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF38AF8, &qword_24A1D26A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A1D1218(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = __OFADD__(v3, 8);
  v5 = v3 + 8;
  if (v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(result + 16);
  if (v6 >= 4)
  {
    v6 = 4;
  }

  v4 = __OFADD__(v6, v5);
  v7 = v6 + v5;
  if (v4)
  {
    goto LABEL_11;
  }

  v4 = __OFADD__(v7, 4);
  v8 = v7 + 4;
  if (v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v9 = *(a3 + 16);
  if (v9 >= 4)
  {
    v9 = 4;
  }

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24A1D1270(uint64_t a1)
{
  v1 = sub_24A1D194C();
  if (v1 == 0xF8BE6A6F727628E8)
  {
    return 0;
  }

  if (v1 == 0x85CCB4C7D58863A4)
  {
    return 1;
  }

  sub_24A1D1A8C();
  MEMORY[0x24C212EA0](0xD000000000000042, 0x800000024A1D3B90);
  v3 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v3);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24A1D13C8(uint64_t a1)
{
  v1 = sub_24A1D194C();
  if (v1 == 0xFEBBB426EB8D0A2ALL)
  {
    return 0;
  }

  if (v1 == 0x3CABAAF6E5F14886)
  {
    return 1;
  }

  sub_24A1D1A8C();
  MEMORY[0x24C212EA0](0xD000000000000045, 0x800000024A1D3C70);
  v3 = sub_24A1D1AAC();
  MEMORY[0x24C212EA0](v3);

  result = sub_24A1D1A9C();
  __break(1u);
  return result;
}

uint64_t sub_24A1D14D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A1D1538@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24A1D192C();
  *a2 = result;
  return result;
}

uint64_t sub_24A1D1574(uint64_t a1)
{
  result = sub_24A1D194C();
  if ((result & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    sub_24A1D1A8C();
    MEMORY[0x24C212EA0](0xD000000000000047, 0x800000024A1D3BE0);
    v2 = sub_24A1D1AAC();
    MEMORY[0x24C212EA0](v2);

    result = sub_24A1D1A9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1D1654(uint64_t result)
{
  v1 = 0;
  v2 = (result + 64);
  v3 = *(result + 16) + 1;
  do
  {
    if (!--v3)
    {
      goto LABEL_9;
    }

    v4 = *v2;
    result = sub_24A1D1218(*(v2 - 4), *(v2 - 3), *(v2 - 1));
    v5 = *(v4 + 16);
    v6 = __OFADD__(v5, 8);
    v7 = v5 + 8;
    if (v6)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = __OFADD__(result, v7);
    v8 = result + v7;
    if (v6)
    {
      goto LABEL_14;
    }

    v6 = __OFADD__(v8, 4);
    v9 = v8 + 4;
    if (v6)
    {
      goto LABEL_15;
    }

    v2 += 6;
    v6 = __OFADD__(v1, v9);
    v1 += v9;
  }

  while (!v6);
  __break(1u);
LABEL_9:
  if (__OFADD__(v1, 8))
  {
    goto LABEL_16;
  }

  if (__OFADD__(v1 + 8, 8))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = v1 + 20;
  if (!__OFADD__(v1 + 16, 4))
  {
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24A1D16F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_24A1D1740()
{
  result = qword_27EF38B10;
  if (!qword_27EF38B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B10);
  }

  return result;
}

unint64_t sub_24A1D17A8()
{
  result = qword_27EF38B18;
  if (!qword_27EF38B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B18);
  }

  return result;
}

unint64_t sub_24A1D1800()
{
  result = qword_27EF38B20;
  if (!qword_27EF38B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B20);
  }

  return result;
}

unint64_t sub_24A1D1858()
{
  result = qword_27EF38B28;
  if (!qword_27EF38B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B28);
  }

  return result;
}

unint64_t sub_24A1D18B0()
{
  result = qword_27EF38B30;
  if (!qword_27EF38B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF38B30);
  }

  return result;
}