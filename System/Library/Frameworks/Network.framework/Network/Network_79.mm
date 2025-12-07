uint64_t sub_181F5D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5D12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F5D174(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_181F5D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F5D1F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_181F5D24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F5D2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F54964;

  return sub_181F54A58(a1, v5, v6, v7, v8, v4);
}

double sub_181F5D3A4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 24);

  return result;
}

uint64_t sub_181F5D3DC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_181F564E0(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_181F5D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  type metadata accessor for NetworkBrowser.State(255, v4[4], v4[6], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD3728() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v4[2];
  v10 = v4[3];
  v11 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_181F5EB68;

  return sub_181F56A30(v9, v10, v4 + v8, v11, v6);
}

uint64_t sub_181F5D61C()
{
  v15 = v0[4];
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v2 = *(sub_182AD3728() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = (v0 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v5);
  v12 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_181F5EB68;

  return sub_181F57338(v6, v7, v0 + v3, v9, v10, v11, v12, v15);
}

uint64_t sub_181F5D7DC(uint64_t a1, uint64_t a2)
{
  v13 = v2[2];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_181F57600(a1, a2, v6, v7, v8, v10, v9, v13);
}

uint64_t sub_181F5D8D0()
{
  v11 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v7 = v0[11];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_181F57DB8(v2, v3, v4, v5, v6, v8, v7, v11);
}

uint64_t sub_181F5D9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_181F5DAB8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = *(sub_182AD36C8() - 8);
  v6 = *(v2 + 40);
  v7 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_181F55D80(a1, a2, v6, v7);
}

uint64_t sub_181F5DB9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  sub_182AD3488();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v4 = *(sub_182AD36C8() - 8);
  v5 = v0 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_181F5635C(v5, v1, v2, v3);
}

uint64_t sub_181F5DCA4(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[3];
  type metadata accessor for NetworkBrowser.State(255, v4[2], v4[4], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD36C8() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_181F55790(a1, v4 + v8, v9, v6);
}

uint64_t sub_181F5DDA8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *a2 = v2;
  return result;
}

uint64_t sub_181F5DDFC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_181F52518(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_181F5DEC4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_181F5DED0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_181F52CB0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_181F5E02C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

uint64_t sub_181F5E04C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  type metadata accessor for Browser3.Event(255, v6, v7, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = *(sub_182AD36C8() - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_181F51D78(a1, v9, v6, v7);
}

void sub_181F5E110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Browser3.Event(255, v4[2], v4[3], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = *(sub_182AD36C8() - 8);
  v8 = v4[4];
  v9 = v4 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  sub_181F51F30(a1, a2, v8, v9);
}

uint64_t sub_181F5E1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_158Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v4 = sub_182AD36C8();
  (*(*(v4 - 8) + 8))(v0 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);

  return swift_deallocObject();
}

unsigned int *sub_181F5E36C(unsigned int *a1, uint64_t (*a2)(void (*)(uint64_t, uint64_t *, __n128), uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = *(sub_182AD36C8() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  return sub_181F4F300(a1, v2 + v9, *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_161Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v4 = sub_182AD36C8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

void sub_181F5E580(int64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BrowseResult(255, AssociatedTypeWitness, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = *(sub_182AD36C8() - 8);
  sub_181F4F490(a1, a2, *(v2 + 32), v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80)));
}

uint64_t sub_181F5E674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Frame.FrameTimestamp(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Frame.FrameTimestamp(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_181F5E75C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_181F5EAA4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_181F5E7D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_181F5E8EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_181F5EAA4()
{
  result = qword_1EA838A28;
  if (!qword_1EA838A28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA838A28);
  }

  return result;
}

BOOL sub_181F5EBF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *(a1 + 1) < *(a2 + 1);
  }

  else
  {
    return v5;
  }
}

BOOL sub_181F5EC1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *(a2 + 1) >= *(a1 + 1);
  }

  else
  {
    return v5;
  }
}

BOOL sub_181F5EC44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *(a1 + 1) >= *(a2 + 1);
  }

  else
  {
    return v5;
  }
}

BOOL sub_181F5EC6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *(a2 + 1) < *(a1 + 1);
  }

  else
  {
    return v5;
  }
}

uint64_t sub_181F5ECC0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1 + 1);
  return sub_182AD4558();
}

uint64_t sub_181F5ED38(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v2 + 1);
  return sub_182AD4558();
}

uint64_t sub_181F5ED7C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F5F868(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F5EDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == -1)
  {
    goto LABEL_7;
  }

  if (a1 != -1)
  {
    if (a1 >= a3)
    {
      v16 = xmmword_182AE6270;
      v17 = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 11;
    }

    v5 = a3 - a1;
    if (!__OFSUB__(a3, a1))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_7:
    v16 = xmmword_182AE6290;
    v17 = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 12;
  }

  v5 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_17;
  }

LABEL_9:
  if (v5 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (a2 == 4)
  {
    if (v5 <= 127)
    {
      return a3;
    }

    v6 = 2 * v5;
    if (v6 <= 0xFFFE)
    {
      return a3;
    }

    if (v6 <= 0xFFFFFE)
    {
      return a3 & 0xFFFFFFF;
    }

    if (v6 < 0xFFFFFFFF)
    {
      return a3;
    }

    v16 = xmmword_182AE6280;
    v17 = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 13;
  }

  v18 = v3;
  v4 = a3;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_28;
  }

LABEL_17:
  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);
  v8 = sub_182AD2678();
  v9 = sub_182AD38B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v16 = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v16);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_181C64FFC(0xD00000000000003ALL, 0x8000000182BD52D0, &v16);
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  return v4;
}

uint64_t sub_181F5F140()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](v1);
  return sub_182AD4558();
}

uint64_t sub_181F5F1B4(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  MEMORY[0x1865DB0B0](v2);
  return sub_182AD4558();
}

unint64_t sub_181F5F26C()
{
  result = qword_1EA838A40;
  if (!qword_1EA838A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A40);
  }

  return result;
}

uint64_t sub_181F5F2C0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 1701736302;
  }

  if (!a1)
  {
    return 0x6C616974696E69;
  }

  v3 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v3);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  return 0x74617069746C756DLL;
}

uint64_t sub_181F5F378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

uint64_t sub_181F5F3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  return *a2 >= *a1;
}

uint64_t sub_181F5F400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  return *a1 >= *a2;
}

uint64_t sub_181F5F448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  return *a2 < *a1;
}

unint64_t sub_181F5F494()
{
  result = qword_1EA839C40;
  if (!qword_1EA839C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839C40);
  }

  return result;
}

uint64_t sub_181F5F4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t getEnumTagSinglePayload for PacketIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PacketIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodedPacketNumber(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EncodedPacketNumber(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_181F5F6AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_181F5F704()
{
  result = qword_1EA838A58;
  if (!qword_1EA838A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A58);
  }

  return result;
}

unint64_t sub_181F5F758()
{
  result = qword_1EA838A60;
  if (!qword_1EA838A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A60);
  }

  return result;
}

unint64_t sub_181F5F7BC()
{
  result = qword_1EA838A68;
  if (!qword_1EA838A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A68);
  }

  return result;
}

unint64_t sub_181F5F814()
{
  result = qword_1EA838A70;
  if (!qword_1EA838A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A70);
  }

  return result;
}

uint64_t sub_181F5F868(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

BOOL sub_181F5F894()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9 = 64;
  v10 = 0;
  if ((sysctlbyname("hw.memsize", &v10, &v9, 0, 0) & 0x80000000) == 0)
  {
    return v10 > 0xC0000000;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v1 = sub_182AD2698();
  __swift_project_value_buffer(v1, qword_1EA843418);
  v2 = sub_182AD2678();
  v3 = sub_182AD38B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136315650;
    v6 = sub_182AD3BF8();
    v8 = sub_181C64FFC(v6, v7, v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v11);
    *(v4 + 22) = 2080;
    *(v4 + 24) = sub_181C64FFC(0xD00000000000002DLL, 0x8000000182BD5330, v11);
    _os_log_impl(&dword_181A37000, v2, v3, "%s %s %s", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v5, -1, -1);
    MEMORY[0x1865DF520](v4, -1, -1);
  }

  return 1;
}

uint64_t AdvertisedRoute.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F5FB48(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Network8Endpoint_flags;
  v3 = *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags);
  if ((v3 & 4) != 0)
  {
    *(a1 + OBJC_IVAR____TtC7Network8Endpoint_flags) = v3 & 0xFFFB;
  }

  swift_beginAccess();
  sub_18224FFEC(0);

  v4 = *(a1 + v2);
  if ((v4 & 0x40) != 0)
  {
    *(a1 + v2) = v4 & 0xFFBF;
  }

  sub_18224FFEC(1);
  swift_endAccess();
}

void *Endpoint.activeInstanceCount.getter()
{
  result = *(v0 + OBJC_IVAR____TtC7Network8Endpoint_registrar);
  if (result)
  {
    return nw_protocol_instance_registrar_get_instance_count(result);
  }

  return result;
}

unint64_t sub_181F5FC14()
{
  result = qword_1EA838A80;
  if (!qword_1EA838A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838A80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndpointStorageKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndpointStorageKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL sub_181F5FDC0(void *a1, NSObject *a2, void *a3, NSObject *a4)
{
  if (a1 == a3)
  {
    return 1;
  }

  v11 = v4;
  v12 = v5;
  if (&__block_literal_global_7016 == a1 || &__block_literal_global_7016 == a3)
  {
    return 0;
  }

  v10 = 0;
  if ((sub_181B0A11C(a3, &v10) & 1) == 0)
  {
    return 0;
  }

  result = (a2 | a4) == 0;
  if (a2)
  {
    if (a4)
    {
      return nw_protocol_definition_is_equal(a2, a4);
    }
  }

  return result;
}

void *sub_181F5FE60(void *result)
{
  v4 = result + 2;
  v5 = result + 5;
  v6 = result[3];
  v7 = result[4];
  v8 = v6 + v7;
  if (result[2] < v6 + v7)
  {
    if (v6 <= 0)
    {
      return result;
    }

    v2 = result;
    v9 = *(*v1 + 24);
    v10 = v9 + v6;
    if (!__OFADD__(v9, v6))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v1;
      if (*(*v1 + 16) < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v10, 0);
        v12 = *v1;
      }

      sub_18207F3A0((v12 + 16), v12 + 40, v69);
      result = sub_181F65B18(v6, &v70);
      v13 = v70;
      v1 = v71;
      if (v74)
      {
        v14 = v2[4];
        v15 = (v2[3] + v14);
        if (v2[2] < v15)
        {
          sub_182080680(v4, v5, v70, v71, v2);
          v66 = v17;
          v67 = v18;
          v68 = v19;
          if (v18 != v19)
          {
            goto LABEL_83;
          }

          v1 = &v66;
          if (sub_181AC81FC(v16))
          {
            goto LABEL_83;
          }

          goto LABEL_66;
        }

LABEL_33:
        v34 = __OFSUB__(v15, v14);
        v35 = v15 < v14;
        v36 = &v15[-v14];
        if (v35)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v34)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v36)
        {
          if (v1 < v36)
          {
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          result = memcpy(v13, &v5[2 * v14], 16 * v36);
        }

        goto LABEL_66;
      }

      if (v71 < 0)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v2[3] < v71)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v64 = v73;
      v65 = v72;
      MEMORY[0x1EEE9AC00](result);
      v60 = v13;
      v61 = v1;
      v66 = 0;
      v67 = v1;
      v68 = v2;
      MEMORY[0x1EEE9AC00](v24);
      v57 = &v66;
      v58 = sub_181F67068;
      v59 = v25;

      v26 = sub_181F66144(v4, v5, sub_181F67080);
      if (v27)
      {
        v66 = 0;
        v67 = v1;
        v68 = v2;
        MEMORY[0x1EEE9AC00](v26);
        v60 = v13;
        v61 = v1;
        MEMORY[0x1EEE9AC00](v28);
        v3 = &v56;
        v57 = &v66;
        v58 = sub_181F670A0;
        v59 = v29;

        result = sub_181F661CC(v4, v5, sub_181F670CC);
        if (v31)
        {
          if (v13)
          {
            if (v1)
            {
              v14 = v2[3];
              if (v14 < 1)
              {
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

              v14 = 0;
              v15 = v1 - 1;
              while (1)
              {
                v32 = v2[4];
                v33 = v14 + v32 >= v2[2] ? v2[2] : 0;
                *v13 = *&v5[2 * v14 + 2 * (v32 - v33)];
                if (v15 == v14)
                {
                  break;
                }

                v13 += 16;
                if (++v14 >= v2[3])
                {
                  goto LABEL_32;
                }
              }
            }
          }

          else if (v1)
          {
LABEL_88:
            v30 = 0;
LABEL_89:
            if (v30 >= v1)
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            if (v30 >= v2[3])
            {
LABEL_95:
              __break(1u);
              return result;
            }

            __break(1u);
            goto LABEL_92;
          }
        }

        else if (v30 != v1)
        {
          goto LABEL_89;
        }
      }

      else
      {
      }

      v63 = v12;
      v3 = v2[3];
      if (v3 < v1)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      MEMORY[0x1EEE9AC00](v37);
      v1 = v64;
      v60 = v65;
      v61 = v64;
      v62 = v38;
      v66 = v38;
      v67 = v3;
      v68 = v2;
      MEMORY[0x1EEE9AC00](v39);
      v57 = &v66;
      v58 = sub_181F676B0;
      v59 = v40;

      v41 = sub_181F66144(v4, v5, sub_181F676E0);
      if ((v42 & 1) == 0)
      {

        v12 = v63;
        goto LABEL_66;
      }

      v66 = v62;
      v67 = v3;
      v68 = v2;
      MEMORY[0x1EEE9AC00](v41);
      v60 = v65;
      v61 = v1;
      MEMORY[0x1EEE9AC00](v43);
      v57 = &v66;
      v58 = sub_181F676C8;
      v59 = v44;

      result = sub_181F661CC(v4, v5, sub_181F676F8);
      v12 = v63;
      if (v46)
      {
        v47 = v62;
        v48 = v65;
        if (v65 && v64)
        {
          if ((v64 & 0x8000000000000000) != 0)
          {
LABEL_82:
            __break(1u);
LABEL_83:

            __break(1u);
LABEL_84:
            if (v50 < v47 || v50 >= v3)
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            if (v50 >= v2[3])
            {
LABEL_93:
              __break(1u);
              goto LABEL_94;
            }

            __break(1u);
            goto LABEL_88;
          }

          if (v62 != v3)
          {
            v49 = (v64 - 1);
            v50 = v62;
            while (v3 != v50)
            {
              if (v50 >= v2[3])
              {
                goto LABEL_78;
              }

              v51 = v2[4];
              if (v50 + v51 >= v2[2])
              {
                v52 = v2[2];
              }

              else
              {
                v52 = 0;
              }

              v53 = v50 + v51 - v52;
              v50 = (v50 + 1);
              *v48 = *&v5[2 * v53];
              if (!v49)
              {
                goto LABEL_64;
              }

              v48 += 16;
              --v49;
              if (v3 == v50)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_77;
          }

          goto LABEL_65;
        }
      }

      else
      {
        v47 = v62;
        v50 = (v62 + v45);
        if (!__OFADD__(v62, v45))
        {
LABEL_64:
          if (v50 != v3)
          {
            goto LABEL_84;
          }

LABEL_65:

LABEL_66:
          v54 = *(v12 + 24);
          v34 = __OFADD__(v54, v6);
          v55 = v54 + v6;
          if (!v34)
          {
            *(v12 + 24) = v55;
            return result;
          }

          goto LABEL_73;
        }

        __break(1u);
      }

      v50 = v47;
      goto LABEL_64;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (__OFSUB__(v8, v7))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v20 = *(*v1 + 24);
  v21 = v20 + v6;
  if (__OFADD__(v20, v6))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v1;
  if (*(*v1 + 16) < v21 || (v22 & 1) == 0)
  {
    sub_181B8477C(v22, v21, 0);
    v23 = *v1;
  }

  return sub_181CC4734(v23 + 16, v23 + 40, &v5[2 * v7], v6, sub_181B64818, sub_181F65BC0);
}

void *sub_181F604FC(void *result)
{
  v3 = result + 2;
  v4 = result + 5;
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181AA69D8(isUniquelyReferenced_nonNull_native, v9, 0);
      v11 = *v1;
    }

    sub_18207F44C((v11 + 16), v11 + 40, v57);
    result = sub_181F65B18(v5, &v58);
    v12 = v58;
    v1 = v59;
    if (v62)
    {
      v13 = v2[4];
      v14 = v2[3] + v13;
      if (v2[2] < v14)
      {
        sub_182080930(v3, v4, v58, v59, v2);
        v54 = v16;
        v55 = v17;
        v56 = v18;
        if (v17 != v18)
        {
          goto LABEL_89;
        }

        v1 = &v54;
        if (sub_181AC81FC(v15))
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_33:
      v32 = v14 - v13;
      if (v14 < v13)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v32)
      {
        if (v1 < v32)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v1 = &v4[v13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
        result = swift_arrayInitWithCopy();
      }

      goto LABEL_67;
    }

    if (v59 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v2[3] < v59)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v52 = v61;
    v53 = v60;
    MEMORY[0x1EEE9AC00](result);
    v54 = 0;
    v55 = v1;
    v56 = v2;
    MEMORY[0x1EEE9AC00](v23);

    v24 = sub_181F66260(v3, v4, sub_181F67710);
    if (v25)
    {
      v54 = 0;
      v55 = v1;
      v56 = v2;
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v26);

      result = sub_181F662E8(v3, v4, sub_181F67728);
      if (v28)
      {
        if (v12)
        {
          if (v1)
          {
            v13 = v2[3];
            if (v13 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v29 = 0;
            while (1)
            {
              v30 = v2[4];
              v31 = v29 + v30 >= v2[2] ? v2[2] : 0;
              *(v12 + 8 * v29) = v4[v29 + v30 - v31];
              if ((v1 - 1) == v29)
              {
                break;
              }

              result = swift_unknownObjectRetain();
              v13 = v2[3];
              if (++v29 >= v13)
              {
                goto LABEL_32;
              }
            }

            swift_unknownObjectRetain();
          }
        }

        else if (v1)
        {
LABEL_90:
          v27 = 0;
LABEL_91:
          if (v27 >= v1)
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v27 >= v2[3])
          {
LABEL_97:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v27 != v1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v34 = v2[3];
    if (v34 < v1)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00](v33);
    v1 = v52;
    v51 = v35;
    v54 = v35;
    v55 = v34;
    v56 = v2;
    MEMORY[0x1EEE9AC00](v36);

    v37 = sub_181F66260(v3, v4, sub_181F67710);
    if ((v38 & 1) == 0)
    {

      goto LABEL_67;
    }

    v54 = v51;
    v55 = v34;
    v56 = v2;
    MEMORY[0x1EEE9AC00](v37);
    MEMORY[0x1EEE9AC00](v39);

    result = sub_181F662E8(v3, v4, sub_181F67728);
    if (v41)
    {
      v1 = v51;
      v42 = v53;
      if (v53 && v52)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
LABEL_89:

          __break(1u);
          goto LABEL_90;
        }

        if (v51 != v34)
        {
          v43 = (v52 - 1);
          v44 = v51;
          while (v34 != v44)
          {
            if (v44 >= v2[3])
            {
              goto LABEL_84;
            }

            v45 = v2[4];
            if (v44 + v45 >= v2[2])
            {
              v46 = v2[2];
            }

            else
            {
              v46 = 0;
            }

            v47 = v4[v44 + v45 - v46];
            ++v44;
            *v42 = v47;
            if (!v43)
            {
              result = swift_unknownObjectRetain();
              if (v44 == v34)
              {
                goto LABEL_66;
              }

              goto LABEL_71;
            }

            ++v42;
            swift_unknownObjectRetain();
            --v43;
            if (v34 == v44)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v1 = v51;
      v44 = v51 + v40;
      if (!__OFADD__(v51, v40))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v44 = v1;
LABEL_65:
    if (v44 == v34)
    {
LABEL_66:

LABEL_67:
      v48 = *(v11 + 24);
      v49 = __OFADD__(v48, v5);
      v50 = v48 + v5;
      if (!v49)
      {
        *(v11 + 24) = v50;
        return result;
      }

      goto LABEL_79;
    }

LABEL_71:
    if (v44 < v1 || v44 >= v34)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v44 >= v2[3])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (v7 < v6)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v19 = *(*v1 + 24);
  v20 = v19 + v5;
  if (__OFADD__(v19, v5))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if (*(*v1 + 16) < v20 || (v21 & 1) == 0)
  {
    sub_181AA69D8(v21, v20, 0);
    v22 = *v1;
  }

  return sub_181CC4734(v22 + 16, v22 + 40, &v4[v6], v5, sub_181D8977C, sub_181F65DC4);
}

void *sub_181F60BCC(void *result)
{
  v3 = result + 2;
  v4 = result + 5;
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v9, 0);
      v11 = *v1;
    }

    sub_18207F44C((v11 + 16), v11 + 40, v60);
    result = sub_181F65B18(v5, &v61);
    v12 = v61;
    v1 = v62;
    if (v65)
    {
      v13 = v2[4];
      v14 = v2[3] + v13;
      if (v2[2] < v14)
      {
        sub_182080AAC(v3, v4, v61, v62, v2);
        v57 = v16;
        v58 = v17;
        v59 = v18;
        if (v17 != v18)
        {
          goto LABEL_89;
        }

        v1 = &v57;
        if (sub_181AC81FC(v15))
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_33:
      v33 = v14 - v13;
      if (v14 < v13)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v33)
      {
        if (v1 < v33)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v1 = &v4[v13];
        type metadata accessor for Endpoint(0);
        result = swift_arrayInitWithCopy();
      }

      goto LABEL_67;
    }

    if (v62 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v2[3] < v62)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v55 = v64;
    v56 = v63;
    MEMORY[0x1EEE9AC00](result);
    v57 = 0;
    v58 = v1;
    v59 = v2;
    MEMORY[0x1EEE9AC00](v23);

    v24 = sub_181F66260(v3, v4, sub_181F67710);
    if (v25)
    {
      v57 = 0;
      v58 = v1;
      v59 = v2;
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v26);

      result = sub_181F662E8(v3, v4, sub_181F67728);
      if (v28)
      {
        if (v12)
        {
          if (v1)
          {
            v13 = v2[3];
            if (v13 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v29 = 0;
            while (1)
            {
              v30 = v2[4];
              v31 = v29 + v30 >= v2[2] ? v2[2] : 0;
              v32 = v4[v29 + v30 - v31];
              *(v12 + 8 * v29) = v32;
              if ((v1 - 1) == v29)
              {
                break;
              }

              result = v32;
              v13 = v2[3];
              if (++v29 >= v13)
              {
                goto LABEL_32;
              }
            }

            v35 = v32;
          }
        }

        else if (v1)
        {
LABEL_90:
          v27 = 0;
LABEL_91:
          if (v27 >= v1)
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v27 >= v2[3])
          {
LABEL_97:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v27 != v1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v36 = v2[3];
    if (v36 < v1)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00](v34);
    v1 = v55;
    v54 = v37;
    v57 = v37;
    v58 = v36;
    v59 = v2;
    MEMORY[0x1EEE9AC00](v38);

    v39 = sub_181F66260(v3, v4, sub_181F67710);
    if ((v40 & 1) == 0)
    {

      goto LABEL_67;
    }

    v57 = v54;
    v58 = v36;
    v59 = v2;
    MEMORY[0x1EEE9AC00](v39);
    MEMORY[0x1EEE9AC00](v41);

    result = sub_181F662E8(v3, v4, sub_181F67728);
    if (v43)
    {
      v1 = v54;
      v44 = v56;
      if (v56 && v55)
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
LABEL_89:

          __break(1u);
          goto LABEL_90;
        }

        if (v54 != v36)
        {
          v45 = (v55 - 1);
          v46 = v54;
          while (v36 != v46)
          {
            if (v46 >= v2[3])
            {
              goto LABEL_84;
            }

            v47 = v2[4];
            if (v46 + v47 >= v2[2])
            {
              v48 = v2[2];
            }

            else
            {
              v48 = 0;
            }

            v49 = v4[v46 + v47 - v48];
            ++v46;
            *v44 = v49;
            if (!v45)
            {
              result = v49;
              if (v46 == v36)
              {
                goto LABEL_66;
              }

              goto LABEL_71;
            }

            ++v44;
            v50 = v49;
            --v45;
            if (v36 == v46)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v1 = v54;
      v46 = v54 + v42;
      if (!__OFADD__(v54, v42))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v46 = v1;
LABEL_65:
    if (v46 == v36)
    {
LABEL_66:

LABEL_67:
      v51 = *(v11 + 24);
      v52 = __OFADD__(v51, v5);
      v53 = v51 + v5;
      if (!v52)
      {
        *(v11 + 24) = v53;
        return result;
      }

      goto LABEL_79;
    }

LABEL_71:
    if (v46 < v1 || v46 >= v36)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v46 >= v2[3])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (v7 < v6)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v19 = *(*v1 + 24);
  v20 = v19 + v5;
  if (__OFADD__(v19, v5))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if (*(*v1 + 16) < v20 || (v21 & 1) == 0)
  {
    sub_181ADA6FC(v21, v20, 0);
    v22 = *v1;
  }

  return sub_181CC4734(v22 + 16, v22 + 40, &v4[v6], v5, sub_181D8977C, sub_181F65F10);
}

void *sub_181F61290(void *result)
{
  v3 = result + 2;
  v4 = result + 5;
  v5 = result[3];
  v6 = result[4];
  v7 = v5 + v6;
  if (result[2] < v5 + v6)
  {
    if (v5 <= 0)
    {
      return result;
    }

    v2 = result;
    v8 = *(*v1 + 24);
    v9 = v8 + v5;
    if (__OFADD__(v8, v5))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    if (*(*v1 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181CA4444(isUniquelyReferenced_nonNull_native, v9, 0);
      v11 = *v1;
    }

    sub_18207F44C((v11 + 16), v11 + 40, v57);
    result = sub_181F65B18(v5, &v58);
    v12 = v58;
    v1 = v59;
    if (v62)
    {
      v13 = v2[4];
      v14 = v2[3] + v13;
      if (v2[2] < v14)
      {
        sub_1820808FC(v3, v4, v58, v59, v2);
        v54 = v16;
        v55 = v17;
        v56 = v18;
        if (v17 != v18)
        {
          goto LABEL_89;
        }

        v1 = &v54;
        if (sub_181AC81FC(v15))
        {
          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_33:
      v32 = v14 - v13;
      if (v14 < v13)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v32)
      {
        if (v1 < v32)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        result = swift_arrayInitWithCopy();
      }

      goto LABEL_67;
    }

    if (v59 < 0)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v2[3] < v59)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v52 = v61;
    v53 = v60;
    MEMORY[0x1EEE9AC00](result);
    v54 = 0;
    v55 = v1;
    v56 = v2;
    MEMORY[0x1EEE9AC00](v23);

    v24 = sub_181F66260(v3, v4, sub_181F66F00);
    if (v25)
    {
      v54 = 0;
      v55 = v1;
      v56 = v2;
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v26);

      result = sub_181F662E8(v3, v4, sub_181F66F4C);
      if (v28)
      {
        if (v12)
        {
          if (v1)
          {
            v13 = v2[3];
            if (v13 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v29 = 0;
            while (1)
            {
              v30 = v2[4];
              v31 = v29 + v30 >= v2[2] ? v2[2] : 0;
              *(v12 + 8 * v29) = v4[v29 + v30 - v31];
              if ((v1 - 1) == v29)
              {
                break;
              }

              result = swift_unknownObjectRetain();
              v13 = v2[3];
              if (++v29 >= v13)
              {
                goto LABEL_32;
              }
            }

            swift_unknownObjectRetain();
          }
        }

        else if (v1)
        {
LABEL_90:
          v27 = 0;
LABEL_91:
          if (v27 >= v1)
          {
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          if (v27 >= v2[3])
          {
LABEL_97:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v27 != v1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    v34 = v2[3];
    if (v34 < v1)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    MEMORY[0x1EEE9AC00](v33);
    v1 = v52;
    v51 = v35;
    v54 = v35;
    v55 = v34;
    v56 = v2;
    MEMORY[0x1EEE9AC00](v36);

    v37 = sub_181F66260(v3, v4, sub_181F67710);
    if ((v38 & 1) == 0)
    {

      goto LABEL_67;
    }

    v54 = v51;
    v55 = v34;
    v56 = v2;
    MEMORY[0x1EEE9AC00](v37);
    MEMORY[0x1EEE9AC00](v39);

    result = sub_181F662E8(v3, v4, sub_181F67728);
    if (v41)
    {
      v1 = v51;
      v42 = v53;
      if (v53 && v52)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
LABEL_88:
          __break(1u);
LABEL_89:

          __break(1u);
          goto LABEL_90;
        }

        if (v51 != v34)
        {
          v43 = (v52 - 1);
          v44 = v51;
          while (v34 != v44)
          {
            if (v44 >= v2[3])
            {
              goto LABEL_84;
            }

            v45 = v2[4];
            if (v44 + v45 >= v2[2])
            {
              v46 = v2[2];
            }

            else
            {
              v46 = 0;
            }

            v47 = v4[v44 + v45 - v46];
            ++v44;
            *v42 = v47;
            if (!v43)
            {
              result = swift_unknownObjectRetain();
              if (v44 == v34)
              {
                goto LABEL_66;
              }

              goto LABEL_71;
            }

            ++v42;
            swift_unknownObjectRetain();
            --v43;
            if (v34 == v44)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_83;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v1 = v51;
      v44 = v51 + v40;
      if (!__OFADD__(v51, v40))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v44 = v1;
LABEL_65:
    if (v44 == v34)
    {
LABEL_66:

LABEL_67:
      v48 = *(v11 + 24);
      v49 = __OFADD__(v48, v5);
      v50 = v48 + v5;
      if (!v49)
      {
        *(v11 + 24) = v50;
        return result;
      }

      goto LABEL_79;
    }

LABEL_71:
    if (v44 < v1 || v44 >= v34)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v44 >= v2[3])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    __break(1u);
    goto LABEL_75;
  }

  if (v7 < v6)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (__OFSUB__(v7, v6))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v19 = *(*v1 + 24);
  v20 = v19 + v5;
  if (__OFADD__(v19, v5))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if (*(*v1 + 16) < v20 || (v21 & 1) == 0)
  {
    sub_181CA4444(v21, v20, 0);
    v22 = *v1;
  }

  return sub_181CC4734(v22 + 16, v22 + 40, &v4[v6], v5, sub_181D8977C, sub_181F65CB8);
}

uint64_t ProtocolStack.transport.setter(_OWORD *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 32) = *a1;
  return sub_181A5301C(v3, v2);
}

uint64_t ProtocolStack.__allocating_init(noInternet:)(char a1)
{
  v2 = swift_allocObject();
  ProtocolStack.init(noInternet:)(a1);
  return v2;
}

uint64_t sub_181F619E0(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v7 = *v2;
  v6 = *(v2 + 8);
  if (!(v6 >> 62))
  {
    if (!(v3 >> 62))
    {
      sub_181B2C3E0(*a1, v3);
      sub_181B2C3E0(v7, v6);
      v12 = sub_181CC4EF0(v4, v5);
      sub_181AAD084(v7, v6);
      sub_181AAD084(v4, v3);
      return v12 & 1;
    }

    if (v3 >> 62 != 1)
    {

LABEL_14:
      sub_181AAD084(v11, v6);
      sub_181AAD084(v4, v3);
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_10;
  }

  if (v6 >> 62 != 1)
  {
    if (!(v3 >> 62))
    {

      goto LABEL_13;
    }

    if (v3 >> 62 != 1)
    {
      sub_181AAD084(*v2, *(v2 + 8));
      sub_181AAD084(v4, v3);
      v10 = 1;
      return v10 & 1;
    }

LABEL_10:
    sub_181B2C3E0(*a1, v3);
    sub_181B2C3E0(v7, v6);
LABEL_13:
    v11 = v7;
    goto LABEL_14;
  }

  if (v3 >> 62 != 1)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v14 = v5;
  v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  sub_181B2C3E0(v4, v3);
  sub_181B2C3E0(v7, v6);
  v10 = v9(v4, v3 & 0x3FFFFFFFFFFFFFFFLL, &v14, ObjectType, v6 & 0x3FFFFFFFFFFFFFFFLL);
  sub_181AAD084(v7, v6);
  sub_181AAD084(v4, v3);
  return v10 & 1;
}

uint64_t static ProtocolStack.ApplicationProtocol.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!(v3 >> 62))
  {
    if (!(v4 >> 62))
    {
      sub_181B2C3E0(*a2, a2[1]);
      sub_181B2C3E0(v2, v3);
      v8 = sub_181CC4EF0(v5, 0);
      goto LABEL_12;
    }

    if (v4 >> 62 != 1)
    {

LABEL_15:
      sub_181AAD084(v9, v3);
      sub_181AAD084(v5, v4);
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_10;
  }

  if (v3 >> 62 != 1)
  {
    if (!(v4 >> 62))
    {

      goto LABEL_14;
    }

    if (v4 >> 62 != 1)
    {
      sub_181AAD084(*a1, v3);
      sub_181AAD084(v5, v4);
      v10 = 1;
      return v10 & 1;
    }

LABEL_10:
    sub_181B2C3E0(*a2, a2[1]);
    sub_181B2C3E0(v2, v3);
LABEL_14:
    v9 = v2;
    goto LABEL_15;
  }

  if (v4 >> 62 != 1)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v12 = 0;
  v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  sub_181B2C3E0(v5, v4);
  sub_181B2C3E0(v2, v3);
  v8 = v7(v5, v4 & 0x3FFFFFFFFFFFFFFFLL, &v12, ObjectType, v3 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_12:
  v10 = v8;
  sub_181AAD084(v2, v3);
  sub_181AAD084(v5, v4);
  return v10 & 1;
}

uint64_t sub_181F61D2C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 56);
  if ((v3 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 48);
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return 0;
      }

      if (v3 >> 61 != 1 || v4 != a1)
      {
        return 0;
      }
    }

    else
    {
      if (v3 >> 61)
      {
        v10 = 0;
      }

      else
      {
        v10 = v4 == a1;
      }

      if (!v10)
      {
        return 0;
      }
    }
  }

  else if (v5 == 2)
  {
    if (v3 >> 61 != 2 || v4 != a1)
    {
      return 0;
    }
  }

  else if (v5 == 3)
  {
    if (v3 >> 61 != 3 || v4 != a1)
    {
      return 0;
    }
  }

  else if (v5 != 6 || a1 || a2 != 0xC000000000000000 || (v3 & 0xE000000000000000) != 0xC000000000000000 || v4 || v3 != 0xC000000000000000)
  {
    return 0;
  }

  return 1;
}

uint64_t _s7Network13ProtocolStackC011ApplicationB0O4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (!(v2 >> 62))
  {
    swift_beginAccess();
    v10 = *(v3 + 16);
    v11 = *(v3 + 17);
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    v12 = *(v3 + 40);
    MEMORY[0x1865DB070](v10);
    MEMORY[0x1865DB070](v11);
    if (v12)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v7, v8, 1);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (v2 >> 62 == 1)
  {
    v4 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    (*(v4 + 96))(v14, ObjectType, v4);
    v6 = BYTE1(v14[0]);
    v7 = v14[1];
    v8 = v14[2];
    v9 = v15;
    MEMORY[0x1865DB070](LOBYTE(v14[0]));
    MEMORY[0x1865DB070](v6);
    if (v9)
    {
      MEMORY[0x1865DB070](1);
LABEL_7:
      sub_182AD30E8();
      return sub_181F48350(v7, v8, 1);
    }

LABEL_8:
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v7);
    sub_182AD30E8();
    sub_181F48350(v7, v8, 0);
  }

  return MEMORY[0x1865DB070](0);
}

uint64_t sub_181F61FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v8 == 3 || (v9 = vdupq_n_s64(*v8 | (*(v8 + 4) << 32)), v10 = vshlq_u64(v9, xmmword_182AE69D0), v14 = *v8, *v9.i8 = vmovn_s64(vshlq_u64(v9, xmmword_182AE69E0)), *v10.i8 = vmovn_s64(v10), v10.i16[1] = v10.i16[2], v10.i16[2] = v9.i16[0], v10.i16[3] = v9.i16[2], *v9.i8 = vmovn_s16(v10), v15 = v9.i32[0], v13 = 0, v12 = 0, result = _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v14, &v12, *v9.i8, *v10.i8), (result & 1) == 0))
    {
      v11 = 0;
      a1 = v7;
    }

    else
    {
      result = swift_unknownObjectRelease();
      a1 = 0;
      v11 = 0x8000000000000000;
    }
  }

  else
  {
    v11 = a2 | 0x4000000000000000;
  }

  *a3 = a1;
  a3[1] = v11;
  return result;
}

uint64_t sub_181F62120(uint64_t (*a1)(void *))
{
  v5 = *v1;
  sub_182AD44E8();
  a1(v4);
  return sub_182AD4558();
}

uint64_t sub_181F6218C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v7 = *v3;
  sub_182AD44E8();
  a3(v6);
  return sub_182AD4558();
}

uint64_t sub_181F621F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v8 = *v4;
  sub_182AD44E8();
  a4(v7);
  return sub_182AD4558();
}

uint64_t ProtocolStack.TransportProtocol.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v2 >> 61;
  if ((v2 >> 61) <= 2 || v4 <= 4)
  {
    swift_beginAccess();
    v5 = *(v3 + 16);
    v6 = *(v3 + 17);
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    v9 = *(v3 + 40);
    MEMORY[0x1865DB070](v5);
    MEMORY[0x1865DB070](v6);
    if (v9)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v7, v8, 1);
LABEL_5:
      sub_182AD30E8();
      return sub_181F48350(v7, v8, 1);
    }

LABEL_9:
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v7);
    sub_182AD30E8();
    sub_181F48350(v7, v8, 0);
  }

  if (v4 == 5)
  {
    v11 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    (*(v11 + 96))(v15, ObjectType, v11);
    v13 = BYTE1(v15[0]);
    v7 = v15[1];
    v8 = v15[2];
    v14 = v16;
    MEMORY[0x1865DB070](LOBYTE(v15[0]));
    MEMORY[0x1865DB070](v13);
    if (v14)
    {
      MEMORY[0x1865DB070](1);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return MEMORY[0x1865DB070](0);
}

uint64_t sub_181F62414(__int128 *a1, _OWORD *a2, uint64_t (*a3)(_OWORD *, char *))
{
  v3 = *a1;
  v6[0] = *a2;
  v6[1] = v3;
  v5 = 0;
  return a3(v6, &v5) & 1;
}

uint64_t sub_181F62460(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 61;
  if ((v4 >> 61) <= 2 || v6 <= 4)
  {
    v7 = *(v5 + 56);
    if ((v7 & 0x1000000000000000) == 0)
    {
      v8 = *(v5 + 48);
      v9 = v3 >> 61;
      if ((v3 >> 61) <= 1)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_28;
          }

          if (v7 >> 61 != 1 || v2 != v8)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v7 >> 61)
          {
            v17 = 0;
          }

          else
          {
            v17 = v2 == v8;
          }

          if (!v17)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v9 == 2)
      {
        if (v7 >> 61 != 2 || v2 != v8)
        {
          goto LABEL_28;
        }
      }

      else if (v9 == 3)
      {
        if (v7 >> 61 != 3 || v2 != v8)
        {
          goto LABEL_28;
        }
      }

      else if (v9 != 6 || v2 || v3 != 0xC000000000000000 || (v7 & 0xE000000000000000) != 0xC000000000000000 || v8 || v7 != 0xC000000000000000)
      {
        goto LABEL_28;
      }

      v12 = 1;
      return v12 & 1;
    }

LABEL_28:
    v12 = 0;
    return v12 & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_28;
  }

  v10 = v4 & 0x1FFFFFFFFFFFFFFFLL;
  ObjectType = swift_getObjectType();
  v18[0] = v2;
  v18[1] = v3;
  v12 = (*(v10 + 48))(v18, ObjectType, v10);
  return v12 & 1;
}

uint64_t sub_181F62628(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, char *))
{
  v5 = *a1;
  v8[0] = *a2;
  v8[1] = v5;
  v7 = 0;
  return (a5)(v8, &v7, a3, a4) & 1;
}

uint64_t ProtocolStack.LinkProtocol.hash(into:)(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x1865DB070](0);
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v2 + 96))(v9, ObjectType, v2);
  v4 = BYTE1(v9[0]);
  v5 = v9[1];
  v6 = v9[2];
  v7 = v10;
  MEMORY[0x1865DB070](LOBYTE(v9[0]));
  MEMORY[0x1865DB070](v4);
  if (v7)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();

    return sub_181F48350(v5, v6, 1);
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v5);
    sub_182AD30E8();
    sub_181F48350(v5, v6, 0);
  }
}

uint64_t ProtocolStack.LinkProtocol.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_182AD44E8();
  if (v2)
  {
    ObjectType = swift_getObjectType();
    (*(v1 + 96))(v9, ObjectType, v1);
    v4 = BYTE1(v9[0]);
    v5 = v9[1];
    v6 = v9[2];
    v7 = v10;
    MEMORY[0x1865DB070](LOBYTE(v9[0]));
    MEMORY[0x1865DB070](v4);
    if (v7)
    {
      MEMORY[0x1865DB070](1);
      sub_182AD30E8();
      sub_181F48350(v5, v6, 1);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v5);
      sub_182AD30E8();
      sub_181F48350(v5, v6, 0);
    }
  }

  else
  {
    MEMORY[0x1865DB070](0);
  }

  return sub_182AD4558();
}

uint64_t sub_181F628F4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_182AD44E8();
  if (v3)
  {
    ObjectType = swift_getObjectType();
    (*(v2 + 96))(v10, ObjectType, v2);
    v5 = BYTE1(v10[0]);
    v6 = v10[1];
    v7 = v10[2];
    v8 = v11;
    MEMORY[0x1865DB070](LOBYTE(v10[0]));
    MEMORY[0x1865DB070](v5);
    if (v8)
    {
      MEMORY[0x1865DB070](1);
      sub_182AD30E8();
      sub_181F48350(v6, v7, 1);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v6);
      sub_182AD30E8();
      sub_181F48350(v6, v7, 0);
    }
  }

  else
  {
    MEMORY[0x1865DB070](0);
  }

  return sub_182AD4558();
}

uint64_t (*ProtocolStack.transport.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  ProtocolStack.transport.getter(a1);
  return sub_181F62A5C;
}

uint64_t sub_181F62A5C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  if (a2)
  {
    sub_181AC8268(v4, v3);
    sub_181A5301C(v5, v6);

    return sub_181A53008(v4, v3);
  }

  else
  {

    return sub_181A5301C(v5, v6);
  }
}

void ProtocolStack.internet.getter(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  a1[1] = v4;
  sub_181B687F0(v3, v4);
}

uint64_t ProtocolStack.internet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return sub_181A52FE0(v4, v5);
}

uint64_t ProtocolStack.link.setter(_OWORD *a1)
{
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  *(v1 + 64) = *a1;
  return sub_181AC3890(v3, v2);
}

uint64_t (*ProtocolStack.link.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  ProtocolStack.link.getter(a1);
  return sub_181F62C34;
}

uint64_t sub_181F62C34(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = *a1;
  *(v2 + 72) = v3;
  if (a2)
  {
    sub_181AB78DC(v4);
    sub_181AC3890(v5, v6);

    return sub_181B03DAC(v4);
  }

  else
  {

    return sub_181AC3890(v5, v6);
  }
}

uint64_t ProtocolStack.prepend(applicationProtocol:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0, &qword_182AE6A10);
  v4 = swift_dynamicCastClass();
  v5 = a2 | 0x4000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v9[0] = v6;
  v9[1] = v7;
  swift_unknownObjectRetain();
  sub_181B2DB04(v9);
  return sub_181AAD084(v6, v7);
}

uint64_t sub_181F62D48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(sub_181AC9084() + 24);

  if (v8 < 0)
  {
    goto LABEL_93;
  }

  v64 = v5;
  v65 = v4;
  v10 = (v6 >> 62);
  v68 = v2;
  if (v8)
  {
    v11 = 0;
    v12 = v6 & 0xC000000000000000;
    v66 = v8;
    do
    {
      v13 = *(v3 + 16);
      if (v11 >= v13[3])
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v14 = v13[4];
      if (v11 + v14 >= v13[2])
      {
        v15 = v13[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = &v13[2 * v11 + 2 * (v14 - v15)];
      v17 = v16[5];
      v18 = v16[6];
      if (v18 >> 62)
      {
        if (v18 >> 62 != 1)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              sub_181AAD084(v17, v18);
              result = sub_181AAD084(v7, v6);
LABEL_50:
              v36 = *(v3 + 16);
              v37 = v36[3];
              if (v37 >= v11)
              {
                v38 = v37 + 1;
                if (!__OFADD__(v37, 1))
                {

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (v36[2] >= v38 && (result & 1) != 0)
                  {
                    v39 = v36 + 5;
                    if (v11)
                    {
                      goto LABEL_55;
                    }

LABEL_58:
                    v40 = v36[4];
                    if (v40)
                    {
                      v41 = __OFSUB__(v40, 1);
                      v42 = v40 - 1;
                      v44 = v64;
                      v43 = v65;
                      if (!v41)
                      {
                        goto LABEL_80;
                      }

                      __break(1u);
LABEL_62:

                      result = sub_18207F4F8(v69, v39, 1uLL, v11, v36 + 2);
                      v45 = v69[0];
                      if (!v69[0])
                      {
                        goto LABEL_103;
                      }

                      v46 = v64;
                      v47 = v65;
                      *v69[0] = v64;
                      *(v45 + 8) = v65;
                    }

                    else
                    {
                      v56 = v36[2];
                      v41 = __OFSUB__(v56, 1);
                      v42 = v56 - 1;
                      v44 = v64;
                      v43 = v65;
                      if (v41)
                      {
                        goto LABEL_101;
                      }

LABEL_80:
                      v57 = &v39[2 * v42];
                      *v57 = v44;
                      v57[1] = v43;
                      v36[4] = v42;
                      v58 = v36[3];
                      v41 = __OFADD__(v58, 1);
                      v59 = v58 + 1;
                      if (v41)
                      {
                        goto LABEL_99;
                      }

                      v36[3] = v59;

                      v46 = v44;
                      v47 = v43;
                    }

                    sub_181B2C3E0(v46, v47);
                  }

                  else
                  {
                    result = sub_181B2C3FC(result, v38, 0);
                    v39 = v36 + 5;
                    if (!v11)
                    {
                      goto LABEL_58;
                    }

LABEL_55:
                    if (v36[3] != v11)
                    {
                      goto LABEL_62;
                    }

                    sub_18207F280(v64, v65, v36 + 2, v39);
                  }

                  *(v3 + 16) = v36;
                }

LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

LABEL_95:
              __break(1u);
              goto LABEL_96;
            }

            swift_unknownObjectRetain();
          }

          else
          {
LABEL_17:
          }

          goto LABEL_5;
        }

        if (v12 != 0x4000000000000000)
        {
          goto LABEL_4;
        }

        ObjectType = swift_getObjectType();
        LOBYTE(v69[0]) = 0;
        v10 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        sub_181B2C3E0(v17, v18);
        sub_181B2C3E0(v7, v6);
        sub_181B2C3E0(v17, v18);
        v20 = ObjectType;
        v12 = 0x4000000000000000;
        v8 = v66;
        v3 = v68;
        v21 = v10(v7, v6 & 0x3FFFFFFFFFFFFFFFLL, v69, v20, v18 & 0x3FFFFFFFFFFFFFFFLL);
        LODWORD(v10) = v6 >> 62;
      }

      else
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_17;
          }

LABEL_4:
          sub_181B2C3E0(v7, v6);
          sub_181B2C3E0(v17, v18);
LABEL_5:
          sub_181AAD084(v17, v18);
          result = sub_181AAD084(v7, v6);
          goto LABEL_6;
        }

        sub_181B2C3E0(v17, v18);
        sub_181B2C3E0(v7, v6);
        sub_181B2C3E0(v17, v18);
        v21 = sub_181CC4EF0(v7, 0);
      }

      v22 = v21;
      sub_181AAD084(v17, v18);
      sub_181AAD084(v17, v18);
      result = sub_181AAD084(v7, v6);
      if (v22)
      {
        goto LABEL_50;
      }

LABEL_6:
      ++v11;
    }

    while (v8 != v11);
  }

  v23 = *(sub_181A54748() + 24);

  if (v23 < 0)
  {
    goto LABEL_94;
  }

  if (!v23)
  {
    return result;
  }

  v24 = 0;
  v25 = v6 & 0xC000000000000000;
  v67 = v23;
  while (1)
  {
    v26 = *(v3 + 24);
    if (v24 >= v26[3])
    {
      goto LABEL_92;
    }

    v27 = v26[4];
    v28 = v24 + v27 >= v26[2] ? v26[2] : 0;
    v29 = &v26[2 * v24 + 2 * (v27 - v28)];
    v30 = v29[5];
    v31 = v29[6];
    if (v31 >> 62)
    {
      break;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_41;
      }

LABEL_28:
      sub_181B2C3E0(v7, v6);
      sub_181B2C3E0(v30, v31);
LABEL_29:
      sub_181AAD084(v30, v31);
      result = sub_181AAD084(v7, v6);
      goto LABEL_30;
    }

    sub_181B2C3E0(v30, v31);
    sub_181B2C3E0(v7, v6);
    sub_181B2C3E0(v30, v31);
    v34 = sub_181CC4EF0(v7, 0);
LABEL_47:
    v35 = v34;
    sub_181AAD084(v30, v31);
    sub_181AAD084(v30, v31);
    result = sub_181AAD084(v7, v6);
    if (v35)
    {
      goto LABEL_65;
    }

LABEL_30:
    if (v23 == ++v24)
    {
      return result;
    }
  }

  if (v31 >> 62 == 1)
  {
    if (v25 != 0x4000000000000000)
    {
      goto LABEL_28;
    }

    v32 = swift_getObjectType();
    LOBYTE(v69[0]) = 0;
    v10 = *((v31 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_181B2C3E0(v30, v31);
    sub_181B2C3E0(v7, v6);
    sub_181B2C3E0(v30, v31);
    v33 = v32;
    v25 = 0x4000000000000000;
    v23 = v67;
    v34 = v10(v7, v6 & 0x3FFFFFFFFFFFFFFFLL, v69, v33, v31 & 0x3FFFFFFFFFFFFFFFLL);
    LODWORD(v10) = v6 >> 62;
    v3 = v68;
    goto LABEL_47;
  }

  if (!v10)
  {
LABEL_41:

    goto LABEL_29;
  }

  if (v10 == 1)
  {
    swift_unknownObjectRetain();
    goto LABEL_29;
  }

  sub_181AAD084(v30, v31);
  result = sub_181AAD084(v7, v6);
LABEL_65:
  v48 = *(v3 + 24);
  v49 = v48[3];
  if (v49 < v24)
  {
    goto LABEL_97;
  }

  v50 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v48[2] < v50 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v50, 0);
    }

    if (v24)
    {
      if (v48[3] == v24)
      {
        sub_18207F280(v64, v65, v48 + 2, (v48 + 5));
        goto LABEL_87;
      }

LABEL_77:

      result = sub_18207F4F8(v69, v48 + 5, 1uLL, v24, v48 + 2);
      v55 = v69[0];
      if (!v69[0])
      {
        goto LABEL_104;
      }

      *v69[0] = v64;
      *(v55 + 8) = v65;
      sub_181B2C3E0(v64, v65);
    }

    else
    {
      v52 = v48[4];
      if (v52)
      {
        v41 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        result = v64;
        v54 = v65;
        if (v41)
        {
          __break(1u);
          goto LABEL_77;
        }
      }

      else
      {
        v60 = v48[2];
        v41 = __OFSUB__(v60, 1);
        v53 = v60 - 1;
        result = v64;
        v54 = v65;
        if (v41)
        {
          goto LABEL_102;
        }
      }

      v61 = &v48[2 * v53 + 5];
      *v61 = result;
      v61[1] = v54;
      v48[4] = v53;
      v62 = v48[3];
      v41 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v41)
      {
        goto LABEL_100;
      }

      v48[3] = v63;
      sub_181B2C3E0(result, v54);
LABEL_87:
    }

    *(v3 + 24) = v48;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_181F633C8(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  sub_181F49A24(v5, v6, v7);
  v32 = sub_181AC9084();
  v31 = v4;
  v8 = sub_181F671B4(&v32, v3 | (v4 << 8), v5, v6, v7);
  result = sub_181F48350(v5, v6, v7);
  v10 = v32;
  v11 = *(v32 + 24);
  if (v11 < v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v8 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E5EE8();
    v10 = v32;
  }

  sub_18208064C(v8, v11, v10 + 16, v10 + 40);
  v2[2] = v10;

  sub_181F49A24(v5, v6, v7);
  v32 = sub_181A54748();
  v12 = sub_181F671B4(&v32, v3 | (v4 << 8), v5, v6, v7);
  result = sub_181F48350(v5, v6, v7);
  v13 = v32;
  v14 = *(v32 + 24);
  if (v14 < v12)
  {
    goto LABEL_24;
  }

  if (v12 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E5EE8();
    v13 = v32;
  }

  sub_18208064C(v12, v14, v13 + 16, v13 + 40);
  v2[3] = v13;

  ProtocolStack.transport.getter(&v32);
  v15 = v33;
  if ((~v33 & 0xF000000000000007) != 0)
  {
    v16 = v32;
    v36 = v32;
    v37 = v33;
    LOBYTE(v32) = v3;
    BYTE1(v32) = v31;
    v33 = v5;
    v34 = v6;
    v35 = v7;
    v17 = sub_181B37BFC(&v32);
    sub_181A53008(v16, v15);
    if (v17)
    {
      v18 = v2[4];
      v19 = v2[5];
      *(v2 + 2) = xmmword_182AE3CC0;
      sub_181A5301C(v18, v19);
    }
  }

  v20 = v2[13];
  if ((~v20 & 0xF000000000000007) != 0)
  {
    v36 = v2[12];
    v37 = v20;
    LOBYTE(v32) = v3;
    BYTE1(v32) = v31;
    v33 = v5;
    v34 = v6;
    v35 = v7;
    if (sub_181B37BFC(&v32))
    {
      v21 = v2[12];
      v22 = v2[13];
      *(v2 + 6) = xmmword_182AE3CC0;
      sub_181A53008(v21, v22);
    }
  }

  swift_beginAccess();
  if ((~v2[7] & 0xF000000000000007) != 0)
  {
    LOBYTE(v32) = v3;
    BYTE1(v32) = v31;
    v33 = v5;
    v34 = v6;
    v35 = v7;
    if (sub_181ACC890(&v32))
    {
      v23 = v2[6];
      v24 = v2[7];
      *(v2 + 3) = xmmword_182AE3CC0;
      sub_181A52FE0(v23, v24);
    }
  }

  result = ProtocolStack.link.getter(&v32);
  v25 = v32;
  if (v32 >= 2)
  {
    v26 = v33;
    ObjectType = swift_getObjectType();
    LOBYTE(v32) = v3;
    BYTE1(v32) = v31;
    v33 = v5;
    v34 = v6;
    v35 = v7;
    v28 = (*(v26 + 40))(&v32, ObjectType, v26);
    result = sub_181B03DAC(v25);
    if (v28)
    {
      v29 = v2[8];
      v30 = v2[9];
      *(v2 + 4) = xmmword_182AE69F0;
      return sub_181AC3890(v29, v30);
    }
  }

  return result;
}

uint64_t sub_181F636F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_181AC9084();
  v5 = v3;
  v6 = v3[4];
  v7 = v3[3] + v6;
  if (v3[2] < v7)
  {
    v7 = v3[2];
  }

  v59 = v3;
  v60 = v6;
  v61 = v7;
  while (1)
  {
    if (v6 != v7)
    {
      goto LABEL_9;
    }

    if ((sub_181AC81FC(v4) & 1) == 0)
    {
      break;
    }

    v5 = v59;
    v6 = v60;
LABEL_9:
    v8 = v6 + 1;
    v60 = v6 + 1;
    v9 = v5 + 16 * v6;
    v10 = *(v9 + 40);
    v11 = *(v9 + 48);
    if (v11 >> 62)
    {
      if (v11 >> 62 == 1)
      {
        v12 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        ObjectType = swift_getObjectType();
        v14 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        swift_unknownObjectRetain();
        if (v14(a1, ObjectType, v11 & 0x3FFFFFFFFFFFFFFFLL))
        {

LABEL_37:
          v38 = a2;
          *a2 = v10;
          a2[1] = v12;
LABEL_45:
          v43 = 3;
LABEL_46:
          *(v38 + 16) = v43;
          return result;
        }

LABEL_4:
        sub_181AAD084(v10, v11);
      }
    }

    else
    {
      v15 = *(v10 + 56);
      v16 = ~v15 & 0x1000000000000007;
      v17 = v15 & 0x1000000000000000;
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = *(v10 + 48);

        if (v19 == a1)
        {

          result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);
          v12 = result;
          goto LABEL_37;
        }

        goto LABEL_4;
      }
    }

    v7 = v61;
    v6 = v8;
  }

  v20 = sub_181A54748();
  v22 = v20;
  v23 = v20[4];
  v24 = v20[3] + v23;
  if (v20[2] < v24)
  {
    v24 = v20[2];
  }

  v59 = v20;
  v60 = v23;
  v61 = v24;
  while (2)
  {
    if (v23 != v24)
    {
LABEL_27:
      v25 = v23 + 1;
      v60 = v23 + 1;
      v26 = v22 + 16 * v23;
      v27 = *(v26 + 40);
      v28 = *(v26 + 48);
      if (v28 >> 62)
      {
        if (v28 >> 62 != 1)
        {
          goto LABEL_23;
        }

        v29 = v28 & 0x3FFFFFFFFFFFFFFFLL;
        v30 = swift_getObjectType();
        v31 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        swift_unknownObjectRetain();
        if (v31(a1, v30, v28 & 0x3FFFFFFFFFFFFFFFLL))
        {

LABEL_44:
          v38 = a2;
          *a2 = v27;
          a2[1] = v29;
          goto LABEL_45;
        }
      }

      else
      {
        v32 = *(v27 + 56);
        v33 = ~v32 & 0x1000000000000007;
        v34 = v32 & 0x1000000000000000;
        if (v33)
        {
          v35 = v34 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          goto LABEL_23;
        }

        v36 = *(v27 + 48);

        if (v36 == a1)
        {

          result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);
          v29 = result;
          goto LABEL_44;
        }
      }

      sub_181AAD084(v27, v28);
LABEL_23:
      v24 = v61;
      v23 = v25;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v21))
  {
    v22 = v59;
    v23 = v60;
    goto LABEL_27;
  }

  v39 = v57;
  ProtocolStack.transport.getter(&v59);
  v40 = v60;
  if ((~v60 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  v41 = v59;
  if (!sub_181BACEAC(a1))
  {
    sub_181A53008(v41, v40);
    v39 = v57;
    goto LABEL_48;
  }

  v42 = v40 >> 61;
  if ((v40 >> 61) <= 2)
  {
    goto LABEL_60;
  }

  if (v42 <= 4)
  {
    goto LABEL_52;
  }

  v39 = v57;
  if (v42 == 5)
  {
LABEL_77:
    result = v40 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_78:
    v44 = a2;
    goto LABEL_79;
  }

LABEL_48:
  v40 = *(v39 + 104);
  if ((~v40 & 0xF000000000000007) == 0)
  {
    goto LABEL_55;
  }

  v41 = *(v39 + 96);
  v59 = v41;
  v60 = v40;
  sub_181AACFF4(v41, v40);
  if (!sub_181BACEAC(a1))
  {
    sub_181A53008(v41, v40);
    goto LABEL_55;
  }

  v42 = v40 >> 61;
  if ((v40 >> 61) <= 2)
  {
LABEL_60:
    if (!v42)
    {
      result = sub_181AA8428(&qword_1ED40F850, &unk_1EA838710, &qword_182AE4BA0);
      goto LABEL_78;
    }

    v44 = a2;
    if (v42 == 1)
    {
      result = sub_181AA8428(&unk_1ED40FF50, &unk_1EA838DE0, &unk_182AE6F00);
    }

    else
    {
      result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);
    }

LABEL_79:
    *v44 = v41;
    v44[1] = result;
    *(v44 + 16) = 2;
  }

  else
  {
    if (v42 <= 4)
    {
LABEL_52:
      v44 = a2;
      if (v42 == 3)
      {
        result = sub_181AA8428(qword_1ED40FB50, &unk_1EA838750, &unk_182AE4BD0);
      }

      else
      {
        result = sub_181AA8428(&unk_1EA838AE0, &unk_1EA838DD0, &qword_182AE4BE0);
      }

      goto LABEL_79;
    }

    if (v42 == 5)
    {
      goto LABEL_77;
    }

LABEL_55:
    swift_beginAccess();
    v45 = *(v57 + 56);
    if ((~v45 & 0xF000000000000007) != 0)
    {
      v46 = *(v57 + 48);
      if (v45 >> 62)
      {
        if (v45 >> 62 == 1)
        {
          v47 = v45 & 0x3FFFFFFFFFFFFFFFLL;
          v48 = swift_getObjectType();
          v49 = *((v45 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          sub_181B2C3E0(v46, v45);
          result = v49(a1, v48, v45 & 0x3FFFFFFFFFFFFFFFLL);
          if (result)
          {
LABEL_81:
            v38 = a2;
            *a2 = v46;
            a2[1] = v47;
            v43 = 1;
            goto LABEL_46;
          }

LABEL_66:
          sub_181A52FE0(v46, v45);
        }
      }

      else
      {
        v50 = *(v46 + 56);
        if ((~v50 & 0x1000000000000007) != 0 && (v50 & 0x1000000000000000) != 0)
        {
          v51 = *(v46 + 48);
          sub_181B2C3E0(*(v57 + 48), *(v57 + 56));
          if (v51 == a1)
          {
            result = sub_181AA8428(&qword_1ED410260, &qword_1EA838760, &qword_182AE4BE8);
            v47 = result;
            goto LABEL_81;
          }

          goto LABEL_66;
        }
      }
    }

    result = ProtocolStack.link.getter(v58);
    v52 = v58[0];
    if (v58[0] >= 2uLL)
    {
      v53 = v58[1];
      v54 = swift_getObjectType();
      result = (*(v53 + 56))(a1, v54, v53);
      if (result)
      {
        v55 = a2;
        *a2 = v52;
        a2[1] = v53;
        goto LABEL_72;
      }

      result = sub_181B03DAC(v52);
    }

    v55 = a2;
    *a2 = 0;
    a2[1] = 0;
LABEL_72:
    *(v55 + 16) = 0;
  }

  return result;
}

uint64_t sub_181F63C90(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v47 = *(a1 + 2);
  v49 = a1[24];
  v4 = sub_181AC9084();
  v6 = v4;
  v7 = v4[4];
  v8 = v4[3] + v7;
  if (v4[2] < v8)
  {
    v8 = v4[2];
  }

  v54 = v4;
  v55 = v7;
  v56 = v8;
  v48 = v3;
  v45 = v3;
  v46 = v1;
  if (v7 == v8)
  {
LABEL_27:
    if (sub_181AC81FC(v5))
    {
      v6 = v54;
      v7 = v55;
      goto LABEL_6;
    }

    v18 = sub_181A54748();
    v20 = v18;
    v21 = v18[4];
    v22 = v18[3] + v21;
    if (v18[2] < v22)
    {
      v22 = v18[2];
    }

    v54 = v18;
    v55 = v21;
    v56 = v22;
    while (v21 != v56)
    {
LABEL_33:
      v23 = &v20[2 * v21++];
      v55 = v21;
      v10 = v23[5];
      v24 = v23[6];
      if (v24 >> 62)
      {
        if (v24 >> 62 == 1)
        {
          ObjectType = swift_getObjectType();
          LOBYTE(v50) = v1;
          BYTE1(v50) = v2;
          v51 = v48;
          v52 = v47;
          v53 = v49;
          v26 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          swift_unknownObjectRetain();
          if (v26(&v50, ObjectType, v24 & 0x3FFFFFFFFFFFFFFFLL))
          {
            goto LABEL_65;
          }

          sub_181AAD084(v10, v24);
          v1 = v46;
        }
      }

      else
      {
        swift_beginAccess();
        if (*(v10 + 16) == v1 && *(v10 + 17) == v2)
        {
          v28 = *(v10 + 24);
          if (*(v10 + 40))
          {
            if (v49)
            {
              v29 = v28 == v48 && *(v10 + 32) == v47;
              if (v29 || (sub_182AD4268() & 1) != 0)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
            v30 = v49;
            if (v45 != v28)
            {
              v30 = 1;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }
      }
    }

    if (sub_181AC81FC(v19))
    {
      v20 = v54;
      v21 = v55;
      goto LABEL_33;
    }

    ProtocolStack.transport.getter(&v50);
    v31 = v51;
    if ((~v51 & 0xF000000000000007) != 0)
    {
      v10 = v50;
      v54 = v50;
      v55 = v51;
      LOBYTE(v50) = v1;
      BYTE1(v50) = v2;
      v51 = v48;
      v52 = v47;
      v53 = v49;
      if (sub_181B37BFC(&v50))
      {
        goto LABEL_60;
      }

      sub_181A53008(v10, v31);
    }

    v31 = v44[13];
    if ((~v31 & 0xF000000000000007) != 0)
    {
      v10 = v44[12];
      v54 = v10;
      v55 = v31;
      LOBYTE(v50) = v1;
      BYTE1(v50) = v2;
      v51 = v48;
      v52 = v47;
      v53 = v49;
      sub_181AACFF4(v10, v31);
      if (sub_181B37BFC(&v50))
      {
LABEL_60:
        v32 = v31 >> 61;
        if ((v31 >> 61) <= 2)
        {
          if (v32)
          {
            if (v32 == 1)
            {
              v33 = &unk_1ED40FF50;
              v34 = &unk_1EA838DE0;
              v35 = &unk_182AE6F00;
            }

            else
            {
              v33 = &qword_1ED40F830;
              v34 = &qword_1EA838AB0;
              v35 = &qword_182AE6A10;
            }
          }

          else
          {
            v33 = &qword_1ED40F850;
            v34 = &unk_1EA838710;
            v35 = &qword_182AE4BA0;
          }
        }

        else
        {
          if (v32 > 4)
          {
            if (v32 != 5)
            {
              return 0;
            }

            return v10;
          }

          if (v32 == 3)
          {
            v33 = qword_1ED40FB50;
            v34 = &unk_1EA838750;
            v35 = &unk_182AE4BD0;
          }

          else
          {
            v33 = &unk_1EA838AE0;
            v34 = &unk_1EA838DD0;
            v35 = &qword_182AE4BE0;
          }
        }

        goto LABEL_88;
      }

      sub_181A53008(v10, v31);
    }

    swift_beginAccess();
    v37 = v44[7];
    if ((~v37 & 0xF000000000000007) != 0)
    {
      v10 = v44[6];
      LOBYTE(v50) = v1;
      BYTE1(v50) = v2;
      v51 = v48;
      v52 = v47;
      v53 = v49;
      sub_181B2C3E0(v10, v37);
      if (sub_181ACC890(&v50))
      {
        if (v37 >> 62)
        {
          if (v37 >> 62 != 1)
          {
            if (qword_1ED4102F0 != -1)
            {
              swift_once();
            }

            v40 = *(&xmmword_1ED411D60 + 1);
            v41 = unk_1ED411D70;
            v42 = byte_1ED411D78;
            v43 = xmmword_1ED411D60;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760, &qword_182AE4BE8);
            swift_allocObject();
            v10 = sub_181BB68A0(v43, v40, v41, v42, 0);
            sub_181AA8428(&qword_1ED410260, &qword_1EA838760, &qword_182AE4BE8);
            sub_181F49A24(v40, v41, v42);
          }

          return v10;
        }

        v33 = &qword_1ED410260;
        v34 = &qword_1EA838760;
        v35 = &qword_182AE4BE8;
LABEL_88:
        sub_181AA8428(v33, v34, v35);
        return v10;
      }

      sub_181A52FE0(v10, v37);
    }

    ProtocolStack.link.getter(&v50);
    v10 = v50;
    if (v50 >= 2)
    {
      v38 = v51;
      v39 = swift_getObjectType();
      LOBYTE(v50) = v1;
      BYTE1(v50) = v2;
      v51 = v48;
      v52 = v47;
      v53 = v49;
      if ((*(v38 + 40))(&v50, v39, v38))
      {
        return v10;
      }

      sub_181B03DAC(v10);
    }

    return 0;
  }

  while (1)
  {
LABEL_6:
    v9 = &v6[2 * v7++];
    v55 = v7;
    v10 = v9[5];
    v11 = v9[6];
    if (v11 >> 62)
    {
      if (v11 >> 62 == 1)
      {
        v12 = swift_getObjectType();
        LOBYTE(v50) = v1;
        BYTE1(v50) = v2;
        v51 = v48;
        v52 = v47;
        v53 = v49;
        v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        if (v13(&v50, v12, v11 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_65;
        }

        sub_181AAD084(v10, v11);
        v1 = v46;
      }

      goto LABEL_26;
    }

    swift_beginAccess();
    if (*(v10 + 16) != v1 || *(v10 + 17) != v2)
    {
      goto LABEL_26;
    }

    v15 = *(v10 + 24);
    if ((*(v10 + 40) & 1) == 0)
    {
      break;
    }

    if (v49)
    {
      v16 = v15 == v48 && *(v10 + 32) == v47;
      if (v16 || (sub_182AD4268() & 1) != 0)
      {
        goto LABEL_64;
      }
    }

LABEL_26:
    if (v7 == v56)
    {
      goto LABEL_27;
    }
  }

  v17 = v49;
  if (v45 != v15)
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_26;
  }

LABEL_64:
  sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0, &qword_182AE6A10);

LABEL_65:

  return v10;
}

uint64_t sub_181F6433C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_181AC9084();
  v5 = v3;
  v6 = v3[4];
  v7 = v3[3] + v6;
  if (v3[2] < v7)
  {
    v7 = v3[2];
  }

  v51 = v3;
  v52 = v6;
  v53 = v7;
  v8 = v2 >> 61;
  v47 = v2;
  v48 = v1;
  if (v1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v2 == 0xC000000000000000;
  }

  v10 = v9;
  v46 = v10;
  while (1)
  {
    if (v6 != v7)
    {
      goto LABEL_19;
    }

    if ((sub_181AC81FC(v4) & 1) == 0)
    {
      break;
    }

    v5 = v51;
    v6 = v52;
LABEL_19:
    v13 = v5 + 16 * v6++;
    v52 = v6;
    v14 = *(v13 + 40);
    v15 = *(v13 + 48);
    if (v15 >> 62)
    {
      if (v15 >> 62 != 1)
      {
        goto LABEL_15;
      }

      ObjectType = swift_getObjectType();
      v49 = v48;
      v50 = v47;
      v17 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      swift_unknownObjectRetain();
      if (v17(&v49, ObjectType, v15 & 0x3FFFFFFFFFFFFFFFLL))
      {
LABEL_67:

        return v14;
      }

      goto LABEL_22;
    }

    v18 = *(v14 + 56);
    if ((v18 & 0x1000000000000000) == 0)
    {
      v19 = *(v14 + 48);
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_15;
          }

          v11 = v18 >> 61 == 1;
        }

        else
        {
          v11 = v18 >> 61 == 0;
        }

        goto LABEL_11;
      }

      if (v8 == 2)
      {
        v11 = v18 >> 61 == 2;
        goto LABEL_11;
      }

      if (v8 == 3)
      {
        v11 = v18 >> 61 == 3;
LABEL_11:
        if (v11 && v48 == v19)
        {
LABEL_77:

LABEL_78:

LABEL_79:
          v35 = &qword_1ED40F830;
          v36 = &qword_1EA838AB0;
          v37 = &qword_182AE6A10;
          goto LABEL_80;
        }

        goto LABEL_15;
      }

      if (v8 == 6 && (v46 & 1) != 0)
      {

        if (!v19 && v18 == 0xC000000000000000)
        {
          goto LABEL_78;
        }

LABEL_22:
        sub_181AAD084(v14, v15);
      }
    }

LABEL_15:
    v7 = v53;
  }

  v20 = sub_181A54748();
  v22 = v20;
  v23 = v20[4];
  v24 = v20[3] + v23;
  if (v20[2] < v24)
  {
    v24 = v20[2];
  }

  v51 = v20;
  v52 = v23;
  v53 = v24;
  while (2)
  {
    if (v23 != v24)
    {
LABEL_49:
      v27 = v22 + 16 * v23++;
      v52 = v23;
      v14 = *(v27 + 40);
      v28 = *(v27 + 48);
      if (v28 >> 62)
      {
        if (v28 >> 62 != 1)
        {
LABEL_45:
          v24 = v53;
          continue;
        }

        v29 = swift_getObjectType();
        v49 = v48;
        v50 = v47;
        v30 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        swift_unknownObjectRetain();
        if (v30(&v49, v29, v28 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_67;
        }

LABEL_52:
        sub_181AAD084(v14, v28);
        goto LABEL_45;
      }

      v31 = *(v14 + 56);
      if ((v31 & 0x1000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v32 = *(v14 + 48);
      if (v8 <= 1)
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_45;
          }

          v25 = v31 >> 61 == 1;
        }

        else
        {
          v25 = v31 >> 61 == 0;
        }
      }

      else if (v8 == 2)
      {
        v25 = v31 >> 61 == 2;
      }

      else
      {
        if (v8 != 3)
        {
          if (v8 != 6 || (v46 & 1) == 0)
          {
            goto LABEL_45;
          }

          if (!v32 && v31 == 0xC000000000000000)
          {
            goto LABEL_78;
          }

          goto LABEL_52;
        }

        v25 = v31 >> 61 == 3;
      }

      if (v25 && v48 == v32)
      {
        goto LABEL_77;
      }

      goto LABEL_45;
    }

    break;
  }

  if (sub_181AC81FC(v21))
  {
    v22 = v51;
    v23 = v52;
    goto LABEL_49;
  }

  ProtocolStack.transport.getter(&v51);
  v33 = v52;
  if ((~v52 & 0xF000000000000007) == 0)
  {
    goto LABEL_71;
  }

  v14 = v51;
  v49 = v48;
  v50 = v47;
  if (sub_181F62460(&v49))
  {
LABEL_73:
    v34 = v33 >> 61;
    if ((v33 >> 61) <= 2)
    {
      if (v34)
      {
        if (v34 != 1)
        {
          goto LABEL_79;
        }

        v35 = &unk_1ED40FF50;
        v36 = &unk_1EA838DE0;
        v37 = &unk_182AE6F00;
      }

      else
      {
        v35 = &qword_1ED40F850;
        v36 = &unk_1EA838710;
        v37 = &qword_182AE4BA0;
      }
    }

    else
    {
      if (v34 > 4)
      {
        if (v34 != 5)
        {
          return 0;
        }

        return v14;
      }

      if (v34 == 3)
      {
        v35 = qword_1ED40FB50;
        v36 = &unk_1EA838750;
        v37 = &unk_182AE4BD0;
      }

      else
      {
        v35 = &unk_1EA838AE0;
        v36 = &unk_1EA838DD0;
        v37 = &qword_182AE4BE0;
      }
    }

LABEL_80:
    sub_181AA8428(v35, v36, v37);
    return v14;
  }

  sub_181A53008(v14, v33);
LABEL_71:
  v33 = v45[13];
  if ((~v33 & 0xF000000000000007) != 0)
  {
    v14 = v45[12];
    v51 = v14;
    v52 = v33;
    v49 = v48;
    v50 = v47;
    sub_181AACFF4(v14, v33);
    if (sub_181F62460(&v49))
    {
      goto LABEL_73;
    }

    sub_181A53008(v14, v33);
  }

  swift_beginAccess();
  v38 = v45[7];
  if ((~v38 & 0xF000000000000007) == 0)
  {
LABEL_96:
    ProtocolStack.link.getter(&v49);
    v14 = v49;
    if (v49 >= 2)
    {
      v42 = v50;
      v43 = swift_getObjectType();
      v49 = v48;
      v50 = v47;
      if ((*(v42 + 48))(&v49, v43, v42))
      {
        return v14;
      }

      sub_181B03DAC(v14);
    }

    return 0;
  }

  v14 = v45[6];
  if (!(v38 >> 62))
  {
    v41 = sub_181F61D2C(v48, v47);
    sub_181B687F0(v14, v38);
    if ((v41 & 1) == 0)
    {
      goto LABEL_95;
    }

    v35 = &qword_1ED410260;
    v36 = &qword_1EA838760;
    v37 = &qword_182AE4BE8;
    goto LABEL_80;
  }

  if (v38 >> 62 != 1)
  {
    goto LABEL_96;
  }

  v39 = swift_getObjectType();
  v49 = v48;
  v50 = v47;
  v40 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  sub_181B2C3E0(v14, v38);
  if ((v40(&v49, v39, v38 & 0x3FFFFFFFFFFFFFFFLL) & 1) == 0)
  {
LABEL_95:
    sub_181A52FE0(v14, v38);
    goto LABEL_96;
  }

  return v14;
}

uint64_t ProtocolStack.hash(into:)(uint64_t a1)
{
  v1 = sub_181AC9084();
  v3 = v1[4];
  v4 = v1[3] + v3;
  if (v1[2] < v4)
  {
    v4 = v1[2];
  }

  v94 = v1;
  v95 = v3;
  v96 = v4;
  if (v3 == v4)
  {
    goto LABEL_16;
  }

LABEL_15:
  v16 = v94;
  do
  {
    v5 = v95;
    v6 = ++v95;
    v7 = v16 + 16 * v5;
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    if (v9 >> 62)
    {
      if (v9 >> 62 != 1)
      {
        sub_182AD4518();
        goto LABEL_14;
      }

      ObjectType = swift_getObjectType();
      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      swift_unknownObjectRetain();
      v11(&v90, ObjectType, v9 & 0x3FFFFFFFFFFFFFFFLL);
      v12 = v91;
      v13 = v92;
      v14 = v93;
      v15 = v90;
    }

    else
    {
      swift_beginAccess();
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = *(v8 + 16);
      sub_181B2C3E0(v8, v9);
      sub_181F49A24(v12, v13, v14);
    }

    sub_182AD4518();
    MEMORY[0x1865DB070](v15);
    MEMORY[0x1865DB070](v15 >> 8);
    if (v14)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v12, v13, 1);
      sub_182AD30E8();
      sub_181F669F0(v15, v12, v13, v14);
      sub_181AAD084(v8, v9);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v12);
      sub_182AD30E8();
      sub_181F669F0(v15, v12, v13, v14);
      sub_181AAD084(v8, v9);
    }

    sub_181F669F0(v15, v12, v13, v14);
LABEL_14:
    if (v6 != v96)
    {
      goto LABEL_15;
    }

LABEL_16:
    v17 = sub_181AC81FC(v2);
    v16 = v94;
  }

  while ((v17 & 1) != 0);

  v18 = sub_181A54748();
  v20 = v18[4];
  v21 = v18[3] + v20;
  if (v18[2] < v21)
  {
    v21 = v18[2];
  }

  v94 = v18;
  v95 = v20;
  v96 = v21;
  if (v20 == v21)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v33 = v94;
LABEL_21:
    v22 = v95;
    v23 = ++v95;
    v24 = v33 + 16 * v22;
    v25 = *(v24 + 40);
    v26 = *(v24 + 48);
    if (v26 >> 62)
    {
      if (v26 >> 62 == 1)
      {
        v27 = swift_getObjectType();
        v28 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
        swift_unknownObjectRetain();
        v28(&v90, v27, v26 & 0x3FFFFFFFFFFFFFFFLL);
        v29 = v91;
        v30 = v92;
        v31 = v93;
        v32 = v90;
        goto LABEL_25;
      }

      sub_182AD4518();
    }

    else
    {
      swift_beginAccess();
      v29 = *(v25 + 24);
      v30 = *(v25 + 32);
      v31 = *(v25 + 40);
      v32 = *(v25 + 16);
      sub_181B2C3E0(v25, v26);
      sub_181F49A24(v29, v30, v31);
LABEL_25:
      sub_182AD4518();
      MEMORY[0x1865DB070](v32);
      MEMORY[0x1865DB070](v32 >> 8);
      if (v31)
      {
        MEMORY[0x1865DB070](1);
        sub_181F49A24(v29, v30, 1);
        sub_182AD30E8();
        sub_181F669F0(v32, v29, v30, v31);
        sub_181AAD084(v25, v26);
      }

      else
      {
        MEMORY[0x1865DB070](0);
        sub_181FB86BC(v29);
        sub_182AD30E8();
        sub_181F669F0(v32, v29, v30, v31);
        sub_181AAD084(v25, v26);
      }

      sub_181F669F0(v32, v29, v30, v31);
    }

    if (v23 != v96)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v34 = sub_181AC81FC(v19);
  v33 = v94;
  if (v34)
  {
    goto LABEL_21;
  }

  ProtocolStack.transport.getter(&v94);
  v35 = v94;
  v36 = v95;
  if ((~v95 & 0xF000000000000007) == 0)
  {
    sub_181A53008(v94, v95);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_38;
  }

  sub_181AACFF4(v94, v95);
  sub_181A53008(v35, v36);
  sub_181B37B14(&v90);
  sub_181A53008(v35, v36);
  v37 = v90;
  v38 = v91;
  v39 = v92;
  v40 = v93;
  if (v93 == 255)
  {
LABEL_38:
    sub_182AD4518();
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = -1;
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v37);
    MEMORY[0x1865DB070](BYTE1(v37));
    if (v40)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v38, v39, 1);
      sub_182AD30E8();
      sub_181F669F0(v37, v38, v39, v40);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v38);
      sub_182AD30E8();
      sub_181F669F0(v37, v38, v39, v40);
    }

    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = v40;
  }

  sub_181F669F0(v41, v42, v43, v44);
  v45 = v88[13];
  if ((~v45 & 0xF000000000000007) == 0)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_46;
  }

  v94 = v88[12];
  v95 = v45;
  sub_181B37B14(&v90);
  v46 = v90;
  v47 = v91;
  v48 = v92;
  v49 = v93;
  if (v93 == 255)
  {
LABEL_46:
    sub_182AD4518();
    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = -1;
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v46);
    MEMORY[0x1865DB070](BYTE1(v46));
    if (v49)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v47, v48, 1);
      sub_182AD30E8();
      sub_181F669F0(v46, v47, v48, v49);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v47);
      sub_182AD30E8();
      sub_181F669F0(v46, v47, v48, v49);
    }

    v50 = v46;
    v51 = v47;
    v52 = v48;
    v53 = v49;
  }

  sub_181F669F0(v50, v51, v52, v53);
  v54 = v88[11];
  if ((~v54 & 0xF000000000000007) == 0)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_54;
  }

  v94 = v88[10];
  v95 = v54;
  sub_181B37B14(&v90);
  v55 = v90;
  v56 = v91;
  v57 = v92;
  v58 = v93;
  if (v93 == 255)
  {
LABEL_54:
    sub_182AD4518();
    v59 = v55;
    v60 = v56;
    v61 = v57;
    v62 = -1;
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v55);
    MEMORY[0x1865DB070](BYTE1(v55));
    if (v58)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v56, v57, 1);
      sub_182AD30E8();
      sub_181F669F0(v55, v56, v57, v58);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v56);
      sub_182AD30E8();
      sub_181F669F0(v55, v56, v57, v58);
    }

    v59 = v55;
    v60 = v56;
    v61 = v57;
    v62 = v58;
  }

  sub_181F669F0(v59, v60, v61, v62);
  swift_beginAccess();
  v63 = v88[7];
  if ((~v63 & 0xF000000000000007) == 0)
  {
    sub_182AD4518();
    goto LABEL_71;
  }

  v64 = v88[6];
  if (!(v63 >> 62))
  {
    swift_beginAccess();
    v67 = *(v64 + 16);
    v68 = *(v64 + 17);
    v69 = *(v64 + 24);
    v70 = *(v64 + 32);
    v71 = *(v64 + 40);
LABEL_66:
    sub_181F49A24(v69, v70, v71);
    goto LABEL_67;
  }

  if (v63 >> 62 != 1)
  {
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v67 = word_1ED411D40;
    v68 = HIBYTE(word_1ED411D40);
    v69 = qword_1ED411D48;
    v70 = unk_1ED411D50;
    v71 = byte_1ED411D58;
    goto LABEL_66;
  }

  v65 = swift_getObjectType();
  v66 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
  sub_181B2C3E0(v64, v63);
  v66(&v90, v65, v63 & 0x3FFFFFFFFFFFFFFFLL);
  sub_181A52FE0(v64, v63);
  v67 = v90;
  v68 = BYTE1(v90);
  v69 = v91;
  v70 = v92;
  v71 = v93;
LABEL_67:
  sub_182AD4518();
  MEMORY[0x1865DB070](v67);
  MEMORY[0x1865DB070](v68);
  if (v71)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v69, v70, 1);
    sub_182AD30E8();
    sub_181F48350(v69, v70, 1);
    v72 = v69;
    v73 = v70;
    v74 = 1;
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v69);
    sub_182AD30E8();
    sub_181F48350(v69, v70, 0);

    v72 = v69;
    v73 = v70;
    v74 = 0;
  }

  sub_181F48350(v72, v73, v74);
LABEL_71:
  ProtocolStack.link.getter(v89);
  v75 = v89[0];
  v76 = v89[1];
  if (v89[0] == 1)
  {
    sub_181B03DAC(1);
    return sub_182AD4518();
  }

  v77 = swift_unknownObjectRetain();
  sub_181B03DAC(v77);
  if (!v75)
  {
    return sub_182AD4518();
  }

  v78 = swift_getObjectType();
  (*(v76 + 96))(&v90, v78, v76);
  sub_181B03DAC(v75);
  v79 = v90;
  v80 = BYTE1(v90);
  v81 = v91;
  v82 = v92;
  v83 = v93;
  sub_182AD4518();
  MEMORY[0x1865DB070](v79);
  MEMORY[0x1865DB070](v80);
  if (v83)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v81, v82, 1);
    sub_182AD30E8();
    sub_181F48350(v81, v82, 1);
    v84 = v81;
    v85 = v82;
    v86 = 1;
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v81);
    sub_182AD30E8();
    sub_181F48350(v81, v82, 0);

    v84 = v81;
    v85 = v82;
    v86 = 0;
  }

  return sub_181F48350(v84, v85, v86);
}

uint64_t ProtocolStack.hashValue.getter()
{
  sub_182AD44E8();
  ProtocolStack.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F6546C()
{
  sub_182AD44E8();
  ProtocolStack.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F654D4(uint64_t a1)
{
  sub_182AD44E8();
  ProtocolStack.hash(into:)(v2);
  return sub_182AD4558();
}

uint64_t sub_181F65514(uint64_t a1, void **a2)
{
  v2 = *a2;
  v4 = 0;
  return sub_181C59BE4(v2, &v4) & 1;
}

void sub_181F65550(uint64_t a1)
{
  v90 = *sub_182AD2388();
  swift_retain_n();
  v77 = v1;
  v3 = sub_181AC9084();
  v5 = v3;
  v6 = 0;
  v7 = v3[4];
  v8 = v3[3] + v7;
  if (v3[2] < v8)
  {
    v8 = v3[2];
  }

  v84 = v3;
  v86 = v3[4];
  v88 = v8;
  v9 = v90;
  v78 = v90;
LABEL_4:
  for (i = v9; ; i[3] = v29)
  {
    while (1)
    {
      if (v7 != v88)
      {
        goto LABEL_10;
      }

      if ((sub_181AC81FC(v4) & 1) == 0)
      {

        v41 = sub_181A54748();
        v43 = v41;
        v44 = v41[4];
        v45 = v41[3] + v44;
        if (v41[2] < v45)
        {
          v45 = v41[2];
        }

        v85 = v41;
        v87 = v41[4];
        v89 = v45;
        while (1)
        {
          while (1)
          {
LABEL_53:
            if (v44 == v89)
            {
              if ((sub_181AC81FC(v42) & 1) == 0)
              {

                *(v77 + 16) = i;

                *(v77 + 24) = v78;

                return;
              }

              v43 = v85;
              v44 = v87;
            }

            v48 = &v43[2 * v44++];
            v87 = v44;
            v42 = *(v48 + 5);
            if ((v6 & 1) == 0)
            {
              break;
            }

            v64 = v78[3];
            v65 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_99;
            }

            v83 = v42;
            sub_181B2C3E0(v42.n128_i64[0], v42.n128_u64[1]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78 = v90;
            if (v90[2] < v65 || (isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v65, 0);
              v78 = v90;
            }

            v67 = v78[3];
            v68 = v78[4];
            v26 = __OFADD__(v68, v67);
            v69 = v68 + v67;
            if (v26)
            {
              goto LABEL_100;
            }

            if (v67 < 0)
            {
              v42 = v83;
              if (v69 < 0)
              {
                v73 = v78[2];
                v26 = __OFADD__(v69, v73);
                v69 += v73;
                if (v26)
                {
                  goto LABEL_113;
                }
              }
            }

            else
            {
              v70 = v78[2];
              v71 = __OFSUB__(v69, v70);
              v72 = v69 - v70;
              v42 = v83;
              if (v72 < 0 == v71)
              {
                v69 = v72;
                if (v71)
                {
                  goto LABEL_109;
                }
              }
            }

            *&v78[2 * v69 + 5] = v42;
            v26 = __OFADD__(v67, 1);
            v74 = v67 + 1;
            if (v26)
            {
              goto LABEL_101;
            }

            v78[3] = v74;
          }

          v49 = v48[6];
          if (v42.n128_u64[1] >> 62)
          {
            if (v42.n128_u64[1] >> 62 != 1)
            {
              goto LABEL_53;
            }

            v82 = *(v48 + 5);
            ObjectType = swift_getObjectType();
            v47 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
            swift_unknownObjectRetain();
            if ((v47(a1, ObjectType, v49 & 0x3FFFFFFFFFFFFFFFLL) & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v50 = *(v42.n128_u64[0] + 56);
            v51 = ~v50 & 0x1000000000000007;
            v52 = v50 & 0x1000000000000000;
            if (v51)
            {
              v53 = v52 == 0;
            }

            else
            {
              v53 = 1;
            }

            if (v53)
            {
              goto LABEL_53;
            }

            v54 = *(v42.n128_u64[0] + 48);
            v82 = v42;

            if (v54 != a1)
            {
LABEL_52:
              sub_181AAD084(v82.n128_i64[0], v49);
              goto LABEL_53;
            }
          }

          v55 = i[3];
          v56 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_105;
          }

          v57 = swift_isUniquelyReferenced_nonNull_native();
          if (i[2] < v56 || (v57 & 1) == 0)
          {
            sub_181B2C3FC(v57, v56, 0);
            i = v90;
          }

          v58 = i[3];
          v59 = i[4];
          v26 = __OFADD__(v59, v58);
          v60 = v59 + v58;
          if (v26)
          {
            goto LABEL_106;
          }

          if (v58 < 0)
          {
            v42 = v82;
            if (v60 < 0)
            {
              v75 = i[2];
              v26 = __OFADD__(v60, v75);
              v60 += v75;
              if (v26)
              {
                goto LABEL_115;
              }
            }
          }

          else
          {
            v61 = i[2];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v42 = v82;
            if (v63 < 0 == v62)
            {
              v60 = v63;
              if (v62)
              {
                goto LABEL_111;
              }
            }
          }

          *&i[2 * v60 + 5] = v42;
          v26 = __OFADD__(v58, 1);
          v76 = v58 + 1;
          if (v26)
          {
            goto LABEL_107;
          }

          i[3] = v76;
          v6 = 1;
        }
      }

      v5 = v84;
      v7 = v86;
LABEL_10:
      v12 = &v5[2 * v7++];
      v86 = v7;
      v4 = *(v12 + 5);
      if (v6)
      {
        break;
      }

      v13 = v12[6];
      if (v4.n128_u64[1] >> 62)
      {
        if (v4.n128_u64[1] >> 62 == 1)
        {
          v80 = *(v12 + 5);
          v10 = swift_getObjectType();
          v11 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          swift_unknownObjectRetain();
          if (v11(a1, v10, v13 & 0x3FFFFFFFFFFFFFFFLL))
          {
            goto LABEL_34;
          }

LABEL_6:
          sub_181AAD084(v80.n128_i64[0], v13);
        }
      }

      else
      {
        v14 = *(v4.n128_u64[0] + 56);
        v15 = ~v14 & 0x1000000000000007;
        v16 = v14 & 0x1000000000000000;
        if (v15)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = *(v4.n128_u64[0] + 48);
          v80 = v4;

          if (v18 != a1)
          {
            goto LABEL_6;
          }

LABEL_34:
          v30 = i[3];
          v31 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_102;
          }

          v32 = swift_isUniquelyReferenced_nonNull_native();
          if (i[2] < v31 || (v32 & 1) == 0)
          {
            sub_181B2C3FC(v32, v31, 0);
            i = v90;
          }

          v9 = i;
          v33 = i[3];
          v34 = i[4];
          v26 = __OFADD__(v34, v33);
          v35 = v34 + v33;
          if (v26)
          {
            goto LABEL_103;
          }

          if (v33 < 0)
          {
            v4 = v80;
            if (v35 < 0)
            {
              v39 = i[2];
              v26 = __OFADD__(v35, v39);
              v35 += v39;
              if (v26)
              {
                goto LABEL_114;
              }
            }
          }

          else
          {
            v36 = i[2];
            v37 = __OFSUB__(v35, v36);
            v38 = v35 - v36;
            v4 = v80;
            if (v38 < 0 == v37)
            {
              v35 = v38;
              if (v37)
              {
                goto LABEL_110;
              }
            }
          }

          *&i[2 * v35 + 5] = v4;
          v26 = __OFADD__(v33, 1);
          v40 = v33 + 1;
          if (v26)
          {
            goto LABEL_104;
          }

          i[3] = v40;
          v6 = 1;
          goto LABEL_4;
        }
      }
    }

    v19 = i[3];
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v81 = v4;
    sub_181B2C3E0(v4.n128_i64[0], v4.n128_u64[1]);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    i = v90;
    if (v90[2] < v20 || (v21 & 1) == 0)
    {
      sub_181B2C3FC(v21, v20, 0);
      i = v90;
    }

    v22 = i[3];
    v23 = i[4];
    v26 = __OFADD__(v23, v22);
    v24 = v23 + v22;
    if (v26)
    {
      goto LABEL_97;
    }

    if (v22 < 0)
    {
      v4 = v81;
      if (v24 < 0)
      {
        v28 = i[2];
        v26 = __OFADD__(v24, v28);
        v24 += v28;
        if (v26)
        {
          goto LABEL_112;
        }
      }
    }

    else
    {
      v25 = i[2];
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      v4 = v81;
      if (v27 < 0 == v26)
      {
        v24 = v27;
        if (v26)
        {
          goto LABEL_108;
        }
      }
    }

    *&i[2 * v24 + 5] = v4;
    v26 = __OFADD__(v22, 1);
    v29 = v22 + 1;
    if (v26)
    {
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
}

uint64_t sub_181F65B18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_181F65BC0(char *__src, uint64_t a2)
{
  v3 = __src;
  if ((*(v2 + 32) & 1) == 0)
  {
    v5 = *(v2 + 8);
    if (v5 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (__src && v5)
      {
        v7 = *v2;
        v8 = a2;
        __src = memcpy(v7, v3, 16 * v5);
        a2 = v8;
      }

      v9 = a2;
      if (!__OFADD__(v5, a2 - v5))
      {
        if (a2 >= v5)
        {
          if (!v3)
          {
            return __src;
          }

          a2 -= v5;
          if (v9 == v5)
          {
            return __src;
          }

          if (v6 >= a2)
          {
            v3 += 16 * v5;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return __src;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!__src || !a2)
  {
    return __src;
  }

  if (*(v2 + 8) < a2)
  {
    goto LABEL_23;
  }

  v4 = *v2;
LABEL_17:

  return memcpy(v4, v3, 16 * a2);
}

uint64_t sub_181F65CB8(uint64_t result, uint64_t a2)
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

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_181F65DC4(uint64_t result, uint64_t a2)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
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

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);

  return swift_arrayInitWithCopy();
}

uint64_t sub_181F65F10(uint64_t result, uint64_t a2)
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
    type metadata accessor for Endpoint(0);
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

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:
  type metadata accessor for Endpoint(0);

  return swift_arrayInitWithCopy();
}

uint64_t sub_181F66038(uint64_t result, uint64_t a2)
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

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

void *sub_181F66144(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 16 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_181F661CC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 16 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_181F66260(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_181F662E8(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

char *sub_181F6637C(char *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = __src;
    memcpy(__dst, __src, 16 * v4);
    return &v5[16 * v4];
  }

  return __src;
}

uint64_t sub_181F663FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 16 * v4;
  }

  return result;
}

uint64_t sub_181F6647C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
    swift_arrayInitWithCopy();
    return v5 + 8 * v4;
  }

  return result;
}

uint64_t sub_181F66520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    type metadata accessor for Endpoint(0);
    swift_arrayInitWithCopy();
    return v5 + 8 * v4;
  }

  return result;
}

uint64_t sub_181F665B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 8 * v4;
  }

  return result;
}

void *sub_181F66630@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[2 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_181F666B0@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[2 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_181F66728@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!result)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = a2;
  if (!a2)
  {
LABEL_6:
    *a5 = v6;
    return result;
  }

  if (a4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410, &unk_182AE6EF0);
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F667B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (!result)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = a2;
  if (!a2)
  {
LABEL_6:
    *a5 = v6;
    return result;
  }

  if (a4 >= a2)
  {
    type metadata accessor for Endpoint(0);
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_181F66834@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_181F668B4@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t _s7Network13ProtocolStackC04LinkB0O2eeoiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v3 = a2[1];
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v10 = 0;
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = swift_unknownObjectRetain();
  v8 = v6(v7, v3, &v10, ObjectType, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_181F669F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_181F48350(a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_181F66A18()
{
  result = qword_1EA838AB8;
  if (!qword_1EA838AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AB8);
  }

  return result;
}

unint64_t sub_181F66A70()
{
  result = qword_1EA838AC0;
  if (!qword_1EA838AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AC0);
  }

  return result;
}

unint64_t sub_181F66AC8()
{
  result = qword_1EA838AC8;
  if (!qword_1EA838AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AC8);
  }

  return result;
}

unint64_t sub_181F66B20()
{
  result = qword_1EA838AD0;
  if (!qword_1EA838AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AD0);
  }

  return result;
}

uint64_t sub_181F66BE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_181F66C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_181F66C94(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_7Network13ProtocolStackC09TransportB0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t sub_181F66CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 16))
  {
    return (*a1 + 122);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_181F66D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_181F66DA8(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_181F66DE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_181F66E30(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F66F6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v6 = a2;
  if (!a2)
  {
LABEL_6:
    *a4 = v6;
    return result;
  }

  if (*(v4 + 24) >= a2)
  {
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_181F670EC@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 24) >= a2)
  {
    __src = memcpy(*(v3 + 16), __src, 16 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

uint64_t sub_181F67154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, *(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
    a4[1] = v8;
    a4[2] = v9;
  }

  return result;
}

double sub_181F67190(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_181F49A24(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_181F671B4(uint64_t result, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v54 = a5;
  v44 = result;
  v5 = *result;
  v7 = (*result + 24);
  v6 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v8 = a4;
  v9 = 0;
  v55 = a2;
  v45 = HIBYTE(a2);
  v46 = HIBYTE(a2);
  v43 = a3;
  while (1)
  {
    if (v9 >= v6)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    v10 = v5[4];
    if (v9 + v10 >= v5[2])
    {
      v11 = v5[2];
    }

    else
    {
      v11 = 0;
    }

    v12 = &v5[2 * v9 + 5 + 2 * (v10 - v11)];
    v13 = *v12;
    v14 = v12[1];
    if (v14 >> 62)
    {
      if (v14 >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        v49 = v55;
        v50 = v46;
        v51 = a3;
        v52 = v8;
        v53 = v54 & 1;
        v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v17 = v16(&v49, ObjectType, v14 & 0x3FFFFFFFFFFFFFFFLL);
        v8 = a4;
        v18 = v17;
        result = sub_181AAD084(v13, v14);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_3;
    }

    result = swift_beginAccess();
    if (*(v13 + 16) != v55 || v45 != *(v13 + 17))
    {
      goto LABEL_3;
    }

    result = *(v13 + 24);
    if (*(v13 + 40))
    {
      break;
    }

    if ((v54 & 1) == 0 && *(v13 + 24) == v43)
    {
      goto LABEL_27;
    }

LABEL_3:
    ++v9;
    v6 = *v7;
    if (v9 == *v7)
    {
      return v9;
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (result != a3 || *(v13 + 32) != v8)
  {
    result = sub_182AD4268();
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_27:
  v21 = *v7;
  if (*v7 - 1 != v9)
  {
    v22 = v9 + 1;
    do
    {
      if (v22 >= v21)
      {
        goto LABEL_69;
      }

      v23 = v5[4];
      if ((v22 + v23) >= v5[2])
      {
        v24 = v5[2];
      }

      else
      {
        v24 = 0;
      }

      v25 = &v5[2 * v22 + 2 * (v23 - v24)];
      v26 = v25[5];
      v27 = v25[6];
      if (v27 >> 62)
      {
        if (v27 >> 62 == 1)
        {
          v28 = swift_getObjectType();
          v49 = v55;
          v50 = v46;
          v51 = a3;
          v52 = v8;
          v53 = v54 & 1;
          v29 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          swift_unknownObjectRetain();
          v30 = v29(&v49, v28, v27 & 0x3FFFFFFFFFFFFFFFLL);
          v8 = a4;
          v31 = v30;
          result = sub_181AAD084(v26, v27);
          if (v31)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        result = swift_beginAccess();
        if (*(v26 + 16) == v55 && v45 == *(v26 + 17))
        {
          result = *(v26 + 24);
          if (*(v26 + 40))
          {
            if (v54)
            {
              if (result == a3 && *(v26 + 32) == v8)
              {
                goto LABEL_30;
              }

              result = sub_182AD4268();
              if (result)
              {
                goto LABEL_30;
              }
            }
          }

          else if ((v54 & 1) == 0 && *(v26 + 24) == v43)
          {
            goto LABEL_30;
          }
        }
      }

      if (v9 < 0)
      {
        goto LABEL_70;
      }

      if (v9 >= *v7)
      {
        goto LABEL_71;
      }

      if (v22 >= *v7)
      {
        goto LABEL_72;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1820E5EE8();
      }

      v5 = *v44;
      v33 = *(*v44 + 32);
      v34 = *(*v44 + 16);
      if (v33 + v9 >= v34)
      {
        v35 = *(*v44 + 16);
      }

      else
      {
        v35 = 0;
      }

      v36 = v33 + v9 - v35;
      if ((v22 + v33) < v34)
      {
        v34 = 0;
      }

      v37 = v22 + v33 - v34;
      if (v37 != v36)
      {
        v38 = v5 + 5;
        v39 = 2 * v36;
        v40 = 2 * v37;
        v41 = *&v5[v39 + 5];
        *&v38[v39] = *&v5[v40 + 5];
        *&v38[v40] = v41;
      }

      ++v9;
LABEL_30:
      ++v22;
      v7 = v5 + 3;
      v21 = v5[3];
    }

    while (v22 != v21);
  }

  return v9;
}

uint64_t sub_181F675A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_181F67798(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = &a1[*a3];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 6;
  v9 = &a1[*a4];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 6;
  v11.receiver = a1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_181F6780C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _nw_protocol_create_swift_udp_instance()
{
  type metadata accessor for UDPProtocol.UDPInstance();
  swift_allocObject();
  return UDPProtocol.UDPInstance.init()();
}

char *_nw_protocol_create_input_linkage_handleTm(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = [objc_allocWithZone(a2()) init];
  v6 = &v5[*a3];
  v7 = *v6;
  v8 = *(v6 + 1);
  *v6 = a1;
  *(v6 + 1) = v5;
  LOBYTE(a1) = v6[16];
  v6[16] = 4;
  v9 = v5;
  sub_181F68E5C(v7, v8, a1);
  return v9;
}

void _nw_protocol_destroy_input_linkage_handleTm(char *a1, void *a2, void *a3)
{
  v4 = &a1[*a2];
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  v7 = v4[16];
  v4[16] = 6;
  v12 = a1;
  sub_181F68E5C(v5, v6, v7);
  v8 = &v12[*a3];
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = 0;
  *(v8 + 1) = 0;
  v11 = v8[16];
  v8[16] = 6;
  sub_181F68E5C(v9, v10, v11);
}

BOOL sub_181F67A7C(uint64_t a1, void *a2, void *a3)
{

  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 16);

  return (v8 & 2) == 0;
}

uint64_t sub_181F67AF8(uint64_t a1, char a2, void *a3)
{

  v5 = a3;
  v6 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v7 = v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v14 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v15 = v6;
  v16 = v7;
  sub_181F68EA8(v14, v6, v7);
  if (a2)
  {
    sub_182168EE0(&v14, &v17);
  }

  else
  {
    sub_1822932C0(&v14, &v17);
  }

  sub_181F68E5C(v14, v15, v16);
  v8 = v18;
  if (v18 == 255)
  {

    return 0;
  }

  else
  {
    v9 = &v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
    v10 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
    v11 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
    *v9 = v17;
    v12 = v9[16];
    v9[16] = v8;
    sub_181F68E5C(v10, v11, v12);

    return 1;
  }
}

uint64_t sub_181F67C0C(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  v3 = &a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v5 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v6 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v7 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v8 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  *v3 = 0;
  *(v3 + 1) = 0;
  v9 = v3[16];
  v3[16] = 6;
  v10 = a1;
  sub_181F68EA8(v4, v5, v9);
  sub_181F68EA8(v6, v7, v8);
  sub_181F68E5C(v4, v5, v9);
  v11 = &v10[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v12 = *&v10[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v13 = *&v10[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  *v11 = 0;
  *(v11 + 1) = 0;
  v14 = v11[16];
  v11[16] = 6;
  sub_181F68E5C(v12, v13, v14);
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v17[0] = v4;
  v17[1] = v5;
  v18 = v9;
  v15 = OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(v17, v2);

  sub_181F68E5C(v4, v5, v9);
  sub_181F68E5C(v6, v7, v8);
  return v15 & 1;
}

uint64_t _nw_protocol_swift_wrapper_set_output_linkage(uint64_t a1, int a2, _BYTE *a3)
{

  if (a2)
  {
    sub_181F67D8C(v5, a3);
  }

  else
  {
    sub_181F67EA4(v5, a3);
  }
}

void sub_181F67D8C(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 8];
  v3 = v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 16];
  v11 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage];
  v12 = v2;
  v13 = v3;
  sub_181F68EA8(v11, v2, v3);
  sub_182169B90(&v11, &v14);
  sub_181F68E5C(v11, v12, v13);
  v4 = v15;
  if (v15 == 255)
  {
  }

  else
  {
    v5 = v14;
    v6 = &v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v7 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v8 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 8];
    *v6 = v14;
    v9 = v6[1].n128_u8[0];
    v6[1].n128_u8[0] = v4;
    sub_181F68EA8(v5.n128_i64[0], v5.n128_u64[1], v4);
    sub_181F68E5C(v7, v8, v9);

    sub_181F3D4C0(v5.n128_i64[0], v5.n128_u64[1], v4);
  }
}

void sub_181F67EA4(uint64_t a1, _BYTE *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage];
  v4 = *&a2[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 8];
  v5 = a2[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 16];
  v19 = a2;
  sub_181F68EA8(v3, v4, v5);
  sub_182292A10(&v20);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  sub_181F68E5C(v20, v21, v22);
  if (v8 == 6 && (v7 | v6) == 0)
  {
    sub_181F68E5C(v3, v4, v5);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    *(a1 + 40) = v3;
    *(a1 + 48) = v4;
    v12 = *(a1 + 56);
    *(a1 + 56) = v5;
    sub_181F68EA8(v3, v4, v5);
    sub_181F68E5C(v10, v11, v12);
    sub_182292A10(&v20);
    sub_181F68E5C(v3, v4, v5);
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v16 = &v19[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v17 = *&v19[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v18 = *&v19[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 8];
    *v16 = v20;
    *(v16 + 1) = v14;
    LOBYTE(v11) = v16[16];
    v16[16] = v15;
    sub_181F68EA8(v13, v14, v15);
    sub_181F68E5C(v17, v18, v11);

    sub_181F68E5C(v13, v14, v15);
  }
}

uint64_t sub_181F68044(_BYTE *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v2 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v3 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v5 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v6 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v7 = a1;
  v12 = v3;
  v13 = v4;
  v14 = v6;
  v10[0] = v1;
  v10[1] = v2;
  v11 = v5;
  sub_181F68EA8(v1, v2, v5);
  sub_181F68EA8(v3, v4, v6);
  v8 = OutputHandlerLinkage.invokeConnect(_:)(v10);

  sub_181F68E5C(v1, v2, v5);
  sub_181F68E5C(v3, v4, v6);
  return v8 & 1;
}

void sub_181F68190(char *a1, void *a2, void *a3, void (*a4)(void *))
{
  v5 = &a1[*a2];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = &a1[*a3];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v5[16];
  v12 = v8[16];
  v13 = a1;
  v16 = v9;
  v17 = v10;
  v18 = v12;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v11;
  sub_181F68EA8(v6, v7, v11);
  sub_181F68EA8(v9, v10, v12);
  a4(v14);

  sub_181F68E5C(v6, v7, v11);
  sub_181F68E5C(v9, v10, v12);
}

void sub_181F68358(_BYTE *a1, int a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 8];
  v5 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
  v6 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 8];
  v7 = a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 16];
  v8 = a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 16];
  v9 = a1;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v12[0] = v3;
  v12[1] = v4;
  v13 = v7;
  v10 = a2;
  v11 = 0;
  sub_181F68EA8(v3, v4, v7);
  sub_181F68EA8(v5, v6, v8);
  InputHandlerLinkage.invokeError(_:error:)(v12, &v10);

  sub_181F68E5C(v3, v4, v7);
  sub_181F68E5C(v5, v6, v8);
}

void sub_181F68440(_BYTE *a1, void *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v5 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v6 = a1;
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v12 = v5;
  v7 = *&v6[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v8 = v6[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  *&v9 = *&v6[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  *(&v9 + 1) = v7;
  v10 = v8;
  sub_181F68EA8(v3, v4, v5);
  sub_181F68EA8(v9, v7, v8);
  sub_181F6850C(&v11, &v9, a2);

  sub_181F68E5C(v9, *(&v9 + 1), v10);
  sub_181F68E5C(v11, *(&v11 + 1), v12);
}

void sub_181F6850C(__int128 *a1, __int128 *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v12 = *a2;
  v13 = v5;
  v10 = *a1;
  v11 = v4;
  OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v10, &v7);
  v6 = v7 | ((v8 | (v9 << 16)) << 32);
  if ((v6 & 0xFF00000000) != 0x200000000)
  {
    *&v12 = v7;
    sub_181F68F50(HIDWORD(v6) & 1, &v12);
    sub_181F68F60((v6 >> 40) & 1, &v12);
    sub_181F68F70(HIWORD(v6) & 1, &v12);
    *a3 = v12;
  }
}

unint64_t sub_181F685E8(char *a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5)
{
  LODWORD(v6) = a3;
  v8 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v9 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v10 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v11 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v12 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v31 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v44 = v11;
  v45 = v12;
  v46 = v31;
  v42[0] = v8;
  v42[1] = v9;
  v43 = v10;
  v30 = a1;
  if (a2 != -1)
  {
    v13 = a2;
    if (v6 != -1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (a4 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 == -1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v6;
  if (a4 == -1)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_7:
  v14 = a4;
LABEL_8:
  sub_181F68EA8(v8, v9, v10);
  v15 = v31;
  sub_181F68EA8(v11, v12, v31);
  OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(v42, v13, v6, v14, v40);
  if (sub_181F3D1E4(v40) == 1)
  {
    sub_181F68E5C(v11, v12, v31);
    sub_181F68E5C(v8, v9, v10);

    return 0;
  }

  v25 = v12;
  v26 = v11;
  v27 = v10;
  v28 = v9;
  v29 = v8;
  v59 = v40[12];
  v60 = v40[13];
  v61 = v41;
  v55 = v40[8];
  v56 = v40[9];
  v57 = v40[10];
  v58 = v40[11];
  v51 = v40[4];
  v52 = v40[5];
  v53 = v40[6];
  v54 = v40[7];
  v47 = v40[0];
  v48 = v40[1];
  v49 = v40[2];
  v50 = v40[3];
  if (v41)
  {
    v16 = 0;
LABEL_24:
    v6 = *(&v47 + 1);
    v17 = v47;
    v18 = v48;
    LOBYTE(a5) = BYTE8(v48);
    v8 = *(&v49 + 1);
    v14 = v49;
    LODWORD(v9) = v50;
    v21 = v56;
    v22 = v57;

    if (v9 == 2 && __PAIR128__(v8, v14) == 0)
    {
      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        MEMORY[0x1865DF520](v21, -1, -1);
      }

      sub_181F68E5C(v26, v25, v31);
      sub_181F68E5C(v29, v28, v27);

      sub_181F68EF4(v17, v6, v18, a5);

      return v16;
    }
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = &v47;
      FrameArray.popFirst()(v33);
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      v19 = sub_1822860AC(0);
      nw_frame_array_append(a5, 1, v19);
      swift_unknownObjectRelease();
      v18 = v33[0];
      v6 = v33[1];
      v8 = v33[2];
      LOBYTE(v9) = v34;
      v15 = *(&v35 + 1);
      v10 = v35;
      LOBYTE(v11) = v36;
      v14 = v39;
      if (v36 != 2 || v35 != 0)
      {
        goto LABEL_35;
      }

      if ((v38 & 1) == 0 && v37)
      {
        MEMORY[0x1865DF520](v37, -1, -1);
      }

      sub_181F68EF4(v18, v6, v8, v9);

      ++v17;
    }

    while ((v61 & 1) == 0);
    if (!HIDWORD(v16))
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_181F68EF4(v18, v6, v8, v9);

    sub_181F68F3C(v10, v15, v11);
    __break(1u);
  }

  sub_181F68EF4(v17, v6, v18, a5);

  result = sub_181F68F3C(v14, v8, v9);
  __break(1u);
  return result;
}

unint64_t sub_181F68978(char *a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  LODWORD(v7) = a3;
  v9 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v10 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v11 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v12 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v13 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v32 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v46 = v12;
  v47 = v13;
  v48 = v32;
  v44[0] = v9;
  v44[1] = v10;
  v45 = v11;
  v31 = a1;
  if (a2 != -1)
  {
    v14 = a2;
    if (v7 != -1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (a4 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 == -1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v7;
  if (a4 == -1)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_7:
  v15 = a4;
LABEL_8:
  sub_181F68EA8(v9, v10, v11);
  v16 = v32;
  sub_181F68EA8(v12, v13, v32);
  OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(v44, v14, v7, v15, v42);
  if (sub_181F3D1E4(v42) == 1)
  {
    sub_181F68E5C(v12, v13, v32);
    sub_181F68E5C(v9, v10, v11);

    return 0;
  }

  v26 = v13;
  v27 = v12;
  v28 = v11;
  v29 = v10;
  v30 = v9;
  v61 = v42[12];
  v62 = v42[13];
  v63 = v43;
  v57 = v42[8];
  v58 = v42[9];
  v59 = v42[10];
  v60 = v42[11];
  v53 = v42[4];
  v54 = v42[5];
  v55 = v42[6];
  v56 = v42[7];
  v49 = v42[0];
  v50 = v42[1];
  v51 = v42[2];
  v52 = v42[3];
  if (v43)
  {
    v17 = 0;
LABEL_24:
    v18 = *(&v49 + 1);
    v12 = v49;
    v19 = v50;
    LOBYTE(a6) = BYTE8(v50);
    v15 = *(&v51 + 1);
    v7 = v51;
    LODWORD(v9) = v52;
    v22 = v58;
    v23 = v59;

    if (v9 == 2 && __PAIR128__(v15, v7) == 0)
    {
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0)
      {
        MEMORY[0x1865DF520](v22, -1, -1);
      }

      sub_181F68E5C(v27, v26, v32);
      sub_181F68E5C(v30, v29, v28);

      sub_181F68EF4(v12, v18, v19, a6);

      return v17;
    }
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = &v49;
      FrameArray.popFirst()(v35);
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      v20 = sub_1822860AC(a6);
      nw_frame_array_append(a5, 1, v20);
      swift_unknownObjectRelease();
      v19 = v35[0];
      v15 = v35[1];
      v9 = v35[2];
      LOBYTE(v10) = v36;
      v16 = *(&v37 + 1);
      v11 = v37;
      v12 = v38;
      v7 = v41;
      if (v38 != 2 || v37 != 0)
      {
        goto LABEL_35;
      }

      if ((v40 & 1) == 0 && v39)
      {
        MEMORY[0x1865DF520](v39, -1, -1);
      }

      sub_181F68EF4(v19, v15, v9, v10);

      ++v18;
    }

    while ((v63 & 1) == 0);
    if (!HIDWORD(v17))
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_181F68EF4(v19, v15, v9, v10);

    sub_181F68F3C(v11, v16, v12);
    __break(1u);
  }

  sub_181F68EF4(v12, v18, v19, a6);

  result = sub_181F68F3C(v7, v15, v9);
  __break(1u);
  return result;
}

uint64_t sub_181F68D20(_BYTE *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v5 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v6 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v7 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v8 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v9 = a1;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v12[0] = v3;
  v12[1] = v4;
  v13 = v7;
  sub_181F68EA8(v3, v4, v7);
  sub_181F68EA8(v5, v6, v8);
  sub_182285C4C(a2, 1uLL, v11);
  LOBYTE(a2) = OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(v12, v11);

  sub_181F68E5C(v3, v4, v7);
  sub_181F68E5C(v5, v6, v8);
  return a2 & 1;
}

void sub_181F68E5C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_2;
  }

  switch(a3)
  {
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:

      break;
    case 5u:
LABEL_2:

      break;
  }
}

void sub_181F68EA8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_2;
  }

  switch(a3)
  {
    case 3u:
      swift_unknownObjectRetain();
      break;
    case 4u:
      v3 = a2;
      break;
    case 5u:
LABEL_2:

      break;
  }
}

uint64_t sub_181F68EF4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3 || a4 == 5)
    {
      return swift_unknownObjectRelease();
    }
  }

  else if (a4 == 1 || a4 == 2)
  {
  }

  return v4;
}

uint64_t sub_181F68F3C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

BOOL sub_181F68F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_182AD3B78();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t TXTRecordDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];

  swift_unknownObjectRetain();
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_18225AE0C(MEMORY[0x1E69E7CC0]);
  sub_181F6BEFC();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  return sub_182AD3758();
}

uint64_t sub_181F69138(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_unknownObjectRetain();
  sub_182AD3418();
  type metadata accessor for TXTRecordDecoder._Decoder._Container(0, a2, a3, v5);
  swift_getWitnessTable();
  return sub_182AD4088();
}

uint64_t sub_181F691F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD4688();
  v4 = NWTXTRecord.subscript.getter(v2, v3);
  v6 = v5;

  if (!v6)
  {
    v4 = sub_182AD4688();
    v8 = v7;
    sub_181F6C2EC();
    swift_allocError();
    *v9 = v4;
    v9[1] = v8;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_181F692CC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a3;
  v29 = a2;
  v12 = sub_182AD39B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = v6[1];
  v27 = *v6;
  v28 = v16;
  result = sub_181F691F8(a1, a4);
  if (!v7)
  {
    v24 = v13;
    v25 = 0;
    v29(result);

    v18 = *(a5 - 8);
    if ((*(v18 + 48))(v15, 1, a5) == 1)
    {
      (*(v24 + 8))(v15, v12);
      v19 = sub_182AD4688();
      v21 = v20;
      sub_181F6C298();
      swift_allocError();
      *v22 = v19;
      v22[1] = v21;
      return swift_willThrow();
    }

    else
    {
      return (*(v18 + 32))(a6, v15, a5);
    }
  }

  return result;
}

BOOL sub_181F694BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD4688();
  NWTXTRecord.subscript.getter(v2, v3);
  v5 = v4;

  if (v5)
  {
  }

  return v5 != 0;
}

BOOL sub_181F69530(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD4688();
  NWTXTRecord.subscript.getter(v2, v3);
  v5 = v4;

  if (v5)
  {
  }

  return v5 == 0;
}

uint64_t sub_181F695AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_181F691F8(a1, a2);
  if (!v2)
  {
    v6 = v4;
    v7 = v3;
    v8 = sub_182AD3028();
    v10 = v9;
    v11 = v8 == 1702195828 && v9 == 0xE400000000000000;
    if (v11 || (v12 = v8, (sub_182AD4268() & 1) != 0) || v12 == 7562617 && v10 == 0xE300000000000000 || (sub_182AD4268() & 1) != 0 || v12 == 49 && v10 == 0xE100000000000000 || (sub_182AD4268() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      if (v12 == 0x65736C6166 && v10 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0 || v12 == 28526 && v10 == 0xE200000000000000 || (sub_182AD4268() & 1) != 0 || v12 == 48 && v10 == 0xE100000000000000)
      {
      }

      else
      {
        v14 = sub_182AD4268();

        if ((v14 & 1) == 0)
        {
          v15 = sub_182AD4688();
          v17 = v16;
          sub_181F6C424();
          swift_allocError();
          *v18 = v15;
          v18[1] = v17;
          v18[2] = v7;
          v18[3] = v6;
          swift_willThrow();
          return v5 & 1;
        }
      }

      v5 = 0;
    }
  }

  return v5 & 1;
}

double sub_181F69830(uint64_t a1, uint64_t a2)
{
  sub_181F692CC(a1, sub_181F69898, 0, a2, MEMORY[0x1E69E63B0], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

BOOL sub_181F69898@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  result = sub_181F68F84(a1, a2, &v6, MEMORY[0x1E69E7CD8], sub_181F6C36C);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = !result;
  return result;
}

float sub_181F6991C(uint64_t a1, uint64_t a2)
{
  sub_181F692CC(a1, sub_181F69984, 0, a2, MEMORY[0x1E69E6448], &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

BOOL sub_181F69984@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  result = sub_181F68F84(a1, a2, &v6, MEMORY[0x1E69E7CE0], sub_181F6C340);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = !result;
  return result;
}

unint64_t sub_181F69A20@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
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
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    a3[1] = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F1D5C(v26, a2, 10);

    a3 = v27;
    LODWORD(v4) = (v8 >> 8) & 1;
LABEL_63:
    if (v4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      LOBYTE(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOBYTE(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOBYTE(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
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

    if (v4)
    {
      if (--v4)
      {
        LOBYTE(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOBYTE(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_181F69D64@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 2) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F2348(v26, a2, 10);

    a3 = v27;
    LODWORD(v4) = HIWORD(v8) & 1;
LABEL_63:
    if (v4)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      LOWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
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

    if (v4)
    {
      if (--v4)
      {
        LOWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}