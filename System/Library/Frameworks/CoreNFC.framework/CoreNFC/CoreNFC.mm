uint64_t sub_23728D778(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v24)
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_23:
      v19 = v3 + OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v20 + 24))(a1, v6, ObjectType, v20);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v7 = a2;
    v29 = MEMORY[0x277D84F90];
    sub_23728DC74(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v25 = v3;
    v26 = a1;
    v8 = 0;
    a2 = v7;
    v6 = v29;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v28 = v7 & 0xC000000000000001;
    v9 = v7;
    while (1)
    {
      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v28)
      {
        v10 = MEMORY[0x2383C94A0](v8, a2);
      }

      else
      {
        if (v8 >= *(v27 + 16))
        {
          goto LABEL_31;
        }

        v10 = *(a2 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v11 = [v10 asNFCFeliCaTag];
      if (v11)
      {
        v12 = v11;
        v3 = 0;
      }

      else
      {
        v13 = [v10 asNFCISO15693Tag];
        if (v13)
        {
          v12 = v13;
          v3 = 2;
        }

        else
        {
          v14 = [v10 asNFCISO7816Tag];
          if (v14)
          {
            v12 = v14;
            v3 = 1;
          }

          else
          {
            v15 = [v10 asNFCMiFareTag];
            if (!v15)
            {
              goto LABEL_34;
            }

            v12 = v15;
            v3 = 3;
          }
        }
      }

      swift_unknownObjectRelease();
      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23728DC74((v16 > 1), v17 + 1, 1);
      }

      *(v29 + 16) = v17 + 1;
      v18 = v29 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v3;
      ++v8;
      a2 = v9;
      if (a1 == i)
      {
        v3 = v25;
        a1 = v26;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v23 = a2;
    v24 = sub_2372D1254();
    a2 = v23;
  }

  __break(1u);
LABEL_34:
  result = sub_2372D1244();
  __break(1u);
  return result;
}

id sub_23728DB2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NFCTagReaderSessionDelegateSwiftWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23728DBCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23728DBEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_23728DC28(uint64_t a1, unint64_t *a2, uint64_t a3)
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

char *sub_23728DC74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23728DCB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23728DC94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23728DE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23728DCB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_23728DDC0(&unk_27DE98830, &unk_2372D3E98);
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

uint64_t sub_23728DDC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_23728DE34(char *result, int64_t a2, char a3, char *a4)
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
    sub_23728DDC0(&qword_27DE988A8, &qword_2372D3EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t NFCISO7816ResponseAPDU.payload.getter()
{
  v1 = *(v0 + 8);
  sub_23728DFD0(v1, *(v0 + 16));
  return v1;
}

void sub_23728DFD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_23728DFE4(a1, a2);
  }
}

void sub_23728DFE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t NFCISO7816ResponseAPDU.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23728E070(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23728E070(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23728E084(a1, a2);
  }

  return a1;
}

uint64_t sub_23728E084(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t NFCISO7816ResponseAPDU.init(statusWord1:statusWord2:paylaod:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  result = sub_23728E070(0, 0xF000000000000000);
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t NFCISO7816ResponseAPDU.init(statusWord1:statusWord2:payload:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_23728E070(0, 0xF000000000000000);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

void NFCISO7816Tag.sendCommand(apdu:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_23728E448;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23728E450;
  v9[3] = &unk_284A4DBF8;
  v8 = _Block_copy(v9);

  [v3 sendCommandAPDU:a1 completionHandler:v8];
  _Block_release(v8);
}

void sub_23728E288(uint64_t a1, unint64_t a2, unsigned __int8 a3, unsigned __int8 a4, id a5, void (*a6)(unint64_t *))
{
  if (a5)
  {
    v22 = 0;
    v23 = 0;
    v21 = a5;
    v24 = 1;
    v7 = a5;
    a6(&v21);
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;

    sub_23728E634(v8, v9, v10, v11);
    return;
  }

  sub_23728E070(0, 0xF000000000000000);
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_15;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (!v19)
    {
      if (v20 >= 1)
      {
        goto LABEL_12;
      }

LABEL_15:
      a1 = 0;
      a2 = 0xF000000000000000;
      goto LABEL_16;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v16)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 1)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_23728DFE4(a1, a2);
  sub_23728E070(0, 0xF000000000000000);
LABEL_16:
  v21 = (a3 | (a4 << 8));
  v22 = a1;
  v23 = a2;
  v24 = 0;
  sub_23728DFD0(a1, a2);
  a6(&v21);
  sub_23728E634(v21, v22, v23, v24);

  sub_23728E070(a1, a2);
}

uint64_t sub_23728E410()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23728E450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v11 = sub_2372D0FC4();
  v13 = v12;

  v14 = a5;
  v9(v11, v13, a3, a4, a5);

  sub_23728E084(v11, v13);
}

uint64_t sub_23728E508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23728E520(uint64_t a1)
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

uint64_t sub_23728E53C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_23728E564(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23728E578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23728E5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_23728E634(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_23728E070(a2, a3);
  }
}

uint64_t sub_23728E648()
{
  v0 = sub_2372D1054();
  sub_23728E6CC(v0, qword_27DE99650);
  sub_23728E730(v0, qword_27DE99650);
  return sub_2372D1044();
}

uint64_t *sub_23728E6CC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23728E730(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void NFCMiFareTag.sendMiFareCommand(commandPacket:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2372D0FB4();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_23728E914;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23728E91C;
  v10[3] = &unk_284A4DCD0;
  v9 = _Block_copy(v10);

  [v4 sendMiFareCommand:v7 completionHandler:v9];
  _Block_release(v9);
}

void sub_23728E860(uint64_t a1, uint64_t a2, id a3, void (*a4)(void))
{
  if (a3)
  {
    v6 = a3;
    (a4)(a3, 0, 1);
  }

  else
  {
    (a4)(a1, a2);
  }
}

uint64_t sub_23728E8DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23728E91C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_2372D0FC4();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  sub_23728E084(v7, v9);
}

uint64_t sub_23728E9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NFCMiFareTag.sendMiFareISO7816Command(_:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_23728E448;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23728E450;
  v9[3] = &unk_284A4DD20;
  v8 = _Block_copy(v9);

  [v3 sendMiFareISO7816Command:a1 completionHandler:v8];
  _Block_release(v8);
}

uint64_t NFCPresentmentIntentAssertion.isValid.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t NFCPresentmentIntentAssertion.deinit()
{
  v1 = v0;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v2 = sub_2372D1054();
  sub_23728E730(v2, qword_27DE99650);
  v3 = sub_2372D1034();
  v4 = sub_2372D11B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23728C000, v3, v4, "NFCPresentmentIntentAssertion.deinit", v5, 2u);
    MEMORY[0x2383C9EB0](v5, -1, -1);
  }

  sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  sub_2372D1164();

  return v1;
}

uint64_t NFCPresentmentIntentAssertion.__deallocating_deinit()
{
  NFCPresentmentIntentAssertion.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23728EC6C()
{
  *(v1 + 16) = v0;
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23728ED08, 0, 0);
}

uint64_t sub_23728ED08()
{
  v0[4] = *(v0[2] + 16);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_23728EDA0;

  return sub_2372A0DA4();
}

uint64_t sub_23728EDA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23728EEEC, 0, 0);
  }
}

uint64_t sub_23728EEEC()
{
  v1 = v0[3];
  v2 = *(v0[2] + 24);
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  v3 = sub_2372D1134();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v4;
  sub_23728F9C8(0, 0, v1, &unk_2372D45C8, v6);

  sub_237295D28(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23728F054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_2372D1024();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_23728DDC0(&qword_27DE98BA0, qword_2372D45E0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23728F17C, 0, 0);
}

uint64_t sub_23728F17C()
{
  v12 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    sub_23728DDC0(&qword_27DE98BA8, &qword_2372D4B30);
    sub_2372D1174();
    swift_beginAccess();
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_23728F40C;
    v3 = v0[16];

    return MEMORY[0x2822003E8](v0 + 21, 0, 0, v3);
  }

  else
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v4 = sub_2372D1054();
    sub_23728E730(v4, qword_27DE99650);
    v5 = sub_2372D1034();
    v6 = sub_2372D11C4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_2372A16D0(0x29287472617473, 0xE700000000000000, &v11);
      *(v7 + 12) = 2048;
      *(v7 + 14) = 62;
      _os_log_impl(&dword_23728C000, v5, v6, "%s: %ld:Invalid state", v7, 0x16u);
      sub_237296020(v8);
      MEMORY[0x2383C9EB0](v8, -1, -1);
      MEMORY[0x2383C9EB0](v7, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23728F40C()
{

  return MEMORY[0x2822009F8](sub_23728F508, 0, 0);
}

uint64_t sub_23728F508()
{
  v26 = v0;
  v1 = *(v0 + 168);
  if (v1 == 2)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 24);

      os_unfair_lock_lock((v3 + 20));
      *(v3 + 16) = 0;
      os_unfair_lock_unlock((v3 + 20));
    }

    v23 = *(v0 + 8);

    return v23();
  }

  if (v1)
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v4 = sub_2372D1054();
    sub_23728E730(v4, qword_27DE99650);
    v5 = sub_2372D1034();
    v6 = sub_2372D11A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_2372A16D0(0x29287472617473, 0xE700000000000000, &v25);
      *(v7 + 12) = 2048;
      *(v7 + 14) = 79;
      _os_log_impl(&dword_23728C000, v5, v6, "%s: %ld: cooldown completed", v7, 0x16u);
      sub_237296020(v8);
      MEMORY[0x2383C9EB0](v8, -1, -1);
      MEMORY[0x2383C9EB0](v7, -1, -1);
    }

    v9 = NFSharedSignpostLog();
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v10 = sub_2372D1054();
    sub_23728E730(v10, qword_27DE99650);
    v11 = sub_2372D1034();
    v12 = sub_2372D11A4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2372A16D0(0x29287472617473, 0xE700000000000000, &v25);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 69;
      _os_log_impl(&dword_23728C000, v11, v12, "%s: %ld: assertion expired", v13, 0x16u);
      sub_237296020(v14);
      MEMORY[0x2383C9EB0](v14, -1, -1);
      MEMORY[0x2383C9EB0](v13, -1, -1);
    }

    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = *(v15 + 24);

      os_unfair_lock_lock((v16 + 20));
      *(v16 + 16) = 0;
      os_unfair_lock_unlock((v16 + 20));
    }

    v9 = NFSharedSignpostLog();
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v17 = v9;
  sub_2372D11E4();
  sub_2372D1014();
  sub_2372D1004();
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);

  (*(v19 + 8))(v18, v20);
LABEL_19:
  v21 = swift_task_alloc();
  *(v0 + 160) = v21;
  *v21 = v0;
  v21[1] = sub_23728F40C;
  v22 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 168, 0, 0, v22);
}

uint64_t sub_23728F9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_237295CB8(a3, v24 - v9);
  v11 = sub_2372D1134();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_237295D28(v10);
  }

  else
  {
    sub_2372D1124();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2372D1104();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2372D10B4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t static NFCPresentmentIntentAssertion.acquire()()
{
  v1[2] = v0;
  v2 = sub_2372D1024();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23728FD28, 0, 0);
}

uint64_t sub_23728FD28(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (v2)
  {
    v3 = v2;
    v5 = v1[4];
    v4 = v1[5];
    v6 = v1[3];
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    (*(v5 + 8))(v4, v6);
  }

  v7 = swift_allocObject();
  v1[6] = v7;
  sub_23728DDC0(&qword_27DE98A98, &qword_2372D3FB0);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *(v7 + 24) = v8;
  type metadata accessor for NFCPresentmentSuppressionController(0);
  swift_allocObject();
  *(v7 + 16) = sub_2372A042C();
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_23728FE9C;

  return sub_23728EC6C();
}

uint64_t sub_23728FE9C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23728FFDC, 0, 0);
  }

  else
  {

    v3 = v2[1];
    v4 = v2[6];

    return v3(v4);
  }
}

uint64_t sub_23728FFDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CardSession.Error.hashValue.getter()
{
  v1 = *v0;
  sub_2372D12E4();
  MEMORY[0x2383C9570](v1);
  return sub_2372D1304();
}

uint64_t CardSession.APDU.payload.getter()
{
  v1 = *(v0 + 72);
  sub_23728DFE4(v1, *(v0 + 80));
  return v1;
}

uint64_t CardSession.APDU.respond(response:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_237290138, 0, 0);
}

uint64_t sub_237290138()
{
  v1 = v0[3];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2 || *(v0[2] + 16) == *(v0[2] + 24))
    {
      return sub_2372D1244();
    }
  }

  else if (v2)
  {
    if (v0[2] == v0[2] >> 32)
    {
      return sub_2372D1244();
    }
  }

  else if ((v1 & 0xFF000000000000) == 0)
  {
    return sub_2372D1244();
  }

  v8 = (*(v0[4] + 32) + **(v0[4] + 32));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2372902D4;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v4, v5);
}

uint64_t sub_2372902D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *CardSession.APDU.deinit()
{
  v1 = v0[2];
  v2 = v0[6];

  v1(v2);

  sub_23728E084(v0[9], v0[10]);
  return v0;
}

uint64_t CardSession.APDU.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[6];

  v1(v2);

  sub_23728E084(v0[9], v0[10]);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t _s7CoreNFC11CardSessionC17EmulationUIStatusO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2372D12E4();
  MEMORY[0x2383C9570](v1);
  return sub_2372D1304();
}

uint64_t sub_2372905A0(uint64_t a1)
{
  v2 = *v1;
  sub_2372D12E4();
  MEMORY[0x2383C9570](v2);
  return sub_2372D1304();
}

uint64_t sub_237290604()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_237290628, v1, 0);
}

uint64_t static CardSession.isEligible.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2372906EC;

  return sub_23729F690();
}

uint64_t sub_2372906EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2372907E8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = [objc_opt_self() sharedHardwareManager];
  v5[4] = sub_2372946E0;
  v5[5] = v0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_237290924;
  v5[3] = &unk_284A4DD70;
  v2 = _Block_copy(v5);

  [v1 areFeaturesSupported:1 expiry:v2 completion:1.0];
  _Block_release(v2);

  swift_beginAccess();
  v3 = *(v0 + 16);

  return v3;
}

void sub_237290924(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

uint64_t CardSession.__allocating_init()()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237290A3C;

  return CardSession.init()();
}

uint64_t sub_237290A3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t CardSession.init()()
{
  v1[2] = v0;
  v2 = sub_2372D1024();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_23728DDC0(&unk_27DE98AA0, &qword_2372D3FE8);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_23728DDC0(&qword_27DE98AB0, &qword_2372D3FF8);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237290D4C, 0, 0);
}

uint64_t sub_237290D4C()
{
  v1 = *(v0 + 16);
  sub_23728DDC0(&qword_27DE98AB8, &qword_2372D4000);
  v2 = swift_allocObject();
  *(v2 + 20) = 0;
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  v3 = OBJC_IVAR____TtC7CoreNFC11CardSession__uiString;
  sub_23728DDC0(&qword_27DE98AC8, &qword_2372D4008);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  *(v1 + v3) = v4;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_237290E58;

  return sub_23729F690();
}

uint64_t sub_237290E58(char a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_237290F58, 0, 0);
}

uint64_t sub_237290F58()
{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v17 = *(v0 + 72);
    v18 = *(v0 + 88);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    v16 = *(v0 + 16);
    (*(v8 + 104))(v7, *MEMORY[0x277D85778], v9);
    sub_2372D1144();
    (*(v8 + 8))(v7, v9);
    (*(v3 + 16))(v1, v2, v4);
    type metadata accessor for CardSession.EventStream(0);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + OBJC_IVAR____TtCC7CoreNFC11CardSession11EventStream_stream, v1, v4);
    *(v16 + OBJC_IVAR____TtC7CoreNFC11CardSession_nfcEventStream) = v10;
    v11 = *(v6 + 16);
    v11(v16 + OBJC_IVAR____TtC7CoreNFC11CardSession_nfcEventStreamContinuation, v5, v17);
    v11(v18, v5, v17);
    type metadata accessor for NFCCardSession(0);
    swift_allocObject();
    *(v16 + 24) = sub_237297964(v18);
    v12 = swift_task_alloc();
    *(v0 + 144) = v12;
    *v12 = v0;
    v12[1] = sub_237291278;

    return sub_2372915D4();
  }

  else
  {
    sub_237294738();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();

    type metadata accessor for CardSession(0);
    swift_deallocPartialClassInstance();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_237291278()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2372914E8;
  }

  else
  {
    v2 = sub_23729138C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23729138C(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (v2)
  {
    v3 = v2;
    v5 = v1[4];
    v4 = v1[5];
    v6 = v1[3];
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    (*(v5 + 8))(v4, v6);
  }

  v7 = v1[16];
  v8 = v1[13];
  v9 = v1[14];
  (*(v1[10] + 8))(v1[12], v1[9]);
  (*(v9 + 8))(v7, v8);

  v10 = v1[1];
  v11 = v1[2];

  return v10(v11);
}

uint64_t sub_2372914E8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2372915D4()
{
  v1[4] = v0;
  v2 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_23728DDC0(&qword_27DE98AE8, qword_2372D4020);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237291708, 0, 0);
}

uint64_t sub_237291708()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_23729179C;

  return sub_23729BA00();
}

uint64_t sub_23729179C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2372918E8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2372918E8()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_19;
  }

  v3 = *(v0 + 104);
  if (v3 <= 5)
  {
    if (*(v0 + 104) <= 2u)
    {
      v4 = 0;
      if (v3 - 1 >= 2)
      {
        return sub_2372D1244();
      }

      goto LABEL_19;
    }

    v5 = 2;
    v6 = v3 == 4;
    v7 = v3 == 3;
LABEL_16:
    if (v7)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_19;
  }

  if (*(v0 + 104) > 8u)
  {
    v5 = 4;
    if (v3 == 10)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    v7 = v3 == 9;
    goto LABEL_16;
  }

  if (v3 == 6)
  {
    v4 = 4;
  }

  else
  {
    if (v3 != 7)
    {
      return sub_2372D1244();
    }

    v4 = 8;
  }

LABEL_19:
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  (*(v14 + 16))(v11, *(v0 + 32) + OBJC_IVAR____TtC7CoreNFC11CardSession_nfcEventStreamContinuation, v13);
  *(v0 + 24) = v4 | 0x4000000000000000;
  sub_2372D1154();
  (*(v14 + 8))(v11, v13);
  (*(v10 + 8))(v9, v12);
  sub_237294738();
  swift_allocError();
  *v15 = v4;
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_237291B7C()
{
  v1[10] = v0;
  v2 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_23728DDC0(&qword_27DE98AE8, qword_2372D4020);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_2372D1024();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237291D0C, 0, 0);
}

uint64_t sub_237291D0C(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (v2)
  {
    v3 = v2;
    v5 = v1[18];
    v4 = v1[19];
    v6 = v1[17];
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    (*(v5 + 8))(v4, v6);
  }

  v7 = v1[10];
  v8 = OBJC_IVAR____TtC7CoreNFC11CardSession__uiString;
  swift_beginAccess();
  v9 = *(v7 + v8);

  os_unfair_lock_lock((v9 + 32));
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v1[20] = v11;

  os_unfair_lock_unlock((v9 + 32));

  v12 = swift_task_alloc();
  v1[21] = v12;
  *v12 = v1;
  v12[1] = sub_237291E78;

  return sub_23729DBD8(v10, v11);
}

uint64_t sub_237291E78()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_237292058;
  }

  else
  {

    v2 = sub_237291F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237291F94()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237292058()
{
  v1 = *(v0 + 176);

  *(v0 + 64) = v1;
  v2 = v1;
  sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = 0xD00000000000001CLL;
  v4 = *(v0 + 184);
  if (v4 <= 5)
  {
    if (*(v0 + 184) > 2u)
    {
      if (v4 == 3)
      {
        LOBYTE(v5) = 2;
        goto LABEL_15;
      }

      if (v4 == 4)
      {
        v5 = 1;
LABEL_14:
        v7 = *(v0 + 120);
        v6 = *(v0 + 128);
        v9 = *(v0 + 104);
        v8 = *(v0 + 112);
        v10 = *(v0 + 88);
        v11 = *(v0 + 96);
        (*(v11 + 16))(v9, *(v0 + 80) + OBJC_IVAR____TtC7CoreNFC11CardSession_nfcEventStreamContinuation, v10, v3);
        *(v0 + 72) = v5 | 0x4000000000000000;
        sub_2372D1154();
        (*(v11 + 8))(v9, v10);
        (*(v7 + 8))(v6, v8);
        goto LABEL_15;
      }

LABEL_13:
      v5 = 0;
      goto LABEL_14;
    }

    if (*(v0 + 184))
    {
      goto LABEL_13;
    }

    return sub_2372D1244();
  }

  if (*(v0 + 184) > 8u)
  {
    if (v4 != 9)
    {
      if (v4 == 10)
      {
        LOBYTE(v5) = 5;
      }

      else
      {
        LOBYTE(v5) = 6;
      }

      goto LABEL_15;
    }

LABEL_21:
    LOBYTE(v5) = 4;
    goto LABEL_15;
  }

  if (v4 == 6)
  {
    goto LABEL_21;
  }

  if (v4 != 7)
  {
    return sub_2372D1244();
  }

  LOBYTE(v5) = 8;
LABEL_15:
  v12 = *(v0 + 176);
  sub_237294738();
  swift_allocError();
  *v13 = v5;
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_237292374(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = sub_2372D1024();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 88) = *a1;

  return MEMORY[0x2822009F8](sub_237292440, 0, 0);
}

uint64_t sub_237292440(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  v3 = *(v1 + 88);
  if (v2)
  {
    v4 = v2;
    v5 = *(v1 + 56);
    sub_2372D11E4();
    sub_2372D1014();
    v6 = (v5 + 8);
    v7 = *(v1 + 64);
    v8 = *(v1 + 48);
    if (v3)
    {
      sub_2372D1004();

      (*v6)(v7, v8);
LABEL_5:
      v9 = 0;
      goto LABEL_8;
    }

    sub_2372D1004();

    (*v6)(v7, v8);
  }

  else if (*(v1 + 88))
  {
    goto LABEL_5;
  }

  v9 = 1;
LABEL_8:
  v10 = swift_task_alloc();
  *(v1 + 72) = v10;
  *v10 = v1;
  v10[1] = sub_2372925B8;

  return sub_23729E7C8(v9);
}

uint64_t sub_2372925B8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_237292764;
  }

  else
  {
    v2 = sub_2372926CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2372926CC()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 20));
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_237292764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2372927CC()
{
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v2 = &v8 - v1;
  swift_beginAccess();
  v3 = *(v0 + 16);

  os_unfair_lock_lock((v3 + 20));
  if (*(v3 + 16) == 2)
  {
    os_unfair_lock_unlock((v3 + 20));
  }

  else
  {
    *(v3 + 16) = 2;
    os_unfair_lock_unlock((v3 + 20));

    v4 = *(v0 + 24);
    v5 = sub_2372D1134();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v4;
    *(v6 + 40) = 0;

    sub_237294220(0, 0, v2, &unk_2372D4040, v6);
  }
}

uint64_t CardSession.EventStream.makeAsyncIterator()()
{
  v0 = sub_23728DDC0(&qword_27DE98B00, &unk_2372D4048);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v6 - v2;
  sub_23728DDC0(&qword_27DE98AB0, &qword_2372D3FF8);
  sub_2372D1174();
  type metadata accessor for CardSession.EventStream.Iterator(0);
  v4 = swift_allocObject();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtCCC7CoreNFC11CardSession11EventStream8Iterator_iterator, v3, v0);
  return v4;
}

uint64_t sub_237292A54(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237292A74, 0, 0);
}

uint64_t sub_237292A74()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = sub_23728DDC0(&qword_27DE98B00, &unk_2372D4048);
  *v1 = v0;
  v1[1] = sub_237292B50;
  v3 = *(v0 + 40);

  return MEMORY[0x2822003F0](v3, v2);
}

uint64_t sub_237292B50()
{
  v3 = *v0;

  swift_endAccess();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237292C88(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  return MEMORY[0x2822009F8](sub_237292CB0, 0, 0);
}

uint64_t sub_237292CB0()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = sub_23728DDC0(&qword_27DE98B00, &unk_2372D4048);
  *v1 = v0;
  v1[1] = sub_237296088;
  v3 = *(v0 + 40);

  return MEMORY[0x2822003F0](v3, v2);
}

uint64_t sub_237292D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v9 = type metadata accessor for CardSession.EventStream.Iterator(0);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_237292E50;

  return MEMORY[0x282200308](a1, v9, a6);
}

uint64_t sub_237292E50()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_2372D1104();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_237292FC0, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_237292FC0()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_23729307C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = sub_23728DDC0(a2, a3);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  return v3;
}

uint64_t sub_2372930F8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = sub_23728DDC0(a2, a3);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 52);

  return MEMORY[0x2821FE8D8](v3, v6, v7);
}

uint64_t sub_237293194@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23728DDC0(&qword_27DE98B00, &unk_2372D4048);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8 - v4;
  sub_23728DDC0(&qword_27DE98AB0, &qword_2372D3FF8);
  sub_2372D1174();

  type metadata accessor for CardSession.EventStream.Iterator(0);
  v6 = swift_allocObject();
  result = (*(v3 + 32))(v6 + OBJC_IVAR____TtCCC7CoreNFC11CardSession11EventStream8Iterator_iterator, v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_2372932BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7CoreNFC11CardSession__uiString;
  swift_beginAccess();
  v5 = *(v3 + v4);

  os_unfair_lock_lock((v5 + 32));
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);

  os_unfair_lock_unlock((v5 + 32));

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_237293340()
{
  v1 = OBJC_IVAR____TtC7CoreNFC11CardSession__uiString;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 32));

  return v3;
}

uint64_t sub_2372933C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v7 = &v16[-v6];
  v8 = OBJC_IVAR____TtC7CoreNFC11CardSession__uiString;
  swift_beginAccess();
  v18[0] = a1;
  v18[1] = a2;
  v9 = *(v3 + v8);
  v17 = v18;

  os_unfair_lock_lock((v9 + 32));
  sub_237294928((v9 + 16));
  os_unfair_lock_unlock((v9 + 32));

  swift_endAccess();
  swift_beginAccess();
  v10 = *(v3 + 16);

  os_unfair_lock_lock((v10 + 20));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 20));

  if (v11 != 1)
  {
  }

  v12 = *(v3 + 24);
  v13 = sub_2372D1134();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;

  sub_237293BD0(0, 0, v7, &unk_2372D4060, v14);
}

uint64_t sub_2372935A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  return MEMORY[0x2822009F8](sub_2372935C8, a4, 0);
}

uint64_t sub_2372935C8()
{
  v1 = *(v0[20] + 112);
  v0[23] = v1;
  if (v1)
  {
    sub_237295D90(&qword_27DE98B90, type metadata accessor for NFCCardSession, &unk_2372D491C);
    swift_unknownObjectRetain();

    swift_getObjectType();
    v3 = sub_2372D1104();
    v0[24] = v3;
    v0[25] = v2;

    return MEMORY[0x2822009F8](sub_2372936DC, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2372936DC()
{
  v1 = v0 + 2;
  v2 = v0[23];
  v0[2] = v0;
  v0[3] = sub_237293914;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v0[14] = sub_237295DE8;
  v0[15] = v4;
  v5 = MEMORY[0x277D85DD0];
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_237296510;
  v0[13] = &unk_284A4E0E0;
  v6 = _Block_copy(v0 + 10);

  v7 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_23728DDC0(&unk_27DE98EC0, &qword_2372D45A0);
  swift_dynamicCast();
  v8 = v0[10];
  v9 = sub_2372D1084();
  v0[14] = nullsub_1;
  v0[15] = 0;
  v0[10] = v5;
  v0[11] = 1107296256;
  v0[12] = sub_23729FDD4;
  v0[13] = &unk_284A4E108;
  v10 = _Block_copy(v0 + 10);
  [v8 updateUIString:v9 completion:v10];
  _Block_release(v10);

  swift_continuation_throwingResume();
  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v1);
}

uint64_t sub_237293914()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_237293B00;
  }

  else
  {
    v3 = *(v1 + 192);
    v4 = *(v1 + 200);
    v5 = sub_237293A30;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_237293A30()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_237293A9C, v1, 0);
}

uint64_t sub_237293A9C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237293B00()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_237293B6C, v1, 0);
}

uint64_t sub_237293B6C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237293BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v9 = v21 - v8;
  sub_237295CB8(a3, v21 - v8);
  v10 = sub_2372D1134();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_237295D28(v9);
  }

  else
  {
    sub_2372D1124();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_2372D1104();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_2372D10B4() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_237295D28(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_237295D28(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void (*sub_237293E3C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7CoreNFC11CardSession__uiString;
  swift_beginAccess();
  v6 = *(v1 + v5);

  os_unfair_lock_lock((v6 + 32));
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);

  os_unfair_lock_unlock((v6 + 32));

  *(v4 + 24) = v8;
  *(v4 + 32) = v7;
  return sub_237293F04;
}

void sub_237293F04(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    sub_2372933C0(v3, v4);
  }

  else
  {
    sub_2372933C0(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t CardSession.deinit()
{

  v1 = OBJC_IVAR____TtC7CoreNFC11CardSession_nfcEventStreamContinuation;
  v2 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CardSession.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7CoreNFC11CardSession_nfcEventStreamContinuation;
  v2 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t CardSession.APDU.debugDescription.getter()
{
  sub_2372D1214();

  if (*(v0 + 56))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 56))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2383C9340](v1, v2);

  MEMORY[0x2383C9340](0x616F6C796150202CLL, 0xEA00000000003D64);
  v3 = sub_2372D0FA4();
  MEMORY[0x2383C9340](v3);

  MEMORY[0x2383C9340](125, 0xE100000000000000);
  return 0x646E6F707365527BLL;
}

uint64_t sub_237294220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_237295CB8(a3, v24 - v9);
  v11 = sub_2372D1134();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_237295D28(v10);
  }

  else
  {
    sub_2372D1124();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2372D1104();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2372D10B4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_237295D28(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_237295D28(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2372944E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2372945D8;

  return v6(a1);
}

uint64_t sub_2372945D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2372946E0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_237294720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237294738()
{
  result = qword_27DE98AD0;
  if (!qword_27DE98AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98AD0);
  }

  return result;
}

uint64_t sub_2372947CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23729480C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_237296090;

  return sub_23729C36C(a1, v4, v5, v6, v7);
}

uint64_t sub_2372948F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237294928(void *a1)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];

  *a1 = v5;
  a1[1] = v4;
}

uint64_t sub_237294974()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2372949BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_237296090;

  return sub_2372935A4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_237294A88()
{
  result = qword_27DE98B10;
  if (!qword_27DE98B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98B10);
  }

  return result;
}

unint64_t sub_237294AE0()
{
  result = qword_27DE98B18;
  if (!qword_27DE98B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98B18);
  }

  return result;
}

unint64_t sub_237294B38()
{
  result = qword_27DE98B20;
  if (!qword_27DE98B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98B20);
  }

  return result;
}

uint64_t sub_237294BE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2372933C0(v1, v2);
}

void sub_237294C84(uint64_t a1)
{
  sub_237295AB4(319, &unk_27DE98B40, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CardSession.isEmulationInProgress.getter()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2372906EC;

  return v4();
}

uint64_t dispatch thunk of CardSession.__allocating_init()()
{
  v4 = (*(v0 + 160) + **(v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_237294F80;

  return v4();
}

uint64_t sub_237294F80(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CardSession.startEmulation()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_237296090;

  return v4();
}

uint64_t dispatch thunk of CardSession.stopEmulation(status:)(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2372952AC;

  return v6(a1);
}

uint64_t sub_2372952AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t getEnumTagSinglePayload for CardSession.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CardSession.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2372955C4(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_2372955E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23729563C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_237295698(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NFCPresentmentSuppressionController.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NFCPresentmentSuppressionController.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2372958E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, ValueMetadata *))
{
  sub_237295AB4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CardSession.EventStream.Iterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2372952AC;

  return v6(a1);
}

void sub_237295AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CardSession.Event);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CardSession.SessionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CardSession.SessionState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237295C64()
{
  result = qword_27DE98B88;
  if (!qword_27DE98B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98B88);
  }

  return result;
}

uint64_t sub_237295CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237295D28(uint64_t a1)
{
  v2 = sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237295D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237295DF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237295E28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237296090;

  return sub_2372944E0(a1, v4);
}

uint64_t sub_237295EE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237295F18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237295F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_237296090;

  return sub_23728F054(a1, v4, v5, v7, v6);
}

uint64_t sub_237296020(void *a1)
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

void sub_2372960D8(void *a1)
{
  v2 = sub_2372D0F94();
  v3 = [v2 domain];
  v4 = sub_2372D1094();
  v6 = v5;

  v7 = sub_2372D1074();
  if (!v8)
  {

    return;
  }

  if (v4 == v7 && v8 == v6)
  {
  }

  else
  {
    v10 = sub_2372D1284();

    if ((v10 & 1) == 0)
    {

      return;
    }
  }

  v11 = [v2 code];

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v11))
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_237296200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237296270(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v5 = sub_2372D1054();
  sub_23728E730(v5, qword_27DE99650);
  v6 = a1;
  v7 = sub_2372D1034();
  v8 = sub_2372D11C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_2372A16D0(0xD00000000000001FLL, 0x80000002372D6DA0, &v17);
    *(v9 + 12) = 2048;
    *(v9 + 14) = a3;
    *(v9 + 22) = 2112;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_23728C000, v7, v8, "%s:%ld: xpcError=%@", v9, 0x20u);
    sub_237296478(v10);
    MEMORY[0x2383C9EB0](v10, -1, -1);
    sub_237296020(v11);
    MEMORY[0x2383C9EB0](v11, -1, -1);
    MEMORY[0x2383C9EB0](v9, -1, -1);
  }

  sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
  swift_allocError();
  *v14 = a1;
  v15 = a1;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_237296478(uint64_t a1)
{
  v2 = sub_23728DDC0(&unk_27DE98C90, &qword_2372D4658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237296510(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_237296578(char a1)
{
  v2 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v13[-1] - v4;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v6 = sub_2372D1054();
  sub_23728E730(v6, qword_27DE99650);
  v7 = sub_2372D1034();
  v8 = sub_2372D11B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_2372A16D0(0xD000000000000010, 0x80000002372D7270, v13);
    *(v9 + 12) = 2048;
    *(v9 + 14) = 25;
    *(v9 + 22) = 1024;
    *(v9 + 24) = a1 & 1;
    _os_log_impl(&dword_23728C000, v7, v8, "%s:%ld: fieldChange=%{BOOL}d", v9, 0x1Cu);
    sub_237296020(v10);
    MEMORY[0x2383C9EB0](v10, -1, -1);
    MEMORY[0x2383C9EB0](v9, -1, -1);
  }

  v13[0] = a1 & 1;
  v13[1] = 0;
  v14 = 0;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_237296970()
{
  v0 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v11[-1] - v2;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v4 = sub_2372D1054();
  sub_23728E730(v4, qword_27DE99650);
  v5 = sub_2372D1034();
  v6 = sub_2372D11B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2372A16D0(0xD000000000000014, 0x80000002372D7250, v11);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 34;
    _os_log_impl(&dword_23728C000, v5, v6, "%s:%ld:", v7, 0x16u);
    sub_237296020(v8);
    MEMORY[0x2383C9EB0](v8, -1, -1);
    MEMORY[0x2383C9EB0](v7, -1, -1);
  }

  v11[0] = 0;
  v11[1] = 0;
  v12 = 1;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237296BE8()
{
  v0 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v10 - v2;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v4 = sub_2372D1054();
  sub_23728E730(v4, qword_27DE99650);
  v5 = sub_2372D1034();
  v6 = sub_2372D11B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2372A16D0(0xD000000000000019, 0x80000002372D7230, &v10);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 39;
    _os_log_impl(&dword_23728C000, v5, v6, "%s:%ld:", v7, 0x16u);
    sub_237296020(v8);
    MEMORY[0x2383C9EB0](v8, -1, -1);
    MEMORY[0x2383C9EB0](v7, -1, -1);
  }

  v10 = xmmword_2372D4670;
  v11 = 1;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237296E68(char a1)
{
  v2 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v13[-1] - v4;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v6 = sub_2372D1054();
  sub_23728E730(v6, qword_27DE99650);
  v7 = sub_2372D1034();
  v8 = sub_2372D11B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_2372A16D0(0xD000000000000012, 0x80000002372D7210, v13);
    *(v9 + 12) = 2048;
    *(v9 + 14) = 44;
    *(v9 + 22) = 1024;
    *(v9 + 24) = a1 & 1;
    _os_log_impl(&dword_23728C000, v7, v8, "%s:%ld: fieldPresent=%{BOOL}d", v9, 0x1Cu);
    sub_237296020(v10);
    MEMORY[0x2383C9EB0](v10, -1, -1);
    MEMORY[0x2383C9EB0](v9, -1, -1);
  }

  v13[0] = a1 & 1;
  v13[1] = 0;
  v14 = 0;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_237297108(void *a1)
{
  v3 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v16 - v5;
  if (a1)
  {
    v7 = a1;
    sub_2372960D8(a1);
    v10 = v8 != 32 && v8 != 8;
    v11 = OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation;
    if (*(v1 + OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation))
    {
      sub_23729F8EC();
      v12 = swift_allocError();
      *v13 = v10;
      sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
      swift_allocError();
      *v14 = v12;
      swift_continuation_throwingResumeWithError();
    }

    *(v1 + v11) = 0;
    *&v16 = v10;
    *(&v16 + 1) = 0x2000000000000000;
    v17 = 0;
    sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
    sub_2372D1154();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v16 = xmmword_2372D4680;
    v17 = 0;
    sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
    sub_2372D1154();
    (*(v4 + 8))(v6, v3);
    result = *(v1 + OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation);
    if (result)
    {
      return swift_continuation_throwingResume();
    }
  }

  return result;
}

uint64_t sub_2372974B8(void *a1)
{
  v2 = sub_23728DDC0(&qword_27DE98EF8, &qword_2372D49B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = v10 - v4;
  v6 = a1;
  sub_2372960D8(a1);
  v8 = 2;
  if (v7 == 5)
  {
    v8 = 3;
  }

  if (v7 == 48)
  {
    v8 = 4;
  }

  v10[1] = v8;
  v10[2] = 0x3000000000000000;
  v11 = 0;
  sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  sub_2372D1154();
  (*(v3 + 8))(v5, v2);
  return sub_2372D1164();
}

id sub_2372977D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NFCCardSessionDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2372978A8(uint64_t a1)
{
  sub_23729F1CC(319, &qword_27DE98E48, &type metadata for NFCCardSession.Event, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_237297964(uint64_t a1)
{
  v30 = a1;
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v29 = &v25 - v2;
  v27 = sub_23728DDC0(&qword_27DE98F00, &qword_2372D49C0);
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v25 - v4;
  v6 = sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v25 - v8;
  v26 = sub_23728DDC0(&qword_27DE98EE8, &qword_2372D49A0);
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v25 - v11;
  swift_defaultActor_initialize();
  *(v1 + 14) = 0;
  *(v1 + 15) = 0;
  *(v1 + 16) = 0;
  *&v1[OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer] = 0;
  *&v1[OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationTimeLimit] = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU] = 0;
  v13 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_eventStreamContinuation;
  v28 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  v14 = *(v28 - 8);
  (*(v14 + 16))(&v1[v13], v30, v28);
  v15 = v27;
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v27);
  sub_2372D1144();
  (*(v3 + 8))(v5, v15);
  (*(v10 + 32))(&v1[OBJC_IVAR____TtC7CoreNFC14NFCCardSession_delegateEventStream], v12, v26);
  v16 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_delegateEventStreamContinuation;
  (*(v7 + 32))(&v1[OBJC_IVAR____TtC7CoreNFC14NFCCardSession_delegateEventStreamContinuation], v9, v6);
  v17 = *(v7 + 16);
  v17(v9, &v1[v16], v6);
  v18 = type metadata accessor for NFCCardSessionDelegate(0);
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation] = 0;
  v17(&v19[OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_eventStreamContinuation], v9, v6);
  v31.receiver = v19;
  v31.super_class = v18;
  v20 = objc_msgSendSuper2(&v31, sel_init);
  (*(v7 + 8))(v9, v6);
  *(v1 + 17) = v20;
  v21 = sub_2372D1134();
  v22 = v29;
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v1;

  sub_237293BD0(0, 0, v22, &unk_2372D49D0, v23);

  (*(v14 + 8))(v30, v28);
  return v1;
}

uint64_t sub_237297E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_2372D1024();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237297ED4, v3, 0);
}

uint64_t sub_237297ED4(uint64_t a1)
{
  v26 = v1;
  v2 = NFSharedSignpostLog();
  if (v2)
  {
    v3 = v2;
    v5 = v1[32];
    v4 = v1[33];
    v6 = v1[31];
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    (*(v5 + 8))(v4, v6);
  }

  v7 = v1[30];
  v8 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU;
  v1[34] = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU;
  v9 = *(v7 + v8);
  if (!v9 || (v10 = v1[29], *(v10 + 48) == *(v9 + 48)) && *(v10 + 64) == *(v9 + 64) && *(v9 + 56) != 1)
  {
    v18 = *(v7 + 112);
    v1[35] = v18;
    if (v18)
    {
      v20 = v1[27];
      v19 = v1[28];
      sub_23729F620();
      swift_unknownObjectRetain();
      sub_23728DFE4(v20, v19);
      swift_getObjectType();
      v22 = sub_2372D1104();
      v1[36] = v22;
      v1[37] = v21;

      return MEMORY[0x2822009F8](sub_237298230, v22, v21);
    }

    else
    {
      sub_237294738();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();

      v24 = v1[1];

      return v24();
    }
  }

  else
  {
    v11 = qword_27DE98680;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_2372D1054();
    sub_23728E730(v12, qword_27DE99650);
    v13 = sub_2372D1034();
    v14 = sub_2372D11B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2372A16D0(0xD00000000000001FLL, 0x80000002372D71D0, &v25);
      *(v15 + 12) = 2048;
      *(v15 + 14) = 221;
      _os_log_impl(&dword_23728C000, v13, v14, "%s:%ld: Unexpected APDU)", v15, 0x16u);
      sub_237296020(v16);
      MEMORY[0x2383C9EB0](v16, -1, -1);
      MEMORY[0x2383C9EB0](v15, -1, -1);
    }

    return sub_2372D1244();
  }
}

uint64_t sub_237298230()
{
  v1 = v0[35];
  v3 = v0[27];
  v2 = v0[28];
  v0[2] = v0;
  v0[3] = sub_2372984A4;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[14] = sub_23729FE2C;
  v0[15] = v5;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_237296510;
  v0[13] = &unk_284A4E5C0;
  v6 = _Block_copy(v0 + 10);

  v7 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_23728DDC0(&unk_27DE98EC0, &qword_2372D45A0);
  swift_dynamicCast();
  v8 = v0[26];
  v9 = sub_2372D0FB4();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = v2;
  v0[20] = sub_23729FB30;
  v0[21] = v10;
  v0[16] = MEMORY[0x277D85DD0];
  v0[17] = 1107296256;
  v0[18] = sub_2372A1D60;
  v0[19] = &unk_284A4E610;
  v11 = _Block_copy(v0 + 16);
  sub_23728DFE4(v3, v2);

  [v8 sendAPDU:v9 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2372984A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = *(v1 + 288);
    v4 = *(v1 + 296);
    v5 = sub_2372985C0;
  }

  else
  {
    v3 = *(v1 + 288);
    v4 = *(v1 + 296);
    v5 = sub_237298698;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2372985C0()
{
  v1 = v0[30];
  sub_23728E084(v0[27], v0[28]);

  return MEMORY[0x2822009F8](sub_23729862C, v1, 0);
}

uint64_t sub_23729862C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237298698()
{
  v1 = v0[30];
  sub_23728E084(v0[27], v0[28]);

  return MEMORY[0x2822009F8](sub_237298704, v1, 0);
}

uint64_t sub_237298704()
{
  v1 = v0[34];
  v3 = v0[29];
  v2 = v0[30];
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v7 = *(v3 + 40);
  v6 = *(v3 + 48);
  v8 = *(v3 + 16);
  type metadata accessor for CardSession.APDU();
  v9 = swift_allocObject();
  v10 = *(v3 + 24);
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 40) = v7;
  *(v9 + 48) = v6;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;

  sub_23728DFE4(v4, v5);
  v11 = sub_2372D0FD4();
  swift_unknownObjectRelease();
  *(v9 + 64) = v11;
  *(v9 + 56) = 1;
  *(v2 + v1) = v9;

  v12 = v0[1];

  return v12();
}

uint64_t sub_237298824(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v5 = sub_2372D1054();
    sub_23728E730(v5, qword_27DE99650);
    v6 = a1;
    v7 = sub_2372D1034();
    v8 = sub_2372D11B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_2372A16D0(0xD00000000000001FLL, 0x80000002372D71D0, &v29);
      *(v9 + 12) = 2048;
      *(v9 + 14) = 235;
      *(v9 + 22) = 2080;
      v11 = a1;
      sub_23728DDC0(&qword_27DE98EE0, &qword_2372D4998);
      v12 = sub_2372D10A4();
      v14 = sub_2372A16D0(v12, v13, &v29);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_23728C000, v7, v8, "%s:%ld: error=%s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383C9EB0](v10, -1, -1);
      MEMORY[0x2383C9EB0](v9, -1, -1);
    }

    sub_237294738();
    v15 = swift_allocError();
    *v16 = 3;
    sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
    swift_allocError();
    *v17 = v15;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v21 = sub_2372D1054();
    sub_23728E730(v21, qword_27DE99650);
    sub_23728DFE4(a3, a4);
    v22 = sub_2372D1034();
    v23 = sub_2372D11B4();
    sub_23728E084(a3, a4);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_2372A16D0(0xD00000000000001FLL, 0x80000002372D71D0, &v29);
      *(v24 + 12) = 2048;
      *(v24 + 14) = 240;
      *(v24 + 22) = 2080;
      v26 = sub_2372D0FA4();
      v28 = sub_2372A16D0(v26, v27, &v29);

      *(v24 + 24) = v28;
      _os_log_impl(&dword_23728C000, v22, v23, "%s:%ld: sent=%s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383C9EB0](v25, -1, -1);
      MEMORY[0x2383C9EB0](v24, -1, -1);
    }

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_237298C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_237298C20, 0, 0);
}

uint64_t sub_237298C20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_237298CDC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_237298CDC()
{
  v1 = *(v0 + 56);
  if (*(v1 + 112))
  {
    v2 = sub_237298D1C;
  }

  else
  {
    v2 = sub_23729914C;
    v1 = 0;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_237298D1C()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU);

  return MEMORY[0x2822009F8](sub_237298D98, 0, 0);
}

uint64_t sub_237298D98()
{
  v11 = v0;
  v1 = v0[8];
  if (!v1)
  {
LABEL_5:

    v2 = v0[1];

    return v2();
  }

  if (*(v1 + 48) != v0[6] || (*(v1 + 56) & 1) != 0)
  {

    goto LABEL_5;
  }

  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v4 = sub_2372D1054();
  sub_23728E730(v4, qword_27DE99650);
  v5 = sub_2372D1034();
  v6 = sub_2372D11B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2372A16D0(0xD000000000000021, 0x80000002372D7130, &v10);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 266;
    _os_log_impl(&dword_23728C000, v5, v6, "%s:%ld: Stopping emulation", v7, 0x16u);
    sub_237296020(v8);
    MEMORY[0x2383C9EB0](v8, -1, -1);
    MEMORY[0x2383C9EB0](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_237298FCC;

  return sub_23729E7C8(0);
}

uint64_t sub_237298FCC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2372992E0;
  }

  else
  {
    v2 = sub_2372990E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2372990E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23729914C()
{
  v9 = v0;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v1 = sub_2372D1054();
  sub_23728E730(v1, qword_27DE99650);
  v2 = sub_2372D1034();
  v3 = sub_2372D11B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2372A16D0(0xD000000000000021, 0x80000002372D7130, &v8);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 257;
    _os_log_impl(&dword_23728C000, v2, v3, "%s:%ld: Emulation has not started", v4, 0x16u);
    sub_237296020(v5);
    MEMORY[0x2383C9EB0](v5, -1, -1);
    MEMORY[0x2383C9EB0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2372992E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23729934C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_23728DDC0(&qword_27DE98AE8, qword_2372D4020);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_2372D1024();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237299478, v2, 0);
}

uint64_t sub_237299478(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (v2)
  {
    v3 = v2;
    v5 = v1[12];
    v4 = v1[13];
    v6 = v1[11];
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    (*(v5 + 8))(v4, v6);
  }

  v7 = v1[7];
  v8 = *(v7 + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU);
  if (v8 && (*(v8 + 56) & 1) == 0)
  {

    sub_2372D1214();

    v1[4] = 277;
    v18 = sub_2372D1264();
    MEMORY[0x2383C9340](v18);

    MEMORY[0x2383C9340](0xD000000000000026, 0x80000002372D70E0);
    return sub_2372D1244();
  }

  else
  {
    v20 = v1[10];
    v21 = v1[9];
    v22 = v1[8];
    v10 = v1[5];
    v9 = v1[6];
    v19 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU;
    v11 = swift_allocObject();
    swift_weakInit();
    v1[2] = 0;

    MEMORY[0x2383C9EC0](v1 + 2, 8);
    v12 = v1[2];
    type metadata accessor for CardSession.APDU();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_23729FA28;
    *(v13 + 24) = v7;
    *(v13 + 32) = &unk_2372D4980;
    *(v13 + 40) = v11;
    *(v13 + 48) = v12;
    *(v13 + 72) = v10;
    *(v13 + 80) = v9;
    sub_23728DFE4(v10, v9);
    *(v13 + 64) = sub_2372D0FD4();
    *(v13 + 56) = 0;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_23729FA28;
    *(v14 + 24) = v7;
    *(v14 + 32) = &unk_2372D4980;
    *(v14 + 40) = v11;
    *(v14 + 48) = v12;
    *(v14 + 72) = v10;
    *(v14 + 80) = v9;
    sub_23728DFE4(v10, v9);
    sub_23728DFE4(v10, v9);

    v15 = sub_2372D0FD4();
    sub_23728E084(v10, v9);

    *(v14 + 64) = v15;
    *(v14 + 56) = 0;
    *(v7 + v19) = v14;

    v1[3] = v13;

    sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
    sub_2372D1154();

    (*(v21 + 8))(v20, v22);

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_237299840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_237299864, 0, 0);
}

uint64_t sub_237299864()
{
  v14 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_237299A90;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_237297E10(v5, v3, v4);
  }

  else
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v7 = sub_2372D1054();
    sub_23728E730(v7, qword_27DE99650);
    v8 = sub_2372D1034();
    v9 = sub_2372D11B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2372A16D0(0xD000000000000015, 0x80000002372D7160, &v13);
      *(v10 + 12) = 2048;
      *(v10 + 14) = 282;
      _os_log_impl(&dword_23728C000, v8, v9, "%s:%ld:", v10, 0x16u);
      sub_237296020(v11);
      MEMORY[0x2383C9EB0](v11, -1, -1);
      MEMORY[0x2383C9EB0](v10, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_237299A90()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_237299C08;
  }

  else
  {
    v2 = sub_237299BA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237299BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237299C08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237299C6C(uint64_t a1, uint64_t a2)
{
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v4 = &v9 - v3;
  v5 = sub_2372D1134();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = a1;
  sub_237293BD0(0, 0, v4, &unk_2372D4990, v7);
}

uint64_t sub_237299D94()
{
  v1[3] = v0;
  v2 = sub_23728DDC0(&qword_27DE98AE8, qword_2372D4020);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237299E60, v0, 0);
}

uint64_t sub_237299E60()
{
  v13 = v0;
  v1 = *(v0[3] + 112);
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v2 = sub_2372D1054();
  sub_23728E730(v2, qword_27DE99650);
  v3 = sub_2372D1034();
  v4 = sub_2372D11B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_2372A16D0(0xD000000000000018, 0x80000002372D70A0, &v12);
    *(v5 + 12) = 2048;
    *(v5 + 14) = 299;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v1 != 0;
    _os_log_impl(&dword_23728C000, v3, v4, "%s:%ld: disconnected, emuStarted=%{BOOL}d", v5, 0x1Cu);
    sub_237296020(v6);
    MEMORY[0x2383C9EB0](v6, -1, -1);
    MEMORY[0x2383C9EB0](v5, -1, -1);
  }

  if (v1)
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    *(v0[3] + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_lastReceivedAPDU) = 0;

    v0[2] = 0x8000000000000002;
    sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
    sub_2372D1154();
    (*(v8 + 8))(v7, v9);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23729A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_2372D1024();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_23728DDC0(&qword_27DE98AE8, qword_2372D4020);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_23728DDC0(&qword_27DE98F08, &qword_2372D49D8);
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23729A280, 0, 0);
}

uint64_t sub_23729A280(uint64_t a1)
{
  *(v1 + 176) = NFSharedSignpostLog();
  sub_23728DDC0(&qword_27DE98EE8, &qword_2372D49A0);
  sub_2372D1174();
  *(v1 + 184) = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_eventStreamContinuation;
  *(v1 + 35) = 0;
  *(v1 + 39) = 0;
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_23729A384;
  v3 = *(v1 + 152);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v3);
}

uint64_t sub_23729A384()
{

  return MEMORY[0x2822009F8](sub_23729A480, 0, 0);
}

uint64_t sub_23729A480()
{
  v84 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  v3 = *(v0 + 32);
  *(v0 + 248) = v3;
  if ((~v2 & 0x3000000000000000) == 0 && v3 == 255)
  {
    v4 = *(v0 + 176);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = (v2 >> 60) & 3 | (4 * (v3 & 1));
  if (v7 <= 1)
  {
    if (v7)
    {
      v50 = *(v0 + 176);
      if (v50)
      {
        v52 = *(v0 + 80);
        v51 = *(v0 + 88);
        v53 = *(v0 + 72);
        sub_23729FD48(v1, v2, v3);
        v54 = v50;
        sub_2372D11E4();
        sub_2372D1014();
        sub_2372D1004();

        (*(v52 + 8))(v51, v53);
      }

      else
      {
        sub_23729FD1C(v1, v2, v3 & 1, sub_23728DFE4);
      }

      if (qword_27DE98680 != -1)
      {
        swift_once();
      }

      v65 = sub_2372D1054();
      sub_23728E730(v65, qword_27DE99650);
      sub_23729FD1C(v1, v2, v3 & 1, sub_23728DFE4);
      v66 = sub_2372D1034();
      v67 = sub_2372D11B4();
      sub_23729FCCC(v1, v2, v3);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v83 = v69;
        *v68 = 136315650;
        *(v68 + 4) = sub_2372A16D0(0xD00000000000001BLL, 0x80000002372D7360, &v83);
        *(v68 + 12) = 2048;
        *(v68 + 14) = 333;
        *(v68 + 22) = 2080;
        sub_23729FD1C(v1, v2, v3 & 1, sub_23728DFE4);
        v70 = sub_2372D0FA4();
        v72 = v71;
        sub_23729FCCC(v1, v2, v3);
        v73 = sub_2372A16D0(v70, v72, &v83);

        *(v68 + 24) = v73;
        _os_log_impl(&dword_23728C000, v66, v67, "%s:%ld: capdu=%s", v68, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2383C9EB0](v69, -1, -1);
        MEMORY[0x2383C9EB0](v68, -1, -1);
      }

      v74 = swift_task_alloc();
      *(v0 + 224) = v74;
      *v74 = v0;
      v74[1] = sub_23729B558;

      return sub_23729934C(v1, v2 & 0xCFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v22 = *(v0 + 64);

      return MEMORY[0x2822009F8](sub_23729B244, v22, 0);
    }
  }

  if (v7 == 2)
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v23 = sub_2372D1054();
    sub_23728E730(v23, qword_27DE99650);
    v24 = sub_2372D1034();
    v25 = sub_2372D11B4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v83 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_2372A16D0(0xD00000000000001BLL, 0x80000002372D7360, &v83);
      *(v26 + 12) = 2048;
      *(v26 + 14) = 363;
      *(v26 + 22) = 2080;
      *(v0 + 34) = v1;
      sub_23728DDC0(&unk_27DE98F10, &qword_2372D49E0);
      v28 = sub_2372D10A4();
      v30 = sub_2372A16D0(v28, v29, &v83);

      *(v26 + 24) = v30;
      _os_log_impl(&dword_23728C000, v24, v25, "%s:%ld: started, error=%s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383C9EB0](v27, -1, -1);
      MEMORY[0x2383C9EB0](v26, -1, -1);
    }

    v31 = *(v0 + 35);
    if (v1 != 12 || *(v0 + 35))
    {
      v35 = *(v0 + 39);
      v36 = *(v0 + 38);
      v37 = *(v0 + 37);
      v38 = *(v0 + 36);
    }

    else
    {
      v33 = *(v0 + 128);
      v32 = *(v0 + 136);
      v34 = *(v0 + 120);
      *(v0 + 40) = 0x8000000000000000;
      sub_2372D1154();
      (*(v33 + 8))(v32, v34);
      v35 = *(v0 + 39);
      v36 = *(v0 + 38);
      v37 = *(v0 + 37);
      v31 = 1;
      v38 = *(v0 + 36);
    }

    goto LABEL_64;
  }

  if (v7 == 3)
  {
    v8 = *(v0 + 176);
    if (v8)
    {
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = *(v0 + 72);
      v12 = v8;
      sub_2372D11E4();
      sub_2372D1014();
      sub_2372D1004();

      (*(v10 + 8))(v9, v11);
    }

    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v13 = sub_2372D1054();
    sub_23728E730(v13, qword_27DE99650);
    v14 = sub_2372D1034();
    v15 = sub_2372D11B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v83 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_2372A16D0(0xD00000000000001BLL, 0x80000002372D7360, &v83);
      *(v16 + 12) = 2048;
      *(v16 + 14) = 375;
      *(v16 + 22) = 2080;
      *(v0 + 33) = v1;
      v18 = sub_2372D10A4();
      v20 = sub_2372A16D0(v18, v19, &v83);

      *(v16 + 24) = v20;
      _os_log_impl(&dword_23728C000, v14, v15, "%s:%ld: invalidated, error=%s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383C9EB0](v17, -1, -1);
      MEMORY[0x2383C9EB0](v16, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 240) = v21;
    *v21 = v0;
    v21[1] = sub_23729B898;

    return sub_23729C418(v1);
  }

  v39 = *(v0 + 176);
  if (!(v1 | v2))
  {
    if (v39)
    {
      v56 = *(v0 + 80);
      v55 = *(v0 + 88);
      v57 = *(v0 + 72);
      v58 = v39;
      sub_2372D11E4();
      sub_2372D1014();
      sub_2372D1004();

      (*(v56 + 8))(v55, v57);
    }

    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v59 = sub_2372D1054();
    sub_23728E730(v59, qword_27DE99650);
    v60 = sub_2372D1034();
    v61 = sub_2372D11B4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v0 + 38);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83 = v64;
      *v63 = 136315650;
      *(v63 + 4) = sub_2372A16D0(0xD00000000000001BLL, 0x80000002372D7360, &v83);
      *(v63 + 12) = 2048;
      *(v63 + 14) = 341;
      *(v63 + 22) = 1024;
      *(v63 + 24) = v62;
      _os_log_impl(&dword_23728C000, v60, v61, "%s:%ld: connected, currentFieldState=%{BOOL}d", v63, 0x1Cu);
      sub_237296020(v64);
      MEMORY[0x2383C9EB0](v64, -1, -1);
      MEMORY[0x2383C9EB0](v63, -1, -1);

      if (v62 == 1)
      {
        v35 = *(v0 + 39);
        v31 = *(v0 + 35);
        v38 = 1;
        v37 = 1;
        v36 = 1;
LABEL_64:
        *(v0 + 39) = v35;
        *(v0 + 38) = v36;
        *(v0 + 37) = v37;
        *(v0 + 36) = v38;
        *(v0 + 35) = v31;
        v81 = swift_task_alloc();
        *(v0 + 192) = v81;
        *v81 = v0;
        v81[1] = sub_23729A384;
        v82 = *(v0 + 152);

        return MEMORY[0x2822003E8](v0 + 16, 0, 0, v82);
      }
    }

    else
    {
      v77 = *(v0 + 37);

      if (v77 == 1)
      {
        v35 = *(v0 + 39);
        v36 = *(v0 + 38);
        v38 = 1;
        v37 = 1;
        goto LABEL_63;
      }
    }

    v79 = *(v0 + 128);
    v78 = *(v0 + 136);
    v80 = *(v0 + 120);
    *(v0 + 48) = 0x8000000000000001;
    sub_2372D1154();
    (*(v79 + 8))(v78, v80);
    v31 = *(v0 + 35);
    v38 = 1;
    v37 = 1;
    v36 = 1;
    v35 = 1;
    goto LABEL_64;
  }

  if (v39)
  {
    v41 = *(v0 + 80);
    v40 = *(v0 + 88);
    v42 = *(v0 + 72);
    v43 = v39;
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    (*(v41 + 8))(v40, v42);
  }

  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v44 = sub_2372D1054();
  sub_23728E730(v44, qword_27DE99650);
  v45 = sub_2372D1034();
  v46 = sub_2372D11B4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 37);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v83 = v49;
    *v48 = 136315650;
    *(v48 + 4) = sub_2372A16D0(0xD00000000000001BLL, 0x80000002372D7360, &v83);
    *(v48 + 12) = 2048;
    *(v48 + 14) = 354;
    *(v48 + 22) = 1024;
    *(v48 + 24) = v47;
    _os_log_impl(&dword_23728C000, v45, v46, "%s:%ld: disconnected, currentFieldState=%{BOOL}d", v48, 0x1Cu);
    sub_237296020(v49);
    MEMORY[0x2383C9EB0](v49, -1, -1);
    MEMORY[0x2383C9EB0](v48, -1, -1);

    if ((v47 & 1) == 0)
    {
      v38 = 0;
      v37 = 0;
      v35 = *(v0 + 39);
      v36 = *(v0 + 38);
LABEL_63:
      v31 = *(v0 + 35);
      goto LABEL_64;
    }
  }

  else
  {
    v75 = *(v0 + 36);

    if ((v75 & 1) == 0)
    {
      v38 = 0;
      v35 = *(v0 + 39);
      v36 = *(v0 + 38);
      v37 = *(v0 + 37);
      goto LABEL_63;
    }
  }

  v76 = swift_task_alloc();
  *(v0 + 232) = v76;
  *v76 = v0;
  v76[1] = sub_23729B72C;

  return sub_237299D94();
}

uint64_t sub_23729B26C()
{
  v25 = v0;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v1 = sub_2372D1054();
  sub_23728E730(v1, qword_27DE99650);
  v2 = sub_2372D1034();
  v3 = sub_2372D11B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    v6 = (v0 + 39);
    v7 = *(v0 + 39);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136316162;
    *(v8 + 4) = sub_2372A16D0(0xD00000000000001BLL, 0x80000002372D7360, &v24);
    *(v8 + 12) = 2048;
    *(v8 + 14) = 320;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v5 & 1;
    *(v8 + 28) = 1024;
    *(v8 + 30) = v4 != 0;
    *(v8 + 34) = 1024;
    *(v8 + 36) = v7;
    _os_log_impl(&dword_23728C000, v2, v3, "%s:%ld: RF=%{BOOL}d, emuStarted=%{BOOL}d, currentFieldState=%{BOOL}d", v8, 0x28u);
    sub_237296020(v9);
    MEMORY[0x2383C9EB0](v9, -1, -1);
    MEMORY[0x2383C9EB0](v8, -1, -1);
  }

  else
  {

    v6 = (v0 + 38);
  }

  v10 = *v6;
  v11 = *(v0 + 200);
  if (v10 == (v11 & 1))
  {
    v19 = *(v0 + 39);
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 96);
    (*(v16 + 16))(v15, *(v0 + 64) + *(v0 + 184), v17);
    v18 = 0x8000000000000001;
    if ((v11 & 1) == 0)
    {
      v18 = 0x8000000000000002;
    }

    *(v0 + 56) = v18;
    sub_2372D1154();
    (*(v16 + 8))(v15, v17);
    (*(v14 + 8))(v12, v13);
    v10 = *(v0 + 200);
    v19 = v10;
  }

  *(v0 + 39) = v19 & 1;
  v20 = v10 & 1;
  *(v0 + 38) = v20;
  *(v0 + 37) = v20;
  *(v0 + 36) = v20;
  v21 = swift_task_alloc();
  *(v0 + 192) = v21;
  *v21 = v0;
  v21[1] = sub_23729A384;
  v22 = *(v0 + 152);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v22);
}

uint64_t sub_23729B558()
{

  return MEMORY[0x2822009F8](sub_23729B654, 0, 0);
}

uint64_t sub_23729B654()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 248);
  sub_23729FCCC(v1, v2, v3);
  sub_23729FCCC(v1, v2, v3);
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_23729A384;
  v5 = *(v0 + 152);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v5);
}

uint64_t sub_23729B72C()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 36) = 0;
  v3 = swift_task_alloc();
  *(v1 + 192) = v3;
  *v3 = v2;
  v3[1] = sub_23729A384;
  v4 = *(v1 + 152);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v4);
}

uint64_t sub_23729B898()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 192) = v3;
  *v3 = v2;
  v3[1] = sub_23729A384;
  v4 = *(v1 + 152);

  return MEMORY[0x2822003E8](v1 + 16, 0, 0, v4);
}

uint64_t sub_23729BA20()
{
  if (*(*(v0 + 160) + 128))
  {
    return sub_2372D1244();
  }

  sub_23729F620();
  swift_getObjectType();
  v3 = sub_2372D1104();

  return MEMORY[0x2822009F8](sub_23729BB10, v3, v2);
}

uint64_t sub_23729BB10()
{
  v0[2] = v0;
  v0[3] = sub_23729BCD0;
  v1 = swift_continuation_init();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = v0[20];
  v3 = *(v2 + 136);
  *(v3 + OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation) = v1;
  v4 = [objc_opt_self() sharedHardwareManager];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v0[14] = sub_23729F688;
  v0[15] = v5;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23729C108;
  v0[13] = &unk_284A4E520;
  v6 = _Block_copy(v0 + 10);

  [v4 queueCardFieldDetectSession:v3 completionHandler:v6];
  _Block_release(v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23729BCD0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  if (v3)
  {
    v4 = *(v1 + 160);
    swift_willThrow();

    return MEMORY[0x2822009F8](sub_23729BE1C, v4, 0);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_23729BE1C()
{
  v1 = *(v0 + 168);
  v2 = v1;
  sub_2372960D8(v1);
  if (v3 > 35)
  {
    if (v3 <= 57)
    {
      if (v3 == 36)
      {
        swift_getErrorValue();
        sub_2372D1294();
        return sub_2372D1244();
      }

      if (v3 == 50)
      {
        v4 = 7;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v3)
      {
        case ':':
          v4 = 9;
          goto LABEL_23;
        case 'E':
          v4 = 10;
          goto LABEL_23;
        case 'F':
          v4 = 11;
          goto LABEL_23;
      }
    }

LABEL_22:
    v4 = 1;
    goto LABEL_23;
  }

  v4 = 0;
  if (v3 > 13)
  {
    if (v3 == 14)
    {
      v4 = 8;
      goto LABEL_23;
    }

    if (v3 != 32)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 6;
      goto LABEL_23;
    }

    if (v3 != 8)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v6 = *(v0 + 168);
  sub_23729F8EC();
  swift_allocError();
  *v7 = v4;
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

void sub_23729BFD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
    swift_allocError();
    *v7 = a2;
    v8 = a2;

    swift_continuation_throwingResumeWithError();
  }

  else
  {
    *(a4 + 128) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v9 = [objc_opt_self() sharedHardwareManager];
    [v9 addNFCHardwareManagerCallbacksListener_];
  }
}

uint64_t sub_23729C108(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_23729C188(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = a2;
    sub_2372960D8(a2);
    if (v7 == 14 || v7 == 32 || v7 == 57)
    {
      sub_2372D1244();
      __break(1u);
    }

    else
    {
      **(*(a3 + 64) + 40) = 0;
      swift_continuation_resume();
    }
  }

  else
  {
    **(*(a3 + 64) + 40) = a1 & 1;

    swift_continuation_resume();
  }
}

void sub_23729C2F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23729C36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a5;
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2372952AC;
  v8 = byte_2372D49F2[v6];

  return sub_23729C418(v8);
}

uint64_t sub_23729C418(char a1)
{
  *(v2 + 224) = v1;
  *(v2 + 296) = a1;
  return MEMORY[0x2822009F8](sub_23729C43C, v1, 0);
}

uint64_t sub_23729C43C()
{
  v26 = v0;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v1 = sub_2372D1054();
  sub_23728E730(v1, qword_27DE99650);

  v2 = sub_2372D1034();
  v3 = sub_2372D11B4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 224);
  if (v4)
  {
    v6 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136316162;
    *(v7 + 4) = sub_2372A16D0(0xD000000000000013, 0x80000002372D6FE0, &v25);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 485;
    *(v7 + 22) = 1024;
    *(v7 + 24) = *(v5 + 128) != 0;
    *(v7 + 28) = 1024;
    *(v7 + 30) = *(v5 + 112) != 0;

    *(v7 + 34) = 2080;
    *(v0 + 144) = v6;
    v9 = sub_2372D10A4();
    v11 = sub_2372A16D0(v9, v10, &v25);

    *(v7 + 36) = v11;
    _os_log_impl(&dword_23728C000, v2, v3, "%s:%ld: fdSession=%{BOOL}d, cardSession=%{BOOL}d, reason=%s", v7, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x2383C9EB0](v8, -1, -1);
    MEMORY[0x2383C9EB0](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 224);
  v13 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer;
  [*(v12 + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer) stopTimer];
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;

  v15 = *(v12 + 128);
  *(v0 + 232) = v15;
  v16 = *(v0 + 224);
  if (v15)
  {
    sub_23729F620();
    swift_unknownObjectRetain();
    swift_getObjectType();
    v17 = sub_2372D1104();
    v19 = v18;
    *(v0 + 240) = v17;
    *(v0 + 248) = v18;
    v20 = sub_23729C760;
LABEL_10:

    return MEMORY[0x2822009F8](v20, v17, v19);
  }

  v21 = *(v16 + 112);
  *(v0 + 264) = v21;
  if (v21)
  {
    sub_23729F620();
    swift_unknownObjectRetain();
    swift_getObjectType();
    v17 = sub_2372D1104();
    v19 = v22;
    *(v0 + 272) = v17;
    *(v0 + 280) = v22;
    v20 = sub_23729CCC8;
    goto LABEL_10;
  }

  sub_23729D1BC(v16, *(v0 + 296));
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23729C760()
{
  v1 = v0[29];
  v0[2] = v0;
  v0[3] = sub_23729C98C;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[22] = sub_23729F678;
  v0[23] = v3;
  v4 = MEMORY[0x277D85DD0];
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_237296510;
  v0[21] = &unk_284A4E3E0;
  v5 = _Block_copy(v0 + 18);

  v6 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_23728DDC0(&qword_27DE98EB8, &unk_2372D4960);
  swift_dynamicCast();
  v7 = v0[18];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v0[22] = sub_23729F680;
  v0[23] = v8;
  v0[18] = v4;
  v0[19] = 1107296256;
  v0[20] = sub_23729FDD4;
  v0[21] = &unk_284A4E430;
  v9 = _Block_copy(v0 + 18);

  [v7 endSession_];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23729C98C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_23729CBF0;
  }

  else
  {
    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_23729CAA8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23729CAA8()
{
  v1 = *(v0 + 224);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23729CB10, v1, 0);
}

uint64_t sub_23729CB10()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 112);
  *(v0 + 264) = v2;
  if (v2)
  {
    sub_23729F620();
    swift_unknownObjectRetain();
    swift_getObjectType();
    v4 = sub_2372D1104();
    *(v0 + 272) = v4;
    *(v0 + 280) = v3;

    return MEMORY[0x2822009F8](sub_23729CCC8, v4, v3);
  }

  else
  {
    sub_23729D1BC(v1, *(v0 + 296));
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23729CBF0()
{
  v1 = *(v0 + 224);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23729CC58, v1, 0);
}

uint64_t sub_23729CC58()
{
  v1 = *(v0 + 256);
  sub_23729D1BC(*(v0 + 224), *(v0 + 296));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23729CCC8()
{
  v1 = v0[33];
  v0[10] = v0;
  v0[11] = sub_23729CEF4;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[22] = sub_23729FE2C;
  v0[23] = v3;
  v4 = MEMORY[0x277D85DD0];
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_237296510;
  v0[21] = &unk_284A4E480;
  v5 = _Block_copy(v0 + 18);

  v6 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_23728DDC0(&unk_27DE98EC0, &qword_2372D45A0);
  swift_dynamicCast();
  v7 = v0[18];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v0[22] = sub_23729FE04;
  v0[23] = v8;
  v0[18] = v4;
  v0[19] = 1107296256;
  v0[20] = sub_23729FDD4;
  v0[21] = &unk_284A4E4D0;
  v9 = _Block_copy(v0 + 18);

  [v7 endSession_];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_23729CEF4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 288) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_23729D0E0;
  }

  else
  {
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_23729D010;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23729D010()
{
  v1 = *(v0 + 224);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23729D07C, v1, 0);
}

uint64_t sub_23729D07C()
{
  sub_23729D1BC(*(v0 + 224), *(v0 + 296));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23729D0E0()
{
  v1 = *(v0 + 224);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23729D14C, v1, 0);
}

uint64_t sub_23729D14C()
{
  v1 = *(v0 + 288);
  sub_23729D1BC(*(v0 + 224), *(v0 + 296));

  v2 = *(v0 + 8);

  return v2();
}

id sub_23729D1BC(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_2372D1024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23728DDC0(&qword_27DE98AE8, qword_2372D4020);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = v15 - v10;
  *(a1 + 112) = 0;
  swift_unknownObjectRelease();
  *(a1 + 128) = 0;
  swift_unknownObjectRelease();
  if (a2 > 5u)
  {
    if (a2 > 8u)
    {
      v12 = 0x4000000000000004;
      if (a2 != 9)
      {
        if (a2 == 10)
        {
          v12 = 0x4000000000000005;
        }

        else
        {
          v12 = 0x4000000000000006;
        }
      }

      goto LABEL_18;
    }

    if (a2 == 6)
    {
      v12 = 0x4000000000000004;
    }

    else
    {
      if (a2 != 7)
      {
        goto LABEL_21;
      }

      v12 = 0x4000000000000008;
    }
  }

  else
  {
    v12 = 0x4000000000000000;
    if (a2 > 2u)
    {
      if (a2 == 3)
      {
        v12 = 0x4000000000000002;
      }

      else if (a2 == 4)
      {
        v12 = 0x4000000000000001;
      }

      goto LABEL_18;
    }

    if (a2 - 1 >= 2)
    {
LABEL_21:
      result = sub_2372D1244();
      __break(1u);
      return result;
    }
  }

LABEL_18:
  v15[1] = v12;
  sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  sub_2372D1154();
  (*(v9 + 8))(v11, v8);
  sub_2372D1164();
  result = NFSharedSignpostLog();
  if (result)
  {
    v14 = result;
    sub_2372D11E4();
    sub_2372D1014();
    sub_2372D1004();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_23729D528(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23729D56C()
{
  v1 = v0;
  v2 = sub_2372D1064();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23729F500();
  (*(v3 + 104))(v5, *MEMORY[0x277D851B8], v2);

  v6 = sub_2372D11D4();
  (*(v3 + 8))(v5, v2);
  v7 = objc_allocWithZone(MEMORY[0x277D82BA0]);
  aBlock[4] = sub_23729F4F8;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23729FDD4;
  aBlock[3] = &unk_284A4E368;
  v8 = _Block_copy(aBlock);

  v9 = [v7 initWithCallback:v8 queue:v6];

  _Block_release(v8);
  v10 = *(v1 + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer);
  *(v1 + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer) = v9;
  v11 = v9;

  if (v11)
  {
    [v11 startTimer_];
  }
}

uint64_t sub_23729D75C(uint64_t a1)
{
  sub_23728DDC0(&qword_27DE98AF8, &qword_2372D4038);
  MEMORY[0x28223BE20]();
  v3 = &v7 - v2;
  v4 = sub_2372D1134();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;

  sub_237294220(0, 0, v3, &unk_2372D4958, v5);
}

uint64_t sub_23729D888()
{
  v9 = v0;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v1 = sub_2372D1054();
  sub_23728E730(v1, qword_27DE99650);
  v2 = sub_2372D1034();
  v3 = sub_2372D11A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2372A16D0(0xD000000000000015, 0x80000002372D6FC0, &v8);
    *(v4 + 12) = 2048;
    *(v4 + 14) = 516;
    _os_log_impl(&dword_23728C000, v2, v3, "%s:%ld: Session expired", v4, 0x16u);
    sub_237296020(v5);
    MEMORY[0x2383C9EB0](v5, -1, -1);
    MEMORY[0x2383C9EB0](v4, -1, -1);
  }

  v6 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_23729DA14, v6, 0);
}

uint64_t sub_23729DA14()
{
  if (*(v0[2] + 112))
  {
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_23729DAE4;

    return sub_23729C418(3);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_23729DAE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23729DBD8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_23729DBFC, v2, 0);
}

uint64_t sub_23729DBFC()
{
  v14 = v0;
  v1 = v0[12];
  if (*(v1 + 112))
  {
    return sub_2372D1244();
  }

  if (*(v1 + 128))
  {
    v3 = sub_2372D1084();
    v0[13] = [objc_opt_self() configWithInitialUIText_];

    sub_23729F620();
    swift_getObjectType();
    v5 = sub_2372D1104();

    return MEMORY[0x2822009F8](sub_23729DEC0, v5, v4);
  }

  else
  {
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v6 = sub_2372D1054();
    sub_23728E730(v6, qword_27DE99650);
    v7 = sub_2372D1034();
    v8 = sub_2372D11A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_2372A16D0(0xD00000000000001ELL, 0x80000002372D72B0, &v13);
      *(v9 + 12) = 2048;
      *(v9 + 14) = 536;
      _os_log_impl(&dword_23728C000, v7, v8, "%s:%ld: Session has been invalidated", v9, 0x16u);
      sub_237296020(v10);
      MEMORY[0x2383C9EB0](v10, -1, -1);
      MEMORY[0x2383C9EB0](v9, -1, -1);
    }

    sub_23729F8EC();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_23729DEC0()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_23729DF64;
  v3 = swift_continuation_init();
  sub_23729E344(v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23729DF64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 112) = v2;
  v3 = *(v1 + 96);
  if (v2)
  {
    swift_willThrow();
    v4 = sub_23729E0FC;
  }

  else
  {
    v4 = sub_23729E094;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23729E094()
{
  v1 = *(v0 + 104);
  sub_23729D56C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23729E0FC()
{
  v1 = *(v0 + 112);

  v2 = v1;
  sub_2372960D8(v1);
  if (v3 > 49)
  {
    if (v3 > 68)
    {
      if (v3 == 69)
      {
        v4 = *(v0 + 112);
        sub_23729F8EC();
        swift_allocError();
        v6 = 10;
        goto LABEL_21;
      }

      if (v3 == 70)
      {
        v4 = *(v0 + 112);
        sub_23729F8EC();
        swift_allocError();
        v6 = 11;
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 == 50)
      {
        v4 = *(v0 + 112);
        sub_23729F8EC();
        swift_allocError();
        v6 = 7;
        goto LABEL_21;
      }

      if (v3 == 58)
      {
        v4 = *(v0 + 112);
        sub_23729F8EC();
        swift_allocError();
        v6 = 9;
        goto LABEL_21;
      }
    }

LABEL_20:
    v4 = *(v0 + 112);
    sub_23729F8EC();
    swift_allocError();
    v6 = 1;
    goto LABEL_21;
  }

  if (v3 > 13)
  {
    if (v3 == 14)
    {
      v4 = *(v0 + 112);
      sub_23729F8EC();
      swift_allocError();
      v6 = 8;
      goto LABEL_21;
    }

    if (v3 == 32)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  if (v3 != 2)
  {
    if (v3 != 8)
    {
      goto LABEL_20;
    }

LABEL_12:
    v4 = *(v0 + 112);
    sub_23729F8EC();
    swift_allocError();
    *v7 = 0;
    goto LABEL_22;
  }

  v4 = *(v0 + 112);
  sub_23729F8EC();
  swift_allocError();
  v6 = 6;
LABEL_21:
  *v5 = v6;
LABEL_22:
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

void sub_23729E344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v19 - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(v6 + 16);
  v9(v8, a2 + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_delegateEventStreamContinuation, v5);
  v10 = type metadata accessor for NFCCardSessionDelegate(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation] = 0;
  v9(&v11[OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_eventStreamContinuation], v8, v5);
  v22.receiver = v11;
  v22.super_class = v10;
  v12 = objc_msgSendSuper2(&v22, sel_init);
  (*(v6 + 8))(v8, v5);
  v13 = *(a2 + 120);
  *(a2 + 120) = v12;
  v14 = v12;

  *&v14[OBJC_IVAR____TtC7CoreNFCP33_EFB2E886CAEE49EE896FB2304411A55622NFCCardSessionDelegate_sessionStartContinuation] = a1;
  v15 = [objc_opt_self() sharedHardwareManager];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = sub_23729FBC4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23729E720;
  aBlock[3] = &unk_284A4E750;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  [v15 queueCardSession:v18 sessionConfig:v20 completionHandler:v17];
  _Block_release(v17);
}

void sub_23729E5E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
    swift_allocError();
    *v9 = a4;
    v10 = a4;

    swift_continuation_throwingResumeWithError();
  }

  else
  {
    *(a6 + 112) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v11 = [objc_opt_self() sharedHardwareManager];
    if (*(a6 + 120))
    {
      v12 = v11;
      [v11 addNFCHardwareManagerCallbacksListener_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23729E720(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  v9(a2, a3, v10, a5);

  return swift_unknownObjectRelease();
}

uint64_t sub_23729E7C8(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 184) = a1;
  return MEMORY[0x2822009F8](sub_23729E7EC, v1, 0);
}

uint64_t sub_23729E7EC()
{
  v1 = v0[20];
  v2 = *(v1 + 112);
  v0[21] = v2;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer;
    v4 = *(v1 + OBJC_IVAR____TtC7CoreNFC14NFCCardSession_emulationExpirationTimer);
    swift_unknownObjectRetain();
    [v4 stopTimer];
    v5 = *(v1 + v3);
    *(v1 + v3) = 0;

    sub_23729F620();
    swift_getObjectType();
    v7 = sub_2372D1104();

    return MEMORY[0x2822009F8](sub_23729E8E8, v7, v6);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_23729E8E8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  v4 = (v0 + 80);
  v5 = *(v0 + 168);
  v6 = *(v0 + 184);
  v1[2] = v2;
  v1[3] = sub_23729EB34;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_23729FE2C;
  v1[15] = v8;
  v9 = MEMORY[0x277D85DD0];
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_237296510;
  v1[13] = &unk_284A4E660;
  v10 = _Block_copy(v4);

  v11 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);
  sub_2372D11F4();
  swift_unknownObjectRelease();
  sub_23728DDC0(&unk_27DE98EC0, &qword_2372D45A0);
  swift_dynamicCast();
  v12 = v1[10];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v7;
  v1[14] = sub_23729FB84;
  v1[15] = v13;
  v1[10] = v9;
  v1[11] = 1107296256;
  v1[12] = sub_2372A1D60;
  v1[13] = &unk_284A4E6B0;
  v14 = _Block_copy(v4);
  swift_unknownObjectRetain();

  [v12 stopEmulationWithStatus:v6 completion:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  return MEMORY[0x282200938](v3);
}

uint64_t sub_23729EB34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    swift_willThrow();
    v4 = sub_23729ECE0;
  }

  else
  {
    v4 = sub_23729EC64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23729EC64()
{
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  *(v1 + 112) = 0;
  swift_unknownObjectRelease();
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23729ECE0()
{
  v1 = *(v0 + 176);
  v2 = v1;
  sub_2372960D8(v1);
  v4 = v3;
  sub_23729F8EC();
  swift_allocError();
  if (v4 == 54)
  {
    v6 = 2;
  }

  else
  {
    if (v4 == 32)
    {
      *v5 = 0;
      goto LABEL_7;
    }

    v6 = 1;
  }

  *v5 = v6;
LABEL_7:
  swift_willThrow();

  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

void sub_23729EDB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_23729FE04;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23729FDD4;
  v7[3] = &unk_284A4E700;
  v6 = _Block_copy(v7);

  [a2 endSession_];
  _Block_release(v6);
}

uint64_t sub_23729EE84()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_delegateEventStream;
  v2 = sub_23728DDC0(&qword_27DE98EE8, &qword_2372D49A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_delegateEventStreamContinuation;
  v4 = sub_23728DDC0(&qword_27DE98EF0, &qword_2372D49A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC7CoreNFC14NFCCardSession_eventStreamContinuation;
  v6 = sub_23728DDC0(&qword_27DE98ED0, &qword_2372D3FF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23729EFD0()
{
  sub_23729EE84();

  return MEMORY[0x282200960](v0);
}

void sub_23729F024(uint64_t a1)
{
  sub_23729F1CC(319, &unk_27DE98E98, &type metadata for NFCCardSession.Event, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_23729F1CC(319, &qword_27DE98E48, &type metadata for NFCCardSession.Event, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_23729F1CC(319, &unk_27DE98B40, &type metadata for CardSession.Event, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23729F1CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23729F21C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 4);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

__n128 sub_23729F23C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23729F250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FC && *(a1 + 17))
  {
    return (*a1 + 1020);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23729F2A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FB)
  {
    *(result + 16) = 0;
    *result = a2 - 1020;
    *(result + 8) = 0;
    if (a3 >= 0x3FC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_23729F304(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0;
  }

  *(result + 16) = a2 > 3;
  return result;
}

uint64_t getEnumTagSinglePayload for NFCCardSession.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NFCCardSession.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23729F498()
{
  result = qword_27DE98EA8;
  if (!qword_27DE98EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98EA8);
  }

  return result;
}

unint64_t sub_23729F500()
{
  result = qword_27DE98EB0;
  if (!qword_27DE98EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE98EB0);
  }

  return result;
}

uint64_t sub_23729F54C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23729F56C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2372952AC;

  return sub_23729D868(a1, v4, v5, v6);
}

unint64_t sub_23729F620()
{
  result = qword_27DE98B90;
  if (!qword_27DE98B90)
  {
    type metadata accessor for NFCCardSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98B90);
  }

  return result;
}

uint64_t sub_23729F6AC()
{
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_23729F814;
  v1 = swift_continuation_init();
  v2 = [objc_opt_self() sharedHardwareManager];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[14] = sub_23729FD98;
  v0[15] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23729C2F4;
  v0[13] = &unk_284A4E7C8;
  v4 = _Block_copy(v0 + 10);

  [v2 isCardSessionEligibleWithCompletionHandler_];
  _Block_release(v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23729F814()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 8);

  return v2(v1);
}

unint64_t sub_23729F8EC()
{
  result = qword_27DE98ED8;
  if (!qword_27DE98ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE98ED8);
  }

  return result;
}

uint64_t sub_23729F940()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23729F978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_237296090;

  return sub_237299840(a1, a2, a3, v3);
}

uint64_t sub_23729FA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2372952AC;

  return sub_237298C00(a1, v4, v5, v7, v6);
}

uint64_t sub_23729FAF8()
{
  sub_23728E084(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23729FB4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23729FB8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23729FBCC(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23729FC18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_237296090;

  return sub_23729A07C(a1, v4, v5, v6);
}

uint64_t sub_23729FCCC(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_23729FD1C(result, a2, a3 & 1, sub_23728E084);
  }

  return result;
}

uint64_t sub_23729FD1C(uint64_t result, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  if (((a2 >> 60) & 3 | v4) == 1)
  {
    return a4(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_23729FD48(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_23729FD1C(result, a2, a3 & 1, sub_23728DFE4);
  }

  return result;
}

id sub_2372A006C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, v1 + OBJC_IVAR____TtC7CoreNFC21AssertionNotification_eventStreamContinuation, v3);
  sub_2372D1164();
  (*(v4 + 8))(v6, v3);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_2372A0380(uint64_t a1)
{
  sub_2372A11E4(319, &qword_27DE98FF0, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2372A042C()
{
  v1 = sub_23728DDC0(&qword_27DE99040, &qword_2372D4B40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v19 - v3;
  v5 = sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v19 - v7;
  v9 = sub_23728DDC0(&qword_27DE98BA8, &qword_2372D4B30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v19 - v11;
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_2372D1144();
  (*(v2 + 8))(v4, v1);
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC7CoreNFC35NFCPresentmentSuppressionController_eventStream, v12, v9);
  v13 = OBJC_IVAR____TtC7CoreNFC35NFCPresentmentSuppressionController_eventStreamContinuation;
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC7CoreNFC35NFCPresentmentSuppressionController_eventStreamContinuation, v8, v5);
  v14 = *(v6 + 16);
  v14(v8, v0 + v13, v5);
  v15 = type metadata accessor for AssertionNotification(0);
  v16 = objc_allocWithZone(v15);
  v14(&v16[OBJC_IVAR____TtC7CoreNFC21AssertionNotification_eventStreamContinuation], v8, v5);
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v6 + 8))(v8, v5);
  *(v0 + 112) = v17;
  return v0;
}

uint64_t sub_2372A0730()
{
  v1 = v0;
  v2 = sub_23728DDC0(&qword_27DE98A90, &qword_2372D3FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = aBlock - v4;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v6 = sub_2372D1054();
  sub_23728E730(v6, qword_27DE99650);
  v7 = sub_2372D1034();
  v8 = sub_2372D11B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23728C000, v7, v8, "NFCPresentmentSuppressionController.deinit", v9, 2u);
    MEMORY[0x2383C9EB0](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC7CoreNFC35NFCPresentmentSuppressionController_eventStreamContinuation;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC7CoreNFC35NFCPresentmentSuppressionController_eventStreamContinuation, v2);
  sub_2372D1164();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = *(v1 + 120);
  if (v12)
  {
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 sharedHardwareManager];
    aBlock[4] = sub_2372A0A34;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2372A1D60;
    aBlock[3] = &unk_284A4E8D0;
    v16 = _Block_copy(aBlock);
    [v15 releasePresentmentSuppression:v14 completion:v16];
    _Block_release(v16);
  }

  v17 = OBJC_IVAR____TtC7CoreNFC35NFCPresentmentSuppressionController_eventStream;
  v18 = sub_23728DDC0(&qword_27DE98BA8, &qword_2372D4B30);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v11((v1 + v10), v2);
  swift_defaultActor_destroy();
  return v1;
}

void sub_2372A0A34(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27DE98680 != -1)
    {
      swift_once();
    }

    v3 = sub_2372D1054();
    sub_23728E730(v3, qword_27DE99650);
    v4 = a1;
    v5 = sub_2372D1034();
    v6 = sub_2372D11B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315650;
      *(v7 + 4) = sub_2372A16D0(0x74696E696564, 0xE600000000000000, &v12);
      *(v7 + 12) = 2048;
      *(v7 + 14) = 65;
      *(v7 + 22) = 2080;
      swift_getErrorValue();
      v9 = sub_2372D1294();
      v11 = sub_2372A16D0(v9, v10, &v12);

      *(v7 + 24) = v11;
      _os_log_impl(&dword_23728C000, v5, v6, "%s:%ld: %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383C9EB0](v8, -1, -1);
      MEMORY[0x2383C9EB0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2372A0C2C()
{
  sub_2372A0730();

  return MEMORY[0x282200960](v0);
}

void sub_2372A0C80(uint64_t a1)
{
  sub_2372A11E4(319, &qword_27DE99010, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_2372A11E4(319, &qword_27DE98FF0, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2372A0DA4()
{
  *(v1 + 88) = v0;
  sub_2372A1678();
  if (v0)
  {
    swift_getObjectType();
    v2 = sub_2372D1104();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](sub_2372A0E34, v2, v4);
}

uint64_t sub_2372A0E34()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2372A0ED4;
  v2 = swift_continuation_init();
  sub_2372A12A0(v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2372A0ED4()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v1[11];
    v1[12] = v1[10];

    return MEMORY[0x2822009F8](sub_2372A101C, v5, 0);
  }
}

uint64_t sub_2372A101C()
{
  v15 = v0;
  if (qword_27DE98680 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_2372D1054();
  sub_23728E730(v2, qword_27DE99650);
  v3 = v1;
  v4 = sub_2372D1034();
  v5 = sub_2372D11B4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_2372A16D0(0x2865726975716361, 0xE900000000000029, &v14);
    *(v8 + 12) = 2048;
    *(v8 + 14) = 98;
    *(v8 + 22) = 2048;
    *(v8 + 24) = [v7 unsignedLongLongValue];

    _os_log_impl(&dword_23728C000, v4, v5, "%s:%ld: handle=%llu", v8, 0x20u);
    sub_237296020(v9);
    MEMORY[0x2383C9EB0](v9, -1, -1);
    MEMORY[0x2383C9EB0](v8, -1, -1);
  }

  else
  {
  }

  v10 = v0[11];
  v11 = *(v10 + 120);
  *(v10 + 120) = v0[12];

  v12 = v0[1];

  return v12();
}

void sub_2372A11E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for NFCPresentmentSuppressionController.Event);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2372A124C()
{
  result = qword_27DE99018;
  if (!qword_27DE99018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE99018);
  }

  return result;
}

void sub_2372A12A0(uint64_t a1, uint64_t a2)
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() sharedHardwareManager];
  v5 = *(a2 + 112);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v8[4] = sub_2372A1CE4;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2372A15EC;
  v8[3] = &unk_284A4E8A8;
  v7 = _Block_copy(v8);

  [v4 requestPresentmentSuppressionWithDelegate:v5 completion:v7];
  _Block_release(v7);
}

uint64_t sub_2372A13D4(void *a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    sub_2372960D8(a2);
    if (v5 > 57)
    {
      if ((v5 - 69) < 2)
      {
        sub_2372A1D04();
        v8 = swift_allocError();
        *v9 = 0;
LABEL_14:
        sub_23728DDC0(&qword_27DE98AF0, &qword_2372D4970);
        swift_allocError();
        *v11 = v8;

        return swift_continuation_throwingResumeWithError();
      }
    }

    else if (v5 != 34 && (v5 == 14 || v5 == 32))
    {
      goto LABEL_17;
    }

    sub_2372A1D04();
    v8 = swift_allocError();
    *v10 = 1;
    goto LABEL_14;
  }

  if (!a1)
  {
LABEL_17:
    result = sub_2372D1244();
    __break(1u);
    return result;
  }

  **(*(a3 + 64) + 40) = a1;
  v6 = a1;

  return swift_continuation_throwingResume();
}

void sub_2372A15EC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_2372A1678()
{
  result = qword_27DE99020;
  if (!qword_27DE99020)
  {
    type metadata accessor for NFCPresentmentSuppressionController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE99020);
  }

  return result;
}

unint64_t sub_2372A16D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2372A179C(v11, 0, 0, 1, a1, a2);
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
    sub_2372A1C78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_237296020(v11);
  return v7;
}

unint64_t sub_2372A179C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2372A18A8(a5, a6);
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
    result = sub_2372D1234();
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

void *sub_2372A18A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2372A18F4(a1, a2);
  sub_2372A1A24(&unk_284A4DAE0);
  return v3;
}

void *sub_2372A18F4(uint64_t a1, unint64_t a2)
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

  v6 = sub_2372A1B10(v5, 0);
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

  result = sub_2372D1234();
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
        v10 = sub_2372D10D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2372A1B10(v10, 0);
        result = sub_2372D1204();
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

uint64_t sub_2372A1A24(uint64_t result)
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

  result = sub_2372A1B84(result, v11, 1, v3);
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

void *sub_2372A1B10(uint64_t a1, uint64_t a2)
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

  sub_23728DDC0(&qword_27DE99028, &qword_2372D4B28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2372A1B84(char *result, int64_t a2, char a3, char *a4)
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
    sub_23728DDC0(&qword_27DE99028, &qword_2372D4B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_2372A1C78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2372A1CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2372A1D04()
{
  result = qword_27DE99030;
  if (!qword_27DE99030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE99030);
  }

  return result;
}

void sub_2372A1D60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id NFCTagReaderSession.connectedTag.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 connectedTag];
  if (result)
  {

    return sub_2372A4110(result, a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = -1;
  }

  return result;
}

id NFCTagReaderSession.init(pollingOption:delegate:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for NFCTagReaderSessionDelegateSwiftWrapper();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a3;
  swift_unknownObjectWeakAssign();
  v17.receiver = v8;
  v17.super_class = v7;
  v9 = objc_msgSendSuper2(&v17, sel_init);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [ObjCClassFromMetadata isPaymentSession];
  if (v11)
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  if (v11)
  {
    a1 = 1;
  }

  v13 = objc_allocWithZone(ObjCClassFromMetadata);
  v14 = v9;
  v15 = [v13 initWithPollingOption:a1 swiftDelegate:v14 sessionType:v12 queue:a4];
  swift_unknownObjectRelease();

  return v15;
}

uint64_t NFCTagReaderSession.connect(to:completionHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2372A1D60;
  v7[3] = &unk_284A4E8F8;
  v5 = _Block_copy(v7);
  swift_unknownObjectRetain();

  [v3 connectToTag:v4 completionHandler:v5];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_2372A2034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NFCFeliCaPollingResponse.manufactureParameter.getter()
{
  v1 = *v0;
  sub_23728DFE4(*v0, *(v0 + 8));
  return v1;
}

uint64_t NFCFeliCaPollingResponse.manufactureParameter.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23728E084(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NFCFeliCaPollingResponse.requestData.getter()
{
  v1 = *(v0 + 16);
  sub_23728DFD0(v1, *(v0 + 24));
  return v1;
}

uint64_t NFCFeliCaPollingResponse.requestData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23728E070(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NFCFeliCaPollingResponse.init(manufactureParameter:requestData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_23728E070(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

CoreNFC::NFCFeliCaStatusFlag __swiftcall NFCFeliCaStatusFlag.init(statusFlag1:statusFlag2:)(Swift::Int statusFlag1, Swift::Int statusFlag2)
{
  *v2 = statusFlag1;
  v2[1] = statusFlag2;
  result.statusFlag2 = statusFlag2;
  result.statusFlag1 = statusFlag1;
  return result;
}

uint64_t NFCFeliCaRequsetServiceV2Response.nodeKeyVersionListAES.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t NFCFeliCaRequsetServiceV2Response.nodeKeyVersionListDES.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t NFCFeliCaRequsetServiceV2Response.init(statusFlag1:statusFlag2:encryptionIdentifier:nodeKeyVersionListAES:nodeKeyVersionListDES:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t NFCFeliCaRequestSpecificationVersionResponse.basicVersion.getter()
{
  v1 = *(v0 + 16);
  sub_23728DFD0(v1, *(v0 + 24));
  return v1;
}

uint64_t NFCFeliCaRequestSpecificationVersionResponse.basicVersion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23728E070(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NFCFeliCaRequestSpecificationVersionResponse.optionVersion.getter()
{
  v1 = *(v0 + 32);
  sub_23728DFD0(v1, *(v0 + 40));
  return v1;
}

uint64_t NFCFeliCaRequestSpecificationVersionResponse.optionVersion.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23728E070(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NFCFeliCaRequestSpecificationVersionResponse.init(statusFlag1:statusFlag2:basicVersion:optionVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  sub_23728E070(0, 0xF000000000000000);
  a7[2] = a3;
  a7[3] = a4;
  result = sub_23728E070(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void NFCFeliCaTag.polling(systemCode:requestCode:timeSlot:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_2372D0FB4();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v15[4] = sub_2372A27EC;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2372A27F4;
  v15[3] = &unk_284A4E948;
  v14 = _Block_copy(v15);

  [v7 pollingWithSystemCode:v12 requestCode:a3 timeSlot:a4 completionHandler:v14];
  _Block_release(v14);
}

void sub_2372A2648(void *result, unint64_t a2, uint64_t a3, unint64_t a4, id a5, void (*a6)(uint64_t *))
{
  if (a5)
  {
    v17 = a5;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v7 = a5;
    a6(&v17);
LABEL_17:
    sub_2372A3E54(v17, v18, v19, v20, v21);
    return;
  }

  v8 = a4;
  v9 = a3;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v15 = result;
      v16 = a2;
      goto LABEL_15;
    }

    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
LABEL_12:
      v15 = result;
      v16 = a2;
      if (v11 >= 1)
      {
        sub_23728DFE4(a3, a4);
LABEL_16:
        sub_23728DFD0(v9, v8);
        sub_23728DFE4(v15, v16);
        sub_23728E070(0, 0xF000000000000000);
        v17 = v15;
        v18 = v16;
        v19 = v9;
        v20 = v8;
        v21 = 0;
        sub_23728DFE4(v15, v16);
        sub_23728DFD0(v9, v8);
        a6(&v17);
        sub_23728E084(v15, v16);
        sub_23728E070(v9, v8);
        sub_23728E070(v9, v8);
        goto LABEL_17;
      }

LABEL_15:
      v9 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a4);
    goto LABEL_12;
  }

  LODWORD(v11) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v11 = v11;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2372A27B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2372A27F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = sub_2372D0FC4();
  v11 = v10;

  v12 = a3;
  v13 = sub_2372D0FC4();
  v15 = v14;

  v16 = a4;
  v7(v9, v11, v13, v15, a4);

  sub_23728E084(v13, v15);
  sub_23728E084(v9, v11);
}

uint64_t sub_2372A28CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NFCFeliCaTag.requestService(nodeCodeList:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2372D10E4();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2372A29E4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2372A2A00;
  v9[3] = &unk_284A4E998;
  v8 = _Block_copy(v9);

  [v3 requestServiceWithNodeCodeList:v6 completionHandler:v8];
  _Block_release(v8);
}

void sub_2372A2A00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_2372D10F4();

  v6 = a3;
  v4(v5, a3);
}

void NFCFeliCaTag.requestResponse(resultHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_2372A2BE8;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2372A2BF0;
  v7[3] = &unk_284A4E9E8;
  v6 = _Block_copy(v7);

  [v2 requestResponseWithCompletionHandler_];
  _Block_release(v6);
}

void sub_2372A2B70(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(a1);
  }
}

void sub_2372A2BF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void NFCFeliCaTag.readWithoutEncryption(serviceCodeList:blockList:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2372D10E4();
  v8 = sub_2372D10E4();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_2372A2E04;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2372A2E0C;
  v11[3] = &unk_284A4EA38;
  v10 = _Block_copy(v11);

  [v4 readWithoutEncryptionWithServiceCodeList:v7 blockList:v8 completionHandler:v10];
  _Block_release(v10);
}

void sub_2372A2D88(void *a1, uint64_t a2, uint64_t a3, id a4, void (*a5)(id *))
{
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    v7 = a4;
    v10 = 1;
    v6 = a4;
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    v10 = 0;
  }

  a5(&v7);
  sub_2372A3E44(v7, v8, v9, v10);
}

void sub_2372A2E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = sub_2372D10F4();

  v10 = a5;
  v8(a2, a3, v9, a5);
}

void NFCFeliCaTag.writeWithoutEncryption(serviceCodeList:blockList:blockData:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2372D10E4();
  v9 = sub_2372D10E4();
  v10 = sub_2372D10E4();
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_2372A2FF8;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2372A3014;
  v13[3] = &unk_284A4EA88;
  v12 = _Block_copy(v13);

  [v5 writeWithoutEncryptionWithServiceCodeList:v8 blockList:v9 blockData:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_2372A3014(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void NFCFeliCaTag.requestSystemCode(resultHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_2372A3ECC;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2372A2A00;
  v7[3] = &unk_284A4EAD8;
  v6 = _Block_copy(v7);

  [v2 requestSystemCodeWithCompletionHandler_];
  _Block_release(v6);
}

void NFCFeliCaTag.requestServiceV2(nodeCodeList:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2372D10E4();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2372A3360;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2372A3368;
  v9[3] = &unk_284A4EB28;
  v8 = _Block_copy(v9);

  [v3 requestServiceV2WithNodeCodeList:v6 completionHandler:v8];
  _Block_release(v8);
}

void sub_2372A327C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, void (*a7)(id *))
{
  if (!a6)
  {
    v9 = a5;
    v10 = a4;
    if (*(a4 + 16))
    {

      if (*(v9 + 16))
      {
LABEL_5:

LABEL_8:
        v14 = a1;
        *&v15 = a2;
        *(&v15 + 1) = a3;
        *&v16 = v10;
        *(&v16 + 1) = v9;
        v17 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
      if (*(a5 + 16))
      {
        goto LABEL_5;
      }
    }

    v9 = 0;
    goto LABEL_8;
  }

  v14 = a6;
  v15 = 0u;
  v16 = 0u;
  v17 = 1;
  v8 = a6;
LABEL_9:
  a7(&v14);
  sub_2372A3DF4(v14, v15, *(&v15 + 1), v16, *(&v16 + 1), v17);
}

void sub_2372A3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *(a1 + 32);
  v12 = sub_2372D10F4();
  v13 = sub_2372D10F4();

  v14 = a7;
  v11(a2, a3, a4, v12, v13, a7);
}

void NFCFeliCaTag.requestSpecificationVersion(resultHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_2372A374C;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2372A3774;
  v7[3] = &unk_284A4EB78;
  v6 = _Block_copy(v7);

  [v2 requestSpecificationVersionWithCompletionHandler_];
  _Block_release(v6);
}

void sub_2372A352C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, id a7, void (*a8)(id *), uint64_t a9)
{
  if (a7)
  {
    v26 = a7;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = 1;
    v10 = a7;
    a8(&v26);
LABEL_26:
    sub_2372A3D98(v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
    return;
  }

  v13 = a4;
  v14 = a3;
  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v17)
    {
      if (!BYTE6(a4))
      {
        goto LABEL_13;
      }

LABEL_10:
      sub_23728DFE4(a3, a4);
      goto LABEL_14;
    }

    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (HIDWORD(a3) - a3 >= 1)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v17 != 2)
  {
    goto LABEL_13;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v20 = __OFSUB__(v18, v19);
  v21 = v18 - v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v21 >= 1)
  {
    goto LABEL_10;
  }

LABEL_13:
  v14 = 0;
  v13 = 0xF000000000000000;
LABEL_14:
  v22 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_24;
    }

    v24 = *(a5 + 16);
    v23 = *(a5 + 24);
    v20 = __OFSUB__(v23, v24);
    v25 = v23 - v24;
    if (!v20)
    {
      if (v25 >= 1)
      {
        goto LABEL_21;
      }

LABEL_24:
      a5 = 0;
      a6 = 0xF000000000000000;
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (!v22)
  {
    if (!BYTE6(a6))
    {
      goto LABEL_24;
    }

LABEL_21:
    sub_23728DFE4(a5, a6);
LABEL_25:
    sub_23728DFD0(v14, v13);
    sub_23728DFD0(a5, a6);
    sub_23728E070(0, 0xF000000000000000);
    sub_23728E070(0, 0xF000000000000000);
    v26 = a1;
    *&v27 = a2;
    *(&v27 + 1) = v14;
    *&v28 = v13;
    *(&v28 + 1) = a5;
    v29 = a6;
    v30 = 0;
    sub_23728DFD0(v14, v13);
    sub_23728DFD0(a5, a6);
    a8(&v26);
    sub_23728E070(v14, v13);
    sub_23728E070(a5, a6);
    sub_23728E070(a5, a6);
    sub_23728E070(v14, v13);
    goto LABEL_26;
  }

  if (!__OFSUB__(HIDWORD(a5), a5))
  {
    if (HIDWORD(a5) - a5 >= 1)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_2372A3774(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = *(a1 + 32);

  v12 = a4;
  v13 = sub_2372D0FC4();
  v15 = v14;

  v16 = a5;
  v17 = sub_2372D0FC4();
  v19 = v18;

  v20 = a6;
  v11(a2, a3, v13, v15, v17, v19, a6);

  sub_23728E084(v17, v19);
  sub_23728E084(v13, v15);
}

void NFCFeliCaTag.resetMode(resultHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_2372A3F18;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2372A3014;
  v7[3] = &unk_284A4EBC8;
  v6 = _Block_copy(v7);

  [v2 resetModeWithCompletionHandler_];
  _Block_release(v6);
}

void sub_2372A3944(void *a1, uint64_t a2, id a3, void (*a4)(id *))
{
  if (a3)
  {
    v6 = a3;
    v7 = 0;
    v8 = 1;
    v5 = a3;
    a4(&v6);
    sub_2372A3D8C(v6, v7, v8);
  }

  else
  {
    v6 = a1;
    v7 = a2;
    v8 = 0;
    a4(&v6);
  }
}

void NFCFeliCaTag.sendFeliCaCommand(commandPacket:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2372D0FB4();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_23728E914;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23728E91C;
  v10[3] = &unk_284A4EC18;
  v9 = _Block_copy(v10);

  [v4 sendFeliCaCommandPacket:v7 completionHandler:v9];
  _Block_release(v9);
}

__n128 sub_2372A3AB0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2372A3ABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_2372A3B10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for NFCFeliCaStatusFlag(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NFCFeliCaStatusFlag(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NFCFeliCaStatusFlag(uint64_t result, int a2, int a3)
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

__n128 sub_2372A3BD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2372A3BE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2372A3C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 sub_2372A3CB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2372A3CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 48))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 24) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2372A3D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_2372A3D8C(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

void sub_2372A3D98(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    sub_23728E070(a3, a4);

    sub_23728E070(a5, a6);
  }
}

void sub_2372A3DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

void sub_2372A3E44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_2372A3E54(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    sub_23728E084(a1, a2);

    sub_23728E070(a3, a4);
  }
}

uint64_t NFCNDEFPayload.wellKnownTypeTextPayload()(uint64_t a1)
{
  v2 = v1;
  v15[1] = *MEMORY[0x277D85DE8];
  sub_23728DDC0(&qword_27DE99048, "~\t");
  MEMORY[0x28223BE20]();
  v5 = v15 - v4;
  v15[0] = 0;
  v6 = [v2 wellKnownTypeTextPayloadWithLocale_];
  v7 = v15[0];
  if (!v6)
  {
    v12 = v15[0];
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 1;
    goto LABEL_6;
  }

  v8 = v6;
  v9 = sub_2372D1094();
  v10 = v7;

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2372D0FE4();

  v11 = 0;
LABEL_6:
  v13 = sub_2372D0FF4();
  (*(*(v13 - 8) + 56))(v5, v11, 1, v13);
  sub_2372A40A0(v5, a1);

  return v9;
}

uint64_t sub_2372A40A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23728DDC0(&qword_27DE99048, "~\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2372A4110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 asNFCFeliCaTag];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
LABEL_9:
    result = swift_unknownObjectRelease();
    *a2 = v5;
    *(a2 + 8) = v6;
    return result;
  }

  v7 = [a1 asNFCISO15693Tag];
  if (v7)
  {
    v5 = v7;
    v6 = 2;
    goto LABEL_9;
  }

  v8 = [a1 asNFCISO7816Tag];
  if (v8)
  {
    v5 = v8;
    v6 = 1;
    goto LABEL_9;
  }

  v9 = [a1 asNFCMiFareTag];
  if (v9)
  {
    v5 = v9;
    v6 = 3;
    goto LABEL_9;
  }

  result = sub_2372D1244();
  __break(1u);
  return result;
}

uint64_t sub_2372A4268(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2372A427C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2372A42C4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2372A4320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NFCISO15693SystemInfo.uniqueIdentifier.getter()
{
  v1 = *v0;
  sub_23728DFE4(*v0, *(v0 + 8));
  return v1;
}

uint64_t NFCISO15693SystemInfo.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23728E084(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t NFCISO15693SystemInfo.init(uniqueIdentifier:dataStorageFormatIdentifier:applicationFamilyIdentifier:blockSize:totalBlocks:icReference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t NFCISO15693MultipleBlockSecurityStatus.blockSecurityStatus.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void NFCISO15693Tag.readSingleBlock(requestFlags:blockNumber:resultHandler:)(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_2372A5CBC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23728E91C;
  v11[3] = &unk_284A4EF10;
  v10 = _Block_copy(v11);

  [v4 readSingleBlockWithRequestFlags:a1 blockNumber:a2 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_2372A4658()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2372A4690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NFCISO15693Tag.getSystemInfo(requestFlags:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2372A490C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2372A4934;
  v9[3] = &unk_284A4EFB0;
  v8 = _Block_copy(v9);

  [v3 getSystemInfoAndUIDWithRequestFlag:a1 completionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_2372A47E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, id a8, void (*a9)(__int128 *), uint64_t a10)
{
  if (a8)
  {
    v17 = 1;
    *&v14 = a8;
    v16[24] = 1;
    v10 = a8;
    a9(&v14);
LABEL_5:
    v18[0] = v14;
    v18[1] = v15;
    v19[0] = *v16;
    *(v19 + 9) = *&v16[9];
    return sub_2372A5BB8(v18);
  }

  if (a2 >> 60 != 15)
  {
    v17 = 0;
    *&v14 = a1;
    *(&v14 + 1) = a2;
    *&v15 = a3;
    *(&v15 + 1) = a4;
    *v16 = a5;
    *&v16[8] = a6;
    *&v16[16] = a7;
    v16[24] = 0;
    sub_23728DFD0(a1, a2);
    sub_23728DFE4(a1, a2);
    a9(&v14);
    sub_23728E084(a1, a2);
    goto LABEL_5;
  }

  result = sub_2372D1244();
  __break(1u);
  return result;
}

uint64_t sub_2372A4934(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = a2;
  v14 = *(a1 + 32);
  if (a2)
  {

    v15 = v13;
    v13 = sub_2372D0FC4();
    v17 = v16;
  }

  else
  {

    v17 = 0xF000000000000000;
  }

  v18 = a8;
  v14(v13, v17, a3, a4, a5, a6, a7, a8);

  sub_23728E070(v13, v17);
}

void NFCISO15693Tag.customCommand(requestFlags:customCommandCode:customRequestParameters:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2372D0FB4();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[4] = sub_2372A4B88;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23728E91C;
  v14[3] = &unk_284A4F050;
  v13 = _Block_copy(v14);

  [v6 customCommandWithRequestFlag:a1 customCommandCode:a2 customRequestParameters:v11 completionHandler:v13];
  _Block_release(v13);
}

void NFCISO15693Tag.extendedReadSingleBlock(requestFlags:blockNumber:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_2372A5CBC;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23728E91C;
  v11[3] = &unk_284A4F0A0;
  v10 = _Block_copy(v11);

  [v4 extendedReadSingleBlockWithRequestFlags:a1 blockNumber:a2 completionHandler:v10];
  _Block_release(v10);
}

void NFCISO15693Tag.extendedWriteMultipleBlocks(requestFlags:blockRange:dataBlocks:completionHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2372D10E4();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v15[4] = sub_2372A4DC0;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2372A1D60;
  v15[3] = &unk_284A4F0F0;
  v14 = _Block_copy(v15);

  [v6 extendedWriteMultipleBlocksWithRequestFlags:a1 blockRange:a2 dataBlocks:a3 completionHandler:{v12, v14}];
  _Block_release(v14);
}

uint64_t sub_2372A4E38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a3;
  v9 = sub_2372D0FC4();
  v11 = v10;

  v12 = a4;
  v7(a2, v9, v11, a4);

  sub_23728E084(v9, v11);
}

void sub_2372A4F38(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v16 = sub_2372D0FB4();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v19[4] = a9;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2372A4E38;
  v19[3] = a10;
  v18 = _Block_copy(v19);

  [v11 *a11];
  _Block_release(v18);
}

void NFCISO15693Tag.challenge(requestFlags:cryptoSuiteIdentifier:message:completionHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2372D0FB4();
  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2372A1D60;
  v13[3] = &unk_284A4F1B8;
  v12 = _Block_copy(v13);

  [v6 challengeWithRequestFlags:a1 cryptoSuiteIdentifier:a2 message:v11 completionHandler:v12];
  _Block_release(v12);
}

void NFCISO15693Tag.readBuffer(requestFlags:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_2372A5224;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2372A4E38;
  v9[3] = &unk_284A4F208;
  v8 = _Block_copy(v9);

  [v3 readBufferWithRequestFlags:a1 completionHandler:v8];
  _Block_release(v8);
}

void NFCISO15693Tag.extendedGetMultipleBlockSecurityStatus(requestFlags:blockRange:resultHandler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_2372A54EC;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2372A54F4;
  v13[3] = &unk_284A4F258;
  v12 = _Block_copy(v13);

  [v5 extendedGetMultipleBlockSecurityStatusWithRequestFlag:a1 blockRange:a2 completionHandler:{a3, v12}];
  _Block_release(v12);
}

void sub_2372A5370(unint64_t a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  if (a2)
  {
    v18 = a2;
    v19 = 1;
    v6 = a2;
LABEL_16:
    a3(&v18);
    sub_2372A5BAC(v18, v19);
    return;
  }

  if (a1 >> 62)
  {
    v8 = sub_2372D1254();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_15:
    v18 = v9;
    v19 = 0;
    goto LABEL_16;
  }

  v16 = a4;
  v17 = a3;
  v18 = MEMORY[0x277D84F90];
  sub_23728DC94(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v9 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2383C94A0](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 integerValue];

      v18 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_23728DC94((v14 > 1), v15 + 1, 1);
        v9 = v18;
      }

      ++v10;
      v9[2] = v15 + 1;
      v9[v15 + 4] = v13;
    }

    while (v8 != v10);
    a3 = v17;
    goto LABEL_15;
  }

  __break(1u);
}

void sub_2372A54F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_2372A5B60();
  v5 = sub_2372D10F4();

  v6 = a3;
  v4(v5, a3);
}

void sub_2372A55E4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v19[4] = a8;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2372A2A00;
  v19[3] = a9;
  v18 = _Block_copy(v19);

  [v10 *a10];
  _Block_release(v18);
}

void NFCISO15693Tag.sendRequest(requestFlags:commandCode:data:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_2372D0FB4();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v14[4] = sub_2372A58F0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2372A5934;
  v14[3] = &unk_284A4F2F8;
  v13 = _Block_copy(v14);

  [v6 sendRequestWithFlag:a1 commandCode:a2 data:v11 completionHandler:v13];
  _Block_release(v13);
}

void sub_2372A5808(unsigned __int8 a1, uint64_t a2, uint64_t a3, id a4, void (*a5)(id, uint64_t, uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t))
{
  if (a4)
  {
    v10 = a4;
    a5(a4, 0, 0, 1);
  }

  else
  {
    a7(a2, a3);
    a5(a1, a2, a3, 0);

    a8(a2, a3);
  }
}

uint64_t sub_2372A5934(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {

    v8 = v5;
    v5 = sub_2372D0FC4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(a2, v5, v10, a4);

  sub_23728E070(v5, v10);
}

__n128 sub_2372A59F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_2372A5A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
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

uint64_t sub_2372A5A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2372A5ACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2372A5B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2372A5B60()
{
  result = qword_27DE99250;
  if (!qword_27DE99250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE99250);
  }

  return result;
}

void sub_2372A5BAC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2372A5BB8(uint64_t a1)
{
  v2 = sub_23728DDC0(&qword_27DE99258, "@\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id NFCPaymentTagReaderSession.init(delegate:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for NFCTagReaderSessionDelegateSwiftWrapper();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC7CoreNFC39NFCTagReaderSessionDelegateSwiftWrapper_swiftDelegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSwiftDelegate:v7 queue:a3];
  swift_unknownObjectRelease();

  return v8;
}