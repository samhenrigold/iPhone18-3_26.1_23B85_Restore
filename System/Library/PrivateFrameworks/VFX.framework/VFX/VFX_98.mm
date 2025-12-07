uint64_t assignWithTake for BufferArgument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_1AF88DB90(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for BufferArgument(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 33))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BufferArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_1AF89540C()
{
  result = qword_1EB63FCD8;
  if (!qword_1EB63FCD8)
  {
    result = swift_getWitnessTable(asc_1AFE7E128, &type metadata for BindingRequirement, v0, v1);
    atomic_store(result, &qword_1EB63FCD8);
  }

  return result;
}

unint64_t sub_1AF895464()
{
  result = qword_1EB63FCE0;
  if (!qword_1EB63FCE0)
  {
    result = swift_getWitnessTable(byte_1AFE7E0F8, &type metadata for BindingRequirement, v0, v1);
    atomic_store(result, &qword_1EB63FCE0);
  }

  return result;
}

unint64_t sub_1AF8954BC()
{
  result = qword_1EB63FCE8;
  if (!qword_1EB63FCE8)
  {
    result = swift_getWitnessTable(byte_1AFE7E150, &type metadata for BindingRequirement, v0, v1);
    atomic_store(result, &qword_1EB63FCE8);
  }

  return result;
}

unint64_t sub_1AF895514()
{
  result = qword_1EB63FCF0;
  if (!qword_1EB63FCF0)
  {
    result = swift_getWitnessTable(asc_1AFE7E188, &type metadata for BindingRequirement, v0, v1);
    atomic_store(result, &qword_1EB63FCF0);
  }

  return result;
}

unint64_t sub_1AF89556C()
{
  result = qword_1EB63FCF8;
  if (!qword_1EB63FCF8)
  {
    result = swift_getWitnessTable(asc_1AFE7E328, &type metadata for ArgumentScope, v0, v1);
    atomic_store(result, &qword_1EB63FCF8);
  }

  return result;
}

uint64_t sub_1AF8955C0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v1;
  if (v1 == 1)
  {
    v4 = *v0;
    v5 = v0[1];

    v3 = sub_1AF5B47A0(v4, v5, 3);
    v7 = v6;

    v0[11] = v3;
    v0[12] = v7;
    sub_1AF895668(v3, v7);
  }

  sub_1AF8956A8(v1, v2);
  return v3;
}

double sub_1AF895668(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
  }

  return result;
}

double sub_1AF8956A8(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
    return sub_1AF895668(a1, a2);
  }

  return result;
}

uint64_t sub_1AF8956B8()
{
  result = v0[13];
  if (result == 1)
  {
    v2 = *(*v0 + 184);

    v3 = sub_1AF6D3944(&type metadata for LightsUniforms, &off_1F252B0E8, v2);
    v5 = v4;

    result = v3;
    if (!v3)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v6 = v0;
      v7 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v8 = v7;
        swift_once();
        v7 = v8;
      }

      v9 = 0;
      sub_1AF0D4F18(v7, &v9, 0xD000000000000017, 0x80000001AFF389E0);
      v0 = v6;
      result = 0;
    }

    v0[13] = result;
    v0[14] = v5;
  }

  return result;
}

uint64_t sub_1AF8957F8()
{
  result = v0[15];
  if (result == 1)
  {
    v2 = *(*v0 + 184);

    v3 = sub_1AF6D3B8C(&type metadata for LightsUniforms, &off_1F252B0E8, v2);
    v5 = v4;

    result = v3;
    if (!v3)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v6 = v0;
      v7 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v8 = v7;
        swift_once();
        v7 = v8;
      }

      v9 = 0;
      sub_1AF0D4F18(v7, &v9, 0xD00000000000001BLL, 0x80000001AFF38A00);
      v0 = v6;
      result = 0;
    }

    v0[15] = result;
    v0[16] = v5;
  }

  return result;
}

void sub_1AF895938(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1ED72AB78 != -1)
  {
    v26 = a2;
    swift_once();
    a2 = v26;
  }

  if (byte_1ED73B6A0 != 1)
  {
    goto LABEL_19;
  }

  v5 = a1[155];
  if (!v5)
  {
    if (a1[153])
    {
      v8 = a2;
      swift_getObjectType();
      v9 = [swift_unknownObjectRetain() encodedLength];
      v10 = *(v8 + 8);
      CFXBufferAllocatorPerFrameAllocateWithLength(*(v10 + 232), v9);
      v5 = v11;
      a1[155] = v11;
      a1[156] = v12;
      v27 = v12;
      sub_1AF471B58(v11, v12, 0);
      sub_1AF0D879C(v28, 2);
      v13 = v28[0];

      v14 = sub_1AF750DEC(v13, *(&v13 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v28);

      v31 = v10;
      if (!v14)
      {
        sub_1AF7089BC();
      }

      v15 = swift_unknownObjectRetain();
      sub_1AF471CAC(v15, 30);
      swift_unknownObjectRelease();
      v16 = a1 + 154;
      v17 = swift_unknownObjectRetain();
      MEMORY[0x1B2718E00](v17);
      if (*((a1[154] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[154] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      sub_1AF0D879C(v29, 1);
      v18 = v29[0];

      v19 = sub_1AF750DEC(v18, *(&v18 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v29);

      sub_1AF471CAC(v19, 31);
      if (v19)
      {
        v20 = swift_unknownObjectRetain();
        MEMORY[0x1B2718E00](v20);
        if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
      }

      v7 = v31;
      sub_1AF0D879C(v30, 15);
      v21 = v30[0];

      v22 = sub_1AF750DEC(v21, *(&v21 + 1), 0, 0, 0, 1, 1);
      sub_1AF0D8F38(v30);

      sub_1AF471CAC(v22, 32);
      if (v22)
      {
        v23 = swift_unknownObjectRetain();
        MEMORY[0x1B2718E00](v23);
        if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
        v24 = *v16;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *v16 = v24;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v6 = v27;
      goto LABEL_22;
    }

LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v6 = a1[156];
  v7 = *(a2 + 8);
LABEL_22:
  if (*(*(v7 + 280) + 56))
  {
    swift_getObjectType();
    v25 = a1[154];
    swift_unknownObjectRetain();
    sub_1AFB41F64(v25, 1, 2);
    swift_unknownObjectRelease();
  }

  *a3 = v5;
  a3[1] = v6;
}

double destroy for RenderContext(uint64_t a1)
{

  if (*(a1 + 64))
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a1 + 40));
  }

  if (*(a1 + 88) >= 2uLL)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t initializeWithCopy for RenderContext(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = *(a2 + 32);
  v5 = a2[8];

  if (v5)
  {
    v6 = a2[9];
    *(a1 + 64) = v5;
    *(a1 + 72) = v6;
    (**(v5 - 8))(a1 + 40, a2 + 5, v5);
  }

  else
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = a2[9];
  }

  v7 = a2[11];
  v8 = a2[10];
  *(a1 + 80) = v8;
  v9 = v8;
  if (v7 > 1)
  {
    v10 = a2[12];
    *(a1 + 88) = v7;
    *(a1 + 96) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    *(a1 + 88) = *(a2 + 11);
  }

  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  return a1;
}

uint64_t assignWithCopy for RenderContext(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 32);
  v4 = a2[8];
  if (*(a1 + 64))
  {
    v5 = (a1 + 40);
    if (v4)
    {
      sub_1AF6156AC(v5, a2 + 5);
      goto LABEL_8;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  else if (v4)
  {
    *(a1 + 64) = v4;
    *(a1 + 72) = a2[9];
    (**(v4 - 8))(a1 + 40, a2 + 5);
    goto LABEL_8;
  }

  v6 = *(a2 + 5);
  v7 = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
LABEL_8:
  v8 = *(a1 + 80);
  v9 = a2[10];
  *(a1 + 80) = v9;
  v10 = v9;

  v11 = *(a1 + 88);
  v12 = a2[11];
  if (v11 == 1)
  {
    if (v12 >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v12 == 1)
    {
      v13 = sub_1AF8961E4;
    }

    else
    {
      if (!v11)
      {
        if (v12)
        {
LABEL_19:
          *(a1 + 88) = v12;
          *(a1 + 96) = a2[12];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      if (v12)
      {
        *(a1 + 88) = v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *(a1 + 96) = a2[12];
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      v13 = sub_1AF89611C;
    }

    sub_1AF896184(a1 + 88, v13);
  }

LABEL_14:
  *(a1 + 88) = *(a2 + 11);
LABEL_20:
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  return a1;
}

void sub_1AF89611C(uint64_t a1)
{
  if (!qword_1EB63FD00)
  {
    sub_1AF6B7338();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63FD00);
    }
  }
}

uint64_t sub_1AF896184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF8961E4(uint64_t a1)
{
  if (!qword_1EB63FD10)
  {
    sub_1AF89611C(255);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63FD10);
    }
  }
}

__n128 initializeWithTake for RenderContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for RenderContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 64))
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a1 + 40));
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 80);
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;

  v7 = *(a1 + 88);
  if (v7 == 1)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 88);
  if (v8 == 1)
  {
    v9 = sub_1AF8961E4;
LABEL_6:
    sub_1AF896184(a1 + 88, v9);
LABEL_10:
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    v9 = sub_1AF89611C;
    goto LABEL_6;
  }

  *(a1 + 88) = v8;
  swift_unknownObjectRelease();
  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectRelease();
LABEL_11:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for RenderContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for RenderContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for RenderFunctions(void *a1)
{
  if (a1[1])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[6])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[11])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[16])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t initializeWithCopy for RenderFunctions(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v5 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v5;
    *(a1 + 32) = *(a2 + 32);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v6 = *(a2 + 48);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 48);
    if (v6)
    {
LABEL_3:
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v6;
      v7 = *(a2 + 64);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v7;
      *(a1 + 72) = *(a2 + 72);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v8 = *(a2 + 88);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v13;
      *(a1 + 112) = *(a2 + 112);
      v10 = *(a2 + 128);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_9:
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_10;
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 88);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = *(a2 + 112);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v10 = *(a2 + 128);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v10;
  v11 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v11;
  *(a1 + 152) = *(a2 + 152);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

LABEL_10:
  v14 = *(a2 + 160);
  v15 = *(a2 + 168);
  *(a1 + 160) = v14;
  *(a1 + 168) = v15;

  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for RenderFunctions(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      a1[2] = a2[2];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[3] = a2[3];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[4] = a2[4];
    }

    else
    {
      sub_1AF74345C(a1);
      v5 = a2[4];
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v6;
      a1[4] = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    a1[4] = a2[4];
    *a1 = v7;
    *(a1 + 1) = v8;
  }

  v9 = a2[6];
  if (a1[6])
  {
    if (v9)
    {
      a1[5] = a2[5];
      a1[6] = a2[6];

      a1[7] = a2[7];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[8] = a2[8];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[9] = a2[9];
    }

    else
    {
      sub_1AF74345C((a1 + 5));
      v10 = a2[9];
      v11 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v11;
      a1[9] = v10;
    }
  }

  else if (v9)
  {
    a1[5] = a2[5];
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v12 = *(a2 + 5);
    v13 = *(a2 + 7);
    a1[9] = a2[9];
    *(a1 + 7) = v13;
    *(a1 + 5) = v12;
  }

  v14 = a2[11];
  if (a1[11])
  {
    if (v14)
    {
      a1[10] = a2[10];
      a1[11] = a2[11];

      a1[12] = a2[12];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[13] = a2[13];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[14] = a2[14];
    }

    else
    {
      sub_1AF74345C((a1 + 10));
      v15 = a2[14];
      v16 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v16;
      a1[14] = v15;
    }
  }

  else if (v14)
  {
    a1[10] = a2[10];
    a1[11] = a2[11];
    a1[12] = a2[12];
    a1[13] = a2[13];
    a1[14] = a2[14];

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v17 = *(a2 + 5);
    v18 = *(a2 + 6);
    a1[14] = a2[14];
    *(a1 + 5) = v17;
    *(a1 + 6) = v18;
  }

  v19 = a2[16];
  if (a1[16])
  {
    if (v19)
    {
      a1[15] = a2[15];
      a1[16] = a2[16];

      a1[17] = a2[17];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[18] = a2[18];
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      a1[19] = a2[19];
    }

    else
    {
      sub_1AF74345C((a1 + 15));
      v20 = a2[19];
      v21 = *(a2 + 17);
      *(a1 + 15) = *(a2 + 15);
      *(a1 + 17) = v21;
      a1[19] = v20;
    }
  }

  else if (v19)
  {
    a1[15] = a2[15];
    a1[16] = a2[16];
    a1[17] = a2[17];
    a1[18] = a2[18];
    a1[19] = a2[19];

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v22 = *(a2 + 15);
    v23 = *(a2 + 17);
    a1[19] = a2[19];
    *(a1 + 17) = v23;
    *(a1 + 15) = v22;
  }

  a1[20] = a2[20];

  a1[21] = a2[21];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

__n128 initializeWithTake for RenderFunctions(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t assignWithTake for RenderFunctions(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = v4;

      *(a1 + 16) = *(a2 + 16);
      swift_unknownObjectRelease();
      *(a1 + 24) = *(a2 + 24);
      swift_unknownObjectRelease();
      *(a1 + 32) = *(a2 + 32);

      if (!*(a1 + 48))
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    sub_1AF74345C(a1);
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 48))
  {
    goto LABEL_11;
  }

LABEL_7:
  v6 = *(a2 + 48);
  if (v6)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v6;

    *(a1 + 56) = *(a2 + 56);
    swift_unknownObjectRelease();
    *(a1 + 64) = *(a2 + 64);
    swift_unknownObjectRelease();
    *(a1 + 72) = *(a2 + 72);

    if (!*(a1 + 88))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_1AF74345C(a1 + 40);
LABEL_11:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 88))
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = *(a2 + 88);
  if (v7)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v7;

    *(a1 + 96) = *(a2 + 96);
    swift_unknownObjectRelease();
    *(a1 + 104) = *(a2 + 104);
    swift_unknownObjectRelease();
    *(a1 + 112) = *(a2 + 112);

    if (!*(a1 + 128))
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_1AF74345C(a1 + 80);
LABEL_16:
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
  if (!*(a1 + 128))
  {
LABEL_20:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_21;
  }

LABEL_17:
  v9 = *(a2 + 128);
  if (!v9)
  {
    sub_1AF74345C(a1 + 120);
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v9;

  *(a1 + 136) = *(a2 + 136);
  swift_unknownObjectRelease();
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

LABEL_21:
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for RenderFunctions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
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

uint64_t storeEnumTagSinglePayload for RenderFunctions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AF896E30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF6247C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AF897784(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF896E9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = 4271950;
  v5 = v2[1];
  if (v5)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = *v2;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1AF8837E8(v8, v5, v6, v7);
    v21 = v9;
    MEMORY[0x1B2718AE0](43, 0xE100000000000000);
    v10 = v3[6];
    if (v10)
    {
      sub_1AF8837E8(v3[5], v10, v3[8], v3[9]);
      v4 = v11;
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    MEMORY[0x1B2718AE0](v4, v13);

    v19 = v21;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1AF8837E8(v2[15], v2[16], v2[18], v2[19]);
    v22 = v14;
    MEMORY[0x1B2718AE0](43, 0xE100000000000000);
    v15 = v2[6];
    if (v15)
    {
      sub_1AF8837E8(v2[5], v15, v2[8], v2[9]);
      v4 = v16;
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    MEMORY[0x1B2718AE0](v4, v18);

    return v22;
  }

  return v19;
}

uint64_t sub_1AF89700C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v7 = v4[1];
  v8 = v4[2];
  v29 = v4[3];
  v30 = *v4;
  if (v7)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v28 = a1;
  }

  else
  {
    v28 = v4[4];
  }

  v9 = v4[6];
  v27 = v4[5];
  v10 = v4[7];
  v25 = v4[8];
  if (v9)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v24 = a1;
  }

  else
  {
    v24 = v4[9];
  }

  v11 = v4[11];
  v31 = v7;
  v22 = v4[12];
  v23 = v4[10];
  v21 = v4[13];
  if (v11)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v20 = a1;
  }

  else
  {
    v20 = v4[14];
  }

  v26 = v10;
  v12 = v4[16];
  v19 = v4[15];
  v14 = v4[17];
  v13 = v4[18];
  v15 = v8;
  if (v12)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
  }

  else
  {
    a1 = v4[19];
  }

  v17 = v4[20];
  v16 = v4[21];
  v33 = v16;
  v34 = v17;
  sub_1AF898ADC(&v34, v32, sub_1AF7FB158);
  result = sub_1AF898ADC(&v33, v32, sub_1AF745FA4);
  *a3 = v30;
  a3[1] = v31;
  a3[2] = v15;
  a3[3] = v29;
  a3[4] = v28;
  a3[5] = v27;
  a3[6] = v9;
  a3[7] = v26;
  a3[8] = v25;
  a3[9] = v24;
  a3[10] = v23;
  a3[11] = v11;
  a3[12] = v22;
  a3[13] = v21;
  a3[14] = v20;
  a3[15] = v19;
  a3[16] = v12;
  a3[17] = v14;
  a3[18] = v13;
  a3[19] = a1;
  a3[20] = v17;
  a3[21] = v16;
  return result;
}

void sub_1AF8971E8(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v4;
  v11 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[4];
  if (v10)
  {
    v51[16] = *v4;
    v51[17] = v10;
    v51[18] = v12;
    v51[19] = v13;
    v51[20] = v14;
    sub_1AF882DB8(a1, a2, v47);
    if (v5)
    {
      return;
    }

    v11 = v47[0];
    v45 = v47[1];
    v12 = v47[2];
    v13 = v47[3];
    v14 = v47[4];
  }

  else
  {
    v45 = 0;
  }

  v16 = v4[5];
  v15 = v4[6];
  v17 = v4[7];
  v18 = v4[8];
  v19 = v4[9];
  if (v15)
  {
    v51[11] = v4[5];
    v51[12] = v15;
    v51[13] = v17;
    v51[14] = v18;
    v51[15] = v19;
    sub_1AF882DB8(a1, a2, v48);
    if (v5)
    {
LABEL_17:
      sub_1AF898BA8(v11, v45, v12, v13, v14);
      return;
    }

    v16 = v48[0];
    v40 = v48[1];
    v17 = v48[2];
    v18 = v48[3];
    v19 = v48[4];
    v5 = 0;
  }

  else
  {
    v40 = 0;
  }

  v21 = v4[10];
  v20 = v4[11];
  v22 = v4[12];
  v23 = v4[13];
  v24 = v4[14];
  v43 = v18;
  v44 = v17;
  v41 = v16;
  v42 = v19;
  if (v20)
  {
    v51[6] = v4[10];
    v51[7] = v20;
    v51[8] = v22;
    v51[9] = v23;
    v51[10] = v24;
    sub_1AF882DB8(a1, a2, v49);
    if (v5)
    {
LABEL_16:
      sub_1AF898BA8(v41, v40, v44, v43, v42);
      goto LABEL_17;
    }

    v21 = v49[0];
    v35 = v49[1];
    v22 = v49[2];
    v23 = v49[3];
    v24 = v49[4];
    v5 = 0;
  }

  else
  {
    v35 = 0;
  }

  v36 = v21;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v25 = v4[16];
  v26 = v4[17];
  v27 = v4[18];
  v28 = v4[19];
  if (v25)
  {
    v51[1] = v6[15];
    v51[2] = v25;
    v51[3] = v26;
    v51[4] = v27;
    v51[5] = v28;
    sub_1AF882DB8(a1, a2, v50);
    if (v5)
    {
      sub_1AF898BA8(v36, v35, v39, v38, v37);
      goto LABEL_16;
    }

    v34 = v50[1];
    v29 = v50[3];
    v32 = v50[2];
    v33 = v50[0];
    v28 = v50[4];
  }

  else
  {
    v34 = 0;
    v32 = v6[17];
    v33 = v6[15];
    v29 = v6[18];
  }

  v30 = v6[20];
  v31 = v6[21];
  v52 = v30;
  v51[0] = v31;
  sub_1AF898ADC(&v52, v46, sub_1AF7FB158);
  sub_1AF898ADC(v51, v46, sub_1AF745FA4);
  *a3 = v11;
  a3[1] = v45;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v14;
  a3[5] = v41;
  a3[6] = v40;
  a3[7] = v44;
  a3[8] = v43;
  a3[9] = v42;
  a3[10] = v36;
  a3[11] = v35;
  a3[12] = v39;
  a3[13] = v38;
  a3[14] = v37;
  a3[15] = v33;
  a3[16] = v34;
  a3[17] = v32;
  a3[18] = v29;
  a3[19] = v28;
  a3[20] = v30;
  a3[21] = v31;
}

uint64_t sub_1AF89747C(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  if (v4)
  {
    v6 = v2[3];
    v5 = v2[4];
    v7 = *v2;
    sub_1AFDFF2A8();
    sub_1AF88352C(a1, v7, v4, v6, v5);
    v8 = v2[6];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1AFDFF2A8();
    v8 = v2[6];
    if (v8)
    {
LABEL_3:
      v10 = v2[8];
      v9 = v2[9];
      v11 = v2[5];
      sub_1AFDFF2A8();
      sub_1AF88352C(a1, v11, v8, v10, v9);
      v12 = v2[11];
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_1AFDFF2A8();
  v12 = v2[11];
  if (v12)
  {
LABEL_4:
    v14 = v2[13];
    v13 = v2[14];
    v15 = v2[10];
    sub_1AFDFF2A8();
    sub_1AF88352C(a1, v15, v12, v14, v13);
    v16 = v2[16];
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1AFDFF2A8();
  v16 = v2[16];
  if (v16)
  {
LABEL_5:
    v18 = v2[18];
    v17 = v2[19];
    v19 = v2[15];
    sub_1AFDFF2A8();
    sub_1AF88352C(a1, v19, v16, v18, v17);
    v20 = v2[20];
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_1AFDFF2A8();
    return MEMORY[0x1B271ACB0](v2[21]);
  }

LABEL_13:
  sub_1AFDFF2A8();
  v20 = v2[20];
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1AFDFF2A8();
  v21 = *(v20 + 16);
  MEMORY[0x1B271ACB0](v21);
  if (v21)
  {
    v22 = v20 + 40;
    do
    {

      sub_1AFDFD038();

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  return MEMORY[0x1B271ACB0](v2[21]);
}

uint64_t sub_1AF897618()
{
  sub_1AFDFF288();
  sub_1AF89747C(v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF89765C(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AF89747C(v2);
  return sub_1AFDFF2F8();
}

BOOL sub_1AF897698(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_1AF898434(v13, v14);
}

unint64_t sub_1AF897730()
{
  result = qword_1EB63FD20;
  if (!qword_1EB63FD20)
  {
    result = swift_getWitnessTable(byte_1AFE7E388, &type metadata for RenderFunctions, v0, v1);
    atomic_store(result, &qword_1EB63FD20);
  }

  return result;
}

uint64_t sub_1AF897784(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF897868(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF897A10(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF897868(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != a2)
  {
    v4 = *a4 + 112 * a3 - 112;
    v5 = result - a3;
    do
    {
      v28 = a3;
      v20 = v5;
      v21 = v4;
      while (1)
      {
        v13 = (v4 + 112);
        v14 = *(v4 + 112);
        v15 = *(v4 + 120);
        v16 = *(v4 + 128);
        v17 = *v4;
        v6 = *(v4 + 16);
        if (v16 != 1)
        {
          break;
        }

        if ((*(v4 + 16) & 1) == 0)
        {
          goto LABEL_4;
        }

        if (v14 == v17 && v15 == *(v4 + 8))
        {
          goto LABEL_4;
        }

        result = sub_1AFDFEE28();
        if (result)
        {
          goto LABEL_4;
        }

        result = sub_1AFDFEE28();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_9:
        v25 = *(v4 + 176);
        v26 = *(v4 + 192);
        v27 = *(v4 + 208);
        v23 = *(v4 + 144);
        v24 = *(v4 + 160);
        v7 = *(v4 + 80);
        *(v4 + 176) = *(v4 + 64);
        *(v4 + 192) = v7;
        *(v4 + 208) = *(v4 + 96);
        v8 = *v4;
        v9 = *(v4 + 16);
        v11 = *(v4 + 32);
        v10 = *(v4 + 48);
        *&v22[31] = v24;
        *&v22[47] = v25;
        *&v22[63] = v26;
        v22[79] = v27;
        *&v22[15] = v23;
        *(v4 + 17) = *v22;
        *(v4 + 81) = *&v22[64];
        *(v4 + 65) = *&v22[48];
        *(v4 + 49) = *&v22[32];
        *(v4 + 33) = *&v22[16];
        *v4 = v14;
        *(v4 + 8) = v15;
        *(v4 + 16) = v16;
        v4 -= 112;
        *v13 = v8;
        v13[1] = v9;
        v13[2] = v11;
        v13[3] = v10;
        if (__CFADD__(v5++, 1))
        {
          goto LABEL_4;
        }
      }

      if (v14 < v17)
      {
        v6 = 1;
      }

      if (v6)
      {
        goto LABEL_9;
      }

LABEL_4:
      a3 = v28 + 1;
      v4 = v21 + 112;
      v5 = v20 - 1;
    }

    while (v28 + 1 != a2);
  }

  return result;
}

uint64_t sub_1AF897A10(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a3;
    v8 = 0;
    v92 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    v87 = a4;
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      v88 = v8;
      v89 = v9;
      if (v8 + 1 >= v6)
      {
        goto LABEL_43;
      }

      v12 = *v7;
      v13 = *v7 + 112 * v11;
      v14 = *v13;
      v15 = *(v13 + 16);
      v16 = *v7 + 112 * v10;
      v17 = *v16;
      v18 = *(v16 + 16);
      if (v15 == 1)
      {
        if (v18)
        {
          v19 = v14 == v17 && *(v13 + 8) == *(v16 + 8);
          if (v19 || (sub_1AFDFEE28() & 1) != 0)
          {
            v20 = 0;
          }

          else
          {
            v20 = sub_1AFDFEE28();
          }

          goto LABEL_16;
        }
      }

      else if ((v18 & 1) == 0)
      {
        v20 = v14 < v17;
        goto LABEL_16;
      }

      v20 = v18 & (v15 ^ 1);
LABEL_16:
      v9 = v89;
      v11 = v88 + 2;
      if (v88 + 2 < v6)
      {
        v21 = v12 + 112 * v88 + 120;
        v22 = v21;
        while (1)
        {
          v23 = *(v21 + 104);
          v25 = *(v22 + 112);
          v22 += 112;
          v24 = v25;
          v26 = *(v21 + 120);
          v27 = *(v21 - 8);
          v28 = *(v21 + 8);
          if (v26 != 1)
          {
            break;
          }

          if ((v28 & 1) == 0)
          {
            goto LABEL_29;
          }

          v29 = v23 == v27 && v24 == *v21;
          if (!v29 && (sub_1AFDFEE28() & 1) == 0)
          {
            v30 = sub_1AFDFEE28();
            goto LABEL_30;
          }

          v9 = v89;
          v7 = a3;
          if (v20)
          {
            a4 = v87;
            v10 = v88;
            if (v88 >= v11)
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          }

LABEL_19:
          v21 = v22;
          if (v6 == ++v11)
          {
            v11 = v6;
            goto LABEL_37;
          }
        }

        if (v28)
        {
LABEL_29:
          v30 = v28 & (v26 ^ 1);
        }

        else
        {
          if (v23 == v27)
          {
            v9 = v89;
            v7 = a3;
            if (v20)
            {
              goto LABEL_37;
            }

            goto LABEL_19;
          }

          v30 = v23 < v27;
        }

LABEL_30:
        v9 = v89;
        v7 = a3;
        if ((v20 ^ v30))
        {
          goto LABEL_37;
        }

        goto LABEL_19;
      }

LABEL_37:
      a4 = v87;
      v10 = v88;
      if ((v20 & (v88 < v11)) == 0)
      {
        goto LABEL_43;
      }

LABEL_38:
      v31 = v11;
      v32 = 112 * v11 - 112;
      v33 = 112 * v10;
      v34 = v31;
      do
      {
        if (v10 != --v31)
        {
          v35 = (*v7 + v33);
          v36 = (*v7 + v32);
          *&v94[64] = v35[4];
          v95 = v35[5];
          v96 = *(v35 + 96);
          *v94 = *v35;
          *&v94[16] = v35[1];
          *&v94[32] = v35[2];
          *&v94[48] = v35[3];
          memmove(v35, v36, 0x70uLL);
          v36[4] = *&v94[64];
          v36[5] = v95;
          *(v36 + 96) = v96;
          *v36 = *v94;
          v36[1] = *&v94[16];
          v36[2] = *&v94[32];
          v36[3] = *&v94[48];
        }

        ++v10;
        v32 -= 112;
        v33 += 112;
      }

      while (v10 < v31);
      a4 = v87;
      v10 = v88;
      v11 = v34;
LABEL_43:
      v37 = v7[1];
      if (v11 >= v37 || v11 - v10 >= a4)
      {
        goto LABEL_70;
      }

      if (v10 + a4 >= v37)
      {
        v39 = v7[1];
      }

      else
      {
        v39 = v10 + a4;
      }

      if (v10 + a4 == v11)
      {
        v11 = v39;
        goto LABEL_70;
      }

      v85 = v5;
      v40 = *v7 + 112 * v11 - 112;
      v102 = v11;
      v41 = v10 - v11;
      v91 = v39;
      while (2)
      {
        v42 = v41;
        v93 = v40;
        while (1)
        {
          v50 = (v40 + 112);
          v51 = *(v40 + 112);
          v52 = *(v40 + 120);
          v53 = *(v40 + 128);
          v54 = *v40;
          v43 = *(v40 + 16);
          if (v53 != 1)
          {
            break;
          }

          if ((*(v40 + 16) & 1) == 0)
          {
            goto LABEL_54;
          }

          v55 = v51 == v54 && v52 == *(v40 + 8);
          if (v55 || (sub_1AFDFEE28() & 1) != 0 || (sub_1AFDFEE28() & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_59:
          v99 = *(v40 + 176);
          v100 = *(v40 + 192);
          v101 = *(v40 + 208);
          v97 = *(v40 + 144);
          v98 = *(v40 + 160);
          v44 = *(v40 + 80);
          *(v40 + 176) = *(v40 + 64);
          *(v40 + 192) = v44;
          *(v40 + 208) = *(v40 + 96);
          v45 = *v40;
          v46 = *(v40 + 16);
          v48 = *(v40 + 32);
          v47 = *(v40 + 48);
          *&v94[31] = v98;
          *&v94[47] = v99;
          *&v94[63] = v100;
          v94[79] = v101;
          *&v94[15] = v97;
          *(v40 + 17) = *v94;
          *(v40 + 81) = *&v94[64];
          *(v40 + 65) = *&v94[48];
          *(v40 + 49) = *&v94[32];
          *(v40 + 33) = *&v94[16];
          *v40 = v51;
          *(v40 + 8) = v52;
          *(v40 + 16) = v53;
          v40 -= 112;
          *v50 = v45;
          v50[1] = v46;
          v50[2] = v48;
          v50[3] = v47;
          if (__CFADD__(v42++, 1))
          {
            goto LABEL_54;
          }
        }

        if (v51 < v54)
        {
          v43 = 1;
        }

        if (v43)
        {
          goto LABEL_59;
        }

LABEL_54:
        v40 = v93 + 112;
        --v41;
        if (++v102 != v91)
        {
          continue;
        }

        break;
      }

      v11 = v91;
      v5 = v85;
      v9 = v89;
      v7 = a3;
LABEL_70:
      v103 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v57 = *(v9 + 2);
      v56 = *(v9 + 3);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v9 = sub_1AF4209A4(v56 > 1, v57 + 1, 1, v9);
      }

      *(v9 + 2) = v58;
      v59 = v9 + 32;
      v60 = &v9[16 * v57 + 32];
      *v60 = v88;
      *(v60 + 1) = v11;
      if (v57)
      {
        while (2)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            v65 = &v59[16 * v58];
            v66 = *(v65 - 7) - *(v65 - 8);
            v64 = *(v65 - 5) - *(v65 - 6);
            v67 = &v9[16 * v58];
            v62 = *v67;
            v63 = *(v67 + 1);
            if (v64 - v62 + v63 >= v66)
            {
              v70 = v58 - 2;
              v69 = *&v59[16 * v61 + 8] - *&v59[16 * v61];
            }

            else
            {
LABEL_79:
              v68 = v63 - v62;
              v69 = *&v59[16 * v61 + 8] - *&v59[16 * v61];
              if (v68 + v69 < v64)
              {
                goto LABEL_82;
              }

              v70 = v58 - 2;
            }

            if (v64 < v69)
            {
              v61 = v70;
            }
          }

          else
          {
            if (v58 == 3)
            {
              v62 = *(v9 + 6);
              v63 = *(v9 + 7);
              v64 = *(v9 + 5) - *(v9 + 4);
              goto LABEL_79;
            }

            v68 = *&v9[16 * v58 + 8] - *&v9[16 * v58];
            v69 = *&v59[16 * v61 + 8] - *&v59[16 * v61];
LABEL_82:
            if (v69 < v68)
            {
              break;
            }
          }

          v71 = &v59[16 * v61];
          v72 = *(v71 - 2);
          v73 = *(v71 + 1);
          sub_1AF898114((*v7 + 112 * v72), (*v7 + 112 * *v71), (*v7 + 112 * v73), v92);
          if (v5)
          {
          }

          *(v71 - 2) = v72;
          *(v71 - 1) = v73;
          v74 = *(v9 + 2);
          v58 = v74 - 1;
          memmove(&v59[16 * v61], v71 + 16, 16 * (v74 - 1 - v61));
          *(v9 + 2) = v74 - 1;
          if (v74 <= 2)
          {
            break;
          }

          continue;
        }
      }

      v6 = v7[1];
      v8 = v103;
      a4 = v87;
      if (v103 >= v6)
      {
        goto LABEL_94;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_94:
  v104 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v75 = v5;
  v76 = v9 + 16;
  v77 = *(v9 + 2);
  if (v77 >= 2)
  {
    do
    {
      v78 = v9;
      v79 = &v9[16 * v77];
      v80 = *v79;
      v81 = &v76[2 * v77];
      v82 = v81[1];
      sub_1AF898114((*a3 + 112 * *v79), (*a3 + 112 * *v81), (*a3 + 112 * v82), v104);
      if (v75)
      {
        break;
      }

      *v79 = v80;
      *(v79 + 1) = v82;
      v83 = *v76 - 1;
      memmove(&v76[2 * v77], v81 + 2, 16 * (*v76 - v77));
      *v76 = v83;
      v77 = v83;
      v9 = v78;
    }

    while (v83 > 1);
  }
}

uint64_t sub_1AF898114(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 < v11)
  {
    v12 = 112 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 112)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_53;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6;
      v16 = *v4;
      v17 = v4[16];
      if (v6[16] == 1)
      {
        if (v4[16])
        {
          v18 = v15 == v16 && *(v6 + 1) == *(v4 + 1);
          if (!v18 && (sub_1AFDFEE28() & 1) == 0 && (sub_1AFDFEE28() & 1) != 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v17 = 1;
        }

        if (v17)
        {
LABEL_23:
          v14 = v6;
          v18 = v7 == v6;
          v6 += 112;
          if (v18)
          {
            goto LABEL_9;
          }

LABEL_8:
          memmove(v7, v14, 0x70uLL);
          goto LABEL_9;
        }
      }

      v14 = v4;
      v18 = v7 == v4;
      v4 += 112;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 112;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }
  }

  v19 = 112 * v11;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 112 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 112 && v6 > v7)
  {
LABEL_31:
    __srca = v6 - 112;
    v5 -= 112;
    v20 = v13;
    do
    {
      v22 = *(v20 - 112);
      v20 -= 112;
      v21 = v22;
      v23 = *(v6 - 14);
      v24 = *(v6 - 96);
      if (*(v20 + 16) == 1)
      {
        if (*(v6 - 96))
        {
          v25 = v21 == v23 && *(v20 + 8) == *(v6 - 13);
          if (!v25 && (sub_1AFDFEE28() & 1) == 0 && (sub_1AFDFEE28() & 1) != 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        if (v21 < v23)
        {
          v24 = 1;
        }

        if (v24)
        {
LABEL_47:
          if (v5 + 112 != v6)
          {
            memmove(v5, __srca, 0x70uLL);
          }

          if (v13 <= v4 || (v6 -= 112, __srca <= v7))
          {
            v6 = __srca;
            goto LABEL_53;
          }

          goto LABEL_31;
        }
      }

      if (v5 + 112 != v13)
      {
        memmove(v5, v20, 0x70uLL);
      }

      v5 -= 112;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_53:
  v26 = 112 * ((v13 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

BOOL sub_1AF898434(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  if (!v3)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_14:
    v51 = *a1;
    v52 = v3;
    v53 = v5;
    v54 = v6;
    v55 = v7;
    v56 = v8;
    v57 = v9;
    v58 = v10;
    v59 = v11;
    v60 = v12;
    v14 = v8;
    v15 = v5;
    sub_1AF898C0C(v14, v9, v10, v11, v12);
    v16 = v4;
    v17 = v3;
    v18 = v15;
    v19 = v6;
    v20 = v7;
LABEL_27:
    sub_1AF898C0C(v16, v17, v18, v19, v20);
    sub_1AF898C70(&v51);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v45 = a1;
  v49 = a1[2];
  v13 = v4 == v8 && v3 == v9;
  if (!v13 && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_24:
    sub_1AF898C0C(v8, v9, v10, v11, v12);
    sub_1AF898C0C(v4, v3, v49, v6, v7);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v31 = v4;
    v32 = v3;
    v33 = v49;
    v34 = v6;
    v35 = v7;
LABEL_58:
    sub_1AF898BA8(v31, v32, v33, v34, v35);
    return 0;
  }

  if (!v11 || v6 != v11)
  {
    goto LABEL_24;
  }

LABEL_11:
  sub_1AF898C0C(v8, v9, v10, v11, v12);
  sub_1AF898C0C(v4, v3, v49, v6, v7);
  v41 = sub_1AFB7B210(v7, v12);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1AF898BA8(v4, v3, v49, v6, v7);
  a1 = v45;
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = a1[5];
  v21 = a1[6];
  v23 = a1[7];
  v24 = a1[8];
  v25 = a1[9];
  v26 = a2[5];
  v27 = a2[6];
  v28 = a2[7];
  v29 = a2[8];
  v30 = a2[9];
  if (v21)
  {
    if (!v27)
    {
      goto LABEL_26;
    }

    v46 = a1;
    v50 = a1[7];
    if (__PAIR128__(v21, v22) != __PAIR128__(v27, v26) && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_57;
    }

    if (v24)
    {
      if (!v29 || v24 != v29)
      {
        goto LABEL_57;
      }
    }

    else if (v29)
    {
      goto LABEL_57;
    }

    sub_1AF898C0C(v26, v27, v28, v29, v30);
    sub_1AF898C0C(v22, v21, v50, v24, v25);
    v42 = sub_1AFB7B210(v25, v30);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_1AF898BA8(v22, v21, v50, v24, v25);
    a1 = v46;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    goto LABEL_26;
  }

  v22 = a1[10];
  v21 = a1[11];
  v23 = a1[12];
  v24 = a1[13];
  v25 = a1[14];
  v26 = a2[10];
  v27 = a2[11];
  v28 = a2[12];
  v29 = a2[13];
  v30 = a2[14];
  if (!v21)
  {
    if (v27)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  if (!v27)
  {
    goto LABEL_26;
  }

  v47 = a1;
  v50 = a1[12];
  if (__PAIR128__(v21, v22) != __PAIR128__(v27, v26) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_57;
  }

  if (v24)
  {
    if (!v29 || v24 != v29)
    {
      goto LABEL_57;
    }
  }

  else if (v29)
  {
    goto LABEL_57;
  }

  sub_1AF898C0C(v26, v27, v28, v29, v30);
  sub_1AF898C0C(v22, v21, v50, v24, v25);
  v43 = sub_1AFB7B210(v25, v30);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1AF898BA8(v22, v21, v50, v24, v25);
  a1 = v47;
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v22 = a1[15];
  v21 = a1[16];
  v23 = a1[17];
  v24 = a1[18];
  v25 = a1[19];
  v26 = a2[15];
  v27 = a2[16];
  v28 = a2[17];
  v29 = a2[18];
  v30 = a2[19];
  if (!v21)
  {
    if (!v27)
    {
      goto LABEL_52;
    }

    goto LABEL_26;
  }

  if (!v27)
  {
LABEL_26:
    v51 = v22;
    v52 = v21;
    v53 = v23;
    v54 = v24;
    v55 = v25;
    v56 = v26;
    v57 = v27;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    v36 = v23;
    sub_1AF898C0C(v26, v27, v28, v29, v30);
    v16 = v22;
    v17 = v21;
    v18 = v36;
    v19 = v24;
    v20 = v25;
    goto LABEL_27;
  }

  v48 = a1;
  v50 = a1[17];
  if (__PAIR128__(v21, v22) != __PAIR128__(v27, v26) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_57;
  }

  if (!v24)
  {
    if (!v29)
    {
      goto LABEL_49;
    }

LABEL_57:
    sub_1AF898C0C(v26, v27, v28, v29, v30);
    sub_1AF898C0C(v22, v21, v50, v24, v25);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v31 = v22;
    v32 = v21;
    v33 = v50;
    v34 = v24;
    v35 = v25;
    goto LABEL_58;
  }

  if (!v29 || v24 != v29)
  {
    goto LABEL_57;
  }

LABEL_49:
  sub_1AF898C0C(v26, v27, v28, v29, v30);
  sub_1AF898C0C(v22, v21, v50, v24, v25);
  v44 = sub_1AFB7B210(v25, v30);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1AF898BA8(v22, v21, v50, v24, v25);
  a1 = v48;
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_52:
  v37 = a1;
  v38 = a1[20];
  v39 = a2[20];
  if (v38)
  {
    if (!v39 || (sub_1AFB7B948(v38, v39) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  return a2[21] == v37[21];
}

uint64_t sub_1AF8989FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a5;

  sub_1AF896E30(&v14);
  v11 = v14;
  if (a4)
  {

    v12 = v11;
  }

  else
  {
    a3 = 0;
    v12 = 0;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = v11;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = v12;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = &unk_1F24FE988;
  *(a6 + 168) = 0;
}

uint64_t sub_1AF898ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AF898B44()
{
  result = qword_1ED723190;
  if (!qword_1ED723190)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED723190);
  }

  return result;
}

double sub_1AF898BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1AF898C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1AF898C70(uint64_t a1)
{
  sub_1AF898CCC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF898CCC(uint64_t a1)
{
  if (!qword_1EB63FD28)
  {
    sub_1AF7021F8(255, &qword_1ED7225F0, &type metadata for FunctionDescriptor, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63FD28);
    }
  }
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFXRenderPassDesc(__n128 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v12 = v1[9];
  sub_1AFDFF308();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v9);
  MEMORY[0x1B271ACB0](v10);
  MEMORY[0x1B271ACB0](v12);
  sub_1AFDFF2A8();
  return sub_1AFDFF2E8();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFXRenderPassDesc()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  MEMORY[0x1B271ACB0](*v0);
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v9);
  return sub_1AFDFF2A8();
}

uint64_t sub_1AF898F08(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v12 = v1[9];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  MEMORY[0x1B271ACB0](v7);
  MEMORY[0x1B271ACB0](v8);
  MEMORY[0x1B271ACB0](v9);
  MEMORY[0x1B271ACB0](v10);
  MEMORY[0x1B271ACB0](v12);
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CFXRenderPassDesc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AF8996BC(v7, v9);
}

uint64_t _sSo17CFXRenderPassDescas28CustomDebugStringConvertible3VFXsACP16debugDescriptionSSvgTW_0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v30 = *(v0 + 56);
  if (*v0)
  {
    v8 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v9 = sub_1AF4720E8(v2);
    MEMORY[0x1B2718AE0](v9);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v1)
  {
    v10 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v11 = sub_1AF4720E8(v1);
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v4)
  {
    v12 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v13 = sub_1AF4720E8(v4);
    MEMORY[0x1B2718AE0](v13);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v3)
  {
    v14 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v14);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v15 = sub_1AF4720E8(v3);
    MEMORY[0x1B2718AE0](v15);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v6)
  {
    v16 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v16);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v17 = sub_1AF4720E8(v6);
    MEMORY[0x1B2718AE0](v17);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v5)
  {
    v18 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v19 = sub_1AF4720E8(v5);
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v7)
  {
    v20 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v20);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v21 = sub_1AF4720E8(v7);
    MEMORY[0x1B2718AE0](v21);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  if (v30)
  {
    v22 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v22);

    MEMORY[0x1B2718AE0](58, 0xE100000000000000);
    v23 = sub_1AF4720E8(v30);
    MEMORY[0x1B2718AE0](v23);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](99, 0xE100000000000000);
  }

  v24 = *(v0 + 64);
  if (v24)
  {
    v25 = sub_1AF4720E8(v24);
    MEMORY[0x1B2718AE0](v25);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x3A6874706564, 0xE600000000000000);
  }

  v26 = *(v0 + 72);
  if (v26)
  {
    v27 = sub_1AF4720E8(v26);
    MEMORY[0x1B2718AE0](v27);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x3A6C69636E657473, 0xE800000000000000);
  }

  if (*(v0 + 80) >= 2u)
  {
    v28 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v28);

    MEMORY[0x1B2718AE0](0x3A4141534DLL, 0xE500000000000000);
  }

  return 0;
}

BOOL sub_1AF8996BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) == 0)
    {
      return v2;
    }

    v3 = *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48);
    if (v3 || *(a1 + 56) != *(a2 + 56))
    {
      return v2;
    }

    if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
    {
      return *(a1 + 80) == *(a2 + 80);
    }
  }

  return 0;
}

unint64_t sub_1AF899770()
{
  result = qword_1EB63FD30;
  if (!qword_1EB63FD30)
  {
    type metadata accessor for RenderPassDesc(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CFXRenderPassDesc, v3, v0, v1);
    atomic_store(result, &qword_1EB63FD30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TesselationDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TesselationDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1AF89987C@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = *(v3 + 144);
  v68[19] = *(v3 + 128);
  v68[20] = v7;
  v68[21] = *(v3 + 160);
  v8 = *(v3 + 80);
  v68[15] = *(v3 + 64);
  v68[16] = v8;
  v9 = *(v3 + 112);
  v68[17] = *(v3 + 96);
  v68[18] = v9;
  v10 = *(v3 + 16);
  v68[11] = *v3;
  v68[12] = v10;
  v11 = *(v3 + 48);
  v68[13] = *(v3 + 32);
  v68[14] = v11;
  sub_1AF8971E8(a1, a2, v68);
  if (!v4)
  {
    v13 = *(v3 + 176);
    v14 = *(v3 + 184);
    v15 = *(v3 + 192);
    v16 = *(v3 + 200);
    v47 = *(v3 + 216);
    v48 = *(v3 + 208);
    v45 = *(v3 + 232);
    v46 = *(v3 + 224);
    v43 = *(v3 + 248);
    v44 = *(v3 + 240);
    v42 = *(v3 + 256);
    *(v56 + 3) = *(v3 + 260);
    v56[0] = *(v3 + 257);
    v17 = *(v3 + 336);
    v41 = *(v3 + 328);
    v18 = *(v3 + 264);
    v37 = *(v5 + 344);
    v69 = *(v5 + 352);
    v32 = *(v5 + 368);
    v39 = *(v5 + 360);
    v40 = *(v5 + 376);
    v34 = *(v5 + 392);
    v35 = *(v5 + 384);
    v38 = *(v5 + 400);
    v33 = *(v5 + 401);
    v65 = v68[8];
    v66 = v68[9];
    v67 = v68[10];
    v61 = v68[4];
    v62 = v68[5];
    v63 = v68[6];
    v64 = v68[7];
    v57 = v68[0];
    v58 = v68[1];
    v59 = v68[2];
    v60 = v68[3];
    sub_1AF5FF2F0(v51);
    *&v51[8] = xmmword_1AFE68E40;
    *&v51[24] = xmmword_1AFE68E40;
    *&v51[40] = xmmword_1AFE68E40;
    *&v51[56] = 0x10000010F00;
    *v51 = v18;
    v52 = *v51;
    v53 = *&v51[16];
    v54 = *&v51[32];
    v55 = *&v51[48];
    sub_1AFDFF308();
    sub_1AF6021F8(v68, v49);

    sub_1AF89747C(v50);
    sub_1AF602254(v68);
    MEMORY[0x1B271ACB0](v13);
    MEMORY[0x1B271ACB0](v14);
    v31 = v15;
    MEMORY[0x1B271ACB0](v15);
    MEMORY[0x1B271ACB0](v16);
    MEMORY[0x1B271ACB0](v48);
    MEMORY[0x1B271ACB0](v47);
    MEMORY[0x1B271ACB0](v46);
    MEMORY[0x1B271ACB0](v45);
    MEMORY[0x1B271ACB0](v44);
    MEMORY[0x1B271ACB0](v43);
    sub_1AFDFF2A8();
    v68[22] = *v51;
    v68[23] = *&v51[16];
    v68[24] = *&v51[32];
    v68[25] = *&v51[48];
    sub_1AF5FF304();
    v36 = v17;
    sub_1AFDFF2A8();
    if (v17)
    {
      MEMORY[0x1B271ACB0](v41);
    }

    v19 = v69;
    sub_1AFDFF2A8();
    if (v32 == 2)
    {
      v20 = v34;
      v21 = v35;
    }

    else
    {
      MEMORY[0x1B271ACB0](v19);
      MEMORY[0x1B271ACB0](v39);
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](v40);
      v21 = v35;
      MEMORY[0x1B271ACB0](v35);
      v20 = v34;
      MEMORY[0x1B271ACB0](v34);
    }

    MEMORY[0x1B271ACB0](v37);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v22 = sub_1AFDFF2E8();
    v23 = v66;
    *(a3 + 128) = v65;
    *(a3 + 144) = v23;
    *(a3 + 160) = v67;
    v24 = v62;
    *(a3 + 64) = v61;
    *(a3 + 80) = v24;
    v25 = v64;
    *(a3 + 96) = v63;
    *(a3 + 112) = v25;
    v26 = v58;
    *a3 = v57;
    *(a3 + 16) = v26;
    v27 = v60;
    *(a3 + 32) = v59;
    *(a3 + 48) = v27;
    *(a3 + 176) = v13;
    *(a3 + 184) = v14;
    *(a3 + 192) = v31;
    *(a3 + 200) = v16;
    *(a3 + 208) = v48;
    *(a3 + 216) = v47;
    *(a3 + 224) = v46;
    *(a3 + 232) = v45;
    *(a3 + 240) = v44;
    *(a3 + 248) = v43;
    *(a3 + 256) = v42;
    *(a3 + 257) = v56[0];
    *(a3 + 260) = *(v56 + 3);
    result = v52;
    v28 = v53;
    v29 = v55;
    *(a3 + 296) = v54;
    *(a3 + 312) = v29;
    *(a3 + 264) = result;
    *(a3 + 280) = v28;
    *(a3 + 328) = v41;
    *(a3 + 336) = v36;
    v30 = v69;
    *(a3 + 344) = v37;
    *(a3 + 352) = v30;
    *(a3 + 360) = v39;
    *(a3 + 368) = v32;
    *(a3 + 376) = v40;
    *(a3 + 384) = v21;
    *(a3 + 392) = v20;
    *(a3 + 400) = v38;
    *(a3 + 401) = v33;
    *(a3 + 408) = v22;
  }

  return result;
}

uint64_t sub_1AF899C78()
{
  sub_1AFDFE218();

  v3 = sub_1AF896E9C(v1, v2);
  MEMORY[0x1B2718AE0](v3);

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v0[51]);
  sub_1AFDFF2F8();
  sub_1AF723768();
  v4 = sub_1AFDFD1B8();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](0x3A746D6620, 0xE500000000000000);
  v5 = _sSo17CFXRenderPassDescas28CustomDebugStringConvertible3VFXsACP16debugDescriptionSSvgTW_0();
  MEMORY[0x1B2718AE0](v5);

  MEMORY[0x1B2718AE0](0x3A78747620, 0xE500000000000000);
  if (v0[42])
  {
    v6 = v0[41];
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2F8();
    v7 = sub_1AFDFD1B8();
    v9 = v8;
  }

  else
  {
    v9 = 0xE200000000000000;
    v7 = 16718;
  }

  MEMORY[0x1B2718AE0](v7, v9);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0x205D50525BLL;
}

uint64_t sub_1AF899E8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v3);
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF899F34()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  MEMORY[0x1B271ACB0](*v0);
  MEMORY[0x1B271ACB0](v1);
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  return MEMORY[0x1B271ACB0](v4);
}

uint64_t sub_1AF899FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  MEMORY[0x1B271ACB0](v3);
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v4);
  MEMORY[0x1B271ACB0](v5);
  MEMORY[0x1B271ACB0](v6);
  return sub_1AFDFF2F8();
}

BOOL sub_1AF89A050(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1AF89A1BC(v7, v8);
}

unint64_t sub_1AF89A09C()
{
  result = qword_1EB63FD38;
  if (!qword_1EB63FD38)
  {
    result = swift_getWitnessTable(byte_1AFE7E4A8, &type metadata for TesselationDescriptor, v0, v1);
    atomic_store(result, &qword_1EB63FD38);
  }

  return result;
}

uint64_t sub_1AF89A0F0()
{
  v1 = *(v0 + 408);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF89A164(uint64_t a1)
{
  v2 = *(v1 + 408);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  return sub_1AFDFF2F8();
}

uint64_t destroy for RenderPipelineDescriptor(void *a1)
{
  if (a1[1])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[6])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[11])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if (a1[16])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for RenderPipelineDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v5 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v5;
    *(a1 + 32) = *(a2 + 32);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v6 = *(a2 + 48);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 48);
    if (v6)
    {
LABEL_3:
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v6;
      v7 = *(a2 + 64);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v7;
      *(a1 + 72) = *(a2 + 72);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v8 = *(a2 + 88);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v13;
      *(a1 + 112) = *(a2 + 112);
      v10 = *(a2 + 128);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_9:
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_10;
    }
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 88);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = *(a2 + 112);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v10 = *(a2 + 128);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v10;
  v11 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v11;
  *(a1 + 152) = *(a2 + 152);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

LABEL_10:
  v14 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v14;
  v15 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v15;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  v16 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v16;
  v17 = *(a2 + 264);
  v18 = *(a2 + 280);
  v19 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v19;
  *(a1 + 264) = v17;
  *(a1 + 280) = v18;
  v20 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v20;
  *(a1 + 344) = *(a2 + 344);
  v21 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v21;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 401) = *(a2 + 401);
  *(a1 + 408) = *(a2 + 408);

  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for RenderPipelineDescriptor(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 16) = *(a2 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 24) = *(a2 + 3);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 32) = *(a2 + 4);
    }

    else
    {
      sub_1AF74345C(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 16) = a2[1];
    *(a1 + 32) = *(a2 + 4);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 6);
  if (*(a1 + 48))
  {
    if (v9)
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);

      *(a1 + 56) = *(a2 + 7);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 64) = *(a2 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 72) = *(a2 + 9);
    }

    else
    {
      sub_1AF74345C(a1 + 40);
      v10 = *(a2 + 9);
      v11 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v11;
      *(a1 + 72) = v10;
    }
  }

  else if (v9)
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = *(a2 + 9);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v12 = *(a2 + 40);
    v13 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v13;
    *(a1 + 40) = v12;
  }

  v14 = *(a2 + 11);
  if (*(a1 + 88))
  {
    if (v14)
    {
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);

      *(a1 + 96) = *(a2 + 12);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 104) = *(a2 + 13);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 112) = *(a2 + 14);
    }

    else
    {
      sub_1AF74345C(a1 + 80);
      v15 = *(a2 + 14);
      v16 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v16;
      *(a1 + 112) = v15;
    }
  }

  else if (v14)
  {
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 112) = *(a2 + 14);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v17 = a2[5];
    v18 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 80) = v17;
    *(a1 + 96) = v18;
  }

  v19 = *(a2 + 16);
  if (*(a1 + 128))
  {
    if (v19)
    {
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 128) = *(a2 + 16);

      *(a1 + 136) = *(a2 + 17);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 144) = *(a2 + 18);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 152) = *(a2 + 19);
    }

    else
    {
      sub_1AF74345C(a1 + 120);
      v20 = *(a2 + 19);
      v21 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v21;
      *(a1 + 152) = v20;
    }
  }

  else if (v19)
  {
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 144) = *(a2 + 18);
    *(a1 + 152) = *(a2 + 19);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 136) = v23;
    *(a1 + 120) = v22;
  }

  *(a1 + 160) = *(a2 + 20);

  *(a1 + 168) = *(a2 + 21);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 265) = *(a2 + 265);
  *(a1 + 266) = *(a2 + 266);
  *(a1 + 267) = *(a2 + 267);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 269) = *(a2 + 269);
  *(a1 + 270) = *(a2 + 270);
  *(a1 + 271) = *(a2 + 271);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 273) = *(a2 + 273);
  *(a1 + 274) = *(a2 + 274);
  *(a1 + 275) = *(a2 + 275);
  *(a1 + 276) = *(a2 + 276);
  *(a1 + 277) = *(a2 + 277);
  *(a1 + 278) = *(a2 + 278);
  *(a1 + 279) = *(a2 + 279);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 281) = *(a2 + 281);
  *(a1 + 282) = *(a2 + 282);
  *(a1 + 283) = *(a2 + 283);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  *(a1 + 286) = *(a2 + 286);
  *(a1 + 287) = *(a2 + 287);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 289) = *(a2 + 289);
  *(a1 + 290) = *(a2 + 290);
  *(a1 + 291) = *(a2 + 291);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 293) = *(a2 + 293);
  *(a1 + 294) = *(a2 + 294);
  *(a1 + 295) = *(a2 + 295);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 297) = *(a2 + 297);
  *(a1 + 298) = *(a2 + 298);
  *(a1 + 299) = *(a2 + 299);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 301) = *(a2 + 301);
  *(a1 + 302) = *(a2 + 302);
  *(a1 + 303) = *(a2 + 303);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 305) = *(a2 + 305);
  *(a1 + 306) = *(a2 + 306);
  *(a1 + 307) = *(a2 + 307);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 309) = *(a2 + 309);
  *(a1 + 310) = *(a2 + 310);
  *(a1 + 311) = *(a2 + 311);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 314) = *(a2 + 314);
  *(a1 + 315) = *(a2 + 315);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 317) = *(a2 + 317);
  *(a1 + 318) = *(a2 + 318);
  *(a1 + 319) = *(a2 + 319);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  *(a1 + 322) = *(a2 + 322);
  *(a1 + 323) = *(a2 + 323);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 325) = *(a2 + 325);
  *(a1 + 326) = *(a2 + 326);
  *(a1 + 327) = *(a2 + 327);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 336) = *(a2 + 42);

  *(a1 + 344) = *(a2 + 43);
  v24 = a2[22];
  v25 = a2[24];
  *(a1 + 368) = a2[23];
  *(a1 + 384) = v25;
  *(a1 + 352) = v24;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 401) = *(a2 + 401);
  *(a1 + 408) = *(a2 + 51);
  return a1;
}

uint64_t assignWithTake for RenderPipelineDescriptor(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
LABEL_6:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
    if (!*(a1 + 48))
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    sub_1AF74345C(a1);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);

  if (!*(a1 + 48))
  {
LABEL_11:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    if (!*(a1 + 88))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_7:
  v6 = *(a2 + 48);
  if (!v6)
  {
    sub_1AF74345C(a1 + 40);
    goto LABEL_11;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  *(a1 + 56) = *(a2 + 56);
  swift_unknownObjectRelease();
  *(a1 + 64) = *(a2 + 64);
  swift_unknownObjectRelease();
  *(a1 + 72) = *(a2 + 72);

  if (!*(a1 + 88))
  {
    goto LABEL_15;
  }

LABEL_12:
  v7 = *(a2 + 88);
  if (v7)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v7;

    *(a1 + 96) = *(a2 + 96);
    swift_unknownObjectRelease();
    *(a1 + 104) = *(a2 + 104);
    swift_unknownObjectRelease();
    *(a1 + 112) = *(a2 + 112);

    goto LABEL_16;
  }

  sub_1AF74345C(a1 + 80);
LABEL_15:
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
LABEL_16:
  if (!*(a1 + 128))
  {
LABEL_20:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_21;
  }

  v9 = *(a2 + 128);
  if (!v9)
  {
    sub_1AF74345C(a1 + 120);
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v9;

  *(a1 + 136) = *(a2 + 136);
  swift_unknownObjectRelease();
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

LABEL_21:
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  swift_unknownObjectRelease();
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  v11 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v11;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 265) = *(a2 + 265);
  *(a1 + 269) = *(a2 + 269);
  *(a1 + 270) = *(a2 + 270);
  *(a1 + 271) = *(a2 + 271);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 273) = *(a2 + 273);
  *(a1 + 277) = *(a2 + 277);
  *(a1 + 278) = *(a2 + 278);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 281) = *(a2 + 281);
  *(a1 + 285) = *(a2 + 285);
  *(a1 + 287) = *(a2 + 287);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 289) = *(a2 + 289);
  *(a1 + 293) = *(a2 + 293);
  *(a1 + 294) = *(a2 + 294);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 297) = *(a2 + 297);
  *(a1 + 301) = *(a2 + 301);
  *(a1 + 302) = *(a2 + 302);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 305) = *(a2 + 305);
  *(a1 + 309) = *(a2 + 309);
  *(a1 + 310) = *(a2 + 310);
  *(a1 + 311) = *(a2 + 311);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 313) = *(a2 + 313);
  *(a1 + 317) = *(a2 + 317);
  *(a1 + 318) = *(a2 + 318);
  *(a1 + 319) = *(a2 + 319);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 321) = *(a2 + 321);
  *(a1 + 325) = *(a2 + 325);
  *(a1 + 326) = *(a2 + 326);
  *(a1 + 327) = *(a2 + 327);
  v12 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v12;

  *(a1 + 344) = *(a2 + 344);
  v13 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v13;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 401) = *(a2 + 401);
  *(a1 + 408) = *(a2 + 408);
  return a1;
}

uint64_t getEnumTagSinglePayload for RenderPipelineDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 416))
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

uint64_t storeEnumTagSinglePayload for RenderPipelineDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AF89B0E4()
{
  result = qword_1EB63FD40;
  if (!qword_1EB63FD40)
  {
    result = swift_getWitnessTable(byte_1AFE7E52C, &type metadata for RenderPipelineDescriptor, v0, v1);
    atomic_store(result, &qword_1EB63FD40);
  }

  return result;
}

void *sub_1AF89B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 vertexFunction];
  v6 = [v5 functionConstantValues];
  v7 = sub_1AFDFCC08();

  v36 = sub_1AF882494(v7);

  v8 = [v5 functionName];
  v9 = sub_1AFDFCEF8();
  v11 = v10;

  v12 = [v2 fragmentFunction];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 functionConstantValues];
    v15 = sub_1AFDFCC08();

    v16 = sub_1AF882494(v15);

    v17 = [v13 functionName];
    v18 = sub_1AFDFCEF8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v16 = 0;
  }

  *&v42[0] = v9;
  *(&v42[0] + 1) = v11;
  v42[1] = 0uLL;
  *&v43 = v36;
  *(&v43 + 1) = v18;
  v44 = v20;
  *&v45 = 0;
  *(&v45 + 1) = v16;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = [v2 blendingDescAt_];
  v37 = [v2 primitiveTopologyClass];
  v35 = [v2 rasterizationEnabled];
  v34 = [v2 maxVertexAmplificationCount];
  __src[4] = v45;
  memset(&__src[5], 0, 96);
  __src[0] = v42[0];
  __src[1] = 0uLL;
  __src[2] = v43;
  __src[3] = v20;
  v22 = *(a1 + 32);
  v23 = *(a1 + 64);
  __src[14] = *(a1 + 48);
  __src[15] = v23;
  v24 = *(a1 + 16);
  __src[11] = *a1;
  *&__src[16] = *(a1 + 80);
  __src[12] = v24;
  __src[13] = v22;
  sub_1AF5FF2F0(v40);
  *&v40[8] = xmmword_1AFE68E40;
  *&v40[24] = xmmword_1AFE68E40;
  *&v40[40] = xmmword_1AFE68E40;
  *&v40[56] = 0x10000010F00;
  *v40 = v21;
  *(&__src[16] + 8) = *v40;
  *(&__src[17] + 8) = *&v40[16];
  *(&__src[18] + 8) = *&v40[32];
  *(&__src[19] + 8) = *&v40[48];
  sub_1AFDFF308();
  sub_1AF6021F8(v42, v38);
  sub_1AF89747C(v39);
  sub_1AF602254(v42);
  v25 = *(a1 + 8);
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  MEMORY[0x1B271ACB0](*a1);
  MEMORY[0x1B271ACB0](v25);
  MEMORY[0x1B271ACB0](v26);
  MEMORY[0x1B271ACB0](v27);
  MEMORY[0x1B271ACB0](v29);
  MEMORY[0x1B271ACB0](v28);
  MEMORY[0x1B271ACB0](v30);
  MEMORY[0x1B271ACB0](v31);
  MEMORY[0x1B271ACB0](*(a1 + 64));
  MEMORY[0x1B271ACB0](*(a1 + 72));
  sub_1AFDFF2A8();
  v38[0] = *v40;
  v38[1] = *&v40[16];
  v38[2] = *&v40[32];
  v38[3] = *&v40[48];
  sub_1AF5FF304();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v37);
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v32 = sub_1AFDFF2E8();
  result = memcpy(a2, __src, 0x148uLL);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = v37;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 2;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  *(a2 + 400) = v35;
  *(a2 + 401) = v34;
  *(a2 + 408) = v32;
  return result;
}

id sub_1AF89B540(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v60 = *(a1 + 40);
  v61 = v8;
  v62 = *(a1 + 72);
  v9 = objc_allocWithZone(CFXRemoteFunctionDescription);
  v10 = v2;
  v11 = [v9 init];
  v12 = sub_1AFDFCEC8();
  [v11 setFunctionName_];

  sub_1AF88276C(v7);
  v13 = sub_1AFDFCBE8();

  [v11 setFunctionConstantValues_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  [v10 setVertexFunction_];

  if (*(&v60 + 1))
  {
    v14 = v62;
    v63 = v61;
    v15 = objc_allocWithZone(CFXRemoteFunctionDescription);
    sub_1AF89BBB0(&v60, v59);

    sub_1AF85AE08(&v63, v59, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF85AE08(&v63 + 8, v59, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);

    v16 = [v15 init];
    v17 = sub_1AFDFCEC8();
    [v16 setFunctionName_];

    sub_1AF88276C(v14);
    v18 = sub_1AFDFCBE8();

    [v16 setFunctionConstantValues_];

    sub_1AF89BC64(&v63, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF89BC64(&v63 + 8, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);

    [v10 setFragmentFunction_];

    sub_1AF89BC64(&v63, &qword_1ED723160, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF89BC64(&v63 + 8, &qword_1ED723180, &qword_1ED723190, &protocolRef_MTLLibrary);
  }

  v19 = *(a1 + 336);
  if (v19)
  {
    v20 = *(a1 + 328);
    v21 = objc_allocWithZone(MEMORY[0x1E69741E0]);

    v22 = [v21 init];
    sub_1AF8C0378(v22, v20, v19);
  }

  else
  {
    v22 = 0;
  }

  [v10 setVertexDescriptor_];

  [v10 setPrimitiveTopologyClass_];
  [v10 setRasterizationEnabled_];
  [v10 setMaxVertexAmplificationCount_];
  v36 = *(a1 + 272);
  v23 = *(a1 + 273);
  v24 = *(a1 + 274);
  v25 = *(a1 + 275);
  v26 = *(a1 + 276);
  v42 = *(a1 + 280);
  v35 = *(a1 + 281);
  v33 = *(a1 + 282);
  v27 = *(a1 + 283);
  v28 = *(a1 + 284);
  v51 = *(a1 + 288);
  v40 = *(a1 + 289);
  v39 = *(a1 + 290);
  v38 = *(a1 + 291);
  v37 = *(a1 + 292);
  v57 = *(a1 + 296);
  v50 = *(a1 + 297);
  v49 = *(a1 + 298);
  v48 = *(a1 + 299);
  v47 = *(a1 + 300);
  v58 = *(a1 + 304);
  v56 = *(a1 + 305);
  v55 = *(a1 + 306);
  v54 = *(a1 + 307);
  v41 = *(a1 + 312);
  v34 = *(a1 + 313);
  v32 = *(a1 + 314);
  v29 = *(a1 + 315);
  v30 = *(a1 + 316);
  v52 = *(a1 + 320);
  v53 = *(a1 + 308);
  v46 = *(a1 + 321);
  v45 = *(a1 + 322);
  v44 = *(a1 + 323);
  v43 = *(a1 + 324);
  [v10 setBlendingDesc:(*(a1 + 265) << 8) | (*(a1 + 266) << 16) | (*(a1 + 267) << 24) | (*(a1 + 268) << 32) | *(a1 + 264) & 1 at:0];
  [v10 setBlendingDesc:(v23 << 8) | (v24 << 16) | (v25 << 24) | (v26 << 32) | v36 & 1 at:1];
  [v10 setBlendingDesc:(v35 << 8) | (v33 << 16) | (v27 << 24) | (v28 << 32) | v42 & 1 at:2];
  [v10 setBlendingDesc:(v40 << 8) | (v39 << 16) | (v38 << 24) | (v37 << 32) | v51 & 1 at:3];
  [v10 setBlendingDesc:(v50 << 8) | (v49 << 16) | (v48 << 24) | (v47 << 32) | v57 & 1 at:4];
  [v10 setBlendingDesc:(v56 << 8) | (v55 << 16) | (v54 << 24) | (v53 << 32) | v58 & 1 at:5];
  [v10 setBlendingDesc:(v34 << 8) | (v32 << 16) | (v29 << 24) | (v30 << 32) | v41 & 1 at:6];
  [v10 setBlendingDesc:(v46 << 8) | (v45 << 16) | (v44 << 24) | (v43 << 32) | v52 & 1 at:7];
  return v10;
}

uint64_t sub_1AF89BBB0(uint64_t a1, uint64_t a2)
{
  sub_1AF89BC14();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF89BC14()
{
  if (!qword_1ED7225F0)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7225F0);
    }
  }
}

uint64_t sub_1AF89BC64(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  sub_1AF85AE78(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF89BCC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v261 = a8;
  v269 = a5;
  v266 = a4;
  v236 = a3;
  a2[25] = *(a1 + 80);
  v10 = *(a1 + 72);
  v256 = a2;
  a2[24] = v10;
  v11 = *(a1 + 52);
  if (v11 == 3 && (*(a1 + 44) != 1 || (v11 = *(a1 + 40)) != 0))
  {
    LOBYTE(v11) = 1;
  }

  v12 = v256;
  *(v256 + 211) = v11;
  v13 = *(a1 + 44);
  v243 = *(a1 + 40);
  v237 = v13;
  if (v243 == 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 210) = v14;
  if (!a6)
  {
    return 2;
  }

  v254 = a1;
  v262 = v9;
  v15 = *(a6 + 112);
  v16 = qword_1ED7255B8;
  v251 = a6;

  v260 = v15;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED73B4B8;
  v18 = byte_1ED73B4D0;
  v19 = v262;
  *(v262 + 104) = qword_1ED73B4A0;
  *(v19 + 112) = *algn_1ED73B4A8;
  *(v19 + 128) = v17;
  *(v19 + 136) = xmmword_1ED73B4C0;
  *(v19 + 152) = v18;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v20 = qword_1ED73B4B8;
  v21 = byte_1ED73B4D0;
  v19 += 160;
  *v19 = qword_1ED73B4A0;
  *(v19 + 8) = *algn_1ED73B4A8;
  *(v19 + 32) = xmmword_1ED73B4C0;
  *(v19 + 48) = v21;
  v233 = v19;
  *(v19 + 24) = v20;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v22 = v251;
  if (*(v251 + 393))
  {
    v255 = 0;
    v23 = 1;
  }

  else
  {
    v25 = v269[23];

    v23 = sub_1AF6D5874(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v25);
    v255 = 0;
  }

  v26 = v23 & 1;
  v280 = 0;
  v27 = *(v251 + 376);
  sub_1AF89FF4C(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AFE431C0;
  *(v28 + 32) = xmmword_1AFE7E5A0;
  *(v28 + 48) = v280;
  *(v28 + 64) = v26;
  *(v28 + 128) = 13;
  v284[0] = v27;

  sub_1AF490060(v28);
  v250 = v27;
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v264 = sub_1AF12E2A0(Strong);
  }

  else
  {
    v264 = 0;
  }

  v31 = v262;
  v32 = *(v22 + 520);
  v33 = *(v32 + 56);

  os_unfair_lock_lock(v33);
  v34 = *(v32 + 16);

  os_unfair_lock_unlock(v33);

  v35 = *(v34 + 16);
  if (!v35)
  {

    v24 = 0;
    goto LABEL_218;
  }

  v24 = 0;
  v36 = 0;
  v258 = a9;
  v225 = v34;
  v37 = v34 + 32;
  if (v243)
  {
    v38 = 0;
  }

  else
  {
    v38 = v237;
  }

  v263 = v236 + 32;
  v229 = 0x80000001AFF38B90;
  v230 = v22 + 128;
  v249 = 0x80000001AFF38BB0;
  v232 = "Missing reflection in ";
  v224 = ".Framework runtime for ";
  v227 = v22 + 136;
  v228 = v22 + 152;
  v234 = 0x80000001AFF38AF0;
  v245 = xmmword_1AFE7E5B0;
  v247 = v34 + 32;
  v248 = v35;
  v246 = v38;
  while (1)
  {
    v39 = (v37 + 96 * v36);
    v40 = v39[3];
    v285[2] = v39[2];
    v285[3] = v40;
    v41 = v39[5];
    v285[4] = v39[4];
    v285[5] = v41;
    v42 = v39[1];
    v285[0] = *v39;
    v285[1] = v42;
    v43 = v285[0].i32[0];
    if ((v285[0].i16[0] & 0x5000) != 0)
    {
      v44 = v38;
    }

    else
    {
      v44 = 1;
    }

    if (v44 != 1)
    {
      goto LABEL_25;
    }

    if ((v285[0].i16[0] & 0x800) != 0)
    {
      break;
    }

    if ((v285[0].i16[0] & 0x1000) != 0)
    {
      v45 = v38;
    }

    else
    {
      v45 = 1;
    }

    if ((v285[0].i16[0] & 0x1000) != 0)
    {
      v46 = 1;
    }

    else
    {
      v46 = v243;
    }

    if (v45 == 1)
    {
      v253 = v36;
      v257 = v24;
      v47 = v237 | ((v285[0].i16[0] & 0x1000) >> 12);
      goto LABEL_40;
    }

LABEL_25:
    if (++v36 == v35)
    {

LABEL_218:
      *(v256 + 208) = (*(v31 + 80) & 8) != 0;
      return v24;
    }
  }

  v253 = v36;
  v257 = v24;
  v46 = 0;
  v47 = 1;
LABEL_40:
  v48 = sub_1AFBE8934(v285[0].i32[0]);
  v279 = 0;
  v270 = v245;
  v271 = 0;
  v272 = 1;
  v273 = 13;
  MEMORY[0x1EEE9AC00](v48);
  v222[2] = &v270;
  v49 = v255;
  v50 = sub_1AF7B9844(sub_1AF89FD48, v222, v48);
  v255 = v49;

  if ((v43 & 0x8000) != 0)
  {
    v51 = 0x5010005010F01;
  }

  else
  {
    v51 = 2;
  }

  v52 = *(v254 + 48);
  v53 = *(v22 + 272) | v50;
  v54 = swift_allocObject();
  *(v54 + 16) = v43;
  v265 = (v54 + 16);
  *&v278[20] = *(&v285[1] + 8);
  *&v278[4] = *(v285 + 8);
  *&v278[84] = v285[5].i64[1];
  *&v278[68] = *(&v285[4] + 8);
  *&v278[52] = *(&v285[3] + 8);
  *&v278[36] = *(&v285[2] + 8);
  v277 = v47 & 1;
  v55 = *v278;
  *(v54 + 36) = *&v278[16];
  *(v54 + 20) = v55;
  v56 = *&v278[32];
  v57 = *&v278[48];
  v58 = *&v278[64];
  *(v54 + 96) = *&v278[76];
  *(v54 + 84) = v58;
  *(v54 + 68) = v57;
  *(v54 + 52) = v56;
  *(v54 + 112) = 0;
  *(v54 + 120) = 0;
  *(v54 + 128) = v51;
  *(v54 + 136) = v46;
  *(v54 + 140) = v277;
  *(v54 + 144) = v52;
  *(v54 + 148) = v53 & 1;
  *(v54 + 149) = 1;
  v267 = v54;
  *(v54 + 152) = v250;
  v59 = *(v22 + 16);

  v252 = v59;
  v60 = [CFXGPUDeviceGetMTLDevice(v59) supportsVertexAmplificationCount_];
  swift_unknownObjectRelease();
  if (v60)
  {
    *(v267 + 149) = 2;
  }

  v31 = v262;
  if ((*(v262 + 80) & 0x80) == 0)
  {
    goto LABEL_76;
  }

  if (qword_1ED722B18 != -1)
  {
    swift_once();
  }

  [qword_1ED722B20 lock];
  if (qword_1ED722B00 != -1)
  {
    swift_once();
  }

  v61 = off_1ED722B08;
  v62 = *(off_1ED722B08 + 2);
  if (v62)
  {
    v241 = v47;
    LODWORD(v242) = v46;
    LODWORD(v244) = v43;
    *&v270 = MEMORY[0x1E69E7CC0];

    sub_1AFC07798(0, v62, 0);
    v268 = v61 + 64;
    v63 = sub_1AFDFE068();
    v64 = 0;
    v65 = v270;
    v259 = v61 + 72;
    v269 = v62;
    do
    {
      v67 = *(v61 + 9);
      v68 = *(*(v61 + 6) + 8 * v63);
      v69 = *(*(v61 + 7) + 8 * v63);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC07798(0, *(v65 + 16) + 1, 1);
        v65 = v270;
      }

      v71 = *(v65 + 16);
      v70 = *(v65 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1AFC07798(v70 > 1, v71 + 1, 1);
        v65 = v270;
      }

      *(v65 + 16) = v71 + 1;
      v72 = v65 + 16 * v71;
      *(v72 + 32) = v69;
      *(v72 + 40) = v68;
      v73 = v63 >> 6;
      if ((v268[v63 >> 6] & (-2 << v63)) != 0)
      {
        v66 = __clz(__rbit64(v268[v63 >> 6] & (-2 << v63))) | v63 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v66 = 1 << v61[32];
        v74 = v73 << 6;
        v75 = v73 + 1;
        v76 = &v259[8 * v73];
        while (v75 < (v66 + 63) >> 6)
        {
          v78 = *v76++;
          v77 = v78;
          v74 += 64;
          ++v75;
          if (v78)
          {
            sub_1AF0FBAE8(v63, v67, 0);
            v66 = __clz(__rbit64(v77)) + v74;
            goto LABEL_53;
          }
        }

        sub_1AF0FBAE8(v63, v67, 0);
      }

LABEL_53:
      v64 = (v64 + 1);
      v63 = v66;
    }

    while (v64 != v269);

    v31 = v262;
    v22 = v251;
    LOWORD(v43) = v244;
    LOBYTE(v47) = v241;
    v46 = v242;
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

  [qword_1ED722B20 unlock];
  v79 = *(v65 + 16);

  if (!v79)
  {
LABEL_76:
    v85 = v47 & 1;
LABEL_77:
    LOBYTE(v270) = v85;
    v86 = sub_1AF89E8E8(0, 0, v267, v31, v266, v264, v285, v46 | (v85 << 32), v260, v261 & 1, v258, v256, v22, v254);

    v24 = v257;
    if ((v86 & ~v257) != 0)
    {
      v24 = v86 | v257;
    }

LABEL_24:
    v37 = v247;
    v35 = v248;
    v36 = v253;
    v38 = v246;
    goto LABEL_25;
  }

  v80 = v47;
  v81 = *(v236 + 16);
  if (!v81)
  {
    v85 = v80 & 1;
    goto LABEL_77;
  }

  v82 = 0;
  v83 = v230;
  if ((v80 & (v46 == 0)) != 0)
  {
    v84 = v230;
  }

  else
  {
    v84 = v227;
  }

  v231 = v84;
  v241 = v43 & 0x9800;
  if ((v43 & 0x800) == 0)
  {
    v83 = v228;
  }

  if ((v43 & 0x8800) == 0)
  {
    v83 = v227;
  }

  v235 = v83;
  v24 = v257;
  v242 = v81;
  while (1)
  {
    v88 = (v263 + 16 * v82);
    v90 = *v88;
    v89 = v88[1];
    v91 = v267;
    swift_retain_n();

    *(v91 + 112) = v90;
    *(v91 + 120) = v89;
    v92 = v265[3];
    v286[2] = v265[2];
    v286[3] = v92;
    v93 = v265[5];
    v286[4] = v265[4];
    v286[5] = v93;
    v94 = v265[1];
    v286[0] = *v265;
    v286[1] = v94;
    v95 = v265[7];
    v286[6] = v265[6];
    v286[7] = v95;
    v286[8] = v265[8];
    sub_1AF89DFD4(v286, v264, v281);
    memcpy(v283, v281, sizeof(v283));
    if (sub_1AF0EC624(v283) == 1)
    {
      v87 = 2;

      if ((v24 & 2) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    memcpy(v284, v283, sizeof(v284));
    v96 = sub_1AF730058(v284);
    v99 = v96;
    if (!v98)
    {
      break;
    }

    if (v98 == 1)
    {
      v100 = v97;
      v101 = v24;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v270 = 0;
      *(&v270 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v270 = 0xD000000000000014;
      *(&v270 + 1) = v249;
      v102 = sub_1AF899C78();
      MEMORY[0x1B2718AE0](v102);

      v103 = v270;
      v104 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v160 = v104;
        swift_once();
        v104 = v160;
      }

      *&v270 = 0;
      sub_1AF0D4F18(v104, &v270, v103, *(&v103 + 1));

      v87 = 2;

      v105 = v99;
      v106 = v100;
      v107 = 1;
LABEL_103:
      sub_1AF6022A8(v105, v106, v107);
LABEL_104:
      sub_1AF89FEDC(v281, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v116);
      v31 = v262;
      v24 = v101;
      if ((v101 & 2) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    if (!(v96 | v97))
    {
      if (v261)
      {

        sub_1AF89FEDC(v281, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v117);
        if (v24)
        {
          goto LABEL_81;
        }

        v87 = 1;
        goto LABEL_80;
      }

      v101 = v24;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v270 = 0;
      *(&v270 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v270 = 0xD00000000000001ALL;
      *(&v270 + 1) = v229;
      v145 = sub_1AF899C78();
      MEMORY[0x1B2718AE0](v145);

      v146 = v270;
      v147 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v218 = v147;
        swift_once();
        v147 = v218;
      }

      *&v270 = 0;
      sub_1AF0D4F18(v147, &v270, v146, *(&v146 + 1));

      v87 = 2;

      goto LABEL_104;
    }

    sub_1AF89FEDC(v281, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v111);
    if ((v24 & 4) != 0)
    {
      goto LABEL_81;
    }

    v87 = 4;
LABEL_80:
    v24 = v87 | v24;
LABEL_81:
    if (++v82 == v81)
    {

      v22 = v251;
      goto LABEL_24;
    }
  }

  if (!v97)
  {
    v101 = v24;
    v112 = qword_1ED730EA0;
    swift_unknownObjectRetain();
    if (v112 != -1)
    {
      swift_once();
    }

    *&v270 = 0;
    *(&v270 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v270 = 0xD000000000000016;
    *(&v270 + 1) = v234;
    v113 = sub_1AF899C78();
    MEMORY[0x1B2718AE0](v113);

    v114 = v270;
    v115 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v161 = v115;
      swift_once();
      v115 = v161;
    }

    *&v270 = 0;
    sub_1AF0D4F18(v115, &v270, v114, *(&v114 + 1));
    swift_unknownObjectRelease();

    v87 = 2;

    v105 = v99;
    v106 = 0;
    v107 = 0;
    goto LABEL_103;
  }

  v108 = *(v31 + 209);
  v268 = v97;
  v269 = v96;
  v257 = v24;
  if (v108)
  {
    v109 = v97;
    swift_unknownObjectRetain();
    v110 = v109;
    goto LABEL_186;
  }

  v240 = v90;
  v118 = v256;
  v119 = v256[3];
  v120 = v97;
  v121 = v97;
  swift_unknownObjectRetain();
  v122 = v121;

  v118[3] = v120;
  v123 = [v122 vertexBindings];
  v124 = sub_1AF7198B0();
  v125 = sub_1AFDFD418();

  v126 = v252;
  v127 = CFXGPUDeviceGetMTLDevice(v252);
  v128 = *(v251 + 208);
  v129 = v255;
  sub_1AFB5470C(v125, v127, v128);
  v259 = v122;
  v244 = v124;
  if (v129)
  {
    v90 = v240;

    swift_unknownObjectRelease();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v270 = 0;
    *(&v270 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000057, v232 | 0x8000000000000000);
    v135 = sub_1AF899C78();
    MEMORY[0x1B2718AE0](v135);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v136 = v270;
    v137 = sub_1AFDFDA28();
    *&v270 = 1;
    sub_1AF75A4B4(v137, v136, *(&v136 + 1), &v270, v138);

    v255 = 0;
    v156 = v262;
  }

  else
  {

    swift_unknownObjectRelease();
    v130 = [v122 fragmentBindings];
    v131 = v128;
    v132 = v130;
    v133 = sub_1AFDFD418();

    v134 = CFXGPUDeviceGetMTLDevice(v126);
    sub_1AFB5470C(v133, v134, v131);
    v255 = 0;

    swift_unknownObjectRelease();
    v156 = v262;
    v90 = v240;
  }

  v139 = *(v156 + 80);
  v140 = [v259 vertexBindings];
  v141 = sub_1AFDFD418();

  if (v141 >> 62)
  {
    v142 = sub_1AFDFE108();
    if (v142)
    {
      goto LABEL_116;
    }

    goto LABEL_149;
  }

  v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v142)
  {
LABEL_149:

    if (qword_1ED724A80 != -1)
    {
      swift_once();
    }

    v162 = qword_1ED73B410;
    v239 = qword_1ED73B420;
    v240 = qword_1ED73B418;
    swift_unknownObjectRetain();
    v238 = v162;

    goto LABEL_152;
  }

LABEL_116:
  LODWORD(v238) = v139;
  v143 = 0;
  while (1)
  {
    if ((v141 & 0xC000000000000001) != 0)
    {
      v144 = MEMORY[0x1B2719C70](v143, v141);
    }

    else
    {
      v144 = *(v141 + 8 * v143 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if ([v144 index] == 2)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v142 == ++v143)
    {
      goto LABEL_149;
    }
  }

  v276 = &unk_1F262DBA0;
  v148 = swift_dynamicCastObjCProtocolConditional();
  if (!v148)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v270 = 0;
    *(&v270 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000019, v224 | 0x8000000000000000);
    v275 = v144;
    sub_1AFDFEDD8();
    v157 = v270;
    v158 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v219 = v158;
      swift_once();
      v158 = v219;
    }

    *&v270 = 0;
    sub_1AF0D4F18(v158, &v270, v157, *(&v157 + 1));

    goto LABEL_144;
  }

  v149 = v148;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v150 = sub_1AF471E24();
  v151 = v262;
  v152 = v238;
  if ((v150 & 1) == 0)
  {
    goto LABEL_136;
  }

  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    if (v284[1])
    {
      v222[5] = v284[2];
      v223 = v284[3];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v153 = [CFXGPUDeviceGetMTLDevice(v252) newArgumentEncoderWithBufferBinding_];
      swift_unknownObjectRelease();
      v239 = [swift_unknownObjectRetain() encodedLength];
      v240 = v153;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v151 = v262;
      v154 = v259;
      if ((v152 & 4) != 0)
      {
        goto LABEL_135;
      }

LABEL_137:
      v238 = sub_1AF8A2114(v144);
      swift_unknownObjectRelease_n();
      goto LABEL_138;
    }

    swift_unknownObjectRelease();
LABEL_144:
    if (qword_1ED724A80 != -1)
    {
      swift_once();
    }

    v159 = qword_1ED73B410;
    v239 = qword_1ED73B420;
    v240 = qword_1ED73B418;
    swift_unknownObjectRetain();
    v238 = v159;

    swift_unknownObjectRelease();
LABEL_152:
    v151 = v262;
    v155 = v259;
  }

  else
  {
LABEL_136:
    v239 = [v149 bufferDataSize];
    v240 = 0;
    v154 = v259;
    if ((v152 & 4) == 0)
    {
      goto LABEL_137;
    }

LABEL_135:
    swift_unknownObjectRelease_n();
    v238 = MEMORY[0x1E69E7CC0];
LABEL_138:
    v155 = v154;
  }

  v163 = *(v151 + 80);
  v164 = [v155 fragmentBindings];
  v165 = sub_1AFDFD418();

  if (v165 >> 62)
  {
    v166 = sub_1AFDFE108();
    if (v166)
    {
      goto LABEL_155;
    }

    goto LABEL_182;
  }

  v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v166)
  {
LABEL_182:

    if (qword_1ED724A80 != -1)
    {
      swift_once();
    }

    v174 = qword_1ED73B410;
    v172 = qword_1ED73B418;
    v173 = qword_1ED73B420;
    swift_unknownObjectRetain();

    v99 = v269;
    goto LABEL_185;
  }

LABEL_155:
  LODWORD(v259) = v163;
  v167 = 0;
  while (1)
  {
    if ((v165 & 0xC000000000000001) != 0)
    {
      v168 = MEMORY[0x1B2719C70](v167, v165);
    }

    else
    {
      v168 = *(v165 + 8 * v167 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if ([v168 index] == 2)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v166 == ++v167)
    {
      goto LABEL_182;
    }
  }

  v274 = &unk_1F262DBA0;
  v169 = swift_dynamicCastObjCProtocolConditional();
  if (!v169)
  {
    v99 = v269;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v270 = 0;
    *(&v270 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000019, v224 | 0x8000000000000000);
    v275 = v168;
    sub_1AFDFEDD8();
    v175 = v270;
    v176 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v220 = v176;
      swift_once();
      v176 = v220;
    }

    *&v270 = 0;
    sub_1AF0D4F18(v176, &v270, v175, *(&v175 + 1));

    goto LABEL_177;
  }

  v170 = v169;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v171 = sub_1AF471E24();
  v99 = v269;
  if (v171)
  {
    if (qword_1ED72AB78 != -1)
    {
      swift_once();
    }

    if (byte_1ED73B6A0 == 1)
    {
      if (v284[6])
      {
        v244 = v284[8];
        v223 = v284[7];
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v172 = [CFXGPUDeviceGetMTLDevice(v252) newArgumentEncoderWithBufferBinding_];
        swift_unknownObjectRelease();
        v173 = [swift_unknownObjectRetain() encodedLength];
        swift_unknownObjectRelease();
        v99 = v269;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if ((v259 & 4) != 0)
        {
          goto LABEL_169;
        }

LABEL_171:
        v174 = sub_1AF8A2114(v168);
        swift_unknownObjectRelease_n();
        goto LABEL_185;
      }

      swift_unknownObjectRelease();
LABEL_177:
      if (qword_1ED724A80 != -1)
      {
        swift_once();
      }

      v174 = qword_1ED73B410;
      v172 = qword_1ED73B418;
      v173 = qword_1ED73B420;
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      goto LABEL_185;
    }
  }

  v173 = [v170 bufferDataSize];
  v172 = 0;
  if ((v259 & 4) == 0)
  {
    goto LABEL_171;
  }

LABEL_169:
  swift_unknownObjectRelease_n();
  v174 = MEMORY[0x1E69E7CC0];
LABEL_185:
  sub_1AF8A96E0(v238, v240, v239, v174, v172, v173, v282);
  sub_1AF89FD68(v282, v233);
  *(v262 + 209) = v284[6] != 0;
LABEL_186:
  v177 = v252;
  if (v241)
  {
    v178 = v235;
    goto LABEL_191;
  }

  if (*(v254 + 53))
  {
    v179 = *(v254 + 56);
    v180 = *(v254 + 64);
    BYTE8(v270) = 0;
    *&v270 = 0;
    sub_1AF0D7334(v179, &v270);
    sub_1AF0D7344(v180, &v270);
    v226 = v226 & 0xFFFFFFFFFFFFFF00 | BYTE8(v270);
    DepthStencil = CFXGPUDeviceCreateDepthStencil(v177, 0, BYTE8(v270));
  }

  else
  {
    v178 = v231;
LABEL_191:
    DepthStencil = *v178;
    swift_unknownObjectRetain();
  }

  v182 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRetain();
  if (v182)
  {
    if (sub_1AF12E2A0(v182))
    {
      v184 = sub_1AF12E2AC(v182, v183);
      sub_1AF89FDC4();
      sub_1AF89FE10(v281, &v270, v185);
      v186 = sub_1AF89B540(v284);
      sub_1AF89FEDC(v281, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v187);
      v188 = 0;
      if ([v184 respondsToSelector_])
      {
        v188 = [v184 resourceManager];
      }

      [v188 registerRenderPipelineDescriptor:v186 state:v99];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v189 = v256;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v189;
  *&v270 = v191;
  v192 = sub_1AF449CB8(v90);
  v194 = v193;
  v195 = v191[2] + ((v193 & 1) == 0);
  if (v191[3] >= v195)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF84D968();
      v191 = v270;
    }

LABEL_203:
    *v256 = v191;
    if ((v194 & 1) == 0)
    {
      v198 = sub_1AF42C624(MEMORY[0x1E69E7CC0]);
      v191[(v192 >> 6) + 8] |= 1 << v192;
      *(v191[6] + 8 * v192) = v90;
      *(v191[7] + 8 * v192) = v198;
      ++v191[2];
    }

    v199 = v191[7];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v200 = swift_isUniquelyReferenced_nonNull_native();
    *&v270 = *(v199 + 8 * v192);
    v201 = v270;
    *(v199 + 8 * v192) = 0x8000000000000000;
    v202 = sub_1AF419A14(v285);
    v204 = v203;
    v205 = *(v201 + 16) + ((v203 & 1) == 0);
    if (*(v201 + 24) >= v205)
    {
      if ((v200 & 1) == 0)
      {
        v210 = v202;
        sub_1AF84D7CC();
        v202 = v210;
        v207 = v270;
        if (v204)
        {
          goto LABEL_210;
        }

        goto LABEL_212;
      }
    }

    else
    {
      sub_1AF83D2FC(v205, v200);
      v202 = sub_1AF419A14(v285);
      if ((v204 & 1) != (v206 & 1))
      {
        goto LABEL_221;
      }
    }

    v207 = v270;
    if (v204)
    {
LABEL_210:
      v208 = v207[7] + 24 * v202;
      v209 = v269;
      *v208 = v269;
      *(v208 + 8) = DepthStencil;
      *(v208 + 16) = 0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_213:
      *(v199 + 8 * v192) = v207;
      swift_unknownObjectRelease();

      v216 = v268;
      sub_1AF6022A8(v209, v268, 0);

      sub_1AF89FEDC(v281, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v217);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v24 = v257;
      if ((v257 & 4) != 0)
      {
        v31 = v262;
        v81 = v242;
        goto LABEL_81;
      }

      v87 = 4;
      v31 = v262;
      v81 = v242;
      goto LABEL_80;
    }

LABEL_212:
    v207[(v202 >> 6) + 8] |= 1 << v202;
    v211 = v207[6] + 96 * v202;
    v212 = v285[3];
    *(v211 + 32) = v285[2];
    *(v211 + 48) = v212;
    v213 = v285[5];
    *(v211 + 64) = v285[4];
    *(v211 + 80) = v213;
    v214 = v285[1];
    *v211 = v285[0];
    *(v211 + 16) = v214;
    v215 = v207[7] + 24 * v202;
    v209 = v269;
    *v215 = v269;
    *(v215 + 8) = DepthStencil;
    *(v215 + 16) = 0;
    ++v207[2];
    goto LABEL_213;
  }

  sub_1AF83D6D4(v195, isUniquelyReferenced_nonNull_native);
  v191 = v270;
  v196 = sub_1AF449CB8(v90);
  if ((v194 & 1) == (v197 & 1))
  {
    v192 = v196;
    goto LABEL_203;
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_221:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF89DA7C(char a1)
{
  if (a1)
  {
    MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF38CB0);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF38C80);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF38C60);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  MEMORY[0x1B2718AE0](0x524250736465656ELL, 0xE90000000000002CLL);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38C40);
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF38BF0);
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF38C20);
  if ((a1 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (a1 < 0)
  {
LABEL_9:
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF38BD0);
  }

LABEL_10:
  v2 = sub_1AF8FD3D4(1, 0, 0xE000000000000000);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1B27189E0](v2, v4, v6, v8);

  return v9;
}

__n128 sub_1AF89DC48@<Q0>(uint64_t a1@<X8>)
{
  sub_1AF89FC54(v7);
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v7[10];
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AF89DCA8(__int16 a1)
{
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 15;
  *(v1 + 80) = 0;
  *(v1 + 88) = sub_1AF89DC48;
  *(v1 + 96) = 0;
  if (qword_1ED7255B8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = qword_1ED73B4A0;
  v3 = *algn_1ED73B4A8;
  v4 = qword_1ED73B4B0;
  v5 = qword_1ED73B4B8;
  v6 = xmmword_1ED73B4C0;
  v7 = byte_1ED73B4D0;
  *(v1 + 104) = qword_1ED73B4A0;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 136) = v6;
  *(v1 + 152) = v7;
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  *(v1 + 192) = v6;
  *(v1 + 208) = v7;
  *(v1 + 80) = a1;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v1;
}

uint64_t sub_1AF89DDB0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1AF89DE78()
{
  result = qword_1EB63FD48;
  if (!qword_1EB63FD48)
  {
    result = swift_getWitnessTable(byte_1AFE7E65C, &type metadata for RenderPipelineFactory.Flags, v0, v1);
    atomic_store(result, &qword_1EB63FD48);
  }

  return result;
}

unint64_t sub_1AF89DED0()
{
  result = qword_1EB63FD50;
  if (!qword_1EB63FD50)
  {
    result = swift_getWitnessTable(asc_1AFE7E62C, &type metadata for RenderPipelineFactory.Flags, v0, v1);
    atomic_store(result, &qword_1EB63FD50);
  }

  return result;
}

unint64_t sub_1AF89DF28()
{
  result = qword_1EB63FD58;
  if (!qword_1EB63FD58)
  {
    result = swift_getWitnessTable(byte_1AFE7E684, &type metadata for RenderPipelineFactory.Flags, v0, v1);
    atomic_store(result, &qword_1EB63FD58);
  }

  return result;
}

unint64_t sub_1AF89DF80()
{
  result = qword_1EB63FD60;
  if (!qword_1EB63FD60)
  {
    result = swift_getWitnessTable(aI_37, &type metadata for RenderPipelineFactory.Flags, v0, v1);
    atomic_store(result, &qword_1EB63FD60);
  }

  return result;
}

void *sub_1AF89DFD4@<X0>(unsigned int *a1@<X0>, char a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 + 17);
  v9 = *a1;
  v10 = sub_1AFBE8934(*a1);
  *&__dst[0] = v8;

  sub_1AF490060(v10);
  sub_1AF89FF4C(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  v12 = a1[30];
  v13 = *(a1 + 124);
  if (*(a1 + 124))
  {
    v14 = a1[30];
  }

  else
  {
    v14 = 3;
  }

  v129 = 0;
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = xmmword_1AFE7E5C0;
  *(v11 + 48) = 0;
  *(v11 + 64) = v14;
  *(v11 + 128) = 14;
  v128 = v8;
  sub_1AF490060(v11);
  v16 = *(a1 + 12);
  v15 = *(a1 + 13);
  if (v15)
  {
    v17 = sub_1AF885C04(*(a1 + 12), *(a1 + 13));
    sub_1AF490060(v17);
  }

  v82 = v16;

  sub_1AF490060(v18);
  v19 = *(v5 + 88);

  v19(&v130, v9);
  v125 = v138;
  v126 = v139;
  v127 = v140;
  v121 = v134;
  v122 = v135;
  v124 = v137;
  v123 = v136;
  v117 = v130;
  v118 = v131;
  v120 = v133;
  v119 = v132;

  v148 = v138;
  v149 = v139;
  v150 = v140;
  *&v144[32] = v134;
  v145 = v135;
  v147 = v137;
  v146 = v136;
  v142 = v130;
  v143 = v131;
  *&v144[16] = v133;
  *v144 = v132;
  if (sub_1AF0EC624(&v142) == 1)
  {

    sub_1AF89FE98(__dst);
    return memcpy(a4, __dst, 0x1A0uLL);
  }

  v76 = a4;
  v73 = v15;
  v87 = v12;
  v21 = (v9 & 0x800) != 0 && *(a1 + 32) < 0.0 && (v20 = *(v5 + 80), (v20 & 1) == 0) && (v20 & 2) == 0;
  v77 = v143;
  v78 = *(&v142 + 1);
  v67 = *(&v143 + 1);
  v63 = *&v144[40];
  v79 = *v144;
  v61 = *&v144[24];
  v22 = v145;
  v23 = v146;
  v71 = v142;
  v24 = v147;
  v65 = v148;
  v69 = v149;
  v70 = *(&v148 + 1);
  v68 = *(&v149 + 1);
  v83 = *(a1 + 14);
  v26 = *(&v150 + 1);
  v25 = v150;
  v62 = *&v144[8];
  if (v83 == 2)
  {
    LOBYTE(__dst[0]) = v13;
    v27 = v150;
    v28 = v12 | (v13 << 32);
    v29 = v13;
    v30 = v21;
    v31 = sub_1AF8781AC(v28);
    v21 = v30;
    v13 = v29;
    v83 = v31;
    v25 = v27;
  }

  v66 = v26;
  if ((v9 & 0x800) != 0)
  {
    v33 = 0;
LABEL_22:
    v86 = *(a1 + 2);
    v88 = *(a1 + 6);
    v84 = *(a1 + 10);
    v85 = *(a1 + 14);
    v32 = *(a1 + 10);
    goto LABEL_23;
  }

  if ((a1[33] & 1) != 0 || ((v13 ^ 1) & 1) != 0 || v87 < 2)
  {
    v33 = *(v5 + 72);
    goto LABEL_22;
  }

  v86 = *(a1 + 2);
  v88 = *(a1 + 6);
  v84 = *(a1 + 10);
  v85 = *(a1 + 14);
  v32 = *(a1 + 10);
  v33 = 14;
LABEL_23:
  if (a3)
  {
    v74 = v33;
    v75 = v32;
    v81 = 252;
    v35 = *(&v23 + 1);
    v34 = v77;
    v36 = v71;
    v37 = v78;
    v38 = v67;
  }

  else
  {
    v35 = *(&v23 + 1);
    v34 = v77;
    v37 = v78;
    v38 = v67;
    v74 = v33;
    v75 = v32;
    v81 = *(a1 + 9);
    v36 = v71;
  }

  v72 = *(a1 + 88);
  v64 = v25;
  if (v21)
  {

    sub_1AF898C0C(v36, v37, v34, v38, v79);
    v39 = v24;
    v40 = v23;
    sub_1AF898C0C(v22, *(&v22 + 1), v23, v35, v24);
    v41 = v65;
    v42 = v69;
    v43 = v70;
    v44 = v68;
    sub_1AF898C0C(*(&v24 + 1), v65, v70, v69, v68);
    v45 = swift_unknownObjectRetain();
    v47 = v77;
    v46 = v78;
    v49 = *(&v22 + 1);
    v48 = v22;
    v50 = v79;
    v51 = 0;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = *(&v23 + 1);
  }

  else
  {
    __dst[8] = v125;
    __dst[9] = v126;
    __dst[10] = v127;
    __dst[4] = v121;
    __dst[5] = v122;
    __dst[7] = v124;
    __dst[6] = v123;
    __dst[0] = v117;
    __dst[1] = v118;
    __dst[3] = v120;
    __dst[2] = v119;
    sub_1AF6021F8(__dst, __src);
    v53 = v61;
    v52 = v62;
    v50 = v79;
    v49 = *(&v22 + 1);
    v48 = v22;
    v46 = v37;
    v47 = v34;
    v39 = v24;
    v40 = v23;
    v54 = v35;
    v41 = v65;
    v45 = v66;
    v42 = v69;
    v43 = v70;
    v44 = v68;
    v51 = v63;
  }

  *&v107 = v36;
  *(&v107 + 1) = v46;
  *&v108 = v47;
  *(&v108 + 1) = v38;
  *&v109[8] = v52;
  *&v109[24] = v53;
  *v109 = v50;
  *&v109[40] = v51;
  *&v110 = v48;
  *(&v110 + 1) = v49;
  *&v111 = v40;
  *(&v111 + 1) = v54;
  *&v112 = v39;
  *(&v112 + 1) = *(&v24 + 1);
  *&v113 = v41;
  *(&v113 + 1) = v43;
  *&v114 = v42;
  *(&v114 + 1) = v44;
  *&v115 = v64;
  *(&v115 + 1) = v45;
  v160 = v110;
  v159 = *&v109[32];
  v157 = *v109;
  v158 = *&v109[16];
  v165 = v115;
  v164 = v114;
  v163 = v113;
  v161 = v111;
  v162 = v112;
  v156 = v108;
  v155 = v107;
  sub_1AF89700C(v128, v141);

  sub_1AF602254(&v107);
  v55 = *(v5 + 16);
  v56 = *(a1 + 133);
  v104 = v141[8];
  v105 = v141[9];
  v106 = v141[10];
  v100 = v141[4];
  v101 = v141[5];
  v103 = v141[7];
  v102 = v141[6];
  v96 = v141[0];
  v97 = v141[1];
  v98 = v141[2];
  v99 = v141[3];
  sub_1AF5FF2F0(v91);
  *&v91[8] = xmmword_1AFE68E40;
  *&v91[24] = xmmword_1AFE68E40;
  *&v91[40] = xmmword_1AFE68E40;
  *&v91[56] = 0x10000010F00;
  v91[1] = v74;
  *&v91[6] = HIWORD(v83);
  *&v91[2] = v83 >> 16;
  v91[0] = v83;
  v92 = *v91;
  v93 = *&v91[16];
  v94 = *&v91[32];
  v95 = *&v91[48];
  sub_1AFDFF308();

  sub_1AF6021F8(v141, __dst);
  sub_1AF89747C(v90);
  sub_1AF602254(v141);
  MEMORY[0x1B271ACB0](v86);
  MEMORY[0x1B271ACB0](*(&v86 + 1));
  MEMORY[0x1B271ACB0](v88);
  MEMORY[0x1B271ACB0](*(&v88 + 1));
  MEMORY[0x1B271ACB0](v84);
  MEMORY[0x1B271ACB0](*(&v84 + 1));
  MEMORY[0x1B271ACB0](v85);
  MEMORY[0x1B271ACB0](*(&v85 + 1));
  MEMORY[0x1B271ACB0](v81);
  MEMORY[0x1B271ACB0](v75);
  sub_1AFDFF2A8();
  v151 = *v91;
  v152 = *&v91[16];
  v153 = *&v91[32];
  v154 = *&v91[48];
  sub_1AF5FF304();
  sub_1AFDFF2A8();
  if (v73)
  {
    v57 = v82;
    MEMORY[0x1B271ACB0](v82);
    a4 = v76;
  }

  else
  {
    a4 = v76;
    v57 = v82;
  }

  sub_1AFDFF2A8();
  MEMORY[0x1B271ACB0](v55);
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  v58 = sub_1AFDFF2E8();
  sub_1AF89FEDC(&v130, &qword_1ED7255C0, &type metadata for RenderFunctions, v59);
  __src[8] = v104;
  __src[9] = v105;
  __src[4] = v100;
  __src[5] = v101;
  __src[6] = v102;
  __src[7] = v103;
  __src[0] = v96;
  __src[1] = v97;
  __src[2] = v98;
  __src[3] = v99;
  __src[10] = v106;
  __src[11] = v86;
  __src[12] = v88;
  __src[13] = v84;
  __src[14] = v85;
  *&__src[15] = v81;
  *(&__src[15] + 1) = v75;
  LOBYTE(__src[16]) = v72;
  *(&__src[16] + 8) = v92;
  *(&__src[17] + 8) = v93;
  *(&__src[18] + 8) = v94;
  *(&__src[19] + 8) = v95;
  *(&__src[20] + 1) = v57;
  *&__src[21] = v73;
  *(&__src[21] + 1) = v55;
  __src[22] = 0uLL;
  __src[23] = 2uLL;
  __src[24] = 0uLL;
  LOBYTE(__src[25]) = 1;
  BYTE1(__src[25]) = v56;
  *(&__src[25] + 1) = v58;
  nullsub_106();
  memcpy(__dst, __src, sizeof(__dst));
  return memcpy(a4, __dst, 0x1A0uLL);
}

uint64_t sub_1AF89E8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _DWORD *a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v20 = a1;
  *(a3 + 112) = a1;
  *(a3 + 120) = a2;

  v21 = *(a3 + 128);
  v140[6] = *(a3 + 112);
  v140[7] = v21;
  v140[8] = *(a3 + 144);
  v22 = *(a3 + 64);
  v140[2] = *(a3 + 48);
  v140[3] = v22;
  v23 = *(a3 + 96);
  v140[4] = *(a3 + 80);
  v140[5] = v23;
  v24 = *(a3 + 32);
  v140[0] = *(a3 + 16);
  v140[1] = v24;
  sub_1AF89FF9C(v140, v139);
  sub_1AF89DFD4(v140, a6, __src);
  sub_1AF89FFD4(v140);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_1AF0EC624(__dst) == 1)
  {
    return 2;
  }

  v131 = a8;
  memcpy(v139, __dst, sizeof(v139));
  v25 = sub_1AF730058(v139);
  v29 = v25;
  v30 = v26;
  if (!v27)
  {
    if (!v26)
    {
      v42 = qword_1ED730EA0;
      swift_unknownObjectRetain();
      if (v42 != -1)
      {
        swift_once();
      }

      sub_1AFDFE218();

      v133 = 0x80000001AFF38AF0;
      v43 = sub_1AF899C78();
      MEMORY[0x1B2718AE0](v43);

      v44 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v71 = v44;
        swift_once();
        v44 = v71;
      }

      v132 = 0;
      sub_1AF0D4F18(v44, &v132, 0xD000000000000016, 0x80000001AFF38AF0);
      swift_unknownObjectRelease();

      v33 = v29;
      v34 = 0;
      v35 = 0;
      goto LABEL_20;
    }

    v36 = a12;
    v37 = a13;
    if (*(a4 + 209))
    {
      v38 = v26;
      swift_unknownObjectRetain();
      v39 = *a7;
      if ((*a7 & 0x800) != 0)
      {
LABEL_12:
        v40 = 128;
        goto LABEL_104;
      }

LABEL_100:
      if ((v39 & 0x8000) != 0)
      {
        v40 = 152;
      }

      else
      {
        if ((v39 & 0x1000) == 0)
        {
LABEL_105:
          if (*(a14 + 53) == 1)
          {
            v89 = *(a14 + 56);
            v90 = *(a14 + 64);
            v91 = *(v37 + 16);
            LOBYTE(v133) = 0;
            v132 = 0;
            sub_1AF0D7334(v89, &v132);
            sub_1AF0D7344(v90, &v132);
            DepthStencil = CFXGPUDeviceCreateDepthStencil(v91, 0, v133);
          }

          else
          {
            v92 = 136;
            if ((v131 & 0x1FFFFFFFFLL) == 0x100000000)
            {
              v92 = 128;
            }

            DepthStencil = *(v37 + v92);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
LABEL_111:
          v93 = a7;
          Strong = swift_unknownObjectUnownedLoadStrong();
          swift_unknownObjectRetain();
          if (Strong)
          {
            if (!sub_1AF12E2A0(Strong))
            {

              if (a2)
              {
                goto LABEL_117;
              }

              goto LABEL_121;
            }

            v130 = v30;
            v96 = sub_1AF12E2AC(Strong, v95);
            sub_1AF89FDC4();
            sub_1AF89FE10(__src, &v132, v97);
            v98 = sub_1AF89B540(v139);
            sub_1AF89FEDC(__src, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v99);
            v100 = 0;
            if ([v96 respondsToSelector_])
            {
              v100 = [v96 resourceManager];
            }

            [v100 registerRenderPipelineDescriptor:v98 state:v29];

            swift_unknownObjectRelease();
            v30 = v130;
          }

          if (a2)
          {
LABEL_117:
            v101 = v30;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v132 = *v36;
            v103 = v132;
            *v36 = 0x8000000000000000;
            v104 = sub_1AF449CB8(v20);
            v106 = v105;
            v107 = *(v103 + 16) + ((v105 & 1) == 0);
            if (*(v103 + 24) >= v107)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF84D968();
                v103 = v132;
              }
            }

            else
            {
              sub_1AF83D6D4(v107, isUniquelyReferenced_nonNull_native);
              v103 = v132;
              v108 = sub_1AF449CB8(v20);
              if ((v106 & 1) != (v109 & 1))
              {
                result = sub_1AFDFF1A8();
                __break(1u);
                return result;
              }

              v104 = v108;
            }

            *v36 = v103;

            v112 = *v36;
            if ((v106 & 1) == 0)
            {
              sub_1AF42C624(MEMORY[0x1E69E7CC0]);
              sub_1AF85B950();
            }

            v113 = *(v112 + 56);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v132 = *(v113 + 8 * v104);
            *(v113 + 8 * v104) = 0x8000000000000000;
            sub_1AF857A38(v29, DepthStencil, 0, v93, v114);
            *(v113 + 8 * v104) = v132;
            swift_unknownObjectRelease();
            sub_1AF6022A8(v29, v101, 0);

LABEL_127:
            sub_1AF89FEDC(__src, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v111);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return 4;
          }

LABEL_121:
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v132 = v36[1];
          v36[1] = 0x8000000000000000;
          sub_1AF857A38(v29, DepthStencil, 0, v93, v110);
          v36[1] = v132;
          swift_unknownObjectRelease();
          sub_1AF6022A8(v29, v30, 0);

          goto LABEL_127;
        }

        v40 = 136;
      }

LABEL_104:
      v87 = *(v37 + v40);
      swift_unknownObjectRetain();
      DepthStencil = v87;
      if (v87)
      {
        goto LABEL_111;
      }

      goto LABEL_105;
    }

    v124 = v20;
    v127 = a7;
    v46 = a12[3];
    v129 = v26;
    a12[3] = v26;
    v47 = v26;
    swift_unknownObjectRetain();

    v48 = [v47 vertexBindings];
    sub_1AF7198B0();
    v49 = sub_1AFDFD418();

    v50 = *(a13 + 16);
    v51 = CFXGPUDeviceGetMTLDevice(v50);
    v122 = *(a13 + 208);
    sub_1AFB5470C(v49, v51, v122);
    v119 = v50;
    v128 = v47;

    swift_unknownObjectRelease();
    v52 = [v47 fragmentBindings];
    v53 = sub_1AFDFD418();

    v54 = CFXGPUDeviceGetMTLDevice(v50);
    sub_1AFB5470C(v53, v54, v122);

    swift_unknownObjectRelease();
    v20 = v124;
    v120 = *(a4 + 80);
    v55 = [v128 vertexBindings];
    v56 = sub_1AFDFD418();

    v126 = v29;
    if (v56 >> 62)
    {
      v57 = sub_1AFDFE108();
      if (v57)
      {
LABEL_27:
        v58 = 0;
        while (1)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v59 = MEMORY[0x1B2719C70](v58, v56);
          }

          else
          {
            v59 = *(v56 + 8 * v58 + 32);
            swift_unknownObjectRetain();
          }

          swift_getObjectType();
          if ([v59 index] == 2)
          {
            break;
          }

          swift_unknownObjectRelease();
          if (v57 == ++v58)
          {
            goto LABEL_61;
          }
        }

        v135 = &unk_1F262DBA0;
        v62 = swift_dynamicCastObjCProtocolConditional();
        if (v62)
        {
          v63 = v62;
          swift_getObjectType();
          swift_unknownObjectRetain();
          if ((sub_1AF471E24() & 1) == 0)
          {
            goto LABEL_46;
          }

          if (qword_1ED72AB78 != -1)
          {
            swift_once();
          }

          if (byte_1ED73B6A0 != 1)
          {
LABEL_46:
            v123 = [v63 bufferDataSize];
            v125 = 0;
            goto LABEL_47;
          }

          if (v139[1])
          {
            swift_unknownObjectRetain();

            swift_unknownObjectRetain();
            v64 = [CFXGPUDeviceGetMTLDevice(v119) newArgumentEncoderWithBufferBinding_];
            swift_unknownObjectRelease();
            v123 = [swift_unknownObjectRetain() encodedLength];
            v125 = v64;
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

LABEL_47:
            if ((v120 & 4) != 0)
            {
              swift_unknownObjectRelease_n();
              v121 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v121 = sub_1AF8A2114(v59);
              swift_unknownObjectRelease_n();
            }

            v69 = v128;
LABEL_65:
            v73 = *(a4 + 80);
            v74 = [v69 fragmentBindings];
            v75 = sub_1AFDFD418();

            v118 = v73;
            if (v75 >> 62)
            {
              v76 = sub_1AFDFE108();
              if (v76)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v76)
              {
LABEL_67:
                v77 = 0;
                while (1)
                {
                  if ((v75 & 0xC000000000000001) != 0)
                  {
                    v78 = MEMORY[0x1B2719C70](v77, v75);
                  }

                  else
                  {
                    v78 = *(v75 + 8 * v77 + 32);
                    swift_unknownObjectRetain();
                  }

                  swift_getObjectType();
                  if ([v78 index] == 2)
                  {
                    break;
                  }

                  swift_unknownObjectRelease();
                  if (v76 == ++v77)
                  {
                    goto LABEL_96;
                  }
                }

                v134 = &unk_1F262DBA0;
                v79 = swift_dynamicCastObjCProtocolConditional();
                if (v79)
                {
                  v80 = v79;
                  swift_getObjectType();
                  swift_unknownObjectRetain();
                  v37 = a13;
                  a7 = v127;
                  v36 = a12;
                  if ((sub_1AF471E24() & 1) == 0)
                  {
                    goto LABEL_81;
                  }

                  if (qword_1ED72AB78 != -1)
                  {
                    swift_once();
                  }

                  if (byte_1ED73B6A0 != 1)
                  {
LABEL_81:
                    v82 = [v80 bufferDataSize];
                    v81 = 0;
LABEL_82:
                    if ((v118 & 4) != 0)
                    {
                      swift_unknownObjectRelease_n();
                      v83 = MEMORY[0x1E69E7CC0];
                    }

                    else
                    {
                      v83 = sub_1AF8A2114(v78);
                      swift_unknownObjectRelease_n();
                    }

                    goto LABEL_99;
                  }

                  if (v139[6])
                  {
                    swift_unknownObjectRetain();

                    swift_unknownObjectRetain();
                    v81 = [CFXGPUDeviceGetMTLDevice(v119) newArgumentEncoderWithBufferBinding_];
                    v37 = a13;
                    swift_unknownObjectRelease();
                    v82 = [swift_unknownObjectRetain() encodedLength];
                    swift_unknownObjectRelease();
                    a7 = v127;

                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

                    goto LABEL_82;
                  }

                  swift_unknownObjectRelease();
                  if (qword_1ED724A80 != -1)
                  {
                    swift_once();
                  }

                  v83 = qword_1ED73B410;
                  v81 = qword_1ED73B418;
                  v82 = qword_1ED73B420;
                  swift_unknownObjectRetain();

                  swift_unknownObjectRelease();
                }

                else
                {
                  a7 = v127;
                  v36 = a12;
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v132 = 0;
                  v133 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38B70);
                  v137[0] = v78;
                  sub_1AFDFEDD8();
                  v85 = v132;
                  v84 = v133;
                  v86 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    v117 = v86;
                    swift_once();
                    v86 = v117;
                    v36 = a12;
                  }

                  v132 = 0;
                  sub_1AF0D4F18(v86, &v132, v85, v84);

                  if (qword_1ED724A80 != -1)
                  {
                    swift_once();
                  }

                  v83 = qword_1ED73B410;
                  v81 = qword_1ED73B418;
                  v82 = qword_1ED73B420;
                  swift_unknownObjectRetain();

                  swift_unknownObjectRelease();
                  v37 = a13;
                }

LABEL_99:
                sub_1AF8A96E0(v121, v125, v123, v83, v81, v82, v137);
                sub_1AF89FD68(v137, a4 + 160);
                *(a4 + 209) = v139[6] != 0;
                v29 = v126;
                v30 = v129;
                v39 = *a7;
                if ((*a7 & 0x800) != 0)
                {
                  goto LABEL_12;
                }

                goto LABEL_100;
              }
            }

LABEL_96:

            if (qword_1ED724A80 != -1)
            {
              swift_once();
            }

            v83 = qword_1ED73B410;
            v81 = qword_1ED73B418;
            v82 = qword_1ED73B420;
            swift_unknownObjectRetain();

            v37 = a13;
            a7 = v127;
            v36 = a12;
            goto LABEL_99;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v132 = 0;
          v133 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38B70);
          v137[0] = v59;
          sub_1AFDFEDD8();
          v66 = v132;
          v65 = v133;
          v67 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v116 = v67;
            swift_once();
            v67 = v116;
          }

          v132 = 0;
          sub_1AF0D4F18(v67, &v132, v66, v65);
        }

        if (qword_1ED724A80 != -1)
        {
          swift_once();
        }

        v68 = qword_1ED73B410;
        v123 = qword_1ED73B420;
        v125 = qword_1ED73B418;
        swift_unknownObjectRetain();
        v121 = v68;

        swift_unknownObjectRelease();
LABEL_64:
        v69 = v128;
        goto LABEL_65;
      }
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        goto LABEL_27;
      }
    }

LABEL_61:

    if (qword_1ED724A80 != -1)
    {
      swift_once();
    }

    v72 = qword_1ED73B410;
    v123 = qword_1ED73B420;
    v125 = qword_1ED73B418;
    swift_unknownObjectRetain();
    v121 = v72;

    goto LABEL_64;
  }

  if (v27 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v133 = 0x80000001AFF38BB0;
    v31 = sub_1AF899C78();
    MEMORY[0x1B2718AE0](v31);

    v32 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v70 = v32;
      swift_once();
      v32 = v70;
    }

    v132 = 0;
    sub_1AF0D4F18(v32, &v132, 0xD000000000000014, 0x80000001AFF38BB0);

    v33 = v29;
    v34 = v30;
    v35 = 1;
LABEL_20:
    sub_1AF6022A8(v33, v34, v35);
LABEL_21:
    sub_1AF89FEDC(__src, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v45);
    return 2;
  }

  if (v25 | v26)
  {
    sub_1AF89FEDC(__src, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v28);
    return 4;
  }

  if ((a10 & 1) == 0)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v133 = 0x80000001AFF38B90;
    v60 = sub_1AF899C78();
    MEMORY[0x1B2718AE0](v60);

    v61 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v115 = v61;
      swift_once();
      v61 = v115;
    }

    v132 = 0;
    sub_1AF0D4F18(v61, &v132, 0xD00000000000001ALL, 0x80000001AFF38B90);

    goto LABEL_21;
  }

  sub_1AF89FEDC(__src, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, v28);
  return 1;
}

double sub_1AF89FC54(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1AFE21110;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

uint64_t sub_1AF89FC7C(float32x4_t *a1, float32x4_t *a2)
{
  v4 = a1->i64[0];
  v5 = a1->i64[1];
  v6 = a1[1].u8[0];
  v7 = a1[5];
  v19[2] = a1[4];
  v19[3] = v7;
  v20 = a1[6].i8[0];
  v8 = a1[3];
  v19[0] = a1[2];
  v19[1] = v8;
  v9 = a2->i64[0];
  v10 = a2->i64[1];
  v11 = a2[1].i8[0];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v22 = a2[6].i8[0];
  v21[2] = v14;
  v21[3] = v15;
  v21[0] = v12;
  v21[1] = v13;
  if (v6 != 1)
  {
    if (v4 == v9)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_6;
    }

LABEL_11:
    v16 = sub_1AF87C134(v19, v21);
    return v16 & 1;
  }

  if (v11 & 1) != 0 && (v4 == v9 && v5 == v10 || (sub_1AFDFEE28()))
  {
    goto LABEL_11;
  }

LABEL_6:
  v16 = 0;
  return v16 & 1;
}

unint64_t sub_1AF89FDC4()
{
  result = qword_1EB63FD70;
  if (!qword_1EB63FD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB63FD70);
  }

  return result;
}

uint64_t sub_1AF89FE10(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1AF89FF4C(0, &unk_1ED7247E0, &type metadata for RenderPipelineDescriptor, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AF89FE98(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1AFE21110;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  return result;
}

uint64_t sub_1AF89FEDC(uint64_t a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  sub_1AF89FF4C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF89FF4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF89FFD4(uint64_t a1)
{

  return a1;
}

uint64_t destroy for RenderPipelineFactory.PipelineCompilationContext(uint64_t a1)
{
}

uint64_t initializeWithCopy for RenderPipelineFactory.PipelineCompilationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v3;
  v4 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v4;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for RenderPipelineFactory.PipelineCompilationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 120) = v4;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

__n128 initializeWithTake for RenderPipelineFactory.PipelineCompilationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t assignWithTake for RenderPipelineFactory.PipelineCompilationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t getEnumTagSinglePayload for RenderPipelineFactory.PipelineCompilationContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderPipelineFactory.PipelineCompilationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF8A0370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AFC07294(0, v4, 0);
    v5 = v34;
    v7 = (a3 + 96);
    while (1)
    {
      v8 = *(v7 - 8);
      v9 = *(v7 - 56);
      v10 = *(v7 - 40);
      v11 = *(v7 - 24);
      v12 = *(v7 - 1);
      v13 = *v7;
      if (v13 < 0)
      {
        break;
      }

LABEL_18:
      v24 = *(v34 + 16);
      v23 = *(v34 + 24);
      if (v24 >= v23 >> 1)
      {
        v31 = v10;
        v33 = v9;
        v29 = v11;
        sub_1AFC07294(v23 > 1, v24 + 1, 1);
        v11 = v29;
        v10 = v31;
        v9 = v33;
      }

      *(v34 + 16) = v24 + 1;
      v25 = v34 + 80 * v24;
      *(v25 + 32) = v8;
      v7 += 80;
      *(v25 + 40) = v9;
      *(v25 + 56) = v10;
      *(v25 + 72) = v11;
      *(v25 + 88) = v12;
      *(v25 + 96) = v13;
      if (!--v4)
      {
        return v5;
      }
    }

    if (v8 == 0xFFFFFFFFLL)
    {
      v14 = 0;
      v15 = 0xFFFFFFFFLL;
LABEL_17:
      LOBYTE(v13) = v3 & 0xF | 0x80;
      v8 = v14 | v15;
      v3 = v13;
      goto LABEL_18;
    }

    v28 = *(v7 - 24);
    v30 = *(v7 - 40);
    v32 = *(v7 - 56);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      v14 = 0;
      v15 = 0xFFFFFFFFLL;
LABEL_16:
      v10 = v30;
      v9 = v32;
      v11 = v28;
      goto LABEL_17;
    }

    v17 = Strong;
    v18 = *(a1 + OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed);
    [*(Strong + 16) lock];
    if (v18 == 1)
    {
      v19 = *(v17 + 32);
      if (!*(v19 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19 = *(v17 + 24);
      if (!*(v19 + 16))
      {
        goto LABEL_14;
      }
    }

    v20 = sub_1AF449D3C(v8);
    if (v21)
    {
      v22 = (*(v19 + 56) + 8 * v20);
      v15 = *v22;
      v14 = v22[1] << 32;
LABEL_15:
      [*(v17 + 16) unlock];

      goto LABEL_16;
    }

LABEL_14:
    v14 = 0;
    v15 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  return v5;
}

uint64_t sub_1AF8A057C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1AFC07274(0, v3, 0);
    v4 = v31;
    v27 = OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed;
    v6 = (a3 + 40);
    v7 = a1;
    do
    {
      v8 = *v6;
      v30[3] = &type metadata for Entity;
      v30[4] = &off_1F2535EA8;
      v30[0] = *(v6 - 1);
      v9 = sub_1AF441150(v30, &type metadata for Entity);
      v29[3] = &type metadata for Entity;
      v29[4] = &off_1F2535EA8;
      v10 = sub_1AF585714(v29);
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = v11 == -1 && v12 == 0;
      if (v13 || (Strong = swift_weakLoadStrong()) == 0)
      {

        v19 = 0xFFFFFFFFLL;
      }

      else
      {
        v15 = Strong;
        v16 = *(v7 + v27);
        v17 = *(Strong + 16);

        [v17 lock];
        if (v16 == 1)
        {
          v18 = *(v15 + 32);
        }

        else
        {
          v18 = *(v15 + 24);
        }

        v19 = 0xFFFFFFFFLL;
        if (*(v18 + 16))
        {
          v20 = sub_1AF449D3C(v11 | (v12 << 32));
          v7 = a1;
          if (v21)
          {
            v19 = *(*(v18 + 56) + 8 * v20);
          }
        }

        else
        {
          v7 = a1;
        }

        [*(v15 + 16) unlock];
      }

      *v10 = v19;
      sub_1AF5C5358(0, &qword_1ED722510, &protocol descriptor for ReplicationRemappable);
      swift_dynamicCast();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
      v22 = v30[5];
      v31 = v4;
      v24 = *(v4 + 16);
      v23 = *(v4 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AFC07274(v23 > 1, v24 + 1, 1);
        v4 = v31;
      }

      *(v4 + 16) = v24 + 1;
      v25 = v4 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v8;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AF8A07C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v3, 0);
    v4 = v22;
    v7 = OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed;
    v8 = (a3 + 36);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = 0xFFFFFFFFLL;
      if (v9 != -1 || v10 != 0)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          break;
        }
      }

LABEL_15:
      v20 = *(v22 + 16);
      v19 = *(v22 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1AFC07194(v19 > 1, v20 + 1, 1);
      }

      v8 += 2;
      *(v22 + 16) = v20 + 1;
      *(v22 + 8 * v20 + 32) = v11;
      if (!--v3)
      {
        return v4;
      }
    }

    v14 = Strong;
    v15 = *(a1 + v7);
    [*(Strong + 16) lock];
    if (v15 == 1)
    {
      v16 = *(v14 + 32);
      if (!*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = *(v14 + 24);
      if (!*(v16 + 16))
      {
LABEL_14:
        [*(v14 + 16) unlock];

        goto LABEL_15;
      }
    }

    v17 = sub_1AF449D3C(v9 | (v10 << 32));
    if (v18)
    {
      v11 = *(*(v16 + 56) + 8 * v17);
    }

    goto LABEL_14;
  }

  return v4;
}

char *sub_1AF8A0940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AF8AB2CC(a1, a2, a3);

  return v4;
}

void *sub_1AF8A0980()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];

    sub_1AFC073E4(0, v2, 0);
    v3 = v26;
    v4 = v2 - 1;
    v5 = 32;
    for (i = v1; ; v1 = i)
    {
      v7 = *(v1 + v5 + 16);
      v6 = *(v1 + v5 + 32);
      v8 = *(v1 + v5);
      *&v25[9] = *(v1 + v5 + 41);
      v24[1] = v7;
      *v25 = v6;
      v24[0] = v8;
      v9 = v8;
      if (v25[24] == 1)
      {
        sub_1AF8A9E80(v24, v23);
        sub_1AF8A9E80(v24, v23);
        v10 = 8;
        v11 = &type metadata for Entity;
        goto LABEL_16;
      }

      v12 = *v25;
      sub_1AF47103C(*v25);
      v14 = v13;
      if (v12 == 3)
      {
        sub_1AF8A9E80(v24, v23);
        sub_1AF8A9E80(v24, v23);
        sub_1AF4486E4();
        if ((sub_1AFDFDEE8() & 1) == 0)
        {
          goto LABEL_14;
        }

        v10 = 3;
      }

      else
      {
        if (v12 != 6)
        {
          sub_1AF8A9E80(v24, v23);
          sub_1AF8A9E80(v24, v23);
LABEL_14:
          v10 = 1;
          goto LABEL_15;
        }

        sub_1AF8A9E80(v24, v23);
        sub_1AF8A9E80(v24, v23);
        sub_1AF4486E4();
        if (sub_1AFDFDEE8())
        {
          v10 = 6;
          v11 = v14;
          goto LABEL_16;
        }

        v23[0] = v9;
        if ((sub_1AFDFDEE8() & 1) == 0)
        {
          goto LABEL_14;
        }

        v10 = 7;
      }

LABEL_15:
      v11 = v14;
LABEL_16:
      memset(v23, 0, 32);
      v15 = sub_1AF493834(v11, v23, v9, *(&v9 + 1), 0, 1, 0, 1, 0, 1, v10, 0, 0, 0, 0, &type metadata for Material, v11, &off_1F2519B70);
      sub_1AF8AB528(v24);
      sub_1AF8AB554(v23, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], v16);
      v26 = v3;
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC073E4(v17 > 1, v18 + 1, 1);
        v3 = v26;
      }

      *(v3 + 16) = v18 + 1;
      v19 = v3 + 24 * v18;
      *(v19 + 32) = v9;
      *(v19 + 48) = v15;
      if (!v4)
      {

        break;
      }

      --v4;
      v5 += 64;
    }
  }

  v20 = sub_1AF8AAEC8(v3);

  return v20;
}

void sub_1AF8A0CF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>)
{
  v11 = *(v9 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v15 = 0;
    v16 = (v11 + 32);
    v17 = 96;
    while (1)
    {
      v18 = *v16 == a1 && v16[1] == a2;
      if (v18 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v15;
      v17 += 80;
      v16 += 8;
      if (v12 == v15)
      {
        goto LABEL_9;
      }
    }

    v19 = *(v9 + 24);
    if (v15 >= *(v19 + 16))
    {
      sub_1AF8A339C(a9);
    }

    else
    {
      v20 = (v19 + v17);
      v21 = *(v19 + v17 - 64);
      if (*v20 < 0)
      {
        *(a9 + 24) = &type metadata for Entity;
        *a9 = v21;
      }

      else
      {
        sub_1AF879E50(a9);
      }
    }
  }

  else
  {
LABEL_9:
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }
}

void sub_1AF8A0E2C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AF0D5A54(a3, &v49);
  sub_1AF8FDF5C(&v49, &v41);
  v7 = v48;
  if (v48 > 0xEFu)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    sub_1AF441150(a3, a3[3]);
    sub_1AFDFEDD8();
    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF38CF0);
    MEMORY[0x1B2718AE0](a1, a2);
    v8 = *(&v49 + 1);
    v9 = v49;
    v10 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v27 = v10;
      swift_once();
      v10 = v27;
    }

    *&v49 = 0;
    v11 = &v49;
LABEL_7:
    sub_1AF0D4F18(v10, v11, v9, v8);

    return;
  }

  v12 = *(v3 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v33 = v41;
    v34 = v42;
    v15 = v44;
    v14 = v45;
    v16 = 48;
    v17 = 32;
    v30 = v43;
    v31 = v46;
    v32 = v47;
    while (1)
    {
      v18 = *(v12 + 32) == a1 && *(v12 + 40) == a2;
      if (v18 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v16 += 80;
      v17 += 64;
      v12 += 64;
      if (!--v13)
      {
        return;
      }
    }

    if (v7 < 0)
    {
      if (*(v12 + 88) != 1)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v49 = 0;
        *(&v49 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v38 = v49;
        MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF38D40);
        v26 = (*(v3 + 16) + v17);
        *&v51[9] = *(v26 + 41);
        *v51 = v26[2];
        v50 = v26[1];
        v49 = *v26;
        v53 = v49;
        v54 = v50;
        v55[0] = *v51;
        *(v55 + 9) = *&v51[9];
        sub_1AFDFE458();
        v8 = *(&v38 + 1);
        v9 = v38;
        v10 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v29 = v10;
          swift_once();
          v10 = v29;
        }

        *&v53 = 0;
        v11 = &v53;
        goto LABEL_7;
      }

      v19 = *(v3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1AFC0D990(v19);
      }

      v21 = &v19[v16];
      *(v21 - 1) = v33;
      *v21 = v34;
      *(v21 + 1) = v30;
    }

    else
    {
      v49 = v33;
      *&v50 = v34;
      *(&v50 + 1) = v30;
      *v51 = v15;
      *&v51[8] = v14;
      *&v51[16] = v31;
      *&v51[24] = v32;
      v52 = v7;
      v53 = *(v12 + 32);
      v54 = *(v12 + 48);
      v55[0] = *(v12 + 64);
      *(v55 + 9) = *(v12 + 73);
      if (!sub_1AF87AAD4(&v53))
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v37 = v38;
        v24 = sub_1AF879ACC(v23);
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF38D20);
        v25 = (*(v3 + 16) + v17);
        *&v40[9] = *(v25 + 41);
        *v40 = v25[2];
        v39 = v25[1];
        v38 = *v25;
        v35[0] = v38;
        v35[1] = v39;
        v36[0] = *v40;
        *(v36 + 9) = *&v40[9];
        sub_1AFDFE458();
        v8 = *(&v37 + 1);
        v9 = v37;
        v10 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v28 = v10;
          swift_once();
          v10 = v28;
        }

        *&v35[0] = 0;
        v11 = v35;
        goto LABEL_7;
      }

      v19 = *(v3 + 24);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v19;
      if ((v20 & 1) == 0)
      {
        v19 = sub_1AFC0D990(v19);
      }

      v21 = &v19[v16];
      *(v21 - 1) = v33;
      *v21 = v34;
      *(v21 + 1) = v30;
    }

    *(v21 + 2) = v15;
    *(v21 + 3) = v14;
    *(v21 + 4) = v31;
    *(v21 + 5) = v32;
    v21[48] = v7;
    *(v3 + 24) = v19;
  }
}

char *sub_1AF8A1370(uint64_t a1, uint64_t a2, ValueMetadata *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  v10 = v4 + 64;
  for (i = 96; ; i += 80)
  {
    v12 = *(v10 - 32) == a1 && *(v10 - 24) == a2;
    if (v12 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    ++v9;
    v10 += 64;
    if (v5 == v9)
    {
      return 0;
    }
  }

  if (*(v10 + 24) == 1)
  {
    if (&type metadata for Entity == (MEMORY[0x1E69E7CA8] + 8) || &type metadata for Entity != a3)
    {
      return 0;
    }
  }

  else
  {
    v13 = *v10;
    sub_1AF47103C(*v10);
    if (v14 == MEMORY[0x1E69E7CA8] + 8)
    {
      return 0;
    }

    sub_1AF47103C(v13);
    if (v15 != a3)
    {
      return 0;
    }
  }

  v16 = *(v3 + 24);
  if (v9 >= *(v16 + 16))
  {
    return 0;
  }

  v17 = v16 + i;
  v18 = *(v16 + i);
  if (v18 < 0)
  {
    return 0;
  }

  v19 = *(v17 - 48);
  v25[0] = *(v17 - 64);
  v25[1] = v19;
  v20 = *(v17 - 16);
  v25[2] = *(v17 - 32);
  v25[3] = v20;
  v26 = v18;
  v24 = 0;
  sub_1AF879AB4(v25, &v24);
  if (v24 < 1)
  {
    return 0;
  }

  v21 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1AFC0D990(v21);
  }

  result = &v21[i - 64];
  *(v3 + 24) = v21;
  return result;
}

uint64_t sub_1AF8A14F4(uint64_t a1, double a2)
{
  v3 = v2;
  sub_1AF8A9D74(0, a2);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF8AB7E4(0, &qword_1ED721F40, &type metadata for ShaderArgument, MEMORY[0x1E69E6EF0]);
  v9 = v8;
  v115 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v106 - v12;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v117 = v7;
  v118 = v2;
  v112 = a1;
  if (v13)
  {
    *&v133[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC077B8(0, v13, 0);
    v14 = *&v133[0];
    v15 = (a1 + 32);
    do
    {
      v16 = v15[2];
      v129[0] = v15[1];
      v129[1] = v16;
      *(&v129[1] + 9) = *(v15 + 41);
      v128 = *v15;
      v17 = v128;
      v120 = *(&v129[1] + 8);
      v121 = *(v129 + 8);
      v18 = BYTE8(v129[2]);
      v19 = v14;
      sub_1AF8A9E80(&v128, &v122);
      v14 = v19;
      *&v133[0] = v19;
      v20 = *(v19 + 16);
      v21 = *(v14 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_1AFC077B8(v21 > 1, v20 + 1, 1);
        v14 = *&v133[0];
      }

      *(v14 + 16) = v20 + 1;
      v22 = v14 + (v20 << 6);
      *(v22 + 32) = v17;
      *(v22 + 48) = -1;
      v23 = v121;
      *(v22 + 72) = v120;
      *(v22 + 56) = v23;
      v15 += 4;
      *(v22 + 88) = v18;
      --v13;
    }

    while (v13);
    v7 = v117;
    v3 = v118;
  }

  v24 = *(v3 + 16);
  v25 = v24[2];
  v26 = MEMORY[0x1E69E7CC0];
  v116 = v9;
  if (v25)
  {
    *&v110 = v14;
    *&v133[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC077B8(0, v25, 0);
    v26 = *&v133[0];
    v27 = v25 - 1;
    v28 = 4;
    for (i = v24; ; v24 = i)
    {
      v30 = *&v24[v28 + 2];
      v29 = *&v24[v28 + 4];
      v31 = *&v24[v28];
      *(&v129[1] + 9) = *(&v24[v28 + 5] + 1);
      v129[0] = v30;
      v129[1] = v29;
      v128 = v31;
      v32 = v31;
      v120 = *(&v129[1] + 8);
      v121 = *(v129 + 8);
      v33 = BYTE8(v129[2]);
      sub_1AF8A9E80(&v128, &v122);
      *&v133[0] = v26;
      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1AFC077B8(v34 > 1, v35 + 1, 1);
        v26 = *&v133[0];
      }

      *(v26 + 16) = v35 + 1;
      v36 = v26 + (v35 << 6);
      *(v36 + 32) = v32;
      *(v36 + 48) = -1;
      v37 = v121;
      *(v36 + 72) = v120;
      *(v36 + 56) = v37;
      *(v36 + 88) = v33;
      if (!v27)
      {
        break;
      }

      --v27;
      v28 += 8;
    }

    v9 = v116;
    v7 = v117;
    v3 = v118;
    v14 = v110;
  }

  *&v128 = v14;
  *&v122 = v26;
  v38 = MEMORY[0x1E69E62F8];
  sub_1AF8AB7E4(0, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
  v40 = v39;
  sub_1AF8A9E30(&qword_1ED722028, &qword_1ED722030, v38, MEMORY[0x1E69E6310], v41);
  sub_1AFDFCD88();

  sub_1AF8A9ED4();
  v42 = v114;
  sub_1AFDFE5F8();
  v43 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
  v44 = (*(v115 + 16))(v7, v42, v9);
  v45 = *(v111 + 36);
  sub_1AF8A9E30(&qword_1ED721F48, &qword_1ED721F40, MEMORY[0x1E69E6EF0], MEMORY[0x1E69E6F00], v44);
  sub_1AFDFD848();
  sub_1AFDFD888();
  if (*&v7[v45] == v128)
  {
    goto LABEL_57;
  }

  LODWORD(v111) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v110 = _Q0;
  *&v121 = v43;
  i = v43;
  do
  {
    *&v120 = v43;
    while (1)
    {
      while (1)
      {
        v51 = sub_1AFDFD958();
        v53 = v52[1];
        v128 = *v52;
        v129[0] = v53;
        v55 = v52[3];
        v54 = v52[4];
        v56 = v52[2];
        v131 = *(v52 + 40);
        v129[2] = v55;
        v130 = v54;
        v129[1] = v56;
        sub_1AF8A9F28(&v128, &v122, *&v54);
        v51(v127, 0);
        sub_1AFDFD898();
        v57 = *(&v128 + 1);
        v58 = v128;
        v59 = *&v129[0];
        v60 = *(&v129[1] + 1);
        v132 = v130;
        v61 = v131;
        if ((v131 & 0x100) == 0)
        {
          break;
        }

        v3 = v118;
        v62 = *(v118 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 24) = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = sub_1AFC0D990(v62);
          *(v3 + 24) = v62;
        }

        v9 = v116;
        v64 = *(v62 + 2) - 1;
        v65 = &v62[80 * v58];
        v123 = *(v65 + 3);
        v124 = *(v65 + 4);
        v125 = *(v65 + 5);
        v126 = v65[96];
        v122 = *(v65 + 2);
        memmove(v65 + 32, v65 + 112, 80 * (v64 - v58));
        *(v62 + 2) = v64;
        *(v3 + 24) = v62;
        if (v61)
        {
          sub_1AF8AB554(&v128, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8], v66);
          v7 = v117;
          sub_1AFDFD888();
          if (*&v7[v45] == v128)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v76 = i;
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = v76;
          v78 = sub_1AF449CB8(v58);
          v80 = v79;
          v81 = v76[2] + ((v79 & 1) == 0);
          v7 = v117;
          if (v76[3] < v81)
          {
            sub_1AF830CA0(v81, v77);
            v78 = sub_1AF449CB8(v58);
            if ((v80 & 1) != (v82 & 1))
            {
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }

LABEL_35:
            v40 = v127[0];
            if (v80)
            {
              goto LABEL_36;
            }

            goto LABEL_38;
          }

          if (v77)
          {
            goto LABEL_35;
          }

          v85 = v78;
          sub_1AF846FA0();
          v78 = v85;
          v40 = v127[0];
          if (v80)
          {
LABEL_36:
            v83 = v40[7] + 80 * v78;
            *(v83 + 16) = v123;
            *(v83 + 32) = v124;
            *(v83 + 48) = v125;
            *(v83 + 64) = v126;
            v84 = *&v122;
            *v83 = v122;
            sub_1AF8AB554(&v128, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8], v84);
            goto LABEL_39;
          }

LABEL_38:
          v40[(v78 >> 6) + 8] |= 1 << v78;
          *(v40[6] + 8 * v78) = v58;
          v86 = v40[7] + 80 * v78;
          *(v86 + 16) = v123;
          *(v86 + 32) = v124;
          *(v86 + 48) = v125;
          *(v86 + 64) = v126;
          v87 = *&v122;
          *v86 = v122;
          sub_1AF8AB554(&v128, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8], v87);
          ++v40[2];
LABEL_39:
          v9 = v116;
          sub_1AFDFD888();
          v88 = *&v7[v45];
          *&v121 = v40;
          i = v40;
          if (v88 == v128)
          {
            goto LABEL_57;
          }

          *&v120 = v40;
        }
      }

      if (v131)
      {
        goto LABEL_42;
      }

      v40 = v120;
      if (!*(v120 + 16))
      {
        break;
      }

      v67 = sub_1AF449CB8(*(&v130 + 1));
      if ((v68 & 1) == 0)
      {
        *&v121 = v40;
        if (v132)
        {
          goto LABEL_43;
        }

        goto LABEL_45;
      }

      v69 = v40[7] + 80 * v67;
      v123 = *(v69 + 16);
      v124 = *(v69 + 32);
      v125 = *(v69 + 48);
      v126 = *(v69 + 64);
      v122 = *v69;
      v3 = v118;
      v70 = *(v118 + 24);
      v71 = *(v70 + 2);
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v70;
      if (!v72 || v71 >= *(v70 + 3) >> 1)
      {
        v70 = sub_1AF420C48(v72, v71 + 1, 1, v70);
        *(v3 + 24) = v70;
      }

      v9 = v116;
      v7 = v117;
      v73 = &v70[80 * v58];
      memmove(v73 + 112, v73 + 32, 80 * (*(v70 + 2) - v58));
      ++*(v70 + 2);
      *(v73 + 3) = v123;
      *(v73 + 4) = v124;
      *(v73 + 5) = v125;
      v74 = *&v122;
      *(v73 + 2) = v122;
      v73[96] = v126;
      *(v3 + 24) = v70;
      sub_1AF8AB554(&v128, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8], v74);
      sub_1AFDFD888();
      v75 = *&v7[v45];
      *&v121 = v40;
      if (v75 == v128)
      {
        goto LABEL_57;
      }
    }

    *&v121 = v120;
LABEL_42:
    if (v130)
    {
LABEL_43:
      v89 = v111 & 0xF | 0x80;
      *&v90 = 0xFFFFFFFFLL;
      *(&v90 + 1) = 0xFFFFFFFFLL;
      v109 = v90;
      LODWORD(v111) = v111 & 0xF | 0x80;
LABEL_48:
      v7 = v117;
      v3 = v118;
      goto LABEL_49;
    }

LABEL_45:
    *&v122 = v57;
    *(&v122 + 1) = v59;
    v127[0] = 0x726F6C6F63;
    v127[1] = 0xE500000000000000;
    sub_1AF4486E4();
    if ((sub_1AFDFDEE8() & 1) != 0 && v60 == 6)
    {
      v89 = 3;
      v109 = v110;
      goto LABEL_48;
    }

    sub_1AF87CD18(v60, v133, v91, v92, v93);
    v7 = v117;
    v3 = v118;
    if (v136 == 255)
    {
      v89 = 14;
      *&v101 = 0xFFFFFFFFLL;
      *(&v101 + 1) = 0xFFFFFFFFLL;
      v109 = v101;
    }

    else
    {
      v40 = v134;
      v108 = v135;
      v106 = v133[2];
      v107 = v133[1];
      v89 = v136 & 0xF;
      v109 = v133[0];
    }

LABEL_49:
    v94 = *(v3 + 24);
    v95 = *(v94 + 2);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v94;
    if (!v96 || v95 >= *(v94 + 3) >> 1)
    {
      v94 = sub_1AF420C48(v96, v95 + 1, 1, v94);
      *(v3 + 24) = v94;
    }

    v97 = &v94[80 * v58];
    memmove(v97 + 112, v97 + 32, 80 * (*(v94 + 2) - v58));
    ++*(v94 + 2);
    v98 = v106;
    *(v97 + 2) = v109;
    v99 = *&v107;
    *(v97 + 3) = v107;
    *(v97 + 4) = v98;
    v100 = v108;
    *(v97 + 10) = v40;
    *(v97 + 11) = v100;
    v97[96] = v89;
    *(v3 + 24) = v94;
    sub_1AF8AB554(&v128, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8], v99);
    v9 = v116;
    sub_1AFDFD888();
    v43 = v120;
    v40 = v121;
  }

  while (*&v7[v45] != v128);
LABEL_57:
  sub_1AF8AB47C(v7, sub_1AF8A9D74);
  *(v3 + 16) = v112;

  v102 = v113;
  sub_1AFDFD848();
  sub_1AFDFD888();
  v103 = sub_1AFDFD878();
  v104 = *(v115 + 8);
  v104(v114, v9);
  v104(v102, v9);

  return v103 > 0;
}

char *sub_1AF8A2114(void *a1)
{
  v13 = &unk_1F262DBA0;
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = [v2 bufferStructType];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1AF8A40DC(v3);
      swift_unknownObjectRelease();

      return v5;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v12 = 0xE000000000000000;
    sub_1AFDFE218();
    sub_1AFDFEDD8();
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF38D80);
    v8 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v10 = v8;
      swift_once();
      v8 = v10;
    }

    v11 = 0;
    sub_1AF0D4F18(v8, &v11, 0, 0xE000000000000000);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v12 = 0xE000000000000000;
    sub_1AFDFE218();
    swift_getObjectType();
    sub_1AFDFEDD8();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF38D60);
    v7 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v9 = v7;
      swift_once();
      v7 = v9;
    }

    v11 = 0;
    sub_1AF0D4F18(v7, &v11, 0, 0xE000000000000000);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1AF8A23A0()
{
  qword_1ED73B418 = 0;
  qword_1ED73B420 = 0;
  qword_1ED73B410 = MEMORY[0x1E69E7CC0];
}

double sub_1AF8A23D8(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED724A80 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED73B410;
  v3 = qword_1ED73B418;
  v5 = qword_1ED73B420;
  if (qword_1ED73B418)
  {
    swift_unknownObjectRetain();
  }

  v6 = sub_1AFB7B338(v4, v4);
  qword_1ED73B4A0 = v4;
  *algn_1ED73B4A8 = v3;
  qword_1ED73B4B0 = v5;
  qword_1ED73B4B8 = v4;
  *&xmmword_1ED73B4C0 = v3;
  *(&xmmword_1ED73B4C0 + 1) = v5;
  byte_1ED73B4D0 = v6 & 1;
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1AF8A2490(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v15 = a5;
  v13 = a4;
  sub_1AF8AC5D0(0, &qword_1EB63FE70, sub_1AF8AC4E0, &type metadata for ShaderArgument.BufferDesc.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AC4E0();
  sub_1AFDFF3F8();
  v20 = 0;
  sub_1AFDFE8F8();
  if (!v5)
  {
    v16 = v14;
    v19 = 1;
    type metadata accessor for MTLDataType(0);
    sub_1AF8AC588(&qword_1EB63FAD8, 255, type metadata accessor for MTLDataType, protocol conformance descriptor for MTLDataType);
    sub_1AFDFE918();
    v18 = 2;
    sub_1AFDFE8F8();
    v17 = 3;
    sub_1AFDFE8F8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF8A26D8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13[3] = a4;
  v14 = a3;
  sub_1AF8AC5D0(0, &qword_1EB63FE58, sub_1AF8AC534, &type metadata for ShaderArgument.TextureDesc.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AC534();
  sub_1AFDFF3F8();
  v16 = a2;
  v15 = 0;
  type metadata accessor for MTLTextureType(0);
  sub_1AF8AC588(&unk_1EB63FE60, 255, type metadata accessor for MTLTextureType, protocol conformance descriptor for MTLTextureType);
  sub_1AFDFE918();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    type metadata accessor for MTLDataType(0);
    sub_1AF8AC588(&qword_1EB63FAD8, 255, type metadata accessor for MTLDataType, protocol conformance descriptor for MTLDataType);
    sub_1AFDFE918();
    LOBYTE(v16) = 2;
    sub_1AFDFE8C8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF8A2954()
{
  v1 = 0x657A695361746164;
  v2 = 0x74657366666FLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D6E67696C61;
  }

  if (*v0)
  {
    v1 = 0x6570795461746164;
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

uint64_t sub_1AF8A29D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF8A9770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF8A29F8(uint64_t a1)
{
  v2 = sub_1AF8AC4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8A2A34(uint64_t a1)
{
  v2 = sub_1AF8AC4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8A2A70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8AA3F0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1AF8A2AC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6570795461746164;
  if (v2 != 1)
  {
    v4 = 0x68747065447369;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6570795461746164;
  if (*a2 != 1)
  {
    v8 = 0x68747065447369;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8A2BBC()
{
  v1 = 0x6570795461746164;
  if (*v0 != 1)
  {
    v1 = 0x68747065447369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1AF8A2C10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF8A99EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF8A2C38(uint64_t a1)
{
  v2 = sub_1AF8AC534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8A2C74(uint64_t a1)
{
  v2 = sub_1AF8AC534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8A2CB0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

uint64_t sub_1AF8A2CEC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF8AA678(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1AF8A2D40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65727574786574;
  }

  else
  {
    v3 = 0x726566667562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65727574786574;
  }

  else
  {
    v5 = 0x726566667562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8A2DE4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8A2E64(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8A2ED0(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8A2F4C@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

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

void sub_1AF8A2FAC(uint64_t *a1@<X8>)
{
  v2 = 0x726566667562;
  if (*v1)
  {
    v2 = 0x65727574786574;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF8A2FE8()
{
  if (*v0)
  {
    return 0x65727574786574;
  }

  else
  {
    return 0x726566667562;
  }
}

uint64_t sub_1AF8A3020@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

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

uint64_t sub_1AF8A3084(uint64_t a1)
{
  v2 = sub_1AF8AC16C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8A30C0(uint64_t a1)
{
  v2 = sub_1AF8AC16C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8A30FC(void *a1)
{
  v2 = v1;
  sub_1AF8AC5D0(0, &qword_1EB63FE30, sub_1AF8AC16C, &type metadata for ShaderArgument.Desc.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AC16C();
  sub_1AFDFF3F8();
  if (v2[2])
  {
    v11 = *v2;
    LOBYTE(v12) = *(v2 + 16);
    v13 = 1;
    sub_1AF8AC268();
  }

  else
  {
    v9 = v2[1];
    v11 = *v2;
    v12 = v9;
    v13 = 0;
    sub_1AF8AC2BC();
  }

  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1AF8A32B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*(a1 + 32) == 1)
  {
    return (a2[4] & 1) != 0 && (v3 == v5 ? (v6 = v2 == v4) : (v6 = 0), v6 && ((a1[2] ^ a2[2]) & 1) == 0);
  }

  v9 = v3 == v5 && v2 == v4;
  return (a2[4] & 1) == 0 && v9;
}

double sub_1AF8A3318@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF8AA928(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void sub_1AF8A339C(uint64_t *a1@<X8>)
{
  if (*(v1 + 56))
  {
    a1[3] = &type metadata for Entity;
    *a1 = 0xFFFFFFFFLL;
  }

  else
  {
    switch(*(v1 + 32))
    {
      case 3:
        a1[3] = MEMORY[0x1E69E6448];
        *a1 = 0;
        return;
      case 4:
        sub_1AF8AC5D0(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        a1[3] = v18;
        *a1 = 0;
        return;
      case 5:
        v9 = &qword_1ED72F740;
        v10 = MEMORY[0x1E69E6448];
        v11 = MEMORY[0x1E69E7450];
        goto LABEL_20;
      case 6:
        v9 = &qword_1ED72F6E0;
        v10 = MEMORY[0x1E69E6448];
        v11 = MEMORY[0x1E69E74A8];
LABEL_20:
        sub_1AF8AC5D0(0, v9, sub_1AF43A0C8, v10, v11);
        a1[3] = v23;
        v24 = swift_allocObject();
        *a1 = v24;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        return;
      case 7:
        v20 = a1;
        type metadata accessor for simd_float2x2(0);
        v20[3] = v25;
        goto LABEL_22;
      case 8:
        v12 = a1;
        type metadata accessor for simd_float2x3(0);
        goto LABEL_14;
      case 9:
        v12 = a1;
        type metadata accessor for simd_float2x4(0);
LABEL_14:
        v12[3] = v13;
        v19 = swift_allocObject();
        *v12 = v19;
        *(v19 + 16) = xmmword_1AFE20150;
        *(v19 + 32) = xmmword_1AFE20160;
        return;
      case 0xALL:
        v20 = a1;
        type metadata accessor for simd_float3x2(0);
        v20[2] = 0;
        v20[3] = v21;
LABEL_22:
        *v20 = 1065353216;
        v20[1] = 0x3F80000000000000;
        return;
      case 0xBLL:
        v26 = a1;
        type metadata accessor for simd_float3x3(0);
        goto LABEL_25;
      case 0xCLL:
        v26 = a1;
        type metadata accessor for simd_float3x4(0);
LABEL_25:
        v26[3] = v27;
        v28 = swift_allocObject();
        *v26 = v28;
        v28[1] = xmmword_1AFE20150;
        v28[2] = xmmword_1AFE20160;
        v28[3] = xmmword_1AFE20180;
        return;
      case 0xDLL:
        type metadata accessor for simd_float4x2(0);
        a1[3] = v4;
        v5 = swift_allocObject();
        *a1 = v5;
        v5[2] = 1065353216;
        v5[3] = 0x3F80000000000000;
        v5[4] = 0;
        v5[5] = 0;
        return;
      case 0xELL:
        type metadata accessor for simd_float4x3(0);
        a1[3] = v15;
        v16 = swift_allocObject();
        *a1 = v16;
        *(v16 + 16) = xmmword_1AFE20150;
        *(v16 + 32) = xmmword_1AFE20160;
        *(v16 + 48) = xmmword_1AFE20180;
        *(v16 + 64) = 0;
        *(v16 + 72) = 0;
        return;
      case 0xFLL:
        type metadata accessor for simd_float4x4(0);
        a1[3] = v7;
        v8 = swift_allocObject();
        *a1 = v8;
        v8[1] = xmmword_1AFE20150;
        v8[2] = xmmword_1AFE20160;
        v8[3] = xmmword_1AFE20180;
        v8[4] = xmmword_1AFE201A0;
        return;
      case 0x1DLL:
        v2 = MEMORY[0x1E69E6530];
        goto LABEL_17;
      case 0x21:
        v2 = MEMORY[0x1E69E6810];
LABEL_17:
        a1[3] = v2;
        *a1 = 0;
        break;
      case 0x35:
        a1[3] = MEMORY[0x1E69E6370];
        *a1 = 0;
        break;
      default:
        a1[3] = MEMORY[0x1E69E7CA8] + 8;
        break;
    }
  }
}

uint64_t sub_1AF8A3720(void *a1)
{
  v3 = v1;
  sub_1AF8AC5D0(0, &qword_1EB63FE08, sub_1AF8ABC58, &type metadata for ShaderArgument.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ABC58();
  sub_1AFDFF3F8();
  LOBYTE(v12[0]) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_1AFDFE8F8();
    v10 = *(v3 + 40);
    v12[0] = *(v3 + 24);
    v12[1] = v10;
    v13 = *(v3 + 56);
    v14 = 2;
    sub_1AF8ABD00();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AF8A3904(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7865646E69;
  if (v2 != 1)
  {
    v4 = 1668506980;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (*a2 != 1)
  {
    v8 = 1668506980;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8A39E8()
{
  v1 = 0x7865646E69;
  if (*v0 != 1)
  {
    v1 = 1668506980;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AF8A3A30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF8A98D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF8A3A58(uint64_t a1)
{
  v2 = sub_1AF8ABC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8A3A94(uint64_t a1)
{
  v2 = sub_1AF8ABC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF8A3AD0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AF8AABE0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1AF8A3B34(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 56);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_7:
    if (v6)
    {
      if (v4 == v7)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      if (v14 & 1) == 0 || v3 != v9 || ((v10 ^ v5))
      {
        return 0;
      }
    }

    else if ((v11 & 1) != 0 || v4 != v7 || v3 != v9)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1AFDFEE28();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1AF8A3C18()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  sub_1AFDFF288();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](v2);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1B271ACB0](v5);
  sub_1AFDFF2A8();
  if (v4)
  {
    MEMORY[0x1B271ACB0](v1);
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8A3CCC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 56);
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](v3);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1B271ACB0](v6);
  if (!v5)
  {
    return sub_1AFDFF2A8();
  }

  sub_1AFDFF2A8();
  return MEMORY[0x1B271ACB0](v2);
}

uint64_t sub_1AF8A3D48(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 56);
  sub_1AFDFF288();
  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](v3);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1B271ACB0](v6);
  sub_1AFDFF2A8();
  if (v5)
  {
    MEMORY[0x1B271ACB0](v2);
  }

  return sub_1AFDFF2F8();
}

BOOL sub_1AF8A3DF8(uint64_t *a1, float32x4_t *a2)
{
  v2 = *(a1 + 64);
  v3 = *a2;
  v4 = a2[4].i8[0];
  if (v2 < 0)
  {
    return v4 < 0 && *a1 == v3.i64[0];
  }

  else
  {
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a1[7];
    v13 = *a1;
    v14 = *(a1 + 1);
    v15 = *(a1 + 3);
    v16 = *(a1 + 5);
    v17 = v8;
    v18 = v2;
    if (v4 < 0)
    {
      v9 = 0;
    }

    else
    {
      v19[0] = v3;
      v19[1] = v5;
      v19[2] = v6;
      v19[3] = v7;
      v20 = v4;
      v9 = sub_1AF87C134(&v13, v19);
    }

    return v9 & 1;
  }
}