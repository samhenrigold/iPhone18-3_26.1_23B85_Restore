uint64_t (*sub_214417D60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214417DFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t sub_214417E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 64);
    *a2 = v4;
    a2[1] = v3;

    return sub_21402D9F8(v4, v3);
  }

  return result;
}

double sub_214417F08(uint64_t a1)
{
  sub_214032024(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

uint64_t sub_214417FB8(uint64_t a1, unint64_t a2)
{
  sub_214032024(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FB54FC(a1, a2);
}

uint64_t (*sub_214418084(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 72);
  if (v2 >> 60 == 15)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 64);
    *a1 = v4;
    a1[1] = v2;
    sub_21402D9F8(v4, v2);
    return sub_214418124;
  }

  return result;
}

uint64_t sub_214418124(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_21402D9F8(*a1, v3);
    sub_214032024(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v2, v3);
  }

  else
  {
    sub_214032024(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FB54FC(v2, v3);
}

uint64_t sub_214418264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDCA18(v3, v4);
}

uint64_t sub_2144182B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);

  sub_213FDCA18(v5, v6);

  result = sub_213FDC6BC(v8, v9);
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  return result;
}

void (*sub_214418340(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDCA18(v6, v7);
  return sub_2144183E0;
}

void sub_2144183E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  if (a2)
  {

    sub_213FDCA18(v7, v6);

    sub_213FDC6BC(v9, v10);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6BC(v11, v12);
  }

  else
  {

    sub_213FDC6BC(v9, v10);
    *(v3 + 48) = v5;
    *(v3 + 56) = v4;
    *(v3 + 64) = v7;
    *(v3 + 72) = v6;
    *(v3 + 80) = v8;
  }

  free(v2);
}

double sub_2144184C4@<D0>(uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277D43170]);
  v5 = sub_2146D8A38();
  v6 = [v4 initWithData_];

  v7 = [v6 position];
  if (v7 >= [v6 length])
  {
    v9 = 0;
    v11 = 0xF000000000000000;
LABEL_43:
    sub_213FDC6BC(v9, v11);

    goto LABEL_44;
  }

  v8 = 0;
  v42 = 0;
  v9 = 0;
  v41 = 0;
  v10 = 1;
  v11 = 0xF000000000000000;
  do
  {
    if ([v6 hasError])
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v43 = 0;
      v16 = [v6 position] + 1;
      if (v16 >= [v6 position] && (v17 = objc_msgSend(v6, "position") + 1, v17 <= objc_msgSend(v6, "length")))
      {
        v18 = [v6 data];
        [v18 getBytes:&v43 range:{objc_msgSend(v6, "position"), 1}];

        [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
      }

      else
      {
        [v6 _setError];
      }

      v15 |= (v43 & 0x7F) << v13;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v13 += 7;
      if (v14++ >= 9)
      {
        v20 = 0;
        goto LABEL_18;
      }
    }

    if ([v6 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

LABEL_18:
    if ([v6 hasError])
    {
      goto LABEL_43;
    }

    v21 = v20 >> 3;
    if ((v20 >> 3) == 3)
    {
      v32 = PBReaderReadData();
      if (v32)
      {
        v33 = v32;
        v34 = sub_2146D8A58();
        v36 = v35;
        sub_213FDC6BC(v9, v11);

        v9 = v34;
        v11 = v36;
      }

      else
      {
        sub_213FDC6BC(v9, v11);
        v9 = 0;
        v11 = 0xF000000000000000;
      }
    }

    else if (v21 == 2)
    {

      v29 = PBReaderReadString();
      if (v29)
      {
        v30 = v29;
        v42 = sub_2146D95B8();
        v8 = v31;
      }

      else
      {
        v42 = 0;
        v8 = 0;
      }
    }

    else if (v21 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v43 = 0;
        v25 = [v6 position] + 1;
        if (v25 >= [v6 position] && (v26 = objc_msgSend(v6, "position") + 1, v26 <= objc_msgSend(v6, "length")))
        {
          v27 = [v6 data];
          [v27 getBytes:&v43 range:{objc_msgSend(v6, "position"), 1}];

          [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
        }

        else
        {
          [v6 _setError];
        }

        v24 |= (v43 & 0x7F) << v22;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        if (v23++ > 8)
        {
          v41 = 0;
          v10 = 0;
          goto LABEL_4;
        }
      }

      v10 = 0;
      v37 = [v6 hasError] ? 0 : v24;
      v41 = v37;
    }

    else
    {
      PBReaderSkipValueWithTag();
    }

LABEL_4:
    v12 = [v6 position];
  }

  while (v12 < [v6 length]);
  if (v10)
  {
    goto LABEL_43;
  }

  if (v8)
  {
    if (v11 >> 60 != 15)
    {
      sub_21402D9F8(v9, v11);
      sub_2141FFB68(v41, v42, v8, v9, v11, v44);
      sub_213FDC6BC(v9, v11);

      v39 = v44[3];
      *(a3 + 32) = v44[2];
      *(a3 + 48) = v39;
      *(a3 + 64) = v44[4];
      *(a3 + 80) = v45;
      result = *v44;
      v40 = v44[1];
      *a3 = v44[0];
      *(a3 + 16) = v40;
      return result;
    }
  }

  else
  {
    sub_213FDC6BC(v9, v11);
  }

LABEL_44:
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

unint64_t sub_214418944(uint64_t a1)
{
  *(a1 + 8) = sub_2143207B4();
  result = sub_2143205C8();
  *(a1 + 16) = result;
  return result;
}

uint64_t JPEGEncoder.encode(imageSource:)()
{
  sub_2144189EC();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

unint64_t sub_2144189EC()
{
  result = qword_27C913030;
  if (!qword_27C913030)
  {
    result = swift_getWitnessTable(byte_21473D3FC, &type metadata for JPEGEncodingError, v0, v1);
    atomic_store(result, &qword_27C913030);
  }

  return result;
}

uint64_t JPEGEncoder.encode(pixelBuffer:to:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t JPEGEncoder.encode(pixelBuffer:)()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

uint64_t sub_214418B48@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_214418B94()
{
  sub_2144189EC();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t sub_214418C14()
{
  sub_21407D454();
  swift_allocError();
  *v0 = 1281;
  *(v0 + 8) = 0;
  return swift_willThrow();
}

void sub_214418C68(CGImageSource *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImageFromSource(v8, a1, 0, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_2144189EC();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_2144189EC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

const __CFDictionary *sub_214418F14(CGImage *a1)
{
  v2 = v1;
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = sub_2146D9588();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
    inited = swift_initStackObject();
    v8 = MEMORY[0x277CD3678];
    *(inited + 16) = xmmword_2146E6910;
    v9 = *v8;
    *(inited + 32) = v9;
    *(inited + 40) = 0;
    v10 = *MEMORY[0x277CD35A0];
    *(inited + 48) = *MEMORY[0x277CD35A0];
    *(inited + 56) = 1;
    v22 = v9;
    v11 = v10;
    sub_214046938(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
    swift_arrayDestroy();
    type metadata accessor for CFString(0);
    v2 = sub_2143A6B04();
    v12 = sub_2146D9468();

    v13 = CGImageDestinationCreateWithData(v5, v6, 1uLL, v12);

    if (v13)
    {
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_2146E6910;
      *(v14 + 32) = v22;
      *(v14 + 40) = 0;
      *(v14 + 48) = v11;
      *(v14 + 56) = 1;
      v15 = v22;
      v16 = v11;
      sub_214046938(v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      v2 = sub_2146D9468();

      CGImageDestinationAddImage(v13, a1, v2);

      if (CGImageDestinationFinalize(v13))
      {
        v17 = v5;
        v2 = sub_2146D8A58();
      }

      else
      {
        sub_2144189EC();
        swift_allocError();
        *v20 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_2144189EC();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_2144189EC();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return v2;
}

void sub_21441922C(CGImage *a1)
{
  v1 = sub_2146D8898();
  v2 = sub_2146D9588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913040, &qword_21473D440);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277CD3678];
  *(inited + 16) = xmmword_2146E6910;
  v5 = *v4;
  *(inited + 32) = v5;
  *(inited + 40) = 0;
  v6 = *MEMORY[0x277CD35A0];
  *(inited + 48) = *MEMORY[0x277CD35A0];
  *(inited + 56) = 1;
  v16 = v5;
  v15 = v6;
  sub_214046938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913048, &qword_21473D448);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v7 = sub_2146D9468();

  v8 = CGImageDestinationCreateWithURL(v1, v2, 1uLL, v7);

  if (v8)
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_2146E6910;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    *(v9 + 48) = v15;
    *(v9 + 56) = 1;
    v10 = v16;
    v11 = v15;
    sub_214046938(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = sub_2146D9468();

    CGImageDestinationAddImage(v8, a1, v12);

    if (!CGImageDestinationFinalize(v8))
    {
      sub_2144189EC();
      swift_allocError();
      *v14 = 3;
      swift_willThrow();
    }
  }

  else
  {
    sub_2144189EC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }
}

unint64_t sub_214419538()
{
  result = qword_27C913038;
  if (!qword_27C913038)
  {
    result = swift_getWitnessTable(byte_21473D3D4, &type metadata for JPEGEncodingError, v0, v1);
    atomic_store(result, &qword_27C913038);
  }

  return result;
}

uint64_t sub_2144195EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_214419654(uint64_t a1)
{
  v3 = sub_2146D8B88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_214419708(uint64_t a1, char a2)
{
  result = type metadata accessor for Metadata(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2144197BC(char a1)
{
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_214419858(char a1)
{
  result = type metadata accessor for Metadata(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2144198D0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Metadata(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t sub_214419910(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for Metadata(0);
  v5 = (v1 + *(result + 32));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

unint64_t sub_21441999C(uint64_t a1)
{
  *(a1 + 8) = sub_2142F93B0();
  result = sub_2142F9404();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144199CC(uint64_t a1)
{
  *(a1 + 8) = sub_214419A34(&qword_280B2E650, byte_2146FB080);
  result = sub_214419A34(&qword_280B2E658, a1_27);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214419A34(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Metadata(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214419AA0(uint64_t a1)
{
  sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    sub_214419B38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214419B38()
{
  if (!qword_280B2E320)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E320);
    }
  }
}

uint64_t getEnumTagSinglePayload for Metadata.StorageContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Metadata.StorageContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_214419CDC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[12];
  v5 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 0x6D754E656E6F6870;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    v8 = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 72) = v8;
    *(inited + 80) = 0x6B6361626C6C6166;
    *(inited + 88) = 0xEB000000006C7255;
    if (v4 != 1)
    {
      if (v4)
      {
        v9 = MEMORY[0x277D837D0];
        v10 = v3;
        v11 = v4;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v9 = 0;
        *(inited + 112) = 0;
      }

      *(inited + 96) = v10;
      *(inited + 104) = v11;
      *(inited + 120) = v9;
      *(inited + 128) = 0x7463656A627573;
      *(inited + 136) = 0xE700000000000000;
      if (!v5)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        *(inited + 160) = 0;
LABEL_10:
        *(inited + 144) = v12;
        *(inited + 152) = v13;
        *(inited + 168) = v14;
        v15 = inited;

        sub_213FDC9D0(v3, v4);
        sub_213FDC9D0(v6, v5);
        v16 = sub_214045690(v15);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        v17 = sub_2140418B8(v16);

        return v17;
      }

      if (v5 != 1)
      {
        v14 = MEMORY[0x277D837D0];
        v12 = v6;
        v13 = v5;
        goto LABEL_10;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214419EE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6B6361626C6C6166;
  v4 = 0xEB000000006C7255;
  if (v2 != 1)
  {
    v3 = 0x7463656A627573;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  v7 = 0x6B6361626C6C6166;
  v8 = 0xEB000000006C7255;
  if (*a2 != 1)
  {
    v7 = 0x7463656A627573;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000726562;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_21441A000()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21441A0B4(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21441A154(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_21441A204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21441A9E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21441A234(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0xEB000000006C7255;
  v5 = 0x6B6361626C6C6166;
  if (v2 != 1)
  {
    v5 = 0x7463656A627573;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D754E656E6F6870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21441A2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21441A9E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21441A2CC(uint64_t a1)
{
  v2 = sub_21441A868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21441A308(uint64_t a1)
{
  v2 = sub_21441A868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21441A344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913050, "F&\t");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21441A868();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v24 = 1;
    v12 = sub_2146DA0F8();
    v14 = v13;
    v21 = v12;
    v24 = 2;
    v15 = sub_2146DA0F8();
    sub_2140FBCE0(v9, v11, v21, v14, v15, v17, v22);
    (*(v6 + 8))(v8, v5);
    v18 = v22[5];
    *(a2 + 64) = v22[4];
    *(a2 + 80) = v18;
    *(a2 + 96) = v22[6];
    *(a2 + 112) = v23;
    v19 = v22[1];
    *a2 = v22[0];
    *(a2 + 16) = v19;
    v20 = v22[3];
    *(a2 + 32) = v22[2];
    *(a2 + 48) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_21441A5B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913060, &unk_21473D518);
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = v1[3];
  v8 = v1[7];
  v13 = v1[8];
  v14 = v8;
  v9 = v1[12];
  v11 = v1[13];
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21441A868();
  sub_2146DAA28();
  if (!v7)
  {
    goto LABEL_7;
  }

  LOBYTE(v16) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v15 + 8))(v6, v4);

    return;
  }

  if (v13 == 1 || (v16 = v14, v17 = v13, v18 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v11 == 1))
  {
LABEL_7:
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    v16 = v12;
    v17 = v11;
    v18 = 2;
    sub_2146DA388();
    (*(v15 + 8))(v6, v4);
  }
}

unint64_t sub_21441A868()
{
  result = qword_27C913058;
  if (!qword_27C913058)
  {
    result = swift_getWitnessTable("y߯m", &_s19CodingConfigurationV10CodingKeysON_7, v0, v1);
    atomic_store(result, &qword_27C913058);
  }

  return result;
}

unint64_t sub_21441A8E0()
{
  result = qword_27C913068;
  if (!qword_27C913068)
  {
    result = swift_getWitnessTable("Aʯm(M\a", &_s19CodingConfigurationV10CodingKeysON_7, v0, v1);
    atomic_store(result, &qword_27C913068);
  }

  return result;
}

unint64_t sub_21441A938()
{
  result = qword_27C913070;
  if (!qword_27C913070)
  {
    result = swift_getWitnessTable(byte_21473D5C0, &_s19CodingConfigurationV10CodingKeysON_7, v0, v1);
    atomic_store(result, &qword_27C913070);
  }

  return result;
}

unint64_t sub_21441A990()
{
  result = qword_27C913078;
  if (!qword_27C913078)
  {
    result = swift_getWitnessTable(byte_21473D5E8, &_s19CodingConfigurationV10CodingKeysON_7, v0, v1);
    atomic_store(result, &qword_27C913078);
  }

  return result;
}

unint64_t sub_21441A9E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21441AA30()
{
  sub_21441AA84();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21441AA84()
{
  v1 = v0;
  v2 = *v0 + 1;
  v12 = MEMORY[0x277D83B88];
  *&v11 = v2;
  sub_213FDC730(&v11, v10);
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 1835365481, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v5 = *v1;
  if (v5 <= 1)
  {
    v6 = sub_2146D0DE4();
  }

  else if (v5 == 2)
  {
    v6 = sub_2146D080C();
  }

  else if (v5 == 3)
  {
    v6 = sub_2146D0B24();
  }

  else
  {
    v6 = sub_2146D1320();
  }

  v12 = MEMORY[0x277CC9318];
  *&v11 = v6;
  *(&v11 + 1) = v7;
  sub_213FDC730(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v10, 0x64616F6C796170, 0xE700000000000000, v8);
  return v3;
}

uint64_t sub_21441ACBC()
{
  sub_21441AA84();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21441AD10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  MEMORY[0x28223BE20](v2 - 8);
  v170 = v156 - v3;
  v4 = type metadata accessor for CloudKitShareParticipant(0);
  v168 = *(v4 - 8);
  v169 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v166 = v156 - v12;
  MEMORY[0x28223BE20](v11);
  v165 = v156 - v13;
  v14 = sub_2146D8B08();
  v173 = *(v14 - 8);
  v174 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v161 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v160 = v156 - v18;
  MEMORY[0x28223BE20](v17);
  v159 = v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v158 = v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v156 - v23;
  v25 = type metadata accessor for HealthSharingSetupMetadata(0);
  v171 = *(v25 - 8);
  v172 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v164 = v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v157 = v156 - v28;
  v29 = type metadata accessor for HealthSummarySharingEntry(0);
  MEMORY[0x28223BE20](v29);
  v31 = v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D8DE8();
  v156[1] = v29;
  v32 = *(v29 + 20);
  if (qword_27C9030D0 != -1)
  {
    swift_once();
  }

  *&v31[v32] = qword_27C913FF0;
  v33 = *(v1 + 24);
  v167 = v10;
  v162 = v6;
  if (!v33)
  {

    v34 = *(v1 + 64);
    if (!v34)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v33 == 1)
  {
    goto LABEL_97;
  }

  v35 = *(v1 + 16);

  sub_213FDC9D0(v35, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *&v31[v32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    swift_allocObject();
    v38 = sub_21446FF10(v37);

    *&v31[v32] = v38;
    v37 = v38;
  }

  swift_beginAccess();
  *(v37 + 16) = v35;
  *(v37 + 24) = v33;

  v34 = *(v1 + 64);
  if (v34)
  {
LABEL_10:
    if (v34 == 1)
    {
      goto LABEL_97;
    }

    v39 = *(v1 + 56);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *&v31[v32];
    if ((v40 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v42 = sub_21446FF10(v41);

      *&v31[v32] = v42;
      v41 = v42;
    }

    swift_beginAccess();
    *(v41 + 32) = v39;
    *(v41 + 40) = v34;
  }

LABEL_14:
  v43 = *(v1 + 96);
  if (!v43)
  {
    goto LABEL_97;
  }

  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *&v31[v32];
  if ((v44 & 1) == 0)
  {
    type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    swift_allocObject();
    v46 = sub_21446FF10(v45);

    *&v31[v32] = v46;
    v45 = v46;
  }

  swift_beginAccess();
  *(v45 + 48) = v43;

  v47 = *(v1 + 120);
  if (v47)
  {
    v48 = *(v1 + 112);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *&v31[v32];
    if ((v49 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v51 = sub_21446FF10(v50);

      *&v31[v32] = v51;
      v50 = v51;
    }

    swift_beginAccess();
    *(v50 + 56) = v48;
    *(v50 + 64) = v47;
  }

  v52 = *(v1 + 136);
  if (v52)
  {
    v53 = *(v1 + 128);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *&v31[v32];
    if ((v54 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v56 = sub_21446FF10(v55);

      *&v31[v32] = v56;
      v55 = v56;
    }

    swift_beginAccess();
    *(v55 + 72) = v53;
    *(v55 + 80) = v52;
  }

  v57 = *(v1 + 144);
  if (v57 != 2)
  {
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *&v31[v32];
    if ((v58 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v60 = sub_21446FF10(v59);

      *&v31[v32] = v60;
      v59 = v60;
    }

    swift_beginAccess();
    *(v59 + 88) = v57 & 1;
  }

  v61 = *(v1 + 145);
  if (v61 != 2)
  {
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *&v31[v32];
    if ((v62 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v64 = sub_21446FF10(v63);

      *&v31[v32] = v64;
      v63 = v64;
    }

    swift_beginAccess();
    *(v63 + 89) = v61 & 1;
  }

  v65 = *(v1 + 146);
  if (v65 != 5)
  {
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = *&v31[v32];
    if ((v66 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v68 = sub_21446FF10(v67);

      *&v31[v32] = v68;
      v67 = v68;
    }

    swift_beginAccess();
    *(v67 + 90) = v65;
  }

  v69 = v1;
  v70 = v175;
  sub_2144201A0(v24);
  v71 = v70;
  if (v70)
  {
    goto LABEL_38;
  }

  if ((*(v171 + 48))(v24, 1, v172) == 1)
  {
    sub_213FB2DF4(v24, &qword_27C913098, qword_21473D710);
    v73 = v173;
    v74 = v165;
  }

  else
  {
    v75 = v24;
    v76 = v157;
    sub_2144247CC(v75, v157, type metadata accessor for HealthSharingSetupMetadata);
    sub_214424694(v76, v164, type metadata accessor for HealthSharingSetupMetadata);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2144246FC(v76, type metadata accessor for HealthSharingSetupMetadata);
      v77 = *&v31[v32];
    }

    else
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();

      v77 = sub_21446FF10(v78);

      sub_2144246FC(v76, type metadata accessor for HealthSharingSetupMetadata);

      *&v31[v32] = v77;
    }

    v74 = v165;
    v79 = v158;
    sub_2144247CC(v164, v158, type metadata accessor for HealthSharingSetupMetadata);
    (*(v171 + 56))(v79, 0, 1, v172);
    v80 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
    swift_beginAccess();
    sub_214423A00(v79, v77 + v80);
    swift_endAccess();
    v73 = v173;
  }

  v81 = type metadata accessor for IDSHealthInvitation(0);
  sub_213FB2E54(v1 + *(v81 + 52), v74, &qword_27C913090, &unk_2146E9DB0);
  v82 = v174;
  v171 = *(v73 + 48);
  v172 = v73 + 48;
  v83 = (v171)(v74, 1, v174);
  v175 = v81;
  v163 = 0;
  if (v83 == 1)
  {
    sub_213FB2DF4(v74, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    v84 = v159;
    (*(v73 + 32))(v159, v74, v82);
    v85 = v73;
    sub_2146D8AC8();
    v87 = v86;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v73 + 8))(v84, v82);
      v88 = *&v31[v32];
    }

    else
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();

      v88 = sub_21446FF10(v89);

      (*(v85 + 8))(v84, v174);
      v82 = v174;

      *&v31[v32] = v88;
    }

    v90 = v88 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
    swift_beginAccess();
    *v90 = v87;
    *(v90 + 8) = 0;
    v73 = v173;
    v71 = v163;
    v81 = v175;
  }

  v91 = v1 + *(v81 + 56);
  v92 = v166;
  sub_213FB2E54(v91, v166, &qword_27C913090, &unk_2146E9DB0);
  if ((v171)(v92, 1, v82) == 1)
  {
    sub_213FB2DF4(v92, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    v93 = v160;
    (*(v73 + 32))(v160, v92, v82);
    v94 = v73;
    sub_2146D8AC8();
    v96 = v95;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v73 + 8))(v93, v82);
      v97 = *&v31[v32];
    }

    else
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();

      v97 = sub_21446FF10(v98);

      (*(v94 + 8))(v93, v174);
      v82 = v174;

      *&v31[v32] = v97;
    }

    v99 = v97 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
    swift_beginAccess();
    *v99 = v96;
    *(v99 + 8) = 0;
    v73 = v173;
    v71 = v163;
  }

  v100 = v167;
  sub_213FB2E54(v1 + v175[15], v167, &qword_27C913090, &unk_2146E9DB0);
  if ((v171)(v100, 1, v82) == 1)
  {
    sub_213FB2DF4(v100, &qword_27C913090, &unk_2146E9DB0);
    v101 = v175;
  }

  else
  {
    v102 = v161;
    (*(v73 + 32))(v161, v100, v82);
    v103 = v73;
    sub_2146D8AC8();
    v105 = v104;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v73 + 8))(v102, v82);
      v106 = *&v31[v32];
    }

    else
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();

      v106 = sub_21446FF10(v107);

      (*(v103 + 8))(v102, v82);

      *&v31[v32] = v106;
    }

    v101 = v175;
    v108 = v106 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
    swift_beginAccess();
    *v108 = v105;
    *(v108 + 8) = 0;
    v71 = v163;
  }

  v109 = v1 + v101[16];
  v110 = *(v109 + 24);
  if (v110)
  {
    if (v110 == 1)
    {
      goto LABEL_97;
    }

    v111 = *(v109 + 16);

    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *&v31[v32];
    if ((v112 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v114 = sub_21446FF10(v113);

      *&v31[v32] = v114;
      v113 = v114;
    }

    v115 = (v113 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
    swift_beginAccess();
    *v115 = v111;
    v115[1] = v110;

    v71 = v163;
  }

  v116 = v1 + v101[17];
  v117 = *(v116 + 24);
  if (v117)
  {
    if (v117 == 1)
    {
      goto LABEL_97;
    }

    v118 = *(v116 + 16);

    v119 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *&v31[v32];
    if ((v119 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v121 = sub_21446FF10(v120);

      *&v31[v32] = v121;
      v120 = v121;
    }

    v122 = (v120 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
    swift_beginAccess();
    *v122 = v118;
    v122[1] = v117;

    v71 = v163;
  }

  v123 = v170;
  sub_213FB2E54(v1 + v101[18], v170, &qword_27C907570, &qword_214732A10);
  if ((*(v168 + 48))(v123, 1, v169) == 1)
  {
    sub_213FB2DF4(v123, &qword_27C907570, &qword_214732A10);
  }

  else
  {
    v145 = v162;
    sub_2144247CC(v123, v162, type metadata accessor for CloudKitShareParticipant);
    v69 = v145;
    v146 = sub_21462F008();
    if (v71)
    {
      sub_2144246FC(v145, type metadata accessor for CloudKitShareParticipant);
LABEL_38:
      sub_2144246FC(v31, type metadata accessor for HealthSummarySharingEntry);
      return v69;
    }

    v147 = v146;
    v148 = sub_214633900();
    v71 = 0;
    v150 = v149;
    v174 = v148;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2144246FC(v145, type metadata accessor for CloudKitShareParticipant);
      v151 = *&v31[v32];
    }

    else
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();

      v151 = sub_21446FF10(v152);

      v71 = 0;
      v101 = v175;
      sub_2144246FC(v145, type metadata accessor for CloudKitShareParticipant);

      *&v31[v32] = v151;
    }

    v153 = (v151 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
    swift_beginAccess();
    v154 = *v153;
    v155 = v153[1];
    *v153 = v174;
    v153[1] = v150;
    sub_213FDC6BC(v154, v155);
  }

  v124 = *(v1 + v101[19]);
  if (v124 != 3)
  {
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v126 = *&v31[v32];
    if ((v125 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v127 = sub_21446FF10(v126);

      *&v31[v32] = v127;
      v126 = v127;
    }

    v128 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
    swift_beginAccess();
    *(v126 + v128) = v124;
  }

  v69 = v1;
  v129 = sub_214420C54();
  if (v71)
  {
    goto LABEL_38;
  }

  v130 = v129;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *&v31[v32];
  if ((v131 & 1) == 0)
  {
    type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    swift_allocObject();
    v133 = sub_21446FF10(v132);

    *&v31[v32] = v133;
    v132 = v133;
  }

  v134 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  *(v132 + v134) = v130;

  v135 = *(v1 + v101[21]);
  if (v135 != 3)
  {
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v137 = *&v31[v32];
    if ((v136 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v138 = sub_21446FF10(v137);

      *&v31[v32] = v138;
      v137 = v138;
    }

    v139 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
    swift_beginAccess();
    *(v137 + v139) = v135;
  }

  v140 = *(v1 + v101[22] + 16);
  if (v140)
  {

    v141 = swift_isUniquelyReferenced_nonNull_native();
    v142 = *&v31[v32];
    if ((v141 & 1) == 0)
    {
      type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
      swift_allocObject();
      v143 = sub_21446FF10(v142);

      *&v31[v32] = v143;
      v142 = v143;
    }

    v144 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
    swift_beginAccess();
    *(v142 + v144) = v140;

    sub_21442464C(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry, aQf_0);
    v69 = sub_2146D8FC8();
    sub_2144246FC(v31, type metadata accessor for HealthSummarySharingEntry);
    return v69;
  }

LABEL_97:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21441C084(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_21441C14C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x216054E00](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2146DA028();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void sub_21441C288(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v354 = a2;
  v355 = a1;
  v358 = type metadata accessor for IDSHealthInvitation(0);
  v4 = MEMORY[0x28223BE20](v358);
  v334 = (&v307 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v328 = &v307 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v333 = &v307 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v337 = &v307 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v329 = &v307 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v339 = &v307 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v330 = &v307 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v331 = &v307 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v332 = &v307 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v341 = &v307 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v342 = &v307 - v25;
  MEMORY[0x28223BE20](v24);
  v343 = &v307 - v26;
  v27 = sub_2146D8E18();
  MEMORY[0x28223BE20](v27 - 8);
  v345 = &v307 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = type metadata accessor for HealthSummarySharingEntry(0);
  MEMORY[0x28223BE20](v346);
  v356 = &v307 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v30 = swift_allocObject();
  v360 = xmmword_2146E9BF0;
  *(v30 + 16) = xmmword_2146E9BF0;
  v31 = swift_allocObject();
  *(v31 + 16) = v360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_21405980C;
  *(v32 + 24) = 0;
  *(v31 + 32) = v32;
  v33 = sub_2142E0070(v31);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v34 + 16) = sub_21403254C;
  *(v34 + 24) = v35;
  *(v30 + 32) = v34;
  sub_214042A28(v30, a3);
  v36 = swift_allocObject();
  *(v36 + 16) = v360;
  v37 = swift_allocObject();
  *(v37 + 16) = v360;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_21403281C;
  *(v38 + 24) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_21439DF24;
  *(v39 + 24) = 0;
  v40 = swift_allocObject();
  v357 = xmmword_2146EAEB0;
  *(v40 + 16) = xmmword_2146EAEB0;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_214423A70;
  *(v41 + 24) = v38;
  *(v40 + 32) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_214424834;
  *(v42 + 24) = v39;
  *(v40 + 40) = v42;
  v43 = swift_allocObject();
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  *(v43 + 16) = sub_214423A74;
  *(v43 + 24) = v44;
  *(v37 + 32) = v43;
  v45 = sub_2142E0070(v37);
  v46 = swift_allocObject();
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v46 + 16) = sub_214032610;
  *(v46 + 24) = v47;
  *(v36 + 32) = v46;
  sub_214042A28(v36, a3 + 40);
  v48 = swift_allocObject();
  *(v48 + 16) = v360;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_21403281C;
  *(v49 + 24) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_21439DFC4;
  *(v50 + 24) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = v357;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_214424834;
  *(v52 + 24) = v49;
  *(v51 + 32) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_214424834;
  *(v53 + 24) = v50;
  *(v51 + 40) = v53;
  v54 = swift_allocObject();
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  *(v54 + 16) = sub_214424838;
  *(v54 + 24) = v55;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_21408E9E0;
  *(v56 + 24) = v54;
  *(v48 + 32) = v56;
  sub_2140433DC(v48, a3 + 80);
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 514;
  *(a3 + 146) = 5;
  v57 = v358;
  v58 = *(v358 + 48);
  v59 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v60 = *(*(v59 - 8) + 56);
  v352 = v58;
  v60(a3 + v58, 1, 1, v59);
  v61 = v57[13];
  v62 = sub_2146D8B08();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v65 = v63 + 56;
  v350 = v61;
  v64(a3 + v61, 1, 1, v62);
  v348 = v57[14];
  v64(a3 + v348, 1, 1, v62);
  v349 = v57[15];
  v338 = v62;
  v340 = v64;
  v353 = v65;
  v64(a3 + v349, 1, 1, v62);
  v66 = v57;
  v67 = a3 + v57[16];
  v68 = swift_allocObject();
  *(v68 + 16) = v360;
  v69 = swift_allocObject();
  *(v69 + 16) = v360;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_214059900;
  *(v70 + 24) = 0;
  *(v69 + 32) = v70;
  v71 = sub_2142E0070(v69);
  v72 = swift_allocObject();
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  *(v72 + 16) = sub_214032610;
  *(v72 + 24) = v73;
  *(v68 + 32) = v72;
  v351 = v67;
  sub_214042A28(v68, v67);
  v74 = a3 + v66[17];
  v75 = swift_allocObject();
  *(v75 + 16) = v360;
  v76 = swift_allocObject();
  *(v76 + 16) = v357;
  v77 = swift_allocObject();
  v78 = swift_allocObject();
  v78[2] = sub_213FDC8D0;
  v78[3] = 0;
  v78[4] = 1;
  v78[5] = sub_21403C354;
  v78[6] = 0;
  *(v77 + 16) = sub_214059860;
  *(v77 + 24) = v78;
  *(v76 + 32) = v77;
  v79 = swift_allocObject();
  v80 = swift_allocObject();
  v80[2] = sub_213FB7994;
  v80[3] = 0;
  v80[4] = 255;
  v80[5] = sub_21403C354;
  v80[6] = 0;
  *(v79 + 16) = sub_21439DF90;
  *(v79 + 24) = v80;
  *(v76 + 40) = v79;
  v81 = v76;
  v82 = v356;
  v83 = sub_2142E0070(v81);
  v84 = swift_allocObject();
  v85 = swift_allocObject();
  *(v85 + 16) = v83;
  *(v84 + 16) = sub_214032610;
  *(v84 + 24) = v85;
  *(v75 + 32) = v84;
  v86 = a3;
  v359 = v74;
  sub_214042A28(v75, v74);
  v87 = v358;
  v88 = *(v358 + 72);
  v89 = type metadata accessor for CloudKitShareParticipant(0);
  v90 = *(v89 - 1);
  v91 = *(v90 + 56);
  *&v357 = v88;
  v335 = v90 + 56;
  v336 = v91;
  v91(a3 + v88, 1, 1, v89);
  *(a3 + v87[19]) = 3;
  *(a3 + v87[21]) = 3;
  v92 = a3 + v87[22];
  v93 = swift_allocObject();
  *(v93 + 16) = v360;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_21442228C;
  *(v94 + 24) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_21439DF64;
  *(v95 + 24) = v94;
  *(v93 + 32) = v95;
  sub_2140433DC(v93, v92);
  *&v375 = v355;
  *(&v375 + 1) = v354;
  v381 = 0;
  v379 = 0u;
  v380 = 0u;
  v96 = v355;
  v97 = v354;
  sub_21402D9F8(v355, v354);
  sub_2146D8E08();
  sub_21442464C(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry, aQf_0);
  v98 = v347;
  v99 = v346;
  sub_2146D8FD8();
  *&v360 = v98;
  if (v98)
  {
    sub_213FB54FC(v96, v97);
LABEL_39:
    v147 = v357;
LABEL_40:
    v148 = *(v86 + 2);
    v149 = *(v86 + 3);

    sub_213FDC6D0(v148, v149);
    v150 = *(v86 + 7);
    v151 = *(v86 + 8);

    sub_213FDC6D0(v150, v151);

    sub_213FB2DF4(&v86[v352], &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(&v86[v350], &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(&v86[v348], &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(&v86[v349], &qword_27C913090, &unk_2146E9DB0);
    v152 = *(v351 + 16);
    v153 = *(v351 + 24);

    sub_213FDC6D0(v152, v153);
    v154 = *(v359 + 16);
    v155 = *(v359 + 24);

    sub_213FDC6D0(v154, v155);
    sub_213FB2DF4(&v86[v147], &qword_27C907570, &qword_214732A10);

    return;
  }

  v326 = v89;
  v100 = v338;
  v344 = v92;
  v345 = v86;
  v101 = *(v82 + *(v99 + 20));
  swift_beginAccess();
  v102 = *(v101 + 24);
  if (v102)
  {
    v103 = *(v101 + 16);
  }

  else
  {
    v103 = 0;
  }

  swift_beginAccess();
  v104 = *(v101 + 32);
  v105 = *(v101 + 40);
  if (!v105)
  {
    v104 = 0;
  }

  v319 = v104;
  swift_beginAccess();
  v106 = *(v101 + 56);
  v107 = *(v101 + 64);
  if (!v107)
  {
    v106 = 0;
  }

  v324 = v106;
  swift_beginAccess();
  v108 = *(v101 + 72);
  v109 = *(v101 + 80);
  if (!v109)
  {
    v108 = 0;
  }

  v323 = v108;
  swift_beginAccess();
  v110 = *(v101 + 88);
  if (v110 == 2)
  {
    v111 = 2;
  }

  else
  {
    v111 = v110 & 1;
  }

  LODWORD(v322) = v111;
  swift_beginAccess();
  v112 = *(v101 + 89);
  if (v112 == 2)
  {
    v113 = 2;
  }

  else
  {
    v113 = v112 & 1;
  }

  LODWORD(v321) = v113;
  swift_beginAccess();
  LODWORD(v320) = *(v101 + 90);
  v114 = v101 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  swift_beginAccess();
  v115 = *(v114 + 8);
  v346 = v105;
  v347 = v102;
  if (v115)
  {
    v340(v343, 1, 1, v100);
  }

  else
  {

    v116 = v343;
    sub_2146D8AB8();
    v340(v116, 0, 1, v100);
  }

  v117 = v342;
  v118 = v360;
  v119 = v101 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  swift_beginAccess();
  if (*(v119 + 8))
  {
    v120 = 1;
  }

  else
  {
    sub_2146D8AB8();
    v120 = 0;
  }

  v327 = v109;
  v325 = v103;
  v121 = 1;
  v122 = v100;
  v123 = v340;
  v340(v117, v120, 1, v100);
  v124 = v101 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  swift_beginAccess();
  v125 = v341;
  if ((*(v124 + 8) & 1) == 0)
  {
    sub_2146D8AB8();
    v121 = 0;
  }

  v123(v125, v121, 1, v122);
  v126 = (v101 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v127 = *v126;
  v128 = v126[1];
  if (!v128)
  {
    v127 = 0;
  }

  v338 = v127;
  v129 = (v101 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v130 = *v129;
  v131 = v129[1];
  if (!v131)
  {
    v130 = 0;
  }

  v318 = v130;
  v132 = (v101 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v133 = v132[1];
  if (v133 >> 60 == 15)
  {
    v134 = v339;
    v336(v339, 1, 1, v326);
    v353 = v131;

    v340 = v128;

    v135 = v356;
    v136 = v118;
  }

  else
  {
    v137 = *v132;

    sub_213FDCA18(v137, v133);
    v134 = v339;
    v138 = v118;
    sub_21462EA3C(v137, v133, v339);
    v139 = v131;
    v136 = v138;
    if (v138)
    {

      sub_213FB54FC(v355, v354);
      sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
      v140 = v356;
LABEL_38:
      sub_2144246FC(v140, type metadata accessor for HealthSummarySharingEntry);
      v86 = v345;
      goto LABEL_39;
    }

    v340 = v128;
    v353 = v139;
    v336(v134, 0, 1, v326);
    v135 = v356;
  }

  v141 = v107;
  v142 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  v143 = *(v101 + v142);
  v144 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  v145 = *(v101 + v144);
  v146 = v337;
  sub_21441EA2C(v135, v337);
  if (v136)
  {

    sub_213FB54FC(v355, v354);
    sub_213FB2DF4(v134, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v140 = v135;
    goto LABEL_38;
  }

  v326 = sub_214423F94(v135);
  swift_beginAccess();
  LODWORD(v317) = v143;
  v336 = *(v101 + 48);
  *&v360 = 0;
  v315 = v141;
  v156 = v333;
  sub_213FB2E54(v146, v333, &qword_27C907568, &unk_2146F4AA0);
  v157 = v134;
  v158 = v332;
  sub_213FB2E54(v343, v332, &qword_27C913090, &unk_2146E9DB0);
  LODWORD(v316) = v145;
  v159 = v331;
  sub_213FB2E54(v342, v331, &qword_27C913090, &unk_2146E9DB0);
  v160 = v330;
  sub_213FB2E54(v341, v330, &qword_27C913090, &unk_2146E9DB0);
  v161 = v157;
  v162 = v329;
  sub_213FB2E54(v161, v329, &qword_27C907570, &qword_214732A10);
  v163 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  v164 = *(v101 + v163);
  v165 = v358;
  v166 = v334;
  sub_213FB2E54(v156, v334 + *(v358 + 48), &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2E54(v158, v166 + v165[13], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v159, v166 + v165[14], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v160, v166 + v165[15], &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v162, v166 + v165[18], &qword_27C907570, &qword_214732A10);

  v335 = v164;

  sub_214392E94(&v379);
  v167 = v380;
  v314 = v381;
  sub_214392EC8(&v375);
  v168 = v376;
  v307 = v377;
  LOBYTE(v159) = v378;
  sub_2143930D8(&v372);
  v169 = v373;
  LOBYTE(v162) = v374;
  sub_214393298(&v368);
  v312 = v370;
  v313 = v369;
  v311 = v371;
  sub_2143932CC(&v364);
  v309 = v366;
  v310 = v365;
  v308 = v367;
  sub_2143934A4(&v361);
  v170 = v362;
  v171 = v363;
  *v166 = v379;
  *(v166 + 1) = v167;
  *(v166 + 32) = v314;
  *(v166 + 5) = v375;
  v172 = v307;
  v166[7] = v168;
  v166[8] = v172;
  *(v166 + 72) = v159;
  *(v166 + 5) = v372;
  v166[12] = v169;
  *(v166 + 104) = v162;
  v173 = v315;
  v166[14] = v324;
  v166[15] = v173;
  v174 = v327;
  v166[16] = v323;
  v166[17] = v174;
  *(v166 + 144) = v322;
  *(v166 + 145) = v321;
  *(v166 + 146) = v320;
  v175 = v166 + v165[16];
  *v175 = v368;
  v176 = v312;
  *(v175 + 2) = v313;
  *(v175 + 3) = v176;
  v175[32] = v311;
  v177 = v166 + v165[17];
  *v177 = v364;
  v178 = v309;
  *(v177 + 2) = v310;
  *(v177 + 3) = v178;
  v177[32] = v308;
  *(v166 + v165[19]) = v317;
  *(v166 + v165[20]) = v326;
  *(v166 + v165[21]) = v316;
  v179 = v166 + v165[22];
  *v179 = v361;
  *(v179 + 2) = v170;
  v179[24] = v171;
  v181 = *v166;
  v180 = v166[1];
  v182 = v166[2];
  v183 = v166[3];
  v184 = *(v166 + 32);
  *&v375 = v325;
  *(&v375 + 1) = v347;
  LODWORD(v327) = v184;
  LOBYTE(v368) = v184;
  *&v379 = 0xD000000000000018;
  *(&v379 + 1) = 0x800000021478E740;
  v322 = 0x800000021478E740;
  *&v380 = 0xD00000000000001CLL;
  *(&v380 + 1) = 0x800000021478A360;

  v326 = v182;
  v324 = v183;
  sub_213FDC9D0(v182, v183);
  v323 = v180;
  v185 = v360;
  v358 = v181;
  v186 = v181(&v375, &v368, &v379);
  if (v185)
  {
    *&v360 = v185;

LABEL_47:

    v209 = v355;
    v210 = v331;

    sub_213FB54FC(v209, v354);
    sub_213FB2DF4(v329, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v330, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v210, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v332, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v211 = v334;
    v212 = v334[2];
    v213 = v334[3];

    sub_213FDC6D0(v212, v213);
    v214 = v323;
    *v211 = v358;
    *(v211 + 8) = v214;
    v215 = v324;
    *(v211 + 16) = v326;
    *(v211 + 24) = v215;
    *(v211 + 32) = v327;
LABEL_48:
    sub_2144246FC(v211, type metadata accessor for IDSHealthInvitation);
    sub_2144246FC(v356, type metadata accessor for HealthSummarySharingEntry);
    v86 = v345;
    v147 = v357;
    goto LABEL_40;
  }

  v187 = v322;
  v320 = v175;
  v321 = 0x800000021478A360;
  v317 = v179;
  v188 = v347;
  if ((v186 & 1) == 0)
  {
    sub_214031C4C();
    v206 = swift_allocError();
    *v207 = 0xD000000000000018;
    v207[1] = v187;
    v208 = v321;
    v207[2] = 0xD00000000000001CLL;
    v207[3] = v208;
    *&v360 = v206;
    swift_willThrow();

    goto LABEL_47;
  }

  v316 = v177;
  *&v360 = 0;
  sub_213FDC6D0(v326, v324);
  v189 = v321;

  v190 = v334;
  v191 = v334[2];
  v192 = v334[3];

  sub_213FDC6D0(v191, v192);
  v193 = v323;
  *v190 = v358;
  v190[1] = v193;
  v190[2] = v325;
  v190[3] = v188;
  *(v190 + 32) = v327;
  v195 = v190[5];
  v194 = v190[6];
  v196 = v190[7];
  v197 = v190[8];
  LODWORD(v193) = *(v190 + 72);
  v198 = v319;
  *&v375 = v319;
  v199 = v346;
  *(&v375 + 1) = v346;
  LODWORD(v347) = v193;
  LOBYTE(v368) = v193;
  *&v379 = 0xD00000000000002CLL;
  *(&v379 + 1) = 0x800000021478E760;
  *&v380 = 0xD00000000000001CLL;
  *(&v380 + 1) = v189;

  v326 = v197;
  v327 = v196;
  sub_213FDC9D0(v196, v197);
  v325 = v194;
  v200 = v360;
  v358 = v195;
  v201 = v195(&v375, &v368, &v379);
  v202 = v199;
  if (v200)
  {
    *&v360 = v200;

    v203 = v354;
    v204 = v355;
    v205 = v332;
LABEL_53:

    sub_213FB54FC(v204, v203);
    sub_213FB2DF4(v329, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v330, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v331, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v205, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v211 = v334;
    v229 = v334[7];
    v230 = v334[8];

    sub_213FDC6D0(v229, v230);
    v231 = v325;
    *(v211 + 40) = v358;
    *(v211 + 48) = v231;
    v232 = v326;
    *(v211 + 56) = v327;
    *(v211 + 64) = v232;
    *(v211 + 72) = v347;
    goto LABEL_48;
  }

  if ((v201 & 1) == 0)
  {
    sub_214031C4C();
    v226 = swift_allocError();
    *v227 = 0xD00000000000002CLL;
    v227[1] = 0x800000021478E760;
    v228 = v321;
    v227[2] = 0xD00000000000001CLL;
    v227[3] = v228;
    *&v360 = v226;
    swift_willThrow();

    v203 = v354;
    v204 = v355;
    v205 = v332;
    goto LABEL_53;
  }

  *&v360 = 0;
  sub_213FDC6D0(v327, v326);
  v216 = v321;

  v217 = v190[7];
  v218 = v190[8];

  sub_213FDC6D0(v217, v218);
  v219 = v325;
  v190[5] = v358;
  v190[6] = v219;
  v190[7] = v198;
  v190[8] = v202;
  *(v190 + 72) = v347;
  v221 = v190[10];
  v220 = v190[11];
  v222 = v190[12];
  v223 = *(v190 + 104);
  *&v375 = v336;
  LOBYTE(v368) = v223;
  *&v379 = 0xD000000000000029;
  *(&v379 + 1) = 0x800000021478E790;
  *&v380 = 0xD00000000000001CLL;
  *(&v380 + 1) = v216;
  v358 = v222;

  v224 = v360;
  v225 = v221(&v375, &v368, &v379);
  if (v224)
  {
    LODWORD(v346) = v223;
    v347 = v221;
    *&v360 = v224;
LABEL_59:

    v257 = v354;
    v258 = v332;
    v259 = v329;
    v260 = v330;

    sub_213FB54FC(v355, v257);
    sub_213FB2DF4(v259, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v260, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v331, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v258, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v211 = v334;

    *(v211 + 80) = v347;
    *(v211 + 88) = v220;
    *(v211 + 96) = v358;
    *(v211 + 104) = v346;
    goto LABEL_48;
  }

  if ((v225 & 1) == 0)
  {
    LODWORD(v346) = v223;
    v347 = v221;
    sub_214031C4C();
    v254 = swift_allocError();
    *v255 = 0xD000000000000029;
    v255[1] = 0x800000021478E790;
    v256 = v321;
    v255[2] = 0xD00000000000001CLL;
    v255[3] = v256;
    *&v360 = v254;
    swift_willThrow();

    goto LABEL_59;
  }

  v233 = v321;

  v234 = v233;

  v190[10] = v221;
  v190[11] = v220;
  v190[12] = v336;
  *(v190 + 104) = v223;
  v236 = *v320;
  v235 = *(v320 + 1);
  v237 = *(v320 + 2);
  v238 = *(v320 + 3);
  v239 = v320[32];
  v240 = v338;
  *&v375 = v338;
  v241 = v340;
  *(&v375 + 1) = v340;
  LODWORD(v358) = v239;
  LOBYTE(v368) = v239;
  *&v379 = 0xD000000000000022;
  *(&v379 + 1) = 0x800000021478E7C0;
  *&v380 = 0xD00000000000001CLL;
  *(&v380 + 1) = v234;

  v346 = v238;
  v347 = v237;
  sub_213FDC9D0(v237, v238);
  v242 = v236(&v375, &v368, &v379);
  *&v360 = 0;
  if ((v242 & 1) == 0)
  {
    sub_214031C4C();
    v261 = swift_allocError();
    *v262 = 0xD000000000000022;
    v262[1] = 0x800000021478E7C0;
    v263 = v321;
    v262[2] = 0xD00000000000001CLL;
    v262[3] = v263;
    *&v360 = v261;
    swift_willThrow();

    v264 = v354;
    v265 = v355;
    v266 = v332;

    sub_213FB54FC(v265, v264);
    sub_213FB2DF4(v329, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v330, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v331, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v266, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v267 = v320;
    v268 = *(v320 + 2);
    v269 = *(v320 + 3);

    sub_213FDC6D0(v268, v269);
    *v267 = v236;
    *(v267 + 1) = v235;
    v270 = v346;
    *(v267 + 2) = v347;
    *(v267 + 3) = v270;
    v267[32] = v358;
LABEL_61:
    v211 = v334;
    goto LABEL_48;
  }

  sub_213FDC6D0(v347, v346);
  v243 = v321;

  v244 = v320;
  v245 = *(v320 + 2);
  v246 = *(v320 + 3);

  sub_213FDC6D0(v245, v246);
  *v244 = v236;
  *(v244 + 1) = v235;
  *(v244 + 2) = v240;
  *(v244 + 3) = v241;
  v244[32] = v358;
  v248 = *v316;
  v247 = *(v316 + 1);
  v249 = *(v316 + 2);
  v250 = *(v316 + 3);
  v251 = v316[32];
  *&v375 = v318;
  *(&v375 + 1) = v353;
  LODWORD(v347) = v251;
  LOBYTE(v368) = v251;
  *&v379 = 0xD000000000000026;
  *(&v379 + 1) = 0x800000021478E7F0;
  *&v380 = 0xD00000000000001CLL;
  *(&v380 + 1) = v243;

  v346 = v249;
  v340 = v250;
  sub_213FDC9D0(v249, v250);
  v252 = v360;
  v358 = v248;
  v253 = v248(&v375, &v368, &v379);
  *&v360 = v252;
  if (v252)
  {

LABEL_66:

    sub_213FB54FC(v355, v354);
    sub_213FB2DF4(v329, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v330, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v331, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v332, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v285 = v316;
    v286 = *(v316 + 2);
    v287 = *(v316 + 3);

    sub_213FDC6D0(v286, v287);
    *v285 = v358;
    *(v285 + 1) = v247;
    v288 = v340;
    *(v285 + 2) = v346;
    *(v285 + 3) = v288;
    v285[32] = v347;
    goto LABEL_61;
  }

  if ((v253 & 1) == 0)
  {
    sub_214031C4C();
    v282 = swift_allocError();
    *v283 = 0xD000000000000026;
    v283[1] = 0x800000021478E7F0;
    v284 = v321;
    v283[2] = 0xD00000000000001CLL;
    v283[3] = v284;
    *&v360 = v282;
    swift_willThrow();

    goto LABEL_66;
  }

  sub_213FDC6D0(v346, v340);
  v271 = v321;

  v272 = v316;
  v273 = *(v316 + 2);
  v274 = *(v316 + 3);

  sub_213FDC6D0(v273, v274);
  *v272 = v358;
  *(v272 + 1) = v247;
  v275 = v353;
  *(v272 + 2) = v318;
  *(v272 + 3) = v275;
  v272[32] = v347;
  v277 = *v317;
  v276 = *(v317 + 1);
  v278 = *(v317 + 2);
  v279 = v317[24];
  *&v375 = v335;
  LODWORD(v353) = v279;
  LOBYTE(v368) = v279;
  *&v379 = 0xD00000000000002BLL;
  *(&v379 + 1) = 0x800000021478E820;
  *&v380 = 0xD00000000000001CLL;
  *(&v380 + 1) = v271;

  v358 = v276;
  v280 = v360;
  v281 = v277(&v375, &v368, &v379);
  *&v360 = v280;
  if (v280)
  {

LABEL_70:

    sub_213FB54FC(v355, v354);
    sub_213FB2DF4(v329, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v330, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v331, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v332, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
    sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
    v305 = v317;

    v306 = v358;
    *v305 = v277;
    *(v305 + 1) = v306;
    *(v305 + 2) = v278;
    v305[24] = v353;
    goto LABEL_61;
  }

  if ((v281 & 1) == 0)
  {
    sub_214031C4C();
    v302 = swift_allocError();
    *v303 = 0xD00000000000002BLL;
    v303[1] = 0x800000021478E820;
    v304 = v321;
    v303[2] = 0xD00000000000001CLL;
    v303[3] = v304;
    *&v360 = v302;
    swift_willThrow();
    goto LABEL_70;
  }

  sub_213FB54FC(v355, v354);
  sub_213FB2DF4(v329, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v330, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v331, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v332, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v333, &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2DF4(v337, &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2DF4(v339, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v341, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v342, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v343, &qword_27C913090, &unk_2146E9DB0);
  v289 = v317;

  v290 = v358;
  *v289 = v277;
  *(v289 + 1) = v290;
  v291 = v334;
  *(v289 + 2) = v335;
  v289[24] = v353;
  v292 = v328;
  sub_2144247CC(v291, v328, type metadata accessor for IDSHealthInvitation);
  sub_2144246FC(v356, type metadata accessor for HealthSummarySharingEntry);
  v293 = v345;
  v294 = *(v345 + 2);
  v295 = *(v345 + 3);

  sub_213FDC6D0(v294, v295);
  v296 = *(v293 + 56);
  v297 = *(v293 + 64);

  sub_213FDC6D0(v296, v297);

  sub_213FB2DF4(v293 + v352, &qword_27C907568, &unk_2146F4AA0);
  sub_213FB2DF4(v293 + v350, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v293 + v348, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v293 + v349, &qword_27C913090, &unk_2146E9DB0);
  v298 = *(v351 + 16);
  v299 = *(v351 + 24);

  sub_213FDC6D0(v298, v299);
  v300 = *(v359 + 16);
  v301 = *(v359 + 24);

  sub_213FDC6D0(v300, v301);
  sub_213FB2DF4(v293 + v357, &qword_27C907570, &qword_214732A10);

  sub_2144247CC(v292, v293, type metadata accessor for IDSHealthInvitation);
}

void sub_21441EA2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v180 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v178 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v170 = (&v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = type metadata accessor for CloudKitSharingToken(0);
  v176 = *(v185 - 8);
  v4 = MEMORY[0x28223BE20](v185);
  v184 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v183 = &v161 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v175 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v201 = (&v161 - v10);
  v11 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v186 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v187 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v169 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v171 = &v161 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v172 = &v161 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v173 = &v161 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v174 = &v161 - v23;
  MEMORY[0x28223BE20](v22);
  v182 = &v161 - v24;
  v25 = type metadata accessor for HealthSharingSetupMetadata(0);
  v26 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v181 = (&v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v177 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v161 - v31;
  v33 = *(a1 + *(type metadata accessor for HealthSummarySharingEntry(0) + 20));
  v34 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  sub_213FB2E54(v33 + v34, v32, &qword_27C913098, qword_21473D710);
  v35 = *(v26 + 48);
  v36 = 1;
  v37 = v35(v32, 1, v25);
  sub_213FB2DF4(v32, &qword_27C913098, qword_21473D710);
  if (v37 == 1)
  {
    v38 = v179;
LABEL_3:
    (*(v178 + 56))(v38, v36, 1, v180);
    return;
  }

  v39 = v33 + v34;
  v40 = v177;
  sub_213FB2E54(v39, v177, &qword_27C913098, qword_21473D710);
  if (v35(v40, 1, v25) == 1)
  {
    v41 = v181;
    *v181 = MEMORY[0x277D84F90];
    sub_2146D8DE8();
    v42 = (v41 + v25[6]);
    *v42 = 0;
    v42[1] = 0;
    *(v41 + v25[7]) = xmmword_2146E68C0;
    *(v41 + v25[8]) = xmmword_2146E68C0;
    *(v41 + v25[9]) = xmmword_2146E68C0;
    v43 = (v41 + v25[10]);
    *v43 = 0;
    v43[1] = 0;
    v44 = v35(v40, 1, v25);
    v45 = v188;
    if (v44 != 1)
    {
      sub_213FB2DF4(v40, &qword_27C913098, qword_21473D710);
    }
  }

  else
  {
    v41 = v181;
    sub_2144247CC(v40, v181, type metadata accessor for HealthSharingSetupMetadata);
    v45 = v188;
  }

  v46 = (v41 + v25[6]);
  v48 = *v46;
  v47 = v46[1];
  v49 = (v41 + v25[7]);
  v50 = v49[1];
  if (v50 >> 60 == 15)
  {
    v51 = type metadata accessor for CloudKitShareParticipant(0);
    v52 = v182;
    (*(*(v51 - 8) + 56))(v182, 1, 1, v51);
  }

  else
  {
    v53 = v25;
    v54 = *v49;

    sub_213FDCA18(v54, v50);
    v52 = v182;
    sub_21462EA3C(v54, v50, v182);
    if (v45)
    {
      sub_2144246FC(v41, type metadata accessor for HealthSharingSetupMetadata);

      return;
    }

    v55 = type metadata accessor for CloudKitShareParticipant(0);
    (*(*(v55 - 8) + 56))(v52, 0, 1, v55);
    v25 = v53;
  }

  sub_214423B28(v41);
  if (v45)
  {
    sub_213FB2DF4(v52, &qword_27C907570, &qword_214732A10);

    sub_2144246FC(v41, type metadata accessor for HealthSharingSetupMetadata);
    return;
  }

  v57 = v56;
  v58 = v25;
  v168 = v48;
  if (v56)
  {
    v59 = [*&v56[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid] UUIDString];
    v60 = sub_2146D95B8();
    v62 = v61;

    v63 = v57[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type];
  }

  else
  {
    v60 = 0;
    v62 = 0;
    v63 = 5;
  }

  v166 = v63;
  v64 = (v41 + v58[9]);
  v65 = v64[1];
  v162 = v60;
  if (v65 >> 60 == 15)
  {
    v66 = 1;
  }

  else
  {
    v67 = *v64;
    sub_213FDCA18(*v64, v65);
    sub_21462EA3C(v67, v65, v174);
    v66 = 0;
  }

  v165 = v62;
  v167 = v47;
  v164 = v57;
  v68 = type metadata accessor for CloudKitShareParticipant(0);
  (*(*(v68 - 8) + 56))(v174, v66, 1, v68);
  v69 = (v41 + v58[10]);
  v70 = v69[1];
  v161 = *v69;
  v71 = *v41;
  v72 = *(v71 + 16);
  v163 = v70;

  v177 = v72;
  if (v72)
  {
    v73 = 0;
    v74 = (v176 + 48);
    v188 = MEMORY[0x277D84F90];
    v75 = &qword_27C9041D8;
    v76 = &qword_2146ED5C0;
    v77 = v175;
    v78 = v187;
    while (v73 < *(v71 + 16))
    {
      sub_214424694(v71 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + v186[9] * v73, v78, type metadata accessor for HealthSharingSetupInvitationToken);
      v79 = v201;
      sub_214420FA8(v78, v201);
      sub_2144246FC(v78, type metadata accessor for HealthSharingSetupInvitationToken);
      sub_213FB2E54(v79, v77, &qword_27C9041D8, &qword_2146ED5C0);
      if ((*v74)(v77, 1, v185) == 1)
      {
        sub_213FB2DF4(v79, &qword_27C9041D8, &qword_2146ED5C0);
        sub_213FB2DF4(v77, &qword_27C9041D8, &qword_2146ED5C0);
      }

      else
      {
        v80 = v77;
        v81 = v183;
        sub_2144247CC(v80, v183, type metadata accessor for CloudKitSharingToken);
        sub_214424694(v81, v184, type metadata accessor for CloudKitSharingToken);
        v82 = v188;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_214095C0C(0, *(v82 + 2) + 1, 1, v82);
        }

        v84 = *(v82 + 2);
        v83 = *(v82 + 3);
        if (v84 >= v83 >> 1)
        {
          v82 = sub_214095C0C((v83 > 1), v84 + 1, 1, v82);
        }

        sub_2144246FC(v183, type metadata accessor for CloudKitSharingToken);
        sub_213FB2DF4(v201, &qword_27C9041D8, &qword_2146ED5C0);
        *(v82 + 2) = v84 + 1;
        v85 = (*(v176 + 80) + 32) & ~*(v176 + 80);
        v188 = v82;
        sub_2144247CC(v184, v82 + v85 + *(v176 + 72) * v84, type metadata accessor for CloudKitSharingToken);
        v77 = v175;
      }

      ++v73;
      v78 = v187;
      if (v177 == v73)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  v188 = MEMORY[0x277D84F90];
LABEL_33:
  v86 = v173;
  sub_213FB2E54(v182, v173, &qword_27C907570, &qword_214732A10);
  v87 = v172;
  sub_213FB2E54(v174, v172, &qword_27C907570, &qword_214732A10);
  sub_213FB2E54(v86, v171, &qword_27C907570, &qword_214732A10);
  v88 = v169;
  sub_213FB2E54(v87, v169, &qword_27C907570, &qword_214732A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v90 = swift_initStackObject();
  *(v90 + 16) = xmmword_2146EAEB0;
  v91 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v92 = sub_2142E0E94(0xD000000000000013, 0x80000002147915E0, 0);
  v187 = 0;
  v93 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v94 = swift_allocObject();
  v95 = swift_allocObject();
  *(v95 + 16) = v93;
  *(v94 + 16) = sub_21430BBF4;
  *(v94 + 24) = v95;
  *(v90 + 32) = v94;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_2140676DC;
  *(v96 + 24) = 0;
  *(v90 + 40) = v96;
  v97 = sub_2142E0070(v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v98 = swift_allocObject();
  v99 = swift_allocObject();
  *(v99 + 16) = v97;
  *(v98 + 16) = sub_214032610;
  *(v98 + 24) = v99;
  *(inited + 32) = v98;
  sub_214042A28(inited, &v197);
  v100 = v198;
  v101 = v199;
  LOBYTE(v98) = v200;
  sub_214393C20(&v193);
  v102 = v194;
  v103 = v195;
  v104 = v196;
  sub_214393C54(&v189);
  v105 = v190;
  v201 = v191;
  LODWORD(v186) = v192;
  v106 = v170;
  *v170 = v197;
  *(v106 + 2) = v100;
  *(v106 + 3) = v101;
  *(v106 + 32) = v98;
  v107 = v180;
  sub_21442475C(v171, v106 + *(v180 + 20));
  sub_21442475C(v88, v106 + v107[6]);
  v108 = v106 + v107[7];
  *v108 = v193;
  *(v108 + 2) = v102;
  *(v108 + 3) = v103;
  v108[32] = v104;
  *(v106 + v107[8]) = v166;
  v109 = v106 + v107[9];
  *v109 = v189;
  v110 = v201;
  *(v109 + 2) = v105;
  *(v109 + 3) = v110;
  v109[32] = v186;
  *(v106 + v107[10]) = v188;
  v112 = *v106;
  v111 = *(v106 + 1);
  v113 = *(v106 + 2);
  v114 = *(v106 + 3);
  v115 = *(v106 + 32);
  *&v193 = v168;
  *(&v193 + 1) = v167;
  LODWORD(v186) = v115;
  LOBYTE(v189) = v115;
  *&v197 = 0xD00000000000003DLL;
  *(&v197 + 1) = 0x8000000214791630;
  v198 = 0xD00000000000001CLL;
  v199 = 0x800000021478A360;
  v201 = 0x800000021478A360;

  sub_213FDC9D0(v113, v114);
  v116 = v187;
  v117 = v112(&v193, &v189, &v197);
  v188 = v116;
  if (v116)
  {

LABEL_39:

    sub_213FB2DF4(v172, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v173, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v182, &qword_27C907570, &qword_214732A10);
    v132 = *(v106 + 2);
    v133 = *(v106 + 3);

    sub_213FDC6D0(v132, v133);
    *v106 = v112;
    *(v106 + 1) = v111;
    *(v106 + 2) = v113;
    *(v106 + 3) = v114;
    *(v106 + 32) = v186;
    goto LABEL_40;
  }

  v187 = v109;
  if ((v117 & 1) == 0)
  {
    sub_214031C4C();
    v129 = swift_allocError();
    *v130 = 0xD00000000000003DLL;
    v130[1] = 0x8000000214791630;
    v131 = v201;
    v130[2] = 0xD00000000000001CLL;
    v130[3] = v131;
    v188 = v129;
    swift_willThrow();

    goto LABEL_39;
  }

  sub_213FDC6D0(v113, v114);
  v118 = v201;

  v119 = *(v106 + 2);
  v120 = *(v106 + 3);

  sub_213FDC6D0(v119, v120);
  *v106 = v112;
  *(v106 + 1) = v111;
  v121 = v167;
  *(v106 + 2) = v168;
  *(v106 + 3) = v121;
  *(v106 + 32) = v186;
  v123 = *v108;
  v122 = *(v108 + 1);
  v124 = *(v108 + 2);
  v125 = *(v108 + 3);
  v126 = v108[32];
  *&v193 = v162;
  *(&v193 + 1) = v165;
  LODWORD(v185) = v126;
  LOBYTE(v189) = v126;
  *&v197 = 0xD00000000000003ALL;
  *(&v197 + 1) = 0x8000000214791670;
  v198 = 0xD00000000000001CLL;
  v199 = v118;

  sub_213FDC9D0(v124, v125);
  v127 = v188;
  v186 = v123;
  v128 = (v123)(&v193, &v189, &v197);
  v188 = v127;
  if (v127)
  {
  }

  else
  {
    if (v128)
    {
      sub_213FDC6D0(v124, v125);
      v134 = v201;

      v135 = *(v108 + 2);
      v136 = *(v108 + 3);

      sub_213FDC6D0(v135, v136);
      *v108 = v186;
      *(v108 + 1) = v122;
      v137 = v165;
      *(v108 + 2) = v162;
      *(v108 + 3) = v137;
      v108[32] = v185;
      v138 = v134;
      v74 = 0x80000002147916B0;
      v45 = *v187;
      v75 = *(v187 + 1);
      v76 = *(v187 + 2);
      v78 = *(v187 + 3);
      LOBYTE(v73) = v187[32];
      v139 = v161;
      *&v193 = v161;
      v140 = v163;
      *(&v193 + 1) = v163;
      LOBYTE(v189) = v73;
      *&v197 = 0xD000000000000042;
      *(&v197 + 1) = 0x80000002147916B0;
      v198 = 0xD00000000000001CLL;
      v199 = v138;

      sub_213FDC9D0(v76, v78);
      v141 = v188;
      v142 = v45(&v193, &v189, &v197);
      v188 = v141;
      if (v141)
      {

        v77 = v174;
LABEL_50:
        sub_213FB2DF4(v172, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v173, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v77, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v182, &qword_27C907570, &qword_214732A10);
        v158 = v187;
        v159 = *(v187 + 2);
        v160 = *(v187 + 3);

        sub_213FDC6D0(v159, v160);
        *v158 = v45;
        *(v158 + 1) = v75;
        *(v158 + 2) = v76;
        *(v158 + 3) = v78;
        v158[32] = v73;
        v106 = v170;
        goto LABEL_40;
      }

      v77 = v174;
      if (v142)
      {
        sub_213FDC6D0(v76, v78);

        v150 = v140;
        sub_213FB2DF4(v172, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v173, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v77, &qword_27C907570, &qword_214732A10);
        sub_213FB2DF4(v182, &qword_27C907570, &qword_214732A10);
        v151 = v187;
        v152 = *(v187 + 2);
        v153 = *(v187 + 3);

        sub_213FDC6D0(v152, v153);
        *v151 = v45;
        *(v151 + 1) = v75;
        *(v151 + 2) = v139;
        *(v151 + 3) = v150;
        v151[32] = v73;
        v154 = v179;
        sub_2144247CC(v170, v179, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
        sub_2144246FC(v181, type metadata accessor for HealthSharingSetupMetadata);
        v38 = v154;
        v36 = 0;
        goto LABEL_3;
      }

LABEL_49:
      sub_214031C4C();
      v155 = swift_allocError();
      *v156 = 0xD000000000000042;
      v156[1] = v74;
      v157 = v201;
      v156[2] = 0xD00000000000001CLL;
      v156[3] = v157;
      v188 = v155;
      swift_willThrow();

      goto LABEL_50;
    }

    sub_214031C4C();
    v143 = swift_allocError();
    *v144 = 0xD00000000000003ALL;
    v144[1] = 0x8000000214791670;
    v145 = v201;
    v144[2] = 0xD00000000000001CLL;
    v144[3] = v145;
    v188 = v143;
    swift_willThrow();
  }

  v146 = v186;
  v147 = v185;

  sub_213FB2DF4(v172, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v173, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v174, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v182, &qword_27C907570, &qword_214732A10);
  v148 = *(v108 + 2);
  v149 = *(v108 + 3);

  sub_213FDC6D0(v148, v149);
  *v108 = v146;
  *(v108 + 1) = v122;
  *(v108 + 2) = v124;
  *(v108 + 3) = v125;
  v108[32] = v147;
LABEL_40:
  sub_2144246FC(v106, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  sub_2144246FC(v181, type metadata accessor for HealthSharingSetupMetadata);
}

uint64_t sub_2144201A0@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v1 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v85 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v91 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v92 = &v73 - v4;
  v5 = type metadata accessor for CloudKitSharingToken(0);
  v88 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v73 - v10;
  v86 = type metadata accessor for CloudKitShareParticipant(0);
  v83 = *(v86 - 8);
  v11 = MEMORY[0x28223BE20](v86);
  v79 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v73 - v13;
  v14 = type metadata accessor for HealthSharingSetupMetadata(0);
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v73 - v19;
  v21 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for IDSHealthInvitation(0);
  sub_213FB2E54(v93 + *(v25 + 48), v20, &qword_27C907568, &unk_2146F4AA0);
  v26 = *(v22 + 48);
  v84 = v21;
  if (v26(v20, 1, v21) == 1)
  {
    sub_213FB2DF4(v20, &qword_27C907568, &unk_2146F4AA0);
    return (*(v15 + 56))(v90, 1, 1, v14);
  }

  sub_2144247CC(v20, v24, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  *v17 = MEMORY[0x277D84F90];
  sub_2146D8DE8();
  v28 = (v17 + v14[6]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v17 + v14[7];
  *v29 = xmmword_2146E68C0;
  v30 = (v17 + v14[8]);
  *v30 = xmmword_2146E68C0;
  v31 = (v17 + v14[9]);
  *v31 = xmmword_2146E68C0;
  v32 = (v17 + v14[10]);
  *v32 = 0;
  v32[1] = 0;
  v33 = *(v24 + 3);
  v34 = v89;
  v35 = v82;
  if (v33)
  {
    if (v33 == 1)
    {
      goto LABEL_34;
    }

    *v28 = *(v24 + 2);
    v28[1] = v33;
  }

  v77 = v30;
  v78 = v17;
  v74 = v31;
  v75 = v32;
  v76 = v14;
  v36 = v84;
  sub_213FB2E54(&v24[v84[5]], v35, &qword_27C907570, &qword_214732A10);
  v37 = *(v83 + 48);
  if (v37(v35, 1, v86) == 1)
  {

    sub_213FB2DF4(v35, &qword_27C907570, &qword_214732A10);
    v83 = v15;
  }

  else
  {
    v57 = v35;
    v58 = v81;
    sub_2144247CC(v57, v81, type metadata accessor for CloudKitShareParticipant);

    v59 = sub_21462F008();
    if (v34)
    {
      sub_2144246FC(v58, type metadata accessor for CloudKitShareParticipant);
      goto LABEL_31;
    }

    v60 = v59;
    v83 = v15;
    v34 = 0;
    v62 = sub_214633900();
    v64 = v63;
    sub_2144246FC(v81, type metadata accessor for CloudKitShareParticipant);

    sub_213FDC6BC(*v29, *(v29 + 1));
    *v29 = v62;
    *(v29 + 1) = v64;
  }

  v38 = sub_2144215D0(v24);
  if (v34)
  {
LABEL_31:
    sub_2144246FC(v24, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    v66 = v78;
    return sub_2144246FC(v66, type metadata accessor for HealthSharingSetupMetadata);
  }

  if (v39 >> 60 != 15)
  {
    v40 = v77;
    v41 = v38;
    v42 = v39;
    sub_213FDC6BC(*v77, v77[1]);
    *v40 = v41;
    v40[1] = v42;
    v36 = v84;
  }

  v43 = v80;
  sub_213FB2E54(&v24[v36[6]], v80, &qword_27C907570, &qword_214732A10);
  if (v37(v43, 1, v86) == 1)
  {
    sub_213FB2DF4(v43, &qword_27C907570, &qword_214732A10);
  }

  else
  {
    v61 = v79;
    sub_2144247CC(v43, v79, type metadata accessor for CloudKitShareParticipant);
    v67 = sub_21462F008();
    v68 = v24;
    v69 = sub_214633900();
    v71 = v70;
    sub_2144246FC(v61, type metadata accessor for CloudKitShareParticipant);

    v72 = v74;
    sub_213FDC6BC(*v74, v74[1]);
    *v72 = v69;
    v72[1] = v71;
    v24 = v68;
    v36 = v84;
  }

  v44 = &v24[v36[9]];
  v45 = *(v44 + 3);
  v46 = v90;
  if (!v45)
  {
    goto LABEL_16;
  }

  if (v45 != 1)
  {
    v47 = v75;
    *v75 = *(v44 + 2);
    v47[1] = v45;
LABEL_16:
    v48 = v36[10];
    v89 = v24;
    v49 = *&v24[v48];
    v50 = *(v49 + 16);

    if (v50)
    {
      v51 = 0;
      v52 = MEMORY[0x277D84F90];
      while (v51 < *(v49 + 16))
      {
        v53 = v87;
        sub_214424694(v49 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v51, v87, type metadata accessor for CloudKitSharingToken);
        v54 = v92;
        sub_214421840(v53, v92);
        sub_2144246FC(v53, type metadata accessor for CloudKitSharingToken);
        sub_214424694(v54, v91, type metadata accessor for HealthSharingSetupInvitationToken);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_2140954AC(0, v52[2] + 1, 1, v52);
        }

        v56 = v52[2];
        v55 = v52[3];
        if (v56 >= v55 >> 1)
        {
          v52 = sub_2140954AC((v55 > 1), v56 + 1, 1, v52);
        }

        ++v51;
        sub_2144246FC(v92, type metadata accessor for HealthSharingSetupInvitationToken);
        v52[2] = v56 + 1;
        sub_2144247CC(v91, v52 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v56, type metadata accessor for HealthSharingSetupInvitationToken);
        v46 = v90;
        if (v50 == v51)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v52 = MEMORY[0x277D84F90];
LABEL_30:
    sub_2144246FC(v89, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    v65 = v78;
    *v78 = v52;
    sub_214424694(v65, v46, type metadata accessor for HealthSharingSetupMetadata);
    (*(v83 + 56))(v46, 0, 1, v76);
    v66 = v65;
    return sub_2144246FC(v66, type metadata accessor for HealthSharingSetupMetadata);
  }

LABEL_34:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_214420C54()
{
  v1 = type metadata accessor for HealthSharingAuthorization(0);
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - v5;
  v7 = *(v0 + *(type metadata accessor for IDSHealthInvitation(0) + 80));
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 96);
    v33 = MEMORY[0x277D84F90];
    v26 = v7;
    v27 = v4;
    while (v8 < *(v7 + 16))
    {
      v10 = *(v9 - 7);
      v11 = *(v9 - 6);
      v12 = *(v9 - 5);
      v13 = *(v9 - 3);
      v14 = *(v9 - 2);
      v15 = *v9;
      v31 = *(v9 - 1);
      v32 = v10;

      sub_213FDC9D0(v11, v12);

      sub_2146D8DE8();
      v16 = v30;
      v17 = &v6[*(v30 + 20)];
      *v17 = 0;
      v17[1] = 0;
      v18 = &v6[*(v16 + 24)];
      *v18 = 0;
      *(v18 + 1) = 0;
      v19 = &v6[*(v16 + 28)];
      *v19 = 0;
      *(v19 + 1) = 0;
      if (v12)
      {
        if (v12 == 1)
        {
          goto LABEL_20;
        }

        *v17 = v11;
        v17[1] = v12;
      }

      if (v14)
      {
        *v18 = v13;
        *(v18 + 1) = v14;
      }

      if (v15)
      {
        *v19 = v31;
        *(v19 + 1) = v15;
      }

      sub_214424694(v6, v4, type metadata accessor for HealthSharingAuthorization);
      sub_213FDC9D0(v11, v12);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2140954D4(0, v33[2] + 1, 1, v33);
      }

      v21 = v33[2];
      v20 = v33[3];
      if (v21 >= v20 >> 1)
      {
        v33 = sub_2140954D4((v20 > 1), v21 + 1, 1, v33);
      }

      ++v8;

      sub_213FDC6D0(v11, v12);

      v22 = v33;
      v33[2] = v21 + 1;
      v23 = v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v21;
      v4 = v27;
      sub_2144247CC(v27, v23, type metadata accessor for HealthSharingAuthorization);
      sub_2144246FC(v6, type metadata accessor for HealthSharingAuthorization);
      v9 += 9;
      v7 = v26;
      if (v28 == v8)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_20:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_214420FA8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v9 = (a1 + *(v8 + 24));
  v10 = v9[1];
  if (v10 >> 60 == 15)
  {
    v11 = type metadata accessor for CloudKitSharingToken(0);
    (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
    return;
  }

  v46 = v8;
  v12 = *v9;
  v13 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_213FDCA18(v12, v10);
  v14 = sub_21404A62C();
  if (v2)
  {
    sub_213FB54FC(v12, v10);
    v51 = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
    sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
    if (swift_dynamicCast())
    {

      v16 = v50;
      sub_21404A6EC();
      swift_allocError();
      v18 = v17;
      v19 = v16;
      v20 = [v19 domain];
      v21 = sub_2146D95B8();
      v23 = v22;

      v47 = 0xD000000000000014;
      v48 = 0x800000021478AAD0;
      MEMORY[0x2160545D0](v21, v23);

      v24 = v48;
      *v18 = v47;
      v18[1] = v24;
      v47 = [v19 code];
      v25 = sub_2146DA428();
      v27 = v26;

      v18[2] = v25;
      v18[3] = v27;
      v18[4] = 0xD000000000000013;
      v18[5] = 0x800000021479A560;
      swift_willThrow();

      v28 = v51;
    }

    else
    {

      sub_21404A6EC();
      swift_allocError();
      v41 = v40;
      v42 = v2;
      sub_214689A34(v2, 0xD000000000000013, 0x800000021479A560, v41);
      swift_willThrow();
      v28 = v2;
    }

    return;
  }

  v29 = v14;
  sub_213FB54FC(v12, v10);
  v30 = v29;
  [v30 _enableStrictSecureDecodingMode];
  [v30 setDecodingFailurePolicy_];
  v31 = sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = sub_2146D9588();
  [v30 setClass:ObjCClassFromMetadata forClassName:v33];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2146EA710;
  *(v34 + 32) = v31;
  sub_2146D95B8();
  sub_2146D9D08();

  if (!v49)
  {
    sub_213FB2DF4(&v47, &qword_27C913170, &qword_2146EAB20);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v43 = sub_2146D9F58();
    swift_allocError();
    v45 = v44;
    sub_2146D9F28();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84168], v43);
    swift_willThrow();

    return;
  }

  v35 = v51;
  if (*(a1 + *(v46 + 20) + 8))
  {

    sub_2146D8928();

    v36 = sub_2146D8958();
    v37 = *(v36 - 8);
    v38 = 0;
    if ((*(v37 + 48))(v7, 1, v36) != 1)
    {
      v38 = sub_2146D8898();
      (*(v37 + 8))(v7, v36);
    }

    [v35 setShareURL_];
  }

  sub_2145A8530(v35, a2);

  v39 = type metadata accessor for CloudKitSharingToken(0);
  (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
}

uint64_t sub_2144215D0(uint64_t a1)
{
  v2 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v3 = *(a1 + *(v2 + 32));
  if (v3 == 5)
  {
    return 0;
  }

  v5 = a1 + *(v2 + 28);
  result = *(v5 + 24);
  if (result)
  {
    if (result == 1)
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 16);
      v8 = objc_allocWithZone(MEMORY[0x277CCAD78]);

      v9 = sub_2146D9588();
      sub_213FDC6D0(v7, v6);
      v10 = [v8 initWithUUIDString_];

      if (!v10)
      {
        return 0;
      }

      v11 = type metadata accessor for _BlastDoorHKProfileIdentifier();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_UuidKey];
      *v13 = 0x746E65646970;
      v13[1] = 0xE600000000000000;
      v14 = &v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_TypeKey];
      *v14 = 0x6570797470;
      v14[1] = 0xE500000000000000;
      v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type] = v3;
      *&v12[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid] = v10;
      v21.receiver = v12;
      v21.super_class = v11;
      v15 = v10;
      v16 = objc_msgSendSuper2(&v21, sel_init);
      v17 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      v18 = sub_2146D9588();
      [v17 setClassName:v18 forClass:swift_getObjCClassFromMetadata()];

      [v17 encodeObject:v16 forKey:*MEMORY[0x277CCA308]];
      v19 = [v17 encodedData];
      v20 = sub_2146D8A58();

      return v20;
    }
  }

  return result;
}

uint64_t sub_214421840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2145A8204();
  if (v2)
  {
    v13 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v14 = qword_280B35410;
    if (os_log_type_enabled(qword_280B35410, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_213FAF000, v14, v13, "Error when attempting to recompose CloudSharingMetadata token: %@", v15, 0xCu);
      sub_213FB2DF4(v16, &qword_27C9041E0, &qword_214736EF0);
      MEMORY[0x216056AC0](v16, -1, -1);
      MEMORY[0x216056AC0](v15, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v20 = v12;
    v21 = a1 + *(type metadata accessor for CloudKitSharingToken(0) + 24);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
    sub_213FB2E54(v21 + *(v22 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v36 = v20;
      sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v23 = v20;
      v24 = sub_2146D8868();
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      [v23 setShareURL_];
      v27 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      v28 = sub_2146D9588();
      sub_21404A8B8(0, &unk_27C9131C0, off_278175128);
      [v27 setClassName:v28 forClass:swift_getObjCClassFromMetadata()];

      [v27 encodeObject:v23 forKey:*MEMORY[0x277CCA308]];
      sub_2146D8DE8();
      v29 = type metadata accessor for HealthSharingSetupInvitationToken(0);
      v30 = (a2 + *(v29 + 20));
      *v30 = 0;
      v30[1] = 0;
      v31 = a2 + *(v29 + 24);
      *v31 = xmmword_2146E68C0;
      *v30 = v24;
      v30[1] = v26;
      v32 = [v27 encodedData];
      v33 = sub_2146D8A58();
      v35 = v34;

      result = sub_213FDC6BC(*v31, *(v31 + 8));
      *v31 = v33;
      *(v31 + 8) = v35;
    }
  }

  return result;
}

id sub_214421CB8(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_UuidKey];
  *v4 = 0x746E65646970;
  v4[1] = 0xE600000000000000;
  v5 = &v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_TypeKey];
  *v5 = 0x6570797470;
  v5[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EA710;
  *(v6 + 32) = sub_21404A8B8(0, &qword_27C913168, 0x277CCAD78);
  sub_2146D9D08();

  if (!v16)
  {

    sub_213FB2DF4(v15, &qword_27C913170, &qword_2146EAB20);
LABEL_10:

    type metadata accessor for _BlastDoorHKProfileIdentifier();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v7 = v14;

  v8 = sub_2146D9588();

  v9 = [a1 decodeIntegerForKey_];

  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v9 == 2)
    {
      v10 = 1;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v9 == 3)
  {
    v10 = 2;
    goto LABEL_17;
  }

  if (v9 == 4)
  {
    v10 = 3;
    goto LABEL_17;
  }

  if (v9 != 100)
  {
LABEL_19:

    goto LABEL_10;
  }

  v10 = 4;
LABEL_17:
  v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type] = v10;
  *&v2[OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid] = v7;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for _BlastDoorHKProfileIdentifier();
  v12 = objc_msgSendSuper2(&v13, sel_init);

  return v12;
}

void sub_214421F30(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_uuid);
  v4 = sub_2146D9588();
  [a1 encodeObject:v3 forKey:v4];

  v5 = qword_21473D7E8[*(v1 + OBJC_IVAR____TtC9BlastDoor29_BlastDoorHKProfileIdentifier_type)];
  v6 = sub_2146D9588();
  [a1 encodeInteger:v5 forKey:v6];
}

id sub_2144220B0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _BlastDoorHKProfileIdentifier();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_214422148(void *a1, char *a2, unint64_t *a3)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *a3;
  v9[0] = *a1;
  v9[1] = v3;
  v7[2] = v9;
  v8 = v4;
  return sub_21441C14C(sub_21438ED20, v7, v5) & 1;
}

uint64_t sub_2144221AC(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  v4 = *a3;
  v8[0] = *a1;
  v8[1] = v3;
  v5 = *(v4 + 16);
  v7 = 2;
  return v5(v8, &v7) & 1;
}

uint64_t sub_2144221FC(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 16);
  if (v3 != 2)
  {
    v6 = *(a3 + 24);
    v9 = v3 & 1;
    if (v6(&v9))
    {
      return 1;
    }
  }

  v8 = sub_2146D96A8();
  return v4(v8, v5) & 1;
}

uint64_t sub_214422298(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  if (v3 == 1 || (v4 = a2[3], v4 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v5 = a1[2];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v11 = a2[5];
  v10 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  if (!v3)
  {
    if (v4)
    {
      return 0;
    }

    sub_213FDC9D0(a2[2], 0);
    sub_213FDC9D0(v5, 0);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (!v10)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v4 || (v5 != a2[2] || v3 != v4) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (!v10 || (v6 != v11 || v7 != v10) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  result = (v9 | v13) == 0;
  if (v9 && v13)
  {
    if (v8 == v12 && v9 == v13)
    {
      return 1;
    }

    else
    {

      return sub_2146DA6A8();
    }
  }

  return result;
}

uint64_t sub_214422444(uint64_t a1, uint64_t a2)
{
  v125 = type metadata accessor for CloudKitShareParticipant(0);
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v118 - v7;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913178, &unk_21473D7D0);
  MEMORY[0x28223BE20](v122);
  v126 = &v118 - v8;
  v132 = sub_2146D8B08();
  v134 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v127 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v118 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v118 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913180, &qword_214739C58);
  v17 = MEMORY[0x28223BE20](v133);
  v129 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v130 = &v118 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v118 - v21;
  v23 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v135 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v118 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913188, &qword_21473D7E0);
  MEMORY[0x28223BE20](v29);
  v31 = &v118 - v30;
  v32 = *(a1 + 24);
  if (v32 == 1)
  {
    goto LABEL_120;
  }

  v121 = v5;
  v33 = *(a2 + 24);
  if (v33 == 1)
  {
    goto LABEL_120;
  }

  v34 = *(a1 + 16);
  if (v32)
  {
    if (!v33 || (v34 != *(a2 + 16) || v32 != v33) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (v33)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v34, 0);
  }

  v35 = *(a1 + 64);
  if (v35 == 1)
  {
    goto LABEL_120;
  }

  v36 = *(a2 + 64);
  if (v36 == 1)
  {
    goto LABEL_120;
  }

  v37 = *(a1 + 56);
  if (v35)
  {
    if (!v36 || (v37 != *(a2 + 56) || v35 != v36) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (v36)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(a2 + 56), 0);
    sub_213FDC9D0(v37, 0);
  }

  v38 = *(a1 + 96);
  if (!v38)
  {
    goto LABEL_120;
  }

  v39 = *(a2 + 96);
  if (!v39)
  {
    goto LABEL_120;
  }

  if ((sub_2143D53BC(v38, v39) & 1) == 0)
  {
LABEL_71:
    v68 = 0;
    return v68 & 1;
  }

  v40 = *(a1 + 120);
  v41 = *(a2 + 120);
  if (v40)
  {
    if (!v41 || (*(a1 + 112) != *(a2 + 112) || v40 != v41) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (v41)
  {
    goto LABEL_71;
  }

  v42 = *(a1 + 136);
  v43 = *(a2 + 136);
  if (v42)
  {
    if (!v43 || (*(a1 + 128) != *(a2 + 128) || v42 != v43) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if (v43)
  {
    goto LABEL_71;
  }

  v44 = *(a1 + 144);
  v45 = *(a2 + 144);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      goto LABEL_71;
    }
  }

  else if (v45 == 2 || ((v45 ^ v44) & 1) != 0)
  {
    goto LABEL_71;
  }

  v46 = *(a1 + 145);
  v47 = *(a2 + 145);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_71;
    }
  }

  else if (v47 == 2 || ((v47 ^ v46) & 1) != 0)
  {
    goto LABEL_71;
  }

  v48 = *(a1 + 146);
  v49 = *(a2 + 146);
  if (v48 == 5)
  {
    if (v49 != 5)
    {
      goto LABEL_71;
    }
  }

  else if (v48 != v49)
  {
    goto LABEL_71;
  }

  v119 = type metadata accessor for IDSHealthInvitation(0);
  v50 = v119[12];
  v51 = *(v29 + 48);
  sub_213FB2E54(a1 + v50, v31, &qword_27C907568, &unk_2146F4AA0);
  v120 = v51;
  sub_213FB2E54(a2 + v50, &v31[v51], &qword_27C907568, &unk_2146F4AA0);
  v52 = *(v135 + 6);
  if (v52(v31, 1, v23) == 1)
  {
    if (v52(&v31[v120], 1, v23) == 1)
    {
      sub_213FB2DF4(v31, &qword_27C907568, &unk_2146F4AA0);
      goto LABEL_59;
    }

LABEL_57:
    v53 = &qword_27C913188;
    v54 = &qword_21473D7E0;
    v55 = v31;
LABEL_70:
    sub_213FB2DF4(v55, v53, v54);
    goto LABEL_71;
  }

  sub_213FB2E54(v31, v28, &qword_27C907568, &unk_2146F4AA0);
  if (v52(&v31[v120], 1, v23) == 1)
  {
    sub_2144246FC(v28, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    goto LABEL_57;
  }

  sub_2144247CC(&v31[v120], v25, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  v56 = sub_214423500(v28, v25);
  sub_2144246FC(v25, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  sub_2144246FC(v28, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  sub_213FB2DF4(v31, &qword_27C907568, &unk_2146F4AA0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_59:
  v57 = v119[13];
  v58 = *(v133 + 48);
  sub_213FB2E54(a1 + v57, v22, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v57, &v22[v58], &qword_27C913090, &unk_2146E9DB0);
  v59 = *(v134 + 48);
  v60 = v132;
  if (v59(v22, 1, v132) == 1)
  {
    if (v59(&v22[v58], 1, v60) != 1)
    {
LABEL_69:
      v53 = &qword_27C913180;
      v54 = &qword_214739C58;
      v55 = v22;
      goto LABEL_70;
    }

    sub_213FB2DF4(v22, &qword_27C913090, &unk_2146E9DB0);
  }

  else
  {
    sub_213FB2E54(v22, v16, &qword_27C913090, &unk_2146E9DB0);
    v135 = v59;
    if (v59(&v22[v58], 1, v60) == 1)
    {
LABEL_68:
      (*(v134 + 8))(v16, v60);
      goto LABEL_69;
    }

    v61 = v134;
    v62 = v131;
    (*(v134 + 32))(v131, &v22[v58], v60);
    sub_21442464C(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v63 = sub_2146D9578();
    v64 = *(v61 + 8);
    v64(v62, v60);
    v64(v16, v60);
    sub_213FB2DF4(v22, &qword_27C913090, &unk_2146E9DB0);
    v59 = v135;
    if ((v63 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v65 = v119[14];
  v66 = *(v133 + 48);
  v22 = v130;
  sub_213FB2E54(a1 + v65, v130, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v65, &v22[v66], &qword_27C913090, &unk_2146E9DB0);
  v67 = v59(v22, 1, v60);
  v135 = v59;
  if (v67 == 1)
  {
    if (v59(&v22[v66], 1, v60) == 1)
    {
      sub_213FB2DF4(v22, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  v16 = v128;
  sub_213FB2E54(v22, v128, &qword_27C913090, &unk_2146E9DB0);
  if (v59(&v22[v66], 1, v60) == 1)
  {
    goto LABEL_68;
  }

  v70 = v134;
  v71 = v131;
  (*(v134 + 32))(v131, &v22[v66], v60);
  sub_21442464C(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v72 = sub_2146D9578();
  v73 = *(v70 + 8);
  v73(v71, v60);
  v73(v16, v60);
  sub_213FB2DF4(v22, &qword_27C913090, &unk_2146E9DB0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_74:
  v74 = v119[15];
  v75 = *(v133 + 48);
  v76 = v129;
  sub_213FB2E54(a1 + v74, v129, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(a2 + v74, v76 + v75, &qword_27C913090, &unk_2146E9DB0);
  v77 = v132;
  v78 = v135;
  if (v135(v76, 1, v132) == 1)
  {
    if (v78(v76 + v75, 1, v77) == 1)
    {
      sub_213FB2DF4(v129, &qword_27C913090, &unk_2146E9DB0);
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  sub_213FB2E54(v76, v127, &qword_27C913090, &unk_2146E9DB0);
  if (v78(v76 + v75, 1, v77) == 1)
  {
    (*(v134 + 8))(v127, v132);
LABEL_79:
    v53 = &qword_27C913180;
    v54 = &qword_214739C58;
    v55 = v129;
    goto LABEL_70;
  }

  v79 = v134;
  v80 = v129;
  v81 = v129 + v75;
  v83 = v131;
  v82 = v132;
  (*(v134 + 32))(v131, v81, v132);
  sub_21442464C(&unk_27C913190, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v84 = v127;
  v85 = sub_2146D9578();
  v86 = *(v79 + 8);
  v86(v83, v82);
  v86(v84, v82);
  sub_213FB2DF4(v80, &qword_27C913090, &unk_2146E9DB0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_81:
  v87 = v119[16];
  v88 = a1 + v87;
  v89 = *(a1 + v87 + 24);
  if (v89 == 1)
  {
    goto LABEL_120;
  }

  v90 = a2 + v87;
  v91 = *(v90 + 24);
  if (v91 == 1)
  {
    goto LABEL_120;
  }

  v92 = *(v88 + 16);
  if (v89)
  {
    if (!v91 || (v92 != *(v90 + 16) || v89 != v91) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (v91)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(v90 + 16), 0);
    sub_213FDC9D0(v92, 0);
  }

  v93 = v119[17];
  v94 = a1 + v93;
  v95 = *(a1 + v93 + 24);
  if (v95 == 1)
  {
    goto LABEL_120;
  }

  v96 = a2 + v93;
  v97 = *(v96 + 24);
  if (v97 == 1)
  {
    goto LABEL_120;
  }

  v98 = *(v94 + 16);
  if (v95)
  {
    if (!v97 || (v98 != *(v96 + 16) || v95 != v97) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (v97)
    {
      goto LABEL_71;
    }

    sub_213FDC9D0(*(v96 + 16), 0);
    sub_213FDC9D0(v98, 0);
  }

  v99 = v119[18];
  v100 = *(v122 + 48);
  v101 = v126;
  sub_213FB2E54(a1 + v99, v126, &qword_27C907570, &qword_214732A10);
  sub_213FB2E54(a2 + v99, v101 + v100, &qword_27C907570, &qword_214732A10);
  v102 = *(v123 + 48);
  if (v102(v101, 1, v125) == 1)
  {
    if (v102(v126 + v100, 1, v125) == 1)
    {
      sub_213FB2DF4(v126, &qword_27C907570, &qword_214732A10);
      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v103 = v126;
  sub_213FB2E54(v126, v124, &qword_27C907570, &qword_214732A10);
  if (v102(v103 + v100, 1, v125) == 1)
  {
    sub_2144246FC(v124, type metadata accessor for CloudKitShareParticipant);
LABEL_106:
    v53 = &qword_27C913178;
    v54 = &unk_21473D7D0;
    v55 = v126;
    goto LABEL_70;
  }

  v104 = v126;
  v105 = v126 + v100;
  v106 = v121;
  sub_2144247CC(v105, v121, type metadata accessor for CloudKitShareParticipant);
  v107 = v124;
  v108 = sub_214630EE4(v124, v106);
  sub_2144246FC(v106, type metadata accessor for CloudKitShareParticipant);
  sub_2144246FC(v107, type metadata accessor for CloudKitShareParticipant);
  sub_213FB2DF4(v104, &qword_27C907570, &qword_214732A10);
  if ((v108 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_108:
  v109 = v119[19];
  v110 = *(a1 + v109);
  v111 = *(a2 + v109);
  if (v110 == 3)
  {
    if (v111 != 3)
    {
      goto LABEL_71;
    }
  }

  else if (v110 != v111)
  {
    goto LABEL_71;
  }

  if ((sub_2143D7F2C(*(a1 + v119[20]), *(a2 + v119[20])) & 1) == 0)
  {
    goto LABEL_71;
  }

  v112 = v119[21];
  v113 = *(a1 + v112);
  v114 = *(a2 + v112);
  if (v113 == 3)
  {
    if (v114 == 3)
    {
      goto LABEL_117;
    }

    goto LABEL_71;
  }

  if (v113 != v114)
  {
    goto LABEL_71;
  }

LABEL_117:
  v115 = v119[22];
  v116 = *(a1 + v115 + 16);
  if (v116)
  {
    v117 = *(a2 + v115 + 16);
    if (v117)
    {
      v68 = sub_2143D53BC(v116, v117);
      return v68 & 1;
    }
  }

LABEL_120:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214423500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitShareParticipant(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v44 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913178, &unk_21473D7D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = *(a1 + 24);
  if (v14 == 1)
  {
    goto LABEL_45;
  }

  v15 = *(a2 + 24);
  if (v15 == 1)
  {
    goto LABEL_45;
  }

  v16 = *(a1 + 16);
  if (v14)
  {
    if (!v15 || (v16 != *(a2 + 16) || v14 != v15) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    sub_213FDC9D0(*(a2 + 16), 0);
    sub_213FDC9D0(v16, 0);
  }

  v17 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v18 = a1;
  v19 = a2;
  v44 = v17;
  v45 = v18;
  v20 = *(v17 + 20);
  v21 = *(v11 + 48);
  sub_213FB2E54(v18 + v20, v13, &qword_27C907570, &qword_214732A10);
  v22 = v19 + v20;
  v23 = v19;
  sub_213FB2E54(v22, &v13[v21], &qword_27C907570, &qword_214732A10);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v21], 1, v4) == 1)
    {
      sub_213FB2DF4(v13, &qword_27C907570, &qword_214732A10);
      goto LABEL_19;
    }

LABEL_16:
    sub_213FB2DF4(v13, &qword_27C913178, &unk_21473D7D0);
    return 0;
  }

  sub_213FB2E54(v13, v10, &qword_27C907570, &qword_214732A10);
  if (v24(&v13[v21], 1, v4) == 1)
  {
    sub_2144246FC(v10, type metadata accessor for CloudKitShareParticipant);
    goto LABEL_16;
  }

  sub_2144247CC(&v13[v21], v7, type metadata accessor for CloudKitShareParticipant);
  v26 = sub_214636E6C(v10, v7);
  sub_2144246FC(v7, type metadata accessor for CloudKitShareParticipant);
  sub_2144246FC(v10, type metadata accessor for CloudKitShareParticipant);
  sub_213FB2DF4(v13, &qword_27C907570, &qword_214732A10);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v28 = v44;
  v27 = v45;
  v29 = v44[7];
  v30 = v45 + v29;
  v31 = *(v45 + v29 + 24);
  if (v31 != 1)
  {
    v32 = v23 + v29;
    v33 = *(v32 + 24);
    if (v33 != 1)
    {
      v34 = *(v30 + 16);
      if (v31)
      {
        if (!v33 || (v34 != *(v32 + 16) || v31 != v33) && (sub_2146DA6A8() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v33)
        {
          return 0;
        }

        sub_213FDC9D0(*(v32 + 16), 0);
        sub_213FDC9D0(v34, 0);
      }

      v35 = v28[8];
      v36 = *(v27 + v35);
      v37 = *(v23 + v35);
      if (v36 == 5)
      {
        if (v37 != 5)
        {
          return 0;
        }
      }

      else if (v37 == 5 || qword_21473D7E8[v36] != qword_21473D7E8[v37])
      {
        return 0;
      }

      v38 = v28[9];
      v39 = v27 + v38;
      v40 = *(v27 + v38 + 24);
      if (v40 != 1)
      {
        v41 = v23 + v38;
        v42 = *(v41 + 24);
        if (v42 != 1)
        {
          v43 = *(v39 + 16);
          if (v40)
          {
            if (v42 && (v43 == *(v41 + 16) && v40 == v42 || (sub_2146DA6A8() & 1) != 0))
            {
              return *(*(v27 + v28[10]) + 16) == *(*(v23 + v28[10]) + 16);
            }
          }

          else if (!v42)
          {
            sub_213FDC9D0(*(v41 + 16), 0);
            sub_213FDC9D0(v43, 0);
            return *(*(v27 + v28[10]) + 16) == *(*(v23 + v28[10]) + 16);
          }

          return 0;
        }
      }
    }
  }

LABEL_45:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214423A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214423A78(void *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(v1 + 16);
  v5 = 2;
  return v3(v6, &v5) & 1;
}

uint64_t sub_214423AC4(void *a1, char *a2)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *(v2 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v7[2] = v9;
  v8 = v4;
  return sub_21441C14C(sub_21438ED20, v7, v5) & 1;
}

void sub_214423B28(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for HealthSharingSetupMetadata(0) + 32));
  v3 = v2[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v2;
    v5 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_213FDCA18(v4, v3);
    v6 = sub_21404A62C();
    if (v1)
    {
      sub_213FB54FC(v4, v3);
      v31 = v1;
      v7 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C917FA0, &qword_2146ED5E0);
      sub_21404A8B8(0, &qword_27C9131B0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {

        sub_21404A6EC();
        swift_allocError();
        v9 = v8;
        v10 = v30[4];
        v11 = [v10 domain];
        v12 = sub_2146D95B8();
        v14 = v13;

        MEMORY[0x2160545D0](v12, v14);

        *v9 = 0xD000000000000014;
        v9[1] = 0x800000021478AAD0;
        v30[0] = [v10 code];
        v15 = sub_2146DA428();
        v17 = v16;

        v9[2] = v15;
        v9[3] = v17;
        v9[4] = 0xD000000000000013;
        v9[5] = 0x800000021479A560;
        swift_willThrow();
      }

      else
      {

        sub_21404A6EC();
        swift_allocError();
        v25 = v24;
        v26 = v1;
        sub_214689A34(v1, 0xD000000000000013, 0x800000021479A560, v25);
        swift_willThrow();
      }
    }

    else
    {
      v18 = v6;
      sub_213FB54FC(v4, v3);
      v19 = v18;
      [v19 _enableStrictSecureDecodingMode];
      [v19 setDecodingFailurePolicy_];
      v20 = type metadata accessor for _BlastDoorHKProfileIdentifier();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = sub_2146D9588();
      [v19 setClass:ObjCClassFromMetadata forClassName:v22];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913160, &unk_21473D7C0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2146EA710;
      *(v23 + 32) = v20;
      sub_2146D95B8();
      sub_2146D9D08();

      if (v30[3])
      {
        if (swift_dynamicCast())
        {

          return;
        }
      }

      else
      {
        sub_213FB2DF4(v30, &qword_27C913170, &qword_2146EAB20);
      }

      v27 = sub_2146D9F58();
      swift_allocError();
      v29 = v28;
      sub_2146D9F28();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84168], v27);
      swift_willThrow();
    }
  }
}

char *sub_214423F94(uint64_t a1)
{
  v2 = v1;
  v49 = type metadata accessor for HealthSharingAuthorization(0);
  v4 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + *(type metadata accessor for HealthSummarySharingEntry(0) + 20));
  v8 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v55 = v2;
    v11 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v54 = 0x8000000214791700;
    v53 = 0x800000021478A360;
    v45 = *(v4 + 72);

    v13 = 0;
    v56 = MEMORY[0x277D84F90];
    v46 = v10 - 1;
    v52 = xmmword_2146E9BF0;
    v48 = v6;
    v47 = v12;
    while (1)
    {
      sub_214424694(v11, v6, type metadata accessor for HealthSharingAuthorization);
      v14 = &v6[v49[5]];
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = &v6[v49[6]];
      v18 = *(v17 + 1);
      *&v50 = *v17;
      v19 = &v6[v49[7]];
      v20 = *(v19 + 1);
      *&v51 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
      inited = swift_initStackObject();
      *(inited + 16) = v52;
      v22 = swift_initStackObject();
      *(v22 + 16) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_21439DF20;
      *(v23 + 24) = 0;
      *(v22 + 32) = v23;
      *(&v51 + 1) = v20;

      *(&v50 + 1) = v18;

      v24 = sub_2142E0070(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
      v25 = swift_allocObject();
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v25 + 16) = sub_214032610;
      *(v25 + 24) = v26;
      *(inited + 32) = v25;
      sub_214042A28(inited, &v57);
      v27 = v57;
      v28 = v58;
      v29 = v59;
      v30 = v60;
      v31 = v61;
      v65[0] = v15;
      v65[1] = v16;
      v67 = v61;
      v57 = 0xD000000000000040;
      v58 = v54;
      v59 = 0xD00000000000001CLL;
      v60 = v53;

      sub_213FDC9D0(v29, v30);
      v32 = v55;
      v33 = v27(v65, &v67, &v57);
      v55 = v32;
      if (v32)
      {
        break;
      }

      if ((v33 & 1) == 0)
      {

        sub_214031C4C();
        swift_allocError();
        v41 = v54;
        *v42 = 0xD000000000000040;
        v42[1] = v41;
        v43 = v53;
        v42[2] = 0xD00000000000001CLL;
        v42[3] = v43;
        swift_willThrow();
        goto LABEL_15;
      }

      sub_213FDC6D0(v29, v30);

      sub_213FDC6D0(v29, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_214095C34(0, *(v56 + 2) + 1, 1, v56);
      }

      v35 = *(v56 + 2);
      v34 = *(v56 + 3);
      if (v35 >= v34 >> 1)
      {
        v56 = sub_214095C34((v34 > 1), v35 + 1, 1, v56);
      }

      v36 = v56;
      *(v56 + 2) = v35 + 1;
      v37 = &v36[72 * v35];
      *(v37 + 4) = v27;
      *(v37 + 5) = v28;
      *(v37 + 6) = v15;
      *(v37 + 7) = v16;
      v37[64] = v31;
      v38 = *(&v57 + 3);
      *(v37 + 65) = v57;
      v39 = v50;
      *(v37 + 17) = v38;
      *(v37 + 88) = v51;
      *(v37 + 72) = v39;
      v6 = v48;
      sub_2144246FC(v48, type metadata accessor for HealthSharingAuthorization);
      if (v46 == v13)
      {

        return v56;
      }

      ++v13;
      result = v47;
      v11 += v45;
      if (v13 >= *(v47 + 16))
      {
        __break(1u);
        return result;
      }
    }

LABEL_15:

    sub_213FDC6D0(v29, v30);
    v57 = v27;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    v61 = v31;
    *v62 = *v66;
    *&v62[3] = *&v66[3];
    v63 = v50;
    v64 = v51;
    sub_21430BF68(&v57);
    sub_2144246FC(v48, type metadata accessor for HealthSharingAuthorization);

    return v56;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21442464C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214424694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2144246FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21442475C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144247CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21442483C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (v3)
  {
    v4 = v3;
    [v3 writeUint32:*v1 forTag:1];
    sub_214426140();

    v5 = sub_2146D9588();

    [v4 writeString:v5 forTag:2];

    sub_2146D8608();
    swift_allocObject();
    sub_2146D85F8();
    v7 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, *(a1 + 16), *(a1 + 24), v6);
    swift_getWitnessTable(byte_214700558, v7);
    v8 = sub_2146D85E8();
    v10 = v9;

    v11 = sub_2146D8A38();
    sub_213FB54FC(v8, v10);
    [v4 writeData:v11 forTag:3];

    v12 = [v4 immutableData];
    if (v12)
    {
      v13 = v12;

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_214424A00@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21407B588;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214424ACC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a2 + 32);
  *a6 = a1;
  v11 = *(a2 + 16);
  *(a6 + 8) = *a2;
  *(a6 + 24) = v11;
  *(a6 + 40) = v10;
  v12 = *(type metadata accessor for WalletPassSharingSpecializedMessage(0, a4, a5, a4) + 40);
  v14 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, a4, a5, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v12, a3, v14);
}

uint64_t sub_214424B84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214424BD0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214424C2C(uint64_t a1)
{
  v1 = sub_214426140();

  return v1;
}

uint64_t sub_214424C64@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, a3, a4, v9);
  *(a5 + *(result + 36)) = v8;
  return result;
}

void sub_214424CEC(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t sub_214424D48()
{
  v1 = 0xD000000000000018;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000028;
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

uint64_t sub_214424DC4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214424E78(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214424F18(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214424FD4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = "digitalwallet.carkey.ccc";
  v4 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000018;
    v3 = "digitalwallet.apple";
  }

  if (*v1)
  {
    v5 = "neric.authorizationToken";
  }

  else
  {
    v2 = 0xD000000000000028;
    v5 = "contentDescription";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_2144250F8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 6)
  {
    if (result <= 1002)
    {
      switch(result)
      {
        case 7:
          *a2 = 7;
          return result;
        case 1001:
          *a2 = 8;
          return result;
        case 1002:
          *a2 = 9;
          return result;
      }
    }

    else if (result > 2001)
    {
      if (result == 2002)
      {
        *a2 = 12;
        return result;
      }

      if (result == 2003)
      {
        *a2 = 13;
        return result;
      }
    }

    else
    {
      if (result == 1003)
      {
        *a2 = 10;
        return result;
      }

      if (result == 2001)
      {
        *a2 = 11;
        return result;
      }
    }

    goto LABEL_32;
  }

  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        *a2 = 0;
        return result;
      case 1:
        *a2 = 1;
        return result;
      case 2:
        *a2 = 2;
        return result;
    }

LABEL_32:
    *a2 = 14;
    return result;
  }

  if (result > 4)
  {
    if (result == 5)
    {
      *a2 = 5;
    }

    else
    {
      *a2 = 6;
    }
  }

  else if (result == 3)
  {
    *a2 = 3;
  }

  else
  {
    *a2 = 4;
  }

  return result;
}

uint64_t sub_214425274()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473DCC8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_2144252FC(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21473DCC8[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_214425518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for WalletPassSharingSpecializedMessage(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  *a3 = sub_214426140();
  a3[1] = v5;
}

void sub_214425568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_2144255A8(v1, v2);
}

void sub_2144255A8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2144256F0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_21442578C@<D0>(uint64_t a1@<X8>)
{
  sub_214424B84(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double sub_2144257D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6.n128_u64[0] = *a1;
  v6.n128_u64[1] = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;

  *&result = sub_214424BD0(&v6).n128_u64[0];
  return result;
}

void (*sub_214425828(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144258C0;
}

void sub_2144258C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = (*a1)[5];
  if (a2)
  {

    *(v8 + 8) = v4;
    *(v8 + 16) = v3;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
  }

  else
  {

    *(v8 + 8) = v4;
    *(v8 + 16) = v3;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
  }

  free(v2);
}

uint64_t sub_214425994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 40);
  v6 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t sub_214425A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 40);
  v7 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t sub_214425AAC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a5;
  v24 = a2;
  v23 = a1;
  v12 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(0, a6, a7, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_2146D85C8();
  swift_allocObject();
  sub_2146D85B8();
  swift_getWitnessTable(asc_214700530, v12, v22);
  sub_2146D85A8();

  (*(v13 + 16))(v16, v18, v12);

  sub_2141F9198(v23, v24, a3, v16, a6, a7, a8);
  (*(v13 + 8))(v18, v12);
  v20 = type metadata accessor for WalletPassSharingSpecializedMessage(0, a6, a7, v19);
  return (*(*(v20 - 8) + 56))(a8, 0, 1, v20);
}

uint64_t sub_214425CFC@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  sub_2146D85C8();
  swift_allocObject();
  sub_2146D85B8();
  sub_2146D85A8();

  v7 = *(*(a3 - 8) + 56);

  return v7(a5, 0, 1, a3);
}

uint64_t sub_214425DE4(uint64_t a1, uint64_t a2)
{
  sub_2146D8608();
  swift_allocObject();
  sub_2146D85F8();
  v2 = sub_2146D85E8();

  return v2;
}

uint64_t _s9BlastDoor10WalletJSONO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      sub_2143DA468(*a2, *(a2 + 8), 3);
      sub_2143DA468(v2, v3, 3);
      sub_2143D80E4(v2, v5);
      v10 = v14;
      sub_2143DA490(v2, v3, 3);
      v11 = v5;
      v12 = v6;
      v13 = 3;
LABEL_20:
      sub_2143DA490(v11, v12, v13);
      return v10 & 1;
    }

    if (v4 == 4)
    {
      if (v7 == 4)
      {
        sub_2143DA490(*a1, v3, 4);
        sub_2143DA490(v5, v6, 4);
        v8 = v5 ^ v2 ^ 1;
        return v8 & 1;
      }

LABEL_26:
      sub_2143DA468(v5, v6, v7);
      sub_2143DA490(v2, v3, v4);
      sub_2143DA490(v5, v6, v7);
      v8 = 0;
      return v8 & 1;
    }

    if (v7 != 5 || (v6 | v5) != 0)
    {
      goto LABEL_26;
    }

    sub_2143DA490(*a1, v3, 5);
    v17 = 0;
    v18 = 0;
    v19 = 5;
LABEL_30:
    sub_2143DA490(v17, v18, v19);
    v8 = 1;
    return v8 & 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_21;
    }

    if (v2 != v5 || v3 != v6)
    {
      v10 = sub_2146DA6A8();
      sub_2143DA468(v5, v6, 0);
      sub_2143DA468(v2, v3, 0);
      sub_2143DA490(v2, v3, 0);
      v11 = v5;
      v12 = v6;
      v13 = 0;
      goto LABEL_20;
    }

    sub_2143DA468(v2, v3, 0);
    sub_2143DA468(v2, v3, 0);
    sub_2143DA490(v2, v3, 0);
    v17 = v2;
    v18 = v3;
    v19 = 0;
    goto LABEL_30;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_2143DA468(*a2, *(a2 + 8), 2);
      sub_2143DA468(v2, v3, 2);
      v10 = sub_214464F80(v2, v5);
      sub_2143DA490(v2, v3, 2);
      v11 = v5;
      v12 = v6;
      v13 = 2;
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_26;
  }

  if (v7 != 1)
  {
    goto LABEL_26;
  }

  sub_2143DA490(*a1, v3, 1);
  sub_2143DA490(v5, v6, 1);
  v8 = v2 == v5;
  return v8 & 1;
}

uint64_t sub_214426140()
{
  if (*(v0 + 32))
  {
    return *(v0 + 24);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2144261D8()
{
  result = qword_27C913240;
  if (!qword_27C913240)
  {
    result = swift_getWitnessTable(byte_21473D838, &type metadata for WalletPassSharingGeneralMessageFormat, v0, v1);
    atomic_store(result, &qword_27C913240);
  }

  return result;
}

unint64_t sub_214426230()
{
  result = qword_27C913248[0];
  if (!qword_27C913248[0])
  {
    result = swift_getWitnessTable(byte_21473D928, &type metadata for WalletPassSharingGeneralMessageType, v0, v1);
    atomic_store(result, qword_27C913248);
  }

  return result;
}

uint64_t sub_2144262DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  *(a1 + 8) = swift_getWitnessTable(a4, a2, a3);
  result = swift_getWitnessTable(a5, a2);
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor10WalletJSONO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_214426344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21442638C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2144263D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void sub_214426418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214426938(319, a2, a3, a4);
  if (v6 <= 0x3F)
  {
    type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload(319, *(a1 + 16), *(a1 + 24), v5);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2144264B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 41) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 33) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_214426640(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64) + 1;
  v12 = ((v10 + 41) & ~v10) + v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_60:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v12] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_33;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  v21 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v22 = ((v21 + v10 + 33) & ~v10);
    if (v8 >= a2)
    {
      v26 = *(v6 + 56);

      v26((v21 + v10 + 33) & ~v10);
    }

    else
    {
      if (v11 <= 3)
      {
        v23 = ~(-1 << (8 * v11));
      }

      else
      {
        v23 = -1;
      }

      if (v11)
      {
        v24 = v23 & (~v8 + a2);
        if (v11 <= 3)
        {
          v25 = v11;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v11);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *v21 = a2 & 0x7FFFFFFF;
    *(v21 + 8) = 0;
  }

  else
  {
    *v21 = a2 - 1;
  }
}

void sub_214426938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280B2E578)
  {
    v4 = type metadata accessor for Validated(0, MEMORY[0x277D837D0], a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_280B2E578);
    }
  }
}

uint64_t sub_214426988(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_214426A00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFC)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_214426B68(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFC)
      {
        *(result + v8) = a2 + 3;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_214426D90()
{
  result = qword_27C913350;
  if (!qword_27C913350)
  {
    result = swift_getWitnessTable(byte_21473D990, &type metadata for WalletPassSharingGeneralMessageType, v0, v1);
    atomic_store(result, &qword_27C913350);
  }

  return result;
}

unint64_t sub_214426DE4()
{
  result = qword_27C913358;
  if (!qword_27C913358)
  {
    result = swift_getWitnessTable(byte_21473D8A0, &type metadata for WalletPassSharingGeneralMessageFormat, v0, v1);
    atomic_store(result, &qword_27C913358);
  }

  return result;
}

uint64_t sub_214426E38@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_214426E84(v7, &v6);
}

uint64_t sub_214426E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_214426EF4(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v7[0] = v1[2];
  *(v7 + 10) = *(v1 + 42);
  sub_214426F54(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  v1[2] = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 42) = result;
  return result;
}

uint64_t sub_214426F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214426FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 96);
  return sub_21431C5DC(v2, v3, v4, v5);
}

__n128 sub_21442700C(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21431E10C(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  *(v1 + 96) = v3;
  return result;
}

uint64_t sub_214427074@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return sub_2143075C0(v2, v3);
}

uint64_t sub_214427080(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_214307294(*(v1 + 104), *(v1 + 112));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

uint64_t sub_2144270D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 152);
  return sub_21431C5DC(v2, v3, v4, v5);
}

__n128 sub_214427104(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21431E10C(*(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144));
  result = *a1;
  *(v1 + 136) = *(a1 + 16);
  *(v1 + 120) = result;
  *(v1 + 152) = v3;
  return result;
}

unint64_t sub_2144271C4(uint64_t a1)
{
  *(a1 + 8) = sub_2144271F4();
  result = sub_214427248();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144271F4()
{
  result = qword_27C913360;
  if (!qword_27C913360)
  {
    result = swift_getWitnessTable(a9gm4, &type metadata for ProvisioningConfiguration, v0, v1);
    atomic_store(result, &qword_27C913360);
  }

  return result;
}

unint64_t sub_214427248()
{
  result = qword_27C913368;
  if (!qword_27C913368)
  {
    result = swift_getWitnessTable(byte_2146FD3F8, &type metadata for ProvisioningConfiguration, v0, v1);
    atomic_store(result, &qword_27C913368);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor27AccessControlCharacteristicVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144272B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
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

uint64_t sub_214427310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2144273A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 448);
  v4 = *(v1 + 456);
  v3 = *(v1 + 464);
  v5 = *(v1 + 472);
  *a1 = *(v1 + 440);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144273F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 440) = *a1;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  *(v1 + 472) = v5;
  return result;
}

__n128 sub_214427458(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *sub_2144274D8(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t sub_21442755C()
{
  if (*(v0 + 464))
  {
    v1 = *(v0 + 456);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214427644@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144276DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_2144277C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_214427850@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 464);
  if (v4)
  {
    *a2 = *(a1 + 456);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_2144278C0(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214427970(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 440);
  v8 = *(v2 + 472);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 456) = a1;
    *(v2 + 464) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214427AB8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 464);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 456);
    a1[1] = v3;

    return sub_214427B54;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214427B54(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 440);
    v10 = *(v3 + 472);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 456) = v4;
      *(v3 + 464) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 440);
  v10 = *(v3 + 472);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 456) = v4;
  *(v3 + 464) = v2;
}

void sub_214427D74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 440) = v4;
  *(a2 + 448) = v3;
  *(a2 + 456) = v6;
  *(a2 + 464) = v5;
  *(a2 + 472) = v7;
}

void (*sub_214427DEC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 448);
  v7 = *(v1 + 456);
  v6 = *(v1 + 464);
  v8 = *(v1 + 472);
  *v4 = *(v1 + 440);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214427E84;
}

void sub_214427E84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v7;
    *(v3 + 464) = v6;
    *(v3 + 472) = v8;
  }

  else
  {

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v7;
    *(v3 + 464) = v6;
    *(v3 + 472) = v8;
  }

  free(v2);
}

uint64_t sub_214427F54()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214427F88(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214428110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214428170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 474))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 473);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2144281B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 472) = 0;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 474) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 474) = 0;
    }

    if (a2)
    {
      *(result + 473) = -a2;
    }
  }

  return result;
}

uint64_t sub_214428288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 474))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 473);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2144282C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 458) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 474) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 474) = 0;
    }

    if (a2)
    {
      *(result + 473) = -a2;
    }
  }

  return result;
}

uint64_t sub_21442834C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 432) = 0u;
    *(result + 448) = 0u;
    v2 = a2 - 2;
    *(result + 400) = 0u;
    *(result + 416) = 0u;
    *(result + 368) = 0u;
    *(result + 384) = 0u;
    *(result + 336) = 0u;
    *(result + 352) = 0u;
    *(result + 304) = 0u;
    *(result + 320) = 0u;
    *(result + 272) = 0u;
    *(result + 288) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 457) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 473) = a2;
  return result;
}

uint64_t sub_2144283C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 473))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
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

double sub_214428418(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 472) = 0;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 473) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 473) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214428508(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21442855C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2144285B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_2144285CC(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_21442860C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_214428674@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144286C0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21442871C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214428798@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

uint64_t (*sub_214428800(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (v2 == 14)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v2;
    return sub_214428888;
  }

  return result;
}

uint64_t (*sub_2144288B0(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;

  return sub_214428908;
}

uint64_t sub_214428908(uint64_t *a1, char a2)
{
  v2 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  if (a2)
  {

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 17) = v6;
  }

  else
  {

    *v2 = v4;
    *(v2 + 8) = v3;
    *(v2 + 16) = v5;
    *(v2 + 17) = v6;
  }

  return result;
}

void sub_2144289A4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214428AEC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214428B88(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214428C20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 sub_214428C34(__n128 *a1)
{
  v3 = a1[1].n128_u16[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u16[0] = v3;
  return result;
}

uint64_t sub_214428C94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214428CE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

unint64_t sub_214428DB4(uint64_t a1)
{
  result = sub_214428DDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214428DDC()
{
  result = qword_27C913370;
  if (!qword_27C913370)
  {
    result = swift_getWitnessTable(byte_21473E974, &type metadata for WalletPassSharingExternalInvitationRequestMessage, v0, v1);
    atomic_store(result, &qword_27C913370);
  }

  return result;
}

uint64_t sub_214428E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214428E98()
{
  result = qword_27C913378;
  if (!qword_27C913378)
  {
    result = swift_getWitnessTable(a9nm, &type metadata for WalletPassSharingExternalInvitationRequestMessage, v0, v1);
    atomic_store(result, &qword_27C913378);
  }

  return result;
}

unint64_t sub_214428EEC()
{
  result = qword_27C913380;
  if (!qword_27C913380)
  {
    result = swift_getWitnessTable(byte_2146FD8F8, &type metadata for WalletPassSharingExternalInvitationRequestMessage, v0, v1);
    atomic_store(result, &qword_27C913380);
  }

  return result;
}

uint64_t sub_214428F40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_214428F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_214428FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_214429044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144290A4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2144290CC()
{
  result = qword_27C913388;
  if (!qword_27C913388)
  {
    result = swift_getWitnessTable(byte_21473EAD0, &type metadata for MBDPersistentMenuItemType, v0, v1);
    atomic_store(result, &qword_27C913388);
  }

  return result;
}

unint64_t sub_214429128(uint64_t a1)
{
  *(a1 + 8) = sub_2142FBDC0();
  result = sub_2142FBEC8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214429208(uint64_t a1)
{
  *(a1 + 8) = sub_214096964(&qword_27C9082B8, a9_34);
  result = sub_214096964(&qword_27C9082D0, byte_2146FB5F8);
  *(a1 + 16) = result;
  return result;
}

void sub_2144292C8(uint64_t a1)
{
  sub_214429344(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214429344(uint64_t a1)
{
  if (!qword_27C9133A0)
  {
    type metadata accessor for MBDPersistentMenuItemContent(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C9133A0);
    }
  }
}

void sub_2144293BC(uint64_t a1)
{
  sub_214429430();
  if (v1 <= 0x3F)
  {
    sub_214429478();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_214429430()
{
  if (!qword_27C9133B8)
  {
    v0 = type metadata accessor for MBDChip(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27C9133B8);
    }
  }
}

ValueMetadata *sub_214429478()
{
  result = qword_27C9133C0;
  if (!qword_27C9133C0)
  {
    result = &type metadata for MBDMenu;
    atomic_store(&type metadata for MBDMenu, &qword_27C9133C0);
  }

  return result;
}

unint64_t sub_2144294A8()
{
  result = qword_27C9133C8;
  if (!qword_27C9133C8)
  {
    result = swift_getWitnessTable(aI_16, &type metadata for MBDPersistentMenuItemType, v0, v1);
    atomic_store(result, &qword_27C9133C8);
  }

  return result;
}

unint64_t sub_2144294FC()
{
  v1 = *(v0 + *(type metadata accessor for Handwriting(0) + 24) + 64);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v22 = MEMORY[0x277D84F90];
  result = sub_2146D9FB8();
  v5 = 0;
  v17 = v1 + 32;
  v18 = v2;
  v19 = v1;
  while (v5 < *(v1 + 16))
  {
    v20 = v5;
    v9 = *(v17 + 8 * v5);
    v10 = *(v9 + 16);
    if (v10)
    {
      v21 = v3;

      sub_2146D9FB8();
      v11 = (v9 + 56);
      do
      {
        v12 = *(v11 - 3);
        v13 = *(v11 - 2);
        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = [objc_allocWithZone(BlastDoorDrawingStrokePoint) init];
        [v16 setLocation_];
        [v16 setForce_];
        [v16 setVelocity_];
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v11 += 4;
        --v10;
      }

      while (v10);
      v6 = v21;
    }

    else
    {

      v6 = v3;
    }

    v7 = [objc_msgSend(objc_allocWithZone(BlastDoorDrawingStroke) init)];
    sub_2144297B8(v6, &qword_27C9133D0, off_2781750C8);

    v8 = sub_2146D98E8();

    [v7 addObjectsFromArray_];

    sub_2146D9F98();
    sub_2146D9FC8();
    sub_2146D9FD8();
    result = sub_2146D9FA8();
    v5 = v20 + 1;
    v3 = MEMORY[0x277D84F90];
    v1 = v19;
    if (v20 + 1 == v18)
    {
      return v22;
    }
  }

  __break(1u);
  return result;
}

char *sub_2144297B8(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_2146DA028();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21409FD48(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x216054E00](i, a1);
        sub_21404A8B8(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21409FD48((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_213FDC730(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_21404A8B8(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21409FD48((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_213FDC730(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t Handwriting.bridgedToObjectiveC.getter()
{
  v0 = sub_2144299EC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_2144299EC()
{
  v1 = objc_opt_self();
  sub_2144294FC();
  sub_21404A8B8(0, &qword_27C9133E8, off_2781750C0);
  v2 = sub_2146D98E8();

  v3 = (v0 + *(type metadata accessor for Handwriting(0) + 24));
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = sub_2146D8B38();
  v13 = sub_2146D8AD8();
  v14 = [v1 dataRepresentation:v2 frame:v12 bound:v13 uuid:v4 date:{v5, v6, v7, v8, v9, v10, v11}];

  if (v14)
  {
    v15 = sub_2146D8A58();
  }

  else
  {
    v16 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      v18 = v16;
      swift_once();
      v16 = v18;
    }

    sub_2146D91D8(v16, &dword_213FAF000, qword_280B35410, "Fatal error, Could not encode HWHandwritingItem instance", 56, 2, MEMORY[0x277D84F90]);
    return 0;
  }

  return v15;
}

uint64_t sub_214429BA8()
{
  v0 = sub_2144299EC();
  v2 = v1;
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_214429BF0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214429C28@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214429C34()
{
  if (*v0)
  {
    return 0x646E616D6D6F63;
  }

  else
  {
    return 0x65636976726573;
  }
}

void sub_214429C68(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
}

uint64_t sub_214429D44(uint64_t a1)
{
  v2 = sub_214429F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214429D80(uint64_t a1)
{
  v2 = sub_214429F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214429DBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9133F0, &qword_21473EC80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214429F50();
  sub_2146DAA28();
  v11 = 0;
  v7 = v9[1];
  sub_2146DA328();
  if (!v7)
  {
    v10 = 1;
    sub_2146DA378();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_214429F50()
{
  result = qword_27C9133F8;
  if (!qword_27C9133F8)
  {
    result = swift_getWitnessTable(aQum, &type metadata for IDSClientMessageContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9133F8);
  }

  return result;
}

void sub_214429FA4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913400, &qword_21473EC88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214429F50();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v12 = v9;
    v15 = 1;
    v13 = sub_2146DA1B8();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_21442A1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21442A248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21442A2FC(uint64_t a1)
{
  v2 = sub_21442A4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21442A338(uint64_t a1)
{
  v2 = sub_21442A4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21442A374(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913408, &qword_21473EC90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21442A4EC();
  sub_2146DAA28();
  type metadata accessor for IDSClientMessageType(0);
  sub_21442A7D4(&qword_27C913418, type metadata accessor for IDSClientMessageType, aAr);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21442A4EC()
{
  result = qword_27C913410;
  if (!qword_27C913410)
  {
    result = swift_getWitnessTable(byte_21473F068, &type metadata for IDSClientMessageResult.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913410);
  }

  return result;
}

uint64_t sub_21442A540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for IDSClientMessageType(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913420, &qword_21473EC98);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for IDSClientMessageResult(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21442A4EC();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v15;
    sub_21442A7D4(&qword_27C913428, type metadata accessor for IDSClientMessageType, byte_214702B50);
    v13 = v17;
    sub_2146DA1C8();
    (*(v16 + 8))(v8, v6);
    sub_21442A81C(v13, v11, type metadata accessor for IDSClientMessageType);
    sub_21442A81C(v11, v12, type metadata accessor for IDSClientMessageResult);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21442A7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21442A81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21442A89C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913408, &qword_21473EC90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21442A4EC();
  sub_2146DAA28();
  type metadata accessor for IDSClientMessageType(0);
  sub_21442A7D4(&qword_27C913418, type metadata accessor for IDSClientMessageType, aAr);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21442AA14(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = type metadata accessor for FMFShareInvitation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosSharedAlbumMessage(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IDSNearbySessionMessage(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IDSProtobuf(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccountsRepresentativeMessage(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IDSClientMessageType(0);
  MEMORY[0x28223BE20](v21);
  v23 = v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21442A1BC(v2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = MEMORY[0x277D84F98];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v73 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_2146EA710;
      *(v74 + 32) = 1701869940;
      v75 = v74 + 32;
      *(v74 + 40) = 0xE400000000000000;
      *(v74 + 72) = MEMORY[0x277D84B78];
      *(v74 + 48) = v73;
      v25 = sub_2140457C0(v74);
      swift_setDeallocating();
      sub_21404C938(v75);
      swift_deallocClassInstance();
      break;
    case 2:
      memcpy(v142, v23, 0x6F3uLL);
      memcpy(v141, v23, 0x6F3uLL);
      v25 = sub_2146AA798();
      sub_2142E77C8(v142);
      break;
    case 3:
      memcpy(v142, v23, 0x1D2uLL);
      memcpy(v141, v23, 0x1D2uLL);
      v25 = sub_21460EDF4();
      sub_2142F0B5C(v142);
      break;
    case 4:
    case 14:
      return v25;
    case 5:
      v100 = *(v23 + 3);
      v101 = *(v23 + 1);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v100;
      v102 = *(v23 + 3);
      v103 = *(v23 + 5);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v103;
      v104 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v104;
      v141[2] = *&v142[32];
      v141[3] = v102;
      v105 = *(v23 + 5);
      v141[4] = *&v142[64];
      v141[5] = v105;
      v141[0] = *v142;
      v141[1] = v101;
      v25 = sub_2145439E4();
      sub_2142EEE64(v142);
      break;
    case 6:
      v76 = *(v23 + 9);
      v77 = *(v23 + 7);
      *&v142[128] = *(v23 + 8);
      *&v142[144] = v76;
      v78 = *(v23 + 9);
      v79 = *(v23 + 11);
      *&v142[160] = *(v23 + 10);
      *&v142[176] = v79;
      v80 = *(v23 + 5);
      v81 = *(v23 + 3);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v80;
      v82 = *(v23 + 5);
      v83 = *(v23 + 7);
      *&v142[96] = *(v23 + 6);
      *&v142[112] = v83;
      v84 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v84;
      v85 = *(v23 + 3);
      v87 = *v23;
      v86 = *(v23 + 1);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v85;
      v141[8] = *&v142[128];
      v141[9] = v78;
      v88 = *(v23 + 11);
      v141[10] = *&v142[160];
      v141[11] = v88;
      v141[4] = *&v142[64];
      v141[5] = v82;
      v141[6] = *&v142[96];
      v141[7] = v77;
      v141[0] = v87;
      v141[1] = v86;
      v141[2] = *&v142[32];
      v141[3] = v81;
      v25 = sub_214687AC4();
      sub_2142EEF68(v142);
      break;
    case 7:
      v109 = *(v23 + 3);
      v110 = *(v23 + 1);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v109;
      v111 = *(v23 + 3);
      *&v142[64] = *(v23 + 4);
      *&v142[73] = *(v23 + 73);
      v112 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v112;
      v141[2] = *&v142[32];
      v141[3] = v111;
      v141[4] = *(v23 + 4);
      *(&v141[4] + 9) = *(v23 + 73);
      v141[0] = *v142;
      v141[1] = v110;
      v25 = sub_21447D1AC();
      sub_2142EF114(v142);
      break;
    case 8:
      sub_21442A81C(v23, v5, type metadata accessor for FMFShareInvitation);
      v25 = sub_2144DF070();
      sub_21442BE5C(v5, type metadata accessor for FMFShareInvitation);
      break;
    case 9:
      memcpy(v142, v23, sizeof(v142));
      v108 = memcpy(v141, v23, 0xCF3uLL);
      v25 = sub_2146457E0(v108);
      sub_2142F2574(v142);
      break;
    case 10:
      v42 = *(v23 + 7);
      v43 = *(v23 + 9);
      *&v142[128] = *(v23 + 8);
      *&v142[144] = v43;
      *&v142[155] = *(v23 + 155);
      v44 = *(v23 + 3);
      v45 = *(v23 + 5);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v45;
      v47 = *(v23 + 5);
      v46 = *(v23 + 6);
      v48 = v46;
      *&v142[112] = *(v23 + 7);
      *&v142[96] = v46;
      v49 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v49;
      v50 = *(v23 + 2);
      v52 = *v23;
      v51 = *(v23 + 1);
      v53 = v50;
      *&v142[48] = *(v23 + 3);
      *&v142[32] = v50;
      v54 = *(v23 + 9);
      v141[8] = *&v142[128];
      v141[9] = v54;
      *(&v141[9] + 11) = *(v23 + 155);
      v141[4] = *&v142[64];
      v141[5] = v47;
      v141[6] = v48;
      v141[7] = v42;
      v141[0] = v52;
      v141[1] = v51;
      v141[2] = v53;
      v141[3] = v44;
      v25 = sub_2146461DC();
      sub_2142F2C90(v142);
      break;
    case 11:
      memcpy(v142, v23, 0x19BuLL);
      memcpy(v141, v23, 0x19BuLL);
      v25 = sub_21464724C();
      sub_2142F31E8(v142);
      break;
    case 12:
      memcpy(v142, v23, 0xC89uLL);
      v99 = memcpy(v141, v23, 0xC89uLL);
      v25 = sub_214646870(v99);
      sub_2142F37B0(v142);
      break;
    case 13:
      v34 = *(v23 + 7);
      v35 = *(v23 + 5);
      *&v142[96] = *(v23 + 6);
      *&v142[112] = v34;
      v36 = *(v23 + 7);
      *&v142[128] = *(v23 + 8);
      v37 = *(v23 + 3);
      v38 = *(v23 + 1);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v37;
      v39 = *(v23 + 3);
      v40 = *(v23 + 5);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v40;
      v41 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v41;
      v141[6] = *&v142[96];
      v141[7] = v36;
      v141[8] = *(v23 + 8);
      v141[2] = *&v142[32];
      v141[3] = v39;
      v141[4] = *&v142[64];
      v141[5] = v35;
      v142[144] = v23[144];
      LOBYTE(v141[9]) = v23[144];
      v141[0] = *v142;
      v141[1] = v38;
      v25 = sub_214647040();
      sub_2142F36AC(v142);
      break;
    case 15:
      sub_21442A81C(v23, v17, type metadata accessor for IDSProtobuf);
      v25 = sub_21404B408();
      sub_21442BE5C(v17, type metadata accessor for IDSProtobuf);
      break;
    case 16:
      sub_21442A81C(v23, v14, type metadata accessor for IDSSampleMessage);
      v25 = sub_214470B7C();
      sub_21442BE5C(v14, type metadata accessor for IDSSampleMessage);
      break;
    case 17:
      memcpy(v142, v23, 0x679uLL);
      memcpy(v141, v23, 0x679uLL);
      v25 = sub_2145B3138();
      sub_21431F758(v142);
      break;
    case 18:
      v106 = *v23;
      *&v142[24] = MEMORY[0x277D83E88];
      *v142 = v106;
      sub_213FDC730(v142, v141);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v25;
      sub_2140524DC(v141, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
      v25 = v143;
      break;
    case 19:
      memcpy(v142, v23, 0x261uLL);
      memcpy(v141, v23, 0x261uLL);
      v25 = sub_2146AE124();
      sub_21431F6B0(v142);
      break;
    case 20:
      sub_21442A81C(v23, v11, type metadata accessor for IDSNearbySessionMessage);
      v25 = sub_21441AA84();
      sub_21442BE5C(v11, type metadata accessor for IDSNearbySessionMessage);
      break;
    case 21:
      sub_21442A81C(v23, v8, type metadata accessor for PhotosSharedAlbumMessage);
      v25 = sub_2143E11F4();
      sub_21442BE5C(v8, type metadata accessor for PhotosSharedAlbumMessage);
      break;
    case 22:
      memcpy(v142, v23, 0x179uLL);
      memcpy(v141, v23, 0x179uLL);
      v25 = sub_214642A54();
      sub_21431F608(v142);
      break;
    case 23:
      memcpy(v142, v23, 0x219uLL);
      memcpy(v141, v23, 0x219uLL);
      v25 = sub_214057178();
      sub_214300F50(v142);
      break;
    case 24:
      memcpy(v142, v23, 0x151uLL);
      memcpy(v141, v23, 0x151uLL);
      v25 = sub_21404E400();
      sub_21404C67C(v142);
      break;
    case 25:
      v55 = *(v23 + 11);
      v56 = *(v23 + 13);
      *&v142[192] = *(v23 + 12);
      *&v142[208] = v56;
      *&v142[218] = *(v23 + 218);
      v57 = *(v23 + 7);
      v58 = *(v23 + 9);
      *&v142[128] = *(v23 + 8);
      *&v142[144] = v58;
      v60 = *(v23 + 9);
      v59 = *(v23 + 10);
      v61 = v59;
      *&v142[176] = *(v23 + 11);
      *&v142[160] = v59;
      v62 = *(v23 + 3);
      v63 = *(v23 + 5);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v63;
      v65 = *(v23 + 5);
      v64 = *(v23 + 6);
      v66 = v64;
      *&v142[112] = *(v23 + 7);
      *&v142[96] = v64;
      v67 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v67;
      v68 = *(v23 + 2);
      v70 = *v23;
      v69 = *(v23 + 1);
      v71 = v68;
      *&v142[48] = *(v23 + 3);
      *&v142[32] = v68;
      v72 = *(v23 + 13);
      v141[12] = *&v142[192];
      v141[13] = v72;
      *(&v141[13] + 10) = *(v23 + 218);
      v141[8] = *&v142[128];
      v141[9] = v60;
      v141[10] = v61;
      v141[11] = v55;
      v141[4] = *&v142[64];
      v141[5] = v65;
      v141[6] = v66;
      v141[7] = v57;
      v141[0] = v70;
      v141[1] = v69;
      v141[2] = v71;
      v141[3] = v62;
      v25 = sub_21404F1A4();
      sub_2142F6960(v142);
      break;
    case 26:
      v132 = *(v23 + 3);
      v133 = *(v23 + 5);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v133;
      v134 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v134;
      v135 = *(v23 + 2);
      v137 = *v23;
      v136 = *(v23 + 1);
      v138 = v135;
      *&v142[48] = *(v23 + 3);
      *&v142[32] = v135;
      v139 = *(v23 + 5);
      v141[4] = *&v142[64];
      v141[5] = v139;
      v141[0] = v137;
      v141[1] = v136;
      *&v142[96] = *(v23 + 12);
      *&v141[6] = *(v23 + 12);
      v141[2] = v138;
      v141[3] = v132;
      v25 = sub_21404F848();
      sub_2142F6A64(v142);
      break;
    case 27:
      v26 = *(v23 + 3);
      v27 = *(v23 + 5);
      *&v142[64] = *(v23 + 4);
      *&v142[80] = v27;
      v28 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v28;
      v29 = *(v23 + 2);
      v31 = *v23;
      v30 = *(v23 + 1);
      v32 = v29;
      *&v142[48] = *(v23 + 3);
      *&v142[32] = v29;
      v33 = *(v23 + 5);
      v141[4] = *&v142[64];
      v141[5] = v33;
      v141[0] = v31;
      v141[1] = v30;
      *&v142[96] = *(v23 + 12);
      *&v141[6] = *(v23 + 12);
      v141[2] = v32;
      v141[3] = v26;
      v25 = sub_21404FB2C();
      sub_2142F6D18(v142);
      break;
    case 28:
      v113 = *(v23 + 9);
      v114 = *(v23 + 11);
      *&v142[160] = *(v23 + 10);
      *&v142[176] = v114;
      v115 = *(v23 + 5);
      v116 = *(v23 + 7);
      *&v142[96] = *(v23 + 6);
      *&v142[112] = v116;
      v118 = *(v23 + 7);
      v117 = *(v23 + 8);
      v119 = v117;
      *&v142[144] = *(v23 + 9);
      *&v142[128] = v117;
      v120 = *(v23 + 1);
      v121 = *(v23 + 3);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v121;
      v123 = *(v23 + 3);
      v122 = *(v23 + 4);
      v124 = v122;
      *&v142[80] = *(v23 + 5);
      *&v142[64] = v122;
      v125 = *v23;
      v126 = *v23;
      *&v142[16] = *(v23 + 1);
      *v142 = v125;
      v127 = *(v23 + 11);
      v141[10] = *&v142[160];
      v141[11] = v127;
      v141[6] = *&v142[96];
      v141[7] = v118;
      v141[8] = v119;
      v141[9] = v113;
      v141[2] = *&v142[32];
      v141[3] = v123;
      v141[4] = v124;
      v141[5] = v115;
      *&v142[191] = *(v23 + 191);
      *(&v141[11] + 15) = *(v23 + 191);
      v141[0] = v126;
      v141[1] = v120;
      v25 = sub_214464724();
      sub_2142F6E1C(v142);
      break;
    case 29:
      v128 = *(v23 + 3);
      v129 = *(v23 + 1);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v128;
      v130 = *(v23 + 3);
      *&v142[64] = *(v23 + 4);
      v131 = *(v23 + 1);
      *v142 = *v23;
      *&v142[16] = v131;
      v141[2] = *&v142[32];
      v141[3] = v130;
      v141[4] = *(v23 + 4);
      *&v142[80] = *(v23 + 40);
      LOWORD(v141[5]) = *(v23 + 40);
      v141[0] = *v142;
      v141[1] = v129;
      v25 = sub_21406AD60();
      sub_2142F6FC8(v142);
      break;
    case 30:
      v142[0] = *v23;
      v25 = sub_2143CB774();
      break;
    case 31:
      v89 = *(v23 + 5);
      v90 = *(v23 + 7);
      *&v142[96] = *(v23 + 6);
      *&v142[112] = v90;
      v91 = *(v23 + 1);
      v92 = *(v23 + 3);
      *&v142[32] = *(v23 + 2);
      *&v142[48] = v92;
      v94 = *(v23 + 3);
      v93 = *(v23 + 4);
      v95 = v93;
      *&v142[80] = *(v23 + 5);
      *&v142[64] = v93;
      v96 = *v23;
      v97 = *v23;
      *&v142[16] = *(v23 + 1);
      *v142 = v96;
      v98 = *(v23 + 7);
      v141[6] = *&v142[96];
      v141[7] = v98;
      v141[2] = *&v142[32];
      v141[3] = v94;
      v141[4] = v95;
      v141[5] = v89;
      v142[128] = v23[128];
      LOBYTE(v141[8]) = v23[128];
      v141[0] = v97;
      v141[1] = v91;
      v25 = sub_2143CB17C();
      sub_214301940(v142);
      break;
    case 32:
      memcpy(v142, v23, 0x1A1uLL);
      memcpy(v141, v23, 0x1A1uLL);
      v25 = sub_21448FE00();
      sub_214301A44(v142);
      break;
    default:
      sub_21442A81C(v23, v20, type metadata accessor for AccountsRepresentativeMessage);
      v25 = sub_2140683D8();
      sub_21442BE5C(v20, type metadata accessor for AccountsRepresentativeMessage);
      break;
  }

  return v25;
}