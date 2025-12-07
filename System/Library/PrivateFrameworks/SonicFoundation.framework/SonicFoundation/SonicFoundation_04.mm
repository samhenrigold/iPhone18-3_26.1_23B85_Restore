uint64_t sub_26B194570(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v38 = a2;
  v53 = a6;
  v54 = a7;
  v55 = a8;
  v56 = a9;
  v36 = a7;
  v12 = BYTE1(a7);
  v41 = BYTE2(a7);
  v37 = sub_26B212610();
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a11;
  v39 = *(a11 + 8);
  v17 = sub_26B213570();
  sub_26B194D18(a8, a9);
  v42 = a6;
  v18 = (v17 & 1) != 0 && a6 != 10;
  sub_26B193F8C(a8, a9);
  if (v18)
  {
    sub_26B212B70();
    result = sub_26B2139E0();
    __break(1u);
  }

  else
  {
    v45 = v42;
    v46 = v36 & 1;
    v47 = v12 & 1;
    v48 = v41 & 1;
    v49 = a8;
    v50 = a9;
    v51 = sub_26B212660();
    v52 = v19;
    sub_26B212B70();
    sub_26B212B90();

    sub_26B194D28(v33, v34, v35);
    if (v20)
    {
      sub_26B212B70();
      sub_26B212B90();

      sub_26B212B90();
      sub_26B212B70();
      sub_26B212B90();
    }

    if (v36)
    {
      v23 = sub_26B213570();
      v21 = v38;
      if (v23)
      {
        sub_26B212B70();
        sub_26B212B90();
      }

      else
      {
        v43 = sub_26B212B70();
        v44 = v24;
        sub_26B2128F0();
        sub_26B194ECC(&v51);
        sub_26B212B90();

        v25 = v43;
        v26 = v44;
        sub_26B2128F0();
        sub_26B194ECC(&v43);
        v51 = v25;
        v52 = v26;
      }

      v22 = v37;
    }

    else
    {
      v21 = v38;
      v22 = v37;
    }

    v27 = sub_26B212630();
    (*(v14 + 16))(v16, v21 + *(v27 + 20), v22);
    if ((*(v14 + 88))(v16, v22) == *MEMORY[0x277D85B08])
    {
      (*(v14 + 8))(v16, v22);
      sub_26B212B70();
      sub_26B212B90();
    }

    else
    {
      (*(v14 + 8))(v16, v22);
    }

    v28 = *v21;
    sub_26B194D18(*v21, v21[1]);
    if (v28)
    {

      sub_26B212B70();
      sub_26B212B90();
    }

    sub_26B194D18(a8, a9);
    if (a8)
    {

      sub_26B212B70();
      sub_26B212B90();
    }

    sub_26B212650();
    if (!v29)
    {
      sub_26B212B70();
      sub_26B2139E0();
      __break(1u);
    }

    sub_26B212B90();
    if (v42 == 10)
    {
      sub_26B213570();
    }

    else if (v42 != 8 && v42 != 16)
    {
      sub_26B212B70();
      sub_26B2139E0();
      __break(1u);
    }

    sub_26B212B70();
    sub_26B212B90();

    v30 = v51;
    sub_26B2128F0();
    sub_26B194ECC(&v51);

    return v30;
  }

  return result;
}

uint64_t sub_26B194D18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B194D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26B212560();
  v6 = sub_26B212B70();
  v8 = MEMORY[0x26D66FFB0](a2, a3, v6, v7);

  v9 = v8 ^ 1;
  if ((v5 & 1) == 0)
  {
    v9 = 0;
  }

  sub_26B2128F0();
  v16 = a2;
  v17 = a3;
  if (v9)
  {
    sub_26B212B70();
    sub_26B212B90();
  }

  sub_26B212570();
  if (v10)
  {
    sub_26B212B90();
  }

  sub_26B2128F0();
  v11 = sub_26B212B70();
  v13 = MEMORY[0x26D66FFB0](v16, v17, v11, v12);

  if (v13)
  {
    sub_26B194ECC(&v16);
    return 0;
  }

  else
  {
    v14 = v16;
    sub_26B2128F0();
    sub_26B194ECC(&v16);
  }

  return v14;
}

id sub_26B194F54(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_26B195068(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, &v1[*((v3 & v2) + 0x60)], v4);
  v8 = sub_26B213B90();
  (*(v5 + 8))(v7, v4);
  return v8;
}

id sub_26B1951BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B212A50();

  return v5;
}

uint64_t sub_26B19522C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  (*(v5 + 16))(&v10 - v6, &v1[*((v3 & v2) + 0x60)], v4);
  v8 = (*(*((v3 & v2) + 0x58) + 16))(v4);
  (*(v5 + 8))(v7, v4);
  return v8;
}

id sub_26B1953C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OSLogInterpolation.appendInterpolation<A>(redacting:align:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B2125A0();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v11 + 32))(v14 + v13, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_26B212590();

  v15 = swift_allocObject();
  v15[2] = _s25_RedactedDescriptionThunkCMa(0, a3, a4, v16);
  v15[3] = swift_getWitnessTable();
  v15[4] = sub_26B195760;
  v15[5] = v14;
  sub_26B2125C0();

  sub_26B1958AC(v10);
}

id sub_26B195680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s25_RedactedDescriptionThunkCMa(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  result = sub_26B194F20(v8);
  *a3 = result;
  return result;
}

uint64_t sub_26B19579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = sub_26B213B90();
  (*(v5 + 8))(v8, a3);
  return v9;
}

uint64_t sub_26B1958AC(uint64_t a1)
{
  v2 = sub_26B2125A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B19591C(uint64_t a1)
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

uint64_t Logger.Subsystem.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B14FCC8();
  v4 = sub_26B213480();
  Logger.Subsystem.subscript.getter(v4, v5, a3);
}

{
  return (*(*(a3 + 24) + 16))(*v3, v3[1], a1, a2);
}

uint64_t static OS_os_log.create(subsystem:category:)()
{
  OUTLINED_FUNCTION_3_15();
  sub_26B195CA0();
  sub_26B2128F0();
  sub_26B2128F0();
  OUTLINED_FUNCTION_4_16();
  return sub_26B2133B0();
}

unint64_t sub_26B195CA0()
{
  result = qword_2803E7818;
  if (!qword_2803E7818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E7818);
  }

  return result;
}

uint64_t sub_26B195CE4@<X0>(uint64_t *a1@<X8>)
{
  result = static OS_os_log.create(subsystem:category:)();
  *a1 = result;
  return result;
}

uint64_t static Logger.create(subsystem:category:)()
{
  OUTLINED_FUNCTION_3_15();
  sub_26B2128F0();
  sub_26B2128F0();
  v0 = OUTLINED_FUNCTION_4_16();

  return MEMORY[0x282200DE8](v0);
}

uint64_t sub_26B195D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B195DE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B212A80();
  v4 = v3;
  v5 = sub_26B212A80();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_26B195EB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 117;
    }

    else
    {
      v3 = 27504;
    }

    if (v2 == 1)
    {
      v4 = 0xE100000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else
  {
    v4 = 0xE100000000000000;
    v3 = 99;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 117;
    }

    else
    {
      v5 = 27504;
    }

    if (a2 == 1)
    {
      v6 = 0xE100000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE100000000000000;
    v5 = 99;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_26B195F68(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x4554454C4544;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x4554454C4544;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x455441434E555254;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x54534953524550;
      break;
    case 3:
      v5 = 0x59524F4D454DLL;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 4997463;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 4605519;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x455441434E555254;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x54534953524550;
      break;
    case 3:
      v2 = 0x59524F4D454DLL;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 4997463;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 4605519;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_26B1960D4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x564953554C435845;
  }

  else
  {
    v3 = 0x4C414D524F4ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000045;
  }

  if (a2)
  {
    v5 = 0x564953554C435845;
  }

  else
  {
    v5 = 0x4C414D524F4ELL;
  }

  if (a2)
  {
    v6 = 0xE900000000000045;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_11(v3, a2, v5);
  }

  return v8 & 1;
}

char *sub_26B196168(uint64_t a1, uint64_t a2, char *__dst, size_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_26B2136B0();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    __src[0] = a1;
    __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_26B182818(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_26B2136B0();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_26B182818(v4, __dst, a4);
}

uint64_t OSState.Snapshot.Decoder.library.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t OSState.Snapshot.Decoder.type.getter()
{
  v1 = *(v0 + 16);
  sub_26B2128F0();
  return v1;
}

void *sub_26B196254(_DWORD *a1)
{
  __dst[16] = *MEMORY[0x277D85DE8];
  result = *v1;
  if (!*(v1 + 32))
  {
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    *a1 = 3;
    v4 = a1 + 2;
    *&v11 = OUTLINED_FUNCTION_13_10();
    __src[0] = v11;
    __src[1] = v11;
    sub_26B196168(v12, v13, __src, 0x40uLL);
    sub_26B196168(v10, v9, &__src[4], 0x40uLL);
    memcpy(__dst, __src, 0x80uLL);
    return memcpy(v4, __dst, 0x80uLL);
  }

  if (*(v1 + 32) == 1)
  {
    *a1 = 3;
    v4 = a1 + 2;
    __dst[0] = result;
    v5 = sub_26B19AD58();
    v7 = v6;
    *&v8 = OUTLINED_FUNCTION_13_10();
    __src[0] = v8;
    __src[1] = v8;
    sub_26B196168(0x63696E6F73, 0xE500000000000000, __src, 0x40uLL);
    sub_26B196168(v5, v7, &__src[4], 0x40uLL);
    memcpy(__dst, __src, 0x80uLL);

    return memcpy(v4, __dst, 0x80uLL);
  }

  *a1 = 1;
  return result;
}

double OSState.Snapshot.init<A>(title:propertyList:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_26B211DE0();
  swift_allocObject();
  sub_26B211DD0();
  sub_26B211DB0();
  OUTLINED_FUNCTION_12_1();
  v7 = sub_26B211DC0();
  if (v3)
  {
    OUTLINED_FUNCTION_16();
    v9 = OUTLINED_FUNCTION_12_1();
    v10(v9);
  }

  else
  {
    v12 = v7;
    v13 = v8;
    OUTLINED_FUNCTION_16();
    v14 = OUTLINED_FUNCTION_12_1();
    v15(v14);

    *a3 = a1;
    a3[1] = a2;
    a3[2] = v12;
    a3[3] = v13;
    return OUTLINED_FUNCTION_14_8();
  }

  return result;
}

double OSState.Snapshot.init(title:message:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  sub_26B211DE0();
  swift_allocObject();
  sub_26B211DD0();
  sub_26B211DB0();
  v8 = sub_26B211DC0();
  v10 = v9;

  *a5 = a1;
  a5[1] = a2;
  a5[2] = v8;
  a5[3] = v10;
  return OUTLINED_FUNCTION_14_8();
}

__n128 OSState.Snapshot.init(title:data:as:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  result = *a5;
  v7 = a5[1].n128_u64[0];
  v8 = a5[1].n128_u64[1];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  a6[2] = result;
  a6[3].n128_u64[0] = v7;
  a6[3].n128_u64[1] = v8;
  a6[4].n128_u8[0] = 0;
  return result;
}

unint64_t sub_26B1965D8()
{
  v1 = v0[1];
  v17 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_10_9();
  sub_26B19931C(v4, v5, v6, v7, v8);
  v9 = MEMORY[0x26D66F450](v2, v3);
  result = v9 + 200;
  if (__OFADD__(v9, 200))
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = swift_slowAlloc();
  sub_26B196168(v17, v1, (v11 + 136), 0x40uLL);
  sub_26B196254(v11);
  v12 = OUTLINED_FUNCTION_10_9();
  sub_26B19937C(v12, v13, v14, v15, v16);
  result = sub_26B212040();
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v9))
  {
    *(v11 + 4) = v9;
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_26B1966D4()
{
  qword_2803E7820 = 0x3E656E6F6E3CLL;
  *algn_2803E7828 = 0xE600000000000000;
  byte_2803E7830 = 0;
  dword_2803E7834 = 1;
}

uint64_t OSState.Hint.API.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t OSState.Hint.Reason.description.getter()
{
  v2 = *v0;
  result = 0x6C6172656E6567;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      return 0x696B726F7774656ELL;
    case 4:
      return 0x72616C756C6C6563;
    case 8:
      return 0x69746E6568747561;
    default:
      v4 = MEMORY[0x277D84F90];
      if (v2)
      {
        v15 = MEMORY[0x277D84F90];
        v1 = 1;
        sub_26B15B0A0(0, 1, 1);
        v4 = v15;
        v5 = *(v15 + 16);
        v6 = v5 + 1;
        if (v5 >= *(v15 + 24) >> 1)
        {
          OUTLINED_FUNCTION_1_20(v6);
          OUTLINED_FUNCTION_11_9();
        }

        *(v15 + 16) = v6;
        *(v15 + 4 * v5 + 32) = 1;
        if ((v2 & 2) == 0)
        {
LABEL_7:
          if ((v2 & 4) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      else if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_16();
      }

      OUTLINED_FUNCTION_8_14();
      if (v8)
      {
        OUTLINED_FUNCTION_1_20(v7);
        OUTLINED_FUNCTION_11_9();
      }

      *(v4 + 16) = v7;
      *(v4 + 4 * v1 + 32) = 2;
      if ((v2 & 4) == 0)
      {
LABEL_8:
        if ((v2 & 8) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_16();
      }

      OUTLINED_FUNCTION_8_14();
      if (v8)
      {
        OUTLINED_FUNCTION_1_20(v9);
        OUTLINED_FUNCTION_11_9();
      }

      *(v4 + 16) = v9;
      *(v4 + 4 * v1 + 32) = 4;
      if ((v2 & 8) != 0)
      {
LABEL_23:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_16();
        }

        OUTLINED_FUNCTION_8_14();
        if (v8)
        {
          OUTLINED_FUNCTION_1_20(v10);
          OUTLINED_FUNCTION_11_9();
        }

        *(v4 + 16) = v10;
        *(v4 + 4 * v1 + 32) = 8;
      }

LABEL_28:
      v11 = MEMORY[0x26D670290](v4, &type metadata for OSState.Hint.Reason);

      v12 = sub_26B213B90();
      v14 = v13;
      sub_26B2128F0();
      MEMORY[0x26D670040](v12, v14);

      return v11;
  }
}

uint64_t sub_26B196B00@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = OSState.Hint.Reason.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26B196B40@<X0>(_DWORD *a1@<X8>)
{
  result = OSState.Hint.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t OSState.Hint.requestor.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t OSState.Hint.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2138F0();
  MEMORY[0x26D670040](32, 0xE100000000000000);
  v3 = OSState.Hint.Reason.description.getter();
  MEMORY[0x26D670040](v3);

  MEMORY[0x26D670040](0x209480E220, 0xA500000000000000);
  MEMORY[0x26D670040](v1, v2);
  return 0;
}

void OSState.Registration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void OSState.Registration.Handler.init(capture:options:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = sub_26B212700();
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  swift_unknownObjectWeakInit();
  v46 = MEMORY[0x277D84F90];
  sub_26B198724();
  (*(v10 + 104))(v14, *MEMORY[0x277D851C8], v8);
  v15 = sub_26B213340();
  (*(v10 + 8))(v14, v8);
  v36 = v15;
  v47 = v15;
  swift_unknownObjectWeakAssign();
  v16 = *(a2 + 16);
  if (!v16)
  {

    v18 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v17 = a2 + 32;
  v18 = MEMORY[0x277D84F90];
  do
  {
    sub_26B1987D0(v17, &v42);
    sub_26B150514(&v42, v41);
    sub_26B16C9BC(0, &qword_2803E7848, &protocol descriptor for OSState.SnapshotOption);
    sub_26B16C9BC(0, &qword_2803E7030, &_s15_SnapshotOptionPMp);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
LABEL_11:
      sub_26B198938(&v38, sub_26B198768);
      goto LABEL_12;
    }

    if (!*(&v39 + 1))
    {
      goto LABEL_11;
    }

    sub_26B150514(&v38, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B16AEE4(0, *(v18 + 16) + 1, 1, v18);
      v18 = v21;
    }

    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_26B16AEE4(v19 > 1, v20 + 1, 1, v18);
      v18 = v22;
    }

    *(v18 + 16) = v20 + 1;
    sub_26B150514(v41, v18 + 40 * v20 + 32);
LABEL_12:
    v17 += 40;
    --v16;
  }

  while (v16);

LABEL_15:
  v23 = 0;
  v24 = *(v18 + 16);
  v25 = v18 + 32;
  v26 = v18 + 32;
  while (v24 != v23)
  {
    if (v23 >= *(v18 + 16))
    {
      __break(1u);
      return;
    }

    ++v23;
    v27 = v26 + 40;
    sub_26B1987D0(v26, &v42);
    v28 = v43;
    v29 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v30 = (*(v29 + 8))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v26 = v27;
    if ((v30 & 1) == 0)
    {
      swift_unknownObjectRelease();

      MEMORY[0x26D6724E0](v45);

      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      return;
    }
  }

  if (v24)
  {
    v31 = a4;
    do
    {
      sub_26B1987D0(v25, &v42);
      v32 = v43;
      v33 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, v43);
      (*(v33 + 16))(v45, a3, a4, v32, v33);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      v25 += 40;
      --v24;
    }

    while (v24);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v31 = a4;
  }

  type metadata accessor for OSState.Registration.Handler(0, a3, v31, v34);
  OUTLINED_FUNCTION_16();
  (*(v35 + 32))(a5, v45);
}

unint64_t OSState.Registration.Handler.callAsFunction(os_hint:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B212740();
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = v10;
    v36 = v4;
    v16 = *(a1 + 16);
    v39 = *(a1 + 20);
    v38 = Strong;
    v33 = v14;
    v34 = v6;
    if (*(a1 + 8))
    {
      v17 = sub_26B212C20();
      v19 = v18;
    }

    else
    {
      v19 = 0xE90000000000003ELL;
      v17 = 0x6E776F6E6B6E553CLL;
    }

    if (v16 == 3)
    {
      v20 = 2;
    }

    else
    {
      v20 = v16 == 2;
    }

    v21 = *(v2 + 8);
    v22 = v21 + 40;
    v23 = -*(v21 + 16);
    v24 = -1;
    while (1)
    {
      if (v23 + v24 == -1)
      {
        v28 = sub_26B213020();
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v28);
        v29 = swift_allocObject();
        *(v29 + 16) = 0;
        *(v29 + 24) = 0;
        *(v29 + 32) = *(a2 + 16);
        *(v29 + 48) = v17;
        *(v29 + 56) = v19;
        *(v29 + 64) = v20;
        *(v29 + 68) = v39;
        *(v29 + 72) = v38;
        swift_unknownObjectRetain();
        v30 = sub_26B197E24(0, 0, v33, 0, 0, &unk_26B218268, v29);
        sub_26B198938(v33, sub_26B185E18);
        sub_26B212730();
        sub_26B184660(v30, __src);
        (*(v34 + 8))(v35, v36);

        v27 = sub_26B1965D8();
        swift_unknownObjectRelease();
        memcpy(v41, __src, 0x41uLL);
        sub_26B198994(v41);
        return v27;
      }

      if (++v24 >= *(v21 + 16))
      {
        break;
      }

      v25 = v22 + 16;
      v26 = *(v22 - 8);
      v41[0] = v17;
      v41[1] = v19;
      LOBYTE(v41[2]) = v20;
      HIDWORD(v41[2]) = v39;

      v26(v40, v41);

      v22 = v25;
      if ((v40[0] & 1) == 0)
      {
        swift_unknownObjectRelease();

        return 0;
      }
    }

    __break(1u);

    result = OUTLINED_FUNCTION_15_5(v32, "SonicFoundation/Logging+State.swift");
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_26B19765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  return MEMORY[0x2822009F8](sub_26B197690, 0, 0);
}

uint64_t sub_26B197690()
{
  if (qword_2803E6AA0 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_2803E6AA0);
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = v3;
  *(v0 + 32) = v1;
  *(v0 + 36) = HIDWORD(v1);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = *(v0 + 80);
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_26B1977E4;
  v6 = *(v0 + 40);

  return MEMORY[0x282200908](v6, v0 + 16, &unk_26B218730, v4, 0, 0, 0xD000000000000023, 0x800000026B21FB00);
}

uint64_t sub_26B1977E4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *(v4 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B19792C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_26B197944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26B197A74;

  return v10(a1, a3, a4);
}

uint64_t sub_26B197A74()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26B197B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_12_1();
    sub_26B212F70();
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v13);
  v15 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
  {
    sub_26B198938(v13, sub_26B185E18);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_16();
    (*(v16 + 8))(v13, v15);
  }

  if (a2)
  {
    sub_26B212B10();
    swift_unknownObjectRetain();

    v17 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_11:
      swift_task_immediate();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    v17 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_11;
    }
  }

  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_26B197E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a5;
  v24[1] = a6;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_26B212F70();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v13);
  v18 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_26B198938(v13, sub_26B185E18);
  }

  else
  {
    sub_26B213010();
    (*(*(v18 - 8) + 8))(v13, v18);
  }

  if (a2)
  {
    v19 = sub_26B212B10() + 32;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v26[0] = 0;
      v26[1] = 0;
      v20 = v26;
      v26[2] = v14;
      v26[3] = v16;
    }

    else
    {
      v20 = 0;
    }

    if (a4 != 1)
    {
      v25[0] = 6;
      v25[1] = v20;
      v25[2] = a4;
      v25[3] = v24[0];
      v20 = v25;
    }

    v24[2] = 7;
    v24[3] = v20;
    v24[4] = v19;
    v22 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v27[0] = 0;
      v27[1] = 0;
      v21 = v27;
      v27[2] = v14;
      v27[3] = v16;
    }

    else
    {
      v21 = 0;
    }

    if (a4 != 1)
    {
      v26[4] = 6;
      v26[5] = v21;
      v26[6] = a4;
      v26[7] = v24[0];
    }

    v22 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();
  return v22;
}

uint64_t OSState.Registration.register<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  swift_unknownObjectRetain();
  sub_26B2128F0();
  OSState.Registration.Handler.init(capture:options:)(a2, a3, a4, v14);
  if (v14[1])
  {
    v10 = type metadata accessor for OSState.Registration.Handler(0, a3, a4, v9);
    (*(*(v10 - 8) + 32))(v8 + 16, v14);

    MEMORY[0x28223BE20](v11);
    os_unfair_lock_lock(v4);
    sub_26B1989C4(&v4[2]);
    sub_26B1992A8(0, &qword_2803E7858, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    j__os_unfair_lock_unlock(v4);
  }

  else
  {
    type metadata accessor for OSState.Registration.Handler(255, a3, a4, v9);
    v13 = sub_26B2133E0();
    (*(*(v13 - 8) + 8))(v14, v13);
    return swift_deallocUninitializedObject();
  }
}

void sub_26B198394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v15[14] = v4;
    v15[15] = v5;
    v10 = *(a2 + 32);
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a2;
    v12 = v10;
    v15[4] = sub_26B1992F8;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_26B19850C;
    v15[3] = &block_descriptor_0;
    v13 = _Block_copy(v15);

    v14 = os_state_add_handler();
    _Block_release(v13);

    *a1 = v14;
    *(a1 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B19850C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

void OSState.Registration.deinit()
{
  os_unfair_lock_lock(v0);
  if ((*(v0 + 16) & 1) == 0)
  {
    os_state_remove_handler();
  }

  os_unfair_lock_unlock(v0);
}

uint64_t sub_26B1985BC()
{
  if (qword_2803E6A98 != -1)
  {
    swift_once();
  }

  sub_26B1992A8(0, qword_2803E7910, &type metadata for OSState.Hint, MEMORY[0x277D85A78]);
  swift_allocObject();
  sub_26B2128F0();
  result = sub_26B2141B0();
  qword_2803E7838 = result;
  return result;
}

uint64_t static OSState.$hint.getter()
{
  if (qword_2803E6AA0 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_2803E6AA0);
  }
}

void *static OSState.hint.getter()
{
  if (qword_2803E6AA0 != -1)
  {
    OUTLINED_FUNCTION_0_26(&qword_2803E6AA0);
  }

  return sub_26B2141C0();
}

unint64_t sub_26B198724()
{
  result = qword_2803E7840;
  if (!qword_2803E7840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E7840);
  }

  return result;
}

void sub_26B198768(uint64_t a1)
{
  if (!qword_2803E7850)
  {
    sub_26B16C9BC(255, &qword_2803E7030, &_s15_SnapshotOptionPMp);
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E7850);
    }
  }
}

uint64_t sub_26B1987D0(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_16();
  (*v3)(a2);
  return a2;
}

uint64_t sub_26B198848(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64) | (*(v1 + 68) << 32);
  v9 = *(v1 + 72);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_10(v10);
  *v11 = v12;
  v11[1] = sub_26B1994BC;

  return sub_26B19765C(a1, v4, v5, v6, v7, v8, v9, v3);
}

uint64_t sub_26B198938(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26B1989EC()
{
  result = qword_2803E7860;
  if (!qword_2803E7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7860);
  }

  return result;
}

unint64_t sub_26B198A44()
{
  result = qword_2803E7868;
  if (!qword_2803E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7868);
  }

  return result;
}

unint64_t sub_26B198A9C()
{
  result = qword_2803E7870;
  if (!qword_2803E7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7870);
  }

  return result;
}

unint64_t sub_26B198AF4()
{
  result = qword_2803E7878;
  if (!qword_2803E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7878);
  }

  return result;
}

unint64_t sub_26B198B4C()
{
  result = qword_2803E7880;
  if (!qword_2803E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OSState(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation7OSStateO8SnapshotV8DataTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_26B198C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_26B198CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B198D30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B198D70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B198DD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_26B198E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B198E5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OSState.Hint.API(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26B198FBC(uint64_t a1)
{
  if (!qword_2803E7888[0])
  {
    sub_26B1992A8(255, &qword_2803E7858, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    v1 = sub_26B212130();
    if (!v2)
    {
      atomic_store(v1, qword_2803E7888);
    }
  }
}

void sub_26B199038(uint64_t a1)
{
  MEMORY[0x26D6724E0]();

  v2 = *(a1 + 16);
}

uint64_t sub_26B199078(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  v4 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v4;
  return result;
}

uint64_t sub_26B1990A4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_26B1990F0(uint64_t a1, int a2)
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

uint64_t sub_26B199130(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of OSState.Snapshotting.snapshot.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v7[1] = sub_26B1994BC;

  return v10(a1, a2, a3);
}

void sub_26B1992A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B19931C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
    sub_26B2128F0();

    return sub_26B2128F0();
  }

  return v6;
}

uint64_t sub_26B19937C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
  }

  return v6;
}

uint64_t sub_26B1993F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v7[1] = sub_26B197A74;

  return sub_26B197944(a1, v5, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26B213E30();
}

double OUTLINED_FUNCTION_14_8()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t static OSState.Codable.stateDataType.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t OSState.Codable<>.state.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26B199600, 0, 0);
}

uint64_t sub_26B199600()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);
  swift_unknownObjectRetain();

  return v2();
}

uint64_t OSState.Snapshotting<>.snapshot.getter()
{
  OUTLINED_FUNCTION_25();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[12] = AssociatedTypeWitness;
  v1[13] = *(AssociatedTypeWitness - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B199750, 0, 0);
}

uint64_t sub_26B199750()
{
  v8 = v0[10];
  v0[16] = (*(v8 + 32))();
  v0[17] = v1;
  v7 = (*(v8 + 48) + **(v8 + 48));
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_26B199884;
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[9];

  return v7(v3, v5, v4);
}

uint64_t sub_26B199884()
{
  OUTLINED_FUNCTION_25();
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_26B199CAC;
  }

  else
  {
    v2 = sub_26B19999C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26B19999C()
{
  v36 = v0;
  (*(v0[10] + 40))(v32);
  v2 = v32[0];
  v1 = v32[1];
  v4 = v32[2];
  v3 = v32[3];
  if (v33)
  {
    if (v33 == 1)
    {
      v5 = v0[19];
      v6 = v0[15];
      v7 = v0[12];
      v34 = v32[0];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v9 = sub_26B19A96C(v6, v7, AssociatedConformanceWitness);
      v11 = v0[17];
      if (v5)
      {
        (*(v0[13] + 8))(v0[15], v0[12]);

        OUTLINED_FUNCTION_0_27();
      }

      else
      {
        v21 = v10;
        v31 = v0[16];
        v22 = v0[13];
        v27 = v0[12];
        v28 = v0[15];
        v23 = v0[8];
        v34 = v2;
        v29 = v9;
        v24 = sub_26B19AD58();
        v30 = v25;
        (*(v22 + 8))(v28, v27);
        OUTLINED_FUNCTION_0_27();
        *v23 = v31;
        *(v23 + 8) = v11;
        *(v23 + 16) = v29;
        *(v23 + 24) = v21;
        *(v23 + 32) = xmmword_26B218810;
        *(v23 + 48) = v24;
        *(v23 + 56) = v30;
        *(v23 + 64) = 0;
      }
    }

    else
    {
      v14 = v0[16];
      v15 = v0[17];
      v16 = v0[15];
      v18 = v0[12];
      v17 = v0[13];
      v19 = v0[8];
      (*(v17 + 16))(v0[14], v16, v18);
      swift_getAssociatedConformanceWitness();
      v20 = OSState.Snapshot.init<A>(title:propertyList:)(v14, v15, v19);
      (*(v17 + 8))(v16, v18, v20);
    }

    OUTLINED_FUNCTION_10_0();

    return v26();
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_26B2136C0();
    v12 = v35;
    v0[6] = v34;
    v0[7] = v12;
    MEMORY[0x26D670040](0xD000000000000015, 0x800000026B21FBF0);
    v0[2] = v2;
    v0[3] = v1;
    v0[4] = v4;
    v0[5] = v3;
    sub_26B2138F0();
    return sub_26B2139E0();
  }
}

uint64_t sub_26B199CAC()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t dispatch thunk of OSState.Codable.state.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B199E64;

  return v9(a1, a2, a3);
}

uint64_t sub_26B199E64()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B199F50(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  OUTLINED_FUNCTION_40();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  sub_26B2128F0();
  sub_26B19A904(v4, v5);
  sub_26B16A500();
  v7 = *(*(a1 + 8) + 16);
  result = sub_26B16A6BC(v7);
  v9 = *(a1 + 8);
  *(v9 + 16) = v7 + 1;
  v10 = v9 + 16 * v7;
  *(v10 + 32) = sub_26B19A8F8;
  *(v10 + 40) = v6;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_26B199FFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  if (!sub_26B174EB4(*(a1 + 16), a2))
  {
    goto LABEL_4;
  }

  if (!a4)
  {
    result = v10 == 2;
    goto LABEL_5;
  }

  if (a4 != 1)
  {
    if (v8 == a3 && v9 == a4)
    {
      result = 1;
    }

    else
    {
      result = sub_26B213E30();
    }
  }

  else
  {
LABEL_4:
    result = 0;
  }

LABEL_5:
  *a5 = result & 1;
  return result;
}

uint64_t static OSState.SnapshotOption<>.when(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = xmmword_26B218860;
  return sub_26B2128F0();
}

uint64_t static OSState.SnapshotOption<>.when(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = &unk_287BBABD8;
  a2[1] = v2;
  a2[2] = v3;
  return sub_26B2128F0();
}

uint64_t static OSState.SnapshotOption.when<A>(feature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_26B19A1BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  OUTLINED_FUNCTION_40();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = v3;
  sub_26B2128F0();
  sub_26B16A500();
  v8 = *(*(a1 + 8) + 16);
  result = sub_26B16A6BC(v8);
  v10 = *(a1 + 8);
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 16 * v8;
  *(v11 + 32) = sub_26B19A8EC;
  *(v11 + 40) = v6;
  *(a1 + 8) = v10;
  return result;
}

void sub_26B19A260(void *a1@<X1>, _BYTE *a4@<X8>)
{
  v6 = sub_26B212A50();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *a4 = a1;
}

id static OSState.SnapshotOption<>.when(defaults:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  sub_26B2128F0();

  return a1;
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation7OSStateO28_HintConditionSnapshotOptionV7RequestOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B19A36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_26B19A3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B19A410(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B19A428(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26B19A454(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_26B19A590(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B19A7AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B19A7EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_26B19A904(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_26B2128F0();
  }

  return result;
}

BOOL sub_26B19A930(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

compression_stream *sub_26B19A96C(uint64_t a1, compression_stream *a2, uint64_t a3)
{
  if (*v3)
  {
    v7 = *(*v3 + 16);
    v8 = OUTLINED_FUNCTION_12_1();
    v10 = sub_26B19A96C(v8, v9, a3);
    if (!v4)
    {
      v12 = v10;
      v13 = v11;
      a2 = swift_slowAlloc();
      if (compression_stream_init(a2, COMPRESSION_STREAM_ENCODE, dword_26B2162E0[v7]))
      {
        sub_26B15D564();
        swift_allocError();
        swift_willThrow();
        compression_stream_destroy(a2);
        MEMORY[0x26D6723F0](a2, -1, -1);
        sub_26B14FF4C(0, 0xC000000000000000);
      }

      else
      {
        a2 = sub_26B15D26C(v12, v13, a2);
      }

      sub_26B14FF4C(v12, v13);
    }
  }

  else
  {
    sub_26B211B90();
    swift_allocObject();
    sub_26B211B80();
    OUTLINED_FUNCTION_12_1();
    a2 = sub_26B211B70();
  }

  return a2;
}

uint64_t OSState.Snapshot.Decoder.SonicDecoder.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26B1830B0(a1, a2);
  if (v7)
  {
    sub_26B19AC28(v6, v7, &v18);
    v8 = v18;
    if (v18 == 4)
    {
      if (a1 == 1852797802 && a2 == 0xE400000000000000)
      {

LABEL_13:
        result = 0;
        goto LABEL_15;
      }

      v10 = sub_26B213E30();

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = sub_26B16CD98(1uLL, a1, a2);
      v12 = MEMORY[0x26D66FF50](v11);
      v14 = v13;

      OSState.Snapshot.Decoder.SonicDecoder.init(rawValue:)(v12, v14, &v17);
      v15 = v17;
      if (v17 != 1)
      {
        result = swift_allocObject();
        *(result + 16) = v8;
        *(result + 24) = v15;
        goto LABEL_15;
      }
    }
  }

  else
  {
  }

  result = 1;
LABEL_15:
  *a3 = result;
  return result;
}

uint64_t sub_26B19AC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 64 && a2 == 0xE100000000000000;
  if (v5 || (sub_26B213E30() & 1) != 0)
  {

    v8 = 0;
  }

  else
  {
    v9 = a1 == 36 && a2 == 0xE100000000000000;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = a1 == 37 && a2 == 0xE100000000000000;
      if (v10 || (sub_26B213E30() & 1) != 0)
      {

        v8 = 2;
      }

      else if (a1 == 42 && a2 == 0xE100000000000000)
      {

        v8 = 3;
      }

      else
      {
        v12 = sub_26B213E30();

        if (v12)
        {
          v8 = 3;
        }

        else
        {
          v8 = 4;
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26B19AD58()
{
  if (!*v0)
  {
    return 1852797802;
  }

  v1 = *(*v0 + 16);
  sub_26B19B270();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26B2162F0;
  *(v2 + 32) = qword_26B218AA8[v1];
  *(v2 + 40) = 0xE100000000000000;
  v3 = sub_26B19AD58();
  v5 = sub_26B182668(v2, v3, v4);

  return v5;
}

char *OSState.Snapshot.Decoder.SonicDecoder.dump(jsonData:)()
{
  v20[4] = *MEMORY[0x277D85DE8];
  v0 = sub_26B212AD0();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = objc_opt_self();
  OUTLINED_FUNCTION_12_1();
  v4 = sub_26B211FC0();
  v19 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:12 error:&v19];

  v6 = v19;
  if (v5)
  {
    sub_26B213590();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v7 = sub_26B213E20();
    v19 = 0;
    v8 = [v3 dataWithJSONObject:v7 options:15 error:&v19];
    swift_unknownObjectRelease();
    v9 = v19;
    if (v8)
    {
      sub_26B211FF0();

      sub_26B212AC0();
      OUTLINED_FUNCTION_12_1();
      v10 = sub_26B212AA0();
      if (v11)
      {
        v2 = v10;
        v12 = OUTLINED_FUNCTION_12_1();
        sub_26B14FF4C(v12, v13);
      }

      else
      {
        v16 = OUTLINED_FUNCTION_12_1();
        sub_26B14FF4C(v16, v17);
        v2 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      v15 = v9;
      sub_26B211E00();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  else
  {
    v14 = v6;
    sub_26B211E00();

    swift_willThrow();
  }

  return v2;
}

char *OSState.Snapshot.Decoder.SonicDecoder.dump(data:)(uint64_t a1, unint64_t a2)
{
  if (v2->dst_ptr)
  {
    v6 = *(v2->dst_ptr + 16);
    v2 = swift_slowAlloc();
    if (compression_stream_init(v2, COMPRESSION_STREAM_DECODE, dword_26B2162E0[v6]))
    {
      sub_26B15D564();
      swift_allocError();
      swift_willThrow();
      compression_stream_destroy(v2);
      MEMORY[0x26D6723F0](v2, -1, -1);
      sub_26B14FF4C(0, 0xC000000000000000);
    }

    else
    {
      v8 = sub_26B15D26C(a1, a2, v2);
      if (!v3)
      {
        v10 = v8;
        v11 = v9;
        v2 = OSState.Snapshot.Decoder.SonicDecoder.dump(data:)(v8, v9);
        sub_26B14FF4C(v10, v11);
      }
    }
  }

  else
  {
    v7 = OSState.Snapshot.Decoder.SonicDecoder.dump(jsonData:)();
    if (!v3)
    {
      return v7;
    }
  }

  return v2;
}

uint64_t sub_26B19B184(uint64_t *a1, unsigned int a2)
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

uint64_t sub_26B19B1D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B19B228(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26B19B240(void *result, int a2)
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

void sub_26B19B270()
{
  if (!qword_2803E6D50)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D50);
    }
  }
}

uint64_t sub_26B19B2C8(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  OUTLINED_FUNCTION_19_6();
  result = sub_26B213430();
  if (__OFSUB__(result, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26B213400();
  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = result;
  }

  if (v9 >> 14 >= a2 >> 14)
  {
    OUTLINED_FUNCTION_19_6();
    v10 = sub_26B213450();

    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t static AsyncStream<A>.log(level:subsystem:category:decorated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1;
  v12 = MEMORY[0x277D837D0];
  v13 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v13, v14, v12, v15);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  v20[16] = v11;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  (*(v18 + 104))(&v20[-v17], *MEMORY[0x277D85778]);
  return sub_26B2130C0();
}

uint64_t sub_26B19B4E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v31 = a7;
  v32 = a2;
  v30 = a5;
  sub_26B19E12C(0, &qword_2803E79B0, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = *(v13 + 16);
  v33 = a1;
  v17(v15, a1, v12);
  v18 = (*(v13 + 80) + 57) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = a3;
  v20 = v30;
  *(v19 + 32) = a4;
  *(v19 + 40) = v20;
  *(v19 + 48) = a6;
  *(v19 + 56) = v31;
  (*(v13 + 32))(v19 + v18, v15, v12);
  aBlock[4] = sub_26B19DFD0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B19BC18;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);
  sub_26B2128F0();

  sub_26B2128F0();
  v22 = v32;

  v23 = os_log_set_hook();
  _Block_release(v21);
  if (v23)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v23 = sub_26B19E0A0;
  }

  else
  {
    v24 = 0;
  }

  swift_beginAccess();
  v25 = *(v16 + 16);
  v26 = *(v16 + 24);
  *(v16 + 16) = v23;
  *(v16 + 24) = v24;
  sub_26B193F8C(v25, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v16;
  return sub_26B213040();
}

uint64_t sub_26B19B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v48 = a8;
  sub_26B19E12C(0, qword_2803E79B8, MEMORY[0x277D837D0], MEMORY[0x277D85760]);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  if (!a2)
  {
    result = swift_beginAccess();
    v26 = *(a3 + 16);
    if (!v26)
    {
      return result;
    }

    v27 = *(a3 + 24);

    v28 = a1;
    v29 = 0;
LABEL_25:
    v26(v28, v29);
    return sub_26B193F8C(v26, v27);
  }

  v47 = v17;
  if (!a5)
  {
    goto LABEL_15;
  }

  if (!*(a2 + 128))
  {
    result = swift_beginAccess();
    v26 = *(a3 + 16);
    if (!v26)
    {
      return result;
    }

LABEL_24:
    v27 = *(a3 + 24);

    v28 = a1;
    v29 = a2;
    goto LABEL_25;
  }

  v46 = v16;
  if (sub_26B212C20() == a4 && v20 == a5)
  {

    v16 = v46;
    goto LABEL_15;
  }

  v22 = sub_26B213E30();

  v16 = v46;
  if (v22)
  {
LABEL_15:
    v30 = a1;
    if (!a7)
    {
      goto LABEL_27;
    }

    if (*(a2 + 136))
    {
      if (sub_26B212C20() == a6 && v31 == a7)
      {
      }

      else
      {
        v33 = sub_26B213E30();

        if ((v33 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_27:
      if (v48)
      {
        v34 = os_log_copy_decorated_message();
        if (!v34)
        {
          v23 = a3 + 16;
          v24 = v30;
          goto LABEL_36;
        }

        v35 = v34;
        v36 = MEMORY[0x26D670840]();
        v40 = sub_26B19B2C8(1, v36, v37, v38, v39);
        v41 = MEMORY[0x26D66FF50](v40);
        v43 = v42;

        v49 = v41;
        v50 = v43;
      }

      else
      {
        v44 = os_log_copy_message_string();
        if (!v44)
        {
LABEL_34:
          v23 = a3 + 16;
          v24 = v30;
          goto LABEL_36;
        }

        v35 = v44;
        v49 = sub_26B212C20();
        v50 = v45;
      }

      sub_26B19E12C(0, &qword_2803E79B0, MEMORY[0x277D837D0], MEMORY[0x277D85788]);
      sub_26B213060();
      (*(v47 + 8))(v19, v16);
      free(v35);
      return sub_26B19BB9C(a3 + 16, v30, a2);
    }

    result = swift_beginAccess();
    v26 = *(a3 + 16);
    if (!v26)
    {
      return result;
    }

    goto LABEL_24;
  }

  v23 = a3 + 16;
  v24 = a1;
LABEL_36:

  return sub_26B19BB9C(v23, v24, a2);
}

uint64_t sub_26B19BB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 8);

    v7(a2, a3);
    return sub_26B193F8C(v7, v8);
  }

  return result;
}

uint64_t sub_26B19BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_26B19BC78(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26B19E0FC;
  }

  else
  {
    v7 = nullsub_1;
    v6 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  aBlock[4] = sub_26B19E0BC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B19BC18;
  aBlock[3] = &block_descriptor_52;
  v9 = _Block_copy(aBlock);
  sub_26B194D18(v4, v5);

  v10 = os_log_set_hook();
  _Block_release(v9);
  _Block_release(v10);
}

uint64_t capturingLogs<A>(stream:_:)()
{
  OUTLINED_FUNCTION_25();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  OUTLINED_FUNCTION_0_28(v3, &qword_2803E79A0, MEMORY[0x277D837D0]);
  v0[7] = v5;
  v6 = *(v5 - 8);
  v0[8] = v6;
  v0[9] = *(v6 + 64);
  v0[10] = OUTLINED_FUNCTION_31();
  sub_26B185E18(0);
  OUTLINED_FUNCTION_21(v7);
  v0[11] = OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B19BEBC()
{
  v1 = v0[11];
  v2 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_16_6();
  v4(v3);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_13_11(v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_12_11();
  v0[12] = sub_26B19C844(v8, v9, v10, v11, v12, v13, v14);
  sub_26B16239C(v1);
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_26B19BFF4;

  return MEMORY[0x282200490]();
}

uint64_t sub_26B19BFF4()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v0;
  *v3 = *v0;

  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 112) = v6;
  *v6 = v5;
  v6[1] = sub_26B19C1B0;
  v7 = *(v1 + 24);

  return v9(v7);
}

uint64_t sub_26B19C1B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B19C2B0()
{
  OUTLINED_FUNCTION_25();
  v1 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v1, v2, v3, v4);
  v6 = v5;
  sub_26B2130E0();
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_26B19C398;
  v8 = *(v0 + 96);

  return MEMORY[0x282200460](v0 + 16, v8, v6);
}

uint64_t sub_26B19C398()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B19C47C()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26B19C500()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B19C570(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26B19C618;

  return sub_26B1B011C();
}

void sub_26B19C618()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;

  if (v0)
  {
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_33();

    MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_26B19C740()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_10_0();
  return v1();
}

uint64_t sub_26B19C76C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_28(v0, &qword_2803E79A0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_21(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_10(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_9(v3);

  return sub_26B19C570(v5);
}

uint64_t sub_26B19C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a1;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_26B212F70();
    v17 = v16;
    swift_unknownObjectRelease();
    v31 = v15;
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v31 = 0;
    v17 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v14);
  v19 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v14, 1, v19) == 1)
  {
    sub_26B16239C(v14);
  }

  else
  {
    sub_26B213010();
    (*(*(v19 - 8) + 8))(v14, v19);
  }

  if (a2)
  {
    v30 = sub_26B212B10() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    sub_26B19E12C(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v21 = v31;
    swift_unknownObjectRetain();

    if (v17 | v21)
    {
      v36[0] = 0;
      v36[1] = 0;
      v22 = v36;
      v36[2] = v21;
      v36[3] = v17;
    }

    else
    {
      v22 = 0;
    }

    if (a4 != 1)
    {
      v35[0] = 6;
      v35[1] = v22;
      v35[2] = a4;
      v35[3] = v29;
      v22 = v35;
    }

    v32 = 7;
    v33 = v22;
    v34 = v30;
    v26 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;
    sub_26B19E12C(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v24 = v31;
    swift_unknownObjectRetain();

    if (v17 | v24)
    {
      v37[0] = 0;
      v37[1] = 0;
      v25 = v37;
      v37[2] = v24;
      v37[3] = v17;
    }

    else
    {
      v25 = 0;
    }

    if (a4 != 1)
    {
      v36[4] = 6;
      v36[5] = v25;
      v36[6] = a4;
      v36[7] = v29;
    }

    v26 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_26B19CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[0] = a5;
  v27[1] = a1;
  sub_26B185E18(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_26B212F70();
    v17 = v16;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v15 = 0;
    v17 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_26B162308(a3, v14);
  v19 = sub_26B213020();
  if (__swift_getEnumTagSinglePayload(v14, 1, v19) == 1)
  {
    sub_26B16239C(v14);
  }

  else
  {
    sub_26B213010();
    (*(*(v19 - 8) + 8))(v14, v19);
  }

  if (a2)
  {
    v20 = sub_26B212B10() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a6;
    *(v21 + 24) = a7;
    swift_unknownObjectRetain();

    if (v17 | v15)
    {
      v29[0] = 0;
      v29[1] = 0;
      v22 = v29;
      v29[2] = v15;
      v29[3] = v17;
    }

    else
    {
      v22 = 0;
    }

    if (a4 != 1)
    {
      v28[0] = 6;
      v28[1] = v22;
      v28[2] = a4;
      v28[3] = v27[0];
      v22 = v28;
    }

    v27[2] = 7;
    v27[3] = v22;
    v27[4] = v20;
    v25 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;
    swift_unknownObjectRetain();

    if (v17 | v15)
    {
      v30[0] = 0;
      v30[1] = 0;
      v24 = v30;
      v30[2] = v15;
      v30[3] = v17;
    }

    else
    {
      v24 = 0;
    }

    if (a4 != 1)
    {
      v29[4] = 6;
      v29[5] = v24;
      v29[6] = a4;
      v29[7] = v27[0];
    }

    v25 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v25;
}

uint64_t redirectingLogs<A>(stream:_:)()
{
  OUTLINED_FUNCTION_25();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v0[7] = *(v2 - 8);
  v6 = OUTLINED_FUNCTION_31();
  v0[8] = v6;
  OUTLINED_FUNCTION_0_28(v6, &qword_2803E79A0, MEMORY[0x277D837D0]);
  v0[9] = v7;
  v8 = *(v7 - 8);
  v0[10] = v8;
  v0[11] = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_31();
  sub_26B185E18(0);
  OUTLINED_FUNCTION_21(v9);
  v0[13] = OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B19D024()
{
  v1 = v0[13];
  v2 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_16_6();
  v4(v3);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_13_11(v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_12_11();
  v0[14] = sub_26B19CBDC(v8, v9, v10, v11, v12, v13, v14);
  sub_26B16239C(v1);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_26B19D15C;

  return MEMORY[0x282200490]();
}

uint64_t sub_26B19D15C()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  v4 = *(v1 + 32);
  v5 = *v0;
  *v3 = *v0;

  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 128) = v6;
  *v6 = v5;
  v6[1] = sub_26B19D318;
  v7 = *(v1 + 64);

  return v9(v7);
}

uint64_t sub_26B19D318()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *(v4 + 136) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B19D418()
{
  OUTLINED_FUNCTION_25();
  v1 = MEMORY[0x277D84F78];
  sub_26B2130E0();
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26B19D4D0;
  v3 = *(v0 + 112);

  return MEMORY[0x282200460](v2, v3, v1 + 8);
}

uint64_t sub_26B19D4D0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B19D5B4()
{
  OUTLINED_FUNCTION_12();
  (*(v0[7] + 32))(v0[2], v0[8], v0[6]);
  sub_26B2130E0();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B19D67C()
{
  OUTLINED_FUNCTION_12();
  sub_26B2130E0();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B19D728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_26B19E12C(0, &qword_2803E79A8, MEMORY[0x277D837D0], MEMORY[0x277D857A8]);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B19D80C, 0, 0);
}

uint64_t sub_26B19D80C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_0_28(v1, &qword_2803E79A0, MEMORY[0x277D837D0]);
  sub_26B213090();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_5_12(v2);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822003E8](v3);
}

uint64_t sub_26B19D8B0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B19D994()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    sub_26B19E12C(0, &qword_2803E6DE8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26B2162F0;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    sub_26B214020();

    v4 = sub_26B2126C0();
    fflush(v4);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_5_12(v5);
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822003E8](v6);
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    OUTLINED_FUNCTION_10_0();

    return v7();
  }
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_28(a1, &qword_2803E79A0, MEMORY[0x277D837D0]);
  v3 = v2;
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v1 + v7, v3);

  return MEMORY[0x2821FE8E8](v1, v7 + v9, v6 | 7);
}

uint64_t sub_26B19DBC0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_0_28(v0, &qword_2803E79A0, MEMORY[0x277D837D0]);
  OUTLINED_FUNCTION_21(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3_10(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_9(v3);

  return sub_26B19D728(v5, v6, v7, v8);
}

uint64_t sub_26B19DC98(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_26B19DD8C;

  return v5(v2 + 16);
}

uint64_t sub_26B19DD8C()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_26B19DEB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B19DF40()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_21_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_10(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11(v1);

  return v4(v3);
}

uint64_t sub_26B19DFD0(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_9_11();
  sub_26B19E12C(v5, v6, v7, v8);
  OUTLINED_FUNCTION_21(v9);
  return sub_26B19B7D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B19E0BC(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

void sub_26B19E12C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26B19E1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24[0] = a11;
  v24[1] = a12;
  v24[2] = a12;
  v24[3] = a13;
  type metadata accessor for LRUDictionary.Container(255, v24);
  swift_getTupleTypeMetadata2();
  sub_26B212EC0();
  sub_26B212250();

  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *a9 = a8;
  *(a9 + 8) = a10;
  v17 = type metadata accessor for LRUDictionary(0, a11, a12, a13);
  sub_26B19E35C(v17);
}

uint64_t sub_26B19E35C(void *a1)
{
  v2 = a1;
  v4 = a1[3];
  v5 = a1[4];
  v117 = a1[2];
  v3 = v117;
  v118 = v4;
  v119 = v4;
  v120 = v5;
  v6 = type metadata accessor for LRUDictionary.Container(0, &v117);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v89 - v9;
  v110 = v4;
  v11 = *(v4 - 1);
  MEMORY[0x28223BE20](v8);
  v109 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v111 = *(TupleTypeMetadata2 - 8);
  v13 = *(v111 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v106 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v108 = &v89 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v107 = &v89 - v18;
  result = MEMORY[0x28223BE20](v17);
  v20 = v1;
  v22 = &v89 - v21;
  if ((v1[8] & 1) == 0)
  {
    v23 = v1[7];
    v24 = v1[4];
    v95 = v20;
    result = sub_26B2137F0();
    v20 = v95;
    if (v23 < result)
    {
      result = sub_26B2137F0();
      v91 = result - v23;
      if (__OFSUB__(result, v23))
      {
        goto LABEL_43;
      }

      v25 = v95;
      v26 = *v95;
      if (*v95)
      {
        v89 = v2;
        v113 = v10;
        v93 = v11;
        v92 = v7;
        v90 = v13;
        v27 = v95[1];
        v28 = v95[3];
        v117 = v95[2];
        v118 = v28;
        v119 = v24;
        v114 = v26;
        v105 = v27;
        sub_26B194D18(v26, v27);
        v94 = v5;
        sub_26B2122C0();

        swift_getWitnessTable();
        v29 = sub_26B212DD0();
        v30 = TupleTypeMetadata2;
        v31 = sub_26B212E50();
        v117 = v31;
        if (v31 != sub_26B212EF0())
        {
          v103 = *(v30 + 48);
          v102 = v112 - 2;
          v101 = (v92 + 32);
          v100 = (v93 + 16);
          v99 = (v92 + 8);
          v98 = (v93 + 8);
          v97 = (v111 + 8);
          v104 = (v111 + 16);
          v96 = (v111 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          do
          {
            v60 = sub_26B212EE0();
            sub_26B212E80();
            if (v60)
            {
              v61 = *(v111 + 16);
              v61(v22, (v29 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v31), v30);
            }

            else
            {
              result = sub_26B213730();
              if (v90 != 8)
              {
                goto LABEL_45;
              }

              v116[0] = result;
              v61 = *v104;
              (*v104)(v22, v116, v30);
              swift_unknownObjectRelease();
            }

            sub_26B212F30();
            v62 = *(v30 + 48);
            v63 = v112;
            v64 = *(v112 - 1);
            v65 = v107;
            (*(v64 + 32))(v107, v22, v112);
            (*v101)(&v65[v62], v103 + v22, v6);
            v66 = v108;
            v61(v108, v65, TupleTypeMetadata2);
            v67 = *(TupleTypeMetadata2 + 48);
            v68 = v22;
            v70 = v109;
            v69 = v110;
            (*v100)(v109, &v66[v67], v110);
            (*v99)(&v66[v67], v6);
            (v114)(v65, v70);
            v71 = v70;
            v22 = v68;
            (*v98)(v71, v69);
            (*v97)(v65, TupleTypeMetadata2);
            v72 = v66;
            v30 = TupleTypeMetadata2;
            (*(v64 + 8))(v72, v63);
            v73 = sub_26B212EF0();
            v31 = v117;
          }

          while (v117 != v73);
        }

        sub_26B193F8C(v114, v105);

        v5 = v94;
        v13 = v90;
        v7 = v92;
        v11 = v93;
        v10 = v113;
        v2 = v89;
        v25 = v95;
      }

      sub_26B2122C0();
      result = sub_26B212220();
      v20 = v25;
    }
  }

  v32 = v20 + 5;
  v33 = v20[5];
  if (v20[6])
  {
    return result;
  }

  v34 = v2;
  v36 = v20 + 2;
  v35 = v20[2];
  v37 = *v20;
  v38 = v20[1];
  v40 = v20[3];
  v39 = v20[4];
  *v122 = *v32;
  *&v122[9] = *(v32 + 9);
  v105 = v37;
  v117 = v37;
  v118 = v38;
  v104 = v38;
  v101 = v35;
  v119 = v35;
  v120 = v40;
  v102 = v40;
  v103 = v39;
  v121 = v39;
  result = LRUDictionary.totalCost.getter(v34);
  if (v33 >= result)
  {
    return result;
  }

  v41 = __OFSUB__(result, v33);
  v42 = result - v33;
  if (v41)
  {
    goto LABEL_44;
  }

  v95 = v36;
  v113 = v10;
  v93 = v11;
  v90 = v13;
  v116[0] = v101;
  v116[1] = v102;
  v116[2] = v103;
  v43 = sub_26B212270();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D66FDF0](&v117, v43, WitnessTable);
  v45 = v117;
  v46 = v118;

  v47 = sub_26B2137F0();

  v114 = v6;
  v94 = v5;
  if (!v47)
  {
LABEL_21:

    v55 = v93;
    v56 = v105;
    if (v105)
    {
      v117 = v101;
      v118 = v102;
      v119 = v103;

      sub_26B194D18(v56, v104);
      sub_26B2122C0();
      swift_getWitnessTable();
      v96 = v47;
      v57 = sub_26B212DD0();
      v58 = TupleTypeMetadata2;
      v59 = sub_26B212E50();
      v117 = v59;
      if (v59 != sub_26B212EF0())
      {
        v113 = *(v58 + 48);
        v103 = v112 - 2;
        v102 = (v7 + 32);
        v101 = (v55 + 16);
        v100 = (v7 + 8);
        v99 = (v55 + 8);
        v98 = (v111 + 8);
        v97 = (v111 + 16);
        v74 = v109;
        do
        {
          v75 = sub_26B212EE0();
          sub_26B212E80();
          v76 = v106;
          if (v75)
          {
            v77 = *(v111 + 16);
            (v77)(v106, v57 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v59, v58);
          }

          else
          {
            result = sub_26B213730();
            if (v90 != 8)
            {
              goto LABEL_46;
            }

            v116[0] = result;
            v77 = *v97;
            (*v97)(v76, v116, v58);
            swift_unknownObjectRelease();
          }

          sub_26B212F30();
          v78 = *(v58 + 48);
          v79 = v112;
          v80 = *(v112 - 1);
          v81 = v107;
          (*(v80 + 32))(v107, v76, v112);
          v82 = &v113[v76];
          v83 = v114;
          (*v102)(&v81[v78], v82, v114);
          v84 = v108;
          (v77)(v108, v81, TupleTypeMetadata2);
          v85 = *(TupleTypeMetadata2 + 48);
          v86 = v110;
          (*v101)(v74, &v84[v85], v110);
          (*v100)(&v84[v85], v83);
          (v105)(v81, v74);
          (*v99)(v74, v86);
          v87 = v81;
          v58 = TupleTypeMetadata2;
          (*v98)(v87, TupleTypeMetadata2);
          (*(v80 + 8))(v84, v79);
          v88 = sub_26B212EF0();
          v59 = v117;
        }

        while (v117 != v88);
      }

      sub_26B193F8C(v105, v104);
    }

    sub_26B2122C0();
    return sub_26B212220();
  }

  v99 = v46;
  v100 = v45;
  v48 = 0;
  v49 = &v113[v6[13]];
  v92 = v7;
  v50 = (v7 + 8);
  v96 = v47;
  v51 = v47;
  while (1)
  {
    v41 = __OFSUB__(v51--, 1);
    if (v41)
    {
      break;
    }

    v52 = v113;
    result = sub_26B213830();
    if (__OFADD__(v48, 1))
    {
      goto LABEL_41;
    }

    v53 = *v49;
    v54 = v49[8];
    result = (*v50)(v52, v6);
    if ((v54 & 1) == 0)
    {
      v41 = __OFSUB__(v42, v53);
      v42 -= v53;
      if (v41)
      {
        goto LABEL_42;
      }
    }

    if (v42 < 1)
    {
      v47 = v48 + 1;
      v7 = v92;
      goto LABEL_21;
    }

    ++v48;
    v6 = v114;
    if (!v51)
    {
      v7 = v92;
      v47 = v96;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t LRUDictionary.Container.cost.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 52);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_26B19F1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for LRUDictionary.Container(0, v17);
  v16 = a8 + *(result + 52);
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  return result;
}

uint64_t LRUDictionary.maximumCost.setter(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2 & 1;
  return OUTLINED_FUNCTION_5_13(a1, a2, a3);
}

uint64_t (*LRUDictionary.maximumCost.modify(void *a1, uint64_t a2))()
{
  *a1 = a2;
  a1[1] = v2;
  return sub_26B19F2AC;
}

void **sub_26B19F2AC(void **result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_26B19E35C(*result);
  }

  return result;
}

uint64_t sub_26B19F2E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = type metadata accessor for LRUDictionary(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  return a5(v6, v7, v8);
}

uint64_t LRUDictionary.maximumCount.setter(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2 & 1;
  return OUTLINED_FUNCTION_5_13(a1, a2, a3);
}

void **(*LRUDictionary.maximumCount.modify(void *a1, uint64_t a2))(void **result, char)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_26B1A0E38;
}

uint64_t LRUDictionary.totalCost.getter(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v8[6] = v1[2];
  v8[7] = v2;
  v8[8] = v3;
  v8[5] = 0;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];

  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v5;
  v8[3] = v6;
  type metadata accessor for LRUDictionary.Container(255, v8);
  sub_26B212270();
  OUTLINED_FUNCTION_1_21();
  swift_getWitnessTable();
  sub_26B212DC0();

  return v8[0];
}

uint64_t sub_26B19F474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a4;
  v14[3] = a5;
  result = type metadata accessor for LRUDictionary.Container(0, v14);
  v10 = (a2 + *(result + 52));
  if (*(v10 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
  }

  v12 = __OFADD__(v8, v11);
  v13 = v8 + v11;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *a6 = v13;
  }

  return result;
}

void LRUDictionary.cost(for:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0[3];
  v2 = v0[4];
  v15[0] = v0[2];
  v15[1] = v1;
  v15[2] = v1;
  v15[3] = v2;
  v3 = OUTLINED_FUNCTION_9_12();
  v4 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v12);
  v14 = v15 - v13;
  sub_26B2122D0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v3);
    (*(v11 + 8))(v14, v3);
  }

  OUTLINED_FUNCTION_28();
}

uint64_t LRUDictionary.keys.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t LRUDictionary.values.getter(void *a1)
{
  v2 = *(v1 + 16);
  v9 = *(v1 + 24);
  v3 = a1[3];
  v4 = a1[4];
  v8[0] = a1[2];
  v8[1] = v3;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v2;
  type metadata accessor for LRUDictionary.Container(255, v8);
  v5 = sub_26B212270();
  OUTLINED_FUNCTION_1_21();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D6701C0](v8, v5, WitnessTable);
  swift_getKeyPath();
  sub_26B2136D0();
  swift_getWitnessTable();
  sub_26B213A60();
}

void LRUDictionary.subscript.getter()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v15[0] = v2;
  v4 = v3[3];
  v5 = v3[4];
  v15[2] = v3[2];
  v15[3] = v4;
  v15[4] = v4;
  v15[5] = v5;
  v6 = OUTLINED_FUNCTION_9_12();
  v7 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v15[1] = v1;
  v13 = v15[0];
  sub_26B2122D0();
  v14 = 1;
  if (!__swift_getEnumTagSinglePayload(v12, 1, v6))
  {
    (*(*(v4 - 8) + 16))(v13, v12, v4);
    v14 = 0;
  }

  (*(v9 + 8))(v12, v7);
  __swift_storeEnumTagSinglePayload(v13, v14, 1, v4);
  LRUDictionary.poke(_:)();
  OUTLINED_FUNCTION_28();
}

{
  sub_26B2139E0();
  __break(1u);
}

void LRUDictionary.poke(_:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1[3];
  v3 = v1[4];
  v20 = v1[2];
  v21 = v2;
  v22 = v2;
  v23 = v3;
  v4 = OUTLINED_FUNCTION_9_12();
  v19 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  OUTLINED_FUNCTION_9_0();
  v14 = v13;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v18 - v16;
  sub_26B2122C0();
  v18 = v0;
  sub_26B212230();
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    (*(v6 + 8))(v12, v19);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v4);
    sub_26B212240();
    (*(v6 + 8))(v10, v19);
    (*(v14 + 8))(v17, v4);
  }

  OUTLINED_FUNCTION_28();
}

void LRUDictionary.subscript.setter()
{
  OUTLINED_FUNCTION_27_0();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v46 = v5;
  v47 = v6;
  v48 = v6;
  v49 = v7;
  v40 = v7;
  v41 = v4;
  v37 = OUTLINED_FUNCTION_9_12();
  sub_26B2133E0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - v9;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v45 = v14 - v13;
  v15 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v17 = v16;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  OUTLINED_FUNCTION_9_0();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v36 - v27;
  v29 = *(v17 + 16);
  v44 = v3;
  v29(v20, v3, v15);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v6);
  v39 = v11;
  v31 = (v11 + 16);
  if (EnumTagSinglePayload == 1)
  {
    (*(v17 + 8))(v20, v15);
    v32 = v43;
    (*v31)(v45, v43, v5);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v37);
    sub_26B2122C0();
    sub_26B2122E0();
    v33 = v41;
  }

  else
  {
    (*(v22 + 32))(v28, v20, v6);
    v32 = v43;
    (*v31)(v45, v43, v5);
    (*(v22 + 16))(v26, v28, v6);
    v34 = v38;
    sub_26B19F1B8(v26, 0, 1, v5, v6, v6, v40, v38);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v37);
    sub_26B2122C0();
    sub_26B2122E0();
    v35 = v41;
    LRUDictionary.poke(_:)();
    (*(v22 + 8))(v28, v6);
    v33 = v35;
  }

  sub_26B19E35C(v33);
  (*(v39 + 8))(v32, v5);
  (*(v17 + 8))(v44, v15);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v5 = *(v4 + 24);
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v27 = v6;
  v28 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v29 = v13;
  v15 = v13[4];
  v32 = v13[2];
  v14 = v32;
  v33 = v5;
  v34 = v5;
  v35 = v15;
  v16 = OUTLINED_FUNCTION_9_12();
  sub_26B2133E0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  OUTLINED_FUNCTION_9_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  (*(v21 + 16))(v24 - v23, v3, v14);
  (*(v7 + 16))(v12, v31, v5);
  sub_26B19F1B8(v12, v28, 0, v14, v5, v5, v15, v19);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v16);
  sub_26B2122C0();
  sub_26B2122E0();
  v25 = v29;
  LRUDictionary.poke(_:)();
  sub_26B19E35C(v25);
  (*(v21 + 8))(v3, v14);
  (*(v27 + 8))(v31, v5);
  OUTLINED_FUNCTION_28();
}

void LRUDictionary.subscript.modify()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *v4 = v5;
  *v5 = v2;
  v5[1] = v0;
  v6 = sub_26B2133E0();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v5[5] = __swift_coroFrameAllocStub(v8);
  v5[6] = *(v2 + 16);
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  v5[7] = v9;
  v12 = *(v11 + 64);
  v5[8] = __swift_coroFrameAllocStub(v12);
  v5[9] = __swift_coroFrameAllocStub(v12);
  (*(v10 + 16))();
  LRUDictionary.subscript.getter();
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  (*(v1 + 16))();
  LRUDictionary.subscript.getter();
}

void sub_26B1A0180(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[7];
    v10 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v10);
    LRUDictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    LRUDictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

void LRUDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = *(v26 + 24);
  v28 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v30 = v29;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  LRUDictionary.subscript.getter();
  if (__swift_getEnumTagSinglePayload(v33, 1, v27) == 1)
  {
    v34 = (*(v30 + 8))(v33, v28);
    v23(v34);
  }

  else
  {
    (*(*(v27 - 8) + 32))(v25, v33, v27);
    LRUDictionary.poke(_:)();
  }

  OUTLINED_FUNCTION_28();
}

void sub_26B1A0438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v15 - v10;
  MEMORY[0x28223BE20](v9);
  (*(v13 + 16))(&v15 - v12, v14, v5);
  swift_getTupleTypeMetadata2();
  (*(v8 + 16))(v11, a1, v6);
  type metadata accessor for LRUDictionary(0, v5, v6, v7);
  LRUDictionary.subscript.setter();
}

uint64_t LRUDictionary.isEmpty.getter(uint64_t a1)
{
  v6 = *(v1 + 32);
  v4[0] = *(a1 + 16);
  v2 = *(a1 + 24);
  v4[1] = *(a1 + 24);
  v5 = v2;
  type metadata accessor for LRUDictionary.Container(255, v4);
  sub_26B213820();
  swift_getWitnessTable();
  return sub_26B2132C0() & 1;
}

uint64_t LRUDictionary.count.getter(uint64_t a1)
{
  v3[0] = *(a1 + 16);
  v1 = *(a1 + 24);
  v3[1] = *(a1 + 24);
  v4 = v1;
  type metadata accessor for LRUDictionary.Container(0, v3);
  return sub_26B2137F0();
}

uint64_t sub_26B1A098C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_lyxq_Isegnn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26B1A09E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26B1A0A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26B1A0A94(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26B1A0DE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int8 *sub_26B1A0B1C(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v7 = (a2 - v5 + 255) >> 8;
    if (v6 <= 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v9 = 1;
    }

    if (v8 >= 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    switch(v10)
    {
      case 1:
        v11 = result[v6];
        if (result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v11 = *&result[v6];
        if (*&result[v6])
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v11 = *&result[v6];
        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        v12 = (v11 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v13 = *result;
        }

        else
        {
          v12 = 0;
          v13 = *result;
        }

        return (v5 + (v13 | v12) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_26B1A0C38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_28;
        }

        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_27;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    bzero(a1, v8);
    if (v8 <= 3)
    {
      v14 = (v13 >> 8) + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v13;
    }

    else
    {
      *a1 = v13;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

void sub_26B1A0DE8()
{
  if (!qword_2803E7AC0)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7AC0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_12()
{

  return type metadata accessor for LRUDictionary.Container(255, v0 - 112);
}

void *LRUDictionary.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = LRUDictionary.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t LRUDictionary.CodingKeys.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_26B213AA0();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t LRUDictionary.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x436D756D6978616DLL;
  }

  else
  {
    return 0x656761726F7473;
  }
}

uint64_t sub_26B1A0F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_26B213EB0();
}

uint64_t sub_26B1A0FE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26B1A104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A10BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A1138@<X0>(uint64_t *a1@<X8>)
{
  result = LRUDictionary.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1A1178(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B1A11CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void LRUDictionary<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_11_6();
  v58 = v25;
  v55 = v27;
  v56 = v26;
  v29 = v28;
  v31 = v30[2];
  v52 = v30[3];
  v53 = v31;
  v54 = v30[4];
  type metadata accessor for LRUDictionary.CodingKeys(255, v31, v52, v54);
  OUTLINED_FUNCTION_2_22();
  WitnessTable = swift_getWitnessTable();
  v50 = sub_26B213B70();
  OUTLINED_FUNCTION_0();
  v57 = v32;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v46 - v34;
  v37 = *(v24 + 16);
  v36 = *(v24 + 24);
  v38 = *(v24 + 32);
  v48 = *(v24 + 40);
  v47 = *(v24 + 48);
  v49 = *(v24 + 56);
  v69 = *(v24 + 64);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);

  v39 = v37;
  v40 = v50;
  sub_26B214120();
  v66 = v39;
  v67 = v36;
  v68 = v38;
  v62 = v53;
  v63 = v52;
  v64 = v52;
  v65 = v54;
  type metadata accessor for LRUDictionary.Container(255, &v62);
  sub_26B2122C0();
  v61 = v55;
  v41 = swift_getWitnessTable();
  v59 = v56;
  v60 = v41;
  swift_getWitnessTable();
  v42 = v58;
  sub_26B213B50();
  if (v42)
  {

    (*(v57 + 8))(v35, v40);
  }

  else
  {
    v43 = v47;
    v44 = v48;
    v45 = v57;

    v62 = v49;
    LOBYTE(v63) = v69;
    LOBYTE(v66) = 1;
    sub_26B1A0DE8();
    sub_26B1A1518();
    OUTLINED_FUNCTION_4_18();
    v62 = v44;
    LOBYTE(v63) = v43;
    LOBYTE(v66) = 2;
    OUTLINED_FUNCTION_4_18();
    (*(v45 + 8))(v35, v40);
  }

  OUTLINED_FUNCTION_10_2();
}

unint64_t sub_26B1A1518()
{
  result = qword_2803E7AC8[0];
  if (!qword_2803E7AC8[0])
  {
    sub_26B1A0DE8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7AC8);
  }

  return result;
}

void LRUDictionary<>.init(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v30 = v1;
  v3 = v2;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v29 = v11;
  type metadata accessor for LRUDictionary.CodingKeys(255, v7, v5, v2);
  OUTLINED_FUNCTION_2_22();
  swift_getWitnessTable();
  sub_26B213B20();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v12);
  v40 = v8;
  v41 = v6;
  v42 = v6;
  v43 = v3;
  type metadata accessor for LRUDictionary.Container(255, &v40);
  swift_getTupleTypeMetadata2();
  sub_26B212EC0();
  v33 = sub_26B212250();
  v32 = v13;
  v51 = v14;
  v50 = 1;
  v48 = 1;
  v34 = v10;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_26B2140F0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    v40 = 0;
    v41 = 0;
    v42 = v33;
    v43 = v32;
    v44 = v51;
    v45 = 0;
    v46 = v50;
    v47 = *v49;
    OUTLINED_FUNCTION_9_13(*&v49[3]);
    v15 = OUTLINED_FUNCTION_7_11();
    (*(*(v15 - 8) + 8))(&v40, v15);
  }

  else
  {
    sub_26B2122C0();
    v35[0] = 0;
    v39 = v30;
    v37 = v31;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_26B213AF0();

    v16 = v40;
    v17 = v41;
    v18 = v42;
    LOBYTE(v40) = 1;
    v19 = sub_26B213AC0();
    v52 = v18;
    v48 = v20 & 1;
    v36 = 2;
    v21 = sub_26B213AC0();
    LOBYTE(v18) = v22;
    v23 = OUTLINED_FUNCTION_1_22();
    v24(v23);
    v50 = v18 & 1;
    *&v35[8] = 0;
    *v35 = 0;
    *&v35[16] = v16;
    *&v35[24] = v17;
    *&v35[32] = v52;
    *&v35[40] = v21;
    v35[48] = v18 & 1;
    *&v35[49] = *v49;
    *&v35[52] = *&v49[3];
    *&v35[56] = v19;
    v35[64] = v48;
    memcpy(v29, v35, 0x41uLL);
    v25 = v16;
    v26 = OUTLINED_FUNCTION_7_11();
    v27 = v17;
    v28 = *(v26 - 8);
    (*(v28 + 16))(&v40, v35, v26);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v40 = 0;
    v41 = 0;
    v42 = v25;
    v43 = v27;
    v44 = v52;
    v45 = v21;
    v46 = v50;
    v47 = *v49;
    OUTLINED_FUNCTION_9_13(*&v49[3]);
    (*(v28 + 8))(&v40, v26);
  }

  OUTLINED_FUNCTION_10_2();
}

void *LRUDictionary.Container.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = LRUDictionary.Container.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t LRUDictionary.Container.CodingKeys.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_26B213AA0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t LRUDictionary.Container.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 1953722211;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_26B1A1B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_26B213EB0();
}

uint64_t sub_26B1A1BF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_26B1A1C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A1CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26B1A1D48@<X0>(uint64_t *a1@<X8>)
{
  result = LRUDictionary.Container.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1A1D88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B1A1DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void LRUDictionary.Container<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_11_6();
  v44 = v25;
  v45 = v24;
  v43 = v23;
  v27 = v26;
  v29 = v28;
  v30 = *(v26 + 16);
  v42 = *(v26 + 32);
  v46[0] = v30;
  v46[1] = v42;
  v31 = type metadata accessor for LRUDictionary.Container.CodingKeys(255, v46);
  OUTLINED_FUNCTION_3_17(v31);
  v32 = sub_26B213B70();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v42 - v36;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v38 = v43;
  sub_26B214120();
  LOBYTE(v46[0]) = 0;
  v39 = v45;
  sub_26B213B50();
  if (!v39)
  {
    v40 = (v38 + *(v27 + 52));
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 8);
    *&v46[0] = v41;
    BYTE8(v46[0]) = v40;
    sub_26B1A0DE8();
    sub_26B1A1518();
    sub_26B213B50();
  }

  (*(v34 + 8))(v37, v32);
  OUTLINED_FUNCTION_10_2();
}

void LRUDictionary.Container<>.init(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v38 = v12;
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v18 = type metadata accessor for LRUDictionary.Container.CodingKeys(255, &v45);
  OUTLINED_FUNCTION_3_17(v18);
  v44 = sub_26B213B20();
  OUTLINED_FUNCTION_0();
  v39 = v19;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v20);
  v45 = v9;
  v46 = v7;
  v41 = v5;
  v47 = v5;
  v48 = v3;
  v21 = type metadata accessor for LRUDictionary.Container(0, &v45);
  OUTLINED_FUNCTION_0();
  v37 = v22;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_26B2140F0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v26 = v25;
    v27 = v40;
    LOBYTE(v45) = 0;
    v28 = v41;
    v29 = v42;
    sub_26B213AF0();
    (*(v27 + 32))(v26, v29, v28);
    LOBYTE(v45) = 1;
    v30 = sub_26B213AC0();
    LOBYTE(v29) = v31;
    v32 = &v26[*(v21 + 52)];
    v43 = v26;
    v33 = OUTLINED_FUNCTION_5_14();
    v34(v33);
    *v32 = v30;
    v32[8] = v29 & 1;
    v35 = v37;
    v36 = v43;
    (*(v37 + 16))(v38, v43, v21);
    __swift_destroy_boxed_opaque_existential_1(v11);
    (*(v35 + 8))(v36, v21);
  }

  OUTLINED_FUNCTION_10_2();
}

_BYTE *sub_26B1A241C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26B1A24E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_7_11()
{
  v4 = *(v2 - 280);

  return type metadata accessor for LRUDictionary(0, v0, v4, v1);
}

void OUTLINED_FUNCTION_9_13(int a1@<W8>)
{
  *(v2 - 124) = a1;
  *(v2 - 120) = v1;
  *(v2 - 112) = *(v2 - 104);
}

uint64_t LRUDictionary.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v49 = v8 - v7;
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_9_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v44 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_46_0();
  v46 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = v43 - v22;
  v52 = 0;
  v53 = 0xE000000000000000;
  memcpy(__dst, v1, 0x41uLL);
  if (LRUDictionary.isEmpty.getter(a1))
  {
    v24 = 6109787;
    v25 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x26D670040](91, 0xE100000000000000);
    memcpy(__dst, v1, 0x41uLL);
    LRUDictionary.makeIterator()(a1, &v50);
    v26 = *(a1 + 32);
    v48 = v3;
    v27 = type metadata accessor for LRUDictionary.Iterator(0, v10, v3, v26);
    v44 += 4;
    v45 = v27;
    v43[1] = v12 + 32;
    v43[0] = v5 + 32;
    v28 = (v5 + 8);
    v29 = (v12 + 8);
    for (i = 1; ; i = 0)
    {
      v31 = v46;
      LRUDictionary.Iterator.next()(v45, v46);
      (*v44)(v23, v31, v47);
      if (__swift_getEnumTagSinglePayload(v23, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v32 = TupleTypeMetadata2;
      v33 = *(TupleTypeMetadata2 + 48);
      OUTLINED_FUNCTION_9_1();
      v34(v16, v23, v10);
      OUTLINED_FUNCTION_9_1();
      v35(v49, &v23[v33], v48);
      if ((i & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
      }

      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_26B213DF0();
      MEMORY[0x26D670040](8250, 0xE200000000000000);
      v36 = v16;
      v37 = v49;
      v38 = v10;
      v39 = v48;
      sub_26B213DF0();
      MEMORY[0x26D670040](__dst[0], __dst[1]);

      v40 = v37;
      v16 = v36;
      v41 = v39;
      v10 = v38;
      (*v28)(v40, v41);
      (*v29)(v36, v38);
      TupleTypeMetadata2 = v32;
    }

    v24 = 93;
    v25 = 0xE100000000000000;
  }

  MEMORY[0x26D670040](v24, v25);
  return v52;
}

uint64_t LRUDictionary.debugDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v67 = v8 - v7;
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_9_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v68 = v15 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  *&v66 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_46_0();
  v63 = v18;
  MEMORY[0x28223BE20](v19);
  v62 = v57 - v20;
  v21 = v1[1];
  v83 = *v1;
  v84 = v21;
  v22 = *(v1 + 5);
  v85 = *(v1 + 4);
  v82 = *(v1 + 48);
  v81[0] = *(v1 + 49);
  *(v81 + 3) = *(v1 + 13);
  v23 = *(v1 + 7);
  v80 = *(v1 + 64);
  *&v72[0] = 0;
  *(&v72[0] + 1) = 0xE000000000000000;
  sub_26B2136C0();

  strcpy(v72, "LRUDictionary<");
  HIBYTE(v72[0]) = -18;
  v69 = v10;
  v24 = sub_26B2141F0();
  MEMORY[0x26D670040](v24);

  OUTLINED_FUNCTION_5_15();
  v25 = sub_26B2141F0();
  MEMORY[0x26D670040](v25);

  MEMORY[0x26D670040](10302, 0xE200000000000000);
  v79 = v72[0];
  if ((v80 & 1) == 0)
  {
    *&v72[0] = 0;
    *(&v72[0] + 1) = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_3_18(0xEE00203A746E756FLL);
    *(v26 - 256) = v23;
    v27 = sub_26B213B90();
    MEMORY[0x26D670040](v27);

    OUTLINED_FUNCTION_5_15();
    MEMORY[0x26D670040](*&v72[0], *(&v72[0] + 1));
  }

  if ((v82 & 1) == 0)
  {
    *&v72[0] = 0;
    *(&v72[0] + 1) = 0xE000000000000000;
    sub_26B2136C0();

    OUTLINED_FUNCTION_3_18(0xED0000203A74736FLL);
    *(v28 - 256) = v22;
    v29 = sub_26B213B90();
    MEMORY[0x26D670040](v29);

    OUTLINED_FUNCTION_5_15();
    MEMORY[0x26D670040](*&v72[0], *(&v72[0] + 1));
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_4_19();
  v77 = v23;
  v30 = v80;
  v78 = v80;
  if (LRUDictionary.isEmpty.getter(a1))
  {
    v31 = 6109787;
    v32 = 0xE300000000000000;
  }

  else
  {
    MEMORY[0x26D670040](91, 0xE100000000000000);
    OUTLINED_FUNCTION_8_16();
    v59 = v22;
    OUTLINED_FUNCTION_4_19();
    v58 = v23;
    v77 = v23;
    v78 = v30;
    LRUDictionary.makeIterator()(a1, v71);
    v60 = a1;
    v61 = type metadata accessor for LRUDictionary.Iterator(0, v69, v3, *(a1 + 32));
    v33 = (v66 + 32);
    v57[1] = v12 + 32;
    v57[0] = v5 + 32;
    v34 = (v12 + 16);
    v35 = (v5 + 16);
    v36 = (v5 + 8);
    v66 = xmmword_26B2162F0;
    v37 = (v12 + 8);
    for (i = 1; ; i = 0)
    {
      v39 = v63;
      LRUDictionary.Iterator.next()(v61, v63);
      v40 = v62;
      (*v33)(v62, v39, v64);
      v41 = TupleTypeMetadata2;
      if (__swift_getEnumTagSinglePayload(v40, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v42 = *(v41 + 48);
      OUTLINED_FUNCTION_9_1();
      v43(v68, v40, v69);
      OUTLINED_FUNCTION_9_1();
      v44(v67, v40 + v42, v3);
      if ((i & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
      }

      sub_26B1A316C();
      v45 = swift_allocObject();
      OUTLINED_FUNCTION_7_12(v45);
      v46 = v69;
      *(v47 + 56) = v69;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v47 + 32));
      (*v34)(boxed_opaque_existential_0, v68, v46);
      OUTLINED_FUNCTION_2_23();
      sub_26B213630();

      MEMORY[0x26D670040](8250, 0xE200000000000000);
      v72[0] = v83;
      v72[1] = v84;
      v73 = v85;
      v74 = v59;
      v75 = v82;
      *v76 = v81[0];
      *&v76[3] = *(v81 + 3);
      v77 = v58;
      v78 = v80;
      LRUDictionary.cost(for:)();
      if ((v50 & 1) == 0)
      {
        *&v72[0] = 9256;
        *(&v72[0] + 1) = 0xE200000000000000;
        v70 = v49;
        v51 = sub_26B213B90();
        MEMORY[0x26D670040](v51);

        MEMORY[0x26D670040](41, 0xE100000000000000);
        MEMORY[0x26D670040](*&v72[0], *(&v72[0] + 1));
      }

      v52 = swift_allocObject();
      OUTLINED_FUNCTION_7_12(v52);
      *(v53 + 56) = v3;
      v54 = __swift_allocate_boxed_opaque_existential_0((v53 + 32));
      v55 = v67;
      (*v35)(v54, v67, v3);
      OUTLINED_FUNCTION_2_23();
      sub_26B213630();

      (*v36)(v55, v3);
      (*v37)(v68, v69);
    }

    v31 = 93;
    v32 = 0xE100000000000000;
  }

  MEMORY[0x26D670040](v31, v32);
  MEMORY[0x26D670040](41, 0xE100000000000000);
  return v79;
}

void sub_26B1A316C()
{
  if (!qword_2803E6DE8)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6DE8);
    }
  }
}

void OUTLINED_FUNCTION_5_15()
{

  JUMPOUT(0x26D670040);
}

__n128 OUTLINED_FUNCTION_7_12(__n128 *a1)
{
  result = *(v1 - 336);
  a1[1] = result;
  return result;
}

uint64_t static LRUDictionary<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for LRUDictionary.Container(0, v6);
  swift_getWitnessTable();
  return sub_26B2122B0() & 1;
}

void *LRUDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12 = a1;
  swift_getTupleTypeMetadata2();
  v9 = sub_26B212F50();
  WitnessTable = swift_getWitnessTable();
  return LRUDictionary.init<A>(uniqueKeysWithValues:)(&v12, a2, a3, v9, a4, WitnessTable, a5);
}

uint64_t LRUDictionary.Container<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B2129A0();
  v5 = (v3 + *(a2 + 52));
  if (*(v5 + 8) == 1)
  {
    return sub_26B214060();
  }

  v7 = *v5;
  sub_26B214060();
  return MEMORY[0x26D671480](v7);
}

uint64_t LRUDictionary.Container<>.hashValue.getter()
{
  OUTLINED_FUNCTION_0_29();
  LRUDictionary.Container<>.hash(into:)(v3, v1, v0);
  return sub_26B214070();
}

uint64_t sub_26B1A3484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_26B214030();
  LRUDictionary.Container<>.hash(into:)(v6, a2, v4);
  return sub_26B214070();
}

uint64_t LRUDictionary<>.hash(into:)(uint64_t a1, void *a2)
{
  if (*(v2 + 48) == 1)
  {
    sub_26B214060();
    sub_26B214060();
  }

  else
  {
    v4 = *(v2 + 40);
    sub_26B214060();
    MEMORY[0x26D671480](v4);
    sub_26B214060();
    MEMORY[0x26D671480](v4);
  }

  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v5;
  v9[3] = v7;
  type metadata accessor for LRUDictionary.Container(0, v9);
  swift_getWitnessTable();
  return sub_26B2122A0();
}

uint64_t LRUDictionary<>.hashValue.getter()
{
  OUTLINED_FUNCTION_0_29();
  LRUDictionary<>.hash(into:)(v2, v0);
  return sub_26B214070();
}

uint64_t sub_26B1A3630(uint64_t a1, void *a2)
{
  sub_26B214030();
  LRUDictionary<>.hash(into:)(v4, a2);
  return sub_26B214070();
}

void *LRUDictionary.init<A>(uniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  return sub_26B1A3FB8(a1, a2, a3, a4, a5, a6, sub_26B1A43E8, sub_26B1A38F4, a7);
}

{
  return sub_26B1A3FB8(a1, a2, a3, a4, a5, a6, sub_26B1A4348, sub_26B1A437C, a7);
}

void *LRUDictionary.init(maximumCount:maximumCost:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a6;
  __src[3] = a7;
  type metadata accessor for LRUDictionary.Container(255, __src);
  swift_getTupleTypeMetadata2();
  sub_26B212EC0();
  v16 = sub_26B212250();
  sub_26B19E1F4(v16, v17, v18, a3, a4 & 1, a1, a2 & 1, 0, __src, 0, a5, a6, a7);
  return memcpy(a8, __src, 0x41uLL);
}

uint64_t sub_26B1A3824@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for LRUDictionary.Container(255, v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a6, a6 + *(TupleTypeMetadata2 + 48), a1, a1 + v12);
}

uint64_t sub_26B1A3920(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v15;
  v41 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v38 - v18;
  v19 = sub_26B2133E0();
  v39 = *(v19 - 8);
  v40 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v38 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v52 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_26B212D20();
  v59 = sub_26B213810();
  v54 = sub_26B213820();
  sub_26B2137B0();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_26B212D10();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26B213460();
      result = __swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v25, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v25, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v25, AssociatedTypeWitness);
      sub_26B213800();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_26B213460();
    if (__swift_getEnumTagSinglePayload(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v22, v40);
      return v59;
    }

    (*v35)(v37, v22, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_26B213800();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

void *sub_26B1A3FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(char *, char *)@<X7>, void *a9@<X8>)
{
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = &v31;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a3;
  __src[3] = a5;
  type metadata accessor for LRUDictionary.Container(255, __src);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __src[0] = sub_26B1A3920(a8, v23, a4, TupleTypeMetadata2, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v18);
  sub_26B212F50();
  swift_getWitnessTable();
  v19 = sub_26B212260();
  sub_26B19E1F4(v19, v20, v21, 0, 1, 0, 1, 0, __src, 0, a2, a3, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return memcpy(a9, __src, 0x41uLL);
}

uint64_t sub_26B1A414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v17 - 8) + 16))(v14, v18, v17);
  (*(v13 + 16))(v16, a4, a6);
  return sub_26B19F1B8(v16, 0, 1, a5, a6, a6, a8, a2);
}

uint64_t sub_26B1A4274@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for LRUDictionary.Container(255, v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a6, a6 + *(TupleTypeMetadata2 + 48), a1, a1 + v12);
}

uint64_t LRUDictionary.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, v2, 0x41uLL);
  (*(*(a1 - 8) + 16))(&v6, __dst, a1);
  return sub_26B1A4814(v2, a2);
}

uint64_t LRUDictionary.Iterator.next()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v44[0] = v2;
  v44[1] = v3;
  v44[2] = v3;
  v44[3] = v4;
  v5 = type metadata accessor for LRUDictionary.Container(255, v44);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v39 = v8;
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  OUTLINED_FUNCTION_1_23();
  v11 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  OUTLINED_FUNCTION_9_0();
  v38 = v14;
  MEMORY[0x28223BE20](v15);
  v41 = &v36 - v16;
  OUTLINED_FUNCTION_9_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_23();
  sub_26B212290();
  sub_26B212280();
  if (__swift_getEnumTagSinglePayload(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v39 + 8))(v10, v40);
    OUTLINED_FUNCTION_1_23();
    v22 = swift_getTupleTypeMetadata2();
    v23 = v42;
    v24 = 1;
  }

  else
  {
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = *(v11 + 48);
    v43 = v3;
    v39 = *(v18 + 32);
    v40 = v25;
    (v39)(v13, v10, v2);
    v37 = v21;
    v27 = *(v38 + 32);
    v27(&v13[v26], &v10[v40], v5);
    v28 = *(v11 + 48);
    v29 = v39;
    (v39)(v21, v13, v2);
    v30 = v41;
    v27(v41, &v13[v28], v5);
    OUTLINED_FUNCTION_1_23();
    v31 = v43;
    v32 = swift_getTupleTypeMetadata2();
    v33 = *(v32 + 48);
    v34 = v42;
    v29(v42, v37, v2);
    (*(*(v31 - 8) + 32))(v34 + v33, v30, v31);
    v23 = v34;
    v24 = 0;
    v22 = v32;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_26B1A4814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];

  sub_26B193F8C(v3, v4);

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = 0;
  return result;
}

uint64_t LRUDictionary.underestimatedCount.getter(uint64_t a1)
{
  v3[0] = *(a1 + 16);
  v1 = *(a1 + 24);
  v3[1] = *(a1 + 24);
  v4 = v1;
  type metadata accessor for LRUDictionary.Container(0, v3);
  return sub_26B2137F0();
}

uint64_t sub_26B1A48EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  LRUDictionary.makeIterator()(a1, a2);
  memcpy(__dst, v2, 0x41uLL);
  return (*(*(a1 - 8) + 8))(__dst, a1);
}

uint64_t sub_26B1A4978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26B1A49CC(void (*result)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = MEMORY[0x277D84F90];
  while (a4 != v6)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (v6 >= a4)
    {
      goto LABEL_16;
    }

    v19 = v6;
    result(&v17, &v19, a2);
    if (v4)
    {

      return;
    }

    v8 = v18;
    if (v18)
    {
      v9 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B16ACAC(0, *(v7 + 16) + 1, 1, v7);
        v7 = v13;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26B16ACAC(v10 > 1, v11 + 1, 1, v7);
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
    }

    ++v6;
  }
}

uint64_t NanoID.Configuration.characters.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SonicFoundation::NanoID::Configuration __swiftcall NanoID.Configuration.with(size:)(Swift::Int size)
{
  v3 = v2;
  v4 = v1;
  sub_26B2128F0();
  v6 = v4;
  v7 = v3;
  v8 = size;
  result.size = v8;
  result.characters._object = v7;
  result.characters._countAndFlagsBits = v6;
  return result;
}

void _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(uint64_t result, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a3 == v4)
      {

        v19 = v6;
        sub_26B1A5198();
        sub_26B182AF4();
        sub_26B212CE0();
        return;
      }

      if (v4 >= a3)
      {
        break;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

      ++v4;
      if (v5)
      {
        v8 = sub_26B212BB0();
        if (v8 < 0)
        {
          goto LABEL_24;
        }

        v9 = v8;
        if (!v8)
        {
          goto LABEL_25;
        }

        v19 = 0;
        MEMORY[0x26D672400](&v19, 8);
        if (v9 > v19 * v9)
        {
          v10 = -v9 % v9;
          while (v10 > v19 * v9)
          {
            v19 = 0;
            MEMORY[0x26D672400](&v19, 8);
          }
        }

        sub_26B212BF0();
        v11 = sub_26B212CD0();
        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B16ACAC(0, *(v6 + 16) + 1, 1, v6);
          v6 = v17;
        }

        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_26B16ACAC(v14 > 1, v15 + 1, 1, v6);
          v6 = v18;
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t NanoID.init<A>(config:using:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x28223BE20](result);
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v4;
    v12[5] = a2;
    v12[6] = v7;
    v12[7] = v8;
    sub_26B1A49CC(sub_26B1A5174, v12, 0, v9);
    v11 = v10;

    v12[8] = v11;
    sub_26B1A5198();
    sub_26B182AF4();
    return sub_26B212CE0();
  }

  return result;
}

uint64_t static NanoID.small<A>(size:using:)(uint64_t result)
{
  if (result <= 15)
  {
    return OUTLINED_FUNCTION_1_24(64, 0x800000026B21FCB0, result);
  }

  __break(1u);
  return result;
}

uint64_t static NanoID.taggedPointer<A>(size:using:)(uint64_t result)
{
  if (result <= 9)
  {
    return OUTLINED_FUNCTION_1_24(59, 0x800000026B21FD80, result);
  }

  __break(1u);
  return result;
}

void sub_26B1A5198()
{
  if (!qword_2803E6D90)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D90);
    }
  }
}

uint64_t static NanoID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t NanoID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  return sub_26B214070();
}

uint64_t sub_26B1A52A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26B214030();
  NanoID.hash(into:)(v5, v2, v3);
  return sub_26B214070();
}

uint64_t sub_26B1A52E8@<X0>(uint64_t a1@<X0>, SonicFoundation::NanoID *a2@<X8>)
{
  v5 = NanoID.init(_:)(*&a1);
  result = v5.nanoIDString._countAndFlagsBits;
  *a2 = v5;
  return result;
}

uint64_t NanoID.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_4_20();
  sub_26B2140E0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    OUTLINED_FUNCTION_4_20();
    v1 = sub_26B213E40();
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t NanoID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B214110();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26B213E70();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_26B1A5474@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NanoID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t static UInt32.nanoID()()
{
  v0 = OUTLINED_FUNCTION_3_19();
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(v0, v1, 4uLL);
  String.fourChar.getter(v2, v3);
  v5 = v4;

  if ((v5 & 0x100000000) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t static UInt64.nanoID()()
{
  v0 = OUTLINED_FUNCTION_3_19();
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(v0, v1, 8uLL);
  String.eightChar.getter(v2, v3);
  v5 = v4;
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_26B1A556C()
{
  result = qword_2803E7C50;
  if (!qword_2803E7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7C50);
  }

  return result;
}

unint64_t sub_26B1A55C4()
{
  result = qword_2803E7C58[0];
  if (!qword_2803E7C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7C58);
  }

  return result;
}

Swift::String *sub_26B1A5680@<X0>(Swift::String *result@<X0>, SonicFoundation::NanoID *a2@<X8>)
{
  if (!v2)
  {
    v4 = NanoID.init(nativeValue:)(*result);
    result = v4.nanoIDString._countAndFlagsBits;
    *a2 = v4;
  }

  return result;
}

uint64_t sub_26B1A56BC@<X0>(uint64_t *a1@<X8>)
{
  result = NanoID.nativeValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ProtobufDataConvertible<>.init(_protobufData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v9 = sub_26B212410();
  MEMORY[0x28223BE20](v9 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v21 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v25 = a1;
  v26 = a2;
  swift_getAssociatedConformanceWitness();
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_26B14F044(a1, a2);
  sub_26B212400();
  v18 = v27;
  sub_26B2124B0();
  if (!v18)
  {
    (*(v21 + 16))(v15, v17, AssociatedTypeWitness);
    (*(a4 + 24))(v15, a3, a4);
    (*(v21 + 8))(v17, AssociatedTypeWitness);
  }

  return sub_26B14FF4C(a1, a2);
}

uint64_t ProtobufDataConvertible<>._protobufData.getter(uint64_t a1, uint64_t a2)
{
  v16[0] = sub_26B212430();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedConformanceWitness();
  sub_26B212420();
  sub_26B2124C0();
  (*(v5 + 8))(v8, v16[0]);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  return v16[2];
}

uint64_t *sub_26B1A5C58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = v3 + *(*v3 + 104);
  *v7 = xmmword_26B215910;
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a2;
  *(v7 + 8) = a3;
  sub_26B14D918(a2, a3);
  sub_26B156574(v8, v9);
  sub_26B156574(a2, a3);
  return v3;
}

uint64_t sub_26B1A5D3C()
{
  v1 = (v0 + *(*v0 + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = xmmword_26B215910;
  return sub_26B156574(v2, v3);
}

uint64_t sub_26B1A5D68@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B1A5E08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  sub_26B1A5D3C();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_26B1A5EF0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  sub_26B156574(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_26B1A5F80()
{
  v0 = sub_26B1A5EF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t ProtobufData.data.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = (*v1 + *(**v1 + 104));
  v12 = *v11;
  v13 = v11[1];
  if (v13 >> 60 != 15)
  {
    v14 = *v11;
LABEL_6:
    sub_26B14D918(v12, v13);
    return v14;
  }

  sub_26B1A5D68(v10);
  v14 = v10;
  v15 = (*(*(a1 + 24) + 16))(v4);
  if (!v2)
  {
    v14 = v15;
    v17 = v16;
    (*(v6 + 8))(v10, v4);
    v18 = *v11;
    v19 = v11[1];
    *v11 = v14;
    v11[1] = v17;
    sub_26B14F044(v14, v17);
    sub_26B156574(v18, v19);
    goto LABEL_6;
  }

  (*(v6 + 8))(v10, v4);
  return v14;
}

uint64_t ProtobufData.decode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v11 = *(v10 + 24);
  v12 = *(v11 + 8);
  sub_26B14F044(v13, v14);
  result = v12(a1, a2, v6, v11);
  if (!v3)
  {
    return sub_26B1A5E08(v9);
  }

  return result;
}

Swift::Void __swiftcall ProtobufData.clear()()
{
  v1 = (*v0 + *(**v0 + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = xmmword_26B215910;
  sub_26B156574(v2, v3);
}

uint64_t ProtobufData.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  type metadata accessor for ProtobufData.Storage(0, v12, v13, v14);
  (*(v7 + 16))(v11, a1, a2);
  v15 = sub_26B1A5C04(v11, 0, 0xF000000000000000);
  result = (*(v7 + 8))(a1, a2);
  *a3 = v15;
  return result;
}

uint64_t ProtobufData.init(protobufData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v15 = *(v14 + 8);
  sub_26B14F044(v16, v17);
  v15(a1, a2, a3, a4);
  if (v5)
  {
    return sub_26B14FF4C(a1, a2);
  }

  ProtobufData.init(wrappedValue:)(v13, a3, &v19);
  result = sub_26B14FF4C(a1, a2);
  *a5 = v19;
  return result;
}

uint64_t sub_26B1A64D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  (*(v8 + 16))(&v12 - v6);
  v10 = type metadata accessor for ProtobufData(0, v4, v5, v9);
  return ProtobufData.wrappedValue.setter(v7, v10);
}

uint64_t ProtobufData.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, a1, v3);
  sub_26B1A5E08(v9);
  return (*(v5 + 8))(a1, v3);
}

void (*ProtobufData.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_9_0();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  sub_26B1A5D68(v10);
  return sub_26B1A6754;
}

void sub_26B1A6754(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    ProtobufData.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ProtobufData.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_26B1A68C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1A6914(uint64_t a1)
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

SonicFoundation::LiteralSQL_optional __swiftcall LiteralSQL.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t LiteralSQL.sql.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return sub_26B2128F0();
}

void SQL.init(stringLiteral:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = a2;
  a1[1] = a3;
  OUTLINED_FUNCTION_8_17(a1);
}

uint64_t LiteralSQL.rawValue.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t LiteralSQL.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_26B1A6A70@<X0>(uint64_t *a1@<X8>)
{
  result = LiteralSQL.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B1A6AB8()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v31 = 0;
  v32 = 0xE000000000000000;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = *v1 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_26B1A8DCC(v4, v25);
      if (v30)
      {
        if (v30 == 1)
        {
          sub_26B150514(v25, v23);
          MEMORY[0x26D670040](63, 0xE100000000000000);
          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          sub_26B16BCF8(v23, &__src[3]);
          LOBYTE(__src[10]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_17(0);
            v5 = v16;
          }

          v7 = *(v5 + 16);
          v6 = *(v5 + 24);
          if (v7 >= v6 >> 1)
          {
            OUTLINED_FUNCTION_6_17(v6 > 1);
            v5 = v17;
          }

          __swift_destroy_boxed_opaque_existential_1(v23);
          *(v5 + 16) = v7 + 1;
          memcpy((v5 + 88 * v7 + 32), __src, 0x51uLL);
        }

        else
        {
          v8 = v26;
          v9 = v27;
          v11 = v28;
          v10 = v29;
          sub_26B150514(v25, v23);
          __src[0] = v8;
          __src[1] = v9;
          MEMORY[0x26D670040](2703144, 0xE300000000000000);
          MEMORY[0x26D670040](__src[0], __src[1]);

          __src[0] = *(v5 + 16) + 1;
          __src[1] = 0;
          LOBYTE(__src[2]) = 0;
          v12 = v24;
          v13 = __swift_project_boxed_opaque_existential_1(v23, v24);
          sub_26B1A6E88(v13, v12, &__src[3]);
          __src[8] = v11;
          __src[9] = v10;
          LOBYTE(__src[10]) = 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B16AF14();
            v5 = v18;
          }

          v15 = *(v5 + 16);
          v14 = *(v5 + 24);
          if (v15 >= v14 >> 1)
          {
            OUTLINED_FUNCTION_6_17(v14 > 1);
            v5 = v19;
          }

          *(v5 + 16) = v15 + 1;
          memcpy((v5 + 88 * v15 + 32), __src, 0x51uLL);
          __swift_destroy_boxed_opaque_existential_1(v23);
        }
      }

      else
      {
        MEMORY[0x26D670040](*&v25[0], *(&v25[0] + 1));
      }

      v4 += 80;
      --v3;
    }

    while (v3);
    v20 = v31;
    v2 = v32;
  }

  else
  {
    v20 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v1[1] = v20;
  v1[2] = v2;
  if (!*(v5 + 16))
  {
  }

  v1[3] = v5;
  return result;
}

SonicFoundation::SQL::Interpolation __swiftcall SQL.Interpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = MEMORY[0x277D84F90];
  if (__OFADD__(interpolationCount, 2))
  {
    __break(1u);
  }

  else
  {
    sub_26B16AFCC();
    *v3 = literalCapacity;
  }

  result.bindQueue._rawValue = v5;
  result.parameterizedSQL.value._object = v4;
  result.parameterizedSQL.value._countAndFlagsBits = interpolationCount;
  result.tokens._rawValue = literalCapacity;
  return result;
}

Swift::Void __swiftcall SQL.Interpolation.appendLiteral(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_26B2128F0();
  sub_26B16A518();
  sub_26B16A6D4(*(*v1 + 16));
  OUTLINED_FUNCTION_2_25();
  *(v4 + 32) = countAndFlagsBits;
  *(v4 + 40) = object;
  *(v4 + 104) = 0;
  *v1 = v5;
}

void SQL.Interpolation.appendInterpolation(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (a1[4])
  {
    v3 = sub_26B2128F0();

    sub_26B168BB8(v3);
  }

  else
  {
    v4 = a1[1];
    sub_26B2128F0();
    sub_26B16A518();
    sub_26B16A6D4(*(*v1 + 16));
    OUTLINED_FUNCTION_2_25();
    *(v5 + 32) = v2;
    *(v5 + 40) = v4;
    *(v5 + 104) = 0;
    *v1 = v6;
  }
}

uint64_t sub_26B1A6E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s12ReferenceBoxCMa(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  result = sub_26B1E4F44(v8);
  a3[3] = v12;
  a3[4] = &off_287BC1198;
  *a3 = result;
  return result;
}

uint64_t sub_26B1A6F74()
{
  v1 = *v0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_26B1A8DCC(v3, v17);
      if (v18)
      {
        if (v18 == 1)
        {
          sub_26B150514(v17, v14);
          v4 = v15;
          v5 = v16;
          __swift_project_boxed_opaque_existential_1(v14, v15);
          (*(v5 + 16))(v13, v4, v5);
          v6 = v13[0];
          v7 = v13[1];
          swift_beginAccess();
          MEMORY[0x26D670040](v6, v7);
          swift_endAccess();
        }

        else
        {

          sub_26B150514(v17, v14);
          v9 = v15;
          v10 = v16;
          v11 = __swift_project_boxed_opaque_existential_1(v14, v15);
          sub_26B1A70FC(v11, v19, v9, v10);
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        v8 = v17[0];
        swift_beginAccess();
        MEMORY[0x26D670040](v8, *(&v8 + 1));
        swift_endAccess();
      }

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  return v19[0];
}

uint64_t sub_26B1A70FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a1;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v40 - v8;
  v52 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = sub_26B2133E0();
  v44 = *(v48 - 8);
  v10 = MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v40 - v12;
  v43 = sub_26B213A20();
  MEMORY[0x28223BE20](v43);
  v41 = (&v40 - v13);
  v51 = v6;
  v49 = sub_26B213A10();
  v40 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v50 = &v40 - v14;
  swift_beginAccess();
  MEMORY[0x26D670040](0x205443454C455328, 0xE800000000000000);
  swift_endAccess();
  v15 = *(a4 + 16);
  v54 = a3;
  v55 = a4;
  v15(a3, a4);
  v57 = sub_26B2128F0();
  v16 = (v57 + 40);
  v17 = 0;
  while (1)
  {
    v18 = *(v57 + 16);
    if (v17 == v18)
    {
      break;
    }

    if (v17 >= v18)
    {
LABEL_20:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v19 = *(v16 - 1);
    v20 = *v16;
    v60 = 0x6E6D756C6F63;
    v61 = 0xE600000000000000;
    v58[0] = ++v17;
    sub_26B2128F0();
    v21 = sub_26B213B90();
    MEMORY[0x26D670040](v21);

    MEMORY[0x26D670040](542327072, 0xE400000000000000);
    MEMORY[0x26D670040](v19, v20);

    v22 = v60;
    v23 = v61;
    swift_beginAccess();
    MEMORY[0x26D670040](v22, v23);
    swift_endAccess();

    if (v17 != *(v57 + 16))
    {
      swift_beginAccess();
      MEMORY[0x26D670040](8236, 0xE200000000000000);
      swift_endAccess();
    }

    v16 += 3;
  }

  v24 = v57;

  swift_beginAccess();
  MEMORY[0x26D670040](0x5628204D4F524620, 0xEE00205345554C41);
  swift_endAccess();
  MEMORY[0x26D670170](v54, v51);
  sub_26B2139F0();
  v44 += 4;
  v43 = (v42 + 32);
  v53 = v55 + 32;
  v41 = (v42 + 8);
  v42 = v24 + 40;
  v25 = TupleTypeMetadata2;
  v26 = v45;
  v27 = v55;
  while (1)
  {
    v28 = v47;
    sub_26B213A00();
    (*v44)(v26, v28, v48);
    if (__swift_getEnumTagSinglePayload(v26, 1, v25) == 1)
    {
      break;
    }

    v51 = *v26;
    (*v43)(v56, v26 + *(v25 + 48), v52);
    swift_beginAccess();
    MEMORY[0x26D670040](8232, 0xE200000000000000);
    swift_endAccess();
    v29 = 0;
    v30 = *(v57 + 16);
    v31 = v30 - 1;
    v32 = v42;
    while (v30 != v29)
    {
      if (v29 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v33 = *v32;
      v58[0] = *(v32 - 1);
      v58[1] = v33;
      v34 = *(v27 + 32);
      sub_26B2128F0();
      v34(&v60, v58, v56);

      v36 = v62;
      v35 = v63;
      __swift_project_boxed_opaque_existential_1(&v60, v62);
      (*(*(v35 + 8) + 8))(v59, v36);
      v37 = v59[0];
      v38 = v59[1];
      swift_beginAccess();
      MEMORY[0x26D670040](v37, v38);
      swift_endAccess();

      if (v31 != v29)
      {
        swift_beginAccess();
        MEMORY[0x26D670040](8236, 0xE200000000000000);
        swift_endAccess();
      }

      __swift_destroy_boxed_opaque_existential_1(&v60);
      v32 += 3;
      ++v29;
    }

    swift_beginAccess();
    MEMORY[0x26D670040](10528, 0xE200000000000000);
    swift_endAccess();
    if (v51 != v31)
    {
      swift_beginAccess();
      MEMORY[0x26D670040](8236, 0xE200000000000000);
      swift_endAccess();
    }

    (*v41)(v56, v52);
    v25 = TupleTypeMetadata2;
    v26 = v45;
  }

  (*(v40 + 8))(v50, v49);

  swift_beginAccess();
  MEMORY[0x26D670040](2697504, 0xE300000000000000);
  return swift_endAccess();
}

uint64_t SQL.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_26B2128F0();
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v4 = *(v12 + 16);
  if (v4)
  {

    v5 = v10;
    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    v6 = v9;
    v7 = v11;
    v8 = v12;
LABEL_5:

    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v4 != 0;
    return result;
  }

  if (v11)
  {
    v6 = v10;
    sub_26B2128F0();

    v7 = 0;
    v8 = 0;
    v5 = v11;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void SQL.description.getter()
{
  sub_26B211BE0();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_20();
  if ((*(v0 + 32) & 1) != 0 && !*(v0 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_26B2128F0();
    sub_26B211BC0();
    sub_26B14FCC8();
    sub_26B213490();
    v2 = OUTLINED_FUNCTION_5_16();
    v3(v2);
  }
}

uint64_t *_s15SonicFoundation3SQLO05debugC0SSvg_0()
{
  sub_26B211BE0();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_20();
  v3 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v10 = *v0;
    v11 = v2;
    v12 = v5;
    v13 = v4;
    v3 = sub_26B1A6F74();
    v2 = v6;
  }

  else
  {
    sub_26B2128F0();
  }

  v10 = v3;
  v11 = v2;
  sub_26B211BC0();
  sub_26B14FCC8();
  sub_26B213490();
  v7 = OUTLINED_FUNCTION_5_16();
  v8(v7);

  return &v10;
}

__int128 *Array<A>.joined(by:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v22 = result[1];
  v23 = *result;
  v21 = *(result + 32);
  v7 = *(a2 + 16);
  v8 = (a2 + 64);
  v9 = 0xE000000000000000;
  if (v7)
  {
    do
    {
      v10 = *v8;
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v24 = v8;
      v25 = v7;
      v13 = *(v8 - 4);
      v14 = *(v8 - 3);
      v29 = v3;
      v30 = v9;
      v31 = v4;
      v32 = v5;
      v15 = v6 & 1;
      v33 = v15;
      *&v26 = v13;
      *(&v26 + 1) = v14;
      *&v27 = v12;
      *(&v27 + 1) = v11;
      v28 = v10;
      v16 = v5;
      sub_26B1A8558(v13, v14, v12, v11, v10);
      static SQL.+ infix(_:_:)(&v29, &v26, &v34);
      sub_26B1A85A8(v3, v9, v4, v16, v15);
      result = sub_26B1A85A8(v13, v14, v12, v11, v10);
      v3 = v34;
      v9 = v35;
      v4 = v36;
      v5 = v37;
      v6 = v38;
      v7 = v25 - 1;
      if (v25 != 1)
      {
        v29 = v34;
        v30 = v35;
        v31 = v36;
        v32 = v37;
        v33 = v38;
        v26 = v23;
        v27 = v22;
        v28 = v21;
        v17 = v34;
        v18 = v36;
        v19 = v37;
        static SQL.+ infix(_:_:)(&v29, &v26, &v34);
        result = sub_26B1A85A8(v17, v9, v18, v19, v6);
        v3 = v34;
        v9 = v35;
        v4 = v36;
        v5 = v37;
        v6 = v38;
      }

      v8 = v24 + 40;
    }

    while (v25 != 1);
  }

  *a3 = v3;
  *(a3 + 8) = v9;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6 & 1;
  return result;
}

double static SQL.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v15[0] = *a1;
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v16 = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  v14 = v3;
  static SQL.+ infix(_:_:)(v15, v13, v17);
  sub_26B1A85A8(v4, v5, v6, v7, v8);
  v10 = v18;
  result = *v17;
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  return result;
}

uint64_t static SQL.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  if (*(a1 + 32))
  {
    if ((a2[4] & 1) == 0)
    {
      sub_26B1A85F4();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B2162F0;
      *(inited + 32) = v5;
      *(inited + 40) = v6;
      *(inited + 104) = 0;
      v31 = v4;
      v11 = OUTLINED_FUNCTION_0_31();
      sub_26B1A8558(v11, v12, v13, v14, v15);
      sub_26B2128F0();
      v9 = inited;
      goto LABEL_8;
    }

    v31 = *a1;
    sub_26B2128F0();
  }

  else
  {
    v7 = *(a1 + 8);
    if ((a2[4] & 1) == 0)
    {
      v32 = *a1;
      v21 = OUTLINED_FUNCTION_0_31();
      sub_26B1A8558(v21, v22, v23, v24, v25);
      OUTLINED_FUNCTION_7_13();
      MEMORY[0x26D670040](v5, v6);
      v26 = OUTLINED_FUNCTION_0_31();
      result = sub_26B1A85A8(v26, v27, v28, v29, v30);
      v20 = 0;
      v19 = 0;
      v17 = v32;
      v18 = v7;
      goto LABEL_10;
    }

    sub_26B1A85F4();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26B2162F0;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    *(v8 + 104) = 0;
    v31 = v8;
    OUTLINED_FUNCTION_7_13();
  }

  v9 = sub_26B2128F0();
LABEL_8:
  sub_26B168BB8(v9);
  v33 = MEMORY[0x277D84F90];
  result = sub_26B1A6AB8();
  v17 = v31;
  v18 = 0;
  v19 = 1;
  v20 = v33;
LABEL_10:
  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = 0;
  *(a3 + 24) = v20;
  *(a3 + 32) = v19;
  return result;
}

uint64_t SQL.Interpolation.appendInterpolation(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_26B1A8644(v4, v1, v2, v3);
}

uint64_t SQL.Interpolation.appendInterpolation<A>(unsafe:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26B213B90();
  v6 = v5;
  sub_26B16A518();
  v7 = *(*v3 + 16);
  result = sub_26B16A6D4(v7);
  v9 = *v3;
  *(v9 + 16) = v7 + 1;
  v10 = v9 + 80 * v7;
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  *(v10 + 104) = 0;
  *v3 = v9;
  return result;
}

void *SQL.Interpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = a4;
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_26B212DF0();
  LOBYTE(v10[9]) = 1;
  sub_26B16A518();
  v7 = *(*v5 + 16);
  sub_26B16A6D4(v7);
  v8 = *v5;
  *(v8 + 16) = v7 + 1;
  result = memcpy((v8 + 80 * v7 + 32), v10, 0x49uLL);
  *v5 = v8;
  return result;
}

void *SQL.Interpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v13[5] = sub_26B1E4F84(a2);
  v13[6] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v13[7] = &unk_26B219560;
  v13[8] = v9;
  LOBYTE(v13[9]) = 2;
  sub_26B16A518();
  v10 = *(*v3 + 16);
  sub_26B16A6D4(v10);
  v11 = *v3;
  *(v11 + 16) = v10 + 1;
  result = memcpy((v11 + 80 * v10 + 32), v13, 0x49uLL);
  *v3 = v11;
  return result;
}

uint64_t sub_26B1A828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_26B1A82B0, 0, 0);
}

uint64_t sub_26B1A82B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  v6 = _s15CollectionTableVMa(0, v5, v4[4], a4);
  v7 = sub_26B1E4F84(v5);
  v9 = v8;
  v4[5] = v8;
  v10 = swift_task_alloc();
  v4[6] = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v4;
  v10[1] = sub_26B1A83B8;

  return SQLDatabase.registerFunction<A>(_:named:)(v6, v7, v9, v6, WitnessTable);
}

uint64_t sub_26B1A83B8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B1A84F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26B1A84F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B1A8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_26B2128F0();
    sub_26B2128F0();
    v5 = vars8;
  }

  return sub_26B2128F0();
}

uint64_t sub_26B1A85A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

void sub_26B1A85F4()
{
  if (!qword_2803E7020)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7020);
    }
  }
}

uint64_t sub_26B1A8644(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_26B16BCF8(v12, __src);
  __src[72] = 1;
  sub_26B16A518();
  v8 = *(*a2 + 16);
  sub_26B16A6D4(v8);
  v9 = *a2;
  *(v9 + 16) = v8 + 1;
  memcpy((v9 + 80 * v8 + 32), __src, 0x49uLL);
  *a2 = v9;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_26B1A8710(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26B1A87C0;

  return sub_26B1A828C(a1, a2, v7, v6);
}

uint64_t sub_26B1A87C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_26B1A88B8()
{
  result = qword_2803E7D60;
  if (!qword_2803E7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D60);
  }

  return result;
}

unint64_t sub_26B1A8910()
{
  result = qword_2803E7D68;
  if (!qword_2803E7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D68);
  }

  return result;
}

unint64_t sub_26B1A8968()
{
  result = qword_2803E7D70;
  if (!qword_2803E7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D70);
  }

  return result;
}

unint64_t sub_26B1A89C0()
{
  result = qword_2803E7D78;
  if (!qword_2803E7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D78);
  }

  return result;
}

unint64_t sub_26B1A8A18()
{
  result = qword_2803E7D80;
  if (!qword_2803E7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D80);
  }

  return result;
}

unint64_t sub_26B1A8A70()
{
  result = qword_2803E7D88;
  if (!qword_2803E7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7D88);
  }

  return result;
}

uint64_t sub_26B1A8ADC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_26B1A8B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1A8B7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B1A8BBC(uint64_t result, int a2, int a3)
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

uint64_t sub_26B1A8C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1A8C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1A8CB8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_26B1A8D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1A8D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1A8D90(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_26B1A8558(v0, v3, v1, v2, 0);
}

uint64_t static SQLDatabase.Location.memory()@<X0>(uint64_t *a1@<X8>)
{
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(0xD000000000000040, 0x800000026B21FCB0, 0xFuLL);
  *a1 = v2;
  a1[1] = v3;
  type metadata accessor for SQLDatabase.Location(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static SQLDatabase.Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_27();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v31 - v15);
  sub_26B1A91AC(0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v22 = (v19 - v18 + *(v21 + 56));
  sub_26B1A9210(a1, v19 - v18);
  sub_26B1A9210(a2, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26B1A9210(v20, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v6 + 32))(v10, v22, v4);
      LOBYTE(v23) = sub_26B211E90();
      v24 = *(v6 + 8);
      v24(v10, v4);
      v24(v14, v4);
LABEL_14:
      v27 = type metadata accessor for SQLDatabase.Location;
      goto LABEL_15;
    }

    (*(v6 + 8))(v14, v4);
  }

  else
  {
    sub_26B1A9210(v20, v16);
    v26 = *v16;
    v25 = v16[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v26 == *v22 && v25 == v22[1])
      {

        LOBYTE(v23) = 1;
      }

      else
      {
        v29 = sub_26B213E30();

        v23 = v29 << 31 >> 31;
      }

      goto LABEL_14;
    }
  }

  LOBYTE(v23) = 0;
  v27 = sub_26B1A91AC;
LABEL_15:
  sub_26B1A9274(v20, v27);
  return v23 & 1;
}

void sub_26B1A91AC(uint64_t a1)
{
  if (!qword_2803E7D90)
  {
    type metadata accessor for SQLDatabase.Location(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E7D90);
    }
  }
}

uint64_t sub_26B1A9210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B1A9274(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_27();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SQLDatabase.Location.hash(into:)(uint64_t a1)
{
  v2 = sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  sub_26B1A9210(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v12, v2);
    MEMORY[0x26D671480](1);
    sub_26B1AAA7C(&qword_2803E7D98, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_26B2129A0();
    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    MEMORY[0x26D671480](0);
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }
}

uint64_t SQLDatabase.Location.hashValue.getter()
{
  sub_26B214030();
  SQLDatabase.Location.hash(into:)(v1);
  return sub_26B214070();
}

uint64_t sub_26B1A94C8(uint64_t a1)
{
  sub_26B214030();
  SQLDatabase.Location.hash(into:)(v2);
  return sub_26B214070();
}

uint64_t SQLDatabase.__allocating_init(location:options:)()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_10_10(v1);

  return SQLDatabase.init(location:options:)(v2, v3);
}

uint64_t sub_26B1A95C4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_18();
  v3 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_9_14();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t SQLDatabase.init(location:options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 64) = *(a2 + 8);
  return OUTLINED_FUNCTION_2_13(sub_26B1A96D8, 0);
}

uint64_t sub_26B1A96D8()
{
  v1 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection) = 0;
  v2 = MEMORY[0x277D84F90];
  if (sub_26B16EAD0())
  {
    v3 = sub_26B1AA8E8(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_transactions) = v3;
  *(v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_isDeserialized) = 0;
  *(v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_attachedLocations) = v2;
  v6 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
  _s14ScalarFunctionCMa();
  *(v4 + v6) = sub_26B2128C0();
  v7 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  _s13TableFunctionCMa();
  *(v4 + v7) = sub_26B2128C0();
  sub_26B1A9210(v5, v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_location);
  v8 = v4 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_options;
  v9 = *(v0 + 64);
  *v8 = *(v0 + 56);
  *(v8 + 8) = v9;
  _s10ConnectionCMa();
  swift_allocObject();

  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_26B1A98A0;

  return sub_26B1AC488();
}

uint64_t sub_26B1A98A0()
{
  OUTLINED_FUNCTION_6_18();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v4 + 40) = v1;

  sub_26B1AAA7C(&qword_2803E7DA0, type metadata accessor for SQLDatabase, &protocol conformance descriptor for SQLDatabase);
  swift_getObjectType();
  v8 = sub_26B212F70();
  if (v1)
  {
    v9 = sub_26B1A9AA0;
  }

  else
  {
    *(v4 + 48) = v0;
    v9 = sub_26B1A9A24;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26B1A9A24()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_32();
  sub_26B1A9274(v3, v4);
  *(v2 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection) = v1;

  OUTLINED_FUNCTION_9_14();
  v6 = *(v0 + 24);

  return v5(v6);
}

uint64_t sub_26B1A9AA0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_0_32();
  sub_26B1A9274(v1, v2);
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t SQLDatabase.__allocating_init(of:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  type metadata accessor for SQLDatabase.Location(0);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 101) = *v3;

  return MEMORY[0x2822009F8](sub_26B1A9BA4, 0, 0);
}

uint64_t sub_26B1A9BA4()
{
  OUTLINED_FUNCTION_25();
  static SQLDatabase.Location.memory()(*(v0 + 40));
  *(v0 + 88) = 16777473;
  *(v0 + 92) = 0;
  *(v0 + 95) = 0;
  *(v0 + 99) = 2;
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26B1A9C78;
  v2 = *(v0 + 40);

  return SQLDatabase.init(location:options:)(v2, v0 + 88);
}

uint64_t sub_26B1A9C78()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_18();
  v3 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  *(v5 + 56) = v0;
  *(v5 + 64) = v1;

  if (v1)
  {
    v6 = sub_26B1A9F4C;
    v7 = 0;
  }

  else
  {
    v6 = sub_26B1A9D84;
    v7 = v0;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_26B1A9D84(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v3 + 72) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();
    *(v3 + 100) = *(v3 + 101);

    a1 = sub_26B1A9E10;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1A9E10()
{
  v1 = *(v0 + 64);
  sub_26B1AC110(*(v0 + 16), *(v0 + 24), (v0 + 100));
  *(v0 + 80) = v1;

  sub_26B1AAA7C(&qword_2803E7DA0, type metadata accessor for SQLDatabase, &protocol conformance descriptor for SQLDatabase);
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_26B212F70();
    v4 = v3;
    v5 = sub_26B1AA040;
  }

  else
  {
    swift_retain_n();
    swift_getObjectType();
    v2 = sub_26B212F70();
    v4 = v6;
    v5 = sub_26B1A9FB0;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_26B1A9F4C()
{
  OUTLINED_FUNCTION_25();
  sub_26B14FF4C(*(v0 + 16), *(v0 + 24));

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1A9FB0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  sub_26B14FF4C(v0[2], v0[3]);

  *(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_isDeserialized) = 1;

  OUTLINED_FUNCTION_9_14();
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_26B1AA040()
{
  OUTLINED_FUNCTION_25();
  sub_26B14FF4C(*(v0 + 16), *(v0 + 24));

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1AA0CC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  *(v3 + 24) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();

    a1 = sub_26B1AA150;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1AA150()
{
  v1 = sub_26B1AC2C0();
  *(v0 + 32) = 0;
  v2 = v1;
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_26B1AA21C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t SQLDatabase.deinit()
{
  OUTLINED_FUNCTION_0_32();
  sub_26B1A9274(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{
  SQLDatabase.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B1AA398()
{
  v1 = v0;
  v2 = sub_26B211EF0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  type metadata accessor for SQLDatabase.Location(0);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = (v11 - v10);
  sub_26B1A9210(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v12, v2);
    v13 = sub_26B211E30();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    sub_26B2136C0();

    MEMORY[0x26D670040](v14, v15);

    MEMORY[0x26D670040](0xD000000000000019, 0x800000026B21FEA0);
    return 0x3A656C6966;
  }

  return v13;
}

uint64_t SQLColumnName.rawValue.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t SQLColumnName.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}