uint64_t sub_2580DBC2C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_2580CA988(*a1, v5);
  v6 = sub_2580DDE64();
  if (v2)
  {
    return sub_2580CA7E4(v4, v5);
  }

  v9 = v6;
  v10 = v7;
  result = sub_2580CA7E4(v4, v5);
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_2580DBCB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_2580DD3C0(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_2580DD35C(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_2580DDC64();
    v14 = v13;
    result = sub_2580CA7E4(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2580DBE04(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_2580DD60C(result);
      if (result)
      {
        return result;
      }

      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v7 = *(v3 + 16);
          v6 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3 >> 32;
        }

        else
        {
          v6 = BYTE6(v4);
        }

        if (v5)
        {
          v7 = v3;
        }

        else
        {
          v7 = 0;
        }
      }

      v8 = -v2;
      v9 = sub_2580DD3C0(v6, v7, *v1, *(v1 + 8));
      if (v9 <= 0 && v9 > v8)
      {
        goto LABEL_23;
      }

      if (v6 >= sub_2580DD35C(v6, v8, v3, v4))
      {

        return MEMORY[0x28211D260]();
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x28211D260]();
  }

  return result;
}

uint64_t sub_2580DBF08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F91DE18, &qword_2580E04B8);
  result = MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  v17 = a1;
  v18 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x28223BE20](result);
  *&v15[-32] = &v17;
  *&v15[-24] = a3;
  *&v15[-16] = a4;
  *&v15[-8] = a3;
  result = sub_2580DD474(sub_2580DDADC, &v15[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    goto LABEL_8;
  }

  sub_2580CA988(v17, v18);
LABEL_8:
  sub_2580DDCA4();
  sub_2580DDC94();
  sub_2580DDAFC(&qword_27F91DE20, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  result = sub_2580DE1D4();
  v13 = 0;
  if (v16)
  {
LABEL_12:
    *&v11[*(v8 + 36)] = v13;
    return sub_2580CAFD4(v11, &qword_27F91DE18, &qword_2580E04B8);
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      *(a3 + v14) = v15[6];
      result = sub_2580DE1D4();
      ++v14;
      if (v16 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2580DC110@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2580DD3C0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2580DD35C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_2580DDC64();
    v15 = v14;
    result = sub_2580CA7E4(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2580DC258(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_2580DD3C0(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_2580DD35C(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_2580CA988(*v1, *(v1 + 8));
      result = sub_2580CA7E4(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_2580DDC64();
        v15 = v14;
        result = sub_2580CA7E4(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2580DC414()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  result = sub_2580DE2B4();
  __break(1u);
  return result;
}

uint64_t sub_2580DC488()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  result = sub_2580DE2B4();
  __break(1u);
  return result;
}

uint64_t sub_2580DC4FC()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  result = sub_2580DE2B4();
  __break(1u);
  return result;
}

void sub_2580DC570()
{
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }
}

uint64_t sub_2580DC58C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed;
  if (*(*v0 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_wasClosed))
  {
    __break(1u);
  }

  else
  {
    v3 = (v1 + OBJC_IVAR____TtCC23ManagedBackgroundAssets19DecryptionProcessorP33_CB540DB91470C5DBDC18B883BA2F546110ByteStream_unreadDecryptedData);
    swift_beginAccess();
    v4 = *v3;
    v5 = v3[1];
    *v3 = xmmword_2580E0360;
    result = sub_2580CA7E4(v4, v5);
    *(v1 + v2) = 1;
  }

  return result;
}

uint64_t sub_2580DC624()
{
  v0 = sub_2580DDEF4();
  __swift_allocate_value_buffer(v0, qword_27F91DDB0);
  __swift_project_value_buffer(v0, qword_27F91DDB0);
  return sub_2580DDEE4();
}

uint64_t DecryptionProcessor.__allocating_init(keys:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_2580DDEC4();
  v3 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v4 = sub_2580DDE84();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t DecryptionProcessor.init(keys:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_2580DDEC4();
  v3 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v4 = sub_2580DDE84();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_2580DC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_2580DDE84();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = sub_2580DE094();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[9] = v7;
  v4[10] = v9;

  return MEMORY[0x2822009F8](sub_2580DC8B4, v7);
}

uint64_t sub_2580DC8B4()
{
  if (qword_27F91D5B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2580DDEF4();
  __swift_project_value_buffer(v1, qword_27F91DDB0);
  v2 = sub_2580DDED4();
  v3 = sub_2580DE184();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2580C3000, v2, v3, "Creating a decryption stream…", v4, 2u);
    MEMORY[0x259C79240](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys, v7);
  v0[11] = type metadata accessor for DecryptionProcessor.ByteStream(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2580DCA80;
  v10 = v0[8];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  return sub_2580DA9A8(v13, v11, v10, v12);
}

uint64_t sub_2580DCA80(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 72);
  if (v1)
  {
    v6 = sub_2580DCD30;
  }

  else
  {
    v6 = sub_2580DCBC4;
  }

  return MEMORY[0x2822009F8](v6, v5);
}

uint64_t sub_2580DCBC4()
{
  sub_2580DDCF4();
  sub_2580DDAFC(&qword_27F91DDD0, type metadata accessor for DecryptionProcessor.ByteStream, &unk_2580E0458);
  v1 = sub_2580DDCD4();
  if (v1)
  {
    v2 = v1;

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    v5 = MEMORY[0x259C78720]();
    sub_2580C49C0();
    swift_allocError();
    *v6 = v5;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2580DCD30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DecryptionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v2 = sub_2580DDE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DecryptionProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23ManagedBackgroundAssets19DecryptionProcessor_keys;
  v2 = sub_2580DDE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2580DCEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2580CC010;

  return sub_2580DC7B4(a1, a2, a3);
}

uint64_t sub_2580DCF90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2580DCFC8(uint64_t a1)
{
  result = sub_2580DDE84();
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

uint64_t dispatch thunk of DecryptionProcessor.byteStream(isolation:readingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2580CA0B0;

  return v10(a1, a2, a3);
}

uint64_t sub_2580DD1DC(uint64_t a1)
{
  result = sub_2580DDE74();
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

uint64_t sub_2580DD28C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_2580DDE74();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

_BYTE *sub_2580DD2C8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2580DD77C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2580DD9DC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2580DDA58(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_2580DD35C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2580DD3C0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2580DD474(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v10 = a3;
      *&v10[8] = a4;
      v10[10] = BYTE2(a4);
      v10[11] = BYTE3(a4);
      v10[12] = BYTE4(a4);
      v10[13] = BYTE5(a4);
      result = (a1)(&v11, v10, BYTE6(a4));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_2580DD934(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v10, 0, sizeof(v10));
  result = (a1)(&v11, v10, 0, a3);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t sub_2580DD5C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

uint64_t sub_2580DD60C(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v2 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = v2 >> 32;
  }

  else
  {
    v5 = BYTE6(v3);
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    if (v4 > 1)
    {
      v7 = 0;
      if (v4 == 2)
      {
        v7 = *(v2 + 16);
      }
    }

    else if (v4)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    result = sub_2580DD3C0(v5, v7, *v1, *(v1 + 8));
    if (v6 <= 0)
    {
      if (result <= 0 && v6 < result)
      {
        goto LABEL_31;
      }
    }

    else if ((result & 0x8000000000000000) == 0 && result < v6)
    {
      goto LABEL_31;
    }

    v8 = sub_2580DD35C(v5, v6, v2, v3);
    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      v12 = 0;
      if (v11 == 2)
      {
        v12 = *(v9 + 16);
      }
    }

    else if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    sub_2580CA988(*v1, *(v1 + 8));
    result = sub_2580CA7E4(v9, v10);
    if (v8 >= v12)
    {
      v13 = sub_2580DDC64();
      v15 = v14;
      sub_2580CA7E4(v9, v10);
      *v1 = v13;
      *(v1 + 8) = v15;
      return 1;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2580DD77C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2580DD834(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_2580DDC44();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_2580DDB64();
  if (v3)
  {
    result = sub_2580DDB84();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_2580DDB74();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2580DD77C(v3, v7);

  return v8;
}

uint64_t sub_2580DD934(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_2580DDB64();
  v8 = result;
  if (result)
  {
    result = sub_2580DDB84();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_2580DDB74();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_2580DD5C8(v8, v14, a4) & 1;
}

uint64_t sub_2580DD9DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2580DDBA4();
  swift_allocObject();
  result = sub_2580DDB54();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2580DDC44();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2580DDA58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2580DDBA4();
  swift_allocObject();
  result = sub_2580DDB54();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_2580DDADC(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_2580DDAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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