unint64_t sub_1C4952624()
{
  result = qword_1EDDFB6F8;
  if (!qword_1EDDFB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6F8);
  }

  return result;
}

uint64_t sub_1C4952678(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB498, &qword_1C4F1FFE8);
    a2();
    result = sub_1C441C328();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C49526E0()
{
  result = qword_1EDDE8130;
  if (!qword_1EDDE8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8130);
  }

  return result;
}

uint64_t sub_1C49527B4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_1C4403F98(a1);
}

_BYTE *sub_1C4952800(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C49528AC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          result = sub_1C4423610(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevance.CommunicationDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4952A8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4952B68()
{
  result = qword_1EC0BFC28;
  if (!qword_1EC0BFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC28);
  }

  return result;
}

unint64_t sub_1C4952BC0()
{
  result = qword_1EC0BFC30;
  if (!qword_1EC0BFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC30);
  }

  return result;
}

unint64_t sub_1C4952C18()
{
  result = qword_1EC0BFC38;
  if (!qword_1EC0BFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC38);
  }

  return result;
}

unint64_t sub_1C4952C70()
{
  result = qword_1EC0BFC40;
  if (!qword_1EC0BFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC40);
  }

  return result;
}

unint64_t sub_1C4952CC8()
{
  result = qword_1EC0BFC48;
  if (!qword_1EC0BFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC48);
  }

  return result;
}

unint64_t sub_1C4952D20()
{
  result = qword_1EC0BFC50;
  if (!qword_1EC0BFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC50);
  }

  return result;
}

unint64_t sub_1C4952D78()
{
  result = qword_1EC0BFC58;
  if (!qword_1EC0BFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC58);
  }

  return result;
}

unint64_t sub_1C4952DD0()
{
  result = qword_1EC0BFC60;
  if (!qword_1EC0BFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC60);
  }

  return result;
}

unint64_t sub_1C4952E28()
{
  result = qword_1EC0BFC68;
  if (!qword_1EC0BFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC68);
  }

  return result;
}

unint64_t sub_1C4952E80()
{
  result = qword_1EC0BFC70;
  if (!qword_1EC0BFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC70);
  }

  return result;
}

unint64_t sub_1C4952ED8()
{
  result = qword_1EC0BFC78;
  if (!qword_1EC0BFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC78);
  }

  return result;
}

unint64_t sub_1C4952F30()
{
  result = qword_1EC0BFC80;
  if (!qword_1EC0BFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFC80);
  }

  return result;
}

unint64_t sub_1C4952F88()
{
  result = qword_1EDDFD4F0;
  if (!qword_1EDDFD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD4F0);
  }

  return result;
}

unint64_t sub_1C4952FE0()
{
  result = qword_1EDDFAFB0;
  if (!qword_1EDDFAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAFB0);
  }

  return result;
}

unint64_t sub_1C4953038()
{
  result = qword_1EDDFB788;
  if (!qword_1EDDFB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB788);
  }

  return result;
}

unint64_t sub_1C4953090()
{
  result = qword_1EDDFB790;
  if (!qword_1EDDFB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB790);
  }

  return result;
}

unint64_t sub_1C49530E8()
{
  result = qword_1EDDFB730;
  if (!qword_1EDDFB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB730);
  }

  return result;
}

unint64_t sub_1C4953140()
{
  result = qword_1EDDFB738;
  if (!qword_1EDDFB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB738);
  }

  return result;
}

unint64_t sub_1C4953198()
{
  result = qword_1EDDFB760;
  if (!qword_1EDDFB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB760);
  }

  return result;
}

unint64_t sub_1C49531F0()
{
  result = qword_1EDDFB768;
  if (!qword_1EDDFB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB768);
  }

  return result;
}

unint64_t sub_1C4953248()
{
  result = qword_1EDDFB708;
  if (!qword_1EDDFB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB708);
  }

  return result;
}

unint64_t sub_1C49532A0()
{
  result = qword_1EDDFB710;
  if (!qword_1EDDFB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB710);
  }

  return result;
}

unint64_t sub_1C49532F8()
{
  result = qword_1EDDFB748;
  if (!qword_1EDDFB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB748);
  }

  return result;
}

unint64_t sub_1C4953350()
{
  result = qword_1EDDFB750;
  if (!qword_1EDDFB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB750);
  }

  return result;
}

unint64_t sub_1C49533A8()
{
  result = qword_1EDDFB778;
  if (!qword_1EDDFB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB778);
  }

  return result;
}

unint64_t sub_1C4953400()
{
  result = qword_1EDDFB780;
  if (!qword_1EDDFB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB780);
  }

  return result;
}

unint64_t sub_1C4953458()
{
  result = qword_1EDDFB718;
  if (!qword_1EDDFB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB718);
  }

  return result;
}

unint64_t sub_1C49534B0()
{
  result = qword_1EDDFB720;
  if (!qword_1EDDFB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB720);
  }

  return result;
}

unint64_t sub_1C4953508()
{
  result = qword_1EDDFB798;
  if (!qword_1EDDFB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB798);
  }

  return result;
}

unint64_t sub_1C4953560()
{
  result = qword_1EDDFB7A0;
  if (!qword_1EDDFB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7A0);
  }

  return result;
}

unint64_t sub_1C49535B8()
{
  result = qword_1EDDF67E8;
  if (!qword_1EDDF67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF67E8);
  }

  return result;
}

unint64_t sub_1C495360C()
{
  result = qword_1EDDFB6D0;
  if (!qword_1EDDFB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6D0);
  }

  return result;
}

unint64_t sub_1C4953660()
{
  result = qword_1EDDFB6F0;
  if (!qword_1EDDFB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6F0);
  }

  return result;
}

unint64_t sub_1C49536B4()
{
  result = qword_1EDDFB7B8;
  if (!qword_1EDDFB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7B8);
  }

  return result;
}

uint64_t sub_1C4953708(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for GraphBasedVirtualInteractionStreamProvider(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C495376C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = sub_1C456902C(a4, a5);
  v12 = &off_1F43E5760;
  *&v10 = a2;
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_1C441D670(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_1C49537E0()
{
  result = qword_1EDDFB6E0;
  if (!qword_1EDDFB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6E0);
  }

  return result;
}

uint64_t sub_1C4953870(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0A8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4958AC0(v6);
  *a1 = v2;
  return result;
}

void static InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:config:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EDDF9710 != -1)
  {
    sub_1C44071D4();
    swift_once();
  }

  v6 = sub_1C4415590();
  if (!v3)
  {
    v7 = v6;
    v8 = a1;

    sub_1C495434C(v8);
    if (sub_1C493443C(a3) == 6)
    {
      v9 = sub_1C43FE990();
      sub_1C4463890(v9, v10);
      sub_1C4F02248();

      *&v21 = 0xD000000000000018;
      *(&v21 + 1) = 0x80000001C4FAA1D0;
      v24 = a3;
      v11 = sub_1C4F02858();
      MEMORY[0x1C6940010](v11);

      sub_1C450B034();
      sub_1C441C114();
      swift_allocError();
      *v12 = v21;
      *(v12 + 16) = v21;
      *(v12 + 32) = v22;
      *(v12 + 48) = v23;
      *(v12 + 64) = 5;
      swift_willThrow();
    }

    else
    {
      v13 = *(v7 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);

      v14 = sub_1C43FE990();
      sub_1C4428D8C(v14, v15);
      os_unfair_lock_lock(v13 + 6);
      sub_1C4422F74(&v24);
      os_unfair_lock_unlock(v13 + 6);
      MEMORY[0x1EEE9AC00](v16);
      sub_1C4422934();

      v17 = sub_1C43FE990();
      sub_1C4463890(v17, v18);

      v19 = sub_1C43FE990();
      sub_1C4463890(v19, v20);
    }
  }
}

uint64_t InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:config:)()
{
  sub_1C43FBCD4();
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  *(v0 + 323) = v3;
  *(v0 + 192) = v4;
  v5 = sub_1C4EF9CD8();
  *(v0 + 216) = v5;
  sub_1C43FCF7C(v5);
  *(v0 + 224) = v6;
  *(v0 + 232) = sub_1C43FBE7C();
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v7);
  *(v0 + 240) = sub_1C43FBE7C();
  v8 = _s7MetricsO7PayloadVMa(0);
  *(v0 + 248) = v8;
  sub_1C43FCF7C(v8);
  *(v0 + 256) = v9;
  *(v0 + 264) = sub_1C43FBE7C();
  v10 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4953CB4()
{
  v1 = *(v0 + 200);
  if (!v1)
  {
    v4 = 3;
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v2 unsignedIntegerValue];
  if (v3 < 3)
  {
    v4 = v3;

LABEL_5:
    if (qword_1EDDF9710 != -1)
    {
      sub_1C44071D4();
      swift_once();
    }

    v5 = sub_1C4415590();
    *(v0 + 272) = v5;
    v6 = *(v0 + 192);
    *(v0 + 280) = *(v5 + 16);
    swift_retain_n();
    v7 = sub_1C495434C(v6);
    *(v0 + 288) = v7;
    *(v0 + 320) = v8;
    v12 = v7;
    v13 = v8;
    *(v0 + 322) = v4;
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_1C4953EE8;
    v15 = *(v0 + 323);

    return sub_1C4427590(v12, v13, v15, 0, 1, (v0 + 322));
  }

  sub_1C49588E4();
  sub_1C441C114();
  swift_allocError();
  *v9 = 0xD000000000000018;
  *(v9 + 8) = 0x80000001C4FAA1F0;
  *(v9 + 16) = 3;
  swift_willThrow();

  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4953EE8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 304) = v5;
  *(v3 + 312) = v0;

  sub_1C4463890(*(v3 + 288), *(v3 + 320));
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4954000()
{
  v3 = *(v0[38] + 16);
  if (v3)
  {
    v4 = v0[33];
    sub_1C4418AF0();
    sub_1C442BC5C();
    v37 = v4;
    do
    {
      sub_1C442FE94();
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      inited = swift_initStackObject();
      sub_1C4425CD4(inited, v6, v7, v8, v9, v10, v11, v12, v13, v35, v36, v37, v38, v14);
      v16 = sub_1C4435120(v15);
      v18 = 0x6465727265666564;
      v19 = v16;
      switch(v20)
      {
        case 1:
          sub_1C443FD1C();
          break;
        case 2:
          break;
        case 3:
          sub_1C4409DDC();
          break;
        case 4:
          sub_1C4426C10();
          break;
        case 5:
          sub_1C44023B4();
          break;
        default:
          sub_1C440BDD4();
          break;
      }

      v21 = v0[30];
      v22 = v0[27];
      *(v19 + 96) = v18;
      *(v19 + 104) = v17;
      v23 = sub_1C43FF24C();
      sub_1C446C964(v23, v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v25 = sub_1C44157D4(v21, 1, v22);
      if (v25 == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v2 = 0;
      }

      else
      {
        v38 = v3;
        v3 = v1;
        v1 = v0[33];
        v26 = sub_1C441D258();
        v27(v26);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442EBB8();
        v28 = sub_1C4415A4C();
        v29(v28);
      }

      *(v19 + 168) = sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
      *(v19 + 144) = v2;
      *(v19 + 152) = v25 == 1;
      sub_1C4F00F28();
      sub_1C43FC520();
      sub_1C442F230();
      if (v31)
      {
        sub_1C445E868(v30);
        v1 = v39;
      }

      sub_1C44103F4();
    }

    while (!v32);
  }

  else
  {

    v1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v33(v1);
}

uint64_t sub_1C49542C4()
{
  sub_1C43FCF70();

  sub_1C43FBDA0();

  return v0();
}

unint64_t sub_1C495434C(void *a1)
{
  v3 = sub_1C4959428(a1);
  if (!v3)
  {
    v6 = sub_1C4959480(a1);
    if (v7)
    {
      v8 = v6;
      v4 = v7;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = sub_1C442B574(v8, v4);
      if (v9 == 11)
      {
        sub_1C49588E4();
        sub_1C441C114();
        swift_allocError();
        *v10 = v8;
        *(v10 + 8) = v4;
        *(v10 + 16) = 0;
        swift_willThrow();

        return v4;
      }

      v11 = v9;

      v12 = [a1 includeDependencies];

      v13 = 256;
      if (!v12)
      {
        v13 = 0;
      }

      v4 = v13 & 0xFFFFFFFFFFFFFF00 | v11 | 0x20000;
    }

    else
    {

      v4 = 2;
    }

LABEL_14:

    return v4;
  }

  v4 = v3;
  sub_1C49587E8();
  if (!v1)
  {
    [a1 includeDependencies];

    goto LABEL_14;
  }

  v5 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    v4 = v17;
    if (v24)
    {
      sub_1C495993C(v16, v17, v18, v19, v20, v21, v22, v23, v24);
    }

    else
    {

      sub_1C49588E4();
      sub_1C441C114();
      swift_allocError();
      *v14 = v16;
      *(v14 + 8) = v17;
      *(v14 + 16) = 1;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t InternalBiomeXPC.Server.viewStop()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  sub_1C43FBD18(v1);
  *(v0 + 48) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4954614()
{
  sub_1C43FCF70();
  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C440E41C(*(v0 + 40), qword_1EDE2CDF0);
  v1 = sub_1C43FBC98();
  sub_1C446C964(v1, v2, v3, v4);
  v5 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v5);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF9710 != -1)
    {
      sub_1C44071D4();
      swift_once();
    }

    sub_1C4415590();
    v8 = *(v0 + 48);
    sub_1C4419A20();
    sub_1C4958938(v8, v9);
    sub_1C4CE0448();

    sub_1C43FBCF0();

    return v10(1);
  }

  return result;
}

uint64_t sub_1C495476C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4959A00;

  return InternalBiomeXPC.Server.viewStop()();
}

uint64_t InternalBiomeXPC.Server.viewClearAllData(viewQuery:config:)()
{
  sub_1C43FBCD4();
  v0[24] = v1;
  v0[25] = v2;
  v3 = sub_1C4EF9CD8();
  v0[26] = v3;
  sub_1C43FCF7C(v3);
  v0[27] = v4;
  v0[28] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v0[29] = sub_1C43FBE7C();
  v6 = _s7MetricsO7PayloadVMa(0);
  v0[30] = v6;
  sub_1C43FCF7C(v6);
  v0[31] = v7;
  v0[32] = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C495492C()
{
  sub_1C43FEAEC();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C44071D4();
    swift_once();
  }

  v1 = sub_1C4415590();
  *(v0 + 264) = v1;
  v2 = *(v0 + 192);
  *(v0 + 272) = *(v1 + 16);
  swift_retain_n();
  *(v0 + 280) = sub_1C495434C(v2);
  *(v0 + 312) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_1C4954AA8;
  v6 = sub_1C4414C5C();

  return sub_1C4CE0544(v6, v4);
}

uint64_t sub_1C4954AA8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
    sub_1C4463890(*(v3 + 280), *(v3 + 312));
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4954BB4()
{
  v3 = *(v0[37] + 16);
  if (v3)
  {
    v4 = v0[32];
    sub_1C4418AF0();
    sub_1C442BC5C();
    v37 = v4;
    do
    {
      sub_1C442FE94();
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      inited = swift_initStackObject();
      sub_1C4425CD4(inited, v6, v7, v8, v9, v10, v11, v12, v13, v35, v36, v37, v38, v14);
      v16 = sub_1C4435120(v15);
      v18 = 0x6465727265666564;
      v19 = v16;
      switch(v20)
      {
        case 1:
          sub_1C443FD1C();
          break;
        case 2:
          break;
        case 3:
          sub_1C4409DDC();
          break;
        case 4:
          sub_1C4426C10();
          break;
        case 5:
          sub_1C44023B4();
          break;
        default:
          sub_1C440BDD4();
          break;
      }

      v21 = v0[29];
      v22 = v0[26];
      *(v19 + 96) = v18;
      *(v19 + 104) = v17;
      v23 = sub_1C43FF24C();
      sub_1C446C964(v23, v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v25 = sub_1C44157D4(v21, 1, v22);
      if (v25 == 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v2 = 0;
      }

      else
      {
        v38 = v3;
        v3 = v1;
        v1 = v0[32];
        v26 = sub_1C441D258();
        v27(v26);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C442EBB8();
        v28 = sub_1C4415A4C();
        v29(v28);
      }

      *(v19 + 168) = sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
      *(v19 + 144) = v2;
      *(v19 + 152) = v25 == 1;
      sub_1C4F00F28();
      sub_1C43FC520();
      sub_1C442F230();
      if (v31)
      {
        sub_1C445E868(v30);
        v1 = v39;
      }

      sub_1C44103F4();
    }

    while (!v32);
  }

  else
  {

    v1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C43FBCF0();

  return v33(v1);
}

uint64_t sub_1C4954E78()
{
  sub_1C43FCF70();
  sub_1C4463890(*(v0 + 280), *(v0 + 312));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4954F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a1;
  result = sub_1C4BABFC8(a3, a4, a1, a2);
  if (!v7)
  {
    v104 = result;
    HIDWORD(v101) = a7;
    v100 = a5;
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC8];
    v105 = v10;
    v106 = MEMORY[0x1E69E7CC8];
    while (v12 != 11)
    {
      v14 = byte_1F43D9F00[v12 + 32];
      sub_1C4CE4DFC();
      sub_1C4BACAD0();

      swift_isUniquelyReferenced_nonNull_native();
      sub_1C466260C();
      sub_1C4BB44E0(v14, v10);
      swift_isUniquelyReferenced_nonNull_native();
      v107 = v13;
      sub_1C4662550();
      ++v12;
      v10 = v105;
    }

    if (a5 >= 4u)
    {
      v16 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4598180(v16, v17, v18, v19, v20, v21, v22, v23, v81, v82, v84, v85, v13, v87, v88, v90, v92, v94, v96, v98, a5, v101);
      v97 = v24;
      MEMORY[0x1C6940010](123, 0xE100000000000000);
      MEMORY[0x1C6940010](0x2273657565755122, 0xEA00000000007B3ALL);
      v25 = v106 + 64;
      v26 = 1 << *(v106 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & *(v106 + 64);
      v99 = (v26 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = 0;
      v30 = 0;
      v31 = 0xE000000000000000;
      while (2)
      {
        v32 = v30;
        v33 = v100;
        while (1)
        {
          if (!v28)
          {
            while (1)
            {
              v30 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if (v30 >= v99)
              {
                v15 = v104;

                MEMORY[0x1C6940010](0x7377656956222C7DLL, 0xEA00000000003A22);
                goto LABEL_55;
              }

              v28 = *(v25 + 8 * v30);
              ++v32;
              if (v28)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v30 = v32;
LABEL_18:
          v34 = v33;
          v35 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v36 = v35 | (v30 << 6);
          v37 = *(*(v106 + 48) + v36);
          v38 = *(*(v106 + 56) + 8 * v36);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v34 != 4 || (sub_1C4C41788(v38, v97) & 1) == 0)
          {
            break;
          }

          v32 = v30;
          v33 = v100;
          v25 = v106 + 64;
        }

        MEMORY[0x1C6940010](v29, v31);

        if (*(v86 + 16) && (v39 = sub_1C457B5CC(v37), (v40 & 1) != 0))
        {
          v95 = *(*(v86 + 56) + 8 * v39);
        }

        else
        {
          v95 = 0;
        }

        v107 = 34;
        v108 = 0xE100000000000000;
        v41 = 0xE400000000000000;
        v42 = 1702259052;
        switch(v37)
        {
          case 1:
            v42 = 1701736302;
            break;
          case 2:
            v41 = 0xE500000000000000;
            v42 = 0x796C696164;
            break;
          case 3:
            v42 = 0xD000000000000013;
            v41 = 0x80000001C4F86260;
            break;
          case 4:
            v41 = 0xE600000000000000;
            v43 = 1801807223;
            goto LABEL_32;
          case 5:
            v44 = 0x347972657665;
            goto LABEL_35;
          case 6:
            v44 = 0x327972657665;
LABEL_35:
            v42 = v44 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            v41 = 0xEB00000000737275;
            break;
          case 7:
            v41 = 0xE600000000000000;
            v43 = 1920298856;
LABEL_32:
            v42 = v43 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            v42 = 0x4D31327972657665;
            v41 = 0xEE00736574756E69;
            break;
          case 9:
            v42 = 0x694D377972657665;
            v41 = 0xED0000736574756ELL;
            break;
          case 10:
            v42 = 0xD000000000000013;
            v41 = 0x80000001C4F862C0;
            break;
          default:
            break;
        }

        MEMORY[0x1C6940010](v42, v41);

        MEMORY[0x1C6940010](5978658, 0xE300000000000000);
        MEMORY[0x1C6940010](v107, v108);

        v107 = v38;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4953870(&v107);

        v45 = v107;
        v46 = *(v107 + 16);
        if (!v46)
        {
LABEL_53:

          v31 = 0xE100000000000000;
          MEMORY[0x1C6940010](93, 0xE100000000000000);
          v29 = 44;
          v25 = v106 + 64;
          continue;
        }

        break;
      }

      v93 = 0;
      v47 = 0;
      v48 = 0;
      v91 = -v46;
      v83 = v107 + 48;
      v49 = 0xE000000000000000;
      v89 = v107;
LABEL_40:
      v50 = (v83 + 24 * v48);
      v51 = v48 + 1;
      while ((v51 - 1) < *(v45 + 16))
      {
        v102 = v51;
        v53 = *(v50 - 2);
        v52 = *(v50 - 1);
        v54 = *v50;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v47, v49);

        if (v53 == v95 || !(v93 & 1 | (v95 >= v53)))
        {
          v107 = v53;
          v108 = v52;
          v109 = v54;
          MEMORY[0x1EEE9AC00](v55);
          if (sub_1C479B5CC())
          {
            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1C4F02248();

            v107 = 34;
            v108 = 0xE100000000000000;
            v64 = sub_1C4D11C18();
            v66 = v65;

            MEMORY[0x1C6940010](v64, v66);

            v67 = 0x2D3C20B9949FF020;
            v68 = 0xAF2874726174532DLL;
          }

          else
          {
            v107 = 0;
            v108 = 0xE000000000000000;
            sub_1C4F02248();

            v107 = 34;
            v108 = 0xE100000000000000;
            v69 = sub_1C4D11C18();
            v71 = v70;

            MEMORY[0x1C6940010](v69, v71);

            v67 = 0x726174532D2D3C20;
            v68 = 0xEA00000000002874;
          }

          MEMORY[0x1C6940010](v67, v68);
          v110 = v95;
          v72 = sub_1C4F02858();
          MEMORY[0x1C6940010](v72);

          MEMORY[0x1C6940010](8745, 0xE200000000000000);
          MEMORY[0x1C6940010](v107, v108);
          v49 = 0xE100000000000000;

          v93 = 1;
          v47 = 44;
          v45 = v89;
          v48 = v102;
          if (v91 + v102)
          {
            goto LABEL_40;
          }

          goto LABEL_53;
        }

        v107 = v53;
        v108 = v52;
        v109 = v54;
        MEMORY[0x1EEE9AC00](v55);
        if (sub_1C479B5CC())
        {
          v107 = 34;
          v108 = 0xE100000000000000;
          v56 = sub_1C4D11C18();
          v58 = v57;

          MEMORY[0x1C6940010](v56, v58);

          v59 = 0x22B9949FF020;
          v60 = 0xA600000000000000;
        }

        else
        {
          v107 = 34;
          v108 = 0xE100000000000000;
          v61 = sub_1C4D11C18();
          v63 = v62;

          MEMORY[0x1C6940010](v61, v63);

          v59 = 34;
          v60 = 0xE100000000000000;
        }

        MEMORY[0x1C6940010](v59, v60);
        MEMORY[0x1C6940010](v107, v108);

        v51 = v102 + 1;
        v45 = v89;
        v50 += 3;
        v49 = 0xE100000000000000;
        v47 = 44;
        if (v91 + v102 + 1 == 1)
        {
          goto LABEL_53;
        }
      }

LABEL_63:
      __break(1u);

      __break(1u);
    }

    else
    {
      v15 = v104;
LABEL_55:
      MEMORY[0x1C6940010](91, 0xE100000000000000);
      v73 = 0;
      v74 = 0;
      v103 = *(v15 + 16);
      v75 = v15 + 48;
      v76 = 0xE000000000000000;
      while (v103 != v74)
      {
        if (v74 >= *(v104 + 16))
        {
          goto LABEL_62;
        }

        v77 = *(v75 - 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v73, v76);

        v78 = sub_1C4CEC38C(v77);
        v80 = v79;

        ++v74;
        MEMORY[0x1C6940010](v78, v80);

        v75 += 24;
        v76 = 0xE100000000000000;
        v73 = 44;
      }

      MEMORY[0x1C6940010](93, 0xE100000000000000);
      switch(v100)
      {
        case 4:
        case 5:
          MEMORY[0x1C6940010](125, 0xE100000000000000);
          break;
        default:
      }
    }
  }

  return result;
}

uint64_t InternalBiomeXPC.Server.viewValidate(config:)()
{
  sub_1C43FBCD4();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v2);
  *(v0 + 24) = sub_1C43FBE7C();
  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4955B7C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 24);
  sub_1C44594A4(*(v0 + 16), v1, type metadata accessor for Configuration);
  type metadata accessor for OntologyStore(0);
  swift_allocObject();
  OntologyStore.init(config:)(v1);
  sub_1C4C8EA64();
  sub_1C4C8F3A8();
  v3 = v2;

  if (v3)
  {

    sub_1C43FBCF0();
    v5 = 1;
  }

  else
  {
    sub_1C49588E4();
    sub_1C441C114();
    swift_allocError();
    *v6 = 0xD000000000000032;
    *(v6 + 8) = 0x80000001C4FAA210;
    *(v6 + 16) = 3;
    swift_willThrow();

    sub_1C43FBCF0();
    v5 = 0;
  }

  return v4(v5);
}

uint64_t InternalBiomeXPC.Server.viewSetEnabled(name:enabled:config:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a4;
  *(v4 + 88) = a3;
  *(v4 + 64) = a1;
  v5 = sub_1C43FCE74();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4955D00()
{
  if (qword_1EDDF9710 != -1)
  {
    sub_1C44071D4();
    swift_once();
  }

  sub_1C4415590();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49587E8();
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  swift_setDeallocating();
  sub_1C44DEE40();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  sub_1C4422934();

  sub_1C43FBCF0();

  return v8(1);
}

void sub_1C4955ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4BACEC4();
  if (!v4)
  {
    sub_1C4BB98B0();
  }
}

void sub_1C4955F28(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), unint64_t a4)
{
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1C4EFB768();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  sub_1C4BACEC4();
  if (!v4)
  {
    v17 = v16;
    v33 = a3;
    v34 = a4;
    v18 = v42;
    v38 = v12;
    v39 = v11;
    sub_1C4BB98B0();
    v19 = sub_1C4BAD398(v17, a1, a2);
    v35 = v14;
    v37 = a2;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C4F02248();

    v40 = 0xD000000000000015;
    v41 = 0x80000001C4FAA460;
    MEMORY[0x1C6940010](v33, v34);
    MEMORY[0x1C6940010](0xD000000000000017, 0x80000001C4FAA480);
    v20 = 0;
    v21 = v41;
    v33 = (v18 + 8);
    v34 = v40;
    v22 = v19 + 48;
    v42 = *(v19 + 16);
    v32 = xmmword_1C4F0C890;
    for (i = v19; ; v19 = i)
    {
      if (v42 == v20)
      {

        return;
      }

      if (v20 >= *(v19 + 16))
      {
        break;
      }

      v23 = v15;
      v24 = *(v22 - 16);
      v25 = v22;
      swift_unownedRetainStrong();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4440C6C(v23);

      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v26 = swift_allocObject();
      *(v26 + 16) = v32;
      v27 = MEMORY[0x1E69E6530];
      *(v26 + 56) = MEMORY[0x1E69E6530];
      v28 = MEMORY[0x1E69A0180];
      *(v26 + 64) = MEMORY[0x1E69A0180];
      *(v26 + 32) = 1;
      *(v26 + 96) = MEMORY[0x1E69E6158];
      *(v26 + 104) = MEMORY[0x1E69A0138];
      *(v26 + 112) = v24;
      *(v26 + 72) = v34;
      *(v26 + 80) = v21;
      *(v26 + 136) = v27;
      *(v26 + 144) = v28;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v29 = v35;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v30 = v38;
      (*v33)(v29, v38);
      v31 = v39;
      sub_1C440BAA8(v39, 1, 1, v30);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v31, &unk_1EC0C06C0, &unk_1C4F10DB0);

      v22 = v25 + 24;
      ++v20;
      v15 = v23;
    }

    __break(1u);
  }
}

uint64_t InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:)()
{
  sub_1C43FBCD4();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 40) = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 64) = v5;
  sub_1C43FBD18(v5);
  *(v1 + 72) = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C49563CC()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewRunUpdate");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C440E41C(v0[8], qword_1EDE2CDF0);
  v7 = sub_1C43FBC98();
  sub_1C446C964(v7, v8, v9, v10);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v11);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1C4956530;
    sub_1C440F4D4(v0[5]);

    return InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:config:)();
  }

  return result;
}

uint64_t sub_1C4956530()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 72);
    sub_1C4419A20();
    sub_1C4958938(v12, v13);

    sub_1C43FBCF0();

    return v14(v3);
  }
}

uint64_t sub_1C4956674()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4956784(void *a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_1C495686C;

  return InternalBiomeXPC.Server.viewRunUpdate(viewQuery:forceRebuild:priorityOverride:)();
}

uint64_t sub_1C495686C()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[4];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v1;
  sub_1C43FBDAC();
  *v11 = v10;

  if (v2)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v14 = sub_1C4F01658();

    v13 = v14;
  }

  v15 = *(v4 + 40);
  v16 = sub_1C44033C0();
  v17(v16);

  _Block_release(v15);
  sub_1C43FBDA0();
  sub_1C44258D4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t InternalBiomeXPC.Server.viewClearAllData(viewQuery:)()
{
  sub_1C43FBCD4();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = v3;
  sub_1C43FBD18(v3);
  v1[8] = sub_1C43FBE7C();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4956A94()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewClearAllData");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C440E41C(v0[7], qword_1EDE2CDF0);
  v7 = sub_1C43FBC98();
  sub_1C446C964(v7, v8, v9, v10);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v11);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_1C4956BF4;
    sub_1C440F4D4(v0[5]);

    return InternalBiomeXPC.Server.viewClearAllData(viewQuery:config:)();
  }

  return result;
}

uint64_t sub_1C4956BF4()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 64);
    sub_1C4419A20();
    sub_1C4958938(v12, v13);

    sub_1C43FBCF0();

    return v14(v3);
  }
}

uint64_t sub_1C4956D38()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4956E2C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C4956EF0;

  return InternalBiomeXPC.Server.viewClearAllData(viewQuery:)();
}

uint64_t sub_1C4956EF0()
{
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_1C4EF9798();

    v12 = v11;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v13 = sub_1C4F01658();

    v12 = v13;
  }

  v14 = *(v4 + 32);
  v15 = sub_1C44033C0();
  v16(v15);

  _Block_release(v14);
  sub_1C43FBDA0();

  return v17();
}

uint64_t InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:)()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  *(v0 + 48) = v2;
  *(v0 + 56) = ObjectType;
  *(v0 + 80) = v4;
  *(v0 + 40) = v6;
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v0 + 72) = sub_1C43FBE7C();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C495712C()
{
  sub_1C43FEAEC();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewInfo");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C440E41C(*(v0 + 64), qword_1EDE2CDF0);
  v7 = sub_1C43FBC98();
  sub_1C446C964(v7, v8, v9, v10);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v11);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    static InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:config:)(*(v0 + 40), *(v0 + 80), *(v0 + 48));
    v14 = *(v0 + 72);
    v16 = v15;
    v18 = v17;
    sub_1C4419A20();
    sub_1C4958938(v14, v19);

    v20 = *(v0 + 8);

    return v20(v16, v18);
  }

  return result;
}

uint64_t sub_1C4957398(void *a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = a1;
  a5;
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_1C4957474;

  return InternalBiomeXPC.Server.viewValidate(viewQuery:applyFixes:verbose:)();
}

uint64_t sub_1C4957474()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_1C4EF9798();

    v12 = v11;
  }

  else
  {
    v13 = sub_1C4F01108();

    v12 = v13;
  }

  v14 = *(v4 + 32);
  v15 = sub_1C44033C0();
  v16(v15);

  _Block_release(v14);
  sub_1C43FBDA0();
  sub_1C44258D4();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t InternalBiomeXPC.Server.viewDumpState(completion:)(void (*a1)(uint64_t, void))
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "InternalBiomeXPC: viewDumpState", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C43FCEE8(v2, qword_1EDE2CDF0);
  swift_beginAccess();
  sub_1C446C964(v7, v5, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1(1, 0);
    return sub_1C4420C3C(v5, &unk_1EC0B9610, &unk_1C4F0F2E0);
  }

  return result;
}

uint64_t InternalBiomeXPC.Server.viewValidate()()
{
  sub_1C43FBCD4();
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  sub_1C43FBD18(v2);
  v1[7] = sub_1C43FBE7C();
  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C49578D4()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewValidate");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C440E41C(v0[6], qword_1EDE2CDF0);
  v7 = sub_1C43FBC98();
  sub_1C446C964(v7, v8, v9, v10);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v11);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_1C4957A30;
    sub_1C440F4D4(v0[7]);

    return InternalBiomeXPC.Server.viewValidate(config:)();
  }

  return result;
}

uint64_t sub_1C4957A30()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 56);
    sub_1C4419A20();
    sub_1C4958938(v12, v13);

    sub_1C43FBCF0();

    return v14(v3 & 1);
  }
}

uint64_t sub_1C4957B74()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBCF0();

  return v3(0);
}

uint64_t sub_1C4957C04(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v7 = a1;
  v8 = sub_1C43FBC98();

  return sub_1C446D134(v8, v9);
}

uint64_t sub_1C4957C70(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C4957D18;

  return InternalBiomeXPC.Server.viewValidate()();
}

uint64_t sub_1C4957D18()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = *(v5 + 16);
  *v7 = *v1;

  v9 = *(v5 + 24);
  if (v2)
  {
    sub_1C4EF9798();

    (*(v9 + 16))(v9, 0, v1);
  }

  else
  {
    (*(v9 + 16))(v9, v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  sub_1C44258D4();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t InternalBiomeXPC.Server.viewSetEnabled(name:enabled:)()
{
  sub_1C43FBCD4();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 40) = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 64) = v5;
  sub_1C43FBD18(v5);
  *(v1 + 72) = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4957F20()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalBiomeXPC: viewSetEnabled");
    sub_1C43FE9D4();
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  sub_1C440E41C(v0[8], qword_1EDE2CDF0);
  v7 = sub_1C43FBC98();
  sub_1C446C964(v7, v8, v9, v10);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v11);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1C4958084;
    v15 = sub_1C440F4D4(v0[5]);

    return InternalBiomeXPC.Server.viewSetEnabled(name:enabled:config:)(v15, v16, v17, v18);
  }

  return result;
}

uint64_t sub_1C4958084()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v5 + 72);
    sub_1C4419A20();
    sub_1C4958938(v12, v13);

    sub_1C43FBCF0();

    return v14(v3 & 1);
  }
}

uint64_t sub_1C49581C8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);
  sub_1C4419A20();
  sub_1C4958938(v1, v2);

  sub_1C43FBCF0();

  return v3(0);
}

uint64_t sub_1C49582D0(uint64_t a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[4] = v6;
  a4;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1C49583B4;

  return InternalBiomeXPC.Server.viewSetEnabled(name:enabled:)();
}

uint64_t sub_1C49583B4()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v10 = *v1;
  sub_1C43FBDAC();
  *v11 = v10;

  if (v0)
  {
    if (v8)
    {
      v12 = *(v5 + 24);
      v13 = sub_1C4EF9798();

      (v12)[2](v12, 0, v13);
      _Block_release(v12);
    }

    else
    {
    }
  }

  else if (v8)
  {
    v14 = *(v5 + 24);
    v14[2](v14, v3 & 1, 0);
    _Block_release(v14);
  }

  sub_1C43FBDA0();
  sub_1C44258D4();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1C495855C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C440444C();
      v4 = sub_1C44410EC();
      goto LABEL_5;
    case 3:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C440444C();
      v6 = sub_1C44410EC();
      MEMORY[0x1C6940010](v6);
      v4 = 0x766E692073692027;
      v5 = 0xEC00000064696C61;
LABEL_5:
      MEMORY[0x1C6940010](v4, v5);
      a1 = v8;
      break;
  }

  return a1;
}

uint64_t sub_1C495867C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v7;
  v8 = sub_1C495855C(a1, a2, a3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_1C4F00F28();
}

uint64_t sub_1C4958734(uint64_t a1)
{
  v2 = sub_1C4958A6C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4958770(uint64_t a1)
{
  v2 = sub_1C4958A6C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4958828(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = a3 + 40;
  if (v4)
  {
    while (1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4BAF42C();
      if (v3)
      {
        break;
      }

      v5 += 16;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

unint64_t sub_1C49588E4()
{
  result = qword_1EC0BFCD0;
  if (!qword_1EC0BFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFCD0);
  }

  return result;
}

uint64_t sub_1C4958938(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C49589D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4958A14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C4958A6C()
{
  result = qword_1EC0BFCD8;
  if (!qword_1EC0BFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFCD8);
  }

  return result;
}

uint64_t sub_1C4958AC0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4958C38(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1C4958BB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4958BB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4958C38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A358();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C4959280((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C4959148(&v89, *a1, a3);
LABEL_89:
}

uint64_t sub_1C4959148(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C4959280((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C4959280(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C455B518(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C455B518(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_1C4959428(void *a1)
{
  v1 = [a1 names];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C4959480(void *a1)
{
  v1 = [a1 schedule];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4959500()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v5[1] = sub_1C442F080;
  v7 = sub_1C4414C5C();

  return v8(v7, v1, v3, v2);
}

uint64_t sub_1C49595B8()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t sub_1C4959658()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  sub_1C4422390();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C442E004(v1);
  sub_1C44258D4();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C49596E8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;
  v6 = sub_1C4414C5C();

  return v7(v6, v1, v2);
}

uint64_t sub_1C4959790()
{
  sub_1C446BF5C();
  sub_1C43FEAEC();
  sub_1C4422390();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C442E004(v1);
  sub_1C44258D4();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4959820()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C4959860()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v1[1] = sub_1C442F080;
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t sub_1C495993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = a2;
  switch(a9)
  {
    case 0:
    case 1:
    case 6:

      goto LABEL_4;
    case 2:

      goto LABEL_4;
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
LABEL_4:

      goto LABEL_5;
    case 5:
    case 10:
    case 11:
    case 12:
LABEL_5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4959A50()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CDF0);
  v1 = sub_1C442B738(v0, qword_1EDE2CDF0);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4959ACC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DCD8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1C43FCED0();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "InternalBiomeXPC: starting...", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  v9 = sub_1C442B738(v2, qword_1EDE2CDF0);
  sub_1C44098F0(a1, v4);
  v10 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v4, 0, 1, v10);
  swift_beginAccess();
  sub_1C45A6EE0(v4, v9);
  swift_endAccess();
  sub_1C45A6F50();
  v11 = sub_1C440ACF4();
  v13 = sub_1C49AA56C(v11, v12);
  v14 = qword_1EDE2CDE0;
  qword_1EDE2CDE0 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2CDE8 = [objc_allocWithZone(type metadata accessor for InternalBiomeXPC.Delegate()) init];
    v16 = qword_1EDE2CDE8;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_1C43FCED0();
      sub_1C43FBD24(v18);
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create Internal XPC service", v14, 2u);
      sub_1C43FE9D4();
    }
  }
}

uint64_t InternalBiomeXPC.InternalBiomeXPCError.hashValue.getter()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

id InternalBiomeXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C4959E58()
{
  result = qword_1EC0BFCE0;
  if (!qword_1EC0BFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BFCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InternalBiomeXPC.InternalBiomeXPCError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C4959FA0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DCD8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_22;
    }

    v21 = sub_1C43FCED0();
    sub_1C43FBD24(v21);
    v22 = "InternalBiomeXPC: API disabled on customer devices.";
    goto LABEL_21;
  }

  if (qword_1EDDE6DB0 != -1)
  {
    sub_1C44071E8(&qword_1EDDE6DB0);
  }

  v6 = sub_1C442B738(v3, qword_1EDE2CDF0);
  swift_beginAccess();
  sub_1C4466EEC(v6, v5);
  v7 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v5, 1, v7);
  if (result != 1)
  {
    v9 = &v5[*(v7 + 20)];
    v3 = *v9;
    v10 = v9[1];
    sub_1C4467948(v5);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v3) != 0 || (*(&xmmword_1EDDFEC90 + 1) & v10) != *(&xmmword_1EDDFEC90 + 1))
    {
      v12 = sub_1C440ACF4();
      if (sub_1C446874C(v12, v13))
      {
        v14 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v14, sel_setExportedInterface_);

        v15 = [objc_allocWithZone(type metadata accessor for InternalBiomeXPC.Server()) init];
        sub_1C44059FC(v15, sel_setExportedObject_);

        v30 = sub_1C495A39C;
        v31 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v27 = 1107296256;
        v28 = sub_1C4833DD0;
        v29 = &unk_1F43F1918;
        v16 = _Block_copy(&aBlock);
        sub_1C44059FC(v16, sel_setInterruptionHandler_);
        _Block_release(v16);
        v30 = sub_1C495A3BC;
        v31 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v27 = 1107296256;
        v28 = sub_1C4833DD0;
        v29 = &unk_1F43F1940;
        v17 = _Block_copy(&aBlock);
        sub_1C44059FC(v17, sel_setInvalidationHandler_);
        _Block_release(v17);
        [a2 resume];
        return 1;
      }

      return 0;
    }

    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DCD8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_22:

      return 0;
    }

    v24 = sub_1C43FCED0();
    sub_1C43FBD24(v24);
    v22 = "InternalBiomeXPC: service is in no-op mode.";
LABEL_21:
    _os_log_impl(&dword_1C43F8000, v19, v20, v22, v3, 2u);
    sub_1C43FE9D4();
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectETDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  sub_1C4407208(v0, v1, v2);
  sub_1C440721C();
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4419A38(v4);

  return v7(v6);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectERDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  sub_1C4407208(v0, v1, v2);
  sub_1C440721C();
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4419A38(v4);

  return v7(v6);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectEntityResolutionDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  sub_1C4407208(v0, v1, v2);
  sub_1C440721C();
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4419A38(v4);

  return v7(v6);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectViewsDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  sub_1C4407208(v0, v1, v2);
  sub_1C440721C();
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4419A38(v4);

  return v7(v6);
}

uint64_t sub_1C495A884(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of static InternalDiagnosticDataCollectionProtocol.collectEventViewDiagnosticData(config:)()
{
  sub_1C43FEAEC();
  sub_1C4407208(v0, v1, v2);
  sub_1C440721C();
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C4419A38(v4);

  return v7(v6);
}

uint64_t dispatch thunk of static InternalPipelinePluginProtocol.internalPhases(stores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4407208(a1, a2, a3);
  sub_1C440721C();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = sub_1C4419A38(v4);

  return v6(v5);
}

uint64_t sub_1C495ABE8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of static InternalPipelinePluginProtocol.internalMatchExtractors(stores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4407208(a1, a2, a3);
  sub_1C440721C();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = sub_1C4419A38(v4);

  return v6(v5);
}

uint64_t dispatch thunk of static InternalPipelinePluginProtocol.linkerChildren(forInternalSource:stores:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C440721C();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1C495AF1C;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_1C495AF1C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t *sub_1C495B044()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  return &qword_1EDDFF3C8;
}

uint64_t sub_1C495B084()
{
  result = sub_1C495B0A8();
  qword_1EDDFF3C8 = result;
  off_1EDDFF3D0 = v1;
  return result;
}

uint64_t sub_1C495B0A8()
{
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v1 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v1, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "InternalPlugin: manager: unsupported device";
LABEL_19:
    _os_log_impl(&dword_1C43F8000, v1, v6, v8, v7, 2u);
    MEMORY[0x1C6942830](v7, -1, -1);
LABEL_20:

    return 0;
  }

  sub_1C44867F4();
  v0 = sub_1C4F01E98();
  if (!v0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v1 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v1, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "InternalPlugin: manager: bundle not available";
    goto LABEL_19;
  }

  v1 = v0;
  if (![v0 principalClass]|| (ObjCClassMetadata = swift_getObjCClassMetadata(), (v3 = sub_1C495BB18(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for InternalPluginManagerProtocol)) == 0))
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C43F8000, v10, v11, "InternalPlugin: manager: failed to load principal class", v12, 2u);
      MEMORY[0x1C6942830](v12, -1, -1);
    }

    goto LABEL_20;
  }

  v4 = v3;

  return v4;
}

uint64_t static InternalPlugin.manager.getter()
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  swift_beginAccess();
  return qword_1EDDFF3C8;
}

void static InternalPlugin.manager.setter(uint64_t a1, void *a2)
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  swift_beginAccess();
  qword_1EDDFF3C8 = a1;
  off_1EDDFF3D0 = a2;
}

uint64_t (*static InternalPlugin.manager.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1C495B494@<D0>(_OWORD *a1@<X8>)
{
  sub_1C495B044();
  swift_beginAccess();
  result = *&qword_1EDDFF3C8;
  *a1 = *&qword_1EDDFF3C8;
  return result;
}

void sub_1C495B4E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C495B044();
  swift_beginAccess();
  qword_1EDDFF3C8 = v1;
  off_1EDDFF3D0 = v2;
}

uint64_t static InternalPlugin.pathForResource(named:type:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v9, v21))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "InternalPlugin: pathForResource: unsupported device";
LABEL_18:
    _os_log_impl(&dword_1C43F8000, v9, v21, v23, v22, 2u);
    sub_1C43FBE2C();
LABEL_25:

    return 0;
  }

  sub_1C44867F4();
  v8 = sub_1C4F01E98();
  if (!v8)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v9, v21))
    {
      goto LABEL_25;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "InternalPlugin: pathForResource: bundle not available";
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sub_1C495B9CC(a1, a2, a3, a4, v8);
  if (!v11)
  {
LABEL_20:
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CF8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1C441D828(a1, a2, &v30);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1C441D828(a3, a4, &v30);
      _os_log_impl(&dword_1C43F8000, v26, v27, "Resource %s.%s not found.", v28, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    goto LABEL_25;
  }

  v12 = v10;
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1C4F01108();
  v15 = [v13 fileExistsAtPath_];

  if (!v15)
  {

    goto LABEL_20;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CC8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1C441D828(a1, a2, &v30);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1C441D828(a3, a4, &v30);
    _os_log_impl(&dword_1C43F8000, v17, v18, "Found %s.%s in Internal bundle.", v19, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return v12;
}

uint64_t sub_1C495B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4F01108();
  v7 = sub_1C4F01108();
  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1C4F01138();

  return v9;
}

_BYTE *storeEnumTagSinglePayload for InternalPlugin(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C495BB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of static InternalSourceProtocol.deltaUpdatePhase(stores:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C44A7DA0;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1C495BDCC()
{
  sub_1C440BDEC();
  sub_1C456902C(&qword_1EC0BFDD0, &qword_1C4F3DCE8);
  sub_1C4EFCDD8();
  sub_1C43FCDF8();
  v1 = sub_1C4422B0C();
  v2 = sub_1C442A434(v1, xmmword_1C4F0D130);
  v3(v2);
  sub_1C456902C(&qword_1EC0B9440, &unk_1C4F0EFD0);
  v4 = sub_1C496CAB4();
  sub_1C4425D04(v4);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FF2A4();
    sub_1C447CBF0(v6);
    sub_1C4435934();
    v7 = sub_1C4404044();
    sub_1C4434000(v7, v8);
  }

  sub_1C440EE0C();
}

void sub_1C495BF40()
{
  sub_1C4413F18();
  sub_1C4424CEC();
  v2 = v1;
  v4 = v3;
  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0B8B30, &unk_1C4F0DF60);
  sub_1C4434164();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  v6 = sub_1C4404044();
  sub_1C44344B8(v6, v7);
  sub_1C456902C(&qword_1EC0B9120, &qword_1C4F3DD40);
  v8 = sub_1C496D268();
  sub_1C4425D04(v8);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v9);
    sub_1C43FF2A4();
    sub_1C444FDF0(v10);
    sub_1C4435934();
    v11 = sub_1C4404044();
    sub_1C4434000(v11, v12);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C064()
{
  sub_1C4413F18();
  sub_1C440BDEC();
  v2 = v1;
  sub_1C456902C(&qword_1EC0B8798, &qword_1C4F0DB88);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F0D130;
  *(v3 + 32) = v2;
  sub_1C456902C(&qword_1EC0B9208, &qword_1C4F0ED20);
  v4 = sub_1C496D6D8();
  sub_1C4425D04(v4);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C43FDA14();
    sub_1C4435934();
    v6 = sub_1C4404044();
    sub_1C4434000(v6, v7);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C180()
{
  sub_1C4413F18();
  sub_1C4433528();
  sub_1C456902C(&qword_1EC0BFE28, &unk_1C4F3DD50);
  sub_1C4418B14();
  v1 = swift_allocObject();
  sub_1C4414C68(v1, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9180, &unk_1C4F0EC80);
  v2 = sub_1C496D368();
  sub_1C4425D04(v2);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v3);
    sub_1C43FDA14();
    sub_1C4435934();
    v4 = sub_1C4404044();
    sub_1C4434000(v4, v5);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C28C()
{
  sub_1C4413F18();
  sub_1C4433528();
  sub_1C456902C(&qword_1EC0BFE10, &qword_1C4F3DD38);
  sub_1C4418B14();
  v1 = swift_allocObject();
  sub_1C4414C68(v1, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B90D8, &qword_1C4F0EBF0);
  v2 = sub_1C496D1C4();
  sub_1C4425D04(v2);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v3);
    sub_1C43FDA14();
    sub_1C4435934();
    v4 = sub_1C4404044();
    sub_1C4434000(v4, v5);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C398()
{
  sub_1C4413F18();
  sub_1C4433528();
  sub_1C456902C(&qword_1EC0BFE50, &qword_1C4F3DD98);
  sub_1C4418B14();
  v1 = swift_allocObject();
  sub_1C4414C68(v1, xmmword_1C4F0D130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B9410, &qword_1C4F3DDA0);
  v2 = sub_1C496D754();
  sub_1C4425D04(v2);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v3);
    sub_1C43FDA14();
    sub_1C4435934();
    v4 = sub_1C4404044();
    sub_1C4434000(v4, v5);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

void sub_1C495C4A4()
{
  sub_1C4413F18();
  sub_1C4424CEC();
  v2 = v1;
  v4 = v3;
  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0BFDE8, &qword_1C4F3DCF8);
  sub_1C4434164();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2 & 1;
  sub_1C456902C(&qword_1EC0BFDF0, &qword_1C4F3DD00);
  v6 = sub_1C496CC80();
  sub_1C4425D04(v6);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C43FF2A4();
    sub_1C444FDF0(v8);
    sub_1C4435934();
    v9 = sub_1C4404044();
    sub_1C4434000(v9, v10);
  }

  sub_1C441C2B4();
  sub_1C44102DC();
}

uint64_t sub_1C495C5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = a2;
  sub_1C456902C(&qword_1EC0B8F38, &qword_1C4F0EA08);
  v6 = *(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  sub_1C4460108(a3, v8 + v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = v8;
  sub_1C456902C(&qword_1EC0BFE30, &qword_1C4F3DD80);
  sub_1C496D540();
  v9 = sub_1C4EF96D8();
  v11 = v10;

  if (!v4)
  {
    MEMORY[0x1EEE9AC00](result);
    v13[2] = v3;
    v13[3] = v14;
    v13[4] = v15;
    v13[5] = v9;
    v13[6] = v11;

    sub_1C446C37C(sub_1C446C3D4, v13);
    sub_1C4434000(v9, v11);
  }

  return result;
}

void sub_1C495C7C0()
{
  sub_1C4424CEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0BFDF8, &unk_1C4F3DD08);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  *(v7 + 48) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0B90A8, &qword_1C4F0EBD0);
  v8 = sub_1C496CF70();
  sub_1C4425D04(v8);
  sub_1C4410EA4();

  if (!v0)
  {
    sub_1C4409E00();
    MEMORY[0x1EEE9AC00](v9);
    sub_1C43FF2A4();
    sub_1C444FDF0(v10);
    sub_1C4435934();
    v11 = sub_1C4404044();
    sub_1C4434000(v11, v12);
  }

  sub_1C440EE0C();
}

void sub_1C495C904(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v4 = sub_1C4EF9A38();
  if (a3)
  {
LABEL_3:
    sub_1C4EF9798();
  }

LABEL_5:
  v5 = sub_1C43FBC98();
  v8 = v6;
  v7(v5);
}

uint64_t sub_1C495C998(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x206E776F6E6B6E55;
  switch(a3)
  {
    case 1:
    case 2:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C4411F0C();
      goto LABEL_5;
    case 3:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C4411F0C();
      v7 = v8 | 4;
      goto LABEL_5;
    case 4:
      sub_1C43FBFCC();
      sub_1C4F02248();
      v9 = "v48@0:8@16@24d32@?40";
      v10 = 0xD000000000000034;
      goto LABEL_8;
    case 5:
      sub_1C43FBFCC();
      sub_1C4F02248();
      v9 = "w operation failed: ";
      v10 = 0xD000000000000035;
LABEL_8:
      MEMORY[0x1C6940010](v10, v9 | 0x8000000000000000);
      goto LABEL_9;
    case 6:
      return result;
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C4411F0C();
      v7 = v6 - 11;
LABEL_5:
      v11 = v7;
LABEL_9:
      MEMORY[0x1C6940010](a1, a2);
      return v11;
  }
}

uint64_t sub_1C495CB54(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v7;
  v8 = sub_1C495C998(a1, a2, a3);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_1C4F00F28();
}

uint64_t sub_1C495CC0C(uint64_t a1)
{
  v2 = sub_1C496CB68();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C495CC48(uint64_t a1)
{
  v2 = sub_1C496CB68();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

void sub_1C495CD18(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_1C4EF9CD8();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C43F8000, v18, v19, "InternalXPC: Behavior Understanding status", v20, 2u);
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  v44 = a2;

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v8, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v21, v16, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v22 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v16, 1, v22) == 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v23 = sub_1C44E7FAC();
  sub_1C4453F54();
  v24 = *(v23 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v21, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v13, 1, v22) == 1)
  {
    goto LABEL_17;
  }

  sub_1C4460108(v21, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v10, 1, v22) == 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v25 = type metadata accessor for BehaviorHistoryUtility(0);
  swift_allocObject();
  v26 = v24;
  v27 = sub_1C4623CF4(v10, v26);
  type metadata accessor for BehaviorFeaturizer();
  v47[3] = v25;
  v47[4] = &off_1F43E41D8;
  v47[0] = v27;
  sub_1C4601538(v13, v47);
  sub_1C446FB00();
  v28 = v43;
  if (sub_1C44157D4(v5, 1, v43) == 1)
  {
    sub_1C4420C3C(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    v31 = v42;
    v32 = v41;
    (*(v42 + 32))();
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C496C3A0(0xD000000000000017, 0x80000001C4F8C060, v33);
    v34 = v32;
    v35 = sub_1C4EF9BF8();
    v36 = [v33 stringFromDate_];

    v30 = sub_1C4F01138();
    v29 = v37;

    (*(v31 + 8))(v34, v28);
  }

  v38 = v44;
  v47[0] = 0xD000000000000025;
  v47[1] = 0x80000001C4FAA590;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1C4F02248();

  v45 = 0xD000000000000023;
  v46 = 0x80000001C4FAA5C0;
  MEMORY[0x1C6940010](v30, v29);

  MEMORY[0x1C6940010](10, 0xE100000000000000);
  MEMORY[0x1C693FFE0](v45, v46);

  v39 = sub_1C4F01108();
  (v38)[2](v38, v39, 0);

  _Block_release(v38);
}

void InternalXPC.Server.behaviorUnderstandingStatus(completion:)()
{
  sub_1C43FBD3C();
  v47 = v4;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD1B4();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v45 = v8;
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v12);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDDFECB8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CF8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "InternalXPC: Behavior Understanding status", v16, 2u);
    sub_1C43FEA20();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v17 = sub_1C442B738(v9, qword_1EDDEBB90);
  sub_1C4433D44(v17);
  v18 = sub_1C43FD024();
  sub_1C4460108(v18, v19, v20, v21);
  v22 = type metadata accessor for Configuration(0);
  v23 = sub_1C44033D8();
  sub_1C440175C(v23, v24, v22);
  if (v25)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  v26 = sub_1C44E7FAC();
  sub_1C4419A54();
  sub_1C4453F54();
  v27 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  v28 = sub_1C4409D0C();
  sub_1C4460108(v28, v29, v30, v31);
  sub_1C440175C(v2, 1, v22);
  if (v25)
  {
    goto LABEL_17;
  }

  sub_1C4460108(v17, v3, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v3, 1, v22);
  if (v25)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v32 = type metadata accessor for BehaviorHistoryUtility(0);
  v33 = sub_1C44099C4(v32);
  v34 = v27;
  sub_1C4623CF4(v3, v34);
  sub_1C43FBE94();
  type metadata accessor for BehaviorFeaturizer();
  v50 = v32;
  v51 = &off_1F43E41D8;
  v48 = v33;
  sub_1C4601538(v2, &v48);
  sub_1C446FB00();
  v35 = sub_1C440180C();
  sub_1C440175C(v35, v36, v46);
  if (v25)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v44 = 0xE300000000000000;
    v42 = 7104878;
  }

  else
  {
    v37 = sub_1C43FFE24();
    v38(v37);
    v39 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C496C3A0(0xD000000000000017, 0x80000001C4F8C060, v39);
    v40 = sub_1C4EF9BF8();
    v41 = [v39 stringFromDate_];

    v42 = sub_1C4F01138();
    v44 = v43;

    (*(v45 + 8))(v0, v46);
  }

  v48 = 0xD000000000000025;
  v49 = 0x80000001C4FAA590;
  sub_1C4F02248();

  MEMORY[0x1C6940010](v42, v44);

  MEMORY[0x1C6940010](10, 0xE100000000000000);
  MEMORY[0x1C693FFE0](0xD000000000000023, 0x80000001C4FAA5C0);

  v47(v48, v49, 0);

  sub_1C43FE9F0();
}

void sub_1C495DB8C(int a1, int a2, uint64_t a3, void (**a4)(void, void, void))
{
  v58 = a2;
  v59 = a1;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v57 = v7;
  v20 = sub_1C4F00978();
  v60 = sub_1C442B738(v20, qword_1EDDFECB8);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C43F8000, v21, v22, "InternalXPC: Behavior Understanding clearAllData", v23, 2u);
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v24 = sub_1C442B738(v5, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v24, v19, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v25 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v19, 1, v25) == 1)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1C44E7FAC();
  sub_1C4453F54();
  v27 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v24, v16, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v16, 1, v25) == 1)
  {
    goto LABEL_30;
  }

  v28 = type metadata accessor for BehaviorHistoryUtility(0);
  swift_allocObject();
  v29 = v27;
  v30 = v16;
  v31 = v29;
  v43 = sub_1C4623CF4(v30, v29);
  if (v59)
  {
    sub_1C4460108(v24, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v13, 1, v25) == 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    type metadata accessor for BehaviorFeaturizer();
    v62 = v28;
    v63 = &off_1F43E41D8;
    v61[0] = v43;

    sub_1C4601538(v13, v61);
    sub_1C4604A6C();
  }

  sub_1C4460108(v24, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v10, 1, v25) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v44 = KeyValueStore.init(config:domain:)(v10, 1413829954, 0xE400000000000000);
  if (v58)
  {
    v45 = v43;
    v46 = v57;
    sub_1C4460108(v24, v57, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v46, 1, v25) != 1)
    {
      v62 = type metadata accessor for BehaviorDatabase(0);
      v63 = &off_1F43E5250;
      if (qword_1EDDE7308 != -1)
      {
        swift_once();
      }

      v47 = a4;
      v61[0] = sub_1C4ABF81C();
      sub_1C4453F54();
      v50 = sub_1C4418280(v61, v62);
      v51 = MEMORY[0x1EEE9AC00](v50);
      v53 = (&v56 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v54 + 16))(v53, v51);
      v55 = *v53;

      sub_1C496CDA0(v55, v45, v44, type metadata accessor for BehaviorHistoryUtility, &off_1F43E41D8);
      sub_1C440962C(v61);
      sub_1C463206C();

      goto LABEL_26;
    }

LABEL_33:
    __break(1u);
    return;
  }

  v47 = a4;
LABEL_26:
  v48._object = 0x80000001C4FAA5F0;
  v48._countAndFlagsBits = 0xD000000000000039;
  KeyValueStore.delete(key:)(v48);
  if (v49)
  {

    v32 = v49;
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61[0] = v36;
      *v35 = 136315138;
      v64 = v49;
      v37 = v49;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v38 = sub_1C4F01198();
      v40 = sub_1C441D828(v38, v39, v61);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1C43F8000, v33, v34, "InternalXPC: Behavior Understanding clearAllData: failed: %s", v35, 0xCu);
      sub_1C440962C(v36);
      MEMORY[0x1C6942830](v36, -1, -1);
      MEMORY[0x1C6942830](v35, -1, -1);
    }

    v41 = v49;
    v42 = sub_1C4EF9798();
    (v47)[2](v47, 0, v42);
  }

  else
  {
    v47[2](v47, 1, 0);
  }

  _Block_release(v47);
}

void InternalXPC.Server.behaviorUnderstandingClearAllData(withShouldClearFeaturizer:shouldClearSampleGenerator:completion:)()
{
  sub_1C43FBD3C();
  v82 = v3;
  v83 = v2;
  v80 = v5;
  v81 = v4;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDDFECB8);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();
  if (os_log_type_enabled(v20, v21))
  {
    *swift_slowAlloc() = 0;
    sub_1C442AC1C();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    sub_1C43FFD4C();
  }

  v79 = v10;

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v27 = sub_1C442B738(v6, qword_1EDDEBB90);
  sub_1C4433D44(v27);
  sub_1C4460108(v27, v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration(0);
  v28 = sub_1C4414C5C();
  sub_1C43FC0FC(v28);
  if (v29)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  v30 = qword_1EDE2E008;
  v31 = sub_1C44E7FAC();
  sub_1C4419A54();
  sub_1C4453F54();
  v32 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  sub_1C441D28C();

  v33 = sub_1C43FC0A8();
  sub_1C4460108(v33, v34, v35, v36);
  sub_1C43FC0FC(v0);
  if (v29)
  {
    goto LABEL_29;
  }

  v37 = type metadata accessor for BehaviorHistoryUtility(0);
  sub_1C44099C4(v37);
  v38 = v30;
  v39 = v0;
  v40 = v38;
  v41 = sub_1C4623CF4(v39, v38);
  if (v81)
  {
    sub_1C4460108(v27, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C43FC0FC(v1);
    if (v29)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    type metadata accessor for BehaviorFeaturizer();
    v85 = v37;
    v86 = &off_1F43E41D8;
    v84[0] = v41;

    sub_1C4601538(v1, v84);
    sub_1C4604A6C();
  }

  v42 = sub_1C4404044();
  sub_1C4460108(v42, v43, v44, v45);
  sub_1C43FC0FC(v13);
  if (v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v46 = type metadata accessor for KeyValueStore(0);
  sub_1C44099C4(v46);
  sub_1C440C5A0();
  v65 = KeyValueStore.init(config:domain:)(v47, v48, v49);
  if (v80)
  {
    v66 = v41;
    v67 = v79;
    sub_1C4460108(v27, v79, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C43FC0FC(v67);
    if (!v29)
    {
      v85 = type metadata accessor for BehaviorDatabase(0);
      v86 = &off_1F43E5250;
      if (qword_1EDDE7308 != -1)
      {
        sub_1C440F814(&qword_1EDDE7308);
      }

      v84[0] = sub_1C4ABF81C();
      sub_1C4419A54();
      sub_1C4453F54();
      sub_1C4418280(v84, v85);
      sub_1C43FCE64();
      MEMORY[0x1EEE9AC00](v68);
      sub_1C43FBCC4();
      v71 = (v70 - v69);
      (*(v72 + 16))(v70 - v69);
      v73 = *v71;

      sub_1C4410410();
      sub_1C496CDA0(v73, v66, v65, v74, v75);
      sub_1C440962C(v84);
      sub_1C463206C();

      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_25:
  v76._countAndFlagsBits = sub_1C4414254();
  KeyValueStore.delete(key:)(v76);
  if (v77)
  {

    v50 = v77;
    v51 = sub_1C4F00968();
    sub_1C4F01CD8();

    if (sub_1C43FD09C())
    {
      v52 = sub_1C43FD084();
      v53 = sub_1C43FFD34();
      v84[0] = v53;
      *v52 = 136315138;
      v87 = v77;
      v54 = v77;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v55 = sub_1C4F01198();
      v57 = sub_1C441D828(v55, v56, v84);

      *(v52 + 4) = v57;
      sub_1C4414B20();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      sub_1C440962C(v53);
      sub_1C43FEA20();
      sub_1C4412D04();
    }

    v63 = v83;
    v64 = v77;
    v63(0, v77);
  }

  else
  {
    v78 = sub_1C4416AEC();
    v83(v78);
  }

  sub_1C43FE9F0();
}

void sub_1C495EAF8(int a1, int a2, uint64_t a3, void (**a4)(void, uint64_t, void))
{
  v54 = a4;
  v49 = a2;
  v52 = a1;
  v4 = sub_1C4EF9CD8();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C4F00978();
  sub_1C442B738(v20, qword_1EDDFECB8);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C43F8000, v21, v22, "InternalXPC: Behavior Understanding digest", v23, 2u);
    MEMORY[0x1C6942830](v23, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v24 = sub_1C442B738(v6, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v24, v19, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v25 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v19, 1, v25) == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1C44E7FAC();
  sub_1C4453F54();
  v27 = *(v26 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v24, v16, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v16, 1, v25) == 1)
  {
    goto LABEL_23;
  }

  v28 = type metadata accessor for BehaviorHistoryUtility(0);
  swift_allocObject();
  v29 = v27;
  v30 = v16;
  v31 = v29;
  v47 = sub_1C4623CF4(v30, v29);
  v46 = v31;
  sub_1C4EF9C88();
  if (v52)
  {
    sub_1C4460108(v24, v13, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v13, 1, v25) != 1)
    {
      type metadata accessor for BehaviorFeaturizer();
      v59 = v28;
      v60 = &off_1F43E41D8;
      v58[0] = v47;

      sub_1C4601538(v13, v58);
      v32 = v53;
      sub_1C460299C(v53);

      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v53;
LABEL_15:
  if ((v49 & 1) == 0)
  {
LABEL_21:
    v45 = v54;
    v54[2](v54, 1, 0);

    (*(v50 + 8))(v32, v51);
    _Block_release(v45);
    return;
  }

  sub_1C4460108(v24, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v10, 1, v25) == 1)
  {
    goto LABEL_25;
  }

  v59 = type metadata accessor for BehaviorDatabase(0);
  v60 = &off_1F43E5250;
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v58[0] = sub_1C4ABF81C();
  sub_1C4453F54();
  v56 = v28;
  v57 = &off_1F43E41D8;
  v55[0] = v47;
  v33 = v48;
  sub_1C4460108(v24, v48, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v33, 1, v25) != 1)
  {
    type metadata accessor for KeyValueStore(0);
    swift_allocObject();

    v34 = KeyValueStore.init(config:domain:)(v33, 1413829954, 0xE400000000000000);
    v35 = sub_1C4418280(v58, v59);
    v36 = MEMORY[0x1EEE9AC00](v35);
    v38 = (&v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38, v36);
    v40 = sub_1C4418280(v55, v56);
    v41 = MEMORY[0x1EEE9AC00](v40);
    v43 = (&v46 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v44 + 16))(v43, v41);
    sub_1C496CDA0(*v38, *v43, v34, type metadata accessor for BehaviorHistoryUtility, &off_1F43E41D8);
    sub_1C440962C(v55);
    sub_1C440962C(v58);
    sub_1C46320C0(v32);

    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingDigest(withShouldDigestFeaturizer:shouldDigestSampleGenerator:completion:)()
{
  sub_1C43FBD3C();
  v59 = v4;
  v56 = v5;
  v57 = v6;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  v11 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441B420();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v17 = sub_1C4F00978();
  sub_1C442B738(v17, qword_1EDDFECB8);
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (os_log_type_enabled(v18, v19))
  {
    *swift_slowAlloc() = 0;
    sub_1C442AC1C();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v25 = sub_1C442B738(v11, qword_1EDDEBB90);
  sub_1C440D164(v25, &v66);
  sub_1C4460108(v25, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v26 = type metadata accessor for Configuration(0);
  v27 = sub_1C440180C();
  sub_1C440175C(v27, v28, v26);
  if (v29)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v58 = v10;
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  v30 = sub_1C44E7FAC();
  sub_1C4419A54();
  sub_1C4453F54();
  v31 = *(v30 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  sub_1C4460108(v25, v0, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v0, 1, v26);
  if (v29)
  {
    goto LABEL_22;
  }

  v32 = type metadata accessor for BehaviorHistoryUtility(0);
  sub_1C44099C4(v32);
  v54 = sub_1C4623CF4(v0, v31);
  sub_1C4EF9C88();
  if ((v57 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1C4460108(v25, v3, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v3, 1, v26);
  if (v29)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for BehaviorFeaturizer();
  v64 = v32;
  v65 = &off_1F43E41D8;
  v63[0] = v54;

  sub_1C4601538(v3, v63);
  sub_1C460299C(v58);

LABEL_14:
  if ((v56 & 1) == 0)
  {
LABEL_20:
    v50 = sub_1C4416AEC();
    v59(v50);
    sub_1C4410EB4();

    v52 = sub_1C4405088();
    v53(v52);
    sub_1C43FE9F0();
    return;
  }

  sub_1C4460108(v25, v2, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440175C(v2, 1, v26);
  if (v29)
  {
    goto LABEL_24;
  }

  v64 = type metadata accessor for BehaviorDatabase(0);
  v65 = &off_1F43E5250;
  if (qword_1EDDE7308 != -1)
  {
    sub_1C440F814(&qword_1EDDE7308);
  }

  v63[0] = sub_1C4ABF81C();
  sub_1C4419A54();
  sub_1C4453F54();
  v61 = v32;
  v62 = &off_1F43E41D8;
  sub_1C4495248();
  v60[0] = v32;
  sub_1C4460108(v25, v55, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v33 = sub_1C44033D8();
  sub_1C440175C(v33, v34, v26);
  if (!v29)
  {
    v35 = type metadata accessor for KeyValueStore(0);
    sub_1C44099C4(v35);

    sub_1C440C5A0();
    v39 = KeyValueStore.init(config:domain:)(v36, v37, v38);
    sub_1C4418280(v63, v64);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v40);
    sub_1C43FBCC4();
    (*(v43 + 16))(v42 - v41);
    sub_1C4418280(v60, v61);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v44);
    sub_1C43FBCC4();
    sub_1C440DED0();
    (*(v45 + 16))(v26);
    sub_1C4410410();
    sub_1C496CDA0(v46, v47, v39, v48, v49);
    sub_1C440962C(v60);
    sub_1C440962C(v63);
    sub_1C46320C0(v58);

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_1C495FD74(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a1;
  a6(a3, a4, v11, v10);
  _Block_release(v10);
}

void sub_1C495FE04(uint64_t a1, unint64_t a2, uint64_t a3, const void *a4)
{
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v40 = a4;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  v14 = sub_1C442B738(v13, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v38 = v14;
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();

  v17 = os_log_type_enabled(v15, v16);
  v37 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v7;
    v20 = v19;
    v41[0] = v19;
    *v18 = 136315138;
    if (a2)
    {
      v21 = a1;
    }

    else
    {
      v21 = 7104878;
    }

    v22 = a1;
    v23 = a4;
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C441D828(v21, v24, v41);
    a4 = v23;
    a1 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_1C43F8000, v15, v16, "InternalXPC: Behavior Understanding recentBehaviors [type=%s]", v18, 0xCu);
    sub_1C440962C(v20);
    v26 = v20;
    v7 = v36;
    MEMORY[0x1C6942830](v26, -1, -1);
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v27 = sub_1C442B738(v7, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v27, v12, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v28 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v12, 1, v28) == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C44E7FAC();
    sub_1C4453F54();
    v30 = *(v29 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    v31 = v37;
    sub_1C4460108(v27, v37, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v31, 1, v28) != 1)
    {
      type metadata accessor for BehaviorHistoryUtility(0);
      swift_allocObject();
      v32 = v30;
      v33 = sub_1C4623CF4(v31, v32);
      v34 = objc_autoreleasePoolPush();
      sub_1C4960768(a1, a2, v33, sub_1C496D1BC, v39);
      objc_autoreleasePoolPop(v34);

      _Block_release(a4);
      return;
    }
  }

  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingRecentBehaviors(ofType:completion:)()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v38 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDDFECB8);
  sub_1C4404CE0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = v0;
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_1C43FD084();
    v19 = sub_1C43FFD34();
    v36 = v9;
    v20 = v19;
    v40 = v19;
    *v18 = 136315138;
    v37 = v4;
    v21 = v2;
    if (v6)
    {
      v22 = v8;
    }

    else
    {
      v22 = 7104878;
    }

    v23 = v8;
    if (v6)
    {
      v24 = v6;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C441D828(v22, v24, &v40);
    v8 = v23;

    *(v18 + 4) = v25;
    v2 = v21;
    v4 = v37;
    _os_log_impl(&dword_1C43F8000, v16, v17, "InternalXPC: Behavior Understanding recentBehaviors [type=%s]", v18, 0xCu);
    sub_1C440962C(v20);
    v9 = v36;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v26 = sub_1C442B738(v9, qword_1EDDEBB90);
  sub_1C4433D44(v26);
  sub_1C4460108(v26, v14, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration(0);
  sub_1C440582C(v14);
  if (v27)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    v28 = sub_1C44E7FAC();
    sub_1C4419A54();
    sub_1C4453F54();
    v29 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    v30 = v38;
    sub_1C4460108(v26, v38, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C440582C(v30);
    if (!v27)
    {
      v31 = type metadata accessor for BehaviorHistoryUtility(0);
      sub_1C44099C4(v31);
      v32 = v29;
      v33 = sub_1C4623CF4(v30, v32);
      v34 = objc_autoreleasePoolPush();
      sub_1C4960768(v8, v6, v33, v4, v2);
      objc_autoreleasePoolPop(v34);

      sub_1C43FE9F0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C4960768(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a4;
  v33 = a3;
  v34 = a5;
  v32 = a1;
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  sub_1C4EF9C88();
  sub_1C4EF9BE8();
  (*(v11 + 8))(v13, v10);
  sub_1C440BAA8(v19, 0, 1, v10);
  sub_1C4EF9C88();
  sub_1C440BAA8(v16, 0, 1, v10);
  if (a2)
  {
    sub_1C4EFDA78();
    v20 = sub_1C4626020(v19, v16, v9);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v20 = sub_1C4622C30(v19, v16, 1, MEMORY[0x1E69E7CD0]);
  }

  sub_1C4420C3C(v16, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v19, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  v40 = sub_1C496D5F0;
  v41 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C44405F8;
  v39 = &unk_1F43F1BE0;
  v24 = _Block_copy(&aBlock);
  v25 = v20;

  v40 = sub_1C496D5F8;
  v41 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1C45DFE08;
  v39 = &unk_1F43F1C08;
  v26 = _Block_copy(&aBlock);

  v27 = [v25 sinkWithCompletion:v24 receiveInput:{v26, v32, v33, v34}];
  _Block_release(v26);
  _Block_release(v24);

  swift_beginAccess();
  v28 = *(v21 + 16);
  swift_beginAccess();
  v29 = *v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = v29;
  v35(v28, v29);
}

void sub_1C4960C60(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

uint64_t sub_1C4960CC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C45D62A8();
  v5 = v4;
  swift_beginAccess();
  sub_1C4588BAC();
  v6 = *(*(a2 + 16) + 16);
  sub_1C45897E8();
  v7 = *(a2 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 16 * v6;
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

void sub_1C4960DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1C4F01658();
    if (a2)
    {
LABEL_3:
      v6 = sub_1C4EF9798();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1C4960E88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v98 = a7;
  v104 = a1;
  v11 = sub_1C4EFDAB8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v102);
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v103 = (&v88 - v17);
  v18 = sub_1C4EF9CD8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v88 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - v24;
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v26 = sub_1C4F00978();
    v27 = sub_1C442B738(v26, qword_1EDDFECB8);
    v28 = v19[2];
    v100 = v19 + 2;
    v99 = v28;
    v28(v25, a5, v18);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v97 = v27;
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CF8();

    v31 = os_log_type_enabled(v29, v30);
    v93 = a3;
    v96 = v19;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v94 = a5;
      v33 = v19;
      v34 = v32;
      v35 = swift_slowAlloc();
      v92 = a2;
      v36 = v35;
      v109[0] = v35;
      *v34 = 136315650;
      *(v34 + 4) = sub_1C441D828(v104, v92, v109);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1C441D828(a3, a4, v109);
      *(v34 + 22) = 2080;
      sub_1C496CC38(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v37 = sub_1C4F02858();
      v38 = a4;
      v40 = v39;
      v41 = v33;
      a5 = v94;
      v95 = v41[1];
      v95(v25, v18);
      v42 = sub_1C441D828(v37, v40, v109);
      a4 = v38;

      *(v34 + 24) = v42;
      _os_log_impl(&dword_1C43F8000, v29, v30, "InternalXPC: Behavior Understanding featurizeBehavior [type=%s, identifier=%s, date=%s]", v34, 0x20u);
      swift_arrayDestroy();
      v43 = v36;
      a2 = v92;
      MEMORY[0x1C6942830](v43, -1, -1);
      MEMORY[0x1C6942830](v34, -1, -1);
    }

    else
    {

      v95 = v19[1];
      v95(v25, v18);
    }

    v44 = v103;
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v25 = sub_1C442B738(v102, qword_1EDDEBB90);
    swift_beginAccess();
    sub_1C4460108(v25, v44, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v45 = type metadata accessor for Configuration(0);
    if (sub_1C44157D4(v44, 1, v45) == 1)
    {
      break;
    }

    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v46 = sub_1C44E7FAC();
    v94 = a5;
    v102 = v18;
    v18 = a2;
    sub_1C4453F54();
    v47 = *(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    v48 = v91;
    sub_1C4460108(v25, v91, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v48, 1, v45) == 1)
    {
      goto LABEL_46;
    }

    v49 = type metadata accessor for BehaviorHistoryUtility(0);
    swift_allocObject();
    v50 = v47;
    v51 = v48;
    v19 = v50;
    v103 = sub_1C4623CF4(v51, v50);
    v52 = v89;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45D29E0(v52, v93, a4, v109);
    v53 = v90;
    sub_1C4460108(v25, v90, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (sub_1C44157D4(v53, 1, v45) == 1)
    {
      goto LABEL_47;
    }

    type metadata accessor for BehaviorFeaturizer();
    v107 = v49;
    v108 = &off_1F43E41D8;
    v105 = v103;

    v54 = sub_1C4601538(v53, &v105);
    v99(v88, v94, v102);
    v105 = 0;
    v106 = 256;
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
    v56 = v55;
    v57 = sub_1C45FD2E4();
    v58 = sub_1C4601874(v109, v57, v56);
    sub_1C45EC75C(v109);

    if (!v58)
    {
      v87 = v98;
      v98[2](v98, 0, 0);

LABEL_13:
      _Block_release(v87);
      return;
    }

    v100 = v54;
    v101 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v59 = sub_1C4F00F28();
    a4 = [v58 featureNames];
    v60 = sub_1C4F01AB8();

    v61 = 0;
    a2 = v60 + 56;
    v62 = *(v60 + 56);
    v104 = v60;
    v63 = 1 << *(v60 + 32);
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    a3 = v64 & v62;
    a5 = (v63 + 63) >> 6;
    v92 = v19;
    v102 = v58;
    while (a3)
    {
      v65 = v61;
LABEL_23:
      v66 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
      v67 = *(v104 + 48) + ((v65 << 10) | (16 * v66));
      v25 = *v67;
      v18 = *(v67 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a4 = sub_1C4F01108();
      v68 = [v58 featureValueForName_];

      if (v68)
      {
        [v68 doubleValue];
        v70 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        if (v70)
        {
          a4 = v70;
          LODWORD(v97) = swift_isUniquelyReferenced_nonNull_native();
          v105 = v59;
          v96 = sub_1C445FAA8(v25, v18);
          v73 = v59[2];
          LODWORD(v99) = v74;
          if (__OFADD__(v73, (v74 & 1) == 0))
          {
            __break(1u);
            goto LABEL_44;
          }

          sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
          if (sub_1C4F02458())
          {
            v75 = sub_1C445FAA8(v25, v18);
            v77 = v99;
            if ((v99 & 1) != (v76 & 1))
            {
              goto LABEL_48;
            }

            v78 = v75;
          }

          else
          {
            v78 = v96;
            v77 = v99;
          }

          if (v77)
          {

            v59 = v105;
            v79 = v105[7];
            v80 = v78;
            v81 = *(v79 + 8 * v78);
            *(v79 + 8 * v80) = a4;
          }

          else
          {
            v59 = v105;
            v105[(v78 >> 6) + 8] |= 1 << v78;
            v82 = (v59[6] + 16 * v78);
            *v82 = v25;
            v82[1] = v18;
            *(v59[7] + 8 * v78) = a4;

            v83 = v59[2];
            v84 = __OFADD__(v83, 1);
            v85 = v83 + 1;
            if (v84)
            {
              goto LABEL_45;
            }

            v59[2] = v85;
          }

          v19 = v92;
          v58 = v102;
          v61 = v65;
        }

        else
        {
          a4 = sub_1C445FAA8(v25, v18);
          v72 = v71;

          if (v72)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v105 = v59;
            v25 = v59[3];
            sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
            sub_1C4F02458();
            v59 = v105;

            sub_1C4F02478();
          }

          v61 = v65;
          v19 = v92;
          v58 = v102;
        }
      }

      else
      {

        v61 = v65;
        v58 = v102;
      }
    }

    while (1)
    {
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v65 >= a5)
      {

        v86 = sub_1C4F00EC8();
        v87 = v98;
        (v98)[2](v98, v86, 0);

        swift_unknownObjectRelease();

        goto LABEL_13;
      }

      a3 = *(a2 + 8 * v65);
      ++v61;
      if (a3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  _Block_release(v98);
  sub_1C4F029F8();
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingFeaturizeBehavior(ofType:identifier:usingContextAt:completion:)(void *a1, int64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C4EFDAB8();
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FCE30(v11 - v10);
  v98 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v99 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C44144E4();
  v16 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C447F150();
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDDFECB8);
    v23 = sub_1C4410CBC();
    v96 = v24;
    (v24)(v23);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F00968();
    v26 = a2;
    v27 = sub_1C4F01CF8();

    v94 = a3;
    if (os_log_type_enabled(v25, v27))
    {
      v28 = v16;
      v29 = v18;
      v30 = sub_1C43FFD34();
      v108[0] = swift_slowAlloc();
      *v30 = 136315650;
      *(v30 + 4) = sub_1C441D828(a1, v26, v108);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1C441D828(a3, a4, v108);
      *(v30 + 22) = 2080;
      sub_1C4411EF4();
      sub_1C496CC38(v31, v32, MEMORY[0x1E6969570]);
      v33 = sub_1C4F02858();
      v34 = a4;
      v36 = v35;
      v37 = v29;
      v16 = v28;
      (*(v37 + 8))(v4, v28);
      sub_1C441D828(v33, v36, v108);
      sub_1C4404CE0();
      a4 = v34;

      *(v30 + 24) = v33;
      _os_log_impl(&dword_1C43F8000, v25, v27, "InternalXPC: Behavior Understanding featurizeBehavior [type=%s, identifier=%s, date=%s]", v30, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FFD4C();
    }

    else
    {

      (*(v18 + 8))(v4, v16);
    }

    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4(&qword_1EDDEBB80);
    }

    v38 = sub_1C442B738(v98, qword_1EDDEBB90);
    sub_1C440D164(v38, v107);
    v39 = sub_1C43FD018();
    sub_1C4460108(v39, v40, v41, v42);
    v43 = type metadata accessor for Configuration(0);
    v44 = sub_1C440180C();
    sub_1C440175C(v44, v45, v43);
    if (v46)
    {
      break;
    }

    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    v47 = sub_1C44E7FAC();
    sub_1C4419A54();
    sub_1C4453F54();
    v48 = *(v47 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

    sub_1C4460108(v38, v99, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C440175C(v99, 1, v43);
    if (v46)
    {
      goto LABEL_45;
    }

    v49 = type metadata accessor for BehaviorHistoryUtility(0);
    sub_1C44099C4(v49);
    v50 = v48;
    v99 = sub_1C4623CF4(v99, v50);
    v98 = v50;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45D29E0(v92, v94, a4, v108);
    v51 = v38;
    v4 = v93;
    sub_1C4460108(v51, v93, &unk_1EC0B9610, &unk_1C4F0F2E0);
    sub_1C440175C(v93, 1, v43);
    if (v46)
    {
      goto LABEL_46;
    }

    type metadata accessor for BehaviorFeaturizer();
    v105 = v49;
    v106 = &off_1F43E41D8;
    v103 = v99;

    sub_1C4601538(v93, &v103);
    sub_1C4495248();
    sub_1C4410EB4();
    v96();
    v103 = 0;
    v104 = 256;
    v52 = type metadata accessor for BehaviorContext(0);
    sub_1C44099C4(v52);
    sub_1C45D689C();
    v54 = v53;
    v55 = sub_1C45FD2E4();
    a4 = sub_1C4601874(v108, v55, v54);
    sub_1C45EC75C(v108);

    if (!a4)
    {
      _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
      sub_1C445E88C();
      v91();

      return;
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    a1 = sub_1C4F00F28();
    v56 = [a4 featureNames];
    a3 = sub_1C4F01AB8();

    a2 = 0;
    v57 = a3 + 56;
    v58 = 1 << *(a3 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v18 = v59 & *(a3 + 56);
    v60 = (v58 + 63) >> 6;
    v97 = a4;
    v100 = a3;
LABEL_16:
    v61 = a2;
    if (!v18)
    {
      goto LABEL_18;
    }

    do
    {
      a2 = v61;
LABEL_21:
      v62 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v63 = (*(a3 + 48) + ((a2 << 10) | (16 * v62)));
      v64 = *v63;
      v16 = v63[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4409D0C();
      v65 = sub_1C4F01108();
      v4 = [a4 featureValueForName_];

      if (!v4)
      {

        goto LABEL_16;
      }

      [v4 doubleValue];
      v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (v67)
      {
        v73 = v67;
        v74 = a1;
        swift_isUniquelyReferenced_nonNull_native();
        v103 = a1;
        v75 = sub_1C4409D0C();
        v95 = sub_1C445FAA8(v75, v76);
        v102 = v77;
        if (__OFADD__(*(v74 + 16), (v77 & 1) == 0))
        {
          __break(1u);
          goto LABEL_43;
        }

        sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
        if (sub_1C4F02458())
        {
          v78 = sub_1C4409D0C();
          v95 = sub_1C445FAA8(v78, v79);
          v81 = v102;
          a3 = v100;
          if ((v102 & 1) != (v80 & 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          a3 = v100;
          v81 = v102;
        }

        if (v81)
        {

          a1 = v103;
          v83 = *(v103 + 56);
          v84 = *(v83 + 8 * v95);
          *(v83 + 8 * v95) = v73;
        }

        else
        {
          v85 = v103;
          *(v103 + 8 * (v95 >> 6) + 64) |= 1 << v95;
          v86 = (v85[6] + 16 * v95);
          *v86 = v64;
          v86[1] = v16;
          *(v85[7] + 8 * v95) = v73;

          v87 = v85[2];
          v88 = __OFADD__(v87, 1);
          v89 = v87 + 1;
          if (v88)
          {
            goto LABEL_44;
          }

          a1 = v85;
          v85[2] = v89;
        }

        a4 = v97;
        goto LABEL_16;
      }

      v68 = sub_1C4409D0C();
      v70 = sub_1C445FAA8(v68, v69);
      v72 = v71;

      if (v72)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v103 = a1;
        sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
        sub_1C4F02458();
        v82 = v103;

        a1 = v82;
        sub_1C4F02478();

        a4 = v97;
        a3 = v100;
        goto LABEL_16;
      }

      v61 = a2;
      a4 = v97;
      a3 = v100;
    }

    while (v18);
LABEL_18:
    while (1)
    {
      a2 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (a2 >= v60)
      {

        sub_1C445E88C();
        v90();

        swift_unknownObjectRelease();

        return;
      }

      v18 = *(v57 + 8 * a2);
      ++v61;
      if (v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_41:
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C4962C8C(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t *a8)
{
  v79 = a6;
  v80 = a1;
  v75 = a5;
  v81 = a3;
  v11 = sub_1C4EFDAB8();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v78 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v77 = (&v69 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1C4F00978();
  v25 = sub_1C442B738(v24, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CF8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = a2;
    v29 = a4;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v74 = v25;
    v32 = v15;
    v33 = a8;
    v34 = v31;
    v84[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1C441D828(v80, v28, v84);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1C441D828(v81, v29, v84);
    _os_log_impl(&dword_1C43F8000, v26, v27, "InternalXPC: Behavior Understanding histograms [kind=%s, behaviorType=%s]", v30, 0x16u);
    swift_arrayDestroy();
    v35 = v34;
    a8 = v33;
    v15 = v32;
    v25 = v74;
    MEMORY[0x1C6942830](v35, -1, -1);
    v36 = v30;
    a4 = v29;
    a2 = v28;
    MEMORY[0x1C6942830](v36, -1, -1);
  }

  v37 = v79;
  if (v79)
  {
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v38 = sub_1C442B738(v78, qword_1EDDEBB90);
    swift_beginAccess();
    sub_1C4460108(v38, v23, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v39 = type metadata accessor for Configuration(0);
    if (sub_1C44157D4(v23, 1, v39) != 1)
    {
      if (qword_1EDDFF2A0 != -1)
      {
        swift_once();
      }

      sub_1C44E7FAC();
      sub_1C4453F54();
      sub_1C4BEB8E0(v75, v37, v84);

      sub_1C4460108(&v86, &v82, &qword_1EC0BB460, &qword_1C4F5D900);
      if (!v83)
      {
        sub_1C4420C3C(&v82, &qword_1EC0BB460, &qword_1C4F5D900);
        (a8[2])(a8, 0, 0);
        sub_1C496C560(v84);
        goto LABEL_18;
      }

      v74 = v25;
      sub_1C443FA18(&v82, v89);
      sub_1C442E860(v87, v88);
      sub_1C4707ED4(v84);
LABEL_29:
      sub_1C442E860(v89, v84);
      sub_1C442E860(v88, &v85);
      v78 = a4;
      sub_1C4EFDA78();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v79 = a2;
      v53 = sub_1C460B094(v80, a2);
      if (v53 != 16)
      {
        v54 = v53;
        v55 = v72;
        v56 = v70;
        v57 = v15;
        v58 = v73;
        (*(v72 + 104))(v70, *MEMORY[0x1E69A9450], v73);
        sub_1C496CC38(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
        v59 = sub_1C4F010B8();
        v60 = *(v55 + 8);
        v61 = v58;
        v15 = v57;
        v60(v56, v61);
        if ((v59 & 1) == 0)
        {
          v62 = objc_autoreleasePoolPush();
          v63 = sub_1C461CEFC(v54, v57);
          v76 = v62;
          v77 = a8;
          sub_1C4EF93D8();
          swift_allocObject();
          sub_1C4EF93C8();
          v87[17] = v63;
          sub_1C456902C(&qword_1EC0BFD48, &qword_1C4F3D9F0);
          sub_1C496D804(&qword_1EC0BFD50, &qword_1EC0BFD48, &qword_1C4F3D9F0, sub_1C496C458);
          v64 = sub_1C4EF93B8();
          v66 = v65;

          sub_1C44344B8(v64, v66);
          v67 = sub_1C4EF9A38();
          v68 = v77;
          (v77[2])(v77, v67, 0);

          sub_1C4434000(v64, v66);
          sub_1C4434000(v64, v66);
          objc_autoreleasePoolPop(v76);
          v60(v57, v73);
          sub_1C496C404(v84);
          sub_1C440962C(v89);
          sub_1C440962C(v88);
          v43 = v68;
          goto LABEL_19;
        }
      }

      (a8[2])(a8, 0, 0);
      (*(v72 + 8))(v15, v73);
      sub_1C496C404(v84);
      sub_1C440962C(v89);
      sub_1C440962C(v88);
LABEL_18:
      v43 = a8;
LABEL_19:
      _Block_release(v43);
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  v79 = v15;
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v40 = sub_1C442B738(v78, qword_1EDDEBB90);
  swift_beginAccess();
  v41 = v77;
  sub_1C4460108(v40, v77, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v42 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v41, 1, v42) == 1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v75 = sub_1C4ABF81C();
  sub_1C4453F54();
  v44 = v76;
  sub_1C4460108(v40, v76, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v44, 1, v42) == 1)
  {
    goto LABEL_35;
  }

  v78 = a4;
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v45 = sub_1C44E7FAC();
  v74 = v25;
  sub_1C4453F54();
  v46 = *(v45 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  v47 = v40;
  v48 = v71;
  sub_1C4460108(v47, v71, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v48, 1, v42) != 1)
  {
    v49 = type metadata accessor for BehaviorHistoryUtility(0);
    swift_allocObject();
    v50 = v46;
    v51 = sub_1C4623CF4(v48, v50);
    v15 = v79;
    v84[3] = v49;
    v84[4] = &off_1F43E41D8;
    v84[0] = v51;
    sub_1C45EA370(v84, v89);
    sub_1C440962C(v84);
    v52 = sub_1C45ED17C();
    v88[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v88[4] = &off_1F43E2510;

    v88[0] = v52;
    a4 = v78;
    goto LABEL_29;
  }

LABEL_36:
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingHistograms(ofKind:behaviorType:viewName:completion:)()
{
  sub_1C43FBD3C();
  v86 = v1;
  v87 = v2;
  v4 = v3;
  v90 = v6;
  v91 = v5;
  v8 = v7;
  v92 = v9;
  v11 = v10;
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v83 = v13;
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v81 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v85 = v16;
  v88 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  v82 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v89 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44144E4();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v25 = sub_1C4F00978();
  v26 = sub_1C442B738(v25, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v11;
    v30 = v8;
    v31 = sub_1C440F274();
    v32 = sub_1C43FC11C();
    v80 = v21;
    v96[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_1C441D828(v91, v29, v96);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1C441D828(v92, v30, v96);
    sub_1C442AC1C();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    swift_arrayDestroy();
    v21 = v80;
    sub_1C43FBE2C();
    v8 = v30;
    v11 = v29;
    sub_1C43FBE2C();
  }

  v38 = v89;
  v39 = v90;
  if (v90)
  {
    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4(&qword_1EDDEBB80);
    }

    v40 = sub_1C442B738(v88, qword_1EDDEBB90);
    sub_1C440D164(v40, &v95);
    sub_1C4460108(v40, v0, &unk_1EC0B9610, &unk_1C4F0F2E0);
    type metadata accessor for Configuration(0);
    v41 = sub_1C440180C();
    sub_1C440175C(v41, v42, v43);
    if (!v51)
    {
      if (qword_1EDDFF2A0 != -1)
      {
        sub_1C43FD998(&qword_1EDDFF2A0);
      }

      sub_1C44E7FAC();
      sub_1C4419A54();
      sub_1C4453F54();
      sub_1C4BEB8E0(v86, v39, v96);

      sub_1C4460108(&v98, &v93, &qword_1EC0BB460, &qword_1C4F5D900);
      if (!v94)
      {
        sub_1C4420C3C(&v93, &qword_1EC0BB460, &qword_1C4F5D900);
        v55 = sub_1C440722C();
        v4(v55);
        sub_1C496C560(v96);
LABEL_21:
        sub_1C43FE9F0();
        return;
      }

      v90 = v26;
      sub_1C443FA18(&v93, v101);
      sub_1C442E860(v99, v100);
      sub_1C4707ED4(v96);
      v46 = v85;
LABEL_27:
      sub_1C442E860(v101, v96);
      sub_1C442E860(v100, &v97);
      sub_1C4EFDA78();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v88 = v11;
      v57 = sub_1C460B094(v91, v11);
      if (v57 == 16 || (v58 = v57, v59 = v83, v60 = v84, v61 = v81, (*(v83 + 104))(v81, *MEMORY[0x1E69A9450], v84), sub_1C4426C2C(), sub_1C496CC38(v62, v63, MEMORY[0x1E69A9490]), v64 = sub_1C4F010B8(), v65 = *(v59 + 8), v66 = v60, v46 = v85, v65(v61, v66), (v64 & 1) != 0))
      {
        v67 = sub_1C440722C();
        v4(v67);
        (*(v83 + 8))(v46, v84);
      }

      else
      {
        v68 = objc_autoreleasePoolPush();
        v69 = sub_1C461CEFC(v58, v46);
        v89 = v8;
        v86 = v4;
        v70 = sub_1C4EF93D8();
        sub_1C44099C4(v70);
        sub_1C4EF93C8();
        v99[17] = v69;
        v71 = sub_1C43FFE24();
        sub_1C456902C(v71, v72);
        sub_1C496D804(&qword_1EC0BFD50, &qword_1EC0BFD48, &qword_1C4F3D9F0, sub_1C496C458);
        sub_1C4EF93B8();

        v73 = sub_1C43FFE24();
        sub_1C44344B8(v73, v74);
        v75 = sub_1C43FFE24();
        v86(v75);
        v76 = sub_1C43FFE24();
        sub_1C4434000(v76, v77);
        v78 = sub_1C43FFE24();
        sub_1C4434000(v78, v79);
        objc_autoreleasePoolPop(v68);
        v65(v85, v84);
      }

      sub_1C496C404(v96);
      sub_1C440962C(v101);
      sub_1C440962C(v100);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_33;
  }

  v90 = v26;
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v44 = sub_1C442B738(v88, qword_1EDDEBB90);
  sub_1C440D164(v44, &v93);
  sub_1C4460108(v44, v38, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration(0);
  sub_1C43FC0FC(v38);
  if (v51)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_1EDDE7308 != -1)
  {
    sub_1C440F814(&qword_1EDDE7308);
  }

  v88 = sub_1C4ABF81C();
  sub_1C4419A54();
  sub_1C4453F54();
  sub_1C4460108(v44, v21, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FC0FC(v21);
  if (v51)
  {
    goto LABEL_34;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  v45 = v21;
  v47 = sub_1C44E7FAC();
  v89 = v8;
  sub_1C4419A54();
  sub_1C4453F54();
  v48 = *(v47 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  sub_1C4404CE0();

  v49 = v44;
  v50 = v82;
  sub_1C4460108(v49, v82, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FC0FC(v50);
  if (!v51)
  {
    v52 = type metadata accessor for BehaviorHistoryUtility(0);
    sub_1C44099C4(v52);
    v53 = v45;
    v54 = sub_1C4623CF4(v50, v53);
    v46 = v85;
    v96[3] = v52;
    v96[4] = &off_1F43E41D8;
    v96[0] = v54;
    sub_1C45EA370(v96, v101);
    sub_1C440962C(v96);
    v56 = sub_1C45ED17C();
    v100[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v100[4] = &off_1F43E2510;

    v100[0] = v56;
    v8 = v89;
    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
}

void sub_1C4964488(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char *a6)
{
  v77 = a4;
  v76 = a3;
  v75 = a1;
  v71 = sub_1C4EFDAB8();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - v10;
  v11 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C4F00978();
  v22 = sub_1C442B738(v21, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v74 = v22;
  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CF8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = a6;
    v27 = swift_slowAlloc();
    v79[0] = v27;
    *v25 = 136315394;
    *(v25 + 4) = sub_1C441D828(v75, a2, v79);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1C441D828(v76, v77, v79);
    _os_log_impl(&dword_1C43F8000, v23, v24, "InternalXPC: Behavior Understanding featurizedBehaviors [featureName=%s, behaviorType=%s]", v25, 0x16u);
    swift_arrayDestroy();
    v28 = v27;
    a6 = v26;
    MEMORY[0x1C6942830](v28, -1, -1);
    MEMORY[0x1C6942830](v25, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v29 = sub_1C442B738(v11, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v29, v20, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v30 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v20, 1, v30) == 1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v67 = sub_1C4ABF81C();
  sub_1C4453F54();
  sub_1C4460108(v29, v17, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v17, 1, v30) == 1)
  {
    goto LABEL_22;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  v31 = sub_1C44E7FAC();
  sub_1C4453F54();
  v32 = *(v31 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);

  v33 = v73;
  sub_1C4460108(v29, v73, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v33, 1, v30) == 1)
  {
    goto LABEL_23;
  }

  v34 = type metadata accessor for BehaviorHistoryUtility(0);
  swift_allocObject();
  v35 = v32;
  v36 = sub_1C4623CF4(v33, v35);
  v73 = v35;
  v66 = a6;
  v37 = v72;
  sub_1C4460108(v29, v72, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v37, 1, v30) != 1)
  {
    v38 = type metadata accessor for BehaviorFeaturizer();
    v79[3] = v34;
    v79[4] = &off_1F43E41D8;
    v79[0] = v36;

    v39 = sub_1C4601538(v37, v79);
    v78[3] = v34;
    v78[4] = &off_1F43E41D8;
    v78[0] = v36;

    sub_1C45EA370(v78, v79);
    sub_1C440962C(v78);
    v40 = sub_1C45ED17C();
    v79[8] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v79[5] = v40;
    v79[13] = v38;
    v79[14] = &off_1F43E2F70;
    v79[9] = &off_1F43E2510;
    v79[10] = v39;
    v41 = v69;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45FE940(v75, a2);
    if (v43 != 0xFF)
    {
      v44 = v42;
      v45 = v43;
      v46 = v70;
      v47 = v68;
      v48 = v71;
      (*(v70 + 104))(v68, *MEMORY[0x1E69A9450], v71);
      sub_1C496CC38(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
      v49 = sub_1C4F010B8();
      v50 = v47;
      v51 = *(v46 + 8);
      v51(v50, v48);
      if ((v49 & 1) == 0)
      {
        sub_1C47EB1E4(v44, v45, v41, v52, v53, v54, v55, v56, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v59 = v58;
        v60 = v51;
        sub_1C496C608(v44, v45);
        v72 = objc_autoreleasePoolPush();
        sub_1C4EF93D8();
        swift_allocObject();
        sub_1C4EF93C8();
        v78[0] = v59;
        sub_1C456902C(&qword_1EC0BFD70, &qword_1C4F3DA00);
        sub_1C496C61C();
        v61 = sub_1C4EF93B8();
        v63 = v62;

        sub_1C44344B8(v61, v63);
        v64 = sub_1C4EF9A38();
        v57 = v66;
        (*(v66 + 2))(v66, v64, 0);

        sub_1C4434000(v61, v63);
        sub_1C4434000(v61, v63);
        objc_autoreleasePoolPop(v72);

        v60(v69, v71);
        goto LABEL_19;
      }

      sub_1C496C608(v44, v45);
    }

    v57 = v66;
    (*(v66 + 2))(v66, 0, 0);

    (*(v70 + 8))(v41, v71);
LABEL_19:
    sub_1C496C5B4(v79);
    _Block_release(v57);
    return;
  }

LABEL_24:
  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingFeaturizedBehaviors(forFeatureName:behaviorType:completion:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v89 = v4;
  v88 = v5;
  v83 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v82 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD230();
  sub_1C43FCE30(v9);
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v17 = sub_1C4F00978();
  v18 = sub_1C442B738(v17, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v87 = v18;
  v19 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C43FD09C())
  {
    v20 = sub_1C440F274();
    v91[0] = sub_1C43FC11C();
    *v20 = 136315394;
    v21 = sub_1C4423BDC();
    *(v20 + 4) = sub_1C441D828(v21, v22, v23);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1C4458710();
    sub_1C4414B20();
    _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C4412D04();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v29 = sub_1C442B738(v10, qword_1EDDEBB90);
  sub_1C440D164(v29, &v92);
  sub_1C4460108(v29, v16, &unk_1EC0B9610, &unk_1C4F0F2E0);
  type metadata accessor for Configuration(0);
  sub_1C440582C(v16);
  if (v30)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_1EDDE7308 != -1)
  {
    sub_1C440F814(&qword_1EDDE7308);
  }

  v79 = sub_1C4ABF81C();
  sub_1C4419A54();
  sub_1C4453F54();
  v31 = v86;
  sub_1C4460108(v29, v86, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440582C(v31);
  if (v30)
  {
    goto LABEL_22;
  }

  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998(&qword_1EDDFF2A0);
  }

  v32 = v31;
  v33 = sub_1C44E7FAC();
  v77 = v1;
  v78 = v3;
  sub_1C4419A54();
  sub_1C4453F54();
  v34 = *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
  sub_1C441D28C();

  v35 = v85;
  sub_1C4460108(v29, v85, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440582C(v35);
  if (v30)
  {
    goto LABEL_23;
  }

  v36 = type metadata accessor for BehaviorHistoryUtility(0);
  sub_1C44099C4(v36);
  v37 = v32;
  v38 = sub_1C4623CF4(v35, v37);
  v86 = v37;
  v39 = v84;
  sub_1C4460108(v29, v84, &unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440582C(v39);
  if (!v30)
  {
    v40 = type metadata accessor for BehaviorFeaturizer();
    v91[3] = v36;
    v91[4] = &off_1F43E41D8;
    v91[0] = v38;

    v41 = sub_1C4601538(v39, v91);
    v90[3] = v36;
    v90[4] = &off_1F43E41D8;
    v90[0] = v38;

    v42 = v79;
    sub_1C45EA370(v90, v91);
    sub_1C440962C(v90);
    sub_1C45ED17C();
    v43 = sub_1C43FBE94();
    v91[8] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(v43);
    v91[5] = v42;
    v91[13] = v40;
    v91[14] = &off_1F43E2F70;
    v91[9] = &off_1F43E2510;
    v91[10] = v41;
    v44 = v81;
    sub_1C4EFDA78();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C4423BDC();
    sub_1C45FE940(v45, v46);
    if (v48 != 0xFF)
    {
      v49 = v48;
      v85 = v47;
      v50 = v82;
      v51 = v80;
      v52 = v83;
      (*(v82 + 104))(v80, *MEMORY[0x1E69A9450], v83);
      sub_1C4426C2C();
      sub_1C496CC38(v53, v54, MEMORY[0x1E69A9490]);
      sub_1C4410CBC();
      v55 = sub_1C4F010B8();
      v56 = v51;
      v57 = *(v50 + 8);
      v57(v56, v52);
      if ((v55 & 1) == 0)
      {
        v65 = v85;
        sub_1C47EB1E4(v85, v49, v44, v58, v59, v60, v61, v62, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
        v84 = v66;
        sub_1C496C608(v65, v49);
        v85 = objc_autoreleasePoolPush();
        v67 = sub_1C4EF93D8();
        sub_1C44099C4(v67);
        sub_1C4EF93C8();
        v90[0] = v84;
        sub_1C456902C(&qword_1EC0BFD70, &qword_1C4F3DA00);
        sub_1C496C61C();
        sub_1C4EF93B8();

        v68 = sub_1C43FD024();
        sub_1C44344B8(v68, v69);
        sub_1C43FD024();
        sub_1C4401E10();
        v70();
        v71 = sub_1C43FD024();
        sub_1C4434000(v71, v72);
        v73 = sub_1C43FD024();
        sub_1C4434000(v73, v74);
        objc_autoreleasePoolPop(v85);
        sub_1C44167A4();

        sub_1C445BF78();
        v76 = sub_1C44BBE20();
        (v57)(v76);
        goto LABEL_19;
      }

      sub_1C496C608(v85, v49);
    }

    sub_1C440722C();
    sub_1C4401E10();
    v63();
    sub_1C44167A4();

    sub_1C445BF78();
    (*(v82 + 8))(v44, v83);
LABEL_19:
    sub_1C496C5B4(v91);
    sub_1C43FE9F0();
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1C4965B50(void (*a1)(void *), uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v112 = a6;
  LODWORD(v113) = a4;
  v114 = a3;
  v116 = a1;
  v117 = a2;
  v119 = type metadata accessor for PhotosPersonObservation(0);
  v106 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v110 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v109 = &v100 - v8;
  v9 = sub_1C4EF9378();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AssetPersonMetadata(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BFD88, &qword_1C4F3DA08);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  v20 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v118 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v100 - v23;
  v108 = sub_1C456902C(&qword_1EC0BFD90, &qword_1C4F3DA18);
  MEMORY[0x1EEE9AC00](v108);
  v121 = &v100 - v24;
  v25 = sub_1C4EF9CD8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v115 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - v29;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1C4F00978();
  v32 = sub_1C442B738(v31, qword_1EDDFECB8);
  v33 = *(v26 + 16);
  v33(v30, v116, v25);
  v33(v115, v117, v25);
  v111 = v32;
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CF8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    LODWORD(v104) = v35;
    v37 = v36;
    v105 = swift_slowAlloc();
    v124[0] = v105;
    *v37 = 136315650;
    v102 = sub_1C496CC38(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v103 = v34;
    v38 = sub_1C4F02858();
    v40 = v39;
    v101 = *(v26 + 8);
    v101(v30, v25);
    v41 = sub_1C441D828(v38, v40, v124);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v42 = v115;
    v43 = sub_1C4F02858();
    v45 = v44;
    v101(v42, v25);
    v46 = sub_1C441D828(v43, v45, v124);

    *(v37 + 14) = v46;
    *(v37 + 22) = 1024;
    v47 = v113;
    *(v37 + 24) = v113 & 1;
    v48 = v103;
    _os_log_impl(&dword_1C43F8000, v103, v104, "InternalXPC: PhotosMetadata [startDate=%s, endDate = %s, newestFirst= %{BOOL}d", v37, 0x1Cu);
    v49 = v105;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v49, -1, -1);
    MEMORY[0x1C6942830](v37, -1, -1);
  }

  else
  {

    v50 = *(v26 + 8);
    v50(v115, v25);
    v50(v30, v25);
    v47 = v113;
  }

  type metadata accessor for PhotosMetadataFetcher();
  inited = swift_initStackObject();
  sub_1C4AB0D2C(v116, v117, v114, v47 & 1, v124);
  v105 = inited;
  v114 = 0;
  v52 = v124[1];
  v53 = v124[2];
  v54 = v124[3];
  v55 = v124[4];
  v56 = v124[0];

  v57 = v121;
  v113 = v56;
  sub_1C4EFFAB8();
  v58 = (v57 + *(sub_1C456902C(&qword_1EC0BFD98, &qword_1C4F3DA20) + 44));
  v116 = v52;
  v117 = v53;
  *v58 = v52;
  v58[1] = v53;
  v59 = 0;
  v60 = (v57 + *(sub_1C456902C(&qword_1EC0BFDA0, &unk_1C4F3DA28) + 44));
  *v60 = v54;
  v60[1] = v55;
  v61 = (v57 + *(v108 + 44));
  v115 = MEMORY[0x1E69E7CC0];
  *v61 = 0;
  for (v61[1] = 0; ; v61[1] = 0)
  {
    while (1)
    {
      if (!v59)
      {
        goto LABEL_10;
      }

      v62 = *(v59 + 16);
      v63 = v61[1];
      if (v63 == v62)
      {
        break;
      }

      if (v63 >= v62)
      {
        __break(1u);
        return;
      }

      v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v104 = *(v106 + 72);
      v67 = v59 + v108 + v104 * v63;
      v68 = v118;
      sub_1C496C838(v67, v118);
      v61[1] = v63 + 1;
      v69 = v119;
      sub_1C440BAA8(v68, 0, 1, v119);
      v70 = v68;
      v71 = v120;
      sub_1C44CDA30(v70, v120, &qword_1EC0C2C00, &qword_1C4F3DA10);
      if (sub_1C44157D4(v71, 1, v69) == 1)
      {
        goto LABEL_25;
      }

      v72 = v109;
      sub_1C496C7A8(v71, v109);
      sub_1C496C838(v72, v110);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E278(0, *(v115 + 2) + 1, 1, v115);
        v115 = v78;
      }

      v73 = v108;
      v75 = *(v115 + 2);
      v74 = *(v115 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v108 = v75 + 1;
        sub_1C458E278(v74 > 1, v75 + 1, 1, v115);
        v76 = v108;
        v115 = v79;
      }

      v77 = v115;
      *(v115 + 2) = v76;
      sub_1C496C7A8(v110, &v77[v73 + v75 * v104]);
      sub_1C4453F54();
      v59 = *v61;
    }

    v64 = v118;
    sub_1C440BAA8(v118, 1, 1, v119);
    sub_1C4420C3C(v64, &qword_1EC0C2C00, &qword_1C4F3DA10);
LABEL_10:
    sub_1C4EFFA98();
    if (v123[3])
    {
      sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
      if (swift_dynamicCast())
      {
        v65 = v122;
        v123[0] = v122;
        v116(v123);

        sub_1C440BAA8(v19, 0, 1, v11);
        v66 = v120;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C4420C3C(v123, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    v66 = v120;
    sub_1C440BAA8(v19, 1, 1, v11);
LABEL_15:
    sub_1C44CDA30(v19, v16, &qword_1EC0BFD88, &qword_1C4F3DA08);
    if (sub_1C44157D4(v16, 1, v11) == 1)
    {
      break;
    }

    sub_1C496C7A8(v16, v13);
    v54(v123, v13);
    sub_1C4453F54();
    v59 = v123[0];

    *v61 = v59;
  }

  sub_1C440BAA8(v66, 1, 1, v119);
LABEL_25:
  sub_1C4420C3C(v121, &qword_1EC0BFD90, &qword_1C4F3DA18);

  v80 = objc_autoreleasePoolPush();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v124[0] = v115;
  sub_1C456902C(&qword_1EC0BFDA8, &qword_1C4F3DA38);
  sub_1C496C6F4();
  v81 = v114;
  v82 = sub_1C4EF93B8();
  if (v81)
  {
    v84 = v81;

    objc_autoreleasePoolPop(v80);

    v85 = v112;
    v86 = v81;
    v87 = sub_1C4F00968();
    v88 = sub_1C4F01CD8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v124[0] = v90;
      *v89 = 136315138;
      v123[0] = v84;
      v91 = v84;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v92 = sub_1C4F01198();
      v94 = sub_1C441D828(v92, v93, v124);

      *(v89 + 4) = v94;
      _os_log_impl(&dword_1C43F8000, v87, v88, "InternalXPC: PhotosMetadata failed: %s", v89, 0xCu);
      sub_1C440962C(v90);
      MEMORY[0x1C6942830](v90, -1, -1);
      MEMORY[0x1C6942830](v89, -1, -1);
    }

    v95 = v84;
    v96 = sub_1C4EF9798();
    (v85)[2](v85, 0, v96);
  }

  else
  {
    v97 = v82;
    v98 = v83;

    sub_1C44344B8(v97, v98);
    v99 = sub_1C4EF9A38();
    v85 = v112;
    (*(v112 + 16))(v112, v99, 0);

    sub_1C4434000(v97, v98);
    sub_1C4434000(v97, v98);

    objc_autoreleasePoolPop(v80);
  }

  _Block_release(v85);
}

void InternalXPC.Server.photosMetadata(withStart:end:maxEvents:newestFirst:completion:)()
{
  sub_1C43FBD3C();
  v129 = v3;
  v130 = v4;
  LODWORD(v131) = v5;
  v132 = v6;
  v134 = v7;
  v135 = v8;
  v137 = type metadata accessor for PhotosPersonObservation(0);
  sub_1C43FCDF8();
  v123 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  sub_1C43FCE30(v12);
  v13 = sub_1C4EF9378();
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C43FCE30(v16 - v15);
  v17 = type metadata accessor for AssetPersonMetadata(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v19 = sub_1C456902C(&qword_1EC0BFD88, &qword_1C4F3DA08);
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C447F150();
  v22 = sub_1C456902C(&qword_1EC0C2C00, &qword_1C4F3DA10);
  v23 = sub_1C43FBD18(v22);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v136 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  sub_1C43FCE30(v26);
  v124 = sub_1C456902C(&qword_1EC0BFD90, &qword_1C4F3DA18);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  v138 = v119 - v28;
  v29 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v133 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v119 - v35;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v37 = sub_1C4F00978();
  v38 = sub_1C442B738(v37, qword_1EDDFECB8);
  v39 = *(v31 + 16);
  v39(v36, v134, v29);
  v39(v133, v135, v29);
  v128 = v38;
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CF8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v121 = v40;
    v43 = v42;
    v122 = sub_1C43FC11C();
    v141[0] = v122;
    *v43 = 136315650;
    sub_1C4411EF4();
    v119[1] = sub_1C496CC38(v44, v45, MEMORY[0x1E6969570]);
    v120 = v41;
    v46 = sub_1C4F02858();
    v119[0] = *(v31 + 8);
    v47 = sub_1C443DF7C();
    v48(v47);
    v49 = sub_1C4410428();
    sub_1C441D828(v49, v50, v51);
    sub_1C43FCFC0();

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    v52 = sub_1C4F02858();
    v53 = sub_1C443DF7C();
    (v119[0])(v53);
    v54 = sub_1C4410428();
    sub_1C441D828(v54, v55, v56);
    sub_1C43FCFC0();

    *(v43 + 14) = v52;
    *(v43 + 22) = 1024;
    v57 = v131;
    *(v43 + 24) = v131 & 1;
    v58 = v121;
    _os_log_impl(&dword_1C43F8000, v121, v120, "InternalXPC: PhotosMetadata [startDate=%s, endDate = %s, newestFirst= %{BOOL}d", v43, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }

  else
  {

    v59 = *(v31 + 8);
    v59(v133, v29);
    v60 = sub_1C443DF7C();
    (v59)(v60);
    v57 = v131;
  }

  type metadata accessor for PhotosMetadataFetcher();
  inited = swift_initStackObject();
  sub_1C4AB0D2C(v134, v135, v132, v57 & 1, v141);
  v133 = 0;
  v122 = inited;
  v62 = v141[1];
  v64 = v141[2];
  v63 = v141[3];
  v65 = v141[4];
  v66 = v141[0];

  v67 = v138;
  v131 = v66;
  sub_1C4EFFAB8();
  v68 = (v67 + *(sub_1C456902C(&qword_1EC0BFD98, &qword_1C4F3DA20) + 44));
  v134 = v62;
  v135 = v64;
  *v68 = v62;
  v68[1] = v64;
  v69 = 0;
  v70 = (v67 + *(sub_1C456902C(&qword_1EC0BFDA0, &unk_1C4F3DA28) + 44));
  *v70 = v63;
  v70[1] = v65;
  sub_1C44167A4();
  v72 = (v67 + *(v71 + 44));
  v132 = MEMORY[0x1E69E7CC0];
  *v72 = 0;
  v72[1] = 0;
  v73 = v127;
  while (1)
  {
    while (1)
    {
      if (!v69)
      {
        goto LABEL_10;
      }

      v74 = *(v69 + 16);
      v75 = v72[1];
      if (v75 == v74)
      {
        break;
      }

      if (v75 >= v74)
      {
        __break(1u);
        return;
      }

      v124 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v121 = *(v123 + 72);
      sub_1C443FD38();
      v86 = v136;
      sub_1C496C838(v87, v136);
      v72[1] = v75 + 1;
      v88 = v137;
      sub_1C440BAA8(v86, 0, 1, v137);
      v89 = v86;
      v73 = v127;
      sub_1C44CDA30(v89, v127, &qword_1EC0C2C00, &qword_1C4F3DA10);
      sub_1C440175C(v73, 1, v88);
      if (v85)
      {
        goto LABEL_25;
      }

      sub_1C4416188();
      v90 = v125;
      sub_1C496C7A8(v73, v125);
      sub_1C443FD38();
      sub_1C496C838(v90, v126);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E278(0, v132[2] + 1, 1, v132);
        v132 = v94;
      }

      v92 = v132[2];
      v91 = v132[3];
      if (v92 >= v91 >> 1)
      {
        sub_1C458E278(v91 > 1, v92 + 1, 1, v132);
        v132 = v95;
      }

      v132[2] = v92 + 1;
      sub_1C4416188();
      sub_1C496C7A8(v126, v93);
      sub_1C4453F54();
      v69 = *v72;
    }

    v76 = v136;
    v77 = sub_1C440EF74();
    sub_1C440BAA8(v77, v78, 1, v79);
    sub_1C4420C3C(v76, &qword_1EC0C2C00, &qword_1C4F3DA10);
LABEL_10:
    sub_1C4EFFA98();
    if (v140[3])
    {
      sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
      if (swift_dynamicCast())
      {
        v80 = v139;
        v140[0] = v139;
        v134(v140);

        v81 = v2;
        v82 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C4420C3C(v140, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }

    v81 = v2;
    v82 = 1;
LABEL_15:
    sub_1C440BAA8(v81, v82, 1, v17);
    v83 = sub_1C4410CBC();
    sub_1C44CDA30(v83, v84, &qword_1EC0BFD88, &qword_1C4F3DA08);
    sub_1C440175C(v0, 1, v17);
    if (v85)
    {
      break;
    }

    sub_1C496C7A8(v0, v1);
    v63(v140, v1);
    sub_1C4453F54();
    v69 = v140[0];

    *v72 = v69;
    v72[1] = 0;
  }

  sub_1C440BAA8(v73, 1, 1, v137);
LABEL_25:
  sub_1C4420C3C(v138, &qword_1EC0BFD90, &qword_1C4F3DA18);

  v96 = objc_autoreleasePoolPush();
  sub_1C4403FC0();
  v97 = sub_1C4EF93D8();
  sub_1C44099C4(v97);
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v141[0] = v132;
  sub_1C456902C(&qword_1EC0BFDA8, &qword_1C4F3DA38);
  sub_1C496C6F4();
  v98 = v133;
  sub_1C4EF93B8();
  if (v98)
  {
    v99 = v98;

    objc_autoreleasePoolPop(v63);

    v100 = v98;
    v101 = sub_1C4F00968();
    v102 = sub_1C4F01CD8();

    if (sub_1C43FD09C())
    {
      v103 = sub_1C43FD084();
      v104 = sub_1C43FFD34();
      v141[0] = v104;
      *v103 = 136315138;
      v140[0] = v99;
      v105 = v99;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v106 = sub_1C4F01198();
      v108 = sub_1C441D828(v106, v107, v141);

      *(v103 + 4) = v108;
      _os_log_impl(&dword_1C43F8000, v101, v102, "InternalXPC: PhotosMetadata failed: %s", v103, 0xCu);
      sub_1C440962C(v104);
      sub_1C4412D04();
      sub_1C43FBE2C();
    }

    v109 = v130;
    v110 = v99;
    v111 = sub_1C440722C();
    v109(v111);
  }

  else
  {

    v112 = sub_1C43FD2BC();
    sub_1C44344B8(v112, v113);
    v114 = sub_1C43FD2BC();
    v130(v114);
    v115 = sub_1C43FD2BC();
    sub_1C4434000(v115, v116);
    v117 = sub_1C43FD2BC();
    sub_1C4434000(v117, v118);

    objc_autoreleasePoolPop(v63);
  }

  sub_1C43FE9F0();
}

uint64_t InternalXPC.Server.behaviorUnderstandingEvaluate(forBehaviorType:queryName:inferenceServiceInstanceId:)()
{
  sub_1C43FBCD4();
  v0[103] = v1;
  v0[102] = v2;
  v0[101] = v3;
  v0[100] = v4;
  v0[99] = v5;
  v0[98] = v6;
  v7 = sub_1C4EFDAB8();
  v0[104] = v7;
  v0[105] = *(v7 - 8);
  v0[106] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v8);
  v0[107] = sub_1C43FE604();
  v0[108] = swift_task_alloc();
  v9 = sub_1C4EF9CD8();
  v0[109] = v9;
  v0[110] = *(v9 - 8);
  v0[111] = sub_1C43FE604();
  v0[112] = swift_task_alloc();
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v10 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[115] = v10;
  sub_1C43FBD18(v10);
  v0[116] = sub_1C43FBE7C();
  v11 = type metadata accessor for Configuration(0);
  v0[117] = v11;
  sub_1C43FBD18(v11);
  v0[118] = sub_1C43FE604();
  v0[119] = swift_task_alloc();
  v0[120] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C4967740()
{
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  *(v0 + 968) = v1;
  sub_1C442B738(v1, qword_1EDE2DCD8);
  sub_1C4404CE0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C440F274();
    sub_1C43FC11C();
    *v4 = 136315394;
    v5 = sub_1C43FD018();
    *(v4 + 4) = sub_1C441D828(v5, v6, v7);
    *(v4 + 12) = 2080;
    v8 = sub_1C43FE5F8();
    *(v4 + 14) = sub_1C441D828(v8, v9, v10);
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: Behavior Understanding evaluate [behaviorType=%s, inferenceServiceInstanceId=%s]", v4, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v11 = *(v0 + 936);
  v12 = *(v0 + 928);
  v13 = sub_1C442B738(*(v0 + 920), qword_1EDDEBB90);
  sub_1C440D164(v13, v0 + 760);
  sub_1C4460108(v13, v12, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v14 = sub_1C44033D8();
  result = sub_1C440175C(v14, v15, v11);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    sub_1C496C7A8(v18, v19);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    *(v0 + 976) = sub_1C44E7FAC();
    sub_1C4BF8774(0xD000000000000021, 0x80000001C4F85FC0, (v0 + 448));
    v20 = *(v0 + 464);
    *(v0 + 384) = *(v0 + 448);
    *(v0 + 400) = v20;
    v21 = *(v0 + 496);
    *(v0 + 416) = *(v0 + 480);
    *(v0 + 432) = v21;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = swift_task_alloc();
    *(v0 + 984) = v22;
    *v22 = v0;
    v22[1] = sub_1C4967B0C;
    v23 = *(v0 + 824);
    v24 = *(v0 + 816);

    return sub_1C470CF78(v24, v23, 0.5);
  }

  return result;
}

uint64_t sub_1C4967B0C()
{
  sub_1C43FBCD4();
  v2 = *v1;
  v2[124] = v3;
  v2[125] = v4;
  v2[126] = v5;
  v2[127] = v6;
  v2[128] = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4967C28()
{
  v108 = v0;
  v1 = *(v0 + 864);
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 384;
  sub_1C49A54C8(sub_1C496C800, v2);

  sub_1C440582C(v1);
  if (v3)
  {
    v4 = (v0 + 864);
LABEL_6:
    sub_1C4420C3C(*v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v10 = sub_1C450B034();
    sub_1C43FFB2C(&unk_1F44064D8, v10);
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x80000001C4FAA630;
    *(v11 + 16) = 0xD000000000000036;
    *(v11 + 24) = 0x80000001C4FAA650;
    v12 = v107[1];
    *(v11 + 32) = v107[0];
    *(v11 + 48) = v12;
    *(v11 + 64) = 7;
    swift_willThrow();

    sub_1C494A39C(v0 + 448);

    sub_1C4419A54();
    sub_1C4453F54();
LABEL_7:
    sub_1C441D26C();

    sub_1C43FBDA0();

    return v13();
  }

  v5 = *(v0 + 872);
  v6 = *(v0 + 856);
  v7 = *(*(v0 + 880) + 32);
  v7(*(v0 + 912), *(v0 + 864), v5);
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 384;
  sub_1C49A54C8(sub_1C496C81C, v8);

  v9 = sub_1C44157D4(v6, 1, v5);
  if (v9 == 1)
  {
    v4 = (v0 + 856);
    (*(*(v0 + 880) + 8))(*(v0 + 912), *(v0 + 872));
    goto LABEL_6;
  }

  v7(*(v0 + 904), *(v0 + 856), *(v0 + 872));
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728(&qword_1EDDFA668);
  }

  v15 = *(v0 + 912);
  v16 = *(v0 + 904);
  v17 = *(v0 + 896);
  v18 = *(v0 + 888);
  v19 = *(v0 + 880);
  v20 = *(v0 + 872);
  sub_1C442B738(*(v0 + 968), qword_1EDE2DDE0);
  v21 = *(v19 + 16);
  v21(v17, v15, v20);
  v21(v18, v16, v20);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 896);
  v26 = *(v0 + 880);
  v27 = *(v0 + 872);
  if (v24)
  {
    v98 = v23;
    v28 = sub_1C440F274();
    *&v107[0] = sub_1C43FC11C();
    *v28 = 136315394;
    sub_1C4411EF4();
    sub_1C496CC38(v29, v30, MEMORY[0x1E6969570]);
    sub_1C43FC0A8();
    v31 = sub_1C4F02858();
    v33 = v32;
    log = v22;
    v34 = *(v26 + 8);
    v34(v25, v27);
    sub_1C441D828(v31, v33, v107);
    sub_1C441D28C();

    *(v28 + 4) = v25;
    *(v28 + 12) = 2080;
    sub_1C43FC0A8();
    v35 = sub_1C4F02858();
    v37 = v36;
    v38 = sub_1C43FD018();
    v103 = v34;
    (v34)(v38);
    sub_1C441D828(v35, v37, v107);
    sub_1C441D28C();

    *(v28 + 14) = v35;
    _os_log_impl(&dword_1C43F8000, log, v98, "InternalXPC: Behavior Understanding evaluate - Producing evaluation metrics between %s and %s", v28, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FEA20();
  }

  else
  {

    v39 = *(v26 + 8);
    v40 = sub_1C43FD018();
    v39(v40);
    v103 = v39;
    (v39)(v25, v27);
  }

  v105 = *(v0 + 1024);
  v41 = *(v0 + 1016);
  v42 = *(v0 + 1008);
  v43 = *(v0 + 1000);
  v44 = *(v0 + 992);
  v45 = *(v0 + 960);
  v46 = *(v0 + 944);
  sub_1C496C838(v45, *(v0 + 952));
  *(v0 + 664) = &type metadata for EntityRelevanceMLModel;
  *(v0 + 672) = &off_1F43E9B30;
  sub_1C4434164();
  v47 = swift_allocObject();
  *(v0 + 640) = v47;
  v47[2] = v44;
  v47[3] = v43;
  v47[4] = v42;
  v47[5] = v41;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFDA78();
  sub_1C496C838(v45, v46);
  v48 = type metadata accessor for KeyValueStore(0);
  sub_1C44099C4(v48);
  sub_1C440C5A0();
  v52 = KeyValueStore.init(config:domain:)(v49, v50, v51);
  if (v105)
  {
    v101 = *(v0 + 912);
    v53 = *(v0 + 872);
    v54 = *(v0 + 848);
    v55 = *(v0 + 840);
    v56 = *(v0 + 832);

    sub_1C494A39C(v0 + 448);

    (*(v55 + 8))(v54, v56);
    sub_1C4453F54();
    v57 = sub_1C43FC0A8();
    v103(v57);
    (v103)(v101, v53);
    sub_1C4453F54();
    sub_1C440962C((v0 + 640));
    goto LABEL_7;
  }

  v58 = *(v0 + 952);
  v99 = *(v0 + 848);
  v59 = *(v0 + 840);
  v106 = v52;
  v60 = *(v0 + 832);
  v61 = *(v0 + 808);
  v104 = *(v0 + 800);
  sub_1C4EF9B78();
  v63 = v62;
  sub_1C4418280(v0 + 640, *(v0 + 664));
  sub_1C43FCE64();
  v65 = v64;
  v66 = sub_1C43FBE7C();
  *(v0 + 1032) = v66;
  (*(v65 + 16))();
  v67 = *v66;
  v68 = v66[1];
  v69 = v66[2];
  v70 = v66[3];
  v71 = type metadata accessor for EntityRelevanceEvaluationTaskManager(0);
  v72 = sub_1C44099C4(v71);
  *(v0 + 1040) = v72;
  *(v0 + 704) = &type metadata for EntityRelevanceMLModel;
  *(v0 + 712) = &off_1F43E9B30;
  sub_1C4434164();
  v73 = swift_allocObject();
  *(v0 + 680) = v73;
  v73[2] = v67;
  v73[3] = v68;
  v73[4] = v69;
  v73[5] = v70;
  v74 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name);
  *v74 = 0xD000000000000024;
  v74[1] = 0x80000001C4FAA690;
  v75 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  *v75 = 0;
  v75[1] = 0;
  v76 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  *v76 = 0;
  v76[1] = 0;
  sub_1C442CCA0();
  sub_1C496C838(v58, v72 + v77);
  sub_1C442E860(v0 + 680, v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model);
  (*(v59 + 16))(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v99, v60);
  v78 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  v79 = *(v0 + 400);
  *v78 = *(v0 + 384);
  v78[1] = v79;
  v80 = *(v0 + 432);
  v78[2] = *(v0 + 416);
  v78[3] = v80;
  *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_kvStore) = v106;
  *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_sampleIntervalLength) = 0x4072C00000000000;
  v81 = (v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
  *v81 = v104;
  v81[1] = v61;
  *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration) = v63;
  sub_1C442E860(v0 + 680, v0 + 720);
  sub_1C494A340(v0 + 448, v0 + 512);
  sub_1C494A340(v0 + 448, v0 + 576);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v82 = sub_1C4F00968();
  v83 = sub_1C4F01CB8();
  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v0 + 848);
  v86 = *(v0 + 840);
  v102 = *(v0 + 832);
  if (v84)
  {
    v87 = sub_1C43FD084();
    v88 = sub_1C43FFD34();
    *&v107[0] = v88;
    *v87 = 136315138;
    v89 = sub_1C4409678((v0 + 720), *(v0 + 744));
    v100 = v85;
    v91 = v89[2];
    v90 = v89[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C((v0 + 720));
    v92 = sub_1C441D828(v91, v90, v107);

    *(v87 + 4) = v92;
    _os_log_impl(&dword_1C43F8000, v82, v83, "Evaluating '%s'", v87, 0xCu);
    sub_1C440962C(v88);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    sub_1C494A39C(v0 + 448);

    (*(v86 + 8))(v100, v102);
    sub_1C4419A54();
    sub_1C4453F54();
    v93 = (v0 + 680);
  }

  else
  {

    sub_1C494A39C(v0 + 448);

    (*(v86 + 8))(v85, v102);
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C440962C((v0 + 680));
    v93 = (v0 + 720);
  }

  sub_1C440962C(v93);
  v94 = *(v0 + 904);
  sub_1C440962C((v0 + 640));
  *(v0 + 1048) = sub_1C46F14C4(v94);
  *(v0 + 1056) = v95;
  v96 = swift_task_alloc();
  *(v0 + 1064) = v96;
  *v96 = v0;
  v96[1] = sub_1C4968804;

  return sub_1C45F653C();
}

uint64_t sub_1C4968804()
{
  sub_1C43FBCD4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 1072) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4968908()
{
  sub_1C456902C(qword_1EC0BB890, &qword_1C4F21738);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v0 + 912);
    v16 = *(v0 + 904);
    v3 = *(v0 + 880);
    v4 = *(v0 + 872);
    v5 = *(v1 + *(*v1 + 128));
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1C46F52FC(v5, (v0 + 16));
    v17 = sub_1C46F54F8();

    swift_setDeallocating();
    sub_1C46F2440();
    sub_1C443E368();
    swift_deallocClassInstance();
    swift_unknownObjectRelease_n();

    sub_1C494A39C(v0 + 448);

    v6 = *(v3 + 8);
    v6(v16, v4);
    v6(v2, v4);
    sub_1C4419A54();
    sub_1C4453F54();

    v7 = *(v0 + 8);

    return v7(v17);
  }

  else
  {
    v18 = *(v0 + 912);
    v9 = *(v0 + 904);
    v10 = *(v0 + 880);
    v11 = *(v0 + 872);
    v12 = sub_1C496C890();
    sub_1C43FFB2C(&_s39BehaviorUnderstandingEvaluationXPCErrorON, v12);
    *v13 = 0;
    swift_willThrow();

    swift_setDeallocating();
    sub_1C46F2440();
    sub_1C443E368();
    swift_deallocClassInstance();
    swift_unknownObjectRelease();

    sub_1C494A39C(v0 + 448);

    v14 = *(v10 + 8);
    v14(v9, v11);
    v14(v18, v11);
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C441D26C();

    sub_1C43FBDA0();

    return v15();
  }
}

uint64_t sub_1C4968D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();

  sub_1C494A39C(v14 + 448);
  sub_1C4419A54();
  sub_1C4453F54();
  sub_1C4405D84();
  v25 = *(v14 + 848);
  v26 = v15;

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_1C4968E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1C4405098();
  v29 = v14[114];
  v15 = v14[110];
  v16 = v14[109];

  swift_setDeallocating();
  sub_1C46F2440();
  sub_1C443E368();
  swift_deallocClassInstance();

  swift_unknownObjectRelease();

  sub_1C494A39C((v14 + 56));

  v17 = *(v15 + 8);
  v18 = sub_1C43FE5F8();
  v17(v18);
  (v17)(v29, v16);
  sub_1C4419A54();
  sub_1C4453F54();
  sub_1C4405D84();
  v30 = v14[106];
  v31 = v19;

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_1C496904C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v5[4] = v8;
  if (a2)
  {
    sub_1C4F01138();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v5[5] = v10;
  sub_1C4F01138();
  v5[6] = v11;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1C4969178;

  return InternalXPC.Server.behaviorUnderstandingEvaluate(forBehaviorType:queryName:inferenceServiceInstanceId:)();
}

uint64_t sub_1C4969178(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  sub_1C43FBDAC();
  *v6 = v5;
  v7 = *(v4 + 16);
  v8 = *v2;
  *v6 = *v2;

  if (v3)
  {
    v9 = sub_1C4EF9798();

    v10 = v9;
  }

  else
  {
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    v11 = sub_1C4F00EC8();

    v10 = v11;
  }

  v12 = *(v5 + 24);
  v13 = sub_1C4410428();
  v14(v13);

  _Block_release(v12);
  v15 = *(v8 + 8);

  return v15();
}

void sub_1C496937C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v32 = a1;
  v6 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v21 = sub_1C442B738(v9, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v21, v11, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C496C7A8(v11, v20);
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    sub_1C44E7FAC();
    sub_1C4C0C2D8(0xD000000000000013, 0x80000001C4F85FF0, &v33);
    v27 = v35;
    v28 = v33;
    v29 = v36;
    v30 = v34;
    v31 = v37;
    sub_1C496C838(v20, v17);
    type metadata accessor for KeyValueStore(0);
    swift_allocObject();
    v22 = KeyValueStore.init(config:domain:)(v17, 0x6154797469746E45, 0xED0000676E696767);
    v23 = v28;
    v28 = v22;
    v33 = v23;
    v34 = v30;
    v35 = v27;
    v36 = v29;
    v37 = v31;
    sub_1C496C838(v20, v14);
    type metadata accessor for EntityTaggingPersonDataCollectionTask(0);
    v27 = swift_allocObject();
    v24 = v28;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C472C094(&v33, v14, 0x61536C6F6F545049, 0xEC000000656C706DLL, 0, 0xE000000000000000, v24);
    sub_1C472C460(v32, a2, 1, 1, v8);
    sub_1C496CC38(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection, &unk_1C4F23FEC);
    sub_1C4F00428();
    v25 = sub_1C4F01108();
    (a4)[2](a4, v25, 0);

    sub_1C4453F54();
    sub_1C4453F54();
    _Block_release(a4);
  }
}

void InternalXPC.Server.behaviorUnderstandingSampleEntityTaggingFeatures(forPersonID:completion:)()
{
  sub_1C43FBD3C();
  v34 = v3;
  type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C4469198();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C447F150();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v14 = sub_1C442B738(v5, qword_1EDDEBB90);
  sub_1C440D164(v14, &v40);
  sub_1C4460108(v14, v0, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v15 = sub_1C440EF74();
  sub_1C440175C(v15, v16, v7);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    sub_1C496C7A8(v0, v2);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    sub_1C44E7FAC();
    sub_1C4C0C2D8(0xD000000000000013, 0x80000001C4F85FF0, &v35);
    v28 = v37;
    v29 = v35;
    v31 = v38;
    v32 = v36;
    v33 = v39;
    sub_1C442CCA0();
    v18 = sub_1C4410CBC();
    sub_1C496C838(v18, v19);
    v20 = type metadata accessor for KeyValueStore(0);
    sub_1C44099C4(v20);
    v21 = KeyValueStore.init(config:domain:)(v1, 0x6154797469746E45, 0xED0000676E696767);
    v22 = v29;
    v30 = v21;
    v35 = v22;
    v36 = v32;
    v37 = v28;
    v38 = v31;
    v39 = v33;
    sub_1C442CCA0();
    sub_1C496C838(v2, v11);
    v23 = type metadata accessor for EntityTaggingPersonDataCollectionTask(0);
    sub_1C44099C4(v23);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C472C094(&v35, v11, 0x61536C6F6F545049, 0xEC000000656C706DLL, 0, 0xE000000000000000, v30);
    v24 = sub_1C43FE5F8();
    sub_1C472C460(v24, v25, 1, 1, v26);
    sub_1C496CC38(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection, &unk_1C4F23FEC);
    v27 = sub_1C4F00428();
    v34(v27);

    sub_1C4453F54();
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C43FE9F0();
  }
}

uint64_t InternalXPC.Server.behaviorUnderstandingMockEntityRelevanceContext(with:)()
{
  sub_1C43FBCD4();
  v0[5] = v1;
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v0[6] = v2;
  sub_1C43FBD18(v2);
  v0[7] = sub_1C43FE604();
  v0[8] = swift_task_alloc();
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[9] = v3;
  sub_1C43FBD18(v3);
  v0[10] = sub_1C43FBE7C();
  v4 = type metadata accessor for Configuration(0);
  v0[11] = v4;
  sub_1C43FBD18(v4);
  v0[12] = sub_1C43FE604();
  v0[13] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C496A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v25 = v22[10];
  v26 = v22[11];
  v27 = sub_1C442B738(v22[9], qword_1EDDEBB90);
  sub_1C440D164(v27, (v22 + 2));
  sub_1C4460108(v27, v25, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v28 = sub_1C44033D8();
  result = sub_1C440175C(v28, v29, v26);
  if (v31)
  {
    __break(1u);
  }

  else
  {
    v32 = v22[12];
    v33 = v22[13];
    sub_1C440AD08();
    sub_1C496C7A8(v34, v33);
    sub_1C442CCA0();
    sub_1C496C838(v33, v32);
    v35 = type metadata accessor for KeyValueStore(0);
    sub_1C44099C4(v35);
    sub_1C440C5A0();
    KeyValueStore.init(config:domain:)(v36, v37, v38);
    v39 = sub_1C4414254();
    sub_1C495C5C8(v39, v40, v41);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v50 = v22[8];
    v51 = v22[5];
    v52 = sub_1C4F00978();
    sub_1C442B738(v52, qword_1EDE2DDE0);
    sub_1C4460108(v51, v50, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CF8();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v22[13];
    v57 = v22[8];
    if (v55)
    {
      v58 = v22[7];
      v59 = sub_1C43FD084();
      v60 = sub_1C43FFD34();
      a10 = v60;
      *v59 = 136315138;
      sub_1C4460108(v57, v58, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v61 = sub_1C4F01198();
      a9 = v56;
      v63 = v62;
      sub_1C4420C3C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v64 = sub_1C441D828(v61, v63, &a10);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_1C43F8000, v53, v54, "behaviorUnderstandingMockEntityRelevanceContext: Updated mocked context to %s", v59, 0xCu);
      sub_1C440962C(v60);
      sub_1C43FBE2C();
      sub_1C43FFD4C();
    }

    else
    {

      sub_1C4420C3C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    sub_1C4419A54();
    sub_1C4453F54();

    sub_1C43FD0C0();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_1C496A660(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v3[3] = v9;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = swift_task_alloc();
  v3[4] = v10;
  v3[5] = _Block_copy(a2);
  if (a1)
  {
    sub_1C4EF9C78();
    (*(v8 + 32))(v10, v9, v7);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1C440BAA8(v10, v11, 1, v7);
  v12 = a3;
  v13 = swift_task_alloc();
  v3[6] = v13;
  *v13 = v3;
  v13[1] = sub_1C496A814;

  return InternalXPC.Server.behaviorUnderstandingMockEntityRelevanceContext(with:)();
}

uint64_t sub_1C496A814(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[5];
  v10 = v5[2];
  sub_1C4420C3C(v5[4], &unk_1EC0B84E0, qword_1C4F0D2D0);

  if (v3)
  {
    sub_1C4EF9798();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(v6[5]);

  v11 = v8[1];

  return v11();
}

void sub_1C496A9D4(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = type metadata accessor for EntityTaggingInjectedTags(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v12 = sub_1C442B738(v6, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v12, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v8, 1, v9) != 1)
  {
    sub_1C496C7A8(v8, v11);
    sub_1C496C838(v11, v5);
    v13 = sub_1C472B6C4();
    if (v13)
    {
      if (*(v13 + 16))
      {
        sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
        sub_1C4F00EE8();

        v14 = sub_1C4F01108();
        (a2)[2](a2, v14, 0);

LABEL_9:

        sub_1C4453F54();
        sub_1C4453F54();
        _Block_release(a2);
        return;
      }
    }

    v14 = sub_1C4F01108();
    (a2)[2](a2, v14, 0);
    goto LABEL_9;
  }

  __break(1u);
}

void InternalXPC.Server.behaviorUnderstandingShowEntityTaggingInjectedTags(completion:)()
{
  sub_1C43FBD3C();
  v3 = sub_1C4403FC0();
  v4 = type metadata accessor for EntityTaggingInjectedTags(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4469198();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v10 = sub_1C442B738(v6, qword_1EDDEBB90);
  sub_1C4433D44(v10);
  sub_1C4460108(v10, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = sub_1C440EF74();
  sub_1C440175C(v11, v12, v8);
  if (!v13)
  {
    sub_1C440AD08();
    sub_1C496C7A8(v1, v2);
    sub_1C442CCA0();
    v14 = sub_1C43FE5F8();
    sub_1C496C838(v14, v15);
    v16 = sub_1C472B6C4();
    if (v16)
    {
      if (*(v16 + 16))
      {
        sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
        v17 = sub_1C4F00EE8();
        v19 = v18;

        v0(v17, v19, 0);

LABEL_9:
        sub_1C441333C();
        sub_1C4419A54();
        sub_1C4453F54();
        sub_1C43FE9F0();
        return;
      }
    }

    v0(0xD000000000000011, 0x80000001C4FAA6C0, 0);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1C496B294(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = type metadata accessor for EntityTaggingInjectedTags(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v12 = sub_1C442B738(v6, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v12, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    sub_1C496C7A8(v8, v11);
    sub_1C496C838(v11, v5);
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4F00F28();
    sub_1C472B8CC();

    a2[2](a2, 1, 0);
    sub_1C4453F54();
    sub_1C4453F54();
    _Block_release(a2);
  }
}

void InternalXPC.Server.behaviorUnderstandingClearEntityTaggingInjectedTags(completion:)()
{
  sub_1C43FBD3C();
  v3 = sub_1C4403FC0();
  v4 = type metadata accessor for EntityTaggingInjectedTags(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4469198();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v10 = sub_1C442B738(v6, qword_1EDDEBB90);
  sub_1C4433D44(v10);
  sub_1C4460108(v10, v1, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = sub_1C440EF74();
  sub_1C440175C(v11, v12, v8);
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1C440AD08();
    sub_1C496C7A8(v1, v2);
    sub_1C442CCA0();
    v14 = sub_1C43FE5F8();
    sub_1C496C838(v14, v15);
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4F00F28();
    sub_1C472B8CC();

    v16 = sub_1C4416AEC();
    v0(v16);
    sub_1C441333C();
    sub_1C4419A54();
    sub_1C4453F54();
    sub_1C43FE9F0();
  }
}

void sub_1C496BAA0(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1C496BB14(uint64_t a1, void *a2, uint64_t a3, void *a4, Swift::Double a5, uint64_t a6, void (**a7)(void, void, void))
{
  v13 = type metadata accessor for EntityTaggingInjectedTags(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43[-1] - v17;
  v19 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v22 = sub_1C442B738(v16, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C4460108(v22, v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
  if (sub_1C44157D4(v18, 1, v19) == 1)
  {
    _Block_release(a7);
    __break(1u);
  }

  else
  {
    sub_1C496C7A8(v18, v21);
    sub_1C496C838(v21, v15);
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    v24._countAndFlagsBits = a3;
    v24._object = a4;
    EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(v23, v24, a5);
    if (v25)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v26 = sub_1C4F00978();
      sub_1C442B738(v26, qword_1EDDFECB8);
      v27 = v25;
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CD8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v42 = v25;
        v43[0] = v31;
        *v30 = 136315138;
        v32 = v25;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v33 = sub_1C4F01198();
        v35 = sub_1C441D828(v33, v34, v43);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1C43F8000, v28, v29, "InternalXPC: Behavior Understanding tag injection: failed: %s", v30, 0xCu);
        sub_1C440962C(v31);
        MEMORY[0x1C6942830](v31, -1, -1);
        MEMORY[0x1C6942830](v30, -1, -1);
      }

      swift_getErrorValue();
      v36 = sub_1C495CCE0(v43[2], v43[3]);
      v38 = v37;
      sub_1C496C8E4();
      v39 = swift_allocError();
      *v40 = v36;
      *(v40 + 8) = v38;
      *(v40 + 16) = 3;
      v41 = sub_1C4EF9798();
      (a7)[2](a7, 0, v41);
    }

    else
    {
      a7[2](a7, 1, 0);
    }

    sub_1C4453F54();
    sub_1C4453F54();
    _Block_release(a7);
  }
}