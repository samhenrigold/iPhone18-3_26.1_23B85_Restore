uint64_t TransportID.init()@<X0>(void *a1@<X8>)
{
  if (qword_27F1AF280 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = atomic_fetch_add_explicit(&qword_27F1AF288, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t TransportID.description.getter()
{
  v0 = sub_24DD4B624();
  MEMORY[0x253037C70](v0);

  return 0x726F70736E617274;
}

uint64_t TransportID.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0A794()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0A808(uint64_t a1)
{
  v2 = *v1;
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD0A84C()
{
  v0 = sub_24DD4B624();
  MEMORY[0x253037C70](v0);

  return 0x726F70736E617274;
}

void *StreamID.init(transportID:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 0;
  return result;
}

uint64_t StreamID.description.getter()
{
  v0 = sub_24DD4B624();
  MEMORY[0x253037C70](v0);

  MEMORY[0x253037C70](0x726F70736E617274, 0xEA00000000005F74);

  MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
  v1 = sub_24DD4B624();
  MEMORY[0x253037C70](v1);

  return 0;
}

void StreamID.next()(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v1[1] = v3 + 1;
  *a1 = v2;
  a1[1] = v3;
}

uint64_t StreamID.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2530381B0](*v0);
  return MEMORY[0x2530381B0](v1);
}

uint64_t StreamID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  MEMORY[0x2530381B0](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD0AAB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v1);
  MEMORY[0x2530381B0](v2);
  return sub_24DD4B724();
}

uint64_t sub_24DD0AB0C()
{
  v1 = v0[1];
  MEMORY[0x2530381B0](*v0);
  return MEMORY[0x2530381B0](v1);
}

uint64_t sub_24DD0AB48(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24DD4B6E4();
  MEMORY[0x2530381B0](v2);
  MEMORY[0x2530381B0](v3);
  return sub_24DD4B724();
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

unint64_t sub_24DD0AC58()
{
  result = qword_27F1AF2A0;
  if (!qword_27F1AF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2A0);
  }

  return result;
}

unint64_t sub_24DD0ACB0()
{
  result = qword_27F1AF2A8;
  if (!qword_27F1AF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransportID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TransportID(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StreamID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StreamID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DD0ADE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD0AE04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

void *sub_24DD0AEB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_24DD0AEE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_24DD0AF48()
{
  if (*v0)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD000000000000049;
  }
}

uint64_t sub_24DD0AF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD0BB80();

  return MEMORY[0x282162D90](a1, a2, v4);
}

char *_s31GRPCURLSessionTransportInternal12DecompressorO10decompressySays5UInt8VGAgA0D5ErrorOYKF(uint64_t a1, void *a2)
{
  if (*v2)
  {
    result = sub_24DD0B388(a1, &v6);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_24DD0B024(a1, &v6);
    if (!v3)
    {
      return result;
    }
  }

  *a2 = v6;
  return result;
}

char *sub_24DD0B024(uint64_t a1, unint64_t *a2)
{
  v4 = sub_24DD4AB54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24DD4AB44();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    if (v13 >= 0x12)
    {
      v28 = a2;
      v15 = v10;
      v16 = swift_allocObject();
      v17 = a1;
      v18 = v16;
      *(v16 + 16) = v14;
      v19 = v17 + v13;
      v20 = v17;
      v21 = v14;
      v14 = (v16 + 16);
      *(v16 + 16) = sub_24DD391A8(0, *(v19 + 27), 0, v21);
      (*(v9 + 104))(v12, *MEMORY[0x277D832C0], v15);
      (*(v5 + 104))(v7, *MEMORY[0x277D832C8], v4);
      sub_24DD4AB24();
      swift_allocObject();

      v22 = v33;
      sub_24DD4AB34();
      if (v22)
      {
        *v28 = v22;
        v29 = v22;
        sub_24DD0BB80();
        swift_willThrowTypedImpl();
      }

      else
      {
        v29 = sub_24DD0BCB0(v20);
        v30 = v23;
        v31 = v24;
        v32 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF2D8, &qword_24DD4C618);
        sub_24DD0BF14();
        sub_24DD4AB04();
        sub_24DD4AB14();
        v33 = 0;

        swift_unknownObjectRelease();
        swift_beginAccess();
        v14 = *(v18 + 16);
      }
    }

    else
    {
      *a2 = 0;
      v29 = 0;
      sub_24DD0BB80();
      swift_willThrowTypedImpl();
    }
  }

  return v14;
}

char *sub_24DD0B388(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24DD4AB54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24DD4AB44();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  if (v13 < 6)
  {
    *a2 = 0;
    v25 = 0;
    sub_24DD0BB80();
    swift_willThrowTypedImpl();
    return v14;
  }

  v24 = a2;
  v15 = v10;
  result = swift_allocObject();
  if ((v13 + 0x4000000000000000) >= 0)
  {
    v17 = 2 * v13;
    *(result + 2) = v14;
    v18 = result;
    *(result + 2) = sub_24DD391A8(0, v17, 0, v14);
    (*(v9 + 104))(v12, *MEMORY[0x277D832C0], v15);
    (*(v5 + 104))(v7, *MEMORY[0x277D832C8], v4);
    sub_24DD4AB24();
    swift_allocObject();

    v19 = v29;
    sub_24DD4AB34();
    if (v19)
    {
      *v24 = v19;
      v25 = v19;
      sub_24DD0BB80();
      swift_willThrowTypedImpl();
    }

    else
    {
      v25 = sub_24DD0C014(a1);
      v26 = v20;
      v27 = v21;
      v28 = v22;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF2D8, &qword_24DD4C618);
      sub_24DD0BF14();
      sub_24DD4AB04();
      sub_24DD4AB14();
      v29 = 0;

      swift_unknownObjectRelease();
      swift_beginAccess();
      v14 = *(v18 + 16);
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t Decompressor.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0B798()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

uint64_t sub_24DD0B80C(uint64_t a1)
{
  v2 = *v1;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v2);
  return sub_24DD4B724();
}

unint64_t sub_24DD0B854()
{
  result = qword_27F1AF2C8;
  if (!qword_27F1AF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2C8);
  }

  return result;
}

char *sub_24DD0B8A8(uint64_t a1, void *a2)
{
  if ((*v2 & 1) == 0)
  {
    result = sub_24DD0B024(a1, &v6);
    if (!v3)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_24DD0B388(a1, &v6);
  if (v3)
  {
LABEL_5:
    *a2 = v6;
  }

  return result;
}

uint64_t sub_24DD0B920(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD0B970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xSiRi_zRi0_zlyxIseghnd_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24DD0B9E0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Decompressor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Decompressor(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24DD0BB80()
{
  result = qword_27F1AF2D0;
  if (!qword_27F1AF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2D0);
  }

  return result;
}

uint64_t sub_24DD0BBD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DD0BC0C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 != 15)
  {
    v3 = result;
    swift_beginAccess();
    sub_24DD0BFC0(v3, a2);
    sub_24DD0D4B4(v3, a2);
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_24DD0BCB0(unint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 - 8;
  if (v1 < 8)
  {
    v2 = 0;
  }

  if (v1 < 4)
  {
    goto LABEL_58;
  }

  v3 = result + 32;
  v4 = *(result + 35);
  v5 = 10;
  if (v2 < 0xA)
  {
    v5 = v2;
  }

  v6 = (2 * v2) | 1;
  if ((*(result + 35) & 4) != 0)
  {
    if (v2 < v5 + 2)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = sub_24DD3F0DC(*(v3 + v5) + 2, result, v3, v5, v6);
    v7 = result;
    v3 = v8;
    v5 = v9;
    v6 = v10;
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = result;
    if ((*(result + 35) & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = v6 >> 1;
  v12 = v5;
  v13 = v5 == v6 >> 1;
  if (v5 != v6 >> 1)
  {
    if (v5 <= (v6 >> 1))
    {
      v18 = v6 >> 1;
    }

    else
    {
      v18 = v5;
    }

    v12 = v5;
    while (v18 != v12)
    {
      if (!*(v3 + v12))
      {
        goto LABEL_12;
      }

      if (v11 == ++v12)
      {
        v13 = 1;
        v12 = v6 >> 1;
        if (v11 >= v5)
        {
          goto LABEL_14;
        }

        goto LABEL_52;
      }
    }

    goto LABEL_56;
  }

LABEL_12:
  if (v11 < v12)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v12 < v5)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    if (v11 < v12)
    {
      goto LABEL_65;
    }

    v15 = 0;
    if (v12 >= v5)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_14:
  if (__OFSUB__(v11, v12))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (!v13)
  {
    if (__OFADD__(v12, 1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v11 < v12 + 1)
    {
      goto LABEL_62;
    }

    v11 = v12 + 1;
  }

  v5 = v11;
  if (v11 < v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_20:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_36;
  }

  v11 = v6 >> 1;
  if (v5 != v6 >> 1)
  {
    if (v5 <= (v6 >> 1))
    {
      v14 = v6 >> 1;
    }

    else
    {
      v14 = v5;
    }

    v12 = v5;
    while (v14 != v12)
    {
      if (!*(v3 + v12))
      {
        goto LABEL_53;
      }

      if (v11 == ++v12)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_57;
  }

LABEL_29:
  v15 = 1;
  v12 = v6 >> 1;
  if (v11 < v5)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_30:
  if (__OFSUB__(v11, v12))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v15)
  {
    goto LABEL_35;
  }

  if (!__OFADD__(v12, 1))
  {
    if (v11 < v12 + 1)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v11 = v12 + 1;
LABEL_35:
    v5 = v11;
    if (v11 < v12)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_36:
    if ((v4 & 2) != 0)
    {
      v16 = v6 >> 1;
      if (__OFSUB__(v6 >> 1, v5))
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v17 = v6 >> 1;
      if ((v6 >> 1) - v5 >= 2)
      {
        v17 = v5 + 2;
        if (__OFADD__(v5, 2))
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v16 < v17)
        {
          goto LABEL_66;
        }
      }

      if (v17 < v5)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v16 < v5)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    return v7;
  }

LABEL_74:
  __break(1u);
  return result;
}

unint64_t sub_24DD0BF14()
{
  result = qword_27F1AF2E0;
  if (!qword_27F1AF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF2D8, &qword_24DD4C618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2E0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24DD0BFC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24DD0C014(uint64_t result)
{
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  return result;
}

uint64_t CompressorError.hashValue.getter()
{
  sub_24DD4B6E4();
  MEMORY[0x253038190](0);
  return sub_24DD4B724();
}

uint64_t sub_24DD0C0EC()
{
  sub_24DD4B6E4();
  MEMORY[0x253038190](0);
  return sub_24DD4B724();
}

uint64_t sub_24DD0C158(uint64_t a1)
{
  sub_24DD4B6E4();
  MEMORY[0x253038190](0);
  return sub_24DD4B724();
}

int64_t _s31GRPCURLSessionTransportInternal10CompressorO8compressySays5UInt8VGAA0aB5BytesVAA0D5ErrorOYKF(uint64_t *a1)
{
  v4 = *a1;
  if ((*v2 & 1) == 0)
  {
    v8 = *a1;
    v7 = sub_24DD0C288(&v8);
    if (!v3)
    {
      return v7;
    }

    return v1;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = sub_24DD4B2B4();
  *(v1 + 16) = v5;
  result = compression_encode_buffer((v1 + 32), v5, (v4 + 32), *(v4 + 16), 0, 0x506u);
  if (v5 >= result)
  {
    *(v1 + 16) = result;

    if (!*(v1 + 16))
    {

      sub_24DD0C4D0();
      swift_willThrowTypedImpl();
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD0C288(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24DD4B2B4();
  *(v3 + 16) = v2;
  v4 = compression_encode_buffer((v3 + 32), v2, (v1 + 32), *(v1 + 16), 0, COMPRESSION_ZLIB);
  if (v2 < v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + 16) = v4;

  v5 = *(v3 + 16);
  if (v5)
  {
    if (!__OFADD__(v5, 18))
    {
      v11[0] = sub_24DD391A8(0, v5 + 18, 0, MEMORY[0x277D84F90]);
      sub_24DD0D780(&unk_2860F4510);
      sub_24DD0D780(v3);
      v6 = *(v1 + 16);
      if (!HIDWORD(v6))
      {
        v7 = crc32(0, (v1 + 32), v6);
        if (!HIDWORD(v7))
        {
          v10 = v7;
          sub_24DD0D86C(&v10, v11);
          v9 = *(v1 + 16);
          sub_24DD0D86C(&v9, &v10);
          return v11[0];
        }

LABEL_14:
        __break(1u);
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_24DD0C4D0();
  return swift_willThrowTypedImpl();
}

uint64_t Compressor.hashValue.getter()
{
  v1 = *v0;
  sub_24DD4B6E4();
  MEMORY[0x253038190](v1);
  return sub_24DD4B724();
}

unint64_t sub_24DD0C4D0()
{
  result = qword_27F1B0AB0;
  if (!qword_27F1B0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B0AB0);
  }

  return result;
}

unint64_t sub_24DD0C528()
{
  result = qword_27F1AF2E8;
  if (!qword_27F1AF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF2E8);
  }

  return result;
}

unint64_t sub_24DD0C580()
{
  result = qword_27F1AF2F0[0];
  if (!qword_27F1AF2F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1AF2F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompressorError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CompressorError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t UncheckedAsyncIteratorSequence.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  *(v2 + *(*v2 + 104)) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t *UncheckedAsyncIteratorSequence.init(_:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 104)) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t UncheckedAsyncIteratorSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DD0C914;

  return MEMORY[0x282200308](a1, v4, v5);
}

uint64_t sub_24DD0C914()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DD0CA08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0D4B0;

  return UncheckedAsyncIteratorSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_24DD0CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_24DD0CB84;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_24DD0CB84()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t UncheckedAsyncIteratorSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a2);
  v7 = &v11 - v6;
  v9 = v8;
  LOBYTE(v8) = 0;
  atomic_compare_exchange_strong_explicit((v2 + *(v9 + 104)), &v8, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v8)
  {
    result = sub_24DD4B5B4();
    __break(1u);
  }

  else
  {
    (*(v5 + 16))(&v11 - v6, v2 + *(*v2 + 96), v4);
    return (*(v5 + 32))(a1, v7, v4);
  }

  return result;
}

uint64_t UncheckedAsyncIteratorSequence.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DD0CF5C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  UncheckedAsyncIteratorSequence.makeAsyncIterator()(a1, a2);
}

uint64_t sub_24DD0CF98(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_24DD0D078()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F1AF378, &qword_24DD4C8D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD0D0B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DD0D120(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_24DD0D260(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_24DD0D4B4(uint64_t a1, unint64_t a2)
{
  v5 = sub_24DD4AAF4();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_36;
  }

  v11 = HIDWORD(a1) - a1;
LABEL_10:
  v14 = *v2;
  v15 = *(*v2 + 2);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v25 = v2;
    v26 = *(v14 + 2);
    sub_24DD0E590(&qword_27F1AF418, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    sub_24DD4B4D4();
    if (v31)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v27 = *(v14 + 3);
      v28 = v27 >> 1;
      if ((v27 >> 1) >= v26 + 1)
      {
        break;
      }

      v14 = sub_24DD391A8((v27 > 1), v26 + 1, 1, v14);
      v29 = v31;
      v28 = *(v14 + 3) >> 1;
      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_27:
      *(v14 + 2) = v26;
      v2 = v25;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    v29 = 0;
    do
    {
LABEL_30:
      if (v26 >= v28)
      {
        break;
      }

      v14[v26++ + 32] = v30[14];
      sub_24DD4B4D4();
      v29 = v31;
    }

    while ((v31 & 1) == 0);
    goto LABEL_27;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = *(v14 + 3) >> 1, v18 < v16))
  {
    if (v15 <= v16)
    {
      v19 = v15 + v11;
    }

    else
    {
      v19 = v15;
    }

    v14 = sub_24DD391A8(isUniquelyReferenced_nonNull_native, v19, 1, v14);
    v18 = *(v14 + 3) >> 1;
  }

  v20 = v18 - *(v14 + 2);
  v21 = sub_24DD4AAD4();
  result = sub_24DD0E53C(a1, a2);
  if (v21 < v11)
  {
    goto LABEL_24;
  }

  if (v21 < 1)
  {
    goto LABEL_21;
  }

  v22 = *(v14 + 2);
  v23 = __OFADD__(v22, v21);
  v24 = v22 + v21;
  if (!v23)
  {
    *(v14 + 2) = v24;
LABEL_21:
    if (v21 != v20)
    {
LABEL_22:
      result = (*(v6 + 8))(v9, v5);
      *v2 = v14;
      return result;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_24DD0D780(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24DD391A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_24DD0D86C(char *result, char *a2)
{
  v5 = a2 - result;
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 3) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_24DD391A8(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 3) >> 1;
  }

  v12 = *(v7 + 2);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove(&v7[v12 + 32], v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 2);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 2) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 2);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 2) = v20;
  }

  result = sub_24DD391A8((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 3) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    v7[v26] = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 2) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t GRPCMessageDeframer.init(maxPayloadSize:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 41) = 2;
  v3 = MEMORY[0x277D84F90];
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v3;
  *(a3 + 24) = 2;
  *(a3 + 32) = result;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t GRPCMessageDeframer.append(_:)(uint64_t a1, unint64_t a2)
{
  sub_24DD0BFC0(a1, a2);

  return sub_24DD0D4B4(a1, a2);
}

void _s31GRPCURLSessionTransportInternal19GRPCMessageDeframerV11nextMessageAA0aB5BytesVSgy08GRPCCoreC08RPCErrorVYKF(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24DD4AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    sub_24DD0DBC0(v8);
    if (v2)
    {
      (*(v6 + 32))(a1, v8, v5);
      return;
    }
  }

  while (!v9);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *a2 = v10;
}

void sub_24DD0DBC0(uint64_t a1)
{
  v3 = sub_24DD4AF64();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24DD4AFC4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(v1 + 24);
  if (v5 != 2)
  {
    if ((*(v1 + 40) & 1) == 0 && *(v1 + 32) < *(v1 + 16))
    {
      goto LABEL_11;
    }

    sub_24DD0E38C(*(v1 + 16));
    if (!v12)
    {
      return;
    }

    *(v1 + 16) = 0;
    *(v1 + 24) = 2;
    if ((v5 & 1) == 0)
    {
      return;
    }

    v13 = *(v1 + 41);
    if (v13 == 2)
    {

      sub_24DD4AF94();
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      goto LABEL_12;
    }

    if (v13)
    {
      sub_24DD0B388(v12, v16);
      if (v2)
      {
LABEL_22:

        v14 = v16[0];
        v15 = v16[0];
        sub_24DD0E424();
        sub_24DD4AFF4();
        sub_24DD4AFE4();
        sub_24DD0E590(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
        swift_willThrowTypedImpl();

        return;
      }
    }

    else
    {
      sub_24DD0B024(v12, v16);
      if (v2)
      {
        goto LABEL_22;
      }
    }

    return;
  }

  v6 = *(v1 + 8);
  v7 = *(*v1 + 16);
  if ((v7 - v6) < 5)
  {
    return;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v7 <= v6)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = *(*v1 + v6 + 32);
  *(v1 + 8) = v6 + 1;
  v9 = sub_24DD0E2AC();
  if ((v9 & 0x100000000) != 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  if ((*(v1 + 40) & 1) == 0 && *(v1 + 32) < v9)
  {
LABEL_11:
    sub_24DD4AFB4();
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_24DD4B534();
    MEMORY[0x253037C70](0xD00000000000003FLL, 0x800000024DD51DE0);
    v10 = sub_24DD4B624();
    MEMORY[0x253037C70](v10);

    MEMORY[0x253037C70](0x6C6175746361202CLL, 0xEA0000000000203ALL);
    v11 = sub_24DD4B624();
    MEMORY[0x253037C70](v11);

    MEMORY[0x253037C70](41, 0xE100000000000000);
    MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
LABEL_12:
    sub_24DD4AFD4();
    sub_24DD4AFE4();
    sub_24DD0E590(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
    swift_willThrowTypedImpl();
    return;
  }

  *(v1 + 16) = v9;
  *(v1 + 24) = v8 == 1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DD0E070(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_24DD0E0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GRPCMessageDeframer.NextPart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GRPCMessageDeframer.NextPart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24DD0E1C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD0E1E0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

uint64_t sub_24DD0E218(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24DD0E260(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24DD0E2AC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  v2 = *(*v0 + 16);
  v3 = v2 - v1;
  if (v2 - v1 >= 4)
  {
    v5 = v1 + 4;
    if (__OFADD__(v1, 4))
    {
      __break(1u);
    }

    else if (v5 >= v1)
    {
      if (v2 >= v1)
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          if (v2 >= v5)
          {
            v6 = *v0 + v1;
            __dst = 0;
            memcpy(&__dst, (v6 + 32), sizeof(__dst));
            v4 = bswap32(__dst);
            v0[1] = v5;
            return v4 | ((v3 < 4) << 32);
          }

LABEL_14:
          __break(1u);
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  v4 = 0;
  return v4 | ((v3 < 4) << 32);
}

void sub_24DD0E38C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 16);
  if (v5 - v4 >= a1)
  {
    v6 = __OFADD__(v4, a1);
    v7 = v4 + a1;
    if (v6)
    {
      __break(1u);
    }

    else if (v7 >= v4)
    {
      if (v5 >= v4)
      {
        if ((v4 & 0x8000000000000000) == 0)
        {
          if (v5 >= v7)
          {
            v1[1] = v7;
            if (v5 == v7 - v4)
            {

              return;
            }

            goto LABEL_14;
          }

LABEL_13:
          __break(1u);
LABEL_14:
          sub_24DD0E478(v3, v3 + 32, v4, (2 * v7) | 1);
          return;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_24DD0E424()
{
  result = qword_27F1AF408;
  if (!qword_27F1AF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF408);
  }

  return result;
}

void sub_24DD0E478(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF410, &qword_24DD4DA60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_24DD0E53C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24DD0E590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24DD0E5D8()
{
  v1 = sub_24DD4B0A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v6 = v0[6];
  if ((v0[10] & 0xC0) == 0)
  {
    v7 = v0[3];
    v8 = v0[5];
    v26 = *(v0 + 32);
    v9 = v0[1];
    v28 = v0[2];
    v29 = v7;
    v10 = *v0;
    v30 = sub_24DD0E8CC(v9);
    v12 = v11;
    v24 = v11;
    v25 = type metadata accessor for RequestPartOutputStreamBridge(0);
    v13 = objc_allocWithZone(v25);
    *&v13[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream] = v12;
    type metadata accessor for RequestPartOutputStreamBridge.State(0);
    swift_storeEnumTagMultiPayload();
    *&v13[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_requestParts] = v10;
    v13[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_compressor] = v28;
    v14 = &v13[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_streamID];
    v27 = v6;
    v28 = v8;
    *v14 = v8;
    v14[1] = v6;
    swift_retain_n();
    v15 = v24;
    sub_24DD4B094();
    (*(v2 + 32))(&v13[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_logger], v4, v1);
    v32.receiver = v13;
    v32.super_class = v25;
    v16 = objc_msgSendSuper2(&v32, sel_init);
    v17 = OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream;
    [*(v16 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream) setDelegate_];
    v18 = qword_27F1AF290;
    v19 = *(v16 + v17);
    if (v18 != -1)
    {
      swift_once();
    }

    MEMORY[0x2530381D0](v19, qword_27F1B0990);

    v20 = *(v16 + v17);
    [v20 open];

    v31 = v26 & 1;

    v21 = v31 & 1 | 0x240;
    v22 = MEMORY[0x277D84F90];
    *v0 = v16 & 0xFFFFFFFFFFFFFF8;
    v0[1] = v22;
    v23 = v27;
    v0[2] = v28;
    v0[3] = v23;
    v0[4] = 0;
    v0[5] = v22;
    v0[6] = 0;
    v0[7] = 0;
    v0[8] = 2;
    result = v30;
    v0[9] = v29;
    *(v0 + 40) = v21;
  }

  return result;
}

void *sub_24DD0E8CC(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7[0] = 0;
  [objc_opt_self() getBoundStreamsWithBufferSize:a1 inputStream:v7 outputStream:&v6];
  v1 = v7[0];
  if (v7[0])
  {
    if (v6)
    {
      v2 = v6;
      v3 = v1;
      return v1;
    }
  }

  else
  {
    v5 = v6;
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

id *sub_24DD0E9B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v185 = sub_24DD4ADF4();
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v177 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF608, &qword_24DD4CBA8);
  v6 = MEMORY[0x28223BE20](v184);
  v175 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v180 = &v154 - v9;
  MEMORY[0x28223BE20](v8);
  v179 = &v154 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF610, &unk_24DD4CBB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v172 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v174 = &v154 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v173 = &v154 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v181 = &v154 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v176 = &v154 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v182 = &v154 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v178 = &v154 - v25;
  MEMORY[0x28223BE20](v24);
  v186 = &v154 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF578, &qword_24DD4CB30);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v154 - v28;
  v30 = sub_24DD4AEE4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v187 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v154 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v154 - v37;
  v39 = sub_24DD4AF24();
  v188 = *(v39 - 8);
  v189 = v39;
  MEMORY[0x28223BE20](v39);
  v41 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction(0);
  MEMORY[0x28223BE20](v42);
  v45 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v2;
  v46 = *(v2 + 80);
  if (!(v46 >> 6) || v46 >> 6 != 1)
  {
    goto LABEL_6;
  }

  v158 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v43;
  v171 = a2;
  v47 = v190[1];
  v161 = *v190;
  v162 = v47;
  v48 = v190[3];
  v163 = v190[2];
  v164 = v48;
  v49 = v190[7];
  v167 = v190[6];
  v168 = v49;
  v50 = v190[9];
  v166 = v190[8];
  v169 = v50;
  v51 = v190[4];
  v165 = v190[5];
  v160 = v46 & 0xFFFFFF3F;
  v159 = v51 & 0xFFFFFFFFFFFFFF00;
  v52 = a1;
  v53 = sub_24DD4B164();
  v54 = [v52 valueForHTTPHeaderField_];

  if (v54)
  {
    v157 = v52;
    v55 = sub_24DD4B174();
    v57 = v56;

    sub_24DD1042C(v55, v57, v29);
    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_24DD1C414(v29, &qword_27F1AF578, &qword_24DD4CB30);
      sub_24DD4AE84();
      v191 = 0;
      v192 = 0xE000000000000000;
      sub_24DD4B534();

      v191 = 0x2064696C61766E49;
      v192 = 0xEF272065756C6176;
      MEMORY[0x253037C70](v55, v57);

      MEMORY[0x253037C70](0xD000000000000021, 0x800000024DD520B0);
      sub_24DD4AEF4();
      a2 = v171;
      v58 = v157;
    }

    else
    {

      (*(v31 + 32))(v38, v29, v30);
      v80 = sub_24DD4B164();
      v81 = [v157 valueForHTTPHeaderField_];

      a2 = v171;
      if (v81)
      {
        v82 = sub_24DD4B174();
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v84 = 0;
      }

      (*(v31 + 16))(v36, v38, v30);
      if (v84)
      {

        sub_24DD3DE58(v82, v84);
        swift_bridgeObjectRelease_n();
      }

      v58 = v157;
      sub_24DD4AEF4();
      (*(v31 + 8))(v38, v30);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    v93 = v188;
    v92 = v189;
    v94 = v158;
    v188[2](v158, v41, v189);
    v95 = [v58 allHeaderFields];
    v96 = sub_24DD4B114();

    v97 = sub_24DD12F24(v96);

    if (v97)
    {
      v98 = sub_24DD13FD8(v97);

      v191 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
      sub_24DD1BF78();
      sub_24DD4AF74();
    }

    else
    {
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    }

    (v93[1])(v41, v92);
    v45 = v94;
    swift_storeEnumTagMultiPayload();
    v99 = v190;
    *(v190 + 3) = 0u;
    *(v99 + 4) = 0u;
    *(v99 + 1) = 0u;
    *(v99 + 2) = 0u;
    *v99 = 0u;
    *(v99 + 40) = 128;
    goto LABEL_30;
  }

  v59 = [v52 statusCode];
  a2 = v171;
  if (v59 != 200)
  {
    v85 = v190;
    *(v190 + 3) = 0u;
    *(v85 + 4) = 0u;
    *(v85 + 1) = 0u;
    *(v85 + 2) = 0u;
    *v85 = 0u;
    *(v85 + 40) = 128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    v86 = [v52 statusCode];
    v87 = v158;
    sub_24DD1077C(v86);
    v88 = [v52 allHeaderFields];
    v89 = sub_24DD4B114();

    v90 = sub_24DD12F24(v89);

    if (v90)
    {
      v91 = sub_24DD13FD8(v90);

      v191 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
      sub_24DD1BF78();
      sub_24DD4AF74();
    }

    else
    {
      MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
    }

    v45 = v87;
    swift_storeEnumTagMultiPayload();
LABEL_30:
    v191 = v161;
    v192 = v162;
    v193 = v163;
    v194 = v164;
    v195 = v159 | 1;
    v196 = v165;
    v197 = v167;
    v198 = v168;
    v199 = v166;
    v200 = v169;
    v201 = v160;
    sub_24DD1C37C(&v191);
    return sub_24DD1C318(v45, a2);
  }

  v60 = sub_24DD4B164();
  v61 = [v52 valueForHTTPHeaderField_];

  if (!v61)
  {
    v100 = v190;
    *(v190 + 3) = 0u;
    *(v100 + 4) = 0u;
    *(v100 + 1) = 0u;
    *(v100 + 2) = 0u;
    *v100 = 0u;
    *(v100 + 40) = 128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    sub_24DD4AE84();
    sub_24DD4AEF4();
    v101 = [v52 allHeaderFields];
LABEL_26:
    v102 = v101;
    v103 = sub_24DD4B114();

    v104 = sub_24DD12F24(v103);

    if (v104)
    {
      goto LABEL_33;
    }

    v110 = MEMORY[0x277D84F90];
LABEL_36:
    MEMORY[0x2530379D0](v110);
    goto LABEL_37;
  }

  v157 = v52;
  v62 = sub_24DD4B174();
  v64 = v63;

  if (sub_24DD4B234())
  {

    v65 = sub_24DD4B164();
    v66 = [v157 valueForHTTPHeaderField_];

    if (!v66)
    {
LABEL_66:
      v135 = v160;
LABEL_67:
      v147 = v157;
      v148 = v166;
      v149 = v190;
      *v190 = v161 & 0xFFFFFFFFFFFFFF8;
      v149[1] = v162;
      v149[2] = v163;
      v149[3] = v164;
      v149[4] = 1;
      v149[5] = v165;
      v149[6] = v167;
      v149[7] = v168;
      v149[8] = v148;
      v149[9] = v169;
      *(v149 + 40) = v135 & 0xFF01 | 0x40;
      v150 = [v147 allHeaderFields];
      v151 = sub_24DD4B114();

      v152 = sub_24DD12F24(v151);

      if (v152)
      {
        v153 = sub_24DD13FD8(v152);

        v191 = v153;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
        sub_24DD1BF78();
        v45 = v158;
        sub_24DD4AF74();
      }

      else
      {
        v45 = v158;
        MEMORY[0x2530379D0](MEMORY[0x277D84F90]);
      }

LABEL_6:
      swift_storeEnumTagMultiPayload();
      return sub_24DD1C318(v45, a2);
    }

    v156 = v46;
    v67 = sub_24DD4B174();
    v69 = v68;

    v155 = v67;
    v70 = sub_24DD4B254();
    v71 = v178;
    sub_24DD3EE60(v70, v72, v73, v74, v178);
    v75 = v183;
    v76 = v185;
    v77 = *(v183 + 48);
    v189 = v183 + 48;
    if (v77(v71, 1, v185))
    {
      sub_24DD1C414(v71, &qword_27F1AF610, &unk_24DD4CBB0);
      v78 = 1;
      v79 = v186;
    }

    else
    {
      v79 = v186;
      (*(v75 + 32))(v186, v71, v76);
      v78 = 0;
    }

    v111 = v182;
    v112 = v75 + 56;
    v113 = *(v75 + 56);
    (v113)(v79, v78, 1, v76);
    sub_24DD4ADC4();
    v178 = v112;
    v188 = v113;
    (v113)(v111, 0, 1, v76);
    v114 = *(v184 + 48);
    v115 = v179;
    sub_24DD1C3AC(v111, v179, &qword_27F1AF610, &unk_24DD4CBB0);
    sub_24DD1C3AC(v79, v115 + v114, &qword_27F1AF610, &unk_24DD4CBB0);
    if (v77(v115, 1, v76) == 1)
    {
      sub_24DD1C414(v111, &qword_27F1AF610, &unk_24DD4CBB0);
      v116 = v77(v115 + v114, 1, v76);
      v117 = v180;
      v118 = v181;
      v119 = v77;
      if (v116 == 1)
      {

        sub_24DD1C414(v115, &qword_27F1AF610, &unk_24DD4CBB0);
LABEL_56:
        sub_24DD1C414(v186, &qword_27F1AF610, &unk_24DD4CBB0);
        v135 = v156 & 0x3F;
        goto LABEL_67;
      }
    }

    else
    {
      v120 = v176;
      sub_24DD1C3AC(v115, v176, &qword_27F1AF610, &unk_24DD4CBB0);
      v121 = v77(v115 + v114, 1, v76);
      v117 = v180;
      v119 = v77;
      if (v121 != 1)
      {
        v129 = v183;
        v130 = v177;
        (*(v183 + 32))(v177, v115 + v114, v76);
        sub_24DD1C4DC(&qword_27F1AF618, MEMORY[0x277D0B8B0], MEMORY[0x277D0B8B8]);
        v131 = sub_24DD4B154();
        v76 = v185;
        v132 = v131;
        v133 = v120;
        v134 = *(v129 + 8);
        v134(v130, v185);
        sub_24DD1C414(v182, &qword_27F1AF610, &unk_24DD4CBB0);
        v134(v133, v76);
        a2 = v171;
        sub_24DD1C414(v115, &qword_27F1AF610, &unk_24DD4CBB0);
        v118 = v181;
        if (v132)
        {

          goto LABEL_56;
        }

LABEL_45:
        v182 = v69;
        sub_24DD4ADE4();
        (v188)(v118, 0, 1, v76);
        v122 = *(v184 + 48);
        sub_24DD1C3AC(v118, v117, &qword_27F1AF610, &unk_24DD4CBB0);
        sub_24DD1C3AC(v186, v117 + v122, &qword_27F1AF610, &unk_24DD4CBB0);
        if (v119(v117, 1, v76) == 1)
        {
          sub_24DD1C414(v118, &qword_27F1AF610, &unk_24DD4CBB0);
          v123 = v119(v117 + v122, 1, v76);
          v124 = v182;
          if (v123 == 1)
          {

            sub_24DD1C414(v117, &qword_27F1AF610, &unk_24DD4CBB0);
LABEL_63:
            sub_24DD1C414(v186, &qword_27F1AF610, &unk_24DD4CBB0);
            v135 = v156 & 0x3F | 0x100;
            goto LABEL_67;
          }
        }

        else
        {
          v125 = v173;
          sub_24DD1C3AC(v117, v173, &qword_27F1AF610, &unk_24DD4CBB0);
          if (v119(v117 + v122, 1, v76) != 1)
          {
            v139 = v183;
            v140 = v177;
            (*(v183 + 32))(v177, v117 + v122, v76);
            sub_24DD1C4DC(&qword_27F1AF618, MEMORY[0x277D0B8B0], MEMORY[0x277D0B8B8]);
            v141 = sub_24DD4B154();
            v76 = v185;
            LODWORD(v180) = v141;
            v142 = *(v139 + 8);
            v142(v140, v185);
            sub_24DD1C414(v181, &qword_27F1AF610, &unk_24DD4CBB0);
            v142(v125, v76);
            a2 = v171;
            sub_24DD1C414(v117, &qword_27F1AF610, &unk_24DD4CBB0);
            v124 = v182;
            if (v180)
            {

              goto LABEL_63;
            }

LABEL_51:
            v126 = v174;
            sub_24DD4ADD4();
            (v188)(v126, 0, 1, v76);
            v127 = *(v184 + 48);
            v128 = v175;
            sub_24DD1C3AC(v126, v175, &qword_27F1AF610, &unk_24DD4CBB0);
            sub_24DD1C474(v186, v128 + v127, &qword_27F1AF610, &unk_24DD4CBB0);
            if (v119(v128, 1, v76) == 1)
            {
              sub_24DD1C414(v126, &qword_27F1AF610, &unk_24DD4CBB0);
              if (v119(v128 + v127, 1, v76) == 1)
              {

                sub_24DD1C414(v128, &qword_27F1AF610, &unk_24DD4CBB0);
                goto LABEL_66;
              }
            }

            else
            {
              v136 = v119;
              v137 = v172;
              sub_24DD1C3AC(v128, v172, &qword_27F1AF610, &unk_24DD4CBB0);
              if (v136(v128 + v127, 1, v76) != 1)
              {
                v143 = v183;
                v144 = v177;
                (*(v183 + 32))(v177, v128 + v127, v76);
                sub_24DD1C4DC(&qword_27F1AF618, MEMORY[0x277D0B8B0], MEMORY[0x277D0B8B8]);
                v145 = sub_24DD4B154();
                v146 = *(v143 + 8);
                v146(v144, v76);
                sub_24DD1C414(v126, &qword_27F1AF610, &unk_24DD4CBB0);
                v146(v137, v76);
                v124 = v182;
                sub_24DD1C414(v128, &qword_27F1AF610, &unk_24DD4CBB0);
                if (v145)
                {

                  goto LABEL_66;
                }

                goto LABEL_60;
              }

              sub_24DD1C414(v126, &qword_27F1AF610, &unk_24DD4CBB0);
              (*(v183 + 8))(v137, v76);
            }

            sub_24DD1C414(v128, &qword_27F1AF608, &qword_24DD4CBA8);
LABEL_60:
            v138 = v190;
            *(v190 + 3) = 0u;
            *(v138 + 4) = 0u;
            *(v138 + 1) = 0u;
            *(v138 + 2) = 0u;
            *v138 = 0u;
            *(v138 + 40) = 128;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
            sub_24DD4AE94();
            v191 = 0;
            v192 = 0xE000000000000000;
            sub_24DD4B534();
            MEMORY[0x253037C70](0xD000000000000030, 0x800000024DD51E20);
            MEMORY[0x253037C70](v155, v124);

            MEMORY[0x253037C70](11815, 0xE200000000000000);
            sub_24DD4AEF4();
            v101 = [v157 allHeaderFields];
            goto LABEL_26;
          }

          sub_24DD1C414(v181, &qword_27F1AF610, &unk_24DD4CBB0);
          (*(v183 + 8))(v125, v76);
          v124 = v182;
        }

        sub_24DD1C414(v117, &qword_27F1AF608, &qword_24DD4CBA8);
        goto LABEL_51;
      }

      sub_24DD1C414(v182, &qword_27F1AF610, &unk_24DD4CBB0);
      (*(v183 + 8))(v120, v76);
      v118 = v181;
    }

    sub_24DD1C414(v115, &qword_27F1AF608, &qword_24DD4CBA8);
    goto LABEL_45;
  }

  v106 = v190;
  *(v190 + 3) = 0u;
  *(v106 + 4) = 0u;
  *(v106 + 1) = 0u;
  *(v106 + 2) = 0u;
  *v106 = 0u;
  *(v106 + 40) = 128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  sub_24DD4AE84();
  v191 = 0;
  v192 = 0xE000000000000000;
  sub_24DD4B534();
  MEMORY[0x253037C70](0x2064696C61766E49, 0xEF272065756C6176);
  MEMORY[0x253037C70](v62, v64);

  MEMORY[0x253037C70](0xD000000000000022, 0x800000024DD521A0);
  sub_24DD4AEF4();
  v107 = [v157 allHeaderFields];
  v108 = sub_24DD4B114();

  v104 = sub_24DD12F24(v108);

  if (!v104)
  {
    v110 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

LABEL_33:
  v109 = sub_24DD13FD8(v104);

  v191 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
  sub_24DD1BF78();
  sub_24DD4AF74();
LABEL_37:
  swift_storeEnumTagMultiPayload();
  v191 = v161;
  v192 = v162;
  v193 = v163;
  v194 = v164;
  v195 = v159 | 1;
  v196 = v165;
  v197 = v167;
  v198 = v168;
  v199 = v166;
  v200 = v169;
  v201 = v160;
  return sub_24DD1C37C(&v191);
}

uint64_t sub_24DD1042C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v35 = result;
    v36 = a3;

    sub_24DD18BA4(v35, a2, 10);
    v38 = v37;

    a3 = v36;
    if (v38)
    {
      goto LABEL_63;
    }

    return sub_24DD4AED4();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v39 = a3;
      result = sub_24DD4B584();
      a3 = v39;
      v4 = result;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v17 = v5 - 1;
        if (v5 != 1)
        {
          v18 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v19 = (v4 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
LABEL_53:
              LOBYTE(v4) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_68;
    }

    if (v5)
    {
      v26 = 0;
      if (!v4)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v27 = *v4 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v26;
        if ((v26 * 10) >> 64 != (10 * v26) >> 63)
        {
          break;
        }

        v26 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v40[0] = result;
  v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v4)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (--v4)
      {
        v13 = 0;
        v14 = v40 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v4)
    {
      v29 = 0;
      v30 = v40;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          break;
        }

        v29 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    LOBYTE(v4) = 1;
LABEL_62:
    v41 = v4;
    if (v4)
    {
LABEL_63:
      v33 = a3;
      v34 = sub_24DD4AEE4();
      return (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    }

    return sub_24DD4AED4();
  }

  if (v4)
  {
    if (--v4)
    {
      v22 = 0;
      v23 = v40 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_24DD1077C(uint64_t a1)
{
  v2 = sub_24DD4AEE4();
  result = MEMORY[0x28223BE20](v2 - 8);
  if (a1 > 400)
  {
    if (a1 >= 403)
    {
      if (a1 <= 403)
      {
        sub_24DD4AEB4();
        return sub_24DD4AEF4();
      }

      if (a1 > 428)
      {
        if (a1 > 501)
        {
          if (a1 != 502 && a1 != 503 && a1 != 504)
          {
            goto LABEL_22;
          }
        }

        else if (a1 != 429)
        {
          goto LABEL_22;
        }

        sub_24DD4AE74();
        return sub_24DD4AEF4();
      }

      if (a1 == 404)
      {
        sub_24DD4AE94();
        return sub_24DD4AEF4();
      }
    }

    else if (a1 == 401)
    {
      sub_24DD4AEA4();
      return sub_24DD4AEF4();
    }

LABEL_22:
    sub_24DD4AEC4();
    v4 = sub_24DD4B624();
    MEMORY[0x253037C70](v4);

    return sub_24DD4AEF4();
  }

  if (a1 == 400)
  {
    sub_24DD4AE84();
    return sub_24DD4AEF4();
  }

  if (a1 != 200)
  {
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t static Status.unsupportedEncoding(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DD4AEE4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24DD4AE94();
  sub_24DD4B534();
  MEMORY[0x253037C70](0xD000000000000030, 0x800000024DD51E20);
  MEMORY[0x253037C70](a1, a2);
  MEMORY[0x253037C70](11815, 0xE200000000000000);
  return sub_24DD4AEF4();
}

void *sub_24DD10AAC(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = (&v49 - v6);
  v7 = sub_24DD4AFE4();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = &v49 - v18;
  v20 = *(v3 + 40);
  if ((v20 & 0xC0) != 0x40)
  {
    return MEMORY[0x277D84F90];
  }

  v50 = v5;
  v52 = v17;
  v53 = a1;
  v21 = v3[9];
  v56 = *v3;
  v22 = *(v3 + 3);
  v57 = *(v3 + 1);
  v58 = v22;
  v23 = *(v3 + 7);
  v59 = *(v3 + 5);
  v60 = v23;
  v61 = v21;
  v24 = v57;
  v62 = v20 & 0xFF3F;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v10;
  v54 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    v26 = v24[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_24DD4A178(0, v26, 1, v24);
      *&v57 = v24;
    }

    sub_24DD1A2F0(0, v26, 0);
  }

  else
  {
    v27 = sub_24DD18A9C(0, v24[3] >> 1);

    v24 = v27;
  }

  *&v57 = v24;
  for (i = v63; ; i = v63)
  {
    do
    {
      sub_24DD0DBC0(v13);
      if (i)
      {
        v32 = v52;
        v33 = *(v52 + 32);
        v33(v16, v13, v7);
        v33(v19, v16, v7);
        v34 = v51;
        v33(v51, v19, v7);
        v35 = v58;
        v36 = v60;
        v37 = BYTE8(v60);
        v38 = v61;
        v39 = BYTE8(v58) & 1;
        v40 = v62 & 0xFF01 | 0x40;
        *v3 = v56 & 0xFFFFFFFFFFFFFF8;
        *(v3 + 1) = v57;
        v3[3] = v35;
        v3[4] = v39;
        *(v3 + 5) = v59;
        v3[7] = v36;
        v3[8] = v37;
        v3[9] = v38;
        *(v3 + 40) = v40;
        (*(v32 + 16))(v53, v34, v7);
        sub_24DD1C4DC(&qword_27F1AF400, MEMORY[0x277D0B938], MEMORY[0x277D0B940]);
        swift_willThrowTypedImpl();
        v41 = *(v32 + 8);
        v24 = (v32 + 8);
        v41(v34, v7);
        return v24;
      }
    }

    while (!v29);
    if (v29 == 1)
    {
      break;
    }

    v63 = 0;
    *v55 = v29;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_24DD4A178(0, v24[2] + 1, 1, v24);
    }

    v31 = v24[2];
    v30 = v24[3];
    if (v31 >= v30 >> 1)
    {
      v24 = sub_24DD4A178((v30 > 1), v31 + 1, 1, v24);
    }

    v24[2] = v31 + 1;
    sub_24DD1C474(v55, v24 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, &unk_27F1B0B60, &qword_24DD4CB20);
    *&v57 = v24;
  }

  v42 = v58;
  v43 = v60;
  v44 = BYTE8(v60);
  v45 = v61;
  v46 = BYTE8(v58) & 1;
  v47 = v62 & 0xFF01 | 0x40;
  *v3 = v56 & 0xFFFFFFFFFFFFFF8;
  *(v3 + 1) = v57;
  v3[3] = v42;
  v3[4] = v46;
  *(v3 + 5) = v59;
  v3[7] = v43;
  v3[8] = v44;
  v3[9] = v45;
  *(v3 + 40) = v47;

  return v24;
}

void sub_24DD10F9C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF578, &qword_24DD4CB30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_24DD4AEE4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  if (!*(a1 + 16) || (v15 = sub_24DD392AC(0x6174732D63707267, 0xEB00000000737574), (v16 & 1) == 0))
  {
    if (a2)
    {
      v20 = a2;
      sub_24DD4AEC4();
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_24DD4B534();
      MEMORY[0x253037C70](0xD000000000000021, 0x800000024DD52080);
      swift_getErrorValue();
      sub_24DD4B644();
      sub_24DD4AEF4();

      return;
    }

    sub_24DD4AE84();
    goto LABEL_8;
  }

  v17 = (*(a1 + 56) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

  sub_24DD1042C(v19, v18, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24DD1C414(v6, &qword_27F1AF578, &qword_24DD4CB30);
    sub_24DD4AE84();
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_24DD4B534();

    v27 = 0x2064696C61766E49;
    v28 = 0xEF272065756C6176;
    MEMORY[0x253037C70](v19, v18);

    MEMORY[0x253037C70](0xD000000000000021, 0x800000024DD520B0);
LABEL_8:
    sub_24DD4AEF4();
    return;
  }

  (*(v8 + 32))(v14, v6, v7);
  if (*(a1 + 16) && (v21 = sub_24DD392AC(0x73656D2D63707267, 0xEC00000065676173), (v22 & 1) != 0))
  {
    v23 = (*(a1 + 56) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  (*(v8 + 16))(v12, v14, v7);
  if (v24)
  {

    sub_24DD3DE58(v25, v24);
    swift_bridgeObjectRelease_n();
  }

  sub_24DD4AEF4();
  (*(v8 + 8))(v14, v7);
}

id StreamingURLSessionDelegate.__allocating_init(requestStreamBufferSize:requestParts:responsePartSource:compressor:maxPayloadSize:streamID:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v29 = a1;
  v30 = a5;
  v13 = sub_24DD4B0A4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v7);
  v18 = *a4;
  *&v17[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource] = *a3;
  v20 = *a7;
  v19 = a7[1];
  v21 = &v17[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
  *v21 = 0;
  v21[4] = 0;
  v22 = &v17[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
  *v22 = v20;
  *(v22 + 1) = v19;
  sub_24DD4B094();
  (*(v14 + 32))(&v17[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_logger], v16, v13);
  v32 = a6 & 1;
  v23 = &v17[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  *v23 = 0;
  v24 = v29;
  *(v23 + 1) = a2 & 0xFFFFFFFFFFFFFF8;
  *(v23 + 2) = v24;
  v25 = v30;
  *(v23 + 3) = v18;
  *(v23 + 4) = v25;
  v23[40] = a6 & 1;
  v23[47] = 0;
  *(v23 + 45) = 0;
  *(v23 + 41) = 0;
  *(v23 + 6) = v20;
  *(v23 + 7) = v19;
  *(v23 + 9) = 0;
  *(v23 + 44) = 0;
  v31.receiver = v17;
  v31.super_class = v7;

  v26 = objc_msgSendSuper2(&v31, sel_init);

  return v26;
}

id StreamingURLSessionDelegate.init(requestStreamBufferSize:requestParts:responsePartSource:compressor:maxPayloadSize:streamID:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, char a6, uint64_t *a7)
{
  v28 = a5;
  ObjectType = swift_getObjectType();
  v14 = sub_24DD4B0A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  *&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_responsePartSource] = *a3;
  v20 = *a7;
  v19 = a7[1];
  v21 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
  *v21 = 0;
  v21[4] = 0;
  v22 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
  *v22 = v20;
  *(v22 + 1) = v19;
  sub_24DD4B094();
  (*(v15 + 32))(&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_logger], v17, v14);
  v31 = a6 & 1;
  v23 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  *v23 = 0;
  *(v23 + 1) = a2 & 0xFFFFFFFFFFFFFF8;
  *(v23 + 2) = a1;
  v24 = v28;
  *(v23 + 3) = v18;
  *(v23 + 4) = v24;
  v23[40] = a6 & 1;
  v23[47] = 0;
  *(v23 + 45) = 0;
  *(v23 + 41) = 0;
  *(v23 + 6) = v20;
  *(v23 + 7) = v19;
  *(v23 + 9) = 0;
  *(v23 + 44) = 0;
  v30.receiver = v7;
  v30.super_class = ObjectType;

  v25 = objc_msgSendSuper2(&v30, sel_init);

  return v25;
}

uint64_t StreamingURLSessionDelegate.urlSession(_:needNewBodyStreamForTask:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD11844;

  return sub_24DD1A444(a2);
}

uint64_t sub_24DD11844(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24DD11AD0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_24DD11BB8;

  return sub_24DD1A444(v9);
}

uint64_t sub_24DD11BB8(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t StreamingURLSessionDelegate.urlSession(_:dataTask:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24DD1CA94;

  return sub_24DD1A888(a3);
}

void sub_24DD11DE8(void *a1@<X1>, void (*a2)(char *, uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  v102 = a3;
  v93 = a2;
  v4 = sub_24DD4AEE4();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24DD4AF24();
  v95 = *(v92 - 8);
  v6 = MEMORY[0x28223BE20](v92);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v79 - v9;
  MEMORY[0x28223BE20](v8);
  v98 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v90 = (&v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = (&v79 - v15);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v17 = MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  v96 = sub_24DD4AF64();
  v100 = *(v96 - 8);
  v21 = MEMORY[0x28223BE20](v96);
  v97 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - v23;
  v25 = type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction(0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v79 - v29;
  sub_24DD0E9B4(a1, &v79 - v29);
  v99 = v30;
  sub_24DD1C250(v30, v28, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
      v32 = *(v84 + 48);
      v33 = v95;
      v34 = v98;
      v35 = v92;
      (*(v95 + 32))(v98, v28, v92);
      v36 = &v28[v32];
      v37 = v96;
      (*(v100 + 32))(v97, v36, v96);
      v38 = *(v33 + 16);
      v38(v10, v34, v35);
      v39 = v89;
      v85 = v38;
      v38(v89, v34, v35);
      v40 = v93;
      v41 = sub_24DD4B084();
      v42 = sub_24DD4B414();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v108 = v81;
        *v43 = 136315650;
        v82 = v40;
        v44 = v86;
        v80 = v42;
        sub_24DD4AF04();
        sub_24DD1C4DC(&qword_27F1AF560, MEMORY[0x277D0B8D8], MEMORY[0x277D0B8E0]);
        v83 = v33 + 16;
        v45 = v88;
        v46 = sub_24DD4B624();
        v79 = v41;
        v47 = v46;
        v49 = v48;
        (*(v87 + 8))(v44, v45);
        v50 = *(v33 + 8);
        v50(v10, v35);
        v51 = sub_24DD38DE0(v47, v49, &v108);

        *(v43 + 4) = v51;
        *(v43 + 12) = 2080;
        v52 = sub_24DD4AF14();
        v54 = v53;
        v93 = v50;
        v50(v39, v35);
        v55 = v82;
        v56 = sub_24DD38DE0(v52, v54, &v108);

        *(v43 + 14) = v56;
        *(v43 + 22) = 2080;
        v57 = *&v55[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
        v58 = *&v55[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
        v106 = 0;
        v107 = 0xE000000000000000;
        v104 = 0x726F70736E617274;
        v105 = 0xEA00000000005F74;
        v103 = v57;
        v59 = sub_24DD4B624();
        MEMORY[0x253037C70](v59);

        MEMORY[0x253037C70](v104, v105);

        MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
        v104 = v58;
        v35 = v92;
        v60 = sub_24DD4B624();
        MEMORY[0x253037C70](v60);

        v61 = sub_24DD38DE0(v106, v107, &v108);

        *(v43 + 24) = v61;
        v62 = v79;
        _os_log_impl(&dword_24DD09000, v79, v80, "RPC finished with status '%s' and message '%s' for %s", v43, 0x20u);
        v63 = v81;
        swift_arrayDestroy();
        MEMORY[0x253038870](v63, -1, -1);
        v64 = v43;
        v37 = v96;
        MEMORY[0x253038870](v64, -1, -1);
      }

      else
      {

        v71 = *(v33 + 8);
        v71(v39, v35);
        v93 = v71;
        v71(v10, v35);
      }

      v72 = v101;
      v70 = v102;
      v73 = *(v84 + 48);
      v74 = v91;
      v85(v91, v98, v35);
      v75 = v100;
      (*(v100 + 16))(v74 + v73, v97, v37);
      swift_storeEnumTagMultiPayload();
      v76 = v90;
      sub_24DD1C3AC(v74, v90, &unk_27F1B0B60, &qword_24DD4CB20);

      sub_24DD14248(v76, &v106);
      if (v72)
      {

        sub_24DD1C414(v76, &qword_27F1AF548, &qword_24DD4CB10);
        sub_24DD1C414(v74, &unk_27F1B0B60, &qword_24DD4CB20);
      }

      else
      {

        if ((v107 & 1) == 0)
        {
          v77 = v106;

          sub_24DD14D00(v77, nullsub_1, 0);
        }

        sub_24DD1C414(v76, &qword_27F1AF548, &qword_24DD4CB10);
        sub_24DD1C414(v91, &unk_27F1B0B60, &qword_24DD4CB20);
      }

      sub_24DD2CFEC(0);

      (*(v75 + 8))(v97, v37);
      v93(v98, v35);
      sub_24DD1C2B8(v99, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
      v69 = 0;
    }

    else
    {
      sub_24DD1C2B8(v99, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
      v69 = 0;
      v70 = v102;
    }
  }

  else
  {
    v65 = v100;
    v66 = v28;
    v67 = v96;
    (*(v100 + 32))(v24, v66, v96);
    (*(v65 + 16))(v20, v24, v67);
    swift_storeEnumTagMultiPayload();
    sub_24DD1C3AC(v20, v16, &unk_27F1B0B60, &qword_24DD4CB20);

    v68 = v101;
    sub_24DD14248(v16, &v106);
    if (v68)
    {

      sub_24DD1C414(v16, &qword_27F1AF548, &qword_24DD4CB10);
      sub_24DD1C414(v20, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v65 + 8))(v24, v67);
      sub_24DD1C2B8(v99, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);

      v69 = 1;
      v70 = v102;
    }

    else
    {

      v70 = v102;
      if ((v107 & 1) == 0)
      {
        v78 = v106;

        sub_24DD14D00(v78, nullsub_1, 0);
      }

      sub_24DD1C414(v16, &qword_27F1AF548, &qword_24DD4CB10);
      sub_24DD1C414(v20, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v65 + 8))(v24, v67);
      sub_24DD1C2B8(v99, type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction);
      v69 = 1;
    }
  }

  *v70 = v69;
}

uint64_t sub_24DD12B50(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_24DD12C44;

  return sub_24DD1A888(v12);
}

uint64_t sub_24DD12C44(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v8 = *(v10 + 8);

  return v8();
}

void sub_24DD12DEC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a3 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask;
  os_unfair_lock_lock((a3 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask));
  if (a2)
  {
    v7 = &selRef_cancel;
  }

  else
  {
    *(v6 + 4) = 0;
    v7 = &selRef_resume;
  }

  [a4 *v7];

  os_unfair_lock_unlock(v6);
}

unint64_t sub_24DD12F24(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF538, &qword_24DD4CB00);
    v2 = sub_24DD4B5F4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_24DD1BEA0(*(v1 + 48) + 40 * v15, v28);
    sub_24DD1BEFC(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_24DD1BEA0(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_24DD1C414(v25, &qword_27F1AF540, &qword_24DD4CB08);

      goto LABEL_22;
    }

    sub_24DD1BEFC(v26 + 8, v24);
    sub_24DD1C414(v25, &qword_27F1AF540, &qword_24DD4CB08);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_24DD392AC(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_24DD13204(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v99 = a4;
  *&v101 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = (&v91 - v9);
  v97 = sub_24DD4AEE4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24DD4AF64();
  v11 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v109 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24DD4AF24();
  v13 = *(v110 - 8);
  v14 = MEMORY[0x28223BE20](v110);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v98 = &v91 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v91 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v91 - v21;
  v23 = type metadata accessor for StreamingURLSessionDelegate.State.CompletedAction(0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v104 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v107 = &v91 - v26;
  v103 = v11;
  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = sub_24DD3A9F0(MEMORY[0x277D84F90]);
  }

  v28 = *a1;
  v29 = *(a1 + 80);
  v111 = v13;
  v102 = v16;
  if (!(v29 >> 6))
  {

    sub_24DD10F9C(v27, v101);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    v38 = *(v13 + 16);
    v35 = v107;
    v34 = v110;
    v38(v107, v22, v110);
    v115 = sub_24DD13FD8(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
    sub_24DD1BF78();
    v36 = v111;
    sub_24DD4AF74();
    v37 = v36;
    goto LABEL_8;
  }

  v106 = v4;
  v30 = *(a1 + 8);
  v31 = *(a1 + 40);
  if (v29 >> 6 == 1)
  {

    sub_24DD10F9C(v27, v101);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
    *&v101 = *(v32 + 48);
    v34 = v110;
    v33 = v111;
    v35 = v107;
    (*(v111 + 16))(v107, v22, v110);
    v5 = v106;
    v115 = sub_24DD13FD8(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF568, &qword_24DD4CB28);
    sub_24DD1BF78();
    v36 = v33;
    sub_24DD4AF74();
    v37 = v33;
LABEL_8:
    (*(v37 + 8))(v22, v34);
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    v29 = 128;
    goto LABEL_10;
  }

  v39 = *(a1 + 32);
  v101 = *(a1 + 16);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  v41 = *(*(v40 - 8) + 56);
  v42 = *(a1 + 64);
  v94 = *(a1 + 48);
  v93 = v42;
  v43 = v107;
  v41(v107, 1, 1, v40);

  *a1 = v28;
  *(a1 + 8) = v30;
  *(a1 + 16) = v101;
  *(a1 + 32) = v39;
  *(a1 + 40) = v31;
  v35 = v43;
  v44 = v93;
  *(a1 + 48) = v94;
  *(a1 + 64) = v44;
  v5 = v106;
  v36 = v111;
LABEL_10:
  *(a1 + 80) = v29;
  v45 = v104;
  sub_24DD1C250(v35, v104, type metadata accessor for StreamingURLSessionDelegate.State.CompletedAction);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
  {
    v106 = v5;
    v47 = *(v46 + 48);
    v48 = v108;
    v49 = v110;
    (*(v36 + 32))(v108, v45, v110);
    v50 = v103;
    (*(v103 + 32))(v109, v45 + v47, v105);
    v51 = v49;
    v53 = v36 + 16;
    v52 = *(v36 + 16);
    v54 = v98;
    v52(v98, v48, v49);
    v55 = v102;
    v104 = v53;
    *&v101 = v52;
    v52(v102, v48, v51);
    v56 = v99;
    v57 = sub_24DD4B084();
    v58 = sub_24DD4B414();
    v99 = v56;

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *&v94 = swift_slowAlloc();
      v117 = v94;
      *v59 = 136315650;
      v60 = v95;
      LODWORD(v93) = v58;
      sub_24DD4AF04();
      sub_24DD1C4DC(&qword_27F1AF560, MEMORY[0x277D0B8D8], MEMORY[0x277D0B8E0]);
      v61 = v54;
      v62 = v97;
      v63 = sub_24DD4B624();
      v92 = v57;
      v64 = v63;
      v66 = v65;
      (*(v96 + 8))(v60, v62);
      v67 = v61;
      v68 = *(v111 + 8);
      v68(v67, v51);
      v69 = sub_24DD38DE0(v64, v66, &v117);

      *(v59 + 4) = v69;
      *(v59 + 12) = 2080;
      v70 = v102;
      v71 = sub_24DD4AF14();
      v73 = v72;
      v68(v70, v110);
      v74 = sub_24DD38DE0(v71, v73, &v117);

      *(v59 + 14) = v74;
      *(v59 + 22) = 2080;
      v75 = v59;
      v76 = *&v99[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
      v77 = *&v99[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
      v115 = 0;
      v116 = 0xE000000000000000;
      v113 = 0x726F70736E617274;
      v114 = 0xEA00000000005F74;
      v112 = v76;
      v78 = sub_24DD4B624();
      MEMORY[0x253037C70](v78);

      MEMORY[0x253037C70](v113, v114);
      v79 = v110;

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v113 = v77;
      v50 = v103;
      v80 = sub_24DD4B624();
      MEMORY[0x253037C70](v80);

      v81 = sub_24DD38DE0(v115, v116, &v117);

      *(v75 + 24) = v81;
      v82 = v92;
      _os_log_impl(&dword_24DD09000, v92, v93, "RPC finished with status '%s' and message '%s' for %s", v75, 0x20u);
      v83 = v94;
      swift_arrayDestroy();
      MEMORY[0x253038870](v83, -1, -1);
      v84 = v75;
      v85 = v105;
      MEMORY[0x253038870](v84, -1, -1);
    }

    else
    {

      v68 = *(v111 + 8);
      v68(v55, v51);
      v68(v54, v51);
      v79 = v51;
      v85 = v105;
    }

    v86 = *(v46 + 48);
    v87 = v100;
    (v101)(v100, v108, v79);
    (*(v50 + 16))(v87 + v86, v109, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    swift_storeEnumTagMultiPayload();

    v88 = v106;
    sub_24DD14248(v87, &v115);
    if (v88)
    {
      sub_24DD1C414(v87, &qword_27F1AF548, &qword_24DD4CB10);
    }

    else
    {

      if ((v116 & 1) == 0)
      {
        v89 = v115;

        sub_24DD14D00(v89, nullsub_1, 0);
      }

      sub_24DD1C414(v87, &qword_27F1AF548, &qword_24DD4CB10);
    }

    sub_24DD2CFEC(0);

    (*(v50 + 8))(v109, v85);
    v68(v108, v79);
    v35 = v107;
  }

  return sub_24DD1C2B8(v35, type metadata accessor for StreamingURLSessionDelegate.State.CompletedAction);
}

id StreamingURLSessionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StreamingURLSessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DD13FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_24DD286B4(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = sub_24DD4B504();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v13 = (*(v3 + 56) + 16 * v6);
    v31 = *v13;
    v32 = *v11;
    v14 = v3;
    v15 = v13[1];
    v16 = *(v33 + 16);
    v17 = *(v33 + 24);

    if (v16 >= v17 >> 1)
    {
      result = sub_24DD286B4((v17 > 1), v16 + 1, 1);
    }

    *(v33 + 16) = v16 + 1;
    v18 = v33 + 40 * v16;
    *(v18 + 32) = v32;
    *(v18 + 40) = v12;
    *(v18 + 48) = v31;
    *(v18 + 56) = v15;
    *(v18 + 64) = 0;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v14;
    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_24DD1BFDC(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_24DD1BFDC(v6, v28, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v27)
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

uint64_t sub_24DD14248@<X0>(char **a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *(v2 + 16);
  v19 = (*(*v18 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v18 + v19));
  if (result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24DD14EA0(a1, v17);
  result = pthread_mutex_unlock((v18 + v19));
  if (result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v17, v15, &qword_27F1AF5B0, &qword_24DD4CB58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C0, &qword_24DD4CB68) + 48);
      v30 = v36;
      v31 = v37;
      (*(v36 + 32))(v11, v15, v37);
      sub_24DD1C474(v15 + v29, v8, &unk_27F1B0B60, &qword_24DD4CB20);
      v32 = v38;
      sub_24DD1C3AC(v8, v38, &unk_27F1B0B60, &qword_24DD4CB20);
      v23 = 1;
      (*(v34 + 56))(v32, 0, 1, v35);
      sub_24DD4B314();
      sub_24DD1C414(v8, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v30 + 8))(v11, v31);
      result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
      v22 = 0;
    }

    else
    {
      result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
      v23 = 0;
      v22 = *v15;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B8, &qword_24DD4CB60);
    v25 = *(v24 + 48);
    v22 = *(v15 + *(v24 + 64));
    v26 = v36;
    v27 = v37;
    (*(v36 + 32))(v11, v15, v37);
    sub_24DD1C474(v15 + v25, v8, &unk_27F1B0B60, &qword_24DD4CB20);
    v28 = v38;
    sub_24DD1C3AC(v8, v38, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v34 + 56))(v28, 0, 1, v35);
    sub_24DD4B314();
    sub_24DD1C414(v8, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v26 + 8))(v11, v27);
    result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
    v23 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_24DD1C09C();
      swift_allocError();
      swift_willThrow();
      return sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
    }

    result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
    v22 = 0;
    v23 = 1;
  }

  v33 = v39;
  *v39 = v22;
  *(v33 + 8) = v23;
  return result;
}

uint64_t sub_24DD147A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *(v2 + 16);
  v19 = (*(*v18 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v18 + v19));
  if (result)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_24DD16A68(a1, v17);
  result = pthread_mutex_unlock((v18 + v19));
  if (result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v17, v15, &qword_27F1AF5B0, &qword_24DD4CB58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C0, &qword_24DD4CB68) + 48);
      v30 = v36;
      v31 = v37;
      (*(v36 + 32))(v11, v15, v37);
      sub_24DD1C474(v15 + v29, v8, &unk_27F1B0B60, &qword_24DD4CB20);
      v32 = v38;
      sub_24DD1C3AC(v8, v38, &unk_27F1B0B60, &qword_24DD4CB20);
      v23 = 1;
      (*(v34 + 56))(v32, 0, 1, v35);
      sub_24DD4B314();
      sub_24DD1C414(v8, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(v30 + 8))(v11, v31);
      result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
      v22 = 0;
    }

    else
    {
      result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
      v23 = 0;
      v22 = *v15;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B8, &qword_24DD4CB60);
    v25 = *(v24 + 48);
    v22 = *(v15 + *(v24 + 64));
    v26 = v36;
    v27 = v37;
    (*(v36 + 32))(v11, v15, v37);
    sub_24DD1C474(v15 + v25, v8, &unk_27F1B0B60, &qword_24DD4CB20);
    v28 = v38;
    sub_24DD1C3AC(v8, v38, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v34 + 56))(v28, 0, 1, v35);
    sub_24DD4B314();
    sub_24DD1C414(v8, &unk_27F1B0B60, &qword_24DD4CB20);
    (*(v26 + 8))(v11, v27);
    result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
    v23 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_24DD1C09C();
      swift_allocError();
      swift_willThrow();
      return sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
    }

    result = sub_24DD1C414(v17, &qword_27F1AF5B0, &qword_24DD4CB58);
    v22 = 0;
    v23 = 1;
  }

  v33 = v39;
  *v39 = v22;
  *(v33 + 8) = v23;
  return result;
}

void sub_24DD14D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = (*(*v7 + 48) + 7) & 0x1FFFFFFF8;
  if (pthread_mutex_lock((v7 + v8)))
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_24DD179F0(a1, a2, a3);
  v11 = v10;
  v13 = v12;
  if (pthread_mutex_unlock((v7 + v8)))
  {
LABEL_12:
    __break(1u);
    return;
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);

      v9(v13 & 0x7FFFFFFFFFFFFFFFLL, 1);
      sub_24DD1BFE8(v9, v11, v13);
    }

    else
    {
      sub_24DD1C04C(v9, v11, v13);
      v9(0, 0);
      sub_24DD1BFE8(v9, v11, v13);

      sub_24DD1BFE8(v9, v11, v13);
    }
  }
}

uint64_t sub_24DD14EA0@<X0>(char **a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v267 = a1;
  v251 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C8, &unk_24DD4CB70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v235 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D0, &unk_24DD4DA10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v246 = &v235 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v242 = &v235 - v10;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v249 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v238 = &v235 - v11;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  MEMORY[0x28223BE20](v247);
  v13 = &v235 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v239 = &v235 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v235 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v256 = &v235 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v235 - v23;
  MEMORY[0x28223BE20](v22);
  v255 = (&v235 - v25);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v260 = *(v270 - 8);
  v26 = MEMORY[0x28223BE20](v270);
  v237 = &v235 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v264 = &v235 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v253 = &v235 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v252 = &v235 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v245 = &v235 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v254 = (&v235 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v265 = &v235 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v244 = &v235 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v243 = &v235 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v257 = &v235 - v45;
  MEMORY[0x28223BE20](v44);
  v258 = &v235 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v235 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D8, &qword_24DD4CB80);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v269 = &v235 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v268 = &v235 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v55 = MEMORY[0x28223BE20](v54);
  v241 = &v235 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v58 = &v235 - v57;
  sub_24DD1C3AC(v3, &v235 - v57, &qword_27F1AF588, &qword_24DD4CB40);
  v250 = v54;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v236 = v6;
    v240 = v3;
    if (EnumCaseMultiPayload)
    {
      sub_24DD1C474(v58, v13, &qword_27F1AF580, &qword_24DD4CB38);
      sub_24DD1C414(v3, &qword_27F1AF588, &qword_24DD4CB40);
      swift_storeEnumTagMultiPayload();
      v246 = v13;
      v109 = (v13 + 64);
      v110 = *(*(v13 + 8) + 24);
      v111 = (v110 + 1);
      v112 = v260;
      if (__OFADD__(v110, 1))
      {
LABEL_168:
        __break(1u);
LABEL_169:
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
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v244 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = *v109;
      if (*(*v109 + 16) < v111 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24DD28C60(isUniquelyReferenced_nonNull_native, v111, 0);
        v114 = *v109;
      }

      v257 = ((*(v112 + 80) + 40) & ~*(v112 + 80));
      sub_24DD195DC(v114 + 2, &v257[v114], &v272);
      sub_24DD1C3AC(v267, v49, &qword_27F1AF548, &qword_24DD4CB10);
      v115 = sub_24DD1975C(v269, v49);
      v116 = v114[3];
      v92 = __OFADD__(v116, v115);
      v117 = v116 + v115;
      if (v92)
      {
        goto LABEL_170;
      }

      v267 = (v112 + 48);
      v268 = (v112 + 56);
      v114[3] = v117;
      v118 = &qword_24DD4CB20;
      v255 = v109;
      v119 = v254;
      while (1)
      {
        v120 = v269;
        v121 = v256;
        sub_24DD1C474(v269, v256, &qword_27F1AF5A0, &qword_24DD4CB48);
        v122 = v120;
        v123 = v270;
        v266 = *v268;
        v266(v122, 1, 1, v270);
        v265 = *v267;
        if ((v265)(v121, 1, v123) == 1)
        {
          break;
        }

        sub_24DD1C474(v121, v119, &unk_27F1B0B60, v118);
        v124 = v114[3];
        v125 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
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
          goto LABEL_159;
        }

        v126 = swift_isUniquelyReferenced_nonNull_native();
        v127 = *v109;
        if (*(*v109 + 16) < v125 || (v126 & 1) == 0)
        {
          sub_24DD28C60(v126, v125, 0);
          v127 = *v109;
        }

        v129 = v127[3];
        v128 = v127[4];
        v92 = __OFADD__(v128, v129);
        v130 = v128 + v129;
        if (v92)
        {
          goto LABEL_152;
        }

        if (v129 < 0)
        {
          if (v130 < 0)
          {
            v134 = v127[2];
            v92 = __OFADD__(v130, v134);
            v130 += v134;
            if (v92)
            {
              goto LABEL_166;
            }
          }
        }

        else
        {
          v131 = v127[2];
          v132 = __OFSUB__(v130, v131);
          v133 = v130 - v131;
          if (v133 < 0 == v132)
          {
            v130 = v133;
            if (v132)
            {
              goto LABEL_164;
            }
          }
        }

        v135 = &v257[v127];
        v136 = v118;
        v137 = *(v112 + 72);
        v138 = v136;
        sub_24DD1C3AC(v119, &v257[v127 + v137 * v130], &unk_27F1B0B60, v136);
        v139 = v127[3];
        v92 = __OFADD__(v139, 1);
        v140 = v139 + 1;
        if (v92)
        {
          goto LABEL_154;
        }

        v127[3] = v140;
        v259 = v127;
        sub_24DD195DC(v127 + 2, v135, &v273);
        v141 = 0;
        v142 = 0;
        v144 = v273;
        v143 = v274;
        v261 = v276;
        v262 = v275;
        LODWORD(v263) = v277 | (v276 < 1);
        v258 = v274;
        while (1)
        {
          if (v142 == v143)
          {
            if (v141)
            {
              v142 = v143;
              goto LABEL_74;
            }

            if (v263)
            {
              goto LABEL_75;
            }

            v142 = 0;
            v141 = 1;
            v143 = v261;
            v144 = v262;
          }

          v145 = v269;
          sub_24DD1C474(v269, v19, &qword_27F1AF5A0, &qword_24DD4CB48);
          v146 = v145;
          v147 = v270;
          v266(v146, 1, 1, v270);
          if ((v265)(v19, 1, v147) == 1)
          {
            break;
          }

          v148 = v264;
          sub_24DD1C474(v19, v264, &unk_27F1B0B60, v138);
          if (!v144)
          {
            goto LABEL_177;
          }

          sub_24DD1C474(v148, v144 + v142 * v137, &unk_27F1B0B60, v138);
          v92 = __OFADD__(v142, 1);
          v142 = (v142 + 1);
          if (v92)
          {
            goto LABEL_126;
          }
        }

        sub_24DD1C414(v19, &qword_27F1AF5A0, &qword_24DD4CB48);
        v143 = v142;
        if ((v141 & 1) == 0)
        {
          goto LABEL_75;
        }

LABEL_74:
        v143 = (v142 + v258);
        if (__OFADD__(v258, v142))
        {
          goto LABEL_158;
        }

LABEL_75:
        v114 = v259;
        v149 = v259[3];
        v92 = __OFADD__(v149, v143);
        v150 = v143 + v149;
        if (v92)
        {
          goto LABEL_156;
        }

        v259[3] = v150;
        v119 = v254;
        v118 = v138;
        sub_24DD1C414(v254, &unk_27F1B0B60, v138);
        v112 = v260;
        v109 = v255;
      }

      sub_24DD1C414(v121, &qword_27F1AF5A0, &qword_24DD4CB48);
      sub_24DD1C414(v269, &qword_27F1AF5D8, &qword_24DD4CB80);
      v165 = v114[3];
      v166 = v244;
      v167 = (v165 - v244);
      if (v165 < v244)
      {
        goto LABEL_172;
      }

      v168 = v245;
      if (v244 < 0)
      {
        goto LABEL_173;
      }

      v154 = *(v246 + 1);
      v267 = *v246;
      v152 = *(v246 + 2);
      v169 = *(v246 + 3);
      v157 = *(v246 + 4);
      v76 = v114;
      v269 = v157;
      if (!v169)
      {
        goto LABEL_98;
      }

      v264 = v154;
      v265 = v152;

      sub_24DD1C124(v169, v157);
      if (v165 == v166)
      {
        v170 = 0;
LABEL_107:
        v157 = v269;
        sub_24DD1C134(v169, v269);

        v171 = v265 + v170;
        if (!__OFADD__(v265, v170))
        {
          v172 = v248;
          v173 = v249;
          v174 = v242;
          v154 = v264;
          goto LABEL_109;
        }

        goto LABEL_178;
      }

      v175 = v114;
      v170 = 0;
      v176 = &v257[v175];
      while (v166 < v76[3])
      {
        v177 = v76[4];
        if (v166 + v177 >= v76[2])
        {
          v178 = v76[2];
        }

        else
        {
          v178 = 0;
        }

        v179 = &v176[(v166 + v177 - v178) * *(v260 + 72)];
        v180 = v166;
        v181 = v253;
        sub_24DD1C3AC(v179, v253, &unk_27F1B0B60, &qword_24DD4CB20);
        v182 = v181;
        v183 = v252;
        sub_24DD1C474(v182, v252, &unk_27F1B0B60, &qword_24DD4CB20);
        sub_24DD1C474(v183, v168, &unk_27F1B0B60, &qword_24DD4CB20);
        v184 = (v169)(v168);
        v92 = __OFADD__(v170, v184);
        v170 += v184;
        if (v92)
        {
          goto LABEL_162;
        }

        sub_24DD1C414(v168, &unk_27F1B0B60, &qword_24DD4CB20);
        v166 = v180 + 1;
        if (v165 == v180 + 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_161;
    }

    v60 = *(v58 + 1);
    v239 = *v58;
    v252 = v60;
    v61 = *(v58 + 3);
    v245 = *(v58 + 2);
    v253 = *(v58 + 4);
    LODWORD(v238) = v58[40];
    v62 = *(v58 + 6);
    v63 = *(v58 + 7);
    v242 = v62;
    sub_24DD1C124(v62, v63);
    v64 = sub_24DD4B024();
    v271 = *v64;
    v65 = v271;
    v66 = v271[3];
    v67 = v66 + 1;
    v68 = v260;
    if (__OFADD__(v66, 1))
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v235 = v64;
    v237 = v63;

    v69 = swift_isUniquelyReferenced_nonNull_native();
    if (v65[2] < v67 || (v70 = v65, (v69 & 1) == 0))
    {
      sub_24DD28C60(v69, v67, 0);
      v70 = v271;
    }

    v71 = v70;
    v256 = (*(v68 + 80) + 40) & ~*(v68 + 80);
    sub_24DD195DC(v70 + 2, v70 + v256, &v272);
    sub_24DD1C3AC(v267, v49, &qword_27F1AF548, &qword_24DD4CB10);
    v72 = sub_24DD1975C(v268, v49);
    v73 = v71[3];
    v92 = __OFADD__(v73, v72);
    v74 = v73 + v72;
    v75 = v258;
    if (v92)
    {
      goto LABEL_169;
    }

    v254 = v61;
    v269 = (v68 + 56);
    v267 = (v68 + 48);
    v71[3] = v74;
    v76 = v71;
    while (1)
    {
      v77 = v268;
      v78 = v255;
      sub_24DD1C474(v268, v255, &qword_27F1AF5A0, &qword_24DD4CB48);
      v79 = v77;
      v80 = v270;
      v266 = *v269;
      v266(v79, 1, 1, v270);
      v81 = *v267;
      v82 = (*v267)(v78, 1, v80);
      v83 = v257;
      if (v82 == 1)
      {
        break;
      }

      sub_24DD1C474(v78, v75, &unk_27F1B0B60, &qword_24DD4CB20);
      v84 = v76[3];
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        __break(1u);
        goto LABEL_150;
      }

      v86 = v271;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      if (v86[2] < v85 || (v87 & 1) == 0)
      {
        sub_24DD28C60(v87, v85, 0);
        v86 = v271;
      }

      v89 = v86[3];
      v88 = v86[4];
      v92 = __OFADD__(v88, v89);
      v90 = v88 + v89;
      if (v92)
      {
        goto LABEL_151;
      }

      if (v89 < 0)
      {
        if (v90 < 0)
        {
          v94 = v86[2];
          v92 = __OFADD__(v90, v94);
          v90 += v94;
          if (v92)
          {
            goto LABEL_165;
          }
        }
      }

      else
      {
        v91 = v86[2];
        v92 = __OFSUB__(v90, v91);
        v93 = v90 - v91;
        if (v93 < 0 == v92)
        {
          v90 = v93;
          if (v92)
          {
            goto LABEL_163;
          }
        }
      }

      v95 = v86 + v256;
      v96 = *(v68 + 72);
      sub_24DD1C3AC(v75, v86 + v256 + v96 * v90, &unk_27F1B0B60, &qword_24DD4CB20);
      v97 = v86[3];
      v92 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (v92)
      {
        goto LABEL_153;
      }

      v86[3] = v98;
      v261 = v86;
      sub_24DD195DC(v86 + 2, v95, &v273);
      v99 = 0;
      v100 = 0;
      v101 = v273;
      v102 = v274;
      v262 = v276;
      v263 = v275;
      LODWORD(v264) = v277 | (v276 < 1);
      v259 = v274;
      while (1)
      {
        if (v100 == v102)
        {
          if (v99)
          {
            v100 = v102;
            goto LABEL_36;
          }

          if (v264)
          {
            goto LABEL_37;
          }

          v100 = 0;
          v99 = 1;
          v102 = v262;
          v101 = v263;
        }

        v103 = v268;
        sub_24DD1C474(v268, v24, &qword_27F1AF5A0, &qword_24DD4CB48);
        v104 = v103;
        v105 = v270;
        v266(v104, 1, 1, v270);
        if (v81(v24, 1, v105) == 1)
        {
          break;
        }

        v106 = v265;
        sub_24DD1C474(v24, v265, &unk_27F1B0B60, &qword_24DD4CB20);
        if (!v101)
        {
          goto LABEL_176;
        }

        sub_24DD1C474(v106, v101 + v100 * v96, &unk_27F1B0B60, &qword_24DD4CB20);
        v92 = __OFADD__(v100++, 1);
        if (v92)
        {
          goto LABEL_125;
        }
      }

      sub_24DD1C414(v24, &qword_27F1AF5A0, &qword_24DD4CB48);
      v102 = v100;
      if ((v99 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_36:
      v102 = v259 + v100;
      if (__OFADD__(v259, v100))
      {
        goto LABEL_157;
      }

LABEL_37:
      v76 = v261;
      v107 = v261[3];
      v92 = __OFADD__(v107, v102);
      v108 = v107 + v102;
      if (v92)
      {
        goto LABEL_155;
      }

      v261[3] = v108;
      v75 = v258;
      sub_24DD1C414(v258, &unk_27F1B0B60, &qword_24DD4CB20);
      v68 = v260;
    }

    sub_24DD1C414(v78, &qword_27F1AF5A0, &qword_24DD4CB48);
    sub_24DD1C414(v268, &qword_27F1AF5D8, &qword_24DD4CB80);
    v153 = v254;
    v270 = v76[3];
    if (v270 < 0)
    {
      goto LABEL_171;
    }

    v154 = v240;
    v155 = v249;
    v156 = v244;
    v157 = v243;
    v261 = v76;
    if (v254)
    {

      sub_24DD1C124(v153, v253);
      if (!v270)
      {
        goto LABEL_127;
      }

      v158 = v76;
      v159 = 0;
      v160 = 0;
      v161 = v158 + v256;
      while (v160 < v261[3])
      {
        v162 = v261[4];
        if (v160 + v162 >= v261[2])
        {
          v163 = v261[2];
        }

        else
        {
          v163 = 0;
        }

        sub_24DD1C3AC(&v161[(v160 + v162 - v163) * *(v68 + 72)], v156, &unk_27F1B0B60, &qword_24DD4CB20);
        sub_24DD1C474(v156, v157, &unk_27F1B0B60, &qword_24DD4CB20);
        sub_24DD1C474(v157, v83, &unk_27F1B0B60, &qword_24DD4CB20);
        v164 = v254(v83);
        v92 = __OFADD__(v159, v164);
        v159 += v164;
        if (v92)
        {
          goto LABEL_160;
        }

        ++v160;
        sub_24DD1C414(v83, &unk_27F1B0B60, &qword_24DD4CB20);
        if (v270 == v160)
        {
          goto LABEL_128;
        }
      }

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

    v167 = v245;
    v169 = &v245[v270];
    if (!__OFADD__(v245, v270))
    {
      goto LABEL_130;
    }

    __break(1u);
LABEL_98:
    v171 = &v167[v152];
    if (__OFADD__(v152, v167))
    {
      goto LABEL_181;
    }

    v172 = v248;
    v173 = v249;
    v174 = v242;
LABEL_109:
    if (v171 < 0)
    {
      goto LABEL_174;
    }

    v185 = v171 < v154;
    v186 = v246;
    *v246 = v267;
    v186[1] = v154;
    v186[2] = v171;
    v186[3] = v169;
    v186[4] = v157;
    v187 = v247;
    v265 = *(v247 + 52);
    *(v186 + v265) = v171 < v154;
    v188 = *(v187 + 40);
    sub_24DD1C3AC(v186 + v188, v174, &qword_27F1AF5D0, &unk_24DD4DA10);
    if ((*(v173 + 48))(v174, 1, v172) == 1)
    {
      sub_24DD1C414(v174, &qword_27F1AF5D0, &unk_24DD4DA10);
      v76 = v240;
      sub_24DD1C414(v240, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C3AC(v186, v76, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      if (v171 < v154)
      {
LABEL_137:
        v169 = 0;
        v154 = v251;
        v171 = v236;
LABEL_147:
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
        (*(*(v234 - 8) + 56))(v171, 1, 1, v234);
        v230 = v154;
        v231 = v169;
        v232 = v185;
        v233 = v171;
        goto LABEL_148;
      }

      v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
      v169 = *(v76 + v189);
      v190 = v169 + 1;
      v154 = v251;
      v171 = v236;
      if (v169 != -1)
      {
LABEL_146:
        *(v76 + v189) = v190;
        goto LABEL_147;
      }

      __break(1u);
    }

    v191 = *(v173 + 32);
    v192 = v238;
    v263 = v173 + 32;
    v264 = v191;
    (v191)(v238, v174, v172);
    if (v76[3] >= 1)
    {
      v193 = v255;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD491AC();
      }

      v194 = *v193;
      sub_24DD1C474(&v257[v194 + *(v260 + 72) * v194[4]], v239, &unk_27F1B0B60, &qword_24DD4CB20);
      v195 = v194[4];
      v92 = __OFADD__(v195, 1);
      v196 = v195 + 1;
      v197 = v237;
      if (v92)
      {
        goto LABEL_182;
      }

      v198 = v194[3];
      if (v196 >= v194[2])
      {
        v196 = 0;
      }

      v194[4] = v196;
      if (__OFSUB__(v198, 1))
      {
        goto LABEL_183;
      }

      v194[3] = v198 - 1;
      v199 = v239;
      v266(v239, 0, 1, v270);
      sub_24DD1C474(v199, v197, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v169)
      {
        v200 = v269;
        sub_24DD1C124(v169, v269);
        v201 = (v169)(v197);
        sub_24DD1C134(v169, v200);
        v92 = __OFSUB__(v171, v201);
        v202 = v171 - v201;
        if (v92)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          v159 = 0;
LABEL_128:
          sub_24DD1C134(v254, v253);

          v169 = &v245[v159];
          if (__OFADD__(v245, v159))
          {
            goto LABEL_179;
          }

          v155 = v249;
          v154 = v240;
LABEL_130:
          if ((v169 & 0x8000000000000000) == 0)
          {
            if (v169 >= v252)
            {
              v203 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
              v204 = *&v154[v203];
              if (v204 == -1)
              {
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
                goto LABEL_184;
              }

              *&v154[v203] = v204 + 1;
              v270 = v204;
            }

            else
            {
              v270 = 0;
            }

            LODWORD(v269) = v169 < v252;
            v205 = *(v155 + 56);
            v206 = v248;
            v205(v246, 1, 1, v248);
            v207 = *v235;
            swift_retain_n();
            v208 = v261;

            v209 = v242;
            v210 = v237;
            sub_24DD1C134(v242, v237);
            v211 = v247;
            v212 = *(v247 + 40);
            v213 = v241;
            v205(&v241[v212], 1, 1, v206);
            v214 = v252;
            *v213 = v239;
            *(v213 + 8) = v214;
            v215 = v254;
            *(v213 + 16) = v169;
            *(v213 + 24) = v215;
            *(v213 + 32) = v253;
            *(v213 + 40) = v238;
            *(v213 + 48) = v209;
            *(v213 + 56) = v210;
            *(v213 + 64) = v208;
            sub_24DD1C144(v246, v213 + v212, &qword_27F1AF5D0, &unk_24DD4DA10);

            *(v213 + v211[11]) = v207;
            *(v213 + v211[12]) = v207;
            LOBYTE(v209) = v269;
            *(v213 + v211[13]) = v269;
            swift_storeEnumTagMultiPayload();
            sub_24DD1C144(v213, v240, &qword_27F1AF588, &qword_24DD4CB40);
            v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
            v217 = v236;
            (*(*(v216 - 8) + 56))(v236, 1, 1, v216);
            return sub_24DD17F50(v270, v209, v217, v251);
          }

          goto LABEL_175;
        }
      }

      else
      {
        v202 = v171 - 1;
      }

      if (v202 < 0)
      {
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

      v219 = v267;
      v220 = v246;
      *v246 = v267;
      v220[1] = v154;
      v220[2] = v202;
      v220[3] = v169;
      v220[4] = v269;
      v221 = v202 < v219;
      *(v220 + v265) = v202 < v219;
      sub_24DD1C414(v220 + v188, &qword_27F1AF5D0, &unk_24DD4DA10);
      (*(v173 + 56))(v220 + v188, 1, 1, v172);
      v222 = v240;
      sub_24DD1C414(v240, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C3AC(v220, v222, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      if (v202 >= v219)
      {
        v227 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
        v223 = *(v222 + v227);
        v224 = v251;
        v225 = v236;
        v226 = v238;
        if (v223 == -1)
        {
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        *(v222 + v227) = v223 + 1;
      }

      else
      {
        v223 = 0;
        v224 = v251;
        v225 = v236;
        v226 = v238;
      }

      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
      v229 = *(v228 + 48);
      (v264)(v225, v226, v248);
      sub_24DD1C474(v197, v225 + v229, &unk_27F1B0B60, &qword_24DD4CB20);
      (*(*(v228 - 8) + 56))(v225, 0, 1, v228);
      v230 = v224;
      v231 = v223;
      v232 = v221;
      v233 = v225;
LABEL_148:
      sub_24DD17F50(v231, v232, v233, v230);
      return sub_24DD1C414(v246, &qword_27F1AF580, &qword_24DD4CB38);
    }

    v218 = v239;
    v266(v239, 1, 1, v270);
    (*(v173 + 8))(v192, v172);
    sub_24DD1C414(v218, &qword_27F1AF5A0, &qword_24DD4CB48);
    v76 = v240;
    sub_24DD1C414(v240, &qword_27F1AF588, &qword_24DD4CB40);
    sub_24DD1C3AC(v246, v76, &qword_27F1AF580, &qword_24DD4CB38);
    swift_storeEnumTagMultiPayload();
    if (v171 < v154)
    {
      goto LABEL_137;
    }

    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
    v169 = *(v76 + v189);
    v190 = v169 + 1;
    v154 = v251;
    v171 = v236;
    if (v169 == -1)
    {
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    goto LABEL_146;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD1C414(v58, &qword_27F1AF588, &qword_24DD4CB40);
LABEL_78:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_78;
  }

LABEL_187:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD16A68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v140 = a2;
  v135 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  MEMORY[0x28223BE20](v2 - 8);
  v127 = (&v125 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C8, &unk_24DD4CB70);
  MEMORY[0x28223BE20](v4 - 8);
  v133 = &v125 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D0, &unk_24DD4DA10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v132 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v131 = &v125 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  MEMORY[0x28223BE20](v10);
  v129 = (&v125 - v12);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  MEMORY[0x28223BE20](v134);
  v136 = (&v125 - v13);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v144 = *(v126 - 8);
  v14 = MEMORY[0x28223BE20](v126);
  v128 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v125 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v125 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v125 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v125 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v125 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v125 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v34 = MEMORY[0x28223BE20](v33);
  v130 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = (&v125 - v36);
  sub_24DD1C3AC(v141, &v125 - v36, &qword_27F1AF588, &qword_24DD4CB40);
  v139 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v53 = v136;
    sub_24DD1C474(v37, v136, &qword_27F1AF580, &qword_24DD4CB38);
    sub_24DD1C414(v141, &qword_27F1AF588, &qword_24DD4CB40);
    swift_storeEnumTagMultiPayload();
    v54 = *(v53[8] + 24);
    sub_24DD18300(v135);
    v55 = v53[8];
    v56 = v55[3];
    v57 = v56 - v54;
    if (v56 < v54)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if (v54 < 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v130 = (v53 + 8);
    v58 = v53[1];
    v132 = *v53;
    v135 = v58;
    v59 = v53[2];
    v60 = v53[3];
    v61 = v53[4];
    v142 = v61;
    v143 = v60;
    if (v60)
    {
      v125 = v59;

      sub_24DD1C124(v60, v61);
      if (v56 != v54)
      {
        v62 = 0;
        while (v54 < v55[3])
        {
          v87 = v55[4];
          if (v54 + v87 >= v55[2])
          {
            v88 = v55[2];
          }

          else
          {
            v88 = 0;
          }

          sub_24DD1C3AC(v55 + ((*(v144 + 80) + 40) & ~*(v144 + 80)) + (v54 + v87 - v88) * *(v144 + 72), v18, &unk_27F1B0B60, &qword_24DD4CB20);
          sub_24DD1C474(v18, v21, &unk_27F1B0B60, &qword_24DD4CB20);
          sub_24DD1C474(v21, v24, &unk_27F1B0B60, &qword_24DD4CB20);
          v89 = v143(v24);
          v60 = v143;
          v51 = __OFADD__(v62, v89);
          v62 += v89;
          if (v51)
          {
            goto LABEL_75;
          }

          ++v54;
          sub_24DD1C414(v24, &unk_27F1B0B60, &qword_24DD4CB20);
          if (v56 == v54)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_74;
      }

      v62 = 0;
LABEL_41:
      v86 = v142;
      sub_24DD1C134(v60, v142);

      v81 = v125 + v62;
      if (__OFADD__(v125, v62))
      {
        goto LABEL_81;
      }

      v53 = v136;
      v83 = v137;
      v82 = v138;
      v84 = v131;
      v85 = v135;
    }

    else
    {
      v81 = v59 + v57;
      if (__OFADD__(v59, v57))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v83 = v137;
      v82 = v138;
      v84 = v131;
      v85 = v135;
      v86 = v142;
    }

    if (v81 < 0)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v90 = v60;
    LOBYTE(v60) = v81 < v85;
    *v53 = v132;
    v53[1] = v85;
    v53[2] = v81;
    v53[3] = v90;
    v53[4] = v86;
    v91 = v134;
    v92 = *(v134 + 52);
    *(v53 + v92) = v81 < v85;
    v93 = v53;
    v94 = *(v91 + 40);
    sub_24DD1C3AC(v93 + v94, v84, &qword_27F1AF5D0, &unk_24DD4DA10);
    if ((*(v82 + 48))(v84, 1, v83) == 1)
    {
      sub_24DD1C414(v84, &qword_27F1AF5D0, &unk_24DD4DA10);
      v84 = v141;
      sub_24DD1C414(v141, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C3AC(v93, v84, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      if (v81 < v85)
      {
LABEL_60:
        v82 = 0;
        v83 = v140;
LABEL_70:
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
        v124 = v133;
        (*(*(v123 - 8) + 56))(v133, 1, 1, v123);
        sub_24DD17F50(v82, v60, v124, v83);
        v122 = v93;
        return sub_24DD1C414(v122, &qword_27F1AF580, &qword_24DD4CB38);
      }

      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
      v82 = *(v84 + v95);
      v96 = v82 + 1;
      v83 = v140;
      if (v82 != -1)
      {
LABEL_69:
        *(v84 + v95) = v96;
        goto LABEL_70;
      }

      __break(1u);
    }

    v97 = *(v82 + 32);
    v98 = v129;
    v97(v129, v84, v83);
    if (v55[3] >= 1)
    {
      v99 = v130;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD491AC();
      }

      v100 = *v99;
      v101 = *v99 + ((*(v144 + 80) + 40) & ~*(v144 + 80)) + *(v144 + 72) * *(*v99 + 32);
      v102 = v127;
      sub_24DD1C474(v101, v127, &unk_27F1B0B60, &qword_24DD4CB20);
      v103 = v100[4];
      v51 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      v105 = v128;
      if (v51)
      {
        goto LABEL_85;
      }

      v106 = v100[3];
      if (v104 >= v100[2])
      {
        v104 = 0;
      }

      v100[4] = v104;
      if (__OFSUB__(v106, 1))
      {
        goto LABEL_86;
      }

      v100[3] = v106 - 1;
      (*(v144 + 56))(v102, 0, 1, v126);
      sub_24DD1C474(v102, v105, &unk_27F1B0B60, &qword_24DD4CB20);
      v107 = v143;
      if (!v143)
      {
        v82 = v81 - 1;
        v98 = v142;
LABEL_62:
        if (v82 < 0)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v111 = v132;
        v112 = v82 < v132;
        v113 = v135;
        v114 = v136;
        *v136 = v132;
        v114[1] = v113;
        v115 = v143;
        v114[2] = v82;
        v114[3] = v115;
        v114[4] = v98;
        *(v114 + v92) = v112;
        sub_24DD1C414(v114 + v94, &qword_27F1AF5D0, &unk_24DD4DA10);
        (*(v138 + 56))(v114 + v94, 1, 1, v83);
        v116 = v141;
        sub_24DD1C414(v141, &qword_27F1AF588, &qword_24DD4CB40);
        sub_24DD1C3AC(v114, v116, &qword_27F1AF580, &qword_24DD4CB38);
        swift_storeEnumTagMultiPayload();
        if (v82 >= v111)
        {
          v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
          v117 = *(v116 + v118);
          if (v117 == -1)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          *(v116 + v118) = v117 + 1;
        }

        else
        {
          v117 = 0;
        }

        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
        v120 = *(v119 + 48);
        v121 = v133;
        v97(v133, v129, v137);
        sub_24DD1C474(v128, v121 + v120, &unk_27F1B0B60, &qword_24DD4CB20);
        (*(*(v119 - 8) + 56))(v121, 0, 1, v119);
        sub_24DD17F50(v117, v112, v121, v140);
        v122 = v114;
        return sub_24DD1C414(v122, &qword_27F1AF580, &qword_24DD4CB38);
      }

      v108 = v142;
      sub_24DD1C124(v143, v142);
      v109 = v105;
      v98 = v108;
      v60 = v107(v109);
      sub_24DD1C134(v107, v98);
      v82 = v81 - v60;
      if (!__OFSUB__(v81, v60))
      {
        goto LABEL_62;
      }

      __break(1u);
    }

    v110 = v127;
    (*(v144 + 56))(v127, 1, 1, v126);
    (*(v82 + 8))(v98, v83);
    sub_24DD1C414(v110, &qword_27F1AF5A0, &qword_24DD4CB48);
    v84 = v141;
    sub_24DD1C414(v141, &qword_27F1AF588, &qword_24DD4CB40);
    v93 = v136;
    sub_24DD1C3AC(v136, v84, &qword_27F1AF580, &qword_24DD4CB38);
    swift_storeEnumTagMultiPayload();
    if (v81 < v135)
    {
      goto LABEL_60;
    }

    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
    v82 = *(v84 + v95);
    v96 = v82 + 1;
    v83 = v140;
    if (v82 == -1)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_69;
  }

  v39 = *v37;
  v40 = *(v37 + 1);
  v42 = *(v37 + 2);
  v41 = *(v37 + 3);
  v143 = *(v37 + 4);
  LODWORD(v131) = *(v37 + 40);
  v43 = *(v37 + 6);
  v128 = *(v37 + 7);
  v129 = v43;
  sub_24DD1C124(v43, v128);
  v127 = sub_24DD4B024();
  v145 = *v127;

  v37 = &v145;
  sub_24DD18300(v135);
  v44 = v145;
  v45 = v145[3];
  if (v45 < 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v142 = v41;
  v126 = v39;
  v136 = v40;
  if (!v41)
  {
    v52 = v42 + v45;
    if (__OFADD__(v42, v45))
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    goto LABEL_26;
  }

  v135 = v42;

  sub_24DD1C124(v41, v143);
  v46 = 0;
  if (v45)
  {
    v47 = 0;
    while (v47 < v44[3])
    {
      v48 = v44[4];
      if (v47 + v48 >= v44[2])
      {
        v49 = v44[2];
      }

      else
      {
        v49 = 0;
      }

      sub_24DD1C3AC(v44 + ((*(v144 + 80) + 40) & ~*(v144 + 80)) + (v47 + v48 - v49) * *(v144 + 72), v27, &unk_27F1B0B60, &qword_24DD4CB20);
      sub_24DD1C474(v27, v30, &unk_27F1B0B60, &qword_24DD4CB20);
      sub_24DD1C474(v30, v32, &unk_27F1B0B60, &qword_24DD4CB20);
      v37 = v143;
      v50 = v142(v32);
      v51 = __OFADD__(v46, v50);
      v46 += v50;
      if (v51)
      {
        goto LABEL_73;
      }

      ++v47;
      sub_24DD1C414(v32, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v45 == v47)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_13:
  sub_24DD1C134(v142, v143);

  v40 = v136;
  v51 = __OFADD__(v135, v46);
  v52 = v135 + v46;
  if (!v51)
  {
LABEL_26:
    v64 = v141;
    if ((v52 & 0x8000000000000000) == 0)
    {
      if (v52 >= v40)
      {
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88) + 28);
        v66 = *(v64 + v65);
        if (v66 == -1)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        *(v64 + v65) = v66 + 1;
        v144 = v66;
      }

      else
      {
        v144 = 0;
      }

      LODWORD(v135) = v52 < v40;
      v67 = v137;
      v68 = *(v138 + 56);
      v68(v132, 1, 1, v137);
      v69 = *v127;
      swift_retain_n();

      v70 = v129;
      v138 = v52;
      v71 = v128;
      sub_24DD1C134(v129, v128);
      v72 = v134;
      v73 = *(v134 + 40);
      v74 = v130;
      v68(&v130[v73], 1, 1, v67);
      v75 = v136;
      *v74 = v126;
      *(v74 + 8) = v75;
      v77 = v142;
      v76 = v143;
      *(v74 + 16) = v138;
      *(v74 + 24) = v77;
      *(v74 + 32) = v76;
      *(v74 + 40) = v131;
      *(v74 + 48) = v70;
      *(v74 + 56) = v71;
      *(v74 + 64) = v44;
      sub_24DD1C144(v132, v74 + v73, &qword_27F1AF5D0, &unk_24DD4DA10);

      *(v74 + v72[11]) = v69;
      *(v74 + v72[12]) = v69;
      v78 = v72[13];
      LOBYTE(v72) = v135;
      *(v74 + v78) = v135;
      swift_storeEnumTagMultiPayload();
      sub_24DD1C144(v74, v141, &qword_27F1AF588, &qword_24DD4CB40);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
      v80 = v133;
      (*(*(v79 - 8) + 56))(v133, 1, 1, v79);
      return sub_24DD17F50(v144, v72, v80, v140);
    }

    goto LABEL_80;
  }

  __break(1u);
LABEL_16:
  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD1C414(v37, &qword_27F1AF588, &qword_24DD4CB40);
LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_24;
  }

LABEL_90:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD179F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  MEMORY[0x28223BE20](v11);
  v13 = &v31[-1] - v12;
  sub_24DD1C3AC(v4, &v31[-1] - v12, &qword_27F1AF588, &qword_24DD4CB40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_33;
    }

    sub_24DD1C474(v13, v10, &qword_27F1AF580, &qword_24DD4CB38);
    v15 = v8[12];
    v16 = *&v10[v15];
    v17 = v16[3];
    if (v17)
    {
      v18 = 0;
      while (1)
      {
        if ((v17 & ~(v17 >> 63)) == v18)
        {
          __break(1u);
          goto LABEL_30;
        }

        v19 = v16[4];
        v20 = v18 + v19 >= v16[2] ? v16[2] : 0;
        if (v16[v18 + 5 + v19 - v20] == a1)
        {
          break;
        }

        if (v17 == ++v18)
        {
          goto LABEL_13;
        }
      }

      sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
      swift_storeEnumTagMultiPayload();
      if (v18 >= v16[3])
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DD4910C();
      }

      v29 = *&v10[v15];
      if (v18 < *(v29 + 24))
      {
        sub_24DD2987C(v18, v18 + 1, (v29 + 16), v29 + 40, v31);

        sub_24DD29C34(v18, v18 + 1, (v29 + 16), (v29 + 40));

        sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
        sub_24DD1C3AC(v10, v4, &qword_27F1AF580, &qword_24DD4CB38);
        swift_storeEnumTagMultiPayload();
        sub_24DD4B334();
        sub_24DD1C4DC(&qword_27F1AF598, MEMORY[0x277D85678], MEMORY[0x277D85680]);
        swift_allocError();
        sub_24DD4B104();
        sub_24DD1C414(v10, &qword_27F1AF580, &qword_24DD4CB38);
        goto LABEL_17;
      }

      goto LABEL_32;
    }

LABEL_13:
    if (v10[v8[13]])
    {
      sub_24DD1C414(v10, &qword_27F1AF580, &qword_24DD4CB38);
    }

    else
    {
      sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
      swift_storeEnumTagMultiPayload();
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      v23 = v8[11];
      v24 = *(*&v10[v23] + 24);
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v26 = v22;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *&v10[v23];
      if (*(v28 + 16) < v25 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24DD28A7C(isUniquelyReferenced_nonNull_native, v25, 0);
        v28 = *&v10[v23];
      }

      sub_24DD29A5C((v28 + 16), v28 + 40, a1, sub_24DD1C0F0, v26);

      sub_24DD1C414(v4, &qword_27F1AF588, &qword_24DD4CB40);
      sub_24DD1C474(v10, v4, &qword_27F1AF580, &qword_24DD4CB38);
      swift_storeEnumTagMultiPayload();
      return 0;
    }

    return a2;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD1C414(v13, &qword_27F1AF588, &qword_24DD4CB40);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_16:
    sub_24DD1C09C();
    swift_allocError();
LABEL_17:

    return a2;
  }

LABEL_33:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD17F50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF5F0, &qword_24DD4CB98);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = &v33 + *(v16 + 56) - v17;
  *v18 = a1;
  v18[8] = a2 & 1;
  sub_24DD1C474(a3, v19, &qword_27F1AF5C8, &unk_24DD4CB70);
  v20 = *v18;
  v21 = v18[8];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E8, &qword_24DD4CB90);
  v23 = (*(*(v22 - 8) + 48))(v19, 1, v22);
  if (v21 == 1)
  {
    if (v23 != 1)
    {
      v24 = *(v22 + 48);
      v25 = *(v12 + 32);
      v25(v14, v19, v11);
      sub_24DD1C474(&v19[v24], v10, &unk_27F1B0B60, &qword_24DD4CB20);
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5C0, &qword_24DD4CB68) + 48);
      v25(a4, v14, v11);
      sub_24DD1C474(v10, &a4[v26], &unk_27F1B0B60, &qword_24DD4CB20);
    }
  }

  else if (v23 == 1)
  {
    *a4 = v20;
  }

  else
  {
    v27 = *(v22 + 48);
    v28 = *(v12 + 32);
    v28(v14, v19, v11);
    sub_24DD1C474(&v19[v27], v10, &unk_27F1B0B60, &qword_24DD4CB20);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B8, &qword_24DD4CB60);
    v30 = *(v29 + 48);
    v31 = *(v29 + 64);
    v28(a4, v14, v11);
    sub_24DD1C474(v10, &a4[v30], &unk_27F1B0B60, &qword_24DD4CB20);
    *&a4[v31] = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5B0, &qword_24DD4CB58);
  return swift_storeEnumTagMultiPayload();
}

uint64_t *sub_24DD18300(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
  v4 = *(a1 + 16);
  result = *v1;
  v6 = (*v1)[3];
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    v8 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    if ((*v1)[2] < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24DD28C60(isUniquelyReferenced_nonNull_native, v7, 0);
      v10 = *v1;
    }

    return sub_24DD19528(v10 + 2, v10 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v4);
  }

  return result;
}

uint64_t sub_24DD183E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24DD0D4B0;

  return v6();
}

uint64_t sub_24DD184C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24DD0C914;

  return v7();
}

uint64_t sub_24DD185B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF530, &qword_24DD4CA90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24DD1C3AC(a3, v23 - v10, &qword_27F1AF530, &qword_24DD4CA90);
  v12 = sub_24DD4B384();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24DD1C414(v11, &qword_27F1AF530, &qword_24DD4CA90);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24DD4B374();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24DD4B2F4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24DD4B194() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);

    return v21;
  }

LABEL_8:
  sub_24DD1C414(a3, &qword_27F1AF530, &qword_24DD4CA90);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24DD188AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD189A4;

  return v6(a1);
}

uint64_t sub_24DD189A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_24DD18A9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF600, &qword_24DD4CBA0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_24DD18BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24DD4B244();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24DD19130(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24DD4B584();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24DD19130(uint64_t a1, unint64_t a2)
{
  v2 = sub_24DD4B254();
  v6 = sub_24DD191B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24DD191B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24DD4B4C4();
    if (!v9 || (v10 = v9, v11 = sub_24DD39134(v9, 0), v12 = sub_24DD19308(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24DD4B1B4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24DD4B1B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24DD4B584();
LABEL_4:

  return sub_24DD4B1B4();
}

unint64_t sub_24DD19308(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24DD3DBC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24DD4B214();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24DD4B584();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24DD3DBC8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24DD4B1F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t *sub_24DD19528(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return result;
  }

  v7 = result;
  result = result[1];
  v8 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7[1] = v8;
  if (v8 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_24DD298F4(result, v8, v7, a2, &v12);
  v9 = v13;
  v10 = v14;
  if (v14)
  {
    v11 = v15;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v9 = 0;
  }

  if (v15)
  {
    v10 = 0;
  }

  v16 = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  return sub_24DD19E48(a3, a4);
}

void *sub_24DD195DC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v8 = *result;
    v9 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v9)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = *result;
  if (v5 < 0)
  {
    v9 = __OFADD__(v5, v8);
    v5 += v8;
    if (v9)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v3 >= v8)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    v13 = 0;
    v14 = 0;
    v4 = 0;
    v17 = *(v16 - 8);
    result = (v16 - 8);
    v11 = v17;
    v15 = 1;
    goto LABEL_21;
  }

  if (v5 < v4)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    v12 = *(v10 - 8);
    result = (v10 - 8);
    v11 = v12;
    v13 = v4 - v5;
    if (!__OFSUB__(v4, v5))
    {
      v14 = 0;
      v4 = 0;
      v15 = 1;
LABEL_21:
      *a3 = a2 + *(v11 + 72) * v5;
      *(a3 + 8) = v13;
      *(a3 + 16) = v14;
      *(a3 + 24) = v4;
      *(a3 + 32) = v15;
      return result;
    }

    goto LABEL_23;
  }

  v13 = v8 - v5;
  if (!__OFSUB__(v8, v5))
  {
    if ((v4 & 0x8000000000000000) == 0 && v8 >= v5)
    {
      v15 = v4 == 0;
      if (v4)
      {
        v14 = a2;
      }

      else
      {
        v14 = 0;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
      v19 = *(v18 - 8);
      result = (v18 - 8);
      v11 = v19;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24DD1975C(char *a1, uint64_t a2)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D8, &qword_24DD4CB80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF548, &qword_24DD4CB10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v19 = *(v2 + 16);
  v38 = *(v2 + 24);
  v20 = *(v2 + 32);
  if ((v20 & 1) == 0 && *(v2 + 8) <= 0)
  {
    v31 = v36;
    sub_24DD1C3AC(v36, v18, &qword_27F1AF548, &qword_24DD4CB10);
    sub_24DD1C474(v18, v15, &unk_27F1B0B60, &qword_24DD4CB20);
    v32 = *(v37 + 56);
    v32(v15, 0, 1, v4);
    v32(a1, 1, 1, v4);
    sub_24DD1C144(v15, a1, &qword_27F1AF5A0, &qword_24DD4CB48);
    v23 = sub_24DD19BE4(a1);
    sub_24DD1C414(v31, &qword_27F1AF548, &qword_24DD4CB10);
    return v23;
  }

  v35 = a1;
  v21 = v36;
  sub_24DD1C3AC(v36, v18, &qword_27F1AF548, &qword_24DD4CB10);
  v22 = *(v2 + 8);
  v23 = sub_24DD19FB8(v9, *v2, v22);
  v34 = v22;
  if (v23 != v22 || (v20 & 1) != 0)
  {
    sub_24DD1C414(v21, &qword_27F1AF548, &qword_24DD4CB10);
    v30 = v35;
LABEL_17:
    sub_24DD1C474(v9, v30, &qword_27F1AF5D8, &qword_24DD4CB80);
    return v23;
  }

  v24 = v35;
  if (v38 < 1)
  {
    v29 = 0;
LABEL_14:
    result = sub_24DD1C414(v21, &qword_27F1AF548, &qword_24DD4CB10);
    v25 = v29;
    v30 = v24;
  }

  else
  {
    v25 = 0;
    v26 = (v37 + 56);
    v27 = (v37 + 48);
    while (1)
    {
      sub_24DD1C474(v9, v13, &qword_27F1AF5A0, &qword_24DD4CB48);
      (*v26)(v9, 1, 1, v4);
      if ((*v27)(v13, 1, v4) == 1)
      {
        break;
      }

      result = sub_24DD1C474(v13, v6, &unk_27F1B0B60, &qword_24DD4CB20);
      if (!v19)
      {
        goto LABEL_20;
      }

      sub_24DD1C474(v6, v19 + *(v37 + 72) * v25++, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v38 == v25)
      {
        v24 = v35;
        v21 = v36;
        v29 = v38;
        goto LABEL_14;
      }
    }

    sub_24DD1C414(v36, &qword_27F1AF548, &qword_24DD4CB10);
    result = sub_24DD1C414(v13, &qword_27F1AF5A0, &qword_24DD4CB48);
    v30 = v35;
  }

  v23 = v34 + v25;
  if (!__OFADD__(v34, v25))
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24DD19BE4(uint64_t a1)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  result = MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v23 = 0;
  v9 = 0;
  v11 = *v1;
  v10 = v1[1];
  v20 = v1;
  v21 = v12;
  v13 = (v12 + 56);
  v14 = (v12 + 48);
  v19 = v10;
  do
  {
    if (v9 == v10)
    {
      if (v23)
      {
        v9 = v10;
        goto LABEL_15;
      }

      if (v20[4])
      {
        return v10;
      }

      v15 = v20[3];
      if (v15 < 1)
      {
        return v10;
      }

      v9 = 0;
      v11 = v20[2];
      v23 = 1;
      v10 = v15;
    }

    v16 = v22;
    sub_24DD1C474(v22, v4, &qword_27F1AF5A0, &qword_24DD4CB48);
    (*v13)(v16, 1, 1, v5);
    if ((*v14)(v4, 1, v5) == 1)
    {
      goto LABEL_12;
    }

    result = sub_24DD1C474(v4, v8, &unk_27F1B0B60, &qword_24DD4CB20);
    if (!v11)
    {
      goto LABEL_18;
    }

    result = sub_24DD1C474(v8, v11 + *(v21 + 72) * v9, &unk_27F1B0B60, &qword_24DD4CB20);
  }

  while (!__OFADD__(v9++, 1));
  __break(1u);
LABEL_12:
  result = sub_24DD1C414(v4, &qword_27F1AF5A0, &qword_24DD4CB48);
  v10 = v9;
  if ((v23 & 1) == 0)
  {
    return v10;
  }

LABEL_15:
  v10 = v19 + v9;
  if (!__OFADD__(v19, v9))
  {
    return v10;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24DD19E48(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_24DD19FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D8, &qword_24DD4CB80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  sub_24DD1C474(v3, v16, &unk_27F1B0B60, &qword_24DD4CB20);
  v28 = v8;
  v20 = *(v8 + 56);
  v20(v16, 0, 1, v7);
  v27 = v20;
  v20(v19, 1, 1, v7);
  result = sub_24DD1C144(v16, v19, &qword_27F1AF5A0, &qword_24DD4CB48);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_24DD1C474(v19, a1, &qword_27F1AF5D8, &qword_24DD4CB80);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    v26 = a3;
    v22 = (v28 + 48);
    v23 = 1;
    a1 = &unk_27F1B0B60;
    while (1)
    {
      sub_24DD1C474(v19, v14, &qword_27F1AF5A0, &qword_24DD4CB48);
      v27(v19, 1, 1, v7);
      if ((*v22)(v14, 1, v7) == 1)
      {
        sub_24DD1C414(v14, &qword_27F1AF5A0, &qword_24DD4CB48);
        a3 = v23 - 1;
        a1 = v25;
        goto LABEL_13;
      }

      sub_24DD1C474(v14, v10, &unk_27F1B0B60, &qword_24DD4CB20);
      sub_24DD1C474(v10, a2, &unk_27F1B0B60, &qword_24DD4CB20);
      if (v26 == v23)
      {
        break;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a1 = v25;
    a3 = v26;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_24DD1A2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24DD1A444(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24DD1A464, 0, 0);
}

uint64_t sub_24DD1A464()
{
  v35 = v0;
  v1 = (*(v0 + 32) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state);
  os_unfair_lock_lock(v1);
  v2 = sub_24DD0E5D8();
  os_unfair_lock_unlock(v1);
  v3 = *(v0 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = sub_24DD4B084();
    v7 = sub_24DD4B424();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v29 = v4;
      v30 = swift_slowAlloc();
      v10 = v30;
      *v9 = 136315138;
      v11 = *(v8 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID);
      v12 = *(v8 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8);
      v31 = 0;
      v32 = 0xE000000000000000;
      v33 = 0x726F70736E617274;
      v34 = 0xEA00000000005F74;
      *(v0 + 16) = v11;
      v13 = sub_24DD4B624();
      MEMORY[0x253037C70](v13);

      MEMORY[0x253037C70](v33, v34);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      *(v0 + 16) = v12;
      v14 = sub_24DD4B624();
      MEMORY[0x253037C70](v14);

      v15 = sub_24DD38DE0(v31, v32, &v30);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_24DD09000, v6, v7, "Created new body stream for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x253038870](v10, -1, -1);
      MEMORY[0x253038870](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v16 = v3;
    v17 = sub_24DD4B084();
    v18 = sub_24DD4B424();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 32);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      v31 = 0;
      *v20 = 136315138;
      v22 = *(v19 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID);
      v23 = *(v19 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8);
      v32 = 0xE000000000000000;
      v33 = 0x726F70736E617274;
      v34 = 0xEA00000000005F74;
      *(v0 + 16) = v22;
      v24 = sub_24DD4B624();
      MEMORY[0x253037C70](v24);

      MEMORY[0x253037C70](v33, v34);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      *(v0 + 16) = v23;
      v25 = sub_24DD4B624();
      MEMORY[0x253037C70](v25);

      v26 = sub_24DD38DE0(v31, v32, &v30);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_24DD09000, v17, v18, "Cancelling URLSessionTask for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x253038870](v21, -1, -1);
      MEMORY[0x253038870](v20, -1, -1);
    }

    [*(v0 + 24) cancel];
  }

  v27 = *(v0 + 8);

  return v27(v2);
}

uint64_t sub_24DD1A888(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24DD1A8A8, 0, 0);
}

uint64_t sub_24DD1A8A8()
{
  v24 = v0;
  v1 = *(v0 + 32);
  v2 = sub_24DD4B084();
  v3 = sub_24DD4B414();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    v20 = 0;
    *v5 = 136315138;
    v7 = *(v4 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID);
    v8 = *(v4 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8);
    v21 = 0xE000000000000000;
    v22 = 0x726F70736E617274;
    v23 = 0xEA00000000005F74;
    *(v0 + 16) = v7;
    v9 = sub_24DD4B624();
    MEMORY[0x253037C70](v9);

    MEMORY[0x253037C70](v22, v23);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    *(v0 + 16) = v8;
    v10 = sub_24DD4B624();
    MEMORY[0x253037C70](v10);

    v11 = sub_24DD38DE0(v20, v21, &v19);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24DD09000, v2, v3, "URLSessionTask received response head for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253038870](v6, -1, -1);
    MEMORY[0x253038870](v5, -1, -1);
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 32);
    v15 = (v14 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state);
    v16 = *(v0 + 24);
    os_unfair_lock_lock(v15);
    sub_24DD11DE8(v13, v14, &v22);
    os_unfair_lock_unlock(v15);

    v12 = v22;
  }

  v17 = *(v0 + 8);

  return v17(v12);
}

void sub_24DD1AB5C(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_24DD4AFE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD0BFC0(a2, a3);
  v10 = v3;
  v11 = sub_24DD4B084();
  v12 = sub_24DD4B414();

  if (os_log_type_enabled(v11, v12))
  {
    v44 = v8;
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51 = v43;
    *v13 = 134218242;
    v14 = a3 >> 62;
    v45 = v7;
    v46 = a1;
    if ((a3 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_13;
      }

      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      v18 = __OFSUB__(v16, v17);
      v15 = v16 - v17;
      if (!v18)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(a3);
LABEL_13:
      *(v13 + 4) = v15;
      sub_24DD0E53C(a2, a3);
      *(v13 + 12) = 2080;
      v19 = *&v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID];
      v20 = *&v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_streamID + 8];
      *v52 = 0;
      *&v52[8] = 0xE000000000000000;
      v49 = 0x726F70736E617274;
      v50 = 0xEA00000000005F74;
      v48 = v19;
      v21 = sub_24DD4B624();
      MEMORY[0x253037C70](v21);

      MEMORY[0x253037C70](v49, v50);

      MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
      v49 = v20;
      v22 = sub_24DD4B624();
      MEMORY[0x253037C70](v22);

      v23 = sub_24DD38DE0(*v52, *&v52[8], &v51);

      *(v13 + 14) = v23;
      _os_log_impl(&dword_24DD09000, v11, v12, "URLSessionTask received %{iec-bytes}ld for %s", v13, 0x16u);
      v24 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x253038870](v24, -1, -1);
      MEMORY[0x253038870](v13, -1, -1);

      a1 = v46;
      goto LABEL_14;
    }

    LODWORD(v15) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      return;
    }

    v15 = v15;
    goto LABEL_13;
  }

  sub_24DD0E53C(a2, a3);

LABEL_14:
  v25 = &v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  os_unfair_lock_lock(&v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state]);
  v26 = *(v25 + 44);
  if ((v26 & 0xC0) == 0x40)
  {
    v27 = *(v25 + 24);
    *v52 = *(v25 + 8);
    *&v52[16] = v27;
    v28 = *(v25 + 56);
    *v53 = *(v25 + 40);
    *&v53[16] = v28;
    v54 = *(v25 + 72);
    v55 = v26 & 0xFF3F;
    sub_24DD0BFC0(a2, a3);
    sub_24DD0D4B4(a2, a3);
    v29 = *&v52[24];
    v30 = *&v53[24];
    v31 = v54;
    v32 = *(&v54 + 1);
    v33 = v53[0] & 1;
    v34 = v55 & 0xFF01 | 0x40;
    *(v25 + 1) = *v52 & 0xFFFFFFFFFFFFFF8;
    *(v25 + 1) = *&v52[8];
    *(v25 + 4) = v29;
    *(v25 + 5) = v33;
    *(v25 + 3) = *&v53[8];
    *(v25 + 8) = v30;
    *(v25 + 9) = v31;
    *(v25 + 10) = v32;
    *(v25 + 44) = v34;
  }

  v35 = sub_24DD10AAC(v47);
  if (v35[2])
  {
    v36 = v35;

    sub_24DD147A4(v36, v52);

    if ((v52[8] & 1) == 0)
    {
      v37 = *v52;
      v38 = &v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask];
      os_unfair_lock_lock(&v10[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_hasSuspendedURLSessionTask]);
      if (v38[1]._os_unfair_lock_opaque)
      {
        os_unfair_lock_unlock(v38);
      }

      else
      {
        LOBYTE(v38[1]._os_unfair_lock_opaque) = 1;
        [a1 suspend];
        os_unfair_lock_unlock(v38);
        v39 = swift_allocObject();
        *(v39 + 16) = v10;
        *(v39 + 24) = a1;
        v40 = v10;
        v41 = a1;

        sub_24DD14D00(v37, sub_24DD1C1EC, v39);
      }
    }
  }

  else
  {
  }

  os_unfair_lock_unlock(v25);
}

void sub_24DD1B0E0(void *a1, id a2)
{
  v5 = a2;
  v6 = a2;
  v7 = v2;
  v8 = sub_24DD4B084();
  v9 = sub_24DD4B414();

  if (os_log_type_enabled(v8, v9))
  {
    v21 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v22 = v11;
    v12 = sub_24DD4B624();
    MEMORY[0x253037C70](v12);

    MEMORY[0x253037C70](0x726F70736E617274, 0xEA00000000005F74);

    MEMORY[0x253037C70](0x5F6D61657274732FLL, 0xE800000000000000);
    v13 = sub_24DD4B624();
    MEMORY[0x253037C70](v13);

    v14 = sub_24DD38DE0(0, 0xE000000000000000, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;

    *(v10 + 14) = a2 == 0;
    _os_log_impl(&dword_24DD09000, v8, v9, "URLSessionTask completed cleanly for stream %s: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253038870](v11, -1, -1);
    v15 = v10;
    a1 = v21;
    MEMORY[0x253038870](v15, -1, -1);
  }

  else
  {
  }

  v16 = [a1 _trailers];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24DD4B114();

    v19 = sub_24DD12F24(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = &v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state];
  os_unfair_lock_lock(&v7[OBJC_IVAR____TtC31GRPCURLSessionTransportInternal27StreamingURLSessionDelegate_state]);
  sub_24DD13204(&v20[2], v19, a2, v7);

  os_unfair_lock_unlock(v20);
}

uint64_t sub_24DD1B3F0(uint64_t a1)
{
  result = sub_24DD4B0A4();
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

uint64_t sub_24DD1B4DC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF520, &qword_24DD4CA78);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DD1B50C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF528, &qword_24DD4CA80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void *sub_24DD1B584(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 6;
  if (v11 == 1)
  {
  }

  else if (!v11)
  {
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for StreamingURLSessionDelegate.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  sub_24DD1B584(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for StreamingURLSessionDelegate.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 32) >> 1 << 7);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for StreamingURLSessionDelegate.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 82) = 1;
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
      v4 = -a2;
      *a1 = (v4 | (v4 << 57)) & 0xF000000000000007;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = (v4 >> 6) & 0x3FFFFFE;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 66) = 0u;
      return result;
    }

    *(a1 + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DD1B780(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (((v1 >> 6) & 2) != 0)
  {
    return (*a1 >> 3) + 2;
  }

  else
  {
    return v1 >> 6;
  }
}

uint64_t sub_24DD1B7B4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64);
    v3 = *(result + 80);
    v4 = *(result + 32) & 1;
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 32) = v4;
    *(result + 64) = v2;
    *(result + 80) = v3 & 0xFF01 | (a2 << 6);
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    *(result + 80) = 128;
  }

  return result;
}

void *sub_24DD1B82C()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_2860F4F78;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_24DD1B854()
{
  if (MEMORY[0x277D85020])
  {
    return &unk_2860F4EE8;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_24DD1B87C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24DD1B8D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24DD0D4B0;

  return sub_24DD12B50(v2, v3, v4, v5, v6);
}

uint64_t sub_24DD1B9A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24DD0D4B0;

  return sub_24DD183E0(v2, v3, v4);
}

uint64_t sub_24DD1BA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DD0D4B0;

  return sub_24DD184C8(a1, v4, v5, v6);
}

uint64_t sub_24DD1BB2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD1BB64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0D4B0;

  return sub_24DD188AC(a1, v4);
}

uint64_t sub_24DD1BC1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD0C914;

  return sub_24DD188AC(a1, v4);
}

uint64_t sub_24DD1BCD4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24DD1BD24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DD0C914;

  return sub_24DD11AD0(v2, v3, v5, v4);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_24DD1BEFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24DD1BF78()
{
  result = qword_27F1AF570;
  if (!qword_27F1AF570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF568, &qword_24DD4CB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF570);
  }

  return result;
}

uint64_t sub_24DD1BFDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_24DD1BFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
    sub_24DD1BFFC(a1, a2, a3);
  }
}

void sub_24DD1BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

id sub_24DD1C04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {

    return (a3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

unint64_t sub_24DD1C09C()
{
  result = qword_27F1AF590;
  if (!qword_27F1AF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF590);
  }

  return result;
}

uint64_t sub_24DD1C124(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DD1C134(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DD1C144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DD1C1AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD1C218(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24DD1C250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24DD1C2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24DD1C318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingURLSessionDelegate.State.ReceivedResponseHeadAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DD1C3AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DD1C414(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24DD1C474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DD1C4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24DD1C574(uint64_t a1)
{
  sub_24DD4AF64();
  if (v1 <= 0x3F)
  {
    sub_24DD1C5E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD1C5E8(uint64_t a1)
{
  if (!qword_27F1AF630)
  {
    sub_24DD4AF24();
    sub_24DD4AF64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1AF630);
    }
  }
}

uint64_t sub_24DD1C66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD1C6F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DD1C784(uint64_t a1)
{
  sub_24DD1C5E8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_24DD1C7DC(id *a1)
{
}

uint64_t sub_24DD1C820(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t sub_24DD1C8A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_24DD1C8E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}