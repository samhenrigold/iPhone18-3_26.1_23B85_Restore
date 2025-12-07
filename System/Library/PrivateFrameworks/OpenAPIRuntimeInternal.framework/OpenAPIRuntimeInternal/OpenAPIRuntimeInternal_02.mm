double sub_25DD185F4@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  sub_25DD11258();
  sub_25DD97304();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    result = *&v8;
    *(a3 + 16) = v8;
    *(a3 + 32) = v9;
  }

  return result;
}

uint64_t sub_25DD186B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v5;
  a2[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  sub_25DD97304();
  if (v2)
  {
  }

  else
  {
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a2, 0, 1, TupleTypeMetadata2);
  }
}

uint64_t sub_25DD187C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25DD18808()
{
  result = qword_27FCC4980[0];
  if (!qword_27FCC4980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4980);
  }

  return result;
}

uint64_t sub_25DD1885C(uint64_t a1, int a2)
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

uint64_t sub_25DD188A4(uint64_t result, int a2, int a3)
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

unint64_t sub_25DD188F0()
{
  result = qword_27FCC4B10[0];
  if (!qword_27FCC4B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4B10);
  }

  return result;
}

unint64_t sub_25DD1894C()
{
  result = qword_27FCC4C20;
  if (!qword_27FCC4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC4C20);
  }

  return result;
}

unint64_t sub_25DD189A4()
{
  result = qword_27FCC4C28[0];
  if (!qword_27FCC4C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4C28);
  }

  return result;
}

uint64_t sub_25DD18A0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25DD18AA4();
  result = MEMORY[0x25F8A3490](v2, &type metadata for StringKey, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_25DD15E34(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_25DD18AA4()
{
  result = qword_27FCC4CB0[0];
  if (!qword_27FCC4CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC4CB0);
  }

  return result;
}

void __swiftcall ISO8601DateTranscoder.init(options:)(OpenAPIRuntimeInternal::ISO8601DateTranscoder *__return_ptr retstr, NSISO8601DateFormatOptions_optional options)
{
  is_nil = options.is_nil;
  value = options.value;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v6 = v5;
  if (!is_nil)
  {
    [(objc_class *)v5 setFormatOptions:value];
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = sub_25DD96B14();
  [v7 setName_];

  retstr->lock.super.isa = v7;
  retstr->locked_formatter.super.super.isa = v6;
}

uint64_t ISO8601DateTranscoder.encode(_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  [*v0 lock];
  v3 = sub_25DD96794();
  v4 = [v2 stringFromDate_];

  v5 = sub_25DD96B24();
  [v1 unlock];
  return v5;
}

id ISO8601DateTranscoder.decode(_:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_25DD967C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = *(v3 + 8);
  [v10 lock];
  v11 = sub_25DD96B14();
  v12 = [v9 dateFromString_];

  if (v12)
  {
    sub_25DD967B4();

    (*(v6 + 32))(a3, v8, v5);
  }

  else
  {
    v13 = sub_25DD97194();
    swift_allocError();
    v15 = v14;
    sub_25DD97174();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84168], v13);
    swift_willThrow();
  }

  return [v10 unlock];
}

uint64_t sub_25DD18E5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  [*v0 lock];
  v3 = sub_25DD96794();
  v4 = [v2 stringFromDate_];

  v5 = sub_25DD96B24();
  [v1 unlock];
  return v5;
}

void static DateTranscoder<>.iso8601.getter(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v4 = sub_25DD96B14();
  [v3 setName_];

  *a1 = v3;
  a1[1] = v2;
}

void static DateTranscoder<>.iso8601WithFractionalSeconds.getter(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v2 setFormatOptions_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v4 = sub_25DD96B14();
  [v3 setName_];

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25DD1906C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_25DD1913C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  sub_25DD08A7C(a1, v14);
  v10 = swift_allocObject();
  sub_25DCFE2FC(v14, v10 + 16);
  *a6 = a3;
  a6[1] = v10;
  v11 = *a4;
  v12 = a5(0);
  return (*(*(v12 - 8) + 104))(a6, v11, v12);
}

BOOL sub_25DD1929C(void *a1, uint64_t *a2)
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

void *sub_25DD192CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_25DD192F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_25DD193E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t Configuration.dateTranscoder.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_25DCFE2FC(a1, v1);
}

uint64_t Configuration.multipartBoundaryGenerator.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_25DCFE2FC(a1, v1 + 48);
}

double sub_25DD19550@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_25DD19594(void *a1@<X8>)
{
  a1[3] = &type metadata for ISO8601DateTranscoder;
  a1[4] = &protocol witness table for ISO8601DateTranscoder;
  static DateTranscoder<>.iso8601.getter(a1);
}

void *sub_25DD195B8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for RandomMultipartBoundaryGenerator;
  a1[4] = &protocol witness table for RandomMultipartBoundaryGenerator;
  v2 = swift_allocObject();
  *a1 = v2;
  return static MultipartBoundaryGenerator<>.random.getter((v2 + 16));
}

uint64_t Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 88) = 0u;
  v9 = a5 + 88;
  sub_25DCFE2FC(a1, a5);
  *(a5 + 40) = v8;
  sub_25DCFE2FC(a3, a5 + 48);

  return sub_25DD198F0(a4, v9);
}

uint64_t sub_25DD1968C(uint64_t a1, void *a2)
{
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  result = (*(v7 + 8))(a1, v6, v7);
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_25DD979D4();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_25DD97674();

    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

void *sub_25DD1977C(void *a1)
{
  v3 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v5 = sub_25DD975E4();
    v7 = v6;
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v10 = v5;
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    (*(v9 + 16))(v10, v7, v8, v9);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t sub_25DD19880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2358, &qword_25DD996F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD198F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2358, &qword_25DD996F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25DD19964()
{
  result = qword_27FCC2360;
  if (!qword_27FCC2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2360);
  }

  return result;
}

unint64_t sub_25DD199BC()
{
  result = qword_28155E9B8;
  if (!qword_28155E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155E9B8);
  }

  return result;
}

unint64_t sub_25DD19A14()
{
  result = qword_28155E9C0[0];
  if (!qword_28155E9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28155E9C0);
  }

  return result;
}

unint64_t sub_25DD19A6C()
{
  result = qword_28155E9B0;
  if (!qword_28155E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155E9B0);
  }

  return result;
}

uint64_t sub_25DD19B10(uint64_t *a1, int a2)
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

uint64_t sub_25DD19B58(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JSONEncodingOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for JSONEncodingOptions(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal11CustomCoder_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25DD19C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_25DD19CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25DD19DB8(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_25DD19E0C(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_25DD19E60(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t Converter.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25DD964B4();
  MEMORY[0x28223BE20](v4 - 8);
  v14 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_25DD96554();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_25DD96534();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD19D54(a1, a2);
  sub_25DD96594();
  swift_allocObject();
  a2[16] = sub_25DD96584();
  v15 = *(a1 + 40);

  sub_25DD1A1D4(&v15, v11);
  sub_25DD96544();
  sub_25DD190C4(a1, v8);
  sub_25DD96564();

  swift_allocObject();
  a2[18] = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25DD999D0;

  sub_25DD96504();
  sub_25DD96524();
  v15 = v12;
  sub_25DD1A614(&qword_28155EA60, MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  sub_25DD190C4(a1, v8);
  sub_25DD96564();

  sub_25DD964F4();
  swift_allocObject();
  a2[17] = sub_25DD964E4();

  sub_25DD19100(a1, v14);
  sub_25DD964C4();

  return sub_25DD1A5C0(a1);
}

uint64_t sub_25DD1A1D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25DD96534();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v20 = 0;
  sub_25DD1A614(&qword_28155EA58, MEMORY[0x277CC8738]);
  sub_25DD97A44();
  v9 = *sub_25DD19204();
  v19 = v8;
  v20 = v9;
  sub_25DD199BC();
  v10 = sub_25DD97084();
  v17 = v8;
  if (v10)
  {
    sub_25DD96514();
    sub_25DD1A614(&qword_28155EA68, MEMORY[0x277CC8728]);
    sub_25DD96D04();
    v11 = *(v5 + 8);
    v11(a2, v4);
    sub_25DD96D04();
    v20 = v18 | v19;
    sub_25DD97A44();
    v11(v7, v4);
    v8 = v17;
  }

  v12 = *sub_25DD1921C();
  v19 = v8;
  v20 = v12;
  if (sub_25DD97084())
  {
    sub_25DD96504();
    sub_25DD1A614(&qword_28155EA68, MEMORY[0x277CC8728]);
    sub_25DD96D04();
    v13 = *(v5 + 8);
    v13(a2, v4);
    sub_25DD96D04();
    v20 = v18 | v19;
    sub_25DD97A44();
    v13(v7, v4);
    v8 = v17;
  }

  v14 = *sub_25DD19234();
  v19 = v8;
  v20 = v14;
  result = sub_25DD97084();
  if (result)
  {
    sub_25DD96524();
    sub_25DD1A614(&qword_28155EA68, MEMORY[0x277CC8728]);
    sub_25DD96D04();
    v16 = *(v5 + 8);
    v16(a2, v4);
    sub_25DD96D04();
    v20 = v18 | v19;
    sub_25DD97A44();
    return (v16)(v7, v4);
  }

  return result;
}

unint64_t sub_25DD1A55C()
{
  result = qword_28155E9A8;
  if (!qword_28155E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2370, &unk_25DD9A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155E9A8);
  }

  return result;
}

uint64_t sub_25DD1A614(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25DD96534();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25DD1A68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_25DD1A6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Converter.setAcceptHeader<A>(in:contentTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25DD969E4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x25F8A2FF0](v7);
  KeyPath = swift_getKeyPath();
  type metadata accessor for AcceptHeaderContentType(255, a3, a4, v9);
  v10 = sub_25DD96D84();
  WitnessTable = swift_getWitnessTable();
  sub_25DCFEA90(sub_25DD1A914, KeyPath, v10, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  sub_25DD96AD4();

  return sub_25DD96834();
}

uint64_t sub_25DD1A8D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for AcceptHeaderContentType(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  result = AcceptHeaderContentType.rawValue.getter(v5);
  *a4 = result;
  a4[1] = v7;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Converter.renderedPath(template:parameters:)(Swift::String a1, Swift::OpaquePointer parameters)
{
  v4 = v3;
  v5 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2378, &qword_25DD99AB8);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - v9;
  sub_25DD08A7C(v5, v39);

  sub_25DD6FC30(0, 0, 0, v39, &v40);
  v10 = sub_25DD83CF4(&v40, v42);
  v12 = *(parameters._rawValue + 2);
  if (v12)
  {
    v13 = 0;
    v14 = parameters._rawValue + 32;
    v32 = *(parameters._rawValue + 2);
    v30 = parameters._rawValue + 32;
    while (2)
    {
      v34 = object;
      v15 = &v14[40 * v13];
      while (1)
      {
        if (v13 >= v12)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (__OFADD__(v13, 1))
        {
          goto LABEL_17;
        }

        v16 = *(v15 + 3);
        v17 = *(v15 + 4);
        v18 = __swift_project_boxed_opaque_existential_1(v15, v16);
        v19 = v42;
        v20 = sub_25DD83D3C(v18, 0, 0xE000000000000000, v16, v17);
        if (v4)
        {

          sub_25DD1ACC8(v42);
          goto LABEL_15;
        }

        v22 = v21;
        v31 = v20;
        v36 = v13 + 1;
        v43 = 0;
        v40 = countAndFlagsBits;
        v41 = v34;
        *&v39[0] = 32123;
        *(&v39[0] + 1) = 0xE200000000000000;
        v23 = sub_25DD967D4();
        v24 = v33;
        (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
        sub_25DD07E24();

        sub_25DD96FE4();
        v26 = v25;
        sub_25DD114CC(v24, &qword_27FCC2378, &qword_25DD99AB8);

        if ((v26 & 1) == 0)
        {
          break;
        }

        ++v13;
        v15 += 40;
        v12 = v32;
        v4 = v43;
        if (v36 == v32)
        {
          v19 = v34;
          goto LABEL_14;
        }
      }

      v40 = countAndFlagsBits;
      v41 = v34;
      v38 = v22;
      *&v39[0] = 32123;
      *(&v39[0] + 1) = 0xE200000000000000;
      v37 = v31;
      countAndFlagsBits = sub_25DD96FA4();
      v19 = v27;

      v13 = v36;
      object = v19;
      v12 = v32;
      v4 = v43;
      v14 = v30;
      if (v36 != v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = object;
  }

LABEL_14:
  sub_25DD1ACC8(v42);
LABEL_15:
  v10 = countAndFlagsBits;
  v11 = v19;
LABEL_18:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

unint64_t Converter.setQueryItemAsURI<A>(in:style:explode:name:value:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a2;
  v10 = a7;
  v11 = a8;
  v12 = a4;
  v13 = a5;
  return sub_25DD23C44(a1, &v14, a3, a4, a5, a6, sub_25DD1AD70, v9, a7);
}

uint64_t sub_25DD1AD70(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  v7 = v3[6];
  v9 = *a2;
  return sub_25DD20C98(&v9, a3, 0, v6, v7, a1, v4, v5);
}

uint64_t Converter.setOptionalRequestBodyAsBinary(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v7 = type metadata accessor for HTTPBody();
  return sub_25DD24A94(&v9, a2, a3, a4, sub_25DD1AF74, 0, v7);
}

uint64_t Converter.setRequiredRequestBodyAsBinary(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  type metadata accessor for HTTPBody();
  return sub_25DD2496C(&v8, a2, a3, a4, sub_25DD1C6DC);
}

uint64_t Converter.setOptionalRequestBodyAsURLEncodedForm<A>(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v24 = a4;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = *(a5 - 8);
  (*(v15 + 16))(&v23 - v13, a1, a5);
  (*(v15 + 56))(v14, 0, 1, a5);
  sub_25DD1C360(v6, v25);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v25[7];
  *(v16 + 128) = v25[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v25[8];
  *(v16 + 176) = v26;
  v18 = v25[3];
  *(v16 + 64) = v25[2];
  *(v16 + 80) = v18;
  v19 = v25[5];
  *(v16 + 96) = v25[4];
  *(v16 + 112) = v19;
  v20 = v25[1];
  *(v16 + 32) = v25[0];
  *(v16 + 48) = v20;
  v21 = sub_25DD24A94(v14, a2, v23, v24, sub_25DD1C5AC, v16, a5);
  (*(v12 + 8))(v14, v11);

  return v21;
}

uint64_t sub_25DD1B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_25DD1C360(v9, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v24[7];
  *(v16 + 128) = v24[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v24[8];
  *(v16 + 176) = v25;
  v18 = v24[3];
  *(v16 + 64) = v24[2];
  *(v16 + 80) = v18;
  v19 = v24[5];
  *(v16 + 96) = v24[4];
  *(v16 + 112) = v19;
  v20 = v24[1];
  *(v16 + 32) = v24[0];
  *(v16 + 48) = v20;
  v21 = a9(a1, a2, a3, a4, a8, v16, a5);

  return v21;
}

uint64_t Converter.setRequiredRequestBodyAsMultipart<A>(_:headerFields:contentType:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:encoding:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *a1;
  v16 = v11[9];
  v17 = v11[10];
  __swift_project_boxed_opaque_existential_1(v11 + 6, v16);
  (*(v17 + 8))(v16, v17);
  MEMORY[0x25F8A3200]();
  v23[1] = a4;

  MEMORY[0x25F8A3200](0x61646E756F62203BLL, 0xEB000000003D7972);

  v23[0] = a1;
  type metadata accessor for MultipartBody(0, *(v15 + 80), v18, v19);
  v20 = sub_25DD2496C(v23, a2, a3, a4, sub_25DD1B504);

  return v20;
}

uint64_t sub_25DD1B504(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *a1;

  sub_25DD6BA30(v2, v3, v4, v5, v6, v14);
  v12 = sub_25DD21DA0(v11, v14, v7, v8, v9, v10);
  v18 = v14[1];
  sub_25DD114CC(&v18, &qword_27FCC2380, &qword_25DD9E8F0);
  v17 = v14[2];
  sub_25DD114CC(&v17, &qword_27FCC2380, &qword_25DD9E8F0);
  v16 = v14[3];
  sub_25DD114CC(&v16, &qword_27FCC2380, &qword_25DD9E8F0);
  v15 = v14[4];
  sub_25DD114CC(&v15, &qword_27FCC2380, &qword_25DD9E8F0);
  return v12;
}

uint64_t Converter.getResponseBodyAsJSON<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1B670, 0, 0);
}

uint64_t sub_25DD1B670()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 224);
    v17 = *(v0 + 208);
    sub_25DD1C360(*(v0 + 232), v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = v17;
    v4 = *(v0 + 128);
    *(v3 + 136) = *(v0 + 112);
    *(v3 + 152) = v4;
    *(v3 + 168) = *(v0 + 144);
    v5 = *(v0 + 64);
    *(v3 + 72) = *(v0 + 48);
    *(v3 + 88) = v5;
    v6 = *(v0 + 96);
    *(v3 + 104) = *(v0 + 80);
    *(v3 + 120) = v6;
    v7 = *(v0 + 32);
    *(v3 + 40) = *(v0 + 16);
    *(v0 + 240) = v3;
    *(v3 + 32) = v2;
    *(v3 + 184) = *(v0 + 160);
    *(v3 + 56) = v7;

    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_25DD1B858;
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);

    return sub_25DD25940(v12, v13, v1, v10, v11, &unk_25DD99AE8, v3, v9);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0;
    *(v15 + 48) = 20;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_25DD1B858()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_25DD1C6F4;
  }

  else
  {

    v2 = sub_25DD1C6D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD1B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1C68C;

  return sub_25DD20E68(a1, a2, a4, a6);
}

uint64_t Converter.getResponseBodyAsXML<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1BA70, 0, 0);
}

uint64_t sub_25DD1BA70()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 224);
    v17 = *(v0 + 208);
    sub_25DD1C360(*(v0 + 232), v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = v17;
    v4 = *(v0 + 128);
    *(v3 + 136) = *(v0 + 112);
    *(v3 + 152) = v4;
    *(v3 + 168) = *(v0 + 144);
    v5 = *(v0 + 64);
    *(v3 + 72) = *(v0 + 48);
    *(v3 + 88) = v5;
    v6 = *(v0 + 96);
    *(v3 + 104) = *(v0 + 80);
    *(v3 + 120) = v6;
    v7 = *(v0 + 32);
    *(v3 + 40) = *(v0 + 16);
    *(v0 + 240) = v3;
    *(v3 + 32) = v2;
    *(v3 + 184) = *(v0 + 160);
    *(v3 + 56) = v7;

    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_25DD1BC58;
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);

    return sub_25DD25940(v12, v13, v1, v10, v11, dword_25DD99AD8, v3, v9);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v15 = 3;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0;
    *(v15 + 48) = 20;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_25DD1BC58()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_25DD1BDD8;
  }

  else
  {

    v2 = sub_25DD1BD74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD1BD74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD1BDD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD1BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1BF14;

  return sub_25DD2117C(a1, a2, a4, a6);
}

uint64_t sub_25DD1BF14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Converter.getResponseBodyAsBinary<A>(_:from:transforming:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = v6;
    v7 = type metadata accessor for HTTPBody();

    sub_25DD25CBC(a1, a2, sub_25DD1C144, v10, sub_25DD1C170, 0, v7);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0;
    *(v9 + 48) = 20;
    return swift_willThrow();
  }
}

uint64_t Converter.getResponseBodyAsMultipart<A, B>(_:from:transforming:boundary:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:decoding:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {

    sub_25DD6BA30(a7 & 1, a8, a9, a10, a11, v23);
    v19 = sub_25DD2267C(a2, a5, a6, v23, a12, a13, *(a1 + 80));
    v27 = v23[1];
    sub_25DD114CC(&v27, &qword_27FCC2380, &qword_25DD9E8F0);
    v26 = v23[2];
    sub_25DD114CC(&v26, &qword_27FCC2380, &qword_25DD9E8F0);
    v25 = v23[3];
    sub_25DD114CC(&v25, &qword_27FCC2380, &qword_25DD9E8F0);
    v24 = v23[4];
    sub_25DD114CC(&v24, &qword_27FCC2380, &qword_25DD9E8F0);
    a3(v19);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0;
    *(v21 + 48) = 20;
    return swift_willThrow();
  }
}

uint64_t sub_25DD1C3BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1BF14;

  return sub_25DD1BE48(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_25DD1C4E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1B974(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t objectdestroy_15Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  if (v0[18])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  }

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

double Converter.extractContentTypeIfPresent(in:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_25DD969E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FC0](v4);
  v7 = MEMORY[0x25F8A2E40](v6);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    OpenAPIMIMEType.init(_:)(v7, v9, a1);
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t *Converter.bestContentType(received:options:)(uint64_t *result, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = result[5];
    if (v3)
    {
      v4 = result[4] == 1;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      v2 = a2[4];

      return v2;
    }

    v48 = result[4];
    v6 = *result;
    v5 = result[1];
    v8 = result[2];
    v7 = result[3];
    v52 = result[5];
    sub_25DD1CC84(*result, v5, v8, v7, v48, v3);
    v50 = v6;
    v51 = v8;
    v53 = v5;
    v54 = v7;
    sub_25DD0C654(v6, v5, v8, v7, 1);
    v71 = MEMORY[0x277D84F90];
    sub_25DD1D600(0, v2, 0);
    v10 = v71;
    v11 = a2 + 5;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      swift_bridgeObjectRetain_n();
      OpenAPIMIMEType.init(_:)(v12, v13, &v65);
      v14 = v70;
      if (!v70)
      {

        sub_25DD01034();
        swift_allocError();
        *v28 = v12;
        *(v28 + 8) = v13;
        *(v28 + 48) = 2;
        swift_willThrow();
        sub_25DCFFC50(v50, v53, v51, v54, v48, v52);

        return v2;
      }

      v61 = v12;
      v63 = v2;
      v15 = v68;
      v16 = v69;
      v18 = v66;
      v17 = v67;
      v19 = v10;
      v20 = v65;
      v21 = sub_25DD0A7F8(v50, v53, v51, v54, v52, &v65);
      v57 = v22;
      v59 = v21;
      v55 = v23;
      v24 = v20;
      v10 = v19;
      sub_25DCFFC50(v24, v18, v17, v15, v16, v14);
      v71 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_25DD1D600((v25 > 1), v26 + 1, 1);
        v10 = v71;
      }

      *(v10 + 16) = v26 + 1;
      v27 = v10 + 40 * v26;
      *(v27 + 32) = v61;
      *(v27 + 40) = v13;
      *(v27 + 48) = v59;
      *(v27 + 56) = v57;
      *(v27 + 64) = v55;
      v11 += 2;
      v2 = v63 - 1;
    }

    while (v63 != 1);
    v2 = *(v10 + 32);
    v29 = *(v10 + 40);
    v31 = *(v10 + 48);
    v30 = *(v10 + 56);
    v32 = *(v10 + 64);

    sub_25DD1D620(v31, v30, v32);

    if (!v26)
    {
LABEL_24:

      if (v32)
      {
        sub_25DD1D630(v31, v30, v32);
        sub_25DCFFC50(v50, v53, v51, v54, v48, v52);
      }

      else
      {
        sub_25DD1D630(v31, v30, 0);
        sub_25DD01034();
        swift_allocError();
        v39 = v29;
        v41 = v40;
        v65 = v50;
        v66 = v53;
        v67 = v51;
        v68 = v54;
        LOBYTE(v69) = 1;
        v70 = v52;
        sub_25DD0D160();
        v42 = sub_25DD97374();
        v44 = v43;
        sub_25DCFFC90(v65, v66, v67, v68, v69);

        *v41 = v2;
        *(v41 + 8) = v39;
        *(v41 + 16) = v42;
        *(v41 + 24) = v44;
        *(v41 + 48) = 10;
        swift_willThrow();
      }

      return v2;
    }

    v46 = v26;
    v47 = v2;
    v60 = v31;
    v62 = v30;
    v64 = v32;
    v33 = v10 + 64;
    v56 = v29;
    v58 = v26 + 1;
    v34 = 1;
    v45 = v10 + 64;
    v49 = v10;
LABEL_16:
    v35 = (v33 + 40 * v34);
    while (v34 < *(v10 + 16))
    {
      v2 = *(v35 - 4);
      v36 = *(v35 - 3);
      v31 = *(v35 - 2);
      v30 = *(v35 - 1);
      v37 = v34 + 1;
      v32 = *v35;

      sub_25DD1D620(v31, v30, v32);
      v38 = sub_25DD0A47C(v60, v62, v64);
      if (v38 < sub_25DD0A47C(v31, v30, v32))
      {

        result = sub_25DD1D630(v60, v62, v64);
        v64 = v32;
        v60 = v31;
        v62 = v30;
        v56 = v36;
        v47 = v2;
        v33 = v45;
        v4 = v46 == v34++;
        v10 = v49;
        v29 = v36;
        if (v4)
        {
          goto LABEL_24;
        }

        goto LABEL_16;
      }

      result = sub_25DD1D630(v31, v30, v32);
      v35 += 40;
      ++v34;
      v4 = v58 == v37;
      v10 = v49;
      if (v4)
      {
        v2 = v47;
        v29 = v56;
        v31 = v60;
        v30 = v62;
        v32 = v64;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD1CC84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_25DD0C654(result, a2, a3, a4, a5);
  }

  return result;
}

void Converter.verifyContentTypeIfPresent(in:matches:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FC0](v8);
  v11 = MEMORY[0x25F8A2E40](v10);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v13)
  {
    OpenAPIMIMEType.init(_:)(v11, v13, &v28);
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = v33;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v34 = v31;
    v21 = v32;
    v26 = v32;
    v27 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DD98100;
    *(inited + 32) = a2;
    v19 = inited + 32;
    *(inited + 40) = a3;

    Converter.bestContentType(received:options:)(&v22, inited);
    if (v3)
    {
      sub_25DCFFC50(v14, v15, v16, v34, v21, v17);
      swift_setDeallocating();
      sub_25DD1D640(v19);
    }

    else
    {

      swift_setDeallocating();
      sub_25DD1D640(v19);
      sub_25DCFFC50(v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t Converter.extractContentDispositionNameAndFilename(in:)()
{
  v0 = sub_25DD969E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FE0](v2);
  MEMORY[0x25F8A2E40](v4);
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (!v6)
  {
    return 0;
  }

  v7 = sub_25DD04144();
  if (!v9)
  {
    return 0;
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = sub_25DD03BDC(v7, v8, v9);
  sub_25DD03DA4(v10, v11, v12);

  return v13;
}

uint64_t Converter.setHeaderFieldAsURI<A>(in:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v9 = sub_25DD96F04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - v15;
  v17 = *(a5 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v16, a4, v9);
  if ((*(v17 + 48))(v16, 1, a5) == 1)
  {
    return (*(v10 + 8))(v16, v9);
  }

  (*(v17 + 32))(v19, v16, a5);
  (*(v17 + 16))(v13, v19, a5);
  v21 = (*(v17 + 56))(v13, 0, 1, a5);
  MEMORY[0x28223BE20](v21);
  v23 = v24;
  v22 = v25;
  *(&v24 - 4) = a5;
  *(&v24 - 3) = v23;
  *(&v24 - 2) = v6;
  sub_25DD23308(v22, v26, v27, v13, sub_25DD1D694, (&v24 - 6), a5);
  (*(v10 + 8))(v13, v9);
  return (*(v17 + 8))(v19, a5);
}

uint64_t Converter.setHeaderFieldAsJSON<A>(in:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_25DD1C360(v6, v19);
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v14 = v19[7];
  *(v13 + 128) = v19[6];
  *(v13 + 144) = v14;
  *(v13 + 160) = v19[8];
  *(v13 + 176) = v20;
  v15 = v19[3];
  *(v13 + 64) = v19[2];
  *(v13 + 80) = v15;
  v16 = v19[5];
  *(v13 + 96) = v19[4];
  *(v13 + 112) = v16;
  v17 = v19[1];
  *(v13 + 32) = v19[0];
  *(v13 + 48) = v17;
  sub_25DD23308(a1, a2, a3, a4, sub_25DD1D77C, v13, a5);
}

uint64_t sub_25DD1D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_25DD1C360(v9, v23);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v23[7];
  *(v16 + 128) = v23[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v23[8];
  *(v16 + 176) = v24;
  v18 = v23[3];
  *(v16 + 64) = v23[2];
  *(v16 + 80) = v18;
  v19 = v23[5];
  *(v16 + 96) = v23[4];
  *(v16 + 112) = v19;
  v20 = v23[1];
  *(v16 + 32) = v23[0];
  *(v16 + 48) = v20;
  a9(a1, a2, a3, a4, a8, v16, a5);
}

void *sub_25DD1D600(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25DD1D7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25DD1D620(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_25DD03828(a1, a2);
  }

  return a1;
}

uint64_t sub_25DD1D630(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_25DD07C8C(a1, a2);
  }

  return a1;
}

uint64_t sub_25DD1D694(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = 1;
  return sub_25DD20C98(&v5, 0, 0, 0, 0xE000000000000000, a1, v2, v3);
}

uint64_t sub_25DD1D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = 1;
  return sub_25DD20D80(&v8, 0, 0, 0, 0xE000000000000000, a1, a2, a3, a4, v5, v6);
}

void *sub_25DD1D7A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2388, &qword_25DD99AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2390, &qword_25DD99AF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t Converter.extractAcceptHeaderIfPresent<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FF0](v8);
  v11 = MEMORY[0x25F8A2E40](v10);
  v13 = v12;
  v14 = (*(v7 + 8))(v10, v6);
  if (!v13)
  {
    return static AcceptHeaderContentType.defaultValues.getter(a2, a3);
  }

  v56 = a2;
  v58[0] = 44;
  v58[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  *(&v54 - 2) = v58;
  v15 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07CA0, (&v54 - 4), v11, v13, &v54);
  v54 = v3;
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v55 = a3;
  if (v16)
  {
    v58[0] = MEMORY[0x277D84F90];
    v18 = v15;
    sub_25DD055C4(0, v16, 0);
    result = v18;
    v20 = 0;
    v21 = v58[0];
    v22 = (v18 + 56);
    v57 = v18;
    do
    {
      if (v20 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v24 = *(v22 - 3);
      v23 = *(v22 - 2);
      v26 = *(v22 - 1);
      v25 = *v22;

      v27 = MEMORY[0x25F8A3180](v24, v23, v26, v25);
      v29 = v28;

      v58[0] = v21;
      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_25DD055C4((v30 > 1), v31 + 1, 1);
        v21 = v58[0];
      }

      ++v20;
      *(v21 + 16) = v31 + 1;
      v32 = v21 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      v22 += 4;
      result = v57;
    }

    while (v16 != v20);

    a3 = v55;
    v33 = v56;
    v17 = MEMORY[0x277D84F90];
    v34 = *(v21 + 16);
    if (!v34)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v21 = MEMORY[0x277D84F90];
  v33 = v56;
  v34 = *(MEMORY[0x277D84F90] + 16);
  if (v34)
  {
LABEL_9:
    v58[0] = v17;
    sub_25DD055C4(0, v34, 0);
    v33 = v56;
    v35 = v58[0];
    v36 = (v21 + 40);
    do
    {
      v38 = *(v36 - 1);
      v37 = *v36;

      v39 = sub_25DD279B4(v38, v37);
      v41 = v40;

      v58[0] = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_25DD055C4((v42 > 1), v43 + 1, 1);
        v33 = v56;
        v35 = v58[0];
      }

      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v36 += 2;
      --v34;
    }

    while (v34);

    a3 = v55;
    goto LABEL_17;
  }

LABEL_16:

  v35 = MEMORY[0x277D84F90];
LABEL_17:
  v58[0] = v35;
  MEMORY[0x28223BE20](v45);
  *(&v54 - 2) = v33;
  *(&v54 - 1) = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  v48 = type metadata accessor for AcceptHeaderContentType(0, v33, a3, v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v50 = sub_25DD1FFCC();
  v51 = v54;
  v52 = sub_25DCFEA90(sub_25DD1FFAC, (&v54 - 4), v46, v48, v49, v50, MEMORY[0x277D84950], &v59);
  if (v51)
  {
  }

  v53 = v52;

  return v53;
}

uint64_t sub_25DD1DD50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a4;
  v20 = a5;
  v8 = type metadata accessor for AcceptHeaderContentType(255, a2, a3, a4);
  v9 = sub_25DD96F04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v14 = *a1;
  v13 = a1[1];

  AcceptHeaderContentType.init(rawValue:)(v14, v13, a2, a3, v12);
  v15 = *(v8 - 8);
  if ((*(v15 + 48))(v12, 1, v8) != 1)
  {
    return (*(v15 + 32))(v20, v12, v8);
  }

  (*(v10 + 8))(v12, v9);
  sub_25DD01034();
  v16 = swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v13;
  *(v17 + 48) = 12;
  swift_willThrow();
  *v21 = v16;
}

void Converter.validateAcceptIfPresent(_:in:)(uint64_t a1, unint64_t a2)
{
  v103 = a2;
  v104 = a1;
  v111 = sub_25DD965E4();
  v3 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25DD969E4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FF0](v7);
  v10 = MEMORY[0x25F8A2E40](v9);
  v12 = v11;
  v13 = (*(v6 + 8))(v9, v5);
  if (!v12)
  {
    v102 = v2;
    return;
  }

  *&v116 = 44;
  *(&v116 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v13);
  *(&v101 - 2) = &v116;

  v101 = v12;
  v14 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07E7C, (&v101 - 4), v10, v12, &v122);
  v102 = v2;
  v15 = *(v14 + 16);
  v112 = v10;
  if (v15)
  {
    v121 = MEMORY[0x277D84F90];
    v16 = v14;
    sub_25DD055C4(0, v15, 0);
    v17 = v16;
    v18 = 0;
    v19 = v121;
    *(&v108 + 1) = v16;
    v109 = v16 + 32;
    v107 = (v3 + 8);
    *&v108 = v15;
    while (1)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        return;
      }

      v113 = v18;
      v114 = v19;
      v20 = (v109 + 32 * v18);
      v21 = *v20;
      v22 = *v20 >> 14;
      v23 = v20[1] >> 14;

      v24 = MEMORY[0x277D84F90];
      if (v22 == v23)
      {
        goto LABEL_31;
      }

      *v115 = MEMORY[0x277D84F90];
      v25 = v21;
      while (1)
      {
        *&v115[8] = v25;
LABEL_10:
        if (sub_25DD96F44() != 59 || v29 != 0xE100000000000000)
        {
          break;
        }

LABEL_16:
        if (*&v115[8] >> 14 != v22)
        {
          if (v22 < *&v115[8] >> 14)
          {
            goto LABEL_81;
          }

          v31 = sub_25DD96F64();
          v33 = v32;
          v105 = v35;
          v106 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v115[8] = v33;
          if (isUniquelyReferenced_nonNull_native)
          {
            v37 = *v115;
          }

          else
          {
            v37 = sub_25DD05434(0, *(*v115 + 16) + 1, 1, *v115);
          }

          v39 = *(v37 + 2);
          v38 = *(v37 + 3);
          if (v39 >= v38 >> 1)
          {
            v37 = sub_25DD05434((v38 > 1), v39 + 1, 1, v37);
          }

          *(v37 + 2) = v39 + 1;
          *v115 = v37;
          v26 = &v37[32 * v39];
          v27 = *&v115[8];
          *(v26 + 4) = v31;
          *(v26 + 5) = v27;
          v28 = v105;
          *(v26 + 6) = v106;
          *(v26 + 7) = v28;
        }

        v25 = sub_25DD96F24();
        v22 = v25 >> 14;
        if (v25 >> 14 == v23)
        {
          goto LABEL_23;
        }
      }

      v30 = sub_25DD975D4();

      if (v30)
      {
        goto LABEL_16;
      }

      v22 = sub_25DD96F24() >> 14;
      if (v22 != v23)
      {
        goto LABEL_10;
      }

      v25 = *&v115[8];
LABEL_23:
      if (v25 >> 14 == v23)
      {

        v24 = *v115;
        goto LABEL_31;
      }

      if (v23 < v25 >> 14)
      {
        goto LABEL_82;
      }

      v40 = sub_25DD96F64();
      v42 = v41;
      v44 = v43;
      v46 = v45;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v24 = *v115;
      }

      else
      {
        v24 = sub_25DD05434(0, *(*v115 + 16) + 1, 1, *v115);
      }

      v48 = *(v24 + 2);
      v47 = *(v24 + 3);
      if (v48 >= v47 >> 1)
      {
        v24 = sub_25DD05434((v47 > 1), v48 + 1, 1, v24);
      }

      *(v24 + 2) = v48 + 1;
      v49 = &v24[32 * v48];
      *(v49 + 4) = v40;
      *(v49 + 5) = v42;
      *(v49 + 6) = v44;
      *(v49 + 7) = v46;
LABEL_31:
      if (!*(v24 + 2))
      {
        goto LABEL_80;
      }

      *&v115[8] = *(v24 + 2);
      v51 = *(v24 + 6);
      v50 = *(v24 + 7);

      v116 = *&v115[8];
      v117 = v51;
      v118 = v50;
      v52 = v110;
      sub_25DD965C4();
      sub_25DD07CBC();
      sub_25DD96F94();
      (*v107)(v52, v111);

      v53 = sub_25DD96B54();
      v55 = v54;

      v19 = v114;
      v121 = v114;
      v57 = *(v114 + 16);
      v56 = *(v114 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_25DD055C4((v56 > 1), v57 + 1, 1);
        v19 = v121;
      }

      v10 = v112;
      v18 = v113 + 1;
      *(v19 + 16) = v57 + 1;
      v58 = v19 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
      v17 = *(&v108 + 1);
      if (v18 == v108)
      {

        goto LABEL_39;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_39:
  v59 = v103;
  v113 = *(v19 + 16);
  if (!v113)
  {

    goto LABEL_78;
  }

  v60 = v104;
  OpenAPIMIMEType.init(_:)(v104, v59, &v116);
  if (!v120)
  {

    sub_25DD01034();
    swift_allocError();
    *v64 = v60;
    *(v64 + 8) = v59;
    *(v64 + 48) = 3;

LABEL_74:
    swift_willThrow();
    return;
  }

  v105 = v120;
  v61 = 0;
  v108 = v116;
  v109 = v118;
  v62 = (v19 + 40);
  v63 = v119;
  v114 = v19;
  v106 = v117;
  v107 = v119;
  while (1)
  {
    if (v61 >= *(v19 + 16))
    {
      goto LABEL_83;
    }

    v66 = *(v62 - 1);
    v67 = *v62;
    v68 = v66 == v104 && v67 == v103;
    if (v68 || (sub_25DD975D4() & 1) != 0)
    {

      sub_25DCFFC50(v108, *(&v108 + 1), v106, v109, v63, v105);
      goto LABEL_78;
    }

    swift_bridgeObjectRetain_n();
    OpenAPIMIMEType.init(_:)(v66, v67, &v116);
    v69 = v120;
    if (!v120)
    {

      sub_25DCFFC50(v108, *(&v108 + 1), v106, v109, v63, v105);
      sub_25DD01034();
      swift_allocError();
      *v93 = v66;
      *(v93 + 8) = v67;
      v94 = 2;
LABEL_73:
      *(v93 + 48) = v94;
      goto LABEL_74;
    }

    *v115 = v116;
    v65 = v117;
    v70 = v118;
    v71 = v119;

    if (v71)
    {
      if (v71 != 1)
      {
        v96 = v108;
        v97 = v65;
        v98 = v70;
        v99 = v106;
        v100 = v109;
        sub_25DD0C654(v108, *(&v108 + 1), v106, v109, v63);

        sub_25DCFFC90(v96, *(&v96 + 1), v99, v100, v63);
        sub_25DCFFC50(v96, *(&v96 + 1), v99, v100, v63, v105);
        sub_25DCFFC50(*v115, *&v115[8], v97, v98, v71, v69);
        return;
      }

      if (v63 == 1)
      {
        v111 = v65;
        v72 = sub_25DD96B54();
        v74 = v73;
        v75 = sub_25DD96B54();
        v77 = v76;

        if (v72 == v75 && v74 == v77)
        {

LABEL_66:
          v110 = v70;
          v86 = sub_25DD96B54();
          v88 = v87;
          v89 = sub_25DD96B54();
          v91 = v90;

          if (v86 == v89 && v88 == v91)
          {
            goto LABEL_76;
          }

          v92 = sub_25DD975D4();

          sub_25DCFFC50(*v115, *&v115[8], v111, v110, v71, v69);
          v10 = v112;
          v63 = v107;
          if (v92)
          {
            goto LABEL_77;
          }

          goto LABEL_46;
        }

        v85 = sub_25DD975D4();

        if (v85)
        {
          goto LABEL_66;
        }

        v65 = v111;
        v10 = v112;
      }

      goto LABEL_45;
    }

    if (v63 < 2u)
    {
      break;
    }

LABEL_45:
    sub_25DCFFC50(*v115, *&v115[8], v65, v70, v71, v69);
LABEL_46:
    ++v61;
    v62 += 2;
    v19 = v114;
    if (v113 == v61)
    {

      sub_25DCFFC50(v108, *(&v108 + 1), v106, v109, v63, v105);
      sub_25DD01034();
      swift_allocError();
      v95 = v101;
      *v93 = v10;
      *(v93 + 8) = v95;
      v94 = 11;
      goto LABEL_73;
    }
  }

  v110 = v70;
  v111 = v65;

  v78 = sub_25DD96B54();
  v80 = v79;
  v81 = sub_25DD96B54();
  v83 = v82;

  if (v78 != v81 || v80 != v83)
  {
    v84 = sub_25DD975D4();

    sub_25DCFFC50(*v115, *&v115[8], v111, v110, v71, v69);
    v10 = v112;
    v63 = v107;
    if (v84)
    {
      goto LABEL_77;
    }

    goto LABEL_46;
  }

LABEL_76:
  v63 = v107;

  sub_25DCFFC50(*v115, *&v115[8], v111, v110, v71, v69);
LABEL_77:

  sub_25DCFFC50(v108, *(&v108 + 1), v106, v109, v63, v105);
LABEL_78:
}

uint64_t Converter.getOptionalRequestBodyAsJSON<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1EBF8, 0, 0);
}

uint64_t sub_25DD1EBF8()
{
  v1 = *(v0 + 224);
  v15 = *(v0 + 208);
  sub_25DD1C360(*(v0 + 232), v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v15;
  v3 = *(v0 + 128);
  *(v2 + 136) = *(v0 + 112);
  *(v2 + 152) = v3;
  *(v2 + 168) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v2 + 72) = *(v0 + 48);
  *(v2 + 88) = v4;
  v5 = *(v0 + 96);
  *(v2 + 104) = *(v0 + 80);
  *(v2 + 120) = v5;
  v6 = *(v0 + 32);
  *(v2 + 40) = *(v0 + 16);
  *(v0 + 240) = v2;
  *(v2 + 32) = v1;
  *(v2 + 184) = *(v0 + 160);
  *(v2 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_25DD1ED44;
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);

  return sub_25DD24CAC(v13, v11, v12, v9, v10, &unk_25DD99B88, v2, v8);
}

uint64_t sub_25DD1ED44()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD208CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Converter.getRequiredRequestBodyAsJSON<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1EEB0, 0, 0);
}

uint64_t sub_25DD1EEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 224);
  v24 = *(v9 + 208);
  sub_25DD1C360(*(v9 + 232), v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v24;
  v12 = *(v9 + 128);
  *(v11 + 136) = *(v9 + 112);
  *(v11 + 152) = v12;
  *(v11 + 168) = *(v9 + 144);
  v13 = *(v9 + 64);
  *(v11 + 72) = *(v9 + 48);
  *(v11 + 88) = v13;
  v14 = *(v9 + 96);
  *(v11 + 104) = *(v9 + 80);
  *(v11 + 120) = v14;
  v15 = *(v9 + 32);
  *(v11 + 40) = *(v9 + 16);
  *(v9 + 240) = v11;
  *(v11 + 32) = v10;
  *(v11 + 184) = *(v9 + 160);
  *(v11 + 56) = v15;
  v16 = swift_task_alloc();
  *(v9 + 248) = v16;
  *v16 = v9;
  v16[1] = sub_25DD1ED44;
  v17 = *(v9 + 208);
  v18 = *(v9 + 192);
  v19 = *(v9 + 200);
  v20 = *(v9 + 176);
  v21 = *(v9 + 184);
  v22 = *(v9 + 168);

  return sub_25DD25170(v22, v20, v21, v18, v19, &unk_25DD99B78, v11, v17, a9);
}

uint64_t Converter.getOptionalRequestBodyAsXML<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F02C, 0, 0);
}

uint64_t sub_25DD1F02C()
{
  v1 = *(v0 + 224);
  v15 = *(v0 + 208);
  sub_25DD1C360(*(v0 + 232), v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v15;
  v3 = *(v0 + 128);
  *(v2 + 136) = *(v0 + 112);
  *(v2 + 152) = v3;
  *(v2 + 168) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v2 + 72) = *(v0 + 48);
  *(v2 + 88) = v4;
  v5 = *(v0 + 96);
  *(v2 + 104) = *(v0 + 80);
  *(v2 + 120) = v5;
  v6 = *(v0 + 32);
  *(v2 + 40) = *(v0 + 16);
  *(v0 + 240) = v2;
  *(v2 + 32) = v1;
  *(v2 + 184) = *(v0 + 160);
  *(v2 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_25DD1F178;
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);

  return sub_25DD24CAC(v13, v11, v12, v9, v10, &unk_25DD99B68, v2, v8);
}

uint64_t sub_25DD1F178()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD1F2B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DD1F2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Converter.getRequiredRequestBodyAsXML<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F348, 0, 0);
}

uint64_t sub_25DD1F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 224);
  v24 = *(v9 + 208);
  sub_25DD1C360(*(v9 + 232), v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v24;
  v12 = *(v9 + 128);
  *(v11 + 136) = *(v9 + 112);
  *(v11 + 152) = v12;
  *(v11 + 168) = *(v9 + 144);
  v13 = *(v9 + 64);
  *(v11 + 72) = *(v9 + 48);
  *(v11 + 88) = v13;
  v14 = *(v9 + 96);
  *(v11 + 104) = *(v9 + 80);
  *(v11 + 120) = v14;
  v15 = *(v9 + 32);
  *(v11 + 40) = *(v9 + 16);
  *(v9 + 240) = v11;
  *(v11 + 32) = v10;
  *(v11 + 184) = *(v9 + 160);
  *(v11 + 56) = v15;
  v16 = swift_task_alloc();
  *(v9 + 248) = v16;
  *v16 = v9;
  v16[1] = sub_25DD1ED44;
  v17 = *(v9 + 208);
  v18 = *(v9 + 192);
  v19 = *(v9 + 200);
  v20 = *(v9 + 176);
  v21 = *(v9 + 184);
  v22 = *(v9 + 168);

  return sub_25DD25170(v22, v20, v21, v18, v19, &unk_25DD99B58, v11, v17, a9);
}

uint64_t sub_25DD1F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1C68C;

  return sub_25DD2117C(a1, a2, a4, a6);
}

uint64_t sub_25DD1F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void *, uint64_t, void, uint64_t, uint64_t))
{
  v16[2] = a5;
  v16[3] = a3;
  v16[4] = a4;
  v14 = type metadata accessor for HTTPBody();
  return a8(a1, a2, a6, v16, a7, 0, v14, a5);
}

uint64_t Converter.getOptionalRequestBodyAsURLEncodedForm<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F6D4, 0, 0);
}

uint64_t sub_25DD1F6D4()
{
  v1 = *(v0 + 224);
  v15 = *(v0 + 208);
  sub_25DD1C360(*(v0 + 232), v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v15;
  v3 = *(v0 + 128);
  *(v2 + 136) = *(v0 + 112);
  *(v2 + 152) = v3;
  *(v2 + 168) = *(v0 + 144);
  v4 = *(v0 + 64);
  *(v2 + 72) = *(v0 + 48);
  *(v2 + 88) = v4;
  v5 = *(v0 + 96);
  *(v2 + 104) = *(v0 + 80);
  *(v2 + 120) = v5;
  v6 = *(v0 + 32);
  *(v2 + 40) = *(v0 + 16);
  *(v0 + 240) = v2;
  *(v2 + 32) = v1;
  *(v2 + 184) = *(v0 + 160);
  *(v2 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_25DD1ED44;
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);

  return sub_25DD24CAC(v13, v11, v12, v9, v10, &unk_25DD99B48, v2, v8);
}

uint64_t sub_25DD1F820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_25DD1C68C;

  return sub_25DD21728(a1, a2, a4, a6);
}

uint64_t Converter.getRequiredRequestBodyAsURLEncodedForm<A, B>(_:from:transforming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[28] = a8;
  v9[29] = v8;
  v9[26] = a6;
  v9[27] = a7;
  v9[24] = a4;
  v9[25] = a5;
  v9[22] = a2;
  v9[23] = a3;
  v9[21] = a1;
  return MEMORY[0x2822009F8](sub_25DD1F91C, 0, 0);
}

uint64_t sub_25DD1F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 224);
  v24 = *(v9 + 208);
  sub_25DD1C360(*(v9 + 232), v9 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v24;
  v12 = *(v9 + 128);
  *(v11 + 136) = *(v9 + 112);
  *(v11 + 152) = v12;
  *(v11 + 168) = *(v9 + 144);
  v13 = *(v9 + 64);
  *(v11 + 72) = *(v9 + 48);
  *(v11 + 88) = v13;
  v14 = *(v9 + 96);
  *(v11 + 104) = *(v9 + 80);
  *(v11 + 120) = v14;
  v15 = *(v9 + 32);
  *(v11 + 40) = *(v9 + 16);
  *(v9 + 240) = v11;
  *(v11 + 32) = v10;
  *(v11 + 184) = *(v9 + 160);
  *(v11 + 56) = v15;
  v16 = swift_task_alloc();
  *(v9 + 248) = v16;
  *v16 = v9;
  v16[1] = sub_25DD1ED44;
  v17 = *(v9 + 208);
  v18 = *(v9 + 192);
  v19 = *(v9 + 200);
  v20 = *(v9 + 176);
  v21 = *(v9 + 184);
  v22 = *(v9 + 168);

  return sub_25DD25170(v22, v20, v21, v18, v19, &unk_25DD99B38, v11, v17, a9);
}

uint64_t Converter.getRequiredRequestBodyAsMultipart<A, B>(_:from:transforming:boundary:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:decoding:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {

    sub_25DD6BA30(a7 & 1, a8, a9, a10, a11, v23);
    v19 = sub_25DD2267C(a2, a5, a6, v23, a12, a13, *(a1 + 80));
    v27 = v23[1];
    sub_25DD20250(&v27);
    v26 = v23[2];
    sub_25DD20250(&v26);
    v25 = v23[3];
    sub_25DD20250(&v25);
    v24 = v23[4];
    sub_25DD20250(&v24);
    a3(v19);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v21 = 2;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0;
    *(v21 + 48) = 20;
    return swift_willThrow();
  }
}

uint64_t sub_25DD1FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  sub_25DD1C360(v8, v23);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = v23[7];
  *(v16 + 128) = v23[6];
  *(v16 + 144) = v17;
  *(v16 + 160) = v23[8];
  *(v16 + 176) = v24;
  v18 = v23[3];
  *(v16 + 64) = v23[2];
  *(v16 + 80) = v18;
  v19 = v23[5];
  *(v16 + 96) = v23[4];
  *(v16 + 112) = v19;
  v20 = v23[1];
  *(v16 + 32) = v23[0];
  *(v16 + 48) = v20;
  v21 = sub_25DD2496C(a1, a2, a3, a4, a8);

  return v21;
}

uint64_t Converter.setResponseBodyAsBinary(_:headerFields:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  type metadata accessor for HTTPBody();
  return sub_25DD2496C(&v8, a2, a3, a4, sub_25DD1AF74);
}

uint64_t Converter.setResponseBodyAsMultipart<A>(_:headerFields:contentType:allowsUnknownParts:requiredExactlyOncePartNames:requiredAtLeastOncePartNames:atMostOncePartNames:zeroOrMoreTimesPartNames:encoding:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *a1;
  v16 = v11[9];
  v17 = v11[10];
  __swift_project_boxed_opaque_existential_1(v11 + 6, v16);
  (*(v17 + 8))(v16, v17);
  MEMORY[0x25F8A3200]();
  v23[1] = a4;

  MEMORY[0x25F8A3200](0x61646E756F62203BLL, 0xEB000000003D7972);

  v23[0] = a1;
  type metadata accessor for MultipartBody(0, *(v15 + 80), v18, v19);
  v20 = sub_25DD2496C(v23, a2, a3, a4, sub_25DD202B8);

  return v20;
}

unint64_t sub_25DD1FFCC()
{
  result = qword_27FCC2398;
  if (!qword_27FCC2398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21A8, &qword_25DD98A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2398);
  }

  return result;
}

uint64_t sub_25DD20030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v8 = v4[3];
  v10 = v4[5];
  v11 = v4[6];
  sub_25DD08A7C(v4[4], v15);
  sub_25DD6FC30(0, 0, 0, v15, v14);
  sub_25DD73978(v14, v15);
  sub_25DD73998(v9, v10, v11, a1, a2, a3, a4, v9, v8);
  return sub_25DD2085C(v15);
}

uint64_t sub_25DD20160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v8 = a6;
  v11 = v7[2];
  v10 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v14 = v7[6];
  LOBYTE(v22[0]) = *a5;
  v15 = sub_25DD27C60(v22);
  sub_25DD08A7C(v12, v22);
  sub_25DD6FC30(v15, v8, 0, v22, v21);
  v16 = sub_25DD73978(v21, v22);
  (v23)(v11, v13, v14, a1, a2, a3, a4, v11, v16, v10);
  return sub_25DD2085C(v22);
}

uint64_t sub_25DD20250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2380, &qword_25DD9E8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD202B8(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  v11 = *a1;

  sub_25DD6BA30(v2, v3, v4, v5, v6, v14);
  v12 = sub_25DD21DA0(v11, v14, v7, v8, v9, v10);
  v18 = v14[1];
  sub_25DD20250(&v18);
  v17 = v14[2];
  sub_25DD20250(&v17);
  v16 = v14[3];
  sub_25DD20250(&v16);
  v15 = v14[4];
  sub_25DD20250(&v15);
  return v12;
}

uint64_t sub_25DD203C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1F820(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD20488(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1F820(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD2054C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1F494(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD20610(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1BF14;

  return sub_25DD1BE48(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD206D4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1B974(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD20798(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD1B974(a1, a2, v2 + 40, v6, v8, v7);
}

uint64_t sub_25DD208D0(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  v9 = *a4;
  if (v9 == 3)
  {
    v9 = *sub_25DD27C18();
  }

  if (a5 == 2)
  {
    v12 = v9;
    a5 = sub_25DD27C50(&v12);
  }

  if (v9 == 1)
  {
    sub_25DD01034();
    swift_allocError();
    *v10 = a2;
    *(v10 + 8) = a3;
    *(v10 + 16) = 1;
    *(v10 + 17) = a5 & 1;
    *(v10 + 48) = 8;
    swift_willThrow();
  }

  else
  {
    *a1 = v9;
  }

  return a5 & 1;
}

uint64_t sub_25DD209AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;

  sub_25DD969F4();
  v9 = sub_25DD969E4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25DD114CC(v8, &qword_27FCC23A0, &qword_25DD99BB0);
    sub_25DD01034();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 48) = 4;
    return swift_willThrow();
  }

  else
  {

    return (*(v10 + 32))(a3, v8, v9);
  }
}

uint64_t sub_25DD20B2C()
{
  MEMORY[0x25F8A2E70]();
  if (v1)
  {
    v0 = sub_25DD96CA4();
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v2 = 1;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0;
    *(v2 + 48) = 20;
    swift_willThrow();
  }

  return v0;
}

void *sub_25DD20C20@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = a2;
  LOBYTE(v10[0]) = *a1;
  v8 = sub_25DD27C60(v10);
  sub_25DD08A7C(v4, v10);
  return sub_25DD6FC30(v8, v6, a3 & 1, v10, a4);
}

uint64_t sub_25DD20C98(_BYTE *a1, uint64_t a2, char a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a2;
  LOBYTE(v20[0]) = *a1;
  v16 = sub_25DD27C60(v20);
  sub_25DD08A7C(v8, v20);
  sub_25DD6FC30(v16, v15, a3 & 1, v20, v19);
  sub_25DD83CF4(v19, v20);
  v17 = sub_25DD83D3C(a6, a4, a5, a7, a8);
  sub_25DD1ACC8(v20);
  return v17;
}

uint64_t sub_25DD20D80(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a2;
  LOBYTE(v22[0]) = *a1;
  v15 = sub_25DD27C60(v22);
  sub_25DD08A7C(v11, v22);
  sub_25DD6FC30(v15, v14, a3 & 1, v22, v21);
  sub_25DD73978(v21, v22);
  sub_25DD73998(a10, a4, a5, a6, a7, a8, a9, a10, a11);
  return sub_25DD2085C(v22);
}

uint64_t sub_25DD20E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;

  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_25DD20F18;

  return Data.init(collecting:upTo:)(a2, 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_25DD20F18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](sub_25DD21078, 0, 0);
  }
}

uint64_t sub_25DD21078()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_25DD964D4();
  sub_25DD01088(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD21120()
{
  result = sub_25DD96574();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    type metadata accessor for HTTPBody();
    return HTTPBody.__allocating_init(_:)(v3, v4);
  }

  return result;
}

uint64_t sub_25DD2117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x2822009F8](sub_25DD211A4, 0, 0);
}

uint64_t sub_25DD211A4()
{
  sub_25DD12B90(*(v0 + 128) + 88, v0 + 56, &qword_27FCC2358, &qword_25DD996F8);
  if (*(v0 + 80))
  {
    sub_25DCFE2FC((v0 + 56), v0 + 16);

    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_25DD21338;
    v2 = *(v0 + 104);

    return Data.init(collecting:upTo:)(v2, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_25DD114CC(v0 + 56, &qword_27FCC2358, &qword_25DD996F8);
    sub_25DD01034();
    swift_allocError();
    v5 = v4;
    sub_25DD0923C();
    *v5 = OpenAPIMIMEType.description.getter();
    *(v5 + 8) = v6;
    *(v5 + 48) = 7;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_25DD21338(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[20] = v2;

  if (v2)
  {
    v5 = sub_25DD21544;
  }

  else
  {
    v5 = sub_25DD21450;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25DD21450()
{
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v6 + 16))(v4, v2, v1, v4, v3, v5, v6);
  sub_25DD01088(v0[18], v0[19]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_25DD21544()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_25DD215A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25DD12B90(v3 + 88, &v27, &qword_27FCC2358, &qword_25DD996F8);
  if (v28)
  {
    sub_25DCFE2FC(&v27, &v23);
    v8 = *(&v24 + 1);
    v9 = v25;
    v10 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v11 = (*(v9 + 8))(a1, a2, a3, v8, v9);
    if (!v4)
    {
      v20 = v11;
      v21 = v12;
      type metadata accessor for HTTPBody();
      v10 = HTTPBody.__allocating_init(_:)(v20, v21);
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    sub_25DD114CC(&v27, &qword_27FCC2358, &qword_25DD996F8);
    sub_25DD01034();
    swift_allocError();
    v14 = v13;
    v15 = sub_25DD0923C();
    v16 = *(v15 + 32);
    v17 = *(v15 + 5);
    v18 = v15[1];
    v23 = *v15;
    v24 = v18;
    LOBYTE(v25) = v16;
    v26 = v17;
    v10 = &v23;
    *v14 = OpenAPIMIMEType.description.getter();
    *(v14 + 8) = v19;
    *(v14 + 48) = 7;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_25DD21728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x2822009F8](sub_25DD21750, 0, 0);
}

uint64_t sub_25DD21750()
{
  v5 = v0;
  sub_25DD08A7C(*(v0 + 136), v0 + 64);
  sub_25DD6FC30(1, 1, 1, (v0 + 64), v4);
  sub_25DD73978(v4, v0 + 16);

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_25DD21834;
  v2 = *(v0 + 112);

  return Data.init(collecting:upTo:)(v2, 0x7FFFFFFFFFFFFFFFLL);
}

uint64_t sub_25DD21834(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v5 = sub_25DD21A80;
  }

  else
  {
    v5 = sub_25DD2194C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25DD2194C()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  sub_25DD21C5C(v2, v1);
  v5 = sub_25DD21AE4(v2, v1);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25DD7398C();
  sub_25DD73998(v4, v12, v13, v5, v7, v9, v11, v4, v3);
  v14 = v0[19];
  v15 = v0[20];
  sub_25DD2085C((v0 + 2));

  sub_25DD01088(v14, v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_25DD21A80()
{
  sub_25DD2085C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD21AE4(uint64_t a1, unint64_t a2)
{
  sub_25DD26524(a1, a2);
  if (v4)
  {
    goto LABEL_8;
  }

  v8 = a1;
  v9 = a2;
  sub_25DD21C5C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_25DD114CC(v6, &qword_27FCC23E8, &qword_25DD99BF8);
LABEL_7:
    sub_25DD25EB0(a1, a2);
LABEL_8:
    sub_25DD01088(a1, a2);
    return sub_25DD96F54();
  }

  sub_25DCFE2FC(v6, v10);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if ((sub_25DD972E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    goto LABEL_7;
  }

  sub_25DD01088(a1, a2);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_25DD972D4();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return sub_25DD96F54();
}

uint64_t sub_25DD21C5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_25DD21CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25DD08A7C(v3, v15);
  sub_25DD6FC30(1, 1, 1, v15, v16);
  sub_25DD83CF4(v16, v17);
  v8 = v17;
  v9 = sub_25DD83D3C(a1, 0, 0xE000000000000000, a2, a3);
  if (!v4)
  {
    v11 = v9;
    v12 = v10;
    type metadata accessor for HTTPBody();
    v16[0] = v11;
    v16[1] = v12;
    v13 = sub_25DD07E24();
    v8 = HTTPBody.__allocating_init<A>(_:)(v16, MEMORY[0x277D837D0], v13);
  }

  sub_25DD1ACC8(v17);
  return v8;
}

uint64_t sub_25DD21DA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v65 = a5;
  v73 = a4;
  v74 = a3;
  v7 = *(*a1 + 80);
  v63 = type metadata accessor for MultipartBody(255, v7, a3, a4);
  v62 = type metadata accessor for MultipartRawPart(255);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25DD97384();
  v69 = swift_getWitnessTable();
  v11 = type metadata accessor for MultipartValidationSequence(255, v9, v69, v10);
  v67 = swift_getWitnessTable();
  v76 = v11;
  v13 = type metadata accessor for MultipartRawPartsToFramesSequence(255, v11, v67, v12);
  v71 = swift_getWitnessTable();
  v72 = type metadata accessor for MultipartFramesToBytesSequence(0, v13, v71, v14);
  v70 = *(v72 - 8);
  v15 = MEMORY[0x28223BE20](v72);
  v68 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v54 - v18;
  v64 = *(v13 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v58 = &v54 - v22;
  v77 = *(v11 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v75 = &v54 - v27;
  v57 = *(v9 - 8);
  v28 = v57;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v56 = &v54 - v32;
  v55 = a1;
  v79 = a1;
  v34 = swift_allocObject();
  v35 = v65;
  v34[2] = v7;
  v34[3] = v35;
  v34[4] = v60;

  sub_25DD96E14();

  (*(v28 + 16))(v31, v33, v9);
  v36 = a2[1];
  v83 = a2[2];
  v84 = v36;
  v37 = a2[3];
  v81 = a2[4];
  v82 = v37;
  sub_25DD12B90(&v84, &v79, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v83, &v79, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v82, &v79, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v81, &v79, &qword_27FCC2380, &qword_25DD9E8F0);
  v38 = v75;
  v39 = v9;
  v40 = sub_25DD6BD44(v31, a2, v9, v69, v75);
  v41 = v76;
  (*(v77 + 16))(v25, v38, v76, v40);
  v42 = v58;
  sub_25DD3D184(v25, v41, v58);
  v43 = v64;
  v44 = v59;
  v45 = v13;
  (*(v64 + 16))(v59, v42, v13);
  v46 = v73;

  v47 = v66;
  sub_25DD594A0(v44, v74, v46, v13, v71, v66);
  type metadata accessor for HTTPBody();
  v48 = v70;
  v49 = v68;
  v50 = v72;
  (*(v70 + 16))(v68, v47, v72);
  v79 = 0;
  v80 = 1;
  v78 = *(v55 + 16);
  v51 = swift_getWitnessTable();
  v52 = HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(v49, &v79, &v78, v50, v51);
  (*(v48 + 8))(v47, v50);
  (*(v43 + 8))(v42, v45);
  (*(v77 + 8))(v75, v76);
  (*(v57 + 8))(v56, v39);
  return v52;
}

uint64_t sub_25DD22444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_25DD969E4();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD224D8, 0, 0);
}

uint64_t sub_25DD224D8()
{
  (*(v0 + 40))(*(v0 + 32));
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for MultipartRawPart(0) + 20));
  if ((*(v2 + 32) & 1) == 0)
  {
    v3 = *(v2 + 24);
    MEMORY[0x25F8A2FD0]();
    *(v0 + 16) = v3;
    sub_25DD97374();
    sub_25DD96834();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25DD225C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25DD1BF14;

  return sub_25DD22444(a1, a2, v7, v6);
}

uint64_t sub_25DD2267C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v40 = a6;
  v39 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC23A8, &qword_25DD99BE0);
  v36 = sub_25DD187C0(&qword_27FCC23B0, &qword_27FCC23A8, &qword_25DD99BE0, &unk_25DD9E9D8);
  v11 = sub_25DD97384();
  v38 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v32 = a1;
  *&v42 = a1;
  v16 = type metadata accessor for HTTPBody();
  v17 = sub_25DD266D0(&qword_27FCC23B8, type metadata accessor for HTTPBody, &protocol conformance descriptor for HTTPBody);

  sub_25DD52308(&v42, a2, a3, v16, v17, &v50);
  v33 = v50;
  v42 = v50;
  *&v43 = v51;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23C0, &qword_25DD99BE8);
  sub_25DD187C0(&qword_27FCC23C8, &qword_27FCC23C0, &qword_25DD99BE8, &unk_25DD9CED8);
  sub_25DD3D184(&v42, v18, &v50);
  v42 = v50;
  *&v43 = v51;
  v19 = a4[1];
  v48 = a4[2];
  v49 = v19;
  v20 = a4[3];
  v46 = a4[4];
  v47 = v20;

  sub_25DD12B90(&v49, &v50, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v48, &v50, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v47, &v50, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v46, &v50, &qword_27FCC2380, &qword_25DD9E8F0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23D0, &qword_25DD99BF0);
  v22 = sub_25DD187C0(&qword_27FCC23D8, &qword_27FCC23D0, &qword_25DD99BF0, &unk_25DD9D8D8);
  sub_25DD6BD44(&v42, a4, v21, v22, &v50);
  v42 = v50;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  sub_25DD12B90(&v50, v41, &qword_27FCC23A8, &qword_25DD99BE0);
  v23 = v35;
  sub_25DD96E14();
  type metadata accessor for MultipartBody(0, v23, v24, v25);
  v26 = v38;
  v27 = v34;
  (*(v38 + 16))(v34, v15, v11);
  LOBYTE(v42) = *(v32 + 16);
  WitnessTable = swift_getWitnessTable();
  v29 = MultipartBody.__allocating_init<A>(_:iterationBehavior:)(v27, &v42, v11, WitnessTable);
  sub_25DD114CC(&v50, &qword_27FCC23A8, &qword_25DD99BE0);

  (*(v26 + 8))(v15, v11);
  return v29;
}

uint64_t sub_25DD22B2C()
{
  v2 = *(v0 + 144);
  v3 = sub_25DD96574();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    sub_25DD21C5C(v3, v4);
    v7 = sub_25DD26524(v5, v6);
    if (v8)
    {
      v2 = v7;
      sub_25DD01088(v5, v6);
LABEL_10:
      sub_25DD01088(v5, v6);
      return v2;
    }

    v13 = v5;
    v14 = v6;
    sub_25DD21C5C(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
    if (swift_dynamicCast())
    {
      sub_25DCFE2FC(v11, v15);
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v9 = sub_25DD972E4();
      sub_25DD01088(v5, v6);
      if (v9)
      {
        __swift_project_boxed_opaque_existential_1(v15, v16);
        sub_25DD972D4();
        sub_25DD01088(v5, v6);
        v2 = *&v11[0];
        __swift_destroy_boxed_opaque_existential_1(v15);
        return v2;
      }

      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      sub_25DD01088(v5, v6);
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      sub_25DD114CC(v11, &qword_27FCC23E8, &qword_25DD99BF8);
    }

    v2 = sub_25DD25EB0(v5, v6);
    goto LABEL_10;
  }

  return v2;
}

uint64_t sub_25DD22D04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = sub_25DD22DB4(a1, a2, a3, a4);
  v12 = v11;
  sub_25DD964D4();
  return sub_25DD01088(v10, v12);
}

uint64_t sub_25DD22DB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  *&v45 = a1;
  *(&v45 + 1) = a2;
  v46 = a3;
  v47 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2408, &qword_25DD99C18);
  if (!swift_dynamicCast())
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_25DD114CC(v43, &qword_27FCC2410, &unk_25DD9BBC0);
    sub_25DD26798(a1, a2, a3, a4, &v38);
    v8 = *(&v38 + 1);
    v9 = v38;
    if (*(&v38 + 1) >> 60 != 15)
    {
      v43[0] = v38;
      goto LABEL_54;
    }

    v10 = sub_25DD96F34();
    *&v43[0] = sub_25DD26B4C(v10);
    *(&v43[0] + 1) = v11;
    MEMORY[0x28223BE20](*&v43[0]);
    sub_25DD26020(sub_25DD26BEC, &v38);
    v13 = v39;
    v12 = v40;
    v14 = v41;
    v15 = *(&v43[0] + 1) >> 62;
    if ((*(&v43[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v43[0] + 16);
        v16 = *(*&v43[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v42 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v42)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v42)
        {
          sub_25DD96754();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v42 == BYTE14(v43[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v43[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v43[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v43[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_61;
      }

      if (v42 != DWORD1(v43[0]) - LODWORD(v43[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v38 + 1) >> 14;
    *(&v45 + 7) = 0;
    *&v45 = 0;
    if (*(&v38 + 1) >> 14 == v41 >> 14)
    {

      sub_25DD26C08(v9, v8);
      goto LABEL_54;
    }

    v33 = v9;
    v34 = v8;
    LOBYTE(v8) = 0;
    v22 = v38 >> 14;
    v23 = (v39 >> 59) & 1;
    if ((v40 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v36 = v40 & 0xFFFFFFFFFFFFFFLL;
    v35 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v25 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_25DD18420(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_25DD96C44();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v38 = v13;
          *(&v38 + 1) = v36;
          v30 = *(&v38 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v35;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_25DD971D4();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_25DD18420(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v37 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_25DD96C14();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v45 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v38 = v45;
        *(&v38 + 6) = *(&v45 + 6);
        sub_25DD96764();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_25DD26C08(v33, v34);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v38 = v45;
        *(&v38 + 6) = *(&v45 + 6);
        sub_25DD96764();
        sub_25DD26C08(v33, v34);
        goto LABEL_53;
      }
    }
  }

  sub_25DCFE2FC(v43, &v38);
  __swift_project_boxed_opaque_existential_1(&v38, v40);
  sub_25DD966D4();
  v43[0] = v45;
  __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_54:
  v31 = v43[0];
  sub_25DD21C5C(*&v43[0], *(&v43[0] + 1));

  sub_25DD01088(v31, *(&v31 + 1));
  return v31;
}

uint64_t sub_25DD23308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7)
{
  v38 = a3;
  v34 = a6;
  v35 = a5;
  v37 = a2;
  v32[2] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v32 - v10;
  v12 = sub_25DD969E4();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25DD96A34();
  MEMORY[0x28223BE20](v14 - 8);
  v32[1] = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25DD96F04();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v32 - v19;
  v21 = *(a7 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a4, v16);
  if ((*(v21 + 48))(v20, 1, a7) == 1)
  {
    return (*(v17 + 8))(v20, v16);
  }

  (*(v21 + 32))(v23, v20, a7);
  v25 = v38;

  v26 = v37;
  sub_25DD969F4();
  v27 = v36;
  if ((*(v36 + 48))(v11, 1, v12) == 1)
  {
    sub_25DD114CC(v11, &qword_27FCC23A0, &qword_25DD99BB0);
    sub_25DD01034();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v25;
    *(v28 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    v29 = v33;
    (*(v27 + 32))(v33, v11, v12);
    v30 = v39;
    v35(v23);
    if (v30)
    {
      (*(v27 + 8))(v29, v12);
    }

    else
    {
      sub_25DD96A04();
      sub_25DD96814();
      v31 = MEMORY[0x277D0F9A8];
      sub_25DD266D0(&qword_27FCC23F0, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C8]);
      sub_25DD96EA4();
      sub_25DD266D0(&qword_27FCC23F8, v31, MEMORY[0x277D0F9D0]);
      sub_25DD96EE4();
    }
  }

  return (*(v21 + 8))(v23, a7);
}

uint64_t sub_25DD237AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_25DD969E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25DD969F4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25DD114CC(v7, &qword_27FCC23A0, &qword_25DD99BB0);
    sub_25DD01034();
    swift_allocError();
    *v12 = a2;
    *(v12 + 8) = a3;
    *(v12 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    a3 = MEMORY[0x25F8A2E40](v11);
    (*(v9 + 8))(v11, v8);
  }

  return a3;
}

uint64_t sub_25DD239A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = sub_25DD237AC(a1, a2, a3);
  if (!v6)
  {
    if (v11)
    {
      v12 = sub_25DD96CA4();
      v14 = v13;
      v16 = v15;
      v18 = v17;

      a4(v12, v14, v16, v18);

      return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
    }

    else
    {
      return (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
    }
  }

  return result;
}

uint64_t sub_25DD23B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_25DD237AC(a1, a2, a3);
  if (!v5)
  {
    if (v10)
    {
      v11 = sub_25DD96CA4();
      v13 = v12;
      v15 = v14;
      v17 = v16;

      a5(v11, v13, v15, v17);
    }

    else
    {
      sub_25DD01034();
      swift_allocError();
      *v18 = a2;
      *(v18 + 8) = a3;
      *(v18 + 48) = 9;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_25DD23C44(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, uint64_t *, void), unint64_t a8, uint64_t a9)
{
  v94 = a8;
  v95 = a7;
  v103 = a5;
  v96 = a4;
  v93 = a1;
  v13 = sub_25DD96F04();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = a6;
  v23 = v22;
  (*(v14 + 16))(v17, v21, v13);
  if ((*(v23 + 48))(v17, 1, a9) == 1)
  {
    return (*(v14 + 8))(v17, v13);
  }

  (*(v23 + 32))(v19, v17, a9);
  v25 = v19;
  if (v20 == 3)
  {
    v20 = *sub_25DD27C18();
  }

  if (a3 == 2)
  {
    LOBYTE(v97) = v20;
    a3 = sub_25DD27C50(&v97);
  }

  if (v20 == 1)
  {
    sub_25DD01034();
    swift_allocError();
    v26 = v103;
    *v27 = v96;
    *(v27 + 8) = v26;
    *(v27 + 16) = 1;
    *(v27 + 17) = a3 & 1;
    *(v27 + 48) = 8;
    swift_willThrow();
    v28 = *(v23 + 8);

    return v28(v25, a9);
  }

  LOBYTE(v97) = v20;
  v29 = v95(v19, &v97, a3 & 1);
  if (v9)
  {
    return (*(v23 + 8))(v19, a9);
  }

  v95 = v29;
  v96 = v30;
  MEMORY[0x25F8A2E70]();
  if (!v31)
  {

    sub_25DD01034();
    swift_allocError();
    *v44 = 1;
    *(v44 + 8) = 0u;
    *(v44 + 24) = 0u;
    *(v44 + 40) = 0;
    *(v44 + 48) = 20;
    swift_willThrow();
    return (*(v23 + 8))(v19, a9);
  }

  v90 = v19;
  v92 = a9;
  v32 = sub_25DD96CA4();
  v34 = v33;
  v36 = v35;

  v37 = v34 >> 14;
  v94 = v32 >> 14;
  v91 = v23;
  if (v32 >> 14 == v34 >> 14)
  {
    result = sub_25DD96F64();
    v86 = result;
    v87 = v38;
    v88 = v39;
    v89 = v40;
    v41 = 1;
    v85 = v34 >> 14;
    v42 = v34;
    v43 = v92;
  }

  else
  {
    v84 = 0;
    v45 = v32;
    v103 = v36;
    while (sub_25DD96F44() != 35 || v46 != 0xE100000000000000)
    {
      v47 = sub_25DD975D4();

      if (v47)
      {
        goto LABEL_22;
      }

      result = sub_25DD96F24();
      v45 = result;
      if (v37 == result >> 14)
      {
        v45 = v34;
        goto LABEL_22;
      }
    }

LABEL_22:
    if (v37 < v45 >> 14)
    {
      goto LABEL_42;
    }

    v85 = v45 >> 14;
    result = sub_25DD96F64();
    v86 = result;
    v87 = v48;
    v88 = v49;
    v89 = v50;
    if (v94 != v37)
    {
      v51 = v32;
      while (sub_25DD96F44() != 63 || v52 != 0xE100000000000000)
      {
        v53 = sub_25DD975D4();

        if (v53)
        {
          result = v51;
          goto LABEL_34;
        }

        v51 = sub_25DD96F24();
        if (v37 == v51 >> 14)
        {
          result = 0;
          v51 = v45;
LABEL_34:
          v41 = v53 ^ 1;
          v42 = v51;
          v43 = v92;
          goto LABEL_35;
        }
      }

      if (v94 > v51 >> 14)
      {
        goto LABEL_40;
      }

      v54 = sub_25DD96F64();
      goto LABEL_38;
    }

    v41 = 1;
    v42 = v45;
    v43 = v92;
  }

LABEL_35:
  if (v94 <= v42 >> 14)
  {
    v54 = sub_25DD96F64();
    if (v41)
    {
      v58 = v54;
      v59 = v57;
      v60 = v56;
      v61 = v55;

      v97 = 63;
      v98 = 0xE100000000000000;
      MEMORY[0x25F8A3200](v95, v96);

      v62 = MEMORY[0x25F8A3180](v86, v87, v88, v89);
      v64 = v63;

      MEMORY[0x25F8A3200](v62, v64);

      v101 = v97;
      v102 = v98;
      v97 = v58;
      v98 = v61;
      v99 = v60;
      v100 = v59;
      sub_25DD26718();
      v97 = sub_25DD96C94();
      v98 = v65;
      sub_25DD96BD4();

      MEMORY[0x25F8A2E80](v97, v98);
      return (*(v91 + 8))(v90, v43);
    }

LABEL_38:
    v81 = v54;
    v82 = v55;
    v83 = v56;
    v94 = v57;
    result = sub_25DD96F24();
    if (v85 >= result >> 14)
    {
      v66 = sub_25DD96F64();
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v97 = 63;
      v98 = 0xE100000000000000;
      v73 = MEMORY[0x25F8A3180](v66, v68, v70, v72);
      v75 = v74;

      MEMORY[0x25F8A3200](v73, v75);

      MEMORY[0x25F8A3200](38, 0xE100000000000000);
      MEMORY[0x25F8A3200](v95, v96);

      v76 = MEMORY[0x25F8A3180](v86, v87, v88, v89);
      v78 = v77;

      MEMORY[0x25F8A3200](v76, v78);

      v101 = v97;
      v102 = v98;
      v97 = v81;
      v98 = v82;
      v99 = v83;
      v100 = v94;
      sub_25DD26718();
      v97 = sub_25DD96C94();
      v98 = v79;
      sub_25DD96BD4();

      MEMORY[0x25F8A2E80](v97, v98);
      return (*(v91 + 8))(v90, v92);
    }

    goto LABEL_41;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_25DD244BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(unint64_t, uint64_t, uint64_t, uint64_t, char *, void), uint64_t a12, uint64_t a13)
{
  if (!a4 || (a2 ^ a1) < 0x4000)
  {
    return (*(*(a13 - 8) + 56))(a9, 1, 1);
  }

  v20 = *a5;
  if (v20 == 3)
  {
    v21 = a6;
    v22 = sub_25DD27C18();
    a6 = v21;
    v20 = *v22;
  }

  if (a6 == 2)
  {
    v26 = v20;
    a6 = sub_25DD27C50(&v26);
  }

  if (v20 == 1)
  {
    v23 = a6;
    sub_25DD01034();
    swift_allocError();
    *v24 = a7;
    *(v24 + 8) = a8;
    *(v24 + 16) = 1;
    *(v24 + 17) = v23 & 1;
    *(v24 + 48) = 8;
    swift_willThrow();
  }

  else
  {
    v25 = v20;
    return a11(a1, a2, a3, a4, &v25, a6 & 1);
  }
}

uint64_t sub_25DD24630@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a7;
  v41 = a6;
  v33 = a3;
  v34 = a4;
  v32 = a9;
  v17 = sub_25DD96F04();
  v31 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  LOBYTE(v18) = *a5;
  v20 = a8;
  v42 = v18;
  v38 = a13;
  v39 = a11;
  v40 = a12;
  v21 = a1;
  v22 = v35;
  v23 = v36;
  result = sub_25DD244BC(v21, a2, v33, v34, &v42, v41, v35, a8, v19, v30, sub_25DD2676C, v37, a13);
  if (!v23)
  {
    v26 = v31;
    v25 = v32;
    v27 = v17;
    v28 = *(a13 - 8);
    if ((*(v28 + 48))(v19, 1, a13) == 1)
    {
      (*(v26 + 8))(v19, v27);
      sub_25DD01034();
      swift_allocError();
      *v29 = v22;
      *(v29 + 8) = v20;
      *(v29 + 48) = 14;
      swift_willThrow();
    }

    else
    {
      return (*(v28 + 32))(v25, v19, a13);
    }
  }

  return result;
}

uint64_t sub_25DD2486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v9(v6);
  if (!v3)
  {
    (*(v5 + 32))(a2, v8, a3);
    return (*(v5 + 56))(a2, 0, 1, a3);
  }

  return result;
}

uint64_t sub_25DD2496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = sub_25DD969E4();
  MEMORY[0x28223BE20](v8 - 8);
  result = a5(a1);
  if (!v5)
  {
    v10 = result;
    MEMORY[0x25F8A2FC0]();

    sub_25DD96834();
    result = v10;
    if ((*(v10 + 32) & 1) == 0)
    {
      MEMORY[0x25F8A2FD0]();
      sub_25DD97374();
      sub_25DD96834();
      return v10;
    }
  }

  return result;
}

uint64_t sub_25DD24A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = *(a7 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v16 + 48))(v15, 1, a7) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v15, a7);
    v20 = sub_25DD2496C(v18, a2, v22, v23, v24);
    result = (*(v16 + 8))(v18, a7);
    if (!v7)
    {
      return v20;
    }
  }

  return result;
}

uint64_t sub_25DD24CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v8[10] = *(a8 - 8);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD24D74, 0, 0);
}

uint64_t sub_25DD24D74()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[6];

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_25DD24F00;
    v4 = v0[11];

    return v7(v4, v1);
  }

  else
  {
    (*(*(v0[9] - 8) + 56))(v0[2], 1, 1);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_25DD24F00()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_25DD25100;
  }

  else
  {
    v2 = sub_25DD25014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD25014()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  (*(v0 + 32))(v1);

  (*(v2 + 8))(v1, v3);
  (*(*(*(v0 + 72) - 8) + 56))(*(v0 + 16), 0, 1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25DD25100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD25170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a9;
  v16 = sub_25DD96F04();
  v9[4] = v16;
  v9[5] = *(v16 - 8);
  v17 = swift_task_alloc();
  v9[6] = v17;
  v19 = swift_task_alloc();
  v9[7] = v19;
  *v19 = v9;
  v19[1] = sub_25DD252BC;

  return sub_25DD24CAC(v17, v18, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_25DD252BC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_25DD2553C;
  }

  else
  {
    v2 = sub_25DD253D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD253D0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[5] + 8))(v1, v0[4]);
    sub_25DD01034();
    swift_allocError();
    *v4 = 2;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    *(v4 + 48) = 20;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_25DD2553C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD255A0@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v15)
  {
    return (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  }

  v19 = v12;

  a3(v16);
  if (v6)
  {
  }

  v19(v14);

  (*(v11 + 8))(v14, a4);
  return (*(*(a5 - 8) + 56))(a6, 0, 1, a5);
}

uint64_t sub_25DD25738@<X0>(void (*a2)(uint64_t)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v20 = a5;
  v8 = sub_25DD96F04();
  v19 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = v21;
  result = sub_25DD255A0(v9, a2, a3, a4, &v19 - v10);
  if (!v12)
  {
    v14 = v8;
    v16 = v19;
    v15 = v20;
    v17 = *(a4 - 8);
    if ((*(v17 + 48))(v11, 1, a4) == 1)
    {
      (*(v16 + 8))(v11, v14);
      sub_25DD01034();
      swift_allocError();
      *v18 = 2;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0;
      *(v18 + 48) = 20;
      return swift_willThrow();
    }

    else
    {
      return (*(v17 + 32))(v15, v11, a4);
    }
  }

  return result;
}

uint64_t sub_25DD25940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a5;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a4;
  v8[6] = *(a8 - 8);
  v11 = swift_task_alloc();
  v8[7] = v11;
  v14 = (a6 + *a6);
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_25DD25AA8;

  return v14(v11, a3);
}

uint64_t sub_25DD25AA8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_25DD25C58;
  }

  else
  {
    v2 = sub_25DD25BBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD25BBC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 24))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25DD25C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD25CBC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  v11 = MEMORY[0x28223BE20](a2);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v11);
  if (!v7)
  {
    a3(v13);
    return (*(v10 + 8))(v13, a7);
  }

  return result;
}

uint64_t sub_25DD25DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 16) && (v9 = sub_25DCFF99C(a2, a3), (v10 & 1) != 0))
  {
    v11 = (*(a1 + 56) + 32 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];

    a5(v13, v12, v14, v15);
  }

  else
  {
    sub_25DD01034();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 48) = 13;
    swift_willThrow();
  }
}

uint64_t sub_25DD25EB0(uint64_t a1, unint64_t a2)
{
  sub_25DD21C5C(a1, a2);
  sub_25DD00CE0(a1, a2);
  v4 = sub_25DD96B74();

  return v4;
}

uint64_t sub_25DD25F1C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_25DD96B74();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_25DD25F58@<X0>(_BYTE *__src@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25DD012D4(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25DD96694();
      swift_allocObject();
      v8 = sub_25DD96644();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25DD96744();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_25DD26020@<X0>(void *(*a1)(__int128 *__return_ptr, char *, char *)@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v9 = *v3;
  v8 = v3[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {

      sub_25DD01088(v9, v8);
      *&v29 = v9;
      *(&v29 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_25DD99B90;
      sub_25DD01088(0, 0xC000000000000000);
      sub_25DD96714();
      v13 = v29;
      result = sub_25DD26458(*(v29 + 16), *(v29 + 24), a1, &v25);
      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
      *v3 = v13;
      v3[1] = *(&v13 + 1) | 0x8000000000000000;
      if (v4)
      {
        return result;
      }
    }

    else
    {
      *(&v29 + 7) = 0;
      *&v29 = 0;
      result = a1(&v25, &v29, &v29);
      if (v4)
      {
        return result;
      }

      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    sub_25DD01088(v9, v8);
    *&v29 = v9;
    WORD4(v29) = v8;
    BYTE10(v29) = BYTE2(v8);
    BYTE11(v29) = BYTE3(v8);
    BYTE12(v29) = BYTE4(v8);
    BYTE13(v29) = BYTE5(v8);
    BYTE14(v29) = BYTE6(v8);
    result = a1(&v25, &v29, &v29 + BYTE6(v8));
    if (v4)
    {
      v12 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
      *v3 = v29;
      v3[1] = v12;
      return result;
    }

    v14 = v25;
    v15 = v26;
    v16 = v27;
    v17 = v28;
    v20 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
    *v3 = v29;
    v3[1] = v20;
    goto LABEL_20;
  }

  v18 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_25DD01088(v9, v8);
  *v3 = xmmword_25DD99B90;
  sub_25DD01088(0, 0xC000000000000000);
  v19 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_25DD96654() && __OFSUB__(v9, sub_25DD96684()))
    {
LABEL_24:
      __break(1u);
    }

    sub_25DD96694();
    swift_allocObject();
    v21 = sub_25DD96634();

    v18 = v21;
  }

  if (v19 < v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_25DD26458(v9, v9 >> 32, a1, &v25);
  v15 = v26;
  v16 = v27;
  v23 = v28;
  v24 = v25;

  *v5 = v9;
  v5[1] = v18 | 0x4000000000000000;
  if (v4)
  {
    return result;
  }

  v17 = v23;
  v14 = v24;
LABEL_20:
  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  return result;
}

void *sub_25DD263D8@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a4 = v10;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v9;
      return result;
    }
  }

  else
  {
    result = (a1)(&v10, 0, 0, 0, a3);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD26458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_25DD96654();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_25DD96684();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_25DD96674();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *a4 = v19;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
  }

  return result;
}

uint64_t sub_25DD26524(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_25DD96B74();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_25DD96B74();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_25DD96654();
  if (a1)
  {
    a1 = sub_25DD96684();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25DD96654() || !__OFSUB__(v5, sub_25DD96684()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_25DD96674();
  return sub_25DD96B74();
}

uint64_t sub_25DD266D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25DD26718()
{
  result = qword_27FCC2400;
  if (!qword_27FCC2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2400);
  }

  return result;
}

double sub_25DD26798@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a5 = xmmword_25DD99BA0;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v12[0] = a3;
      v12[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v9 = v12;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = a5;
      v9 = sub_25DD971D4();
      a5 = v11;
    }

    sub_25DD2683C(v9, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_25DD2683C@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v7 = result;
  v8 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a2 & 0xC;
  v11 = a2;
  if (v10 == 4 << v8)
  {
    v13 = a2;
    v14 = a6;
    v15 = a5;
    v16 = a3;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v13;
    a3 = v16;
    a5 = v15;
    a6 = v14;
    v11 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v12 = v11 >> 16;
      if (v10 != v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a6;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v11 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  result = sub_25DD96C34();
  a5 = v21;
  v12 = result;
  a6 = v17;
  a3 = v20;
  a2 = v19;
  if (v10 == v9)
  {
LABEL_14:
    v22 = a6;
    v23 = a5;
    v24 = a3;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v24;
    a5 = v23;
    a6 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v9)
  {
    v25 = a2;
    v26 = a6;
    v27 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v25;
    a5 = v27;
    a6 = v26;
    a3 = result;
    if ((v27 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v28 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v28 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v28 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v29 = a6;
  result = sub_25DD96C34();
  a6 = v29;
LABEL_21:
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  if (v12 + result < v12)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v31 = (v12 + v7);
  }

  else
  {
    v31 = 0;
  }

  return sub_25DD25F58(v31, v30, a6);
}

double sub_25DD26A54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v15 = *a3;
  v16 = v5;
  v17 = v6;
  sub_25DD263D8(sub_25DD26C1C, a1, a2, &v11);
  v7 = v12;
  v8 = v13;
  result = *&v11;
  v10 = v14;
  *a4 = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t sub_25DD26ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_25DD18200(v9, a1, a2, *a3, a3[1], a3[2], a3[3]);
  v6 = v10;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;
}

uint64_t sub_25DD26B4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_25DD96694();
      swift_allocObject();
      sub_25DD96664();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25DD96744();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25DD26C08(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25DD01088(result, a2);
  }

  return result;
}

uint64_t sub_25DD26C3C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
  *a4 = a1;
  sub_25DD26D44();
  swift_allocError();
  *v7 = a3;

  sub_25DD97174();
  v8 = *MEMORY[0x277D84170];
  v9 = sub_25DD97194();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

unint64_t sub_25DD26D44()
{
  result = qword_27FCC2420;
  if (!qword_27FCC2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2420);
  }

  return result;
}

uint64_t static DecodingError.failedToDecodeOneOfSchema(type:codingPath:errors:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
  *a4 = a1;
  sub_25DD26D44();
  swift_allocError();
  *v7 = a3;

  sub_25DD97174();
  v8 = *MEMORY[0x277D84170];
  v9 = sub_25DD97194();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

uint64_t static DecodingError.unknownOneOfDiscriminator(discriminatorKey:discriminatorValue:codingPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2428, &qword_25DD99C28);
  sub_25DD08A7C(a1, a5);

  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000047, 0x800000025DDAA2B0);
  MEMORY[0x25F8A3200](a2, a3);
  MEMORY[0x25F8A3200](11815, 0xE200000000000000);
  sub_25DD97174();
  v9 = *MEMORY[0x277D84158];
  v10 = sub_25DD97194();
  v11 = *(*(v10 - 8) + 104);

  return v11(a5, v9, v10);
}

uint64_t static DecodingError.verifyAtLeastOneSchemaIsNotNil(_:type:codingPath:errors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    while (1)
    {
      sub_25DD27160(v7, v14);
      v8 = v14[3];
      result = sub_25DD114CC(v14, &qword_27FCC2430, &unk_25DD99C30);
      if (v8)
      {
        break;
      }

      v7 += 32;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = sub_25DD97194();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    *v12 = a2;
    sub_25DD26D44();
    swift_allocError();
    *v13 = a4;

    sub_25DD97174();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84170], v10);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25DD27160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2430, &unk_25DD99C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD271D4(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_25DD27200(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  v46 = v1;
  if (v1)
  {
    v55 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v1, 0);
    v4 = v55;
    v5 = (a1 + 32);
    do
    {
      v6 = *v5;
      v50 = v6;
      v7 = v6;
      v8 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2438, &qword_25DD99C40);
      if (swift_dynamicCast())
      {
        sub_25DCFE2FC(v48, &v51);
        v9 = v53;
        v10 = v54;
        __swift_project_boxed_opaque_existential_1(&v51, v53);
        v11 = (*(v10 + 8))(v9, v10);
        v13 = v12;
        MEMORY[0x25F8A43F0](v6);
        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      else
      {
        v49 = 0;
        memset(v48, 0, sizeof(v48));
        sub_25DD114CC(v48, &qword_27FCC2440, &unk_25DD99C48);
        v51 = 0;
        v52 = 0xE000000000000000;
        *&v48[0] = v6;
        sub_25DD97224();
        MEMORY[0x25F8A43F0](v6);
        v11 = v51;
        v13 = v52;
      }

      v55 = v4;
      v15 = v4[2];
      v14 = v4[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_25DD055C4((v14 > 1), v15 + 1, 1);
        v4 = v55;
      }

      v4[2] = v16;
      v17 = &v4[2 * v15];
      v17[4] = v11;
      v17[5] = v13;
      ++v5;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x277D84F90];
LABEL_12:
    v51 = v2;
    result = sub_25DD27838(0, v16, 0);
    v19 = v51;
    v20 = v4[2];
    v47 = -v16;
    v21 = v4 + 5;
    v22 = 1;
    do
    {
      if (!v20)
      {
        __break(1u);
        return result;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v51 = v19;
      v26 = v19[2];
      v25 = v19[3];

      if (v26 >= v25 >> 1)
      {
        result = sub_25DD27838((v25 > 1), v26 + 1, 1);
        v19 = v51;
      }

      v19[2] = v26 + 1;
      v27 = &v19[3 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v27[6] = v23;
      --v20;
      ++v22;
      v21 += 2;
    }

    while (v47 + v22 != 1);

    v2 = MEMORY[0x277D84F90];
    v28 = v19[2];
    if (!v28)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v16 = *(MEMORY[0x277D84F90] + 16);
  if (v16)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v19 = MEMORY[0x277D84F90];

  v28 = v19[2];
  if (v28)
  {
LABEL_18:
    *&v48[0] = v2;
    sub_25DD055C4(0, v28, 0);
    v29 = *&v48[0];
    v30 = v19 + 6;
    do
    {
      v31 = *(v30 - 2);
      v32 = *(v30 - 1);
      v33 = *v30;
      v51 = 0x20726F727245;
      v52 = 0xE600000000000000;
      v55 = v31;

      v34 = sub_25DD97374();
      MEMORY[0x25F8A3200](v34);

      MEMORY[0x25F8A3200](5972026, 0xE300000000000000);
      MEMORY[0x25F8A3200](v32, v33);
      MEMORY[0x25F8A3200](93, 0xE100000000000000);

      v35 = v51;
      v36 = v52;
      *&v48[0] = v29;
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_25DD055C4((v37 > 1), v38 + 1, 1);
        v29 = *&v48[0];
      }

      *(v29 + 16) = v38 + 1;
      v39 = v29 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v36;
      v30 += 3;
      --v28;
    }

    while (v28);

    goto LABEL_25;
  }

LABEL_24:

  v29 = MEMORY[0x277D84F90];
LABEL_25:
  v51 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  v40 = sub_25DD96AD4();
  v42 = v41;

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_25DD97124();

  v51 = 0xD000000000000015;
  v52 = 0x800000025DDAA300;
  *&v48[0] = v46;
  v43 = sub_25DD97374();
  MEMORY[0x25F8A3200](v43);

  MEMORY[0x25F8A3200](0x726F72726520, 0xE600000000000000);
  if (v46 == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = 115;
  }

  if (v46 == 1)
  {
    v45 = 0xE000000000000000;
  }

  else
  {
    v45 = 0xE100000000000000;
  }

  MEMORY[0x25F8A3200](v44, v45);

  MEMORY[0x25F8A3200](2112041, 0xE300000000000000);
  MEMORY[0x25F8A3200](v40, v42);

  return v51;
}

uint64_t sub_25DD27728(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0x726F727265206F4ELL;
  }

  v1 = *(a1 + 32);
  v2 = v1;
  sub_25DD97124();

  swift_getErrorValue();
  v3 = sub_25DD97904();
  MEMORY[0x25F8A3200](v3);

  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  MEMORY[0x25F8A43F0](v1);
  return 0xD000000000000028;
}

void *sub_25DD27838(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25DD2786C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD2786C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2448, &qword_25DD99D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2450, &unk_25DD99D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25DD279B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD965E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  sub_25DD965C4();
  sub_25DD07E24();
  v8 = sub_25DD96F94();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t ParameterStyle.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD27B54()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD27BC8(uint64_t a1)
{
  v2 = *v1;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

unint64_t sub_25DD27C7C()
{
  result = qword_27FCC2458;
  if (!qword_27FCC2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParameterStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParameterStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t URL.init(validatingOpenAPIServerURL:variables:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  result = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v32 = &v31 - v11;
    v33 = a4;
    v36 = v4;
    v13 = 0;
    v14 = (a3 + 64);
    v34 = a3;
    while (v13 < *(a3 + 16))
    {
      v17 = *(v14 - 4);
      v18 = *(v14 - 3);
      v19 = *(v14 - 2);
      v20 = *(v14 - 1);
      v21 = *v14;
      v43 = v19;
      if (v21)
      {
        v41 = v19;
        v42 = v20;
        MEMORY[0x28223BE20](result);
        v29 = &v41;

        v22 = v36;
        v23 = sub_25DD28750(sub_25DD07D10, v28, v21);
        v36 = v22;
        if ((v23 & 1) == 0)
        {

          sub_25DD01034();
          swift_allocError();
          *v26 = v17;
          *(v26 + 8) = v18;
          *(v26 + 16) = v43;
          *(v26 + 24) = v20;
          v27 = 1;
          *(v26 + 32) = v21;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v13;
      v41 = a1;
      v42 = a2;
      v39 = 123;
      v40 = 0xE100000000000000;
      MEMORY[0x25F8A3200](v17, v18);

      MEMORY[0x25F8A3200](125, 0xE100000000000000);
      v37 = v43;
      v38 = v20;
      v29 = sub_25DD07E24();
      v30 = v29;
      v28[1] = v29;
      v28[0] = MEMORY[0x277D837D0];
      a1 = sub_25DD96FA4();
      v16 = v15;

      a2 = v16;
      v14 += 5;
      a3 = v34;
      if (v35 == v13)
      {

        v12 = v32;
        a4 = v33;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    sub_25DD966F4();
    v24 = sub_25DD96704();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v12, 1, v24) == 1)
    {
      sub_25DD281C4(v12);
      sub_25DD01034();
      swift_allocError();
      v27 = 0;
      *v26 = a1;
      *(v26 + 8) = a2;
LABEL_15:
      *(v26 + 48) = v27;
      return swift_willThrow();
    }

    else
    {

      return (*(v25 + 32))(a4, v12, v24);
    }
  }

  return result;
}

uint64_t sub_25DD281C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServerVariable.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerVariable.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerVariable.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerVariable.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerVariable.allowedValues.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ServerVariable.init(name:value:allowedValues:)(OpenAPIRuntimeInternal::ServerVariable *__return_ptr retstr, Swift::String name, Swift::String value, Swift::OpaquePointer_optional allowedValues)
{
  retstr->name = name;
  retstr->value = value;
  retstr->allowedValues.value._rawValue = allowedValues.value._rawValue;
}

uint64_t ServerVariable.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25DD96B94();
  sub_25DD96B94();
  if (!v2)
  {
    return sub_25DD97984();
  }

  sub_25DD97984();
  result = MEMORY[0x25F8A3F90](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_25DD96B94();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t ServerVariable.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_25DD97964();
  sub_25DD96B94();
  sub_25DD96B94();
  if (v1)
  {
    sub_25DD97984();
    MEMORY[0x25F8A3F90](*(v1 + 16));
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 40;
      do
      {

        sub_25DD96B94();

        v3 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    sub_25DD97984();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD28534(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25DD96B94();
  sub_25DD96B94();
  if (!v2)
  {
    return sub_25DD97984();
  }

  sub_25DD97984();
  result = MEMORY[0x25F8A3F90](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_25DD96B94();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_25DD285E8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25DD97964();
  sub_25DD96B94();
  sub_25DD96B94();
  if (v2)
  {
    sub_25DD97984();
    MEMORY[0x25F8A3F90](*(v2 + 16));
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 40;
      do
      {

        sub_25DD96B94();

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    sub_25DD97984();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD286C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25DD975D4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25DD28750(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t _s22OpenAPIRuntimeInternal14ServerVariableV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_25DD975D4() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_25DD975D4() & 1) != 0)
    {
      if (v3)
      {
        if (v7 && (sub_25DD286C0(v3, v7) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_25DD288B4()
{
  result = qword_27FCC2468;
  if (!qword_27FCC2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2468);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25DD2891C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25DD28964(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25DD289BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_25DD96704();
  __swift_allocate_value_buffer(v3, qword_27FCC5148);
  v4 = __swift_project_value_buffer(v3, qword_27FCC5148);
  sub_25DD966F4();
  v5 = *(v3 - 8);
  if ((*(v5 + 48))(v2, 1, v3) != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  sub_25DD281C4(v2);
  result = sub_25DD97294();
  __break(1u);
  return result;
}

uint64_t sub_25DD28B34()
{
  if (qword_27FCC5140 != -1)
  {
    swift_once();
  }

  v0 = sub_25DD96704();

  return __swift_project_value_buffer(v0, qword_27FCC5148);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static URL.defaultOpenAPIServerURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCC5140 != -1)
  {
    swift_once();
  }

  v2 = sub_25DD96704();
  v3 = __swift_project_value_buffer(v2, qword_27FCC5148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t URL.init(validatingOpenAPIServerURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25DD966F4();
  v9 = sub_25DD96704();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25DD281C4(v8);
    sub_25DD01034();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 48) = 0;
    return swift_willThrow();
  }

  else
  {

    return (*(v10 + 32))(a3, v8, v9);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t UndocumentedPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25DD96814();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD967E4();
  return UndocumentedPayload.init(headerFields:body:)(v4, 0, a1);
}

uint64_t Configuration.init(dateTranscoder:multipartBoundaryGenerator:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25DD08A7C(a1, v11);
  sub_25DD08A7C(a2, v10);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_25DD195AC(&v7);
  Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)(v11, &v7, v10, v8, a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_25DD28F50@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for RandomMultipartBoundaryGenerator;
  a1[4] = &protocol witness table for RandomMultipartBoundaryGenerator;
  v2 = swift_allocObject();
  *a1 = v2;
  return static MultipartBoundaryGenerator<>.random.getter((v2 + 16));
}

uint64_t Configuration.init(dateTranscoder:multipartBoundaryGenerator:xmlCoder:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25DD08A7C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2470, "Fr");
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25DD999D0;
  *(v8 + 32) = *sub_25DD1921C();
  *(v8 + 40) = *sub_25DD19204();
  *&v11[0] = v8;
  sub_25DD199BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2478, &unk_25DD99F00);
  sub_25DD290D4();
  sub_25DD970A4();
  v12[0] = v12[1];
  sub_25DD08A7C(a2, v11);
  sub_25DD19880(a3, v10);
  Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)(v13, v12, v11, v10, a4);
  sub_25DD29138(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25DD290D4()
{
  result = qword_27FCC2480;
  if (!qword_27FCC2480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2478, &unk_25DD99F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2480);
  }

  return result;
}

uint64_t sub_25DD29138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2358, &qword_25DD996F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD291CC()
{
  sub_25DD964F4();
  swift_allocObject();
  return sub_25DD964E4();
}

uint64_t ServerSentEventsDeserializationSequence.init(upstream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, a2);
  ServerSentEventsDeserializationSequence.init(upstream:while:)(v10, sub_25DD291C4, 0, a2, a3, a4);
  return (*(v8 + 8))(a1, a2);
}

uint64_t ClientError.operationID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientError.operationID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

_OWORD *ClientError.operationInput.setter(_OWORD *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_25DD0DD04(a1, (v1 + 16));
}

uint64_t type metadata accessor for ClientError(uint64_t a1)
{
  result = qword_27FCC52E0;
  if (!qword_27FCC52E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClientError.requestBody.getter()
{
  type metadata accessor for ClientError(0);
}

uint64_t ClientError.requestBody.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientError(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25DD29760@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25DD29864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ClientError.responseBody.getter()
{
  type metadata accessor for ClientError(0);
}

uint64_t ClientError.responseBody.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientError(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientError.causeDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientError(0) + 44));

  return v1;
}

uint64_t ClientError.causeDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClientError(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *ClientError.underlyingError.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientError(0) + 48));
  v2 = v1;
  return v1;
}

uint64_t ClientError.underlyingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientError(0) + 48);
  result = MEMORY[0x25F8A43F0](*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientError.init(operationID:operationInput:request:requestBody:baseURL:response:responseBody:causeDescription:underlyingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for ClientError(0);
  v17 = v16[6];
  v18 = sub_25DD968B4();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v20 = v16[7];
  v19 = v16[8];
  v21 = sub_25DD96704();
  (*(*(v21 - 8) + 56))(a9 + v19, 1, 1, v21);
  v22 = v16[9];
  v23 = sub_25DD96984();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = v16[10];
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_25DD0DD04(a3, (a9 + 16));
  sub_25DD29864(a4, a9 + v17, &qword_27FCC2488, &unk_25DD99F10);
  *(a9 + v20) = a5;
  sub_25DD29864(a6, a9 + v19, &qword_27FCC2460, &qword_25DD99E20);
  result = sub_25DD29864(a7, a9 + v22, &qword_27FCC2490, &unk_25DD99F20);
  *(a9 + v24) = a8;
  v26 = (a9 + v16[11]);
  *v26 = a10;
  v26[1] = a11;
  *(a9 + v16[12]) = a12;
  return result;
}

uint64_t ClientError.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_25DD97124();
  v47 = v52;
  v48 = v53;
  MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAA3B0);
  v10 = type metadata accessor for ClientError(0);
  MEMORY[0x25F8A3200](*(v1 + v10[11]), *(v1 + v10[11] + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA3E0);
  v11 = *(v0 + v10[12]);
  v51 = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2438, &qword_25DD99C40);
  if (swift_dynamicCast())
  {
    sub_25DCFE2FC(v49, &v52);
    v13 = v54;
    v14 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v15 = (*(v14 + 8))(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v18 = v15;
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    sub_25DD114CC(v49, &qword_27FCC2440, &unk_25DD99C48);
    v52 = 0;
    v53 = 0xE000000000000000;
    *&v49[0] = v11;
    sub_25DD97224();
    v18 = v52;
    v17 = v53;
  }

  v19 = 0x3E6C696E3CLL;
  MEMORY[0x25F8A3200](v18, v17);

  MEMORY[0x25F8A3200](0x74617265706F202CLL, 0xEF203A44496E6F69);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0xD000000000000012, 0x800000025DDAA400);
  sub_25DD0DD14((v1 + 2), &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  v20 = sub_25DD96B44();
  MEMORY[0x25F8A3200](v20);

  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEB00000000203A74);
  sub_25DD12B90(v1 + v10[6], v9, &qword_27FCC2488, &unk_25DD99F10);
  v21 = sub_25DD968B4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_25DD114CC(v9, &qword_27FCC2488, &unk_25DD99F10);
    v23 = 0xE500000000000000;
    v24 = 0x3E6C696E3CLL;
  }

  else
  {
    v24 = sub_25DD3EABC();
    v23 = v25;
    (*(v22 + 8))(v9, v21);
  }

  MEMORY[0x25F8A3200](v24, v23);

  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEF203A79646F4274);
  if (*(v1 + v10[7]))
  {
    v26 = sub_25DD3EEC8();
    v28 = v27;
  }

  else
  {
    v28 = 0xE500000000000000;
    v26 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v26, v28);

  MEMORY[0x25F8A3200](0x525565736162202CLL, 0xEB00000000203A4CLL);
  sub_25DD12B90(v1 + v10[8], v6, &qword_27FCC2460, &qword_25DD99E20);
  v29 = sub_25DD96704();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v6, 1, v29) == 1)
  {
    sub_25DD114CC(v6, &qword_27FCC2460, &qword_25DD99E20);
    v31 = 0xE500000000000000;
    v32 = 0x3E6C696E3CLL;
  }

  else
  {
    v33 = sub_25DD966E4();
    v31 = v34;
    (*(v30 + 8))(v6, v29);
    v32 = v33;
  }

  v35 = v46;
  MEMORY[0x25F8A3200](v32, v31);

  MEMORY[0x25F8A3200](0x6E6F70736572202CLL, 0xEC000000203A6573);
  sub_25DD12B90(v1 + v10[9], v35, &qword_27FCC2490, &unk_25DD99F20);
  v36 = sub_25DD96984();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_25DD114CC(v35, &qword_27FCC2490, &unk_25DD99F20);
    v38 = 0xE500000000000000;
    v39 = 0x3E6C696E3CLL;
  }

  else
  {
    v40 = sub_25DD3ECDC();
    v38 = v41;
    (*(v37 + 8))(v35, v36);
    v39 = v40;
  }

  MEMORY[0x25F8A3200](v39, v38);

  MEMORY[0x25F8A3200](0xD000000000000010, 0x800000025DDAA420);
  if (*(v1 + v10[10]))
  {
    v19 = sub_25DD3EEC8();
    v43 = v42;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x25F8A3200](v19, v43);

  return v47;
}

uint64_t ClientError.errorDescription.getter()
{
  v1 = v0;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000034, 0x800000025DDAA440);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0x6573756163202C22, 0xEE00222079622064);
  v2 = type metadata accessor for ClientError(0);
  MEMORY[0x25F8A3200](*(v1 + *(v2 + 44)), *(v1 + *(v2 + 44) + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA480);
  swift_getErrorValue();
  v3 = sub_25DD97904();
  MEMORY[0x25F8A3200](v3);

  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_25DD2A584()
{
  result = qword_27FCC2498;
  if (!qword_27FCC2498)
  {
    type metadata accessor for ClientError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2498);
  }

  return result;
}

void sub_25DD2A608(uint64_t a1)
{
  sub_25DD2A780();
  if (v1 <= 0x3F)
  {
    sub_25DD2A7D8(319, &qword_27FCC24A8, MEMORY[0x277D0F9E8]);
    if (v2 <= 0x3F)
    {
      sub_25DD2A7D8(319, &qword_27FCC2300, type metadata accessor for HTTPBody);
      if (v3 <= 0x3F)
      {
        sub_25DD2A7D8(319, &qword_27FCC24B0, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          sub_25DD2A7D8(319, &qword_27FCC24B8, MEMORY[0x277D0F9F0]);
          if (v5 <= 0x3F)
          {
            sub_25DD2A82C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_25DD2A780()
{
  result = qword_27FCC24A0;
  if (!qword_27FCC24A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FCC24A0);
  }

  return result;
}

void sub_25DD2A7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25DD96F04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25DD2A82C()
{
  result = qword_27FCC24C0;
  if (!qword_27FCC24C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FCC24C0);
  }

  return result;
}

unint64_t sub_25DD2A890()
{
  v1 = sub_25DD97184();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25DD97194();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v0, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D84160])
  {
    (*(v6 + 96))(v8, v5);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    (*(v2 + 32))(v4, v8 + *(v10 + 48), v1);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_25DD97124();

    v11 = 0x6D73694D65707974;
    v12 = 0xED00002068637461;
LABEL_5:
    v24 = v11;
    v25 = v12;
    v14 = sub_25DD97A54();
    MEMORY[0x25F8A3200](v14);

    MEMORY[0x25F8A3200](2108704, 0xE300000000000000);
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D84170])
  {
    (*(v6 + 96))(v8, v5);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    (*(v2 + 32))(v4, v8 + *(v13 + 48), v1);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_25DD97124();

    v11 = 0x746F4E65756C6176;
    v12 = 0xEE0020646E756F46;
    goto LABEL_5;
  }

  if (v9 == *MEMORY[0x277D84158])
  {
    (*(v6 + 96))(v8, v5);
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2428, &qword_25DD99C28) + 48);
    sub_25DCFE2FC(v8, &v24);
    (*(v2 + 32))(v4, v8 + v19, v1);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_25DD97124();
    MEMORY[0x25F8A3200](0x6F46746F4E79656BLL, 0xEC00000020646E75);
    __swift_project_boxed_opaque_existential_1(&v24, v26);
    sub_25DD975A4();
    MEMORY[0x25F8A3200](2108704, 0xE300000000000000);
    v20 = sub_25DD2B308(MEMORY[0x277D84180], MEMORY[0x277D84188], MEMORY[0x277D84178]);
    MEMORY[0x25F8A3200](v20);

    v16 = v22;
    v17 = v23;
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(&v24);
    goto LABEL_7;
  }

  if (v9 != *MEMORY[0x277D84168])
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x25F8A3200](0x3A6E776F6E6B6E75, 0xE900000000000020);
    sub_25DD97224();
    v16 = v24;
    v17 = v25;
    (*(v6 + 8))(v8, v5);
    goto LABEL_7;
  }

  (*(v6 + 96))(v8, v5);
  (*(v2 + 32))(v4, v8, v1);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_25DD97124();

  v24 = 0xD000000000000010;
  v25 = 0x800000025DDAA4A0;
LABEL_6:
  v15 = sub_25DD2B308(MEMORY[0x277D84180], MEMORY[0x277D84188], MEMORY[0x277D84178]);
  MEMORY[0x25F8A3200](v15);

  v16 = v24;
  v17 = v25;
  (*(v2 + 8))(v4, v1);
LABEL_7:
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_25DD97124();

  v24 = 0x676E69646F636544;
  v25 = 0xEF203A726F727245;
  MEMORY[0x25F8A3200](v16, v17);

  return v24;
}

uint64_t sub_25DD2AF30()
{
  v1 = sub_25DD971B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25DD971C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0, v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D841A8])
  {
    (*(v6 + 96))(v8, v5);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2228, &qword_25DD98ED0) + 48);
    sub_25DD0DD04(v8, v16);
    (*(v2 + 32))(v4, &v8[v9], v1);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_25DD97124();
    MEMORY[0x25F8A3200](0x5664696C61766E69, 0xED00002065756C61);
    sub_25DD97224();
    MEMORY[0x25F8A3200](2108704, 0xE300000000000000);
    v10 = sub_25DD2B308(MEMORY[0x277D841B8], MEMORY[0x277D841C0], MEMORY[0x277D841B0]);
    MEMORY[0x25F8A3200](v10);

    v12 = v14;
    v11 = v15;
    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    MEMORY[0x25F8A3200](0x3A6E776F6E6B6E75, 0xE900000000000020);
    sub_25DD97224();
    v11 = *(&v16[0] + 1);
    v12 = *&v16[0];
    (*(v6 + 8))(v8, v5);
  }

  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_25DD97124();

  *&v16[0] = 0x676E69646F636E45;
  *(&v16[0] + 1) = 0xEF203A726F727245;
  MEMORY[0x25F8A3200](v12, v11);

  return *&v16[0];
}

uint64_t sub_25DD2B308(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = a1();
  v6 = *(v5 + 16);
  if (v6)
  {
    v26 = a2;
    v27 = a3;
    v28 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v6, 0);
    v7 = v28;
    v8 = v5 + 32;
    do
    {
      sub_25DD08A7C(v8, &v29);
      __swift_project_boxed_opaque_existential_1(&v29, v31);
      v9 = sub_25DD97374();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v13 = *(v28 + 16);
      v12 = *(v28 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25DD055C4((v12 > 1), v13 + 1, 1);
      }

      *(v28 + 16) = v13 + 1;
      v14 = v28 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v8 += 40;
      --v6;
    }

    while (v6);

    a2 = v26;
    a3 = v27;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v29 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  v15 = sub_25DD96AD4();
  v17 = v16;

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_25DD97124();

  v29 = 2126945;
  v30 = 0xE300000000000000;
  MEMORY[0x25F8A3200](v15, v17);

  v18 = MEMORY[0x25F8A3200](8250, 0xE200000000000000);
  v19 = a2(v18);
  MEMORY[0x25F8A3200](v19);

  v20 = MEMORY[0x25F8A3200](0xD000000000000014, 0x800000025DDAA4C0);
  v21 = a3(v20);
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
    sub_25DD97224();
    MEMORY[0x25F8A43F0](v22);
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
    v23 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v23, v24);

  MEMORY[0x25F8A3200](41, 0xE100000000000000);
  return v29;
}

BOOL sub_25DD2B628(uint64_t a1, uint64_t a2)
{
  v2 = sub_25DD972F4();

  return v2 != 0;
}

uint64_t sub_25DD2B670()
{
  sub_25DD97964();
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD2B6D4(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD2B720@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25DD972F4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_25DD2B78C()
{
  sub_25DD2B7EC(v0, v2);
  switch(v3)
  {
    case 17:
      return v2[0];
    case 16:
      return v2[1];
    case 15:
      return v2[0];
  }

  sub_25DD2B824(v2);
  return 0;
}

unint64_t sub_25DD2B858()
{
  sub_25DD2B7EC(v0, &v50);
  v1 = v50;
  v2 = v52;
  switch(v55)
  {
    case 1:
      v17 = v51;
      v18 = *(&v52 + 1);
      v19 = v53;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000020, 0x800000025DDAA970);
      MEMORY[0x25F8A3200](v1, v17);

      MEMORY[0x25F8A3200](0xD000000000000019, 0x800000025DDAA9A0);
      MEMORY[0x25F8A3200](v2, v18);

      MEMORY[0x25F8A3200](0xD000000000000024, 0x800000025DDAA9C0);
      v20 = *(v19 + 16);
      if (v20)
      {
        v48 = MEMORY[0x277D84F90];
        sub_25DD055C4(0, v20, 0);
        v21 = (v19 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;

          MEMORY[0x25F8A3200](v22, v23);
          MEMORY[0x25F8A3200](39, 0xE100000000000000);

          v25 = *(v48 + 16);
          v24 = *(v48 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_25DD055C4((v24 > 1), v25 + 1, 1);
          }

          *(v48 + 16) = v25 + 1;
          v26 = v48 + 16 * v25;
          *(v26 + 32) = 39;
          *(v26 + 40) = 0xE100000000000000;
          v21 += 2;
          --v20;
        }

        while (v20);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
      sub_25DD0CFAC();
      v2 = sub_25DD96AD4();
      v42 = v47;

      goto LABEL_47;
    case 2:
      v9 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v10 = 0x800000025DDAA940;
      v11 = 0xD000000000000020;
      goto LABEL_13;
    case 3:
      v9 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v10 = 0x800000025DDAA910;
      v11 = 0xD000000000000025;
      goto LABEL_13;
    case 4:
      v9 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v10 = 0x800000025DDAA8F0;
      v11 = 0xD00000000000001CLL;
LABEL_13:
      *&v49[0] = v11;
      *(&v49[0] + 1) = v10;
      goto LABEL_31;
    case 5:
      v29 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000032, 0x800000025DDAA8B0);
      v30 = sub_25DD2C5B8(128, v1, v29);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v1 = MEMORY[0x25F8A3180](v30, v32, v34, v36);
      v9 = v37;

LABEL_31:
      MEMORY[0x25F8A3200](v1, v9);

      MEMORY[0x25F8A3200](39, 0xE100000000000000);
      return *&v49[0];
    case 6:
      v14 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v15 = 0x800000025DDAA880;
      v16 = 0xD000000000000022;
      goto LABEL_35;
    case 7:
      v14 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v15 = 0x800000025DDAA850;
      v16 = 0xD000000000000027;
LABEL_35:
      *&v49[0] = v16;
      *(&v49[0] + 1) = v15;
      MEMORY[0x25F8A3200](v1, v14);

      MEMORY[0x25F8A3200](11815, 0xE200000000000000);
      return *&v49[0];
    case 8:
      v43 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD00000000000002ELL, 0x800000025DDAA820);
      MEMORY[0x25F8A3200](v1, v43);

      MEMORY[0x25F8A3200](0x3A646E696B202C27, 0xE900000000000020);
      v44 = 0xE500000000000000;
      MEMORY[0x25F8A3200](0x7972657571, 0xE500000000000000);
      MEMORY[0x25F8A3200](0x3A656C797473202CLL, 0xE900000000000020);
      sub_25DD97224();
      MEMORY[0x25F8A3200](0x646F6C707865202CLL, 0xEB00000000203A65);
      if ((v2 & 0x100) != 0)
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if ((v2 & 0x100) != 0)
      {
        v44 = 0xE400000000000000;
      }

      MEMORY[0x25F8A3200](v45, v44);
      goto LABEL_48;
    case 9:
      v12 = v51;
      sub_25DD97124();

      *&v49[0] = 0xD000000000000021;
      *(&v49[0] + 1) = 0x800000025DDAA7F0;
      MEMORY[0x25F8A3200](v1, v12);

      v7 = 0x73696D2073692027;
      v8 = 0xED00002E676E6973;
      goto LABEL_9;
    case 10:
      v41 = v51;
      v42 = *(&v52 + 1);
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAA7C0);
      MEMORY[0x25F8A3200](v1, v41);

      MEMORY[0x25F8A3200](0x766965636572202CLL, 0xEC000000203A6465);
LABEL_47:
      MEMORY[0x25F8A3200](v2, v42);
      goto LABEL_48;
    case 11:
      v3 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA7A0;
      v5 = 0xD00000000000001ALL;
      goto LABEL_33;
    case 12:
      v3 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA780;
      v5 = 0xD000000000000019;
      goto LABEL_33;
    case 13:
      v3 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA700;
      v5 = 0xD000000000000027;
      goto LABEL_33;
    case 14:
      v3 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA6A0;
      v5 = 0xD000000000000028;
      goto LABEL_33;
    case 15:
      sub_25DD2B824(&v50);
      return 0xD000000000000019;
    case 16:
      MEMORY[0x25F8A43F0](v51);
      sub_25DD97124();

      *&v49[0] = 0xD000000000000014;
      *(&v49[0] + 1) = 0x800000025DDAA580;
      v6 = sub_25DD97A54();
      MEMORY[0x25F8A3200](v6);

      v7 = 0xD000000000000011;
      v8 = 0x800000025DDAA5A0;
LABEL_9:
      MEMORY[0x25F8A3200](v7, v8);
      return *&v49[0];
    case 17:
      sub_25DD2B824(&v50);
      return 0xD00000000000001CLL;
    case 18:
      v38 = v51;
      sub_25DD0DD04(&v52, v49);
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD00000000000002BLL, 0x800000025DDAA530);
      MEMORY[0x25F8A3200](v1, v38);

      v39 = 0x6E6F70736572202CLL;
      v40 = 0xEC000000203A6573;
      goto LABEL_45;
    case 19:
      v46 = v51;
      sub_25DD0DD04(&v52, v49);
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000031, 0x800000025DDAA4F0);
      MEMORY[0x25F8A3200](v1, v46);

      v39 = 0x203A79646F62202CLL;
      v40 = 0xE800000000000000;
LABEL_45:
      MEMORY[0x25F8A3200](v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
      sub_25DD97224();
      __swift_destroy_boxed_opaque_existential_1(v49);
      return 0;
    case 20:
      if (!(v52 | v50 | v54 | v53 | *(&v52 + 1) | v51))
      {
        return 0xD000000000000047;
      }

      v27 = v54 | v52 | v53 | *(&v52 + 1) | v51;
      if (v50 == 1 && v27 == 0)
      {
        return 0xD000000000000020;
      }

      if (v50 == 2 && !v27)
      {
        return 0xD00000000000001DLL;
      }

      if (v50 == 3 && !v27)
      {
        return 0xD00000000000001ELL;
      }

      if (v50 != 4 || v27)
      {
        return 0xD000000000000047;
      }

      return 0xD00000000000002ELL;
    default:
      v3 = v51;
      *&v49[0] = 0;
      *(&v49[0] + 1) = 0xE000000000000000;
      sub_25DD97124();

      v4 = 0x800000025DDAA9F0;
      v5 = 0xD000000000000014;
LABEL_33:
      *&v49[0] = v5;
      *(&v49[0] + 1) = v4;
      MEMORY[0x25F8A3200](v1, v3);
LABEL_48:

      return *&v49[0];
  }
}

uint64_t sub_25DD2C3EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_25DD01034();
  swift_allocError();
  v9 = v8;
  *v8 = a1;
  v8[1] = a2;
  sub_25DD0DD14(a3, (v8 + 2));
  *(v9 + 48) = a4;
  swift_willThrow();
}

uint64_t sub_25DD2C470()
{
  v1 = sub_25DD2B7EC(v0, &v8);
  switch(v14)
  {
    case 2:
    case 10:
      v3 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F30](v3);
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 12:
    case 13:
    case 14:
      v1 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2EF0](v1);
    case 7:
      v5 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F20](v5);
    case 11:
      v4 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F00](v4);
    case 15:
    case 16:
    case 17:
      v1 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F10](v1);
    case 18:
    case 19:

      v1 = __swift_destroy_boxed_opaque_existential_1(&v10);
      return MEMORY[0x25F8A2F10](v1);
    case 20:
      if (!(v12 | v13 | v8 | v11 | v10 | v9))
      {
        return MEMORY[0x25F8A2EF0](v1);
      }

      v6 = v12 | v13 | v11 | v10 | v9;
      if (v8 == 1 && v6 == 0)
      {
        return MEMORY[0x25F8A2F60](v1);
      }

      if ((v8 != 2 || v6) && v8 == 3 && !v6)
      {
        return MEMORY[0x25F8A2F10](v1);
      }

      return MEMORY[0x25F8A2EF0](v1);
    default:
      v1 = sub_25DD2B824(&v8);
      return MEMORY[0x25F8A2F60](v1);
  }
}

uint64_t sub_25DD2C5B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25DD96BC4();

    return sub_25DD96CA4();
  }

  return result;
}

unint64_t sub_25DD2C658()
{
  result = qword_27FCC24C8;
  if (!qword_27FCC24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC24C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal12RuntimeErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0x1Fu) <= 0x13)
  {
    return *(a1 + 48) & 0x1F;
  }

  else
  {
    return (*a1 + 20);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25DD2C6E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 49))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0x15)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD2C724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_25DD2C774(uint64_t result, unsigned int a2)
{
  if (a2 > 0x13)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 20;
    LOBYTE(a2) = 20;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RuntimeError.ParameterLocation(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RuntimeError.ParameterLocation(_WORD *result, int a2, int a3)
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

uint64_t ServerError.operationID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerError.operationID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerError.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerError(0) + 20);
  v4 = sub_25DD968B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ServerError(uint64_t a1)
{
  result = qword_27FCC57F0;
  if (!qword_27FCC57F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ServerError.request.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerError(0) + 20);
  v4 = sub_25DD968B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ServerError.requestBody.getter()
{
  type metadata accessor for ServerError(0);
}

uint64_t ServerError.requestBody.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerError(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerError.requestMetadata.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ServerError(0) + 28));
}

uint64_t ServerError.requestMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ServerError(0) + 28);

  *(v1 + v3) = v2;
  return result;
}

uint64_t ServerError.operationInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerError(0) + 32);

  return sub_25DD2CC78(v3, a1);
}

uint64_t sub_25DD2CC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2200, &unk_25DD98EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServerError.operationInput.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerError(0) + 32);

  return sub_25DD0D564(a1, v3);
}

uint64_t ServerError.operationOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerError(0) + 36);

  return sub_25DD2CC78(v3, a1);
}

uint64_t ServerError.operationOutput.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerError(0) + 36);

  return sub_25DD0D564(a1, v3);
}

uint64_t ServerError.causeDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerError(0) + 40));

  return v1;
}

uint64_t ServerError.causeDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ServerError(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *ServerError.underlyingError.getter()
{
  v1 = *(v0 + *(type metadata accessor for ServerError(0) + 44));
  v2 = v1;
  return v1;
}

uint64_t ServerError.underlyingError.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerError(0) + 44);
  result = MEMORY[0x25F8A43F0](*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerError.init(operationID:request:requestBody:requestMetadata:operationInput:operationOutput:causeDescription:underlyingError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a5;
  v17 = type metadata accessor for ServerError(0);
  v18 = v17[6];
  v19 = &a9[v17[8]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &a9[v17[9]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = v17[5];
  v22 = sub_25DD968B4();
  (*(*(v22 - 8) + 32))(&a9[v21], a3, v22);
  *&a9[v18] = a4;
  *&a9[v17[7]] = v16;
  sub_25DD0D564(a6, v19);
  result = sub_25DD0D564(a7, v20);
  v24 = &a9[v17[10]];
  *v24 = a8;
  *(v24 + 1) = a10;
  *&a9[v17[11]] = a11;
  return result;
}

uint64_t ServerError.description.getter()
{
  v1 = v0;
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  sub_25DD97124();
  v24 = 0;
  v25 = 0xE000000000000000;
  MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAAA10);
  v2 = type metadata accessor for ServerError(0);
  MEMORY[0x25F8A3200](*(v1 + v2[10]), *(v1 + v2[10] + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA3E0);
  v3 = *(v0 + v2[11]);
  v23[0] = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2438, &qword_25DD99C40);
  if (swift_dynamicCast())
  {
    sub_25DCFE2FC(v26, &v28);
    v5 = v29;
    v6 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v10 = v7;
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_25DD2D818(v26);
    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    *&v26[0] = v3;
    sub_25DD97224();
    v9 = *(&v28 + 1);
    v10 = v28;
  }

  v11 = 0x3E6C696E3CLL;
  MEMORY[0x25F8A3200](v10, v9);

  MEMORY[0x25F8A3200](0x74617265706F202CLL, 0xEF203A44496E6F69);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEB00000000203A74);
  v12 = sub_25DD3EABC();
  MEMORY[0x25F8A3200](v12);

  MEMORY[0x25F8A3200](0x736575716572202CLL, 0xEF203A79646F4274);
  if (*(v1 + v2[6]))
  {
    v13 = sub_25DD3EEC8();
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v13, v15);

  MEMORY[0x25F8A3200](0x61646174656D202CLL, 0xEC000000203A6174);
  *&v28 = *(v1 + v2[7]);
  v16 = ServerRequestMetadata.description.getter();
  MEMORY[0x25F8A3200](v16);

  MEMORY[0x25F8A3200](0xD000000000000012, 0x800000025DDAA400);
  sub_25DD2CC78(v1 + v2[8], &v28);
  if (v29)
  {
    sub_25DD0DD04(&v28, v26);
    sub_25DD0DD14(v26, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
    v17 = sub_25DD96B44();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v19 = 0xE500000000000000;
    v17 = 0x3E6C696E3CLL;
  }

  MEMORY[0x25F8A3200](v17, v19);

  MEMORY[0x25F8A3200](0xD000000000000013, 0x800000025DDAAA40);
  sub_25DD2CC78(v1 + v2[9], &v28);
  if (v29)
  {
    sub_25DD0DD04(&v28, v26);
    sub_25DD0DD14(v26, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
    v11 = sub_25DD96B44();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x25F8A3200](v11, v21);

  return v24;
}

uint64_t ServerError.errorDescription.getter()
{
  v1 = v0;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000034, 0x800000025DDAAA60);
  MEMORY[0x25F8A3200](*v1, v1[1]);
  MEMORY[0x25F8A3200](0x6573756163202C22, 0xEE00222079622064);
  v2 = type metadata accessor for ServerError(0);
  MEMORY[0x25F8A3200](*(v1 + *(v2 + 40)), *(v1 + *(v2 + 40) + 8));
  MEMORY[0x25F8A3200](0xD000000000000015, 0x800000025DDAA480);
  swift_getErrorValue();
  v3 = sub_25DD97904();
  MEMORY[0x25F8A3200](v3);

  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_25DD2D65C()
{
  result = qword_27FCC24D0;
  if (!qword_27FCC24D0)
  {
    type metadata accessor for ServerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC24D0);
  }

  return result;
}

void sub_25DD2D6E0(uint64_t a1)
{
  sub_25DD968B4();
  if (v1 <= 0x3F)
  {
    sub_25DD13508(319);
    if (v2 <= 0x3F)
    {
      sub_25DD2D7B4(319);
      if (v3 <= 0x3F)
      {
        sub_25DD2A82C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25DD2D7B4(uint64_t a1)
{
  if (!qword_27FCC24D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2208, &unk_25DD9A0A0);
    v1 = sub_25DD96F04();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCC24D8);
    }
  }
}

uint64_t sub_25DD2D818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2440, &unk_25DD99C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD2D934(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_25DD2D964(v2);
  return v2;
}

unint64_t sub_25DD2D964(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_25DD2D974(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  result = sub_25DD2D9AC(*(v2 + v4));
  *(v2 + v4) = a1;
  return result;
}

unint64_t sub_25DD2D9AC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t JSONLinesDeserializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD2DA00, 0, 0);
}

uint64_t sub_25DD2DA00()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 52);
  v3 = *(v1 + 16);
  *(v0 + 16) = v3;
  *(v0 + 152) = v2;
  *(v0 + 96) = v3;
  v4 = *(v1 + 32);
  *(v0 + 112) = v4;
  v5 = *(v1 + 40);
  *(v0 + 120) = v5;
  *&v3 = v4;
  *(&v3 + 1) = v5;
  *(v0 + 32) = v3;
  *(v0 + 128) = type metadata accessor for JSONLinesDeserializationSequence.Iterator.StateMachine(0, v0 + 16);
  sub_25DD2DE24();
  if (v6 == 1)
  {
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_25DD2DB68;
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 48, v9, v8);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_25DD2DB68()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_25DD2DE0C;
  }

  else
  {
    v2 = sub_25DD2DC7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD2DC7C()
{
  v1 = sub_25DD2DF8C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v1 != 1)
  {
    v7 = v3;
    v8 = v5;
    goto LABEL_10;
  }

  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 128) = type metadata accessor for JSONLinesDeserializationSequence.Iterator.StateMachine(0, v0 + 16);
  sub_25DD2DE24();
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = swift_task_alloc();
      *(v0 + 136) = v9;
      *v9 = v0;
      v9[1] = sub_25DD2DB68;
      v10 = *(v0 + 120);
      v11 = *(v0 + 104);

      return MEMORY[0x282200308](v0 + 48, v11, v10);
    }
  }

  else
  {
LABEL_8:
    v7 = v6;
    v8 = v6;
  }

LABEL_10:
  v12 = *(v0 + 8);

  return v12(v6, v7, 0, v8);
}

void sub_25DD2DE24()
{
  v1 = *v0;
  if (!*v0)
  {
    return;
  }

  if (v1 == 1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v2 = sub_25DD014B8();
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_7:
    sub_25DD2D9AC(v1);
    *v0 = v1;
    return;
  }

  v4 = 0;
  v5 = 1;
  while (*(v1 + v4 + 32) != *v2)
  {
    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
      goto LABEL_7;
    }
  }

  sub_25DD2D9AC(v1);
  v6 = *(v1 + 16);
  if (v6 < v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25DD2D964(v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = v1, (~v4 + v6) > *(v1 + 24) >> 1))
  {
    v8 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v6, 1, v1);
  }

  sub_25DD2EDA8(0, v4 + 1, 0);
  *v0 = v8;
}

unint64_t sub_25DD2DF8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = *v4;
  if (*v4 < 2)
  {
    __break(1u);
  }

  else
  {
    v12 = *v4;
    if (a1)
    {
      v10 = swift_unknownObjectRetain();
      sub_25DD2EBA0(v10, a2, a3, a4);
      *v4 = v12;
      return 1;
    }

    else
    {
      v11 = *(result + 16);
      *v4 = 0;
      if (!v11)
      {
        sub_25DD2D9AC(result);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25DD2E050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for JSONLinesDeserializationSequence.Iterator(0, v14);
  *(a7 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_25DD2E0EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONLinesDeserializationSequence.Iterator.next()(a2);
}

uint64_t sub_25DD2E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (!v4)
  {
    v12 = *(v10 + 16);
    *v12 = a1;
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = a4;
  }

  v13 = *(v11 + 8);

  return v13();
}

uint64_t sub_25DD2E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_25DD2E388;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_25DD2E388()
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

uint64_t JSONLinesDeserializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v11 + 32))(a2, v13, AssociatedTypeWitness);
  v16[0] = v4;
  v16[1] = AssociatedTypeWitness;
  v16[2] = v9;
  v16[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONLinesDeserializationSequence.Iterator(0, v16);
  *(a2 + *(result + 52)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25DD2E674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLinesDeserializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.asDecodedJSONLines<A>(of:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v25[1] = a7;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for JSONLinesDeserializationSequence(0, v17, v19, v18);
  MEMORY[0x28223BE20](v20);
  v22 = v25 - v21;
  (*(v14 + 16))(v16, v8, a3);
  (*(v14 + 32))(v22, v16, a3);
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = a2;

  swift_getWitnessTable();
  sub_25DD96E14();
}

uint64_t sub_25DD2E8AC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v8 = a2[1];
  *(v7 + 48) = *a2;
  *(v7 + 64) = v8;
  return MEMORY[0x2822009F8](sub_25DD2E8D8, 0, 0);
}

uint64_t sub_25DD2E8D8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = swift_unknownObjectRetain();
  v5 = sub_25DD00A5C(v4, v3, v1, v2);
  v7 = v6;
  sub_25DD964D4();
  sub_25DD01088(v5, v7);
  v8 = v0[1];

  return v8();
}

BOOL sub_25DD2E9B0(_BOOL8 result, unint64_t a2)
{
  if (!result)
  {
    return !a2;
  }

  if (result == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD2EA30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = 1;
    return MEMORY[0x25F8A3F90](v3);
  }

  if (a2 == 1)
  {
    v3 = 2;
    return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](0);
  v5 = *(a2 + 16);
  result = MEMORY[0x25F8A3F90](v5);
  if (v5)
  {
    v6 = a2 + 32;
    do
    {
      ++v6;
      result = sub_25DD97984();
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_25DD2EAA8(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD2EA30(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD2EB00(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD2EA30(v3, *v1);
  return sub_25DD979A4();
}

unint64_t sub_25DD2EB74(unint64_t a1)
{
  result = sub_25DD2D9AC(*v1);
  *v1 = a1;
  return result;
}

void sub_25DD2EBA0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v15 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

char *sub_25DD2ECB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
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

char *sub_25DD2EDA8(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DD2EE7C(uint64_t a1, _OWORD *a2)
{
  v6 = v2[3];
  v8 = v2[5];
  v7 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25DD1BF14;

  return sub_25DD2E8AC(a1, a2, v7, v9, v6, v10, v8);
}

uint64_t sub_25DD2EF84(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD2EFF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_25DD2F134(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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