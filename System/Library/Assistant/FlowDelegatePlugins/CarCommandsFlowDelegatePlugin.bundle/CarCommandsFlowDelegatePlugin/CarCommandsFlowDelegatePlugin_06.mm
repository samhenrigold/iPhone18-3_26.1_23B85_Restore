uint64_t sub_A4CCC()
{
  v1 = *(v0 + 160);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_A4DF8;

  return v6(v0 + 56, v2, v3);
}

uint64_t sub_A4DF8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_A4EF4()
{
  if (*(v0 + 80))
  {
    sub_D124((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_D084((v0 + 16), v1);
    (*(v2 + 8))(v1, v2);
    sub_168314();
    if (v3 == 0.0)
    {
      v4 = 1;
    }

    else
    {
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      sub_D084((v0 + 16), v11);
      v4 = (*(v12 + 32))(v11, v12);
    }

    *(v0 + 280) = v4 & 1;
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    if (v4)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    v29 = v15;
    if (v4)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    sub_D084((v0 + 16), v13);
    v17 = (*(v14 + 24))(v13, v14);
    *(v0 + 281) = v17 & 1;
    if (v17)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    sub_16ACF4(88);
    v32._countAndFlagsBits = 0x656C2065676E6152;
    v32._object = 0xEC000000203A7466;
    sub_16A744(v32);
    sub_A5AD4();
    v33._countAndFlagsBits = sub_16AE24();
    sub_16A744(v33);

    v34._countAndFlagsBits = 0xD000000000000015;
    v34._object = 0x8000000000188160;
    sub_16A744(v34);
    v35._countAndFlagsBits = v29;
    v35._object = v16;
    sub_16A744(v35);

    v36._countAndFlagsBits = 0xD000000000000031;
    v36._object = 0x8000000000188180;
    sub_16A744(v36);
    v37._countAndFlagsBits = v18;
    v37._object = v19;
    sub_16A744(v37);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v20 = *(v0 + 168);
    v21 = *(v0 + 160);
    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    v23 = sub_16A9A4();
    sub_386D8(v23, 0x2000000uLL, 0xD00000000000008BLL, 0x8000000000188050, 0xD000000000000020, 0x8000000000188100, 45, 0, 0xE000000000000000);

    type metadata accessor for CarCommandsGetCarRemainingRangeCATsSimple(0);
    sub_16A154();
    *(v0 + 224) = sub_16A0F4();
    v24 = *(type metadata accessor for GetCarRemainingRangeAction(0) + 24);
    *(v0 + 128) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 232) = sub_53C0C(v20 + v24, v0 + 96);
    sub_D188(v0 + 96, &qword_1E6030, &unk_173620);
    v25 = v21[3];
    v26 = v21[4];
    sub_D084(v21, v25);
    v30 = (*(v26 + 72) + **(v26 + 72));
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_A5464;

    return v30(v25, v26);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E9A90, &qword_173618);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = *(v0 + 168);
    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    v7 = sub_16A9A4();
    sub_386D8(v7, 0x2000000uLL, 0xD00000000000008BLL, 0x8000000000188050, 0xD000000000000020, 0x8000000000188100, 38, 0xD000000000000028, 0x8000000000188130);
    sub_89054(&unk_179C18);
    v8 = *v5;
    v9 = swift_task_alloc();
    *(v0 + 272) = v9;
    *v9 = v0;
    v9[1] = sub_A57B8;

    return v28(v8);
  }
}

uint64_t sub_A5464(char a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 248) = v1;

  if (v1)
  {

    sub_10B4C();

    return _swift_task_switch(v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v5 + 256) = v10;
    *v10 = v7;
    v10[1] = sub_A55F0;
    v11 = *(v5 + 281);
    v12 = *(v5 + 280);
    v13 = *(v5 + 232);

    return sub_114C4C(v13, v12, v11, a1 & 1);
  }
}

uint64_t sub_A55F0()
{
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_A5738()
{
  sub_D2DC();
  v1 = sub_A5B70();
  v2(v1);
  sub_D13C((v0 + 16));
  v3 = *(v0 + 144);
  sub_A5B80();

  sub_30AEC();

  return v4(v3);
}

uint64_t sub_A57B8(uint64_t a1)
{
  v4 = *v2;
  sub_D254();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_A58F8()
{
  sub_D2DC();
  sub_A5B80();

  sub_D37C();

  return v0();
}

uint64_t sub_A5958()
{
  sub_D2DC();
  v1 = sub_A5B70();
  v2(v1);
  sub_D13C((v0 + 16));
  sub_A5B80();

  sub_D37C();

  return v3();
}

uint64_t sub_A59D0()
{
  sub_D2DC();
  v1 = sub_A5B70();
  v2(v1);
  sub_D13C((v0 + 16));
  sub_A5B80();

  sub_D37C();

  return v3();
}

uint64_t sub_A5A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_88ED0;

  return sub_A45D8();
}

unint64_t sub_A5AD4()
{
  result = qword_1E9A98;
  if (!qword_1E9A98)
  {
    sub_37130(&qword_1E7630, &qword_173610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9A98);
  }

  return result;
}

void sub_A5B38(os_log_type_t a1)
{

  sub_386D8(a1, 0x2000000uLL, v3 + 121, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 31, v2, v1);
}

uint64_t sub_A5B80()
{
}

uint64_t sub_A5B98()
{
  sub_A73D8();
  sub_76D10();
  v2 = v0;
  v3 = sub_A73D8();
  v4.super.super.isa = sub_16AAB4(v3).super.super.isa;
  v5 = sub_A73C0(v4.super.super.isa);

  if (v5)
  {

    return 0;
  }

  else
  {
    v7 = v0;
    v8.super.super.isa = sub_16AAB4(1).super.super.isa;
    v9 = sub_A73C0(v8.super.super.isa);

    if (v9)
    {

      return 1;
    }

    else
    {
      v10 = v7;
      v11.super.super.isa = sub_16AAB4(2).super.super.isa;
      v12 = sub_A73C0(v11.super.super.isa);

      if (v12)
      {

        return 2;
      }

      else
      {
        v13 = v10;
        v14.super.super.isa = sub_16AAB4(3).super.super.isa;
        v15 = sub_A73C0(v14.super.super.isa);

        if (v15)
        {

          return 3;
        }

        else
        {
          v16.super.super.isa = sub_16AAB4(19).super.super.isa;
          v17 = sub_A73C0(v16.super.super.isa);

          if (v17)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

void *sub_A5CA8()
{
  type metadata accessor for PlatformUtils();
  inited = swift_initStackObject();
  if (sub_138E0C(inited))
  {
    if (qword_1E5900 != -1)
    {
      sub_A73A0(&qword_1E5900);
    }

    v1 = qword_1F0C20;
    v10 = type metadata accessor for CarKeySessionManager();
    v11 = &off_1D70B8;
    *&v9 = v1;
    type metadata accessor for CarKeySessionServiceHelper();
    v2 = swift_allocObject();
    sub_D124(&v9, v2 + 16);
    sub_A6F84(v1, v2, type metadata accessor for LowPowerCarKeySessionService, sub_A7174);
    v3 = sub_A73D8();
    v4 = type metadata accessor for LowPowerCarKeySessionService(v3);
    v5 = &off_1D42A0;
  }

  else
  {
    if (qword_1E5900 != -1)
    {
      sub_A73A0(&qword_1E5900);
    }

    v6 = qword_1F0C20;
    v10 = type metadata accessor for CarKeySessionManager();
    v11 = &off_1D70B8;
    *&v9 = v6;
    type metadata accessor for CarKeySessionServiceHelper();
    v2 = swift_allocObject();
    sub_D124(&v9, v2 + 16);
    sub_A6F84(v6, v2, type metadata accessor for CarKeySessionService, sub_A70B0);
    sub_A73D8();
    v4 = type metadata accessor for CarKeySessionService();
    v5 = &off_1D6C70;
  }

  v10 = v4;
  v11 = v5;
  *&v9 = v2;
  v7 = objc_allocWithZone(type metadata accessor for CarKeyPassManager());
  result = sub_A5E5C(&v9);
  qword_1F0BE8 = result;
  return result;
}

void *sub_A5E5C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_platformUtils];
  v5 = type metadata accessor for PlatformUtils();
  v6 = swift_allocObject();
  v4[3] = v5;
  v4[4] = &off_1DA340;
  *v4 = v6;
  v7 = &v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_sessionManager];
  v8 = type metadata accessor for CarKeySessionManager();
  v9 = [objc_allocWithZone(v8) init];
  *(v7 + 3) = v8;
  *(v7 + 4) = &off_1D70B8;
  *v7 = v9;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_386D8(v11, 0x20000uLL, 0xD00000000000008ALL, 0x8000000000188220, 0xD00000000000001BLL, 0x80000000001882B0, 23, 0xD000000000000027, 0x80000000001882D0);
  sub_10824(a1, &v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService]);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CarKeyPassManager();
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_D13C(a1);
  return v12;
}

uint64_t sub_A5FD8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return sub_D2B0();
}

uint64_t sub_A5FF0()
{
  sub_D3A4();
  sub_D084((*(v0 + 112) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService), *(*(v0 + 112) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService + 24));
  sub_A7370();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_A6108;
  sub_A738C();

  return v2();
}

uint64_t sub_A6108()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_A61EC()
{
  sub_D3A4();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_D124((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_D084((v0 + 16), v2);
    v4 = (*(v3 + 8))(v1, v2, v3);
    sub_D13C((v0 + 16));
  }

  else
  {
    sub_A72B0(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x20000uLL, 0xD00000000000008ALL, 0x8000000000188220, 0xD00000000000002ELL, 0x80000000001883D0, 30, 0xD00000000000002DLL, 0x8000000000188400);
    v4 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_A6354(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_D2B0();
}

uint64_t sub_A6368()
{
  sub_D3A4();
  sub_D084((*(v0 + 64) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService), *(*(v0 + 64) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService + 24));
  sub_A7370();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_A6480;
  sub_A738C();

  return v2();
}

uint64_t sub_A6480()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_A6564()
{
  sub_D3A4();
  v1 = *(v0 + 40);
  sub_A72B0(v0 + 16);
  if (!v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 0x20000uLL, 0xD00000000000008ALL, 0x8000000000188220, 0xD00000000000001DLL, 0x8000000000188360, 39, 0xD000000000000041, 0x8000000000188380);
  }

  v4 = *(v0 + 8);

  return v4(v1 == 0);
}

uint64_t sub_A6674(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return sub_D2B0();
}

uint64_t sub_A668C()
{
  sub_D3A4();
  v1 = v0[22];
  v0[17] = &_swiftEmptySetSingleton;
  sub_D084((v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService), *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService + 24));
  sub_A7370();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_A67B0;
  sub_A738C();

  return v3();
}

uint64_t sub_A67B0()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = sub_D388();

  return _swift_task_switch(v3);
}

uint64_t sub_A6894()
{
  v24 = v0;
  if (*(v0 + 120))
  {
    v2 = *(v0 + 160);
    sub_D124((v0 + 96), v0 + 56);
    v3 = *(v0 + 160);
    if ((v2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_16ABC4();
      sub_76D10();
      sub_A7318();
      sub_16A944();
      v2 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
    }

    else
    {
      v11 = -1 << *(v3 + 32);
      v4 = v3 + 56;
      v5 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v7 = v13 & *(v3 + 56);

      v6 = 0;
    }

    if (v2 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v14 = v6;
      v15 = v7;
      v16 = v6;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v1 = (v15 - 1) & v15;
      v17 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
LABEL_24:
        sub_4A004(v2);
        v10 = *(v0 + 136);
        sub_D13C((v0 + 56));
        goto LABEL_25;
      }

      while (1)
      {
        v19 = *(v0 + 80);
        v20 = *(v0 + 88);
        sub_D084((v0 + 56), v19);
        if ((*(v20 + 16))(v17, v19, v20))
        {
          sub_8F650(&v23, v17);
        }

        else
        {
        }

        v6 = v16;
        v7 = v1;
        if ((v2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v18 = sub_16AC34();
        if (v18)
        {
          *(v0 + 152) = v18;
          sub_76D10();
          swift_dynamicCast();
          v17 = *(v0 + 144);
          v16 = v6;
          v1 = v7;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v5 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v15 = *(v4 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_A72B0(v0 + 96);
  v2 = "carKeySessionService";
  v4 = "ew CarKeyPassManager...";
  v1 = 0x8000000000188330;
  if (qword_1E58E8 != -1)
  {
LABEL_29:
    sub_9ED4(&qword_1E58E8);
  }

  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x20000uLL, 0xD00000000000008ALL, v2 | 0x8000000000000000, 0xD000000000000021, (v4 | 0x8000000000000000), 49, 0xD000000000000029, v1);
  v10 = &_swiftEmptySetSingleton;
LABEL_25:
  v21 = *(v0 + 8);

  return v21(v10);
}

uint64_t sub_A6BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_D2B0();
}

uint64_t sub_A6BC0()
{
  sub_D3A4();
  v1 = (v0[7] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin17CarKeyPassManager_carKeySessionService);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v11 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_A6CFC;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_A6CFC()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id sub_A6E20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CarKeyPassManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_A6ED4(uint64_t a1)
{
  v2 = [v1 getStatusForRKEFunction:a1];

  return v2;
}

uint64_t sub_A6F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, id))
{
  v17 = type metadata accessor for CarKeySessionServiceHelper();
  v18 = &off_1D5048;
  v16[0] = a2;
  v8 = objc_allocWithZone(a3(0));
  v9 = sub_2F8D0(v16, v17);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = a4(a1, *v11, v8);
  sub_D13C(v16);
  return v13;
}

id sub_A70B0(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = type metadata accessor for CarKeySessionManager();
  v10[4] = &off_1D70B8;
  v10[0] = a1;
  v9[3] = type metadata accessor for CarKeySessionServiceHelper();
  v9[4] = &off_1D5048;
  v9[0] = a2;
  sub_10824(v10, a3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionManager);
  sub_10824(v9, a3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper);
  v8.receiver = a3;
  v8.super_class = type metadata accessor for CarKeySessionService();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_D13C(v10);
  sub_D13C(v9);
  return v6;
}

id sub_A7174(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v14[3] = type metadata accessor for CarKeySessionManager();
  v14[4] = &off_1D70B8;
  v14[0] = a1;
  v13[3] = type metadata accessor for CarKeySessionServiceHelper();
  v13[4] = &off_1D5048;
  v13[0] = a2;
  v6 = &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_assertion];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_isConnecting] = 0;
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_continuation;
  v8 = sub_5758(&qword_1E66A0, &qword_16E320);
  sub_5370(&a3[v7], 1, 1, v8);
  a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_lowPowerWatchHasAttemptedToConnect] = 0;
  v9 = &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_currentSession];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  sub_10824(v14, &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionManager]);
  sub_10824(v13, &a3[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin28LowPowerCarKeySessionService_sessionHelper]);
  v12.receiver = a3;
  v12.super_class = type metadata accessor for LowPowerCarKeySessionService(0);
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v14);
  sub_D13C(v13);
  return v10;
}

uint64_t sub_A72B0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E9AE0, &unk_1736B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A7318()
{
  result = qword_1E9AE8;
  if (!qword_1E9AE8)
  {
    sub_76D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9AE8);
  }

  return result;
}

uint64_t sub_A73A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_A73C0(uint64_t a1)
{

  return sub_16AAD4();
}

uint64_t sub_A73E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_D2B0();
}

uint64_t sub_A73FC()
{
  sub_D2DC();
  sub_D084((v0[4] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper), *(v0[4] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper + 24));
  swift_task_alloc();
  sub_D3E0();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_A74A4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_752F0(v3, v4);
}

uint64_t sub_A74A4()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_A7584()
{
  sub_D2DC();
  v3 = v2;
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v4;
  v1[20] = v5;
  v1[17] = v6;
  v1[18] = v7;
  swift_task_alloc();
  sub_D3E0();
  v1[23] = v8;
  *v8 = v9;
  v8[1] = sub_A7624;
  v10 = sub_A8670();

  return sub_A7C74(v10, v11, v3);
}

uint64_t sub_A7624()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_A79FC;
  }

  else
  {
    v7 = sub_A7724;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_A7724()
{
  sub_D2DC();
  sub_D084((v0[22] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper), *(v0[22] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper + 24));
  sub_10824((v0 + 2), (v0 + 12));
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_A77EC;
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];

  return sub_75F10(v6, v4, v5, v2, v3, (v0 + 12));
}

uint64_t sub_A77EC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 208) = v0;

  sub_D188(v3 + 96, &qword_1EA210, &unk_1708E0);
  if (v0)
  {
    v7 = sub_A7980;
  }

  else
  {
    v7 = sub_A7904;
  }

  return _swift_task_switch(v7);
}

uint64_t sub_A7904()
{
  sub_D2DC();
  v1 = sub_A8670();
  sub_A7A20(v1, v2);
  sub_D188(v0 + 56, &qword_1E66B0, &unk_16E380);
  sub_D13C((v0 + 16));
  sub_D37C();

  return v3();
}

uint64_t sub_A7980()
{
  sub_D2DC();
  v1 = sub_A8670();
  sub_A7A20(v1, v2);
  sub_D188(v0 + 56, &qword_1E66B0, &unk_16E380);
  sub_D13C((v0 + 16));
  sub_D37C();

  return v3();
}

uint64_t sub_A7A20(void *a1, uint64_t a2)
{
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  sub_386D8(v5, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0xD00000000000003DLL, 0x8000000000188620, 27, 0xD000000000000034, 0x8000000000188660);
  v6 = a1[3];
  v7 = a1[4];
  sub_D084(a1, v6);
  (*(v7 + 48))(v6, v7);
  sub_2F868(a2, v11, &qword_1E66B0, &unk_16E380);
  v8 = v12;
  if (!v12)
  {
    return sub_D188(v11, &qword_1E66B0, &unk_16E380);
  }

  v9 = v13;
  sub_D084(v11, v12);
  (*(v9 + 8))(v8, v9);
  return sub_D13C(v11);
}

void sub_A7BAC()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0x6575716552646E65, 0xEC00000029287473, 36, 0xD000000000000029, 0x80000000001885F0);
}

uint64_t sub_A7C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return sub_D2B0();
}

uint64_t sub_A7C8C()
{
  v1 = v0[14];
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v4 = (*(v3 + 40))(v2, v3);
  if (v4[2])
  {
    v5 = v0[15];
    v6 = v4[4];
    v0[16] = v6;
    v7 = v4[5];
    v0[17] = v7;

    v8 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper;
    v0[18] = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionService_sessionHelper;
    sub_D084((v5 + v8), *(v5 + v8 + 24));
    swift_task_alloc();
    sub_D3E0();
    v0[19] = v9;
    *v9 = v10;
    v9[1] = sub_A7EB4;
    v11 = v0[13];
    v12 = v0[14];

    return sub_7565C(v11, v12, v6, v7);
  }

  else
  {

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0xD00000000000002ALL, 0x8000000000181B20, 41, 0xD000000000000042, 0x80000000001885A0);
    sub_3CC14();
    swift_allocError();
    *v16 = xmmword_16E2A0;
    swift_willThrow();
    sub_D37C();

    return v17();
  }
}

uint64_t sub_A7EB4()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_A7FF0);
  }
}

uint64_t sub_A7FF0()
{
  sub_D2DC();
  v1 = (v0[15] + v0[18]);
  sub_D084(v1, v1[3]);
  swift_task_alloc();
  sub_D3E0();
  v0[20] = v2;
  *v2 = v3;
  v2[1] = sub_A8098;
  v4 = v0[16];
  v5 = v0[17];

  return sub_75A1C((v0 + 2), v4, v5);
}

uint64_t sub_A8098()
{
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    v4 = sub_A8394;
  }

  else
  {
    v4 = sub_A81C8;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_A81C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_A8670();
  sub_2F868(v3, v4, v5, v6);
  if (*(v2 + 80))
  {
    v7 = *(v2 + 96);
    sub_D188(v2 + 16, &qword_1EA210, &unk_1708E0);
    sub_D250((v2 + 56), v7);
    sub_D37C();
  }

  else
  {
    sub_D188(v2 + 56, &qword_1EA210, &unk_1708E0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = *(v2 + 104);
    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    v11 = sub_16A9A4();
    sub_386D8(v11, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001884C0, 0xD00000000000002ALL, 0x8000000000181B20, 49, 0xD000000000000046, 0x8000000000188550);
    sub_3CC14();
    swift_allocError();
    *v12 = xmmword_16E2A0;
    swift_willThrow();
    sub_D188(v2 + 16, &qword_1EA210, &unk_1708E0);
    sub_D188(v9, &qword_1E66B0, &unk_16E380);
    sub_D37C();
  }

  return v8();
}

uint64_t sub_A8394()
{
  sub_D2DC();
  sub_D188(*(v0 + 104), &qword_1E66B0, &unk_16E380);
  sub_D37C();

  return v1();
}

id sub_A8440(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CarKeySessionService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_A84E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_A73E4(a1, a2);
}

uint64_t sub_A8590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1039C;

  return sub_A7584();
}

uint64_t sub_A867C(uint64_t a1, uint64_t a2)
{
  v4 = sub_169724();
  sub_9F48();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_169764();
  v11 = result;
  v12 = 0;
  v13 = *(result + 16);
  v19 = v6 + 16;
  v20 = v13;
  v14 = (v6 + 8);
  while (1)
  {
    if (v20 == v12)
    {

      return 0;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    (*(v6 + 16))(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v4);
    if (sub_169714() == a1 && v15 == a2)
    {

LABEL_12:

      v18 = sub_169704();
      (*v14)(v9, v4);
      return v18;
    }

    v17 = sub_16AE54();

    if (v17)
    {
      goto LABEL_12;
    }

    result = (*v14)(v9, v4);
    ++v12;
  }

  __break(1u);
  return result;
}

void *sub_A8858(uint64_t a1)
{
  v49 = sub_169DB4();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5758(&qword_1E9B28, &unk_173710);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_1697C4();
  sub_9F48();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v42 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = 0;
  v18 = *(a1 + 16);
  v50 = a1;
  v51 = v18;
  v46 = (v3 + 8);
  v47 = v11 + 16;
  v44 = (v11 + 8);
  v41 = (v11 + 32);
  v43 = _swiftEmptyArrayStorage;
  while (v51 != v17)
  {
    v19 = *(v11 + 72);
    v45 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v20 = v9;
    (*(v11 + 16))(v16, v50 + v45 + v19 * v17, v9);
    sub_1697B4();
    v21 = sub_169DD4();
    v22 = sub_9E2C(v8, 1, v21);
    if (v22 == 1)
    {
      sub_A8D28(v8);
      v23 = 0;
    }

    else
    {
      v23 = sub_169DC4();
      (*(*(v21 - 8) + 8))(v8, v21);
    }

    v24 = v48;
    sub_169D84();
    v25 = sub_169DA4();
    (*v46)(v24, v49);
    if (v22 != 1 && v23 == v25)
    {
      v27 = *v41;
      (*v41)(v42, v16, v20);
      v28 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_146820(0, v28[2] + 1, 1);
        v28 = v52;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        sub_146820(v30 > 1, v31 + 1, 1);
        v28 = v52;
      }

      ++v17;
      v28[2] = v31 + 1;
      v43 = v28;
      v32 = v28 + v45 + v31 * v19;
      v9 = v20;
      v27(v32, v42, v20);
    }

    else
    {
      v9 = v20;
      (*v44)(v16, v20);
      ++v17;
    }
  }

  v33 = v43;
  if (v43[2])
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_16ACF4(45);

    v52 = 0x100000000000002BLL;
    v53 = 0x8000000000188790;
    v54._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v54);

    v35 = v52;
    v34 = v53;
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v36 = sub_16A584();
    sub_9DA0(v36, qword_1E65C0);
    v37 = sub_16A9A4();
    sub_386D8(v37, 0x800uLL, 0xD000000000000086, 0x80000000001886E0, 0xD000000000000015, 0x8000000000188770, 74, v35, v34);
  }

  else
  {
    v38 = v50;

    return v38;
  }

  return v33;
}

uint64_t sub_A8D28(uint64_t a1)
{
  v2 = sub_5758(&qword_1E9B28, &unk_173710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_A8D90()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetRadioStationRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v4 = sub_BC78C(qword_1F0E10);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_A8E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = type metadata accessor for CarCommandsError(0);
  __chkstk_darwin(v41);
  sub_A138();
  v4 = v3 - v2;
  v44 = sub_1693E4();
  sub_37404();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v11 = sub_16A584();
  v48 = sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  v53 = 0xD000000000000091;
  v54 = 0x8000000000188810;
  v59 = (&stru_20 + 15);
  v60 = 0xE100000000000000;
  sub_D030();
  v13 = sub_16AB34();
  v14 = sub_15AE4(v13);
  v16 = v15;

  if (v16)
  {
    v66._countAndFlagsBits = 32;
    v66._object = 0xE100000000000000;
    sub_16A744(v66);
    v67._countAndFlagsBits = 0xD000000000000016;
    v67._object = 0x800000000017FD50;
    sub_16A744(v67);
    v17 = v14;
    v18 = v16;
  }

  else
  {
    v17 = 0xD000000000000016;
    v18 = 0x800000000017FD50;
  }

  v53 = v17;
  v54 = v18;
  v59 = (&stru_20 + 26);
  v60 = 0xE100000000000000;
  v58 = 24;
  v68._countAndFlagsBits = sub_16AE24();
  sub_16A744(v68);

  v69._countAndFlagsBits = 58;
  v69._object = 0xE100000000000000;
  sub_16A744(v69);

  v19._countAndFlagsBits = sub_378D0(0x802uLL);
  if (v19._object)
  {
    v59 = &stru_20;
    v60 = 0xE100000000000000;
    sub_16A744(v19);

    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    sub_16A744(v70);
  }

  v21 = v53;
  v20 = v54;
  v22 = sub_16A574();
  if (os_log_type_enabled(v22, v12))
  {
    v23 = v12;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v59 = v25;
    *v24 = 136315138;
    v26 = sub_15BC8(v21, v20, &v59);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_0, v22, v23, "%s", v24, 0xCu);
    sub_D13C(v25);
    sub_D494(v25);
    sub_D494(v24);
  }

  else
  {
  }

  sub_169384();
  sub_8F624(&v53, 8, v27, v28, v29, v30, v31, v32, v41, 0x800000000017FD50, a2, v44, a1, 0x8000000000188810, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, &_swiftEmptySetSingleton, v60, v61, v62, v63, v64, v65);
  sub_86E4(v10, v59, &v53);

  (*(v6 + 8))(v10, v45);
  v33 = v56;
  sub_57A80(&v53);
  if (v33)
  {
    return sub_168C64();
  }

  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_AAAE4();
  sub_AAA7C(v35, v36, &unk_17A85C);
  swift_allocError();
  sub_548D0(v4, v37);
  v38 = sub_16A9A4();
  swift_getErrorValue();
  v39 = sub_16AEB4();
  sub_386D8(v38, 0x800uLL, 0xD000000000000091, v47, 0xD000000000000016, v42, 27, v39, v40);

  sub_168C74();
  return sub_5A09C(v4);
}

uint64_t sub_A92DC()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_173720;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_AAB80(0x6C656E6E616863, 0xE700000000000000);
  sub_AAB1C();
  *(v0 + 40) = sub_AAB80(0x6E6769736C6C6163, 0xE800000000000000);
  sub_AAB1C();
  *(v0 + 48) = sub_AAB80(1701667182, 0xE400000000000000);
  sub_AAB1C();
  *(v0 + 56) = sub_AAB80(0x636E657571657266, 0xE900000000000079);
  sub_AAB1C();
  *(v0 + 64) = sub_AAB80(1684955490, 0xE400000000000000);
  return v0;
}

uint64_t sub_A93F0()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_A94AC);
}

uint64_t sub_A94AC()
{
  v29 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD000000000000091;
  v0[3] = 0x8000000000188810;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    sub_16A744(v31);
    v32._countAndFlagsBits = 0xD000000000000029;
    v32._object = 0x80000000001888B0;
    sub_16A744(v32);
    v2 = v6;
    v1 = v8;
  }

  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  v0[6] = 65;
  v33._countAndFlagsBits = sub_16AE24();
  sub_16A744(v33);

  sub_16A744(v28);

  v9._countAndFlagsBits = sub_378D0(0x802uLL);
  if (v9._object)
  {
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_16A744(v9);

    v34._countAndFlagsBits = 32;
    v34._object = 0xE100000000000000;
    sub_16A744(v34);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v28._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494(v12);
    sub_D494(v11);
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  sub_16A3D4();
  v16 = *(v15 + 16);
  v17 = sub_30AF8();
  v16(v17);
  v18 = sub_85CAC(v14);
  if (v18)
  {
    v19 = v18;

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v23 = v0[7];
    v22 = v0[8];
    type metadata accessor for CarCommandsError(0);
    sub_AAAE4();
    sub_AAA7C(v24, v25, &unk_17A85C);
    swift_allocError();
    (v16)(v26, v23, v22);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_A9880()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v73 = sub_5758(&qword_1E9D80, &qword_1738D0);
  sub_37404();
  v70 = v1;
  v3 = __chkstk_darwin(v2);
  v69 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v68 - v5;
  sub_16A3D4();
  sub_16A444();
  sub_168904();
  sub_16A1C4();
  sub_16A1A4();
  sub_1687F4();

  v72 = v6;
  sub_168894();
  sub_1693F4();
  v7 = type metadata accessor for FeatureFlagHelper();
  v68[0] = v7;
  v8 = sub_7A728(v7);
  v9 = sub_168E34();
  sub_483C8(v9);
  sub_168E24();
  v74 = type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v10 = sub_5758(&qword_1E9D88, &qword_1738D8);
  v11 = sub_483C8(v10);
  v79 = v7;
  v80 = &off_1D9AF0;
  v78[0] = v8;
  v12 = (v11 + qword_1F0DF0);
  v68[1] = type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_AAB58();
  *v12 = sub_16A094();
  v12[1] = &off_1D4830;
  v13 = (v11 + qword_1F0DF8);
  v14 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  v71 = v14;
  sub_16A154();
  sub_AAB58();
  v15 = sub_16A094();
  v13[3] = v14;
  v13[4] = &off_1DA7E8;
  *v13 = v15;
  sub_10824(v81, v77);
  sub_10824(v78, v76);
  sub_7A6F4();
  sub_37404();
  __chkstk_darwin(v16);
  v18 = sub_AAAC4(v17, v68[0]);
  v19(v18);
  sub_AAB48();
  sub_1668CC();
  v21 = v20;

  sub_7A648();
  v81[0] = v21;
  sub_37284(&qword_1E9D90, &qword_1E9D88, &qword_1738D8, &unk_179F58);
  sub_AAB38();
  sub_168824();
  sub_7A62C();
  sub_30AF8();
  sub_1688D4();
  sub_1693F4();
  v22 = v68[0];
  v23 = sub_7A728(v68[0]);
  sub_AAB64();
  sub_168E24();
  *(sub_AAAFC() + 16) = 0;
  v24 = sub_5758(&qword_1E9D98, &qword_1738E0);
  v25 = sub_483C8(v24);
  v79 = v22;
  v80 = &off_1D9AF0;
  v78[0] = v23;
  v26 = (v25 + qword_1F0E38);

  sub_16A154();
  sub_AAB58();
  v27 = v71;
  v28 = sub_16A094();
  v26[3] = v27;
  v26[4] = &off_1DA7E8;
  *v26 = v28;
  sub_10824(v81, v77);
  sub_10824(v78, v76);
  sub_7A6F4();
  sub_37404();
  __chkstk_darwin(v29);
  v31 = sub_AAAC4(v30, v68[0]);
  v32(v31);
  sub_AAB48();
  sub_1668CC();
  v34 = v33;

  sub_7A648();
  v81[0] = v34;
  sub_37284(&qword_1E9DA0, &qword_1E9D98, &qword_1738E0, &unk_17A9B0);
  sub_AAB38();
  sub_168834();

  sub_1688E4();
  sub_1693F4();
  v35 = sub_7A728(v22);
  sub_AAB64();
  sub_168E24();
  *(sub_AAAFC() + 16) = 0;
  v36 = sub_5758(&qword_1E9DA8, &qword_1738E8);
  v37 = sub_483C8(v36);
  v79 = v22;
  v80 = &off_1D9AF0;
  v78[0] = v35;
  v38 = (v37 + qword_1F0E60);

  sub_16A154();
  sub_AAB58();
  v39 = v71;
  v40 = sub_16A094();
  v38[3] = v39;
  v38[4] = &off_1DA7E8;
  *v38 = v40;
  v41 = (v37 + qword_1F0E68);
  sub_16A154();
  sub_AAB58();
  *v41 = sub_16A094();
  v41[1] = &off_1D4800;
  sub_10824(v81, v77);
  sub_10824(v78, v76);
  sub_7A6F4();
  sub_37404();
  __chkstk_darwin(v42);
  v44 = sub_AAAC4(v43, v68[0]);
  v45(v44);
  sub_AAB48();
  sub_1668CC();
  v47 = v46;

  sub_7A648();
  v81[0] = v47;
  sub_37284(&qword_1E9DB0, &qword_1E9DA8, &qword_1738E8, &unk_17B3A8);
  sub_AAB38();
  sub_168864();
  sub_7A62C();
  sub_30AF8();
  v48 = v73;
  v49 = v72;
  sub_1688C4();
  sub_1693F4();
  v50 = sub_7A728(v22);
  sub_AAB64();
  sub_168E24();
  *(sub_AAAFC() + 16) = 0;
  v79 = v22;
  v80 = &off_1D9AF0;
  v78[0] = v50;
  v51 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy(0);
  v52 = sub_483C8(v51);
  sub_2F8D0(v78, v22);
  sub_37404();
  __chkstk_darwin(v53);
  v55 = sub_AAAC4(v54, v68[0]);
  v56(v55);
  v57 = *v41;
  v77[3] = v22;
  v77[4] = &off_1D9AF0;
  v77[0] = v57;
  *(v52 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v81, v76);
  sub_10824(v77, v75);
  sub_2F8D0(v75, v75[3]);
  sub_37404();
  __chkstk_darwin(v58);
  sub_A138();
  (*(v61 + 16))(v60 - v59);
  sub_1668CC();
  v63 = v62;
  sub_D13C(v81);
  sub_D13C(v77);
  sub_D13C(v75);
  sub_D13C(v78);
  v81[0] = v63;
  sub_AAA7C(&qword_1E9DB8, type metadata accessor for SetRadioStationHandleIntentFlowStrategy, &unk_174338);
  sub_1687E4();
  sub_7A62C();
  sub_30AF8();
  sub_168884();
  v64 = v70;
  (*(v70 + 16))(v69, v49, v48);
  v65 = sub_5758(&qword_1E9DC0, &unk_1738F0);
  sub_483C8(v65);
  v66 = sub_168914();
  (*(v64 + 8))(v49, v48);
  return v66;
}

uint64_t sub_AA290()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetRadioStationRCHFlowStrategy(uint64_t a1)
{
  result = qword_1E9B60;
  if (!qword_1E9B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AA39C(uint64_t a1)
{
  result = sub_AAA7C(&qword_1E9D68, type metadata accessor for SetRadioStationRCHFlowStrategy, &unk_173798);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_AA40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_A93F0();
}

uint64_t sub_AA4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetRadioStationRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_AA588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetRadioStationRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_AA658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetRadioStationRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_AA728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SetRadioStationRCHFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_AA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  v19 = type metadata accessor for SetRadioStationRCHFlowStrategy(0);
  *v18 = v12;
  v18[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v19, a6, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_AA8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_451FC();
}

uint64_t sub_AAA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AAAFC()
{

  return swift_allocObject();
}

uint64_t sub_AAB1C()
{

  return swift_allocObject();
}

uint64_t sub_AAB64()
{

  return swift_allocObject();
}

uint64_t sub_AAB80(uint64_t a1, uint64_t a2)
{

  return sub_168A34();
}

uint64_t type metadata accessor for CarCommandsSetCarPlaySeatSettingsCATsSimple(uint64_t a1)
{
  result = qword_1E9DC8;
  if (!qword_1E9DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AAC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_AADD4(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

void *sub_AAEDC(__int128 *a1, uint64_t a2)
{
  v5 = sub_168E34();
  sub_483C8(v5);
  v6 = sub_168E24();
  v2[5] = v5;
  v2[6] = &protocol witness table for ResponseFactory;
  v2[2] = v6;
  v2[13] = 0;
  sub_D124(a1, (v2 + 7));
  v2[12] = a2;
  return v2;
}

id sub_AAF54()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 104);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_117F78(v3);
    v5 = *(v0 + 104);
    *(v0 + 104) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_AAFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = type metadata accessor for CarCommandsError(0);
  __chkstk_darwin(v41);
  sub_A138();
  v4 = v3 - v2;
  v44 = sub_1693E4();
  sub_37404();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v11 = sub_16A584();
  v48 = sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  v53 = 0xD00000000000008FLL;
  v54 = 0x80000000001889A0;
  v59 = (&stru_20 + 15);
  v60 = 0xE100000000000000;
  sub_D030();
  v13 = sub_16AB34();
  v14 = sub_15AE4(v13);
  v16 = v15;

  if (v16)
  {
    v66._countAndFlagsBits = 32;
    v66._object = 0xE100000000000000;
    sub_16A744(v66);
    v67._countAndFlagsBits = 0xD000000000000016;
    v67._object = 0x800000000017FD50;
    sub_16A744(v67);
    v17 = v14;
    v18 = v16;
  }

  else
  {
    v17 = 0xD000000000000016;
    v18 = 0x800000000017FD50;
  }

  v53 = v17;
  v54 = v18;
  v59 = (&stru_20 + 26);
  v60 = 0xE100000000000000;
  v58 = 34;
  v68._countAndFlagsBits = sub_16AE24();
  sub_16A744(v68);

  v69._countAndFlagsBits = 58;
  v69._object = 0xE100000000000000;
  sub_16A744(v69);

  v19._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v19._object)
  {
    v59 = &stru_20;
    v60 = 0xE100000000000000;
    sub_16A744(v19);

    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    sub_16A744(v70);
  }

  v21 = v53;
  v20 = v54;
  v22 = sub_16A574();
  if (os_log_type_enabled(v22, v12))
  {
    v23 = v12;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v59 = v25;
    *v24 = 136315138;
    v26 = sub_15BC8(v21, v20, &v59);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_0, v22, v23, "%s", v24, 0xCu);
    sub_D13C(v25);
    sub_D494(v25);
    sub_D494(v24);
  }

  else
  {
  }

  sub_169384();
  sub_8F624(&v53, 5, v27, v28, v29, v30, v31, v32, v41, 0x800000000017FD50, a2, v44, a1, 0x80000000001889A0, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, &_swiftEmptySetSingleton, v60, v61, v62, v63, v64, v65);
  sub_86E4(v10, v59, &v53);

  (*(v6 + 8))(v10, v45);
  v33 = v56;
  sub_57A80(&v53);
  if (v33)
  {
    return sub_168C64();
  }

  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_ACD00();
  sub_ACCB8(v35, 255, v36, &unk_17A85C);
  swift_allocError();
  sub_548D0(v4, v37);
  v38 = sub_16A9A4();
  swift_getErrorValue();
  v39 = sub_16AEB4();
  sub_386D8(v38, 0x1000uLL, 0xD00000000000008FLL, v47, 0xD000000000000016, v42, 37, v39, v40);

  sub_168C74();
  return sub_5A09C(v4);
}

uint64_t sub_AB48C()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_173950;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  swift_allocObject();
  *(v0 + 48) = sub_168A34();
  return v0;
}

uint64_t sub_AB598()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_AB654);
}

uint64_t sub_AB654()
{
  v30 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD00000000000008FLL;
  v0[3] = 0x80000000001889A0;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_16A744(v32);
    v33._countAndFlagsBits = 0xD000000000000029;
    v33._object = 0x80000000001888B0;
    sub_16A744(v33);
    v2 = v6;
    v1 = v8;
  }

  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  v0[6] = 65;
  v34._countAndFlagsBits = sub_16AE24();
  sub_16A744(v34);

  sub_16A744(v29);

  v9._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v9._object)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_16A744(v9);

    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_16A744(v35);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v29._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494(v12);
    sub_D494(v11);
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A494();
  v18 = *(v15 + 16);
  v18(v14, v17, v16);
  v19 = sub_ED104(v14);
  if (v19)
  {
    v20 = v19;

    v21 = v0[1];

    return v21(v20);
  }

  else
  {
    v24 = v0[7];
    v23 = v0[8];
    type metadata accessor for CarCommandsError(0);
    sub_ACD00();
    sub_ACCB8(v25, 255, v26, &unk_17A85C);
    swift_allocError();
    v18(v27, v24, v23);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_ABA30()
{
  v1 = sub_16A164();
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v55 = sub_5758(&qword_1E9F50, &qword_173B28);
  sub_37404();
  v54 = v2;
  v4 = __chkstk_darwin(v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v8 = qword_1F0C70;
  v66 = type metadata accessor for WalletService();
  v67 = &off_1D7C28;
  *&v65 = v8;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_16A094();
  sub_161E98();

  sub_D13C(&v65);
  v52 = v0;
  v48 = *(v0 + 96);

  sub_1693F4();
  v9 = type metadata accessor for FeatureFlagHelper();
  v10 = swift_allocObject();
  v11 = sub_168E34();
  sub_483C8(v11);

  sub_168E24();
  v63 = v9;
  v64 = &off_1D9AF0;
  v62[0] = v10;
  v12 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy(0);
  v13 = sub_483C8(v12);
  sub_2F8D0(v62, v9);
  v47 = &v47;
  sub_37404();
  v15 = v14;
  v50 = *(v16 + 64);
  __chkstk_darwin(v17);
  v51 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v7;
  v19 = (&v47 - v51);
  v49 = *(v15 + 16);
  v49(&v47 - v51);
  v20 = *v19;
  v60 = v9;
  v61 = &off_1D9AF0;
  v59[0] = v20;
  *(v13 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(&v65, v58);
  sub_10824(v59, v57);
  sub_ACD30();
  sub_37404();
  __chkstk_darwin(v21);
  sub_A138();
  v23 = sub_ACD18(v22);
  v24(v23);

  sub_1668CC();
  v26 = v25;
  sub_D13C(&v65);
  sub_D13C(v59);
  sub_D13C(v57);
  sub_D13C(v62);

  *&v65 = v26;
  sub_ACCB8(&qword_1E9F58, 255, type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy, &unk_178830);
  sub_1687E4();

  v27 = v55;
  sub_168884();
  sub_1693F4();
  v28 = swift_allocObject();
  swift_allocObject();

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v63 = v9;
  v64 = &off_1D9AF0;
  v62[0] = v28;
  v29 = type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy(0);
  sub_483C8(v29);
  v30 = sub_2F8D0(v62, v9);
  v48 = &v47;
  __chkstk_darwin(v30);
  v31 = (&v47 - v51);
  v49(&v47 - v51);
  v32 = *v31;
  v60 = v9;
  v61 = &off_1D9AF0;
  v59[0] = v32;
  sub_10824(&v65, v58);
  sub_10824(v59, v57);
  sub_ACD30();
  sub_37404();
  __chkstk_darwin(v33);
  sub_A138();
  v35 = sub_ACD18(v34);
  v36(v35);

  sub_1668CC();
  v38 = v37;
  sub_D13C(&v65);
  sub_D13C(v59);
  sub_D13C(v57);
  sub_D13C(v62);

  v62[0] = v38;
  v39 = swift_allocObject();
  v40 = v52;
  swift_weakInit();
  sub_10824(v40 + 56, &v65);
  v41 = swift_allocObject();
  sub_D124(&v65, v41 + 16);
  *(v41 + 56) = v39;
  sub_ACCB8(&qword_1E9F60, 255, type metadata accessor for SetTrunkStatusConfirmIntentFlowStrategy, &unk_179458);
  sub_168854();

  v42 = v56;
  sub_1688A4();
  v43 = v54;
  (*(v54 + 16))(v53, v42, v27);
  v44 = sub_5758(&qword_1E9F68, &qword_173B30);
  sub_483C8(v44);
  v45 = sub_168914();
  (*(v43 + 8))(v42, v27);
  return v45;
}

uint64_t sub_AC20C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  v4 = sub_1690A4();
  v5 = [v4 trunkStatus];

  if (v5 == &dword_0 + 1 && (v6 = a2[3], v7 = a2[4], sub_D084(a2, v6), (sub_E29F8(v6, v7) & 1) == 0))
  {
    v11 = a2[3];
    v12 = a2[4];
    sub_D084(a2, v11);
    sub_E2A20(v11, v12);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    v14 = sub_16A9A4();
    sub_386D8(v14, 0x1002uLL, 0xD00000000000008FLL, 0x80000000001889A0, 0xD000000000000012, 0x8000000000188A30, 83, 0xD00000000000004ALL, 0x8000000000188AB0);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + 96);

      *(v16 + 16) = 0;
    }

    return 1;
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x1002uLL, 0xD00000000000008FLL, 0x80000000001889A0, 0xD000000000000012, 0x8000000000188A30, 88, 0xD000000000000052, 0x8000000000188A50);
    return 0;
  }
}

uint64_t sub_AC460()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  return v0;
}

uint64_t sub_AC498()
{
  sub_AC460();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_AC4F0(uint64_t a1, uint64_t a2)
{
  result = sub_ACCB8(&qword_1E9F38, a2, type metadata accessor for SetTrunkStatusRCHFlowStrategy, &unk_1739D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_AC560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_AB598();
}

uint64_t sub_AC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_AC6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_AC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_AC894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_AC970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_3EEF8();
}

uint64_t sub_ACA48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_453F8();
}

uint64_t sub_ACB94(uint64_t a1, uint64_t a2)
{
  result = sub_ACCB8(&qword_1E9F40, a2, type metadata accessor for SetTrunkStatusRCHFlowStrategy, &unk_173A08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_ACC34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_ACC6C()
{
  sub_D13C((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_ACCB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_ACD30()
{
  v2 = *(v0 - 264);

  return sub_2F8D0(v0 - 288, v2);
}

_BYTE *storeEnumTagSinglePayload for NLDoorPosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xACE1CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_ACE58()
{
  result = qword_1E9F70;
  if (!qword_1E9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9F70);
  }

  return result;
}

uint64_t SEGetTrunkStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_ACEC0()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 13);
}

uint64_t sub_ACF70()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 32);
  v5 = *v0;
  sub_D254();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_AD094(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetTrunkStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SEGetTrunkStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_AD16C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_AD22C;

  return v4(v1, 3, 1);
}

uint64_t sub_AD22C()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 56);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_AD344);
}

uint64_t sub_AD344()
{
  sub_D2DC();
  sub_16A4D4();
  v1 = sub_16A4C4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_AD3EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetTrunkStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetTrunkStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_AD4C4()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 3);
}

uint64_t sub_AD574()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_D254();
  *v4 = v3;
  *(v6 + 56) = v5;
  *(v6 + 48) = v7;

  return _swift_task_switch(sub_AD684);
}

uint64_t sub_AD684()
{
  sub_1696C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  switch(v1 >> 8)
  {
    case 3u:
      sub_16A4D4();
      v3 = v2;
      v4 = sub_16A4C4();
      v5 = v4;
      if (v1)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      [v4 setTrunkStatus:v6];

      break;
    default:
      sub_16A4D4();
      v5 = sub_16A4C4();
      break;
  }

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_AD7E0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetTrunkStatusIntentHandler.handle(intent:)(v6);
}

id SEGetTrunkStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetTrunkStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AD950()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_AD9E8()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_ADA80()
{
  sub_1696C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t type metadata accessor for CarCommandsSetClimateStatusCATsSimple(uint64_t a1)
{
  result = qword_1E9FA8;
  if (!qword_1E9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ADBAC()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v3);
  v1[4] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_ADC3C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v0[5] = v3;
  sub_AE798(v3, xmmword_16D9A0);
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    sub_93D80();
    v6();
  }

  v7 = sub_37484();
  v0[6] = v7;
  *v7 = v0;
  sub_AE7B8(v7);
  v8 = sub_AE808(54);

  return v9(v8);
}

uint64_t sub_ADDA0()
{
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D2A4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_ADEDC()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  *(v1 + 32) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_ADF70()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  sub_AE798(v3, xmmword_16D3A0);
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    sub_93D80();
    v6();
  }

  v7 = *(v0 + 64);
  *(v3 + 80) = 0x64656C62616E65;
  *(v3 + 88) = 0xE700000000000000;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v7;
  v8 = sub_37484();
  *(v0 + 48) = v8;
  *v8 = v0;
  sub_AE7B8(v8);
  v9 = sub_AE808(49);

  return v10(v9);
}

uint64_t sub_AE100()
{
  sub_D2DC();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v4);
  *(v1 + 32) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_AE194()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  sub_AE798(v3, xmmword_16D3A0);
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  sub_AE7CC(v4);
  if (v5)
  {
    sub_D188(v1, &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_10888((v3 + 48));
    sub_AE7F8();
    sub_93D80();
    v6();
  }

  v7 = *(v0 + 64);
  *(v3 + 80) = 0x6E4F6E727574;
  *(v3 + 88) = 0xE600000000000000;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v7;
  v8 = sub_37484();
  *(v0 + 48) = v8;
  *v8 = v0;
  sub_AE7B8(v8);
  v9 = sub_AE808(66);

  return v10(v9);
}

uint64_t sub_AE320()
{
  sub_30480();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D2A4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_AE45C()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AE4C4()
{
  swift_allocObject();
  sub_93D80();
  return sub_AE514(v0, v1, v2);
}

uint64_t sub_AE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v12 = sub_D414(v11);
  __chkstk_darwin(v12);
  sub_2F868(a1, &v16 - v13, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v14;
}

uint64_t sub_AE68C(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

__n128 *sub_AE798(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E726163;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_AE828()
{
  sub_D2DC();
  v1[63] = v2;
  v1[64] = v0;
  sub_16A164();
  v1[65] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_AE8B0()
{
  sub_10824(*(v0 + 504), v0 + 128);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E9FF8, &qword_173DC8);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 168), v0 + 88);
    v1 = sub_D084((v0 + 88), *(v0 + 112));
    v2 = sub_8EC20(v1);
    *(v0 + 648) = v2;
    if (v2 == 2)
    {
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v3 = sub_16A584();
      sub_9DA0(v3, qword_1E65C0);
      sub_16A9A4();
      sub_AFE64();
      sub_386D8(v5, 0x8000000uLL, v6, v7, 0xD000000000000012, v8, 23, v4 + 46, v16);
      v9 = swift_task_alloc();
      *(v0 + 632) = v9;
      *v9 = v0;
      sub_AFE20(v9);

      return sub_12F9C4();
    }

    else
    {
      sub_D084((*(v0 + 512) + 8), *(*(v0 + 512) + 32));
      v15 = swift_task_alloc();
      *(v0 + 528) = v15;
      *v15 = v0;
      v15[1] = sub_AEC38;

      return sub_13AB58(v0 + 248, 1);
    }
  }

  else
  {
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0;
    sub_D188(v0 + 168, &qword_1EA000, &qword_173DD0);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v12 = v11;
    sub_16ACF4(61);
    *(v0 + 488) = 0;
    *(v0 + 496) = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000016;
    v18._object = 0x8000000000184C00;
    sub_16A744(v18);
    sub_16AD84();
    v19._countAndFlagsBits = 0xD000000000000025;
    v19._object = 0x8000000000188D70;
    sub_16A744(v19);
    v13 = *(v0 + 496);
    *v12 = *(v0 + 488);
    v12[1] = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();

    return v14();
  }
}

uint64_t sub_AEC38()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_AED30()
{
  sub_D124((v0 + 248), v0 + 208);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_D084((v0 + 208), v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_AEE68;

  return v5(v0 + 328, v1, v2);
}

uint64_t sub_AEE68()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 552) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_AEF60()
{
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  *v1 = v0;
  v2 = sub_AFE20(v1);

  return (sub_9A334)(v2);
}

uint64_t sub_AF008()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 568) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_AF104()
{
  if (*(v0 + 352))
  {
    v1 = *(v0 + 512);
    sub_D124((v0 + 328), v0 + 288);
    v2 = sub_D084((v1 + 48), *(v1 + 72));
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D9A0;
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v6 = sub_D084((v0 + 288), v4);
    *(inited + 56) = v4;
    *(inited + 64) = *(v5 + 8);
    v7 = sub_10888((inited + 32));
    v8.n128_f64[0] = (*(*(v4 - 8) + 16))(v7, v6, v4);
    v9 = sub_948E4(inited, *v2, v8);
    swift_setDeallocating();
    sub_EFFF4();
    v10 = v9[2];

    if (v10)
    {
      v11 = *(v0 + 312);
      v12 = *(v0 + 320);
      v13 = *(v0 + 648);
      sub_D084((v0 + 288), v11);
      (*(v12 + 104))(v13 & 1, v11, v12);
      type metadata accessor for CarCommandsSetAutoModeCATsSimple(0);
      sub_16A154();
      *(v0 + 576) = sub_16A0F4();
      v14 = swift_task_alloc();
      *(v0 + 584) = v14;
      *v14 = v0;
      v14[1] = sub_AF518;

      return sub_48EC8(v13 & 1);
    }

    else
    {
      v24 = *(v1 + 72);
      v25 = *(*(v0 + 512) + 80);
      sub_D084((v1 + 48), v24);
      v26 = *(v25 + 8);
      v29 = (*(v26 + 40) + **(v26 + 40));
      v27 = swift_task_alloc();
      *(v0 + 600) = v27;
      *v27 = v0;
      v27[1] = sub_AF6AC;

      return v29(v24, v26);
    }
  }

  else
  {
    sub_D188(v0 + 328, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v16 = sub_16A584();
    sub_9DA0(v16, qword_1E65C0);
    sub_16A9A4();
    sub_AFE64();
    sub_386D8(v18, 0x8000000uLL, v19, v20, 0xD000000000000012, v21, 36, v17 + 11, v28);
    v22 = swift_task_alloc();
    *(v0 + 616) = v22;
    *v22 = v0;
    v23 = sub_AFE20(v22);

    return (sub_12F9C4)(v23);
  }
}

uint64_t sub_AF518(uint64_t a1)
{
  v3 = *v2;
  v3[49] = v2;
  v3[50] = a1;
  v3[51] = v1;
  v3[74] = v1;

  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_AF650()
{
  sub_D2DC();
  sub_80828();
  sub_AFE34();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_AF6AC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[52] = v1;
  v2[53] = v4;
  v2[54] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 608) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_AF7A8()
{
  sub_D2DC();
  sub_80828();
  sub_AFE34();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_AF804()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[55] = v1;
  v2[56] = v4;
  v2[57] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 624) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_AF900()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_AFE34();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_AF960()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[58] = v1;
  v2[59] = v4;
  v2[60] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 640) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_AFA5C()
{
  sub_D2DC();
  sub_AFE34();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_AFAB4()
{
  sub_D2DC();
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_AFB18()
{
  sub_D2DC();

  sub_AFE34();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_AFB78()
{
  sub_D2DC();

  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_AFBE4()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_AFC50()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_AFCBC()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_AFD24()
{
  sub_D2DC();
  sub_80828();
  sub_D13C((v0 + 88));

  sub_D37C();

  return v1();
}

uint64_t sub_AFD8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_AE828();
}

uint64_t sub_AFE34()
{
  sub_D13C((v0 + 88));
}

uint64_t sub_B0020(char a1)
{
  *(v1 + 96) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v1 + 56) = swift_task_alloc();
  sub_16A164();
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_B00E8);
}

uint64_t sub_B00E8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 96);
  sub_132B1C(a1);
  sub_D084((v1 + 16), *(v1 + 40));
  sub_D2B90(2, v3);
  sub_D13C((v1 + 16));
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v1 + 72) = sub_16A0F4();
  v4 = sub_16A0C4();
  sub_5370(v2, 1, 1, v4);
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v1;
  v5[1] = sub_B0204;

  return sub_E0BE4();
}

uint64_t sub_B0204(uint64_t a1)
{
  v4 = *v2;
  sub_D254();
  *v5 = v4;
  v6 = *v2;
  *v5 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {
    sub_D188(*(v4 + 56), &qword_1E6300, &qword_16ECE0);

    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_D188(*(v4 + 56), &qword_1E6300, &qword_16ECE0);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_B03BC()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_B0420(uint64_t a1)
{
  *(v2 + 624) = v1;
  *(v2 + 616) = a1;
  sub_10B4C();
  return _swift_task_switch(v3);
}

uint64_t sub_B0450()
{
  sub_10824(*(v0 + 616), v0 + 296);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EA108, &qword_173E68);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 624);
    sub_D124((v0 + 336), v0 + 256);
    sub_D084((v1 + 24), *(v1 + 48));
    v2 = swift_task_alloc();
    *(v0 + 632) = v2;
    *v2 = v0;
    v2[1] = sub_B06AC;

    return sub_13AB58(v0 + 376, 0);
  }

  else
  {
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0;
    sub_D188(v0 + 336, &qword_1EA110, &unk_173E70);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v5 = v4;
    sub_16ACF4(67);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    v9._object = 0x8000000000184C00;
    v9._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v9);
    sub_16AD84();
    v10._countAndFlagsBits = 0xD00000000000002BLL;
    v10._object = 0x8000000000188F10;
    sub_16A744(v10);
    v6 = *(v0 + 608);
    *v5 = *(v0 + 600);
    v5[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();

    return v7();
  }
}

uint64_t sub_B06AC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 640) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_B07A8()
{
  sub_D084(v0 + 47, v0[50]);
  v1 = swift_task_alloc();
  v0[81] = v1;
  *v1 = v0;
  v1[1] = sub_B08C8;
  sub_B19B8();

  return v2();
}

uint64_t sub_B08C8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 656) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_B09C4()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_D37C();

  return v1();
}

uint64_t sub_B0A20()
{
  if (*(v0 + 480))
  {
    sub_D124((v0 + 456), v0 + 416);
    sub_D084((v0 + 376), *(v0 + 400));
    v1 = swift_task_alloc();
    *(v0 + 664) = v1;
    *v1 = v0;
    v1[1] = sub_B0C60;
    sub_B19B8();

    return v2();
  }

  else
  {
    sub_D188(v0 + 456, &qword_1E6060, &unk_1752B0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    sub_16A9A4();
    sub_B1960();
    sub_386D8(v6, 0x200000000uLL, v7, v8, 0xD000000000000012, v9, 28, v5 + 92, v13);
    v10 = sub_B1994();
    *(v0 + 720) = v10;
    *v10 = v0;
    v11 = sub_B197C(v10);

    return v12(v11);
  }
}

uint64_t sub_B0C60()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 672) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_B0D5C()
{
  if (*(v0 + 560))
  {
    v1 = *(v0 + 624);
    sub_D124((v0 + 536), v0 + 496);
    sub_10824(v0 + 416, v0 + 16);
    sub_10824(v0 + 496, v0 + 56);
    swift_beginAccess();
    sub_B176C(v0 + 16, v1 + 64);
    swift_endAccess();
    sub_B17DC(v1 + 64, v0 + 96);
    if (*(v0 + 120) == 1)
    {
      sub_D188(v0 + 96, &qword_1EA120, &unk_173E90);
      [objc_allocWithZone(DialogExecutionResult) init];
      sub_D13C((v0 + 496));
      sub_D13C((v0 + 416));
      v2 = sub_B18FC();

      return v3(v2);
    }

    else
    {
      sub_B184C(v0 + 96, v0 + 176);
      sub_D188(v0 + 96, &qword_1EA120, &unk_173E90);
      sub_D084((v0 + 256), *(v0 + 280));
      sub_8F458();
      v14 = swift_task_alloc();
      *(v0 + 680) = v14;
      *v14 = v0;
      v14[1] = sub_B102C;
      sub_10B4C();

      return sub_10C7C0(v15, v16, v17);
    }
  }

  else
  {
    sub_D188(v0 + 536, &qword_1EA118, &qword_173E88);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_B1960();
    sub_386D8(v7, 0x200000000uLL, v8, v9, 0xD000000000000012, v10, 32, v6 + 94, v18);
    v11 = sub_B1994();
    *(v0 + 696) = v11;
    *v11 = v0;
    v12 = sub_B197C(v11);

    return v13(v12);
  }
}

uint64_t sub_B102C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 688) = v0;

  sub_B18A8(v3 + 176);
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_B1134()
{
  sub_D2DC();
  [objc_allocWithZone(DialogExecutionResult) init];
  sub_D13C((v0 + 496));
  sub_D13C((v0 + 416));
  v1 = sub_B18FC();

  return v2(v1);
}

uint64_t sub_B11B0(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 704) = v1;

  if (!v1)
  {
    *(v5 + 712) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_B12C4()
{
  sub_D2DC();
  sub_D13C((v0 + 416));
  v1 = sub_B18FC();

  return v2(v1);
}

uint64_t sub_B1320(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;
  *(v5 + 728) = v1;

  if (!v1)
  {
    *(v5 + 736) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_B1434()
{
  sub_D2DC();
  v0 = sub_B18FC();

  return v1(v0);
}

uint64_t sub_B1488()
{
  sub_D2DC();
  sub_D13C((v0 + 376));
  sub_D13C((v0 + 256));
  sub_D37C();

  return v1();
}

uint64_t sub_B14EC()
{
  sub_D2DC();
  sub_D13C((v0 + 376));
  sub_D13C((v0 + 256));
  sub_D37C();

  return v1();
}

uint64_t sub_B1550()
{
  sub_D2DC();
  sub_B192C();
  sub_D37C();

  return v0();
}

uint64_t sub_B15A8()
{
  sub_D2DC();
  sub_B192C();
  sub_D37C();

  return v0();
}

uint64_t sub_B1600()
{
  sub_D2DC();
  sub_D13C((v0 + 496));
  sub_B192C();
  sub_D37C();

  return v1();
}

uint64_t sub_B1660()
{
  sub_D13C((v0 + 24));
  sub_D188(v0 + 64, &qword_1EA120, &unk_173E90);

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_B16D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_B0420(a1);
}

uint64_t sub_B176C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA120, &unk_173E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B17DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA120, &unk_173E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B18FC()
{
  sub_D13C((v1 + 376));
  sub_D13C((v1 + 256));
  return v0;
}

uint64_t sub_B192C()
{
  sub_D13C(v0 + 52);
  sub_D13C(v0 + 47);

  return sub_D13C(v0 + 32);
}

uint64_t sub_B1994()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for CarCommandsSetClimateStatusCATs(uint64_t a1)
{
  result = qword_1EA128;
  if (!qword_1EA128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B1AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

uint64_t sub_B1C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_5758(&qword_1E76A0, &qword_172B00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  sub_B33F0(&qword_1EA198, &protocol conformance descriptor for Measurement<A>);
  v10 = sub_16A614();
  v11 = *(v7 + 16);
  if (v10)
  {
    v12 = v3;
  }

  else
  {
    v12 = a1;
  }

  v11(v9, v12, v6);
  v13 = *(sub_5758(&qword_1EA190, &unk_173F30) + 36);
  if ((sub_16A604() & 1) == 0)
  {
    return (*(v7 + 32))(a2, v9, v6);
  }

  (*(v7 + 8))(v9, v6);
  return (v11)(a2, a1 + v13, v6);
}

void sub_B1DC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_16ACF4(34);
  v6 = [v2 vehicleLayoutKey];
  v7 = sub_16A664();
  v9 = v8;

  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x8000000000189400;
  sub_16A744(v32);
  sub_5758(&qword_1E76A0, &qword_172B00);
  sub_B34B0(&qword_1EA180);
  v33._countAndFlagsBits = sub_16AE24();
  sub_16A744(v33);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  sub_16A9A4();
  sub_B350C();
  sub_386D8(v11, v12, v13, v14, v15, v16, 18, v7, v9);

  sub_B20B4(a1, a2);
  sub_16ACF4(63);
  v34._countAndFlagsBits = sub_B353C();
  sub_16A744(v34);
  v35._countAndFlagsBits = sub_16AE24();
  sub_16A744(v35);

  v36._countAndFlagsBits = 0xD000000000000029;
  v36._object = 0x8000000000189290;
  sub_16A744(v36);
  v17 = [v2 targetTemperatureRange];
  [v17 minimumValue];

  sub_B3598(v18, v19);
  v37._countAndFlagsBits = 0x209480E220;
  v37._object = 0xA500000000000000;
  sub_16A744(v37);
  v20 = [v3 targetTemperatureRange];
  [v20 maximumValue];

  sub_B3598(v21, v22);
  sub_16A9A4();
  sub_B350C();
  sub_386D8(v23, v24, v25, v26, v27, v28, 21, 0, 0xE000000000000000);

  v29 = sub_1682D4();
  v31 = v30;
  [v3 setTargetTemperature:{v30, v29}];
}

uint64_t sub_B20B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v36 = sub_5758(&qword_1EA188, &qword_173F28);
  v3 = __chkstk_darwin(v36);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v30 - v5;
  v35 = sub_5758(&qword_1EA190, &unk_173F30);
  __chkstk_darwin(v35);
  v7 = &v30 - v6;
  v8 = sub_5758(&qword_1E76A0, &qword_172B00);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = [v2 targetTemperatureRange];
  sub_16AA94();
  v16 = objc_opt_self();
  v17 = [v16 celsius];
  sub_55158();
  sub_168304();
  v32 = v15;
  sub_16AA84();
  v18 = [v16 celsius];
  sub_168304();
  sub_B33F0(&qword_1EA198, &protocol conformance descriptor for Measurement<A>);
  v19 = v14;
  v20 = v12;
  result = sub_16A624();
  if (result)
  {
    v22 = v9[2];
    v23 = v33;
    v31 = v19;
    v22(v33, v19, v8);
    v24 = v34;
    v25 = v36;
    v26 = v23 + *(v36 + 48);
    v30 = v20;
    v22(v26, v20, v8);
    sub_2F868(v23, v24, &qword_1EA188, &qword_173F28);
    v27 = *(v25 + 48);
    v28 = v9[4];
    v28(v7, v24, v8);
    v29 = v9[1];
    v29(v24 + v27, v8);
    sub_B3440(v23, v24);
    v28(&v7[*(v35 + 36)], v24 + *(v25 + 48), v8);
    v29(v24, v8);
    sub_B1C20(v7, v37);

    sub_D188(v7, &qword_1EA190, &unk_173F30);
    v29(v30, v8);
    return (v29)(v31, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B24D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_5758(&qword_1EA178, &unk_1774D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v131 - v9;
  v11 = sub_5758(&qword_1E76A0, &qword_172B00);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v22 = &v131 - v21;
  if (!(v19 | a2))
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v23 = sub_16A584();
    sub_9DA0(v23, qword_1E65C0);
    sub_16A9A4();
    sub_B3574();
    sub_B3530();
    sub_386D8(v24, v25, v26, v27, v28, v29, 33, v30, 0x80000000001893A0);
    v31 = sub_B355C();

    return sub_5370(v31, v32, v33, v34);
  }

  v36 = v19 == 4 || v19 == 2;
  v140 = v12;
  v141 = v18;
  v138 = v11;
  v139 = v19;
  v136 = a3;
  v137 = v20;
  if (v36)
  {
    v12 = 0x80000000001891C0;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v37 = sub_16A584();
    sub_9DA0(v37, qword_1E65C0);
    sub_16A9A4();
    sub_B3574();
    sub_B34D4();
    sub_386D8(v38, v39, v40, v41, v42, v43, 39, v44, 0x8000000000189380);
    v46 = sub_B35B8(v45, "targetTemperatureRange");
    v47 = v46;
    v135 = 0x8000000000189120;
    if (v139 == 4)
    {
      [v46 maximumValue];
    }

    else
    {
      [v46 minimumValue];
    }

    goto LABEL_42;
  }

  if ((a2 - 1) <= 1)
  {
    v12 = 0x80000000001891C0;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v48 = sub_16A584();
    sub_9DA0(v48, qword_1E65C0);
    sub_16A9A4();
    sub_B3574();
    sub_B34D4();
    sub_386D8(v49, v50, v51, v52, v53, v54, 42, v55, 0x8000000000189360);
    v57 = sub_B35B8(v56, "targetTemperatureRange");
    v58 = v57;
    v135 = 0x8000000000189120;
    if (a2 == 1)
    {
      [v57 minimumValue];
    }

    else
    {
      [v57 maximumValue];
    }

LABEL_42:
    v92 = [objc_opt_self() celsius];
    v93 = sub_55158();
    v94 = v137;
    v133 = v93;
    sub_168304();
    sub_B20B4(v94, v141);
    v95 = *(v140 + 8);
    v140 += 8;
    v96 = v138;
    v132 = v95;
    v95(v94, v138);
    sub_B34FC();
    sub_16ACF4(63);
    sub_B3580();
    v153._countAndFlagsBits = sub_B353C();
    sub_16A744(v153);
    sub_B34B0(&qword_1EA180);
    v154._countAndFlagsBits = sub_16AE24();
    sub_16A744(v154);

    v155._countAndFlagsBits = v11 - 22;
    v155._object = 0x8000000000189290;
    sub_16A744(v155);
    v97 = [v12 targetTemperatureRange];
    [v97 minimumValue];

    sub_B358C();
    sub_16A904();
    v156._countAndFlagsBits = 0x209480E220;
    v156._object = 0xA500000000000000;
    sub_16A744(v156);
    v98 = [v12 targetTemperatureRange];
    [v98 maximumValue];

    sub_B358C();
    sub_16A904();
    v99 = v143;
    v100 = v144;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v101 = sub_16A584();
    v131 = sub_9DA0(v101, qword_1E65C0);
    sub_16A9A4();
    v102 = v134;
    sub_B3530();
    sub_386D8(v103, v104, v105, v106, v107, v102, 61, v99, v100);

    v108 = sub_1682D4();
    v110 = v109;
    [v12 setTargetTemperature:{v109, v108}];

    sub_B34FC();
    sub_16ACF4(39);
    sub_B3580();
    v157._countAndFlagsBits = 0xD000000000000021;
    v157._object = 0x80000000001892C0;
    sub_16A744(v157);
    v142 = v139;
    sub_16AD84();
    v158._countAndFlagsBits = 8250;
    v158._object = 0xE200000000000000;
    sub_16A744(v158);
    v111 = [v12 targetTemperature];
    sub_1682E4();

    v159._countAndFlagsBits = sub_16AE24();
    sub_16A744(v159);

    v112 = v94;
    v113 = v132;
    v132(v112, v96);
    v114 = v143;
    v115 = v144;
    sub_16A9A4();
    sub_B3574();
    sub_B3530();
    sub_386D8(v116, v117, v118, v119, v120, v102, 64, v114, v115);

    v121 = [v12 targetTemperature];
    v122 = v136;
    sub_1682E4();

    v113(v141, v96);
    v31 = v122;
    v32 = 0;
    v33 = 1;
    v34 = v96;
    return sub_5370(v31, v32, v33, v34);
  }

  sub_2F868(a1, v10, &qword_1EA178, &unk_1774D0);
  if (sub_9E2C(v10, 1, v11) == 1)
  {
    sub_D188(v10, &qword_1EA178, &unk_1774D0);
  }

  else
  {
    (*(v12 + 32))(v22, v10, v11);
    if ((v139 | 2) == 3)
    {
      v59 = v139;
      v60 = [v4 targetTemperature];
      sub_55158();
      sub_1682E4();

      v61 = v137;
      sub_54E00(v59, v137);
      v12 = *(v12 + 8);
      (v12)(v15, v11);
      v62 = [objc_opt_self() celsius];
      v63 = v141;
      sub_168344();

      (v12)(v61, v138);
      sub_168314();
      (v12)(v63, v138);
      sub_B34FC();
      sub_16ACF4(103);
      sub_B3580();
      v146._object = 0x80000000001892F0;
      v146._countAndFlagsBits = 0xD000000000000019;
      sub_16A744(v146);
      v65 = sub_B35B8(v64, "targetTemperature");
      sub_1682E4();

      sub_B34B0(&qword_1EA180);
      v147._countAndFlagsBits = sub_16AE24();
      sub_16A744(v147);

      v66 = v138;
      v133 = v12;
      (v12)(v63, v138);
      v148._countAndFlagsBits = 0xD000000000000020;
      v148._object = 0x8000000000189310;
      sub_16A744(v148);
      v149._countAndFlagsBits = sub_16AE24();
      sub_16A744(v149);

      v150._countAndFlagsBits = 0x7463657269440A2ELL;
      v150._object = 0xED0000203A6E6F69;
      sub_16A744(v150);
      if (v139 == 3)
      {
        v67._countAndFlagsBits = 0x72656D726177;
      }

      else
      {
        v67._countAndFlagsBits = 0x7265646C6F63;
      }

      v67._object = 0xE600000000000000;
      sub_16A744(v67);

      v151._object = 0x8000000000189340;
      v151._countAndFlagsBits = 0xD000000000000019;
      sub_16A744(v151);
      sub_B358C();
      sub_16A904();
      v69 = v143;
      v68 = v144;
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v70 = sub_16A584();
      sub_9DA0(v70, qword_1E65C0);
      sub_16A9A4();
      v11 = 0xD00000000000003FLL;
      sub_B3574();
      v134 = 0x80000000001891C0;
      v135 = 0x8000000000189120;
      sub_B3530();
      sub_386D8(v71, v72, v73, v74, v75, 0x80000000001891C0, 47, v69, v68);

      v133(v22, v66);
      goto LABEL_42;
    }

    (*(v12 + 8))(v22, v11);
  }

  if (v139 == 3)
  {
    v76 = 1.0;
    goto LABEL_39;
  }

  if (v139 == 1)
  {
    v76 = -1.0;
LABEL_39:
    v77 = [v4 targetTemperature];
    sub_55158();
    v78 = v141;
    sub_1682E4();

    sub_168314();
    v80 = v79;
    v81 = (*(v12 + 8))(v78, v11);
    v82 = sub_B35B8(v81, "targetTemperatureRange");
    *&v83 = v80 + v76;
    [v82 valueRoundedToNearestStepValue:v83];

    sub_B34FC();
    sub_16ACF4(80);
    sub_B3580();
    v152._countAndFlagsBits = 0xD00000000000004ELL;
    v152._object = 0x8000000000189240;
    sub_16A744(v152);
    sub_B358C();
    sub_16A904();
    v85 = v143;
    v84 = v144;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v86 = sub_16A584();
    sub_9DA0(v86, qword_1E65C0);
    sub_16A9A4();
    v11 = 0xD00000000000003FLL;
    v134 = 0x80000000001891C0;
    v135 = 0x8000000000189120;
    sub_B3530();
    sub_386D8(v87, v88, v89, v90, v91, 0x80000000001891C0, 53, v85, v84);

    goto LABEL_42;
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v123 = sub_16A584();
  sub_9DA0(v123, qword_1E65C0);
  sub_16A9A4();
  sub_B3530();
  sub_386D8(v124, v125, v126, v127, v128, v129, 55, v130, 0x8000000000189200);
  v31 = sub_B355C();
  return sub_5370(v31, v32, v33, v34);
}

uint64_t sub_B32E4()
{
  v1 = [v0 vehicleLayoutKey];
  v2 = sub_16A664();

  return v2;
}

uint64_t sub_B3384()
{
  if ([v0 targetTemperatureDisabled])
  {
    return 0;
  }

  else
  {
    return [v0 targetTemperatureInvalid] ^ 1;
  }
}

uint64_t sub_B33F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_37130(&qword_1E76A0, &qword_172B00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B3440(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA188, &qword_173F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B34B0(unint64_t *a1)
{

  return sub_B33F0(a1, &protocol conformance descriptor for Measurement<A>);
}

void sub_B3580()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t sub_B3598(uint64_t a1, uint64_t a2, ...)
{

  return sub_16A904();
}

id sub_B35B8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_B35D0(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for CarKeySessionManager()) init];
  qword_1F0C20 = result;
  return result;
}

uint64_t sub_B3600(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_delegate;
  swift_beginAccess();
  sub_B4EE8(a1, v1 + v3, &qword_1EA1E0, &qword_173FE0);
  return swift_endAccess();
}

uint64_t sub_B36D0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_B36F0);
}

uint64_t sub_B36F0()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = sub_5758(&qword_1EA200, &qword_173FF0);
  *v3 = v0;
  v3[1] = sub_B37F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001BLL, 0x8000000000189600, sub_B4D38, v2, v4);
}

uint64_t sub_B37F8()
{

  return _swift_task_switch(sub_B3910);
}

uint64_t sub_B3910()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v2 + 32) = *(v0 + 48);
  *v2 = v3;
  *(v2 + 16) = v4;
  return (*(v0 + 8))(v1);
}

void sub_B3938(uint64_t a1, uint64_t a2)
{
  v3 = sub_5758(&qword_1EA208, &qword_173FF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v7, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v7, v3);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_B4E18;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_B4F50;
  aBlock[3] = &unk_1D7140;
  v12 = _Block_copy(aBlock);

  v13 = [v8 startDigitalCarKeySessionWithOptions:0 startCallback:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_B3B5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_16ACF4(95);
    v34._countAndFlagsBits = 0xD000000000000036;
    v34._object = 0x8000000000189650;
    sub_16A744(v34);
    v33 = a2;
    swift_errorRetain();
    sub_5758(qword_1EA220, &qword_1708D8);
    v35._countAndFlagsBits = sub_16A694();
    sub_16A744(v35);

    v36._countAndFlagsBits = 0xD000000000000027;
    v36._object = 0x8000000000189690;
    sub_16A744(v36);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001894C0, 0xD00000000000001BLL, 0x8000000000189600, 20, v29, *(&v29 + 1));

    sub_3CC14();
    v7 = swift_allocError();
    *v8 = xmmword_16E2A0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v32 = v7;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if (a1)
      {
        v12 = sub_16484(0, &qword_1EA218, SESDCKSession_ptr);
        v13 = &off_1D7070;
        v14 = a1;
      }

      else
      {
        v14 = 0;
        v12 = 0;
        v13 = 0;
        *(&v29 + 1) = 0;
        *&v30 = 0;
      }

      *&v29 = v14;
      *(&v30 + 1) = v12;
      v31 = v13;
      v15 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_activeSession;
      swift_beginAccess();
      v16 = a1;
      sub_B4EE8(&v29, v11 + v15, &qword_1EA210, &unk_1708E0);
      swift_endAccess();
    }

    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v20 = sub_B3670(&v29);
      if (*(v19 + 24))
      {
        v21 = v19;
        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = *(v21 + 24);
        v24 = *(v21 + 32);
        sub_2F8D0(v21, v23);
        (*(v24 + 16))(v22, v23, v24);
      }

      (v20)(&v29, 0);
    }

    if (a1)
    {
      v25 = sub_16484(0, &qword_1EA218, SESDCKSession_ptr);
      v26 = &off_1D7070;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v29 = a1;
    *&v30 = 0;
    *(&v30 + 1) = v25;
    v31 = v26;
    v32 = 0;
    v27 = a1;
  }

  sub_5758(&qword_1EA208, &qword_173FF8);
  return sub_16A864();
}

id sub_B3EEC()
{
  v7 = 0;
  v0 = [objc_opt_self() getVehicleReports:&v7];
  v1 = v7;
  if (v0)
  {
    v2 = v0;
    sub_16484(0, &qword_1EA1F0, SESVehicleReport_ptr);
    v3 = sub_16A5B4();
    v4 = v1;

    v1 = sub_B3FFC(v3);
  }

  else
  {
    v5 = v7;
    sub_168394();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_B3FFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5758(&qword_1EA1F8, &qword_173FE8);
    v2 = sub_16ADD4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    v26 = sub_16484(0, &qword_1EA1F0, SESVehicleReport_ptr);
    v27 = &off_1D6C28;
    *&v25 = v15;
    sub_D250(&v25, v29);
    sub_D250(v29, v30);
    sub_D250(v30, &v28);

    v16 = v15;
    result = sub_146404(v14, v13);
    v17 = result;
    if (v18)
    {
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;

      v20 = (v2[7] + 40 * v17);
      sub_D13C(v20);
      result = sub_D250(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_D250(&v28, v2[7] + 40 * result);
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_B424C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  sub_16ACF4(43);

  v19[1] = 0x80000000001895E0;
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  sub_16A744(v20);
  v21._countAndFlagsBits = 0x4974656C70706120;
  v21._object = 0xEB00000000203A44;
  sub_16A744(v21);
  v22._countAndFlagsBits = a3;
  v22._object = a4;
  sub_16A744(v22);
  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001894C0, 0xD000000000000020, 0x80000000001895B0, 37, 0xD00000000000001CLL, 0x80000000001895E0);

  v11 = objc_opt_self();
  v12 = sub_16A644();
  v13 = sub_16A644();
  v19[0] = 0;
  v14 = [v11 requestAssertionForKeyID:v12 withAppletID:v13 withOptions:0 error:v19];

  v15 = v19[0];
  if (v14)
  {
    a5[3] = sub_16484(0, &qword_1EA1E8, SESAssertion_ptr);
    a5[4] = &off_1D70A8;
    *a5 = v14;
    return v15;
  }

  else
  {
    v17 = v19[0];
    sub_168394();

    return swift_willThrow();
  }
}

id sub_B44C4(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_delegate];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v1[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_activeSession];
  v4 = type metadata accessor for CarKeySessionManager();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_B4554(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CarKeySessionManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_B460C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D714;

  return sub_B36D0(a1);
}

uint64_t sub_B46D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  strcpy(v16, "xpcEventName");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  sub_16AC84();
  sub_13F658(a2, v14, v17);
  sub_472B0(v17);
  if (!v15)
  {
    v8 = &qword_1E6A10;
    v9 = &unk_1744D0;
    v10 = v14;
    return sub_109A0(v10, v8, v9);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v16[0] == 0xD00000000000003CLL && 0x8000000000189480 == v16[1])
  {
  }

  else
  {
    v7 = sub_16AE54();

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_1E58E8 != -1)
  {
    sub_B4F54();
    swift_once();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x20000uLL, 0xD00000000000008DLL, 0x80000000001894C0, 0xD000000000000014, 0x8000000000189550, 45, 0xD000000000000031, 0x8000000000189570);
  v13 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20CarKeySessionManager_delegate;
  swift_beginAccess();
  sub_B4CB8(v3 + v13, v17);
  if (!v18)
  {
    v8 = &qword_1EA1E0;
    v9 = &qword_173FE0;
    v10 = v17;
    return sub_109A0(v10, v8, v9);
  }

  sub_10824(v17, v14);
  sub_109A0(v17, &qword_1EA1E0, &qword_173FE0);
  sub_D084(v14, v15);
  sub_3C80C();
  return sub_D13C(v14);
}

uint64_t sub_B49D0(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t sub_B4A3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1683C4().super.isa;
  }

  v14[4] = a5;
  v14[5] = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_B4F50;
  v14[3] = &unk_1D7168;
  v12 = _Block_copy(v14);

  [v6 sendRKEFunction:a1 action:a2 authorization:isa completion:v12];
  _Block_release(v12);
}

void sub_B4B34(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_B4BE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16A644();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 setActiveKey:v3];

  return v4;
}

uint64_t sub_B4CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA1E0, &qword_173FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B4D40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B4D78()
{
  sub_5758(&qword_1EA208, &qword_173FF8);
  sub_10AFC();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_B4E18(void *a1, uint64_t a2)
{
  v5 = *(sub_5758(&qword_1EA208, &qword_173FF8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_B3B5C(a1, a2, v2 + v6, v7);
}

uint64_t sub_B4ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B4EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_5758(a3, a4);
  sub_10AFC();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_B4FB4()
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v1);
  sub_A138();
  v4 = (v3 - v2);
  v63 = sub_1693E4();
  sub_9F48();
  v62 = v5;
  __chkstk_darwin(v6);
  sub_A138();
  v61 = (v8 - v7);
  v9 = sub_168FE4();
  sub_9F48();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_A138();
  v15 = v14 - v13;
  v16 = *(v0 + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v17 = sub_16A584();
  sub_9DA0(v17, qword_1E65C0);
  v18 = sub_16A9A4();
  v68 = 0xD000000000000082;
  v69 = 0x8000000000189700;
  *&v65 = 47;
  *(&v65 + 1) = 0xE100000000000000;
  sub_D030();
  v19 = sub_16AB34();
  v20 = sub_15AE4(v19);
  v22 = v21;

  if (v22)
  {
    v72._countAndFlagsBits = 32;
    v72._object = 0xE100000000000000;
    sub_16A744(v72);
    v73._countAndFlagsBits = 0xD000000000000020;
    v73._object = 0x8000000000189940;
    sub_16A744(v73);
    v23 = v20;
    v24 = v22;
  }

  else
  {
    v23 = 0xD000000000000020;
    v24 = 0x8000000000189940;
  }

  v68 = v23;
  v69 = v24;
  *&v65 = 58;
  *(&v65 + 1) = 0xE100000000000000;
  v64[0] = 24;
  v74._countAndFlagsBits = sub_16AE24();
  sub_16A744(v74);

  v75._countAndFlagsBits = 58;
  v75._object = 0xE100000000000000;
  sub_16A744(v75);

  v25._countAndFlagsBits = sub_378D0(v16);
  if (v25._object)
  {
    *&v65 = 32;
    *(&v65 + 1) = 0xE100000000000000;
    sub_16A744(v25);

    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    sub_16A744(v76);
  }

  v27 = v68;
  v26 = v69;
  v28 = sub_16A574();
  if (os_log_type_enabled(v28, v18))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v65 = v30;
    *v29 = 136315138;
    v31 = sub_15BC8(v27, v26, &v65);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_0, v28, v18, "%s", v29, 0xCu);
    sub_D13C(v30);
    sub_D494(v30);
    sub_D494(v29);
  }

  else
  {
  }

  sub_169274();
  v32 = sub_169244();
  sub_169264();
  v33 = sub_168FD4();
  v35 = v34;
  v36 = *(v11 + 8);
  v36(v15, v9);
  if (sub_D95F4(v32, v33, v35) > 0xF7u)
  {
    sub_169264();
    v37 = sub_168FD4();
    v39 = v38;
    v36(v15, v9);
    *v4 = v37;
    v4[1] = v39;
    sub_B75E4();
    swift_storeEnumTagMultiPayload();
    v40 = sub_11D28();
    sub_5A144(v40);
    sub_548D0(v4, v41);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v42 = sub_B7590();
    v49 = 28;
LABEL_22:
    sub_386D8(v42, v43, v44, v45, v46, v47, v49, v48, v60);

    sub_168C74();
    sub_B75CC();
    return sub_B7534(v4, v58);
  }

  sub_169384();
  sub_86E4(v61, &_swiftEmptySetSingleton, v64);
  (*(v62 + 8))(v61, v63);
  if (!v64[3])
  {
    sub_109A0(v64, &qword_1E5F80, &unk_16E7E0);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    goto LABEL_21;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    goto LABEL_21;
  }

  if (!*(&v66 + 1))
  {
LABEL_21:
    sub_109A0(&v65, &qword_1E5F88, &unk_16D410);
    sub_169384();
    sub_B75E4();
    swift_storeEnumTagMultiPayload();
    v56 = sub_11D28();
    sub_5A144(v56);
    sub_548D0(v4, v57);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v42 = sub_B7590();
    v49 = 34;
    goto LABEL_22;
  }

  sub_D124(&v65, &v68);
  v50 = v71;
  sub_D084(&v68, v70);
  v51 = sub_67C60();
  if (v52(v51, v50) & 1) != 0 || (v53 = v71, sub_D084(&v68, v70), v54 = sub_67C60(), (v55(v54, v53)))
  {
    sub_168C54();
  }

  else
  {
    sub_168C64();
  }

  return sub_D13C(&v68);
}

uint64_t sub_B5708()
{
  sub_D2DC();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[8] = *v0;
  v5 = sub_1693E4();
  v1[9] = v5;
  sub_10AEC(v5);
  v1[10] = v6;
  v1[11] = sub_D3C8();
  v7 = sub_168FE4();
  v1[12] = v7;
  sub_10AEC(v7);
  v1[13] = v8;
  v1[14] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_B5828()
{
  v32 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = *(v0[8] + 416);
  sub_169274();
  v6 = sub_169244();
  sub_169264();
  v7 = sub_168FD4();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v27 = v4;
  v29 = *(v4 + 176);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_16ACF4(40);
  v34._countAndFlagsBits = 0xD000000000000011;
  v34._object = 0x80000000001898E0;
  sub_16A744(v34);
  v0[2] = v6;
  swift_getWitnessTable();
  sub_16AE44();
  v35._countAndFlagsBits = 0xD000000000000013;
  v35._object = 0x8000000000189900;
  sub_16A744(v35);
  v36._countAndFlagsBits = v7;
  v36._object = v9;
  sub_16A744(v36);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_386D8(v11, v29, 0xD000000000000082, 0x8000000000189700, 0xD000000000000028, 0x80000000001898B0, 49, v30, v31);

  v12 = v6;

  v13 = sub_D95F4(v12, v7, v9);
  if (v13 <= 0xF7u)
  {
    v16 = v13;
    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    v26 = v0[4];

    sub_169384();
    v21 = *(v20 + 432);
    v22 = (*(v21 + 8))(v17, v16, v5, v21);
    (*(v18 + 8))(v17, v19);
    v28 = *(v27 + 176);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_16ACF4(18);
    v37._countAndFlagsBits = 0xD000000000000010;
    v37._object = 0x8000000000189920;
    sub_16A744(v37);
    v0[3] = v22;
    sub_16AE44();
    v23 = sub_16A9A4();
    sub_386D8(v23, v28, 0xD000000000000082, 0x8000000000189700, 0xD000000000000028, 0x80000000001898B0, 57, v30, v31);

    (*(v21 + 24))(&v30, v16, v5, v21);
    sub_168EB4();

    v24 = sub_168EC4();
    sub_5370(v26, 0, 1, v24);

    sub_D37C();
  }

  else
  {
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    *v14 = v7;
    v14[1] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
  }

  return v15();
}

uint64_t sub_B5C64()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = type metadata accessor for CarCommandsError(0);
  v1[14] = v4;
  sub_D414(v4);
  v1[15] = sub_D3C8();
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v1[16] = sub_D3C8();
  v6 = sub_168FE4();
  v1[17] = v6;
  sub_10AEC(v6);
  v1[18] = v7;
  v1[19] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_B5D88()
{
  v33 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[12];
  sub_169274();
  v5 = sub_169244();
  v0[20] = v5;
  sub_169264();
  v29 = sub_168FD4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = *(v4 + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  v0[2] = 0xD000000000000082;
  v0[3] = 0x8000000000189700;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v11 = sub_16AB34();
  v12 = sub_15AE4(v11);
  v14 = v13;

  if (v14)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_16A744(v35);
    v36._countAndFlagsBits = 0xD000000000000022;
    v36._object = 0x8000000000189810;
    sub_16A744(v36);
    v15 = v12;
    v16 = v14;
  }

  else
  {
    v15 = 0xD000000000000022;
    v16 = 0x8000000000189810;
  }

  v30 = v15;
  v31 = v16;
  v32._countAndFlagsBits = 58;
  v32._object = 0xE100000000000000;
  v0[8] = 70;
  v37._countAndFlagsBits = sub_16AE24();
  sub_16A744(v37);

  sub_16A744(v32);

  v17._countAndFlagsBits = sub_378D0(v8);
  if (v17._object)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_16A744(v17);

    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    sub_16A744(v38);
  }

  v18 = sub_16A574();
  if (os_log_type_enabled(v18, v10))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32._countAndFlagsBits = v20;
    *v19 = 136315138;
    v21 = sub_15BC8(v30, v31, &v32._countAndFlagsBits);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_0, v18, v10, "%s", v19, 0xCu);
    sub_D13C(v20);
    sub_D494(v20);
    sub_D494(v19);
  }

  else
  {
  }

  v22 = v0[16];
  v23 = v5;
  sub_67C60();

  sub_D95F4(v18, v29, v7);
  v24 = *(v4 + 176);
  v25 = sub_16A9A4();
  sub_386D8(v25, v24, 0xD000000000000082, 0x8000000000189700, 0xD000000000000022, 0x8000000000189810, 74, 0xD000000000000022, 0x8000000000189840);
  sub_16A6E4();

  v26 = sub_16A0C4();
  sub_5370(v22, 0, 1, v26);
  v27 = swift_task_alloc();
  v0[21] = v27;
  *v27 = v0;
  v27[1] = sub_B61B8;

  return sub_B64EC();
}

uint64_t sub_B61B8()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  sub_109A0(*(v2 + 128), &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_B62F4()
{

  sub_D37C();

  return v1();
}

uint64_t sub_B6378()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[15];
  sub_16ACF4(64);
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[9] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v11._object = 0x8000000000189870;
  v11._countAndFlagsBits = 0xD00000000000003ELL;
  sub_16A744(v11);
  v4 = v0[7];
  *v3 = v0[6];
  v3[1] = v4;
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  v5 = sub_67C60();
  sub_548D0(v5, v6);
  swift_willThrow();

  sub_B75CC();
  sub_B7534(v3, v7);

  sub_D37C();

  return v8();
}

uint64_t sub_B64EC()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 273) = v3;
  *(v1 + 120) = v4;
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v5);
  *(v1 + 144) = sub_D3C8();
  v6 = sub_168E14();
  *(v1 + 152) = v6;
  sub_10AEC(v6);
  *(v1 + 160) = v7;
  *(v1 + 168) = sub_D3C8();
  v8 = sub_168B74();
  sub_D414(v8);
  *(v1 + 176) = sub_D3C8();
  v9 = sub_1691E4();
  *(v1 + 184) = v9;
  sub_10AEC(v9);
  *(v1 + 192) = v10;
  *(v1 + 200) = sub_D3C8();
  v11 = type metadata accessor for NeedsValueParameters(0);
  sub_D414(v11);
  *(v1 + 208) = sub_D3C8();
  v12 = sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v1 + 216) = v12;
  sub_D414(v12);
  *(v1 + 224) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v13);
}

uint64_t sub_B6684()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 273);
  v3 = *(v0 + 128);
  v4 = *(*(v0 + 136) + 176);
  sub_16ACF4(51);
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x80000000001897D0;
  sub_16A744(v14);
  sub_16198(v3, v1);
  v15._countAndFlagsBits = sub_16A694();
  sub_16A744(v15);

  v16._object = 0x80000000001897F0;
  v16._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v16);
  *(v0 + 272) = v2;
  sub_5758(&qword_1EA2A8, &unk_174150);
  v17._countAndFlagsBits = sub_16A694();
  sub_16A744(v17);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, v4, 0xD000000000000082, 0x8000000000189700, 0xD000000000000037, 0x8000000000189790, 85, 0, 0xE000000000000000);

  sub_D084((v7 + qword_1F0C28), *(v7 + qword_1F0C28 + 24));
  sub_16198(v6, v5);
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_B68CC;
  v11 = *(v0 + 208);

  return sub_156F84(v11);
}

uint64_t sub_B68CC()
{
  sub_D2DC();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v9 + 240) = v8;
  *(v9 + 248) = v0;

  sub_B7534(v5, type metadata accessor for NeedsValueParameters);
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_B6A04()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 273);
  swift_beginAccess();
  sub_10824(v5 + 184, v0 + 16);
  sub_168B54();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  sub_12B484(v6);
  (*(v3 + 16))(v4, v1, v2);
  sub_5370(v4, 0, 1, v2);
  sub_1691B4();
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_D084((v0 + 16), v7);
  v9 = swift_task_alloc();
  *(v0 + 256) = v9;
  *v9 = v0;
  v9[1] = sub_B6B8C;
  v10 = *(v0 + 240);
  v11 = *(v0 + 200);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 56, v10, v11, v7, v8);
}

uint64_t sub_B6B8C()
{
  sub_D2DC();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v6 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_B6C90()
{
  sub_B75F8();

  sub_D37C();

  return v0();
}

uint64_t sub_B6D24()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 120);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v4 + 8))(v2, v3);
  sub_D124((v0 + 56), v5);
  sub_D13C((v0 + 16));

  sub_D37C();

  return v6();
}

uint64_t sub_B6E34()
{
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v2, v4);
  sub_D13C(v0 + 2);

  sub_B75F8();

  sub_D37C();

  return v5();
}

uint64_t sub_B6F10()
{
  sub_D13C((v0 + qword_1F0C28));
}

void *sub_B6F50()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0C28));

  return v0;
}

uint64_t sub_B6F98()
{
  v0 = sub_B6F50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_B7028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B758C;

  return sub_B5708();
}

uint64_t sub_B70DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C8;

  return sub_B5C64();
}

uint64_t sub_B7188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsValueFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_B758C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_B725C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsValueFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_B758C;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_B7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsValueFlowStrategy(0, a5[52], a5[53], a5[54]);
  *v13 = v6;
  v13[1] = sub_B758C;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_B741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CommonNeedsValueFlowStrategy(0, a6[52], a6[53], a6[54]);
  *v15 = v7;
  v15[1] = sub_B758C;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_B7534(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10AFC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_B75F8()
{
}

id sub_B7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_B78D4(a1, a2, v8);
  sub_B7A7C(a3, a4, v8, &selRef_setType_);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_16D440;
  v10 = sub_168C14();

  *(v9 + 32) = v10;
  sub_B792C(v9, v8);

  return v8;
}

id sub_B7704(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_B79AC(a2);
  if (v6)
  {
    sub_5758(&qword_1EA2B8, &qword_174188);
    sub_16A7C4();
    v6 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v6, "setConfirmCommands:");

  v7 = sub_B7A18(a2);
  if (v8)
  {
    sub_16A644();
    v7 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v7, "setConfirmText:");

  v9 = sub_B79AC(a1);
  if (v9)
  {
    sub_5758(&qword_1EA2B8, &qword_174188);
    sub_16A7C4();
    v9 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v9, "setDenyCommands:");

  v10 = sub_B7A18(a1);
  if (v11)
  {
    sub_16A644();
    v10 = sub_B7BB8();
  }

  else
  {
    v2 = 0;
  }

  sub_B7BA0(v10, "setDenyText:");

  v12 = sub_16A664();
  sub_B7A7C(v12, v13, v5, &selRef_setCancelTrigger_);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_16E450;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v15 = a1;
  v16 = a2;
  sub_B7AE8(v14, v5);

  return v5;
}

void sub_B78D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16A644();
  [a3 setLabel:v4];
}

void sub_B792C(uint64_t a1, void *a2)
{
  sub_5758(&qword_1EA2B8, &qword_174188);
  isa = sub_16A7C4().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_B79AC(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_5758(&qword_1EA2B8, &qword_174188);
  v3 = sub_16A7D4();

  return v3;
}

uint64_t sub_B7A18(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

void sub_B7A7C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_16A644();

  [a3 *a4];
}

void sub_B7AE8(uint64_t a1, void *a2)
{
  sub_B7B5C();
  isa = sub_16A7C4().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

unint64_t sub_B7B5C()
{
  result = qword_1EA2C0;
  if (!qword_1EA2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA2C0);
  }

  return result;
}

id sub_B7BA0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_B7BB8()
{
}

uint64_t sub_B7BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
    v9 = a1 + *(a3 + 24);

    return sub_9E2C(v9, a2, v8);
  }
}

uint64_t sub_B7C80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
    v8 = v5 + *(a4 + 24);

    return sub_5370(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GetTirePressureStatusAction(uint64_t a1)
{
  result = qword_1EA328;
  if (!qword_1EA328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B7D4C(char a1)
{
  result = 0x776F4C656E6FLL;
  switch(a1)
  {
    case 1:
      v3 = 1214606959;
      goto LABEL_8;
    case 2:
      v5 = 1282373492;
      goto LABEL_15;
    case 3:
      v3 = 1215264628;
      goto LABEL_8;
    case 4:
      v4 = 1097824116;
      goto LABEL_13;
    case 5:
      return 0x776F4C6565726874;
    case 6:
      return 0x6769486565726874;
    case 7:
      return 0x6E62416565726874;
    case 8:
      v5 = 1282174049;
LABEL_15:
      result = v5 & 0xFFFF0000FFFFFFFFLL | 0x776F00000000;
      break;
    case 9:
      v3 = 1215065185;
LABEL_8:
      result = v3 | 0x68676900000000;
      break;
    case 10:
      v4 = 1097624673;
LABEL_13:
      result = v4 | 0x726F6E6200000000;
      break;
    case 11:
      result = 0x616D726F4E6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B7EAC()
{
  *(v1 + 128) = v0;
  sub_10B4C();
  return _swift_task_switch(v2);
}

uint64_t sub_B7ED8()
{
  sub_D2DC();
  sub_D084((*(v0 + 128) + 8), *(*(v0 + 128) + 32));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_B7F80;

  return sub_13AB58(v0 + 16, 3);
}

uint64_t sub_B7F80()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 152) = v8;
    *v8 = v5;
    v8[1] = sub_B80DC;

    return sub_B861C();
  }
}

uint64_t sub_B80DC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_B81E0()
{
  v1 = v0[18];
  sub_890A0();
  sub_890C4(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000000186790;
  sub_16A744(v22);
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_BB5B4(v11);

  sub_3024C(&unk_172F98);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = sub_BB584(v12);

  return v14(v13);
}

uint64_t sub_B8348()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 184) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_B844C()
{
  sub_D13C(v0 + 2);
  v1 = v0[20];
  sub_890A0();
  sub_890C4(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000000186790;
  sub_16A744(v22);
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_BB5B4(v11);

  sub_3024C(&unk_172F98);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = sub_BB584(v12);

  return v14(v13);
}

uint64_t sub_B85BC()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B861C()
{
  sub_D2DC();
  v1[15] = v2;
  v1[16] = v0;
  sub_16A164();
  v1[17] = sub_D3C8();
  v3 = sub_5758(&qword_1EA368, &unk_1741F0);
  v1[18] = v3;
  sub_10AEC(v3);
  v1[19] = v4;
  v1[20] = sub_D3C8();
  v5 = sub_5758(&qword_1EA370, &qword_1782B0);
  v1[21] = v5;
  sub_10AEC(v5);
  v1[22] = v6;
  v1[23] = sub_D3C8();
  v7 = sub_168454();
  v1[24] = v7;
  sub_10AEC(v7);
  v1[25] = v8;
  v1[26] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_B8798()
{
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_B88C4;

  return v6(v0 + 56, v2, v3);
}

uint64_t sub_B88C4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_B89C0()
{
  if (*(v0 + 80))
  {
    v2 = *(v0 + 200);
    v1 = *(v0 + 208);
    v3 = *(v0 + 192);
    v4 = *(v0 + 128);
    sub_D124((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_D084((v0 + 16), v5);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = sub_B956C(v7);
    v10 = v9;

    v11 = *(type metadata accessor for GetTirePressureStatusAction(0) + 24);
    sub_B9C38();
    (*(v2 + 16))(v1, v4 + v11, v3);
    v12 = sub_16A984();
    v13 = objc_opt_self();
    v14 = [v13 poundsForcePerSquareInch];
    v15 = sub_16AAD4();

    v16 = &selRef_kilopascals;
    if (v15)
    {
      v16 = &selRef_poundsForcePerSquareInch;
    }

    v59 = [v13 *v16];
    *(v0 + 232) = v59;

    v17 = *(v10 + 16);
    if (v17)
    {
      v49 = v8;
      v18 = 0;
      v19 = 0;
      v52 = 0;
      v53 = 0;
      v50 = 0;
      v20 = 0;
      v54 = 0;
      v51 = 0;
      v60 = 0;
      v21 = *(v0 + 176);
      v57 = *(v0 + 184);
      v56 = *(*(v0 + 168) + 48);
      v22 = v10 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v55 = *(v21 + 72);
      v23 = (*(v0 + 152) + 8);
      v67 = 1;
      while (1)
      {
        v62 = v20;
        v63 = v19;
        v64 = v18;
        v24 = *(v0 + 184);
        v25 = *(v0 + 144);
        sub_B9C7C(v22, v24);
        v26 = *v24;
        sub_168344();
        v27 = *v23;
        (*v23)(v57 + v56, v25);
        if (v60)
        {
          if (v54)
          {
            if (!v53)
            {
              v53 = *&aNt[8 * v26];
              sub_168314();
              v18 = v30;
              v20 = v62;
              v19 = v63;
              goto LABEL_16;
            }

            v20 = v62;
            if (!v50)
            {
              v50 = *&aNt[8 * v26];
              sub_168314();
            }

            v19 = v63;
          }

          else
          {
            v20 = *&aLeftFrorightFr[8 * v26];
            v54 = *&aNt[8 * v26];
            sub_168314();
            v19 = v29;
          }

          v18 = v64;
        }

        else
        {
          v51 = *&aLeftFrorightFr[8 * v26];
          v60 = *&aNt[8 * v26];
          sub_168314();
          v67 = 0;
          v52 = v28;
          v20 = v62;
          v19 = v63;
          v18 = v64;
        }

LABEL_16:
        v27(*(v0 + 160), *(v0 + 144));
        v22 += v55;
        if (!--v17)
        {

          v8 = v49;
          v31 = v60;
          v32 = v54;
          v33 = v50;
          v34 = v53;
          goto LABEL_24;
        }
      }
    }

    v52 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v51 = 0;
    v31 = 0;
    v67 = 1;
LABEL_24:
    v61 = v31;
    *(v0 + 256) = v32;
    *(v0 + 264) = v31;
    *(v0 + 240) = v33;
    *(v0 + 248) = v34;
    v58 = sub_B7D4C(v8);
    v43 = v42;
    *(v0 + 272) = v42;
    v44 = [v59 symbol];
    v45 = sub_16A664();
    v47 = v46;

    *(v0 + 280) = v47;
    type metadata accessor for CarCommandsGetTirePressureCATsSimple(0);
    sub_16A154();
    *(v0 + 288) = sub_16A0F4();
    v48 = swift_task_alloc();
    *(v0 + 296) = v48;
    *v48 = v0;
    v48[1] = sub_B9040;

    return sub_956A4(v58, v43, v45, v47, v51, v61, v52, v67 & 1);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1EA378, &unk_174200);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v35 = *(v0 + 128);
    v36 = sub_16A584();
    sub_9DA0(v36, qword_1E65C0);
    v37 = sub_16A9A4();
    sub_386D8(v37, 0x800000uLL, 0xD000000000000094, 0x8000000000189970, 0xD00000000000001CLL, 0x8000000000189A10, 37, 0xD000000000000022, 0x80000000001867D0);
    sub_3024C(&unk_179C30);
    v65 = v38;
    v39 = *v35;
    v40 = swift_task_alloc();
    *(v0 + 312) = v40;
    *v40 = v0;
    v40[1] = sub_B936C;

    return v65(v39);
  }
}

uint64_t sub_B9040()
{
  sub_D2A4();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  *v3 = *v1;
  v2[38] = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_B9248()
{
  sub_D13C((v0 + 16));
  v1 = *(v0 + 104);
  sub_BB5EC();

  sub_30AEC();

  return v2(v1);
}

uint64_t sub_B92DC()
{
  sub_D13C((v0 + 16));
  sub_BB5EC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B936C(uint64_t a1)
{
  v4 = *v2;
  sub_D254();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_B94EC(uint64_t a1)
{
  sub_BB5EC();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_B956C(uint64_t a1)
{
  v40 = sub_5758(&qword_1EA370, &qword_1782B0);
  v2 = *(v40 - 8);
  v3 = __chkstk_darwin(v40);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = type metadata accessor for CarTire(0);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    v39 = 0;
    v12 = 0;
    v14 = _swiftEmptyArrayStorage;
LABEL_23:
    v34 = sub_B99B0(v12, v39);
    v42 = v14;

    sub_B9DAC(&v42);

    return v34;
  }

  v39 = 0;
  v12 = 0;
  v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v41 = *(v8 + 72);
  v14 = _swiftEmptyArrayStorage;
  v37 = v2;
  while (1)
  {
    sub_B9CEC(v13, v10);
    v15 = *v10;
    v16 = v10[1];
    if ((v16 - 4) >= 2)
    {
      if (v16 == 3)
      {
        if (__OFADD__(v39, 1))
        {
          goto LABEL_25;
        }

        ++v39;
        v24 = v7;
        v25 = *(v7 + 24);
        v26 = *(v40 + 48);
        v27 = v38;
        *v38 = v15;
        v28 = sub_5758(&qword_1EA368, &unk_1741F0);
        (*(*(v28 - 8) + 16))(&v27[v26], &v10[v25], v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_108CC8();
          v14 = v32;
        }

        v29 = v14[2];
        v7 = v24;
        if (v29 >= v14[3] >> 1)
        {
          sub_108CC8();
          v14 = v33;
        }

        v2 = v37;
        sub_B9D50(v10);
        v14[2] = v29 + 1;
        v22 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29;
        v23 = v38;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        sub_B9D50(v10);
        goto LABEL_20;
      }
    }

    if (__OFADD__(v12++, 1))
    {
      break;
    }

    v18 = *(v7 + 24);
    v19 = *(v40 + 48);
    *v6 = v15;
    v20 = sub_5758(&qword_1EA368, &unk_1741F0);
    (*(*(v20 - 8) + 16))(&v6[v19], &v10[v18], v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_108CC8();
      v14 = v30;
    }

    v21 = v14[2];
    if (v21 >= v14[3] >> 1)
    {
      sub_108CC8();
      v14 = v31;
    }

    sub_B9D50(v10);
    v14[2] = v21 + 1;
    v22 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21;
    v23 = v6;
LABEL_18:
    sub_B9E60(v23, v22);
LABEL_20:
    v13 += v41;
    if (!--v11)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_B99B0(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    JUMPOUT(0xB9A48);
  }

  switch(a1 + a2)
  {
    case 1:
      return a1 != 1;
    case 2:
      v3 = 2;
      if (a2 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }

      v5 = a1 == 2;
      goto LABEL_16;
    case 3:
      v3 = 5;
      if (a2 == 3)
      {
        v4 = 6;
      }

      else
      {
        v4 = 7;
      }

      v5 = a1 == 3;
      goto LABEL_16;
    case 4:
      v3 = 8;
      if (a2 == 4)
      {
        v4 = 9;
      }

      else
      {
        v4 = 10;
      }

      v5 = a1 == 4;
LABEL_16:
      if (v5)
      {
        result = v3;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      result = 11;
      break;
  }

  return result;
}

BOOL sub_B9A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA370, &qword_1782B0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  sub_B9C7C(a1, v17 - v9);
  LODWORD(a1) = *v10;
  v11 = *(v5 + 56);
  sub_B9C7C(a2, v8);
  v12 = *(v5 + 56);
  v13 = a1 < *v8;
  v14 = sub_5758(&qword_1EA368, &unk_1741F0);
  v15 = *(*(v14 - 8) + 8);
  v15(&v8[v12], v14);
  v15(&v10[v11], v14);
  return v13;
}

uint64_t sub_B9BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_88ED0;

  return sub_B7EAC();
}

unint64_t sub_B9C38()
{
  result = qword_1EA380;
  if (!qword_1EA380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA380);
  }

  return result;
}

uint64_t sub_B9C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA370, &qword_1782B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B9CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarTire(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B9D50(uint64_t a1)
{
  v2 = type metadata accessor for CarTire(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_B9DAC(uint64_t *a1)
{
  v2 = *(sub_5758(&qword_1EA370, &qword_1782B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_39734(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_B9ED0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_B9E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA370, &qword_1782B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_B9ED0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_16AE14(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_5758(&qword_1EA370, &qword_1782B0);
        v6 = sub_16A804();
        v6[2] = v5;
      }

      v7 = *(sub_5758(&qword_1EA370, &qword_1782B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_BA348(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_BA018(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_BA018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v9 = __chkstk_darwin(v8);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v46 = &v34 - v12;
  v13 = __chkstk_darwin(v11);
  v45 = &v34 - v14;
  v15 = __chkstk_darwin(v13);
  v44 = &v34 - v16;
  result = __chkstk_darwin(v15);
  v52 = &v34 - v19;
  v36 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v18 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v41 = -v21;
    v42 = v20;
    v23 = a1 - a3;
    v35 = v21;
    v24 = v20 + v21 * a3;
    while (2)
    {
      v39 = v22;
      v40 = a3;
      v37 = v24;
      v38 = v23;
      v25 = v24;
      v47 = v23;
      do
      {
        v26 = v52;
        sub_B9C7C(v25, v52);
        v27 = v44;
        sub_B9C7C(v22, v44);
        v28 = v45;
        sub_B9C7C(v26, v45);
        v51 = *v28;
        v49 = *(v8 + 48);
        v29 = v46;
        sub_B9C7C(v27, v46);
        v50 = *v29;
        v48 = *(v8 + 48);
        v30 = sub_5758(&qword_1EA368, &unk_1741F0);
        v31 = *(*(v30 - 8) + 8);
        v31(&v29[v48], v30);
        v31(&v28[v49], v30);
        sub_D188(v27, &qword_1EA370, &qword_1782B0);
        result = sub_D188(v52, &qword_1EA370, &qword_1782B0);
        if (v51 >= v50)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v32 = v43;
        sub_B9E60(v25, v43);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_B9E60(v32, v22);
        v22 += v41;
        v25 += v41;
      }

      while (!__CFADD__(v47++, 1));
      a3 = v40 + 1;
      v22 = v39 + v35;
      v23 = v38 - 1;
      v24 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_BA348(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v131 = a1;
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v139 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v135 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v144 = &v125 - v12;
  v13 = __chkstk_darwin(v11);
  v147 = &v125 - v14;
  v15 = __chkstk_darwin(v13);
  v146 = &v125 - v16;
  v17 = __chkstk_darwin(v15);
  v145 = &v125 - v18;
  v19 = __chkstk_darwin(v17);
  v149 = &v125 - v20;
  v21 = __chkstk_darwin(v19);
  __chkstk_darwin(v21);
  v140 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = _swiftEmptyArrayStorage;
LABEL_102:
    v154 = *v131;
    if (!v154)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v128 = &v125 - v22;
  v129 = v23;
  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  v127 = a4;
  v148 = v8;
  while (1)
  {
    v27 = v25 + 1;
    v132 = v25;
    if (v25 + 1 < v24)
    {
      v28 = *v140;
      v29 = *(v139 + 72);
      v141 = v25 + 1;
      v30 = v28 + v29 * v27;
      v31 = v30;
      v32 = v128;
      sub_B9C7C(v30, v128);
      v33 = v28 + v29 * v25;
      v34 = v129;
      sub_B9C7C(v33, v129);
      LODWORD(v142) = sub_B9A58(v32, v34);
      if (v5)
      {
        sub_D188(v34, &qword_1EA370, &qword_1782B0);
        sub_D188(v32, &qword_1EA370, &qword_1782B0);
LABEL_114:

        return;
      }

      v130 = 0;
      v138 = v24;
      sub_D188(v34, &qword_1EA370, &qword_1782B0);
      v35 = v138;
      sub_D188(v32, &qword_1EA370, &qword_1782B0);
      v36 = v132 + 2;
      v37 = v28 + v29 * (v132 + 2);
      v27 = v141;
      v143 = v29;
      while (1)
      {
        v38 = v36;
        v39 = v27 + 1;
        if (v39 >= v35)
        {
          break;
        }

        v40 = v149;
        v154 = v36;
        sub_B9C7C(v37, v149);
        v41 = v145;
        sub_B9C7C(v31, v145);
        v5 = v146;
        sub_B9C7C(v40, v146);
        v153 = *v5;
        v151 = *(v8 + 48);
        v42 = v147;
        sub_B9C7C(v41, v147);
        LODWORD(v152) = *v42;
        v150 = *(v8 + 48);
        v43 = sub_5758(&qword_1EA368, &unk_1741F0);
        v141 = v39;
        v44 = v43;
        v45 = *(*(v43 - 8) + 8);
        v46 = &v42[v150];
        v35 = v138;
        v45(v46, v44);
        v47 = v44;
        v27 = v141;
        v45(&v5[v151], v47);
        v8 = v148;
        sub_D188(v41, &qword_1EA370, &qword_1782B0);
        sub_D188(v149, &qword_1EA370, &qword_1782B0);
        v38 = v154;
        v29 = v143;
        v37 += v143;
        v31 += v143;
        v36 = v154 + 1;
        if (((v142 ^ (v153 >= v152)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v27 = v35;
LABEL_10:
      if (v142)
      {
        v25 = v132;
        if (v27 < v132)
        {
          goto LABEL_138;
        }

        if (v132 >= v27)
        {
          v5 = v130;
          goto LABEL_32;
        }

        if (v35 >= v38)
        {
          v48 = v38;
        }

        else
        {
          v48 = v35;
        }

        v49 = v132;
        v50 = v29 * (v48 - 1);
        v51 = v27;
        v52 = v29 * v48;
        v53 = v132 * v29;
        v141 = v51;
        do
        {
          if (v49 != --v51)
          {
            v54 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            sub_B9E60(v54 + v53, v135);
            v55 = v53 < v50 || v54 + v53 >= (v54 + v52);
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_B9E60(v135, v54 + v50);
            v29 = v143;
          }

          ++v49;
          v50 -= v29;
          v52 -= v29;
          v53 += v29;
        }

        while (v49 < v51);
        v27 = v141;
      }

      v5 = v130;
      v25 = v132;
    }

LABEL_32:
    v56 = v140[1];
    if (v27 < v56)
    {
      if (__OFSUB__(v27, v25))
      {
        goto LABEL_135;
      }

      if (v27 - v25 < v127)
      {
        break;
      }
    }

LABEL_50:
    if (v27 < v25)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_108404();
      v26 = v116;
    }

    v72 = *(v26 + 16);
    v73 = v72 + 1;
    if (v72 >= *(v26 + 24) >> 1)
    {
      sub_108404();
      v26 = v117;
    }

    *(v26 + 16) = v73;
    v74 = v26 + 32;
    v75 = (v26 + 32 + 16 * v72);
    *v75 = v132;
    v75[1] = v27;
    v154 = *v131;
    if (!v154)
    {
      goto LABEL_144;
    }

    v141 = v27;
    if (v72)
    {
      while (1)
      {
        v76 = v73 - 1;
        v77 = (v74 + 16 * (v73 - 1));
        v78 = (v26 + 16 * v73);
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v79 = *(v26 + 32);
          v80 = *(v26 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_70:
          if (v82)
          {
            goto LABEL_121;
          }

          v94 = *v78;
          v93 = v78[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_124;
          }

          v98 = v77[1];
          v99 = v98 - *v77;
          if (__OFSUB__(v98, *v77))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v96, v99))
          {
            goto LABEL_129;
          }

          if (v96 + v99 >= v81)
          {
            if (v81 < v99)
            {
              v76 = v73 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v73 < 2)
        {
          goto LABEL_123;
        }

        v101 = *v78;
        v100 = v78[1];
        v89 = __OFSUB__(v100, v101);
        v96 = v100 - v101;
        v97 = v89;
LABEL_85:
        if (v97)
        {
          goto LABEL_126;
        }

        v103 = *v77;
        v102 = v77[1];
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_128;
        }

        if (v104 < v96)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v76 - 1 >= v73)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v108 = (v74 + 16 * (v76 - 1));
        v109 = *v108;
        v110 = v76;
        v111 = v74 + 16 * v76;
        v112 = *(v111 + 8);
        sub_BAE78(*v140 + *(v139 + 72) * *v108, *v140 + *(v139 + 72) * *v111, *v140 + *(v139 + 72) * v112, v154);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v112 < v109)
        {
          goto LABEL_116;
        }

        v113 = v26;
        v26 = v74;
        v5 = *(v113 + 16);
        if (v110 > v5)
        {
          goto LABEL_117;
        }

        *v108 = v109;
        v108[1] = v112;
        if (v110 >= v5)
        {
          goto LABEL_118;
        }

        v114 = v113;
        v73 = (v5 - 1);
        sub_39538((v111 + 16), &v5[-v110 - 1], v111);
        *(v114 + 16) = v5 - 1;
        v115 = v5 > 2;
        v5 = 0;
        v26 = v114;
        v8 = v148;
        if (!v115)
        {
          goto LABEL_99;
        }
      }

      v83 = v74 + 16 * v73;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_119;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_120;
      }

      v90 = v78[1];
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_122;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_125;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = v77[1];
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_133;
        }

        if (v81 < v107)
        {
          v76 = v73 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v25 = v141;
    v24 = v140[1];
    if (v141 >= v24)
    {
      goto LABEL_102;
    }
  }

  v57 = v25 + v127;
  if (__OFADD__(v25, v127))
  {
    goto LABEL_136;
  }

  if (v57 >= v56)
  {
    v57 = v140[1];
  }

  if (v57 < v25)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v26 = sub_39524(v26);
LABEL_104:
    v118 = (v26 + 16);
    v119 = *(v26 + 16);
    while (v119 >= 2)
    {
      if (!*v140)
      {
        goto LABEL_142;
      }

      v120 = v26;
      v121 = (v26 + 16 * v119);
      v122 = *v121;
      v123 = &v118[2 * v119];
      v26 = *(v123 + 1);
      sub_BAE78(*v140 + *(v139 + 72) * *v121, *v140 + *(v139 + 72) * *v123, *v140 + *(v139 + 72) * v26, v154);
      if (v5)
      {
        break;
      }

      if (v26 < v122)
      {
        goto LABEL_130;
      }

      if (v119 - 2 >= *v118)
      {
        goto LABEL_131;
      }

      *v121 = v122;
      v121[1] = v26;
      v124 = *v118 - v119;
      if (*v118 < v119)
      {
        goto LABEL_132;
      }

      v119 = *v118 - 1;
      sub_39538(v123 + 16, v124, v123);
      *v118 = v119;
      v26 = v120;
    }

    goto LABEL_114;
  }

  if (v27 == v57)
  {
    goto LABEL_50;
  }

  v126 = v26;
  v130 = v5;
  v58 = *v140;
  v59 = *(v139 + 72);
  v60 = *v140 + v59 * (v27 - 1);
  v142 = -v59;
  v143 = v58;
  v61 = v25 - v27;
  v133 = v59;
  v134 = v57;
  v62 = v58 + v27 * v59;
LABEL_41:
  v141 = v27;
  v136 = v62;
  v137 = v61;
  v63 = v61;
  v138 = v60;
  while (1)
  {
    v150 = v63;
    v64 = v149;
    sub_B9C7C(v62, v149);
    v65 = v145;
    sub_B9C7C(v60, v145);
    v66 = v146;
    sub_B9C7C(v64, v146);
    LODWORD(v154) = *v66;
    v152 = *(v8 + 48);
    v67 = v147;
    sub_B9C7C(v65, v147);
    v153 = *v67;
    v151 = *(v8 + 48);
    v68 = sub_5758(&qword_1EA368, &unk_1741F0);
    v69 = *(*(v68 - 8) + 8);
    v69(&v67[v151], v68);
    v69(&v66[v152], v68);
    sub_D188(v65, &qword_1EA370, &qword_1782B0);
    sub_D188(v64, &qword_1EA370, &qword_1782B0);
    if (v154 >= v153)
    {
      v8 = v148;
LABEL_48:
      v27 = v141 + 1;
      v60 = v138 + v133;
      v61 = v137 - 1;
      v62 = v136 + v133;
      if (v141 + 1 == v134)
      {
        v27 = v134;
        v5 = v130;
        v26 = v126;
        v25 = v132;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v70 = v150;
    if (!v143)
    {
      break;
    }

    v71 = v144;
    sub_B9E60(v62, v144);
    v8 = v148;
    swift_arrayInitWithTakeFrontToBack();
    sub_B9E60(v71, v60);
    v60 += v142;
    v62 += v142;
    v55 = __CFADD__(v70, 1);
    v63 = v70 + 1;
    if (v55)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_BAE78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_5758(&qword_1EA370, &qword_1782B0);
  v9 = __chkstk_darwin(v8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v68 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v67 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v74 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_61;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v23 = v19 / v18;
  v79 = a1;
  v78 = a4;
  v24 = v21 / v18;
  v66 = v8;
  if (v19 / v18 >= v21 / v18)
  {
    v38 = a3;
    sub_10928C();
    v39 = a4 + v24 * v18;
    v40 = -v18;
    v41 = v39;
    v75 = a1;
    v76 = a4;
    v62 = v40;
LABEL_36:
    v42 = a2 + v40;
    v43 = v38;
    v60 = v41;
    v63 = a2 + v40;
    v64 = a2;
    while (1)
    {
      if (v39 <= a4)
      {
        v79 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v61 = v41;
      v73 = v43 + v40;
      v44 = v39 + v40;
      v45 = v74;
      v46 = v43;
      sub_B9C7C(v39 + v40, v74);
      v47 = v42;
      v48 = v8;
      v49 = v67;
      sub_B9C7C(v47, v67);
      v50 = v68;
      sub_B9C7C(v45, v68);
      v72 = *v50;
      v70 = *(v48 + 48);
      v51 = v69;
      sub_B9C7C(v49, v69);
      v71 = *v51;
      v65 = *(v48 + 48);
      v52 = sub_5758(&qword_1EA368, &unk_1741F0);
      v53 = *(*(v52 - 8) + 8);
      v53(&v51[v65], v52);
      v53(&v50[v70], v52);
      sub_D188(v49, &qword_1EA370, &qword_1782B0);
      sub_D188(v74, &qword_1EA370, &qword_1782B0);
      if (v72 < v71)
      {
        if (v46 < v64 || v73 >= v64)
        {
          v38 = v73;
          a2 = v63;
          v8 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v41 = v61;
          v40 = v62;
          a1 = v75;
          a4 = v76;
        }

        else
        {
          v38 = v73;
          v40 = v62;
          v41 = v61;
          v20 = v46 == v64;
          v57 = v63;
          a2 = v63;
          v8 = v66;
          a1 = v75;
          a4 = v76;
          if (!v20)
          {
            v58 = v61;
            swift_arrayInitWithTakeBackToFront();
            a2 = v57;
            v41 = v58;
          }
        }

        goto LABEL_36;
      }

      v54 = v73;
      if (v46 < v39 || v73 >= v39)
      {
        v8 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v54;
        v39 = v44;
        v41 = v44;
        a1 = v75;
        a4 = v76;
        v40 = v62;
        v42 = v63;
        a2 = v64;
      }

      else
      {
        v41 = v44;
        v20 = v39 == v46;
        v43 = v73;
        v39 = v44;
        v8 = v66;
        a1 = v75;
        a4 = v76;
        v40 = v62;
        v42 = v63;
        a2 = v64;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v43 = v54;
          v39 = v44;
          v41 = v44;
        }
      }
    }

    v79 = a2;
    v41 = v60;
LABEL_58:
    v77 = v41;
  }

  else
  {
    sub_10928C();
    v64 = v18;
    v65 = a4 + v23 * v18;
    v77 = v65;
    v73 = a3;
    while (a4 < v65 && a2 < a3)
    {
      v75 = a1;
      v26 = v74;
      sub_B9C7C(a2, v74);
      v27 = v67;
      sub_B9C7C(a4, v67);
      v28 = v68;
      sub_B9C7C(v26, v68);
      v72 = *v28;
      v76 = a4;
      v29 = a2;
      v70 = *(v8 + 48);
      v30 = v69;
      sub_B9C7C(v27, v69);
      v71 = *v30;
      v31 = *(v8 + 48);
      v32 = sub_5758(&qword_1EA368, &unk_1741F0);
      v33 = *(*(v32 - 8) + 8);
      v33(&v30[v31], v32);
      v33(&v28[v70], v32);
      sub_D188(v27, &qword_1EA370, &qword_1782B0);
      sub_D188(v26, &qword_1EA370, &qword_1782B0);
      if (v72 >= v71)
      {
        v34 = v64;
        v35 = v75;
        a4 = v76 + v64;
        if (v75 < v76 || v75 >= a4)
        {
          v8 = v66;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v73;
        }

        else
        {
          a3 = v73;
          v8 = v66;
          if (v75 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v78 = a4;
      }

      else
      {
        v34 = v64;
        a2 += v64;
        v35 = v75;
        a4 = v76;
        if (v75 < v29 || v75 >= a2)
        {
          v8 = v66;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v73;
        }

        else
        {
          a3 = v73;
          v8 = v66;
          if (v75 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v35 + v34;
      v79 = a1;
    }
  }

  sub_BB498(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_BB498(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_5758(&qword_1EA370, &qword_1782B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_BB5B4(os_log_type_t a1)
{

  sub_386D8(a1, 0x800000uLL, v3 + 130, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 30, v2, v1);
}

uint64_t sub_BB5EC()
{
}

id sub_BB60C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39SetRadioStationHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v4 = sub_BC78C(qword_1F0E10);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_BB6A8()
{
  sub_D2DC();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  sub_16A164();
  v1[23] = swift_task_alloc();
  type metadata accessor for SetRadioStationParameters(0);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_BB764);
}

uint64_t sub_BB764()
{
  v18 = v0;
  sub_10824(v0[22] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(qword_1EA5B0, &qword_1743A8);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = 0xD000000000000025;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[15] = 0xD00000000000009ALL;
  v0[16] = 0x8000000000189A80;
  v0[17] = 47;
  v0[18] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    sub_16A744(v20);
    v21._countAndFlagsBits = 0xD000000000000025;
    v21._object = 0x8000000000182560;
    sub_16A744(v21);
    v2 = v6;
    v1 = v8;
  }

  v17._countAndFlagsBits = 58;
  v17._object = 0xE100000000000000;
  v0[19] = 24;
  v22._countAndFlagsBits = sub_16AE24();
  sub_16A744(v22);

  sub_16A744(v17);

  v9._countAndFlagsBits = sub_378D0(0x802uLL);
  if (v9._object)
  {
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    sub_16A744(v9);

    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    sub_16A744(v23);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v17._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v0[25] = sub_1690A4();
  sub_5B35C();
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[26] = sub_16A094();
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_BBB18;
  v15 = v0[24];

  return sub_1572C8(v15);
}

uint64_t sub_BBB18()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v5 + 224) = v4;
  *(v5 + 232) = v0;

  if (v0)
  {
    v6 = sub_BBE90;
  }

  else
  {
    v6 = sub_BBC3C;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_BBC3C()
{
  sub_D2DC();
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_BBCF8;

  return sub_11A570();
}

uint64_t sub_BBCF8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 248) = v0;

  sub_D13C((v3 + 56));
  if (v0)
  {
    v6 = sub_BBF04;
  }

  else
  {
    v6 = sub_BBE04;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_BBE04()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  sub_BC730(v1);

  sub_D37C();

  return v3();
}

uint64_t sub_BBE90()
{
  sub_D2DC();
  v1 = *(v0 + 192);

  sub_BC730(v1);

  sub_D37C();

  return v2();
}

uint64_t sub_BBF04()
{
  sub_D2DC();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);

  sub_BC730(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_BBF90()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetRadioStationHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1EA3B8;
  if (!qword_1EA3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_BC09C(uint64_t a1)
{
  result = sub_BC0C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_BC0C4()
{
  result = qword_1EA5A8;
  if (!qword_1EA5A8)
  {
    type metadata accessor for SetRadioStationHandleIntentFlowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA5A8);
  }

  return result;
}

uint64_t sub_BC11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_BC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_BC2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_BC36C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_BB6A8();
}

uint64_t sub_BC418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_BC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_BC5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetRadioStationHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_BC670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_455F0();
}

uint64_t sub_BC730(uint64_t a1)
{
  v2 = type metadata accessor for SetRadioStationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_BC78C(uint64_t a1)
{
  v2 = type metadata accessor for CarPlayService(0);
  v14[3] = v2;
  v14[4] = &off_1DA3F0;
  v14[0] = a1;
  v3 = type metadata accessor for SetCarRadioStationIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v14, v2);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_1DA3F0;
  v13[0] = v9;
  sub_10824(v13, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SetCarRadioStationIntentHandler_service);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v13);
  sub_D13C(v14);
  return v10;
}

id sub_BC8D8(char a1)
{
  if (a1)
  {
    v2 = sub_BCA9C();
  }

  else
  {
    v2 = 0;
  }

  sub_16ACF4(46);

  v6._countAndFlagsBits = sub_16AE24();
  sub_16A744(v6);

  v7._countAndFlagsBits = 543584032;
  v7._object = 0xE400000000000000;
  sub_16A744(v7);
  sub_BCA9C();
  v8._countAndFlagsBits = sub_16AE24();
  sub_16A744(v8);

  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  sub_386D8(v4, 0x1000000uLL, 0xD0000000000000A3, 0x8000000000189B20, 0x62616E6528746573, 0xED0000293A64656CLL, 24, 0xD000000000000026, 0x8000000000189BD0);

  return [v1 setHeatingCoolingLevel:v2];
}

uint64_t sub_BCA9C()
{
  v1 = [v0 heatingCoolingLevelRange];
  v2 = [v1 maximumValue];

  return v2;
}

BOOL sub_BCAEC()
{
  v1 = [v0 heatingCoolingLevelRange];
  v2 = [v1 maximumValue];

  return v2 > 0;
}

uint64_t sub_BCBB0()
{
  if ([v0 heatingCoolingLevelDisabled])
  {
    return 0;
  }

  else
  {
    return [v0 heatingCoolingLevelInvalid] ^ 1;
  }
}

uint64_t sub_BCC54()
{
  sub_D2DC();
  v1[35] = v2;
  v1[36] = v0;
  v1[33] = v3;
  v1[34] = v4;
  v1[31] = v5;
  v1[32] = v6;
  v1[30] = v7;
  sub_16A164();
  v1[37] = swift_task_alloc();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for CarNameParameters(0);
  v1[40] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_BCD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = sub_11F404(a1);
  if (v13)
  {
    v17 = [*(v12 + 256) parametersByName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_16A5B4();

      sub_13F530(0x656D614E726163, 0xE700000000000000, v19, (v12 + 136));

      if (*(v12 + 160))
      {
        sub_95578();
        if (swift_dynamicCast())
        {
          v20 = *(v12 + 232);
        }

        else
        {
          v20 = 0;
        }

LABEL_12:
        *(v12 + 328) = v20;
        v37 = [*(v12 + 264) userActivity];
        if (v37 && (v38 = v37, v39 = [v37 userInfo], v38, v39))
        {
          v40 = sub_16A5B4();

          *(v12 + 200) = 0x664F7265626D756ELL;
          *(v12 + 208) = 0xEF7379654B726143;
          sub_16AC84();
          sub_13F658(v40, (v12 + 168), v12 + 96);

          sub_472B0(v12 + 96);
          if (*(v12 + 192))
          {
            if (swift_dynamicCast())
            {
              v41 = *(v12 + 224) > 1;
              if (!v20)
              {
LABEL_17:
                v42 = 0;
                v43 = 1;
                goto LABEL_30;
              }

LABEL_21:
              v44 = [v20 spokenPhrase];
              v45 = sub_16A664();
              v47 = v46;

              sub_15B48(v45, v47);
              v49 = v48;

              if (v49)
              {
                v50 = sub_16A5D4();
                v52 = v51;

                if (v50 == 115 && v52 == 0xE100000000000000)
                {

                  v42 = 1;
                }

                else
                {
                  v42 = sub_16AE54();
                }
              }

              else
              {
                v42 = 0;
              }

              v54 = v20;
              sub_99C94();

              v43 = 0;
LABEL_30:
              v56 = *(v12 + 312);
              v55 = *(v12 + 320);
              v57 = *(v12 + 304);
              v58 = *(v12 + 264);
              v59 = sub_16A0C4();
              sub_5370(v57, v43, 1, v59);
              sub_BDF9C(v56[7]);
              sub_BDF9C(v56[8]);
              sub_BDF9C(v56[9]);
              sub_16304(v57, v55);
              *(v55 + v56[5]) = v41;
              *(v55 + v56[6]) = v42 & 1;
              if ([v58 _intentResponseCode])
              {
                if (qword_1E58E8 != -1)
                {
                  sub_9ED4(&qword_1E58E8);
                }

                v60 = sub_BE030();
                sub_9DA0(v60, qword_1E65C0);
                sub_16A9A4();
                sub_BDFE8();
                sub_386D8(v61, 2uLL, v62, v63, 0xD00000000000003FLL, v64, 43, 0xD00000000000005CLL, v77);
                type metadata accessor for CarCommandsCATPatternsExecutor(0);
                sub_16A154();
                *(v12 + 384) = sub_16A094();
                v65 = swift_task_alloc();
                *(v12 + 392) = v65;
                *v65 = v12;
                sub_BDFFC(v65);
                sub_10B0C();

                return sub_1570D4(v66);
              }

              else
              {
                if (qword_1E58E8 != -1)
                {
                  sub_9ED4(&qword_1E58E8);
                }

                v68 = sub_BE030();
                sub_9DA0(v68, qword_1E65C0);
                sub_16A9A4();
                sub_BDFE8();
                sub_386D8(v69, 2uLL, v70, v71, 0xD00000000000003FLL, v72, 38, 0xD00000000000003FLL, v77);
                type metadata accessor for CarCommandsCATPatternsExecutor(0);
                sub_16A154();
                *(v12 + 336) = sub_16A094();
                v73 = swift_task_alloc();
                *(v12 + 344) = v73;
                *v73 = v12;
                sub_BDFFC(v73);
                sub_10B0C();

                return sub_1569A0(v74);
              }
            }

LABEL_20:
            v41 = 0;
            if (!v20)
            {
              goto LABEL_17;
            }

            goto LABEL_21;
          }
        }

        else
        {
          *(v12 + 184) = 0u;
          *(v12 + 168) = 0u;
        }

        sub_BDF34(v12 + 168);
        goto LABEL_20;
      }
    }

    else
    {
      *(v12 + 152) = 0u;
      *(v12 + 136) = 0u;
    }

    sub_BDF34(v12 + 136);
    v20 = 0;
    goto LABEL_12;
  }

  v21 = sub_BE010(v13, v14, v15, v16, &associated type descriptor for RouteConfirmIntentResponseFlowStrategyAsync.IntentType);
  v25 = sub_BE010(v21, v22, v23, v24, &associated type descriptor for RouteConfirmIntentResponseFlowStrategyAsync.IntentResponseType);
  type metadata accessor for DefaultRouteConfirmIntentResponseFlowStrategyAsync(0, v21, v25, v26);
  v27 = sub_BDE3C();
  *(v12 + 432) = v27;
  *(v12 + 216) = v27;
  v28 = swift_task_alloc();
  *(v12 + 440) = v28;
  swift_getWitnessTable();
  *v28 = v12;
  v28[1] = sub_BDA44;
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_BD39C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v7 + 352) = v6;
  *(v7 + 360) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_BD4B8()
{
  sub_D2DC();
  v1 = sub_BDFD4();
  v2(v1);
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_BD564;

  return sub_11A570();
}

uint64_t sub_BD564()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 376) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_BD668()
{
  sub_D2DC();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_BD6F0()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v7 + 400) = v6;
  *(v7 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_BD80C()
{
  sub_D2DC();
  v1 = sub_BDFD4();
  v2(v1);
  v3 = swift_task_alloc();
  *(v0 + 416) = v3;
  *v3 = v0;
  v3[1] = sub_BD8B8;

  return sub_11A570();
}

uint64_t sub_BD8B8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_BD9BC()
{
  sub_D2DC();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_BDA44()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    sub_D37C();

    return v8();
  }
}

uint64_t sub_BDBA4()
{
  sub_1696C();
  v1 = *(v0 + 320);

  sub_36F84(v1);
  sub_BDFBC();

  sub_D37C();

  return v2();
}

uint64_t sub_BDC24()
{
  sub_1696C();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);
  sub_BDFBC();

  sub_D37C();

  return v3();
}

uint64_t sub_BDCAC()
{
  sub_1696C();
  v1 = *(v0 + 320);

  sub_36F84(v1);
  sub_BDFBC();

  sub_D37C();

  return v2();
}

uint64_t sub_BDD2C()
{
  sub_1696C();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);

  sub_36F84(v2);
  sub_BDFBC();

  sub_D37C();

  return v3();
}

uint64_t sub_BDDB4()
{
  sub_1696C();
  sub_BDFBC();

  sub_D37C();

  return v0();
}

uint64_t sub_BDE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_task_alloc();
  *(v12 + 16) = v19;
  v21 = type metadata accessor for DefaultRouteConfirmIntentResponseFlowStrategyAsync(0, *(a5 + 80), *(a5 + 88), v20);
  *v19 = v12;
  v19[1] = sub_1039C;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v21, a6, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_BDF34(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6A10, &unk_1744D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BDF9C@<X0>(uint64_t a1@<X8>)
{

  return sub_5370(v1 + a1, 1, 1, v2);
}

uint64_t sub_BDFBC()
{
}

uint64_t sub_BE010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_BE030()
{

  return sub_16A584();
}

uint64_t sub_BE050@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  sub_95578();
  if (swift_dynamicCast())
  {
    sub_99C94();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16A0C4();
  return sub_5370(a1, v4, 1, v5);
}

uint64_t getEnumTagSinglePayload for CarAccessoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarAccessoryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xBE280);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BE2B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D2F78;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BE304(char a1)
{
  result = 0x616964656DLL;
  switch(a1)
  {
    case 1:
      v3 = 0x74616D696C63;
      goto LABEL_4;
    case 2:
      result = 0x6574736F72666564;
      break;
    case 3:
      result = 1701996916;
      break;
    case 4:
      v3 = 0x6C6369686576;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 5:
      result = 2036625250;
      break;
    case 6:
      result = 0x7465536F69647561;
      break;
    case 7:
      result = 0x6979616C50776F6ELL;
      break;
    case 8:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_BE43C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BE2B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_BE46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BE304(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_BE49C()
{
  result = qword_1EA638;
  if (!qword_1EA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA638);
  }

  return result;
}

uint64_t sub_BE4F0()
{
  v1 = sub_5758(&qword_1EA640, &unk_174608);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_16D440;
  *(v4 + 32) = v0;

  sub_1698E4();
  v5 = sub_1698F4();
  sub_5370(v3, 0, 1, v5);
  v6 = sub_1698A4();

  sub_BE6A0(v3);
  return v6;
}

uint64_t sub_BE5EC()
{
  sub_BE4F0();
  sub_169624();
}

uint64_t sub_BE6A0(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA640, &unk_174608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_BE730(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3070;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_BE77C(char a1)
{
  result = 28006;
  switch(a1)
  {
    case 1:
      result = 28001;
      break;
    case 2:
      result = 28024;
      break;
    case 3:
      result = 6447460;
      break;
    case 4:
      result = 0x6261646D66;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_BE834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BE730(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_BE864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_BE77C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarRadioStationBand(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xBE95CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_BE998()
{
  result = qword_1EA648;
  if (!qword_1EA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA648);
  }

  return result;
}

id sub_BE9EC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_BF964(v3);
    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}