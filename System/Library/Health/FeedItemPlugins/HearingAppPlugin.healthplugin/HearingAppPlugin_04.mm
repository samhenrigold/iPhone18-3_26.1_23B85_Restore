void *sub_29D64A610(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D64A924();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D64A678(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D64A924();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t type metadata accessor for OnboardingTileActionHandler(uint64_t a1)
{
  result = qword_2A17AD438;
  if (!qword_2A17AD438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D64A83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D64A884(uint64_t a1)
{
  result = sub_29D65F314();
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

void sub_29D64A924()
{
  if (!qword_2A1A1DD98)
  {
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1DD98);
    }
  }
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.previewTitle.getter()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D64AA44(char a1)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      return sub_29D65DA74();
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29D65DA74();
}

HearingAppPlugin::AudiogramPDFAsyncConfigurationDataSource::PDFConfigurationRow_optional __swiftcall AudiogramPDFAsyncConfigurationDataSource.PDFConfigurationRow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = HearingAppPlugin_AudiogramPDFAsyncConfigurationDataSource_PDFConfigurationRow_all;
  }

  else
  {
    v1.value = HearingAppPlugin_AudiogramPDFAsyncConfigurationDataSource_PDFConfigurationRow_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_29D64AB64@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.item(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_29D65F314();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v12 = 1;
LABEL_5:
    swift_beginAccess();
    if (*(v3 + 16) == a1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_29D64AA44(v12);
    v16 = v15;
    a2[3] = &type metadata for AudiogramPDFAsyncConfigurationDataSource.Item;
    a2[4] = sub_29D64AE98();
    result = swift_allocObject();
    v18 = 0;
    *a2 = result;
    *(result + 16) = v14;
    *(result + 24) = v16;
    *(result + 32) = v13;
    *(result + 40) = 0;
    goto LABEL_12;
  }

  v26 = v9;
  sub_29D65F2E4();
  v19 = sub_29D65F2F4();
  v20 = sub_29D6601F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27[0] = v22;
    *v21 = 136446466;
    v23 = sub_29D6607A4();
    v25 = sub_29D64A1D0(v23, v24, v27);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2050;
    *(v21 + 14) = a1;
    _os_log_impl(&dword_29D5D7000, v19, v20, "[%{public}s] PDF Configuration Row not found for row %{public}ld", v21, 0x16u);
    sub_29D5DF1C4(v22);
    MEMORY[0x29ED63350](v22, -1, -1);
    MEMORY[0x29ED63350](v21, -1, -1);
  }

  (*(v7 + 8))(v11, v26);
  a2[3] = &type metadata for AudiogramPDFAsyncConfigurationDataSource.Item;
  a2[4] = sub_29D64AE98();
  result = swift_allocObject();
  v13 = 0;
  *a2 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  v18 = 1;
  *(result + 40) = 1;
LABEL_12:
  *(result + 48) = v13;
  *(result + 56) = v18;
  return result;
}

unint64_t sub_29D64AE98()
{
  result = qword_2A17AD448;
  if (!qword_2A17AD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD448);
  }

  return result;
}

Swift::Void __swiftcall AudiogramPDFAsyncConfigurationDataSource.didSelectRowAt(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v10 = 1;
LABEL_5:
    swift_beginAccess();
    *(v2 + 16) = v10;
    return;
  }

  v11 = v7;
  sub_29D65F2E4();
  v12 = sub_29D65F2F4();
  v13 = sub_29D6601F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136446466;
    v16 = sub_29D6607A4();
    v18 = sub_29D64A1D0(v16, v17, v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2050;
    *(v14 + 14) = a1;
    _os_log_impl(&dword_29D5D7000, v12, v13, "[%{public}s] PDF Configuration Row not found for row %{public}ld", v14, 0x16u);
    sub_29D5DF1C4(v15);
    MEMORY[0x29ED63350](v15, -1, -1);
    MEMORY[0x29ED63350](v14, -1, -1);
  }

  (*(v5 + 8))(v9, v11);
}

void AudiogramPDFAsyncConfigurationDataSource.pdfConfiguration.getter(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = ~*(v1 + 16);
  sub_29D61DDCC(((*(v1 + 16) & 1) == 0), a1);
  sub_29D622C24((v3 & 1));
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.pdfFileNameProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_29D61EF70(*(v1 + 32));
  result = sub_29D65E754();
  v5 = MEMORY[0x29EDC20A0];
  a1[3] = result;
  a1[4] = v5;
  *a1 = v3;
  return result;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.deinit()
{

  return v0;
}

uint64_t AudiogramPDFAsyncConfigurationDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D64B218()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

void sub_29D64B310(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = ~*(v3 + 16);
  sub_29D61DDCC(((*(v3 + 16) & 1) == 0), a1);
  sub_29D622C24((v4 & 1));
}

uint64_t sub_29D64B378@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_29D61EF70(*(*v1 + 32));
  result = sub_29D65E754();
  v5 = MEMORY[0x29EDC20A0];
  a1[3] = result;
  a1[4] = v5;
  *a1 = v3;
  return result;
}

unint64_t sub_29D64B3C8()
{
  result = qword_2A17AD450;
  if (!qword_2A17AD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD450);
  }

  return result;
}

unint64_t sub_29D64B420()
{
  result = qword_2A17AD458;
  if (!qword_2A17AD458)
  {
    sub_29D64B478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD458);
  }

  return result;
}

void sub_29D64B478()
{
  if (!qword_2A17AD460)
  {
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AD460);
    }
  }
}

__n128 sub_29D64B4FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D64B510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_29D64B56C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29D64B5DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_29D65DEB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29D65DD54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D661D20;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x29EDC36F0], v8);
  v14(v13 + v10, *MEMORY[0x29EDC3790], v8);
  sub_29D63CBA4(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CB80(inited);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D5F08A0(v17);

  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v3);
  v18 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D64B90C@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_29D65DEB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D65DD54();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D661D90;
  (*(v11 + 104))(v13 + v12, *a2, v10);
  sub_29D63CBA4(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CB80(inited);
  v16 = v15;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D5F08A0(v16);

  (*(v6 + 104))(v9, *MEMORY[0x29EDC3898], v5);
  v17 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D64BC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29D5FE828(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E680, sub_29D5FE718, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D661D20;
  *(v12 + 32) = sub_29D64BE54(a1, a2);
  *(v12 + 40) = sub_29D64C278(a1, a2);
  v15[1] = v12;
  sub_29D5FE718(0);
  sub_29D5FE8E4(0);
  sub_29D64DBA4(&qword_2A1A1E7F0, sub_29D5FE718, MEMORY[0x29EDB8A00]);
  sub_29D64DBA4(&qword_2A1A1E718, sub_29D5FE8E4, MEMORY[0x29EDC9A70]);
  sub_29D65F7F4();
  sub_29D64DBA4(&qword_2A1A1E800, sub_29D5FE828, MEMORY[0x29EDB89D8]);
  v13 = sub_29D65F934();
  result = (*(v8 + 8))(v11, v7);
  *a3 = v13;
  return result;
}

uint64_t sub_29D64BE54(uint64_t a1, uint64_t a2)
{
  v30 = sub_29D65DF04();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v30, v5);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBF0(0);
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D5FE918(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D64DBA4(&qword_2A1A1E778, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
  v18 = sub_29D65F904();
  (*(v9 + 8))(v12, v8);
  v34 = v18;
  v19 = a1;
  v20 = v30;
  (*(v3 + 16))(v6, v19, v30);
  v21 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v31;
  (*(v3 + 32))(v23 + v21, v6, v20);
  *(v23 + v22) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_29D64DCA0;
  *(v25 + 24) = v23;
  sub_29D5FECD0(0);
  sub_29D5F310C();
  sub_29D64DBA4(&qword_2A1A1E7E0, sub_29D5FECD0, MEMORY[0x29EDB8A00]);
  sub_29D65F944();

  sub_29D64DBA4(qword_2A1A1E820, sub_29D5FEBF0, MEMORY[0x29EDB88A0]);
  v26 = v32;
  v27 = sub_29D65F934();
  (*(v33 + 8))(v17, v26);
  return v27;
}

uint64_t sub_29D64C278(uint64_t a1, uint64_t a2)
{
  v27 = sub_29D65DF04();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v27, v5);
  sub_29D5FEB6C(0, &qword_2A1A1E758, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v26 - v10;
  sub_29D5FE97C(0);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D5FEB6C(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D5FEA18();
  v17 = sub_29D65F904();
  (*(v8 + 8))(v11, v7);
  v31 = v17;
  v18 = a1;
  v19 = v27;
  (*(v3 + 16))(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v27);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  *(v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_29D64DBEC;
  *(v22 + 24) = v21;
  sub_29D5FE9B8();
  sub_29D5F310C();
  sub_29D64DBA4(&qword_2A1A1E7C0, sub_29D5FE9B8, MEMORY[0x29EDB8A00]);
  sub_29D65F944();

  sub_29D64DBA4(&qword_2A1A1E810, sub_29D5FE97C, MEMORY[0x29EDB88A0]);
  v23 = v29;
  v24 = sub_29D65F934();
  (*(v30 + 8))(v16, v23);
  return v24;
}

uint64_t sub_29D64C67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v44 = a4;
  sub_29D5EA87C(0);
  v45 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v40 - v15;
  v46 = sub_29D65F314();
  v17 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  sub_29D5EA900(a1, v16);
  v21 = sub_29D65F2F4();
  v22 = sub_29D660214();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v42 = a3;
    v26 = v25;
    v47 = v25;
    *v24 = 136315395;
    v27 = sub_29D6607A4();
    v41 = a5;
    v29 = sub_29D64A1D0(v27, v28, &v47);
    v44 = a1;
    v30 = v29;

    *(v24 + 4) = v30;
    *(v24 + 12) = 2081;
    sub_29D5EA900(v16, v12);
    v31 = sub_29D65FF84();
    v33 = v32;
    sub_29D5EA964(v16);
    v34 = sub_29D64A1D0(v31, v33, &v47);
    a5 = v41;

    *(v24 + 14) = v34;
    a1 = v44;
    _os_log_impl(&dword_29D5D7000, v21, v22, "%s Received featureStatus %{private}s", v24, 0x16u);
    swift_arrayDestroy();
    v35 = v26;
    a3 = v42;
    MEMORY[0x29ED63350](v35, -1, -1);
    MEMORY[0x29ED63350](v24, -1, -1);
  }

  else
  {

    sub_29D5EA964(v16);
  }

  (*(v17 + 8))(v20, v46);
  v36 = sub_29D65DF24();
  v37 = MEMORY[0x29EDC38C8];
  a5[3] = v36;
  a5[4] = v37;
  v38 = sub_29D5E3C20(a5);
  return sub_29D64C96C(a3, a1, v38);
}

uint64_t sub_29D64C96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v49 = a3;
  sub_29D5EA87C(0);
  v46 = *(v4 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65DED4();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v10;
  v11 = sub_29D65DF04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v36 - v17;
  v43 = &v36 - v17;
  v19 = sub_29D65D6A0();
  v36 = v20;
  v21 = *(v12 + 16);
  v21(v18, a1, v11);
  v22 = sub_29D65DEF4();
  sub_29D64B90C(v22, MEMORY[0x29EDC36F0], v10);

  v23 = sub_29D65DF34();
  v40 = v24;
  v41 = v23;
  v39 = v25;
  v38 = v26;
  v27 = v44;
  sub_29D5EA900(v47, v44);
  v28 = v37;
  v21(v37, a1, v11);
  v29 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v30 = (v45 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v12 + 80) + v30 + 16) & ~*(v12 + 80);
  v32 = swift_allocObject();
  sub_29D5FEE38(v27, v32 + v29);
  v33 = (v32 + v30);
  v34 = v36;
  *v33 = v19;
  v33[1] = v34;
  (*(v12 + 32))(v32 + v31, v28, v11);
  *(v32 + ((v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
  return sub_29D65DF14();
}

uint64_t sub_29D64CC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t), char *a5)
{
  v64 = a3;
  v65 = a5;
  v62 = a2;
  v63 = a4;
  v6 = sub_29D65F314();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v61 - v12;
  v14 = sub_29D65DE74();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EA87C(0);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D65E0E4();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v61 - v29;
  MEMORY[0x2A1C7C4A8](v31, v32);
  v34 = &v61 - v33;
  sub_29D5EA900(a1, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_29D5EA964(v21);
    sub_29D65F2E4();
    v35 = v64;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v36 = sub_29D65F2F4();
    v37 = sub_29D660214();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v70 = v39;
      *v38 = 136315394;
      v40 = sub_29D6607A4();
      v42 = sub_29D64A1D0(v40, v41, &v70);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_29D64A1D0(v62, v35, &v70);
      _os_log_impl(&dword_29D5D7000, v36, v37, "%s Creating no feed items with identifier %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v39, -1, -1);
      MEMORY[0x29ED63350](v38, -1, -1);
    }

    (*(v68 + 8))(v9, v69);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v23 + 32))(v34, v21, v22);
    sub_29D65C978(v63, v34, v17);
    sub_29D65F2E4();
    v63 = *(v23 + 16);
    v63(v30, v34, v22);
    v44 = sub_29D65F2F4();
    LODWORD(v64) = sub_29D660214();
    v45 = v17;
    if (os_log_type_enabled(v44, v64))
    {
      v46 = swift_slowAlloc();
      v61 = v44;
      v47 = v46;
      v62 = swift_slowAlloc();
      v70 = v62;
      *v47 = 136315395;
      v48 = sub_29D6607A4();
      v65 = v17;
      v50 = sub_29D64A1D0(v48, v49, &v70);

      *(v47 + 4) = v50;
      *(v47 + 12) = 2081;
      v63(v26, v30, v22);
      v51 = sub_29D65FF84();
      v53 = v52;
      v54 = *(v23 + 8);
      v54(v30, v22);
      v55 = sub_29D64A1D0(v51, v53, &v70);
      v45 = v65;

      *(v47 + 14) = v55;
      v56 = v61;
      _os_log_impl(&dword_29D5D7000, v61, v64, "%s Creating feed item generator for featureStatus %{private}s", v47, 0x16u);
      v57 = v62;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v57, -1, -1);
      MEMORY[0x29ED63350](v47, -1, -1);
    }

    else
    {

      v54 = *(v23 + 8);
      v54(v30, v22);
    }

    (*(v68 + 8))(v13, v69);
    sub_29D5FE918(0, &qword_2A1A1E6A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v58 = v66;
    v59 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_29D661D90;
    (*(v58 + 32))(v60 + v59, v45, v67);
    v54(v34, v22);
    return v60;
  }
}

uint64_t sub_29D64D2D4@<X0>(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_29D65DF04();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65F314();
  v35 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  v14 = sub_29D65F2F4();
  v15 = sub_29D660214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = a1;
    v32 = v18;
    v36 = v18;
    *v17 = 136315138;
    v19 = sub_29D6607A4();
    v21 = v6;
    v22 = v5;
    v23 = v9;
    v24 = a3;
    v25 = sub_29D64A1D0(v19, v20, &v36);

    *(v17 + 4) = v25;
    a3 = v24;
    v9 = v23;
    v5 = v22;
    v6 = v21;
    _os_log_impl(&dword_29D5D7000, v14, v15, "%s Creating feed item generator for promotion", v17, 0xCu);
    v26 = v32;
    sub_29D5DF1C4(v32);
    v27 = v26;
    a1 = v34;
    MEMORY[0x29ED63350](v27, -1, -1);
    MEMORY[0x29ED63350](v17, -1, -1);

    (*(v35 + 8))(v13, v33);
  }

  else
  {

    (*(v35 + 8))(v13, v10);
  }

  (*(v6 + 16))(v9, a1, v5);
  v28 = type metadata accessor for NoiseNotificationsPromotionGenerator(0);
  swift_allocObject();
  v29 = sub_29D6504DC(v9);
  a3[3] = v28;
  result = sub_29D64DBA4(&qword_2A1A1E0B8, type metadata accessor for NoiseNotificationsPromotionGenerator, &unk_29D665260);
  a3[4] = result;
  *a3 = v29;
  return result;
}

uint64_t sub_29D64D5CC()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NoiseNotificationsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A1E170;
  if (!qword_2A1A1E170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D64D6E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_29D64D75C(uint64_t a1, void *a2)
{
  v3 = v2;
  v32 = *v2;
  v33 = a2;
  v31 = sub_29D65DF04();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v31, v7);
  sub_29D5FE6F8(0);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65DED4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v18 = sub_29D65DEF4();
  sub_29D64B5DC(v18, v17);

  (*(v14 + 32))(v3 + OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_domain, v17, v13);
  v19 = a1;
  v20 = v31;
  (*(v5 + 16))(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v31);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v21, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v24 = v32;
  v25 = v33;
  *(v23 + v22) = v33;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_29D5FE718(0);
  sub_29D64DBA4(&qword_2A1A1E7F0, sub_29D5FE718, MEMORY[0x29EDB8A00]);
  v26 = v25;
  sub_29D65F894();
  sub_29D64DBA4(&qword_2A1A1E798, sub_29D5FE6F8, MEMORY[0x29EDB8AE8]);
  v27 = v34;
  v28 = sub_29D65F934();
  (*(v5 + 8))(v30, v20);
  (*(v35 + 8))(v12, v27);
  *(v3 + OBJC_IVAR____TtC16HearingAppPlugin35NoiseNotificationsGeneratorPipeline_publisher) = v28;
  return v3;
}

uint64_t sub_29D64DAFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D64BC14(v1 + v4, v5, a1);
}

uint64_t sub_29D64DBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D64DBEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29D64D2D4(v4, a1);
}

uint64_t sub_29D64DCA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D65DF04() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_29D64C67C(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_29D64DD58()
{
  sub_29D5EA87C(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_29D65DF04() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);

  return sub_29D64CC70(v0 + v2, v7, v8, (v0 + v5), v6);
}

uint64_t sub_29D64DE64()
{
  v1 = [*(v0 + 32) noiseThresholdOptions];
  sub_29D5DF448(0, &qword_2A17AC258, 0x29EDBA070);
  v2 = sub_29D660034();

  v13 = MEMORY[0x29EDCA190];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_29D6604B4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x29EDCA190];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x29ED62900](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 integerValue];
    v10 = [objc_opt_self() decibelHearingLevelUnit];
    v11 = [objc_opt_self() quantityWithUnit:v10 doubleValue:v9];

    ++v4;
    if (v11)
    {
      MEMORY[0x29ED623B0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();
      v5 = v13;
      v4 = v8;
    }
  }

  return v5;
}

id sub_29D64E060(void *a1)
{
  v2 = *(v1 + 32);
  result = [a1 _value];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = [v2 localizedNoiseThresholdValue_];
    v6 = sub_29D65FF64();

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_29D64E110(void *a1)
{
  v2 = *(v1 + 32);
  result = [a1 _value];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = [v2 localizedNoiseThresholdDetailValue_];
    v6 = sub_29D65FF64();

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_29D64E1C0(void *a1)
{
  v2 = *(v1 + 32);
  result = [a1 _value];
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [v2 setNotificationThreshold_];

  return [v2 setNotificationsEnabled_];
}

uint64_t sub_29D64E264()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D64E30C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 32) notificationsEnabled];
  v4 = sub_29D65E0E4();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x29EDC1760];
  if (!v3)
  {
    v6 = MEMORY[0x29EDC1768];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_29D64E3A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D65EE44();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_29D64E410()
{
  v1 = *(*v0 + 56);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D64E444()
{
  v1 = [*(*v0 + 32) localizedNoiseThresholdValue_];
  v2 = sub_29D65FF64();

  return v2;
}

uint64_t sub_29D64E4A4()
{
  v1 = [*(*v0 + 32) noiseThresholdValueFooterDescription];
  v2 = sub_29D65FF64();

  return v2;
}

id sub_29D64E524()
{
  v1 = [*(*v0 + 32) noiseThresholdCurrentValue];
  v2 = [objc_opt_self() decibelHearingLevelUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  return v3;
}

uint64_t sub_29D64E5BC(void *a1)
{
  v3 = *v1;
  sub_29D64F378(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D661D20;
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = MEMORY[0x29EDC99B0];
  *(v4 + 56) = MEMORY[0x29EDC99B0];
  v8 = sub_29D5E3BCC();
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  [a1 _value];
  v9 = sub_29D6600E4();
  *(v4 + 96) = v7;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;

  return sub_29D65FF74();
}

id sub_29D64E714()
{
  v1 = *v0;
  [*(*v0 + 32) setNotificationThreshold_];
  v2 = *(v1 + 32);

  return [v2 setNotificationsEnabled_];
}

id sub_29D64E768(void *a1, void *a2)
{
  sub_29D64F378(0, &unk_2A17AC838, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v17 - v7;
  *(v2 + qword_2A17AD470) = 0;
  *(v2 + qword_2A17AD468) = a2;
  v9 = type metadata accessor for NoiseThresholdSpecifierConfiguration();
  v10 = swift_allocObject();
  strcpy((v10 + 16), "THRESHOLD_ID_");
  *(v10 + 30) = -4864;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 40) = a2;
  *(v10 + 48) = 0;
  *(v10 + 32) = a1;
  v11 = a2;
  v12 = a1;
  v13 = [v12 noiseThresholdTitleDescription];
  sub_29D65FF64();

  v14 = sub_29D65E314();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v17[4] = v9;
  v17[5] = sub_29D64F3DC(&qword_2A17AD4B8, type metadata accessor for NoiseThresholdSpecifierConfiguration, &unk_29D665158);
  v17[1] = v10;

  v15 = sub_29D65F0D4();
  sub_29D64E984();

  return v15;
}

double sub_29D64E984()
{
  sub_29D64F378(0, &qword_2A17AC760, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v31 = v29 - v3;
  sub_29D5FEBBC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20(0);
  v30 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8(0);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + qword_2A17AD468);
  swift_beginAccess();
  sub_29D64F378(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  v20 = v19;
  sub_29D65F8C4();
  swift_endAccess();

  sub_29D64F3DC(&qword_2A1A1E778, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
  sub_29D65F994();
  (*(v6 + 8))(v9, v5);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v21 = sub_29D6602B4();
  v35 = v21;
  v22 = sub_29D6602A4();
  v23 = v31;
  (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
  sub_29D64F3DC(&unk_2A17AC900, sub_29D605A20, MEMORY[0x29EDB8918]);
  sub_29D60C0D8();
  v24 = v30;
  sub_29D65F984();
  sub_29D615730(v23);

  (*(v32 + 8))(v13, v24);
  swift_allocObject();
  v25 = v29[1];
  swift_unknownObjectWeakInit();
  sub_29D64F3DC(&qword_2A17AC770, sub_29D605AB8, MEMORY[0x29EDB89E8]);
  v26 = v33;
  v27 = sub_29D65F9B4();

  (*(v34 + 8))(v18, v26);
  *(v25 + qword_2A17AD470) = v27;

  return result;
}

void sub_29D64EE4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_29D65F0E4();

    if (v4)
    {
      swift_getObjectType();
      sub_29D65EE14();
      sub_29D65EE94();
    }
  }
}

double sub_29D64EF00()
{

  return result;
}

double sub_29D64EF58(uint64_t a1)
{

  return result;
}

id sub_29D64F030(void *a1, void *a2)
{
  v3 = v2;
  objc_allocWithZone(type metadata accessor for NoiseThresholdSettingsDataSource(0));
  v6 = a1;
  v7 = a2;
  v8 = sub_29D64E768(v6, v7);
  v9 = qword_2A17AD498;
  *(v3 + qword_2A17AD498) = v8;
  v10 = v8;
  sub_29D65F0F4();

  sub_29D65F034();
  swift_allocObject();
  *(v3 + qword_2A17AD4A0) = sub_29D65F024();
  v11 = *(v3 + v9);
  swift_retain_n();
  v12 = v11;
  v13 = sub_29D65ED84();
  v14 = [v6 noiseThresholdTitleDescription];
  if (!v14)
  {
    sub_29D65FF64();
    v14 = sub_29D65FF24();
  }

  [v13 setTitle_];

  return v13;
}

uint64_t sub_29D64F19C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29D660594();
  __break(1u);
  return result;
}

double sub_29D64F284()
{

  return result;
}

id sub_29D64F2DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_29D64F31C(uint64_t a1)
{

  return result;
}

void sub_29D64F378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D64F3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_29D64F424(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  sub_29D650DE0(0, &qword_2A1A1EA50, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = sub_29D65DE74();
  MEMORY[0x2A1C7C4A8](v10, v11);
  v34 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x2A1C7C4A8](v13, v14);
  v32 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x29EDCA190];
  }

  v19 = a3 + 32;
  v20 = (v15 + 48);
  v29 = v15;
  v33 = (v15 + 32);
  v21 = MEMORY[0x29EDCA190];
  v30 = v10;
  v31 = a1;
  v28 = (v15 + 48);
  while (1)
  {
    a1(v19, v16);
    if (v3)
    {
      break;
    }

    if ((*v20)(v9, 1, v10) == 1)
    {
      sub_29D5F9E0C(v9);
    }

    else
    {
      v22 = v32;
      v23 = *v33;
      (*v33)(v32, v9, v10);
      v23(v34, v22, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_29D65B45C(0, *(v21 + 2) + 1, 1, v21);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_29D65B45C((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      v10 = v30;
      v23(&v21[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25], v34, v30);
      a1 = v31;
      v20 = v28;
    }

    v19 += 40;
    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_29D64F700()
{
  v0 = sub_29D64F8C8();
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v1 = sub_29D65F314();
  sub_29D5DE6EC(v1, qword_2A1A20C00);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v2 = sub_29D65F2F4();
  v3 = sub_29D6601D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446722;
    *(v4 + 4) = sub_29D64A1D0(0xD000000000000024, 0x800000029D6651C0, &v10);
    *(v4 + 12) = 2050;
    *(v4 + 14) = *(v0 + 16);

    *(v4 + 22) = 2082;
    v6 = MEMORY[0x29ED623E0](v0, MEMORY[0x29EDC3A38]);
    v8 = sub_29D64A1D0(v6, v7, &v10);

    *(v4 + 24) = v8;
    _os_log_impl(&dword_29D5D7000, v2, v3, "[%{public}s] Computed %{public}ld changes: %{public}s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v5, -1, -1);
    MEMORY[0x29ED63350](v4, -1, -1);
  }

  else
  {
  }

  return v0;
}

uint64_t sub_29D64F8C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_managedOnboardingExperiences);
  v6[2] = &v7;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D64F424(sub_29D650DC0, v6, v1);

  v2 = (v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_context);
  sub_29D5E32A8(v2, v2[3]);
  sub_29D5E32A8(v2, v2[3]);
  v3 = sub_29D65DEA4();
  sub_29D65DE94();

  v4 = sub_29D660054();

  return v4;
}

uint64_t sub_29D64FB8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_29D65E2A4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E8E70(a1, v32);
  sub_29D5DF210(0, &qword_2A1A1EA00, &protocol descriptor for OnboardingExperienceDataProviding);
  sub_29D5DF210(0, &qword_2A1A1E9E0, &protocol descriptor for DeviceConfigurableOnboardingProviding);
  if (swift_dynamicCast())
  {
    sub_29D5DBB48(v33, v35);
    sub_29D5E32A8(v35, v35[3]);
    sub_29D5F4278(a2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_deviceConfigurationProvider, v32);
    v12 = sub_29D606814(v32);
    sub_29D61CF38(v32);
    if ((v12 & 1) == 0)
    {
      v27 = sub_29D65DE74();
      (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
      return sub_29D5DF1C4(v35);
    }

    v29 = v8;
    v30 = v7;
    v31 = a3;
    sub_29D5DF1C4(v35);
  }

  else
  {
    v29 = v8;
    v30 = v7;
    v31 = a3;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_29D650E44(v33);
  }

  v35[7] = v3;
  v13 = a1[3];
  v14 = a1[4];
  sub_29D5E32A8(a1, v13);
  (*(v14 + 24))(v13, v14);
  v15 = a1[3];
  v16 = a1[4];
  sub_29D5E32A8(a1, v15);
  v28 = (*(v16 + 8))(v15, v16);
  v17 = sub_29D65DDA4();
  v18 = a1[3];
  v19 = a1[4];
  sub_29D5E32A8(a1, v18);
  (*(v19 + 32))(v18, v19);
  if (MEMORY[0x29EDCA190] >> 62)
  {
    if (sub_29D6604B4())
    {
      sub_29D650ECC(MEMORY[0x29EDCA190]);
    }
  }

  type metadata accessor for OnboardingTileActionHandler(0);
  sub_29D650A60(&qword_2A17AD4C8, type metadata accessor for OnboardingTileActionHandler, &protocol conformance descriptor for OnboardingTileActionHandler);
  v20 = v31;
  sub_29D65DDB4();

  v21 = a1[3];
  v22 = a1[4];
  sub_29D5E32A8(a1, v21);
  (*(v22 + 16))(v21, v22);
  sub_29D65DE34();
  v23 = a1[3];
  v24 = a1[4];
  sub_29D5E32A8(a1, v23);
  (*(v24 + 16))(v23, v24);
  sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
  sub_29D660104();

  sub_29D65DE54();
  (*(v29 + 8))(v11, v30);
  v25 = sub_29D65DE74();
  return (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
}

uint64_t sub_29D650054()
{
  sub_29D5F27A4(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher;
  if (*(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher))
  {
    v8 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher);
  }

  else
  {
    swift_allocObject();
    swift_weakInit();
    v9 = MEMORY[0x29EDB89F8];
    sub_29D650AA8(0, &qword_2A1A1E7C8, MEMORY[0x29EDB89F8]);
    sub_29D650B18(&qword_2A1A1E7D0, &qword_2A1A1E7C8, v9, MEMORY[0x29EDB8A00]);
    sub_29D65F894();
    sub_29D650A60(&qword_2A1A1E788, sub_29D5F27A4, MEMORY[0x29EDB8AE8]);
    v10 = v0;
    v8 = sub_29D65F934();
    (*(v3 + 8))(v6, v2);
    *(v10 + v7) = v8;
  }

  return v8;
}

uint64_t sub_29D650250@<X0>(uint64_t *a2@<X8>)
{
  sub_29D650DE0(0, &qword_2A1A1E7A8, sub_29D650A08, MEMORY[0x29EDB8AB0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v17 - v7;
  sub_29D650AA8(0, &qword_2A1A1E7A0, MEMORY[0x29EDB8AC0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v17 - v13;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v17 = sub_29D64F700();
    sub_29D650A08();
    sub_29D65F864();
    sub_29D650B5C();
    v15 = sub_29D65F934();

    result = (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_29D650A08();
    sub_29D65F874();
    sub_29D650B18(&qword_2A17AD4C0, &qword_2A1A1E7A0, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
    v15 = sub_29D65F934();
    result = (*(v11 + 8))(v14, v10);
  }

  *a2 = v15;
  return result;
}

uint64_t sub_29D6504DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D65DED4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_deviceConfigurationProvider;
  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  sub_29D5F4278(&unk_2A1A20BA8, v2 + v9);
  v10 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_managedOnboardingExperiences;
  sub_29D5E3CD8(0, &qword_2A1A1E688, &qword_2A1A1EA00, &protocol descriptor for OnboardingExperienceDataProviding, MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D661D90;
  *(v11 + 56) = type metadata accessor for EnvironmentAudioNotificationOnboardingDataProvider(0);
  *(v11 + 64) = &off_2A2432298;
  v12 = sub_29D5E3C20((v11 + 32));
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v13 = sub_29D65F314();
  v14 = sub_29D5DE6EC(v13, qword_2A1A20C00);
  (*(*(v13 - 8) + 16))(v12, v14, v13);
  *(v2 + v10) = v11;
  *(v2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator____lazy_storage___publisher) = 0;
  sub_29D65DEE4();
  sub_29D5DBB48(&v19, v2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_context);
  v15 = sub_29D65DEF4();
  sub_29D64B900(v15, v8);

  v16 = sub_29D65DF04();
  (*(*(v16 - 8) + 8))(a1, v16);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_domain, v8, v4);
  return v2;
}

uint64_t sub_29D65077C()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D61CF38(v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_deviceConfigurationProvider);
  sub_29D5DF1C4((v0 + OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_context));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NoiseNotificationsPromotionGenerator(uint64_t a1)
{
  result = qword_2A1A1E0A8;
  if (!qword_2A1A1E0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6508AC(uint64_t a1)
{
  result = sub_29D65DED4();
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

uint64_t sub_29D65098C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin36NoiseNotificationsPromotionGenerator_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D650A08()
{
  if (!qword_2A1A1E728)
  {
    v0 = sub_29D660084();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E728);
    }
  }
}

uint64_t sub_29D650A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D650AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29D650A08();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D650B18(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D650AA8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D650B5C()
{
  result = qword_2A1A1E7B0;
  if (!qword_2A1A1E7B0)
  {
    sub_29D650DE0(255, &qword_2A1A1E7A8, sub_29D650A08, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E7B0);
  }

  return result;
}

uint64_t sub_29D650BE4(unint64_t a1, unint64_t a2)
{
  sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
  if (a2 >> 62)
  {
    v4 = sub_29D6605D4();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_29D660554();
    v6 = 0xD000000000000046;
    v5 = 0x800000029D669780;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_29D660554();
  v5 = 0x800000029D669730;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x29ED62350](v6, v5);
  v8 = sub_29D6607A4();
  MEMORY[0x29ED62350](v8);

  MEMORY[0x29ED62350](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_29D6607A4();
  MEMORY[0x29ED62350](v9);

  result = sub_29D6605A4();
  __break(1u);
  return result;
}

void sub_29D650DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D650E44(uint64_t a1)
{
  sub_29D5E3CD8(0, &qword_2A1A1E9D8, &qword_2A1A1E9E0, &protocol descriptor for DeviceConfigurableOnboardingProviding, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D650ECC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D6604B4())
    {
LABEL_3:
      sub_29D5F2FB4(0);
      v3 = sub_29D660514();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D6604B4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_29D650BE4(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_29D660364();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_29D660374();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        sub_29D65EE94();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_29D660364();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_29D5DF448(0, &qword_2A1A1E710, 0x29EDBACB8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_29D660374();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29D651274(uint64_t a1)
{
  sub_29D5F4278(a1, v136);
  sub_29D5EAD50(v136, v133);
  v1 = v134;
  if (v134)
  {
    v2 = v135;
    sub_29D5E32A8(v133, v134);
    v121 = (*(v2 + 8))(v1, v2);
    sub_29D61CF38(v136);
    sub_29D5DF1C4(v133);
  }

  else
  {
    sub_29D61CF38(v136);
    sub_29D5EADE0(v133);
    v121 = 0;
  }

  v133[0] = MEMORY[0x29EDCA190];
  sub_29D6524C4(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v131 = sub_29D65DFE4();
  v3 = *(v131 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v124 = v5;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_29D663250;
  v6 = v123 + v5;
  *v6 = sub_29D60DBAC();
  *(v6 + 8) = 0;
  v120 = *MEMORY[0x29EDC1608];
  v7 = *(v3 + 104);
  v7(v123 + v5);
  v8 = (v123 + v5 + v4);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v132 = objc_opt_self();
  v9 = [v132 bundleForClass_];
  v10 = sub_29D65DA74();
  v12 = v11;

  *v8 = v10;
  v8[1] = v12;
  (v7)(v8, *MEMORY[0x29EDC1610], v131);
  v13 = v123 + v5 + 2 * v4;
  v122 = 2 * v4;
  v14 = [v132 bundleForClass_];
  v15 = sub_29D65DA74();
  v17 = v16;

  *v13 = v15;
  *(v13 + 8) = v17;
  *(v13 + 16) = 0;
  v126 = *MEMORY[0x29EDC1630];
  v7(v13);
  v129 = v4;
  v125 = 3 * v4;
  v18 = (v123 + v5 + 3 * v4);
  v19 = [v132 bundleForClass_];
  v20 = sub_29D65DA74();
  v22 = v21;

  *v18 = v20;
  v18[1] = v22;
  v18[2] = 0;
  v127 = *MEMORY[0x29EDC15D0];
  v7(v18);
  v23 = v123 + v5 + 4 * v129;
  v24 = [v132 bundleForClass_];
  v25 = sub_29D65DA74();
  v27 = v26;

  *v23 = v25;
  *(v23 + 8) = v27;
  *(v23 + 16) = 0;
  (v7)(v23, v126, v131);
  v28 = v123 + v5 + 5 * v129;
  v29 = [v132 bundleForClass_];
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  *(v28 + 8) = v32;
  *(v28 + 16) = 0;
  (v7)(v28, v126, v131);
  sub_29D60C254(v121 & 1, (v123 + v5 + 6 * v129));
  v33 = v123 + v5 + 7 * v129;
  *v33 = sub_29D60DC9C();
  *(v33 + 8) = 1;
  (v7)(v33, v120, v131);
  v34 = (v123 + v5 + 8 * v129);
  v35 = [v132 bundleForClass_];
  v36 = sub_29D65DA74();
  v38 = v37;

  *v34 = v36;
  v34[1] = v38;
  v34[2] = 0;
  (v7)(v34, v127, v131);
  v39 = v123 + v5 + 9 * v129;
  v40 = [v132 bundleForClass_];
  v41 = sub_29D65DA74();
  v43 = v42;

  *v39 = v41;
  *(v39 + 8) = v43;
  *(v39 + 16) = 0;
  (v7)(v39, v126, v131);
  v44 = v123 + v5 + 10 * v129;
  v45 = [v132 bundleForClass_];
  v46 = sub_29D65DA74();
  v48 = v47;

  *v44 = v46;
  *(v44 + 8) = v48;
  *(v44 + 16) = 0;
  (v7)(v44, v126, v131);
  v49 = (v123 + v5 + 11 * v129);
  v50 = [v132 bundleForClass_];
  v51 = sub_29D65DA74();
  v53 = v52;

  *v49 = v51;
  v49[1] = v53;
  v49[2] = 0;
  (v7)(v49, v127, v131);
  v54 = v123 + v5 + 12 * v129;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_29D652528;
  *(v55 + 24) = 0;
  *v54 = sub_29D60E3E4;
  *(v54 + 8) = v55;
  *(v54 + 16) = 1;
  v56 = *MEMORY[0x29EDC15A8];
  (v7)(v54, v56, v131);
  v57 = v123 + v5 + 13 * v129;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_29D65252C;
  *(v58 + 24) = 0;
  *v57 = sub_29D60E43C;
  *(v57 + 8) = v58;
  *(v57 + 16) = 1;
  (v7)(v57, v56, v131);
  v59 = v123 + v5 + 14 * v129;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_29D652530;
  *(v60 + 24) = 0;
  *v59 = sub_29D60E43C;
  *(v59 + 8) = v60;
  *(v59 + 16) = 1;
  (v7)(v59, v56, v131);
  v61 = v123 + v5 + 15 * v129;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_29D652534;
  *(v62 + 24) = 0;
  *v61 = sub_29D60E43C;
  *(v61 + 8) = v62;
  *(v61 + 16) = 1;
  (v7)(v61, v56, v131);
  v63 = v123 + v5 + 16 * v129;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_29D652538;
  *(v64 + 24) = 0;
  *v63 = sub_29D60E43C;
  *(v63 + 8) = v64;
  *(v63 + 16) = 1;
  (v7)(v63, v56, v131);
  v65 = (v123 + v5 + 17 * v129);
  v66 = [v132 bundleForClass_];
  v67 = sub_29D65DA74();
  v69 = v68;

  *v65 = v67;
  v65[1] = v69;
  (v7)(v65, *MEMORY[0x29EDC1620], v131);
  sub_29D65A3F0(v123);
  v70 = sub_29D60DD8C();
  sub_29D65A3F0(v70);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_29D663260;
  v71 = (v128 + v124);
  v72 = [v132 bundleForClass_];
  v73 = sub_29D65DA74();
  v75 = v74;

  *v71 = v73;
  v71[1] = v75;
  v71[2] = 0;
  (v7)(v128 + v124, v127, v131);
  v76 = v128 + v124 + v129;
  v77 = [v132 bundleForClass_];
  v78 = sub_29D65DA74();
  v80 = v79;

  *v76 = v78;
  *(v76 + 8) = v80;
  *(v76 + 16) = 0;
  (v7)(v76, v126, v131);
  v81 = (v128 + v124 + v122);
  v82 = [v132 bundleForClass_];
  v83 = sub_29D65DA74();
  v85 = v84;

  *v81 = v83;
  v81[1] = v85;
  v81[2] = 0;
  (v7)(v81, v127, v131);
  sub_29D600DA8();
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_29D663270;
  v87 = [v132 bundleForClass_];
  v88 = sub_29D65DA74();
  v90 = v89;

  *(v86 + 32) = v88;
  *(v86 + 40) = v90;
  v91 = [v132 bundleForClass_];
  v92 = sub_29D65DA74();
  v94 = v93;

  *(v86 + 48) = v92;
  *(v86 + 56) = v94;
  v95 = [v132 bundleForClass_];
  v96 = sub_29D65DA74();
  v98 = v97;

  *(v86 + 64) = v96;
  *(v86 + 72) = v98;
  v99 = [v132 bundleForClass_];
  v100 = sub_29D65DA74();
  v102 = v101;

  *(v86 + 80) = v100;
  *(v86 + 88) = v102;
  v103 = [v132 bundleForClass_];
  v104 = sub_29D65DA74();
  v106 = v105;

  *(v86 + 96) = v104;
  *(v86 + 104) = v106;
  v107 = [v132 bundleForClass_];
  v108 = sub_29D65DA74();
  v110 = v109;

  *(v86 + 112) = v108;
  *(v86 + 120) = v110;
  v111 = [v132 bundleForClass_];
  v112 = sub_29D65DA74();
  v114 = v113;

  *(v86 + 128) = v112;
  *(v86 + 136) = v114;
  v115 = [v132 bundleForClass_];
  v116 = sub_29D65DA74();
  v118 = v117;

  *(v86 + 144) = v116;
  *(v86 + 152) = v118;
  *(v128 + v124 + v125) = v86;
  (v7)(v128 + v124 + v125, *MEMORY[0x29EDC15D8], v131);
  sub_29D65A3F0(v128);
  return v133[0];
}

id sub_29D65235C()
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  if (qword_2A1A1EA08 != -1)
  {
    swift_once();
  }

  sub_29D651274(&unk_2A1A20BA8);
  v2 = objc_allocWithZone(sub_29D65E004());
  v3 = sub_29D65DFF4();
  v4 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [v4 setDelegate_];

  return v4;
}

void sub_29D6524C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D65259C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_29D65E0E4();
  v22 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D653D34(0, &qword_2A17AD4E0, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E32A8(a1, a1[3]);
  sub_29D653CE0();
  sub_29D660764();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_29D653ACC(&qword_2A17AC530, MEMORY[0x29EDC1770], MEMORY[0x29EDC1788]);
    sub_29D660644();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v15, v23, v4);
    sub_29D653B90(v15, v20);
  }

  return sub_29D5DF1C4(a1);
}

uint64_t sub_29D652848(uint64_t a1)
{
  v2 = sub_29D653CE0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D652884(uint64_t a1)
{
  v2 = sub_29D653CE0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6528D8(void *a1, double a2)
{
  sub_29D653D34(0, &qword_2A1A1DDA8, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  sub_29D5E32A8(a1, a1[3]);
  sub_29D653CE0();
  sub_29D660774();
  sub_29D65E0E4();
  sub_29D653ACC(&qword_2A1A1E540, MEMORY[0x29EDC1770], MEMORY[0x29EDC1778]);
  sub_29D660654();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_29D652A60()
{
  ObjectType = swift_getObjectType();
  v123 = sub_29D65DAF4();
  v122 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123, v1);
  v121 = v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29D65E314();
  v132 = *(v3 - 8);
  v133 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v128 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v136 = v120 - v8;
  v142 = sub_29D65E0E4();
  v139 = *(v142 - 8);
  MEMORY[0x2A1C7C4A8](v142, v9);
  v124 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v135 = v120 - v13;
  MEMORY[0x2A1C7C4A8](v14, v15);
  v134 = v120 - v16;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v126 = v120 - v19;
  v20 = sub_29D65F314();
  v140 = *(v20 - 8);
  v141 = v20;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v129 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v125 = v120 - v25;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v138 = v120 - v28;
  v29 = sub_29D65EDC4();
  v30 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D653B18(0);
  MEMORY[0x2A1C7C4A8](v34 - 8, v35);
  v37 = v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  v39 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43, v44);
  v46 = v120 - v45;
  v131 = v0;
  sub_29D65EF44();
  sub_29D653ACC(&qword_2A17AD4D8, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData, &unk_29D6653C0);
  sub_29D653ACC(&qword_2A1A1DEC0, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData, &unk_29D665398);
  sub_29D65EDB4();
  v49 = *(v30 + 8);
  v48 = v30 + 8;
  v47 = v49;
  v130 = v29;
  (v49)(v33, v29);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_29D653C58(v37, sub_29D653B18);
    v50 = v129;
    sub_29D65F2E4();
    v51 = sub_29D65F2F4();
    v52 = sub_29D660204();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v143[0] = v54;
      *v53 = 136315138;
      v55 = sub_29D6607A4();
      v57 = sub_29D64A1D0(v55, v56, v143);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_29D5D7000, v51, v52, "%s Could not access action handler user data!", v53, 0xCu);
      sub_29D5DF1C4(v54);
      MEMORY[0x29ED63350](v54, -1, -1);
      MEMORY[0x29ED63350](v53, -1, -1);
    }

    return (*(v140 + 8))(v50, v141);
  }

  else
  {
    v129 = v47;
    sub_29D653B90(v37, v46);
    sub_29D65F2E4();
    sub_29D653BF4(v46, v42);
    v59 = sub_29D65F2F4();
    v60 = sub_29D660214();
    v61 = os_log_type_enabled(v59, v60);
    v127 = v46;
    v120[1] = v48;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v120[0] = swift_slowAlloc();
      v143[0] = v120[0];
      *v62 = 136315394;
      v63 = sub_29D6607A4();
      v65 = sub_29D64A1D0(v63, v64, v143);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      v66 = *(v139 + 16);
      v67 = v142;
      v66(v126, v42, v142);
      v68 = sub_29D65FF84();
      v70 = v69;
      sub_29D653C58(v42, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      v71 = sub_29D64A1D0(v68, v70, v143);
      v72 = v127;

      *(v62 + 14) = v71;
      _os_log_impl(&dword_29D5D7000, v59, v60, "%s Did select cell with feature status %s", v62, 0x16u);
      v73 = v120[0];
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v73, -1, -1);
      MEMORY[0x29ED63350](v62, -1, -1);

      v120[0] = *(v140 + 8);
      (v120[0])(v138, v141);
    }

    else
    {
      v72 = v46;

      sub_29D653C58(v42, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      v120[0] = *(v140 + 8);
      (v120[0])(v138, v141);
      v66 = *(v139 + 16);
      v67 = v142;
    }

    v74 = v134;
    v66(v134, v72, v67);
    v75 = v131;
    sub_29D65EF44();
    v138 = sub_29D65EDA4();
    v76 = v129;
    v77 = v130;
    v78 = v66;
    (v129)(v33, v130);
    sub_29D65EF44();
    v79 = v136;
    sub_29D65E184();
    v76(v33, v77);
    v80 = v74;
    v81 = v135;
    v82 = v78;
    v78(v135, v80, v67);
    v83 = v139;
    v84 = (*(v139 + 88))(v81, v67);
    if (v84 == *MEMORY[0x29EDC1760])
    {
      v86 = v132;
      v85 = v133;
      v87 = v128;
      (*(v132 + 16))(v128, v79, v133);
      v88 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSettingsViewController(0));
      v89 = v79;
      v90 = sub_29D60AE44(v87, 0);
      v91 = v138;
      [v138 showAdaptively:v90 sender:v75];

      (*(v86 + 8))(v89, v85);
      (*(v83 + 8))(v80, v142);
      return sub_29D653C58(v127, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
    }

    else
    {
      v92 = v80;
      v93 = v127;
      v94 = v138;
      if (v84 == *MEMORY[0x29EDC1768])
      {
        v95 = v132;
        v96 = v128;
        v97 = v127;
        v98 = v133;
        (*(v132 + 16))(v128, v79, v133);
        v99 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSettingsViewController(0));
        v100 = v79;
        v101 = sub_29D60AE44(v96, 1);
        sub_29D65ED74();
        sub_29D657050();
        v102 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
        [v94 presentViewController:v102 animated:1 completion:0];

        (*(v95 + 8))(v100, v98);
        (*(v83 + 8))(v92, v142);
        return sub_29D653C58(v97, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      }

      else if (v84 == *MEMORY[0x29EDC1758])
      {
        v103 = v121;
        sub_29D656D2C(v121);
        sub_29D65DAB4();

        (*(v122 + 8))(v103, v123);
        (*(v132 + 8))(v136, v133);
        (*(v83 + 8))(v92, v142);
        return sub_29D653C58(v93, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
      }

      else
      {
        sub_29D65F2E4();
        v104 = v124;
        v78(v124, v92, v142);
        v105 = sub_29D65F2F4();
        v106 = sub_29D6601F4();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v143[0] = v131;
          *v107 = 136315650;
          v108 = sub_29D6607A4();
          LODWORD(ObjectType) = v106;
          v110 = sub_29D64A1D0(v108, v109, v143);

          *(v107 + 4) = v110;
          *(v107 + 12) = 2080;
          *(v107 + 14) = sub_29D64A1D0(0x63656C6553646964, 0xEB00000000292874, v143);
          *(v107 + 22) = 2080;
          v111 = v142;
          v82(v126, v104, v142);
          v112 = sub_29D65FF84();
          v114 = v113;
          v115 = *(v83 + 8);
          v115(v104, v111);
          v116 = sub_29D64A1D0(v112, v114, v143);

          *(v107 + 24) = v116;
          _os_log_impl(&dword_29D5D7000, v105, ObjectType, "%s.%s Unhandled feature status %s", v107, 0x20u);
          v117 = v131;
          swift_arrayDestroy();
          MEMORY[0x29ED63350](v117, -1, -1);
          MEMORY[0x29ED63350](v107, -1, -1);

          (v120[0])(v125, v141);
          (*(v132 + 8))(v136, v133);
          v115(v134, v111);
          v118 = v127;
        }

        else
        {

          v115 = *(v83 + 8);
          v119 = v142;
          v115(v104, v142);
          (v120[0])(v125, v141);
          (*(v132 + 8))(v136, v133);
          v115(v92, v119);
          v118 = v93;
        }

        sub_29D653C58(v118, type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData);
        return (v115)(v135, v142);
      }
    }
  }
}

uint64_t sub_29D6538FC(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D6539FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D653ACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D653B18(uint64_t a1)
{
  if (!qword_2A17AD4D0)
  {
    type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(255);
    v1 = sub_29D660434();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AD4D0);
    }
  }
}

uint64_t sub_29D653B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D653BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D653C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D653CE0()
{
  result = qword_2A1A1DED8[0];
  if (!qword_2A1A1DED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A1DED8);
  }

  return result;
}

void sub_29D653D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D653CE0();
    v7 = a3(a1, &type metadata for HeadphoneNotificationsFeatureStatusActionHandlerData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D653DAC()
{
  result = qword_2A17AD4E8;
  if (!qword_2A17AD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD4E8);
  }

  return result;
}

unint64_t sub_29D653E04()
{
  result = qword_2A1A1DEC8;
  if (!qword_2A1A1DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1DEC8);
  }

  return result;
}

unint64_t sub_29D653E5C()
{
  result = qword_2A1A1DED0;
  if (!qword_2A1A1DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1DED0);
  }

  return result;
}

void sub_29D653EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_29D6600B4();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_29D65438C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_29D660554();
    MEMORY[0x29ED62350](0xD00000000000003FLL, 0x800000029D669940);
    v11 = sub_29D6607A4();
    MEMORY[0x29ED62350](v11);

    MEMORY[0x29ED62350](46, 0xE100000000000000);
    sub_29D660594();
    __break(1u);
  }
}

uint64_t sub_29D654038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29D6600B4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_29D654348(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_29D660554();
  MEMORY[0x29ED62350](0xD00000000000003FLL, 0x800000029D669940);
  v14 = sub_29D6607A4();
  MEMORY[0x29ED62350](v14);

  MEMORY[0x29ED62350](46, 0xE100000000000000);
  result = sub_29D660594();
  __break(1u);
  return result;
}

uint64_t sub_29D6541F0(uint64_t a1, uint64_t a2)
{
  sub_29D6600C4();
  v5[2] = a1;
  v5[3] = a2;
  return sub_29D654038(sub_29D65432C, v5, "HearingAppPlugin/HealthArticleComponent+Extension.swift", 55, 2, 16);
}

void sub_29D65426C(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v5 = a1(isCurrentExecutor);

  *a2 = v5;
}

void *sub_29D654348@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_29D6543C8()
{
  result = qword_2A17AD4F0;
  if (!qword_2A17AD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AD4F0);
  }

  return result;
}

uint64_t Date.lastDateOfTheYear(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  sub_29D654A98(0, &qword_2A17AD4F8, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v58 = (&v43 - v3);
  sub_29D654A98(0, &qword_2A17AD220, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = sub_29D65DA14();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D654A98(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v50 = &v43 - v16;
  v54 = sub_29D65DBC4();
  v52 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54, v17);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D65DCA4();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v20 + 104);
  (v25)(v24, *MEMORY[0x29EDB9CC0], v19, v22);
  v49 = sub_29D65DCB4();
  v26 = *(v20 + 8);
  v26(v24, v19);
  v27 = sub_29D65DCC4();
  v28 = *(*(v27 - 8) + 56);
  v53 = v7;
  v28(v7, 1, 1, v27);
  v29 = sub_29D65DCD4();
  (*(*(v29 - 8) + 56))();
  v30 = *MEMORY[0x29EDB9CD0];
  v45 = v20 + 104;
  v25(v24, v30, v19);
  v31 = v25;
  v32 = sub_29D65DCB4();
  v46 = v20 + 8;
  v44 = v26;
  result = (v26)(v24, v19);
  if (!__OFADD__(v32, 1))
  {
    v34 = v51;
    sub_29D65DA04();
    v35 = v50;
    sub_29D65DC74();
    (*(v55 + 8))(v34, v56);
    v36 = v52;
    v37 = *(v52 + 48);
    v38 = v54;
    if (v37(v35, 1, v54) == 1)
    {
      v39 = v57;
    }

    else
    {
      v40 = v47;
      v58 = *(v36 + 32);
      v58(v47, v35, v38);
      v31(v24, *MEMORY[0x29EDB9CB8], v19);
      v41 = v48;
      sub_29D65DC84();
      v44(v24, v19);
      (*(v36 + 8))(v40, v38);
      if (v37(v41, 1, v38) != 1)
      {
        v39 = v57;
        v58(v57, v41, v38);
        v42 = 0;
        return (*(v36 + 56))(v39, v42, 1, v38);
      }

      v35 = v41;
      v39 = v57;
    }

    sub_29D654BF0(v35);
    v42 = 1;
    return (*(v36 + 56))(v39, v42, 1, v38);
  }

  __break(1u);
  return result;
}

void sub_29D654A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Date.year(calendar:)()
{
  v0 = sub_29D65DCA4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x29EDB9CD0], v0, v3);
  v6 = sub_29D65DCB4();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D654BF0(uint64_t a1)
{
  sub_29D654A98(0, &qword_2A17AC3A8, MEMORY[0x29EDB9BC8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SoundLevelModel.init(title:description:warningDescription:valueOffsetPercentage:valueWidthPercentage:showBottomHairline:chartForegroundColor:chartBackgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, uint64_t a12)
{
  if (a10 <= 0.0)
  {
    a10 = 0.0;
  }

  if (a10 > 1.0)
  {
    a10 = 1.0;
  }

  if (a11 <= 0.0)
  {
    a11 = 0.0;
  }

  if (a11 > 1.0)
  {
    a11 = 1.0;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if ((1.0 - a10) < a11)
  {
    a11 = 1.0 - a10;
  }

  *(a9 + 56) = a10;
  *(a9 + 60) = a11;
  *(a9 + 64) = a8;
  *(a9 + 72) = a12;
  *(a9 + 80) = 0x4010000000000000;
  return result;
}

void sub_29D654D1C()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  sub_29D656498(0, &qword_2A17AD528, sub_29D6563D4);
  inited = swift_initStackObject();
  v2 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v3 = MEMORY[0x29EDC7640];
  *(inited + 16) = xmmword_29D661D20;
  v4 = *v3;
  *(inited + 40) = v0;
  *(inited + 48) = v4;
  v5 = objc_opt_self();
  v6 = v2;
  v7 = v0;
  v8 = v4;
  *(inited + 56) = [v5 labelColor];
  v9 = sub_29D5E2304(inited);
  swift_setDeallocating();
  sub_29D6563D4(0);
  swift_arrayDestroy();

  qword_2A17AD508 = v9;
}

uint64_t sub_29D654E54()
{
  sub_29D656498(0, &qword_2A17AD528, sub_29D6563D4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D20;
  v1 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x29EDC80E8];
  v4 = v1;
  v5 = v3;
  v6 = [v2 preferredFontForTextStyle_];

  v7 = *MEMORY[0x29EDC7640];
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  *(inited + 56) = [v8 secondaryLabelColor];
  v10 = sub_29D5E2304(inited);
  swift_setDeallocating();
  sub_29D6563D4(0);
  result = swift_arrayDestroy();
  qword_2A17AD510 = v10;
  return result;
}

char *SoundLevelView.init(model:)(uint64_t *a1)
{
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView] = 0;
  v3 = *(a1 + 9);
  v80[0] = *(a1 + 7);
  v80[1] = v3;
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for HorizontalMeterView());
  v6 = *(&v80[0] + 1);
  v7 = v4;
  HorizontalMeterView.init(model:)(v80);
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView] = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v79.receiver = v1;
  v79.super_class = type metadata accessor for SoundLevelView();
  v9 = objc_msgSendSuper2(&v79, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D6558E0();
  v11 = *a1;
  v10 = a1[1];
  v12 = qword_2A17AC090;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_29D655FB8(v11, v10, qword_2A17AD500);

  v14 = a1[2];
  v15 = a1[3];
  if (qword_2A17AC098 != -1)
  {
    v67 = a1[2];
    v68 = a1[3];
    swift_once();
    v15 = v68;
    v14 = v67;
  }

  v16 = sub_29D656164(v14, v15, qword_2A17AD508);
  sub_29D5ED310();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D661DA0;
  *(v17 + 32) = v13;
  *(v17 + 40) = v16;
  v18 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  sub_29D5DF448(0, &qword_2A17AD370, 0x29EDC7DA0);
  v78 = v13;
  v77 = v16;
  v19 = sub_29D660024();

  v20 = [v18 initWithArrangedSubviews_];

  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v9;
  v23 = [v22 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  LOBYTE(v23) = sub_29D660314();
  [v21 setAxis_];
  [v21 setSpacing_];
  v25 = *(v22 + OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView);
  *(v22 + OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView) = v21;
  v26 = v21;

  v27 = a1[4];
  v28 = a1[5];
  if (qword_2A17AC0A0 != -1)
  {
    v69 = a1[4];
    v70 = a1[5];
    swift_once();
    v28 = v70;
    v27 = v69;
  }

  v29 = sub_29D655FB8(v27, v28, qword_2A17AD510);
  v30 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v30 &off_29F3535B8 + 2];
  v31 = [objc_opt_self() opaqueSeparatorColor];
  [v30 setBackgroundColor_];

  [v30 setHidden_];
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29D6655C0;
  *(v32 + 32) = v26;
  v71 = OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView;
  v33 = v26;
  v75 = v26;
  v34 = *(v22 + OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView);
  v72 = a1;
  v35 = OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_meterLevelView;
  *(v32 + 40) = v34;
  *(v32 + 48) = v29;
  *(v32 + 56) = v30;
  v36 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  v37 = v34;
  v76 = v29;
  v73 = v30;
  v38 = sub_29D660024();

  v39 = [v36 initWithArrangedSubviews_];

  v40 = v39;
  [v40 &off_29F3535B8 + 2];
  [v40 setAxis_];
  [v40 setSpacing_];
  [v40 setCustomSpacing:v33 afterView:6.0];
  [v40 setCustomSpacing:*(v22 + v35) afterView:10.0];
  [v22 addSubview_];
  v74 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29D6655D0;
  v42 = [v40 topAnchor];
  v43 = [v22 layoutMarginsGuide];

  v44 = [v43 topAnchor];
  v45 = [v42 constraintEqualToAnchor_];

  *(v41 + 32) = v45;
  v46 = [v40 bottomAnchor];
  v47 = [v22 bottomAnchor];

  v48 = [v46 constraintEqualToAnchor_];
  *(v41 + 40) = v48;
  v49 = [v40 leadingAnchor];
  v50 = [v22 leadingAnchor];

  v51 = [v49 constraintEqualToAnchor_];
  *(v41 + 48) = v51;
  v52 = [v40 trailingAnchor];
  v53 = [v22 trailingAnchor];

  v54 = [v52 constraintEqualToAnchor_];
  *(v41 + 56) = v54;
  v55 = [*(v22 + v71) heightAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v41 + 64) = v56;
  v57 = [v73 heightAnchor];
  v58 = [v57 constraintEqualToConstant_];

  *(v41 + 72) = v58;
  v59 = [v73 leadingAnchor];
  v60 = [v40 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v41 + 80) = v61;
  v62 = [v73 trailingAnchor];
  v63 = [v40 trailingAnchor];

  v64 = [v62 constraintEqualToAnchor_];
  *(v41 + 88) = v64;
  sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
  v65 = sub_29D660024();

  [v74 activateConstraints_];

  sub_29D6562D4(v72);
  return v22;
}

double sub_29D6558E0()
{
  swift_getObjectType();
  sub_29D656498(0, &qword_2A17AD390, sub_29D6448C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D661D90;
  v1 = sub_29D65F424();
  v2 = MEMORY[0x29EDC7870];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_29D660334();
  sub_29D65EE94();

  return result;
}

id SoundLevelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SoundLevelView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SoundLevelView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D655B40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29D62F860(0);
    v1 = sub_29D660604();
  }

  else
  {
    v1 = MEMORY[0x29EDCA198];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_29D5E20A8((v24 + 8), v22);
    sub_29D5E20A8(v22, v24);
    sub_29D65FF64();
    sub_29D660724();
    sub_29D65FFA4();
    v13 = sub_29D660744();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
    sub_29D5E20A8(v24, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_29D655E04(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [v3 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v2 fontWithDescriptor:v6 size:0.0];

    v4 = v7;
LABEL_4:
    sub_29D656498(0, &qword_2A17AD528, sub_29D6563D4);
    inited = swift_initStackObject();
    v9 = *MEMORY[0x29EDC7638];
    *(inited + 32) = *MEMORY[0x29EDC7638];
    v10 = MEMORY[0x29EDC7640];
    *(inited + 16) = xmmword_29D661D20;
    v11 = *v10;
    *(inited + 40) = v4;
    *(inited + 48) = v11;
    v12 = objc_opt_self();
    v13 = v9;
    v14 = v4;
    v15 = v11;
    *(inited + 56) = [v12 labelColor];
    sub_29D5E2304(inited);
    swift_setDeallocating();
    sub_29D6563D4(0);
    swift_arrayDestroy();

    return;
  }

  __break(1u);
}

id sub_29D655FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v6) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v7];
  [v5 setNumberOfLines_];
  if (a2)
  {

    sub_29D655B40(a3);
    v8 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v9 = sub_29D65FF24();
    type metadata accessor for Key(0);
    sub_29D656440();
    v10 = sub_29D65FEA4();

    v11 = [v8 initWithString:v9 attributes:v10];

    [v5 setAttributedText_];
  }

  else
  {
    [v5 setHidden_];
    v11 = v5;
  }

  [v5 setAdjustsFontForContentSizeCategory_];
  return v5;
}

id sub_29D656164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1144750080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1144750080;
  [v4 setContentHuggingPriority:0 forAxis:v6];
  sub_29D655B40(a3);
  v7 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v8 = sub_29D65FF24();
  type metadata accessor for Key(0);
  sub_29D656440();
  v9 = sub_29D65FEA4();

  v10 = [v7 initWithString:v8 attributes:v9];

  [v4 setAttributedText_];
  [v4 setAdjustsFontForContentSizeCategory_];
  return v4;
}

__n128 sub_29D656304(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D656328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_29D656370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29D6563D4(uint64_t a1)
{
  if (!qword_2A17AD530)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AD530);
    }
  }
}

unint64_t sub_29D656440()
{
  result = qword_2A17AC188;
  if (!qword_2A17AC188)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC188);
  }

  return result;
}

void sub_29D656498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_29D6564EC(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *&a1[OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView];
  if (v2)
  {
    v6 = v2;
    v3 = [a1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = sub_29D660314();
    [v6 setAxis_];
  }

  else
  {
  }

  return result;
}

void *sub_29D65662C(uint64_t a1, char a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v51 = a6;
  v50 = a3;
  v10 = sub_29D65F314();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D65E0E4();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, v15, v18);
  v21 = (*(v16 + 88))(v20, v15);
  if (v21 == *MEMORY[0x29EDC1760])
  {
    v48 = v11;
    v49 = a5;
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v22 = swift_allocObject();
    v47 = xmmword_29D661D90;
    *(v22 + 16) = xmmword_29D661D90;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v22 + 32) = sub_29D65DA74();
    *(v22 + 40) = v23;
    if (a2)
    {
      if ((a4 & 1) != 0 || (v50 & 1) == 0)
      {
        v36 = sub_29D65DA74();
        v38 = v37;
        v24 = swift_allocObject();
        *(v24 + 16) = v47;
        *(v24 + 32) = v36;
        *(v24 + 40) = v38;
      }

      else
      {
        v24 = sub_29D6584F8(v49);
      }

      goto LABEL_19;
    }

    if (a4)
    {
      v24 = sub_29D658848(v49);
LABEL_19:
      v53 = v24;
      sub_29D65A1D8(v22);
      return v53;
    }

    sub_29D65F2E4();
    v39 = sub_29D65F2F4();
    v40 = sub_29D6601F4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v42;
      *v41 = 136446210;
      v43 = sub_29D6607A4();
      v45 = sub_29D64A1D0(v43, v44, &v53);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_29D5D7000, v39, v40, "[[%{public}s] Feature is active but no devices return active.", v41, 0xCu);
      sub_29D5DF1C4(v42);
      MEMORY[0x29ED63350](v42, -1, -1);
      MEMORY[0x29ED63350](v41, -1, -1);
    }

    (*(v48 + 8))(v14, v10);
  }

  else if (v21 == *MEMORY[0x29EDC1768])
  {
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v22 + 32) = sub_29D65DA74();
    *(v22 + 40) = v25;
    *(v22 + 48) = sub_29D65DA74();
    *(v22 + 56) = v26;
  }

  else if (v21 == *MEMORY[0x29EDC1758])
  {
    v27 = sub_29D65E1E4();
    v29 = v28;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v30 = MEMORY[0x29EDC99B0];
    v31 = MEMORY[0x29EDC9E90];
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v22 = swift_allocObject();
    v52 = xmmword_29D661D90;
    *(v22 + 16) = xmmword_29D661D90;
    sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v52;
    *(v32 + 56) = v30;
    *(v32 + 64) = sub_29D5E3BCC();
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    v33 = sub_29D65FF34();
    v35 = v34;

    *(v22 + 32) = v33;
    *(v22 + 40) = v35;
  }

  else
  {
    (*(v16 + 8))(v20, v15);
    return MEMORY[0x29EDCA190];
  }

  return v22;
}

uint64_t sub_29D656D2C@<X0>(uint64_t a3@<X8>)
{
  sub_29D658CF8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v15 - v6;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_29D660554();
  v8 = [objc_opt_self() internalPrivacySettingsURLString];
  v9 = sub_29D65FF64();
  v11 = v10;

  v15 = v9;
  v16 = v11;
  MEMORY[0x29ED62350](0xD00000000000001ELL, 0x800000029D665DB0);
  sub_29D6581CC(v7);

  v12 = sub_29D65DAF4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v7, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a3, v7, v12);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D656F08()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D656FC4()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;

  return sub_29D65E144();
}

uint64_t sub_29D657050()
{
  v119[1] = *MEMORY[0x29EDCA608];
  v0 = sub_29D65F314();
  v118 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v1);
  v3 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v111 - v6;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v111 - v10;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v111 - v14;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v111 - v18;
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = &v111 - v22;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v115 = &v111 - v26;
  v27 = objc_opt_self();
  v119[0] = 0;
  v28 = [v27 _setHeadphoneExposureMeasureLevelsEnabled_error_];
  v117 = v15;
  if (v28)
  {
    v29 = v119[0];
  }

  else
  {
    v116 = v23;
    v30 = v119[0];
    v31 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v32 = v31;
    v33 = sub_29D65F2F4();
    v34 = sub_29D660214();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v113 = v3;
      v36 = v35;
      v37 = swift_slowAlloc();
      v114 = v7;
      v112 = v37;
      v119[0] = v37;
      *v36 = 136446210;
      swift_getErrorValue();
      v38 = sub_29D6606D4();
      v40 = v11;
      v41 = v27;
      v42 = v0;
      v43 = sub_29D64A1D0(v38, v39, v119);

      *(v36 + 4) = v43;
      v0 = v42;
      v27 = v41;
      v11 = v40;
      _os_log_impl(&dword_29D5D7000, v33, v34, "Could not enable measure levels on phone. %{public}s", v36, 0xCu);
      v44 = v112;
      sub_29D5DF1C4(v112);
      v7 = v114;
      MEMORY[0x29ED63350](v44, -1, -1);
      v45 = v36;
      v3 = v113;
      MEMORY[0x29ED63350](v45, -1, -1);
    }

    else
    {
    }

    (*(v118 + 8))(v19, v0);
    v23 = v116;
  }

  v119[0] = 0;
  if ([v27 _setHeadphoneExposureNotificationsEnabled_error_])
  {
    v46 = v119[0];
    if ((sub_29D65E194() & 1) == 0)
    {
LABEL_9:
      sub_29D65F2E4();
      v47 = sub_29D65F2F4();
      v48 = sub_29D660214();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_29D5D7000, v47, v48, "Enabled phone settings for HAEN.", v49, 2u);
        MEMORY[0x29ED63350](v49, -1, -1);
      }

      v50 = *(v118 + 8);
      v51 = v23;
      return v50(v51, v0);
    }
  }

  else
  {
    v52 = v119[0];
    v53 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v54 = v53;
    v55 = sub_29D65F2F4();
    v56 = sub_29D660204();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v116 = v23;
      v58 = v57;
      v59 = swift_slowAlloc();
      v114 = v7;
      v113 = v3;
      v60 = v59;
      v119[0] = v59;
      *v58 = 136446210;
      swift_getErrorValue();
      v61 = sub_29D6606D4();
      v63 = v11;
      v64 = v27;
      v65 = v0;
      v66 = sub_29D64A1D0(v61, v62, v119);

      *(v58 + 4) = v66;
      v0 = v65;
      v27 = v64;
      v11 = v63;
      _os_log_impl(&dword_29D5D7000, v55, v56, "Could not enable notifications on phone. %{public}s", v58, 0xCu);
      sub_29D5DF1C4(v60);
      v67 = v60;
      v3 = v113;
      v7 = v114;
      MEMORY[0x29ED63350](v67, -1, -1);
      v68 = v58;
      v23 = v116;
      MEMORY[0x29ED63350](v68, -1, -1);
    }

    else
    {
    }

    (*(v118 + 8))(v117, v0);
    if ((sub_29D65E194() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![v27 isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    v81 = v115;
    sub_29D65F2E4();
    v82 = sub_29D65F2F4();
    v83 = sub_29D660214();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_29D5D7000, v82, v83, "Omitting enabling HAEN for unsupported watch.", v84, 2u);
      MEMORY[0x29ED63350](v84, -1, -1);
    }

    v50 = *(v118 + 8);
    v51 = v81;
    return v50(v51, v0);
  }

  v119[0] = 0;
  result = [v27 isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError_];
  v70 = v119[0];
  if (v119[0])
  {
    swift_willThrow();
    v71 = v70;
    sub_29D65F2E4();
    v72 = v71;
    v73 = sub_29D65F2F4();
    v74 = sub_29D660204();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v0;
      v77 = swift_slowAlloc();
      v119[0] = v77;
      *v75 = 136446210;
      swift_getErrorValue();
      v78 = sub_29D6606D4();
      v80 = sub_29D64A1D0(v78, v79, v119);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_29D5D7000, v73, v74, "Could not enable determine if notifications enabled on watch. %{public}s", v75, 0xCu);
      sub_29D5DF1C4(v77);
      MEMORY[0x29ED63350](v77, -1, -1);
      MEMORY[0x29ED63350](v75, -1, -1);

      return (*(v118 + 8))(v11, v76);
    }

    v50 = *(v118 + 8);
    v51 = v11;
    return v50(v51, v0);
  }

  if (result)
  {
    return result;
  }

  v119[0] = 0;
  if ([v27 _setHeadphoneExposureMeasureLevelsEnabledOnActiveWatch_error_])
  {
    v85 = v119[0];
  }

  else
  {
    v86 = v119[0];
    v87 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v88 = v87;
    v89 = sub_29D65F2F4();
    v90 = sub_29D660214();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v114 = v7;
      v93 = v3;
      v94 = v92;
      v119[0] = v92;
      *v91 = 136446210;
      swift_getErrorValue();
      v95 = sub_29D6606D4();
      v97 = v27;
      v98 = v0;
      v99 = sub_29D64A1D0(v95, v96, v119);

      *(v91 + 4) = v99;
      v0 = v98;
      v27 = v97;
      _os_log_impl(&dword_29D5D7000, v89, v90, "Could not enable measure levels on watch. %{public}s", v91, 0xCu);
      sub_29D5DF1C4(v94);
      v100 = v94;
      v3 = v93;
      MEMORY[0x29ED63350](v100, -1, -1);
      MEMORY[0x29ED63350](v91, -1, -1);

      (*(v118 + 8))(v114, v0);
    }

    else
    {

      (*(v118 + 8))(v7, v0);
    }
  }

  v119[0] = 0;
  if (![v27 _setHeadphoneExposureNotificationsEnabledOnActiveWatch_error_])
  {
    v117 = v119[0];
    v101 = v119[0];
    v102 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v103 = v102;
    v104 = sub_29D65F2F4();
    v105 = sub_29D660204();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v76 = v0;
      v107 = swift_slowAlloc();
      v119[0] = v107;
      *v106 = 136446210;
      swift_getErrorValue();
      v108 = sub_29D6606D4();
      v11 = v3;
      v110 = sub_29D64A1D0(v108, v109, v119);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_29D5D7000, v104, v105, "Could not enable notifications on watch. %{public}s", v106, 0xCu);
      sub_29D5DF1C4(v107);
      MEMORY[0x29ED63350](v107, -1, -1);
      MEMORY[0x29ED63350](v106, -1, -1);

      return (*(v118 + 8))(v11, v76);
    }

    v50 = *(v118 + 8);
    v51 = v3;
    return v50(v51, v0);
  }

  return MEMORY[0x2A1C710E0]();
}

uint64_t sub_29D657BD4(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v5 = sub_29D65DA74();
  v7 = sub_29D658B70(a2 & 1, v5, v6);

  return v7;
}

uint64_t sub_29D657D28(char a1)
{
  if (a1)
  {

    return sub_29D65E1E4();
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    return sub_29D65DA74();
  }
}

uint64_t sub_29D657DE4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];

  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
LABEL_11:
    sub_29D658D5C(&v5, &qword_2A17AC310, MEMORY[0x29EDCA178] + 8, sub_29D6124D4);
    return 0;
  }

  if ([v1 valueForProperty_])
  {
    sub_29D660474();
    sub_29D65EE94();
  }

  else
  {

    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D657F28(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v5 = sub_29D65DA74();
  v7 = sub_29D658B70(a2 & 1, v5, v6);

  return v7;
}

uint64_t sub_29D65807C@<X0>(uint64_t a3@<X8>)
{
  sub_29D658CF8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_29D6581CC(&v11 - v6);
  v8 = sub_29D65DAF4();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a3, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D6581CC@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_29D65F314();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D658CF8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v28 - v12;
  sub_29D65DAE4();
  v14 = sub_29D65DAF4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29D658D5C(v13, &qword_2A1A1E558, MEMORY[0x29EDB9B18], sub_29D658CF8);
    sub_29D65F2E4();
    v16 = sub_29D65F2F4();
    v17 = sub_29D660204();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = a4;
      v31 = v19;
      v20 = v19;
      *v18 = 136446210;
      v21 = sub_29D6607A4();
      v23 = sub_29D64A1D0(v21, v22, &v31);
      v29 = v5;
      v24 = v23;

      *(v18 + 4) = v24;
      _os_log_impl(&dword_29D5D7000, v16, v17, "[%{public}s]: Invalid URL.", v18, 0xCu);
      sub_29D5DF1C4(v20);
      v25 = v20;
      a4 = v30;
      MEMORY[0x29ED63350](v25, -1, -1);
      MEMORY[0x29ED63350](v18, -1, -1);

      (*(v6 + 8))(v9, v29);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v26 = 1;
  }

  else
  {
    (*(v15 + 32))(a4, v13, v14);
    v26 = 0;
  }

  return (*(v15 + 56))(a4, v26, 1, v14);
}

uint64_t sub_29D6584F8(uint64_t a1)
{
  v1 = sub_29D65F314();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDeviceDisplayName];
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D65FF64();
    v10 = v9;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v11 = MEMORY[0x29EDC99B0];
    v12 = MEMORY[0x29EDC9E90];
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v13 = swift_allocObject();
    v26 = xmmword_29D661D90;
    *(v13 + 16) = xmmword_29D661D90;
    sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v26;
    *(v14 + 56) = v11;
    *(v14 + 64) = sub_29D5E3BCC();
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
    v15 = sub_29D65FF34();
    v17 = v16;

    result = v13;
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
  }

  else
  {
    sub_29D65F2E4();
    v19 = sub_29D65F2F4();
    v20 = sub_29D6601F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136446210;
      v23 = sub_29D6607A4();
      v25 = sub_29D64A1D0(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_29D5D7000, v19, v20, "[[%{public}s] Could not fetch device display name.", v21, 0xCu);
      sub_29D5DF1C4(v22);
      MEMORY[0x29ED63350](v22, -1, -1);
      MEMORY[0x29ED63350](v21, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D658848(uint64_t a1)
{
  v1 = sub_29D65F314();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D657DE4();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    v10 = MEMORY[0x29EDC99B0];
    v11 = MEMORY[0x29EDC9E90];
    sub_29D6124D4(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v25 = xmmword_29D661D90;
    *(v12 + 16) = xmmword_29D661D90;
    sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v25;
    *(v13 + 56) = v10;
    *(v13 + 64) = sub_29D5E3BCC();
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    v14 = sub_29D65FF34();
    v16 = v15;

    result = v12;
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
  }

  else
  {
    sub_29D65F2E4();
    v18 = sub_29D65F2F4();
    v19 = sub_29D6601F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      v22 = sub_29D6607A4();
      v24 = sub_29D64A1D0(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_29D5D7000, v18, v19, "[[%{public}s] Could not fetch watch display name.", v20, 0xCu);
      sub_29D5DF1C4(v21);
      MEMORY[0x29ED63350](v21, -1, -1);
      MEMORY[0x29ED63350](v20, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return MEMORY[0x29EDCA190];
  }

  return result;
}

uint64_t sub_29D658B70(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
  }

  else
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  }

  v4 = sub_29D657D28(a1 & 1);
  v6 = v5;
  sub_29D658CF8(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D661D90;
  *(v7 + 56) = MEMORY[0x29EDC99B0];
  *(v7 + 64) = sub_29D5E3BCC();
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_29D65FF34();

  return v8;
}

void sub_29D658CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D658D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v5 = a4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29D658DD4()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin51HearingFeaturesInSettingsPromotionGeneratorPipeline_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29D658F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin51HearingFeaturesInSettingsPromotionGeneratorPipeline_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D658F98()
{
  swift_getObjectType();
  v0 = sub_29D65EDC4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v5 = sub_29D65F314();
  sub_29D5DE6EC(v5, qword_2A1A20C00);
  v6 = sub_29D65F2F4();
  v7 = sub_29D6601E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_29D6607A4();
    v12 = sub_29D64A1D0(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Did tap Hearing Features in Settings.", v8, 0xCu);
    sub_29D5DF1C4(v9);
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v13 = sub_29D65FF24();

  v14 = sub_29D65FF24();
  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = sub_29D65FF24();
  v17 = [objc_opt_self() actionWithTitle:v16 style:1 handler:0];

  [v15 addAction_];
  sub_29D65EF44();
  v18 = sub_29D65EDA4();
  (*(v1 + 8))(v4, v0);
  [v18 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_29D659314(uint64_t a1)
{
  v3 = sub_29D65EDC4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D65EF54();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D659414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingFeaturesInSettingsPromotionTileViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6594E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double AudiogramPDFOverlayContextPills.renderable.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_29D659AD4(v1);
  *(a1 + 24) = &type metadata for PDFHStackWithEqualWidth;
  *(a1 + 32) = sub_29D5F95B8();
  *a1 = v3;
  result = 10.0;
  *(a1 + 8) = xmmword_29D663F60;
  return result;
}

uint64_t sub_29D659580(uint64_t a1, __int16 a2, uint64_t a3, int a4, char a5)
{
  v57 = sub_29D65E634();
  v10 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D601BA0(a1, a2, a3, a4 & 0xFFFFFF, a5 & 1);
  v60 = &type metadata for AudiogramPDFOverlayContextPillTitleText;
  v61 = sub_29D602108();
  v59[0] = v14;
  v15 = sub_29D65E884();
  sub_29D5DF1C4(v59);
  if ((a2 & 0xFF00) != 0x200 && (a4 & 1) == 0)
  {
    v16 = HKLocalizedStringForHearingLevelClassification();
    if (v16)
    {
      v17 = v16;
      v56 = sub_29D65FF64();
      v19 = v18;

      LOBYTE(v59[0]) = a2 & 1;
      v58 = 0;
      v20 = sub_29D5E002C(a1, a2 & 0x101);
      if (v21)
      {
        v22 = v21;
        v53 = v20;
        v23 = sub_29D65E4A4();
        v24 = objc_opt_self();
        if (a5)
        {
          v25 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
        }

        else
        {
          v25 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
        }

        v26 = [v24 *v25];
        v27 = sub_29D65FBD4();
        v28 = sub_29D5ED3CC(v27, v23);
        v55 = v19;
        v29 = v28;

        v30 = *MEMORY[0x29EDC1F60];
        v54 = *(v10 + 104);
        v31 = v57;
        v54(v13, v30, v57);
        v32 = sub_29D65F124();
        v60 = v32;
        v61 = MEMORY[0x29EDC2C00];
        sub_29D5E3C20(v59);
        MEMORY[0x29ED614D0](v53, v22, v13, v29);
        v33 = sub_29D65E884();
        sub_29D5DF1C4(v59);
        v34 = sub_29D65E4B4();
        v35 = [objc_opt_self() *v25];
        v36 = sub_29D65FBD4();
        v37 = sub_29D5ED3CC(v36, v34);

        v54(v13, v30, v31);
        v60 = v32;
        v61 = MEMORY[0x29EDC2C00];
        sub_29D5E3C20(v59);
        MEMORY[0x29ED614D0](v56, v55, v13, v37);
        v38 = sub_29D65E884();
        sub_29D5DF1C4(v59);
        sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_29D661D20;
        *(v39 + 32) = v33;
        *(v39 + 40) = v38;
        MEMORY[0x29ED60BF0]();

        v40 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
        goto LABEL_13;
      }
    }
  }

  v41 = sub_29D65E4A4();
  v42 = objc_opt_self();
  v43 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a5 & 1) == 0)
  {
    v43 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v44 = [v42 *v43];
  v45 = sub_29D65FBD4();
  v46 = sub_29D5ED3CC(v45, v41);

  (*(v10 + 104))(v13, *MEMORY[0x29EDC1F60], v57);
  v60 = sub_29D65F124();
  v61 = MEMORY[0x29EDC2C00];
  sub_29D5E3C20(v59);
  MEMORY[0x29ED614D0](11565, 0xE200000000000000, v13, v46);
  v47 = sub_29D65E884();
  sub_29D5DF1C4(v59);
  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29D661D90;
  *(v48 + 32) = v47;
  MEMORY[0x29ED60BF0]();

  v40 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
LABEL_13:

  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_29D661D20;
  *(v49 + 32) = v15;
  *(v49 + 40) = v40;
  v50 = MEMORY[0x29ED60BF0]();

  return v50;
}

uint64_t sub_29D659AD4(uint64_t a1)
{
  if (sub_29D6229CC())
  {
    v2 = a1 + *(type metadata accessor for AudiogramPDFChartData(0) + 28);
    v3 = sub_29D659580(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24) | (*(v2 + 26) << 16), 1);
    v31 = &type metadata for PDFOverlayContextPill;
    v4 = sub_29D632AAC();
    v32 = v4;
    v5 = swift_allocObject();
    v30[0] = v5;
    *(v5 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    v6 = sub_29D602D64();
    *(v5 + 48) = v6;
    *(v5 + 16) = v3;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    sub_29D5ED468();
    v7 = objc_opt_self();
    v8 = [v7 systemPinkColor];
    v9 = [v8 colorWithAlphaComponent_];

    sub_29D65FBD4();
    *(v5 + 56) = sub_29D660344();
    v10 = sub_29D65E884();
    sub_29D5DF1C4(v30);
    v11 = sub_29D659580(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56) | (*(v2 + 58) << 16), 0);
    v31 = &type metadata for PDFOverlayContextPill;
    v32 = v4;
    v12 = swift_allocObject();
    v30[0] = v12;
    *(v12 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    *(v12 + 48) = v6;
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v13 = [v7 systemBlueColor];
  }

  else
  {
    v17 = a1 + *(type metadata accessor for AudiogramPDFChartData(0) + 28);
    v18 = sub_29D659580(*(v17 + 32), *(v17 + 40), *(v17 + 48), *(v17 + 56) | (*(v17 + 58) << 16), 0);
    v31 = &type metadata for PDFOverlayContextPill;
    v19 = sub_29D632AAC();
    v32 = v19;
    v20 = swift_allocObject();
    v30[0] = v20;
    *(v20 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    v21 = sub_29D602D64();
    *(v20 + 48) = v21;
    *(v20 + 16) = v18;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    sub_29D5ED468();
    v22 = objc_opt_self();
    v23 = [v22 systemBlueColor];
    v24 = [v23 colorWithAlphaComponent_];

    sub_29D65FBD4();
    *(v20 + 56) = sub_29D660344();
    v10 = sub_29D65E884();
    sub_29D5DF1C4(v30);
    v25 = sub_29D659580(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24) | (*(v17 + 26) << 16), 1);
    v31 = &type metadata for PDFOverlayContextPill;
    v32 = v19;
    v12 = swift_allocObject();
    v30[0] = v12;
    *(v12 + 40) = &type metadata for PDFVStackWithMinimumWidth;
    *(v12 + 48) = v21;
    *(v12 + 16) = v25;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    v13 = [v22 systemPinkColor];
  }

  v14 = [v13 colorWithAlphaComponent_];

  sub_29D65FBD4();
  *(v12 + 56) = sub_29D660344();
  v15 = sub_29D65E884();
  sub_29D5DF1C4(v30);
  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29D661D20;
  *(v16 + 32) = v10;
  *(v16 + 40) = v15;
  MEMORY[0x29ED60BF0]();

  v26 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  sub_29D65A110(0, &qword_2A17AC348, sub_29D65A0DC, MEMORY[0x29EDC9E90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29D661D90;
  *(v27 + 32) = v26;
  v28 = MEMORY[0x29ED60BF0]();

  return v28;
}

uint64_t type metadata accessor for AudiogramPDFOverlayContextPills(uint64_t a1)
{
  result = qword_2A17AD560;
  if (!qword_2A17AD560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D65A070(uint64_t a1)
{
  result = type metadata accessor for AudiogramPDFAudiogramChart.Model(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D65A110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D65A174()
{
  result = qword_2A17AC338;
  if (!qword_2A17AC338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC338);
  }

  return result;
}

void sub_29D65A1D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_29D65B330(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_29D65A2CC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_29D65B7D8(isUniquelyReferenced_nonNull_native, v11, 1, v3, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8]);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29D5DF210(0, &qword_2A17AC338, MEMORY[0x29EDC1DD8]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_29D65A3F0(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29D65B490(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC1638]);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_29D65DFE4();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_29D65A54C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_29D65B670(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29D5F3EFC();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_29D65A660(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29D6604B4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_29D6604B4();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_29D65BB04(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void HorizontalMeterView.init(model:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset] = 0;
  *&v1[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth] = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = &v1[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_model];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for HorizontalMeterView();
  v7 = v3;
  v8 = v4;
  v9 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *(a1 + 24);
  v11 = objc_allocWithZone(MEMORY[0x29EDC7DA0]);
  v12 = v9;
  v13 = [v11 initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = v8;
  [v13 setBackgroundColor_];
  v14 = [v13 layer];
  [v14 setCornerRadius_];

  v15 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = v7;
  [v15 setBackgroundColor_];
  v16 = [v15 layer];
  [v16 setCornerRadius_];

  [v12 addSubview_];
  [v12 addSubview_];
  if (*(a1 + 4) < 1.1755e-38)
  {
    [v15 setHidden_];
  }

  v17 = [v15 leadingAnchor];
  v18 = [v13 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  v20 = OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset;
  v21 = *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset];
  *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset] = v19;

  v22 = [v15 widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  v24 = OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth;
  v25 = *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth];
  *&v12[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth] = v23;

  sub_29D5F068C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D6657B0;
  v27 = [v15 leadingAnchor];
  v28 = [v13 leadingAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 32) = v29;
  v30 = [v15 trailingAnchor];
  v31 = [v13 trailingAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor_];

  *(inited + 40) = v32;
  v33 = [v15 heightAnchor];
  v34 = [v13 heightAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(inited + 48) = v35;
  v36 = *&v12[v20];
  if (v36)
  {
    *(inited + 56) = v36;
    v37 = *&v12[v24];
    if (v37)
    {
      *(inited + 64) = v37;
      sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
      v38 = v36;
      v39 = v37;
      sub_29D6602E4();
      v40 = objc_opt_self();
      sub_29D65A660(inited, sub_29D65BCAC);
      v41 = sub_29D660024();

      [v40 activateConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id HorizontalMeterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HorizontalMeterView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset) = 0;
  *(v0 + OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth) = 0;
  sub_29D660594();
  __break(1u);
}

Swift::Void __swiftcall HorizontalMeterView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HorizontalMeterView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 frame];
  Width = CGRectGetWidth(v7);
  v2 = *&v0[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth];
  if (v2)
  {
    v3 = Width;
    v4 = &v0[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_model];
    [v2 setConstant_];
    v5 = *&v0[OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset];
    if (v5)
    {
      [v5 setConstant_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id HorizontalMeterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HorizontalMeterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalMeterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_29D65B114(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29D65B120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29D65B168(uint64_t result, int a2, int a3)
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

char *sub_29D65B21C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D5F068C(0, &qword_2A17AD588, &type metadata for AudiogramPDFChartData.ChartPoint);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_29D65B330(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D5F068C(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D65B490(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D65C100(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29D65B670(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D65C100(0, &qword_2A1A1EA60, sub_29D5F3EFC);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D5F3EFC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29D65B7D8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_29D65C014(0, a5, a6, a7, MEMORY[0x29EDC9E90]);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D5DF210(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_29D65B940(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D65C07C(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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
    sub_29D65C014(0, &qword_2A1A1E548, &qword_2A1A1EA48, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29D65BB04(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29D6604B4();
LABEL_9:
  result = sub_29D660574();
  *v2 = result;
  return result;
}

void (*sub_29D65BBA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED62900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D65C1A4;
  }

  __break(1u);
  return result;
}

void (*sub_29D65BC24(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED62900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D65BCA4;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D65BCAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D6604B4();
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
      result = sub_29D6604B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D6425F8(0, &qword_2A17AD5A8, &qword_2A17AD388, 0x29EDBA008);
          sub_29D65C154(&qword_2A17AD5B0, &qword_2A17AD5A8, &qword_2A17AD388, 0x29EDBA008);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D65BBA4(v13, i, a3);
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
        sub_29D5DF448(0, &qword_2A17AD388, 0x29EDBA008);
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

uint64_t sub_29D65BE60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D6604B4();
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
      result = sub_29D6604B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D6425F8(0, &qword_2A17AD598, &qword_2A17AD590, 0x29EDC6288);
          sub_29D65C154(&qword_2A17AD5A0, &qword_2A17AD598, &qword_2A17AD590, 0x29EDC6288);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D65BC24(v13, i, a3);
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
        sub_29D5DF448(0, &qword_2A17AD590, 0x29EDC6288);
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

void sub_29D65C014(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D5DF210(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D65C07C(uint64_t a1)
{
  if (!qword_2A1A1DDA0)
  {
    sub_29D65C014(255, &qword_2A1A1E548, &qword_2A1A1EA48, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9C68]);
    v1 = sub_29D660684();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1DDA0);
    }
  }
}

void sub_29D65C100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D65C154(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6425F8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D65C1A8(uint64_t a1)
{
  v2 = sub_29D65E0E4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x29EDC1760])
  {
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A20BF8;
    v10 = [qword_2A1A20BF8 localizedNoiseThresholdValue_];
    v11 = sub_29D65FF64();
    v13 = v12;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D65D88C(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D661D90;
    *(v14 + 56) = MEMORY[0x29EDC99B0];
    v15 = sub_29D5E3BCC();
    *(v14 + 64) = v15;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v16 = sub_29D65FF34();
    *&v47 = v17;

    v18 = [v9 noiseThresholdMinutesThreshold];
    sub_29D65DA74();
    v19 = swift_allocObject();
    v46 = xmmword_29D661D20;
    *(v19 + 16) = xmmword_29D661D20;
    v20 = MEMORY[0x29EDC99B0];
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    *(v19 + 64) = v15;
    v21 = MEMORY[0x29EDC9BA8];
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    v22 = MEMORY[0x29EDC9C10];
    *(v19 + 96) = v21;
    *(v19 + 104) = v22;
    *(v19 + 72) = v18;
    v23 = sub_29D65FF34();
    v25 = v24;

    sub_29D5F068C(0, &qword_2A1A1E678, v20);
    result = swift_allocObject();
    *(result + 16) = v46;
    v27 = v47;
    *(result + 32) = v16;
    *(result + 40) = v27;
    *(result + 48) = v23;
    *(result + 56) = v25;
    return result;
  }

  if (v8 == *MEMORY[0x29EDC1768])
  {
    sub_29D5F068C(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v28 + 32) = sub_29D65DA74();
    *(v28 + 40) = v29;
    v30 = sub_29D65DA74();
    result = v28;
    *(v28 + 48) = v30;
    *(v28 + 56) = v31;
    return result;
  }

  if (v8 != *MEMORY[0x29EDC1758])
  {
    if (v8 != *MEMORY[0x29EDC1750])
    {
      (*(v3 + 8))(v7, v2);
      return MEMORY[0x29EDCA190];
    }

    v41 = sub_29D65E1B4();
    sub_29D5F068C(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_29D661D90;
    if (v41)
    {
      v43 = v42;
      if (qword_2A1A1EAA0 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v43 = v42;
      if (qword_2A1A1EAA0 == -1)
      {
LABEL_21:
        v44 = sub_29D65DA74();
        result = v43;
        *(v43 + 32) = v44;
        *(v43 + 40) = v45;
        return result;
      }
    }

    swift_once();
    goto LABEL_21;
  }

  v32 = sub_29D65E1E4();
  v34 = v33;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v35 = MEMORY[0x29EDC99B0];
  sub_29D5F068C(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0]);
  v36 = swift_allocObject();
  v47 = xmmword_29D661D90;
  *(v36 + 16) = xmmword_29D661D90;
  sub_29D65D88C(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  *(v37 + 56) = v35;
  *(v37 + 64) = sub_29D5E3BCC();
  *(v37 + 32) = v32;
  *(v37 + 40) = v34;
  v38 = sub_29D65FF34();
  v40 = v39;

  result = v36;
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  return result;
}

uint64_t sub_29D65C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_29D65E214();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65DD54();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65D88C(0, &qword_2A1A1E530, MEMORY[0x29EDC1948], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29D65E274();
  v21 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v47 = sub_29D65D6A0();
  v48 = v25;
  v26 = v24;
  sub_29D65D054(a2, v24);
  v27 = sub_29D65E0E4();
  v28 = *(*(v27 - 8) + 16);
  v50 = a2;
  v28(v20, a2, v27);
  sub_29D65D944();
  swift_allocObject();
  sub_29D65D934();
  sub_29D65D740(&qword_2A17AC500, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData, &unk_29D66250C);
  v55 = sub_29D65D924();
  v30 = v29;
  sub_29D5F80C4(v20);

  sub_29D65EE64();
  type metadata accessor for NoiseNotificationsFeatureStatusActionHandler(0);
  v31 = *(v21 + 16);
  v46 = v26;
  v32 = v26;
  v33 = v56;
  v31(v16, v32, v56);
  (*(v21 + 56))(v16, 0, 1, v33);
  (*(v9 + 104))(v12, *MEMORY[0x29EDC36F0], v8);
  v34 = sub_29D65DEF4();
  sub_29D65D740(&qword_2A17AC4E8, type metadata accessor for NoiseNotificationsFeatureStatusActionHandler, &unk_29D662440);
  sub_29D65DDD4();

  (*(v9 + 8))(v12, v8);
  sub_29D65D788(v16, &qword_2A1A1E530, MEMORY[0x29EDC1948]);
  v35 = v46;
  sub_29D65E264();
  sub_29D65DE24();
  sub_29D5F068C(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 32) = sub_29D65E224();
  *(inited + 40) = v37;
  sub_29D63C9F8(inited);
  swift_setDeallocating();
  sub_29D5E606C(inited + 32);
  sub_29D65DE54();
  v39 = v51;
  v38 = v52;
  v40 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x29EDC18C0], v53);
  sub_29D65E204();
  (*(v38 + 8))(v39, v40);
  sub_29D65DE64();
  sub_29D5F068C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(v41 + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(v41 + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CB80(v41);
  v43 = v42;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D5F08A0(v43);

  sub_29D65DE34();
  sub_29D65DE14();
  sub_29D5E60C0(v55, v30);
  return (*(v21 + 8))(v35, v56);
}

uint64_t sub_29D65D054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D65D88C(0, &qword_2A1A1E538, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v50 = v42 - v6;
  v7 = sub_29D65E0D4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65E0E4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v49 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = v42 - v18;
  sub_29D65D88C(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], v3);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v48 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v26 = v42 - v25;
  sub_29D65C1A8(a1);
  v27 = sub_29D65E1D4();
  v46 = v28;
  v47 = v27;
  v45 = *(v13 + 16);
  v45(v19, a1, v12);
  v29 = (*(v13 + 88))(v19, v12);
  if (v29 == *MEMORY[0x29EDC1758])
  {
    v30 = sub_29D65E1E4();
    v43 = v31;
    v44 = v30;
    (*(v8 + 104))(v11, *MEMORY[0x29EDC1720], v7);
    sub_29D65E0B4();
    (*(v8 + 8))(v11, v7);
  }

  else if (v29 == *MEMORY[0x29EDC1750])
  {
    v32 = sub_29D65E1C4();
    v43 = v33;
    v44 = v32;
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v34 = [qword_2A1A20BF8 noiseThresholdFooterLinkURL];
    sub_29D65DAD4();

    v35 = sub_29D65DAF4();
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
  }

  else
  {
    v36 = sub_29D65DAF4();
    (*(*(v36 - 8) + 56))(v26, 1, 1, v36);
    (*(v13 + 8))(v19, v12);
    v43 = 0;
    v44 = 0;
  }

  v37 = sub_29D65E1F4();
  v42[1] = v38;
  v42[2] = v37;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v45(v49, a1, v12);
  v39 = v50;
  sub_29D65E124();
  v40 = sub_29D65E154();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_29D65E1A4();
  sub_29D65D7F8(v26, v48);
  sub_29D65E254();
  return sub_29D65D788(v26, &qword_2A1A1E558, MEMORY[0x29EDB9B18]);
}

unint64_t sub_29D65D6A0()
{
  sub_29D660554();

  v0 = sub_29D65DEF4();
  v1 = sub_29D65DD74();
  v3 = v2;

  MEMORY[0x29ED62350](v1, v3);

  return 0xD00000000000003DLL;
}

uint64_t sub_29D65D740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D65D788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D65D88C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D65D7F8(uint64_t a1, uint64_t a2)
{
  sub_29D65D88C(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D65D88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}