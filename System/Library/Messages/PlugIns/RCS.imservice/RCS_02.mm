uint64_t sub_37640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_376A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_376D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_37740(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v44 = ~v9;
    v11 = 0xE900000000000074;
    v12 = a1;
    while (1)
    {
      v13 = *(*(v8 + 48) + v10);
      if (v13 <= 1)
      {
        if (*(*(v8 + 48) + v10))
        {
          v14 = 1919251317;
        }

        else
        {
          v14 = 0x6F632D656E6F6870;
        }

        if (*(*(v8 + 48) + v10))
        {
          v15 = 0xE400000000000000;
        }

        else
        {
          v15 = 0xED0000747865746ELL;
        }
      }

      else if (v13 == 2)
      {
        v14 = 0x6E657265666E6F63;
        v15 = 0xEA00000000006563;
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 25199;
        }

        else
        {
          v14 = 0x726F70736E617274;
        }

        if (v13 == 3)
        {
          v15 = 0xE200000000000000;
        }

        else
        {
          v15 = 0xE900000000000074;
        }
      }

      if (v12 == 3)
      {
        v16 = 25199;
      }

      else
      {
        v16 = 0x726F70736E617274;
      }

      if (v12 == 3)
      {
        v11 = 0xE200000000000000;
      }

      if (v12 == 2)
      {
        v16 = 0x6E657265666E6F63;
        v11 = 0xEA00000000006563;
      }

      v17 = v12 ? 1919251317 : 0x6F632D656E6F6870;
      v18 = v12 ? 0xE400000000000000 : 0xED0000747865746ELL;
      v19 = (v12 <= 1 ? v17 : v16);
      v20 = (v12 <= 1 ? v18 : v11);
      if (v14 == v19 && v15 == v20)
      {
        break;
      }

      v21 = sub_F122C();
      v15, v22, v23, v24, v25, v26, v27, v28;
      v20, v29, v30, v31, v32, v33, v34, v35;
      if ((v21 & 1) == 0)
      {
        v10 = (v10 + 1) & v44;
        v11 = 0xE900000000000074;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    v15, a2, v19, a4, a5, a6, a7, a8;
    v20, v36, v37, v38, v39, v40, v41, v42;
  }

  return v10;
}

void sub_37938(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_F12FC();

      sub_F089C();
      v10 = sub_F132C();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

uint64_t sub_37AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RCSServiceSession.cancelTypingIndicator(chatID:guid:sender:encryption:subscriptionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_37C54;

  return sub_37F00(a3, a4, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_37C54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_37D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_38B0C;

  return sub_37F00(a3, a4, a5, a6, a7, a8, v18, v19);
}

id variable initialization expression of RCSOutgoingMessageController.client()
{
  v0 = im_primary_queue();
  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v0];

  return v1;
}

_DWORD *sub_37EB8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_37F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = a8;
  v9[27] = v8;
  v9[24] = a6;
  v9[25] = a7;
  v9[22] = a4;
  v9[23] = a5;
  v9[20] = a2;
  v9[21] = a3;
  v9[19] = a1;
  v10 = sub_F06CC();
  v9[28] = v10;
  v9[29] = *(v10 - 8);
  v9[30] = swift_task_alloc();
  v9[31] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v9[32] = swift_task_alloc();
  type metadata accessor for RCSMessage(0);
  v9[33] = swift_task_alloc();
  sub_F0AEC();
  v9[34] = sub_F0ADC();
  v12 = sub_F0A6C();
  v9[35] = v12;
  v9[36] = v11;

  return _swift_task_switch(sub_38074, v12, v11);
}

uint64_t sub_38074()
{
  v29 = v0;
  v1 = v0[32];
  v2 = v0[26];
  v22 = v0[27];
  v3 = v0[24];
  v19 = v0[33];
  v20 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v6[1];
  v23[0] = *v6;
  v23[1] = v9;
  v11 = *(v6 + 41);
  v24[0] = v6[2];
  v10 = v24[0];
  *(v24 + 9) = v11;
  v24[2] = v23[0];
  v24[3] = v9;
  *v25 = v10;
  *&v25[9] = v11;
  v26 = 256;
  *v1 = 0;
  v12 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v1, 0, 1, v12);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_38910(v6, (v0 + 2));
  sub_38910(v6, (v0 + 10));

  sub_3896C(v5);
  v13.entries._rawValue = RCSMessageMetadata.init()().entries._rawValue;
  result = RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v23, v8, v7, 0, 0, v4, v3, v20, v19, v2, v1, v27, v5, v13.entries._rawValue, 0);
  v15 = *(*(v22 + OBJC_IVAR___RCSServiceSession_state) + 104);
  v0[37] = v15;
  if (v15)
  {
    v16 = *(*v15 + 144);

    v21 = (v16 + *v16);
    v17 = swift_task_alloc();
    v0[38] = v17;
    *v17 = v0;
    v17[1] = sub_382FC;
    v18 = v0[33];

    return (v21)(v0 + 18, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_382FC(void *a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = *(v4 + 280);
    v6 = *(v4 + 288);
    v7 = sub_3861C;
  }

  else
  {

    v5 = *(v4 + 280);
    v6 = *(v4 + 288);
    v7 = sub_38430;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_38430()
{
  v29 = v0;
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[20];

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_F06AC();
  v7 = sub_F0CCC();
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = os_log_type_enabled(v6, v7);
  v16 = v0[33];
  v17 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  if (v15)
  {
    v27 = v0[33];
    v21 = v0[19];
    v20 = v0[20];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_3E850(v21, v20, &v28);
    _os_log_impl(&dword_0, v6, v7, "Cancelled typing indicator for %s", v22, 0xCu);
    sub_1EDC(v23);

    (*(v18 + 8))(v17, v19);
    v24 = v27;
  }

  else
  {

    (*(v18 + 8))(v17, v19);
    v24 = v16;
  }

  sub_3897C(v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_3861C()
{
  v33 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[20];

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);

  swift_errorRetain();
  v6 = sub_F06AC();
  v7 = sub_F0CEC();
  v4, v8, v9, v10, v11, v12, v13, v14;

  v15 = os_log_type_enabled(v6, v7);
  v16 = v0[33];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[28];
  if (v15)
  {
    v31 = v0[33];
    v20 = v0[19];
    v21 = v0[20];
    v30 = v0[28];
    v22 = swift_slowAlloc();
    v29 = v17;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v22 = 136315394;
    *(v22 + 4) = sub_3E850(v20, v21, &v32);
    *(v22 + 12) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v25;
    *v23 = v25;
    _os_log_impl(&dword_0, v6, v7, "Failed to cancel typing indicator for %s: %@", v22, 0x16u);
    sub_389D8(v23);

    sub_1EDC(v24);

    (*(v18 + 8))(v29, v30);
    v26 = v31;
  }

  else
  {

    (*(v18 + 8))(v17, v19);
    v26 = v16;
  }

  sub_3897C(v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_388C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_3896C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_3897C(uint64_t a1)
{
  v2 = type metadata accessor for RCSMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_389D8(uint64_t a1)
{
  v2 = sub_388C8(&qword_127AF0, &qword_F28E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_38A40(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_38A50(uint64_t a1, int a2)
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

uint64_t sub_38A70(uint64_t result, int a2, int a3)
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

void sub_38AC0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_38B24(void *a1, void *a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v36 = 0;
    if (v4 == 2)
    {
      sub_F0F9C(95);
      v22._countAndFlagsBits = 0xD00000000000005DLL;
      v22._object = 0x80000000000FDD80;
    }

    else
    {
      sub_F0F9C(61);
      v22._countAndFlagsBits = 0xD00000000000003BLL;
      v22._object = 0x80000000000FDD40;
    }

    sub_F08CC(v22);
    v23 = [a1 description];
    goto LABEL_9;
  }

  if (v4)
  {
    sub_F0F9C(32);
    0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
    v36 = 0xD00000000000001ELL;
    v23 = [a1 description];
LABEL_9:
    v31 = v23;
    v32 = sub_F07EC();
    v34 = v33;

    v40._countAndFlagsBits = v32;
    v40._object = v34;
    sub_F08CC(v40);
    v21 = v34;
    goto LABEL_10;
  }

  sub_F0F9C(26);
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  v36 = 0xD000000000000014;
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  sub_F08CC(v37);
  v38._countAndFlagsBits = 8250;
  v38._object = 0xE200000000000000;
  sub_F08CC(v38);
  swift_getErrorValue();
  v39._countAndFlagsBits = sub_F12AC();
  object = v39._object;
  sub_F08CC(v39);
  v21 = object;
LABEL_10:
  v21, v14, v15, v16, v17, v18, v19, v20;
  return v36;
}

uint64_t sub_38D9C(void *a1)
{
  v1 = [objc_opt_self() IMCountryCodeForSimSlot:{objc_msgSend(a1, "slotID")}];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

uint64_t sub_38E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_F06CC();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = sub_F0AEC();
  v4[18] = sub_F0ADC();
  v7 = sub_F0A6C();
  v4[19] = v7;
  v4[20] = v6;

  return _swift_task_switch(sub_38F34, v7, v6);
}

uint64_t sub_38F34()
{
  v59 = v0;
  v1 = [*(v0 + 80) style];
  if (v1 != 43)
  {
    if (v1 == 45)
    {
      v2 = *(v0 + 80);

      v3 = [v2 chatIdentifier];
      if (v3)
      {
        v4 = v3;
        v5 = sub_F07EC();
        v7 = v6;

        sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
        v8 = CTLazuliDestination.init(uri:)(v5, v7);
LABEL_10:

        v11 = *(v0 + 8);

        return v11(v8);
      }

      v12 = *(v0 + 128);
      v13 = *(v0 + 104);
      v14 = *(v0 + 112);
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = Logger.rcs.unsafeMutableAddressor();
      (*(v14 + 16))(v12, v17, v13);
      v18 = v16;
      v19 = v15;
      v20 = sub_F06AC();
      v21 = sub_F0CEC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 72);
        v23 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v23 = 136315394;
        v24 = [v22 guid];
        if (v24)
        {
          v25 = v24;
          v26 = sub_F07EC();
          v28 = v27;
        }

        else
        {
          v26 = 0xD000000000000010;
          v28 = 0x80000000000FDD00;
        }

        v32 = *(v0 + 80);
        v33 = sub_3E850(v26, v28, &v58);
        v28, v34, v35, v36, v37, v38, v39, v40;
        *(v23 + 4) = v33;
        *(v23 + 12) = 2080;
        v41 = [v32 guid];
        if (v41)
        {
          v42 = v41;
          v43 = sub_F07EC();
          v45 = v44;
        }

        else
        {
          v45 = 0x80000000000FDD20;
          v43 = 0xD000000000000011;
        }

        v46 = *(v0 + 128);
        v47 = *(v0 + 104);
        v48 = *(v0 + 112);
        v49 = sub_3E850(v43, v45, &v58);
        v45, v50, v51, v52, v53, v54, v55, v56;
        *(v23 + 14) = v49;
        _os_log_impl(&dword_0, v20, v21, "Failed to find chatIdentifier for %s in %s", v23, 0x16u);
        swift_arrayDestroy();

        (*(v48 + 8))(v46, v47);
      }

      else
      {
        v29 = *(v0 + 128);
        v30 = *(v0 + 104);
        v31 = *(v0 + 112);

        (*(v31 + 8))(v29, v30);
      }
    }

    else
    {
    }

    v8 = 0;
    goto LABEL_10;
  }

  *(v0 + 168) = sub_F0ADC();
  v10 = sub_F0A6C();
  *(v0 + 176) = v10;
  *(v0 + 184) = v9;

  return _swift_task_switch(sub_392F4, v10, v9);
}

void sub_392F4()
{
  v1 = *(*(v0[12] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[11];
    v0[7] = v0[10];
    v0[8] = v2;

    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_393DC;

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)((v0 + 2), (v0 + 7), (v0 + 8));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_393DC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_39670;
  }

  else
  {
    v5 = sub_39514;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_39514()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_39578, v1, v2);
}

uint64_t sub_39578()
{

  v1 = v0[5];
  v2 = v0[6];
  sub_373E8(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    v7 = CTLazuliDestination.init(uri:)(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  sub_1EDC(v0 + 2);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_39670()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_396D4, v1, v2);
}

uint64_t sub_396D4()
{
  v34 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_F06AC();
  v8 = sub_F0CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    v12 = [v9 guid];
    if (v12)
    {
      v13 = v12;
      v14 = sub_F07EC();
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    v20 = v0[14];
    v32 = v0[15];
    v21 = v0[13];
    v22 = sub_3E850(v14, v16, &v33);
    v16, v23, v24, v25, v26, v27, v28, v29;
    *(v10 + 4) = v22;
    _os_log_impl(&dword_0, v7, v8, "Failed to resolve groupIdentity for chat GUID %s", v10, 0xCu);
    sub_1EDC(v11);

    (*(v20 + 8))(v32, v21);
  }

  else
  {
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];

    (*(v18 + 8))(v17, v19);
  }

  v30 = v0[1];

  return v30(0);
}

void sub_39908(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([a1 style] != 45)
  {
    *(&v36 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v37 = &protocol witness table for IMDChat;
    *&v35 = v3;
    v3 = v3;
    if (IMDChatRCSGroupIdentity.isValid.getter())
    {
      v26 = swift_allocObject();
      v27 = v36;
      *(v26 + 16) = v35;
      *(v26 + 32) = v27;
      *(v26 + 48) = v37;
      *(&v39 + 1) = &type metadata for IMDChatRCSGroupIdentity;
      v40 = &protocol witness table for IMDChatRCSGroupIdentity;
      *&v38 = v26;
      sub_373E8(&v38, &type metadata for IMDChatRCSGroupIdentity);
      v28 = j___s7CoreRCS23IMDChatRCSGroupIdentityV3uriSSSgvg();
      v30 = v29;
      sub_1EDC(&v38);
      if (v30)
      {
        sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
        CTLazuliDestination.init(uri:)(v28, v30);
        return;
      }
    }

    else
    {
      sub_39BC4(&v35);
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      sub_39C18(&v38);
    }

    sub_39C80();
    swift_allocError();
    *v31 = v3;
    v32 = xmmword_F2980;
    goto LABEL_12;
  }

  v4 = [v3 participantHandles];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = sub_F09FC();

  if (!*v6[1].IMDTelephonyServiceSession_opaque)
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
    sub_39C80();
    swift_allocError();
    *v31 = v3;
    v32 = xmmword_F2990;
LABEL_12:
    *(v31 + 8) = v32;
    swift_willThrow();
    v33 = v3;
    return;
  }

  v14 = *v6[2].IMDTelephonyServiceSession_opaque;
  v15 = *v6[2].state;

  v6, v16, v17, v18, v19, v20, v21, v22;
  v23._countAndFlagsBits = v14;
  v23._object = v15;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v41, v23, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v24)
  {
    v25 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v25);
    v34[2] = a2;
    CTLazuliDestination.init(handle:countryCode:)(&v41, sub_39CD4, v34);
  }
}

uint64_t sub_39C18(uint64_t a1)
{
  v2 = sub_388C8(&qword_127B08, &qword_F29A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_39C80()
{
  result = qword_127B10;
  if (!qword_127B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B10);
  }

  return result;
}

__n128 sub_39CE8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_39CFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_39D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_39DE8(void *a1)
{
  v2 = v1;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_F06AC();
  v11 = sub_F0CCC();
  p_name = &stru_124FF8.name;
  if (os_log_type_enabled(v10, v11))
  {
    v37 = v4;
    v38 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    v15 = [v9 guid];

    if (!v15)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v39);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v10, v11, "Marking message %s as interworked", v13, 0xCu);
    sub_1EDC(v14);

    (*(v5 + 8))(v7, v37);
    v2 = v38;
    p_name = (&stru_124FF8 + 8);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v27 = [v2 relayController];
  v28 = [v9 p_name[502]];
  v29 = IMServiceNameSMS;
  [v27 messageSent:v28 onService:IMServiceNameSMS compatibilityService:0 wasInterworked:1];

  v30 = [objc_opt_self() sharedAccountController];
  if (!v30)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v30;
  v32 = [v30 anySessionForServiceName:v29];

  if (!v32)
  {
    return;
  }

  v33 = [v9 p_name[502]];
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = v33;
  v35 = [v2 account];
  [v32 notifyDidSendMessageID:v34 account:v35 shouldNotify:0 wasDowngraded:0 wasInterworked:1];
}

void sub_3A140(void *a1)
{
  v2 = v1;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_F06AC();
  v11 = sub_F0CCC();
  p_name = &stru_124FF8.name;
  if (os_log_type_enabled(v10, v11))
  {
    v37 = v4;
    v38 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    v15 = [v9 guid];

    if (!v15)
    {
      goto LABEL_8;
    }

    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v39);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v10, v11, "Marking message %s as delivered", v13, 0xCu);
    sub_1EDC(v14);

    (*(v5 + 8))(v7, v37);
    v2 = v38;
    p_name = (&stru_124FF8 + 8);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v27 = [v9 p_name[502]];
  if (v27)
  {
    v28 = v27;
    v29 = sub_F030C();
    v30 = *(v29 - 8);
    __chkstk_darwin(v29);
    v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F02DC();
    v33 = sub_F028C();
    (*(v30 + 8))(v32, v29);
    [v2 didReceiveMessageDeliveryReceiptForMessageID:v28 date:v33];

    v34 = [v2 relayController];
    v35 = [v9 p_name[502]];
    [v34 messageDelivered:v35];

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_3A4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for RCSMessage(0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = sub_F06CC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_F0AEC();
  v4[11] = sub_F0ADC();
  v7 = sub_F0A6C();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_3A5DC, v7, v6);
}

void sub_3A5DC(uint64_t a1)
{
  v37 = v1;
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  v4 = *(v1 + 64);
  v5 = *(v1 + 16);
  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = sub_F06AC();
  v9 = sub_F0CCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v1 + 16);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    v13 = [v10 guid];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = *(v1 + 72);
    v35 = *(v1 + 80);
    v15 = *(v1 + 64);
    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v36);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v11 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "Failure to decrypt -- resending message %s", v11, 0xCu);
    sub_1EDC(v12);

    (*(v14 + 8))(v35, v15);
  }

  else
  {
    v28 = *(v1 + 72);
    v27 = *(v1 + 80);
    v29 = *(v1 + 64);

    (*(v28 + 8))(v27, v29);
  }

  v30 = swift_task_alloc();
  *(v1 + 112) = v30;
  *v30 = v1;
  v30[1] = sub_3A820;
  v31 = *(v1 + 56);
  v32 = *(v1 + 32);
  v33 = *(v1 + 16);
  v34 = *(v1 + 24);

  sub_5524C(v31, v33, 0, v34, v32);
}

uint64_t sub_3A820()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_3ACBC;
  }

  else
  {
    v5 = sub_3A95C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3A95C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_3C9A4(v0[7], v1);
  type metadata accessor for RCSMessageSendItem(0);
  v5 = swift_allocObject();
  v0[16] = v5;
  v6 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  v7 = sub_388C8(&qword_127B28, &qword_F2B20);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 4, v7);
  *(v5 + 16) = v4;
  sub_3CA08(v1, v5 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);
  *(v5 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context) = v3;
  *(v5 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) = v2;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_3AAD4;

  return sub_85668(v5);
}

uint64_t sub_3AAD4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_3AD44;
  }

  else
  {
    v5 = sub_3AC2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3AC2C()
{
  v1 = *(v0 + 56);

  sub_3897C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3ACBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3AD44()
{
  v1 = *(v0 + 56);

  sub_3897C(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_3ADD8(uint64_t a1, void *a2, void *a3, char *a4, void *a5)
{
  v10 = sub_F06CC();
  v72 = *(v10 - 8);
  v73 = v10;
  __chkstk_darwin(v10);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v12 - 8);
  v14 = &v72 - v13;
  v15 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  sub_3BC04(a1, a2, a3, a4);
  if ((v19 & 1) == 0)
  {
    return;
  }

  if (a1 > 2)
  {
    if ((a1 - 3) >= 2)
    {
      if (a1 == 5)
      {
        v52 = sub_F0B1C();
        (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
        sub_F0AEC();
        v53 = v75;
        v54 = a2;
        v55 = a3;
        v56 = a5;
        v57 = sub_F0ADC();
        v58 = swift_allocObject();
        v58[2] = v57;
        v58[3] = &protocol witness table for MainActor;
        v58[4] = v53;
        v58[5] = v54;
        v58[6] = v55;
        v58[7] = v56;
        sub_3CC0C(0, 0, v14, &unk_F2B10, v58);
      }

      return;
    }

    v47 = [a2 guid];
    if (v47)
    {
      v48 = v47;
      v49 = v75;
      [v75 didReceiveError:4 forMessageID:v47 forceError:1];

      v50 = [a2 guid];
      if (v50)
      {
        v74 = v50;
        [v49 processMessageSendFailure:?];
        v51 = v74;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (!a1)
  {
    if (qword_127AA0 != -1)
    {
      swift_once();
    }

    v59 = sub_3C96C(v15, qword_127DD8);
    (*(v16 + 16))(v18, v59, v15);
    sub_F044C();
    (*(v16 + 8))(v18, v15);
    if (v77 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    if (qword_127AA8 != -1)
    {
      swift_once();
    }

    v60 = sub_3C96C(v15, qword_127DF0);
    (*(v16 + 16))(v18, v60, v15);
    sub_F044C();
    (*(v16 + 8))(v18, v15);
    if (v76 == 1)
    {
LABEL_25:
      sub_3A140(a2);
      return;
    }

LABEL_21:
    sub_39DE8(a2);
    return;
  }

  if (a1 != 2)
  {
    return;
  }

  v20 = a2;
  v21 = [a2 timeRead];
  v22 = sub_388C8(&qword_127B20, &unk_F74E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v72 - v23;
  if (!v21)
  {
    v61 = v75;
    v62 = sub_F030C();
    v63 = *(v62 - 8);
    (*(v63 + 56))(v24, 1, 1, v62);
    v64 = sub_372B0(v24, &qword_127B20, &unk_F74E0);
    __chkstk_darwin(v64);
    v66 = &v72 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F02FC();
    v67 = sub_F028C();
    [a2 setTimeRead:v67];

    v68 = [a2 guid];
    if (v68)
    {
      v69 = v68;
      v70 = sub_F028C();
      [v61 didReceiveMessageReadReceiptForMessageID:v69 date:v70 completionBlock:0];

      v71 = [v61 relayController];
      [v71 messageReadByRemote:v20];

      (*(v63 + 8))(v66, v62);
      return;
    }

    goto LABEL_32;
  }

  sub_F02CC();

  v25 = sub_F030C();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_372B0(v24, &qword_127B20, &unk_F74E0);
  v26 = Logger.rcs.unsafeMutableAddressor();
  v28 = v72;
  v27 = v73;
  v29 = v74;
  (*(v72 + 16))(v74, v26, v73);
  v30 = v20;
  v31 = sub_F06AC();
  v32 = sub_F0CCC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v78 = v34;
    *v33 = 136315138;
    v35 = [v30 guid];

    if (v35)
    {
      v36 = sub_F07EC();
      v38 = v37;

      v39 = sub_3E850(v36, v38, &v78);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v33 + 4) = v39;
      _os_log_impl(&dword_0, v31, v32, "Ignoring read disposition for message already read %s", v33, 0xCu);
      sub_1EDC(v34);

      (*(v28 + 8))(v74, v27);
      return;
    }

    goto LABEL_33;
  }

  (*(v28 + 8))(v29, v27);
}

uint64_t sub_3B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a5;
  v11 = sub_F06CC();
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  v7[6] = sub_F0AEC();
  v7[7] = sub_F0ADC();
  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_3B7A0;

  return sub_3A4AC(a5, a6, a7);
}

uint64_t sub_3B7A0()
{
  *(*v1 + 72) = v0;

  v3 = sub_F0A6C();
  if (v0)
  {
    v4 = sub_3B964;
  }

  else
  {
    v4 = sub_3B8FC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_3B8FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_3B964()
{
  v38 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v10 = 136315394;
    v12 = [v9 guid];
    if (!v12)
    {
      v33 = v0[2];

      __break(1u);
      return;
    }

    v13 = v12;
    v14 = v0[4];
    v15 = v0[2];
    v34 = v0[3];
    v35 = v0[5];

    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v37);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v10 + 4) = v19;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v27;
    *v11 = v27;
    _os_log_impl(&dword_0, v7, v8, "Error handling RCS failure to decrypt case for message %s: %@", v10, 0x16u);
    sub_372B0(v11, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v36);

    (*(v14 + 8))(v35, v34);
  }

  else
  {
    v29 = v0[4];
    v28 = v0[5];
    v31 = v0[2];
    v30 = v0[3];

    (*(v29 + 8))(v28, v30);
  }

  v32 = v0[1];

  v32();
}

void sub_3BC04(unint64_t a1, void *a2, void *a3, char *a4)
{
  v241 = a4;
  v234 = a2;
  v242 = sub_F06CC();
  v236 = *(v242 - 8);
  __chkstk_darwin(v242);
  v237 = &v229 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v229 - v8;
  __chkstk_darwin(v10);
  v235 = &v229 - v11;
  __chkstk_darwin(v12);
  v14 = (&v229 - v13);
  v15 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v229 - v17;
  if (qword_127A48 != -1)
  {
LABEL_57:
    swift_once();
  }

  v19 = sub_3C96C(v15, qword_127CD0);
  v20 = v16 + 16;
  v21 = *(v16 + 16);
  v21(v18, v19, v15);
  sub_F044C();
  v22 = *(v16 + 8);
  v22(v18, v15);
  if (LOBYTE(v247.scheme._countAndFlagsBits) == 1)
  {
    v23 = Logger.rcs.unsafeMutableAddressor();
    v24 = v236;
    v25 = v242;
    (*(v236 + 16))(v14, v23, v242);
    v26 = sub_F06AC();
    v27 = sub_F0CCC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Dropping disposition due to override", v28, 2u);
    }

    (*(v24 + 8))(v14, v25);
    return;
  }

  if ([a3 style] == 45 || a1 == 4 || (a1 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    goto LABEL_12;
  }

  if (qword_1279E0 != -1)
  {
    swift_once();
  }

  v29 = sub_3C96C(v15, qword_127B98);
  v21(v18, v29, v15);
  sub_F044C();
  v22(v18, v15);
  if (LOBYTE(v247.scheme._countAndFlagsBits) == 1)
  {
LABEL_12:
    v246 = &_swiftEmptySetSingleton;
    v30 = [a3 participants];
    if (!v30)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      sub_3CAB8(v241);

      __break(1u);
      return;
    }

    v31 = v30;
    sub_3CA6C();
    v18 = sub_F09FC();

    v39 = v18;
    v9 = v241;
    if (v18 >> 62)
    {
LABEL_59:
      v157 = v39;
      v158 = sub_F10DC();
      v39 = v157;
      v16 = v158;
      if (v158)
      {
LABEL_15:
        v15 = 0;
        v240 = v39 & 0xC000000000000001;
        v233 = v39 & 0xFFFFFFFFFFFFFF8;
        v232 = (v236 + 16);
        v231 = (v236 + 8);
        *&v38 = 136315138;
        v229 = v38;
        v239 = v39;
        v238 = v16;
        while (1)
        {
          if (v240)
          {
            v40 = sub_F0FCC();
          }

          else
          {
            if (v15 >= *(v233 + 16))
            {
              __break(1u);
              goto LABEL_59;
            }

            v40 = *(v39 + 8 * v15 + 32);
          }

          a3 = v40;
          a1 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_57;
          }

          v41 = [v40 ID];
          if (v41)
          {
            v42 = v41;
            v43 = sub_F07EC();
            v14 = v44;

            if (v43 == *(v9 + 2) && v14 == *(v9 + 3))
            {
LABEL_50:

              v142 = v239;
              goto LABEL_54;
            }

            v46 = sub_F122C();
            v14, v47, v48, v49, v50, v51, v52, v53;
            if (v46)
            {

LABEL_52:
              v14 = v239;
              goto LABEL_55;
            }
          }

          v54 = [a3 ID];
          if (!v54)
          {
            break;
          }

          v55 = v54;
          v20 = sub_F07EC();
          v57 = v56;

          sub_82EDC(&v244, v20, v57);
          v245, v58, v59, v60, v61, v62, v63, v64;
          v18 = v9;
          RCSHandle.chatBotId.getter();
          if (v65)
          {
            v66 = v65;
            v67 = sub_F07BC();
            v66, v68, v69, v70, v71, v72, v73, v74;
            v20 = [v67 __im_stripSip];

            v75 = sub_F07EC();
            v14 = v76;

            v77 = [a3 ID];
            if (v77)
            {
              v78 = v77;
              v79 = sub_F07EC();
              v81 = v80;

              if (v79 == v75 && v81 == v14)
              {

                v239, v143, v144, v145, v146, v147, v148, v149;
                v142 = v81;
LABEL_54:
                v142, v135, v136, v137, v138, v139, v140, v141;
LABEL_55:
                v14, v121, v32, v33, v34, v35, v36, v37;
                v246, v150, v151, v152, v153, v154, v155, v156;
                return;
              }

              v20 = sub_F122C();
              v81, v82, v83, v84, v85, v86, v87, v88;
              if (v20)
              {
                goto LABEL_50;
              }
            }

            v18 = &v246;
            sub_82EDC(&v244, v75, v14);
            v245, v89, v90, v91, v92, v93, v94, v95;
          }

          v96 = [a3 personCentricID];
          if (v96)
          {
            v97 = v96;
            v20 = sub_F07EC();
            v99 = v98;

            v18 = &v246;
            sub_82EDC(&v244, v20, v99);
            v245, v100, v101, v102, v103, v104, v105, v106;
            v107._countAndFlagsBits = v20;
            v107._object = v99;
            RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v247, v107, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
            if (v108)
            {
              v109 = Logger.rcs.unsafeMutableAddressor();
              v110 = v237;
              v20 = v242;
              (*v232)(v237, v109, v242);
              v111 = a3;
              v18 = sub_F06AC();
              v14 = sub_F0CDC();

              if (os_log_type_enabled(v18, v14))
              {
                v230 = v108;
                v112 = swift_slowAlloc();
                v113 = swift_slowAlloc();
                v244 = v113;
                *v112 = v229;
                v114 = [v111 personCentricID];
                if (v114)
                {
                  v115 = v114;
                  v116 = sub_F07EC();
                  v118 = v117;
                }

                else
                {
                  v118 = 0xE500000000000000;
                  v116 = 0x3E6C696E3CLL;
                }

                v20 = sub_3E850(v116, v118, &v244);
                v118, v122, v123, v124, v125, v126, v127, v128;
                *(v112 + 4) = v20;
                _os_log_impl(&dword_0, v18, v14, "Failed to parse person centric ID into RCSHandle, likely not a chatbot: %s", v112, 0xCu);
                sub_1EDC(v113);

                (*v231)(v237, v242);
              }

              else
              {

                (*v231)(v110, v20);
              }

              v9 = v241;
            }

            else
            {
              v9 = v241;
              static RCSHandle.== infix(_:_:)(&v247.scheme._countAndFlagsBits, v241);
              v120 = v119;

              sub_3CAB8(&v247);
              if (v120)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
          }

          ++v15;
          v16 = v238;
          v39 = v239;
          if (a1 == v238)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      v16 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_60:
    v39, v39, v32, v33, v34, v35, v36, v37;
    v159 = Logger.rcs.unsafeMutableAddressor();
    v160 = v236;
    v161 = v235;
    v162 = v242;
    (*(v236 + 16))(v235, v159, v242);
    v163 = v246;
    v20 = v234;
    sub_38910(v9, &v244);

    v164 = v9;
    v165 = sub_F06AC();
    v166 = sub_F0CEC();
    if (!os_log_type_enabled(v165, v166))
    {

      v163, v215, v216, v217, v218, v219, v220, v221;
      sub_3CAB8(v164);

      v163, v222, v223, v224, v225, v226, v227, v228;
      (*(v160 + 8))(v161, v162);
      return;
    }

    v167 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    v244 = v240;
    *v167 = 136315650;
    v168 = [v20 guid];
    v163, v169, v170, v171, v172, v173, v174, v175;
    if (v168)
    {
      sub_3CAB8(v241);

      v176 = sub_F07EC();
      v178 = v177;

      v179 = sub_3E850(v176, v178, &v244);
      v178, v180, v181, v182, v183, v184, v185, v186;
      *(v167 + 4) = v179;
      *(v167 + 12) = 2080;
      v187 = RCSHandle.rawValue.getter();
      v189 = v188;
      v190 = sub_3E850(v187, v188, &v244);
      v189, v191, v192, v193, v194, v195, v196, v197;
      *(v167 + 14) = v190;
      *(v167 + 22) = 2080;
      v243 = v163;
      sub_388C8(&qword_127B30, &qword_F2B28);
      sub_3CB0C();
      sub_3CBB8();
      v198 = sub_F097C();
      v200 = v199;
      v163, v199, v201, v202, v203, v204, v205, v206;
      v207 = sub_3E850(v198, v200, &v244);
      v200, v208, v209, v210, v211, v212, v213, v214;
      *(v167 + 24) = v207;
      _os_log_impl(&dword_0, v165, v166, "Dropping disposition notification for %s as it is from an unexpected sender %s - would allow from %s", v167, 0x20u);
      swift_arrayDestroy();

      (*(v160 + 8))(v161, v242);
      return;
    }

    goto LABEL_66;
  }

  v129 = Logger.rcs.unsafeMutableAddressor();
  v130 = v236;
  v131 = v242;
  (*(v236 + 16))(v9, v129, v242);
  v132 = sub_F06AC();
  v133 = sub_F0CEC();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_0, v132, v133, "Dropping disposition notification as it is not supported for this chat", v134, 2u);
  }

  (*(v130 + 8))(v9, v131);
}

uint64_t sub_3C898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_37C54;

  return sub_3B66C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3C96C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_3C9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3CA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3CA6C()
{
  result = qword_127F70;
  if (!qword_127F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_127F70);
  }

  return result;
}

unint64_t sub_3CB0C()
{
  result = qword_127B38;
  if (!qword_127B38)
  {
    sub_3CB70(&qword_127B30, &qword_F2B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B38);
  }

  return result;
}

uint64_t sub_3CB70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_3CBB8()
{
  result = qword_127B40;
  if (!qword_127B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B40);
  }

  return result;
}

uint64_t sub_3CC0C(uint64_t a1, RCSServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_3FBA0(a3, v32 - v10);
  v12 = sub_F0B1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_372B0(v11, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_F0A6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_F087C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_372B0(a3, &qword_127EB0, &unk_F2B30);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_372B0(a3, &qword_127EB0, &unk_F2B30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_3CEFC(uint64_t a1, RCSServiceSession *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_3FBA0(a3, v32 - v10);
  v12 = sub_F0B1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_372B0(v11, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_F0A6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_F087C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_372B0(a3, &qword_127EB0, &unk_F2B30);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_372B0(a3, &qword_127EB0, &unk_F2B30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

void RCSServiceSession.sendLazuliSpamReport(_:isBot:spamType:)(void *a1, char **a2, uint64_t a3)
{
  v233 = a3;
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v7 - 8);
  v234 = &v233 - v8;
  v240 = sub_F06CC();
  v9 = *(v240 - 8);
  __chkstk_darwin(v240);
  v11 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v235 = &v233 - v13;
  __chkstk_darwin(v14);
  v237 = &v233 - v15;
  __chkstk_darwin(v16);
  v236 = &v233 - v17;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v233 - v20;
  v22 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v23 = [a1 sender];
  if (!v23)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v24 = v23;
  v25 = sub_F07EC();
  v27 = v26;

  v28 = sub_ABD88(v25, v27, 0, 0, 0);
  v27, v29, v30, v31, v32, v33, v34, v35;
  if (!v28)
  {
    v40 = Logger.rcs.unsafeMutableAddressor();
    v41 = v9;
    v42 = v240;
    (*(v9 + 16))(v11, v40, v240);
    v43 = a1;
    v44 = sub_F06AC();
    v45 = sub_F0CEC();
    if (!os_log_type_enabled(v44, v45))
    {

      (*(v9 + 8))(v11, v42);
      return;
    }

    v46 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v242 = v4;
    *v46 = 136315138;
    v47 = [v43 guid];

    if (v47)
    {
      v48 = sub_F07EC();
      v50 = v49;

      v51 = sub_3E850(v48, v50, &v242);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v46 + 4) = v51;
      _os_log_impl(&dword_0, v44, v45, "Can't resolve a chat to report spam %s", v46, 0xCu);
      sub_1EDC(v4);

      (*(v41 + 8))(v11, v240);
      return;
    }

    goto LABEL_45;
  }

  v239 = v28;
  v36 = [v239 chatIdentifier];
  if (v36)
  {
    v37 = v36;
    v238 = sub_F07EC();
    v39 = v38;
  }

  else
  {
    v238 = 0;
    v39 = 0xE000000000000000;
  }

  v59 = [a1 sender];
  if (v59)
  {
    v67 = v59;
    v68 = sub_F07EC();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0xE000000000000000;
  }

  v71 = v9;
  v22 = a2;
  v72 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v72 = v238 & 0xFFFFFFFFFFFFLL;
  }

  if (!v72)
  {
    v39, v60, v61, v62, v63, v64, v65, v66;
    v70, v123, v124, v125, v126, v127, v128, v129;
    v130 = Logger.rcs.unsafeMutableAddressor();
    v131 = v240;
    (*(v9 + 16))(v21, v130, v240);
    v132 = a1;
    v133 = sub_F06AC();
    v134 = sub_F0CEC();
    if (!os_log_type_enabled(v133, v134))
    {

      v196 = v239;
      v121 = *(v9 + 8);
      v122 = v21;
      goto LABEL_41;
    }

    v135 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v242 = v4;
    *v135 = 136315138;
    v136 = [v132 guid];

    if (v136)
    {
      v137 = sub_F07EC();
      v139 = v138;

      v140 = sub_3E850(v137, v139, &v242);
      v139, v141, v142, v143, v144, v145, v146, v147;
      *(v135 + 4) = v140;
      _os_log_impl(&dword_0, v133, v134, "Can't report spam %s with empty chatIdentifier", v135, 0xCu);
      sub_1EDC(v4);

      v148 = v239;
      v121 = *(v71 + 8);
      v122 = v21;
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  v73 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v73 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {
    v39, v60, v61, v62, v63, v64, v65, v66;
    v70, v149, v150, v151, v152, v153, v154, v155;
    v156 = Logger.rcs.unsafeMutableAddressor();
    v157 = v236;
    v131 = v240;
    (*(v9 + 16))(v236, v156, v240);
    v158 = a1;
    v159 = sub_F06AC();
    v160 = sub_F0CEC();
    if (!os_log_type_enabled(v159, v160))
    {

      v197 = v239;
      v121 = *(v9 + 8);
      v122 = v157;
      goto LABEL_41;
    }

    v161 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v242 = v4;
    *v161 = 136315138;
    v162 = [v158 guid];

    if (v162)
    {
      v163 = sub_F07EC();
      v165 = v164;

      v166 = sub_3E850(v163, v165, &v242);
      v165, v167, v168, v169, v170, v171, v172, v173;
      *(v161 + 4) = v166;
      _os_log_impl(&dword_0, v159, v160, "Can't report spam %s with empty destination URI", v161, 0xCu);
      sub_1EDC(v4);

      v174 = v239;
      v121 = *(v71 + 8);
      v122 = v157;
      goto LABEL_39;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_55CFC(v239, a1);
  v82 = v81;
  if ((v74 & 1) == 0)
  {
    v175 = objc_opt_self();
    v176 = v82;
    v177 = [v175 sharedManager];
    v236 = v176;
    LOBYTE(v176) = [v177 networkSupportsSpamReportingForContext:v176 isChatBot:v22 & 1];
    v237 = v82;
    sub_3FA88(v82, 0);

    if (v176)
    {
      v185 = sub_3F404(v68, v70, v22 & 1, a1, v233);
      v186 = v234;
      sub_F0AFC();
      v187 = sub_F0B1C();
      (*(*(v187 - 8) + 56))(v186, 0, 1, v187);
      sub_F0AEC();
      v188 = a1;
      v189 = v237;
      sub_3FA94(v237, 0);
      v190 = v185;
      v191 = v3;
      v192 = sub_F0ADC();
      v193 = swift_allocObject();
      v193[2] = v192;
      v193[3] = &protocol witness table for MainActor;
      v194 = v238;
      v193[4] = v191;
      v193[5] = v194;
      v193[6] = v39;
      v193[7] = v68;
      v193[8] = v70;
      v193[9] = v190;
      v193[10] = v236;
      v193[11] = v188;
      sub_3CC0C(0, 0, v186, &unk_F2B48, v193);
      sub_3FA88(v189, 0);

      v195 = v239;
      return;
    }

    v200 = v236;
    v39, v178, v179, v180, v181, v182, v183, v184;
    v70, v201, v202, v203, v204, v205, v206, v207;
    v208 = Logger.rcs.unsafeMutableAddressor();
    v209 = v9;
    v210 = *(v9 + 16);
    v211 = v235;
    v131 = v240;
    v210(v235, v208, v240);
    v22 = a1;
    v212 = v237;
    sub_3FA94(v237, 0);
    v213 = sub_F06AC();
    v214 = sub_F0CEC();
    if (os_log_type_enabled(v213, v214))
    {
      v4 = v212;
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v242 = v238;
      *v215 = 136315394;
      v217 = [v22 guid];
      if (!v217)
      {
LABEL_49:
        sub_3FA88(v4, 0);

        __break(1u);
        return;
      }

      v218 = v217;
      sub_3FA88(v4, 0);

      v219 = sub_F07EC();
      v221 = v220;

      v222 = sub_3E850(v219, v221, &v242);
      v221, v223, v224, v225, v226, v227, v228, v229;
      *(v215 + 4) = v222;
      *(v215 + 12) = 2112;
      *(v215 + 14) = v200;
      *v216 = v4;
      v230 = v200;
      _os_log_impl(&dword_0, v213, v214, "Can't report spam %s with context %@", v215, 0x16u);
      sub_372B0(v216, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v238);

      v231 = v239;
      sub_3FA88(v4, 0);
      v121 = *(v209 + 8);
      v122 = v235;
LABEL_39:
      v199 = v240;
      goto LABEL_42;
    }

    v232 = v239;
    sub_3FA88(v212, 0);
    sub_3FA88(v212, 0);

    v121 = *(v209 + 8);
    v122 = v211;
LABEL_41:
    v199 = v131;
    goto LABEL_42;
  }

  v39, v74, v75, v76, v77, v78, v79, v80;
  v70, v83, v84, v85, v86, v87, v88, v89;
  v90 = Logger.rcs.unsafeMutableAddressor();
  v91 = *(v9 + 16);
  v92 = v237;
  v93 = v240;
  v91(v237, v90, v240);
  v94 = a1;
  v95 = sub_F06AC();
  v96 = sub_F0CEC();
  if (!os_log_type_enabled(v95, v96))
  {

    v198 = v239;
    v121 = *(v71 + 8);
    v122 = v92;
    goto LABEL_35;
  }

  v97 = swift_slowAlloc();
  v4 = swift_slowAlloc();
  v242 = v4;
  *v97 = 136315394;
  v22 = [v94 guid];

  if (!v22)
  {
    goto LABEL_48;
  }

  v98 = sub_F07EC();
  v100 = v99;

  v101 = sub_3E850(v98, v100, &v242);
  v100, v102, v103, v104, v105, v106, v107, v108;
  *(v97 + 4) = v101;
  *(v97 + 12) = 2080;
  v241 = v82;
  type metadata accessor for FZErrorType(0);
  v109 = sub_F083C();
  v111 = v110;
  v112 = sub_3E850(v109, v110, &v242);
  v111, v113, v114, v115, v116, v117, v118, v119;
  *(v97 + 14) = v112;
  _os_log_impl(&dword_0, v95, v96, "No CTXPCContext found to report spam %s error %s", v97, 0x16u);
  swift_arrayDestroy();

  v120 = v239;
  v121 = *(v71 + 8);
  v122 = v237;
LABEL_35:
  v199 = v93;
LABEL_42:
  v121(v122, v199);
}

uint64_t sub_3DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v15;
  *(v8 + 64) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_F06CC();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  sub_F0AEC();
  *(v8 + 112) = sub_F0ADC();
  v11 = sub_F0A6C();
  *(v8 + 120) = v11;
  *(v8 + 128) = v10;

  return _swift_task_switch(sub_3DFCC, v11, v10);
}

void sub_3DFCC()
{
  v1 = *(*(v0[3] + OBJC_IVAR___RCSServiceSession_state) + 56);
  v0[17] = v1;
  if (v1)
  {
    v0[2] = v0[9];

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_3E0B0;
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];

    RCSSpamReportingController.reportSpam(to:forDestination:withSpamReportInfo:from:)(v7, v5, v6, v3, v4, (v0 + 2));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3E0B0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_3E250;
  }

  else
  {
    v5 = sub_3E1E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_3E1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_3E250()
{
  v38 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  swift_errorRetain();
  v7 = sub_F06AC();
  v8 = sub_F0CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v10 = 136315394;
    v12 = [v9 guid];
    if (!v12)
    {
      v33 = v0[10];

      __break(1u);
      return;
    }

    v13 = v12;
    v14 = v0[12];
    v15 = v0[10];
    v34 = v0[11];
    v35 = v0[13];

    v16 = sub_F07EC();
    v18 = v17;

    v19 = sub_3E850(v16, v18, &v37);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v10 + 4) = v19;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v27;
    *v11 = v27;
    _os_log_impl(&dword_0, v7, v8, "Could not report spam %s. Error: %@", v10, 0x16u);
    sub_372B0(v11, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v36);

    (*(v14 + 8))(v35, v34);
  }

  else
  {
    v29 = v0[12];
    v28 = v0[13];
    v31 = v0[10];
    v30 = v0[11];

    (*(v29 + 8))(v28, v30);
  }

  v32 = v0[1];

  v32();
}

uint64_t sub_3E590(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_3E5DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3E6D4;

  return v6(a1);
}

uint64_t sub_3E6D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_3E7F4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = v7;
  v9 = sub_3E850(v6, v7, a3);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a1;
  *v17 = v9;
  *a1 = v17 + 1;
}

unint64_t sub_3E850(uint64_t a1, RCSServiceSession *a2, uint64_t *a3)
{

  v6 = sub_3E91C(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_3FE38(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_1EDC(v18);
  return v14;
}

unint64_t sub_3E91C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3EA28(a5, a6);
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
    result = sub_F0FDC();
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

void *sub_3EA28(uint64_t a1, unint64_t a2)
{
  v3 = sub_3EA74(a1, a2);
  sub_3EBA4(&off_11DE28);
  return v3;
}

void *sub_3EA74(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_3EC90(v5, 0);
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

  result = sub_F0FDC();
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
        v10 = sub_F08DC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3EC90(v10, 0);
        result = sub_F0F8C();
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

void sub_3EBA4(RCSServiceSession *result)
{
  v2 = *result[1].IMDTelephonyServiceSession_opaque;
  v3 = *v1;
  v4 = *(*v1)[1].IMDTelephonyServiceSession_opaque;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3[1].state >> 1)
  {
    if (*result[1].IMDTelephonyServiceSession_opaque)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_3ED04(isUniquelyReferenced_nonNull_native, v26, &dword_0 + 1, v3, v11, v12, v13, v14);
  if (!*result[1].IMDTelephonyServiceSession_opaque)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3[1].IMDTelephonyServiceSession_opaque;
  if ((*v3[1].state >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2].IMDTelephonyServiceSession_opaque[v15], &result[2], v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3[1].IMDTelephonyServiceSession_opaque;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3[1].IMDTelephonyServiceSession_opaque = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_3EC90(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_388C8(&qword_127B78, &unk_F2BB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

RCSServiceSession *sub_3ED04(RCSServiceSession *result, int64_t a2, void *a3, RCSServiceSession *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_388C8(&qword_127B78, &unk_F2BB0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14[1].IMDTelephonyServiceSession_opaque = v12;
    *v14[1].state = 2 * v15 - 64;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = &v14[2];
  v17 = &a4[2];
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v12])
    {
      memmove(v16, v17, v12);
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    memcpy(v16, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

_BYTE **sub_3EDF8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_3EE08(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_3EE7C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_3EF70;

  return v5(v2 + 32);
}

uint64_t sub_3EF70()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_3F084(uint64_t a1, RCSServiceSession *a2, void *a3, uint64_t a4, RCSServiceSession *a5, uint64_t a6)
{
  v45 = a1;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v15, v11);

  v16 = a3;
  v17 = sub_F06AC();
  v18 = sub_F0CCC();
  a2, v19, v20, v21, v22, v23, v24, v25;
  if (os_log_type_enabled(v17, v18))
  {
    v26 = swift_slowAlloc();
    v42 = a6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v43 = a4;
    v29 = a5;
    v30 = v28;
    v46 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_3E850(v45, a2, &v46);
    *(v27 + 12) = 1024;
    *(v27 + 14) = [v16 isChatbot];

    _os_log_impl(&dword_0, v17, v18, "Reporting spam about destination: %s, isBot: %{BOOL}d", v27, 0x12u);
    sub_1EDC(v30);
    a5 = v29;
    a4 = v43;

    a6 = v42;
  }

  else
  {
  }

  (*(v12 + 8))(v14, v11);
  v31 = [objc_allocWithZone(CTLazuliDestination) init];
  v32 = sub_F07BC();
  [v31 setUri:v32];

  v33 = *(v44 + OBJC_IVAR___RCSServiceSession_state);
  v34 = *(v33 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v35 = v34;

  v36 = CTLazuliOperationID.init(id:)(a4, a5);
  v46 = 0;
  v37 = [v35 reportLazuliSpamWithContext:a6 destination:v31 spamReportInfo:v16 operationID:v36 error:&v46];

  if (v37)
  {
    v38 = v46;
  }

  else
  {
    v39 = v46;
    v40 = sub_F015C();

    swift_willThrow();
    if (*(v33 + 56))
    {

      RCSSpamReportingController.spamReportFailed(with:operationID:)(v40, a4, a5);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_3F404(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(CTLazuliMessageID) init];
  result = [a4 fallbackHash];
  v49 = a5;
  if (result || (result = [a4 guid]) != 0)
  {
    v10 = result;
    sub_F07EC();
    v12 = v11;

    v13 = sub_F07BC();
    v12, v14, v15, v16, v17, v18, v19, v20;
    [v8 setUuid:v13];

    v21 = [objc_allocWithZone(CTLazuliMessageIDList) init];
    v22 = v8;
    v23 = [v21 list];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v24 = sub_F09FC();

    sub_F09DC();
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_F0A1C();
    }

    sub_F0A3C();
    v25 = sub_F09EC();
    v24, v26, v27, v28, v29, v30, v31, v32;
    [v21 setList:v25];

    v33 = [objc_allocWithZone(CTLazuliSpamReportInformation) init];
    [v33 setIsChatbot:a3 & 1];
    v34 = sub_F07BC();
    [v33 setDestinationUri:v34];

    [v33 setMessageIDList:v21];
    v35 = [a4 body];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 string];

      if (!v37)
      {
        sub_F07EC();
        v39 = v38;
        v37 = sub_F07BC();
        v39, v40, v41, v42, v43, v44, v45, v46;
      }
    }

    else
    {
      v37 = 0;
    }

    [v33 setContent:{v37, v49}];

    if ((v50 - 1) > 3)
    {
      v47 = 0;
    }

    else
    {
      v47 = qword_F2BC0[v50 - 1];
    }

    [v33 setSpamType:v47];
    v48 = sub_F07BC();
    [v33 setFreeBodyText:v48];

    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3F738(uint64_t a1, RCSServiceSession *a2, uint64_t a3, uint64_t a4, RCSServiceSession *a5, uint64_t a6)
{
  v45 = a1;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v14, v15, v11);

  v16 = sub_F06AC();
  v17 = sub_F0CCC();
  a2, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v16, v17))
  {
    v25 = swift_slowAlloc();
    v42 = a4;
    v43 = a5;
    v26 = v25;
    v27 = a3;
    v28 = a6;
    v29 = swift_slowAlloc();
    v46 = v29;
    *v26 = 136315138;
    *(v26 + 4) = sub_3E850(v45, a2, &v46);
    _os_log_impl(&dword_0, v16, v17, "Reporting chatbot spam to %s", v26, 0xCu);
    sub_1EDC(v29);
    a6 = v28;
    a3 = v27;

    a4 = v42;
    a5 = v43;
  }

  (*(v12 + 8))(v14, v11);
  v30 = [objc_allocWithZone(CTLazuliDestination) init];
  v31 = sub_F07BC();
  [v30 setUri:v31];

  v32 = *(v44 + OBJC_IVAR___RCSServiceSession_state);
  v33 = *(v32 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v34 = v33;

  v35 = CTLazuliOperationID.init(id:)(a4, a5);
  v46 = 0;
  v36 = [v34 reportChatbotSpam:a6 forChatbot:v30 withSpamReportInfo:a3 andOperationID:v35 withError:&v46];

  if (v36)
  {
    v37 = v46;
  }

  else
  {
    v38 = a4;
    v39 = v46;
    v40 = sub_F015C();

    swift_willThrow();
    if (*(v32 + 56))
    {

      RCSSpamReportingController.spamReportFailed(with:operationID:)(v40, v38, a5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3FA88(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_3FA94(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_3FAA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_37C54;

  return sub_3DEBC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_3FBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EB0, &unk_F2B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3FC10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38B0C;

  return sub_3EE7C(a1, v4);
}

uint64_t sub_3FCC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_37C54;

  return sub_3EE7C(a1, v4);
}

uint64_t sub_3FD80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38B0C;

  return sub_3E5DC(a1, v4);
}

uint64_t sub_3FE38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_3FF00(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 24);
  if (*v4[1].IMDTelephonyServiceSession_opaque)
  {

    v8 = sub_51FEC(a1, a2);
    if (v9)
    {
      v16 = *(*v4[3].state + 8 * v8);
      v4, v17, v18, v19, v20, v21, v22, v23;
      v24 = [v16 fileTransferCapabilities];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 *a3];
        if (v26)
        {
          v27 = v26;
          if ([v26 longLongValue])
          {
            v28 = [v27 longLongValue];

            if ((v28 - 0x20000000000000) >> 54 != 1023)
            {
              __break(1u);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      v4, v9, v10, v11, v12, v13, v14, v15;
    }
  }
}

Swift::Int64 __swiftcall RCSServiceSession.maxSizePerAttachment(withCount:lastAddressedHandle:lastAddressedSIMID:)(Swift::Int32 withCount, Swift::String lastAddressedHandle, Swift::String_optional lastAddressedSIMID)
{
  if (!lastAddressedSIMID.value._object)
  {
    return 104857600;
  }

  sub_3FF00(lastAddressedSIMID.value._countAndFlagsBits, lastAddressedSIMID.value._object, &selRef_maxTransferSize);
  if (v4)
  {
    return 104857600;
  }

  return result;
}

uint64_t sub_400F0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v19[0] = *(v7 - 1);
      v19[1] = v8;

      v9 = a1(v19);
      v8, v10, v11, v12, v13, v14, v15, v16;
      if (v3)
      {
        break;
      }

      v17 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_4019C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_F06CC();
  __chkstk_darwin(v4);
  v5 = sub_724A4(a1);
  v6 = sub_407A8(v5, v2);

  return v6 & 1;
}

BOOL sub_403DC(void *a1)
{
  v2 = sub_F06CC();
  __chkstk_darwin(v2);
  v3 = sub_724A4(a1);
  v4 = sub_40D54(v3);

  return v4;
}

uint64_t sub_40614(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

id _sSo17RCSServiceSessionC3RCSE23isGroupMessagingEnabled3forSbSo7IMDChatC_tF_0(void *a1)
{
  v2 = [a1 lastAddressedLocalHandle];
  if (v2)
  {
    v3 = v2;
    sub_F07EC();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 lastAddressedSIMID];
  if (v6)
  {
    v7 = v6;
    sub_F07EC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() sharedManager];
  if (!v5)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = sub_F07BC();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = sub_F07BC();
LABEL_12:
  v13 = [v10 groupMessagingEnabledForPhoneNumber:v11 simID:v12];
  v9, v14, v15, v16, v17, v18, v19, v20;

  v5, v21, v22, v23, v24, v25, v26, v27;
  return v13;
}

id sub_407A8(RCSServiceSession *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v73 - v9;
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  v14 = sub_388C8(&qword_127B90, &qword_F2BE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v73 - v16);
  if (qword_127A68 != -1)
  {
LABEL_25:
    swift_once();
  }

  v18 = sub_3C96C(v14, qword_127D30);
  (*(v15 + 16))(v17, v18, v14);
  sub_F044C();
  v19 = *(v15 + 8);
  v15 += 8;
  v19(v17, v14);
  v17 = v80[0];
  if (*(v80[0] + 16))
  {
    v27 = [(RCSServiceSession *)a1 identity];
    if (v27)
    {
      v74 = v2;
      v75 = a1;
      v76 = v10;
      v73 = v13;
      v77 = v7;
      v78 = v5;
      v79 = v4;
      v28 = v27;
      v2 = [v27 impus];

      a1 = sub_F09FC();
      v14 = 0;
      state = a1[2].state;
      v13 = -*a1[1].IMDTelephonyServiceSession_opaque;
      v4 = -1;
      v5 = v80;
      do
      {
        if (v13 + v4 == -1)
        {
          a1, v30, v31, v32, v33, v34, v35, v36;
          v17, v57, v58, v59, v60, v61, v62, v63;
          v5 = v78;
          v4 = v79;
          v10 = v76;
          v7 = v77;
          a1 = v75;
          LOBYTE(v2) = v74;
          goto LABEL_12;
        }

        if (++v4 >= *a1[1].IMDTelephonyServiceSession_opaque)
        {
          __break(1u);
          goto LABEL_25;
        }

        v10 = &v73;
        v7 = (state + 2);
        v2 = *state;
        v80[0] = *(state - 1);
        v80[1] = v2;
        __chkstk_darwin(v29);
        *(&v73 - 2) = v80;

        v15 = sub_400F0(sub_40D38, (&v73 - 4), v17);
        v2, v38, v39, v40, v41, v42, v43, v44;
        state = v7;
      }

      while ((v15 & 1) == 0);
      a1, v30, v31, v32, v33, v34, v35, v36;
      v17, v45, v46, v47, v48, v49, v50, v51;
      v52 = Logger.rcs.unsafeMutableAddressor();
      v5 = v78;
      v4 = v79;
      v7 = v73;
      (v78[2])(v73, v52, v79);
      v53 = sub_F06AC();
      v54 = sub_F0CCC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_22;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Assuming we can't send read receipts due to user-default override";
      goto LABEL_21;
    }
  }

  v17, v20, v21, v22, v23, v24, v25, v26;
LABEL_12:
  if (v2 == 45)
  {
    v64 = [(RCSServiceSession *)a1 messagingCapabilities];
    if (!v64)
    {
      v65 = Logger.rcs.unsafeMutableAddressor();
      (v5[2])(v10, v65, v4);
      v66 = sub_F06AC();
      v67 = sub_F0CCC();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_0, v66, v67, "Assuming we can't send typing indicators as system configuration has no messaging capabilities", v68, 2u);
      }

      (v5[1])(v10, v4);
      return 0;
    }

LABEL_18:
    v69 = v64;
    v70 = [v64 supportsComposingIndicator];

    return v70;
  }

  v64 = [(RCSServiceSession *)a1 groupChatCapabilites];
  if (v64)
  {
    goto LABEL_18;
  }

  v72 = Logger.rcs.unsafeMutableAddressor();
  (v5[2])(v7, v72, v4);
  v53 = sub_F06AC();
  v54 = sub_F0CCC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Assuming we can't send typing indicators as system configuration has no group chat capabilities";
LABEL_21:
    _os_log_impl(&dword_0, v53, v54, v56, v55, 2u);
  }

LABEL_22:

  (v5[1])(v7, v4);
  return 0;
}

BOOL sub_40D54(uint64_t *a1)
{
  v2 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v83 = &v75 - v4;
  v5 = sub_F06CC();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  __chkstk_darwin(v12);
  v82 = (&v75 - v13);
  v14 = sub_388C8(&qword_127B90, &qword_F2BE0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v75 - v16);
  if (qword_127A60 != -1)
  {
LABEL_25:
    swift_once();
  }

  v18 = sub_3C96C(v14, qword_127D18);
  (*(v15 + 16))(v17, v18, v14);
  sub_F044C();
  v19 = *(v15 + 8);
  v15 += 8;
  v19(v17, v14);
  v17 = v84[0];
  if (*(v84[0] + 16))
  {
    v27 = [a1 identity];
    if (v27)
    {
      v75 = v3;
      v76 = v2;
      v77 = a1;
      v78 = v11;
      v79 = v8;
      v80 = v6;
      v81 = v5;
      v28 = v27;
      v8 = [v27 impus];

      v3 = sub_F09FC();
      v14 = 0;
      v37 = (v3 + 40);
      v2 = -*(v3 + 16);
      v6 = -1;
      v5 = v84;
      do
      {
        if (v2 + v6 == -1)
        {
          v3, v30, v31, v32, v33, v34, v35, v36;
          v17, v57, v58, v59, v60, v61, v62, v63;
          v6 = v80;
          v5 = v81;
          v11 = v78;
          v8 = v79;
          v2 = v76;
          a1 = v77;
          v3 = v75;
          goto LABEL_12;
        }

        if (++v6 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        a1 = &v75;
        v11 = (v37 + 2);
        v8 = *v37;
        v84[0] = *(v37 - 1);
        v84[1] = v8;
        __chkstk_darwin(v29);
        *(&v75 - 2) = v84;

        v15 = sub_400F0(sub_41990, (&v75 - 4), v17);
        v8, v38, v39, v40, v41, v42, v43, v44;
        v37 = v11;
      }

      while ((v15 & 1) == 0);
      v3, v30, v31, v32, v33, v34, v35, v36;
      v17, v45, v46, v47, v48, v49, v50, v51;
      v52 = Logger.rcs.unsafeMutableAddressor();
      v6 = v80;
      v5 = v81;
      v8 = v82;
      (*(v80 + 16))(v82, v52, v81);
      v53 = sub_F06AC();
      v54 = sub_F0CCC();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_23;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = "Assuming we can't send read receipts due to user-default override";
      goto LABEL_22;
    }
  }

  v17, v20, v21, v22, v23, v24, v25, v26;
LABEL_12:
  v64 = v83;
  if (qword_127AC0 != -1)
  {
    swift_once();
  }

  v65 = sub_3C96C(v2, qword_127E38);
  (*(v3 + 16))(v64, v65, v2);
  sub_F044C();
  (*(v3 + 8))(v64, v2);
  if (LOBYTE(v84[0]) != 1)
  {
    v71 = [a1 messagingCapabilities];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 notificationDisplay];

      return v73 == 0;
    }

    v74 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v74, v5);
    v53 = sub_F06AC();
    v54 = sub_F0CCC();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_23;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Assuming we can't send read receipts as system configuration has no messaging capabilities";
LABEL_22:
    _os_log_impl(&dword_0, v53, v54, v56, v55, 2u);

LABEL_23:

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  v66 = Logger.rcs.unsafeMutableAddressor();
  (*(v6 + 16))(v11, v66, v5);
  v67 = sub_F06AC();
  v68 = sub_F0CCC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_0, v67, v68, "Unconditionally allowing read receipts due to override", v69, 2u);
  }

  (*(v6 + 8))(v11, v5);
  return 1;
}

uint64_t sub_413E8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

void sub_41440(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 identity];
  if (v7)
  {
    v99 = v6;
    v8 = v7;
    v9 = [v7 impus];

    v10 = sub_F09FC();
    v19 = v10;
    v20 = *(v10 + 16);
    if (v20)
    {
      v21 = 0;
      v100 = (v3 + 8);
      v101 = (v3 + 16);
      v22 = v10 + 40;
      v95 = (v20 - 1);
      v103 = _swiftEmptyArrayStorage;
      *&v18 = 136315394;
      v97 = v18;
      v98 = v19;
      v102 = v20;
      state = v19[2].state;
      do
      {
        v23 = (v22 + 16 * v21);
        v24 = v21;
        v25 = v99;
        while (1)
        {
          if (v24 >= *v19[1].IMDTelephonyServiceSession_opaque)
          {
            __break(1u);
            goto LABEL_33;
          }

          v34 = *(v23 - 1);
          v33 = *v23;
          swift_bridgeObjectRetain_n();
          v35._countAndFlagsBits = v34;
          v35._object = v33;
          RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v106, v35, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          if (!v36)
          {
            break;
          }

          v104 = v24 + 1;
          v37 = Logger.rcs.unsafeMutableAddressor();
          (*v101)(v25, v37, v2);

          swift_errorRetain();
          v38 = sub_F06AC();
          v39 = sub_F0CFC();
          v33, v40, v41, v42, v43, v44, v45, v46;

          if (os_log_type_enabled(v38, v39))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v49 = v2;
            v50 = swift_slowAlloc();
            v105 = v50;
            *v47 = v97;
            *(v47 + 4) = sub_3E850(v34, v33, &v105);
            *(v47 + 12) = 2112;
            swift_errorRetain();
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v47 + 14) = v51;
            *v48 = v51;
            _os_log_impl(&dword_0, v38, v39, "failed to parse self-URI %s into RCSHandle: %@", v47, 0x16u);
            sub_389D8(v48);

            sub_1EDC(v50);
            v2 = v49;

            v19 = v98;
            v25 = v99;
          }

          else
          {
          }

          (*v100)(v25, v2);
          v33, v26, v27, v28, v29, v30, v31, v32;
          v23 += 2;
          v24 = v104;
          if (v102 == v104)
          {
            goto LABEL_19;
          }
        }

        countAndFlagsBits = v106.id._countAndFlagsBits;
        object = v106.id._object;

        sub_3CAB8(&v106);
        v33, v54, v55, v56, v57, v58, v59, v60;
        v21 = v24 + 1;
        v61 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_6E2D8(0, *v103[1].IMDTelephonyServiceSession_opaque + 1, &dword_0 + 1, v103, v14, v15, v16, v17);
        }

        v22 = state;
        v63 = *v103[1].IMDTelephonyServiceSession_opaque;
        v62 = *v103[1].state;
        if (v63 >= v62 >> 1)
        {
          v103 = sub_6E2D8((v62 > 1), v63 + 1, &dword_0 + 1, v103, v14, v15, v16, v17);
        }

        v64 = v103;
        *v103[1].IMDTelephonyServiceSession_opaque = v63 + 1;
        v65 = &v64[v63];
        *v65[2].IMDTelephonyServiceSession_opaque = countAndFlagsBits;
        *v65[2].state = object;
        v2 = v61;
        v19 = v98;
      }

      while (v95 != v24);
    }

    else
    {
      v103 = _swiftEmptyArrayStorage;
    }

LABEL_19:
    v19, v11, v12, v13, v14, v15, v16, v17;
    v73 = v103;
    v74 = *v103[1].IMDTelephonyServiceSession_opaque;
    if (v74)
    {
      v75 = 0;
      v76 = v103[2].state;
      v102 = v74 - 1;
      v77 = _swiftEmptyArrayStorage;
      v104 = v103[2].state;
LABEL_21:
      v78 = &v76[16 * v75];
      v79 = v75;
      while (v79 < *v73[1].IMDTelephonyServiceSession_opaque)
      {
        v81 = *(v78 - 1);
        v80 = *v78;
        v75 = v79 + 1;

        v82 = sub_F07BC();
        IsPhoneNumber = IMStringIsPhoneNumber();

        if (IsPhoneNumber)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v77;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_6EB68(0, v77[2] + 1, 1);
            v77 = v105;
          }

          v76 = v104;
          v93 = v77[2];
          v92 = v77[3];
          if (v93 >= v92 >> 1)
          {
            sub_6EB68((v92 > 1), v93 + 1, 1);
            v77 = v105;
          }

          v77[2] = v93 + 1;
          v94 = &v77[2 * v93];
          v94[4] = v81;
          v94[5] = v80;
          v73 = v103;
          if (v102 != v79)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }

        v80, v84, v85, v86, v87, v88, v89, v90;
        v78 += 2;
        ++v79;
        v73 = v103;
        if (v74 == v75)
        {
          goto LABEL_31;
        }
      }

LABEL_33:
      __break(1u);
    }

    else
    {
LABEL_31:
      v73, v66, v67, v68, v69, v70, v71, v72;
    }
  }
}

uint64_t sub_419AC()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127B98);
  sub_3C96C(v3, qword_127B98);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_41AD4()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127BB0);
  sub_3C96C(v3, qword_127BB0);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  [objc_opt_self() isInternalCarryDevice];
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_41C18()
{
  v0 = sub_388C8(&qword_127E70, &qword_F2C08);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&qword_127E78, &qword_F2C10);
  sub_42800(v3, qword_127BC8);
  sub_3C96C(v3, qword_127BC8);
  v4 = sub_388C8(&unk_127E80, &qword_F2C18);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F049C();
}

uint64_t sub_41D44()
{
  v0 = sub_388C8(&qword_127E70, &qword_F2C08);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&qword_127E78, &qword_F2C10);
  sub_42800(v3, qword_127BE0);
  sub_3C96C(v3, qword_127BE0);
  v4 = sub_388C8(&unk_127E80, &qword_F2C18);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F049C();
}

uint64_t sub_41E6C()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127BF8);
  sub_3C96C(v3, qword_127BF8);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_41F94()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127C10);
  sub_3C96C(v3, qword_127C10);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42114(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v8, a2);
  sub_3C96C(v8, a2);
  v9 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42238()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127C58);
  sub_3C96C(v3, qword_127C58);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42360()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127C70);
  sub_3C96C(v3, qword_127C70);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42488()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127C88);
  sub_3C96C(v3, qword_127C88);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_425B0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127CA0);
  sub_3C96C(v3, qword_127CA0);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_426D8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127CB8);
  sub_3C96C(v3, qword_127CB8);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t *sub_42800(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_42864()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127CD0);
  sub_3C96C(v3, qword_127CD0);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_4298C()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127CE8);
  sub_3C96C(v3, qword_127CE8);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F047C();
}

uint64_t sub_42AB0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127D00);
  sub_3C96C(v3, qword_127D00);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F047C();
}

uint64_t sub_42BD4()
{
  v0 = sub_388C8(&qword_127E60, &qword_F2BF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&qword_127B90, &qword_F2BE0);
  sub_42800(v3, qword_127D18);
  sub_3C96C(v3, qword_127D18);
  v4 = sub_388C8(&qword_127E68, &qword_F2C00);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F046C();
  return sub_F045C();
}

uint64_t sub_42D0C()
{
  v0 = sub_388C8(&qword_127E60, &qword_F2BF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&qword_127B90, &qword_F2BE0);
  sub_42800(v3, qword_127D30);
  sub_3C96C(v3, qword_127D30);
  v4 = sub_388C8(&qword_127E68, &qword_F2C00);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F046C();
  return sub_F045C();
}

uint64_t sub_42E44()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127D48);
  sub_3C96C(v3, qword_127D48);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_F047C();
}

uint64_t sub_42F68()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127D60);
  sub_3C96C(v3, qword_127D60);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43090()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127D78);
  sub_3C96C(v3, qword_127D78);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_431B8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127D90);
  sub_3C96C(v3, qword_127D90);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_432E0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127DA8);
  sub_3C96C(v3, qword_127DA8);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43408()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127DC0);
  sub_3C96C(v3, qword_127DC0);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43530()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127DD8);
  sub_3C96C(v3, qword_127DD8);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43658()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127DF0);
  sub_3C96C(v3, qword_127DF0);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43780()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127E08);
  sub_3C96C(v3, qword_127E08);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_438A8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127E20);
  sub_3C96C(v3, qword_127E20);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_439D0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v3, qword_127E38);
  sub_3C96C(v3, qword_127E38);
  v4 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_F048C();
  return sub_F047C();
}

uint64_t CTLazuliCapabilitiesInformation.recipientUri.getter()
{
  v1 = [v0 recipient];
  v2 = [v1 extractedUri];

  v3 = sub_F07EC();
  v5 = v4;

  v5, v6, v7, v8, v9, v10, v11, v12;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = (v5 >> 56) & 0xF;
  }

  else
  {
    v13 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v14 = [v0 recipient];
  v15 = v14;
  v16 = &selRef_uri;
  if (v13)
  {
    v16 = &selRef_extractedUri;
  }

  v17 = [v14 *v16];

  v18 = sub_F07EC();
  return v18;
}

uint64_t sub_43D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 validUntil];
  if (v3)
  {
    v4 = v3;
    sub_F02CC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_F030C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t RCSHandle.scheme.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_43E44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_F030C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_43EB0(uint64_t a1, uint64_t a2)
{
  v77 = sub_F06CC();
  v2 = *(v77 - 8);
  __chkstk_darwin(v77);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v75 - v6;
  __chkstk_darwin(v8);
  v10 = &v75 - v9;
  __chkstk_darwin(v11);
  v13 = &v75 - v12;
  v14 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v75 - v16;
  if (qword_127A40 != -1)
  {
    swift_once();
  }

  v18 = sub_3C96C(v14, qword_127CB8);
  (*(v15 + 16))(v17, v18, v14);
  sub_F044C();
  (*(v15 + 8))(v17, v14);
  if (v78 == 1)
  {
    v19 = Logger.rcs.unsafeMutableAddressor();
    v20 = v77;
    (*(v2 + 16))(v13, v19, v77);
    v21 = sub_F06AC();
    v22 = sub_F0CCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Dropping send success due to override", v23, 2u);
    }

    (*(v2 + 8))(v13, v20);
  }

  else
  {
    v24 = objc_opt_self();
    v25 = [v24 sharedInstance];
    v26 = sub_F07BC();
    v27 = [v25 messageWithGUID:v26];

    if (v27)
    {
      if ([v27 isFromMe])
      {
        v28 = sub_F07BC();
        v29 = v76;
        [v76 _markMessageAsSent:v28];

        v30 = [v29 relayController];
        v31 = sub_F07BC();
        v32 = [v29 service];
        v33 = [v32 internalName];

        if (!v33)
        {
          sub_F07EC();
          v35 = v34;
          v33 = sub_F07BC();
          v35, v36, v37, v38, v39, v40, v41, v42;
        }

        v43 = [v29 service];
        v44 = [v43 internalName];

        if (!v44)
        {
          sub_F07EC();
          v46 = v45;
          v44 = sub_F07BC();
          v46, v47, v48, v49, v50, v51, v52, v53;
        }

        [v30 messageSent:v31 onService:v33 compatibilityService:v44];

        v54 = [v24 sharedInstance];
        v55 = [v54 chatForMessage:v27];

        if (v55)
        {
          v56 = [v55 style];
          v57 = [v55 chatIdentifier];
          if (v57)
          {
            v58 = v57;
            [v76 didSendMessage:v27 forChat:v57 style:v56];
          }

          else
          {
            __break(1u);
          }

          return;
        }

        v71 = Logger.rcs.unsafeMutableAddressor();
        v65 = v77;
        (*(v2 + 16))(v7, v71, v77);
        v72 = sub_F06AC();
        v73 = sub_F0CEC();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_0, v72, v73, "Ignoring message sent due to due to missing chat", v74, 2u);
        }

        else
        {
        }

        v69 = *(v2 + 8);
        v70 = v7;
      }

      else
      {
        v64 = Logger.rcs.unsafeMutableAddressor();
        v65 = v77;
        (*(v2 + 16))(v10, v64, v77);
        v66 = sub_F06AC();
        v67 = sub_F0CEC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_0, v66, v67, "Ignoring message sent for a message I didn't send", v68, 2u);
        }

        else
        {
        }

        v69 = *(v2 + 8);
        v70 = v10;
      }

      v69(v70, v65);
      return;
    }

    v59 = Logger.rcs.unsafeMutableAddressor();
    v60 = v77;
    (*(v2 + 16))(v4, v59, v77);
    v61 = sub_F06AC();
    v62 = sub_F0CEC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Ignoring message sent due to unknown message UUID", v63, 2u);
    }

    (*(v2 + 8))(v4, v60);
  }
}

void RCSServiceSession.systemConfigurationChanged(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_53040(0xD000000000000023, 0x80000000000FE230))
  {
    v10 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    v11 = a1;
    v12 = a2;
    v13 = sub_F06AC();
    v14 = sub_F0CCC();
    v92 = v12;

    if (os_log_type_enabled(v13, v14))
    {
      v91 = v3;
      v15 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v93 = v90;
      *v15 = 136446722;
      *(v15 + 4) = sub_3E850(0xD000000000000023, 0x80000000000FE230, &v93);
      *(v15 + 12) = 2080;
      v16 = [v11 labelID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_F07EC();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      v21 = sub_3E850(v18, v20, &v93);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      v29 = [v92 description];
      v30 = sub_F07EC();
      v32 = v31;

      v33 = sub_3E850(v30, v32, &v93);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v15 + 24) = v33;
      _os_log_impl(&dword_0, v13, v14, "%{public}s simID: %s configuration: %s", v15, 0x20u);
      swift_arrayDestroy();

      (*(v7 + 8))(v9, v6);
      v3 = v91;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v41 = [v11 labelID];
    if (v41)
    {
      v42 = v41;
      v43 = sub_F07EC();
      v45 = v44;

      v46 = *&v3[OBJC_IVAR___RCSServiceSession_state];
      v47 = *(v46 + 24);
      v48 = v92;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v47;
      sub_521E4(v48, v43, v45, isUniquelyReferenced_nonNull_native);
      v45, v50, v51, v52, v53, v54, v55, v56;
      v57 = *(v46 + 24);
      *(v46 + 24) = v93;
      v45, v58, v59, v60, v61, v62, v63, v64;
      v57, v65, v66, v67, v68, v69, v70, v71;
      v72 = [v3 account];
      v73 = sub_72DF0();
      v74 = sub_51844(v73);
      v73, v75, v76, v77, v78, v79, v80, v81;
      v82 = sub_F075C();
      v74, v83, v84, v85, v86, v87, v88, v89;
      [v72 writeAccountDefaults:v82];
    }
  }
}

void sub_44A08(uint64_t a1, uint64_t a2, RCSServiceSession *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_521E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_51FEC(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_76A24();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_37938(v16, v33);
      *v4 = v33;
    }
  }
}

uint64_t RCSServiceSession.messageReceived(_:with:ofType:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000001FLL, 0x80000000000FE260);
  if (result)
  {
    v13 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v11, v13, v8);
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = sub_F06AC();
    v18 = sub_F0CCC();

    v64 = v15;
    if (os_log_type_enabled(v17, v18))
    {
      v61 = v18;
      v63 = v4;
      v19 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v19 = 136446978;
      *(v19 + 4) = sub_3E850(0xD00000000000001FLL, 0x80000000000FE260, &v66);
      *(v19 + 12) = 2080;
      v62 = v14;
      v20 = [v14 labelID];
      if (v20)
      {
        v21 = v20;
        v22 = sub_F07EC();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v25 = sub_3E850(v22, v24, &v66);
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      v33 = [v64 uuid];
      v34 = sub_F07EC();
      v36 = v35;

      v37 = sub_3E850(v34, v36, &v66);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v45 = [v16 description];
      v46 = sub_F07EC();
      v48 = v47;

      v49 = sub_3E850(v46, v48, &v66);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v19 + 34) = v49;
      _os_log_impl(&dword_0, v17, v61, "%{public}s simID: %s id: %s type: %s", v19, 0x2Au);
      swift_arrayDestroy();

      result = (*(v9 + 8))(v11, v8);
      v14 = v62;
      v4 = v63;
    }

    else
    {

      result = (*(v9 + 8))(v11, v8);
    }

    v57 = *(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 136);
    if (v57)
    {
      v65 = v14;
      v66 = v64;
      v58 = *(*v57 + 136);

      v58(&v66, &v65);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void RCSServiceSession.groupComposingIndicator(_:fromGroup:from:with:withIndication:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  v150 = v11;
  v151 = v12;
  __chkstk_darwin(v11);
  v149 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v134 - v15;
  __chkstk_darwin(v16);
  v18 = &v134 - v17;
  v19 = [objc_opt_self() sharedFeatureFlags];
  v20 = [v19 isGroupTypingIndicatorsEnabled];

  if (v20 && (sub_53040(0xD00000000000003ELL, 0x80000000000FE280) & 1) != 0)
  {
    v145 = "messageReceived(_:with:ofType:)";
    v138 = v5;
    v21 = Logger.rcs.unsafeMutableAddressor();
    v22 = v150;
    v23 = *(v151 + 16);
    v142 = v21;
    v143 = v23;
    v144 = v151 + 16;
    (v23)(v18);
    v24 = v18;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = sub_F06AC();
    v31 = sub_F0CCC();
    v139 = v29;

    v32 = v25;
    v147 = v28;

    v140 = v27;
    v146 = v26;

    LODWORD(v141) = v31;
    v33 = os_log_type_enabled(v30, v31);
    v137 = v25;
    if (v33)
    {
      v34 = v24;
      v135 = v30;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *&v152 = v136;
      *v35 = 136447490;
      *(v35 + 4) = sub_3E850(0xD00000000000003ELL, (v145 | 0x8000000000000000), &v152);
      *(v35 + 12) = 2080;
      v37 = [v32 labelID];
      if (v37)
      {
        v38 = v37;
        v39 = sub_F07EC();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v45 = sub_3E850(v39, v41, &v152);
      v41, v46, v47, v48, v49, v50, v51, v52;
      *(v35 + 14) = v45;
      *(v35 + 22) = 2112;
      v44 = v146;
      v53 = [v146 remoteUri];
      *(v35 + 24) = v53;
      *(v35 + 32) = 2112;
      v54 = v140;
      *(v35 + 34) = v140;
      *v36 = v53;
      v36[1] = v54;
      *(v35 + 42) = 2080;
      v55 = v54;
      v56 = [v147 uuid];
      v57 = sub_F07EC();
      v59 = v58;

      v60 = sub_3E850(v57, v59, &v152);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v35 + 44) = v60;
      *(v35 + 52) = 2080;
      v68 = [v139 description];
      v69 = sub_F07EC();
      v71 = v70;

      v72 = sub_3E850(v69, v71, &v152);
      v71, v73, v74, v75, v76, v77, v78, v79;
      *(v35 + 54) = v72;
      v80 = v135;
      _os_log_impl(&dword_0, v135, v141, "%{public}s simID: %s fromGroup: %@ participant: %@ id: %s indication: %s", v35, 0x3Eu);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v42 = *(v151 + 8);
      v81 = v34;
      v43 = v150;
      v42(v81, v150);
    }

    else
    {

      v42 = *(v151 + 8);
      v42(v24, v22);
      v43 = v22;
      v44 = v146;
    }

    v82 = [v44 remoteUri];
    v146 = v42;
    v141 = v82;
    if (v82)
    {
      v83 = v82;
      v84 = [v44 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v85 = static NSUserDefaults.forceEncryption.getter();
      *(&v153 + 1) = &type metadata for CTRCSGroupIdentity;
      *&v154 = &off_11F358;
      *&v152 = v83;
      BYTE8(v152) = (v85 | v84) & 1;
      sub_3928(&v152, v161);
      sub_1F28(v161, &v169);
      RCSGroup.init(group:identity:)(v44, &v169, &v152);
      v166 = v156;
      v167 = *v157;
      v168 = *&v157[16];
      v162 = v152;
      v163 = v153;
      v164 = v154;
      v165 = v155;
      v86 = [v140 member];
      v87 = sub_F07EC();
      v89 = v88;

      v90._countAndFlagsBits = v87;
      v90._object = v89;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v169, v90, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (!v91)
      {
        v115 = *(&v163 + 1);
        v116 = v164;
        v117 = sub_373E8(&v162, *(&v163 + 1));
        sub_6F3C8(v117, v138, v115, v116);
        if (v118)
        {
          v119 = v118;
          v120 = [v147 originalId];
          if (v120)
          {
            v121 = v120;
          }

          else
          {
            v127 = *(&v163 + 1);
            v128 = v164;
            sub_373E8(&v162, *(&v163 + 1));
            v121 = (*(v128 + 24))(v127, v128) & 1;
          }

          sub_1F28(v161, &v153);
          BYTE9(v156) = 1;
          sub_1F28(v161, v160);
          *&v152 = v137;
          *(&v152 + 1) = v119;
          v129 = v147;
          *v157 = v147;
          *&v157[8] = v169.scheme;
          *&v157[24] = v169.id;
          v158[0] = *&v169.attributes._rawValue;
          *(v158 + 9) = *(&v169.alternateHandle + 1);
          v130 = v139;
          v159 = v139;
          v160[5] = v121;
          v131 = v137;
          v132 = v129;
          v133 = v130;
          sub_45A7C(&v152);
          sub_53DAC(&v152);
        }

        else
        {
          v122 = v42;
          sub_3CAB8(&v169);
          v123 = v148;
          v143(v148, v142, v43);
          v124 = sub_F06AC();
          v125 = sub_F0CFC();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&dword_0, v124, v125, "Failed to find an group message chat to process typing indicator in.", v126, 2u);
          }

          v122(v123, v43);
        }

        sub_1EDC(v161);
        goto LABEL_19;
      }

      v92 = 1;
    }

    else
    {
      sub_53D04();
      swift_allocError();
      swift_willThrow();
      v92 = 0;
    }

    v93 = v149;
    v143(v149, v142, v43);
    v94 = v147;
    swift_errorRetain();
    v95 = sub_F06AC();
    v96 = sub_F0CFC();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v152 = v148;
      *v97 = 136446722;
      *(v97 + 4) = sub_3E850(0xD00000000000003ELL, (v145 | 0x8000000000000000), &v152);
      *(v97 + 12) = 2080;
      v99 = v92;
      v100 = [v94 uuid];
      v101 = sub_F07EC();
      v103 = v102;

      v104 = sub_3E850(v101, v103, &v152);
      v103, v105, v106, v107, v108, v109, v110, v111;
      *(v97 + 14) = v104;
      v92 = v99;
      *(v97 + 22) = 2112;
      swift_errorRetain();
      v112 = _swift_stdlib_bridgeErrorToNSError();
      *(v97 + 24) = v112;
      *v98 = v112;
      _os_log_impl(&dword_0, v95, v96, "%{public}s dropping message %s because I do not understand the group identity or from handle: %@", v97, 0x20u);
      sub_372B0(v98, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v113 = v150;
      v114 = v149;
    }

    else
    {

      v114 = v93;
      v113 = v43;
    }

    v146(v114, v113);
    if (v141)
    {
      sub_1EDC(v161);
    }

    if (v92)
    {
LABEL_19:
      sub_53D58(&v162);
    }
  }
}

uint64_t sub_45A7C(uint64_t a1)
{
  v3 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  result = sub_53040(0xD000000000000020, 0x80000000000FE930);
  if (result)
  {
    sub_F0AFC();
    v7 = sub_F0B1C();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    sub_550D0(a1, v17);
    sub_F0AEC();
    v8 = v1;
    v9 = sub_F0ADC();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = &protocol witness table for MainActor;
    v11 = v17[11];
    *(v10 + 192) = v17[10];
    *(v10 + 208) = v11;
    *(v10 + 224) = v17[12];
    v12 = v17[7];
    *(v10 + 128) = v17[6];
    *(v10 + 144) = v12;
    v13 = v17[9];
    *(v10 + 160) = v17[8];
    *(v10 + 176) = v13;
    v14 = v17[3];
    *(v10 + 64) = v17[2];
    *(v10 + 80) = v14;
    v15 = v17[5];
    *(v10 + 96) = v17[4];
    *(v10 + 112) = v15;
    v16 = v17[1];
    *(v10 + 32) = v17[0];
    *(v10 + 48) = v16;
    *(v10 + 240) = v8;
    sub_3CC0C(0, 0, v5, &unk_F2ED0, v10);
  }

  return result;
}

uint64_t RCSServiceSession.composingIndicator(_:from:with:withIndication:with:)(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(char *, uint64_t))
{
  v139 = a5;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v138 = &v127 - v15;
  __chkstk_darwin(v16);
  v140 = &v127 - v17;
  __chkstk_darwin(v18);
  v20 = &v127 - v19;
  v142 = "oup:from:with:withIndication:)";
  result = sub_53040(0xD000000000000034, 0x80000000000FE2C0);
  if (result)
  {
    v137 = v5;
    v130 = v13;
    v22 = Logger.rcs.unsafeMutableAddressor();
    v23 = *(v11 + 16);
    v134 = v22;
    v135 = v23;
    v136 = v11 + 16;
    (v23)(v20);
    v24 = v20;
    v25 = v11;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = sub_F06AC();
    v31 = sub_F0CCC();
    v133 = v29;

    v141 = v28;
    v32 = v26;

    if (os_log_type_enabled(v30, v31))
    {
      v128 = v24;
      v131 = v25;
      v132 = v10;
      v33 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v33 = 136447234;
      *(v33 + 4) = sub_3E850(0xD000000000000034, (v142 | 0x8000000000000000), v144);
      *(v33 + 12) = 2080;
      v129 = v32;
      v34 = [v32 labelID];
      if (v34)
      {
        v35 = v34;
        v36 = sub_F07EC();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0xE000000000000000;
      }

      v41 = sub_3E850(v36, v38, v144);
      v38, v42, v43, v44, v45, v46, v47, v48;
      *(v33 + 14) = v41;
      *(v33 + 22) = 2080;
      v49 = [v27 uri];
      v50 = sub_F07EC();
      v52 = v51;

      v53 = sub_3E850(v50, v52, v144);
      v52, v54, v55, v56, v57, v58, v59, v60;
      *(v33 + 24) = v53;
      *(v33 + 32) = 2080;
      v61 = [v141 uuid];
      v62 = sub_F07EC();
      v64 = v63;

      v65 = sub_3E850(v62, v64, v144);
      v64, v66, v67, v68, v69, v70, v71, v72;
      *(v33 + 34) = v65;
      *(v33 + 42) = 2080;
      v73 = [v133 description];
      v74 = sub_F07EC();
      v76 = v75;

      v77 = sub_3E850(v74, v76, v144);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v33 + 44) = v77;
      _os_log_impl(&dword_0, v30, v31, "%{public}s simID: %s from: %s id: %s indication: %s", v33, 0x34u);
      swift_arrayDestroy();

      v40 = v132;
      v39 = *(v131 + 8);
      v39(v128, v132);
      v32 = v129;
    }

    else
    {

      v39 = *(v25 + 8);
      v39(v24, v10);
      v40 = v10;
    }

    RCSHandle.init(destination:)(v27, &v158);
    if (!v160[24])
    {
      goto LABEL_13;
    }

    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v86 = result;
    v87 = [result isRBMEnabled];

    if ((v87 & 1) == 0)
    {
      v139 = v39;
      sub_3CAB8(&v158);
      v105 = v140;
      v135(v140, v134, v40);
      v106 = v141;
      v107 = sub_F06AC();
      v108 = sub_F0CFC();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v144[0] = swift_slowAlloc();
        *v109 = 136446466;
        *(v109 + 4) = sub_3E850(0xD000000000000034, (v142 | 0x8000000000000000), v144);
        *(v109 + 12) = 2080;
        v110 = [v106 uuid];
        v111 = sub_F07EC();
        v113 = v112;

        v114 = sub_3E850(v111, v113, v144);
        v113, v115, v116, v117, v118, v119, v120, v121;
        *(v109 + 14) = v114;
        _os_log_impl(&dword_0, v107, v108, "%{public}s dropping message %s because RBM is disabled in Settings", v109, 0x16u);
        swift_arrayDestroy();

        v122 = v140;
      }

      else
      {

        v122 = v105;
      }

      return v139(v122, v40);
    }

    else
    {
LABEL_13:
      __chkstk_darwin(v85);
      *(&v127 - 2) = v32;
      RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, &v161);
      v88 = v162;
      v89 = v163;

      sub_3CAB8(&v161);
      v90 = sub_ABD88(v88, v89, 0, 0, 0);
      v89, v91, v92, v93, v94, v95, v96, v97;
      if (v90)
      {
        v98 = v141;
        v99 = [v141 originalId];
        v100 = v139 != 0;
        if (v99)
        {
          v100 = v99;
        }

        v145 = v158;
        v146 = v159;
        *v147 = *v160;
        *&v147[9] = *&v160[9];
        v148 = 0;
        v154 = 0u;
        v155 = 0u;
        v144[0] = v32;
        v144[1] = v90;
        v150 = v158;
        v151 = v159;
        v152[0] = *v160;
        *(v152 + 9) = *&v160[9];
        v149 = v98;
        v101 = v133;
        v153 = v133;
        v156 = 0;
        v157 = v100;
        v102 = v32;
        v103 = v98;
        v104 = v101;
        sub_38910(&v158, &v143);
        sub_45A7C(v144);
        return sub_53DAC(v144);
      }

      else
      {
        sub_3CAB8(&v158);
        v123 = v138;
        v135(v138, v134, v40);
        v124 = sub_F06AC();
        v125 = sub_F0CFC();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_0, v124, v125, "Failed to find an instant message chat to process typing indicator in", v126, 2u);
        }

        return v39(v123, v40);
      }
    }
  }

  return result;
}

uint64_t sub_467EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[128] = a5;
  v5[127] = a4;
  v6 = sub_F06CC();
  v5[129] = v6;
  v5[130] = *(v6 - 8);
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  sub_388C8(&unk_127FA0, &qword_F34C0);
  v5[133] = swift_task_alloc();
  type metadata accessor for RCSMessage(0);
  v5[134] = swift_task_alloc();
  sub_F0AEC();
  v5[135] = sub_F0ADC();
  v8 = sub_F0A6C();
  v5[136] = v8;
  v5[137] = v7;

  return _swift_task_switch(sub_46958, v8, v7);
}

id sub_46958()
{
  v1 = **(v0 + 1016);
  v2 = [v1 phoneNumber];
  if (v2)
  {
    v3 = v2;
    v4 = sub_F07EC();
    v6 = v5;

    v7 = sub_53E04(_swiftEmptyArrayStorage);
    v8._countAndFlagsBits = 7103860;
    v8._object = 0xE300000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v6;
    RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)((v0 + 752), v8, v9, v7, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    *(swift_task_alloc() + 16) = v1;
    RCSHandle.canonicalizedHandle(for:)(sub_55244, (v0 + 688));
    sub_3CAB8(v0 + 752);

    v10 = *(v0 + 704);
    v11 = *(v0 + 712);

    sub_3CAB8(v0 + 688);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *(v0 + 1112) = v11;
  *(v0 + 1104) = v10;
  v12 = [v1 labelID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_F07EC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v0 + 1128) = v16;
  *(v0 + 1120) = v14;
  v17 = *(v0 + 1024);
  v18 = *(*(v0 + 1016) + 152);
  *(v0 + 1136) = v18;
  result = [v18 active];
  v20 = *(v17 + OBJC_IVAR___RCSServiceSession_state);
  *(v0 + 1144) = v20;
  v21 = *(v20 + 112);
  *(v0 + 1152) = v21;
  if (result)
  {
    if (v21)
    {
      v45 = v10;
      v22 = *(v0 + 1016);
      v23 = *(v22 + 104);
      v24 = *(v22 + 120);
      v25 = *(v22 + 88);
      *(v0 + 665) = *(v22 + 129);
      *(v0 + 640) = v23;
      *(v0 + 656) = v24;
      *(v0 + 624) = v25;
      v26 = *(v22 + 8);

      result = [v26 guid];
      if (result)
      {
        v27 = result;
        v28 = *(v0 + 1016);
        v29 = sub_F07EC();
        v31 = v30;

        *(v0 + 1160) = v31;
        v32 = *(v28 + 200);
        v44 = (*(*v21 + 192) + **(*v21 + 192));
        v33 = swift_task_alloc();
        *(v0 + 1168) = v33;
        *v33 = v0;
        v33[1] = sub_46DF4;

        return v44(v0 + 624, v29, v31, v32, v45, v11, v14, v16);
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v21)
  {
    goto LABEL_19;
  }

  v34 = *(v0 + 1016);
  v35 = *(v34 + 104);
  v36 = *(v34 + 120);
  v37 = *(v34 + 88);
  *(v0 + 601) = *(v34 + 129);
  *(v0 + 576) = v35;
  *(v0 + 592) = v36;
  *(v0 + 560) = v37;
  v38 = *(v34 + 8);

  result = [v38 guid];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = sub_F07EC();
  v42 = v41;

  *(v0 + 1192) = v42;
  v46 = (*(*v21 + 176) + **(*v21 + 176));
  v43 = swift_task_alloc();
  *(v0 + 1200) = v43;
  *v43 = v0;
  v43[1] = sub_47278;

  return v46(v0 + 560, v40, v42);
}

uint64_t sub_46DF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1160);
  *(v4 + 1176) = a1;
  *(v4 + 1184) = a2;

  v5, v6, v7, v8, v9, v10, v11, v12;

  v13 = *(v3 + 1096);
  v14 = *(v3 + 1088);

  return _swift_task_switch(sub_46F60, v14, v13);
}

uint64_t sub_46F60()
{
  v42 = *(v0 + 1176);
  v43 = *(v0 + 1184);
  v44 = *(v0 + 1144);
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1112);
  v40 = *(v0 + 1104);
  v41 = *(v0 + 1120);
  v39 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1016);
  v6 = *(v5 + 104);
  v7 = *(v5 + 120);
  v8 = *(v5 + 88);
  *(v0 + 857) = *(v5 + 129);
  *(v0 + 832) = v6;
  *(v0 + 848) = v7;
  *(v0 + 816) = v8;
  v9 = *(v5 + 104);
  v10 = *(v5 + 120);
  v11 = *(v5 + 88);
  *(v0 + 473) = *(v5 + 129);
  *(v0 + 448) = v9;
  *(v0 + 464) = v10;
  *(v0 + 432) = v11;
  sub_551C8(v5 + 16, v0 + 496);
  *(v0 + 554) = 1;
  v12 = *(v5 + 80);
  sub_38910(v0 + 816, v0 + 880);
  v13 = [v12 uuid];
  v14 = sub_F07EC();
  v16 = v15;

  v17 = v1;

  *v4 = RCSMessage.Typing.init(indication:)(v17) & 1;
  v18 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_37380(v5 + 160, v0 + 944, &qword_127B08, &qword_F29A0);
  v19 = *(v5 + 200);
  sub_3896C(v19);
  v20.entries._rawValue = RCSMessageMetadata.init()().entries._rawValue;
  result = RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v0 + 432, v14, v16, v42, v43, v40, v3, v41, v39, v2, v4, v0 + 944, v19, v20.entries._rawValue, 0);
  v22 = *(v44 + 104);
  *(v0 + 1216) = v22;
  if (v22)
  {

    v3, v23, v24, v25, v26, v27, v28, v29;
    v2, v30, v31, v32, v33, v34, v35, v36;
    v45 = (*(*v22 + 144) + **(*v22 + 144));
    v37 = swift_task_alloc();
    *(v0 + 1224) = v37;
    *v37 = v0;
    v37[1] = sub_47794;
    v38 = *(v0 + 1072);

    return v45(v0 + 1008, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_47278(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[123] = v2;
  v4[124] = a1;
  v4[125] = a2;
  v5 = v3[149];
  v4[151] = a2;

  v5, v6, v7, v8, v9, v10, v11, v12;

  v13 = v3[137];
  v14 = v3[136];

  return _swift_task_switch(sub_473E4, v14, v13);
}

uint64_t sub_473E4()
{
  v1 = *(v0 + 1208);
  if (v1)
  {
    v60 = *(v0 + 992);
    v61 = *(v0 + 1144);
    v2 = *(v0 + 1136);
    v3 = *(v0 + 1128);
    v4 = *(v0 + 1112);
    v58 = *(v0 + 1104);
    v59 = *(v0 + 1120);
    v57 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1016);
    v7 = *(v6 + 104);
    v8 = *(v6 + 120);
    v9 = *(v6 + 88);
    *(v0 + 857) = *(v6 + 129);
    *(v0 + 832) = v7;
    *(v0 + 848) = v8;
    *(v0 + 816) = v9;
    v10 = *(v6 + 104);
    v11 = *(v6 + 120);
    v12 = *(v6 + 88);
    *(v0 + 473) = *(v6 + 129);
    *(v0 + 448) = v10;
    *(v0 + 464) = v11;
    *(v0 + 432) = v12;
    sub_551C8(v6 + 16, v0 + 496);
    *(v0 + 554) = 1;
    v13 = *(v6 + 80);
    sub_38910(v0 + 816, v0 + 880);
    v14 = [v13 uuid];
    v15 = sub_F07EC();
    v17 = v16;

    v18 = v2;

    *v5 = RCSMessage.Typing.init(indication:)(v18) & 1;
    v19 = type metadata accessor for RCSMessage.Content(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
    sub_37380(v6 + 160, v0 + 944, &qword_127B08, &qword_F29A0);
    v20 = *(v6 + 200);
    sub_3896C(v20);
    v21.entries._rawValue = RCSMessageMetadata.init()().entries._rawValue;
    result = RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v0 + 432, v15, v17, v60, v1, v58, v4, v59, v57, v3, v5, v0 + 944, v20, v21.entries._rawValue, 0);
    v23 = *(v61 + 104);
    *(v0 + 1216) = v23;
    if (v23)
    {

      v4, v24, v25, v26, v27, v28, v29, v30;
      v3, v31, v32, v33, v34, v35, v36, v37;
      v62 = (*(*v23 + 144) + **(*v23 + 144));
      v38 = swift_task_alloc();
      *(v0 + 1224) = v38;
      *v38 = v0;
      v38[1] = sub_47794;
      v39 = *(v0 + 1072);

      return v62(v0 + 1008, v39);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v40 = *(v0 + 1128);
    v41 = *(v0 + 1112);

    v41, v42, v43, v44, v45, v46, v47, v48;
    v40, v49, v50, v51, v52, v53, v54, v55;

    v56 = *(v0 + 8);

    return v56();
  }

  return result;
}

uint64_t sub_47794(void *a1)
{
  v4 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v5 = *(v4 + 1096);
    v6 = *(v4 + 1088);
    v7 = sub_47B14;
  }

  else
  {

    v5 = *(v4 + 1096);
    v6 = *(v4 + 1088);
    v7 = sub_478D0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_478D0()
{
  v32 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1016);

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  sub_550D0(v4, v0 + 224);
  v6 = sub_F06AC();
  v7 = sub_F0CCC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1056);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);
  if (v8)
  {
    v30 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315138;
    v15 = [*(v0 + 304) uuid];
    v16 = sub_F07EC();
    v29 = v9;
    v18 = v17;

    sub_53DAC(v0 + 224);
    v19 = sub_3E850(v16, v18, &v31);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 4) = v19;
    _os_log_impl(&dword_0, v6, v7, "Processed typing indicator for %s", v13, 0xCu);
    sub_1EDC(v14);

    (*(v11 + 8))(v30, v12);
    sub_3897C(v29);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    sub_3897C(v9);
    sub_53DAC(v0 + 224);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_47B14()
{
  v35 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1016);

  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  sub_550D0(v4, v0 + 16);
  swift_errorRetain();
  v6 = sub_F06AC();
  v7 = sub_F0CEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v13 = 136315394;
    v33 = v9;
    v15 = [*(v0 + 96) uuid];
    v31 = v12;
    v32 = v10;
    v16 = sub_F07EC();
    v18 = v17;

    sub_53DAC(v0 + 16);
    v19 = sub_3E850(v16, v18, &v34);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v27;
    *v14 = v27;
    _os_log_impl(&dword_0, v6, v7, "Failed to process typing indicator for %s: %@", v13, 0x16u);
    sub_372B0(v14, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v30);

    (*(v11 + 8))(v32, v31);
    sub_3897C(v33);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    sub_3897C(v9);
    sub_53DAC(v0 + 16);
  }

  v28 = *(v0 + 8);

  return v28();
}

void sub_47F0C(uint64_t a1, RCSServiceSession *a2, uint64_t a3, RCSServiceSession *a4, int a5)
{
  v326 = a5;
  v325 = sub_F06EC();
  v328 = *(v325 - 8);
  __chkstk_darwin(v325);
  v327 = &v314 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_F071C();
  v324 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v314 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_F06CC();
  v332 = *(v13 - 8);
  v333 = v13;
  __chkstk_darwin(v13);
  v331 = (&v314 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v314 - v16;
  __chkstk_darwin(v18);
  v20 = &v314 - v19;
  __chkstk_darwin(v21);
  v23 = &v314 - v22;
  __chkstk_darwin(v24);
  v26 = &v314 - v25;

  v330 = a3;
  v27._countAndFlagsBits = a3;
  v27._object = a4;
  v28.value._countAndFlagsBits = a1;
  v28.value._object = a2;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v335, v27, CoreRCS_RCSHandle_BotStatus_isChatBot, v28);
  if (v29)
  {
    v30 = a1;

    v31 = Logger.chatbot.unsafeMutableAddressor();
    v33 = v331;
    v32 = v332;
    v34 = v333;
    (*(v332 + 16))(v331, v31, v333);

    v35 = sub_F06AC();
    v36 = sub_F0CEC();
    a2, v37, v38, v39, v40, v41, v42, v43;
    a4, v44, v45, v46, v47, v48, v49, v50;
    if (os_log_type_enabled(v35, v36))
    {
      v51 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v51 = 136315394;
      *(v51 + 4) = sub_3E850(v330, a4, aBlock);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_3E850(v30, a2, aBlock);
      _os_log_impl(&dword_0, v35, v36, "Discover a chat bot, but cannot create RCSHandle for %s, using sip handle: %s", v51, 0x16u);
      swift_arrayDestroy();
    }

    (*(v32 + 8))(v33, v34);
    return;
  }

  v319 = v17;
  v317 = v23;
  v315 = v26;
  v321 = v20;
  v322 = a4;
  v316 = v12;
  v318 = v10;
  v331 = a2;
  v52 = v332;
  v323 = a1;
  countAndFlagsBits = v335.id._countAndFlagsBits;
  object = v335.id._object;
  v55 = objc_allocWithZone(IMDHandle);
  v320 = countAndFlagsBits;
  v56 = sub_F07BC();
  v57 = sub_F07BC();
  v58 = sub_F07BC();
  v59 = [v55 initWithID:v56 unformattedID:v57 countryCode:v58];

  if (v59)
  {
    v60 = sub_F07BC();
    [v59 setPersonCentricID:v60];

    v61 = [v59 ID];
    if (!v61)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v62 = v61;
    v63 = v52;
    v64 = [(RCSServiceSession *)v329 chatForChatIdentifier:v61 style:45 updatingAccount:1];

    if (v64)
    {
      v65 = [v64 participants];
      if (!v65)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v66 = v65;
      v320 = sub_37310(0, &qword_127F70, IMDHandle_ptr);
      v67 = sub_F09FC();

      v314 = v59;
      if (v67 >> 62)
      {
        v75 = sub_F10DC();
      }

      else
      {
        v75 = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
      }

      v67, v68, v69, v70, v71, v72, v73, v74;
      if (!v75)
      {
        goto LABEL_65;
      }

      v76 = [v64 participants];
      if (!v76)
      {
        goto LABEL_82;
      }

      v77 = v76;
      v78 = sub_F09FC();

      if (v78 >> 62)
      {
        if (sub_F10DC())
        {
LABEL_15:
          if ((v78 & 0xC000000000000001) != 0)
          {
            v86 = sub_F0FCC();
          }

          else
          {
            if (!*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_59;
            }

            v86 = *(v78 + 32);
          }

          v94 = v86;
          v78, v87, v88, v89, v90, v91, v92, v93;
          v95 = [v94 ID];

          if (v95)
          {
            v96 = sub_F07EC();
            v98 = v97;

            goto LABEL_32;
          }

LABEL_31:
          v96 = 0;
          v98 = 0;
LABEL_32:
          v149 = [v314 ID];
          if (v149)
          {
            v157 = v149;
            v158 = sub_F07EC();
            v160 = v159;

            if (!v98)
            {
              if (!v160)
              {
                goto LABEL_43;
              }

LABEL_64:
              v160, v150, v151, v152, v153, v154, v155, v156;
              goto LABEL_65;
            }

            if (v160)
            {
              if (v96 == v158 && v98 == v160)
              {
                v98, v150, v151, v152, v153, v154, v155, v156;
                v160, v161, v162, v163, v164, v165, v166, v167;
              }

              else
              {
                v168 = sub_F122C();
                v98, v169, v170, v171, v172, v173, v174, v175;
                v160, v176, v177, v178, v179, v180, v181, v182;
                if ((v168 & 1) == 0)
                {
LABEL_65:
                  v229 = Logger.chatbot.unsafeMutableAddressor();
                  v230 = v52;
                  v231 = v64;
                  v232 = v321;
                  v233 = v333;
                  (*(v52 + 16))(v321, v229, v333);
                  v234 = v322;

                  v235 = v331;

                  v236 = v231;
                  v237 = sub_F06AC();
                  v238 = sub_F0CCC();
                  v235, v239, v240, v241, v242, v243, v244, v245;

                  v234, v246, v247, v248, v249, v250, v251, v252;
                  if (os_log_type_enabled(v237, v238))
                  {
                    v253 = v230;
                    v254 = swift_slowAlloc();
                    v255 = swift_slowAlloc();
                    aBlock[0] = swift_slowAlloc();
                    *v254 = 136315650;
                    *(v254 + 4) = sub_3E850(v330, v234, aBlock);
                    *(v254 + 12) = 2112;
                    *(v254 + 14) = v236;
                    *v255 = v231;
                    *(v254 + 22) = 2080;
                    v256 = v236;
                    *(v254 + 24) = sub_3E850(v323, v235, aBlock);
                    _os_log_impl(&dword_0, v237, v238, "Discover a chat bot for %s, replacing handle in chat: %@ with sip handle: %s", v254, 0x20u);
                    sub_372B0(v255, &qword_127AF0, &qword_F28E0);

                    swift_arrayDestroy();

                    (*(v253 + 8))(v321, v333);
                  }

                  else
                  {

                    (*(v230 + 8))(v232, v233);
                  }

                  v257 = v325;
                  v258 = v328;
                  v259 = v318;
                  v260 = v327;
                  v261 = v326;
                  sub_388C8(&qword_127F78, &qword_F2EB8);
                  v262 = swift_allocObject();
                  *(v262 + 16) = xmmword_F2C60;
                  *(v262 + 56) = v320;
                  v263 = v314;
                  *(v262 + 32) = v314;
                  v264 = v263;
                  v265 = sub_F09EC();
                  v262, v266, v267, v268, v269, v270, v271, v272;
                  [v236 _resetParticipants:v265];

                  v273 = [objc_opt_self() sharedInstance];
                  RCSHandle.chatBotId.getter();
                  v275 = v274;
                  sub_3CAB8(&v335);
                  if (v275)
                  {
                    v276 = v275;
                  }

                  else
                  {
                    v276 = 0xE000000000000000;
                  }

                  v277 = sub_F07BC();
                  v276, v278, v279, v280, v281, v282, v283, v284;
                  v285 = sub_F07BC();
                  [v273 updateHandle:v264 sourceMessage:0 personCentricID:v277 onService:v285];

                  if (v261)
                  {
                    sub_37310(0, &qword_127F80, OS_dispatch_queue_ptr);
                    v286 = sub_F0D4C();
                    v287 = swift_allocObject();
                    v288 = v329;
                    *(v287 + 16) = v329;
                    aBlock[4] = sub_54FF4;
                    aBlock[5] = v287;
                    aBlock[0] = _NSConcreteStackBlock;
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_9400C;
                    aBlock[3] = &unk_11E408;
                    v289 = _Block_copy(aBlock);
                    v290 = v288;

                    v291 = v316;
                    sub_F06FC();
                    aBlock[0] = _swiftEmptyArrayStorage;
                    sub_55014();
                    sub_388C8(&qword_127F90, &qword_F2EC0);
                    sub_5506C();
                    sub_F0E8C();
                    sub_F0D5C();
                    _Block_release(v289);

                    (*(v258 + 8))(v260, v257);
                    (*(v324 + 8))(v291, v259);
                  }

                  else
                  {
                  }

                  return;
                }
              }

LABEL_43:
              v183 = [v64 participants];
              if (!v183)
              {
LABEL_83:
                __break(1u);
                return;
              }

              v184 = v183;
              v78 = sub_F09FC();

              if (!(v78 >> 62))
              {
                if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
                {
LABEL_46:
                  if ((v78 & 0xC000000000000001) != 0)
                  {
                    v192 = sub_F0FCC();
LABEL_49:
                    v200 = v192;
                    v78, v193, v194, v195, v196, v197, v198, v199;
                    v201 = [v200 personCentricID];

                    if (v201)
                    {
                      v202 = sub_F07EC();
                      v160 = v203;

                      v204 = RCSHandle.chatBotId.getter();
                      if (v160)
                      {
                        if (v150)
                        {
                          if (v202 == v204 && v150 == v160)
                          {
                            v205 = v150;
                            v160, v150, v204, v152, v153, v154, v155, v156;
                            v205, v206, v207, v208, v209, v210, v211, v212;
LABEL_74:
                            sub_3CAB8(&v335);
                            v292 = Logger.chatbot.unsafeMutableAddressor();
                            v293 = v315;
                            v294 = v333;
                            (*(v52 + 16))(v315, v292, v333);
                            v295 = v322;

                            v296 = v331;

                            v297 = sub_F06AC();
                            v298 = sub_F0CCC();
                            v296, v299, v300, v301, v302, v303, v304, v305;
                            v295, v306, v307, v308, v309, v310, v311, v312;
                            if (os_log_type_enabled(v297, v298))
                            {
                              v313 = swift_slowAlloc();
                              aBlock[0] = swift_slowAlloc();
                              *v313 = 136315394;
                              *(v313 + 4) = sub_3E850(v330, v295, aBlock);
                              *(v313 + 12) = 2080;
                              *(v313 + 14) = sub_3E850(v323, v296, aBlock);
                              _os_log_impl(&dword_0, v297, v298, "Discover a chat bot for %s, chat is already with sip handle: %s", v313, 0x16u);
                              swift_arrayDestroy();
                            }

                            else
                            {
                            }

                            (*(v63 + 8))(v293, v294);
                            return;
                          }

                          v213 = v150;
                          v214 = sub_F122C();
                          v160, v215, v216, v217, v218, v219, v220, v221;
                          v213, v222, v223, v224, v225, v226, v227, v228;
                          if (v214)
                          {
                            goto LABEL_74;
                          }

                          goto LABEL_65;
                        }

                        goto LABEL_64;
                      }

                      goto LABEL_62;
                    }

LABEL_61:
                    RCSHandle.chatBotId.getter();
LABEL_62:
                    if (!v150)
                    {
                      goto LABEL_74;
                    }

                    v160 = v150;
                    goto LABEL_64;
                  }

                  if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
                  {
                    v192 = *(v78 + 32);
                    goto LABEL_49;
                  }

                  __break(1u);
                  goto LABEL_80;
                }

LABEL_60:
                v78, v185, v186, v187, v188, v189, v190, v191;
                goto LABEL_61;
              }

LABEL_59:
              if (sub_F10DC())
              {
                goto LABEL_46;
              }

              goto LABEL_60;
            }
          }

          else if (!v98)
          {
            goto LABEL_43;
          }

          v160 = v98;
          goto LABEL_64;
        }
      }

      else if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_15;
      }

      v78, v79, v80, v81, v82, v83, v84, v85;
      goto LABEL_31;
    }

    v329 = object;
    v124 = Logger.chatbot.unsafeMutableAddressor();
    v125 = v317;
    v126 = v333;
    (*(v52 + 16))(v317, v124, v333);
    v127 = v322;

    v128 = v331;

    v129 = sub_F06AC();
    v130 = sub_F0CCC();
    v128, v131, v132, v133, v134, v135, v136, v137;
    v127, v138, v139, v140, v141, v142, v143, v144;
    if (os_log_type_enabled(v129, v130))
    {
      v145 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v145 = 136315394;
      *(v145 + 4) = sub_3E850(v330, v127, aBlock);
      *(v145 + 12) = 2080;
      *(v145 + 14) = sub_3E850(v323, v128, aBlock);
      _os_log_impl(&dword_0, v129, v130, "Discover a chat bot for %s, using sip handle in a pending chat: %s", v145, 0x16u);
      swift_arrayDestroy();

      (*(v63 + 8))(v125, v333);
    }

    else
    {

      (*(v63 + 8))(v125, v126);
    }

    v146 = [objc_opt_self() sharedInstance];
    v147 = sub_F07BC();
    v148 = sub_F07BC();
    sub_3CAB8(&v335);
    [v146 pendingAlternateID:v147 forHandle:v148];
  }

  else
  {
    v99 = object;
    v100 = Logger.chatbot.unsafeMutableAddressor();
    v101 = v52;
    v102 = v319;
    v103 = v333;
    (*(v52 + 16))(v319, v100, v333);
    v104 = v331;

    sub_38910(&v335, aBlock);
    v105 = sub_F06AC();
    v106 = sub_F0CEC();
    sub_3CAB8(&v335);
    v104, v107, v108, v109, v110, v111, v112, v113;
    if (os_log_type_enabled(v105, v106))
    {
      v114 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v114 = 136315394;
      v115 = v99;

      sub_3CAB8(&v335);
      v116 = sub_3E850(v320, v99, aBlock);
      v115, v117, v118, v119, v120, v121, v122, v123;
      *(v114 + 4) = v116;
      *(v114 + 12) = 2080;
      *(v114 + 14) = sub_3E850(v323, v104, aBlock);
      _os_log_impl(&dword_0, v105, v106, "Discover a chat bot, but cannot create imdHandle for %s, using sip handle: %s", v114, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_3CAB8(&v335);
    }

    (*(v101 + 8))(v102, v103);
  }
}

void RCSServiceSession.destinationCapabilitiesUpdated(_:withCapabilities:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_53040(0xD000000000000033, 0x80000000000FE300))
  {
    v10 = Logger.chatbot.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    v11 = a1;
    v12 = a2;
    v13 = sub_F06AC();
    v14 = sub_F0CCC();

    if (os_log_type_enabled(v13, v14))
    {
      v75 = v3;
      v15 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v15 = 136446722;
      *(v15 + 4) = sub_3E850(0xD000000000000033, 0x80000000000FE300, &v76);
      *(v15 + 12) = 2080;
      v74 = v11;
      v16 = [v11 labelID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_F07EC();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      v21 = sub_3E850(v18, v20, &v76);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v15 + 14) = v21;
      *(v15 + 22) = 2080;
      v29 = [v12 description];
      v30 = sub_F07EC();
      v32 = v31;

      v33 = sub_3E850(v30, v32, &v76);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v15 + 24) = v33;
      _os_log_impl(&dword_0, v13, v14, "%{public}s simID: %s destinationUpdated: %s", v15, 0x20u);
      swift_arrayDestroy();

      (*(v7 + 8))(v9, v6);
      v11 = v74;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    if ([v12 isBot])
    {
      v41 = [v12 discovered];
      v42 = [v41 uri];

      v43 = sub_F07EC();
      v44 = v11;
      v46 = v45;

      v47 = [v12 previous];
      v48 = [v47 uri];

      v49 = sub_F07EC();
      v51 = v50;

      sub_47F0C(v43, v46, v49, v51, 1);
      v46, v52, v53, v54, v55, v56, v57, v58;
      v51, v59, v60, v61, v62, v63, v64, v65;
      v66 = [v12 discovered];
      sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
      v67 = [v12 previous];
      v68 = [v67 uri];

      v69 = sub_F07EC();
      v71 = v70;

      v72 = CTLazuliOperationID.init(id:)(v69, v71);
      sub_62F9C(v44, v66, v72);
    }
  }
}

void RCSServiceSession.didDiscover(_:destination:withCapabilities:with:)(void *a1, void *a2, void *a3, void *a4)
{
  v137 = a4;
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v128 - v8;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Logger.reachability.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v14, v10);
  v15 = a3;
  v16 = a1;
  v17 = a2;
  v18 = sub_F06AC();
  v19 = sub_F0CCC();
  v134 = v17;

  v132 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v135 = a3;
  if (!v20)
  {

    (*(v11 + 8))(v13, v10);
    v27 = v9;
    v28 = v137;
    goto LABEL_16;
  }

  v130 = v18;
  v133 = v15;
  v131 = v9;
  v21 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v141 = v129;
  *v21 = 136447234;
  *(v21 + 4) = sub_3E850(0xD000000000000031, 0x80000000000FE340, &v141);
  *(v21 + 12) = 2080;
  v22 = [v16 labelID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_F07EC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v29 = v11;
  v30 = sub_3E850(v24, v26, &v141);
  v26, v31, v32, v33, v34, v35, v36, v37;
  *(v21 + 14) = v30;
  *(v21 + 22) = 2080;
  if (!a3)
  {
    v52 = sub_3E850(0, 0xE000000000000000, &v141);
    0xE000000000000000, v53, v54, v55, v56, v57, v58, v59;
    *(v21 + 24) = v52;
    *(v21 + 32) = 1024;
    v27 = v131;
    goto LABEL_10;
  }

  v38 = v133;
  v39 = [v133 description];
  v40 = sub_F07EC();
  v42 = v41;

  v43 = sub_3E850(v40, v42, &v141);
  v42, v44, v45, v46, v47, v48, v49, v50;
  *(v21 + 24) = v43;
  *(v21 + 32) = 1024;
  LOBYTE(v43) = [v38 isBot];

  v27 = v131;
  if ((v43 & 1) == 0)
  {
LABEL_10:
    v51 = 0;
    goto LABEL_11;
  }

  v51 = 1;
LABEL_11:
  *(v21 + 34) = v51;

  *(v21 + 38) = 2080;
  v60 = [v134 identities];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 identityList];

    v63 = sub_F09FC();
    if (!*v63[1].IMDTelephonyServiceSession_opaque)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v64 = *v63[2].IMDTelephonyServiceSession_opaque;
    v65 = *v63[2].state;

    v63, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    v65 = 0xE400000000000000;
    v64 = 1701736270;
  }

  v73 = sub_3E850(v64, v65, &v141);
  v65, v74, v75, v76, v77, v78, v79, v80;
  *(v21 + 40) = v73;
  v81 = v130;
  _os_log_impl(&dword_0, v130, v132, "%{public}s simID: %s didDiscover: %s, is chat bot: %{BOOL}d, alternate handle: %s", v21, 0x30u);
  swift_arrayDestroy();

  (*(v29 + 8))(v13, v10);
  v28 = v137;
  v15 = v133;
LABEL_16:
  v82 = [v28 error];
  v83 = v135;
  if (v82)
  {
    v138[0] = 1;
    v141 = v82;
    v142 = v139;
    v143 = v140;
    v144 = 1;
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
    if (v135)
    {
      *&v138[24] = sub_37310(0, &qword_127EC8, CTLazuliCapabilitiesInformation_ptr);
      *&v138[32] = &protocol witness table for CTLazuliCapabilitiesInformation;
      *v138 = v15;
      sub_3928(v138, &v141);
    }

    else
    {
      memset(v138, 0, 40);
      v84 = v134;
      v85 = sub_52F78(v84);
      v87 = v86;
      v89 = v88;

      *&v143 = &type metadata for NullCapabilities;
      *(&v143 + 1) = &off_11E388;
      v141 = v85;
      *&v142 = v87;
      BYTE8(v142) = v89 & 1;
      if (*&v138[24])
      {
        sub_372B0(v138, &qword_127EB8, &qword_F2C80);
      }
    }

    v144 = 0;
    v90 = v15;
  }

  sub_F0AFC();
  v91 = sub_F0B1C();
  (*(*(v91 - 8) + 56))(v27, 0, 1, v91);
  sub_37380(&v141, v138, &qword_127EC0, &qword_F2C90);
  sub_F0AEC();
  v92 = v136;
  v93 = v28;
  v94 = sub_F0ADC();
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = &protocol witness table for MainActor;
  *(v95 + 32) = v92;
  v96 = *&v138[16];
  *(v95 + 40) = *v138;
  *(v95 + 56) = v96;
  *(v95 + 65) = *&v138[25];
  *(v95 + 88) = v93;
  sub_3CC0C(0, 0, v27, &unk_F2C98, v95);

  if (!v83)
  {
    goto LABEL_28;
  }

  v97 = v15;
  if ([v97 isBot])
  {
    v98 = [v134 identities];
    if (v98)
    {
      v99 = v98;
      v100 = [v98 identityList];

      v101 = sub_F09FC();
      if (*v101[1].IMDTelephonyServiceSession_opaque)
      {
        v102 = *v101[2].IMDTelephonyServiceSession_opaque;
        v103 = *v101[2].state;

        v101, v104, v105, v106, v107, v108, v109, v110;
        v111 = CTLazuliCapabilitiesInformation.recipientUri.getter();
        v113 = v112;
        sub_47F0C(v102, v103, v111, v112, 0);
        v103, v114, v115, v116, v117, v118, v119, v120;
        v113, v121, v122, v123, v124, v125, v126, v127;

LABEL_28:
        sub_372B0(&v141, &qword_127EC0, &qword_F2C90);
        return;
      }

      goto LABEL_32;
    }
  }

  sub_372B0(&v141, &qword_127EC0, &qword_F2C90);
}

uint64_t sub_49EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_F0AEC();
  v6[5] = sub_F0ADC();
  v8 = sub_F0A6C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_49F94, v8, v7);
}

void sub_49F94()
{
  v1 = *(*(v0[2] + OBJC_IVAR___RCSServiceSession_state) + 120);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];

    v3 = [v2 operation];
    v4 = [v3 uuid];

    v5 = sub_F07EC();
    v7 = v6;

    v0[9] = v7;
    v10 = (*(*v1 + 120) + **(*v1 + 120));
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_4A140;
    v9 = v0[3];

    v10(v9, v5, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4A140()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v2, v3, v4, v5, v6, v7, v8, v9;

  v10 = *(v1 + 56);
  v11 = *(v1 + 48);

  return _swift_task_switch(sub_4A2A0, v11, v10);
}

uint64_t sub_4A2A0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_4A3AC(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:a1 selector:"forceReloadChats" object:0];

  return [a1 performSelector:"forceReloadChats" withObject:0 afterDelay:2.0];
}

void RCSServiceSession.capabilitiesFound(_:destination:withCapabilities:)(void *a1, void *a2, void *a3)
{
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v58[-v10];
  v12 = Logger.rcs.unsafeMutableAddressor();
  v64 = *(v7 + 16);
  v65 = v12;
  v64(v11);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = sub_F06AC();
  v17 = sub_F0CCC();

  if (os_log_type_enabled(v16, v17))
  {
    v59 = v17;
    v61 = v7;
    v62 = v6;
    v18 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67[0] = v60;
    *v18 = 136446978;
    *(v18 + 4) = sub_3E850(0xD000000000000032, 0x80000000000FE380, v67);
    *(v18 + 12) = 2080;
    v19 = [v13 labelID];
    if (v19)
    {
      v20 = v19;
      v21 = sub_F07EC();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v24 = sub_3E850(v21, v23, v67);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v32 = [v14 uri];
    v33 = sub_F07EC();
    v35 = v34;

    v36 = sub_3E850(v33, v35, v67);
    v35, v37, v38, v39, v40, v41, v42, v43;
    *(v18 + 24) = v36;
    *(v18 + 32) = 2080;
    v44 = [v15 description];
    v45 = sub_F07EC();
    v47 = v46;

    v48 = sub_3E850(v45, v47, v67);
    v47, v49, v50, v51, v52, v53, v54, v55;
    *(v18 + 34) = v48;
    _os_log_impl(&dword_0, v16, v59, "%{public}s simID: %s from: %s cap: %s", v18, 0x2Au);
    swift_arrayDestroy();

    v7 = v61;
    v6 = v62;
  }

  else
  {
  }

  (*(v7 + 8))(v11, v6);
  RCSHandle.init(destination:)(v14, v67);
  v56 = [v63 broadcasterForChatListeners];
  v57 = sub_F07BC();
  sub_3CAB8(v67);
  [v56 capabilitiesUpdatedForHandle:v57];
  swift_unknownObjectRelease();
}

void RCSServiceSession.subjectUpdated(_:forGroupChat:withNewSubject:updatedBy:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v326 = *v9[-1].state;
  v327 = v9;
  __chkstk_darwin(v9);
  v325 = &v307 - v10;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v322 = (&v307 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v323 = (&v307 - v15);
  __chkstk_darwin(v16);
  v319 = (&v307 - v17);
  __chkstk_darwin(v18);
  v318 = (&v307 - v19);
  __chkstk_darwin(v20);
  v324 = (&v307 - v21);
  __chkstk_darwin(v22);
  v24 = &v307 - v23;
  if (sub_53040(0xD000000000000038, 0x80000000000FE3C0))
  {
    v310 = v4;
    v25 = Logger.rcs.unsafeMutableAddressor();
    v321 = v12;
    v26 = *(v12 + 16);
    v314 = v25;
    v315 = v26;
    v316 = v12 + 16;
    (v26)(v24);
    v317 = a4;
    v27 = a4;
    v28 = a1;
    v29 = a2;
    v311 = a3;
    v30 = v24;
    v31 = a3;
    v32 = sub_F06AC();
    v33 = sub_F0CCC();
    v313 = v27;

    v312 = v31;
    v320 = v29;

    v34 = os_log_type_enabled(v32, v33);
    v309 = v28;
    if (v34)
    {
      v35 = v30;
      v307 = v32;
      v308 = v11;
      v36 = swift_slowAlloc();
      *&v334 = swift_slowAlloc();
      *v36 = 136447234;
      *(v36 + 4) = sub_3E850(0xD000000000000038, 0x80000000000FE3C0, &v334);
      *(v36 + 12) = 2080;
      v37 = [v28 labelID];
      if (v37)
      {
        v38 = v37;
        v39 = sub_F07EC();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0xE000000000000000;
      }

      v43 = v317;
      v44 = 0x3E6C696E3CLL;
      v45 = sub_3E850(v39, v41, &v334);
      v41, v46, v47, v48, v49, v50, v51, v52;
      *(v36 + 14) = v45;
      *(v36 + 22) = 2080;
      v53 = [v320 remoteUri];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 destination];

        v56 = sub_F07EC();
        v58 = v57;
      }

      else
      {
        v58 = 0xE500000000000000;
        v56 = 0x3E6C696E3CLL;
      }

      v59 = sub_3E850(v56, v58, &v334);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v36 + 24) = v59;
      *(v36 + 32) = 2080;
      if (v311)
      {
        v67 = [v312 displayString];
        v68 = sub_F07EC();
        v70 = v69;
      }

      else
      {
        v70 = 0xE500000000000000;
        v68 = 0x3E6C696E3CLL;
      }

      v71 = sub_3E850(v68, v70, &v334);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v36 + 34) = v71;
      *(v36 + 42) = 2080;
      if (v43)
      {
        v79 = [v313 member];
        v44 = sub_F07EC();
        v81 = v80;
      }

      else
      {
        v81 = 0xE500000000000000;
      }

      v82 = sub_3E850(v44, v81, &v334);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v36 + 44) = v82;
      v90 = v307;
      _os_log_impl(&dword_0, v307, v33, "%{public}s simID: %s remoteUri: %s newSubject: %s updatedBy: %s", v36, 0x34u);
      swift_arrayDestroy();

      v42 = *(v321 + 8);
      v11 = v308;
      v42(v35, v308);
    }

    else
    {

      v42 = *(v321 + 8);
      v42(v30, v11);
      v43 = v317;
    }

    if (qword_127A30 != -1)
    {
      swift_once();
    }

    v91 = v327;
    v92 = sub_3C96C(v327, qword_127C88);
    v93 = v325;
    v94 = v326;
    (v326)[2](v325, v92, v91);
    sub_F044C();
    (v94[1])(v93, v91);
    if (v334 == 1)
    {
      v95 = v324;
      v315(v324, v314, v11);
      v96 = sub_F06AC();
      v97 = sub_F0CCC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v99 = "Dropping subject change due to override";
LABEL_29:
        _os_log_impl(&dword_0, v96, v97, v99, v98, 2u);

        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if (!v43)
    {
      v95 = v323;
      v315(v323, v314, v11);
      v96 = sub_F06AC();
      v97 = sub_F0CEC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v99 = "Dropping subject update due to missing attribution info";
        goto LABEL_29;
      }

LABEL_30:

      v42(v95, v11);
      return;
    }

    v100 = v312;
    v101 = v313;
    v102 = v320;
    v103 = [v320 remoteUri];
    if (v103)
    {
      v104 = v103;
      v105 = [v102 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v106 = static NSUserDefaults.forceEncryption.getter();
      v342.id._object = &type metadata for CTRCSGroupIdentity;
      v342.attributes._rawValue = &off_11F358;
      v342.scheme._countAndFlagsBits = v104;
      LOBYTE(v342.scheme._object) = (v106 | v105) & 1;
      RCSGroup.init(group:identity:)(v102, &v342, &v328);
      v337 = v330;
      v338 = v331;
      v339 = v332;
      v340 = v333;
      v334 = v328;
      v335 = *v329;
      v336 = *&v329[16];
      v107 = [v101 member];
      v108 = sub_F07EC();
      v110 = v109;

      v111._countAndFlagsBits = v108;
      v111._object = v110;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v341, v111, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (v112)
      {
        v315(v322, v314, v11);
        swift_errorRetain();
        v113 = sub_F06AC();
        v114 = sub_F0CEC();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *v115 = 138412290;
          swift_errorRetain();
          v117 = _swift_stdlib_bridgeErrorToNSError();
          *(v115 + 4) = v117;
          *v116 = v117;
          _os_log_impl(&dword_0, v113, v114, "Dropping subject change due to malformed sender: %@", v115, 0xCu);
          sub_372B0(v116, &qword_127AF0, &qword_F28E0);
        }

        else
        {
        }

        v208 = v322;
LABEL_45:
        v209 = v11;
LABEL_46:
        v42(v208, v209);
LABEL_47:
        sub_53D58(&v334);
        return;
      }

      countAndFlagsBits = v341.id._countAndFlagsBits;
      object = v341.id._object;

      sub_3CAB8(&v341);
      v154 = [v309 phoneNumber];
      if (!v154)
      {
        object, v155, v156, v157, v158, v159, v160, v161;
        v210 = v319;
        v315(v319, v314, v11);
        v211 = sub_F06AC();
        v212 = sub_F0CEC();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          *v213 = 0;
          _os_log_impl(&dword_0, v211, v212, "Dropping subject change due to missing phone number on subscription context", v213, 2u);
        }

        v208 = v210;
        goto LABEL_45;
      }

      v162 = v154;
      v324 = countAndFlagsBits;
      v326 = v101;
      v327 = object;
      v308 = v11;
      v163 = *(&v335 + 1);
      v164 = v336;
      v165 = sub_373E8(&v334, *(&v335 + 1));
      v166 = v162;
      sub_6F3C8(v165, v310, v163, v164);
      if (!v167)
      {
        v327, v168, v169, v170, v171, v172, v173, v174;

        v214 = v318;
        v215 = v308;
        v315(v318, v314, v308);
        v216 = sub_F06AC();
        v217 = sub_F0CCC();
        if (os_log_type_enabled(v216, v217))
        {
          v218 = swift_slowAlloc();
          *v218 = 0;
          _os_log_impl(&dword_0, v216, v217, "Dropping subject change for group that doesn't already exist in the database", v218, 2u);
        }

        v208 = v214;
        v209 = v215;
        goto LABEL_46;
      }

      v175 = v167;
      v325 = v166;
      v176 = *(&v335 + 1);
      v177 = v336;
      sub_373E8(&v334, *(&v335 + 1));
      v178 = (*(v177 + 16))(v176, v177);
      if (v179)
      {
        v186 = v179;
        v187 = v311;
        v188 = *(*&v310[OBJC_IVAR___RCSServiceSession_state] + 72);
        if (*v188[1].IMDTelephonyServiceSession_opaque)
        {
          v189 = v178;

          sub_51FEC(v189, v186);
          LOBYTE(v189) = v190;

          v188, v191, v192, v193, v194, v195, v196, v197;
          v186, v198, v199, v200, v201, v202, v203, v204;
          if (v189)
          {
            if (v187)
            {
              v205 = [v100 displayString];
              v206 = sub_F07EC();
              v323 = v207;
            }

            else
            {
              v206 = 0;
              v323 = 0;
            }

            v259 = v309;
            v260 = [v309 phoneNumber];
            if (v260)
            {
              v261 = v260;
              v262 = v206;
              v263 = sub_F07EC();
              v265 = v264;

              v266 = sub_53E04(_swiftEmptyArrayStorage);
              v267._countAndFlagsBits = 7103860;
              v267._object = 0xE300000000000000;
              v268._countAndFlagsBits = v263;
              v206 = v262;
              v268._object = v265;
              RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v342, v267, v268, v266, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
              __chkstk_darwin(v269);
              RCSHandle.canonicalizedHandle(for:)(sub_54C44, &v328);
              sub_3CAB8(&v342);
              v322 = *&v329[8];

              sub_3CAB8(&v328);
            }

            else
            {
              v322 = 0;
            }

            v270 = [v259 labelID];
            if (v270)
            {
              v271 = v270;
              sub_F07EC();
              v273 = v272;
            }

            else
            {
              v273 = 0;
            }

            v274 = v206;
            v275 = v323;
            v276 = v327;
            sub_62078(v274, v323, v324, v327, &v334);
            v276, v277, v278, v279, v280, v281, v282, v283;

            v273, v284, v285, v286, v287, v288, v289, v290;
            v322, v291, v292, v293, v294, v295, v296, v297;

            v275, v298, v299, v300, v301, v302, v303, v304;
            goto LABEL_47;
          }
        }

        else
        {
          v179, v179, v180, v181, v182, v183, v184, v185;
        }

        if (v187)
        {
          v219 = [v100 displayString];
          if (!v219)
          {
            sub_F07EC();
            v221 = v220;
            v219 = sub_F07BC();
            v221, v222, v223, v224, v225, v226, v227, v228;
          }
        }

        else
        {
          v219 = 0;
        }

        v229 = sub_F035C();
        v230 = *(v229 - 8);
        __chkstk_darwin(v229);
        v232 = &v307 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_F034C();
        sub_F032C();
        v234 = v233;
        (*(v230 + 8))(v232, v229);
        v235 = sub_F07BC();
        v234, v236, v237, v238, v239, v240, v241, v242;
        v243 = v327;
        v244 = sub_F07BC();
        v245 = [v175 chatIdentifier];
        if (v245)
        {
          v253 = v245;
          v243, v246, v247, v248, v249, v250, v251, v252;
          v254 = [v175 style];
          v255 = v310;
          v256 = [v310 account];
          LOBYTE(v306) = 1;
          v257 = v255;
          v258 = v325;
          [v257 didReceiveDisplayNameChange:v219 guid:v235 fromID:v244 toIdentifier:v325 forChat:v253 style:v254 account:v256 shouldRelay:v306];

          goto LABEL_47;
        }

LABEL_72:
        __break(1u);
        __break(1u);
        __break(1u);
        return;
      }

LABEL_71:
      v305 = v325;

      __break(1u);
      goto LABEL_72;
    }

    sub_53D04();
    v118 = swift_allocError();
    swift_willThrow();
    v119 = [objc_opt_self() sharedInstance];
    if (!v119)
    {
      __break(1u);
      goto LABEL_71;
    }

    v120 = v119;
    *&v328 = 0x52552070756F7267;
    *(&v328 + 1) = 0xEA00000000002049;
    v121 = [v320 remoteUri];
    if (v121)
    {
      v122 = v121;
      v123 = [v121 focus];

      v124 = sub_F07EC();
      v126 = v125;
    }

    else
    {
      v124 = 0x3E6C696E3CLL;
      v126 = 0xE500000000000000;
    }

    v343._countAndFlagsBits = v124;
    v343._object = v126;
    sub_F08CC(v343);
    v126, v127, v128, v129, v130, v131, v132, v133;
    v134 = v328;
    v135 = sub_F0FBC();
    v137 = v136;
    LOBYTE(v328) = 1;
    *(&v328 + 1) = v135;
    *v329 = v136;
    *&v329[8] = v134;
    *&v329[24] = v118;
    LOBYTE(v330) = 0;
    swift_errorRetain();
    sub_94528(&v328);
    *(&v134 + 1), v138, v139, v140, v141, v142, v143, v144;
    v137, v145, v146, v147, v148, v149, v150, v151;
  }
}

uint64_t RCSServiceSession.incomingGroupChat(_:withGroupInformation:)(void *a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000002ALL, 0x80000000000FE460);
  if (result)
  {
    v89 = v2;
    v10 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v10, v5);
    v11 = a1;
    v12 = a2;
    v13 = sub_F06AC();
    v14 = sub_F0CCC();

    if (os_log_type_enabled(v13, v14))
    {
      v87 = v14;
      v15 = v11;
      v16 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v97[0] = v86;
      *v16 = 136446722;
      *(v16 + 4) = sub_3E850(0xD00000000000002ALL, 0x80000000000FE460, v97);
      *(v16 + 12) = 2080;
      v88 = v15;
      v17 = [v15 labelID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_F07EC();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_3E850(v19, v21, v97);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v16 + 14) = v22;
      *(v16 + 22) = 2112;
      *(v16 + 24) = v12;
      v30 = v85;
      *v85 = v12;
      v31 = v12;
      _os_log_impl(&dword_0, v13, v87, "%{public}s simID: %s groupInformation: %@", v16, 0x20u);
      sub_372B0(v30, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      (*(v6 + 8))(v8, v5);
      v11 = v88;
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v32 = [v12 remoteUri];
    if (v32)
    {
      v33 = v32;
      v34 = [v12 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v35 = static NSUserDefaults.forceEncryption.getter();
      v98.id._object = &type metadata for CTRCSGroupIdentity;
      v98.attributes._rawValue = &off_11F358;
      v98.scheme._countAndFlagsBits = v33;
      LOBYTE(v98.scheme._object) = (v35 | v34) & 1;
      RCSGroup.init(group:identity:)(v12, &v98, &v90);
      v97[3] = v93;
      v97[4] = v94;
      v97[5] = v95;
      v97[6] = v96;
      v97[0] = v90;
      v97[1] = v91;
      v97[2] = v92;
      v36 = [v11 phoneNumber];
      if (v36)
      {
        v37 = v36;
        v38 = sub_F07EC();
        v40 = v39;

        v41 = sub_53E04(_swiftEmptyArrayStorage);
        v42._countAndFlagsBits = 7103860;
        v42._object = 0xE300000000000000;
        v43._countAndFlagsBits = v38;
        v43._object = v40;
        RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v98, v42, v43, v41, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        __chkstk_darwin(v44);
        *(&v85 - 2) = v11;
        RCSHandle.canonicalizedHandle(for:)(sub_55244, &v90);
        sub_3CAB8(&v98);
        v45 = *(&v91 + 1);
        v46 = v91;

        sub_3CAB8(&v90);
      }

      else
      {
        v46 = 0;
        v45 = 0;
      }

      v66 = [v11 labelID];
      if (v66)
      {
        v67 = v66;
        v68 = sub_F07EC();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      sub_60684(v97, v46, v45, v68, v70);
      v45, v71, v72, v73, v74, v75, v76, v77;
      v70, v78, v79, v80, v81, v82, v83, v84;
      return sub_53D58(v97);
    }

    else
    {
      sub_53D04();
      v47 = swift_allocError();
      swift_willThrow();
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v48 = result;
        v49 = sub_F0FBC();
        v51 = v50;
        LOBYTE(v90) = 1;
        *(&v90 + 1) = v49;
        v91 = v50;
        *&v92 = 0;
        *(&v92 + 1) = v47;
        LOBYTE(v93) = 0;
        swift_errorRetain();
        sub_94528(&v90);
        0, v52, v53, v54, v55, v56, v57, v58;
        v51, v59, v60, v61, v62, v63, v64, v65;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t RCSServiceSession.participantsRemoved(_:fromGroupChat:withRemovedParticipants:removedBy:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_388C8(&qword_127EE0, qword_F2CB0);
  __chkstk_darwin(v9 - 8);
  v218 = &v204 - v10;
  v11 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v223 = *v11[-1].state;
  v224 = v11;
  __chkstk_darwin(v11);
  v222 = &v204 - v12;
  v13 = sub_F06CC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v217 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v219 = &v204 - v17;
  __chkstk_darwin(v18);
  v220 = &v204 - v19;
  __chkstk_darwin(v20);
  v221 = &v204 - v21;
  __chkstk_darwin(v22);
  v24 = &v204 - v23;
  result = sub_53040(0xD000000000000047, 0x80000000000FE4C0);
  if (result)
  {
    v207 = v4;
    v26 = Logger.rcs.unsafeMutableAddressor();
    v216 = v14;
    v27 = *(v14 + 16);
    v213 = v26;
    v214 = v27;
    v215 = v14 + 16;
    (v27)(v24);
    v211 = a4;
    v28 = a4;
    v29 = a1;
    v30 = v24;
    v31 = a2;
    v32 = a3;
    v33 = v29;
    v34 = sub_F06AC();
    LOBYTE(v29) = sub_F0CCC();
    v208 = v28;

    v210 = v32;
    v212 = v31;

    v35 = v29;
    v36 = v29;
    v37 = v34;
    v38 = os_log_type_enabled(v34, v36);
    v209 = v33;
    if (v38)
    {
      v39 = v30;
      v206 = v13;
      v40 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *&v232 = v205;
      *v40 = 136447234;
      *(v40 + 4) = sub_3E850(0xD000000000000047, 0x80000000000FE4C0, &v232);
      *(v40 + 12) = 2080;
      v41 = [v33 labelID];
      if (v41)
      {
        v42 = v41;
        v43 = sub_F07EC();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0xE000000000000000;
      }

      v47 = 0x3E6C696E3CLL;
      v48 = sub_3E850(v43, v45, &v232);
      v45, v49, v50, v51, v52, v53, v54, v55;
      *(v40 + 14) = v48;
      *(v40 + 22) = 2080;
      v56 = [v212 remoteUri];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 destination];

        v59 = sub_F07EC();
        v61 = v60;
      }

      else
      {
        v61 = 0xE500000000000000;
        v59 = 0x3E6C696E3CLL;
      }

      v62 = sub_3E850(v59, v61, &v232);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v40 + 24) = v62;
      *(v40 + 32) = 2112;
      v70 = v210;
      *(v40 + 34) = v210;
      v71 = v204;
      *v204 = v70;
      *(v40 + 42) = 2080;
      v72 = v70;
      if (v211)
      {
        v73 = [v208 member];
        v47 = sub_F07EC();
        v75 = v74;
      }

      else
      {
        v75 = 0xE500000000000000;
      }

      v76 = sub_3E850(v47, v75, &v232);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v40 + 44) = v76;
      _os_log_impl(&dword_0, v37, v35, "%{public}s simID: %s remoteUri: %s removedParticipants: %@ removedBy: %s", v40, 0x34u);
      sub_372B0(v71, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v46 = *(v216 + 8);
      v13 = v206;
      v46(v39, v206);
    }

    else
    {

      v46 = *(v216 + 8);
      v46(v30, v13);
    }

    if (qword_127A20 != -1)
    {
      swift_once();
    }

    v84 = v224;
    v85 = sub_3C96C(v224, qword_127C58);
    v86 = v222;
    v87 = v223;
    v223[2](v222, v85, v84);
    sub_F044C();
    (v87[1])(v86, v84);
    if (v232 == 1)
    {
      v88 = v221;
      v214(v221, v213, v13);
      v89 = sub_F06AC();
      v90 = sub_F0CDC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = "Dropping participant removal due to override";
LABEL_28:
        _os_log_impl(&dword_0, v89, v90, v92, v91, 2u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    v93 = [v209 phoneNumber];
    if (!v93)
    {
      v88 = v219;
      v214(v219, v213, v13);
      v89 = sub_F06AC();
      v90 = sub_F0CEC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = "Dropping participant removal due to missing phone number on subscription context";
        goto LABEL_28;
      }

LABEL_29:

      v115 = v88;
      return (v46)(v115, v13);
    }

    v94 = v93;
    v95 = sub_F07EC();
    v97 = v96;

    v98 = v212;
    v99 = [v212 remoteUri];
    if (v99)
    {
      v107 = v99;
      v224 = v97;
      v108 = [v98 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v109 = static NSUserDefaults.forceEncryption.getter();
      v239.id._object = &type metadata for CTRCSGroupIdentity;
      v239.attributes._rawValue = &off_11F358;
      v239.scheme._countAndFlagsBits = v107;
      LOBYTE(v239.scheme._object) = (v109 | v108) & 1;
      v110 = v98;
      RCSGroup.init(group:identity:)(v110, &v239, &v225);
      v235 = v228;
      v236 = v229;
      v237 = v230;
      v238 = v231;
      v232 = v225;
      v233 = v226;
      v234 = v227;
      v116 = *(&v226 + 1);
      v117 = v227;
      v118 = sub_373E8(&v232, *(&v226 + 1));
      sub_6F3C8(v118, v207, v116, v117);
      if (v119)
      {
        v223 = v110;
        v206 = v13;
        *&v225 = v119;
        v127 = v119;
        v128 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        v129 = v210;
        v130 = v208;
        v131 = v127;
        v132 = v224;

        RCSParticipantChange.init(chat:toIdentifier:changedParticipants:changedBy:changeType:fromMe:)(&v225, v95, v132, v129, v211, 1, 0, v128, v218, &protocol witness table for IMDChat);
        v133 = *(&v233 + 1);
        v134 = v234;
        sub_373E8(&v232, *(&v233 + 1));
        result = (*(v134 + 16))(v133, v134);
        if (!v135)
        {
          __break(1u);
          __break(1u);
          return result;
        }

        v142 = v135;
        v143 = *(*&v207[OBJC_IVAR___RCSServiceSession_state] + 72);
        if (*v143[1].IMDTelephonyServiceSession_opaque)
        {
          v144 = result;

          sub_51FEC(v144, v142);
          LOBYTE(v144) = v145;
          v143, v145, v146, v147, v148, v149, v150, v151;
          v142, v152, v153, v154, v155, v156, v157, v158;
          if (v144)
          {
            v166 = v209;
            v167 = [v209 phoneNumber];
            if (v167)
            {
              v168 = v167;
              v169 = sub_F07EC();
              v171 = v170;

              v172 = sub_53E04(_swiftEmptyArrayStorage);
              v173._countAndFlagsBits = 7103860;
              v173._object = 0xE300000000000000;
              v174._countAndFlagsBits = v169;
              v174._object = v171;
              RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v239, v173, v174, v172, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
              __chkstk_darwin(v175);
              RCSHandle.canonicalizedHandle(for:)(sub_55244, &v225);
              v166 = v209;
              sub_3CAB8(&v239);
              v176 = *(&v226 + 1);

              sub_3CAB8(&v225);
            }

            else
            {
              v176 = 0;
            }

            v178 = [v166 labelID];
            v179 = v218;
            if (v178)
            {
              v180 = v178;
              sub_F07EC();
              v182 = v181;
            }

            else
            {
              v182 = 0;
            }

            sub_62878(v179, &v232);
            sub_372B0(v179, &qword_127EE0, qword_F2CB0);
            v224, v183, v184, v185, v186, v187, v188, v189;
            v182, v190, v191, v192, v193, v194, v195, v196;
            v176, v197, v198, v199, v200, v201, v202, v203;

            return sub_53D58(&v232);
          }
        }

        else
        {
          v135, v135, v136, v137, v138, v139, v140, v141;
        }

        v224, v159, v160, v161, v162, v163, v164, v165;
        v177 = v218;
        RCSServiceSession.process(participantChange:)(v218);
        sub_77CA4(v177, 1);

        sub_372B0(v177, &qword_127EE0, qword_F2CB0);
        return sub_53D58(&v232);
      }

      v224, v120, v121, v122, v123, v124, v125, v126;
      sub_53D58(&v232);
    }

    else
    {
      v97, v100, v101, v102, v103, v104, v105, v106;
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      sub_372B0(&v225, &qword_127EE8, &unk_F33F0);
    }

    v111 = v220;
    v214(v220, v213, v13);
    v112 = sub_F06AC();
    v113 = sub_F0CEC();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "Dropping participantsRemoved for unknown group", v114, 2u);
    }

    v115 = v111;
    return (v46)(v115, v13);
  }

  return result;
}

uint64_t RCSServiceSession.participantsAdded(_:toGroupChat:withAddedParticipants:addedBy:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_388C8(&qword_127EE0, qword_F2CB0);
  __chkstk_darwin(v9 - 8);
  v218 = &v204 - v10;
  v11 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v223 = *v11[-1].state;
  v224 = v11;
  __chkstk_darwin(v11);
  v222 = &v204 - v12;
  v13 = sub_F06CC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v217 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v219 = &v204 - v17;
  __chkstk_darwin(v18);
  v220 = &v204 - v19;
  __chkstk_darwin(v20);
  v221 = &v204 - v21;
  __chkstk_darwin(v22);
  v24 = &v204 - v23;
  result = sub_53040(0xD00000000000003FLL, 0x80000000000FE580);
  if (result)
  {
    v207 = v4;
    v26 = Logger.rcs.unsafeMutableAddressor();
    v216 = v14;
    v27 = *(v14 + 16);
    v213 = v26;
    v214 = v27;
    v215 = v14 + 16;
    (v27)(v24);
    v211 = a4;
    v28 = a4;
    v29 = a1;
    v30 = v24;
    v31 = a2;
    v32 = a3;
    v33 = v29;
    v34 = sub_F06AC();
    LOBYTE(v29) = sub_F0CCC();
    v208 = v28;

    v210 = v32;
    v212 = v31;

    v35 = v29;
    v36 = v29;
    v37 = v34;
    v38 = os_log_type_enabled(v34, v36);
    v209 = v33;
    if (v38)
    {
      v39 = v30;
      v206 = v13;
      v40 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      *&v232 = v205;
      *v40 = 136447234;
      *(v40 + 4) = sub_3E850(0xD00000000000003FLL, 0x80000000000FE580, &v232);
      *(v40 + 12) = 2080;
      v41 = [v33 labelID];
      if (v41)
      {
        v42 = v41;
        v43 = sub_F07EC();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0xE000000000000000;
      }

      v47 = 0x3E6C696E3CLL;
      v48 = sub_3E850(v43, v45, &v232);
      v45, v49, v50, v51, v52, v53, v54, v55;
      *(v40 + 14) = v48;
      *(v40 + 22) = 2080;
      v56 = [v212 remoteUri];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 destination];

        v59 = sub_F07EC();
        v61 = v60;
      }

      else
      {
        v61 = 0xE500000000000000;
        v59 = 0x3E6C696E3CLL;
      }

      v62 = sub_3E850(v59, v61, &v232);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v40 + 24) = v62;
      *(v40 + 32) = 2112;
      v70 = v210;
      *(v40 + 34) = v210;
      v71 = v204;
      *v204 = v70;
      *(v40 + 42) = 2080;
      v72 = v70;
      if (v211)
      {
        v73 = [v208 member];
        v47 = sub_F07EC();
        v75 = v74;
      }

      else
      {
        v75 = 0xE500000000000000;
      }

      v76 = sub_3E850(v47, v75, &v232);
      v75, v77, v78, v79, v80, v81, v82, v83;
      *(v40 + 44) = v76;
      _os_log_impl(&dword_0, v37, v35, "%{public}s simID: %s remoteUri: %s addedParticipants: %@ addedBy: %s", v40, 0x34u);
      sub_372B0(v71, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v46 = *(v216 + 8);
      v13 = v206;
      v46(v39, v206);
    }

    else
    {

      v46 = *(v216 + 8);
      v46(v30, v13);
    }

    if (qword_127A28 != -1)
    {
      swift_once();
    }

    v84 = v224;
    v85 = sub_3C96C(v224, qword_127C70);
    v86 = v222;
    v87 = v223;
    v223[2](v222, v85, v84);
    sub_F044C();
    (v87[1])(v86, v84);
    if (v232 == 1)
    {
      v88 = v221;
      v214(v221, v213, v13);
      v89 = sub_F06AC();
      v90 = sub_F0CDC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = "Dropping participant addition due to override";
LABEL_28:
        _os_log_impl(&dword_0, v89, v90, v92, v91, 2u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    v93 = [v209 phoneNumber];
    if (!v93)
    {
      v88 = v219;
      v214(v219, v213, v13);
      v89 = sub_F06AC();
      v90 = sub_F0CEC();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        v92 = "Dropping participant addition due to missing phone number on subscription context";
        goto LABEL_28;
      }

LABEL_29:

      v115 = v88;
      return (v46)(v115, v13);
    }

    v94 = v93;
    v95 = sub_F07EC();
    v97 = v96;

    v98 = v212;
    v99 = [v212 remoteUri];
    if (v99)
    {
      v107 = v99;
      v224 = v97;
      v108 = [v98 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v109 = static NSUserDefaults.forceEncryption.getter();
      v239.id._object = &type metadata for CTRCSGroupIdentity;
      v239.attributes._rawValue = &off_11F358;
      v239.scheme._countAndFlagsBits = v107;
      LOBYTE(v239.scheme._object) = (v109 | v108) & 1;
      v110 = v98;
      RCSGroup.init(group:identity:)(v110, &v239, &v225);
      v235 = v228;
      v236 = v229;
      v237 = v230;
      v238 = v231;
      v232 = v225;
      v233 = v226;
      v234 = v227;
      v116 = *(&v226 + 1);
      v117 = v227;
      v118 = sub_373E8(&v232, *(&v226 + 1));
      sub_6F3C8(v118, v207, v116, v117);
      if (v119)
      {
        v223 = v110;
        v206 = v13;
        *&v225 = v119;
        v127 = v119;
        v128 = sub_37310(0, &qword_127EF0, IMDChat_ptr);
        v129 = v210;
        v130 = v208;
        v131 = v127;
        v132 = v224;

        RCSParticipantChange.init(chat:toIdentifier:changedParticipants:changedBy:changeType:fromMe:)(&v225, v95, v132, v129, v211, 0, 0, v128, v218, &protocol witness table for IMDChat);
        v133 = *(&v233 + 1);
        v134 = v234;
        sub_373E8(&v232, *(&v233 + 1));
        result = (*(v134 + 16))(v133, v134);
        if (!v135)
        {
          __break(1u);
          __break(1u);
          return result;
        }

        v142 = v135;
        v143 = *(*&v207[OBJC_IVAR___RCSServiceSession_state] + 72);
        if (*v143[1].IMDTelephonyServiceSession_opaque)
        {
          v144 = result;

          sub_51FEC(v144, v142);
          LOBYTE(v144) = v145;
          v143, v145, v146, v147, v148, v149, v150, v151;
          v142, v152, v153, v154, v155, v156, v157, v158;
          if (v144)
          {
            v166 = v209;
            v167 = [v209 phoneNumber];
            if (v167)
            {
              v168 = v167;
              v169 = sub_F07EC();
              v171 = v170;

              v172 = sub_53E04(_swiftEmptyArrayStorage);
              v173._countAndFlagsBits = 7103860;
              v173._object = 0xE300000000000000;
              v174._countAndFlagsBits = v169;
              v174._object = v171;
              RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v239, v173, v174, v172, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
              __chkstk_darwin(v175);
              RCSHandle.canonicalizedHandle(for:)(sub_55244, &v225);
              v166 = v209;
              sub_3CAB8(&v239);
              v176 = *(&v226 + 1);

              sub_3CAB8(&v225);
            }

            else
            {
              v176 = 0;
            }

            v178 = [v166 labelID];
            v179 = v218;
            if (v178)
            {
              v180 = v178;
              sub_F07EC();
              v182 = v181;
            }

            else
            {
              v182 = 0;
            }

            sub_62878(v179, &v232);
            sub_372B0(v179, &qword_127EE0, qword_F2CB0);
            v224, v183, v184, v185, v186, v187, v188, v189;
            v182, v190, v191, v192, v193, v194, v195, v196;
            v176, v197, v198, v199, v200, v201, v202, v203;

            return sub_53D58(&v232);
          }
        }

        else
        {
          v135, v135, v136, v137, v138, v139, v140, v141;
        }

        v224, v159, v160, v161, v162, v163, v164, v165;
        v177 = v218;
        RCSServiceSession.process(participantChange:)(v218);
        sub_77CA4(v177, 1);

        sub_372B0(v177, &qword_127EE0, qword_F2CB0);
        return sub_53D58(&v232);
      }

      v224, v120, v121, v122, v123, v124, v125, v126;
      sub_53D58(&v232);
    }

    else
    {
      v97, v100, v101, v102, v103, v104, v105, v106;
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v231 = 0u;
      sub_372B0(&v225, &qword_127EE8, &unk_F33F0);
    }

    v111 = v220;
    v214(v220, v213, v13);
    v112 = sub_F06AC();
    v113 = sub_F0CEC();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "Dropping participantsAdded for unknown group", v114, 2u);
    }

    v115 = v111;
    return (v46)(v115, v13);
  }

  return result;
}

void sub_4E520(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(id, id, id, void *))
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  a7(v12, v13, v14, a6);
}

uint64_t RCSServiceSession.didFinishGroupUpdate(_:forGroupChat:)(void *a1, void *a2)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v128 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v117 - v6;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = &v117 - v13;
  __chkstk_darwin(v14);
  v127 = &v117 - v15;
  __chkstk_darwin(v16);
  v18 = &v117 - v17;
  result = sub_53040(0xD000000000000025, 0x80000000000FE600);
  if (result)
  {
    v121 = v11;
    v120 = v2;
    v20 = Logger.rcs.unsafeMutableAddressor();
    v21 = *(v9 + 16);
    v122 = v20;
    v124 = v9 + 16;
    v123 = v21;
    (v21)(v18);
    v22 = a1;
    v23 = v9;
    v24 = v22;
    v25 = a2;
    v26 = v8;
    v27 = sub_F06AC();
    v28 = sub_F0CCC();
    v125 = v25;

    if (os_log_type_enabled(v27, v28))
    {
      v118 = v23;
      v119 = v26;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v133 = v117;
      *v29 = 136446722;
      *(v29 + 4) = sub_3E850(0xD000000000000025, 0x80000000000FE600, &v133);
      *(v29 + 12) = 2080;
      v31 = [v24 labelID];
      if (v31)
      {
        v32 = v31;
        v33 = sub_F07EC();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v38 = sub_3E850(v33, v35, &v133);
      v35, v39, v40, v41, v42, v43, v44, v45;
      *(v29 + 14) = v38;
      *(v29 + 22) = 2112;
      v46 = v125;
      *(v29 + 24) = v125;
      *v30 = v46;
      v47 = v46;
      _os_log_impl(&dword_0, v27, v28, "%{public}s simID: %s forGroupChat: %@", v29, 0x20u);
      sub_372B0(v30, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v36 = *(v118 + 8);
      v37 = v119;
      v36(v18, v119);
    }

    else
    {

      v36 = *(v23 + 8);
      v36(v18, v26);
      v37 = v26;
    }

    if (qword_127AB0 != -1)
    {
      swift_once();
    }

    v48 = sub_3C96C(v5, qword_127E08);
    v49 = v128;
    (*(v128 + 16))(v7, v48, v5);
    sub_F044C();
    (*(v49 + 8))(v7, v5);
    if (v133 == 1)
    {
      v50 = v127;
      v123(v127, v122, v37);
      v51 = sub_F06AC();
      v52 = sub_F0CEC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "Dropping group update completion due to override", v53, 2u);
      }

      v54 = v50;
      return (v36)(v54, v37);
    }

    v55 = v125;
    v56 = [v125 remoteUri];
    if (!v56)
    {
      v75 = v126;
      v123(v126, v122, v37);
      v76 = sub_F06AC();
      v77 = sub_F0CEC();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_0, v76, v77, "Dropping didFinishGroupUpdate for group with no remoteUri", v78, 2u);
      }

      v54 = v75;
      return (v36)(v54, v37);
    }

    v57 = v56;
    v58 = [v55 remoteUri];
    if (v58)
    {
      v59 = v58;
      v60 = [v55 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v61 = static NSUserDefaults.forceEncryption.getter();
      v131 = &type metadata for CTRCSGroupIdentity;
      v132 = &off_11F358;
      v129 = v59;
      v130 = (v61 | v60) & 1;
      RCSGroup.init(group:identity:)(v55, &v129, &v133);
      v62 = [v57 conversationID];
      v63 = sub_F07EC();
      v65 = v64;

      sub_54C4C(&v133, &v129);
      sub_60AF0(v63, v65, &v129);
      v67 = v66;

      v65, v68, v69, v70, v71, v72, v73, v74;
      sub_372B0(&v129, &qword_127EE8, &unk_F33F0);
      return sub_53D58(&v133);
    }

    else
    {
      sub_53D04();
      v79 = swift_allocError();
      swift_willThrow();
      v123(v121, v122, v37);
      swift_errorRetain();
      v80 = sub_F06AC();
      v81 = sub_F0CEC();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        swift_errorRetain();
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 4) = v84;
        *v83 = v84;
        _os_log_impl(&dword_0, v80, v81, "Error processing group update completion: %@", v82, 0xCu);
        sub_372B0(v83, &qword_127AF0, &qword_F28E0);
        v55 = v125;
      }

      v36(v121, v37);
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v85 = result;
        *&v133 = 0x52552070756F7267;
        *(&v133 + 1) = 0xEA00000000002049;
        v86 = [v55 remoteUri];
        if (v86)
        {
          v87 = v86;
          v88 = [v86 focus];

          v89 = sub_F07EC();
          v91 = v90;
        }

        else
        {
          v91 = 0xE500000000000000;
          v89 = 0x3E6C696E3CLL;
        }

        v138._countAndFlagsBits = v89;
        v138._object = v91;
        sub_F08CC(v138);
        v91, v92, v93, v94, v95, v96, v97, v98;
        v99 = v133;
        v100 = sub_F0FBC();
        v102 = v101;
        LOBYTE(v133) = 1;
        *(&v133 + 1) = v100;
        v134 = v101;
        v135 = v99;
        v136 = v79;
        v137 = 0;
        swift_errorRetain();
        sub_94528(&v133);
        *(&v99 + 1), v103, v104, v105, v106, v107, v108, v109;
        v102, v110, v111, v112, v113, v114, v115, v116;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t RCSServiceSession.didFinishExit(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000016, 0x80000000000FE660);
  if (result)
  {
    v11 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v11, v6);
    v12 = a1;
    v13 = a2;
    v14 = sub_F06AC();
    v15 = sub_F0CCC();

    if (os_log_type_enabled(v14, v15))
    {
      v35 = v3;
      v16 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36[0] = v34;
      *v16 = 136446722;
      *(v16 + 4) = sub_3E850(0xD000000000000016, 0x80000000000FE660, v36);
      *(v16 + 12) = 2080;
      v17 = [v12 labelID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_F07EC();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_3E850(v19, v21, v36);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v16 + 14) = v22;
      *(v16 + 22) = 2112;
      *(v16 + 24) = v13;
      v30 = v33;
      *v33 = v13;
      v31 = v13;
      _os_log_impl(&dword_0, v14, v15, "%{public}s simID: %s operationResult: %@", v16, 0x20u);
      sub_372B0(v30, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      result = (*(v7 + 8))(v9, v6);
      v3 = v35;
    }

    else
    {

      result = (*(v7 + 8))(v9, v6);
    }

    if (*(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v36[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v36[4] = &protocol witness table for CTLazuliOperationResult;
      v36[0] = v13;
      v32 = v13;

      RCSGroupController.groupExitCompleted(with:)(v36);

      return sub_1EDC(v36);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void RCSServiceSession.evicted(fromGroup:withGroupInfo:evictedBy:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v87 - v13;
  if (sub_53040(0xD00000000000002BLL, 0x80000000000FE680))
  {
    v94 = v11;
    v15 = Logger.rcs.unsafeMutableAddressor();
    v16 = *(v9 + 16);
    v92 = v15;
    v93 = v9 + 16;
    v91 = v16;
    (v16)(v14);
    v95 = a3;
    v17 = a3;
    v18 = a1;
    v19 = a2;
    v20 = sub_F06AC();
    v21 = sub_F0CCC();
    v90 = v17;

    v22 = v19;
    v96 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v88 = v9;
      v89 = v4;
      v23 = swift_slowAlloc();
      *&v97[0] = swift_slowAlloc();
      *v23 = 136446978;
      *(v23 + 4) = sub_3E850(0xD00000000000002BLL, 0x80000000000FE680, v97);
      *(v23 + 12) = 2080;
      v24 = [v18 labelID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_F07EC();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0xE000000000000000;
      }

      v30 = v22;
      v31 = sub_3E850(v26, v28, v97);
      v28, v32, v33, v34, v35, v36, v37, v38;
      *(v23 + 14) = v31;
      *(v23 + 22) = 2080;
      v39 = [v22 destination];
      v40 = sub_F07EC();
      v42 = v41;

      v43 = sub_3E850(v40, v42, v97);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v23 + 24) = v43;
      *(v23 + 32) = 2080;
      if (v95)
      {
        v51 = [v90 member];
        v52 = sub_F07EC();
        v54 = v53;
      }

      else
      {
        v54 = 0xE600000000000000;
        v52 = 0x296C6C756E28;
      }

      v4 = v89;
      v55 = sub_3E850(v52, v54, v97);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v23 + 34) = v55;
      _os_log_impl(&dword_0, v20, v96, "%{public}s simID: %s evicted from group %s by %s", v23, 0x2Au);
      swift_arrayDestroy();

      v29 = *(v88 + 8);
      v29(v14, v8);
    }

    else
    {

      v29 = *(v9 + 8);
      v29(v14, v8);
      v30 = v22;
    }

    v63 = v30;
    sub_5270C(v63, 0, v4);
    v65 = v64;

    if (v65)
    {
      v66 = [v63 conversationID];
      v67 = sub_F07EC();
      v69 = v68;

      memset(v97, 0, 112);
      sub_60AF0(v67, v69, v97);
      v71 = v70;
      v69, v72, v73, v74, v75, v76, v77, v78;

      sub_372B0(v97, &qword_127EE8, &unk_F33F0);
      v79 = [v65 chatIdentifier];
      if (v79)
      {
        v80 = v79;
        v81 = [v65 style];
        v82 = [v4 account];
        [v4 didLeaveChat:v80 style:v81 account:v82];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v83 = v94;
      v91(v94, v92, v8);
      v84 = sub_F06AC();
      v85 = sub_F0CEC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v84, v85, "Dropping eviction from unknown group", v86, 2u);
      }

      v29(v83, v8);
    }
  }
}

uint64_t RCSServiceSession.didFinishParticipantsAddition(_:added:didNotAdd:with:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000036, 0x80000000000FE6B0);
  if (result)
  {
    v88 = v4;
    v14 = Logger.rcs.unsafeMutableAddressor();
    (*(v10 + 16))(v12, v14, v9);
    v15 = a3;
    v86 = v9;
    v16 = v12;
    v17 = v10;
    v18 = v15;
    v19 = a4;
    v20 = a1;
    v91 = a2;
    v21 = a2;
    v22 = sub_F06AC();
    v23 = sub_F0CCC();
    v87 = v19;

    v90 = v18;
    v89 = v21;

    v84 = v23;
    v24 = v23;
    v25 = v22;
    if (os_log_type_enabled(v22, v24))
    {
      v83 = v17;
      v26 = v86;
      v85 = a3;
      v27 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v92[0] = v82;
      *v27 = 136447234;
      *(v27 + 4) = sub_3E850(0xD000000000000036, 0x80000000000FE6B0, v92);
      *(v27 + 12) = 2080;
      v28 = [v20 labelID];
      if (v28)
      {
        v29 = v28;
        v30 = sub_F07EC();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v33 = v87;
      v34 = 0x3E6C696E3CLL;
      v35 = sub_3E850(v30, v32, v92);
      v32, v36, v37, v38, v39, v40, v41, v42;
      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      if (v91)
      {
        v43 = [v89 description];
        v44 = sub_F07EC();
        v46 = v45;
      }

      else
      {
        v46 = 0xE500000000000000;
        v44 = 0x3E6C696E3CLL;
      }

      v47 = sub_3E850(v44, v46, v92);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v27 + 24) = v47;
      *(v27 + 32) = 2080;
      if (v85)
      {
        v55 = [v90 description];
        v34 = sub_F07EC();
        v57 = v56;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      v58 = sub_3E850(v34, v57, v92);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v27 + 34) = v58;
      *(v27 + 42) = 2112;
      *(v27 + 44) = v33;
      v66 = v81;
      *v81 = v33;
      v67 = v33;
      _os_log_impl(&dword_0, v25, v84, "%{public}s simID: %s added %s notAdded %s operationResult: %@", v27, 0x34u);
      sub_372B0(v66, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      (*(v83 + 8))(v16, v26);
      a3 = v85;
    }

    else
    {

      (*(v17 + 8))(v16, v86);
      v33 = v87;
    }

    type metadata accessor for RCSServiceSession(0);
    v68 = v89;
    v69 = v90;
    result = RCSGroupController.ParticipantModificationResult.init(modified:notModified:)(v91, a3);
    if (*(*(v88 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v71 = v70;
      v72 = result;
      v92[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v92[4] = &protocol witness table for CTLazuliOperationResult;
      v92[0] = v33;
      v73 = v33;

      RCSGroupController.participantRemovalCompleted(with:groupOperation:)(v72, v71, v92);

      sub_54CA8(v72, v71, v74, v75, v76, v77, v78, v79);
      return sub_1EDC(v92);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didFinishParticipantsRemoval(_:removed:didNotRemove:with:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_F06CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000003ALL, 0x80000000000FE6F0);
  if (result)
  {
    v88 = v4;
    v14 = Logger.rcs.unsafeMutableAddressor();
    (*(v10 + 16))(v12, v14, v9);
    v15 = a3;
    v86 = v9;
    v16 = v12;
    v17 = v10;
    v18 = v15;
    v19 = a4;
    v20 = a1;
    v91 = a2;
    v21 = a2;
    v22 = sub_F06AC();
    v23 = sub_F0CCC();
    v87 = v19;

    v90 = v18;
    v89 = v21;

    v84 = v23;
    v24 = v23;
    v25 = v22;
    if (os_log_type_enabled(v22, v24))
    {
      v83 = v17;
      v26 = v86;
      v85 = a3;
      v27 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v92[0] = v82;
      *v27 = 136447234;
      *(v27 + 4) = sub_3E850(0xD00000000000003ALL, 0x80000000000FE6F0, v92);
      *(v27 + 12) = 2080;
      v28 = [v20 labelID];
      if (v28)
      {
        v29 = v28;
        v30 = sub_F07EC();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v33 = v87;
      v34 = 0x3E6C696E3CLL;
      v35 = sub_3E850(v30, v32, v92);
      v32, v36, v37, v38, v39, v40, v41, v42;
      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      if (v91)
      {
        v43 = [v89 description];
        v44 = sub_F07EC();
        v46 = v45;
      }

      else
      {
        v46 = 0xE500000000000000;
        v44 = 0x3E6C696E3CLL;
      }

      v47 = sub_3E850(v44, v46, v92);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v27 + 24) = v47;
      *(v27 + 32) = 2080;
      if (v85)
      {
        v55 = [v90 description];
        v34 = sub_F07EC();
        v57 = v56;
      }

      else
      {
        v57 = 0xE500000000000000;
      }

      v58 = sub_3E850(v34, v57, v92);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v27 + 34) = v58;
      *(v27 + 42) = 2112;
      *(v27 + 44) = v33;
      v66 = v81;
      *v81 = v33;
      v67 = v33;
      _os_log_impl(&dword_0, v25, v84, "%{public}s simID: %s removed %s notRemoved %s operationResult: %@", v27, 0x34u);
      sub_372B0(v66, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      (*(v83 + 8))(v16, v26);
      a3 = v85;
    }

    else
    {

      (*(v17 + 8))(v16, v86);
      v33 = v87;
    }

    type metadata accessor for RCSServiceSession(0);
    v68 = v89;
    v69 = v90;
    result = RCSGroupController.ParticipantModificationResult.init(modified:notModified:)(v91, a3);
    if (*(*(v88 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v71 = v70;
      v72 = result;
      v92[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v92[4] = &protocol witness table for CTLazuliOperationResult;
      v92[0] = v33;
      v73 = v33;

      RCSGroupController.participantRemovalCompleted(with:groupOperation:)(v72, v71, v92);

      sub_54CA8(v72, v71, v74, v75, v76, v77, v78, v79);
      return sub_1EDC(v92);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_50574(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void (*a7)(id, void *, void *, id))
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  a7(v12, a4, a5, v15);
}

uint64_t RCSServiceSession.didFinishGroupChatCreation(_:forGroupChat:with:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD000000000000030, 0x80000000000FE730);
  if (result)
  {
    v13 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v11, v13, v8);
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = sub_F06AC();
    v18 = sub_F0CCC();

    if (os_log_type_enabled(v17, v18))
    {
      v39 = v18;
      v41 = v15;
      v42 = v4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v19 = 136446978;
      *(v19 + 4) = sub_3E850(0xD000000000000030, 0x80000000000FE730, v44);
      *(v19 + 12) = 2080;
      v40 = v14;
      v21 = [v14 labelID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_F07EC();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_3E850(v23, v25, v44);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v19 + 14) = v26;
      *(v19 + 22) = 2112;
      v15 = v41;
      *(v19 + 24) = v41;
      *(v19 + 32) = 2112;
      *(v19 + 34) = v16;
      *v20 = v15;
      v20[1] = v16;
      v34 = v15;
      v35 = v16;
      _os_log_impl(&dword_0, v17, v39, "%{public}s simID: %s forGroupChat: %@ operationResult: %@", v19, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v9 + 8))(v11, v8);
      v4 = v42;
      v14 = v40;
    }

    else
    {

      result = (*(v9 + 8))(v11, v8);
    }

    if (*(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {
      v44[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v44[4] = &protocol witness table for CTLazuliOperationResult;
      v43 = v14;
      v44[0] = v16;
      v36 = v16;

      RCSGroupController.groupCreationCompleted(with:operationResult:subscriptionContext:)(v15, v44, &v43);

      return sub_1EDC(v44);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RCSServiceSession.didFinishSubjectChange(_:withNewSubject:with:)(void *a1, void *a2, void *a3)
{
  v7 = sub_F06CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000002ELL, 0x80000000000FE770);
  if (result)
  {
    v60 = v3;
    v12 = Logger.rcs.unsafeMutableAddressor();
    (*(v8 + 16))(v10, v12, v7);
    v13 = a2;
    v14 = a3;
    v15 = v10;
    v16 = a2;
    v17 = a1;
    v18 = sub_F06AC();
    v19 = sub_F0CCC();
    v58 = v14;

    v59 = v13;
    v20 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v56 = v8;
      v57 = v16;
      v21 = v18;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61[0] = v55;
      *v22 = 136446978;
      *(v22 + 4) = sub_3E850(0xD00000000000002ELL, 0x80000000000FE770, v61);
      *(v22 + 12) = 2080;
      v24 = [v17 labelID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_F07EC();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0xE000000000000000;
      }

      v32 = sub_3E850(v26, v28, v61);
      v28, v33, v34, v35, v36, v37, v38, v39;
      *(v22 + 14) = v32;
      *(v22 + 22) = 2112;
      v30 = v58;
      v29 = v59;
      *(v22 + 24) = v59;
      *(v22 + 32) = 2112;
      *(v22 + 34) = v30;
      v31 = v57;
      *v23 = v57;
      v23[1] = v30;
      v40 = v29;
      v41 = v30;
      _os_log_impl(&dword_0, v21, v20, "%{public}s simID: %s newSubject: %@ operationResult: %@", v22, 0x2Au);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      result = (*(v56 + 8))(v15, v7);
    }

    else
    {

      result = (*(v8 + 8))(v15, v7);
      v30 = v58;
      v29 = v59;
      v31 = v16;
    }

    if (*(*(v60 + OBJC_IVAR___RCSServiceSession_state) + 40))
    {

      if (v31)
      {
        v42 = [v29 displayString];
        v43 = sub_F07EC();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      v61[3] = sub_37310(0, &qword_127EF8, CTLazuliOperationResult_ptr);
      v61[4] = &protocol witness table for CTLazuliOperationResult;
      v61[0] = v30;
      v46 = v30;
      RCSGroupController.groupRenameCompleted(with:operationResult:)(v43, v45, v61);

      v45, v47, v48, v49, v50, v51, v52, v53;
      return sub_1EDC(v61);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}