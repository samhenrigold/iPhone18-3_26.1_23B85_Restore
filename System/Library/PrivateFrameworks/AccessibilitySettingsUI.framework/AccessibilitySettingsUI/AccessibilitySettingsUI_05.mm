void sub_23D9AD01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D9AD070(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D9AD0F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for AXValueNavigationDestination(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_23D9A97D8(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_23D9AD1AC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for AXValueNavigationDestination(0, &v7);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v5 = type metadata accessor for AXValueNavigationDestination(0, &v7);
  return sub_23D9A8FE0(0, v5);
}

uint64_t sub_23D9AD27C()
{
  v1 = *(v0 + 32);
  v14 = *(v0 + 16);
  v16[0] = v14;
  v16[1] = v1;
  v2 = type metadata accessor for AXValueNavigationDestination(0, v16);
  v15 = *(*(v2 - 1) + 80);
  v3 = v0 + ((v15 + 48) & ~v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9954();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v3 + v2[13];

  sub_23D9DAD74();
  v6 = *(sub_23D9DA604() + 32);
  v7 = *(v14 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v14))
  {
    (*(v7 + 8))(v5 + v6, v14);
  }

  sub_23D9A8330(*(v3 + v2[14]), *(v3 + v2[14] + 8), *(v3 + v2[14] + 16), *(v3 + v2[14] + 24));
  v9 = v3 + v2[15];
  if (!v8(v9, 1, v14))
  {
    (*(v7 + 8))(v9, v14);
  }

  sub_23D9DA3E4();

  v10 = v3 + v2[16];
  v11 = sub_23D9D88A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);

  j__swift_release(*(v3 + v2[17]));

  return swift_deallocObject();
}

uint64_t sub_23D9AD5A4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v7 = *(type metadata accessor for AXValueNavigationDestination(0, v13) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 1);

  return sub_23D9AA7E8(v1 + v8, v10, v11, v3, v4, v5, v6, a1);
}

uint64_t sub_23D9AD698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9AD700(uint64_t a1)
{
  v2 = sub_23D9DAD74();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_23D9DA604();
  return sub_23D9DA564();
}

uint64_t sub_23D9AD7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9AD850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9AD8BC(uint64_t a1)
{
  v2 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9AD918()
{
  v1 = *(v0 + 32);
  v14 = *(v0 + 16);
  v16[0] = v14;
  v16[1] = v1;
  v2 = type metadata accessor for AXValueNavigationDestination(0, v16);
  v15 = *(*(v2 - 1) + 80);

  v3 = v0 + ((v15 + 64) & ~v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9954();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v3 + v2[13];

  sub_23D9DAD74();
  v6 = *(sub_23D9DA604() + 32);
  v7 = *(v14 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v14))
  {
    (*(v7 + 8))(v5 + v6, v14);
  }

  sub_23D9A8330(*(v3 + v2[14]), *(v3 + v2[14] + 8), *(v3 + v2[14] + 16), *(v3 + v2[14] + 24));
  v9 = v3 + v2[15];
  if (!v8(v9, 1, v14))
  {
    (*(v7 + 8))(v9, v14);
  }

  sub_23D9DA3E4();

  v10 = v3 + v2[16];
  v11 = sub_23D9D88A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);

  j__swift_release(*(v3 + v2[17]));

  return swift_deallocObject();
}

uint64_t sub_23D9ADC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v9 = *(type metadata accessor for AXValueNavigationDestination(0, v14) - 8);
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_23D9AB000(a1, v10, v11, v12, v5, v6, v7, v8, a2);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 32);
  v14 = *(v0 + 16);
  v16[0] = v14;
  v16[1] = v1;
  v2 = type metadata accessor for AXValueNavigationDestination(0, v16);
  v15 = *(*(v2 - 1) + 80);
  v3 = v0 + ((v15 + 48) & ~v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6BF0, &qword_23D9DD340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9954();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v3 + v2[13];

  sub_23D9DAD74();
  v6 = *(sub_23D9DA604() + 32);
  v7 = *(v14 - 8);
  v8 = *(v7 + 48);
  if (!v8(v5 + v6, 1, v14))
  {
    (*(v7 + 8))(v5 + v6, v14);
  }

  sub_23D9A8330(*(v3 + v2[14]), *(v3 + v2[14] + 8), *(v3 + v2[14] + 16), *(v3 + v2[14] + 24));
  v9 = v3 + v2[15];
  if (!v8(v9, 1, v14))
  {
    (*(v7 + 8))(v9, v14);
  }

  sub_23D9DA3E4();

  v10 = v3 + v2[16];
  v11 = sub_23D9D88A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);

  j__swift_release(*(v3 + v2[17]));

  return swift_deallocObject();
}

uint64_t sub_23D9AE030(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v11[0] = v2[2];
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(a1(0, v11) - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return a2(v8, v3, v4, v5, v6);
}

uint64_t sub_23D9AE108(uint64_t a1)
{
  v2 = sub_23D9DAD74();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  sub_23D9DA3E4();
  return sub_23D9DA3C4();
}

uint64_t sub_23D9AE1F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9AE208()
{
  v1 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v8[1] = v1;
  v2 = (type metadata accessor for AXSUISpecifierLink(0, v8) - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  swift_unknownObjectRelease();
  sub_23D98504C(*(v0 + v3), *(v0 + v3 + 8));

  sub_23D9A8330(*(v0 + v3 + 48), *(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 72));

  v4 = v0 + v3 + v2[19];
  v5 = sub_23D9D88A4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6A28, &unk_23D9E17D8);

  return swift_deallocObject();
}

uint64_t sub_23D9AE390(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for AXSUISpecifierLink(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_23D9A057C;

  return sub_23D9A775C(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_23D9AE4C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9AE508(uint64_t *a1)
{
  v2 = *(v1 + 48);
  if (*(v2 + 16) == *a1 && *(v2 + 24) == a1[1])
  {
    return 1;
  }

  else
  {
    return sub_23D9DAFC4() & 1;
  }
}

uint64_t sub_23D9AE558(uint64_t *a1)
{
  v2 = *(v1 + 48);
  if (*a1 == *(v2 + 16) && a1[1] == *(v2 + 24))
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_23D9DAFC4() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23D9AE5B4()
{

  return swift_deallocObject();
}

unint64_t sub_23D9AE614(uint64_t a1)
{
  sub_23D9DAD74();
  result = sub_23D9DA604();
  if (v2 <= 0x3F)
  {
    result = sub_23D95F334();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23D9AE6A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_23D9AE830(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_23D9AEA98(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  type metadata accessor for AXValueNavigationDestination(255, &v7);
  swift_getWitnessTable();
  v1 = sub_23D9D9C34();
  v2 = sub_23D9DAD74();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  *&v7 = v1;
  *(&v7 + 1) = v2;
  *&v8 = WitnessTable;
  *(&v8 + 1) = v4;
  swift_getOpaqueTypeMetadata2();
  sub_23D9D96C4();
  sub_23D9D96C4();
  *&v7 = v1;
  *(&v7 + 1) = v2;
  *&v8 = WitnessTable;
  *(&v8 + 1) = v4;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *EnvironmentValues.speechViewContext.getter()
{
  sub_23D91F3A4();

  return sub_23D9D9964();
}

uint64_t EnvironmentValues.voiceResolver.getter()
{
  sub_23D9589B0();
  sub_23D9D9964();
  return v1;
}

void *EnvironmentValues.boundLanguage.getter()
{
  sub_23D9AEE6C();

  return sub_23D9D9964();
}

unint64_t sub_23D9AEE6C()
{
  result = qword_27E2F6D00;
  if (!qword_27E2F6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D00);
  }

  return result;
}

uint64_t sub_23D9AEF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_23D93C220(a1, &v9 - v6);
  sub_23D93C220(v7, v4);
  sub_23D9AEE6C();
  sub_23D9D9974();
  return sub_23D9AF084(v7);
}

uint64_t EnvironmentValues.boundLanguage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D93C220(a1, &v5 - v3);
  sub_23D9AEE6C();
  sub_23D9D9974();
  return sub_23D9AF084(a1);
}

uint64_t sub_23D9AF084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *EnvironmentValues.voiceFetcher.getter()
{
  sub_23D9A016C();

  return sub_23D9D9964();
}

uint64_t EnvironmentValues.voiceFetcher.setter(void *a1)
{
  sub_23D960024(a1, v3);
  sub_23D9A016C();
  sub_23D9D9974();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AXSUIVoiceOverSpeechViewContext.hashValue.getter()
{
  v1 = *v0;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](v1);
  return sub_23D9DB064();
}

uint64_t sub_23D9AF214()
{
  v1 = *v0;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](v1);
  return sub_23D9DB064();
}

uint64_t sub_23D9AF288(uint64_t a1)
{
  v2 = *v1;
  sub_23D9DB034();
  MEMORY[0x23EEF4340](v2);
  return sub_23D9DB064();
}

uint64_t sub_23D9AF2CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D9D8C54();
  MEMORY[0x28223BE20](v2);
  v3 = sub_23D9D9104();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D70788], v4);
  v7 = sub_23D9D8CB4();
  v8 = sub_23D9D8CA4();
  v13[4] = v7;
  v13[5] = MEMORY[0x277D70368];
  v13[1] = v8;
  v13[0] = MEMORY[0x277D84F90];
  sub_23D9B0480(&qword_27E2F6890, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6898, &qword_23D9E1110);
  sub_23D91F01C(&qword_27E2F68A0, &qword_27E2F6898, &qword_23D9E1110, MEMORY[0x277D83970]);
  sub_23D9DADD4();
  v9 = sub_23D9D9124();
  v10 = objc_allocWithZone(v9);
  result = sub_23D9D9114();
  v12 = MEMORY[0x277D707A0];
  a1[3] = v9;
  a1[4] = v12;
  *a1 = result;
  return result;
}

uint64_t sub_23D9AF50C()
{
  v0 = sub_23D9D8C54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-1] - v5;
  v7 = sub_23D9D8EF4();
  v14[3] = v7;
  v14[4] = sub_23D9B0480(&qword_27E2F6D18, MEMORY[0x277CE67D8], MEMORY[0x277CE67A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE67C8], v7);
  LOBYTE(v7) = sub_23D9D8A64();
  __swift_destroy_boxed_opaque_existential_0(v14);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    sub_23D9D8C64();
    sub_23D9D8C44();
    sub_23D9B0480(&qword_27E2F6890, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
    v10 = sub_23D9DADB4();
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

void (*EnvironmentValues.voiceFetcher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_23D9A016C();
  sub_23D9D9964();
  return sub_23D9AF7A8;
}

void sub_23D9AF7A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_23D960024(*a1, (v2 + 5));
    sub_23D960024((v2 + 5), (v2 + 10));
    sub_23D9D9974();
    __swift_destroy_boxed_opaque_existential_0(v2 + 5);
  }

  else
  {
    sub_23D960024(*a1, (v2 + 5));
    sub_23D9D9974();
  }

  __swift_destroy_boxed_opaque_existential_0(v2);

  free(v2);
}

uint64_t sub_23D9AF858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9B01B4();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.voiceResolver.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_23D9589B0();
  sub_23D9D9964();
  return sub_23D9AF8E0;
}

uint64_t sub_23D9AF8E0(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_23D9D9974();
  }

  sub_23D9D9974();
}

uint64_t sub_23D9AF974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D9AFF48();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.speechViewContext.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_23D91F3A4();
  sub_23D9D9964();
  return sub_23D9AFA38;
}

uint64_t sub_23D9AFA70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D9D8954();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_23D9AFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D9B03CC();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.boundLanguage.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_23D9AEE6C();
  sub_23D9D9964();
  return sub_23D9AFC58;
}

void sub_23D9AFC58(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_23D93C220((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_23D93C220(v3[2], v3[1]);
    sub_23D9D9974();
    sub_23D9AF084(v6);
  }

  else
  {
    sub_23D9D9974();
  }

  sub_23D9AF084(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.voiceFetcher(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

uint64_t View.voiceResolver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

uint64_t View.speechViewContext(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

uint64_t View.boundLanguage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23D9D9FC4();
}

unint64_t sub_23D9AFF48()
{
  result = qword_27E2F6D08;
  if (!qword_27E2F6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXSUIVoiceOverSpeechViewContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy024TextToSpeechVoiceBankingB00M15PickableFetcher_pGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_23D9D96C4();
  sub_23D91F01C(a4, a2, a3, MEMORY[0x277CE0870]);
  return swift_getWitnessTable();
}

uint64_t sub_23D9B01B4()
{
  v0 = sub_23D9D8AC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D8C54();
  MEMORY[0x28223BE20](v4);
  sub_23D9D8AE4();
  v9 = MEMORY[0x277D84F90];
  sub_23D9B0480(&qword_27E2F6890, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6898, &qword_23D9E1110);
  sub_23D91F01C(&qword_27E2F68A0, &qword_27E2F6898, &qword_23D9E1110, MEMORY[0x277D83970]);
  sub_23D9DADD4();
  v5 = sub_23D9D8CB4();
  v6 = sub_23D9D8CA4();
  v10 = v5;
  v11 = MEMORY[0x277D70368];
  v9 = v6;
  (*(v1 + 104))(v3, *MEMORY[0x277D700F8], v0);
  return sub_23D9D8A94();
}

unint64_t sub_23D9B03CC()
{
  result = qword_27E2F6D10;
  if (!qword_27E2F6D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4210, &qword_23D9DBE60);
    sub_23D9B0480(&qword_27E2F4730, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D10);
  }

  return result;
}

uint64_t sub_23D9B0480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9B04E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t AXSUIVoiceSettings.init(selection:preferredLocale:enabledSettings:languages:userDefinedName:voiceName:extraContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = *a3;
  v20 = type metadata accessor for AXSUIVoiceSettings(0);
  v21 = a9 + v20[7];
  sub_23D9DA3A4();
  *v21 = v39;
  *(v21 + 8) = *(&v39 + 1);
  sub_23D9D9C64();
  v22 = v20[10];
  v23 = sub_23D9D89C4();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  v24 = a9 + v20[13];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v20[14];
  sub_23D9DA3A4();
  *v25 = v39;
  *(v25 + 8) = *(&v39 + 1);
  v26 = v20[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(a9 + v26) = v39;
  sub_23D91F2DC(a1, a9, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(a2, a9 + v22);
  *(a9 + v20[11]) = v19;
  v27 = (a9 + v20[5]);
  *v27 = a4;
  v27[1] = a5;
  v27[2] = a6;
  v28 = (a9 + v20[9]);
  *v28 = a14;
  v28[1] = a15;
  if (a8)
  {
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(a1, &qword_27E2F4760, &qword_23D9E0740);
    v32 = a7;
  }

  else
  {
    sub_23D9DA5A4();
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(a1, &qword_27E2F4760, &qword_23D9E0740);
    a8 = *(&v39 + 1);
    v32 = v39;
    a10 = v40;
    a11 = v41;
  }

  v33 = (a9 + v20[12]);
  v34 = (a9 + v20[6]);
  *v34 = v32;
  v34[1] = a8;
  v34[2] = a10;
  v34[3] = a11;
  *v33 = a12;
  v33[1] = a13;
  return result;
}

{
  v52 = a5;
  v53 = a6;
  v55 = a12;
  v56 = a13;
  v50 = a15;
  v51 = a4;
  v48 = a7;
  v49 = a14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v47 - v24;
  v26 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  v54 = a1;
  sub_23D9DA4E4();
  sub_23D91F2DC(a2, v22, &qword_27E2F4670, &qword_23D9DC650);
  v27 = type metadata accessor for AXSUIVoiceSettings(0);
  v28 = a9 + v27[7];
  LOBYTE(v57) = 0;
  sub_23D9DA3A4();
  v29 = *(&v59 + 1);
  *v28 = v59;
  *(v28 + 8) = v29;
  sub_23D9D9C64();
  v30 = v27[10];
  v31 = sub_23D9D89C4();
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = a9 + v27[13];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v33 = a9 + v27[14];
  LOBYTE(v57) = 0;
  sub_23D9DA3A4();
  v34 = *(&v59 + 1);
  *v33 = v59;
  *(v33 + 8) = v34;
  v35 = v27[15];
  v57 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(a9 + v35) = v59;
  sub_23D91F2DC(v25, a9, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v22, a9 + v30);
  *(a9 + v27[11]) = v26;
  v36 = (a9 + v27[5]);
  v37 = v52;
  *v36 = v51;
  v36[1] = v37;
  v36[2] = v53;
  v38 = (a9 + v27[9]);
  v39 = v50;
  *v38 = v49;
  v38[1] = v39;
  if (a8)
  {
    v41 = a11;
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v54, &qword_27E2F6658, &qword_23D9E1E80);
    sub_23D91F344(v22, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v25, &qword_27E2F4760, &qword_23D9E0740);
    v61 = a11;
    v43 = v48;
  }

  else
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_23D9DA5A4();
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v54, &qword_27E2F6658, &qword_23D9E1E80);
    sub_23D91F344(v22, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v25, &qword_27E2F4760, &qword_23D9E0740);
    a8 = *(&v59 + 1);
    v43 = v59;
    a10 = v60;
    v41 = v61;
  }

  v44 = (a9 + v27[12]);
  v45 = (a9 + v27[6]);
  *v45 = v43;
  v45[1] = a8;
  v45[2] = a10;
  v45[3] = v41;
  v46 = v56;
  *v44 = v55;
  v44[1] = v46;
  return result;
}

uint64_t type metadata accessor for AXSUIVoiceSettings(uint64_t a1)
{
  result = qword_27E2F6E00;
  if (!qword_27E2F6E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D9B0828@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9D8D84();
  *a2 = result;
  a2[1] = v4;
  return result;
}

float AXSUIFasterSlider.init(value:in:step:minValImage:maxValImage:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>, float a10@<S2>, float a11@<S3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v22._countAndFlagsBits = 0x4553414552434E49;
  v22._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v22);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v23._countAndFlagsBits = 0x4553414552434544;
  v23._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v23);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v24._countAndFlagsBits = 0x4553414552434544;
  v24._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v24);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v25._countAndFlagsBits = 0x4553414552434E49;
  v25._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v25);
  v26 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  *(a7 + 80) = v26;
  v33 = a1;
  v34 = a2;
  v35 = a8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v32, v27);
  sub_23D9DA3A4();
  result = v30;
  *a7 = v30;
  *(a7 + 8) = v31;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a8;
  *(a7 + 36) = a9;
  *(a7 + 40) = a10;
  *(a7 + 44) = a11;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

uint64_t AXSUIFasterSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
  MEMORY[0x28223BE20](v58);
  v4 = v46 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D30, &qword_23D9E1E98);
  MEMORY[0x28223BE20](v59);
  v6 = v46 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D38, &qword_23D9E1EA0);
  MEMORY[0x28223BE20](v49);
  v50 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D40, &qword_23D9E1EA8);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = v46 - v11;
  v12 = v1[3];
  v68 = v1[2];
  v69 = v12;
  v70 = v1[4];
  v71 = *(v1 + 10);
  v13 = v1[1];
  v66 = *v1;
  v67 = v13;
  v64 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D48, &qword_23D9E1EB0);
  sub_23D9DA3D4();
  v14 = v60;
  v15 = v61;
  v16 = *(&v68 + 4);
  v17 = HIDWORD(v68);
  v18 = swift_allocObject();
  v19 = v69;
  *(v18 + 48) = v68;
  *(v18 + 64) = v19;
  *(v18 + 80) = v70;
  *(v18 + 96) = v71;
  v20 = v67;
  *(v18 + 16) = v66;
  *(v18 + 32) = v20;
  v64 = v14;
  v65 = v15;
  v63 = v16;
  v62 = v17;
  sub_23D9B8854(&v66, &v60);

  v21 = sub_23D9DA384();
  v22 = sub_23D9D9E44();
  KeyPath = swift_getKeyPath();
  *&v60 = v21;
  *(&v60 + 1) = KeyPath;
  v61 = v22;
  v24 = *MEMORY[0x277CDF990];
  v25 = sub_23D9D9664();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v56 = v24;
  v55 = v27;
  v54 = v26 + 104;
  v27(v4, v24, v25);
  v53 = sub_23D9BA55C(&qword_27E2F5198, MEMORY[0x277CDFA20], MEMORY[0x277CDFA40]);
  result = sub_23D9DA894();
  if (result)
  {
    v46[0] = v18;
    v47 = v10;
    v48 = a1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D50, &unk_23D9E1EE8);
    v30 = sub_23D9B88E4();
    sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50, MEMORY[0x277D84470]);
    v46[2] = v29;
    v46[1] = v30;
    sub_23D9DA044();
    sub_23D91F344(v4, &qword_27E2F5180, &qword_23D9DDF50);

    v31 = sub_23D9DA2F4();
    v32 = swift_getKeyPath();
    v33 = &v6[*(v59 + 36)];
    *v33 = v32;
    v33[1] = v31;
    sub_23D9B89F4();
    sub_23D9DA0C4();
    sub_23D91F344(v6, &qword_27E2F6D30, &qword_23D9E1E98);

    v34 = sub_23D9DA384();
    v35 = sub_23D9D9E44();
    v36 = swift_getKeyPath();
    *&v60 = v34;
    *(&v60 + 1) = v36;
    v61 = v35;
    v55(v4, v56, v25);
    result = sub_23D9DA894();
    if (result)
    {
      sub_23D9DA044();
      sub_23D91F344(v4, &qword_27E2F5180, &qword_23D9DDF50);

      v37 = sub_23D9DA2F4();
      v38 = swift_getKeyPath();
      v39 = &v6[*(v59 + 36)];
      *v39 = v38;
      v39[1] = v37;
      sub_23D9DA0C4();
      sub_23D91F344(v6, &qword_27E2F6D30, &qword_23D9E1E98);
      sub_23D9B8B48();
      sub_23D98048C();
      v40 = v51;
      sub_23D9DA494();
      v60 = v67;
      LODWORD(v61) = v68;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
      MEMORY[0x23EEF3850](&v64, v41);
      v42 = swift_allocObject();
      v43 = v69;
      *(v42 + 48) = v68;
      *(v42 + 64) = v43;
      *(v42 + 80) = v70;
      *(v42 + 96) = v71;
      v44 = v67;
      *(v42 + 16) = v66;
      *(v42 + 32) = v44;
      sub_23D9B8854(&v66, &v60);
      sub_23D91F01C(&qword_27E2F6D70, &qword_27E2F6D40, &qword_23D9E1EA8, MEMORY[0x277CDF050]);
      v45 = v47;
      sub_23D9DA1E4();

      return (*(v52 + 8))(v40, v45);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D9B16C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_23D9B180C(uint64_t result, __int128 *a2)
{
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D48, &qword_23D9E1EB0);
    sub_23D9DA3B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
    return sub_23D9DA564();
  }

  return result;
}

uint64_t sub_23D9B189C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = a3[1];
  v8 = *(a3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v6, v4);
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D48, &qword_23D9E1EB0);
  return sub_23D9DA3C4();
}

BOOL sub_23D9B19C4(void *a1, uint64_t *a2)
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

void *sub_23D9B19F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_23D9B1A20@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23D9B1B0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t AXSUIVoiceSettings.init<A>(selection:preferredLocale:enabledSettings:languages:userDefinedName:voiceName:extraContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, char *a17)
{
  v57 = a6;
  v58 = a8;
  v53 = a7;
  v55 = a4;
  v56 = a5;
  v64 = a12;
  v65 = a13;
  v63 = a17;
  v61 = a16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v52 - v25;
  v54 = *a3;
  v62 = a1;
  sub_23D91F2DC(a1, &v52 - v25, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D91F2DC(a2, v23, &qword_27E2F4670, &qword_23D9DC650);
  v27 = swift_allocObject();
  v28 = v63;
  *(v27 + 2) = v61;
  *(v27 + 3) = v28;
  *(v27 + 4) = a14;
  *(v27 + 5) = a15;
  v29 = type metadata accessor for AXSUIVoiceSettings(0);
  v30 = a9 + v29[7];
  LOBYTE(v66) = 0;
  v59 = a14;
  v60 = a15;
  sub_23D99FD1C(a14, a15);
  sub_23D9DA3A4();
  v31 = *(&v68 + 1);
  *v30 = v68;
  *(v30 + 8) = v31;
  sub_23D9D9C64();
  v32 = v29[10];
  v33 = sub_23D9D89C4();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  v34 = a9 + v29[13];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = a9 + v29[14];
  LOBYTE(v66) = 0;
  sub_23D9DA3A4();
  v36 = *(&v68 + 1);
  *v35 = v68;
  *(v35 + 8) = v36;
  v37 = v29[15];
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(a9 + v37) = v68;
  v61 = v26;
  sub_23D91F2DC(v26, a9, &qword_27E2F4760, &qword_23D9E0740);
  v63 = v23;
  sub_23D929AE4(v23, a9 + v32);
  v38 = v55;
  *(a9 + v29[11]) = v54;
  v39 = (a9 + v29[5]);
  v41 = v56;
  v40 = v57;
  *v39 = v38;
  v39[1] = v41;
  v39[2] = v40;
  v42 = (a9 + v29[9]);
  *v42 = sub_23D9B8CAC;
  v42[1] = v27;
  if (v58)
  {
    v43 = v58;
    v44 = a2;
    v46 = a11;
    sub_23D91F064(v59, v60);
    sub_23D91F344(v44, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v62, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D91F344(v63, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v61, &qword_27E2F4760, &qword_23D9E0740);
    v70 = a11;
    v48 = v53;
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_23D9DA5A4();
    sub_23D91F064(v59, v60);
    sub_23D91F344(a2, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D91F344(v62, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D91F344(v63, &qword_27E2F4670, &qword_23D9DC650);
    result = sub_23D91F344(v61, &qword_27E2F4760, &qword_23D9E0740);
    v43 = *(&v68 + 1);
    v48 = v68;
    a10 = v69;
    v46 = v70;
  }

  v49 = (a9 + v29[12]);
  v50 = (a9 + v29[6]);
  *v50 = v48;
  v50[1] = v43;
  v50[2] = a10;
  v50[3] = v46;
  v51 = v65;
  *v49 = v64;
  v49[1] = v51;
  return result;
}

uint64_t sub_23D9B1F7C(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23D9DAD74();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  if (a1)
  {
    a1(v9);
    (*(*(a3 - 8) + 56))(v11, 0, 1, a3);
  }

  else
  {
    (*(*(a3 - 8) + 56))(v11, 1, 1, a3);
  }

  v15[1] = a4;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_23D964D1C(v11, v7, WitnessTable);
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_23D9B2104()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_23D9D8DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  sub_23D9DA584();
  v13 = sub_23D9D8954();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  LOBYTE(v15) = 1;
  sub_23D9D8D74();
  sub_23D9DA544();
  (*(v4 + 8))(v6, v3);
  sub_23D91F344(v9, &qword_27E2F4760, &qword_23D9E0740);
  swift_getKeyPath();
  sub_23D9DA504();

  sub_23D91F344(v12, &qword_27E2F6658, &qword_23D9E1E80);
  return v15;
}

uint64_t AXSUIVoiceSettings.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v30);
  v4 = &v27 - v3;
  v5 = type metadata accessor for AXSUIVoiceSettings(0);
  v28 = *(v5 - 8);
  v32 = *(v28 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D78, &qword_23D9E1F28);
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D80, &qword_23D9E1F30);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D88, &qword_23D9E1F38);
  MEMORY[0x28223BE20](v29);
  v27 = &v27 - v14;
  sub_23D9B291C(v2, v10);
  v15._object = 0x800000023D9E4A90;
  v15._countAndFlagsBits = 0xD000000000000010;
  v35 = AXSUILocString(_:)(v15);
  sub_23D91F01C(&qword_27E2F6D90, &qword_27E2F6D78, &qword_23D9E1F28, &protocol conformance descriptor for AXSUIPlatformFormListView<A>);
  sub_23D91B650();
  sub_23D9DA0A4();

  sub_23D91F344(v10, &qword_27E2F6D78, &qword_23D9E1F28);
  sub_23D9B8CB8(v2, v7);
  v16 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v17 = swift_allocObject();
  sub_23D9B8D1C(v7, v17 + v16);
  v18 = &v13[*(v11 + 36)];
  *v18 = sub_23D9B8D80;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x23EEF3850]();
  sub_23D9B8D98();
  sub_23D9B8F0C();
  v20 = v27;
  sub_23D9DA1E4();
  sub_23D91F344(v4, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F344(v13, &qword_27E2F6D80, &qword_23D9E1F30);
  MEMORY[0x23EEF3850](v19);
  sub_23D9B8CB8(v2, v7);
  v21 = swift_allocObject();
  sub_23D9B8D1C(v7, v21 + v16);
  v22 = v20 + *(v29 + 36);
  sub_23D91F2DC(v4, v22, &qword_27E2F5900, &unk_23D9DC640);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6DC0, &qword_23D9E1F50);
  v24 = (v22 + v23[9]);
  *v24 = sub_23D9B8FC0;
  v24[1] = v21;
  *(v22 + v23[10]) = 150;
  v25 = v23[11];
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6DC8, &unk_23D9E1F58);
  sub_23D9DA3A4();
  sub_23D91F344(v4, &qword_27E2F5900, &unk_23D9DC640);
  *(v22 + v25) = v35;
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F53F8, &qword_23D9DE200);
  sub_23D9B9048();
  sub_23D91F01C(&qword_27E2F53F0, &qword_27E2F53F8, &qword_23D9DE200, MEMORY[0x277CDF030]);
  sub_23D9DA1B4();
  return sub_23D91F344(v20, &qword_27E2F6D88, &qword_23D9E1F38);
}

uint64_t sub_23D9B291C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v226 = a2;
  v218 = sub_23D9D9CE4();
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v216 = &v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E28, &qword_23D9E22B8);
  v215 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v214 = &v176 - v4;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E30, &qword_23D9E22C0);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v220 = &v176 - v5;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E38, &qword_23D9E22C8);
  MEMORY[0x28223BE20](v223);
  v239 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v237 = &v176 - v8;
  v9 = type metadata accessor for AXSUIVoiceSettings(0);
  v211 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v212 = v10;
  v213 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50C8, &qword_23D9DDAF0);
  MEMORY[0x28223BE20](v11 - 8);
  v210 = &v176 - v12;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v238 = &v176 - v13;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E40, &qword_23D9E22D0);
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v202 = &v176 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E48, &qword_23D9E22D8);
  MEMORY[0x28223BE20](v15 - 8);
  v236 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v241 = &v176 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E50, &qword_23D9E22E0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v201 = &v176 - v19;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E58, &qword_23D9E22E8);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v188 = &v176 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E60, &qword_23D9E22F0);
  MEMORY[0x28223BE20](v21 - 8);
  v200 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v199 = &v176 - v24;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v187);
  v186 = &v176 - v25;
  v195 = sub_23D9D9144();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v185 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E68, &qword_23D9E22F8);
  MEMORY[0x28223BE20](v27 - 8);
  v196 = &v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v207 = &v176 - v30;
  v193 = sub_23D9D9954();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v191 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E70, &qword_23D9E2300);
  MEMORY[0x28223BE20](v32 - 8);
  v234 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v248 = &v176 - v35;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E78, &qword_23D9E2308);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v227 = &v176 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E80, &qword_23D9E2310);
  MEMORY[0x28223BE20](v37 - 8);
  v245 = &v176 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v233 = &v176 - v40;
  MEMORY[0x28223BE20](v41);
  v244 = &v176 - v42;
  MEMORY[0x28223BE20](v43);
  v247 = &v176 - v44;
  MEMORY[0x28223BE20](v45);
  v246 = &v176 - v46;
  MEMORY[0x28223BE20](v47);
  v243 = &v176 - v48;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E88, &unk_23D9E2318);
  MEMORY[0x28223BE20](v204);
  v50 = &v176 - v49;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v189);
  v52 = &v176 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v176 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = &v176 - v57;
  v59 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  MEMORY[0x28223BE20](v59);
  v61 = (&v176 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E90, &qword_23D9E2328);
  MEMORY[0x28223BE20](v203);
  v190 = &v176 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E98, &qword_23D9E2330);
  MEMORY[0x28223BE20](v63 - 8);
  v232 = &v176 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v242 = &v176 - v66;
  v240 = v9;
  v67 = a1 + *(v9 + 36);
  v68 = *v67;
  if (*v67)
  {
    v69 = *(v67 + 8);

    v71 = a1;
    v72 = v68(v70);
    sub_23D91F064(v68, v69);
    v231 = v72;
    a1 = v71;
  }

  else
  {
    v231 = 0;
  }

  v73 = *(a1 + v240[11]);
  v235 = a1;
  v230 = v73;
  if ((v73 & 0x40) != 0)
  {
    v75._countAndFlagsBits = 0x5F544C5541464544;
    v75._object = 0xED00004543494F56;
    v76 = AXSUILocString(_:)(v75);
    countAndFlagsBits = v76._countAndFlagsBits;
    object = v76._object;
    v181 = sub_23D9B2104();
    v180 = v77;
    v179 = v78;
    v178 = v79;
    v80 = v240;
    v81 = a1 + v240[10];
    v184 = v58;
    sub_23D91F2DC(v81, v58, &qword_27E2F4670, &qword_23D9DC650);
    v82 = (a1 + v80[5]);
    v83 = v82[1];
    v85 = v82[2];
    v251._countAndFlagsBits = *v82;
    v84 = v251._countAndFlagsBits;
    v251._object = v83;
    v252 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EF8, &qword_23D9E3520);
    MEMORY[0x23EEF3850](&v249);
    v86 = *(v249 + 16);

    v177 = v86 == 0;
    v251._countAndFlagsBits = v84;
    v251._object = v83;
    v252 = v85;
    sub_23D9DA584();
    v87 = v249;
    v88 = sub_23D9D89C4();
    v176 = v250;
    v73 = v59[5];
    (*(*(v88 - 8) + 56))(&v73[v61], 1, 1, v88);
    v89 = sub_23D9D8C74();
    (*(*(v89 - 8) + 56))(v55, 1, 1, v89);
    sub_23D91F2DC(v55, v52, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9DA3A4();
    sub_23D91F344(v55, &qword_27E2F4460, &qword_23D9DC2A0);
    v90 = v61 + v59[11];
    LOBYTE(v249) = 0;
    sub_23D9DA3A4();
    v91 = v251._object;
    *v90 = v251._countAndFlagsBits;
    *(v90 + 1) = v91;
    v92 = v59[12];
    *(v61 + v92) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
    swift_storeEnumTagMultiPayload();
    v93 = v59[13];
    *(v61 + v93) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
    swift_storeEnumTagMultiPayload();
    v94 = object;
    *v61 = countAndFlagsBits;
    v61[1] = v94;
    v95 = (v61 + v59[8]);
    v96 = v180;
    *v95 = v181;
    v95[1] = v96;
    v97 = v178;
    v95[2] = v179;
    v95[3] = v97;
    v98 = v61 + v59[10];
    *v98 = v87;
    *(v98 + 8) = v176;
    v99 = &v73[v61];
    LOBYTE(v73) = v230;
    v74 = v248;
    sub_23D93DA98(v184, v99);
    *(v61 + v59[7]) = 1;
    *(v61 + v59[6]) = v177;
    sub_23D9BA55C(&qword_27E2F6EA8, type metadata accessor for AXSUIGenericVoiceSelectionCell, &protocol conformance descriptor for AXSUIGenericVoiceSelectionCell);
    v100 = v190;
    sub_23D9DA114();
    sub_23D9BA974(v61);
    sub_23D91F2DC(v100, v50, &qword_27E2F6E90, &qword_23D9E2328);
    swift_storeEnumTagMultiPayload();
    sub_23D9BA470();
    sub_23D9D9B14();
    sub_23D91F344(v100, &qword_27E2F6E90, &qword_23D9E2328);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_23D9BA470();
    sub_23D9D9B14();
    v74 = v248;
  }

  v101 = v205;
  v102 = v206;
  if (v73)
  {
    v106._countAndFlagsBits = 1163149650;
    v106._object = 0xE400000000000000;
    v251 = AXSUILocString(_:)(v106);
    MEMORY[0x28223BE20](v251._countAndFlagsBits);
    v104 = v235;
    *(&v176 - 2) = v235;
    sub_23D9BA904();
    sub_23D91B650();
    v107 = v227;
    sub_23D9DA654();
    v105 = v243;
    (*(v101 + 32))(v243, v107, v102);
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v104 = v235;
    v105 = v243;
  }

  v108 = *(v101 + 56);
  v109 = 1;
  v108(v105, v103, 1, v102);
  if ((v73 & 4) != 0)
  {
    v110._countAndFlagsBits = 0x4843544950;
    v110._object = 0xE500000000000000;
    v251 = AXSUILocString(_:)(v110);
    MEMORY[0x28223BE20](v251._countAndFlagsBits);
    *(&v176 - 2) = v104;
    sub_23D9BA904();
    sub_23D91B650();
    v73 = v227;
    sub_23D9DA654();
    v111 = v73;
    LOBYTE(v73) = v230;
    (*(v101 + 32))(v246, v111, v102);
    v109 = 0;
  }

  v112 = 1;
  v108(v246, v109, 1, v102);
  if ((v73 & 8) != 0)
  {
    v113._countAndFlagsBits = 0x454D554C4F56;
    v113._object = 0xE600000000000000;
    v251 = AXSUILocString(_:)(v113);
    MEMORY[0x28223BE20](v251._countAndFlagsBits);
    *(&v176 - 2) = v104;
    sub_23D9BA904();
    sub_23D91B650();
    v73 = v227;
    sub_23D9DA654();
    v114 = v73;
    LOBYTE(v73) = v230;
    (*(v101 + 32))(v247, v114, v102);
    v112 = 0;
  }

  v108(v247, v112, 1, v102);
  v115 = v104 + v240[13];
  v116 = *v115;
  if (*(v115 + 8) == 1)
  {
    if (v116)
    {
LABEL_16:
      v117 = 1;
      goto LABEL_24;
    }
  }

  else
  {

    sub_23D9DACD4();
    v118 = sub_23D9D9D24();
    sub_23D9D91B4();

    v119 = v191;
    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D91F080(v116, 0);
    (*(v192 + 8))(v119, v193);
    if (v251._countAndFlagsBits)
    {
      goto LABEL_16;
    }
  }

  if ((v73 & 0x10) != 0)
  {
    v127 = v186;
    sub_23D9DA584();
    swift_getKeyPath();
    sub_23D9DA514();

    sub_23D91F344(v127, &qword_27E2F4760, &qword_23D9E0740);
    sub_23D9DA584();
    swift_getKeyPath();
    sub_23D9DA514();

    sub_23D91F344(v127, &qword_27E2F4760, &qword_23D9E0740);
    v128 = v185;
    v104 = v235;
    sub_23D9D9134();
    v126 = v194;
    v124 = v207;
    v125 = v195;
    (*(v194 + 32))(v207, v128, v195);
    v120 = 0;
    v121 = v199;
    v122 = v198;
    v123 = v197;
  }

  else
  {
    v120 = 1;
    v121 = v199;
    v122 = v198;
    v123 = v197;
    v124 = v207;
    v125 = v195;
    v126 = v194;
  }

  v129 = 1;
  (*(v126 + 56))(v124, v120, 1, v125);
  if ((v230 & 0x20) != 0)
  {
    v130._countAndFlagsBits = 0x46455F4F49445541;
    v130._object = 0xED00005354434546;
    v251 = AXSUILocString(_:)(v130);
    MEMORY[0x28223BE20](v251._countAndFlagsBits);
    *(&v176 - 2) = v104;
    sub_23D9BA7E4();
    sub_23D91B650();
    v131 = v188;
    sub_23D9DA654();
    (*(v123 + 32))(v121, v131, v122);
    v129 = 0;
  }

  (*(v123 + 56))(v121, v129, 1, v122);
  v132 = v207;
  v133 = v196;
  sub_23D91F2DC(v207, v196, &qword_27E2F6E68, &qword_23D9E22F8);
  v134 = v200;
  sub_23D91F2DC(v121, v200, &qword_27E2F6E60, &qword_23D9E22F0);
  v135 = v201;
  sub_23D91F2DC(v133, v201, &qword_27E2F6E68, &qword_23D9E22F8);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EB0, &qword_23D9E2338);
  sub_23D91F2DC(v134, v135 + *(v136 + 48), &qword_27E2F6E60, &qword_23D9E22F0);
  sub_23D91F344(v121, &qword_27E2F6E60, &qword_23D9E22F0);
  sub_23D91F344(v132, &qword_27E2F6E68, &qword_23D9E22F8);
  sub_23D91F344(v134, &qword_27E2F6E60, &qword_23D9E22F0);
  sub_23D91F344(v133, &qword_27E2F6E68, &qword_23D9E22F8);
  v74 = v248;
  sub_23D9BA5A4(v135, v248);
  v117 = 0;
LABEL_24:
  v137 = 1;
  (*(v208 + 56))(v74, v117, 1, v209);
  if (os_variant_has_internal_ui())
  {
    v138 = sub_23D9D9A04();
    MEMORY[0x28223BE20](v138);
    *(&v176 - 2) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6ED8, &qword_23D9E2350);
    v104 = v235;
    sub_23D91F01C(&qword_27E2F6EE0, &qword_27E2F6ED8, &qword_23D9E2350, &protocol conformance descriptor for AXSUISpecifierLink<A, B>);
    v139 = v202;
    sub_23D9DA644();
    (*(v228 + 32))(v241, v139, v229);
    v137 = 0;
  }

  (*(v228 + 56))(v241, v137, 1, v229);
  v140 = v210;
  sub_23D9D93B4();
  v141 = sub_23D9D93E4();
  (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
  v142 = v213;
  sub_23D9B8CB8(v104, v213);
  v143 = (*(v211 + 80) + 16) & ~*(v211 + 80);
  v144 = swift_allocObject();
  sub_23D9B8D1C(v142, v144 + v143);
  v145 = v238;
  v146 = sub_23D9DA3F4();
  MEMORY[0x28223BE20](v146);
  *(&v176 - 2) = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6EB8, &qword_23D9E2340);
  sub_23D91F01C(&qword_27E2F6EC0, &qword_27E2F6EB8, &qword_23D9E2340, MEMORY[0x277CE11A0]);
  v147 = v214;
  sub_23D9DA684();
  v148 = v216;
  sub_23D9D9CD4();
  v149 = sub_23D9BA6A8();
  v150 = v220;
  v151 = v219;
  sub_23D9DA0D4();
  (*(v217 + 8))(v148, v218);
  (*(v215 + 8))(v147, v151);
  v152._countAndFlagsBits = 0xD000000000000014;
  v152._object = 0x800000023D9E4AD0;
  v251 = AXSUILocString(_:)(v152);
  sub_23D91B650();
  v153 = sub_23D9D9F04();
  v155 = v154;
  v157 = v156;
  v251._countAndFlagsBits = v151;
  v251._object = v149;
  swift_getOpaqueTypeConformance2();
  v158 = v239;
  v159 = v222;
  sub_23D9DA094();
  sub_23D9274BC(v153, v155, v157 & 1);

  (*(v221 + 8))(v150, v159);
  v160._countAndFlagsBits = 0xD00000000000001CLL;
  v160._object = 0x800000023D9E4AF0;
  v251 = AXSUILocString(_:)(v160);
  v161 = sub_23D9D9F04();
  v163 = v162;
  LOBYTE(v159) = v164;
  v165 = v237;
  sub_23D9D9674();
  sub_23D9274BC(v161, v163, v159 & 1);

  v166 = v158;
  sub_23D91F344(v158, &qword_27E2F6E38, &qword_23D9E22C8);
  v167 = v232;
  sub_23D91F2DC(v242, v232, &qword_27E2F6E98, &qword_23D9E2330);
  sub_23D91F2DC(v243, v244, &qword_27E2F6E80, &qword_23D9E2310);
  v168 = v233;
  sub_23D91F2DC(v246, v233, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v247, v245, &qword_27E2F6E80, &qword_23D9E2310);
  v169 = v234;
  sub_23D91F2DC(v248, v234, &qword_27E2F6E70, &qword_23D9E2300);
  v170 = v241;
  v171 = v236;
  sub_23D91F2DC(v241, v236, &qword_27E2F6E48, &qword_23D9E22D8);
  sub_23D9BA764(v165, v166);
  v172 = v226;
  *v226 = v231;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6ED0, &qword_23D9E2348);
  sub_23D91F2DC(v167, v172 + v173[12], &qword_27E2F6E98, &qword_23D9E2330);
  sub_23D91F2DC(v244, v172 + v173[16], &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v168, v172 + v173[20], &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v245, v172 + v173[24], &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F2DC(v169, v172 + v173[28], &qword_27E2F6E70, &qword_23D9E2300);
  sub_23D91F2DC(v171, v172 + v173[32], &qword_27E2F6E48, &qword_23D9E22D8);
  v174 = v239;
  sub_23D9BA764(v239, v172 + v173[36]);
  sub_23D91F344(v237, &qword_27E2F6E38, &qword_23D9E22C8);
  sub_23D91F344(v170, &qword_27E2F6E48, &qword_23D9E22D8);
  sub_23D91F344(v248, &qword_27E2F6E70, &qword_23D9E2300);
  sub_23D91F344(v247, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v246, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v243, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v242, &qword_27E2F6E98, &qword_23D9E2330);
  sub_23D91F344(v174, &qword_27E2F6E38, &qword_23D9E22C8);
  sub_23D91F344(v236, &qword_27E2F6E48, &qword_23D9E22D8);
  sub_23D91F344(v234, &qword_27E2F6E70, &qword_23D9E2300);
  sub_23D91F344(v245, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v233, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v244, &qword_27E2F6E80, &qword_23D9E2310);
  sub_23D91F344(v232, &qword_27E2F6E98, &qword_23D9E2330);

  return (*(v224 + 8))(v238, v225);
}

void *sub_23D9B49EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  sub_23D9DA584();
  swift_getKeyPath();
  LODWORD(v20) = 1056964608;
  sub_23D9DA4F4();

  sub_23D91F344(v4, &qword_27E2F4760, &qword_23D9E0740);
  v5 = v23;
  v6 = v24;
  v7 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v9._countAndFlagsBits = 0x4553414552434E49;
  v9._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v9);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v10._countAndFlagsBits = 0x4553414552434544;
  v10._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v10);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v11._countAndFlagsBits = 0x4553414552434544;
  v11._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v11);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v12._countAndFlagsBits = 0x4553414552434E49;
  v12._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v12);
  v13 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v19, v14);
  v17[1] = v19;
  result = sub_23D9DA3A4();
  v16 = v18;
  *a1 = v17[2];
  *(a1 + 8) = v16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 36) = 0x3F80000000000000;
  *(a1 + 44) = 1028443341;
  strcpy((a1 + 48), "tortoise.fill");
  *(a1 + 62) = -4864;
  *(a1 + 64) = 0x6C69662E65726168;
  *(a1 + 72) = 0xE90000000000006CLL;
  *(a1 + 80) = v13;
  return result;
}

double sub_23D9B4D1C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  sub_23D9DA584();
  swift_getKeyPath();
  LODWORD(v20) = 1056964608;
  sub_23D9DA4F4();

  sub_23D91F344(v4, &qword_27E2F4760, &qword_23D9E0740);
  v5 = v23;
  v6 = v24;
  v7 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v9._countAndFlagsBits = 0x4553414552434E49;
  v9._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v9);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v10._countAndFlagsBits = 0x4553414552434544;
  v10._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v10);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v11._countAndFlagsBits = 0x4553414552434544;
  v11._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v11);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v12._countAndFlagsBits = 0x4553414552434E49;
  v12._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v12);
  v13 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v19, v14);
  v17[3] = v19;
  sub_23D9DA3A4();
  v15 = v18;
  *a1 = v17[4];
  *(a1 + 8) = v15;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = 0.0078125;
  *(a1 + 36) = 0x3F80000000000000;
  *(a1 + 44) = 1028443341;
  *(a1 + 48) = 0x6F6C2E6863746970;
  *(a1 + 56) = 0xE900000000000077;
  *(a1 + 64) = 0x69682E6863746970;
  *(a1 + 72) = 0xEA00000000006867;
  *(a1 + 80) = v13;
  return result;
}

void *sub_23D9B5028@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  sub_23D9DA584();
  swift_getKeyPath();
  LODWORD(v20) = 1065353216;
  sub_23D9DA4F4();

  sub_23D91F344(v4, &qword_27E2F4760, &qword_23D9E0740);
  v5 = v23;
  v6 = v24;
  v7 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D20, &qword_23D9E1E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D9E1E30;
  *(inited + 32) = 0x69682E6863746970;
  *(inited + 40) = 0xEA00000000006867;
  v9._countAndFlagsBits = 0x4553414552434E49;
  v9._object = 0xEE0048435449505FLL;
  *(inited + 48) = AXSUILocString(_:)(v9);
  *(inited + 64) = 0x6F6C2E6863746970;
  *(inited + 72) = 0xE900000000000077;
  v10._countAndFlagsBits = 0x4553414552434544;
  v10._object = 0xEE0048435449505FLL;
  *(inited + 80) = AXSUILocString(_:)(v10);
  strcpy((inited + 96), "speaker.fill");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v11._countAndFlagsBits = 0x4553414552434544;
  v11._object = 0xEF454D554C4F565FLL;
  *(inited + 112) = AXSUILocString(_:)(v11);
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x800000023D9E4A70;
  v12._countAndFlagsBits = 0x4553414552434E49;
  v12._object = 0xEF454D554C4F565FLL;
  *(inited + 144) = AXSUILocString(_:)(v12);
  v13 = sub_23D9B8734(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D28, &qword_23D9E1E90);
  swift_arrayDestroy();
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
  MEMORY[0x23EEF3850](&v19, v14);
  v17[3] = v19;
  result = sub_23D9DA3A4();
  v16 = v18;
  *a1 = v17[4];
  *(a1 + 8) = v16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 36) = 0x3F8000003D4CCCCDLL;
  *(a1 + 44) = 1028443341;
  strcpy((a1 + 48), "speaker.fill");
  *(a1 + 61) = 0;
  *(a1 + 62) = -5120;
  *(a1 + 64) = 0xD000000000000013;
  *(a1 + 72) = 0x800000023D9E4A70;
  *(a1 + 80) = v13;
  return result;
}

double sub_23D9B5334@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  sub_23D9DA584();
  swift_getKeyPath();
  sub_23D9DA514();

  sub_23D91F344(v4, &qword_27E2F4760, &qword_23D9E0740);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  v14 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F00, &qword_23D9E24E8);
  sub_23D9DA544();

  v5 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F08, &qword_23D9E24F0);
  v6 = sub_23D9D8BA4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23D9DC3E0;
  v10 = *MEMORY[0x277D70158];
  v11 = *(v7 + 104);
  v13 = v22;
  v11(v9 + v8, v10, v6);
  *a1 = v5;
  result = *&v13;
  *(a1 + 8) = v13;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_23D9B5544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AXSUIVoiceSettings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23D9B8CB8(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_23D9B8D1C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  return sub_23D9BEA7C(0x616C506F69647561, 0xEF646E756F726779, sub_23D9B57D0, 0, sub_23D9BAE7C, v8, a2);
}

__n128 sub_23D9B5680@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v2);
  v4 = v6 - v3;
  sub_23D9DA584();
  swift_getKeyPath();
  sub_23D9DA514();

  sub_23D91F344(v4, &qword_27E2F4760, &qword_23D9E0740);
  v6[1] = v6[4];
  v6[2] = v6[5];
  v6[3] = v6[6];
  v6[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F00, &qword_23D9E24E8);
  sub_23D9DA544();

  result = v7;
  *a1 = v6[7];
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_23D9B57D0@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4B30;
  v2._countAndFlagsBits = 0xD000000000000010;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D9B5840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v5 = &v12[-v4];
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x23EEF3850]();
  v9 = sub_23D9D8DA4();
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v8, 1, v9))
  {
    v12[4] = 1;
    sub_23D9D8D04();
  }

  if (!v10(v8, 1, v9))
  {
    v12[8] = 1;
    sub_23D9D8D44();
  }

  if (!v10(v8, 1, v9))
  {
    v12[12] = 1;
    sub_23D9D8D24();
  }

  if (!v10(v8, 1, v9))
  {
    sub_23D9D8CE4();
  }

  if (!v10(v8, 1, v9))
  {
    sub_23D9D8D64();
  }

  sub_23D91F2DC(v8, v5, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D91F2DC(v5, v2, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA564();
  sub_23D91F344(v5, &qword_27E2F5900, &unk_23D9DC640);
  return sub_23D91F344(v8, &qword_27E2F5900, &unk_23D9DC640);
}

uint64_t sub_23D9B5AB8@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4AD0;
  v2._countAndFlagsBits = 0xD000000000000014;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  v3 = sub_23D9D9F04();
  v5 = v4;
  v7 = v6;
  sub_23D9DA274();
  v8 = sub_23D9D9EC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23D9274BC(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_23D9B5BBC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23D9D9AC4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F10, &qword_23D9E24F8);
  return sub_23D9B5C14(a2 + *(v3 + 44));
}

uint64_t sub_23D9B5C14@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v35 = *(v33 - 8);
  v1 = v35;
  MEMORY[0x28223BE20](v33);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  v34 = &v32 - v5;
  v32 = *(v1 + 16);
  v32(v4);
  v6._object = 0x800000023D9E4AF0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v38 = AXSUILocString(_:)(v6);
  sub_23D91B650();
  v7 = sub_23D9D9F04();
  v9 = v8;
  v11 = v10;
  sub_23D9D9DC4();
  v12 = sub_23D9D9EE4();
  v14 = v13;
  v16 = v15;

  sub_23D9274BC(v7, v9, v11 & 1);

  sub_23D9DA2F4();
  v17 = sub_23D9D9EB4();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_23D9274BC(v12, v14, v16 & 1);

  v24 = v37;
  v25 = v33;
  v26 = v34;
  v27 = v32;
  (v32)(v37, v34, v33);
  v28 = v36;
  (v27)(v36, v24, v25);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F18, &qword_23D9E2500) + 48);
  *v29 = v17;
  *(v29 + 8) = v19;
  *(v29 + 16) = v21 & 1;
  *(v29 + 24) = v23;
  sub_23D91E0AC(v17, v19, v21 & 1);
  v30 = *(v35 + 8);

  v30(v26, v25);
  sub_23D9274BC(v17, v19, v21 & 1);

  return (v30)(v37, v25);
}

void sub_23D9B5EDC(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D9B8CB8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D9B8D1C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  aBlock[4] = sub_23D9BA440;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D9A0AF4;
  aBlock[3] = &block_descriptor_3;
  v7 = _Block_copy(aBlock);

  AXPerformBlockOnMainThreadAfterDelay();
  _Block_release(v7);
}

uint64_t sub_23D9B6040()
{
  type metadata accessor for AXSUIVoiceSettings(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);
  return sub_23D9D9C54();
}

uint64_t sub_23D9B60A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_23D9DA9F4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_23D9DA9B4();
  v4 = sub_23D9DA9A4();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_23D9BB718(0, 0, v2, &unk_23D9E22B0, v5);
}

uint64_t sub_23D9B61AC()
{
  sub_23D9DA9B4();
  v0[2] = sub_23D9DA9A4();
  v2 = sub_23D9DA994();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_23D9B6240, v2, v1);
}

uint64_t sub_23D9B6240()
{
  sub_23D9D8BC4();
  *(v0 + 40) = sub_23D9D8BB4();
  v3 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_23D9B62F8;

  return v3();
}

uint64_t sub_23D9B62F8()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_23D9B643C, v3, v2);
}

uint64_t sub_23D9B643C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9B649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for AXSUIVoiceSettings(0);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_23D9D8DA4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  result = v18(a1, 1, v16);
  if (result != 1)
  {
    v35 = v9;
    v20 = a2;
    sub_23D91F2DC(a1, v15, &qword_27E2F5900, &unk_23D9DC640);
    if (v18(v15, 1, v16) == 1)
    {
      sub_23D91F344(v15, &qword_27E2F5900, &unk_23D9DC640);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = sub_23D9D8D84();
      v22 = v23;
      (*(v17 + 8))(v15, v16);
    }

    sub_23D91F2DC(v20, v12, &qword_27E2F5900, &unk_23D9DC640);
    if (v18(v12, 1, v16) == 1)
    {
      sub_23D91F344(v12, &qword_27E2F5900, &unk_23D9DC640);
      v24 = v35;
      if (!v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = sub_23D9D8D84();
      v27 = v26;
      (*(v17 + 8))(v12, v16);
      v24 = v35;
      if (v22)
      {
        if (v27)
        {
          if (v21 == v25 && v22 == v27)
          {
          }

          else
          {
            v28 = sub_23D9DAFC4();

            if ((v28 & 1) == 0)
            {
              return result;
            }
          }

          goto LABEL_17;
        }
      }

      else if (!v27)
      {
LABEL_17:
        v29 = sub_23D9DA9F4();
        (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
        v30 = v38;
        sub_23D9B8CB8(v37, v38);
        sub_23D9DA9B4();
        v31 = sub_23D9DA9A4();
        v32 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v33 = swift_allocObject();
        v34 = MEMORY[0x277D85700];
        *(v33 + 16) = v31;
        *(v33 + 24) = v34;
        sub_23D9B8D1C(v30, v33 + v32);
        sub_23D9897D0(0, 0, v24, &unk_23D9E22A0, v33);
      }
    }
  }

  return result;
}

uint64_t sub_23D9B68D8()
{
  v0[2] = sub_23D9DA9B4();
  v0[3] = sub_23D9DA9A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23D9B6984;

  return sub_23D9B6BA8();
}

uint64_t sub_23D9B6984()
{
  *(*v1 + 40) = v0;

  v3 = sub_23D9DA994();
  if (v0)
  {
    v4 = sub_23D9B6B44;
  }

  else
  {
    v4 = sub_23D9B6AE0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23D9B6AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9B6B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9B6BA8()
{
  v1[10] = v0;
  v2 = type metadata accessor for AXSUIVoiceSettings(0);
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v1[13] = *(v3 + 64);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v1[15] = swift_task_alloc();
  v1[16] = sub_23D9DA9B4();
  v1[17] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();
  v1[18] = v5;
  v1[19] = v4;

  return MEMORY[0x2822009F8](sub_23D9B6CE0, v5, v4);
}

uint64_t sub_23D9B6CE0()
{
  sub_23D9D8BC4();
  *(v0 + 160) = sub_23D9D8BB4();
  v3 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_23D9B6D98;

  return v3();
}

uint64_t sub_23D9B6D98()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23D9B6EDC, v3, v2);
}

uint64_t sub_23D9B6EDC()
{
  v1 = (v0[10] + *(v0[11] + 60));
  v2 = *v1;
  v0[22] = *v1;
  v3 = v1[1];
  v0[2] = v2;
  v0[23] = v3;
  v0[3] = v3;
  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4748, &qword_23D9DC7B8);
  sub_23D9DA3B4();
  v4 = v0[8];
  v0[25] = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[26] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4750, &unk_23D9DC7C0);
    *v5 = v0;
    v5[1] = sub_23D9B7164;
    v7 = MEMORY[0x277D84950];
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 6, v4, v8, v6, v7);
  }

  else
  {

    v9 = v0[23];
    v10 = v0[22];
    v11 = v0[15];
    v12 = v0[14];
    v13 = v0[12];
    v14 = v0[10];
    v15 = sub_23D9DA9F4();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    sub_23D9B8CB8(v14, v12);
    v16 = sub_23D9DA9A4();
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_23D9B8D1C(v12, v18 + v17);
    v20 = sub_23D9897D0(0, 0, v11, &unk_23D9E2290, v18);
    v0[4] = v10;
    v0[5] = v9;
    v0[9] = v20;
    sub_23D9DA3C4();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_23D9B7164()
{
  v1 = *v0;

  sub_23D9B9E00(*(v1 + 48), *(v1 + 56));
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23D9B72C0, v3, v2);
}

uint64_t sub_23D9B72C0()
{

  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[10];
  v7 = sub_23D9DA9F4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_23D9B8CB8(v6, v4);
  v8 = sub_23D9DA9A4();
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_23D9B8D1C(v4, v10 + v9);
  v12 = sub_23D9897D0(0, 0, v3, &unk_23D9E2290, v10);
  v0[4] = v2;
  v0[5] = v1;
  v0[9] = v12;
  sub_23D9DA3C4();

  v13 = v0[1];

  return v13();
}

uint64_t sub_23D9B7444(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23D9B8CB8(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D9B8D1C(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return sub_23D9DA404();
}

uint64_t sub_23D9B7578(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceSettings(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_23D9DA9F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23D9B8CB8(a1, v5);
  sub_23D9DA9B4();
  v10 = sub_23D9DA9A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_23D9B8D1C(v5, v12 + v11);
  sub_23D9897D0(0, 0, v8, &unk_23D9E2278, v12);
}

uint64_t sub_23D9B7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_23D9DA9B4();
  v4[5] = sub_23D9DA9A4();
  v6 = sub_23D9DA994();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23D9B77C8, v6, v5);
}

uint64_t sub_23D9B77C8()
{
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for AXSUIVoiceSettings(0) + 56));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  if (*(v0 + 96))
  {
    sub_23D9D8BC4();
    *(v0 + 80) = sub_23D9D8BB4();
    v8 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_23D9B7AD4;

    return v8();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_23D9B7934;

    return sub_23D9B6BA8();
  }
}

uint64_t sub_23D9B7934()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_23D9B7C18;
  }

  else
  {
    v5 = sub_23D9B7A70;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23D9B7A70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9B7AD4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23D9BAF28, v3, v2);
}

uint64_t sub_23D9B7C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9B7C7C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXSUIVoiceSettings(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  result = sub_23D9DA384();
  *a2 = result;
  return result;
}

uint64_t sub_23D9B7D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v4[3] = swift_task_alloc();
  v5 = sub_23D9D8DA4();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_23D9DA9B4();
  v4[7] = sub_23D9DA9A4();
  v7 = sub_23D9DA994();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_23D9B7E58, v7, v6);
}

uint64_t sub_23D9B7E58()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  sub_23D9DA744();
  sub_23D9D9594();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x23EEF3850](v5);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[3];

    sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
    v7 = v0[2];
    *(swift_task_alloc() + 16) = v7;
    sub_23D9DA744();
    sub_23D9D9594();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    sub_23D9D8BC4();
    v0[10] = sub_23D9D8BB4();
    v12 = (*MEMORY[0x277D701C0] + MEMORY[0x277D701C0]);
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_23D9B80B4;
    v11 = v0[6];

    return v12(v11);
  }
}

uint64_t sub_23D9B80B4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_23D9B8304;
  }

  else
  {
    v5 = sub_23D9B8208;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23D9B8208()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);
  v4 = v0[2];
  *(swift_task_alloc() + 16) = v4;
  sub_23D9DA744();
  sub_23D9D9594();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23D9B8304()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 8))(v1, v2);
  *(swift_task_alloc() + 16) = v4;
  sub_23D9DA744();
  sub_23D9D9594();

  v5 = v0[1];

  return v5();
}

uint64_t sub_23D9B8400(uint64_t a1, char a2)
{
  type metadata accessor for AXSUIVoiceSettings(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9B8484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9894();
  *a1 = result;
  return result;
}

uint64_t sub_23D9B84DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9804();
  *a1 = result;
  return result;
}

unint64_t sub_23D9B8534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5920, &qword_23D9DF030);
    v3 = sub_23D9DAF74();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23D960590(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D9B8638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F28, &qword_23D9E2510);
    v3 = sub_23D9DAF74();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23D960590(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D9B8734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F20, &qword_23D9E2508);
    v3 = sub_23D9DAF74();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23D960590(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23D9B888C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9894();
  *a1 = result;
  return result;
}

unint64_t sub_23D9B88E4()
{
  result = qword_27E2F6D58;
  if (!qword_27E2F6D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D50, &unk_23D9E1EE8);
    sub_23D91F01C(&qword_27E2F5398, &qword_27E2F53A0, &qword_23D9DDFA0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D58);
  }

  return result;
}

uint64_t sub_23D9B899C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9804();
  *a1 = result;
  return result;
}

unint64_t sub_23D9B89F4()
{
  result = qword_27E2F6D60;
  if (!qword_27E2F6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D30, &qword_23D9E1E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D50, &unk_23D9E1EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5180, &qword_23D9DDF50);
    sub_23D9B88E4();
    sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F5C20, &qword_27E2F5C28, &qword_23D9DF690, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D60);
  }

  return result;
}

unint64_t sub_23D9B8B48()
{
  result = qword_27E2F6D68;
  if (!qword_27E2F6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D38, &qword_23D9E1EA0);
    sub_23D9B89F4();
    sub_23D9BA55C(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6D68);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t sub_23D9B8C6C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D9B8CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9B8D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9B8D98()
{
  result = qword_27E2F6DA0;
  if (!qword_27E2F6DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D80, &qword_23D9E1F30);
    sub_23D9B8E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DA0);
  }

  return result;
}

unint64_t sub_23D9B8E24()
{
  result = qword_27E2F6DA8;
  if (!qword_27E2F6DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6DB0, &qword_23D9E1F48);
    sub_23D91F01C(&qword_27E2F6D90, &qword_27E2F6D78, &qword_23D9E1F28, &protocol conformance descriptor for AXSUIPlatformFormListView<A>);
    sub_23D9BA55C(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DA8);
  }

  return result;
}

unint64_t sub_23D9B8F0C()
{
  result = qword_27E2F6DB8;
  if (!qword_27E2F6DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5900, &unk_23D9DC640);
    sub_23D9BA55C(&qword_27E2F65D8, MEMORY[0x277CE6738], MEMORY[0x277CE6740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DB8);
  }

  return result;
}

uint64_t sub_23D9B8FC0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXSUIVoiceSettings(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9B649C(a1, a2, v6);
}

unint64_t sub_23D9B9048()
{
  result = qword_27E2F6DD0;
  if (!qword_27E2F6DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D88, &qword_23D9E1F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D80, &qword_23D9E1F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5900, &unk_23D9DC640);
    sub_23D9B8D98();
    sub_23D9B8F0C();
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F6DD8, &qword_27E2F6DC0, &qword_23D9E1F50, &unk_23D9E2E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DD0);
  }

  return result;
}

unint64_t sub_23D9B9188()
{
  result = qword_27E2F6DE0;
  if (!qword_27E2F6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DE0);
  }

  return result;
}

unint64_t sub_23D9B91E0()
{
  result = qword_27E2F6DE8;
  if (!qword_27E2F6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DE8);
  }

  return result;
}

unint64_t sub_23D9B9238()
{
  result = qword_27E2F6DF0;
  if (!qword_27E2F6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DF0);
  }

  return result;
}

unint64_t sub_23D9B9290()
{
  result = qword_27E2F6DF8;
  if (!qword_27E2F6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6DF8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23D9B9324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_23D9B936C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23D9B93E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23D9B9594(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_23D9B9730(uint64_t a1)
{
  sub_23D9B9AC0(319, &qword_27E2F6518, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE1200]);
  if (v1 <= 0x3F)
  {
    sub_23D9B9AC0(319, &qword_27E2F6E10, &qword_27E2F4778, &qword_23D9DC800, MEMORY[0x277CE1200]);
    if (v2 <= 0x3F)
    {
      sub_23D9B9A70(319, &qword_27E2F6E18, MEMORY[0x277D837D0], MEMORY[0x277CE1200]);
      if (v3 <= 0x3F)
      {
        sub_23D9B9A70(319, &qword_27E2F46A0, MEMORY[0x277D839B0], MEMORY[0x277CE10B0]);
        if (v4 <= 0x3F)
        {
          sub_23D9B99C0();
          if (v5 <= 0x3F)
          {
            sub_23D9B9AC0(319, &qword_27E2F4348, &qword_27E2F4350, qword_23D9DBF90, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_23D9B9A18(319);
              if (v7 <= 0x3F)
              {
                sub_23D9B9A70(319, &qword_27E2F5718, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_23D9B9A70(319, &qword_27E2F4338, &type metadata for AXSUIVoiceOverSpeechViewContext, MEMORY[0x277CDF470]);
                  if (v9 <= 0x3F)
                  {
                    sub_23D9B9AC0(319, &qword_27E2F46A8, &qword_27E2F46B0, &qword_23D9E0CB0, MEMORY[0x277CE10B0]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D9B99C0()
{
  if (!qword_27E2F6E20)
  {
    v0 = sub_23D9D9C74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F6E20);
    }
  }
}

void sub_23D9B9A18(uint64_t a1)
{
  if (!qword_27E2F4690)
  {
    sub_23D9D89C4();
    v1 = sub_23D9DAD74();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F4690);
    }
  }
}

void sub_23D9B9A70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23D9B9AC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for AXSUIVoiceSettings.Settings(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AXSUIVoiceSettings.Settings(uint64_t result, int a2, int a3)
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

uint64_t sub_23D9B9B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D40, &qword_23D9E1EA8);
  sub_23D91F01C(&qword_27E2F6D70, &qword_27E2F6D40, &qword_23D9E1EA8, MEMORY[0x277CDF050]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9B9C28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6D88, &qword_23D9E1F38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F53F8, &qword_23D9DE200);
  sub_23D9B9048();
  sub_23D91F01C(&qword_27E2F53F0, &qword_27E2F53F8, &qword_23D9DE200, MEMORY[0x277CDF030]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9B9D10(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUIVoiceSettings(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D928310;

  return sub_23D9B7730(a1, v6, v7, v1 + v5);
}

void sub_23D9B9E00(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_23D9B9E0C(uint64_t a1)
{
  v4 = *(type metadata accessor for AXSUIVoiceSettings(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23D92A70C;

  return sub_23D9B7D2C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for AXSUIVoiceSettings(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740) + 32);
  v5 = sub_23D9D8DA4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = v3 + v1[8];
  v8 = sub_23D9D9CB4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);

  if (*(v3 + v1[9]))
  {
  }

  v10 = v1[10];
  v11 = sub_23D9D89C4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  sub_23D91F080(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_23D9BA26C()
{
  type metadata accessor for AXSUIVoiceSettings(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D92A70C;

  return sub_23D9B68D8();
}

uint64_t sub_23D9BA35C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D9BA394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D928310;

  return sub_23D9B61AC();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D9BA470()
{
  result = qword_27E2F6EA0;
  if (!qword_27E2F6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6E90, &qword_23D9E2328);
    sub_23D9BA55C(&qword_27E2F6EA8, type metadata accessor for AXSUIGenericVoiceSelectionCell, &protocol conformance descriptor for AXSUIGenericVoiceSelectionCell);
    sub_23D9BA55C(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EA0);
  }

  return result;
}

uint64_t sub_23D9BA55C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9BA5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E50, &qword_23D9E22E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9BA62C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AXSUIVoiceSettings(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23D9BA6A8()
{
  result = qword_27E2F6EC8;
  if (!qword_27E2F6EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6E28, &qword_23D9E22B8);
    sub_23D91F01C(&qword_27E2F6EC0, &qword_27E2F6EB8, &qword_23D9E2340, MEMORY[0x277CE11A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EC8);
  }

  return result;
}

uint64_t sub_23D9BA764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6E38, &qword_23D9E22C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9BA7E4()
{
  result = qword_27E2F6EE8;
  if (!qword_27E2F6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EE8);
  }

  return result;
}

uint64_t sub_23D9BA838@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9D8D84();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D9BA8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D8CD4();
  *a1 = result;
  return result;
}

unint64_t sub_23D9BA904()
{
  result = qword_27E2F6EF0;
  if (!qword_27E2F6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6EF0);
  }

  return result;
}

uint64_t sub_23D9BA974(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIGenericVoiceSelectionCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9BA9D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D8CF4();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_23D9BAA1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D8D14();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_23D9BAA68@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D8D34();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_23D9BAAF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D8D54();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = type metadata accessor for AXSUIVoiceSettings(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740) + 32);
  v4 = sub_23D9D8DA4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v2 + v1[8];
  v7 = sub_23D9D9CB4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6D98, &qword_23D9E1F40);

  if (*(v2 + v1[9]))
  {
  }

  v9 = v1[10];
  v10 = sub_23D9D89C4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  sub_23D91F080(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

double sub_23D9BAE7C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AXSUIVoiceSettings(0);

  *&result = sub_23D9B5680(a1).n128_u64[0];
  return result;
}

uint64_t sub_23D9BAF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_23D9BB01C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AXSUIVoiceLoader(uint64_t a1)
{
  result = qword_27E2F6F38;
  if (!qword_27E2F6F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D9BB118(uint64_t a1)
{
  sub_23D95F008();
  if (v1 <= 0x3F)
  {
    sub_23D9BB1B4(319);
    if (v2 <= 0x3F)
    {
      sub_23D9BB218(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D9BB1B4(uint64_t a1)
{
  if (!qword_27E2F6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4460, &qword_23D9DC2A0);
    v1 = sub_23D9DA604();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F6F48);
    }
  }
}

void sub_23D9BB218(uint64_t a1)
{
  if (!qword_27E2F4658)
  {
    sub_23D9D8AE4();
    v1 = sub_23D9D9484();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F4658);
    }
  }
}

void sub_23D9BB28C()
{
  v0 = sub_23D9D8BE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = sub_23D9D8BF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  sub_23D9D8C34();
  v14 = (*(v8 + 88))(v13, v7);
  if (v14 == *MEMORY[0x277D70240])
  {
    (*(v8 + 16))(v10, v13, v7);
    (*(v8 + 96))(v10, v7);
    (*(v1 + 32))(v6, v10, v0);
    (*(v1 + 16))(v3, v6, v0);
    v15 = (*(v1 + 88))(v3, v0);
    if (v15 == *MEMORY[0x277D70210] || v15 == *MEMORY[0x277D70208] || v15 == *MEMORY[0x277D70220])
    {
      v18._countAndFlagsBits = 0x504F545F49524953;
      v18._object = 0xE800000000000000;
      AXSUILocString(_:)(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4560, &qword_23D9DC3F0);
      v19 = swift_allocObject();
      v34 = v7;
      v20 = v19;
      *(v19 + 16) = xmmword_23D9DC3E0;
      v21 = sub_23D9D8C14();
      v23 = v22;
      v20[7] = MEMORY[0x277D837D0];
      v20[8] = sub_23D91F908();
      v20[4] = v21;
      v20[5] = v23;
      sub_23D9DA8C4();

      (*(v1 + 8))(v6, v0);
      (*(v8 + 8))(v13, v34);
      return;
    }

    v32 = *(v1 + 8);
    v32(v6, v0);
    v32(v3, v0);
    goto LABEL_15;
  }

  if (v14 != *MEMORY[0x277D70238] || (v24 = sub_23D9D8BD4(), v25 = [v24 manufacturerName], v24, !v25))
  {
LABEL_15:
    (*(v8 + 8))(v13, v7);
    sub_23D9D8C14();
    return;
  }

  v35 = sub_23D9D8C14();
  v36 = v26;
  MEMORY[0x23EEF3C30](10272, 0xE200000000000000);
  v27 = sub_23D9D8BD4();
  v28 = [v27 manufacturerName];

  if (v28)
  {
    v29 = sub_23D9DA8B4();
    v31 = v30;

    MEMORY[0x23EEF3C30](v29, v31);

    MEMORY[0x23EEF3C30](41, 0xE100000000000000);
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23D9BB718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23D91F2DC(a3, v25 - v10, qword_27E2F6C70, &unk_23D9E0A10);
  v12 = sub_23D9DA9F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23D91F344(v11, qword_27E2F6C70, &unk_23D9E0A10);
  }

  else
  {
    sub_23D9DA9E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23D9DA994();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23D9DA8F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23D9BBA18()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AXSUIVoiceLoader(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23D9BBB68()
{
  v1[2] = v0;
  v2 = sub_23D9D8C74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for AXSUIVoiceLoader(0);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_23D9D91D4();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_23D9DA9B4();
  v1[16] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();
  v1[17] = v5;
  v1[18] = v4;

  return MEMORY[0x2822009F8](sub_23D9BBD50, v5, v4);
}

uint64_t sub_23D9BBD50(uint64_t a1)
{
  v30 = v1;
  v2 = v1[2];
  v3 = *v2;
  v1[19] = *v2;
  v4 = v2[1];
  v1[20] = v4;
  if (v4)
  {
    sub_23D9D8F04();

    v5 = sub_23D9D91C4();
    v6 = sub_23D9DACA4();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[15];
    v9 = v1[11];
    v10 = v1[12];
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_23D9BDA5C(0x6F56657461647075, 0xED00002928656369, &v29);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_23D9BDA5C(v3, v4, &v29);
      _os_log_impl(&dword_23D918000, v5, v6, "AXSUIVoiceLoader::%s - voiceId=%s. Will await voiceResolver.voice", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEF4BC0](v12, -1, -1);
      MEMORY[0x23EEF4BC0](v11, -1, -1);
    }

    v13 = *(v10 + 8);
    v13(v8, v9);
    v1[21] = v13;
    v1[22] = sub_23D9BBA18();
    v28 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v14 = swift_task_alloc();
    v1[23] = v14;
    *v14 = v1;
    v14[1] = sub_23D9BC198;
    v15 = v1[10];

    return v28(v15, v3, v4);
  }

  else
  {

    sub_23D9D8F04();
    v17 = sub_23D9D91C4();
    v18 = sub_23D9DACA4();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v1[12];
    v20 = v1[13];
    v22 = v1[11];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_23D9BDA5C(0x6F56657461647075, 0xED00002928656369, &v29);
      _os_log_impl(&dword_23D918000, v17, v18, "AXSUIVoiceLoader::%s - voiceId was nil. Setting voice to nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23EEF4BC0](v24, -1, -1);
      MEMORY[0x23EEF4BC0](v23, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    v26 = v1[9];
    v25 = v1[10];
    (*(v1[4] + 56))(v25, 1, 1, v1[3]);
    sub_23D91F2DC(v25, v26, &qword_27E2F4460, &qword_23D9DC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
    sub_23D9DA564();
    sub_23D91F344(v25, &qword_27E2F4460, &qword_23D9DC2A0);

    v27 = v1[1];

    return v27();
  }
}

uint64_t sub_23D9BC198()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_23D9BC2DC, v3, v2);
}

uint64_t sub_23D9BC2DC()
{
  v35 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[2];

  sub_23D91F2DC(v1, v2, &qword_27E2F4460, &qword_23D9DC2A0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520);
  sub_23D9DA564();
  sub_23D91F344(v1, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9D8F04();
  sub_23D9BCF18(v4, v3);

  v5 = sub_23D9D91C4();
  v6 = sub_23D9DACA4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[8];
    v10 = v0[4];
    v31 = v0[3];
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v11 = 136315650;
    *(v11 + 4) = sub_23D9BDA5C(0x6F56657461647075, 0xED00002928656369, &v34);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_23D9BDA5C(v8, v7, &v34);
    *(v11 + 22) = 2080;
    MEMORY[0x23EEF3850](v33);
    v12 = (*(v10 + 48))(v9, 1, v31);
    v13 = v0[8];
    if (v12)
    {
      sub_23D91F344(v0[8], &qword_27E2F4460, &qword_23D9DC2A0);
      v14 = 0xE500000000000000;
      v15 = 0x3E6C696E3CLL;
    }

    else
    {
      v22 = v0[4];
      v23 = v0[5];
      v24 = v0[3];
      (*(v22 + 16))(v23, v0[8], v24);
      sub_23D91F344(v13, &qword_27E2F4460, &qword_23D9DC2A0);
      v15 = sub_23D9D8C24();
      v14 = v25;
      (*(v22 + 8))(v23, v24);
    }

    v16 = v0[21];
    v26 = v0[14];
    v27 = v0[11];
    sub_23D9BE004(v0[7]);
    v28 = sub_23D9BDA5C(v15, v14, &v34);

    *(v11 + 24) = v28;
    _os_log_impl(&dword_23D918000, v5, v6, "AXSUIVoiceLoader::%s - voiceId=%s. Did await voiceResolver.voice = %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEF4BC0](v32, -1, -1);
    MEMORY[0x23EEF4BC0](v11, -1, -1);

    v20 = v26;
    v21 = v27;
  }

  else
  {
    v16 = v0[21];
    v17 = v0[14];
    v18 = v0[11];
    v19 = v0[7];

    sub_23D9BE004(v19);
    v20 = v17;
    v21 = v18;
  }

  v16(v20, v21);

  v29 = v0[1];

  return v29();
}

uint64_t sub_23D9BC6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[1] = a2;
  v5 = type metadata accessor for AXSUIVoiceLoader(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F50, &qword_23D9E25A0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  sub_23D9BCF18(v3, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_23D9BCF80(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v10[*(v8 + 36)];
  sub_23D9D9584();
  sub_23D9DA9C4();
  *v13 = &unk_23D9E25B0;
  *(v13 + 1) = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F58, &qword_23D9E25B8);
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = v3[1];
  v18[2] = *v3;
  v18[3] = v15;
  sub_23D9BCF18(v3, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_23D9BCF80(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9BD29C();
  sub_23D9BD3E4();
  sub_23D9DA1E4();

  return sub_23D91F344(v10, &qword_27E2F6F50, &qword_23D9E25A0);
}

uint64_t sub_23D9BC92C()
{
  v0[2] = sub_23D9DA9B4();
  v0[3] = sub_23D9DA9A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23D9BC9D8;

  return sub_23D9BBB68();
}

uint64_t sub_23D9BC9D8()
{

  v1 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9BE0F8, v1, v0);
}

uint64_t sub_23D9BCB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AXSUIVoiceLoader(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_23D9DA9F4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_23D9BCF18(a3, v7);
  sub_23D9DA9B4();
  v12 = sub_23D9DA9A4();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_23D9BCF80(v7, v14 + v13);
  sub_23D9BB718(0, 0, v10, &unk_23D9E25C8, v14);
}

uint64_t sub_23D9BCCCC()
{
  v0[2] = sub_23D9DA9B4();
  v0[3] = sub_23D9DA9A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23D9BCD78;

  return sub_23D9BBB68();
}

uint64_t sub_23D9BCD78()
{

  v1 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9BCEB4, v1, v0);
}

uint64_t sub_23D9BCEB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9BCF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceLoader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9BCF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXSUIVoiceLoader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9BCFE4()
{
  type metadata accessor for AXSUIVoiceLoader(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D92A70C;

  return sub_23D9BC92C();
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for AXSUIVoiceLoader(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520) + 32);
  v5 = sub_23D9D8C74();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_23D9BD21C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXSUIVoiceLoader(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D9BCB14(a1, a2, v6);
}

unint64_t sub_23D9BD29C()
{
  result = qword_27E2F6F60;
  if (!qword_27E2F6F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F50, &qword_23D9E25A0);
    sub_23D9BD328();
    sub_23D9BD38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6F60);
  }

  return result;
}

unint64_t sub_23D9BD328()
{
  result = qword_27E2F6F68;
  if (!qword_27E2F6F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F58, &qword_23D9E25B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6F68);
  }

  return result;
}

unint64_t sub_23D9BD38C()
{
  result = qword_27E2F4228;
  if (!qword_27E2F4228)
  {
    sub_23D9D9584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4228);
  }

  return result;
}

unint64_t sub_23D9BD3E4()
{
  result = qword_27E2F6F70;
  if (!qword_27E2F6F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4458, &qword_23D9DD3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6F70);
  }

  return result;
}

uint64_t sub_23D9BD460()
{
  v1 = type metadata accessor for AXSUIVoiceLoader(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + *(v1 + 20);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F30, &unk_23D9E2520) + 32);
  v5 = sub_23D9D8C74();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_23D9BD5D4()
{
  type metadata accessor for AXSUIVoiceLoader(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23D928310;

  return sub_23D9BCCCC();
}

uint64_t sub_23D9BD6C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23D9BD7BC;

  return v6(a1);
}

uint64_t sub_23D9BD7BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23D9BD8B4()
{

  return swift_deallocObject();
}

uint64_t sub_23D9BD8EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D92A70C;

  return sub_23D9BD6C4(a1, v4);
}

uint64_t sub_23D9BD9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D928310;

  return sub_23D9BD6C4(a1, v4);
}

unint64_t sub_23D9BDA5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D9BDB28(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23D939E34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D9BDB28(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23D9BDC34(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23D9DAEA4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23D9BDC34(uint64_t a1, unint64_t a2)
{
  v3 = sub_23D9BDC80(a1, a2);
  sub_23D9BDDB0(&unk_284FDD748);
  return v3;
}

void *sub_23D9BDC80(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D9BDE9C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23D9DAEA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23D9DA944();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D9BDE9C(v10, 0);
        result = sub_23D9DAE54();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23D9BDDB0(uint64_t result)
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

  result = sub_23D9BDF10(result, v11, 1, v3);
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

void *sub_23D9BDE9C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F78, &unk_23D9E25F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D9BDF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F78, &unk_23D9E25F0);
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

uint64_t sub_23D9BE004(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIVoiceLoader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D9BE060()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F50, &qword_23D9E25A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9BD29C();
  sub_23D9BD3E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D9BE0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  v6 = qword_27E2F7320;
  if (qword_27E2F7320)
  {
    v7 = qword_27E2F7320;
    v8 = sub_23D9DA8A4();
    v9 = sub_23D9DA8A4();

    v10 = sub_23D9DA8A4();
    v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  sub_23D9D9F04();
  if (v6)
  {
    v12 = sub_23D9DA8A4();
    v13 = sub_23D9DA8A4();

    v14 = sub_23D9DA8A4();
    v15 = [v6 localizedStringForKey:v12 value:v13 table:v14];

    sub_23D9DA8B4();
  }

  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7078, &qword_23D9E2920);
  sub_23D91F01C(&qword_27E2F7070, &qword_27E2F7078, &qword_23D9E2920, MEMORY[0x277CE14C8]);
  return sub_23D9DA674();
}

uint64_t sub_23D9BE3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  v6 = qword_27E2F7320;
  if (qword_27E2F7320)
  {
    v7 = qword_27E2F7320;
    v8 = sub_23D9DA8A4();
    v9 = sub_23D9DA8A4();

    v10 = sub_23D9DA8A4();
    v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  sub_23D9D9F04();
  if (v6)
  {
    v12 = sub_23D9DA8A4();
    v13 = sub_23D9DA8A4();

    v14 = sub_23D9DA8A4();
    v15 = [v6 localizedStringForKey:v12 value:v13 table:v14];

    sub_23D9DA8B4();
  }

  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7090, &qword_23D9E2928);
  sub_23D9C35CC();
  return sub_23D9DA674();
}

uint64_t sub_23D9BE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v4 = qword_27E2F7320;
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();

    v7 = sub_23D9DA8A4();
    v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  sub_23D9D9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70C8, &unk_23D9E29C0);
  sub_23D91F01C(&qword_27E2F70D0, &qword_27E2F70C8, &unk_23D9E29C0, &protocol conformance descriptor for AXSUISpecifierLink<A, B>);
  return sub_23D9DA694();
}

uint64_t sub_23D9BE854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v32 = a5;
  v33 = a6;
  v30 = a4;
  v31 = a11;
  v28 = a3;
  v29 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v34 = 0;
  sub_23D9DA3A4();
  v22 = v36;
  *(a9 + 80) = v35;
  *(a9 + 88) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v23 = sub_23D9D88A4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_23D91F2DC(v21, v18, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D9DA3A4();
  sub_23D91F344(v21, &unk_27E2F6A30, &qword_23D9E0BC0);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v24 = v30;
  *(a9 + 32) = v28;
  *(a9 + 40) = v24;
  result = swift_allocObject();
  v26 = v33;
  *(result + 16) = v32;
  *(result + 24) = v26;
  *(a9 + 48) = v31;
  *(a9 + 56) = result;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t LiveSpeechSettingsView.init(settings:)@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LiveSpeechSettingsView(0);
  v4 = (a2 + v3[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F80, &qword_23D9E2600);
  sub_23D9DA3A4();
  *v4 = v12;
  v4[1] = v13;
  v5 = a2 + v3[6];
  sub_23D9DA3A4();
  *v5 = v12;
  *(v5 + 8) = v13;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_23D9DA8B4();
    v10 = v9;

    if (v8 == 0xD000000000000010 && 0x800000023D9E40E0 == v10)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = sub_23D9DAFC4();
    }
  }

  *(a2 + v3[7]) = v7 & 1;
  sub_23D9DAC94();
  sub_23D9C2AB4(&qword_27E2F6F88, MEMORY[0x277CE79A0], MEMORY[0x277CE78E0]);
  return sub_23D9DA6C4();
}

void sub_23D9BECB4()
{
  v1 = *(v0 + *(type metadata accessor for LiveSpeechSettingsView(0) + 28));
  v2 = sub_23D9DA8A4();
  if (v1 == 1)
  {
    v3 = AXLocStringKeyForExclusiveModel();

    if (v3)
    {
LABEL_5:
      v4 = sub_23D9DA8B4();
      v6 = v5;

      v7._countAndFlagsBits = v4;
      v7._object = v6;
      AXSUILocString(_:)(v7);

      return;
    }

    __break(1u);
  }

  v3 = AXLocStringKeyForHomeButtonAndExclusiveModel();

  if (v3)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_23D9BED90@<X0>(BOOL *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  sub_23D9DA6A4();
  v2 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v3 = *&v12[v2];

  v4 = sub_23D9DAB44();
  v5 = *(v4 + 16);
  v6 = 32;
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *(v4 + v6);
    v6 += 4;
  }

  while (v9 != 33);
  v10 = v7 != 0;

  *a1 = v10;
  return result;
}

void sub_23D9BEE58(_BYTE *a1)
{
  if (*a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
    sub_23D9DA6A4();
    v1 = MEMORY[0x277CE7910];
    v2 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v3 = *(v37[0] + v2);

    v4 = sub_23D9DAB44();
    v5 = *(v4 + 16);
    v6 = 32;
    while (v5)
    {
      v7 = *(v4 + v6);
      v6 += 4;
      --v5;
      if (v7 == 33)
      {
        goto LABEL_5;
      }
    }

    sub_23D9DA6A4();
    v27 = *v1;
    swift_beginAccess();
    v28 = *(v37[0] + v27);

    v29 = sub_23D9DAB34();
    v31 = v30;
    v32 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v31 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_23D93C8B4(0, *(v32 + 2) + 1, 1, v32);
      *v31 = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_23D93C8B4((v34 > 1), v35 + 1, 1, v32);
      *v31 = v32;
    }

    *(v32 + 2) = v35 + 1;
    *&v32[4 * v35 + 32] = 33;
    v29(v37, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
    sub_23D9DA6A4();
    v8 = MEMORY[0x277CE7910];
    v9 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v10 = *(v37[0] + v9);

    v11 = sub_23D9DAB44();
    v12 = *(v11 + 16);
    v13 = 32;
    do
    {
      if (!v12)
      {
LABEL_5:

        return;
      }

      v14 = *(v11 + v13);
      v13 += 4;
      --v12;
    }

    while (v14 != 33);

    sub_23D9DA6A4();
    v15 = *v8;
    swift_beginAccess();
    v16 = *&v40[v15];

    sub_23D9DA6A4();
    v17 = *v8;
    swift_beginAccess();
    v18 = *&v39[v17];

    v19 = sub_23D9DAB44();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      v22 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v21++;
        v25 = v26;
        if (v26 != 33)
        {
          v38 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23D9647C8(0, *(v22 + 2) + 1, 1);
            v22 = v38;
          }

          v24 = *(v22 + 2);
          v23 = *(v22 + 3);
          if (v24 >= v23 >> 1)
          {
            sub_23D9647C8((v23 > 1), v24 + 1, 1);
            v22 = v38;
          }

          *(v22 + 2) = v24 + 1;
          *&v22[4 * v24 + 32] = v25;
        }

        --v20;
      }

      while (v20);
    }

    sub_23D9DAB54();

    sub_23D9DA6A4();
    v36 = *MEMORY[0x277CE7910];
    swift_beginAccess();
    v28 = *&v38[v36];

    sub_23D9DAB74();
  }
}

uint64_t LiveSpeechSettingsView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiveSpeechSettingsView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_23D9BF450(v2, a1);
  v8 = v2 + *(v5 + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  v21 = v9;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v11 = v19[2];
  v19[0] = v19[1];
  v12 = v20;
  sub_23D9C2EE0(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_23D9C2F4C(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LiveSpeechSettingsView);
  v15 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F90, &qword_23D9E2608) + 36)];
  *v15 = v19[0];
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = sub_23D9C0BA0;
  *(v15 + 4) = v14;
  sub_23D9C2EE0(v2, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v16 = swift_allocObject();
  sub_23D9C2F4C(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13, type metadata accessor for LiveSpeechSettingsView);
  v17 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F98, &qword_23D9E2620) + 36)];
  sub_23D9D9584();
  result = sub_23D9DA9C4();
  *v17 = &unk_23D9E2618;
  *(v17 + 1) = v16;
  return result;
}

uint64_t sub_23D9BF450@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7028, &qword_23D9E28E0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v53 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7030, &qword_23D9E28E8);
  MEMORY[0x28223BE20](v63);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7038, &qword_23D9E28F0);
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - v7;
  v8 = sub_23D9D8EF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7040, &qword_23D9E28F8);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7048, &qword_23D9E2900);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v69 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7050, &qword_23D9E2908);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v68 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v53 - v23;
  sub_23D9BECB4();
  v73 = a1;
  v74 = v25;
  v75 = v26;
  sub_23D91B650();
  v74 = sub_23D9D9F04();
  v75 = v27;
  v76 = v28 & 1;
  v77 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7058, &unk_23D9E2910);
  sub_23D9C3390();
  v67 = v24;
  sub_23D9DA694();
  v30 = v20;
  sub_23D9BE640(0xD00000000000001ALL, 0x800000023D9E4B50, sub_23D9BFFB8, 0);
  (*(v9 + 104))(v11, *MEMORY[0x277CE67B0], v8);
  v31 = sub_23D9D8EE4();
  (*(v9 + 8))(v11, v8);
  v72 = a1;
  v66 = v16;
  if (v31)
  {
    v32 = v54;
    sub_23D9BE0FC(0xD00000000000002CLL, 0x800000023D9E4BB0, 0xD00000000000002CLL, 0x800000023D9E4BE0, sub_23D9C3680, v71);
    v33 = v55;
    (*(v55 + 16))(v5, v32, v6);
    swift_storeEnumTagMultiPayload();
    sub_23D9C3480();
    sub_23D9C353C();
    sub_23D9D9B14();
    (*(v33 + 8))(v32, v6);
  }

  else
  {
    v34 = v56;
    sub_23D9BE3B4(0xD000000000000019, 0x800000023D9E4B70, 0xD000000000000019, 0x800000023D9E4B90, sub_23D9C3478, v71);
    v35 = v57;
    v36 = v59;
    (*(v57 + 16))(v5, v34, v59);
    swift_storeEnumTagMultiPayload();
    sub_23D9C3480();
    sub_23D9C353C();
    sub_23D9D9B14();
    (*(v35 + 8))(v34, v36);
  }

  v37 = v60;
  v38 = *(v60 + 16);
  v39 = v68;
  v40 = v61;
  v38(v68, v67, v61);
  v41 = v62;
  v42 = *(v62 + 16);
  v58 = v30;
  v43 = v30;
  v44 = v64;
  v42(v69, v43, v64);
  sub_23D91F2DC(v66, v70, &qword_27E2F7040, &qword_23D9E28F8);
  v45 = v65;
  v38(v65, v39, v40);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70A0, &qword_23D9E2930);
  v47 = v69;
  v42(&v45[*(v46 + 48)], v69, v44);
  v48 = &v45[*(v46 + 64)];
  v49 = v70;
  sub_23D91F2DC(v70, v48, &qword_27E2F7040, &qword_23D9E28F8);
  sub_23D91F344(v66, &qword_27E2F7040, &qword_23D9E28F8);
  v50 = *(v41 + 8);
  v50(v58, v44);
  v51 = *(v37 + 8);
  v51(v67, v40);
  sub_23D91F344(v49, &qword_27E2F7040, &qword_23D9E28F8);
  v50(v47, v44);
  return (v51)(v68, v40);
}

uint64_t sub_23D9BFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for LiveSpeechSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v7 = *(v6 - 8);
  v20 = v6;
  v21 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10._countAndFlagsBits = 0x4550535F4556494CLL;
  v10._object = 0xEB00000000484345;
  v23 = AXSUILocString(_:)(v10);
  sub_23D9C2EE0(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  sub_23D9DA9B4();
  v11 = sub_23D9DA9A4();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  v15 = v14;
  sub_23D9C2F4C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LiveSpeechSettingsView);
  sub_23D9C2EE0(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v16 = sub_23D9DA9A4();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  sub_23D9C2F4C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v12, type metadata accessor for LiveSpeechSettingsView);
  sub_23D9DA594();
  sub_23D91B650();
  sub_23D9DA4C4();
  sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
  v18 = v20;
  sub_23D9DA114();
  return (*(v21 + 8))(v9, v18);
}

uint64_t sub_23D9BFFB8@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000010;
  *(v2 + 24) = 0x800000023D9E4C50;
  return sub_23D9BE854(0x53455341524850, 0xE700000000000000, sub_23D9A85D8, v2, sub_23D9C0088, 0, &qword_27E2F70C8, &unk_23D9E29C0, a1, &unk_284FE0FF8, sub_23D9C3AF8);
}

uint64_t sub_23D9C0088()
{
  sub_23D9DA3A4();
  v0._object = 0x800000023D9E4C50;
  v0._countAndFlagsBits = 0xD000000000000010;
  AXSUILocString(_:)(v0);
  sub_23D9C3854();
  sub_23D91B650();
  sub_23D9DA064();

  sub_23D94CFE4(sub_23D94BA20, 0);
}

uint64_t sub_23D9C0170@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = a1;
  v39 = a2;
  v2 = type metadata accessor for LiveSpeechSettingsView(0);
  v35 = *(v2 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F49E8, &unk_23D9DCCD0);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  sub_23D9DA6B4();
  swift_getKeyPath();
  sub_23D9DA6D4();

  (*(v15 + 8))(v17, v14);
  v18 = v48;
  v19 = v49;
  v20 = v50;
  swift_getKeyPath();
  v45 = v18;
  v46 = v19;
  v47 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70A8, &qword_23D9E2988);
  sub_23D9DA574();

  v21 = v42;
  v22 = v43;
  v23 = v44;

  sub_23D9C2EE0(v33, v4, type metadata accessor for LiveSpeechSettingsView);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = swift_allocObject();
  sub_23D9C2F4C(v4, v25 + v24, type metadata accessor for LiveSpeechSettingsView);
  v40 = 0xD00000000000001FLL;
  v41 = 0x800000023D9E4C10;
  sub_23D9DA404();
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  v26 = v37;
  sub_23D9DA114();
  (*(v38 + 8))(v8, v26);
  v27 = v36;
  sub_23D91F2DC(v13, v36, &qword_27E2F49E8, &unk_23D9DCCD0);
  v28 = v39;
  *v39 = v21;
  v28[1] = v22;
  v28[2] = v23;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70B0, &qword_23D9E2990);
  sub_23D91F2DC(v27, v29 + *(v30 + 48), &qword_27E2F49E8, &unk_23D9DCCD0);

  sub_23D91F344(v13, &qword_27E2F49E8, &unk_23D9DCCD0);
  sub_23D91F344(v27, &qword_27E2F49E8, &unk_23D9DCCD0);
}

uint64_t sub_23D9C0654(uint64_t a1)
{
  type metadata accessor for LiveSpeechSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C06C8(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (a1 + *(v5 + 28));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7020, &qword_23D9E28D8);
  sub_23D9DA3B4();
  sub_23D9C2EE0(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechSettingsView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23D9C2F4C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LiveSpeechSettingsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6F80, &qword_23D9E2600);
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  sub_23D91F01C(&qword_27E2F70B8, &qword_27E2F6F80, &qword_23D9E2600, MEMORY[0x277D83980]);
  sub_23D9C2AB4(&qword_27E2F7098, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView, &unk_23D9E27C4);
  sub_23D9C37C0();
  return sub_23D9DA624();
}

uint64_t sub_23D9C08DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a1[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  sub_23D9DA6A4();
  v14 = v18[1];
  KeyPath = swift_getKeyPath();
  v16 = sub_23D9D8C74();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 0;
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  sub_23D91F2DC(v9, v6, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  return sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D9C0A8C@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  sub_23D9DA6A4();
  type metadata accessor for LiveSpeechSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  sub_23D9DAC94();
  sub_23D9C2AB4(&qword_27E2F6F88, MEMORY[0x277CE79A0], MEMORY[0x277CE78E0]);
  sub_23D9DA6C4();
  result = type metadata accessor for LiveSpeechAddPreferredVoiceSheetView(0);
  v4 = a2 + *(result + 20);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  return result;
}

uint64_t sub_23D9C0BCC(uint64_t a1)
{
  *(v1 + 96) = a1;
  sub_23D9DA9B4();
  *(v1 + 104) = sub_23D9DA9A4();
  v3 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D9C0C64, v3, v2);
}

void sub_23D9C0C64()
{
  v1 = [objc_opt_self() sharedInputModeController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v1 enabledInputModeLanguages];

  if (!v3)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v4 = sub_23D9DA974();

  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_23D939E34(v7, (v0 + 2));
      sub_23D939E34((v0 + 2), (v0 + 6));
      if (swift_dynamicCast())
      {
        v10 = v0[10];
        v9 = v0[11];
        v11 = objc_opt_self();
        v12 = sub_23D9DA8A4();
        v13 = [v11 displayNameForKeyboardIdentifier_];

        if (v13)
        {
          v14 = sub_23D9DA8B4();
          v16 = v15;

          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_23D93C9B8(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v18 >= v17 >> 1)
          {
            v8 = sub_23D93C9B8((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[32 * v18];
          *(v19 + 4) = v10;
          *(v19 + 5) = v9;
          *(v19 + 6) = v14;
          *(v19 + 7) = v16;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }

      v7 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v20 = v0[12];
  v21 = (v20 + *(type metadata accessor for LiveSpeechSettingsView(0) + 20));
  v23 = *v21;
  v22 = v21[1];
  v0[2] = v23;
  v0[3] = v22;
  v0[6] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7020, &qword_23D9E28D8);
  sub_23D9DA3C4();
  v24 = v0[1];

  v24();
}

uint64_t objectdestroyTm_13()
{
  v1 = *(type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_23D9C1030()
{
  v2 = *(type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23D92A70C;

  return sub_23D9C0BCC(v0 + v3);
}

uint64_t sub_23D9C1118()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  if ((v6 & 1) == 0)
  {
    sub_23D9DACD4();
    v7 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_23D9C1258()
{
  sub_23D9DB034();
  sub_23D9DA914();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D9C12C0(uint64_t a1)
{
  sub_23D9DA914();

  return sub_23D9DA914();
}

uint64_t sub_23D9C1310(uint64_t a1)
{
  sub_23D9DB034();
  sub_23D9DA914();
  sub_23D9DA914();
  return sub_23D9DB064();
}

uint64_t sub_23D9C1374(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23D9DAFC4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_23D9DAFC4();
    }
  }

  return result;
}

uint64_t sub_23D9C1418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23D9DA9B4();
  v3[5] = sub_23D9DA9A4();
  v5 = sub_23D9DA994();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_23D9C14B4, v5, v4);
}

uint64_t sub_23D9C14B4(uint64_t a1)
{
  v2 = sub_23D9D8D84();
  v1[8] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v1[9] = sub_23D9C1118();
    v12 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v6 = swift_task_alloc();
    v1[10] = v6;
    *v6 = v1;
    v6[1] = sub_23D9C1614;
    v7 = v1[2];

    return v12(v7, v4, v5);
  }

  else
  {
    v9 = v1[2];

    v10 = sub_23D9D8C74();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_23D9C1614()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23D9C1774, v3, v2);
}

uint64_t sub_23D9C1774()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_23D9C17D4()
{
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  return sub_23D9DA3B4();
}

uint64_t sub_23D9C1828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v25);
  v23 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v21 = a1[1];
  v22 = v10;
  v11 = a1[4];
  v12 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v13 = *(v11 + v12);
  v14 = sub_23D9D8DA4();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);

  v20 = v13;
  sub_23D9DA5A4();
  sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
  *(v9 + 1) = swift_getKeyPath();
  v9[16] = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  v15(v6, 1, 1, v14);
  sub_23D91F2DC(v6, v23, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
  *v9 = v20;
  v16 = v21;
  *(v9 + 3) = v22;
  *(v9 + 4) = v16;
  v17 = a1[3];
  v26 = a1[2];
  v27 = v17;
  sub_23D9C2AB4(&qword_27E2F7018, type metadata accessor for LiveSpeechVoiceSelectionView, &protocol conformance descriptor for LiveSpeechVoiceSelectionView);
  sub_23D91B650();
  sub_23D9DA064();
  return sub_23D9C332C(v9);
}

double sub_23D9C1AE4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  v30 = *(v4 - 8);
  v29 = *(v30 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64C8, &qword_23D9E0770);
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v25 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64D0, &unk_23D9E0778);
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v25 - v9;
  v32 = sub_23D9D99B4();
  v40 = 1;
  sub_23D9C1FDC(a1, &v34);
  v43 = v36;
  v44 = v37;
  v41 = v34;
  v42 = v35;
  v46[2] = v36;
  v46[3] = v37;
  v46[4] = v38;
  v46[1] = v35;
  v45 = v38;
  v46[0] = v34;
  sub_23D91F2DC(&v41, &v33, &qword_27E2F4DB8, &unk_23D9E2850);
  sub_23D91F344(v46, &qword_27E2F4DB8, &unk_23D9E2850);
  *&v39[23] = v42;
  *&v39[39] = v43;
  *&v39[55] = v44;
  *&v39[71] = v45;
  *&v39[7] = v41;
  v26 = v40;
  v11 = a1[4];
  v12 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v13 = *(v11 + v12);
  sub_23D9DAB84();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64E0, &qword_23D9E07F8);
  sub_23D9C2AB4(&qword_27E2F64E8, MEMORY[0x277CE7908], MEMORY[0x277CE78F8]);
  sub_23D9D8E44();

  sub_23D9D8DB4();

  sub_23D9D8AE4();
  sub_23D9D8AD4();
  sub_23D9D8DF4();

  (*(v6 + 8))(v8, v25);
  v15 = v27;
  sub_23D9C2EE0(a1, v27, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v16 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v17 = swift_allocObject();
  sub_23D9C2F4C(v15, v17 + v16, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7008, &qword_23D9E2870) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v19 = v28;
  sub_23D9D8E24();

  (*(v31 + 8))(v10, v19);
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7010, &unk_23D9E28A0);
  sub_23D9C2EE0(a1, v18 + v21[10], type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  *(v18 + v21[9]) = KeyPath;
  *(v18 + v21[11]) = 1;
  v22 = *&v39[48];
  *(a2 + 49) = *&v39[32];
  *(a2 + 65) = v22;
  *(a2 + 81) = *&v39[64];
  result = *v39;
  v24 = *&v39[16];
  *(a2 + 17) = *v39;
  *a2 = v32;
  *(a2 + 8) = 0;
  *(a2 + 16) = v26;
  *(a2 + 96) = *&v39[79];
  *(a2 + 33) = v24;
  return result;
}

uint64_t sub_23D9C1FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38[-v9];
  v11 = *(a1 + 24);
  v46 = *(a1 + 16);
  v47 = v11;
  sub_23D91B650();

  v12 = sub_23D9D9F04();
  v40 = v13;
  v41 = v12;
  v39 = v14;
  v42 = v15;
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3B4();
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
    v16 = 0xE300000000000000;
    v17 = 2108704;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_23D91F344(v10, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v17 = v18;
    v16 = v19;
    (*(v5 + 8))(v7, v4);
  }

  v46 = v17;
  v47 = v16;
  v20 = sub_23D9D9F04();
  v22 = v21;
  v24 = v23;
  sub_23D9DA2F4();
  v25 = sub_23D9D9EB4();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_23D9274BC(v20, v22, v24 & 1);

  v32 = v39 & 1;
  LOBYTE(v46) = v39 & 1;
  v45 = v39 & 1;
  v44 = 1;
  v33 = v29 & 1;
  v43 = v29 & 1;
  v34 = v29 & 1;
  v36 = v40;
  v35 = v41;
  *a2 = v41;
  *(a2 + 8) = v36;
  *(a2 + 16) = v32;
  *(a2 + 24) = v42;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27;
  *(a2 + 64) = v34;
  *(a2 + 72) = v31;
  sub_23D91E0AC(v35, v36, v32);

  sub_23D91E0AC(v25, v27, v33);

  sub_23D9274BC(v25, v27, v33);

  sub_23D9274BC(v35, v36, v46);
}

void *sub_23D9C2318()
{
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  return sub_23D9DA3B4();
}

uint64_t sub_23D9C2370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_23D91F2DC(a1, &v9 - v6, &qword_27E2F4460, &qword_23D9DC2A0);
  type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0);
  sub_23D91F2DC(v7, v4, &qword_27E2F4460, &qword_23D9DC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3C4();
  return sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
}

uint64_t sub_23D9C2488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *v2;
  v11 = *(v3 + 8);
  sub_23D9C2EE0(v3, &v16 - v8, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_23D9C2F4C(v9, v13 + v12, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  sub_23D9C2EE0(v3, v6, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);
  v14 = swift_allocObject();
  sub_23D9C2F4C(v6, v14 + v12, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView);

  return sub_23D9BE854(v10, v11, sub_23D9C31D0, v14, sub_23D9C2FB4, v13, &qword_27E2F7000, &qword_23D9E2848, v17, &unk_284FE0F30, sub_23D99275C);
}

uint64_t sub_23D9C2684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D9C2760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_23D9C2824(uint64_t a1)
{
  sub_23D9C2DA4(319, &qword_27E2F4CA8, MEMORY[0x277CE79A0], MEMORY[0x277CE1300]);
  if (v1 <= 0x3F)
  {
    sub_23D9C2E08(319, &qword_27E2F6FB0, &qword_27E2F6F80, &qword_23D9E2600);
    if (v2 <= 0x3F)
    {
      sub_23D9273D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D9C2914()
{
  result = qword_27E2F6FB8;
  if (!qword_27E2F6FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F98, &qword_23D9E2620);
    sub_23D9C29D0();
    sub_23D9C2AB4(&qword_27E2F4228, MEMORY[0x277CDD8B8], MEMORY[0x277CDD8A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6FB8);
  }

  return result;
}

unint64_t sub_23D9C29D0()
{
  result = qword_27E2F6FC0;
  if (!qword_27E2F6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6F90, &qword_23D9E2608);
    sub_23D91F01C(&qword_27E2F6FC8, &qword_27E2F6FD0, &qword_23D9E26B8, &protocol conformance descriptor for AXSUIPlatformFormListView<A>);
    sub_23D91F01C(&qword_27E2F6FD8, &qword_27E2F6FE0, &unk_23D9E26C0, &unk_23D9E32A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6FC0);
  }

  return result;
}

uint64_t sub_23D9C2AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9C2B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D9C2BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D9C2CB0(uint64_t a1)
{
  sub_23D9DAC94();
  if (v1 <= 0x3F)
  {
    sub_23D9C2DA4(319, &qword_27E2F4658, MEMORY[0x277D70110], MEMORY[0x277CDF470]);
    if (v2 <= 0x3F)
    {
      sub_23D9C2E08(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D9C2DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D9C2E08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23D9DA3E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23D9C2E70()
{
  result = qword_27E2F6FF8;
  if (!qword_27E2F6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6FF8);
  }

  return result;
}

uint64_t sub_23D9C2EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9C2F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9C2FE0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_22Tm()
{
  v1 = (type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  return swift_deallocObject();
}

uint64_t sub_23D9C3200()
{

  return swift_deallocObject();
}

uint64_t sub_23D9C3238(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for LiveSpeechSettingsView.KeyboardItemView(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23D928310;

  return sub_23D9C1418(a1, a2, v2 + v7);
}

uint64_t sub_23D9C332C(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D9C3390()
{
  result = qword_27E2F7060;
  if (!qword_27E2F7060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7058, &unk_23D9E2910);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    sub_23D9C2AB4(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7060);
  }

  return result;
}

unint64_t sub_23D9C3480()
{
  result = qword_27E2F7068;
  if (!qword_27E2F7068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7038, &qword_23D9E28F0);
    sub_23D91F01C(&qword_27E2F7070, &qword_27E2F7078, &qword_23D9E2920, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7068);
  }

  return result;
}

unint64_t sub_23D9C353C()
{
  result = qword_27E2F7080;
  if (!qword_27E2F7080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7028, &qword_23D9E28E0);
    sub_23D9C35CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7080);
  }

  return result;
}

unint64_t sub_23D9C35CC()
{
  result = qword_27E2F7088;
  if (!qword_27E2F7088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7090, &qword_23D9E2928);
    sub_23D9C2AB4(&qword_27E2F7098, type metadata accessor for LiveSpeechSettingsView.KeyboardItemView, &unk_23D9E27C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7088);
  }

  return result;
}

uint64_t sub_23D9C3688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9DAB14();
  *a1 = result;
  return result;
}

uint64_t sub_23D9C36E0()
{
  v1 = *(type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D9C0654(v2);
}

uint64_t sub_23D9C3740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LiveSpeechSettingsView(0);

  return sub_23D9C08DC(a1, a2);
}

unint64_t sub_23D9C37C0()
{
  result = qword_27E2F70C0;
  if (!qword_27E2F70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F70C0);
  }

  return result;
}

uint64_t sub_23D9C381C()
{

  return swift_deallocObject();
}

unint64_t sub_23D9C3854()
{
  result = qword_27E2F70D8;
  if (!qword_27E2F70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F70D8);
  }

  return result;
}

uint64_t sub_23D9C38AC@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for LiveSpeechSettingsView(0);

  return sub_23D9BED90(a1);
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(type metadata accessor for LiveSpeechSettingsView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4C90, &unk_23D9DD1B0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_23D9C3A40(_BYTE *a1)
{
  type metadata accessor for LiveSpeechSettingsView(0);

  sub_23D9BEE58(a1);
}

uint64_t sub_23D9C3B24(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_23D9D90B4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

double sub_23D9C3C10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v35);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  v20 = &a5[v19[5]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v19[6];
  v22 = sub_23D9D90B4();
  (*(*(v22 - 8) + 32))(&a5[v21], a1, v22);
  v23 = &a5[v19[7]];
  v25 = v33;
  v24 = v34;
  *v23 = a2;
  *(v23 + 1) = v25;
  *(v23 + 2) = v24;
  v26 = sub_23D9D8C74();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_23D91F2DC(v18, v15, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  sub_23D91F344(v18, &qword_27E2F4460, &qword_23D9DC2A0);
  v27 = &a5[v19[9]];
  LOBYTE(v36) = 0;
  sub_23D9DA3A4();
  v28 = *(&v38 + 1);
  *v27 = v38;
  *(v27 + 1) = v28;
  v29 = sub_23D9D8DA4();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  sub_23D91F2DC(v12, v9, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(v12, &qword_27E2F5900, &unk_23D9DC640);
  v30 = &a5[v19[11]];
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_23D9DA3A4();
  result = *&v38;
  v32 = v39;
  *v30 = v38;
  *(v30 + 2) = v32;
  return result;
}

uint64_t sub_23D9C3F78@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A10, &qword_23D9DD4D0);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - v4;
  v6 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = v9;
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F70F8, &qword_23D9E2AB8);
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v37 - v12;
  v38 = v1;
  v39 = v10;
  sub_23D9C64E8(v1, v10);
  v40 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = v40;
  v15 = swift_allocObject();
  sub_23D9C6550(v10, v15 + v14);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7100, &unk_23D9E2AC0);
  sub_23D9C661C();
  sub_23D9DA404();
  sub_23D9D9B54();
  sub_23D91F01C(&qword_27E2F7120, &qword_27E2F70F8, &qword_23D9E2AB8, MEMORY[0x277CDF030]);
  sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
  v16 = v44;
  v17 = v37;
  v18 = v42;
  sub_23D9D9FA4();
  (*(v43 + 8))(v5, v18);
  (*(v11 + 8))(v13, v17);
  v19 = sub_23D9DA2E4();
  KeyPath = swift_getKeyPath();
  v21 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7128, &qword_23D9E2B08) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = v38;
  v23 = v38 + *(v7 + 44);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v46) = v24;
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v26 = v49;
  v27 = v50;
  LOBYTE(KeyPath) = v51;
  v28 = v39;
  sub_23D9C64E8(v22, v39);
  v29 = v40;
  v30 = swift_allocObject();
  sub_23D9C6550(v28, v30 + v29);
  v46 = v26;
  v47 = v27;
  v48 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B68, &qword_23D9DCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6A40, &qword_23D9E2B10);
  sub_23D9DA534();
  v31 = v49;
  v32 = v50;
  v33 = v51;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_23D9C6708;
  *(v34 + 24) = v30;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7130, &unk_23D9E2B18);
  sub_23D9D15E0(v31, v32, v33, sub_23D99275C, v34, 0, 0, (v16 + *(v35 + 36)));
}

uint64_t sub_23D9C4464(uint64_t a1)
{
  sub_23D9C44DC();
  type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C44DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - v5;
  v7 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  sub_23D9D9094();
  v8 = sub_23D9D8DA4();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  sub_23D91F2DC(v6, v3, &qword_27E2F5900, &unk_23D9DC640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
  v9 = sub_23D9D9034();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v0 + *(v7 + 44));
  v13 = *v12;
  v14 = *(v12 + 2);
  v15 = 0xE000000000000000;
  if (v10)
  {
    v15 = v10;
  }

  v18 = v13;
  v19 = v14;
  v17[1] = v11;
  v17[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C4694@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23D9D9664();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D95DE1C(v6);
  v7 = (v4 + 8);
  if (sub_23D9D9654())
  {
    v12 = sub_23D9D9AB4();
    v13 = 0;
    v14 = 1;
    sub_23D93FCC4();
  }

  else
  {
    v12 = sub_23D9D99B4();
    v13 = 0;
    v14 = 1;
    sub_23D93FC00();
  }

  v8 = sub_23D9DA764();
  (*v7)(v6, v3);
  *a2 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7100, &unk_23D9E2AC0);
  return sub_23D9C47F4(a2 + *(v9 + 44));
}

uint64_t sub_23D9C47F4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v41 = sub_23D9D8DA4();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v3 = &v36[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4230, &qword_23D9DBE70);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v42 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  v44 = sub_23D9C4B20();
  v45 = v10;
  sub_23D91B650();
  v11 = sub_23D9D9F04();
  v38 = v12;
  v39 = v11;
  v37 = v13;
  v40 = v14;
  type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  sub_23D9D9094();
  v15 = sub_23D9D8D84();
  v17 = v16;
  (*(v1 + 8))(v3, v41);
  v18 = &v9[*(v5 + 44)];
  v19 = type metadata accessor for AXSUIVoiceLoader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3D4();
  KeyPath = swift_getKeyPath();
  *v18 = v15;
  v18[1] = v17;
  v21 = v18 + *(v19 + 24);
  *v21 = KeyPath;
  v21[8] = 0;
  v22 = v38;
  *v9 = v39;
  *(v9 + 1) = v22;
  v9[16] = v37 & 1;
  *(v9 + 3) = v40;
  v44 = sub_23D9C4D10();
  v45 = v23;
  v24 = sub_23D9D9F04();
  v26 = v25;
  LOBYTE(v18) = v27;
  v29 = v28;
  v30 = v42;
  sub_23D91F2DC(v9, v42, &qword_27E2F4230, &qword_23D9DBE70);
  v31 = v43;
  sub_23D91F2DC(v30, v43, &qword_27E2F4230, &qword_23D9DBE70);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7140, &qword_23D9E2B70);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v31 + *(v32 + 64);
  *v34 = v24;
  *(v34 + 8) = v26;
  LOBYTE(v18) = v18 & 1;
  *(v34 + 16) = v18;
  *(v34 + 24) = v29;
  sub_23D91E0AC(v24, v26, v18);

  sub_23D91F344(v9, &qword_27E2F4230, &qword_23D9DBE70);
  sub_23D9274BC(v24, v26, v18);

  return sub_23D91F344(v30, &qword_27E2F4230, &qword_23D9DBE70);
}

uint64_t sub_23D9C4B20()
{
  v0 = sub_23D9D8C74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  result = sub_23D9D9034();
  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3B4();
    if ((*(v1 + 48))(v6, 1, v0))
    {
      sub_23D91F344(v6, &qword_27E2F4460, &qword_23D9DC2A0);
      return 0;
    }

    else
    {
      (*(v1 + 16))(v3, v6, v0);
      sub_23D91F344(v6, &qword_27E2F4460, &qword_23D9DC2A0);
      sub_23D9BB28C();
      v10 = v9;
      (*(v1 + 8))(v3, v0);
      return v10;
    }
  }

  return result;
}

uint64_t sub_23D9C4D10()
{
  v0 = sub_23D9D89C4();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v25 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23D9D8C74();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_23D9D8DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  sub_23D9D9094();
  sub_23D9D8CC4();
  (*(v9 + 8))(v11, v8);
  v15 = sub_23D9D8954();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_23D91F344(v14, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    v17 = sub_23D9D8934();
    v19 = v18;
    (*(v16 + 8))(v14, v15);
    if (v19)
    {
      return v17;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3B4();
  v20 = v28;
  if ((*(v28 + 48))(v7, 1, v2))
  {
    sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
LABEL_6:
    swift_bridgeObjectRelease_n();
    return 0;
  }

  (*(v20 + 16))(v4, v7, v2);
  sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
  v22 = v25;
  sub_23D9D8C04();
  (*(v20 + 8))(v4, v2);
  v17 = sub_23D9D8964();
  v24 = v23;
  (*(v26 + 8))(v22, v27);
  if (!v24)
  {
    goto LABEL_6;
  }

  return v17;
}

uint64_t sub_23D9C5154@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  v65 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v66 = v3;
  v67 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D9D8C74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for AXSUIVoiceSettings(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66D8, &qword_23D9E0D90);
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x28223BE20](v18);
  v62 = &v51 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  v61 = v14;
  sub_23D9DA3D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v20 = v1;
  sub_23D9DA3B4();
  if ((*(v5 + 48))(v9, 1, v4))
  {
    sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
    v21 = 1;
  }

  else
  {
    v22 = v59;
    (*(v5 + 16))(v59, v9, v4);
    sub_23D91F344(v9, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9D8C04();
    (*(v5 + 8))(v22, v4);
    v21 = 0;
  }

  v23 = sub_23D9D89C4();
  v24 = *(*(v23 - 8) + 56);
  v25 = v69;
  v24(v69, v21, 1, v23);
  v26 = (v20 + *(v2 + 44));
  v27 = v26[1];
  v59 = *v26;
  v60 = v20;
  v57 = v26[2];
  v58 = v27;
  v72 = v59;
  v73 = v27;
  v74 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4838, &qword_23D9DC9B0);
  sub_23D9DA3D4();
  v56 = *v70;
  v55 = *&v70[16];
  v54 = v71;
  v53 = sub_23D9C4B20();
  v52 = v28;
  v72 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();
  v29 = *v70;
  v51 = *&v70[8];
  v30 = &v17[v15[7]];
  LOBYTE(v72) = 0;
  sub_23D9DA3A4();
  v31 = *&v70[8];
  *v30 = v70[0];
  *(v30 + 1) = v31;
  sub_23D9D9C64();
  v32 = v15[10];
  v24(&v17[v32], 1, 1, v23);
  v33 = &v17[v15[12]];
  v34 = &v17[v15[13]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = &v17[v15[14]];
  LOBYTE(v72) = 0;
  sub_23D9DA3A4();
  v36 = *&v70[8];
  *v35 = v70[0];
  *(v35 + 1) = v36;
  v37 = v15[15];
  v72 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *&v17[v37] = *v70;
  v38 = v61;
  sub_23D91F2DC(v61, v17, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v25, &v17[v32]);
  *&v17[v15[11]] = 21;
  v39 = &v17[v15[5]];
  *v39 = v29;
  *(v39 + 8) = v51;
  v40 = &v17[v15[9]];
  *v40 = 0;
  *(v40 + 1) = 0;
  sub_23D91F344(v25, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v38, &qword_27E2F4760, &qword_23D9E0740);
  v41 = &v17[v15[6]];
  *v41 = v56;
  v42 = v54;
  *(v41 + 2) = v55;
  *(v41 + 3) = v42;
  v43 = v52;
  *v33 = v53;
  v33[1] = v43;
  v72 = v59;
  v73 = v58;
  v74 = v57;
  sub_23D9DA3D4();
  sub_23D9C67AC();
  v44 = v62;
  sub_23D9DA054();

  sub_23D995014(v17);
  v45 = v67;
  sub_23D9C64E8(v60, v67);
  v46 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v47 = swift_allocObject();
  sub_23D9C6550(v45, v47 + v46);
  v48 = v68;
  (*(v63 + 32))(v68, v44, v64);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7138, &qword_23D9E2B58);
  v50 = (v48 + *(result + 36));
  *v50 = 0;
  v50[1] = 0;
  v50[2] = sub_23D9C6AE8;
  v50[3] = v47;
  return result;
}

uint64_t sub_23D9C5900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_23D9D8DA4();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = &v26 - v7;
  v8 = sub_23D9D90B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  v13 = (v0 + *(v12 + 28));
  v14 = *v13;
  v15 = v13[2];
  v32 = v13[1];
  v33 = v14;
  v39 = v14;
  v40 = v32;
  v41 = v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](v37);
  v35 = v0;
  v29 = sub_23D9C3B24(sub_23D9C6B44, v34, v37[0]);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    (*(v9 + 16))(v11, v0 + *(v12 + 24), v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    sub_23D9DA3B4();
    v19 = v30;
    v20 = v8;
    if ((*(v30 + 48))(v3, 1, v4) == 1)
    {
      sub_23D91F344(v3, &qword_27E2F5900, &unk_23D9DC640);
    }

    else
    {
      v21 = v27;
      (*(v19 + 32))(v27, v3, v4);
      (*(v19 + 16))(v28, v21, v4);
      sub_23D9D90A4();
      (*(v19 + 8))(v21, v4);
    }

    v23 = v32;
    v22 = v33;
    v39 = v33;
    v40 = v32;
    v41 = v15;

    MEMORY[0x23EEF3850](&v38, v31);
    v24 = v38;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v29;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_23D9512EC(v24);
      v24 = result;
      v25 = v29;
      if ((v29 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v25 < v24[2])
        {
          (*(v9 + 24))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v11, v20);
          v37[0] = v22;
          v37[1] = v23;
          v37[2] = v15;
          v36 = v24;
          sub_23D9DA564();
          (*(v9 + 8))(v11, v20);
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_23D9C5D30(uint64_t a1)
{
  v1 = sub_23D9D9064();
  v3 = v2;
  type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  if (v1 == sub_23D9D9064() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_23D9DAFC4();
  }

  return v6 & 1;
}

uint64_t type metadata accessor for LiveSpeechPreferredVoiceListItemView(uint64_t a1)
{
  result = qword_27E2F70E8;
  if (!qword_27E2F70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D9C5E44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_23D9D90B4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23D9C603C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D38, &unk_23D9DD440);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23D9D90B4();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_23D9C6220(uint64_t a1)
{
  sub_23D9C6410(319, &qword_27E2F4D58, MEMORY[0x277CDFA20]);
  if (v1 <= 0x3F)
  {
    sub_23D9C6410(319, &qword_27E2F4658, MEMORY[0x277D70110]);
    if (v2 <= 0x3F)
    {
      sub_23D9D90B4();
      if (v3 <= 0x3F)
      {
        sub_23D9C6464(319, &qword_27E2F4D70, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D9C6464(319, &qword_27E2F4668, &qword_27E2F4460, &qword_23D9DC2A0, MEMORY[0x277CE10B0]);
          if (v5 <= 0x3F)
          {
            sub_23D934350(319, &qword_27E2F46A0, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_23D9C6464(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
              if (v7 <= 0x3F)
              {
                sub_23D934350(319, &qword_27E2F48E0, MEMORY[0x277D837D0]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D9C6410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D9C6464(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_23D9C64E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9C6550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9C65B4()
{
  v1 = *(type metadata accessor for LiveSpeechPreferredVoiceListItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D9C4464(v2);
}

unint64_t sub_23D9C661C()
{
  result = qword_27E2F7108;
  if (!qword_27E2F7108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7100, &unk_23D9E2AC0);
    sub_23D91F01C(&qword_27E2F4DA0, &qword_27E2F4DA8, &unk_23D9DD4F0, MEMORY[0x277CDF508]);
    sub_23D91F01C(&qword_27E2F7110, &qword_27E2F7118, &qword_23D9E2AD0, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7108);
  }

  return result;
}

uint64_t sub_23D9C676C()
{

  return swift_deallocObject();
}

unint64_t sub_23D9C67AC()
{
  result = qword_27E2F4718;
  if (!qword_27E2F4718)
  {
    type metadata accessor for AXSUIVoiceSettings(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F4718);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9664();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[6];
  v6 = sub_23D9D90B4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  v7 = v3 + v1[8];
  v8 = sub_23D9D8C74();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);

  v10 = v3 + v1[10];
  v11 = sub_23D9D8DA4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);

  return swift_deallocObject();
}

unint64_t sub_23D9C6B68()
{
  result = qword_27E2F7148;
  if (!qword_27E2F7148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7130, &unk_23D9E2B18);
    sub_23D9C6C20();
    sub_23D91F01C(&qword_27E2F7158, &qword_27E2F7160, &qword_23D9E2B78, &unk_23D9E1990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7148);
  }

  return result;
}

unint64_t sub_23D9C6C20()
{
  result = qword_27E2F7150;
  if (!qword_27E2F7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7128, &qword_23D9E2B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F70F8, &qword_23D9E2AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F6A10, &qword_23D9DD4D0);
    sub_23D91F01C(&qword_27E2F7120, &qword_27E2F70F8, &qword_23D9E2AB8, MEMORY[0x277CDF030]);
    sub_23D91F01C(&qword_27E2F6A20, &unk_27E2F6A10, &qword_23D9DD4D0, MEMORY[0x277CDE360]);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F5C20, &qword_27E2F5C28, &qword_23D9DF690, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7150);
  }

  return result;
}

void *AXRSettingsView.init(settings:)@<X0>(void *a2@<X8>)
{
  v3 = sub_23D9D91D4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_23D9D90C4();
  sub_23D9C8184(MEMORY[0x277D84F90]);
  v4 = [objc_opt_self() mainRunLoop];
  v5 = objc_allocWithZone(sub_23D9D90F4());
  a2[2] = sub_23D9D90E4();
  sub_23D9DAAF4();
  result = sub_23D9DA3A4();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t sub_23D9C6EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v22 = MEMORY[0x277D84A98];
  v24 = MEMORY[0x277D84AA8];
  v25 = a4;
  v8 = sub_23D9D9E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v21 = a2;
  sub_23D9D9E84();
  swift_getWitnessTable();
  sub_23D91F510();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_23D91F510();
  return (v15)(v14, v8);
}

uint64_t sub_23D9C706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11(v8);
  sub_23D91F510();
  v12 = *(v4 + 8);
  v12(v6, a3);
  sub_23D91F510();
  return (v12)(v10, a3);
}

id AXRSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v9 = *v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  v5[2] = v9;
  v5[3] = v3;
  v5[4] = v4;
  KeyPath = swift_getKeyPath();
  *a1 = sub_23D9C8298;
  *(a1 + 8) = v5;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  v7 = v4;

  return v9;
}

uint64_t sub_23D9C7258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v44 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7218, &qword_23D9E2D10);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v36 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7220, &qword_23D9E2D18);
  v39 = *(v40 - 8);
  v10 = v39;
  MEMORY[0x28223BE20](v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v49 = a1;
  v50 = a2;
  v51 = a3;
  v16 = a3;
  v59 = 0;
  v60 = 0;
  v17._object = 0x800000023D9E4CA0;
  v17._countAndFlagsBits = 0xD000000000000027;
  v56 = AXSUILocString(_:)(v17);
  sub_23D91B650();
  v56._countAndFlagsBits = sub_23D9D9F04();
  v56._object = v18;
  v57 = v19 & 1;
  v58 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7228, &qword_23D9E2D20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7230, &qword_23D9E2D28);
  v22 = sub_23D91F01C(&qword_27E2F7238, &qword_27E2F7230, &qword_23D9E2D28, MEMORY[0x277CDF060]);
  v52 = v21;
  v53 = MEMORY[0x277D839B0];
  v54 = v22;
  v55 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v38 = v15;
  sub_23D9DA674();
  v46 = a1;
  v47 = a2;
  v48 = v16;
  v23 = v45;
  sub_23D9DA694();
  v24 = *(v10 + 16);
  v37 = v12;
  v25 = v15;
  v26 = v40;
  v24(v12, v25, v40);
  v27 = v41;
  v28 = *(v41 + 16);
  v29 = v42;
  v30 = v43;
  v28(v42, v23, v43);
  v31 = v44;
  v24(v44, v12, v26);
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7240, &qword_23D9E2D30) + 48)];
  v28(v32, v29, v30);
  v33 = *(v27 + 8);
  v33(v45, v30);
  v34 = *(v39 + 8);
  v34(v38, v26);
  v33(v29, v30);
  return (v34)(v37, v26);
}

uint64_t sub_23D9C76E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v21 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7230, &qword_23D9E2D28);
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - v6;
  v23 = a1;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7248, qword_23D9E2D38);
  sub_23D9DA3D4();
  v8 = v25;
  v9 = v26;
  v10 = v27;
  swift_getKeyPath();
  v25 = v8;
  v26 = v9;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7250, &qword_23D9E2DA0);
  sub_23D9DA574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7258, &qword_23D9E2DA8);
  sub_23D9C8530();
  sub_23D9DA4B4();
  v25 = a1;
  v26 = a2;
  sub_23D9DA3B4();
  v11 = v23;
  v12 = sub_23D9DAAD4();

  LOBYTE(v25) = v12 & 1;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v14 = v19;
  v13[4] = v19;
  sub_23D91F01C(&qword_27E2F7238, &qword_27E2F7230, &qword_23D9E2D28, MEMORY[0x277CDF060]);
  v15 = a1;

  v16 = v14;
  v17 = v20;
  sub_23D9DA1E4();

  return (*(v22 + 8))(v7, v17);
}

uint64_t sub_23D9C7998()
{
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x800000023D9E4D10;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  *&v5 = sub_23D9D9F04();
  *(&v5 + 1) = v1;
  LOBYTE(v6) = v2 & 1;
  *(&v6 + 1) = v3;
  *v7 = 0xD00000000000001BLL;
  *&v7[8] = 0x800000023D9E4D10;
  *&v7[16] = swift_getKeyPath();
  v7[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7270, &qword_23D9E2DB0);
  sub_23D9C85BC();
  sub_23D9DA114();
  v8[0] = v5;
  v8[1] = v6;
  v9[0] = *v7;
  *(v9 + 9) = *&v7[9];
  return sub_23D91F344(v8, &qword_27E2F7270, &qword_23D9E2DB0);
}

void sub_23D9C7AC4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_23D9D91D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = *a2;
  v9 = _AXSTripleClickCopyOptions();
  v10 = _AXSTripleClickContainsOption();

  if (v8 == 1)
  {
    if (!v10)
    {
      _AXSTripleClickAddOption();
    }

    sub_23D9D90C4();
    v11 = sub_23D9D91C4();
    v12 = sub_23D9DACB4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23D918000, v11, v12, "Enabling accessibility after turning on Reader", v13, 2u);
      MEMORY[0x23EEF4BC0](v13, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    sub_23D9D90D4();
  }

  else if (v10)
  {

    MEMORY[0x2821F02C0](44);
  }
}

uint64_t sub_23D9C7DB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7248, qword_23D9E2D38);
  sub_23D9DA3D4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7250, &qword_23D9E2DA0);
  sub_23D9DA574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7258, &qword_23D9E2DA8);
  sub_23D9C8530();
  return sub_23D9DA4B4();
}

uint64_t sub_23D9C7ED8()
{
  v0._countAndFlagsBits = 0xD000000000000038;
  v0._object = 0x800000023D9E4CD0;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  *&v5 = sub_23D9D9F04();
  *(&v5 + 1) = v1;
  LOBYTE(v6) = v2 & 1;
  *(&v6 + 1) = v3;
  *v7 = 0xD000000000000038;
  *&v7[8] = 0x800000023D9E4CD0;
  *&v7[16] = swift_getKeyPath();
  v7[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7270, &qword_23D9E2DB0);
  sub_23D9C85BC();
  sub_23D9DA114();
  v8[0] = v5;
  v8[1] = v6;
  v9[0] = *v7;
  *(v9 + 9) = *&v7[9];
  return sub_23D91F344(v8, &qword_27E2F7270, &qword_23D9E2DB0);
}

id sub_23D9C8004@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v9 = *v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  v5[2] = v9;
  v5[3] = v3;
  v5[4] = v4;
  KeyPath = swift_getKeyPath();
  *a1 = sub_23D9C87B8;
  *(a1 + 8) = v5;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  v7 = v4;

  return v9;
}

unint64_t sub_23D9C80AC(uint64_t a1)
{
  v1 = a1;
  sub_23D9DB034();
  sub_23D9DB054();
  v2 = sub_23D9DB064();

  return sub_23D9C8118(v1, v2);
}

unint64_t sub_23D9C8118(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23D9C8184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F7278, &qword_23D9E2E38);
  v3 = sub_23D9DAF74();
  LODWORD(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_23D9C80AC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_23D9C80AC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D9C82A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D9874();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_23D9C8338()
{
  result = qword_27E2F7168;
  if (!qword_27E2F7168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7170, &qword_23D9E2C58);
    sub_23D91F01C(&qword_27E2F7178, &qword_27E2F7180, &qword_23D9E2C60, &unk_23D9E2CC0);
    sub_23D91F01C(&qword_27E2F7188, qword_27E2F7190, &qword_23D9E2C68, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7168);
  }

  return result;
}

uint64_t sub_23D9C841C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D9C84D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9DAAB4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_23D9C8530()
{
  result = qword_27E2F7260;
  if (!qword_27E2F7260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7258, &qword_23D9E2DA8);
    sub_23D9C85BC();
    sub_23D9C8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7260);
  }

  return result;
}

unint64_t sub_23D9C85BC()
{
  result = qword_27E2F7268;
  if (!qword_27E2F7268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F7270, &qword_23D9E2DB0);
    sub_23D91EAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F7268);
  }

  return result;
}

unint64_t sub_23D9C8648()
{
  result = qword_27E2F43A0;
  if (!qword_27E2F43A0)
  {
    sub_23D9D9D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F43A0);
  }

  return result;
}

uint64_t sub_23D9C86A4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23D9DAAD4();
  *a2 = result & 1;
  return result;
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t View.axDebouncedOnChange<A>(_:debounceMs:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a7;
  v28 = a9;
  v29 = a5;
  v27 = a2;
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AXDebouncedOnChange(0, v18, v19, v17);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v26 - v23;
  (*(v14 + 16))(v16, a1, a6, v22);

  sub_23D9C9564(v16, a3, a4, v27, a6, a8, v24);
  MEMORY[0x23EEF34C0](v24, v29, v20, v30);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_23D9C8990(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6DC8, &unk_23D9E1F58);
  sub_23D9DA3A4();
  return v2;
}

uint64_t sub_23D9C89D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  v7 = sub_23D9D9C34();
  v24[2] = v7;
  v8 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v10 = *(a2 + 24);
  v30 = v7;
  v31 = v8;
  v32 = WitnessTable;
  v33 = v10;
  v25 = WitnessTable;
  v26 = MEMORY[0x277CE0E38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v24 - v16;
  (*(v5 + 16))(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v15);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v10;
  (*(v5 + 32))(v19 + v18, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v20 = swift_checkMetadataState();
  v21 = v25;
  sub_23D9DA1E4();

  v30 = v20;
  v31 = v8;
  v32 = v21;
  v33 = v10;
  swift_getOpaqueTypeConformance2();
  sub_23D91F510();
  v22 = *(v27 + 8);
  v22(v13, OpaqueTypeMetadata2);
  sub_23D91F510();
  return (v22)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_23D9C8CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v45 = a1;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v50 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v49 = v11;
  v13 = type metadata accessor for AXDebouncedOnChange(0, v12, v11, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - v19;
  v21 = (a3 + *(v13 + 44));
  v23 = *v21;
  v22 = v21[1];
  v46 = v23;
  v52 = v23;
  v53 = v22;
  v44 = v22;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F7308, &qword_23D9E2EC8);
  sub_23D9DA3B4();
  if (v51)
  {
    sub_23D9DAA44();
  }

  v24 = sub_23D9DA9F4();
  v25 = *(*(v24 - 8) + 56);
  v42 = v20;
  v25(v20, 1, 1, v24);
  v26 = *(v14 + 16);
  v41 = v17;
  v26(v17, a3, v13);
  v27 = *(v6 + 16);
  v27(v10, v45, a4);
  v27(v50, v47, a4);
  sub_23D9DA9B4();
  v28 = sub_23D9DA9A4();
  v29 = v13;
  v30 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v31 = *(v6 + 80);
  v32 = (v15 + v31 + v30) & ~v31;
  v33 = (v48 + v31 + v32) & ~v31;
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 2) = v28;
  *(v34 + 3) = v35;
  v36 = v49;
  *(v34 + 4) = a4;
  *(v34 + 5) = v36;
  (*(v14 + 32))(&v34[v30], v41, v29);
  v37 = *(v6 + 32);
  v37(&v34[v32], v10, a4);
  v37(&v34[v33], v50, a4);
  v38 = sub_23D9BB718(0, 0, v42, &unk_23D9E2ED8, v34);
  v52 = v46;
  v53 = v44;
  v51 = v38;
  return sub_23D9DA3C4();
}

uint64_t sub_23D9C90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_23D9DAF04();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  sub_23D9DA9B4();
  v8[10] = sub_23D9DA9A4();
  v11 = sub_23D9DA994();
  v8[11] = v11;
  v8[12] = v10;

  return MEMORY[0x2822009F8](sub_23D9C91AC, v11, v10);
}

uint64_t sub_23D9C91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = type metadata accessor for AXDebouncedOnChange(0, v4[5], v4[6], a4);
  v4[13] = v6;
  v7 = *(v5 + *(v6 + 40));
  v8 = 1000000000000000 * v7;
  v9 = (v7 * 0x38D7EA4C68000uLL) >> 64;
  v10 = (v7 >> 63) & 0xFFFC72815B398000;
  sub_23D9DB024();
  v11 = swift_task_alloc();
  v4[14] = v11;
  *v11 = v4;
  v11[1] = sub_23D9C92C0;

  return sub_23D9C9FEC(v8, v10 + v9, 0, 0, 1);
}

uint64_t sub_23D9C92C0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_23D9C94F0;
  }

  else
  {
    v8 = sub_23D9C9458;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23D9C9458()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v4 + *(v1 + 36)))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23D9C94F0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23D9C9564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for AXDebouncedOnChange(0, a5, a6, v13);
  v15 = (a7 + v14[9]);
  *v15 = a2;
  v15[1] = a3;
  *(a7 + v14[10]) = a4;
  v16 = (a7 + v14[11]);
  result = sub_23D9C8990(0);
  *v16 = result;
  v16[1] = v18;
  return result;
}

uint64_t sub_23D9C9614(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXDebouncedOnChange(255, a1[1], a1[3], a4);
  sub_23D9D96C4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_23D9C96A8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23D95F334();
    if (v2 <= 0x3F)
    {
      sub_23D9C9A70(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23D9C9750(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23D9C989C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23D9C9A70(uint64_t a1)
{
  if (!qword_27E2F7300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6DC8, &unk_23D9E1F58);
    v1 = sub_23D9DA3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2F7300);
    }
  }
}

uint64_t sub_23D9C9B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for AXDebouncedOnChange(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_23D9C9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for AXDebouncedOnChange(0, v7, *(v4 + 24), a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23D9C8CD8(a1, a2, v9, v7);
}

uint64_t sub_23D9C9CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for AXDebouncedOnChange(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + *(v6 + 64) + v9) & ~v9;
  v11 = (*(v8 + 64) + v9 + v10) & ~v9;
  swift_unknownObjectRelease();
  v12 = *(v8 + 8);
  v12(v4 + v7, v5);

  v12(v4 + v10, v5);
  v12(v4 + v11, v5);

  return swift_deallocObject();
}

uint64_t sub_23D9C9E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for AXDebouncedOnChange(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(*(v9 - 8) + 80);
  v13 = (v11 + *(v10 + 64) + v12) & ~v12;
  v14 = (*(*(v9 - 8) + 64) + v12 + v13) & ~v12;
  v15 = v4[2];
  v16 = v4[3];
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_23D928310;

  return sub_23D9C90B0(a1, v15, v16, v4 + v11, v4 + v13, v4 + v14, v9, v8);
}

uint64_t sub_23D9C9FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_23D9DAEF4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23D9CA0EC, 0, 0);
}

uint64_t sub_23D9CA0EC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_23D9DAF04();
  v5 = sub_23D9CA4A4(&qword_27E2F7310, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D9DB004();
  sub_23D9CA4A4(&qword_27E2F7318, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D9DAF14();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23D9CA27C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_23D9CA27C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23D9CA438, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23D9CA438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D9CA4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D9CA4EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXDebouncedOnChange(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D9D9C34();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

Swift::String __swiftcall AXSUILocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v3 = qword_27E2F7320;
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_23D9DA8B4();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_23D9CA6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23D9D9B04();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_23D9D9B14();
}

uint64_t sub_23D9CA7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23D9D9B04();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_23D9D9B14();
}

uint64_t View.bind<A, B>(stream:to:on:animated:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a6;
  v30 = a7;
  v31 = a5;
  v29 = a4;
  v27 = a1;
  v28 = a3;
  v8 = (*a2 + *MEMORY[0x277D84568]);
  v9 = *v8;
  v10 = *(*v8 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v26 - v11;
  v14 = *(v13 + 8);
  v15 = sub_23D9D8E34();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v20 = type metadata accessor for AXSUIAsyncStreamBinding(0, *(v14 + 16), v9, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v26 - v23;
  (*(v16 + 16))(v18, v27, v15, v22);
  (*(v10 + 16))(v12, v28, v9);
  sub_23D9CB370(v18, a2, v12, v29, v24);

  MEMORY[0x23EEF34C0](v24, v31, v20, v32);
  return (*(v21 + 8))(v24, v20);
}

{
  v32 = a6;
  v30 = a7;
  v31 = a5;
  v29 = a4;
  v27 = a1;
  v28 = a3;
  v8 = (*a2 + *MEMORY[0x277D84568]);
  v9 = *v8;
  v10 = *(*v8 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v26 - v11;
  v14 = *(*(v13 + 8) + 16);
  v15 = sub_23D9D8E34();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v20 = type metadata accessor for AXSUIAsyncStreamBinding(0, v14, v9, v19);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v26 - v23;
  (*(v16 + 16))(v18, v27, v15, v22);
  (*(v10 + 16))(v12, v28, v9);

  sub_23D9CB498(v18, a2, v12, v29, v24);
  MEMORY[0x23EEF34C0](v24, v31, v20, v32);
  return (*(v21 + 8))(v24, v20);
}

uint64_t View.axSettingsAppearance()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x23EEF34C0](&KeyPath, a1, &type metadata for AXSettingsAppearanceModifier, a2);
}

uint64_t View.axPlatformSheet<A>(isPresented:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = a5;
  v17 = a1;
  v13[0] = a1;
  v13[1] = a2;
  v14 = a3;
  v15 = a4;
  v11 = type metadata accessor for PlatformSheet(0, a7, a9, a4);

  MEMORY[0x23EEF34C0](v13, a6, v11, a8);
  sub_23D95895C(&v17);
}

Swift::String __swiftcall AXLSCSUILocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v3 = qword_27E2F7320;
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_23D9DA8B4();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}