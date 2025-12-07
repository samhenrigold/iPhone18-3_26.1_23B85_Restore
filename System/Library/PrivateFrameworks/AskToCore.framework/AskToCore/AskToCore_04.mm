unint64_t sub_2410D89B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2410D9EB0(qword_27E5268C0, 255, type metadata accessor for CFString, &unk_2410E105C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2410DEF10();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2410D8AC8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v23 = a1;
    while (1)
    {
      v25 = v4;
      v5 = *(*(v24 + 48) + v4);
      if (v5 == 3)
      {
        v6 = 0xD000000000000010;
      }

      else
      {
        v6 = 0x696F706B63656863;
      }

      if (v5 == 3)
      {
        v7 = 0x80000002410E6990;
      }

      else
      {
        v7 = 0xEC0000003256746ELL;
      }

      if (v5 == 2)
      {
        v8 = 0x6E6F697473657571;
      }

      else
      {
        v8 = v6;
      }

      if (v5 == 2)
      {
        v9 = 0xED00006369706F54;
      }

      else
      {
        v9 = v7;
      }

      v10 = 0xD000000000000013;
      if (v5)
      {
        v11 = 0xD000000000000016;
      }

      else
      {
        v11 = 0xD000000000000013;
      }

      if (v5)
      {
        v12 = 0x80000002410E6860;
      }

      else
      {
        v12 = 0x80000002410E6960;
      }

      if (v5 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v8;
      }

      if (v5 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v9;
      }

      if (v23 == 3)
      {
        v15 = 0xD000000000000010;
      }

      else
      {
        v15 = 0x696F706B63656863;
      }

      if (v23 == 3)
      {
        v16 = 0x80000002410E6990;
      }

      else
      {
        v16 = 0xEC0000003256746ELL;
      }

      if (v23 == 2)
      {
        v15 = 0x6E6F697473657571;
        v16 = 0xED00006369706F54;
      }

      if (v23)
      {
        v10 = 0xD000000000000016;
        v17 = 0x80000002410E6860;
      }

      else
      {
        v17 = 0x80000002410E6960;
      }

      v18 = v23 <= 1 ? v10 : v15;
      v19 = v23 <= 1 ? v17 : v16;
      if (v13 == v18 && v14 == v19)
      {
        break;
      }

      v20 = sub_2410DF8D0();

      if (v20)
      {
        return v25;
      }

      v4 = (v25 + 1) & v22;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v25;
  }

  return v4;
}

unint64_t sub_2410D8CCC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x6E6F697473657571 : 0x696F706B63656863;
      v8 = v6 == 2 ? 0xED00006369706F54 : 0xEA0000000000746ELL;
      v9 = 0xD000000000000016;
      v10 = *(*(v23 + 48) + v4) ? 0xD000000000000016 : 0xD000000000000013;
      v11 = *(*(v23 + 48) + v4) ? 0x80000002410E6860 : 0x80000002410E6960;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v7;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v8;
      v14 = v5 == 2 ? 0x6E6F697473657571 : 0x696F706B63656863;
      v15 = v5 == 2 ? 0xED00006369706F54 : 0xEA0000000000746ELL;
      if (v5)
      {
        v16 = 0x80000002410E6860;
      }

      else
      {
        v9 = 0xD000000000000013;
        v16 = 0x80000002410E6960;
      }

      v17 = v5 <= 1 ? v9 : v14;
      v18 = v5 <= 1 ? v16 : v15;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_2410DF8D0();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2410D8E90(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0x6E6F697473657571 : 0x696F706B63656863;
      v7 = v5 == 2 ? 0xED00006369706F54 : 0xEC0000003456746ELL;
      v8 = 0xD000000000000016;
      v9 = *(*(v22 + 48) + v4) ? 0xD000000000000016 : 0xD000000000000013;
      v10 = *(*(v22 + 48) + v4) ? 0x80000002410E6860 : 0x80000002410E6960;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v6;
      v12 = *(*(v22 + 48) + v4) <= 1u ? v10 : v7;
      v13 = v21 == 2 ? 0x6E6F697473657571 : 0x696F706B63656863;
      v14 = v21 == 2 ? 0xED00006369706F54 : 0xEC0000003456746ELL;
      if (v21)
      {
        v15 = 0x80000002410E6860;
      }

      else
      {
        v8 = 0xD000000000000013;
        v15 = 0x80000002410E6960;
      }

      v16 = v21 <= 1 ? v8 : v13;
      v17 = v21 <= 1 ? v15 : v14;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = sub_2410DF8D0();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_2410D905C(void *a1)
{
  v2 = v1;
  v4 = sub_2410DEF00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2410DEEF0();
  v8 = sub_2410DEEB0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v8;
  *(v2 + 24) = v10;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 32) = a1;
  v11 = a1;
  v12 = [v11 interruptionHandler];
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_2410D9F04;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  v15[4] = v14;
  v27 = sub_2410D9F18;
  v28 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2410D4C7C;
  v26 = &block_descriptor_50;
  v16 = _Block_copy(&aBlock);

  sub_2410D9E18(v12);

  [v11 setInterruptionHandler_];
  _Block_release(v16);
  v17 = [v11 invalidationHandler];
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v17 = sub_2410D9EA0;
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  swift_weakInit();

  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v18;
  v20[4] = v19;
  v27 = sub_2410D9E70;
  v28 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2410D4C7C;
  v26 = &block_descriptor_57;
  v21 = _Block_copy(&aBlock);
  sub_2410D9E18(v17);

  [v11 setInvalidationHandler_];
  _Block_release(v21);
  sub_2410D9E90(v17);
  sub_2410D9E90(v12);
  return v2;
}

uint64_t sub_2410D93EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526878, &qword_2410E60E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2410D945C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2410A8C90;

  return sub_2410D5A94(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2410D9534(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = sub_2410D9EB0(&qword_27E526888, a2, type metadata accessor for Client, &protocol conformance descriptor for Client);
  result = sub_2410D9EB0(&qword_27E526890, v3, type metadata accessor for Client, &protocol conformance descriptor for Client);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_2410D95E0()
{
  result = qword_27E526898;
  if (!qword_27E526898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526898);
  }

  return result;
}

unint64_t sub_2410D9638()
{
  result = qword_27E5268A0;
  if (!qword_27E5268A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5268A8, &qword_2410E61F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5268A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Client.Known(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Client.Known(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2410D992C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t sub_2410D9988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2410D9A58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2410A82A0;

  return sub_2410D5A94(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2410D9B30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2410A8C90;

  return sub_2410D7FE4(a1, v4);
}

uint64_t sub_2410D9BE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2410A82A0;

  return sub_2410D7FE4(a1, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_34Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2410D9D88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2410D9E18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_46Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2410D9E90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2410D9EB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2410D9F20(uint64_t a1)
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

uint64_t sub_2410D9FB4(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_2410DA050(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t, unint64_t))
{
  v5 = (*(*((*MEMORY[0x277D85000] & *v3) + 0x58) + 16))(a1, a2, *((*MEMORY[0x277D85000] & *v3) + 0x50));
  v7 = v6;
  sub_241086284(v5, v6);
  a3(0, v5, v7);
  sub_2410861F8(v5, v7);

  return sub_2410861F8(v5, v7);
}

uint64_t sub_2410DA194(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = sub_2410DF390();
  *(swift_allocObject() + 16) = v7;
  v9 = a3;
  v10 = a1;
  sub_2410DA050(v9, v8, sub_2410DA954);
}

void sub_2410DA268(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_2410DEDB0();
  }

  else
  {
    v6 = 0;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_2410DEE20();
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_2410DA308(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, unint64_t))
{
  v6 = (*(*((*MEMORY[0x277D85000] & *v4) + 0x58) + 24))(a1, a2, a3, *((*MEMORY[0x277D85000] & *v4) + 0x50));
  v8 = v7;
  sub_241086284(v6, v7);
  a4(0, v6, v8);
  sub_2410861F8(v6, v8);

  return sub_2410861F8(v6, v8);
}

uint64_t sub_2410DA44C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v9 = sub_2410DEDF0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a6);
  sub_2410DEDE0();
  v14 = sub_2410DF390();
  *(swift_allocObject() + 16) = v13;
  v15 = a3;
  v16 = a1;
  sub_2410DA308(v15, v12, v14, sub_2410DA91C);

  return (*(v10 + 8))(v12, v9);
}

id sub_2410DA608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _AskToExtensionConfiguration.ExportedObject(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2410DA6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2410DA774(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2410DA7B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  (*(*(v4 - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v6 = type metadata accessor for _AskToExtensionConfiguration.ExportedObject(0, v4, *((v3 & v2) + 0x58), v5);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

int64x2_t static ImageResizer.ResizeInfo.payloadContactImagePreview.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4059000000000000uLL);
  *a1 = result;
  a1[1] = vdupq_n_s64(0x4049000000000000uLL);
  a1[2].i64[0] = 20480;
  return result;
}

uint64_t static ImageResizer.resizeAndDownsampleImage(_:resizeInfo:encoder:)(CGImage *a1, double *a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = __swift_project_boxed_opaque_existential_1(a3, v5);

  return sub_2410DB1FC(a1, a2, v7, v5, v6);
}

char *sub_2410DA9D8(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2410DF620())
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v17 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245CD9A20](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20 = v9;
      a1(&v19, &v20);
      if (v3)
      {

        return v8;
      }

      if (*(&v19 + 1) >> 60 == 15)
      {
        sub_2410861E4(v19, *(&v19 + 1));
      }

      else
      {
        v18 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2410D2350(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        v14 = v18;
        if (v13 >= v12 >> 1)
        {
          v15 = sub_2410D2350((v12 > 1), v13 + 1, 1, v8);
          v14 = v18;
          v8 = v15;
        }

        *(v8 + 2) = v13 + 1;
        *&v8[16 * v13 + 32] = v14;
        a1 = v17;
      }

      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *static ImageResizer.resizeAndDownsampleImages(_:resizeInfo:encoder:)(unint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[1];
  v31 = *a2;
  v32 = v5;
  v33 = *(a2 + 4);
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v7 = sub_2410DF620();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v13 = sub_2410DEFE0();
    __swift_project_value_buffer(v13, qword_27E530418);
    v14 = sub_2410DEFC0();
    v15 = sub_2410DF3E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24107E000, v14, v15, "No images provided for processing", v16, 2u);
      MEMORY[0x245CDA690](v16, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  if (qword_27E5254A8 != -1)
  {
    swift_once();
  }

  v8 = sub_2410DEFE0();
  __swift_project_value_buffer(v8, qword_27E530418);

  v9 = sub_2410DEFC0();
  v10 = sub_2410DF3D0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    if (v6)
    {
      v12 = sub_2410DF620();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    *(v11 + 12) = 2048;
    *(v11 + 14) = v33;
    _os_log_impl(&dword_24107E000, v9, v10, "Processing %ld images with budget %ld bytes per image", v11, 0x16u);
    MEMORY[0x245CDA690](v11, -1, -1);
  }

  else
  {
  }

  v18 = sub_2410DEFC0();
  v19 = sub_2410DF3E0();
  if (!os_log_type_enabled(v18, v19))
  {
LABEL_31:

    MEMORY[0x28223BE20](v25);
    v30[2] = &v31;
    v30[3] = a3;
    v17 = sub_2410DA9D8(sub_2410DB588, v30, a1);

    v26 = sub_2410DEFC0();
    v27 = sub_2410DF3D0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = *(v17 + 2);

      *(v28 + 12) = 2048;
      if (v6)
      {
        v29 = sub_2410DF620();
      }

      else
      {
        v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 14) = v29;

      _os_log_impl(&dword_24107E000, v26, v27, "Successfully processed %ld/%ld images", v28, 0x16u);
      MEMORY[0x245CDA690](v28, -1, -1);
    }

    else
    {
    }

    return v17;
  }

  result = swift_slowAlloc();
  *result = 134218752;
  if ((v31 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (*&v31 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (*&v31 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v21 = *(&v31 + 1);
  *(result + 4) = *&v31;
  *(result + 6) = 2048;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(result + 14) = v21;
  *(result + 11) = 2048;
  if ((v32 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (*&v32 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (*&v32 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v22 = *(&v32 + 1);
  *(result + 3) = *&v32;
  *(result + 16) = 2048;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v22 < 9.22337204e18)
  {
    *(result + 34) = v22;
    v23 = v19;
    v24 = result;
    _os_log_impl(&dword_24107E000, v18, v23, "Target dimensions: ideal=%ld×%ld, minimum=%ld×%ld", result, 0x2Au);
    MEMORY[0x245CDA690](v24, -1, -1);
    goto LABEL_31;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2410DB0D8@<X0>(CGImage **a1@<X0>, double *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = *(a2 + 4);
  v11 = a3[3];
  v12 = a3[4];
  v13 = __swift_project_boxed_opaque_existential_1(a3, v11);
  result = sub_2410DB62C(v5, v10, v6, v7, v8, v9, v13, v11, v12);
  *a4 = result;
  a4[1] = v15;
  return result;
}

int64x2_t static ImageResizer.ResizeInfo.stashedContactImage.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4092C00000000000uLL);
  *a1 = result;
  a1[1] = vdupq_n_s64(0x4069000000000000uLL);
  a1[2].i64[0] = 512000;
  return result;
}

void __swiftcall ImageResizer.ResizeInfo.init(idealTargetDimensionSize:minimumTargetDimensionSize:maxDataSizePerImage:)(AskToCore::ImageResizer::ResizeInfo *__return_ptr retstr, CGSize idealTargetDimensionSize, CGSize minimumTargetDimensionSize, Swift::Int maxDataSizePerImage)
{
  retstr->idealTargetDimensionSize.width = idealTargetDimensionSize.width;
  retstr->idealTargetDimensionSize.height = idealTargetDimensionSize.height;
  retstr->minimumTargetDimensionSize.width = minimumTargetDimensionSize.width;
  retstr->minimumTargetDimensionSize.height = minimumTargetDimensionSize.height;
  retstr->maxDataSizePerImage = maxDataSizePerImage;
}

uint64_t static ImageResizer.ResizeInfo.budgetedPayloadContactImageWith(totalImageCount:)@<X0>(uint64_t result@<X0>, int64x2_t *a2@<X8>)
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = 0x400000 / v2;
  v4 = vdupq_n_s64(0x4092C00000000000uLL);
  v5 = vdupq_n_s64(0x4069000000000000uLL);
  if (v3 >= 0x7D000)
  {
    v3 = 512000;
  }

  *a2 = v4;
  a2[1] = v5;
  a2[2].i64[0] = v3;
  return result;
}

uint64_t sub_2410DB1FC(CGImage *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v12, v13);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = *(a2 + 4);
  if (qword_27E5254A8 != -1)
  {
    swift_once();
  }

  v19 = sub_2410DEFE0();
  __swift_project_value_buffer(v19, qword_27E530418);
  v20 = sub_2410DEFC0();
  v21 = sub_2410DF3D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v18;
    _os_log_impl(&dword_24107E000, v20, v21, "Processing single image with budget %ld bytes", v22, 0xCu);
    MEMORY[0x245CDA690](v22, -1, -1);
  }

  v23 = sub_2410DB62C(a1, v18, v14, v15, v16, v17, v11, a4, a5);
  v25 = v23;
  v26 = v24;
  if (v24 >> 60 == 15)
  {
    v27 = sub_2410DEFC0();
    v28 = sub_2410DF3F0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24107E000, v27, v28, "Failed to process single image, returning nil", v29, 2u);
      MEMORY[0x245CDA690](v29, -1, -1);

      sub_2410861E4(v25, v26);
    }

    else
    {
    }

    v25 = 0;
    goto LABEL_24;
  }

  sub_241086284(v23, v24);
  v30 = sub_2410DEFC0();
  v31 = sub_2410DF3D0();
  if (!os_log_type_enabled(v30, v31))
  {
    sub_2410861E4(v25, v26);
LABEL_23:

LABEL_24:
    (*(v9 + 8))(v11, a4);
    return v25;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v33 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v33 != 2)
    {
      v34 = 0;
      goto LABEL_22;
    }

    v36 = *(v25 + 16);
    v35 = *(v25 + 24);
    v37 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (!v37)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v33)
  {
    v34 = BYTE6(v26);
LABEL_22:
    *(result + 4) = v34;
    v38 = result;
    sub_2410861E4(v25, v26);
    _os_log_impl(&dword_24107E000, v30, v31, "Successfully processed single image (%ld bytes)", v38, 0xCu);
    MEMORY[0x245CDA690](v38, -1, -1);
    goto LABEL_23;
  }

  LODWORD(v34) = HIDWORD(v25) - v25;
  if (!__OFSUB__(HIDWORD(v25), v25))
  {
    v34 = v34;
    goto LABEL_22;
  }

  __break(1u);
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

uint64_t sub_2410DB5C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2410DB5E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_2410DB62C(CGImage *a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v93 = a9;
  v92 = a6;
  v14 = a1;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = *(v15 + 16);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v18;
  v17();
  Width = CGImageGetWidth(v14);
  Height = CGImageGetHeight(v14);
  if (qword_27E5254A8 != -1)
  {
LABEL_119:
    swift_once();
  }

  v21 = sub_2410DEFE0();
  __swift_project_value_buffer(v21, qword_27E530418);
  v22 = sub_2410DEFC0();
  v23 = sub_2410DF3E0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = Width;
    result = swift_slowAlloc();
    *result = 134219008;
    if (Width <= -9.22337204e18)
    {
LABEL_121:
      __break(1u);
    }

    else if (v24 < 9.22337204e18)
    {
      v26 = Height;
      *(result + 4) = v24;
      *(result + 12) = 2048;
      if (Height > -9.22337204e18)
      {
        if (v26 < 9.22337204e18)
        {
          *(result + 14) = v26;
          *(result + 22) = 2048;
          if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (a3 > -9.22337204e18)
            {
              if (a3 < 9.22337204e18)
              {
                *(result + 24) = a3;
                *(result + 32) = 2048;
                if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (a4 > -9.22337204e18)
                  {
                    if (a4 < 9.22337204e18)
                    {
                      *(result + 34) = a4;
                      *(result + 42) = 2048;
                      *(result + 44) = a2;
                      v27 = v23;
                      v28 = result;
                      _os_log_impl(&dword_24107E000, v22, v27, "Processing image: %ld×%ld → target: %ld×%ld, budget: %ld bytes", result, 0x34u);
                      MEMORY[0x245CDA690](v28, -1, -1);
                      goto LABEL_14;
                    }

LABEL_130:
                    __break(1u);
                    goto LABEL_131;
                  }

LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    __break(1u);
    goto LABEL_123;
  }

LABEL_14:

  v29 = sub_2410DC2D4(a2, v94, v14, v95, v93, a3, a4);
  if (v30 >> 60 != 15)
  {
    Height = v29;
    Width = v30;
    sub_241086284(v29, v30);
    v54 = sub_2410DEFC0();
    v55 = sub_2410DF3E0();
    if (!os_log_type_enabled(v54, v55))
    {
      sub_2410861E4(Height, Width);
LABEL_84:

      (*(v15 + 8))(v94, v95);
      return Height;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v57 = Width >> 62;
    if ((Width >> 62) > 1)
    {
      if (v57 == 2)
      {
        v78 = *(Height + 16);
        v77 = *(Height + 24);
        v52 = __OFSUB__(v77, v78);
        v58 = v77 - v78;
        if (v52)
        {
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v58 = 0;
      }

      goto LABEL_83;
    }

    if (!v57)
    {
      v58 = BYTE6(Width);
LABEL_83:
      *(result + 4) = v58;
      v82 = result;
      sub_2410861E4(Height, Width);
      _os_log_impl(&dword_24107E000, v54, v55, "Image processed successfully at ideal size (%ld bytes)", v82, 0xCu);
      MEMORY[0x245CDA690](v82, -1, -1);
      goto LABEL_84;
    }

    LODWORD(v58) = HIDWORD(Height) - Height;
    if (!__OFSUB__(HIDWORD(Height), Height))
    {
      v58 = v58;
      goto LABEL_83;
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v88 = v15;
  v31 = sub_2410DEFC0();
  v32 = sub_2410DF3E0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24107E000, v31, v32, "Ideal size exceeded budget, using binary search", v33, 2u);
    MEMORY[0x245CDA690](v33, -1, -1);
  }

  Height = 0;
  Width = 0xF000000000000000;
  v34 = 1.0;
  v91 = 0.0;
  v15 = 1;
  *&v35 = 134218496;
  v90 = v35;
  *&v35 = 134218752;
  v89 = v35;
  v36 = 0.5;
  do
  {
    v40 = Width;
    v41 = Height;
    v39 = (v34 + v36) * 0.5;
    v42 = a3;
    if (v39 * a3 < a5)
    {
      a3 = a5;
    }

    else
    {
      a3 = v39 * a3;
    }

    v43 = a4;
    if (v39 * a4 < v92)
    {
      a4 = v92;
    }

    else
    {
      a4 = v39 * a4;
    }

    v44 = sub_2410DC2D4(a2, v94, v14, v95, v93, a3, a4);
    if (v45 >> 60 == 15)
    {
      v9 = sub_2410DEFC0();
      Height = sub_2410DF3E0();
      if (os_log_type_enabled(v9, Height))
      {
        v46 = swift_slowAlloc();
        *v46 = v90;
        *(v46 + 4) = v15;
        *(v46 + 12) = 2048;
        if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (a3 <= -9.22337204e18)
        {
          goto LABEL_109;
        }

        if (a3 >= 9.22337204e18)
        {
          goto LABEL_111;
        }

        *(v46 + 14) = a3;
        *(v46 + 22) = 2048;
        if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_114;
        }

        if (a4 <= -9.22337204e18)
        {
          goto LABEL_116;
        }

        if (a4 >= 9.22337204e18)
        {
          goto LABEL_117;
        }

        *(v46 + 24) = a4;
        v37 = Height;
        v38 = v46;
        _os_log_impl(&dword_24107E000, v9, v37, "Binary search iteration %ld: size %ld×%ld failed", v46, 0x20u);
        MEMORY[0x245CDA690](v38, -1, -1);
      }

      v34 = (v34 + v36) * 0.5;
      v39 = v36;
      Height = v41;
      goto LABEL_20;
    }

    Height = v44;
    Width = v45;
    sub_2410861E4(v41, v40);
    sub_241086284(Height, Width);
    v9 = sub_2410DEFC0();
    v47 = sub_2410DF3E0();
    if (!os_log_type_enabled(v9, v47))
    {
      sub_2410861E4(Height, Width);
      v91 = (v34 + v36) * 0.5;
LABEL_20:
      a4 = v43;
      a3 = v42;
      goto LABEL_21;
    }

    result = swift_slowAlloc();
    *result = v89;
    *(result + 4) = v15;
    *(result + 12) = 2048;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_108;
    }

    if (a3 <= -9.22337204e18)
    {
      goto LABEL_110;
    }

    if (a3 >= 9.22337204e18)
    {
      goto LABEL_112;
    }

    *(result + 14) = a3;
    *(result + 22) = 2048;
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_113;
    }

    if (a4 <= -9.22337204e18)
    {
      goto LABEL_115;
    }

    if (a4 >= 9.22337204e18)
    {
      goto LABEL_118;
    }

    *(result + 24) = a4;
    *(result + 32) = 2048;
    v48 = Width >> 62;
    if ((Width >> 62) > 1)
    {
      a4 = v43;
      a3 = v42;
      if (v48 == 2)
      {
        v51 = *(Height + 16);
        v50 = *(Height + 24);
        v52 = __OFSUB__(v50, v51);
        v49 = v50 - v51;
        if (v52)
        {
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      a4 = v43;
      a3 = v42;
      if (v48)
      {
        LODWORD(v49) = HIDWORD(Height) - Height;
        if (__OFSUB__(HIDWORD(Height), Height))
        {
          goto LABEL_120;
        }

        v49 = v49;
      }

      else
      {
        v49 = BYTE6(Width);
      }
    }

    *(result + 34) = v49;
    v53 = result;
    sub_2410861E4(Height, Width);
    _os_log_impl(&dword_24107E000, v9, v47, "Binary search iteration %ld: size %ld×%ld succeeded (%ld bytes)", v53, 0x2Au);
    MEMORY[0x245CDA690](v53, -1, -1);
    v91 = (v34 + v36) * 0.5;
LABEL_21:

    ++v15;
    v36 = v39;
  }

  while (v15 != 6);
  if (Width >> 60 != 15)
  {
    sub_24108AFBC(Height, Width);
    sub_241086284(Height, Width);
    v64 = sub_2410DEFC0();
    v65 = sub_2410DF3E0();
    v66 = os_log_type_enabled(v64, v65);
    v9 = v88;
    if (!v66)
    {
      sub_2410861E4(Height, Width);
      sub_2410861E4(Height, Width);
      goto LABEL_100;
    }

    v67 = v91 * 100.0;
    v68 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v96 = v14;
    *v68 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v69 = swift_allocObject();
    v70 = MEMORY[0x277D839F8];
    *(v69 + 16) = xmmword_2410E13A0;
    v71 = MEMORY[0x277D83A80];
    *(v69 + 56) = v70;
    *(v69 + 64) = v71;
    *(v69 + 32) = v67;
    v72 = sub_2410DF0E0();
    v74 = sub_241085208(v72, v73, &v96);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2048;
    v75 = Width >> 62;
    if ((Width >> 62) > 1)
    {
      if (v75 != 2)
      {
        goto LABEL_98;
      }

      v83 = *(Height + 16);
      v15 = *(Height + 24);
      sub_2410861E4(Height, Width);
      v76 = v15 - v83;
      if (__OFSUB__(v15, v83))
      {
        __break(1u);
        goto LABEL_91;
      }

      goto LABEL_99;
    }

    if (!v75)
    {
      sub_2410861E4(Height, Width);
      v76 = BYTE6(Width);
      goto LABEL_99;
    }

    result = sub_2410861E4(Height, Width);
    LODWORD(v76) = HIDWORD(Height) - Height;
    if (!__OFSUB__(HIDWORD(Height), Height))
    {
      v76 = v76;
      goto LABEL_99;
    }

    goto LABEL_132;
  }

  v59 = sub_2410DEFC0();
  v60 = sub_2410DF3F0();
  if (os_log_type_enabled(v59, v60))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24107E000, v59, v60, "Binary search failed, trying minimum size fallback", v9, 2u);
    MEMORY[0x245CDA690](v9, -1, -1);
  }

  result = sub_2410DC2D4(a2, v94, v14, v95, v93, a5, v92);
  v15 = v88;
  if (v56 >> 60 == 15)
  {
    v61 = sub_2410DEFC0();
    v62 = sub_2410DF3F0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_24107E000, v61, v62, "All processing approaches failed", v63, 2u);
      MEMORY[0x245CDA690](v63, -1, -1);

      sub_2410861E4(Height, Width);
    }

    else
    {
      sub_2410861E4(Height, Width);
    }

    (*(v15 + 8))(v94, v95);
    return 0;
  }

LABEL_75:
  v65 = result;
  v68 = v56;
  sub_241086284(result, v56);
  v64 = sub_2410DEFC0();
  v79 = sub_2410DF3E0();
  if (!os_log_type_enabled(v64, v79))
  {
LABEL_91:
    sub_2410861E4(Height, Width);
    sub_2410861E4(v65, v68);

LABEL_105:
    (*(v15 + 8))(v94, v95);
    return v65;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v80 = v68 >> 62;
  if ((v68 >> 62) > 1)
  {
    if (v80 == 2)
    {
      v85 = *(v65 + 16);
      v84 = *(v65 + 24);
      v52 = __OFSUB__(v84, v85);
      v81 = v84 - v85;
      if (v52)
      {
        __break(1u);
LABEL_98:
        sub_2410861E4(Height, Width);
        v76 = 0;
LABEL_99:
        *(v68 + 14) = v76;
        sub_2410861E4(Height, Width);
        _os_log_impl(&dword_24107E000, v64, v65, "Binary search completed: using %s%% of ideal size (%ld bytes)", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x245CDA690](v14, -1, -1);
        MEMORY[0x245CDA690](v68, -1, -1);
LABEL_100:

        (*(v9 + 8))(v94, v95);
        return Height;
      }
    }

    else
    {
      v81 = 0;
    }

LABEL_104:
    *(result + 4) = v81;
    v86 = result;
    sub_2410861E4(v65, v68);
    _os_log_impl(&dword_24107E000, v64, v79, "Minimum size fallback succeeded (%ld bytes)", v86, 0xCu);
    MEMORY[0x245CDA690](v86, -1, -1);

    sub_2410861E4(Height, Width);
    goto LABEL_105;
  }

  if (!v80)
  {
    v81 = BYTE6(v68);
    goto LABEL_104;
  }

  LODWORD(v81) = HIDWORD(v65) - v65;
  if (!__OFSUB__(HIDWORD(v65), v65))
  {
    v81 = v81;
    goto LABEL_104;
  }

LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_2410DC2D4(uint64_t a1, uint64_t a2, CGImage *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v70[3] = a4;
  v70[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v18 = sub_2410DCBCC(boxed_opaque_existential_1, a3, a4, a5, a6, a7);
  if (v18)
  {
    v19 = v18;
    (*(a5 + 8))(a4, a5);
    v8 = *(a5 + 24);
    result = v8(v19, a4, a5);
    if (v21 >> 60 == 15)
    {
      goto LABEL_21;
    }

    a2 = result;
    v7 = v21;
    v9 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (!v9)
      {
        if (BYTE6(v21) <= a1)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result <= a1)
        {
LABEL_31:
          if (qword_27E5254A8 == -1)
          {
            goto LABEL_32;
          }

          goto LABEL_119;
        }

        goto LABEL_20;
      }

LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v9 == 2)
    {
      v28 = *(result + 16);
      v27 = *(result + 24);
      v29 = __OFSUB__(v27, v28);
      v30 = v27 - v28;
      if (v29)
      {
        __break(1u);
        goto LABEL_121;
      }

      if (v30 <= a1)
      {
        goto LABEL_31;
      }
    }

    else if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_20:
    sub_2410861E4(result, v21);
LABEL_21:
    sub_241096768(v70, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE8, &qword_2410E2A00);
    if (swift_dynamicCast())
    {
      result = (v8)(v19, a4, a5, 0.7);
      if (v31 >> 60 == 15)
      {
        goto LABEL_41;
      }

      a2 = result;
      v7 = v31;
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 == 2)
        {
          v36 = *(result + 16);
          v35 = *(result + 24);
          v29 = __OFSUB__(v35, v36);
          v37 = v35 - v36;
          if (v29)
          {
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (v37 > a1)
          {
            goto LABEL_40;
          }
        }

        else if (a1 < 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v32)
        {
          goto LABEL_53;
        }

        if (BYTE6(v31) > a1)
        {
          goto LABEL_40;
        }
      }

LABEL_57:
      v45 = 0x3FE6666666666666;
      goto LABEL_94;
    }

LABEL_91:

    a2 = 0;
LABEL_112:
    __swift_destroy_boxed_opaque_existential_1(v70);
    return a2;
  }

  if (qword_27E5254A8 != -1)
  {
    swift_once();
  }

  v22 = sub_2410DEFE0();
  __swift_project_value_buffer(v22, qword_27E530418);
  v19 = sub_2410DEFC0();
  v23 = sub_2410DF3F0();
  if (!os_log_type_enabled(v19, v23))
  {
    goto LABEL_91;
  }

  v24 = swift_slowAlloc();
  *v24 = 134218240;
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_114;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  *(v24 + 4) = a6;
  *(v24 + 12) = 2048;
  if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (a7 <= -9.22337204e18)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (a7 < 9.22337204e18)
  {
    *(v24 + 14) = a7;
    v25 = v23;
    v26 = v24;
    _os_log_impl(&dword_24107E000, v19, v25, "Failed to resize image to %ld×%ld", v24, 0x16u);
    MEMORY[0x245CDA690](v26, -1, -1);
    goto LABEL_91;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  swift_once();
LABEL_32:
  v33 = sub_2410DEFE0();
  __swift_project_value_buffer(v33, qword_27E530418);
  sub_241086284(a2, v7);
  boxed_opaque_existential_1 = sub_2410DEFC0();
  a1 = sub_2410DF3E0();
  if (!os_log_type_enabled(boxed_opaque_existential_1, a1))
  {
    sub_2410861E4(a2, v7);
    goto LABEL_111;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (v9 <= 1)
  {
    if (!v9)
    {
      v34 = BYTE6(v7);
LABEL_75:
      *(result + 4) = v34;
      v52 = result;
      sub_2410861E4(a2, v7);
      v53 = "Encoded at default quality: %ld bytes";
      v54 = a1;
      v55 = boxed_opaque_existential_1;
      v56 = v52;
      v57 = 12;
LABEL_110:
      _os_log_impl(&dword_24107E000, v55, v54, v53, v56, v57);
      MEMORY[0x245CDA690](v52, -1, -1);
      goto LABEL_111;
    }

LABEL_72:
    LODWORD(v34) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v34 = v34;
      goto LABEL_75;
    }

    goto LABEL_131;
  }

  while (1)
  {
    if (v9 != 2)
    {
      v34 = 0;
      goto LABEL_75;
    }

    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    v29 = __OFSUB__(v43, v44);
    v34 = v43 - v44;
    if (!v29)
    {
      goto LABEL_75;
    }

    __break(1u);
LABEL_53:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_129;
    }

    if (HIDWORD(a2) - a2 <= a1)
    {
      goto LABEL_57;
    }

LABEL_40:
    sub_2410861E4(a2, v7);
LABEL_41:
    result = (v8)(v19, a4, a5, 0.5);
    if (v38 >> 60 == 15)
    {
      break;
    }

    a2 = result;
    v7 = v38;
    v39 = v38 >> 62;
    if ((v38 >> 62) <= 1)
    {
      if (v39)
      {
        LODWORD(v40) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_130;
        }

        v40 = v40;
      }

      else
      {
        v40 = BYTE6(v38);
      }

LABEL_60:
      v46 = 0.5;
      if (v40 <= a1)
      {
        goto LABEL_95;
      }

LABEL_63:
      sub_2410861E4(result, v38);
      break;
    }

    if (v39 != 2)
    {
      v46 = 0.5;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_63;
    }

    v42 = *(result + 16);
    v41 = *(result + 24);
    v29 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (!v29)
    {
      goto LABEL_60;
    }

    __break(1u);
  }

  result = (v8)(v19, a4, a5, 0.3);
  if (v47 >> 60 == 15)
  {
LABEL_80:
    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v58 = sub_2410DEFE0();
    __swift_project_value_buffer(v58, qword_27E530418);
    v59 = sub_2410DEFC0();
    v60 = sub_2410DF3E0();
    if (!os_log_type_enabled(v59, v60))
    {
      goto LABEL_90;
    }

    result = swift_slowAlloc();
    *result = 134218240;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a6 > -9.22337204e18)
      {
        if (a6 < 9.22337204e18)
        {
          *(result + 4) = a6;
          *(result + 12) = 2048;
          if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (a7 > -9.22337204e18)
            {
              if (a7 < 9.22337204e18)
              {
                *(result + 14) = a7;
                v61 = v60;
                v62 = result;
                _os_log_impl(&dword_24107E000, v59, v61, "All compression levels exceeded budget for size %ld×%ld", result, 0x16u);
                MEMORY[0x245CDA690](v62, -1, -1);
LABEL_90:

                goto LABEL_91;
              }

              goto LABEL_127;
            }

LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  a2 = result;
  v7 = v47;
  v48 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v48 != 2)
    {
      if (a1 < 0)
      {
        goto LABEL_79;
      }

LABEL_93:
      v45 = 0x3FD3333333333333;
LABEL_94:
      v46 = *&v45;
LABEL_95:
      if (qword_27E5254A8 != -1)
      {
        swift_once();
      }

      v63 = sub_2410DEFE0();
      __swift_project_value_buffer(v63, qword_27E530418);
      sub_241086284(a2, v7);
      boxed_opaque_existential_1 = sub_2410DEFC0();
      v64 = sub_2410DF3E0();
      if (os_log_type_enabled(boxed_opaque_existential_1, v64))
      {
        result = swift_slowAlloc();
        *result = 134218240;
        *(result + 4) = v46;
        *(result + 12) = 2048;
        v65 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          if (v65 != 2)
          {
            v66 = 0;
            goto LABEL_109;
          }

          v68 = *(a2 + 16);
          v67 = *(a2 + 24);
          v29 = __OFSUB__(v67, v68);
          v66 = v67 - v68;
          if (!v29)
          {
            goto LABEL_109;
          }

          __break(1u);
        }

        else if (!v65)
        {
          v66 = BYTE6(v7);
          goto LABEL_109;
        }

        LODWORD(v66) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v66 = v66;
LABEL_109:
        *(result + 14) = v66;
        v52 = result;
        sub_2410861F8(a2, v7);
        v53 = "Encoded at quality %f: %ld bytes";
        v54 = v64;
        v55 = boxed_opaque_existential_1;
        v56 = v52;
        v57 = 22;
        goto LABEL_110;
      }

      sub_2410861F8(a2, v7);
LABEL_111:

      goto LABEL_112;
    }

    v51 = *(result + 16);
    v50 = *(result + 24);
    v29 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (v29)
    {
      __break(1u);
      goto LABEL_72;
    }

LABEL_78:
    if (v49 > a1)
    {
LABEL_79:
      sub_2410861E4(result, v47);
      goto LABEL_80;
    }

    goto LABEL_93;
  }

  if (!v48)
  {
    v49 = BYTE6(v47);
    goto LABEL_78;
  }

  LODWORD(v49) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v49 = v49;
    goto LABEL_78;
  }

LABEL_133:
  __break(1u);
  return result;
}

CGImageRef sub_2410DCBCC(uint64_t a1, CGImage *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  v16 = Width / Height;
  v17 = a5 / a6 < v16;
  v18 = v16 * a6;
  v19 = a5 / v16;
  if (v17)
  {
    v18 = a5;
  }

  else
  {
    v19 = a6;
  }

  if (v18 <= Width)
  {
    v20 = v18;
  }

  else
  {
    v20 = Width;
  }

  if (v19 <= Height)
  {
    v21 = v19;
  }

  else
  {
    v21 = Height;
  }

  AlphaInfo = CGImageGetAlphaInfo(a2);
  if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
  {
    result = (*(v11 + 8))(v13, a3);
LABEL_13:
    v24 = 0;
    v25 = 5;
    goto LABEL_14;
  }

  v29 = (*(a4 + 16))(a3, a4);
  result = (*(v11 + 8))(v13, a3);
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = 1;
  v24 = 1;
LABEL_14:
  if (v20 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v27 = __CGBitmapContextCreate_0(v20, v21, DeviceRGB, v25);

  if (!v27)
  {
    return 0;
  }

  if (v24)
  {
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = v20;
    v31.size.height = v21;
    CGContextClearRect(v27, v31);
  }

  sub_2410DF3C0();
  Image = CGBitmapContextCreateImage(v27);

  return Image;
}

AskToCore::_CommunicationHandle::Kind_optional __swiftcall _CommunicationHandle.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2410DD000()
{
  v1 = (v0 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t _CommunicationHandle.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void _CommunicationHandle.kind.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void _CommunicationHandle.kind.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t _CommunicationHandle.formattedValue.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = (v0 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  if (v2)
  {
    swift_beginAccess();
  }

  else
  {
    swift_beginAccess();
    v5 = objc_allocWithZone(MEMORY[0x277CBDB70]);

    v6 = sub_2410DF0A0();

    v7 = [v5 initWithStringValue_];

    v8 = [v7 formattedStringValue];
    if (v8)
    {
      v4 = sub_2410DF0C0();

      return v4;
    }
  }

  v4 = *v3;

  return v4;
}

id _CommunicationHandle.__allocating_init(value:kind:)(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *a3;
  v9 = &v7[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
  *v9 = a1;
  v9[1] = a2;
  v7[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind] = v8;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id _CommunicationHandle.init(value:kind:)(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v8 = *a3;
  v9 = &v3[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
  *v9 = a1;
  v9[1] = a2;
  v3[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind] = v8;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

BOOL _CommunicationHandle.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241096234(a1, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      v3 = (v1 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      v4 = *v3;
      v5 = v3[1];
      v6 = &v12[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
      swift_beginAccess();
      v7 = v4 == *v6 && v5 == *(v6 + 1);
      if (v7 || (sub_2410DF8D0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
        swift_beginAccess();
        v9 = *(v1 + v8);
        v10 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
        swift_beginAccess();
        LODWORD(v10) = v12[v10];

        return v9 == v10;
      }
    }
  }

  else
  {
    sub_241086184(v13, &unk_27E525CA0, "P?");
  }

  return 0;
}

uint64_t _CommunicationHandle.hash.getter()
{
  sub_2410DFA00();
  swift_beginAccess();

  sub_2410DF150();

  v1 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  MEMORY[0x245CD9E40](*(v0 + v1));
  return sub_2410DF9E0();
}

id _CommunicationHandle.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_2410C7BE4();
  v3 = sub_2410DF440();
  if (!v3)
  {
    if (qword_27E525490 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E5303D0);
    v11 = sub_2410DEFC0();
    v12 = sub_2410DF3F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24107E000, v11, v12, "Not initializing Handle (coder had nil value for key data)", v13, 2u);
      MEMORY[0x245CDA690](v13, -1, -1);
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_2410DEE40();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v9 = sub_24108E3EC(v5, v7);
  sub_2410861F8(v5, v7);
  sub_2410DE808(&qword_27E5269E0, &protocol conformance descriptor for _CommunicationHandle);
  sub_2410DF420();
  v15 = v29;
  if (!v29)
  {
    if (qword_27E525490 != -1)
    {
      swift_once();
    }

    v24 = sub_2410DEFE0();
    __swift_project_value_buffer(v24, qword_27E5303D0);
    v25 = sub_2410DEFC0();
    v26 = sub_2410DF3F0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24107E000, v25, v26, "Not initializing Handle (unarchiver had nil value for key value)", v27, 2u);
      MEMORY[0x245CDA690](v27, -1, -1);
    }

    [v9 finishDecoding];
LABEL_8:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = objc_allocWithZone(ObjectType);
  v17 = &v29[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  v20 = &v16[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
  *v20 = v18;
  v20[1] = v19;
  v21 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  v16[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind] = v15[v21];
  v28.receiver = v16;
  v28.super_class = ObjectType;

  v22 = objc_msgSendSuper2(&v28, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v23 = v22;
  [v9 finishDecoding];

  return v23;
}

Swift::Void __swiftcall _CommunicationHandle.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410DE808(&unk_27E5259E0, &protocol conformance descriptor for _CommunicationHandle);
  sub_2410DF410();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void *_CommunicationHandle.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = objc_allocWithZone(ObjectType);
  v5 = (v1 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = &v4[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
  *v8 = v6;
  v8[1] = v7;
  v9 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  v4[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind] = *(v1 + v9);
  v11.receiver = v4;
  v11.super_class = ObjectType;

  result = objc_msgSendSuper2(&v11, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id _CommunicationHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2410DE128()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_2410DE158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

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

uint64_t sub_2410DE230(uint64_t a1)
{
  v2 = sub_2410DE848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410DE26C(uint64_t a1)
{
  v2 = sub_2410DE848();

  return MEMORY[0x2821FE720](a1, v2);
}

id _CommunicationHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _CommunicationHandle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5269E8, &qword_2410E6510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410DE848();
  sub_2410DFA20();
  swift_beginAccess();
  v11[16] = 0;

  sub_2410DF800();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v10 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
    swift_beginAccess();
    v11[15] = *(v3 + v10);
    v11[14] = 1;
    sub_2410DE89C();
    sub_2410DF830();
    return (*(v6 + 8))(v8, v5);
  }
}

void *_CommunicationHandle.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526A00, &qword_2410E6518);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410DE848();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v9 = sub_2410DF700();
    v11 = (v1 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
    *v11 = v9;
    v11[1] = v12;
    v16 = 1;
    sub_2410DE8F0();
    sub_2410DF730();
    *(v1 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind) = v17;
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void *sub_2410DE770@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = _CommunicationHandle.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2410DE808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _CommunicationHandle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410DE848()
{
  result = qword_27E5269F0;
  if (!qword_27E5269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5269F0);
  }

  return result;
}

unint64_t sub_2410DE89C()
{
  result = qword_27E5269F8;
  if (!qword_27E5269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5269F8);
  }

  return result;
}

unint64_t sub_2410DE8F0()
{
  result = qword_27E526A08;
  if (!qword_27E526A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526A08);
  }

  return result;
}

unint64_t sub_2410DE948()
{
  result = qword_27E526A10;
  if (!qword_27E526A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526A10);
  }

  return result;
}

unint64_t sub_2410DEA14()
{
  result = qword_27E526A20;
  if (!qword_27E526A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526A20);
  }

  return result;
}

unint64_t sub_2410DEA6C()
{
  result = qword_27E526A28;
  if (!qword_27E526A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526A28);
  }

  return result;
}

unint64_t sub_2410DEAC4()
{
  result = qword_27E526A30;
  if (!qword_27E526A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526A30);
  }

  return result;
}

unint64_t sub_2410DEB18()
{
  result = qword_27E526A38;
  if (!qword_27E526A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526A38);
  }

  return result;
}