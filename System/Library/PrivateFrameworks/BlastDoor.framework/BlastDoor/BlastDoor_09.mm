__n128 sub_21409DC6C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 32));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*sub_21409DCE4(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage(0) + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409EFF0;
}

uint64_t sub_21409DD90()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage(0) + 36);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21409DE20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21409DEBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BasicTextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409DF84(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage(0) + 36);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21409E0D4(uint64_t *a1))(uint64_t **, char)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BasicTextMessage(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_21409E1C4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409E2A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage(0) + 36);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 sub_21409E338(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 36));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*sub_21409E3B0(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for BasicTextMessage(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_21409E48C(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21409E548(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21409E604(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_21409E694()
{
  type metadata accessor for BasicTextMessage(0);
}

uint64_t sub_21409E6C8(uint64_t a1)
{
  v3 = *(type metadata accessor for BasicTextMessage(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21409E77C(uint64_t a1, char a2)
{
  result = type metadata accessor for BasicTextMessage(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

unint64_t sub_21409E8A8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_213FB7994;
  v5[3] = 0;
  v5[4] = 1024;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21409EA10()
{
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000010, 0x80000002146F25C0);
  MEMORY[0x2160545D0](0x6570797462757320, 0xEA0000000000203ALL);
  type metadata accessor for BasicTextMessage(0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0x7461646174656D20, 0xEB00000000203A61);
  type metadata accessor for Metadata(0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](15913, 0xE200000000000000);
  return 0;
}

unint64_t sub_21409EB64(uint64_t a1)
{
  *(a1 + 8) = sub_21409EB94();
  result = sub_21409EBE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409EB94()
{
  result = qword_27C905380;
  if (!qword_27C905380)
  {
    result = swift_getWitnessTable(byte_214703050, &type metadata for BasicTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C905380);
  }

  return result;
}

unint64_t sub_21409EBE8()
{
  result = qword_27C905388;
  if (!qword_27C905388)
  {
    result = swift_getWitnessTable(aAm_2, &type metadata for BasicTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C905388);
  }

  return result;
}

uint64_t sub_21409EC3C(uint64_t a1)
{
  *(a1 + 8) = sub_21409ECA4(&qword_27C905390, asc_2146F78E0);
  result = sub_21409ECA4(&qword_27C905398, byte_2146F7908);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21409ECA4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for BasicTextMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21409ED10(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_21409EE88(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050, type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BB8, MEMORY[0x277D83E88]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B34BC8, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_21409EE88(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_280B2E320, MEMORY[0x277D84D38]);
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

void sub_21409EE88(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor12BasicTapBackV18MessageSummaryInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_21409EF1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 169))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 168);
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

uint64_t sub_21409EF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
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
    *(result + 168) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 168) = -a2;
    }
  }

  return result;
}

uint64_t sub_21409EFF8(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  sub_2146DA458();
  v10 = swift_allocBox();
  (*(v3 + 16))(v6, v1, a1);
  sub_2146DA438();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v10;
  return sub_2146D9AA8();
}

uint64_t sub_21409F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = sub_2146DA458();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21409F1CC, 0, 0);
}

uint64_t sub_21409F1CC()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21409F27C;
  v2 = v0[6];
  v3 = v0[5];

  return MEMORY[0x2822007E0](v3, v2);
}

uint64_t sub_21409F27C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21409F3B8, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21409F3B8()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21409F41C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21409A9C0;

  return sub_21409F140(a1, v6, v4, v5, v7);
}

uint64_t MBDChipList.init(payloadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2146D85C8();
  swift_allocObject();
  sub_2146D85B8();
  sub_21409F598();
  sub_2146D8598();

  result = sub_213FB54FC(a1, a2);
  if (!v3)
  {
    *a3 = v8;
    *(a3 + 8) = v9;
  }

  return result;
}

unint64_t sub_21409F598()
{
  result = qword_27C9053A0;
  if (!qword_27C9053A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipList, &type metadata for MBDChipList, v0, v1);
    atomic_store(result, &qword_27C9053A0);
  }

  return result;
}

unint64_t sub_21409F5EC(uint64_t a1)
{
  *(a1 + 8) = sub_21409F61C();
  result = sub_21409F670();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409F61C()
{
  result = qword_27C9053A8;
  if (!qword_27C9053A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipList, &type metadata for MBDChipList, v0, v1);
    atomic_store(result, &qword_27C9053A8);
  }

  return result;
}

unint64_t sub_21409F670()
{
  result = qword_27C9053B0;
  if (!qword_27C9053B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipList, &type metadata for MBDChipList, v0, v1);
    atomic_store(result, &qword_27C9053B0);
  }

  return result;
}

uint64_t sub_21409F6C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_21409F70C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21409F75C@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

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

uint64_t sub_21409F7C0()
{
  if (*v0)
  {
    return 0x6B636F6C726961;
  }

  else
  {
    return 0x6F6F647473616C62;
  }
}

uint64_t sub_21409F800(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B636F6C726961;
  }

  else
  {
    v3 = 0x6F6F647473616C62;
  }

  if (v2)
  {
    v4 = 0xE900000000000072;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B636F6C726961;
  }

  else
  {
    v5 = 0x6F6F647473616C62;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21409F8AC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409F934(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_21409F9A8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409FA2C@<X0>(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21409FA8C(uint64_t *a1@<X8>)
{
  v2 = 0x6F6F647473616C62;
  if (*v1)
  {
    v2 = 0x6B636F6C726961;
  }

  v3 = 0xE900000000000072;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21409FAD0(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v24 = MEMORY[0x277D84F90];
    sub_21409FDD8(0, v2, 0);
    v5 = v24;
    v6 = a1 + 40;
    do
    {
      v7 = sub_2146D9628();

      v8 = strdup((v7 + 32));

      v10 = *(v24 + 16);
      v9 = *(v24 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21409FDD8((v9 > 1), v10 + 1, 1);
      }

      *(v24 + 16) = v10 + 1;
      *(v24 + 8 * v10 + 32) = v8;
      v6 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2140958CC(0, *(v5 + 2) + 1, 1, v5);
  }

  v12 = *(v5 + 2);
  v11 = *(v5 + 3);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v5 = sub_2140958CC((v11 > 1), v12 + 1, 1, v5);
  }

  *(v5 + 2) = v13;
  v14 = (v5 + 32);
  *&v5[8 * v12 + 32] = 0;
  sub_21409FDA8(0, v12 + 1, 0);
  v15 = v3;
  v16 = *(v3 + 16);
  v17 = 32;
  do
  {
    v18 = *&v5[v17];
    v19 = *(v15 + 24);
    if (v16 >= v19 >> 1)
    {
      sub_21409FDA8((v19 > 1), v16 + 1, 1);
    }

    *(v15 + 16) = v16 + 1;
    *(v15 + 8 * v16 + 32) = v18;
    v17 += 8;
    ++v16;
    --v13;
  }

  while (v13);
  a2(v15);

  for (i = *(v5 + 2); i; --i)
  {
    v21 = *v14++;
    free(v21);
  }
}

char *sub_21409FD08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21409FD28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FD48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A056C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FD68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A067C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FD88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FDA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A088C(a1, a2, a3, *v3, &qword_27C905490, &qword_2146F2B10);
  *v3 = result;
  return result;
}

char *sub_21409FDD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A088C(a1, a2, a3, *v3, &qword_27C905220, &qword_2146F1910);
  *v3 = result;
  return result;
}

void *sub_21409FE08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905488, &qword_2146F2B08, _s5CodecVMa);
  *v3 = result;
  return result;
}

char *sub_21409FE4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FE6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0AA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21409FE8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0BA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21409FEAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905460, &qword_2146F2AE0, type metadata accessor for LinkPresentation.AudioMetadata);
  *v3 = result;
  return result;
}

void *sub_21409FEF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905458, &qword_2146F2AD8, type metadata accessor for LinkPresentation.VideoMetadata);
  *v3 = result;
  return result;
}

void *sub_21409FF34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905448, &qword_2146F2AC8, type metadata accessor for LinkPresentation.IconMetadata);
  *v3 = result;
  return result;
}

void *sub_21409FF78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905440, &qword_2146F2AC0, type metadata accessor for LinkPresentation.ARAssetMetadata);
  *v3 = result;
  return result;
}

void *sub_21409FFBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905450, &qword_2146F2AD0, type metadata accessor for LinkPresentation.ImageMetadata);
  *v3 = result;
  return result;
}

char *sub_2140A0000(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0020(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A0040(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0EBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A0060(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A0FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0080(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1138(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A00A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A00C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A00E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053D0, &qword_2146F2A50, type metadata accessor for CSDMHandleProto);
  *v3 = result;
  return result;
}

char *sub_2140A0124(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A14AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0144(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A15AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0164(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A16D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2140A0184(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A17FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A01A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053D8, &qword_2146F2A58, type metadata accessor for CSDMConversationInvitationPreferenceProto);
  *v3 = result;
  return result;
}

void *sub_2140A01E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053E0, &qword_2146F2A60, type metadata accessor for CSDMConversationActivitySessionProto);
  *v3 = result;
  return result;
}

void *sub_2140A022C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053E8, &qword_2146F2A68, type metadata accessor for CSDMConversationMemberProto);
  *v3 = result;
  return result;
}

void *sub_2140A0270(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C9053F0, &qword_2146F2A70, type metadata accessor for CSDMConversationParticipantProto);
  *v3 = result;
  return result;
}

char *sub_2140A02B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2140A02D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2140A1A40(a1, a2, a3, *v3, &qword_27C905430, &qword_2146F2AB0, type metadata accessor for NearbyGroup_Member);
  *v3 = result;
  return result;
}

char *sub_2140A0318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2140A0424(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905478, &qword_2146F2AF8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905480, &qword_2146F2B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A056C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905258, &qword_2146F1948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A067C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9053C8, &qword_2146F2A48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2140A0780(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051D0, &qword_2146F18C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A088C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2140A0988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905470, &qword_2146F2AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
  }

  return v10;
}

char *sub_2140A0AA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051F8, &qword_2146F18E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_2140A0BA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905200, &qword_2146F18F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2140A0CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905438, &qword_2146F2AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A0DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905468, &qword_2146F2AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2140A0EBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905228, &qword_2146F1918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2140A0FF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905400, &qword_2146F2A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9053F8, &qword_2146F2A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905408, &qword_2146F2A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A14AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905418, &qword_2146F2A98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2140A15AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905420, &qword_2146F2AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 912);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[912 * v8])
    {
      memmove(v12, v13, 912 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A16D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905410, &qword_2146F2A90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 496);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[496 * v8])
    {
      memmove(v12, v13, 496 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A17FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905428, &qword_2146F2AA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[368 * v8])
    {
      memmove(v12, v13, 368 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140A1924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9053C0, &qword_2146F2A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2140A1A40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_2140A1C1C()
{
  v0 = getpid();
  if (_bd_sandbox_check(v0) != 1)
  {
    goto LABEL_6;
  }

  result = _bd_sandbox_enable_state_flag();
  if ((result & 1) == 0)
  {
    v2 = sub_2146D9BA8();
    sub_214063750();
    v3 = sub_2146D9D18();
    sub_2146D91D8(v2, &dword_213FAF000, v3, "BlastDoor failed to enter post launch sandbox state", 51, 2, MEMORY[0x277D84F90]);

LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_2140A1D40()
{
  result = qword_27C9053B8;
  if (!qword_27C9053B8)
  {
    result = swift_getWitnessTable(aAw, &type metadata for SandboxID, v0, v1);
    atomic_store(result, &qword_27C9053B8);
  }

  return result;
}

uint64_t _bd_sandbox_enable_state_flag()
{
  v11 = *MEMORY[0x277D85DE8];
  *task_info_out = 0u;
  v9 = 0u;
  task_info_outCnt = 8;
  if (!task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt))
  {
    *buf = *task_info_out;
    *&buf[16] = v9;
    if (sandbox_enable_state_flag())
    {
      return 1;
    }

    v1 = SandboxLogHandle_onceToken;
    v2 = &__block_literal_global_0;
    if (v1 != -1)
    {
      dispatch_once(&SandboxLogHandle_onceToken, &__block_literal_global_0);
    }

    v3 = SandboxLogHandle_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"blastdoor-post-launch"];
      v5 = v4;
      v6 = *__error();
      *buf = 138543618;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_213FAF000, v3, OS_LOG_TYPE_ERROR, "sandbox_enable_state_flag failed to enter %{public}@ with errno(%{public}d)", buf, 0x12u);
    }
  }

  return 0;
}

uint64_t __SandboxLogHandle_block_invoke()
{
  SandboxLogHandle_log = os_log_create("com.apple.Messages.blastdoor", "Sandbox");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2140A1F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

__n128 __swift_memcpy36_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2140A2060(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2140A2080(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 36) = v3;
  return result;
}

unint64_t sub_2140A20F0()
{
  v1 = *v0;
  v2 = 0x6D694C656D617266;
  v3 = 0x536D726F66696E75;
  v4 = 0x655073656D617266;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2140A21CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2140A5BA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140A21F4(uint64_t a1)
{
  v2 = sub_2140A24A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A2230(uint64_t a1)
{
  v2 = sub_2140A24A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.MultiFrameConstraints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905498, &qword_2146F2BA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = v8;
  v12 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10[3] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A24A4();
  sub_2146DAA28();
  v20 = 0;
  sub_2146DA368();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = 1;
  sub_2146DA368();
  v18 = 2;
  sub_2146DA368();
  v17 = 3;
  sub_2146DA338();
  v16 = 4;
  sub_2146DA368();
  v15 = 5;
  sub_2146DA338();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2140A24A4()
{
  result = qword_27C9054A0;
  if (!qword_27C9054A0)
  {
    result = swift_getWitnessTable(byte_2146F3584, &type metadata for VideoPreview.MultiFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9054A0);
  }

  return result;
}

uint64_t VideoPreview.MultiFrameConstraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054A8, &qword_2146F2BA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A24A4();
  sub_2146DAA08();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_2146DA1A8();
    v22 = 1;
    v10 = sub_2146DA1A8();
    v21 = 2;
    v17 = sub_2146DA1A8();
    v20 = 3;
    v16 = sub_2146DA178();
    v19 = 4;
    v15 = sub_2146DA1A8();
    v18 = 5;
    HIDWORD(v14) = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    v12 = v16 & 1;
    v13 = BYTE4(v14) & 1;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v17;
    *(a2 + 24) = v12;
    *(a2 + 32) = v15;
    *(a2 + 40) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140A2798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2140A282C(uint64_t a1)
{
  v2 = sub_2140A29DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A2868(uint64_t a1)
{
  v2 = sub_2140A29DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.SingleFrameConstraints.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054B0, &qword_2146F2BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A29DC();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2140A29DC()
{
  result = qword_27C9054B8;
  if (!qword_27C9054B8)
  {
    result = swift_getWitnessTable(byte_2146F3534, &type metadata for VideoPreview.SingleFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9054B8);
  }

  return result;
}

uint64_t VideoPreview.SingleFrameConstraints.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054C0, &qword_2146F2BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A29DC();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA1A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140A2B9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054B0, &qword_2146F2BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A29DC();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v3 + 8))(v5, v2);
}

__n128 VideoPreview.Constraints.frameConstraints.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_2140A2D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000021478C760 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2140A2DA0(uint64_t a1)
{
  v2 = sub_2140A2F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A2DDC(uint64_t a1)
{
  v2 = sub_2140A2F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.Constraints.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054C8, &qword_2146F2BC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A2F7C();
  sub_2146DAA28();
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  v13 = v8;
  v14 = v9;
  sub_2140A2FD0();
  sub_2146DA388();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2140A2F7C()
{
  result = qword_27C9054D0;
  if (!qword_27C9054D0)
  {
    result = swift_getWitnessTable(aE_94, &type metadata for VideoPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9054D0);
  }

  return result;
}

unint64_t sub_2140A2FD0()
{
  result = qword_27C9054D8;
  if (!qword_27C9054D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.FrameConstraints, &type metadata for VideoPreview.FrameConstraints, v0, v1);
    atomic_store(result, &qword_27C9054D8);
  }

  return result;
}

uint64_t VideoPreview.Constraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054E0, &qword_2146F2BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A2F7C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2140A31A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v15;
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2140A31A4()
{
  result = qword_27C9054E8;
  if (!qword_27C9054E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.FrameConstraints, &type metadata for VideoPreview.FrameConstraints, v0, v1);
    atomic_store(result, &qword_27C9054E8);
  }

  return result;
}

uint64_t VideoPreview.VideoFormat.formatName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VideoPreview.VideoFormat.codec.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

BlastDoor::VideoPreview::VideoFormat __swiftcall VideoPreview.VideoFormat.init(formatName:codec:)(Swift::String_optional formatName, Swift::String_optional codec)
{
  *v2 = formatName;
  v2[1] = codec;
  result.codec = codec;
  result.formatName = formatName;
  return result;
}

uint64_t sub_2140A32AC(uint64_t a1, uint64_t a2)
{
  v4 = _s5CodecVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2140A3310()
{
  result = qword_27C9054F8;
  if (!qword_27C9054F8)
  {
    v3 = sub_2146D9C68();
    result = swift_getWitnessTable(MEMORY[0x277D850F8], v3, v0, v1);
    atomic_store(result, &qword_27C9054F8);
  }

  return result;
}

uint64_t sub_2140A3368(uint64_t a1)
{
  v2 = _s5CodecVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140A33C4(uint64_t a1, uint64_t a2)
{
  v4 = _s5CodecVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140A3440@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v63 = a2;
  v54 = a3;
  v4 = sub_2146D9C88();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2146D9C68();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = _s5CodecVMa(0);
  v8 = *(v53 - 8);
  v9 = MEMORY[0x28223BE20](v53);
  v60 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9054F0, &unk_2146F2BD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = &v48 - v18;
  MEMORY[0x28223BE20](v17);
  v52 = &v48 - v19;
  result = *(a1 + 8);
  v59 = *(result + 16);
  if (v59)
  {
    v21 = 0;
    v56 = (v6 + 8);
    v22 = MEMORY[0x277D84F90];
    v55 = v8;
    v57 = result;
    v58 = v16;
    v23 = v61;
    while (v21 < *(result + 16))
    {
      v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v25 = *(v8 + 72);
      v26 = sub_2140A32AC(result + v24 + v25 * v21, v12);
      v63(v26);
      sub_2140A3310();
      v27 = v62;
      sub_2146D97C8();
      sub_2146D97C8();
      (*v56)(v23, v27);
      if (v65 == v64)
      {
        sub_2140A33C4(v12, v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21409FE08(0, *(v22 + 16) + 1, 1);
          v22 = v66;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21409FE08((v29 > 1), v30 + 1, 1);
          v22 = v66;
        }

        *(v22 + 16) = v30 + 1;
        sub_2140A33C4(v60, v22 + v24 + v30 * v25);
        v8 = v55;
      }

      else
      {
        sub_2140A3368(v12);
      }

      ++v21;
      v16 = v58;
      result = v57;
      if (v59 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
LABEL_13:

    if (*(v22 + 16))
    {
      v31 = v52;
      sub_2140A32AC(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v52);
      v32 = 0;
    }

    else
    {
      v32 = 1;
      v31 = v52;
    }

    v33 = v53;

    (*(v8 + 56))(v31, v32, 1, v33);
    v34 = v51;
    sub_213FB2E54(v31, v51, &qword_27C9054F0, &unk_2146F2BD0);
    v35 = *(v8 + 48);
    if (v35(v34, 1, v33) == 1)
    {
      sub_213FB2DF4(v34, &qword_27C9054F0, &unk_2146F2BD0);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v38 = (v34 + *(v33 + 20));
      v36 = *v38;
      v37 = v38[1];

      sub_2140A3368(v34);
    }

    v39 = v54;
    sub_213FB2E54(v31, v16, &qword_27C9054F0, &unk_2146F2BD0);
    if (v35(v16, 1, v33) == 1)
    {
      sub_213FB2DF4(v31, &qword_27C9054F0, &unk_2146F2BD0);
      result = sub_213FB2DF4(v16, &qword_27C9054F0, &unk_2146F2BD0);
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v43 = v48;
      v42 = v49;
      v44 = &v16[*(v33 + 24)];
      v45 = v50;
      (*(v49 + 16))(v48, v44, v50);
      sub_2140A3368(v16);
      v46 = sub_2146D9C78();
      (*(v42 + 8))(v43, v45);
      v40 = sub_21445D60C(v46);
      v41 = v47;
      result = sub_213FB2DF4(v31, &qword_27C9054F0, &unk_2146F2BD0);
    }

    *v39 = v36;
    v39[1] = v37;
    v39[2] = v40;
    v39[3] = v41;
  }

  return result;
}

uint64_t VideoPreview.image.getter@<X0>(uint64_t a1@<X8>)
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

__n128 VideoPreview.image.setter(uint64_t a1)
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

void (*VideoPreview.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
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

void sub_2140A3C24(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 62);
    sub_21407CF14(*a1, (v2 + 248));
    sub_213FB2DF4(v3, &qword_27C904858, &qword_214736F00);
    v4 = *(v2 + 264);
    v5 = *(v2 + 296);
    v6 = *(v2 + 248);
    *(v3 + 32) = *(v2 + 280);
    *(v3 + 48) = v5;
    *v3 = v6;
    *(v3 + 16) = v4;
    v7 = *(v2 + 360);
    v9 = *(v2 + 312);
    v8 = *(v2 + 328);
    *(v3 + 96) = *(v2 + 344);
    *(v3 + 112) = v7;
    *(v3 + 64) = v9;
    *(v3 + 80) = v8;
    v10 = *(v2 + 424);
    v12 = *(v2 + 376);
    v11 = *(v2 + 392);
    *(v3 + 160) = *(v2 + 408);
    *(v3 + 176) = v10;
    *(v3 + 128) = v12;
    *(v3 + 144) = v11;
    v14 = *(v2 + 456);
    v13 = *(v2 + 472);
    v15 = *(v2 + 440);
    *(v3 + 240) = *(v2 + 61);
    *(v3 + 208) = v14;
    *(v3 + 224) = v13;
    *(v3 + 192) = v15;
    sub_21406D2CC(v2);
  }

  else
  {
    v16 = *(v2 + 62);
    sub_213FB2DF4(v16, &qword_27C904858, &qword_214736F00);
    v17 = *(v2 + 3);
    v19 = *v2;
    v18 = *(v2 + 1);
    *(v16 + 32) = *(v2 + 2);
    *(v16 + 48) = v17;
    *v16 = v19;
    *(v16 + 16) = v18;
    v20 = *(v2 + 7);
    v22 = *(v2 + 4);
    v21 = *(v2 + 5);
    *(v16 + 96) = *(v2 + 6);
    *(v16 + 112) = v20;
    *(v16 + 64) = v22;
    *(v16 + 80) = v21;
    v23 = *(v2 + 11);
    v25 = *(v2 + 8);
    v24 = *(v2 + 9);
    *(v16 + 160) = *(v2 + 10);
    *(v16 + 176) = v23;
    *(v16 + 128) = v25;
    *(v16 + 144) = v24;
    v27 = *(v2 + 13);
    v26 = *(v2 + 14);
    v28 = *(v2 + 12);
    *(v16 + 240) = *(v2 + 30);
    *(v16 + 208) = v27;
    *(v16 + 224) = v26;
    *(v16 + 192) = v28;
  }

  free(v2);
}

void *VideoPreview.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*VideoPreview.$image.modify(uint64_t *a1))(uint64_t **a1, char a2)
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

void sub_2140A3E5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[110];
  if (a2)
  {
    sub_213FB2E54(*a1, (v2 + 55), &qword_27C905500, &qword_2146F2BE0);
    sub_213FB2DF4(v3, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v3, v2 + 55, 0x1B8uLL);
    sub_213FB2DF4(v2, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    sub_213FB2DF4(v2[110], &qword_27C905500, &qword_2146F2BE0);
    memcpy(v3, v2, 0x1B8uLL);
  }

  free(v2);
}

uint64_t VideoPreview.videoFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 496);
  *a1 = *(v1 + 472);
  *(a1 + 8) = *(v1 + 480);
  *(a1 + 24) = v2;
}

uint64_t VideoPreview.audioFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *a1 = *(v1 + 504);
  *(a1 + 8) = *(v1 + 512);
  *(a1 + 24) = v2;
}

unint64_t sub_2140A3FEC()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x726F466F69647561;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x756F436B63617274;
  if (v1 != 4)
  {
    v4 = 0x726F466F65646976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656D617266;
  if (v1 != 2)
  {
    v5 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v2 = 0x6F6C6F7475417369;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2140A4104@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2140A5DC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140A412C(uint64_t a1)
{
  v2 = sub_2140A4CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A4168(uint64_t a1)
{
  v2 = sub_2140A4CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905508, &qword_2146F2BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A4CD8();
  sub_2146DAA28();
  LOBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_2146DA338();
    LOBYTE(v14) = 2;
    sub_2146DA368();
    LOBYTE(v14) = 3;
    sub_2146DA348();
    LOBYTE(v14) = 4;
    sub_2146DA368();
    v9 = *(v3 + 496);
    v14 = *(v3 + 472);
    v15 = *(v3 + 480);
    v16 = v9;
    v13 = 5;
    sub_2140A4D2C();

    sub_2146DA388();

    v10 = *(v3 + 528);
    v14 = *(v3 + 504);
    v15 = *(v3 + 512);
    v16 = v10;
    v13 = 6;
    sub_2140A4D80();

    sub_2146DA388();

    LOBYTE(v14) = 7;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VideoPreview.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905528, &qword_2146F2BF0);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  LOBYTE(v16) = 1;
  v58[0] = 1;
  v22 = 1;
  v21 = 1;
  v20 = 1;
  v19 = 1;
  v18 = 1;
  v46 = 0uLL;
  *&v47 = 0;
  BYTE8(v47) = 1;
  *&v48 = 0;
  BYTE8(v48) = 1;
  *&v49 = 0;
  BYTE8(v49) = 1;
  *&v50 = 0;
  WORD4(v50) = 1025;
  v51 = 0uLL;
  *&v52 = 0;
  WORD4(v52) = 1;
  *&v53 = 0;
  BYTE8(v53) = 1;
  *&v54 = 0;
  BYTE8(v54) = 1;
  v56 = 0u;
  v55 = 0u;
  *&v57 = 0;
  *(&v57 + 1) = 0xF000000000000000;
  sub_2140611C0(&v46);
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v26 = v47;
  v27 = v48;
  v28 = v49;
  v29 = v50;
  v25 = v46;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A4CD8();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v23, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v58[0] = 0;
    sub_2140A4DD4(&qword_280B30CB8, aI_83);
    sub_2146DA1C8();
    sub_2140A4E24(&v16, v23);
    LOBYTE(v16) = 1;
    v9 = v5;
    v37 = sub_2146DA178() & 1;
    LOBYTE(v16) = 2;
    v38 = sub_2146DA1A8();
    LOBYTE(v16) = 3;
    sub_2146DA188();
    v39 = v10;
    LOBYTE(v16) = 4;
    v40 = sub_2146DA1A8();
    v58[0] = 5;
    sub_2140A4E94();
    sub_2146DA1C8();
    v41 = v16;
    v42 = v17;
    v58[0] = 6;
    sub_2140A4EE8();
    sub_2146DA1C8();
    v43 = v16;
    v44 = v17;
    LOBYTE(v16) = 7;
    v11 = v15;
    v12 = sub_2146DA178();
    (*(v9 + 8))(v7, v11);
    v45 = v12 & 1;
    sub_2140A4F3C(v23, v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2140A4F74(v23);
  }
}

__n128 VideoPreview.init(image:isAutoloop:frame:timestamp:trackCount:videoFormat:audioFormat:videoIsMonoskiAsset:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v18 = (a8 + 472);
  v36 = 0uLL;
  *&v37 = 0;
  BYTE8(v37) = 1;
  *&v38 = 0;
  BYTE8(v38) = 1;
  *&v39 = 0;
  BYTE8(v39) = 1;
  *&v40 = 0;
  WORD4(v40) = 1025;
  v41 = 0uLL;
  *&v42 = 0;
  WORD4(v42) = 1;
  *&v43 = 0;
  BYTE8(v43) = 1;
  *&v44 = 0;
  BYTE8(v44) = 1;
  v45 = 0u;
  v46 = 0u;
  *&v47 = 0;
  *(&v47 + 1) = 0xF000000000000000;
  sub_2140611C0(&v36);
  v19 = v46;
  *(a8 + 392) = v45;
  *(a8 + 408) = v19;
  *(a8 + 424) = v47;
  v20 = v42;
  *(a8 + 328) = v41;
  *(a8 + 344) = v20;
  v21 = v44;
  *(a8 + 360) = v43;
  *(a8 + 376) = v21;
  v22 = v37;
  *(a8 + 248) = v36;
  v23 = v38;
  v24 = v39;
  *(a8 + 264) = v22;
  *(a8 + 280) = v23;
  v25 = v40;
  *(a8 + 296) = v24;
  *(a8 + 312) = v25;
  *(a8 + 240) = 0;
  *(a8 + 208) = 0u;
  *(a8 + 224) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 128) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  *(a8 + 440) = a2;
  *(a8 + 448) = a3;
  *(a8 + 456) = a9;
  *(a8 + 464) = a4;
  v26 = a5[1];
  *v18 = *a5;
  v18[1] = v26;
  v27 = a6[1];
  v18[2] = *a6;
  v18[3] = v27;
  *(a8 + 536) = a7;
  sub_213FB2DF4(a8, &qword_27C904858, &qword_214736F00);
  v28 = *(a1 + 208);
  *(a8 + 192) = *(a1 + 192);
  *(a8 + 208) = v28;
  *(a8 + 224) = *(a1 + 224);
  *(a8 + 240) = *(a1 + 240);
  v29 = *(a1 + 144);
  *(a8 + 128) = *(a1 + 128);
  *(a8 + 144) = v29;
  v30 = *(a1 + 176);
  *(a8 + 160) = *(a1 + 160);
  *(a8 + 176) = v30;
  v31 = *(a1 + 80);
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 80) = v31;
  v32 = *(a1 + 112);
  *(a8 + 96) = *(a1 + 96);
  *(a8 + 112) = v32;
  v33 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v33;
  result = *(a1 + 32);
  v35 = *(a1 + 48);
  *(a8 + 32) = result;
  *(a8 + 48) = v35;
  return result;
}

double VideoPreview.Constraints.init(maxPixelDimension:minPixelSize:scaleFactor:processFirstFrameOnly:frameInterval:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

__n128 VideoPreview.Constraints.init(multiFrameConstraints:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u8[8] | 0x80;
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u64[1] = v3;
  a2[2].n128_u64[0] = v4;
  a2[2].n128_u8[8] = v5;
  return result;
}

void __swiftcall VideoPreview.MultiFrameConstraints.init(targetPixelWidth:targetPixelHeight:frameLimit:uniformSampling:framesPerSync:appliesPreferredTrackTransform:)(BlastDoor::VideoPreview::MultiFrameConstraints *__return_ptr retstr, Swift::Int targetPixelWidth, Swift::Int targetPixelHeight, Swift::Int frameLimit, Swift::Bool uniformSampling, Swift::Int framesPerSync, Swift::Bool appliesPreferredTrackTransform)
{
  retstr->targetPixelHeight = targetPixelHeight;
  retstr->targetPixelWidth = targetPixelWidth;
  retstr->frameLimit = frameLimit;
  retstr->uniformSampling = uniformSampling;
  retstr->framesPerSync = framesPerSync;
  retstr->appliesPreferredTrackTransform = appliesPreferredTrackTransform;
}

unint64_t sub_2140A4CD8()
{
  result = qword_27C905510;
  if (!qword_27C905510)
  {
    result = swift_getWitnessTable(byte_2146F3494, &type metadata for VideoPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905510);
  }

  return result;
}

unint64_t sub_2140A4D2C()
{
  result = qword_27C905518;
  if (!qword_27C905518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.VideoFormat, &type metadata for VideoPreview.VideoFormat, v0, v1);
    atomic_store(result, &qword_27C905518);
  }

  return result;
}

unint64_t sub_2140A4D80()
{
  result = qword_27C905520;
  if (!qword_27C905520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.AudioFormat, &type metadata for VideoPreview.AudioFormat, v0, v1);
    atomic_store(result, &qword_27C905520);
  }

  return result;
}

uint64_t sub_2140A4DD4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905500, &qword_2146F2BE0);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2140A4E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2140A4E94()
{
  result = qword_27C905530;
  if (!qword_27C905530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.VideoFormat, &type metadata for VideoPreview.VideoFormat, v0, v1);
    atomic_store(result, &qword_27C905530);
  }

  return result;
}

unint64_t sub_2140A4EE8()
{
  result = qword_27C905538;
  if (!qword_27C905538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.AudioFormat, &type metadata for VideoPreview.AudioFormat, v0, v1);
    atomic_store(result, &qword_27C905538);
  }

  return result;
}

unint64_t sub_2140A5000()
{
  result = qword_27C905540;
  if (!qword_27C905540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.Constraints, &type metadata for VideoPreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C905540);
  }

  return result;
}

unint64_t sub_2140A5058()
{
  result = qword_27C905548;
  if (!qword_27C905548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview.Constraints, &type metadata for VideoPreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C905548);
  }

  return result;
}

unint64_t sub_2140A50AC(uint64_t a1)
{
  result = sub_2140A50D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2140A50D4()
{
  result = qword_27C905550;
  if (!qword_27C905550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview, &type metadata for VideoPreview, v0, v1);
    atomic_store(result, &qword_27C905550);
  }

  return result;
}

uint64_t sub_2140A5154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140A5190()
{
  result = qword_27C905558;
  if (!qword_27C905558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview, &type metadata for VideoPreview, v0, v1);
    atomic_store(result, &qword_27C905558);
  }

  return result;
}

unint64_t sub_2140A51E4()
{
  result = qword_27C905560;
  if (!qword_27C905560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPreview, &type metadata for VideoPreview, v0, v1);
    atomic_store(result, &qword_27C905560);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_9BlastDoor5ImageV8EncodingO(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor5ImageV8EncodingOSg(uint64_t a1)
{
  if ((*(a1 + 24) >> 1) > 0x80000000)
  {
    return -(*(a1 + 24) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor5ImageVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2140A5284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 537))
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

double sub_2140A52D4(uint64_t a1, int a2, int a3)
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
    *(a1 + 536) = 0;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
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
      *(a1 + 537) = 1;
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

    *(a1 + 537) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2140A53EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2140A5440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for VideoPreview.FrameConstraints(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_2140A54FC(uint64_t result, char a2)
{
  v2 = *(result + 40) & 1 | (a2 << 7);
  *(result + 24) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_2140A552C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
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

uint64_t sub_2140A557C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoPreview.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VideoPreview.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2140A578C()
{
  result = qword_27C905568;
  if (!qword_27C905568)
  {
    result = swift_getWitnessTable(byte_2146F3244, &type metadata for VideoPreview.MultiFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905568);
  }

  return result;
}

unint64_t sub_2140A57E4()
{
  result = qword_27C905570;
  if (!qword_27C905570)
  {
    result = swift_getWitnessTable(byte_2146F32FC, &type metadata for VideoPreview.SingleFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905570);
  }

  return result;
}

unint64_t sub_2140A583C()
{
  result = qword_27C905578;
  if (!qword_27C905578)
  {
    result = swift_getWitnessTable(byte_2146F33B4, &type metadata for VideoPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905578);
  }

  return result;
}

unint64_t sub_2140A5894()
{
  result = qword_27C905580;
  if (!qword_27C905580)
  {
    result = swift_getWitnessTable(aL_4, &type metadata for VideoPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905580);
  }

  return result;
}

unint64_t sub_2140A58EC()
{
  result = qword_27C905588;
  if (!qword_27C905588)
  {
    result = swift_getWitnessTable(byte_2146F33DC, &type metadata for VideoPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905588);
  }

  return result;
}

unint64_t sub_2140A5944()
{
  result = qword_27C905590;
  if (!qword_27C905590)
  {
    result = swift_getWitnessTable(byte_2146F3404, &type metadata for VideoPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905590);
  }

  return result;
}

unint64_t sub_2140A599C()
{
  result = qword_27C905598;
  if (!qword_27C905598)
  {
    result = swift_getWitnessTable(asc_2146F3324, &type metadata for VideoPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905598);
  }

  return result;
}

unint64_t sub_2140A59F4()
{
  result = qword_27C9055A0;
  if (!qword_27C9055A0)
  {
    result = swift_getWitnessTable(byte_2146F334C, &type metadata for VideoPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055A0);
  }

  return result;
}

unint64_t sub_2140A5A4C()
{
  result = qword_27C9055A8;
  if (!qword_27C9055A8)
  {
    result = swift_getWitnessTable(a5_46, &type metadata for VideoPreview.SingleFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055A8);
  }

  return result;
}

unint64_t sub_2140A5AA4()
{
  result = qword_27C9055B0;
  if (!qword_27C9055B0)
  {
    result = swift_getWitnessTable(aEy_1, &type metadata for VideoPreview.SingleFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055B0);
  }

  return result;
}

unint64_t sub_2140A5AFC()
{
  result = qword_27C9055B8;
  if (!qword_27C9055B8)
  {
    result = swift_getWitnessTable(byte_2146F31B4, &type metadata for VideoPreview.MultiFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055B8);
  }

  return result;
}

unint64_t sub_2140A5B54()
{
  result = qword_27C9055C0;
  if (!qword_27C9055C0)
  {
    result = swift_getWitnessTable(byte_2146F31DC, &type metadata for VideoPreview.MultiFrameConstraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055C0);
  }

  return result;
}

uint64_t sub_2140A5BA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000021478C6E0 == a2;
  if (v3 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021478C700 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D694C656D617266 && a2 == 0xEA00000000007469 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536D726F66696E75 && a2 == 0xEF676E696C706D61 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x655073656D617266 && a2 == 0xED0000636E795372 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000021478C720 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2140A5DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F7475417369 && a2 == 0xEA0000000000706FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F466F65646976 && a2 == 0xEB0000000074616DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F466F69647561 && a2 == 0xEB0000000074616DLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021478C780 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t Background.Context.wallpaperWorkingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Background.Context.init(wallpaperWorkingDirectory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2140A6138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000021478C7A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2140A61CC(uint64_t a1)
{
  v2 = sub_2140A63C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A6208(uint64_t a1)
{
  v2 = sub_2140A63C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Background.Context.encode(to:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055C8, &qword_2146F3618);
  v3 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0]);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A63C4();

  sub_2146DAA28();
  v11[1] = v6;
  v11[2] = v7;
  v12 = v8;
  sub_2140A6418();
  v9 = v11[0];
  sub_2146DA388();

  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_2140A63C4()
{
  result = qword_27C9055D0;
  if (!qword_27C9055D0)
  {
    result = swift_getWitnessTable(aEz_0, &type metadata for Background.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055D0);
  }

  return result;
}

unint64_t sub_2140A6418()
{
  result = qword_280B34CB0;
  if (!qword_280B34CB0)
  {
    result = swift_getWitnessTable(byte_214762AE0, &type metadata for File, v0, v1);
    atomic_store(result, &qword_280B34CB0);
  }

  return result;
}

uint64_t Background.Context.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055D8, &qword_2146F3620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A63C4();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v12[2];
    v10 = v13;
    *a2 = v12[1];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *Background.init(poster:watchBackground:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PosterArchive(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_2140A66B8(a1, a3);
  v7 = (a3 + *(type metadata accessor for Background(0) + 20));

  return memcpy(v7, a2, 0x1E8uLL);
}

uint64_t sub_2140A66B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Background(uint64_t a1)
{
  result = qword_280B2FCD0;
  if (!qword_280B2FCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Background.watchBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Background(0) + 20);

  return sub_2140A6810(v3, a1);
}

uint64_t Background.watchBackground.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Background(0) + 20);

  return sub_2140A688C(a1, v3);
}

uint64_t sub_2140A690C()
{
  if (*v0)
  {
    return 0x6361426863746177;
  }

  else
  {
    return 0x726574736F70;
  }
}

uint64_t sub_2140A6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726574736F70 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6361426863746177 && a2 == 0xEF646E756F72676BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2140A6A30(uint64_t a1)
{
  v2 = sub_2140A6C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140A6A6C(uint64_t a1)
{
  v2 = sub_2140A6C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Background.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E8, &qword_2146F3628);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A6C70();
  sub_2146DAA28();
  v8[15] = 0;
  type metadata accessor for PosterArchive(0);
  sub_2140A7AB0(&qword_27C9055F8, type metadata accessor for PosterArchive, protocol conformance descriptor for PosterArchive);
  sub_2146DA308();
  if (!v1)
  {
    type metadata accessor for Background(0);
    v8[14] = 1;
    sub_2140A6CC4();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2140A6C70()
{
  result = qword_27C9055F0;
  if (!qword_27C9055F0)
  {
    result = swift_getWitnessTable(byte_2146F3B94, &type metadata for Background.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9055F0);
  }

  return result;
}

unint64_t sub_2140A6CC4()
{
  result = qword_27C905600;
  if (!qword_27C905600)
  {
    result = swift_getWitnessTable(byte_2146F7728, &type metadata for WatchBackground, v0, v1);
    atomic_store(result, &qword_27C905600);
  }

  return result;
}

uint64_t Background.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  MEMORY[0x28223BE20](v3 - 8);
  v18 = &v15 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905608, &qword_2146F3630);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Background(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PosterArchive(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2140A6C70();
  v11 = v20;
  sub_2146DAA08();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v9, &qword_27C9055E0, &unk_2146F4F50);
  }

  else
  {
    v12 = v17;
    v21[0] = 0;
    sub_2140A7AB0(&qword_27C905610, type metadata accessor for PosterArchive, protocol conformance descriptor for PosterArchive);
    sub_2146DA148();
    sub_2140A66B8(v18, v9);
    v21[511] = 1;
    sub_2140A704C();
    v13 = v19;
    sub_2146DA1C8();
    (*(v12 + 8))(v6, v13);
    memcpy(&v9[*(v7 + 20)], v21, 0x1E8uLL);
    sub_2140A70A0(v9, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2140A7104(v9);
  }
}

unint64_t sub_2140A704C()
{
  result = qword_27C905618;
  if (!qword_27C905618)
  {
    result = swift_getWitnessTable(asc_2146F7700, &type metadata for WatchBackground, v0, v1);
    atomic_store(result, &qword_27C905618);
  }

  return result;
}

uint64_t sub_2140A70A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Background(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140A7104(uint64_t a1)
{
  v2 = type metadata accessor for Background(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2140A7190@<X0>(uint64_t a1@<X8>)
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

__n128 sub_2140A7228(uint64_t a1)
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

void (*sub_2140A72A8(uint64_t *a1))(uint64_t *a1, char a2)
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

void *sub_2140A73C0(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_2140A7414(uint64_t *a1))(uint64_t **a1, char a2)
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

uint64_t sub_2140A74A0()
{
  if (*(v0 + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2140A7504@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 456);
  }

  return result;
}

uint64_t (*sub_2140A7588(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 464))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 456);
    return sub_2140A7610;
  }

  return result;
}

uint64_t sub_2140A763C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 448);
  v3 = *(v1 + 456);
  v4 = *(v1 + 464);
  v5 = *(v1 + 465);
  *a1 = *(v1 + 440);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t sub_2140A7660(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 440) = v4;
  *(a2 + 448) = v3;
  *(a2 + 456) = v5;
  *(a2 + 464) = v6;
  *(a2 + 465) = v7;
  return result;
}

__n128 sub_2140A76CC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *(v1 + 440) = *a1;
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;
  *(v1 + 465) = v5;
  return result;
}

void (*sub_2140A7728(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 448);
  v6 = *(v1 + 456);
  v7 = *(v1 + 464);
  v8 = *(v1 + 465);
  *v4 = *(v1 + 440);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2140A77C0;
}

void sub_2140A77C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v6;
    *(v3 + 464) = v7;
    *(v3 + 465) = v8;
  }

  else
  {

    *(v3 + 440) = v5;
    *(v3 + 448) = v4;
    *(v3 + 456) = v6;
    *(v3 + 464) = v7;
    *(v3 + 465) = v8;
  }

  free(v2);
}

uint64_t sub_2140A789C()
{
  v1 = *(v0 + 472);

  return v1;
}

uint64_t sub_2140A78CC(uint64_t a1, uint64_t a2)
{

  *(v2 + 472) = a1;
  *(v2 + 480) = a2;
  return result;
}

unint64_t sub_2140A7928()
{
  result = qword_27C905620;
  if (!qword_27C905620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Background.Context, &type metadata for Background.Context, v0, v1);
    atomic_store(result, &qword_27C905620);
  }

  return result;
}

unint64_t sub_2140A7980()
{
  result = qword_27C905628;
  if (!qword_27C905628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Background.Context, &type metadata for Background.Context, v0, v1);
    atomic_store(result, &qword_27C905628);
  }

  return result;
}

uint64_t sub_2140A79D4(uint64_t a1)
{
  result = sub_2140A7AB0(&qword_27C905630, type metadata accessor for Background, protocol conformance descriptor for Background);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2140A7A2C(uint64_t a1)
{
  *(a1 + 8) = sub_2140A7AB0(&qword_27C905638, type metadata accessor for Background, protocol conformance descriptor for Background);
  result = sub_2140A7AB0(&qword_27C905640, type metadata accessor for Background, protocol conformance descriptor for Background);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140A7AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_2140A7AF8(uint64_t a1)
{
  *(a1 + 8) = sub_2140A704C();
  result = sub_2140A6CC4();
  *(a1 + 16) = result;
  return result;
}

void sub_2140A7B50(uint64_t a1)
{
  sub_2140A7BC4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2140A7BC4(uint64_t a1)
{
  if (!qword_280B2F920)
  {
    type metadata accessor for PosterArchive(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B2F920);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2140A7C30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2140A7C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2140A7CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
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

double sub_2140A7D20(uint64_t a1, int a2, int a3)
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
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
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
      *(a1 + 488) = 1;
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

    *(a1 + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2140A7E34()
{
  result = qword_27C905648;
  if (!qword_27C905648)
  {
    result = swift_getWitnessTable(byte_2146F3AB4, &type metadata for Background.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905648);
  }

  return result;
}

unint64_t sub_2140A7E8C()
{
  result = qword_27C905650;
  if (!qword_27C905650)
  {
    result = swift_getWitnessTable(aE_95, &type metadata for Background.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905650);
  }

  return result;
}

unint64_t sub_2140A7EE4()
{
  result = qword_27C905658;
  if (!qword_27C905658)
  {
    result = swift_getWitnessTable(byte_2146F3ADC, &type metadata for Background.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905658);
  }

  return result;
}

unint64_t sub_2140A7F3C()
{
  result = qword_27C905660;
  if (!qword_27C905660)
  {
    result = swift_getWitnessTable(byte_2146F3B04, &type metadata for Background.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905660);
  }

  return result;
}

unint64_t sub_2140A7F94()
{
  result = qword_27C905668;
  if (!qword_27C905668)
  {
    result = swift_getWitnessTable(aU_108, &type metadata for Background.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905668);
  }

  return result;
}

unint64_t sub_2140A7FEC()
{
  result = qword_27C905670;
  if (!qword_27C905670)
  {
    result = swift_getWitnessTable(byte_2146F3A4C, &type metadata for Background.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905670);
  }

  return result;
}

uint64_t MBDBrandInfo.init(with:name:categories:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:localizedDescription:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:genericCSSTemplateURL:brandLogoGuid:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t (*a14)(void, void, void), uint64_t a15, uint64_t (*a16)(void, void, void), uint64_t a17, uint64_t (*a18)(void, void, void), uint64_t a19, uint64_t (*a20)(void, void, void), uint64_t a21, uint64_t (*a22)(void, void, void), uint64_t a23, uint64_t (*a24)(void, void, void), uint64_t a25, uint64_t (*a26)(void, void, void), uint64_t a27, uint64_t a28, uint64_t a29, uint64_t (*a30)(void, void, void), uint64_t a31, uint64_t a32, uint64_t a33)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v36 = swift_allocObject();
  LOBYTE(v146) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 100;
  *(v37 + 24) = v146;
  *(v36 + 16) = sub_21406418C;
  *(v36 + 24) = v37;
  *(v35 + 32) = v36;
  sub_214042B80(v35, &v146);
  v38 = v146;
  v39 = v147;
  v91 = v148;
  v40 = v149;
  LOBYTE(v35) = v150;
  sub_21449E824(&v235);
  v135 = v235;
  v143 = v236;
  v145 = v237;
  v144 = v238;
  v136 = v239;
  sub_21449E858(v233);
  v137 = v233[0];
  v140 = v233[1];
  v142 = v233[2];
  v141 = v233[3];
  v138 = v234;
  sub_21449E9A4(v231);
  v130 = v231[0];
  v132 = v231[1];
  v134 = v231[2];
  v133 = v231[3];
  v131 = v232;
  sub_21449EAF0(v229);
  v126 = v229[0];
  v129 = v229[2];
  v127 = v229[1];
  v128 = v229[3];
  v122 = v230;
  sub_21449EC44(v227);
  v118 = v227[0];
  v125 = v227[2];
  v123 = v227[1];
  v124 = v227[3];
  v115 = v228;
  sub_21449F000(v225);
  v116 = v225[0];
  v121 = v225[2];
  v119 = v225[1];
  v120 = v225[3];
  v117 = v226;
  sub_21449F034(v223);
  v109 = v223[0];
  v113 = v223[2];
  v111 = v223[1];
  v112 = v223[3];
  v110 = v224;
  sub_21449F180(v221);
  v104 = v221[0];
  v108 = v221[2];
  v106 = v221[1];
  v107 = v221[3];
  v105 = v222;
  sub_21449F2D4(v219);
  v99 = v219[0];
  v101 = v219[2];
  v102 = v219[3];
  v103 = v219[1];
  v100 = v220;
  v235 = a3;
  v236 = a4;
  v94 = v35;
  LOBYTE(v233[0]) = v35;
  v146 = 0xD000000000000011;
  v147 = 0x800000021478A940;
  v148 = 0xD00000000000001CLL;
  v251 = 0x800000021478A360;
  v149 = 0x800000021478A360;

  v114 = v39;
  v41 = v92;
  v93 = v38;
  v42 = v38(&v235, v233, &v146);
  if (v41)
  {
    goto LABEL_5;
  }

  v88 = a4;
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000011;
    v48[1] = 0x800000021478A940;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v251;
    swift_willThrow();

LABEL_5:

    v49 = v118;
    v44 = v114;
    v45 = v136;

    v50 = v91;
    v51 = v115;
    v52 = v122;
LABEL_6:
    v46 = v135;
LABEL_7:
    v146 = a1;
    v147 = a2;
    v148 = v93;
    v149 = v44;
    v150 = v50;
    v151 = v40;
    v152 = v94;
    v154 = a5;
    v155 = v46;
    v156 = v143;
    v157 = v145;
    v158 = v144;
    v159 = v45;
    v161 = a8;
    v162 = a10;
    v163 = a11;
    v164 = a12;
    v165 = a13 & 1;
    v167 = v137;
    v168 = v140;
    v169 = v142;
    v170 = v141;
    v171 = v138;
    v173 = v130;
    v174 = v132;
    v175 = v134;
    v176 = v133;
    v177 = v131;
    v179 = v126;
    v180 = v127;
    v181 = v129;
    v182 = v128;
    *&v166[3] = *(v248 + 3);
    *v166 = v248[0];
    *&v172[3] = *&v247[3];
    *v172 = *v247;
    *&v178[3] = *&v246[3];
    *v178 = *v246;
    *v184 = *v245;
    *v153 = v250[0];
    *&v153[3] = *(v250 + 3);
    *&v160[3] = *(v249 + 3);
    *v160 = v249[0];
    v183 = v52;
    *&v184[3] = *&v245[3];
    v185 = v49;
    v186 = v123;
    v187 = v125;
    v188 = v124;
    v189 = v51;
    *v190 = *v244;
    *&v190[3] = *&v244[3];
    v191 = v116;
    v192 = v119;
    v193 = v121;
    v194 = v120;
    v195 = v117;
    *v196 = *v243;
    *&v196[3] = *&v243[3];
    v197 = v109;
    v198 = v111;
    v199 = v113;
    v200 = v112;
    v201 = v110;
    *v202 = *v242;
    *&v202[3] = *&v242[3];
    v203 = v104;
    v204 = v106;
    v205 = v108;
    v206 = v107;
    v207 = v105;
    *v208 = v241[0];
    *&v208[3] = *(v241 + 3);
    v209 = a28;
    v210 = a29;
    v211 = v99;
    v212 = v103;
    v213 = v101;
    v214 = v102;
    v215 = v100;
    *v216 = v240[0];
    *&v216[3] = *(v240 + 3);
    v217 = a32;
    v218 = a33;
    return sub_214045958(&v146);
  }

  v43 = v251;

  v44 = v114;

  v235 = a6;
  v236 = a7;
  v45 = v136;
  LOBYTE(v233[0]) = v136;
  v146 = 0xD00000000000001FLL;
  v147 = 0x800000021478A960;
  v148 = 0xD00000000000001CLL;
  v149 = v43;

  sub_213FDC9D0(v145, v144);
  v46 = v135;
  v47 = v135(&v235, v233, &v146);
  v51 = v115;
  v52 = v122;
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD00000000000001FLL;
    v57[1] = 0x800000021478A960;
    v58 = v251;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    swift_willThrow();

    v49 = v118;

    sub_213FDC6D0(v145, v144);
    v40 = v88;
LABEL_12:
    v50 = a3;
    goto LABEL_7;
  }

  sub_213FDC6D0(v145, v144);
  v54 = v251;

  sub_213FDC6D0(v145, v144);
  v235 = a14;
  v236 = a15;
  LOBYTE(v233[0]) = v138;
  v146 = 0xD000000000000021;
  v147 = 0x800000021478A980;
  v148 = 0xD00000000000001CLL;
  v149 = v54;

  sub_213FDC9D0(v142, v141);
  if ((v137(&v235, v233, &v146) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD000000000000021;
    v59[1] = 0x800000021478A980;
    v60 = v251;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v60;
    swift_willThrow();

    v49 = v118;

    sub_213FDC6D0(v142, v141);
    v40 = v88;
    v145 = a6;
    v144 = a7;
LABEL_14:
    v45 = v136;
    v46 = v135;
    goto LABEL_12;
  }

  sub_213FDC6D0(v142, v141);
  v55 = v251;

  sub_213FDC6D0(v142, v141);
  v235 = a16;
  v236 = a17;
  LOBYTE(v233[0]) = v131;
  v146 = 0xD000000000000017;
  v147 = 0x800000021478A9B0;
  v148 = 0xD00000000000001CLL;
  v149 = v55;

  sub_213FDC9D0(v134, v133);
  v56 = v130(&v235, v233, &v146);
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000017;
    v63[1] = 0x800000021478A9B0;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v251;
    swift_willThrow();

    v49 = v118;
    v40 = v88;

    sub_213FDC6D0(v134, v133);
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    goto LABEL_14;
  }

  sub_213FDC6D0(v134, v133);
  v61 = v251;

  sub_213FDC6D0(v134, v133);
  v235 = a18;
  v236 = a19;
  LOBYTE(v233[0]) = v122;
  v146 = 0xD000000000000014;
  v147 = 0x800000021478A9D0;
  v148 = 0xD00000000000001CLL;
  v149 = v61;

  sub_213FDC9D0(v129, v128);
  v62 = v126(&v235, v233, &v146);
  if ((v62 & 1) == 0)
  {
    v40 = v88;
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000014;
    v66[1] = 0x800000021478A9D0;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = v251;
    swift_willThrow();

    v49 = v118;

    sub_213FDC6D0(v129, v128);
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    goto LABEL_14;
  }

  sub_213FDC6D0(v129, v128);
  v64 = v251;

  sub_213FDC6D0(v129, v128);
  v235 = a20;
  v236 = a21;
  LOBYTE(v233[0]) = v115;
  v146 = 0xD00000000000001ALL;
  v147 = 0x800000021478A9F0;
  v148 = 0xD00000000000001CLL;
  v149 = v64;

  sub_213FDC9D0(v125, v124);
  v65 = v118(&v235, v233, &v146);
  if ((v65 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v71 = 0xD00000000000001ALL;
    v71[1] = 0x800000021478A9F0;
    v72 = v251;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = v72;
    swift_willThrow();

    v49 = v118;
    v52 = v122;

    sub_213FDC6D0(v125, v124);
    v50 = a3;
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v45 = v136;
    goto LABEL_6;
  }

  sub_213FDC6D0(v125, v124);
  v67 = v251;

  sub_213FDC6D0(v125, v124);
  v235 = a22;
  v236 = a23;
  LOBYTE(v233[0]) = v117;
  v146 = 0xD000000000000019;
  v147 = 0x800000021478AA10;
  v148 = 0xD00000000000001CLL;
  v149 = v67;

  sub_213FDC9D0(v121, v120);
  if ((v116(&v235, v233, &v146) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD000000000000019;
    v73[1] = 0x800000021478AA10;
    v74 = v251;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = v74;
    swift_willThrow();

    sub_213FDC6D0(v121, v120);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
LABEL_27:
    v51 = v115;
    v49 = v118;
    v52 = v122;
    v44 = v114;
    goto LABEL_14;
  }

  sub_213FDC6D0(v121, v120);
  v68 = v251;

  sub_213FDC6D0(v121, v120);
  v235 = a24;
  v236 = a25;
  LOBYTE(v233[0]) = v110;
  v146 = 0xD000000000000014;
  v147 = 0x800000021478AA30;
  v148 = 0xD00000000000001CLL;
  v149 = v68;

  sub_213FDC9D0(v113, v112);
  if ((v109(&v235, v233, &v146) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v75 = 0xD000000000000014;
    v75[1] = 0x800000021478AA30;
    v76 = v251;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = v76;
    swift_willThrow();

    sub_213FDC6D0(v113, v112);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
    v120 = a23;
    v121 = a22;
    goto LABEL_27;
  }

  sub_213FDC6D0(v113, v112);
  v69 = v251;

  sub_213FDC6D0(v113, v112);
  v235 = a26;
  v236 = a27;
  LOBYTE(v233[0]) = v105;
  v146 = 0xD000000000000022;
  v147 = 0x800000021478AA50;
  v148 = 0xD00000000000001CLL;
  v149 = v69;

  sub_213FDC9D0(v108, v107);
  v70 = v104(&v235, v233, &v146);
  if ((v70 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v79 = 0xD000000000000022;
    v79[1] = 0x800000021478AA50;
    v80 = v251;
    v79[2] = 0xD00000000000001CLL;
    v79[3] = v80;
    swift_willThrow();

    sub_213FDC6D0(v108, v107);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
    v120 = a23;
    v121 = a22;
    v112 = a25;
    v113 = a24;
    goto LABEL_27;
  }

  sub_213FDC6D0(v108, v107);
  v77 = v251;

  sub_213FDC6D0(v108, v107);
  v235 = a30;
  v236 = a31;
  LOBYTE(v233[0]) = v100;
  v146 = 0xD000000000000022;
  v147 = 0x800000021478AA80;
  v148 = 0xD00000000000001CLL;
  v149 = v77;

  sub_213FDC9D0(v101, v102);
  v78 = v99(&v235, v233, &v146);
  if ((v78 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD000000000000022;
    v86[1] = 0x800000021478AA80;
    v87 = v251;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = v87;
    swift_willThrow();

    sub_213FDC6D0(v101, v102);
    v40 = v88;
    v145 = a6;
    v144 = a7;
    v142 = a14;
    v141 = a15;
    v134 = a16;
    v133 = a17;
    v128 = a19;
    v129 = a18;
    v124 = a21;
    v125 = a20;
    v120 = a23;
    v121 = a22;
    v112 = a25;
    v113 = a24;
    v107 = a27;
    v108 = a26;
    goto LABEL_27;
  }

  sub_213FDC6D0(v101, v102);

  result = sub_213FDC6D0(v101, v102);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v93;
  *(a9 + 24) = v114;
  *(a9 + 32) = a3;
  *(a9 + 40) = v88;
  *(a9 + 48) = v94;
  *(a9 + 56) = a5;
  *(a9 + 64) = v135;
  *(a9 + 72) = v143;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v136;
  *(a9 + 104) = a8;
  *(a9 + 112) = a10;
  *(a9 + 120) = a11;
  *(a9 + 128) = a12;
  *(a9 + 136) = a13 & 1;
  *(a9 + 144) = v137;
  *(a9 + 152) = v140;
  *(a9 + 160) = a14;
  *(a9 + 168) = a15;
  *(a9 + 176) = v138;
  *(a9 + 184) = v130;
  *(a9 + 192) = v132;
  *(a9 + 200) = a16;
  *(a9 + 208) = a17;
  *(a9 + 216) = v131;
  *(a9 + 224) = v126;
  *(a9 + 232) = v127;
  *(a9 + 240) = a18;
  *(a9 + 248) = a19;
  *(a9 + 256) = v122;
  *(a9 + 260) = *&v245[3];
  *(a9 + 257) = *v245;
  *(a9 + 49) = v250[0];
  *(a9 + 52) = *(v250 + 3);
  *(a9 + 100) = *(v249 + 3);
  *(a9 + 97) = v249[0];
  *(a9 + 140) = *(v248 + 3);
  *(a9 + 137) = v248[0];
  *(a9 + 180) = *&v247[3];
  *(a9 + 177) = *v247;
  *(a9 + 220) = *&v246[3];
  *(a9 + 217) = *v246;
  *(a9 + 264) = v118;
  *(a9 + 272) = v123;
  *(a9 + 280) = a20;
  *(a9 + 288) = a21;
  *(a9 + 296) = v115;
  v81 = *v244;
  *(a9 + 300) = *&v244[3];
  *(a9 + 297) = v81;
  *(a9 + 304) = v116;
  *(a9 + 312) = v119;
  *(a9 + 320) = a22;
  *(a9 + 328) = a23;
  *(a9 + 336) = v117;
  v82 = *v243;
  *(a9 + 340) = *&v243[3];
  *(a9 + 337) = v82;
  *(a9 + 344) = v109;
  *(a9 + 352) = v111;
  *(a9 + 360) = a24;
  *(a9 + 368) = a25;
  *(a9 + 376) = v110;
  v83 = *v242;
  *(a9 + 380) = *&v242[3];
  *(a9 + 377) = v83;
  *(a9 + 384) = v104;
  *(a9 + 392) = v106;
  *(a9 + 400) = a26;
  *(a9 + 408) = a27;
  *(a9 + 416) = v105;
  v84 = v241[0];
  *(a9 + 420) = *(v241 + 3);
  *(a9 + 417) = v84;
  *(a9 + 424) = a28;
  *(a9 + 432) = a29;
  *(a9 + 440) = v99;
  *(a9 + 448) = v103;
  *(a9 + 456) = a30;
  *(a9 + 464) = a31;
  *(a9 + 472) = v100;
  v85 = v240[0];
  *(a9 + 476) = *(v240 + 3);
  *(a9 + 473) = v85;
  *(a9 + 480) = a32;
  *(a9 + 488) = a33;
  return result;
}

uint64_t sub_2140A9884@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, unsigned __int16 *a4@<X3>, unsigned __int16 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *a1;
  v21 = *a2;
  v22 = *a3;
  v24 = *a4 | (*(a4 + 2) << 16);
  v33 = *a5 | (*(a5 + 2) << 16);
  sub_214509038(&v25);
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v32[0] = a6;
  v32[1] = a7;
  v23 = v29;
  v34 = v29;
  v25 = 0xD00000000000001ELL;
  v26 = 0x800000021478B1A0;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v15 = v11(v32, &v34, &v25);
  if (v19)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v13, v14);

      result = sub_213FDC6D0(v13, v14);
      *a8 = v20;
      *(a8 + 1) = v21;
      *(a8 + 2) = v22;
      *(a8 + 5) = BYTE2(v24);
      *(a8 + 3) = v24;
      v17 = v33;
      *(a8 + 8) = BYTE2(v33);
      *(a8 + 6) = v17;
      *(a8 + 16) = v11;
      *(a8 + 24) = v12;
      *(a8 + 32) = a6;
      *(a8 + 40) = a7;
      *(a8 + 48) = v23;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000001ELL;
    v18[1] = 0x800000021478B1A0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v13, v14);
  LOBYTE(v25) = v20;
  BYTE1(v25) = v21;
  BYTE2(v25) = v22;
  BYTE5(v25) = BYTE2(v24);
  *(&v25 + 3) = v24;
  LOBYTE(v26) = BYTE2(v33);
  HIWORD(v25) = v33;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v23;
  return sub_21405C980(&v25);
}

uint64_t sub_2140A9AE8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
  result = sub_21408AC04(a2, a4 + *(v7 + 20), &qword_27C904EC8, "</\r");
  v9 = a4 + *(v7 + 24);
  *v9 = a3;
  v9[4] = BYTE4(a3) & 1;
  return result;
}

uint64_t sub_2140A9B6C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2146F3C40;
  *(v8 + 16) = sub_2142E10E8;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v46);
  v11 = v46;
  v10 = v47;
  v26 = v48;
  v12 = v49;
  LOBYTE(inited) = v50;
  sub_21464CD1C(v35);
  v29 = v35[0];
  v30 = v35[1];
  v34 = v36;
  strcpy(v35, "MBDMenu.level");
  v54 = v37;
  v27 = v38;
  v53 = v12;
  v51[0] = v12;
  v46 = a1;
  v31 = inited;
  v45 = inited;
  HIWORD(v35[1]) = -4864;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v28 = v11;
  v13 = v11(&v46, &v45, v35);
  if (v5)
  {

LABEL_6:

    v53 = v12;
    v19 = v26;
    v14 = v27;
    v16 = v29;
    v15 = v30;
LABEL_7:
    v35[0] = v28;
    v35[1] = v10;
    v36 = v19;
    LOBYTE(v37) = v53;
    BYTE1(v37) = v31;
    *(&v37 + 2) = *&v52[5];
    HIWORD(v37) = v52[7];
    v38 = v16;
    v39 = v15;
    v40 = v34;
    v41 = v54;
    v42 = v14;
    *v43 = *v52;
    *&v43[3] = *(&v52[1] + 1);
    v44 = a4;
    return sub_2142E1100(v35);
  }

  if ((v13 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    strcpy(v18, "MBDMenu.level");
    *(v18 + 7) = -4864;
    *(v18 + 2) = 0xD00000000000001CLL;
    *(v18 + 3) = 0x800000021478A360;
    swift_willThrow();
    v12 = v51[0];
    goto LABEL_6;
  }

  v53 = 0;
  v46 = a2;
  v47 = a3;
  v14 = v27;
  v51[0] = v27;
  v35[0] = 0xD000000000000013;
  v35[1] = 0x800000021478C7C0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;
  v15 = v30;

  sub_213FDC9D0(v34, v54);
  v16 = v29;
  v17 = v29(&v46, v51, v35);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000013;
    v23[1] = 0x800000021478C7C0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v34, v54);
    v19 = a1;
    goto LABEL_7;
  }

  v21 = v54;
  sub_213FDC6D0(v34, v54);

  result = sub_213FDC6D0(v34, v21);
  v22 = v53;
  *a5 = v28;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = v22;
  *(a5 + 25) = v31;
  *(a5 + 32) = v29;
  *(a5 + 40) = v30;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = v27;
  *(a5 + 72) = a4;
  return result;
}

uint64_t sub_2140A9F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t *a23, uint64_t a24, char a25, uint64_t a26, unint64_t a27, char a28, char a29, uint64_t a30, unint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  v74 = MEMORY[0x28223BE20](a1);
  v318 = v75;
  *(&v317 + 1) = v76;
  *&v317 = v77;
  v293 = v78;
  v261 = v79;
  v292 = v80;
  v259 = v81;
  v312 = v74;
  v83 = v82;
  v310 = STACK[0x1B22];
  v309 = STACK[0x1B21];
  v308 = STACK[0x1B18];
  v307 = STACK[0x1B08];
  v306 = STACK[0x1B00];
  v305 = STACK[0x1AF8];
  v304 = STACK[0x1AF0];
  v303 = STACK[0x1AEA];
  v302 = STACK[0x1AE9];
  v301 = STACK[0x1AE0];
  v300 = STACK[0x1AD0];
  v299 = STACK[0x1AC8];
  v298 = STACK[0x1AB8];
  v316 = STACK[0x1788];
  v84 = STACK[0x1780];
  v187 = *a23;
  v188 = *(a23 + 8);
  v291 = *(a23 + 9);
  v85 = *(STACK[0x1780] + 48);
  v828 = *(STACK[0x1780] + 32);
  v829 = v85;
  v86 = v84[5];
  v830 = v84[4];
  v831 = v86;
  v87 = v84[1];
  v826 = *v84;
  v827 = v87;
  v314 = STACK[0x1AB0];
  v315 = STACK[0x1AA8];
  v297 = STACK[0x1AA0];
  v296 = STACK[0x1A98];
  v295 = STACK[0x1A88];
  v294 = STACK[0x1A78];
  v282 = STACK[0x1A68];
  v279 = STACK[0x1A58];
  v278 = STACK[0x1A50];
  v277 = STACK[0x1A48];
  v320 = STACK[0x1A40];
  v311 = STACK[0x1A38];
  v276 = STACK[0x1A28];
  v313 = STACK[0x1A20];
  v319 = STACK[0x1A18];
  v275 = STACK[0x1A08];
  v832 = STACK[0x1A00];
  v350 = STACK[0x19F8];
  v349 = STACK[0x19F0];
  v348 = STACK[0x19E8];
  v347 = STACK[0x19E0];
  v346 = STACK[0x19D8];
  v274 = STACK[0x19C8];
  v345 = STACK[0x19C0];
  v344 = STACK[0x19B8];
  v343 = STACK[0x19B0];
  v342 = STACK[0x19A8];
  v273 = STACK[0x1998];
  v272 = STACK[0x1988];
  v271 = STACK[0x1980];
  v270 = STACK[0x1978];
  v269 = STACK[0x1971];
  v268 = STACK[0x1968];
  v341 = STACK[0x1960];
  v340 = STACK[0x1958];
  v267 = STACK[0x1948];
  v266 = STACK[0x1942];
  v265 = STACK[0x1941];
  v264 = STACK[0x1938];
  v263 = STACK[0x1930];
  v262 = STACK[0x1928];
  v260 = STACK[0x1920];
  v258 = STACK[0x1918];
  v257 = STACK[0x1910];
  v256 = STACK[0x1900];
  v255 = STACK[0x18F0];
  v339 = STACK[0x18E8];
  v338 = STACK[0x18E0];
  v337 = STACK[0x18D8];
  v336 = STACK[0x18D0];
  v254 = STACK[0x18C0];
  v335 = STACK[0x18B8];
  v334 = STACK[0x18B0];
  v333 = STACK[0x18A8];
  v332 = STACK[0x18A0];
  v253 = STACK[0x1890];
  v251 = STACK[0x1880];
  v245 = STACK[0x1878];
  v240 = STACK[0x1870];
  v238 = STACK[0x1860];
  v242 = STACK[0x1850];
  v250 = STACK[0x1849];
  v244 = STACK[0x1840];
  v248 = STACK[0x1830];
  v247 = STACK[0x182A];
  v252 = STACK[0x1829];
  v249 = STACK[0x1820];
  v330 = STACK[0x1818];
  v329 = STACK[0x1810];
  v328 = STACK[0x1808];
  v331 = STACK[0x1800];
  v241 = STACK[0x17F8];
  v237 = STACK[0x17F0];
  v243 = STACK[0x17E0];
  v239 = STACK[0x17DA];
  v246 = STACK[0x17D9];
  v236 = STACK[0x17D8];
  v235 = STACK[0x17D0];
  v234 = STACK[0x17C8];
  v233 = STACK[0x17B8];
  v327 = STACK[0x17B0];
  v326 = STACK[0x17A8];
  v232 = STACK[0x17A0];
  v231 = STACK[0x1798];
  v325 = STACK[0x1790];
  v230 = STACK[0x1778];
  v229 = STACK[0x1770];
  v228 = STACK[0x1760];
  v227 = STACK[0x1750];
  v226 = STACK[0x1748];
  v225 = STACK[0x1740];
  v224 = STACK[0x1739];
  v223 = STACK[0x1730];
  v222 = STACK[0x1728];
  v221 = STACK[0x1720];
  v220 = STACK[0x1710];
  v219 = STACK[0x1708];
  v218 = STACK[0x1700];
  v217 = STACK[0x16F0];
  v216 = STACK[0x16E8];
  v215 = STACK[0x16E0];
  v214 = STACK[0x16D8];
  v213 = STACK[0x16D0];
  v212 = STACK[0x16C8];
  v211 = STACK[0x16C0];
  v210 = STACK[0x16B8];
  v209 = STACK[0x16B0];
  v208 = STACK[0x16A8];
  v207 = STACK[0x16A0];
  v324 = STACK[0x1698];
  v323 = STACK[0x1690];
  v206 = STACK[0x1688];
  v205 = STACK[0x1680];
  v204 = STACK[0x1678];
  v203 = STACK[0x1670];
  v202 = STACK[0x166C];
  v201 = STACK[0x166B];
  v200 = STACK[0x166A];
  v199 = STACK[0x1669];
  v198 = STACK[0x1660];
  v197 = STACK[0x1650];
  v196 = STACK[0x1640];
  v195 = STACK[0x1638];
  v194 = STACK[0x1630];
  v193 = STACK[0x1620];
  v192 = STACK[0x1610];
  v191 = STACK[0x1600];
  v190 = STACK[0x15F8];
  v189 = STACK[0x15F0];
  v186 = STACK[0x15E0];
  v185 = STACK[0x15D8];
  v184 = STACK[0x15D0];
  v183 = STACK[0x15C0];
  v182 = STACK[0x15B0];
  v181 = STACK[0x15A8];
  v180 = STACK[0x15A0];
  v322 = STACK[0x1598];
  v321 = STACK[0x1590];
  v179 = STACK[0x1580];
  v178 = STACK[0x1570];
  v177 = STACK[0x1560];
  v176 = STACK[0x1550];
  v175 = STACK[0x1548];
  v174 = STACK[0x1540];
  v280 = STACK[0x1B20];
  v155 = STACK[0x1B10];
  v154 = STACK[0x1AE8];
  v153 = STACK[0x1AD8];
  v289 = STACK[0x1AC0];
  v287 = STACK[0x1A90];
  v285 = STACK[0x1A80];
  v283 = STACK[0x1A70];
  v152 = STACK[0x1A60];
  v172 = STACK[0x1A30];
  v170 = STACK[0x1A10];
  v168 = STACK[0x19D0];
  v166 = STACK[0x19A0];
  v164 = STACK[0x1990];
  v162 = STACK[0x1970];
  v160 = STACK[0x1950];
  v158 = STACK[0x1940];
  v156 = STACK[0x1908];
  v151 = STACK[0x18F8];
  v150 = STACK[0x18C8];
  v148 = STACK[0x1898];
  v146 = STACK[0x1888];
  v144 = STACK[0x1868];
  v142 = STACK[0x1858];
  v140 = STACK[0x1848];
  v139 = STACK[0x1838];
  v138 = STACK[0x1828];
  v137 = STACK[0x17E8];
  v136 = STACK[0x17C0];
  v135 = STACK[0x1768];
  v134 = STACK[0x1758];
  v133 = STACK[0x1738];
  v132 = STACK[0x1718];
  v131 = STACK[0x16F8];
  v130 = STACK[0x1668];
  v129 = STACK[0x1658];
  v128 = STACK[0x1648];
  v127 = STACK[0x1628];
  v126 = STACK[0x1618];
  v125 = STACK[0x1608];
  v124 = STACK[0x15E8];
  v123 = STACK[0x15C8];
  v122 = STACK[0x15B8];
  v121 = STACK[0x1588];
  v119 = STACK[0x1578];
  v117 = STACK[0x1568];
  v115 = STACK[0x1558];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v89 = swift_allocObject();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_2146F3C50;
  *(v89 + 16) = sub_21438F468;
  *(v89 + 24) = v90;
  *(v88 + 32) = v89;
  sub_213FDCA18(v317, *(&v317 + 1));
  sub_213FDCA18(v318, a9);
  sub_213FDCA18(a10, a11);
  sub_213FDCA18(a12, a13);
  sub_213FDCA18(a14, a15);
  sub_213FDCA18(a18, a19);
  sub_213FDCA18(a26, a27);
  sub_213FDCA18(a30, a31);
  sub_213FDCA18(a32, a33);
  sub_213FDCA18(a40, a41);
  sub_213FDCA18(a62, a63);
  sub_213FDCA18(a64, a65);
  sub_213FDCA18(a68, a69);
  sub_213FDCA18(v321, v322);
  sub_213FDCA18(v323, v324);
  sub_213FDCA18(v316, v325);
  sub_213FDCA18(v326, v327);
  sub_213FDCA18(v331, v328);
  sub_213FDCA18(v329, v330);
  sub_213FDCA18(v332, v333);
  sub_213FDCA18(v334, v335);
  sub_213FDCA18(v336, v337);
  sub_213FDCA18(v338, v339);
  sub_213FDCA18(v340, v341);
  sub_213FDCA18(v342, v343);
  sub_213FDCA18(v344, v345);
  sub_213FDCA18(v346, v347);
  sub_213FDCA18(v348, v349);
  sub_213FDCA18(v350, v832);
  sub_213FDCA18(v319, v313);
  sub_213FDCA18(v311, v320);
  sub_213FDCA18(v315, v314);
  sub_21404328C(v88, &v351);
  v825 = BYTE8(v352);
  v815 = a25 & 1;
  v811 = a43 & 1;
  v809 = a57 & 1;
  v807 = a59 & 1;
  v805 = a67 & 1;
  v803 = v115 & 1;
  v801 = v117 & 1;
  v799 = v119 & 1;
  v797 = v121 & 1;
  v795 = v122 & 1;
  v793 = v123 & 1;
  v791 = v124 & 1;
  v789 = v125 & 1;
  v787 = v126 & 1;
  v785 = v127 & 1;
  v783 = v128 & 1;
  v781 = v129 & 1;
  v779 = v130 & 1;
  v776 = v131 & 1;
  v774 = v132 & 1;
  v772 = v133 & 1;
  v769 = v134 & 1;
  v767 = v135 & 1;
  v91 = v351;
  v765 = v136 & 1;
  v112 = v352;
  v761 = v137 & 1;
  v759 = v138 & 1;
  v756 = v139 & 1;
  v754 = v140 & 1;
  v751 = v142 & 1;
  v749 = v144 & 1;
  v747 = v146 & 1;
  v745 = v148 & 1;
  v743 = v150 & 1;
  v741 = v151 & 1;
  v157 = v156 & 1;
  v739 = v157;
  v159 = v158 & 1;
  v737 = v159;
  v161 = v160 & 1;
  v734 = v161;
  v163 = v162 & 1;
  v732 = v163;
  v165 = v164 & 1;
  v729 = v165;
  v167 = v166 & 1;
  v727 = v167;
  v169 = v168 & 1;
  v725 = v169;
  v171 = v170 & 1;
  v723 = v171;
  v173 = v172 & 1;
  v721 = v173;
  v719 = v152 & 1;
  v284 = v283 & 1;
  v717 = v284;
  v286 = v285 & 1;
  v715 = v286;
  v288 = v287 & 1;
  v713 = v288;
  v290 = v289 & 1;
  v711 = v290;
  v709 = v153 & 1;
  v707 = v154 & 1;
  v703 = v155 & 1;
  v701 = v280 & 1;
  *&v352 = 0xD00000000000001CLL;
  v113 = BYTE8(v352);
  v821 = BYTE8(v352);
  v700 = v312;
  v114 = BYTE9(v352);
  v818 = BYTE9(v352);
  *&v351 = 0xD000000000000016;
  *(&v351 + 1) = 0x800000021478C7E0;
  *(&v352 + 1) = 0x800000021478A360;
  v116 = v115 & 1;
  v118 = v117 & 1;
  v120 = v119 & 1;
  v149 = v140 & 1;
  v141 = v144 & 1;
  v143 = v146 & 1;
  v145 = v751;
  v147 = v745;

  v92 = (v91)(&v700, &v818, &v351);
  v281 = v280 & 1;
  if (v73)
  {
    v93 = v315;
    sub_213FDC6BC(v315, v314);
    v94 = v311;
    sub_213FDC6BC(v311, v320);
    sub_213FDC6BC(v319, v313);
    sub_213FDC6BC(v350, v832);
    sub_213FDC6BC(v348, v349);
    sub_213FDC6BC(v346, v347);
    sub_213FDC6BC(v344, v345);
    sub_213FDC6BC(v342, v343);
    sub_213FDC6BC(v340, v341);
    sub_213FDC6BC(v338, v339);
    sub_213FDC6BC(v336, v337);
    sub_213FDC6BC(v334, v335);
    sub_213FDC6BC(v332, v333);
    sub_213FDC6BC(v329, v330);
    sub_213FDC6BC(v331, v328);
    sub_213FDC6BC(v326, v327);
    sub_213FDC6BC(v316, v325);
    sub_213FDC6BC(v323, v324);
    sub_213FDC6BC(v321, v322);
    sub_213FDC6BC(a68, a69);
    sub_213FDC6BC(a64, a65);
    sub_213FDC6BC(a62, a63);
    sub_213FDC6BC(a40, a41);
    sub_213FDC6BC(a32, a33);
    sub_213FDC6BC(a30, a31);
    sub_213FDC6BC(a26, a27);
    sub_213FDC6BC(a18, a19);
    sub_213FDC6BC(a14, a15);
    sub_213FDC6BC(a12, a13);
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(v318, a9);
    sub_213FDC6BC(v317, *(&v317 + 1));

    v95 = v314;
    v96 = v316;
    v97 = v313;
  }

  else
  {
    if (v92)
    {

      sub_213FDC6BC(v315, v314);
      sub_213FDC6BC(v311, v320);
      sub_213FDC6BC(v319, v313);
      sub_213FDC6BC(v350, v832);
      sub_213FDC6BC(v348, v349);
      sub_213FDC6BC(v346, v347);
      sub_213FDC6BC(v344, v345);
      sub_213FDC6BC(v342, v343);
      sub_213FDC6BC(v340, v341);
      sub_213FDC6BC(v338, v339);
      sub_213FDC6BC(v336, v337);
      sub_213FDC6BC(v334, v335);
      sub_213FDC6BC(v332, v333);
      sub_213FDC6BC(v329, v330);
      sub_213FDC6BC(v331, v328);
      sub_213FDC6BC(v326, v327);
      sub_213FDC6BC(v316, v325);
      sub_213FDC6BC(v323, v324);
      sub_213FDC6BC(v321, v322);
      sub_213FDC6BC(a68, a69);
      sub_213FDC6BC(a64, a65);
      sub_213FDC6BC(a62, a63);
      sub_213FDC6BC(a40, a41);
      sub_213FDC6BC(a32, a33);
      sub_213FDC6BC(a30, a31);
      sub_213FDC6BC(a26, a27);
      sub_213FDC6BC(a18, a19);
      sub_213FDC6BC(a14, a15);
      sub_213FDC6BC(a12, a13);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(v318, a9);
      sub_213FDC6BC(v317, *(&v317 + 1));
      v821 = 0;

      *v83 = v91;
      *(v83 + 16) = v312;
      *(v83 + 25) = v114;
      *(v83 + 32) = v259;
      *(v83 + 40) = v292 & 1;
      *(v83 + 48) = v261;
      *(v83 + 56) = v293 & 1;
      *(v83 + 64) = v317;
      *(v83 + 80) = v318;
      *(v83 + 88) = a9;
      *(v83 + 96) = a10;
      *(v83 + 104) = a11;
      *(v83 + 112) = a12;
      *(v83 + 120) = a13;
      *(v83 + 128) = a14;
      *(v83 + 136) = a15;
      *(v83 + 144) = a16;
      *(v83 + 152) = a17;
      *(v83 + 160) = a18;
      *(v83 + 168) = a19;
      *(v83 + 176) = a20;
      *(v83 + 184) = a21;
      *(v83 + 192) = a22;
      *(v83 + 200) = v187;
      *(v83 + 208) = v188;
      *(v83 + 209) = v291;
      *(v83 + 216) = a24;
      *(v83 + 224) = a25 & 1;
      *(v83 + 232) = a26;
      *(v83 + 240) = a27;
      *(v83 + 248) = a28;
      *(v83 + 249) = a29;
      *(v83 + 256) = a30;
      *(v83 + 264) = a31;
      *(v83 + 272) = a32;
      *(v83 + 280) = a33;
      *(v83 + 288) = a34;
      *(v83 + 296) = a35;
      *(v83 + 304) = a36;
      *(v83 + 312) = a37;
      *(v83 + 320) = a38;
      *(v83 + 328) = a39;
      *(v83 + 336) = a40;
      *(v83 + 344) = a41;
      *(v83 + 352) = a42;
      *(v83 + 360) = a43 & 1;
      *(v83 + 368) = a44;
      *(v83 + 376) = a45;
      *(v83 + 384) = a46;
      *(v83 + 392) = a47;
      *(v83 + 400) = a48;
      *(v83 + 408) = a49;
      *(v83 + 416) = a50;
      *(v83 + 424) = a51;
      *(v83 + 432) = a52;
      *(v83 + 440) = a53;
      *(v83 + 448) = a54;
      *(v83 + 456) = a55;
      *(v83 + 464) = a56;
      *(v83 + 472) = a57 & 1;
      *(v83 + 480) = a58;
      *(v83 + 488) = a59 & 1;
      *(v83 + 496) = a60;
      *(v83 + 504) = a61;
      *(v83 + 512) = a62;
      *(v83 + 520) = a63;
      *(v83 + 528) = a64;
      *(v83 + 536) = a65;
      *(v83 + 544) = a66;
      *(v83 + 552) = a67 & 1;
      *(v83 + 560) = a68;
      *(v83 + 568) = a69;
      *(v83 + 576) = a70;
      *(v83 + 584) = a71;
      *(v83 + 592) = a72;
      *(v83 + 600) = a73;
      *(v83 + 608) = v174;
      *(v83 + 616) = v175;
      *(v83 + 624) = v176;
      *(v83 + 632) = v116;
      *(v83 + 640) = v177;
      *(v83 + 648) = v118;
      *(v83 + 656) = v178;
      *(v83 + 664) = v120;
      *(v83 + 672) = v179;
      *(v83 + 680) = v121 & 1;
      *(v83 + 688) = v321;
      *(v83 + 696) = v322;
      *(v83 + 704) = v180;
      *(v83 + 712) = v181;
      *(v83 + 720) = v182;
      *(v83 + 728) = v122 & 1;
      *(v83 + 736) = v183;
      *(v83 + 744) = v123 & 1;
      *(v83 + 752) = v184;
      *(v83 + 760) = v185;
      *(v83 + 768) = v186;
      *(v83 + 776) = v124 & 1;
      *(v83 + 784) = v189;
      *(v83 + 792) = v190;
      *(v83 + 800) = v191;
      *(v83 + 808) = v125 & 1;
      *(v83 + 816) = v192;
      *(v83 + 824) = v126 & 1;
      *(v83 + 832) = v193;
      *(v83 + 840) = v127 & 1;
      *(v83 + 848) = v194;
      *(v83 + 856) = v195;
      *(v83 + 864) = v196;
      *(v83 + 872) = v128 & 1;
      *(v83 + 880) = v197;
      *(v83 + 888) = v129 & 1;
      *(v83 + 896) = v198;
      *(v83 + 904) = v130 & 1;
      *(v83 + 905) = v199;
      *(v83 + 906) = v200;
      *(v83 + 907) = v201;
      *(v83 + 908) = v202;
      *(v83 + 912) = v203;
      *(v83 + 920) = v204;
      *(v83 + 928) = v205;
      *(v83 + 936) = v206;
      *(v83 + 944) = v323;
      *(v83 + 952) = v324;
      *(v83 + 960) = v207;
      *(v83 + 968) = v208;
      *(v83 + 976) = v209;
      *(v83 + 984) = v210;
      *(v83 + 992) = v211;
      *(v83 + 1000) = v212;
      *(v83 + 1008) = v213;
      *(v83 + 1016) = v214;
      *(v83 + 1024) = v215;
      *(v83 + 1032) = v216;
      *(v83 + 1040) = v217;
      *(v83 + 1048) = v131 & 1;
      *(v83 + 1056) = v218;
      *(v83 + 1064) = v219;
      *(v83 + 1072) = v220;
      *(v83 + 1080) = v132 & 1;
      *(v83 + 1088) = v221;
      *(v83 + 1096) = v222;
      *(v83 + 1104) = v223;
      *(v83 + 1112) = v133 & 1;
      *(v83 + 1113) = v224;
      *(v83 + 1120) = v225;
      *(v83 + 1128) = v226;
      *(v83 + 1136) = v227;
      *(v83 + 1144) = v134 & 1;
      *(v83 + 1152) = v228;
      *(v83 + 1160) = v135 & 1;
      *(v83 + 1168) = v229;
      *(v83 + 1176) = v230;
      *(v83 + 1280) = v316;
      *(v83 + 1288) = v325;
      *(v83 + 1296) = v231;
      *(v83 + 1304) = v232;
      *(v83 + 1312) = v326;
      *(v83 + 1320) = v327;
      *(v83 + 1328) = v233;
      *(v83 + 1336) = v136 & 1;
      *(v83 + 1344) = v234;
      *(v83 + 1352) = v235;
      *(v83 + 1360) = v236;
      *(v83 + 1512) = v240;
      *(v83 + 1520) = v245;
      *(v83 + 1496) = v238;
      *(v83 + 1504) = v141;
      *(v83 + 1528) = v251;
      *(v83 + 1536) = v143;
      *(v83 + 1544) = v253;
      *(v83 + 1552) = v147;
      *(v83 + 1480) = v242;
      *(v83 + 1488) = v145;
      *(v83 + 1560) = v332;
      *(v83 + 1568) = v333;
      *(v83 + 1576) = v334;
      *(v83 + 1584) = v335;
      *(v83 + 1464) = v244;
      *(v83 + 1472) = v149;
      *(v83 + 1473) = v250;
      *(v83 + 1592) = v254;
      *(v83 + 1600) = v150 & 1;
      *(v83 + 1608) = v336;
      *(v83 + 1442) = v247;
      *(v83 + 1448) = v248;
      *(v83 + 1456) = v139 & 1;
      *(v83 + 1616) = v337;
      *(v83 + 1624) = v338;
      *(v83 + 1632) = v339;
      *(v83 + 1408) = v328;
      *(v83 + 1416) = v329;
      *(v83 + 1424) = v330;
      *(v83 + 1432) = v249;
      *(v83 + 1440) = v138 & 1;
      *(v83 + 1441) = v252;
      *(v83 + 1384) = v237;
      *(v83 + 1392) = v241;
      *(v83 + 1400) = v331;
      *(v83 + 1640) = v255;
      *(v83 + 1648) = v151 & 1;
      *(v83 + 1656) = v256;
      *(v83 + 1362) = v239;
      *(v83 + 1368) = v243;
      *(v83 + 1376) = v137 & 1;
      *(v83 + 1664) = v157;
      *(v83 + 1672) = v257;
      *(v83 + 1680) = v258;
      *(v83 + 1361) = v246;
      *(v83 + 1688) = v260;
      *(v83 + 1696) = v262;
      *(v83 + 1704) = v263;
      *(v83 + 1712) = v264;
      *(v83 + 1720) = v159;
      *(v83 + 1721) = v265;
      *(v83 + 1722) = v266;
      *(v83 + 1728) = v267;
      *(v83 + 1736) = v161;
      *(v83 + 1744) = v340;
      *(v83 + 1752) = v341;
      *(v83 + 1760) = v268;
      *(v83 + 1768) = v163;
      *(v83 + 1769) = v269;
      *(v83 + 1776) = v270;
      *(v83 + 1784) = v271;
      *(v83 + 1792) = v272;
      *(v83 + 1800) = v165;
      *(v83 + 1808) = v273;
      *(v83 + 1816) = v167;
      *(v83 + 1824) = v342;
      *(v83 + 1832) = v343;
      *(v83 + 1840) = v344;
      *(v83 + 1848) = v345;
      *(v83 + 1856) = v274;
      *(v83 + 1864) = v169;
      *(v83 + 1872) = v346;
      *(v83 + 1880) = v347;
      *(v83 + 1888) = v348;
      *(v83 + 1896) = v349;
      *(v83 + 1904) = v350;
      *(v83 + 1912) = v832;
      *(v83 + 1920) = v275;
      *(v83 + 1928) = v171;
      *(v83 + 1936) = v319;
      *(v83 + 1944) = v313;
      *(v83 + 1952) = v276;
      *(v83 + 1960) = v173;
      *(v83 + 1968) = v311;
      *(v83 + 1976) = v320;
      *(v83 + 1984) = v277;
      *(v83 + 1992) = v278;
      *(v83 + 2000) = v279;
      *(v83 + 2008) = v152 & 1;
      *(v83 + 364) = *&v810[3];
      *(v83 + 361) = *v810;
      *(v83 + 476) = *&v808[3];
      *(v83 + 473) = *v808;
      *(v83 + 492) = *&v806[3];
      *(v83 + 489) = *v806;
      *(v83 + 556) = *&v804[3];
      *(v83 + 553) = *v804;
      *(v83 + 636) = *&v802[3];
      *(v83 + 633) = *v802;
      *(v83 + 652) = *&v800[3];
      *(v83 + 649) = *v800;
      *(v83 + 668) = *&v798[3];
      *(v83 + 665) = *v798;
      *(v83 + 684) = *&v796[3];
      *(v83 + 681) = *v796;
      *(v83 + 732) = *&v794[3];
      *(v83 + 729) = *v794;
      *(v83 + 748) = *&v792[3];
      *(v83 + 745) = *v792;
      *(v83 + 780) = *&v790[3];
      *(v83 + 777) = *v790;
      *(v83 + 812) = *&v788[3];
      *(v83 + 809) = *v788;
      *(v83 + 828) = *&v786[3];
      *(v83 + 825) = *v786;
      *(v83 + 844) = *&v784[3];
      *(v83 + 841) = *v784;
      *(v83 + 876) = *&v782[3];
      *(v83 + 873) = *v782;
      *(v83 + 892) = *&v780[3];
      *(v83 + 889) = *v780;
      *(v83 + 909) = v777;
      *(v83 + 1049) = *v775;
      *(v83 + 1081) = *v773;
      *(v83 + 1114) = v770;
      *(v83 + 1148) = *&v768[3];
      *(v83 + 1145) = *v768;
      *(v83 + 1161) = *v766;
      *(v83 + 1340) = *&v764[3];
      *(v83 + 1337) = *v764;
      *(v83 + 1363) = v762;
      *(v83 + 1380) = *&v760[3];
      *(v83 + 1377) = *v760;
      *(v83 + 1443) = v757;
      *(v83 + 1460) = *&v755[3];
      *(v83 + 1457) = *v755;
      *(v83 + 1474) = v752;
      *(v83 + 1492) = *&v750[3];
      *(v83 + 1489) = *v750;
      *(v83 + 1508) = *&v748[3];
      *(v83 + 1505) = *v748;
      *(v83 + 1540) = *&v746[3];
      *(v83 + 1537) = *v746;
      *(v83 + 1556) = *&v744[3];
      *(v83 + 1553) = *v744;
      *(v83 + 1604) = *&v742[3];
      *(v83 + 1601) = *v742;
      *(v83 + 1652) = *&v740[3];
      *(v83 + 1649) = *v740;
      *(v83 + 1668) = *&v738[3];
      *(v83 + 1665) = *v738;
      *(v83 + 1723) = v735;
      *(v83 + 1740) = *&v733[3];
      *(v83 + 1737) = *v733;
      *(v83 + 1770) = v730;
      *(v83 + 1804) = *&v728[3];
      *(v83 + 1801) = *v728;
      *(v83 + 1820) = *&v726[3];
      *(v83 + 1817) = *v726;
      *(v83 + 1868) = *&v724[3];
      *(v83 + 1865) = *v724;
      *(v83 + 1932) = *&v722[3];
      *(v83 + 1929) = *v722;
      *(v83 + 1964) = *&v720[3];
      *(v83 + 1961) = *v720;
      *(v83 + 2012) = *&v718[3];
      *(v83 + 2009) = *v718;
      *(v83 + 26) = v823;
      *(v83 + 30) = v824;
      *(v83 + 41) = *v822;
      *(v83 + 44) = *&v822[3];
      *(v83 + 57) = *v820;
      *(v83 + 60) = *&v820[3];
      *(v83 + 193) = *v819;
      *(v83 + 196) = *&v819[3];
      *(v83 + 210) = v816;
      *(v83 + 214) = v817;
      *(v83 + 225) = *v814;
      *(v83 + 228) = *&v814[3];
      *(v83 + 254) = v813;
      *(v83 + 250) = v812;
      *(v83 + 911) = v778;
      *(v83 + 1052) = *&v775[3];
      v825 = 0;
      v353 = v828;
      v354 = v829;
      v355 = v830;
      v356 = v831;
      v351 = v826;
      v352 = v827;
      *(v83 + 24) = 0;
      *(v83 + 1084) = *&v773[3];
      *(v83 + 1118) = v771;
      *(v83 + 1164) = *&v766[3];
      v99 = v351;
      *(v83 + 1200) = v352;
      *(v83 + 1184) = v99;
      v100 = v353;
      v101 = v354;
      v102 = v355;
      *(v83 + 1264) = v356;
      *(v83 + 1248) = v102;
      *(v83 + 1232) = v101;
      *(v83 + 1216) = v100;
      *(v83 + 1367) = v763;
      *(v83 + 1447) = v758;
      *(v83 + 1478) = v753;
      *(v83 + 1727) = v736;
      *(v83 + 1774) = v731;
      *(v83 + 2016) = v282;
      *(v83 + 2024) = v284;
      v103 = *v716;
      *(v83 + 2028) = *&v716[3];
      *(v83 + 2025) = v103;
      *(v83 + 2032) = v294;
      *(v83 + 2040) = v286;
      v104 = *v714;
      *(v83 + 2044) = *&v714[3];
      *(v83 + 2041) = v104;
      *(v83 + 2048) = v295;
      *(v83 + 2056) = v288;
      v105 = *v712;
      *(v83 + 2060) = *&v712[3];
      *(v83 + 2057) = v105;
      *(v83 + 2064) = v296;
      *(v83 + 2072) = v297;
      *(v83 + 2080) = v315;
      *(v83 + 2088) = v314;
      *(v83 + 2096) = v298;
      *(v83 + 2104) = v290;
      v106 = *v710;
      *(v83 + 2108) = *&v710[3];
      *(v83 + 2105) = v106;
      *(v83 + 2112) = v299;
      *(v83 + 2120) = v300;
      *(v83 + 2128) = v153 & 1;
      v107 = *v708;
      *(v83 + 2132) = *&v708[3];
      *(v83 + 2129) = v107;
      *(v83 + 2136) = v301;
      *(v83 + 2144) = v154 & 1;
      *(v83 + 2145) = v302;
      *(v83 + 2146) = v303;
      v108 = v705;
      *(v83 + 2151) = v706;
      *(v83 + 2147) = v108;
      *(v83 + 2152) = v304;
      *(v83 + 2160) = v305;
      *(v83 + 2168) = v306;
      v109 = *v704;
      *(v83 + 2172) = *&v704[3];
      *(v83 + 2169) = v109;
      *(v83 + 2176) = v307;
      *(v83 + 2184) = v155 & 1;
      v110 = *v702;
      *(v83 + 2188) = *&v702[3];
      *(v83 + 2185) = v110;
      *(v83 + 2192) = v308;
      *(v83 + 2200) = v281;
      *(v83 + 2201) = v309;
      *(v83 + 2202) = v310;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v111 = 0xD000000000000016;
    v111[1] = 0x800000021478C7E0;
    v111[2] = 0xD00000000000001CLL;
    v111[3] = 0x800000021478A360;
    swift_willThrow();
    v93 = v315;
    v95 = v314;
    sub_213FDC6BC(v315, v314);
    v94 = v311;
    sub_213FDC6BC(v311, v320);
    v97 = v313;
    sub_213FDC6BC(v319, v313);
    sub_213FDC6BC(v350, v832);
    sub_213FDC6BC(v348, v349);
    sub_213FDC6BC(v346, v347);
    sub_213FDC6BC(v344, v345);
    sub_213FDC6BC(v342, v343);
    sub_213FDC6BC(v340, v341);
    sub_213FDC6BC(v338, v339);
    sub_213FDC6BC(v336, v337);
    sub_213FDC6BC(v334, v335);
    sub_213FDC6BC(v332, v333);
    sub_213FDC6BC(v329, v330);
    sub_213FDC6BC(v331, v328);
    sub_213FDC6BC(v326, v327);
    v96 = v316;
    sub_213FDC6BC(v316, v325);
    sub_213FDC6BC(v323, v324);
    sub_213FDC6BC(v321, v322);
    sub_213FDC6BC(a68, a69);
    sub_213FDC6BC(a64, a65);
    sub_213FDC6BC(a62, a63);
    sub_213FDC6BC(a40, a41);
    sub_213FDC6BC(a32, a33);
    sub_213FDC6BC(a30, a31);
    sub_213FDC6BC(a26, a27);
    sub_213FDC6BC(a18, a19);
    sub_213FDC6BC(a14, a15);
    sub_213FDC6BC(a12, a13);
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(v318, a9);
    sub_213FDC6BC(v317, *(&v317 + 1));
    v113 = v821;
  }

  v351 = v91;
  *&v352 = v112;
  BYTE9(v352) = v114;
  *&v353 = v259;
  BYTE8(v353) = v292 & 1;
  *&v354 = v261;
  BYTE8(v354) = v293 & 1;
  v355 = v317;
  *&v356 = v318;
  *(&v356 + 1) = a9;
  v357 = a10;
  v358 = a11;
  v359 = a12;
  v360 = a13;
  v361 = a14;
  v362 = a15;
  v363 = a16;
  v364 = a17;
  v365 = a18;
  v366 = a19;
  v367 = a20;
  v368 = a21;
  v369 = a22;
  v371 = v187;
  v372 = v188;
  v373 = v291;
  v376 = a24;
  v377 = a25 & 1;
  v379 = a26;
  v380 = a27;
  v381 = a28;
  v382 = a29;
  v385 = a30;
  v386 = a31;
  v387 = a32;
  v388 = a33;
  v389 = a34;
  v390 = a35;
  v391 = a36;
  v392 = a37;
  v393 = a38;
  v394 = a39;
  v395 = a40;
  v396 = a41;
  v397 = a42;
  v398 = a43 & 1;
  v400 = a44;
  v401 = a45;
  v402 = a46;
  v403 = a47;
  v404 = a48;
  v405 = a49;
  v406 = a50;
  v407 = a51;
  v408 = a52;
  v409 = a53;
  v410 = a54;
  v411 = a55;
  v412 = a56;
  v413 = a57 & 1;
  v415 = a58;
  v416 = a59 & 1;
  v418 = a60;
  v419 = a61;
  v420 = a62;
  v421 = a63;
  v422 = a64;
  v423 = a65;
  v424 = a66;
  v425 = a67 & 1;
  v427 = a68;
  v428 = a69;
  v429 = a70;
  v430 = a71;
  v431 = a72;
  v432 = a73;
  v433 = v174;
  v434 = v175;
  v435 = v176;
  v436 = v116;
  v438 = v177;
  v439 = v118;
  v441 = v178;
  v442 = v120;
  v444 = v179;
  v445 = v121 & 1;
  v447 = v321;
  v448 = v322;
  v449 = v180;
  v450 = v181;
  v451 = v182;
  v452 = v122 & 1;
  v454 = v183;
  v455 = v123 & 1;
  v457 = v184;
  v458 = v185;
  v459 = v186;
  v460 = v124 & 1;
  v462 = v189;
  v463 = v190;
  v464 = v191;
  v465 = v125 & 1;
  v467 = v192;
  v468 = v126 & 1;
  v470 = v193;
  v471 = v127 & 1;
  v473 = v194;
  v474 = v195;
  v475 = v196;
  v476 = v128 & 1;
  v478 = v197;
  v479 = v129 & 1;
  v481 = v198;
  v482 = v130 & 1;
  v483 = v199;
  v484 = v200;
  v485 = v201;
  v486 = v202;
  v489 = v203;
  v490 = v204;
  v491 = v205;
  v492 = v206;
  v493 = v323;
  v494 = v324;
  v495 = v207;
  v496 = v208;
  v497 = v209;
  v498 = v210;
  v499 = v211;
  v500 = v212;
  v501 = v213;
  v502 = v214;
  v503 = v215;
  v504 = v216;
  v505 = v217;
  v506 = v131 & 1;
  v508 = v218;
  v509 = v219;
  v510 = v220;
  v511 = v132 & 1;
  v513 = v221;
  v514 = v222;
  v515 = v223;
  v516 = v133 & 1;
  v517 = v224;
  v520 = v225;
  v521 = v226;
  v522 = v227;
  v523 = v134 & 1;
  v525 = v228;
  v526 = v135 & 1;
  v528 = v229;
  v529 = v230;
  v536 = v96;
  v537 = v325;
  v538 = v231;
  v539 = v232;
  v540 = v326;
  v541 = v327;
  v542 = v233;
  v543 = v136 & 1;
  v545 = v234;
  v546 = v235;
  v547 = v236;
  v548 = v246;
  v549 = v239;
  v552 = v243;
  v553 = v137 & 1;
  v555 = v237;
  v556 = v241;
  v557 = v331;
  v558 = v328;
  v559 = v329;
  v560 = v330;
  v561 = v249;
  v562 = v138 & 1;
  v563 = v252;
  v564 = v247;
  v567 = v248;
  v568 = v139 & 1;
  v570 = v244;
  v571 = v149;
  v572 = v250;
  v575 = v242;
  v576 = v145;
  v578 = v238;
  v579 = v141;
  v581 = v240;
  v582 = v245;
  v583 = v251;
  v584 = v143;
  v586 = v253;
  v587 = v147;
  v589 = v332;
  v590 = v333;
  v591 = v334;
  v592 = v335;
  v593 = v254;
  v594 = v150 & 1;
  v596 = v336;
  v597 = v337;
  v598 = v338;
  v599 = v339;
  v600 = v255;
  v601 = v151 & 1;
  v603 = v256;
  v604 = v157;
  v606 = v257;
  v607 = v258;
  v608 = v260;
  v609 = v262;
  v610 = v263;
  v611 = v264;
  v612 = v159;
  v613 = v265;
  v614 = v266;
  v617 = v267;
  v618 = v161;
  v620 = v340;
  v621 = v341;
  v622 = v268;
  v623 = v163;
  v624 = v269;
  v627 = v270;
  v628 = v271;
  v629 = v272;
  v630 = v165;
  v632 = v273;
  v633 = v167;
  v635 = v342;
  v636 = v343;
  v637 = v344;
  v638 = v345;
  v639 = v274;
  v640 = v169;
  v642 = v346;
  v643 = v347;
  v644 = v348;
  v645 = v349;
  v646 = v350;
  v647 = v832;
  v648 = v275;
  v649 = v171;
  v651 = v319;
  v652 = v97;
  v653 = v276;
  v654 = v173;
  v656 = v94;
  v657 = v320;
  v658 = v277;
  v659 = v278;
  v660 = v279;
  v661 = v152 & 1;
  v663 = v282;
  *v370 = *v819;
  v374 = v816;
  *v378 = *v814;
  v383 = v812;
  *v399 = *v810;
  *v414 = *v808;
  *v417 = *v806;
  *v426 = *v804;
  *v437 = *v802;
  *v440 = *v800;
  *v443 = *v798;
  *v446 = *v796;
  *v453 = *v794;
  *v456 = *v792;
  *v461 = *v790;
  *v466 = *v788;
  *v469 = *v786;
  *v472 = *v784;
  *v477 = *v782;
  *v480 = *v780;
  v487 = v777;
  *v507 = *v775;
  *v512 = *v773;
  v825 = v113;
  BYTE8(v352) = v113;
  *(&v352 + 10) = v823;
  HIWORD(v352) = v824;
  *(&v353 + 9) = *v822;
  HIDWORD(v353) = *&v822[3];
  *(&v354 + 9) = *v820;
  HIDWORD(v354) = *&v820[3];
  *&v370[3] = *&v819[3];
  v375 = v817;
  *&v378[3] = *&v814[3];
  v384 = v813;
  *&v399[3] = *&v810[3];
  *&v414[3] = *&v808[3];
  *&v417[3] = *&v806[3];
  *&v426[3] = *&v804[3];
  *&v437[3] = *&v802[3];
  *&v440[3] = *&v800[3];
  *&v443[3] = *&v798[3];
  *&v446[3] = *&v796[3];
  *&v453[3] = *&v794[3];
  *&v456[3] = *&v792[3];
  *&v461[3] = *&v790[3];
  *&v466[3] = *&v788[3];
  *&v469[3] = *&v786[3];
  *&v472[3] = *&v784[3];
  *&v477[3] = *&v782[3];
  *&v480[3] = *&v780[3];
  v488 = v778;
  *&v507[3] = *&v775[3];
  *&v512[3] = *&v773[3];
  v518 = v770;
  v519 = v771;
  *v524 = *v768;
  *&v524[3] = *&v768[3];
  *v527 = *v766;
  *&v527[3] = *&v766[3];
  v531 = v827;
  v530 = v826;
  v535 = v831;
  v534 = v830;
  v533 = v829;
  v532 = v828;
  *v544 = *v764;
  *&v544[3] = *&v764[3];
  v550 = v762;
  v551 = v763;
  *v554 = *v760;
  *&v554[3] = *&v760[3];
  v565 = v757;
  v566 = v758;
  *v569 = *v755;
  *&v569[3] = *&v755[3];
  v573 = v752;
  v574 = v753;
  *v577 = *v750;
  *&v577[3] = *&v750[3];
  *v580 = *v748;
  *&v580[3] = *&v748[3];
  *v585 = *v746;
  *&v585[3] = *&v746[3];
  *v588 = *v744;
  *&v588[3] = *&v744[3];
  *v595 = *v742;
  *&v595[3] = *&v742[3];
  *v602 = *v740;
  *&v602[3] = *&v740[3];
  *v605 = *v738;
  *&v605[3] = *&v738[3];
  v615 = v735;
  v616 = v736;
  *v619 = *v733;
  *&v619[3] = *&v733[3];
  v625 = v730;
  v626 = v731;
  *v631 = *v728;
  *&v631[3] = *&v728[3];
  *v634 = *v726;
  *&v634[3] = *&v726[3];
  *v641 = *v724;
  *&v641[3] = *&v724[3];
  *v650 = *v722;
  *&v650[3] = *&v722[3];
  *v655 = *v720;
  *&v655[3] = *&v720[3];
  *v662 = *v718;
  *&v662[3] = *&v718[3];
  v664 = v284;
  *v665 = *v716;
  *&v665[3] = *&v716[3];
  v666 = v294;
  v667 = v286;
  *v668 = *v714;
  *&v668[3] = *&v714[3];
  v669 = v295;
  v670 = v288;
  *v671 = *v712;
  *&v671[3] = *&v712[3];
  v672 = v296;
  v673 = v297;
  v674 = v93;
  v675 = v95;
  v676 = v298;
  v677 = v290;
  *v678 = *v710;
  *&v678[3] = *&v710[3];
  v679 = v299;
  v680 = v300;
  v681 = v153 & 1;
  *v682 = *v708;
  *&v682[3] = *&v708[3];
  v683 = v301;
  v684 = v154 & 1;
  v685 = v302;
  v686 = v303;
  v687 = v705;
  v688 = v706;
  v689 = v304;
  v690 = v305;
  v691 = v306;
  *v692 = *v704;
  *&v692[3] = *&v704[3];
  v693 = v307;
  v694 = v155 & 1;
  *v695 = *v702;
  *&v695[3] = *&v702[3];
  v696 = v308;
  v697 = v281;
  v698 = v309;
  v699 = v310;
  return sub_2142E1154(&v351);
}

uint64_t sub_2140AD0CC(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      return 0x43646E616D6D6F63;
    case 2:
      return 0x6E6F6973726576;
    case 3:
      return 0x64616F6C796170;
    case 4:
      v5 = 0x64656B6C7562;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
    case 5:
      v5 = 0x74756F6E6166;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
    case 6:
      return 0xD000000000000011;
    case 7:
      return 0x4D64616F6C796170;
    case 8:
      return 0x496567617373656DLL;
    case 9:
      return 0x556567617373656DLL;
    case 10:
      v6 = 1969583473;
      goto LABEL_108;
    case 11:
      return 0x79726576696C6564;
    case 12:
      return 0x79726576696C6564;
    case 13:
    case 48:
    case 67:
      return 0xD000000000000018;
    case 14:
    case 27:
    case 65:
      return 0xD000000000000014;
    case 15:
    case 54:
    case 80:
    case 89:
    case 93:
    case 124:
    case -127:
    case -116:
      return 0xD000000000000010;
    case 16:
    case 68:
      return 0xD000000000000017;
    case 17:
      return 0x546E6F6973736573;
    case 18:
    case 28:
    case 46:
    case 57:
    case 91:
    case 112:
    case -105:
      return 0xD000000000000013;
    case 19:
      v7 = 0x6E6974736564;
      goto LABEL_115;
    case 20:
      return 0x6E65674172657375;
    case 21:
      return 0x656E774F53434D4DLL;
    case 22:
      return 0xD000000000000011;
    case 23:
      return 0x656C694653434D4DLL;
    case 24:
      return 0x6874754153434D4DLL;
    case 25:
      return 0x6874754153434D4DLL;
    case 26:
      return 0x6874754153434D4DLL;
    case 29:
      return 0x6E776F4453434D4DLL;
    case 30:
      return 0x6F6C705553434D4DLL;
    case 31:
      return 0x6970784553434D4DLL;
    case 32:
      return 0x56746E65746E6F63;
    case 33:
      return 0x48746E65746E6F63;
    case 34:
      return 0x42746E65746E6F63;
    case 35:
    case -117:
      return 0xD000000000000019;
    case 36:
      return 0x656D686361747461;
    case 37:
      return 0x6E656B6F74;
    case 38:
      return 0x64497265646E6573;
    case 39:
      return 0x704F7265646E6573;
    case 40:
      return 0x644970736DLL;
    case 41:
      return 0x65736E6F70736572;
    case 42:
      return 0x6D695468636F7065;
    case 43:
    case 111:
      return 0xD000000000000016;
    case 44:
      return 0x736165526C696166;
    case 45:
      return 0x7373654D6C696166;
    case 47:
      return 0xD00000000000001ALL;
    case 49:
      return 0xD000000000000011;
    case 50:
      v4 = 1818845542;
      goto LABEL_33;
    case 51:
      return 0x6974707972636E65;
    case 52:
      return 0x46656761726F7473;
    case 53:
      return 0x797469726F697270;
    case 55:
      return 0x6B6F546449747364;
    case 56:
      return 0xD000000000000011;
    case 58:
    case 72:
    case 125:
    case -124:
    case -119:
      return 0xD000000000000015;
    case 59:
      return 0x725064697264616DLL;
    case 60:
      return 0x6C616E7265746E69;
    case 61:
      return 0x50676E6967676F6CLL;
    case 62:
      return 0x6F72506563617274;
    case 63:
      return 0x73654D70756F7267;
    case 64:
      v3 = 0x6E65746E6F63;
      goto LABEL_37;
    case 66:
    case 79:
    case 86:
    case 98:
    case -118:
    case -115:
    case -114:
    case -113:
      return 0xD000000000000012;
    case 69:
      v6 = 1667330676;
LABEL_108:
      result = v6 | 0x64496500000000;
      break;
    case 70:
      result = 0x69486B6E756C7073;
      break;
    case 71:
      result = 0x6548707474487361;
      break;
    case 73:
      result = 0x5274696B656D6F68;
      break;
    case 74:
      result = 0x756F437972746572;
      break;
    case 75:
      result = 0x6974704F74736574;
      break;
    case 76:
      result = 0xD000000000000011;
      break;
    case 77:
      result = 0x614C74756F6E6166;
      break;
    case 78:
      result = 7107189;
      break;
    case 81:
      result = 0x6C725570747468;
      break;
    case 82:
      result = 0x6461654870747468;
      break;
    case 83:
      result = 0x79646F4270747468;
      break;
    case 84:
      result = 0x79646F4270747468;
      break;
    case 85:
      result = 0x79646F4270747468;
      break;
    case 87:
      result = 0x6F72724570747468;
      break;
    case 88:
      result = 0x436F546574697277;
      break;
    case 90:
      result = 0xD000000000000011;
      break;
    case 92:
      result = 0x6E657265666E6F63;
      break;
    case 94:
      result = 0x7361487972657571;
      break;
    case 95:
      result = 0x706F724474736574;
      break;
    case 96:
      result = 0x73756C5072657375;
      break;
    case 97:
      result = 0x616974696E497369;
      break;
    case 99:
      result = 0x646F43726F727265;
      break;
    case 100:
      result = 0xD000000000000011;
      break;
    case 101:
      result = 0x61737265766E6F63;
      break;
    case 102:
      result = 0x6C6F636F746F7270;
      break;
    case 103:
      v7 = 0x63696C707061;
LABEL_115:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 104:
      result = 0x6E6F73616572;
      break;
    case 105:
      result = 0x6F72724576657270;
      break;
    case 106:
      result = 0x6563634176657270;
      break;
    case 107:
      result = 0x616C655276657270;
      break;
    case 108:
      v4 = 1986359920;
LABEL_33:
      result = v4 | 0x656D695400000000;
      break;
    case 109:
      result = 0xD000000000000011;
      break;
    case 110:
      result = 0x6552657669746361;
      break;
    case 113:
      result = 0x65526E6967756C70;
      break;
    case 114:
      result = 0x614E6E6967756C70;
      break;
    case 115:
      result = 0x6F436E6967756C70;
      break;
    case 116:
      result = 0x74536E6967756C70;
      break;
    case 117:
      result = 0x65446E6967756C70;
      break;
    case 118:
      result = 0x73655377654E7271;
      break;
    case 119:
      v3 = 0x736575716572;
LABEL_37:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
      break;
    case 120:
      result = 0x6973736553736469;
      break;
    case 121:
      result = 0x6F725079616C6572;
      break;
    case 122:
      result = 0x6553646572616873;
      break;
    case 123:
      result = 0x644970756F7267;
      break;
    case 126:
      result = 0x704979616C6572;
      break;
    case 127:
      result = 0x76704979616C6572;
      break;
    case -128:
      result = 0x726F5079616C6572;
      break;
    case -126:
      result = 0x73655379616C6572;
      break;
    case -125:
      result = 0x73655379616C6572;
      break;
    case -123:
      result = 0x6F74616974696E69;
      break;
    case -122:
      result = 0x7069636974726170;
      break;
    case -121:
      result = 0x6572617774666F73;
      break;
    case -120:
      result = 0xD000000000000011;
      break;
    case -112:
      result = 0x72655379616C6572;
      break;
    case -111:
      result = 0xD000000000000011;
      break;
    case -110:
      result = 0x43726F7272457271;
      break;
    case -109:
      result = 0x6C616E696769726FLL;
      break;
    case -108:
      result = 0x64656B6C75427369;
      break;
    case -107:
      result = 0x70704173746E6177;
      break;
    case -106:
      result = 0x6D6F44726F727265;
      break;
    case -104:
      result = 0x524447776F6C6C61;
      break;
    case -103:
      result = 0x65646F4D646E6573;
      break;
    case -102:
      result = 0x6574737572547369;
      break;
    case -101:
      result = 0x4F73756C50557369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2140AE134@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143580BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2140AE168(uint64_t a1)
{
  v2 = sub_2142E11A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140AE1A4(uint64_t a1)
{
  v2 = sub_2142E11A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t APSUserPayload.init(from:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905678, &unk_2146F3CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v9 = v2[3];
  v325 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v9);
  sub_2142E11A8();
  sub_2146DAA08();
  if (v1)
  {
    v795 = v1;
    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  LOBYTE(v327) = 0;
  v10 = sub_2146DA1A8();
  v795 = 0;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v326[0]) = 1;
  v13 = sub_2142E11FC();
  v14 = v795;
  sub_2146DA1C8();
  if (v14)
  {
    v795 = v14;
    (*(v6 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  v324 = v6;
  v323 = v4;
  v16 = v327;
  v17 = BYTE8(v327);
  LOBYTE(v326[0]) = 2;
  sub_2146DA1C8();
  v795 = 0;
  v321 = v13;
  v322 = v12;
  v319 = v17;
  v320 = v11;
  v18 = v327;
  v19 = BYTE8(v327);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v326[0]) = 3;
  v21 = sub_2142E1278();
  v22 = v795;
  sub_2146DA1C8();
  if (v22)
  {
    v795 = v22;
    (*(v324 + 8))(v8, v5);
    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  v318 = v19;
  v316 = v18;
  v317 = v16;
  v23 = v327;
  v24 = v21;
  v25 = *(&v327 + 1);
  LOBYTE(v326[0]) = 4;
  sub_2146DA1C8();
  v26 = v324;
  *&v315 = v23;
  *(&v315 + 1) = v25;
  v27 = v327;
  LOBYTE(v326[0]) = 5;
  sub_2146DA1C8();
  v313 = *(&v27 + 1);
  v314 = v27;
  v28 = v327;
  LOBYTE(v326[0]) = 6;
  sub_2146DA1C8();
  v311 = v28;
  v29 = *(&v327 + 1);
  v312 = v327;
  LOBYTE(v326[0]) = 7;
  v310 = v20;
  sub_2146DA1C8();
  v795 = 0;
  v30 = v314;
  v307 = v24;
  v308 = v29;
  v31 = *(&v327 + 1);
  v309 = v327;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v326[0]) = 8;
  sub_2142E12FC();
  v32 = v795;
  sub_2146DA1C8();
  v795 = v32;
  if (v32)
  {
    (*(v26 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v30, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v31);
    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  v33 = v318;
  v305 = v31;
  v306 = *(&v327 + 1);
  v34 = v327;
  LOBYTE(v326[0]) = 9;
  sub_2146DA1C8();
  v795 = 0;
  v304 = v327;
  LOBYTE(v326[0]) = 10;
  sub_2146DA1C8();
  v795 = 0;
  v303 = *(&v327 + 1);
  v301 = v327;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v326[0]) = 11;
  v302 = sub_2142E1378();
  v35 = v795;
  sub_2146DA1C8();
  v795 = v35;
  if (v35 || (v300 = v327, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905690, &qword_2146F3CF8), LOBYTE(v326[0]) = 12, sub_2142E13F4(), v36 = v795, sub_2146DA1C8(), (v795 = v36) != 0))
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));

LABEL_11:

    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  v298 = v327;
  v299 = BYTE8(v327);
  v297 = BYTE9(v327);
  LOBYTE(v326[0]) = 13;
  sub_2146DA1C8();
  v795 = 0;
  v296 = v327;
  v295 = BYTE8(v327);
  LOBYTE(v326[0]) = 14;
  sub_2146DA1C8();
  v795 = 0;
  v294 = v327;
  LOBYTE(v326[0]) = 15;
  sub_2146DA1C8();
  v795 = 0;
  v293 = v327;
  LOBYTE(v326[0]) = 16;
  sub_2146DA1C8();
  v795 = 0;
  v292 = v327;
  LOBYTE(v326[0]) = 17;
  sub_2146DA1C8();
  v795 = 0;
  v291 = v327;
  LOBYTE(v326[0]) = 18;
  sub_2146DA1C8();
  v795 = 0;
  v290 = v327;
  LOBYTE(v326[0]) = 19;
  sub_2146DA1C8();
  v795 = 0;
  v289 = v327;
  LOBYTE(v326[0]) = 20;
  sub_2146DA1C8();
  v795 = 0;
  v288 = v327;
  LOBYTE(v326[0]) = 21;
  sub_2146DA1C8();
  v795 = 0;
  v287 = v327;
  LOBYTE(v326[0]) = 22;
  sub_2146DA1C8();
  v795 = 0;
  v286 = v327;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v326[0]) = 23;
  v38 = sub_2142E14CC();
  v285 = v37;
  v284 = v38;
  v39 = v795;
  sub_2146DA1C8();
  v795 = v39;
  if (v39)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));

    goto LABEL_11;
  }

  v283 = v327;
  v282 = BYTE8(v327);
  LOBYTE(v326[0]) = 24;
  sub_2146DA1C8();
  v795 = 0;
  v281 = v327;
  LOBYTE(v326[0]) = 25;
  sub_2146DA1C8();
  v795 = 0;
  v280 = v327;
  LOBYTE(v326[0]) = 26;
  sub_2146DA1C8();
  v795 = 0;
  v279 = *(&v327 + 1);
  v276 = v327;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v326[0]) = 27;
  v41 = sub_2142E1548();
  v278 = v40;
  v277 = v41;
  v42 = v795;
  sub_2146DA1C8();
  v795 = v42;
  if (v42)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));

    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  v275 = v327;
  LOBYTE(v326[0]) = 28;
  sub_2146DA1C8();
  v795 = 0;
  v278 = v327;
  LOBYTE(v326[0]) = 29;
  sub_2146DA1C8();
  v795 = 0;
  v277 = *(&v327 + 1);
  v274 = v327;
  LOBYTE(v326[0]) = 30;
  sub_2146DA1C8();
  v795 = 0;
  v273 = v327;
  LOBYTE(v326[0]) = 31;
  sub_2146DA1C8();
  v795 = 0;
  v271 = v327;
  v270 = BYTE8(v327);
  LOBYTE(v326[0]) = 32;
  sub_2146DA1C8();
  v795 = 0;
  v238 = v327;
  v237 = BYTE8(v327);
  LOBYTE(v326[0]) = 33;
  sub_2146DA1C8();
  v795 = 0;
  v272 = *(&v327 + 1);
  v219 = v327;
  LOBYTE(v326[0]) = 34;
  sub_2146DA1C8();
  v795 = 0;
  v269 = v327;
  LOBYTE(v326[0]) = 35;
  sub_2146DA1C8();
  v795 = 0;
  v268 = v327;
  LOBYTE(v326[0]) = 36;
  sub_2146DA1C8();
  v795 = 0;
  v198 = v327;
  v110 = BYTE8(v327);
  LOBYTE(v326[0]) = 37;
  sub_2146DA1C8();
  v795 = 0;
  v267 = v327;
  LOBYTE(v326[0]) = 38;
  sub_2146DA1C8();
  v795 = 0;
  v266 = *(&v327 + 1);
  v197 = v327;
  LOBYTE(v326[0]) = 39;
  sub_2146DA1C8();
  v795 = 0;
  v265 = *(&v327 + 1);
  v196 = v327;
  LOBYTE(v326[0]) = 40;
  sub_2146DA1C8();
  v795 = 0;
  v264 = *(&v327 + 1);
  v195 = v327;
  LOBYTE(v326[0]) = 41;
  sub_2146DA1C8();
  v795 = 0;
  v194 = v327;
  v109 = BYTE8(v327);
  LOBYTE(v326[0]) = 42;
  sub_2146DA1C8();
  v795 = 0;
  v193 = v327;
  v108 = BYTE8(v327);
  LOBYTE(v326[0]) = 43;
  sub_2146DA1C8();
  v795 = 0;
  v192 = v327;
  v107 = BYTE8(v327);
  LOBYTE(v326[0]) = 44;
  sub_2146DA1C8();
  v795 = 0;
  v191 = v327;
  v106 = BYTE8(v327);
  LOBYTE(v326[0]) = 45;
  sub_2146DA1C8();
  v795 = 0;
  v263 = v327;
  LOBYTE(v326[0]) = 46;
  sub_2146DA1C8();
  v795 = 0;
  v262 = *(&v327 + 1);
  v190 = v327;
  LOBYTE(v326[0]) = 47;
  sub_2146DA1C8();
  v795 = 0;
  v189 = v327;
  v105 = BYTE8(v327);
  LOBYTE(v326[0]) = 48;
  sub_2146DA1C8();
  v795 = 0;
  v188 = v327;
  v104 = BYTE8(v327);
  LOBYTE(v326[0]) = 49;
  sub_2146DA1C8();
  v795 = 0;
  v261 = *(&v327 + 1);
  v187 = v327;
  LOBYTE(v326[0]) = 50;
  sub_2146DA1C8();
  v795 = 0;
  v186 = v327;
  v103 = BYTE8(v327);
  LOBYTE(v326[0]) = 51;
  sub_2146DA1C8();
  v795 = 0;
  v260 = *(&v327 + 1);
  v185 = v327;
  LOBYTE(v326[0]) = 52;
  sub_2146DA1C8();
  v795 = 0;
  v184 = v327;
  v102 = BYTE8(v327);
  LOBYTE(v326[0]) = 53;
  sub_2146DA1C8();
  v795 = 0;
  v183 = v327;
  v101 = BYTE8(v327);
  LOBYTE(v326[0]) = 54;
  sub_2146DA1C8();
  v795 = 0;
  v182 = v327;
  v100 = BYTE8(v327);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A0, &qword_2146F3D08);
  LOBYTE(v326[0]) = 55;
  v44 = sub_2142E1648();
  v258 = v43;
  *(&v257 + 1) = v44;
  v45 = v795;
  sub_2146DA1C8();
  v795 = v45;
  if (v45)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));

    goto LABEL_11;
  }

  v259 = v327;
  LOBYTE(v326[0]) = 56;
  sub_2146DA1C8();
  v795 = 0;
  v258 = v327;
  LOBYTE(v326[0]) = 57;
  sub_2146DA1C8();
  v795 = 0;
  v181 = v327;
  v99 = BYTE8(v327);
  LOBYTE(v326[0]) = 58;
  sub_2146DA1C8();
  v795 = 0;
  v180 = v327;
  v98 = BYTE8(v327);
  LOBYTE(v326[0]) = 59;
  sub_2146DA1C8();
  v795 = 0;
  v179 = v327;
  v97 = BYTE8(v327);
  LOBYTE(v326[0]) = 60;
  sub_2146DA1C8();
  v795 = 0;
  v178 = v327;
  LOBYTE(v326[0]) = 61;
  sub_2146DA1C8();
  v795 = 0;
  v177 = v327;
  LOBYTE(v326[0]) = 62;
  sub_2146DA1C8();
  v795 = 0;
  v176 = v327;
  LOBYTE(v326[0]) = 63;
  sub_2146DA1C8();
  v795 = 0;
  v175 = v327;
  LOBYTE(v326[0]) = 64;
  sub_2146DA1C8();
  v795 = 0;
  v256 = *(&v327 + 1);
  v174 = v327;
  LOBYTE(v326[0]) = 65;
  sub_2146DA1C8();
  v795 = 0;
  v255 = *(&v327 + 1);
  v173 = v327;
  LOBYTE(v326[0]) = 66;
  sub_2146DA1C8();
  v795 = 0;
  v257 = v327;
  LOBYTE(v326[0]) = 67;
  sub_2146DA1C8();
  v795 = 0;
  v254 = *(&v327 + 1);
  v172 = v327;
  LOBYTE(v326[0]) = 68;
  sub_2146DA1C8();
  v795 = 0;
  v253 = *(&v327 + 1);
  v171 = v327;
  LOBYTE(v326[0]) = 69;
  sub_2146DA1C8();
  v795 = 0;
  v252 = *(&v327 + 1);
  v170 = v327;
  LOBYTE(v326[0]) = 70;
  sub_2146DA1C8();
  v795 = 0;
  v251 = *(&v327 + 1);
  v169 = v327;
  LOBYTE(v326[0]) = 71;
  sub_2146DA1C8();
  v795 = 0;
  v250 = *(&v327 + 1);
  v168 = v327;
  LOBYTE(v326[0]) = 72;
  sub_2146DA1C8();
  v795 = 0;
  v167 = v327;
  v96 = BYTE8(v327);
  LOBYTE(v326[0]) = 73;
  sub_2146DA1C8();
  v795 = 0;
  v249 = *(&v327 + 1);
  v166 = v327;
  LOBYTE(v326[0]) = 74;
  sub_2146DA1C8();
  v795 = 0;
  v165 = v327;
  v95 = BYTE8(v327);
  LOBYTE(v326[0]) = 75;
  sub_2146DA1C8();
  v795 = 0;
  v248 = *(&v327 + 1);
  v164 = v327;
  LOBYTE(v326[0]) = 76;
  sub_2146DA1C8();
  v795 = 0;
  v163 = v327;
  v94 = BYTE8(v327);
  LOBYTE(v326[0]) = 77;
  sub_2146DA1C8();
  v795 = 0;
  v162 = v327;
  LOBYTE(v326[0]) = 78;
  sub_2146DA1C8();
  v795 = 0;
  v247 = *(&v327 + 1);
  v161 = v327;
  LOBYTE(v326[0]) = 79;
  sub_2146DA1C8();
  v795 = 0;
  v159 = v327;
  v93 = BYTE8(v327);
  LOBYTE(v326[0]) = 80;
  sub_2146DA1C8();
  v795 = 0;
  v157 = v327;
  v92 = BYTE8(v327);
  LOBYTE(v326[0]) = 81;
  sub_2146DA1C8();
  v795 = 0;
  v245 = *(&v327 + 1);
  v156 = v327;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056A8, &qword_2146F3D10);
  v782 = 82;
  sub_2142E1720();
  v46 = v795;
  sub_2146DA1C8();
  v795 = v46;
  if (v46)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));

    return __swift_destroy_boxed_opaque_existential_1(v325);
  }

  v778 = v785;
  v779 = v786;
  v780 = v787;
  v781 = v788;
  v776 = v783;
  v777 = v784;
  LOBYTE(v326[0]) = 83;
  sub_2146DA1C8();
  v795 = 0;
  v246 = v327;
  LOBYTE(v326[0]) = 84;
  sub_2146DA1C8();
  v795 = 0;
  v243 = *(&v327 + 1);
  v154 = v327;
  LOBYTE(v326[0]) = 85;
  sub_2146DA1C8();
  v795 = 0;
  v244 = v327;
  LOBYTE(v326[0]) = 86;
  sub_2146DA1C8();
  v795 = 0;
  v151 = v327;
  v91 = BYTE8(v327);
  LOBYTE(v326[0]) = 87;
  sub_2146DA1C8();
  v795 = 0;
  v242 = *(&v327 + 1);
  v149 = v327;
  LOBYTE(v326[0]) = 88;
  sub_2146DA1C8();
  v795 = 0;
  v146 = v327;
  LOBYTE(v326[0]) = 89;
  sub_2146DA1C8();
  v795 = 0;
  v143 = v327;
  LOBYTE(v326[0]) = 90;
  sub_2146DA1C8();
  v795 = 0;
  v145 = v327;
  LOBYTE(v326[0]) = 91;
  sub_2146DA1C8();
  v795 = 0;
  v142 = v327;
  v90 = BYTE8(v327);
  LOBYTE(v326[0]) = 92;
  sub_2146DA1C8();
  v795 = 0;
  v239 = *(&v327 + 1);
  v140 = v327;
  LOBYTE(v326[0]) = 93;
  sub_2146DA1C8();
  v795 = 0;
  v241 = v327;
  LOBYTE(v326[0]) = 94;
  sub_2146DA1C8();
  v795 = 0;
  v240 = v327;
  LOBYTE(v326[0]) = 95;
  sub_2146DA1C8();
  v795 = 0;
  v138 = v327;
  v89 = BYTE8(v327);
  LOBYTE(v326[0]) = 96;
  sub_2146DA1C8();
  v795 = 0;
  v137 = v327;
  LOBYTE(v326[0]) = 97;
  sub_2146DA1C8();
  v795 = 0;
  v136 = v327;
  LOBYTE(v326[0]) = 98;
  sub_2146DA1C8();
  v795 = 0;
  v135 = v327;
  v88 = BYTE8(v327);
  LOBYTE(v326[0]) = 99;
  sub_2146DA1C8();
  v795 = 0;
  v134 = v327;
  v87 = BYTE8(v327);
  LOBYTE(v326[0]) = 100;
  sub_2146DA1C8();
  v795 = 0;
  v133 = v327;
  LOBYTE(v326[0]) = 101;
  sub_2146DA1C8();
  v795 = 0;
  v132 = v327;
  v86 = BYTE8(v327);
  LOBYTE(v326[0]) = 102;
  sub_2146DA1C8();
  v795 = 0;
  v131 = v327;
  v85 = BYTE8(v327);
  LOBYTE(v326[0]) = 103;
  sub_2146DA1C8();
  v795 = 0;
  v235 = *(&v327 + 1);
  v78 = v327;
  LOBYTE(v326[0]) = 104;
  sub_2146DA1C8();
  v795 = 0;
  v77 = v327;
  LODWORD(v84) = BYTE8(v327);
  LOBYTE(v326[0]) = 105;
  sub_2146DA1C8();
  v795 = 0;
  v76 = v327;
  v83 = BYTE8(v327);
  LOBYTE(v326[0]) = 106;
  sub_2146DA1C8();
  v795 = 0;
  v236 = v327;
  LOBYTE(v326[0]) = 107;
  sub_2146DA1C8();
  v795 = 0;
  v234 = v327;
  LOBYTE(v326[0]) = 108;
  sub_2146DA1C8();
  v795 = 0;
  v130 = v327;
  v82 = BYTE8(v327);
  LOBYTE(v326[0]) = 109;
  sub_2146DA1C8();
  v795 = 0;
  v233 = v327;
  LOBYTE(v326[0]) = 110;
  sub_2146DA1C8();
  v795 = 0;
  v232 = v327;
  LOBYTE(v326[0]) = 111;
  sub_2146DA1C8();
  v795 = 0;
  v129 = v327;
  v81 = BYTE8(v327);
  LOBYTE(v326[0]) = 112;
  sub_2146DA1C8();
  v795 = 0;
  v128 = v327;
  v208 = BYTE8(v327);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B0, &qword_2146F3D18);
  LOBYTE(v326[0]) = 113;
  sub_2142E17F8();
  v47 = v795;
  sub_2146DA1C8();
  v795 = v47;
  if (v47)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v244, *(&v244 + 1));
    sub_213FDC6BC(v241, *(&v241 + 1));
    sub_213FDC6BC(v240, *(&v240 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v233, *(&v233 + 1));
    sub_213FDC6BC(v232, *(&v232 + 1));

    sub_213FB2DF4(&v776, &qword_27C9056A8, &qword_2146F3D10);

    goto LABEL_11;
  }

  v231 = v327;
  LOBYTE(v326[0]) = 114;
  sub_2146DA1C8();
  v795 = 0;
  v230 = *(&v327 + 1);
  v127 = v327;
  LOBYTE(v326[0]) = 115;
  sub_2146DA1C8();
  v795 = 0;
  v229 = *(&v327 + 1);
  v126 = v327;
  LOBYTE(v326[0]) = 116;
  sub_2146DA1C8();
  v795 = 0;
  v125 = v327;
  v207 = BYTE8(v327);
  LOBYTE(v326[0]) = 117;
  sub_2146DA1C8();
  v795 = 0;
  v124 = v327;
  LOBYTE(v326[0]) = 118;
  sub_2146DA1C8();
  v795 = 0;
  v123 = v327;
  LOBYTE(v326[0]) = 119;
  sub_2146DA1C8();
  v795 = 0;
  v122 = v327;
  v206 = BYTE8(v327);
  LOBYTE(v326[0]) = 120;
  sub_2146DA1C8();
  v795 = 0;
  v228 = v327;
  LOBYTE(v326[0]) = 121;
  sub_2146DA1C8();
  v795 = 0;
  v121 = v327;
  v205 = BYTE8(v327);
  LOBYTE(v326[0]) = 122;
  sub_2146DA1C8();
  v795 = 0;
  v120 = v327;
  LOBYTE(v326[0]) = 123;
  sub_2146DA1C8();
  v795 = 0;
  v227 = *(&v327 + 1);
  v119 = v327;
  LOBYTE(v326[0]) = 124;
  sub_2146DA1C8();
  v795 = 0;
  v118 = v327;
  v204 = BYTE8(v327);
  LOBYTE(v326[0]) = 125;
  sub_2146DA1C8();
  v795 = 0;
  v117 = v327;
  v203 = BYTE8(v327);
  LOBYTE(v326[0]) = 126;
  sub_2146DA1C8();
  v795 = 0;
  v226 = v327;
  LOBYTE(v326[0]) = 127;
  sub_2146DA1C8();
  v795 = 0;
  v225 = v327;
  LOBYTE(v326[0]) = 0x80;
  sub_2146DA1C8();
  v795 = 0;
  v116 = v327;
  v202 = BYTE8(v327);
  LOBYTE(v326[0]) = -127;
  sub_2146DA1C8();
  v795 = 0;
  v224 = v327;
  LOBYTE(v326[0]) = -126;
  sub_2146DA1C8();
  v795 = 0;
  v223 = v327;
  LOBYTE(v326[0]) = -125;
  sub_2146DA1C8();
  v795 = 0;
  v222 = v327;
  LOBYTE(v326[0]) = -124;
  sub_2146DA1C8();
  v795 = 0;
  v115 = v327;
  v201 = BYTE8(v327);
  LOBYTE(v326[0]) = -123;
  sub_2146DA1C8();
  v795 = 0;
  v221 = v327;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v326[0]) = -122;
  sub_2142E18D0();
  v48 = v795;
  sub_2146DA1C8();
  v795 = v48;
  if (v48)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v244, *(&v244 + 1));
    sub_213FDC6BC(v241, *(&v241 + 1));
    sub_213FDC6BC(v240, *(&v240 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v233, *(&v233 + 1));
    sub_213FDC6BC(v232, *(&v232 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));
    sub_213FDC6BC(v221, *(&v221 + 1));

    sub_213FB2DF4(&v776, &qword_27C9056A8, &qword_2146F3D10);

    goto LABEL_11;
  }

  v114 = v327;
  v200 = BYTE8(v327);
  LOBYTE(v326[0]) = -121;
  sub_2146DA1C8();
  v795 = 0;
  v220 = v327;
  LOBYTE(v326[0]) = -120;
  sub_2146DA1C8();
  v795 = 0;
  v218 = *(&v327 + 1);
  v113 = v327;
  LOBYTE(v326[0]) = -119;
  sub_2146DA1C8();
  v795 = 0;
  v112 = v327;
  v199 = BYTE8(v327);
  LOBYTE(v326[0]) = -118;
  sub_2146DA1C8();
  v795 = 0;
  v111 = v327;
  v209 = BYTE8(v327);
  LOBYTE(v326[0]) = -117;
  sub_2146DA1C8();
  v795 = 0;
  v160 = v327;
  v215 = BYTE8(v327);
  LOBYTE(v326[0]) = -116;
  sub_2146DA1C8();
  v795 = 0;
  v158 = v327;
  v214 = BYTE8(v327);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056C0, &qword_2146F3D28);
  LOBYTE(v326[0]) = -115;
  sub_2142E194C();
  v49 = v795;
  sub_2146DA1C8();
  v795 = v49;
  if (v49)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v244, *(&v244 + 1));
    sub_213FDC6BC(v241, *(&v241 + 1));
    sub_213FDC6BC(v240, *(&v240 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v233, *(&v233 + 1));
    sub_213FDC6BC(v232, *(&v232 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));
    sub_213FDC6BC(v221, *(&v221 + 1));
    sub_213FDC6BC(v220, *(&v220 + 1));

    sub_213FB2DF4(&v776, &qword_27C9056A8, &qword_2146F3D10);
LABEL_38:

    goto LABEL_11;
  }

  v285 = v327;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056C8, &qword_2146F3D30);
  LOBYTE(v326[0]) = -114;
  sub_2142E1A24();
  v50 = v795;
  sub_2146DA1C8();
  v795 = v50;
  if (v50)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v244, *(&v244 + 1));
    sub_213FDC6BC(v241, *(&v241 + 1));
    sub_213FDC6BC(v240, *(&v240 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v233, *(&v233 + 1));
    sub_213FDC6BC(v232, *(&v232 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));
    sub_213FDC6BC(v221, *(&v221 + 1));
    sub_213FDC6BC(v220, *(&v220 + 1));

    sub_213FB2DF4(&v776, &qword_27C9056A8, &qword_2146F3D10);
LABEL_37:

    goto LABEL_38;
  }

  v284 = v327;
  LOBYTE(v326[0]) = -113;
  sub_2146DA1C8();
  v795 = 0;
  v310 = *(&v327 + 1);
  v307 = v327;
  LOBYTE(v326[0]) = -112;
  sub_2146DA1C8();
  v795 = 0;
  v155 = v327;
  v213 = BYTE8(v327);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056D0, &qword_2146F3D38);
  LOBYTE(v326[0]) = -111;
  sub_2142E1AFC();
  v51 = v795;
  sub_2146DA1C8();
  v795 = v51;
  if (v51)
  {
    (*(v324 + 8))(v8, v5);
    sub_213FDC6BC(v315, *(&v315 + 1));
    sub_213FDC6BC(v314, v313);
    sub_213FDC6BC(v311, *(&v311 + 1));
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v244, *(&v244 + 1));
    sub_213FDC6BC(v241, *(&v241 + 1));
    sub_213FDC6BC(v240, *(&v240 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v233, *(&v233 + 1));
    sub_213FDC6BC(v232, *(&v232 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));
    sub_213FDC6BC(v221, *(&v221 + 1));
    sub_213FDC6BC(v220, *(&v220 + 1));
    sub_213FDC6BC(v307, v310);

    sub_213FB2DF4(&v776, &qword_27C9056A8, &qword_2146F3D10);

    goto LABEL_37;
  }

  v217 = v327;
  LOBYTE(v326[0]) = -110;
  sub_2146DA1C8();
  v795 = 0;
  v153 = v327;
  v212 = BYTE8(v327);
  LOBYTE(v326[0]) = -109;
  sub_2146DA1C8();
  v795 = 0;
  v152 = v327;
  v211 = BYTE8(v327);
  LOBYTE(v326[0]) = -108;
  sub_2146DA1C8();
  v795 = 0;
  v150 = v327;
  LOBYTE(v326[0]) = -107;
  sub_2146DA1C8();
  v795 = 0;
  v148 = v327;
  LOBYTE(v326[0]) = -106;
  sub_2146DA1C8();
  v795 = 0;
  v216 = *(&v327 + 1);
  v147 = v327;
  LOBYTE(v326[0]) = -105;
  sub_2146DA1C8();
  v795 = 0;
  v144 = v327;
  LOBYTE(v326[0]) = -104;
  sub_2146DA1C8();
  v795 = 0;
  v141 = v327;
  v210 = BYTE8(v327);
  LOBYTE(v326[0]) = -103;
  sub_2146DA1C8();
  v795 = 0;
  v321 = v327;
  LODWORD(v322) = BYTE8(v327);
  LOBYTE(v326[0]) = -102;
  sub_2146DA1C8();
  v795 = 0;
  v139 = v327;
  v774 = -101;
  sub_2146DA1C8();
  v795 = 0;
  LODWORD(v302) = v775;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v53 = swift_allocObject();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2146F3C50;
  *(v53 + 16) = sub_21438F468;
  *(v53 + 24) = v54;
  *(v52 + 32) = v53;
  sub_213FDCA18(v315, *(&v315 + 1));
  sub_213FDCA18(v314, v313);
  sub_213FDCA18(v311, *(&v311 + 1));
  sub_213FDCA18(v312, v308);
  sub_213FDCA18(v309, v305);
  sub_213FDCA18(v304, *(&v304 + 1));
  sub_213FDCA18(v294, *(&v294 + 1));
  sub_213FDCA18(v291, *(&v291 + 1));
  sub_213FDCA18(v290, *(&v290 + 1));
  sub_213FDCA18(v286, *(&v286 + 1));
  sub_213FDCA18(v269, *(&v269 + 1));
  sub_213FDCA18(v268, *(&v268 + 1));
  sub_213FDCA18(v267, *(&v267 + 1));
  sub_213FDCA18(v263, *(&v263 + 1));
  sub_213FDCA18(v257, *(&v257 + 1));
  sub_213FDCA18(v246, *(&v246 + 1));
  sub_213FDCA18(v244, *(&v244 + 1));
  sub_213FDCA18(v241, *(&v241 + 1));
  sub_213FDCA18(v240, *(&v240 + 1));
  sub_213FDCA18(v236, *(&v236 + 1));
  sub_213FDCA18(v234, *(&v234 + 1));
  sub_213FDCA18(v233, *(&v233 + 1));
  sub_213FDCA18(v232, *(&v232 + 1));
  sub_213FDCA18(v228, *(&v228 + 1));
  sub_213FDCA18(v226, *(&v226 + 1));
  sub_213FDCA18(v225, *(&v225 + 1));
  sub_213FDCA18(v224, *(&v224 + 1));
  sub_213FDCA18(v223, *(&v223 + 1));
  sub_213FDCA18(v222, *(&v222 + 1));
  sub_213FDCA18(v221, *(&v221 + 1));
  sub_213FDCA18(v220, *(&v220 + 1));
  sub_213FDCA18(v307, v310);
  sub_21404328C(v52, &v327);
  v764 = v295;
  v760 = v282;
  v758 = v270;
  v773 = v329;
  v756 = v237;
  v754 = v110;
  v55 = v327;
  v752 = v109;
  v73 = v328;
  v750 = v108;
  v748 = v107;
  v746 = v106;
  v744 = v105;
  v742 = v104;
  v740 = v103;
  v738 = v102;
  v736 = v101;
  v734 = v100;
  v732 = v99;
  v730 = v98;
  v728 = v97;
  v725 = v96;
  v723 = v95;
  v721 = v94;
  v718 = v93;
  v716 = v92;
  v791 = v778;
  v792 = v779;
  v793 = v780;
  v794 = v781;
  v789 = v776;
  v790 = v777;
  v714 = v91;
  v710 = v90;
  v708 = v89;
  v705 = v88;
  v703 = v87;
  v700 = v86;
  v698 = v85;
  v696 = v84;
  v694 = v83;
  v692 = v82;
  v690 = v81;
  v688 = v208;
  v686 = v207;
  v683 = v206;
  v681 = v205;
  v678 = v204;
  v676 = v203;
  v674 = v202;
  v672 = v201;
  v670 = v200;
  v668 = v199;
  v666 = v209;
  v664 = v215;
  v662 = v214;
  v660 = v213;
  v658 = v212;
  v656 = v211;
  v652 = v210;
  v650 = v322;
  v80 = v319;
  v81 = v33;
  v82 = v297;
  v83 = v295;
  v86 = v282;
  v87 = v270;
  v88 = v237;
  v89 = v110;
  v90 = v109;
  v91 = v108;
  v92 = v107;
  v93 = v106;
  v94 = v105;
  v95 = v104;
  v96 = v103;
  v97 = v102;
  v98 = v101;
  v99 = v100;
  v100 = v732;
  v101 = v730;
  v102 = v728;
  v106 = v725;
  v107 = v723;
  v108 = v721;
  v328 = 0xD00000000000001CLL;
  v74 = v329;
  v767 = v329;
  v649 = v320;
  v85 = BYTE1(v329);
  LOBYTE(v326[0]) = BYTE1(v329);
  *&v327 = 0xD000000000000016;
  *(&v327 + 1) = 0x800000021478C7E0;
  v329 = 0x800000021478A360;
  v103 = v718;
  v104 = v716;
  v105 = v714;
  v297 = v710;
  v295 = v708;
  v282 = v705;
  v237 = v703;
  v109 = v698;
  v110 = v700;
  v75 = v84;
  v270 = v694;
  v318 = v692;
  v319 = v690;

  v79 = *(&v55 + 1);
  v56 = v795;
  v84 = v55;
  v57 = (v55)(&v649, v326, &v327);
  v795 = v56;
  if (v56)
  {

    sub_213FDC6BC(v307, v310);
    sub_213FDC6BC(v220, *(&v220 + 1));
LABEL_44:
    sub_213FDC6BC(v221, *(&v221 + 1));
    sub_213FDC6BC(v222, *(&v222 + 1));
    sub_213FDC6BC(v223, *(&v223 + 1));
    sub_213FDC6BC(v224, *(&v224 + 1));
    sub_213FDC6BC(v225, *(&v225 + 1));
    sub_213FDC6BC(v226, *(&v226 + 1));
    sub_213FDC6BC(v228, *(&v228 + 1));
    sub_213FDC6BC(v232, *(&v232 + 1));
    sub_213FDC6BC(v233, *(&v233 + 1));
    sub_213FDC6BC(v234, *(&v234 + 1));
    sub_213FDC6BC(v236, *(&v236 + 1));
    sub_213FDC6BC(v240, *(&v240 + 1));
    sub_213FDC6BC(v241, *(&v241 + 1));
    sub_213FDC6BC(v244, *(&v244 + 1));
    sub_213FDC6BC(v246, *(&v246 + 1));
    sub_213FDC6BC(v257, *(&v257 + 1));
    sub_213FDC6BC(v263, *(&v263 + 1));
    sub_213FDC6BC(v267, *(&v267 + 1));
    sub_213FDC6BC(v268, *(&v268 + 1));
    sub_213FDC6BC(v269, *(&v269 + 1));
    sub_213FDC6BC(v286, *(&v286 + 1));
    sub_213FDC6BC(v290, *(&v290 + 1));
    sub_213FDC6BC(v291, *(&v291 + 1));
    sub_213FDC6BC(v294, *(&v294 + 1));
    sub_213FDC6BC(v304, *(&v304 + 1));
    sub_213FDC6BC(v309, v305);
    sub_213FDC6BC(v312, v308);
    sub_213FDC6BC(v311, *(&v311 + 1));
    v68 = v314;
    v69 = v313;
    sub_213FDC6BC(v314, v313);
    v70 = v315;
    sub_213FDC6BC(v315, *(&v315 + 1));
    (*(v324 + 8))(v8, v5);
    v71 = v79;

    v773 = v74;
    __swift_destroy_boxed_opaque_existential_1(v325);
    *&v327 = v84;
    *(&v327 + 1) = v71;
    v328 = v73;
    BYTE1(v329) = v85;
    v330 = v317;
    v331 = v80;
    v333 = v316;
    v334 = v81;
    v336 = v70;
    v337 = v68;
    v338 = v69;
    v339 = v311;
    v340 = v312;
    v341 = v308;
    v342 = v309;
    v343 = v305;
    v344 = v34;
    v345 = v306;
    v346 = v304;
    v347 = v301;
    v348 = v303;
    v349 = v300;
    v351 = v298;
    v352 = v299;
    v353 = v82;
    v356 = v296;
    v357 = v83;
    v359 = v294;
    v360 = v293;
    v361 = v292;
    v364 = v291;
    v365 = v290;
    v366 = v289;
    v367 = v288;
    v368 = v287;
    v369 = v286;
    v370 = v283;
    v371 = v86;
    v373 = v281;
    v374 = v280;
    v375 = v276;
    v376 = v279;
    v377 = v275;
    v378 = v278;
    v379 = v274;
    v380 = v277;
    v381 = v273;
    v382 = v271;
    v383 = v87;
    v385 = v238;
    v386 = v88;
    v388 = v219;
    v389 = v272;
    v390 = v269;
    v391 = v268;
    v392 = v198;
    v393 = v89;
    v395 = v267;
    v396 = v197;
    v397 = v266;
    v398 = v196;
    v399 = v265;
    v400 = v195;
    v401 = v264;
    v402 = v194;
    v403 = v90;
    v405 = v193;
    v406 = v91;
    v408 = v192;
    v409 = v92;
    v411 = v191;
    v412 = v93;
    v414 = v263;
    v415 = v190;
    v416 = v262;
    v417 = v189;
    v418 = v94;
    v420 = v188;
    v421 = v95;
    v423 = v187;
    v424 = v261;
    v425 = v186;
    v426 = v96;
    v428 = v185;
    v429 = v260;
    v430 = v184;
    v431 = v97;
    v433 = v183;
    v434 = v98;
    v436 = v182;
    v437 = v99;
    v439 = v259;
    v440 = v258;
    v441 = v181;
    v442 = v100;
    v444 = v180;
    v445 = v101;
    v447 = v179;
    v448 = v102;
    v449 = v178;
    v450 = v177;
    v451 = v176;
    v452 = v175;
    v455 = v174;
    v456 = v256;
    v457 = v173;
    v458 = v255;
    v459 = v257;
    v460 = v172;
    v461 = v254;
    v462 = v171;
    v463 = v253;
    v464 = v170;
    v465 = v252;
    v466 = v169;
    v467 = v251;
    v468 = v168;
    v469 = v250;
    v470 = v167;
    v471 = v106;
    v473 = v166;
    v474 = v249;
    v475 = v165;
    v476 = v107;
    v478 = v164;
    v479 = v248;
    v480 = v163;
    v481 = v108;
    v482 = v162;
    v485 = v161;
    v486 = v247;
    v487 = v159;
    v488 = v103;
    v490 = v157;
    v491 = v104;
    v493 = v156;
    v494 = v245;
    v501 = v246;
    v502 = v154;
    v503 = v243;
    v504 = v244;
    v505 = v151;
    v506 = v105;
    v508 = v149;
    v509 = v242;
    v510 = v146;
    v511 = v143;
    v512 = v145;
    v515 = v142;
    v516 = v297;
    v518 = v140;
    v519 = v239;
    v520 = v241;
    v521 = v240;
    v522 = v138;
    v523 = v295;
    v524 = v137;
    v525 = v136;
    v528 = v135;
    v529 = v282;
    v531 = v134;
    v532 = v237;
    v533 = v133;
    v536 = v132;
    v537 = v110;
    v539 = v131;
    v540 = v109;
    v542 = v78;
    v543 = v235;
    v544 = v77;
    v545 = v75;
    v547 = v76;
    v548 = v270;
    v550 = v236;
    v551 = v234;
    v552 = v130;
    v553 = v318;
    v555 = v233;
    v556 = v232;
    v557 = v129;
    v558 = v319;
    v560 = v128;
    v561 = v208;
    v563 = v231;
    v564 = v127;
    v565 = v230;
    v566 = v126;
    v567 = v229;
    v568 = v125;
    v569 = v207;
    v570 = v124;
    v571 = v123;
    v574 = v122;
    v575 = v206;
    v577 = v228;
    v578 = v121;
    v579 = v205;
    v580 = v120;
    v583 = v119;
    v584 = v227;
    v585 = v118;
    v586 = v204;
    v588 = v117;
    v589 = v203;
    v591 = v226;
    v592 = v225;
    v593 = v116;
    v594 = v202;
    v596 = v224;
    v597 = v223;
    v598 = v222;
    v599 = v115;
    v600 = v201;
    v602 = v221;
    v603 = v114;
    v604 = v200;
    v606 = v220;
    v607 = v113;
    v608 = v218;
    v609 = v112;
    v610 = v199;
    v612 = v111;
    *v372 = *v759;
    *v384 = *v757;
    *v387 = *v755;
    *v394 = *v753;
    *v404 = *v751;
    *v407 = *v749;
    *v410 = *v747;
    *v413 = *v745;
    *v419 = *v743;
    *v422 = *v741;
    *v427 = *v739;
    *v432 = *v737;
    *v435 = *v735;
    *v438 = *v733;
    *v443 = *v731;
    *v446 = *v729;
    v453 = v726;
    *v472 = *v724;
    *v477 = *v722;
    v483 = v719;
    *v489 = *v717;
    *v492 = *v715;
    *v507 = *v713;
    v513 = v711;
    *v517 = *v709;
    v526 = v706;
    *v530 = *v704;
    v534 = v701;
    *v538 = *v699;
    *v541 = *v697;
    *v546 = *v695;
    *v549 = *v693;
    *v554 = *v691;
    *v559 = *v689;
    *v562 = *v687;
    v572 = v684;
    *v576 = *v682;
    v581 = v679;
    *v587 = *v677;
    *v590 = *v675;
    *v595 = *v673;
    *v601 = *v671;
    *v605 = *v669;
    *v611 = *v667;
    LOBYTE(v329) = v773;
    *(&v329 + 2) = v771;
    HIWORD(v329) = v772;
    *v332 = *v770;
    *&v332[3] = *&v770[3];
    *&v335[3] = *&v769[3];
    *v335 = *v769;
    *v350 = *v768;
    *&v350[3] = *&v768[3];
    v354 = v765;
    v355 = v766;
    *v358 = *v763;
    *&v358[3] = *&v763[3];
    v363 = v762;
    v362 = v761;
    *&v372[3] = *&v759[3];
    *&v384[3] = *&v757[3];
    *&v387[3] = *&v755[3];
    *&v394[3] = *&v753[3];
    *&v404[3] = *&v751[3];
    *&v407[3] = *&v749[3];
    *&v410[3] = *&v747[3];
    *&v413[3] = *&v745[3];
    *&v419[3] = *&v743[3];
    *&v422[3] = *&v741[3];
    *&v427[3] = *&v739[3];
    *&v432[3] = *&v737[3];
    *&v435[3] = *&v735[3];
    *&v438[3] = *&v733[3];
    *&v443[3] = *&v731[3];
    *&v446[3] = *&v729[3];
    v454 = v727;
    *&v472[3] = *&v724[3];
    *&v477[3] = *&v722[3];
    v484 = v720;
    *&v489[3] = *&v717[3];
    *&v492[3] = *&v715[3];
    v496 = v790;
    v495 = v789;
    v500 = v794;
    v499 = v793;
    v498 = v792;
    v497 = v791;
    *&v507[3] = *&v713[3];
    v514 = v712;
    *&v517[3] = *&v709[3];
    v527 = v707;
    *&v530[3] = *&v704[3];
    v535 = v702;
    *&v538[3] = *&v699[3];
    *&v541[3] = *&v697[3];
    *&v546[3] = *&v695[3];
    *&v549[3] = *&v693[3];
    *&v554[3] = *&v691[3];
    *&v559[3] = *&v689[3];
    *&v562[3] = *&v687[3];
    v573 = v685;
    *&v576[3] = *&v682[3];
    v582 = v680;
    *&v587[3] = *&v677[3];
    *&v590[3] = *&v675[3];
    *&v595[3] = *&v673[3];
    *&v601[3] = *&v671[3];
    *&v605[3] = *&v669[3];
    *&v611[3] = *&v667[3];
    v613 = v209;
    *v614 = *v665;
    *&v614[3] = *&v665[3];
    v615 = v160;
    v616 = v215;
    *v617 = *v663;
    *&v617[3] = *&v663[3];
    v618 = v158;
    v619 = v214;
    *v620 = *v661;
    *&v620[3] = *&v661[3];
    v621 = v285;
    v622 = v284;
    v623 = v307;
    v624 = v310;
    v625 = v155;
    v626 = v213;
    *v627 = *v659;
    *&v627[3] = *&v659[3];
    v628 = v217;
    v629 = v153;
    v630 = v212;
    *v631 = *v657;
    *&v631[3] = *&v657[3];
    v632 = v152;
    v633 = v211;
    v634 = v150;
    v635 = v148;
    v636 = v654;
    v637 = v655;
    v638 = v147;
    v639 = v216;
    v640 = v144;
    *v641 = *v653;
    *&v641[3] = *&v653[3];
    v642 = v141;
    v643 = v210;
    *v644 = *v651;
    *&v644[3] = *&v651[3];
    v645 = v321;
    v646 = v322;
    v647 = v139;
    v648 = v302;
    return sub_2142E1154(&v327);
  }

  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    v66 = swift_allocError();
    *v67 = 0xD000000000000016;
    v67[1] = 0x800000021478C7E0;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    v795 = v66;
    swift_willThrow();
    sub_213FDC6BC(v307, v310);
    sub_213FDC6BC(v220, *(&v220 + 1));
    v74 = v767;
    goto LABEL_44;
  }

  sub_213FDC6BC(v307, v310);
  sub_213FDC6BC(v220, *(&v220 + 1));
  v767 = 0;
  sub_213FDC6BC(v221, *(&v221 + 1));
  sub_213FDC6BC(v222, *(&v222 + 1));
  sub_213FDC6BC(v223, *(&v223 + 1));
  sub_213FDC6BC(v224, *(&v224 + 1));
  sub_213FDC6BC(v225, *(&v225 + 1));
  sub_213FDC6BC(v226, *(&v226 + 1));
  sub_213FDC6BC(v228, *(&v228 + 1));
  sub_213FDC6BC(v232, *(&v232 + 1));
  sub_213FDC6BC(v233, *(&v233 + 1));
  sub_213FDC6BC(v234, *(&v234 + 1));
  sub_213FDC6BC(v236, *(&v236 + 1));
  sub_213FDC6BC(v240, *(&v240 + 1));
  sub_213FDC6BC(v241, *(&v241 + 1));
  sub_213FDC6BC(v244, *(&v244 + 1));
  sub_213FDC6BC(v246, *(&v246 + 1));
  sub_213FDC6BC(v257, *(&v257 + 1));
  sub_213FDC6BC(v263, *(&v263 + 1));
  sub_213FDC6BC(v267, *(&v267 + 1));
  sub_213FDC6BC(v268, *(&v268 + 1));
  sub_213FDC6BC(v269, *(&v269 + 1));
  sub_213FDC6BC(v286, *(&v286 + 1));
  sub_213FDC6BC(v290, *(&v290 + 1));
  sub_213FDC6BC(v291, *(&v291 + 1));
  sub_213FDC6BC(v294, *(&v294 + 1));
  sub_213FDC6BC(v304, *(&v304 + 1));
  sub_213FDC6BC(v309, v305);
  v58 = v312;
  v59 = v308;
  sub_213FDC6BC(v312, v308);
  sub_213FDC6BC(v311, *(&v311 + 1));
  sub_213FDC6BC(v314, v313);
  sub_213FDC6BC(v315, *(&v315 + 1));
  (*(v324 + 8))(v8, v5);
  v60 = v79;

  *(&v326[12] + 1) = *v768;
  *(&v326[13] + 2) = v765;
  *(&v326[14] + 1) = *v763;
  *(&v326[15] + 10) = v761;
  *(&v326[22] + 9) = *v759;
  *(&v326[29] + 9) = *v757;
  *(&v326[30] + 9) = *v755;
  *(&v326[34] + 9) = *v753;
  *(&v326[39] + 9) = *v751;
  *(&v326[40] + 9) = *v749;
  *(&v326[41] + 9) = *v747;
  *(&v326[42] + 9) = *v745;
  *(&v326[45] + 9) = *v743;
  *(&v326[46] + 9) = *v741;
  *(&v326[48] + 9) = *v739;
  *(&v326[50] + 9) = *v737;
  *(&v326[51] + 9) = *v735;
  *(&v326[52] + 9) = *v733;
  *(&v326[54] + 9) = *v731;
  *(&v326[55] + 9) = *v729;
  *(&v326[56] + 13) = v726;
  *(&v326[65] + 9) = *v724;
  *(&v326[67] + 9) = *v722;
  *(&v326[69] + 10) = v719;
  *(&v326[71] + 9) = *v717;
  *(&v326[72] + 9) = *v715;
  *(&v326[83] + 9) = *v713;
  *(&v326[85] + 3) = v711;
  *(&v326[86] + 1) = *v709;
  *(&v326[90] + 3) = v706;
  *(&v326[91] + 1) = *v704;
  *(&v326[92] + 2) = v701;
  *(&v326[93] + 1) = *v699;
  *(&v326[94] + 1) = *v697;
  *(&v326[96] + 1) = *v695;
  *(&v326[97] + 1) = *v693;
  *(&v326[100] + 1) = *v691;
  *(&v326[103] + 1) = *v689;
  *(&v326[104] + 1) = *v687;
  *(&v326[107] + 11) = v684;
  *(&v326[108] + 9) = *v682;
  *(&v326[110] + 10) = v679;
  *(&v326[112] + 9) = *v677;
  *(&v326[113] + 9) = *v675;
  *(&v326[116] + 9) = *v673;
  *(&v326[120] + 9) = *v671;
  *(&v326[122] + 9) = *v669;
  *(&v326[125] + 9) = *v667;
  *(&v326[126] + 9) = *v665;
  *(&v326[127] + 9) = *v663;
  *(&v326[128] + 9) = *v661;
  *(&v326[131] + 9) = *v659;
  *(&v326[133] + 1) = *v657;
  *(&v326[134] + 3) = v654;
  *(&v326[135] + 9) = *v653;
  *(&v326[136] + 9) = *v651;
  *(&v326[1] + 10) = v771;
  HIWORD(v326[1]) = v772;
  *(&v326[2] + 9) = *v770;
  HIDWORD(v326[2]) = *&v770[3];
  *(&v326[3] + 9) = *v769;
  HIDWORD(v326[3]) = *&v769[3];
  DWORD1(v326[12]) = *&v768[3];
  WORD3(v326[13]) = v766;
  DWORD1(v326[14]) = *&v763[3];
  HIWORD(v326[15]) = v762;
  HIDWORD(v326[22]) = *&v759[3];
  HIDWORD(v326[29]) = *&v757[3];
  HIDWORD(v326[30]) = *&v755[3];
  HIDWORD(v326[34]) = *&v753[3];
  HIDWORD(v326[39]) = *&v751[3];
  HIDWORD(v326[40]) = *&v749[3];
  HIDWORD(v326[41]) = *&v747[3];
  HIDWORD(v326[42]) = *&v745[3];
  HIDWORD(v326[45]) = *&v743[3];
  HIDWORD(v326[46]) = *&v741[3];
  HIDWORD(v326[48]) = *&v739[3];
  HIDWORD(v326[50]) = *&v737[3];
  HIDWORD(v326[51]) = *&v735[3];
  HIDWORD(v326[52]) = *&v733[3];
  HIDWORD(v326[54]) = *&v731[3];
  HIDWORD(v326[55]) = *&v729[3];
  HIBYTE(v326[56]) = v727;
  HIDWORD(v326[65]) = *&v724[3];
  HIDWORD(v326[67]) = *&v722[3];
  HIWORD(v326[69]) = v720;
  HIDWORD(v326[71]) = *&v717[3];
  HIDWORD(v326[72]) = *&v715[3];
  HIDWORD(v326[83]) = *&v713[3];
  BYTE7(v326[85]) = v712;
  DWORD1(v326[86]) = *&v709[3];
  BYTE7(v326[90]) = v707;
  DWORD1(v326[91]) = *&v704[3];
  WORD3(v326[92]) = v702;
  DWORD1(v326[93]) = *&v699[3];
  DWORD1(v326[94]) = *&v697[3];
  DWORD1(v326[96]) = *&v695[3];
  DWORD1(v326[97]) = *&v693[3];
  DWORD1(v326[100]) = *&v691[3];
  DWORD1(v326[103]) = *&v689[3];
  DWORD1(v326[104]) = *&v687[3];
  HIBYTE(v326[107]) = v685;
  HIDWORD(v326[108]) = *&v682[3];
  HIWORD(v326[110]) = v680;
  HIDWORD(v326[112]) = *&v677[3];
  HIDWORD(v326[113]) = *&v675[3];
  HIDWORD(v326[116]) = *&v673[3];
  HIDWORD(v326[120]) = *&v671[3];
  HIDWORD(v326[122]) = *&v669[3];
  HIDWORD(v326[125]) = *&v667[3];
  HIDWORD(v326[126]) = *&v665[3];
  HIDWORD(v326[127]) = *&v663[3];
  HIDWORD(v326[128]) = *&v661[3];
  HIDWORD(v326[131]) = *&v659[3];
  DWORD1(v326[133]) = *&v657[3];
  BYTE7(v326[134]) = v655;
  HIDWORD(v326[135]) = *&v653[3];
  HIDWORD(v326[136]) = *&v651[3];
  v773 = 0;
  *&v326[0] = v84;
  *(&v326[0] + 1) = v60;
  *&v326[1] = v320;
  BYTE8(v326[1]) = 0;
  BYTE9(v326[1]) = v85;
  *&v326[2] = v317;
  BYTE8(v326[2]) = v80;
  *&v326[3] = v316;
  BYTE8(v326[3]) = v81;
  v326[4] = v315;
  *&v326[5] = v314;
  *(&v326[5] + 1) = v313;
  v326[6] = v311;
  *&v326[7] = v58;
  *(&v326[7] + 1) = v59;
  *&v326[8] = v309;
  *(&v326[8] + 1) = v305;
  v72 = v34;
  *&v326[9] = v34;
  *(&v326[9] + 1) = v306;
  v326[10] = v304;
  *&v326[11] = v301;
  *(&v326[11] + 1) = v303;
  LOBYTE(v326[12]) = v300;
  *(&v326[12] + 1) = v298;
  LOBYTE(v326[13]) = v299;
  BYTE1(v326[13]) = v82;
  *(&v326[13] + 1) = v296;
  LOBYTE(v326[14]) = v83;
  *(&v326[14] + 8) = v294;
  BYTE8(v326[15]) = v293;
  BYTE9(v326[15]) = v292;
  v326[16] = v291;
  v326[17] = v290;
  v326[18] = v289;
  v326[19] = v288;
  v326[20] = v287;
  v326[21] = v286;
  *&v326[22] = v283;
  BYTE8(v326[22]) = v86;
  v326[23] = v281;
  v326[24] = v280;
  *&v326[25] = v276;
  *(&v326[25] + 1) = v279;
  *&v326[26] = v275;
  *(&v326[26] + 1) = v278;
  *&v326[27] = v274;
  *(&v326[27] + 1) = v277;
  v326[28] = v273;
  *&v326[29] = v271;
  BYTE8(v326[29]) = v87;
  *&v326[30] = v238;
  BYTE8(v326[30]) = v88;
  *&v326[31] = v219;
  *(&v326[31] + 1) = v272;
  v326[32] = v269;
  v326[33] = v268;
  *&v326[34] = v198;
  BYTE8(v326[34]) = v89;
  v326[35] = v267;
  *&v326[36] = v197;
  *(&v326[36] + 1) = v266;
  *&v326[37] = v196;
  *(&v326[37] + 1) = v265;
  *&v326[38] = v195;
  *(&v326[38] + 1) = v264;
  *&v326[39] = v194;
  BYTE8(v326[39]) = v90;
  *&v326[40] = v193;
  BYTE8(v326[40]) = v91;
  *&v326[41] = v192;
  BYTE8(v326[41]) = v92;
  *&v326[42] = v191;
  BYTE8(v326[42]) = v93;
  v326[43] = v263;
  *&v326[44] = v190;
  *(&v326[44] + 1) = v262;
  *&v326[45] = v189;
  BYTE8(v326[45]) = v94;
  *&v326[46] = v188;
  BYTE8(v326[46]) = v95;
  *&v326[47] = v187;
  *(&v326[47] + 1) = v261;
  *&v326[48] = v186;
  BYTE8(v326[48]) = v96;
  *&v326[49] = v185;
  *(&v326[49] + 1) = v260;
  *&v326[50] = v184;
  BYTE8(v326[50]) = v97;
  *&v326[51] = v183;
  BYTE8(v326[51]) = v98;
  *&v326[52] = v182;
  BYTE8(v326[52]) = v99;
  *&v326[53] = v259;
  *(&v326[53] + 1) = v258;
  *&v326[54] = v181;
  BYTE8(v326[54]) = v100;
  *&v326[55] = v180;
  BYTE8(v326[55]) = v101;
  *&v326[56] = v179;
  BYTE8(v326[56]) = v102;
  BYTE9(v326[56]) = v178;
  BYTE10(v326[56]) = v177;
  BYTE11(v326[56]) = v176;
  BYTE12(v326[56]) = v175;
  *&v326[57] = v174;
  *(&v326[57] + 1) = v256;
  *&v326[58] = v173;
  *(&v326[58] + 1) = v255;
  v326[59] = v257;
  *&v326[60] = v172;
  *(&v326[60] + 1) = v254;
  *&v326[61] = v171;
  *(&v326[61] + 1) = v253;
  *&v326[62] = v170;
  *(&v326[62] + 1) = v252;
  *&v326[63] = v169;
  *(&v326[63] + 1) = v251;
  *&v326[64] = v168;
  *(&v326[64] + 1) = v250;
  *&v326[65] = v167;
  BYTE8(v326[65]) = v106;
  *&v326[66] = v166;
  *(&v326[66] + 1) = v249;
  *&v326[67] = v165;
  BYTE8(v326[67]) = v107;
  *&v326[68] = v164;
  *(&v326[68] + 1) = v248;
  *&v326[69] = v163;
  BYTE8(v326[69]) = v108;
  BYTE9(v326[69]) = v162;
  *&v326[70] = v161;
  *(&v326[70] + 1) = v247;
  *&v326[71] = v159;
  BYTE8(v326[71]) = v103;
  *&v326[72] = v157;
  BYTE8(v326[72]) = v104;
  *&v326[73] = v156;
  *(&v326[73] + 1) = v245;
  v326[75] = v790;
  v326[74] = v789;
  v326[79] = v794;
  v326[78] = v793;
  v326[77] = v792;
  v326[76] = v791;
  v326[80] = v246;
  *&v326[81] = v154;
  *(&v326[81] + 1) = v243;
  v326[82] = v244;
  *&v326[83] = v151;
  BYTE8(v326[83]) = v105;
  *&v326[84] = v149;
  *(&v326[84] + 1) = v242;
  LOBYTE(v326[85]) = v146;
  BYTE1(v326[85]) = v143;
  BYTE2(v326[85]) = v145;
  *(&v326[85] + 1) = v142;
  LOBYTE(v326[86]) = v297;
  *(&v326[86] + 1) = v140;
  *&v326[87] = v239;
  *(&v326[87] + 8) = v241;
  *(&v326[88] + 8) = v240;
  *(&v326[89] + 1) = v138;
  LOBYTE(v326[90]) = v295;
  BYTE1(v326[90]) = v137;
  BYTE2(v326[90]) = v136;
  *(&v326[90] + 1) = v135;
  LOBYTE(v326[91]) = v282;
  *(&v326[91] + 1) = v134;
  LOBYTE(v326[92]) = v237;
  BYTE1(v326[92]) = v133;
  *(&v326[92] + 1) = v132;
  LOBYTE(v326[93]) = v110;
  *(&v326[93] + 1) = v131;
  LOBYTE(v326[94]) = v109;
  v62 = v77;
  v61 = v78;
  *(&v326[94] + 1) = v78;
  v63 = v235;
  *&v326[95] = v235;
  *(&v326[95] + 1) = v77;
  v64 = v75;
  LOBYTE(v326[96]) = v75;
  v65 = v76;
  *(&v326[96] + 1) = v76;
  LOBYTE(v326[97]) = v270;
  *(&v326[97] + 8) = v236;
  *(&v326[98] + 8) = v234;
  *(&v326[99] + 1) = v130;
  LOBYTE(v326[100]) = v318;
  *(&v326[100] + 8) = v233;
  *(&v326[101] + 8) = v232;
  *(&v326[102] + 1) = v129;
  LOBYTE(v326[103]) = v319;
  *(&v326[103] + 1) = v128;
  LOBYTE(v326[104]) = v208;
  *(&v326[104] + 1) = v231;
  *&v326[105] = v127;
  *(&v326[105] + 1) = v230;
  *&v326[106] = v126;
  *(&v326[106] + 1) = v229;
  *&v326[107] = v125;
  BYTE8(v326[107]) = v207;
  BYTE9(v326[107]) = v124;
  BYTE10(v326[107]) = v123;
  *&v326[108] = v122;
  BYTE8(v326[108]) = v206;
  v326[109] = v228;
  *&v326[110] = v121;
  BYTE8(v326[110]) = v205;
  BYTE9(v326[110]) = v120;
  *&v326[111] = v119;
  *(&v326[111] + 1) = v227;
  *&v326[112] = v118;
  BYTE8(v326[112]) = v204;
  *&v326[113] = v117;
  BYTE8(v326[113]) = v203;
  v326[114] = v226;
  v326[115] = v225;
  *&v326[116] = v116;
  BYTE8(v326[116]) = v202;
  v326[117] = v224;
  v326[118] = v223;
  v326[119] = v222;
  *&v326[120] = v115;
  BYTE8(v326[120]) = v201;
  v326[121] = v221;
  *&v326[122] = v114;
  BYTE8(v326[122]) = v200;
  v326[123] = v220;
  *&v326[124] = v113;
  *(&v326[124] + 1) = v218;
  *&v326[125] = v112;
  BYTE8(v326[125]) = v199;
  *&v326[126] = v111;
  BYTE8(v326[126]) = v209;
  *&v326[127] = v160;
  BYTE8(v326[127]) = v215;
  *&v326[128] = v158;
  BYTE8(v326[128]) = v214;
  *&v326[129] = v285;
  *(&v326[129] + 1) = v284;
  *&v326[130] = v307;
  *(&v326[130] + 1) = v310;
  *&v326[131] = v155;
  BYTE8(v326[131]) = v213;
  *&v326[132] = v217;
  *(&v326[132] + 1) = v153;
  LOBYTE(v326[133]) = v212;
  *(&v326[133] + 1) = v152;
  LOBYTE(v326[134]) = v211;
  BYTE1(v326[134]) = v150;
  BYTE2(v326[134]) = v148;
  *(&v326[134] + 1) = v147;
  *&v326[135] = v216;
  BYTE8(v326[135]) = v144;
  *&v326[136] = v141;
  BYTE8(v326[136]) = v210;
  *&v326[137] = v321;
  BYTE8(v326[137]) = v322;
  BYTE9(v326[137]) = v139;
  BYTE10(v326[137]) = v302;
  memcpy(v323, v326, 0x89BuLL);
  sub_2142E1BD4(v326, &v327);
  __swift_destroy_boxed_opaque_existential_1(v325);
  *&v327 = v84;
  *(&v327 + 1) = v79;
  v328 = v320;
  BYTE1(v329) = v85;
  v330 = v317;
  v331 = v80;
  v333 = v316;
  v334 = v81;
  v336 = v315;
  v337 = v314;
  v338 = v313;
  v339 = v311;
  v340 = v312;
  v341 = v308;
  v342 = v309;
  v343 = v305;
  v344 = v72;
  v345 = v306;
  v346 = v304;
  v347 = v301;
  v348 = v303;
  v349 = v300;
  v351 = v298;
  v352 = v299;
  v353 = v82;
  v356 = v296;
  v357 = v83;
  v359 = v294;
  v360 = v293;
  v361 = v292;
  v364 = v291;
  v365 = v290;
  v366 = v289;
  v367 = v288;
  v368 = v287;
  v369 = v286;
  v370 = v283;
  v371 = v86;
  v373 = v281;
  v374 = v280;
  v375 = v276;
  v376 = v279;
  v377 = v275;
  v378 = v278;
  v379 = v274;
  v380 = v277;
  v381 = v273;
  v382 = v271;
  v383 = v87;
  v385 = v238;
  v386 = v88;
  v388 = v219;
  v389 = v272;
  v390 = v269;
  v391 = v268;
  v392 = v198;
  v393 = v89;
  v395 = v267;
  v396 = v197;
  v397 = v266;
  v398 = v196;
  v399 = v265;
  v400 = v195;
  v401 = v264;
  v402 = v194;
  v403 = v90;
  v405 = v193;
  v406 = v91;
  v408 = v192;
  v409 = v92;
  v411 = v191;
  v412 = v93;
  v414 = v263;
  v415 = v190;
  v416 = v262;
  v417 = v189;
  v418 = v94;
  v420 = v188;
  v421 = v95;
  v423 = v187;
  v424 = v261;
  v425 = v186;
  v426 = v96;
  v428 = v185;
  v429 = v260;
  v430 = v184;
  v431 = v97;
  v433 = v183;
  v434 = v98;
  v436 = v182;
  v437 = v99;
  v439 = v259;
  v440 = v258;
  v441 = v181;
  v442 = v100;
  v444 = v180;
  v445 = v101;
  v447 = v179;
  v448 = v102;
  v449 = v178;
  v450 = v177;
  v451 = v176;
  v452 = v175;
  v455 = v174;
  v456 = v256;
  v457 = v173;
  v458 = v255;
  v459 = v257;
  v460 = v172;
  v461 = v254;
  v462 = v171;
  v463 = v253;
  v464 = v170;
  v465 = v252;
  v466 = v169;
  v467 = v251;
  v468 = v168;
  v469 = v250;
  v470 = v167;
  v471 = v106;
  v473 = v166;
  v474 = v249;
  v475 = v165;
  v476 = v107;
  v478 = v164;
  v479 = v248;
  v480 = v163;
  v481 = v108;
  v482 = v162;
  v485 = v161;
  v486 = v247;
  v487 = v159;
  v488 = v103;
  v490 = v157;
  v491 = v104;
  v493 = v156;
  v494 = v245;
  v501 = v246;
  v502 = v154;
  v503 = v243;
  v504 = v244;
  v505 = v151;
  v506 = v105;
  v508 = v149;
  v509 = v242;
  v510 = v146;
  v511 = v143;
  v542 = v61;
  v539 = v131;
  v540 = v109;
  v543 = v63;
  v544 = v62;
  v545 = v64;
  v547 = v65;
  v536 = v132;
  v537 = v110;
  v548 = v270;
  v550 = v236;
  v551 = v234;
  v531 = v134;
  v532 = v237;
  v533 = v133;
  v552 = v130;
  v553 = v318;
  v525 = v136;
  v528 = v135;
  v529 = v282;
  v555 = v233;
  v556 = v232;
  v521 = v240;
  v522 = v138;
  v523 = v295;
  v524 = v137;
  v518 = v140;
  v519 = v239;
  v520 = v241;
  v557 = v129;
  v558 = v319;
  v512 = v145;
  v515 = v142;
  v516 = v297;
  v560 = v128;
  v561 = v208;
  v563 = v231;
  v564 = v127;
  v565 = v230;
  v566 = v126;
  v567 = v229;
  v568 = v125;
  v569 = v207;
  v570 = v124;
  v571 = v123;
  v574 = v122;
  v575 = v206;
  v577 = v228;
  v578 = v121;
  v579 = v205;
  v580 = v120;
  v583 = v119;
  v584 = v227;
  v585 = v118;
  v586 = v204;
  v588 = v117;
  v589 = v203;
  v591 = v226;
  v592 = v225;
  v593 = v116;
  v594 = v202;
  v596 = v224;
  v597 = v223;
  v598 = v222;
  v599 = v115;
  v600 = v201;
  v602 = v221;
  v603 = v114;
  v604 = v200;
  v606 = v220;
  v607 = v113;
  v608 = v218;
  v609 = v112;
  v610 = v199;
  v612 = v111;
  v613 = v209;
  *v372 = *v759;
  *v384 = *v757;
  *v387 = *v755;
  *v394 = *v753;
  *v404 = *v751;
  *v407 = *v749;
  *v410 = *v747;
  *v413 = *v745;
  *v419 = *v743;
  *v422 = *v741;
  *v427 = *v739;
  *v432 = *v737;
  *v435 = *v735;
  *v438 = *v733;
  *v443 = *v731;
  *v446 = *v729;
  v453 = v726;
  *v472 = *v724;
  *v477 = *v722;
  v483 = v719;
  *v489 = *v717;
  *v492 = *v715;
  LOBYTE(v329) = v773;
  *(&v329 + 2) = v771;
  HIWORD(v329) = v772;
  *v332 = *v770;
  *&v332[3] = *&v770[3];
  *&v335[3] = *&v769[3];
  *v335 = *v769;
  *v350 = *v768;
  *&v350[3] = *&v768[3];
  v354 = v765;
  v355 = v766;
  *v358 = *v763;
  *&v358[3] = *&v763[3];
  v363 = v762;
  v362 = v761;
  *&v372[3] = *&v759[3];
  *&v384[3] = *&v757[3];
  *&v387[3] = *&v755[3];
  *&v394[3] = *&v753[3];
  *&v404[3] = *&v751[3];
  *&v407[3] = *&v749[3];
  *&v410[3] = *&v747[3];
  *&v413[3] = *&v745[3];
  *&v419[3] = *&v743[3];
  *&v422[3] = *&v741[3];
  *&v427[3] = *&v739[3];
  *&v432[3] = *&v737[3];
  *&v435[3] = *&v735[3];
  *&v438[3] = *&v733[3];
  *&v443[3] = *&v731[3];
  *&v446[3] = *&v729[3];
  v454 = v727;
  *&v472[3] = *&v724[3];
  *&v477[3] = *&v722[3];
  v484 = v720;
  *&v489[3] = *&v717[3];
  *&v492[3] = *&v715[3];
  v496 = v790;
  v495 = v789;
  v500 = v794;
  v499 = v793;
  v498 = v792;
  v497 = v791;
  *v507 = *v713;
  *&v507[3] = *&v713[3];
  v513 = v711;
  v514 = v712;
  *v517 = *v709;
  *&v517[3] = *&v709[3];
  v526 = v706;
  v527 = v707;
  *v530 = *v704;
  *&v530[3] = *&v704[3];
  v534 = v701;
  v535 = v702;
  *v538 = *v699;
  *&v538[3] = *&v699[3];
  *v541 = *v697;
  *&v541[3] = *&v697[3];
  *v546 = *v695;
  *&v546[3] = *&v695[3];
  *v549 = *v693;
  *&v549[3] = *&v693[3];
  *v554 = *v691;
  *&v554[3] = *&v691[3];
  *v559 = *v689;
  *&v559[3] = *&v689[3];
  *v562 = *v687;
  *&v562[3] = *&v687[3];
  v572 = v684;
  v573 = v685;
  *v576 = *v682;
  *&v576[3] = *&v682[3];
  v581 = v679;
  v582 = v680;
  *v587 = *v677;
  *&v587[3] = *&v677[3];
  *v590 = *v675;
  *&v590[3] = *&v675[3];
  *v595 = *v673;
  *&v595[3] = *&v673[3];
  *v601 = *v671;
  *&v601[3] = *&v671[3];
  *v605 = *v669;
  *&v605[3] = *&v669[3];
  *v611 = *v667;
  *&v611[3] = *&v667[3];
  *v614 = *v665;
  *&v614[3] = *&v665[3];
  v615 = v160;
  v616 = v215;
  *v617 = *v663;
  *&v617[3] = *&v663[3];
  v618 = v158;
  v619 = v214;
  *v620 = *v661;
  *&v620[3] = *&v661[3];
  v621 = v285;
  v622 = v284;
  v623 = v307;
  v624 = v310;
  v625 = v155;
  v626 = v213;
  *v627 = *v659;
  *&v627[3] = *&v659[3];
  v628 = v217;
  v629 = v153;
  v630 = v212;
  *v631 = *v657;
  *&v631[3] = *&v657[3];
  v632 = v152;
  v633 = v211;
  v634 = v150;
  v635 = v148;
  v636 = v654;
  v637 = v655;
  v638 = v147;
  v639 = v216;
  v640 = v144;
  *v641 = *v653;
  *&v641[3] = *&v653[3];
  v642 = v141;
  v643 = v210;
  *v644 = *v651;
  *&v644[3] = *&v651[3];
  v645 = v321;
  v646 = v322;
  v647 = v139;
  v648 = v302;
  return sub_2142E1154(&v327);
}