uint64_t storeEnumTagSinglePayload for CoreAudioOrchestratorClientXPC.Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2450A5520(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
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

uint64_t sub_2450A556C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2450A5640()
{
  result = qword_27EDF6FA8;
  if (!qword_27EDF6FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6FB0, qword_2450E9568);
    sub_2450A56C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FA8);
  }

  return result;
}

unint64_t sub_2450A56C4()
{
  result = qword_27EDF6FB8;
  if (!qword_27EDF6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FB8);
  }

  return result;
}

unint64_t sub_2450A571C()
{
  result = qword_27EDF6FC0;
  if (!qword_27EDF6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6FB0, qword_2450E9568);
    sub_2450A57A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FC0);
  }

  return result;
}

unint64_t sub_2450A57A0()
{
  result = qword_27EDF6FC8;
  if (!qword_27EDF6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FC8);
  }

  return result;
}

unint64_t sub_2450A5824()
{
  result = qword_27EDF6FD0;
  if (!qword_27EDF6FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6FD8, qword_2450E9590);
    sub_2450A58A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FD0);
  }

  return result;
}

unint64_t sub_2450A58A8()
{
  result = qword_27EDF6FE0;
  if (!qword_27EDF6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FE0);
  }

  return result;
}

unint64_t sub_2450A5900()
{
  result = qword_27EDF6FE8;
  if (!qword_27EDF6FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6FD8, qword_2450E9590);
    sub_2450A5984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FE8);
  }

  return result;
}

unint64_t sub_2450A5984()
{
  result = qword_27EDF6FF0;
  if (!qword_27EDF6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6FF0);
  }

  return result;
}

uint64_t sub_2450A5AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450A5B2C()
{
  result = qword_27EDF7008;
  if (!qword_27EDF7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7008);
  }

  return result;
}

unint64_t sub_2450A5B84()
{
  result = qword_27EDF7010;
  if (!qword_27EDF7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7010);
  }

  return result;
}

unint64_t sub_2450A5BDC()
{
  result = qword_27EDF7018;
  if (!qword_27EDF7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7018);
  }

  return result;
}

unint64_t sub_2450A5C34()
{
  result = qword_27EDF7020;
  if (!qword_27EDF7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7020);
  }

  return result;
}

unint64_t sub_2450A5C8C()
{
  result = qword_27EDF7028;
  if (!qword_27EDF7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7028);
  }

  return result;
}

unint64_t sub_2450A5CE4()
{
  result = qword_27EDF7030;
  if (!qword_27EDF7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7030);
  }

  return result;
}

unint64_t sub_2450A5D3C()
{
  result = qword_27EDF7038;
  if (!qword_27EDF7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7038);
  }

  return result;
}

unint64_t sub_2450A5D94()
{
  result = qword_27EDF7040;
  if (!qword_27EDF7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7040);
  }

  return result;
}

unint64_t sub_2450A5DEC()
{
  result = qword_27EDF7048;
  if (!qword_27EDF7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7048);
  }

  return result;
}

unint64_t sub_2450A5E44()
{
  result = qword_27EDF7050;
  if (!qword_27EDF7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7050);
  }

  return result;
}

unint64_t sub_2450A5E9C()
{
  result = qword_27EDF7058;
  if (!qword_27EDF7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7058);
  }

  return result;
}

unint64_t sub_2450A5EF4()
{
  result = qword_27EDF7060;
  if (!qword_27EDF7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7060);
  }

  return result;
}

unint64_t sub_2450A5F4C()
{
  result = qword_27EDF7068;
  if (!qword_27EDF7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7068);
  }

  return result;
}

unint64_t sub_2450A5FA4()
{
  result = qword_27EDF7070;
  if (!qword_27EDF7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7070);
  }

  return result;
}

unint64_t sub_2450A5FFC()
{
  result = qword_27EDF7078;
  if (!qword_27EDF7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7078);
  }

  return result;
}

unint64_t sub_2450A6054()
{
  result = qword_27EDF7080;
  if (!qword_27EDF7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7080);
  }

  return result;
}

unint64_t sub_2450A60AC()
{
  result = qword_27EDF7088;
  if (!qword_27EDF7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7088);
  }

  return result;
}

unint64_t sub_2450A6104()
{
  result = qword_27EDF7090;
  if (!qword_27EDF7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7090);
  }

  return result;
}

unint64_t sub_2450A615C()
{
  result = qword_27EDF7098;
  if (!qword_27EDF7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7098);
  }

  return result;
}

unint64_t sub_2450A61B4()
{
  result = qword_27EDF70A0;
  if (!qword_27EDF70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70A0);
  }

  return result;
}

unint64_t sub_2450A620C()
{
  result = qword_27EDF70A8;
  if (!qword_27EDF70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70A8);
  }

  return result;
}

unint64_t sub_2450A6264()
{
  result = qword_27EDF70B0;
  if (!qword_27EDF70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70B0);
  }

  return result;
}

unint64_t sub_2450A62BC()
{
  result = qword_27EDF70B8;
  if (!qword_27EDF70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70B8);
  }

  return result;
}

unint64_t sub_2450A6314()
{
  result = qword_27EDF70C0;
  if (!qword_27EDF70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70C0);
  }

  return result;
}

unint64_t sub_2450A636C()
{
  result = qword_27EDF70C8;
  if (!qword_27EDF70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70C8);
  }

  return result;
}

unint64_t sub_2450A63C4()
{
  result = qword_27EDF70D0;
  if (!qword_27EDF70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70D0);
  }

  return result;
}

unint64_t sub_2450A641C()
{
  result = qword_27EDF70D8;
  if (!qword_27EDF70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70D8);
  }

  return result;
}

unint64_t sub_2450A6474()
{
  result = qword_27EDF70E0;
  if (!qword_27EDF70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70E0);
  }

  return result;
}

unint64_t sub_2450A64CC()
{
  result = qword_27EDF70E8;
  if (!qword_27EDF70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70E8);
  }

  return result;
}

unint64_t sub_2450A6524()
{
  result = qword_27EDF70F0;
  if (!qword_27EDF70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70F0);
  }

  return result;
}

unint64_t sub_2450A657C()
{
  result = qword_27EDF70F8;
  if (!qword_27EDF70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF70F8);
  }

  return result;
}

unint64_t sub_2450A65D4()
{
  result = qword_27EDF7100;
  if (!qword_27EDF7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7100);
  }

  return result;
}

unint64_t sub_2450A662C()
{
  result = qword_27EDF7108;
  if (!qword_27EDF7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7108);
  }

  return result;
}

unint64_t sub_2450A6680()
{
  result = qword_27EDF7118;
  if (!qword_27EDF7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7118);
  }

  return result;
}

unint64_t sub_2450A66D4()
{
  result = qword_27EDF7120;
  if (!qword_27EDF7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7120);
  }

  return result;
}

unint64_t sub_2450A6728()
{
  result = qword_27EDF7130;
  if (!qword_27EDF7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7130);
  }

  return result;
}

unint64_t sub_2450A677C()
{
  result = qword_27EDF7140;
  if (!qword_27EDF7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7140);
  }

  return result;
}

unint64_t sub_2450A67D0()
{
  result = qword_27EDF7150;
  if (!qword_27EDF7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7150);
  }

  return result;
}

unint64_t sub_2450A6824()
{
  result = qword_27EDF7170;
  if (!qword_27EDF7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7170);
  }

  return result;
}

unint64_t sub_2450A6878()
{
  result = qword_27EDF7180;
  if (!qword_27EDF7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7180);
  }

  return result;
}

unint64_t sub_2450A68CC()
{
  result = qword_27EDF7198;
  if (!qword_27EDF7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7198);
  }

  return result;
}

uint64_t sub_2450A6920(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7158, &qword_2450EC1F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2450A698C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2450A6A38()
{
  result = qword_27EDF71C8;
  if (!qword_27EDF71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71C8);
  }

  return result;
}

unint64_t sub_2450A6A90()
{
  result = qword_27EDF71D0;
  if (!qword_27EDF71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71D0);
  }

  return result;
}

unint64_t sub_2450A6AE8()
{
  result = qword_27EDF71D8;
  if (!qword_27EDF71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71D8);
  }

  return result;
}

unint64_t sub_2450A6B40()
{
  result = qword_27EDF71E0;
  if (!qword_27EDF71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71E0);
  }

  return result;
}

unint64_t sub_2450A6B98()
{
  result = qword_27EDF71E8;
  if (!qword_27EDF71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71E8);
  }

  return result;
}

unint64_t sub_2450A6BF0()
{
  result = qword_27EDF71F0;
  if (!qword_27EDF71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71F0);
  }

  return result;
}

unint64_t sub_2450A6C48()
{
  result = qword_27EDF71F8;
  if (!qword_27EDF71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF71F8);
  }

  return result;
}

unint64_t sub_2450A6CA0()
{
  result = qword_27EDF7200;
  if (!qword_27EDF7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7200);
  }

  return result;
}

unint64_t sub_2450A6CF8()
{
  result = qword_27EDF7208;
  if (!qword_27EDF7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7208);
  }

  return result;
}

unint64_t sub_2450A6D50()
{
  result = qword_27EDF7210;
  if (!qword_27EDF7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7210);
  }

  return result;
}

unint64_t sub_2450A6DA8()
{
  result = qword_27EDF7218;
  if (!qword_27EDF7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7218);
  }

  return result;
}

unint64_t sub_2450A6E00()
{
  result = qword_27EDF7220;
  if (!qword_27EDF7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7220);
  }

  return result;
}

unint64_t sub_2450A6E58()
{
  result = qword_27EDF7228;
  if (!qword_27EDF7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7228);
  }

  return result;
}

unint64_t sub_2450A6EB0()
{
  result = qword_27EDF7230;
  if (!qword_27EDF7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7230);
  }

  return result;
}

unint64_t sub_2450A6F08()
{
  result = qword_27EDF7238;
  if (!qword_27EDF7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7238);
  }

  return result;
}

unint64_t sub_2450A6F60()
{
  result = qword_27EDF7240;
  if (!qword_27EDF7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7240);
  }

  return result;
}

uint64_t sub_2450A7014(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = sub_2450C2C0C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7248, &qword_2450EA928);
  result = swift_arrayDestroy();
  *a4 = v5;
  return result;
}

uint64_t sub_2450A7074()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7260, &qword_2450EA940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2450EA8E0;
  *(inited + 32) = 1;
  v1 = objc_opt_self();
  v2 = &unk_28580ACF0;
  v3 = [v1 interfaceWithProtocol_];

  *(inited + 40) = v3;
  v4 = sub_2450C2D04(inited);
  swift_setDeallocating();
  result = sub_24509F608(inited + 32, &qword_27EDF72C8, &qword_2450EA948);
  qword_27EE0AEB0 = v4;
  return result;
}

uint64_t sub_2450A7154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7250, &unk_2450EA930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2450EA8E0;
  *(inited + 32) = 1;
  v1 = type metadata accessor for MicActivityServiceDelegate();
  v2 = swift_allocObject();
  *(inited + 64) = v1;
  *(inited + 40) = v2;
  v3 = sub_2450C2DF8(inited);
  swift_setDeallocating();
  result = sub_24509F608(inited + 32, &qword_27EDF7258, &qword_2450EDD70);
  qword_27EE0AEB8 = v3;
  return result;
}

uint64_t sub_2450A7230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_2450E5678();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2450E56B8();
  sub_2450A7C04(a3, a4);
  sub_2450E5668();

  v9 = sub_2450E5658();
  sub_2450A7C14(a3, a4);

  *(v5 + 16) = v9;
  return v5;
}

uint64_t sub_2450A7498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2450E5678();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2450E56C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  sub_2450E56B8();
  sub_2450A7C04(a2, a3);
  sub_2450E5668();
  v12 = sub_2450E5698();
  (*(v10 + 8))(a1, v9);
  sub_2450A7C14(a2, a3);
  *(v4 + 16) = v12;
  return v4;
}

uint64_t sub_2450A7744()
{
  if (*(v0 + 16))
  {

    sub_2450E5688();
  }

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2450A77E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v25 - v8;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for CoreAudioOrchestratorXPC.Response(255, v10, AssociatedConformanceWitness, v12);
  v14 = sub_2450E59D8();
  v29 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v25 - v19;
  if (!*(v4 + 16))
  {
    (*(v18 + 56))(v17, 1, 1, v13);
LABEL_6:
    (*(v29 + 8))(v17, v14);
    sub_2450A7C24();
    swift_allocError();
    return swift_willThrow();
  }

  v26 = v20;
  v27 = v18;
  (*(a3 + 72))(a2, a3);
  swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v21 = v32;
  sub_2450E56A8();
  if (v21)
  {
    return (*(v31 + 8))(v9, AssociatedTypeWitness);
  }

  (*(v31 + 8))(v9, AssociatedTypeWitness);
  v23 = v27;
  if ((*(v27 + 48))(v17, 1, v13) == 1)
  {
    goto LABEL_6;
  }

  v24 = v26;
  (*(v23 + 32))(v26, v17, v13);
  sub_24509D310(v13, v28);
  return (*(v23 + 8))(v24, v13);
}

uint64_t sub_2450A7C04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2450A7C14(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2450A7C24()
{
  result = qword_27EDF72D0;
  if (!qword_27EDF72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF72D0);
  }

  return result;
}

unint64_t sub_2450A7C8C()
{
  result = qword_27EDF72D8;
  if (!qword_27EDF72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF72D8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2450A7D00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2450A7D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t get_enum_tag_for_layout_string_22CoreAudioOrchestration3ADMV17NegotiateResponseV13ChannelLayoutOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2450A7DD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2450A7E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2450A7E90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2450A7ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450A7F2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF73D0, &qword_2450EAD68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AAD70();
  sub_2450E5F58();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for AudioDeviceInfo();
  sub_2450AADC4(&qword_27EDF69B0, &unk_2450E79A0);
  sub_2450E5E08();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_2450E5D78();
  v10[5] = 2;
  sub_2450E5D88();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2450A8110()
{
  v1 = 0x6172656C706D6173;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_2450A8170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450A92D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450A8198(uint64_t a1)
{
  v2 = sub_2450AAD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A81D4(uint64_t a1)
{
  v2 = sub_2450AAD70();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A8210@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2450A93F8(a2, v6);
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

uint64_t sub_2450A8270(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2450A82CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = v4 + 16 * v3;
    v7 = a2 + 32 + 16 * v3;
    if (*v6 != *v7 || *(v6 + 4) != *(v7 + 4))
    {
      return 0;
    }

    v9 = *(v6 + 8);
    v10 = *(v7 + 8);
    v11 = *(v9 + 16);
    if (v11 != *(v10 + 16))
    {
      return 0;
    }

    if (v11)
    {
      v12 = v9 == v10;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = (v9 + 32);
      v14 = (v10 + 32);
      while (v11)
      {
        if (*v13 != *v14)
        {
          return 0;
        }

        ++v13;
        ++v14;
        if (!--v11)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2450A8398(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7488, &qword_2450EB4E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AB4B0();
  sub_2450E5F58();
  v14 = 0;
  sub_2450E5E28();
  if (!v3)
  {
    v13 = 1;
    sub_2450E5E28();
    v11[1] = a3;
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7478, &qword_2450EB4E0);
    sub_2450AB504(&qword_27EDF7490, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
    sub_2450E5E08();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450A85B8()
{
  v1 = 0x7367616C66;
  if (*v0 != 1)
  {
    v1 = 0x616E6964726F6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_2450A8614@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450A9658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450A863C(uint64_t a1)
{
  v2 = sub_2450AB4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A8678(uint64_t a1)
{
  v2 = sub_2450AB4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450A86B4@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450A976C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2450A8704(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return sub_2450A8270(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2450A872C(void *a1, uint64_t a2, int a3)
{
  v27 = a2;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7338, &qword_2450EAD20);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7340, &qword_2450EAD28);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7348, &qword_2450EAD30);
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7350, &qword_2450EAD38);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AA180();
  sub_2450E5F58();
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = 1;
      sub_2450AA228();
      sub_2450E5D58();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7318, &qword_2450EAD18);
      sub_2450AA3A8();
      v16 = v24;
      sub_2450E5E08();
      (*(v23 + 8))(v8, v16);
    }

    else
    {
      v32 = 2;
      sub_2450AA1D4();
      v18 = v22;
      sub_2450E5D58();
      v19 = v26;
      sub_2450E5E28();
      (*(v25 + 8))(v18, v19);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v30 = 0;
    sub_2450AA354();
    sub_2450E5D58();
    sub_2450E5E28();
    (*(v21 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_2450A8B48()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x756F79614C776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616D746942657375;
  }
}

uint64_t sub_2450A8BB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450A998C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450A8BDC(uint64_t a1)
{
  v2 = sub_2450AA180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A8C18(uint64_t a1)
{
  v2 = sub_2450AA180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A8C54(uint64_t a1)
{
  v2 = sub_2450AA1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A8C90(uint64_t a1)
{
  v2 = sub_2450AA1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A8CCC(uint64_t a1)
{
  v2 = sub_2450AA354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A8D08(uint64_t a1)
{
  v2 = sub_2450AA354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A8D44(uint64_t a1)
{
  v2 = sub_2450AA228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A8D80(uint64_t a1)
{
  v2 = sub_2450AA228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A8DBC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      if (v7 == 1)
      {
        return sub_2450A82CC(v4, v6);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return v7 == 2 && v4 == v6;
    }
  }

  else
  {
    return !v7 && v4 == v6;
  }
}

unint64_t sub_2450A8E1C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450A9AB8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_2450A8E6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7398, &qword_2450EAD58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AA9BC();
  sub_2450E5F58();
  v10 = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DB8, &unk_2450E8C40);
  sub_2450AABC0();
  sub_2450E5E08();
  if (!v2)
  {
    v10 = v3[1];
    v12 = 1;
    sub_2450E5E08();
    LOBYTE(v10) = 2;
    sub_2450E5D88();
    v10 = v3[4];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DC0, &qword_2450EAD50);
    sub_2450AAC44();
    sub_2450E5E08();
    v10 = v3[5];
    v11 = *(v3 + 48);
    v12 = 4;
    sub_2450AAD1C();
    sub_2450E5D98();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2450A910C()
{
  v1 = *v0;
  v2 = 0x726F467475706E69;
  v3 = 0x646F43726F727265;
  v4 = 0x73656369766564;
  if (v1 != 3)
  {
    v4 = 0x4C6C656E6E616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4674757074756FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2450A91CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450AA480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450A91F4(uint64_t a1)
{
  v2 = sub_2450AA9BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A9230(uint64_t a1)
{
  v2 = sub_2450AA9BC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A926C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2450AA64C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2450A92D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172656C706D6173 && a2 == 0xEA00000000006574 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002450F2B50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2450A93F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF73C0, &qword_2450EAD60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AAD70();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  type metadata accessor for AudioDeviceInfo();
  v21 = 0;
  sub_2450AADC4(&qword_27EDF6840, &unk_2450E79C8);
  sub_2450E5D08();
  v9 = v22;
  v20 = 1;
  v10 = sub_2450E5C78();
  v18 = v11;
  v17 = v10;
  v19 = 2;
  v12 = sub_2450E5C88();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v16 = v17;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14 & 1;
  return result;
}

uint64_t sub_2450A9658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEB00000000736574)
  {

    return 2;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2450A976C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7468, &qword_2450EB4D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AB4B0();
  sub_2450E5F48();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = 0;
  v7 = sub_2450E5D28();
  v11 = 1;
  v8 = sub_2450E5D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7478, &qword_2450EB4E0);
  v10[15] = 2;
  sub_2450AB504(&qword_27EDF7480, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_2450E5D08();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7 | (v8 << 32);
}

uint64_t sub_2450A998C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D746942657375 && a2 == 0xE900000000000070;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002450F2B30 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F79614C776172 && a2 == 0xEC00000067615474)
  {

    return 2;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2450A9AB8(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF72E0, &qword_2450EACF0);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v42 = &v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF72E8, &qword_2450EACF8);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF72F0, &qword_2450EAD00);
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF72F8, &unk_2450EAD08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v44 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2450AA180();
  v16 = v43;
  sub_2450E5F48();
  if (!v16)
  {
    v36 = 0;
    v17 = v42;
    v43 = v11;
    v18 = sub_2450E5D38();
    v19 = (2 * *(v18 + 16)) | 1;
    v45 = v18;
    v46 = v18 + 32;
    v47 = 0;
    v48 = v19;
    v20 = sub_2450BBCA8();
    v21 = v13;
    if (v20 == 3 || v47 != v48 >> 1)
    {
      v15 = v13;
      v26 = sub_2450E5B88();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
      *v28 = &_s17NegotiateResponseV13ChannelLayoutON;
      sub_2450E5C58();
      sub_2450E5B78();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v43 + 8))(v15, v10);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    if (!v20)
    {
      LOBYTE(v49) = 0;
      sub_2450AA354();
      v15 = v13;
      v30 = v36;
      sub_2450E5C48();
      if (!v30)
      {
        LODWORD(v15) = sub_2450E5D28();
        (*(v38 + 8))(v9, v7);
        (*(v43 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v15 = v15;
        goto LABEL_9;
      }

      v24 = v43;
      goto LABEL_12;
    }

    if (v20 == 1)
    {
      LOBYTE(v49) = 1;
      sub_2450AA228();
      v22 = v6;
      v15 = v13;
      v23 = v36;
      sub_2450E5C48();
      v24 = v43;
      if (!v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7318, &qword_2450EAD18);
        sub_2450AA27C();
        v25 = v40;
        sub_2450E5D08();
        (*(v41 + 1))(v22, v25);
        (*(v24 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v15 = v49;
        goto LABEL_9;
      }

LABEL_12:
      (*(v24 + 8))(v13, v10);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    LOBYTE(v49) = 2;
    sub_2450AA1D4();
    v31 = v17;
    v15 = v21;
    v32 = v36;
    sub_2450E5C48();
    v33 = v43;
    if (v32)
    {
      (*(v43 + 8))(v21, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v21;
      v34 = v37;
      LODWORD(v15) = sub_2450E5D28();
      (*(v39 + 8))(v31, v34);
      (*(v33 + 8))(v41, v10);
      swift_unknownObjectRelease();
      v15 = v15;
    }
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  return v15;
}

unint64_t sub_2450AA180()
{
  result = qword_27EDF7300;
  if (!qword_27EDF7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7300);
  }

  return result;
}

unint64_t sub_2450AA1D4()
{
  result = qword_27EDF7308;
  if (!qword_27EDF7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7308);
  }

  return result;
}

unint64_t sub_2450AA228()
{
  result = qword_27EDF7310;
  if (!qword_27EDF7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7310);
  }

  return result;
}

unint64_t sub_2450AA27C()
{
  result = qword_27EDF7320;
  if (!qword_27EDF7320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7318, &qword_2450EAD18);
    sub_2450AA300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7320);
  }

  return result;
}

unint64_t sub_2450AA300()
{
  result = qword_27EDF7328;
  if (!qword_27EDF7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7328);
  }

  return result;
}

unint64_t sub_2450AA354()
{
  result = qword_27EDF7330;
  if (!qword_27EDF7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7330);
  }

  return result;
}

unint64_t sub_2450AA3A8()
{
  result = qword_27EDF7358;
  if (!qword_27EDF7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7318, &qword_2450EAD18);
    sub_2450AA42C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7358);
  }

  return result;
}

unint64_t sub_2450AA42C()
{
  result = qword_27EDF7360;
  if (!qword_27EDF7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7360);
  }

  return result;
}

uint64_t sub_2450AA480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F467475706E69 && a2 == 0xEC0000007374616DLL;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4674757074756FLL && a2 == 0xED00007374616D72 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C6C656E6E616863 && a2 == 0xED000074756F7961)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2450AA64C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7368, &unk_2450EAD40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AA9BC();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DB8, &unk_2450E8C40);
  v25 = 0;
  sub_2450AAA10();
  sub_2450E5D08();
  v21 = v22;
  v25 = 1;
  sub_2450E5D08();
  v20 = v22;
  LOBYTE(v22) = 2;
  v10 = sub_2450E5C88();
  v24 = v11;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DC0, &qword_2450EAD50);
  v25 = 3;
  sub_2450AAA94();
  sub_2450E5D08();
  v19 = v12;
  v13 = v22;
  v25 = 4;
  sub_2450AAB6C();
  sub_2450E5C98();
  (*(v6 + 8))(v8, v5);
  v14 = v22;
  v15 = v23;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v17 = v20;
  *v9 = v21;
  *(v9 + 8) = v17;
  *(v9 + 16) = v19;
  *(v9 + 24) = v24 & 1;
  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = v15;
  return result;
}

unint64_t sub_2450AA9BC()
{
  result = qword_27EDF7370;
  if (!qword_27EDF7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7370);
  }

  return result;
}

unint64_t sub_2450AAA10()
{
  result = qword_27EDF7378;
  if (!qword_27EDF7378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6DB8, &unk_2450E8C40);
    sub_24509A3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7378);
  }

  return result;
}

unint64_t sub_2450AAA94()
{
  result = qword_27EDF7380;
  if (!qword_27EDF7380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6DC0, &qword_2450EAD50);
    sub_2450AAB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7380);
  }

  return result;
}

unint64_t sub_2450AAB18()
{
  result = qword_27EDF7388;
  if (!qword_27EDF7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7388);
  }

  return result;
}

unint64_t sub_2450AAB6C()
{
  result = qword_27EDF7390;
  if (!qword_27EDF7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7390);
  }

  return result;
}

unint64_t sub_2450AABC0()
{
  result = qword_27EDF73A0;
  if (!qword_27EDF73A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6DB8, &unk_2450E8C40);
    sub_24509BA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73A0);
  }

  return result;
}

unint64_t sub_2450AAC44()
{
  result = qword_27EDF73A8;
  if (!qword_27EDF73A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6DC0, &qword_2450EAD50);
    sub_2450AACC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73A8);
  }

  return result;
}

unint64_t sub_2450AACC8()
{
  result = qword_27EDF73B0;
  if (!qword_27EDF73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73B0);
  }

  return result;
}

unint64_t sub_2450AAD1C()
{
  result = qword_27EDF73B8;
  if (!qword_27EDF73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73B8);
  }

  return result;
}

unint64_t sub_2450AAD70()
{
  result = qword_27EDF73C8;
  if (!qword_27EDF73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73C8);
  }

  return result;
}

uint64_t sub_2450AADC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioDeviceInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2450AAE84()
{
  result = qword_27EDF73D8;
  if (!qword_27EDF73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73D8);
  }

  return result;
}

unint64_t sub_2450AAEDC()
{
  result = qword_27EDF73E0;
  if (!qword_27EDF73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73E0);
  }

  return result;
}

unint64_t sub_2450AAF34()
{
  result = qword_27EDF73E8;
  if (!qword_27EDF73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73E8);
  }

  return result;
}

unint64_t sub_2450AAF8C()
{
  result = qword_27EDF73F0;
  if (!qword_27EDF73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73F0);
  }

  return result;
}

unint64_t sub_2450AAFE4()
{
  result = qword_27EDF73F8;
  if (!qword_27EDF73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF73F8);
  }

  return result;
}

unint64_t sub_2450AB03C()
{
  result = qword_27EDF7400;
  if (!qword_27EDF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7400);
  }

  return result;
}

unint64_t sub_2450AB094()
{
  result = qword_27EDF7408;
  if (!qword_27EDF7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7408);
  }

  return result;
}

unint64_t sub_2450AB0EC()
{
  result = qword_27EDF7410;
  if (!qword_27EDF7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7410);
  }

  return result;
}

unint64_t sub_2450AB144()
{
  result = qword_27EDF7418;
  if (!qword_27EDF7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7418);
  }

  return result;
}

unint64_t sub_2450AB19C()
{
  result = qword_27EDF7420;
  if (!qword_27EDF7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7420);
  }

  return result;
}

unint64_t sub_2450AB1F4()
{
  result = qword_27EDF7428;
  if (!qword_27EDF7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7428);
  }

  return result;
}

unint64_t sub_2450AB24C()
{
  result = qword_27EDF7430;
  if (!qword_27EDF7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7430);
  }

  return result;
}

unint64_t sub_2450AB2A4()
{
  result = qword_27EDF7438;
  if (!qword_27EDF7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7438);
  }

  return result;
}

unint64_t sub_2450AB2FC()
{
  result = qword_27EDF7440;
  if (!qword_27EDF7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7440);
  }

  return result;
}

unint64_t sub_2450AB354()
{
  result = qword_27EDF7448;
  if (!qword_27EDF7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7448);
  }

  return result;
}

unint64_t sub_2450AB3AC()
{
  result = qword_27EDF7450;
  if (!qword_27EDF7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7450);
  }

  return result;
}

unint64_t sub_2450AB404()
{
  result = qword_27EDF7458;
  if (!qword_27EDF7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7458);
  }

  return result;
}

unint64_t sub_2450AB45C()
{
  result = qword_27EDF7460;
  if (!qword_27EDF7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7460);
  }

  return result;
}

unint64_t sub_2450AB4B0()
{
  result = qword_27EDF7470;
  if (!qword_27EDF7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7470);
  }

  return result;
}

uint64_t sub_2450AB504(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF7478, &qword_2450EB4E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2450AB584()
{
  result = qword_27EDF7498;
  if (!qword_27EDF7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7498);
  }

  return result;
}

unint64_t sub_2450AB5DC()
{
  result = qword_27EDF74A0;
  if (!qword_27EDF74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF74A0);
  }

  return result;
}

unint64_t sub_2450AB634()
{
  result = qword_27EDF74A8;
  if (!qword_27EDF74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF74A8);
  }

  return result;
}

unint64_t sub_2450AB694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2450C3140(MEMORY[0x277D84F90]);
  v5 = byte_2857FEE68;
  if (byte_2857FEE68)
  {
    type metadata accessor for MADRegisteredClient();
    swift_allocObject();
    v6 = sub_2450DC964();
  }

  else
  {
    type metadata accessor for HADRegisteredClient();
    swift_allocObject();
    v6 = sub_2450AFCB0(a1 & 1);
  }

  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v4;
  result = sub_2450C81F8(v5);
  v11 = v4[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  LOBYTE(v15) = v10;
  if (v4[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = result;
      sub_2450C9264();
      result = v17;
      v4 = v30;
      if (v15)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_2450DD724(v14, isUniquelyReferenced_nonNull_native);
    result = sub_2450C81F8(v5);
    if ((v15 & 1) != (v16 & 1))
    {
      goto LABEL_20;
    }
  }

  if (v15)
  {
LABEL_10:
    *(v4[7] + 8 * result) = v7;

    goto LABEL_14;
  }

LABEL_12:
  v4[(result >> 6) + 8] |= 1 << result;
  *(v4[6] + result) = v5;
  *(v4[7] + 8 * result) = v7;
  v18 = v4[2];
  v13 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v13)
  {
    goto LABEL_29;
  }

  v4[2] = v19;
LABEL_14:
  v5 = byte_2857FEE69;
  if (byte_2857FEE69)
  {
    type metadata accessor for MADRegisteredClient();
    swift_allocObject();
    v20 = sub_2450DC964();
  }

  else
  {
    type metadata accessor for HADRegisteredClient();
    swift_allocObject();
    v20 = sub_2450AFCB0(a1 & 1);
  }

  a1 = v20;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v4;
  result = sub_2450C81F8(v5);
  v22 = v4[2];
  v23 = (v21 & 1) == 0;
  v13 = __OFADD__(v22, v23);
  v24 = v22 + v23;
  if (v13)
  {
    goto LABEL_24;
  }

  LOBYTE(v7) = v21;
  if (v4[3] >= v24)
  {
    goto LABEL_21;
  }

  sub_2450DD724(v24, v15);
  result = sub_2450C81F8(v5);
  if ((v7 & 1) == (v25 & 1))
  {
    goto LABEL_22;
  }

LABEL_20:
  result = sub_2450E5E88();
  __break(1u);
LABEL_21:
  if (v15)
  {
LABEL_22:
    v26 = v30;
    if (v7)
    {
LABEL_23:
      *(v26[7] + 8 * result) = a1;

LABEL_28:
      *(v2 + 16) = v26;
      return v2;
    }

    goto LABEL_26;
  }

LABEL_25:
  v27 = result;
  sub_2450C9264();
  result = v27;
  v26 = v30;
  if (v7)
  {
    goto LABEL_23;
  }

LABEL_26:
  v26[(result >> 6) + 8] |= 1 << result;
  *(v26[6] + result) = v5;
  *(v26[7] + 8 * result) = a1;
  v28 = v26[2];
  v13 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v13)
  {
    v26[2] = v29;
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2450AB974(unint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16))
    {
      result = sub_2450C81F8(*result);
      if (v5)
      {
        v6 = *(**(*(v3 + 56) + 8 * result) + 160);

        v6(a2);
      }
    }
  }

  else
  {
    sub_2450ABA8C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2450ABA30()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2450ABA8C()
{
  result = qword_27EDF74B0;
  if (!qword_27EDF74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF74B0);
  }

  return result;
}

unint64_t sub_2450ABAF4()
{
  result = qword_27EDF74B8;
  if (!qword_27EDF74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF74B8);
  }

  return result;
}

uint64_t sub_2450ABB84(uint64_t a1)
{
  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2450E5A88();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2450CBA50(0, v2 & ~(v2 >> 63), 0);
    v41 = v47;
    if (v1)
    {
      result = sub_2450E5A38();
    }

    else
    {
      result = sub_2450E5A18();
      v4 = *(a1 + 36);
    }

    v44 = result;
    v45 = v4;
    v46 = v1 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = a1 + 56;
      v38 = v2;
      v39 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_56;
        }

        v8 = v44;
        v9 = v46;
        if (v1)
        {
          if (!v46)
          {
            goto LABEL_66;
          }

          v10 = v45;
          v43 = MEMORY[0x245D62720](v44);
          type metadata accessor for AudioDeviceInfo();
          swift_dynamicCast();
          v11 = v42[0];
        }

        else
        {
          if (v46)
          {
            v12 = v45;
            v13 = a1;
            if (sub_2450E5A68() != *(a1 + 36))
            {
              goto LABEL_60;
            }

            v10 = v12;
            v43 = sub_2450E5A78();
            type metadata accessor for AudioDeviceInfo();
            swift_dynamicCast();
            v14 = v42[0];
            sub_2450E5EF8();

            sub_2450E5838();

            v15 = sub_2450E5F38();
            v16 = -1 << *(a1 + 32);
            v17 = v15 & ~v16;
            if (((*(v37 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_65;
            }

            v18 = ~v16;
            while (1)
            {
              v19 = *(*(a1 + 48) + 8 * v17);
              v20 = *(v19 + 24) == *(v14 + 24) && *(v19 + 32) == *(v14 + 32);
              if (v20 || (sub_2450E5E68() & 1) != 0)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v37 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_65;
              }
            }
          }

          else
          {
            v13 = a1;
            if (v44 < 0 || v44 >= 1 << *(a1 + 32))
            {
              goto LABEL_61;
            }

            if (((*(v37 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_62;
            }

            v17 = v44;
            v10 = v45;
            if (*(a1 + 36) != v45)
            {
              goto LABEL_63;
            }
          }

          v11 = *(*(v13 + 48) + 8 * v17);
        }

        v21 = *(v11 + 24);
        v22 = *(v11 + 32);

        v23 = v41;
        v47 = v41;
        v25 = *(v41 + 16);
        v24 = *(v41 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_2450CBA50((v24 > 1), v25 + 1, 1);
          v23 = v47;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v22;
        v1 = v39;
        v41 = v23;
        if (v39)
        {
          if (!v9)
          {
            goto LABEL_67;
          }

          if (sub_2450E5A58())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7538, qword_2450EB7C8);
          v6 = sub_2450E5938();
          sub_2450E5AD8();
          result = v6(v42, 0);
          if (v5 == v38)
          {
LABEL_53:
            sub_2450AD818(v44, v45, v46);
            return v41;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_68;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          v27 = 1 << *(a1 + 32);
          if (v8 >= v27)
          {
            goto LABEL_57;
          }

          v28 = v8 >> 6;
          v29 = *(v37 + 8 * (v8 >> 6));
          if (((v29 >> v8) & 1) == 0)
          {
            goto LABEL_58;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_59;
          }

          v30 = v29 & (-2 << (v8 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (a1 + 64 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_2450AD818(v8, v10, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_52;
              }
            }

            result = sub_2450AD818(v8, v10, 0);
          }

LABEL_52:
          v36 = *(a1 + 36);
          v44 = v27;
          v45 = v36;
          v46 = 0;
          v2 = v38;
          if (v5 == v38)
          {
            goto LABEL_53;
          }
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    __break(1u);
LABEL_65:

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  return result;
}

void sub_2450AC098()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v1 = sub_2450E59A8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24508F000, oslog, v1, "ClientHardwareXPCService dropped hardwareAvailability event!", v2, 2u);
    MEMORY[0x245D63500](v2, -1, -1);
  }
}

uint64_t sub_2450AC180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  v7 = sub_2450E5628();
  v8 = sub_2450E5998();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24508F000, v7, v8, "ClientHardwareXPCService - setHardwareAvailabilityHandler", v9, 2u);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
}

void sub_2450AC290(uint64_t a1)
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24508F000, v4, v5, "ClientHardwareXPCService - setHiddenDeviceUIDs", v6, 2u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  sub_2450D81EC();
  if (!v1)
  {
    v19[0] = sub_2450D82CC();
    type metadata accessor for AudioSystemInfo();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7530, &qword_2450EB7C0);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        sub_24509551C(&v16, v19);
        v7 = v20;
        v8 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v9 = swift_allocObject();
        swift_weakInit();
        sub_2450AD6FC(v19, &v16);
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        sub_24509551C(&v16, v10 + 24);
        *(v10 + 64) = a1;
        v11 = *(v8 + 8);

        v11(sub_2450AD7A8, v10, v7, v8);

        v12 = v20;
        v13 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = *(v13 + 16);

        v15(sub_2450AD7B8, v14, v12, v13);

        __swift_destroy_boxed_opaque_existential_0Tm(v19);
LABEL_11:
        sub_2450E5788();
        return;
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }

    sub_2450AD65C(&v16);
    goto LABEL_11;
  }
}

void sub_2450AC580(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    v9 = (*(v8 + 24))(v7, v8);
    v10 = sub_2450ABB84(v9);

    v11 = sub_2450AC870(v10, a3);

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v12 = sub_2450E5638();
    __swift_project_value_buffer(v12, qword_27EE0AEC8);
    v13 = sub_2450E5628();
    v14 = sub_2450E5988();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      if (v11)
      {
        v17 = 0x6C62616C69617661;
      }

      else
      {
        v17 = 0x616C696176616E75;
      }

      if (v11)
      {
        v18 = 0xE900000000000065;
      }

      else
      {
        v18 = 0xEB00000000656C62;
      }

      v19 = sub_2450C0EE8(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_24508F000, v13, v14, "DeviceListChangedHandler - hardware is %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x245D63500](v16, -1, -1);
      MEMORY[0x245D63500](v15, -1, -1);
    }

    v20 = *(v6 + 80);

    v20(v11 & 1);
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v21 = sub_2450E5638();
    __swift_project_value_buffer(v21, qword_27EE0AEC8);
    v22 = sub_2450E5628();
    v23 = sub_2450E5988();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24508F000, v22, v23, "Failed to resolve ClientHardwareXPCService, dropped hardware availability event", v24, 2u);
      MEMORY[0x245D63500](v24, -1, -1);
    }
  }
}

uint64_t sub_2450AC870(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_2450AD050(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = sub_2450BC9CC(sub_2450AD7C0, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_2450AD0CC(a1, a2);
  }

  return result;
}

void sub_2450AC950(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v3 = sub_2450E5638();
    __swift_project_value_buffer(v3, qword_27EE0AEC8);
    v4 = sub_2450E5628();
    v5 = sub_2450E5988();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24508F000, v4, v5, "HALResetHandler - hardware is unavailable", v6, 2u);
      MEMORY[0x245D63500](v6, -1, -1);
    }

    v7 = *(v2 + 80);

    v7(0);
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v8 = sub_2450E5638();
    __swift_project_value_buffer(v8, qword_27EE0AEC8);
    v9 = sub_2450E5628();
    v10 = sub_2450E5988();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24508F000, v9, v10, "Failed to resolve ClientHardwareXPCService, dropped hardware availability event", v11, 2u);
      MEMORY[0x245D63500](v11, -1, -1);
    }
  }
}

uint64_t sub_2450ACB30@<X0>(uint64_t a1@<X8>)
{
  sub_2450A2960();
  sub_2450E5778();
  v2 = v24;
  *&v22[32] = v25;
  v23 = v26;
  *v22 = v24[0];
  *&v22[16] = v24[1];
  v3 = (*(&v26 + 1) >> 59) & 6 | (*(&v25 + 1) >> 63);
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        sub_2450D84C0(v28);
        v16 = v29;
        v17 = v30;
        v18 = v31;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7508, &unk_2450EE660);
        v11 = sub_2450AD608(&qword_27EDF7510, &qword_27EDF7508, &unk_2450EE660);
        v12 = swift_allocObject();
        result = sub_2450AD478(v22);
        v19 = v28[1];
        *(v12 + 16) = v28[0];
        *(v12 + 32) = v19;
        *(v12 + 48) = v16;
        *(v12 + 56) = v17;
        *(v12 + 64) = v18;
        *(v12 + 65) = 0;
        goto LABEL_19;
      }

      sub_2450AC290(v14);
      LODWORD(v12) = v15;
      sub_2450AD478(v22);
      goto LABEL_10;
    }

LABEL_9:
    LODWORD(v12) = sub_2450D8860();
LABEL_10:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
    v11 = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
    result = sub_2450AD478(v22);
LABEL_11:
    v2 = 0;
    v12 = v12;
LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  if (v3 > 4)
  {
    if (v3 != 5)
    {
      if (*(&v26 + 1) != 0x3000000000000000 || (v21 = vorrq_s8(*&v22[8], *&v22[24]), *&v24[0] | *&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *(&v25 + 1) | v23))
      {
        v12 = sub_2450D82CC();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7518, &qword_2450EB7B0);
        result = sub_2450AD608(&qword_27EDF7520, &qword_27EDF7518, &qword_2450EB7B0);
        v11 = result;
        v2 = 0;
        goto LABEL_18;
      }

      sub_2450D83D8();
      LODWORD(v12) = sub_2450E5788();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
      result = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
      v11 = result;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v3 != 3)
  {
    v12 = sub_2450D869C();
    v2 = v20;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74E8, &qword_2450EE640);
    v11 = sub_2450AD608(&qword_27EDF74F0, &qword_27EDF74E8, &qword_2450EE640);
    result = sub_2450AD478(v22);
    goto LABEL_18;
  }

  v2 = sub_2450D85AC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74F8, &unk_2450EB7A0);
  v11 = sub_2450AD608(&qword_27EDF7500, &qword_27EDF74F8, &unk_2450EB7A0);
  v12 = swift_allocObject();
  result = sub_2450AD478(v22);
  *(v12 + 16) = v2;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9 & 0x1FF;
  *(v12 + 42) = 0;
LABEL_19:
  *a1 = v12;
  *(a1 + 8) = v2;
  *(a1 + 16) = v27;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_2450ACF90()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
}

uint64_t sub_2450ACFC0()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2450AD050(uint64_t a1)
{
  v2 = sub_2450E5A18();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_2450AD24C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_2450AD0CC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_2450AD2A0(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_2450AD7E0(v12, &v16);
    v13 = v16;
    MEMORY[0x245D63500](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_2450AD24C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2450AD2A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v24 = v5;
  v25 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v25 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      sub_2450E5EF8();

      sub_2450E5838();
      v11 = sub_2450E5F38();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v16 = (*(a3 + 48) + 16 * v13);
    v17 = *v16 == v10 && v16[1] == v9;
    if (!v17)
    {
      v18 = ~v12;
      while ((sub_2450E5E68() & 1) == 0)
      {
        v13 = (v13 + 1) & v18;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
          v5 = v24;
          goto LABEL_5;
        }

        v19 = (*(a3 + 48) + 16 * v13);
        if (*v19 == v10 && v19[1] == v9)
        {
          break;
        }
      }
    }

    v20 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = v20 | v15;
    if ((v20 & v15) != 0)
    {
      v5 = v24;
      goto LABEL_6;
    }

    v21 = v22 + 1;
    v5 = v24;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v17 = v21 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_2450AD4CC()
{
  sub_2450AD510(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 42));

  return MEMORY[0x2821FE8E8](v0, 43, 7);
}

uint64_t sub_2450AD510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_2450AD520()
{
  sub_2450AD568(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 65));

  return MEMORY[0x2821FE8E8](v0, 66, 7);
}

uint64_t sub_2450AD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {
    return sub_2450AD578(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_2450AD578(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = a7;

    return sub_2450AD5E0(a6, v7);
  }

  return result;
}

uint64_t sub_2450AD5E0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2450AD5F4(a1, a2);
  }

  return a1;
}

uint64_t sub_2450AD5F4(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_2450AD608(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2450AD65C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7528, &qword_2450EB7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2450AD6C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2450AD6FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2450AD760()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2450AD7E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2450AD2A0(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_2450AD818(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2450AD824(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x736C656E6E616863;
  if (v2 != 1)
  {
    v4 = 0x7A6953656D617266;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6152656C706D6173;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006574;
  }

  v7 = 0xE800000000000000;
  v8 = 0x736C656E6E616863;
  if (*a2 != 1)
  {
    v8 = 0x7A6953656D617266;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6152656C706D6173;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2450E5E68();
  }

  return v11 & 1;
}

uint64_t sub_2450AD930()
{
  sub_2450E5EF8();
  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_2450AD9DC(uint64_t a1)
{
  sub_2450E5838();
}

uint64_t sub_2450ADA74(uint64_t a1)
{
  sub_2450E5EF8();
  sub_2450E5838();

  return sub_2450E5F38();
}

unint64_t sub_2450ADB1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2450AF118(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2450ADB4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006574;
  v4 = 0xE800000000000000;
  v5 = 0x736C656E6E616863;
  if (v2 != 1)
  {
    v5 = 0x7A6953656D617266;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6152656C706D6173;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2450ADBB4()
{
  v1 = 0x736C656E6E616863;
  if (*v0 != 1)
  {
    v1 = 0x7A6953656D617266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6152656C706D6173;
  }
}

unint64_t sub_2450ADC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2450AF118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2450ADC40(uint64_t a1)
{
  v2 = sub_2450AEAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450ADC7C(uint64_t a1)
{
  v2 = sub_2450AEAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2450ADD60(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7540, &qword_2450EB888);
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AEAE4();
  sub_2450E5F48();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v6;
    v19 = 0;
    v11 = v16;
    v12 = sub_2450E5D28();
    v19 = 1;
    v18 = sub_2450E5D28();
    v19 = 2;
    v14 = sub_2450E5D28();
    v17.receiver = v3;
    v17.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v17, sel_initWithSampleRate_andChannels_andFrameSize_, v12, v18, v14);
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

uint64_t sub_2450ADF9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7550, &unk_2450EB890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AEAE4();
  sub_2450E5F58();
  v9 = [v3 sampleRate];
  [v9 unsignedIntValue];

  v13[15] = 0;
  sub_2450E5E28();
  if (!v2)
  {
    v10 = [v3 channels];
    [v10 unsignedIntValue];

    v13[14] = 1;
    sub_2450E5E28();
    v11 = [v3 framesPerIO];
    [v11 unsignedIntValue];

    v13[13] = 2;
    sub_2450E5E28();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2450AE204(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7588, &qword_2450EBB10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AF34C();
  sub_2450E5F58();
  v12 = a2;
  v11[15] = 0;
  type metadata accessor for AudioStreamInfo();
  sub_2450AF3A0(&qword_27EDF6998, &unk_2450E78C0);
  sub_2450E5E08();
  if (!v3)
  {
    v11[14] = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v9, v6);
}

void *sub_2450AE3C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_2450ADD60(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2450AE43C()
{
  if (*v0)
  {
    return 0x496E497865646E69;
  }

  else
  {
    return 0x6D6165727473;
  }
}

uint64_t sub_2450AE480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6165727473 && a2 == 0xE600000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496E497865646E69 && a2 == 0xED0000636F72504FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450AE560(uint64_t a1)
{
  v2 = sub_2450AF34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450AE59C(uint64_t a1)
{
  v2 = sub_2450AF34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450AE5D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450AF164(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2450AE620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF75B0, &qword_2450EBB28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AF90C();
  sub_2450E5F58();
  v12 = *v3;
  BYTE4(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DB0, &qword_2450EBB20);
  sub_2450AF9B4(&qword_27EDF75B8, sub_2450AFA2C, MEMORY[0x277D83948]);
  sub_2450E5E08();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[1];
  BYTE4(v11) = 1;
  sub_2450E5E08();
  v12 = v3[2];
  BYTE4(v11) = 2;
  sub_2450E5E08();
  LOBYTE(v12) = 3;
  sub_2450E5DF8();
  v10 = *(v3 + 36);
  LOBYTE(v12) = 4;
  BYTE4(v11) = v10;
  sub_2450E5DA8();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2450AE890()
{
  v1 = *v0;
  v2 = 0x7274537475706E69;
  v3 = 0x745374757074756FLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x4965736143657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2450AE950@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450AF3E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450AE978(uint64_t a1)
{
  v2 = sub_2450AF90C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450AE9B4(uint64_t a1)
{
  v2 = sub_2450AF90C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450AE9F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2450AF5B4(a2, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 29) = *&v7[13];
  }

  return result;
}

uint64_t sub_2450AEA50()
{

  sub_2450AEEF0(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8D8](v0, 98, 7);
}

unint64_t sub_2450AEAE4()
{
  result = qword_27EDF7548;
  if (!qword_27EDF7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7548);
  }

  return result;
}

id sub_2450AEB38(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(IORegistryEmbeddedDeviceTreeAudioInfo) init];
  v29 = 0;
  v3 = [objc_opt_self() createFrom:v2 forUseCase:a1 error:&v29];
  if (v3)
  {
    v4 = v3;
    v5 = v29;

    v6 = objc_allocWithZone(type metadata accessor for ExclaveAudioFormat());
    v7 = [v4 sampleRate];
    v8 = [v7 unsignedIntValue];

    v9 = [v4 channels];
    v10 = [v9 unsignedIntValue];

    v11 = [v4 framesPerIO];
    v12 = [v11 unsignedIntValue];

    v13 = [v6 initWithSampleRate:v8 andChannels:v10 andFrameSize:v12];
  }

  else
  {
    v14 = v29;
    v15 = sub_2450E55D8();

    swift_willThrow();
    v29 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74C0, &qword_2450EB780);
    sub_2450AEEA4();
    swift_dynamicCast();
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v16 = sub_2450E5638();
    __swift_project_value_buffer(v16, qword_27EE0AEC8);
    v17 = v28;
    v18 = sub_2450E5628();
    v19 = sub_2450E59A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30[0] = v21;
      *v20 = 136315138;
      v22 = [v17 localizedDescription];
      v23 = sub_2450E57D8();
      v25 = v24;

      v26 = sub_2450C0EE8(v23, v25, v30);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_24508F000, v18, v19, "Error getting ExclaveAudioFormat from EDT: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245D63500](v21, -1, -1);
      MEMORY[0x245D63500](v20, -1, -1);
    }

    else
    {
    }

    return [objc_allocWithZone(type metadata accessor for ExclaveAudioFormat()) initWithSampleRate:16000 andChannels:2 andFrameSize:1024];
  }

  return v13;
}

unint64_t sub_2450AEEA4()
{
  result = qword_27EDF7558;
  if (!qword_27EDF7558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDF7558);
  }

  return result;
}

uint64_t sub_2450AEEF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2450AEF5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2450AEFA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2450AF014()
{
  result = qword_27EDF7560;
  if (!qword_27EDF7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7560);
  }

  return result;
}

unint64_t sub_2450AF06C()
{
  result = qword_27EDF7568;
  if (!qword_27EDF7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7568);
  }

  return result;
}

unint64_t sub_2450AF0C4()
{
  result = qword_27EDF7570;
  if (!qword_27EDF7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7570);
  }

  return result;
}

unint64_t sub_2450AF118(uint64_t a1, uint64_t a2)
{
  v2 = sub_2450E5C38();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2450AF164(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7578, &qword_2450EBB08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2450AF34C();
  sub_2450E5F48();
  if (!v1)
  {
    type metadata accessor for AudioStreamInfo();
    v9[7] = 0;
    sub_2450AF3A0(&qword_27EDF6868, &unk_2450E78E8);
    sub_2450E5D08();
    v7 = v10;
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450AF34C()
{
  result = qword_27EDF7580;
  if (!qword_27EDF7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7580);
  }

  return result;
}

uint64_t sub_2450AF3A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioStreamInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2450AF3E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537475706E69 && a2 == 0xEC000000736D6165;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002450F2D20 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x745374757074756FLL && a2 == 0xED0000736D616572 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002450F27F0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2450AF5B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7590, &qword_2450EBB18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450AF90C();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6DB0, &qword_2450EBB20);
  v18 = 0;
  sub_2450AF9B4(&qword_27EDF75A0, sub_2450AF960, MEMORY[0x277D83978]);
  sub_2450E5D08();
  v16 = v19;
  v18 = 1;
  sub_2450E5D08();
  v15 = v19;
  v18 = 2;
  sub_2450E5D08();
  v9 = v19;
  LOBYTE(v19) = 3;
  v10 = sub_2450E5CF8();
  LOBYTE(v19) = 4;
  v11 = sub_2450E5CA8();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v13 = v17;
  v14 = v15;
  *v17 = v16;
  v13[1] = v14;
  v13[2] = v9;
  v13[3] = v10;
  *(v13 + 8) = v11;
  *(v13 + 36) = BYTE4(v11) & 1;
  return result;
}

unint64_t sub_2450AF90C()
{
  result = qword_27EDF7598;
  if (!qword_27EDF7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7598);
  }

  return result;
}

unint64_t sub_2450AF960()
{
  result = qword_27EDF75A8;
  if (!qword_27EDF75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75A8);
  }

  return result;
}

uint64_t sub_2450AF9B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6DB0, &qword_2450EBB20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2450AFA2C()
{
  result = qword_27EDF75C0;
  if (!qword_27EDF75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75C0);
  }

  return result;
}

unint64_t sub_2450AFAA4()
{
  result = qword_27EDF75C8;
  if (!qword_27EDF75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75C8);
  }

  return result;
}

unint64_t sub_2450AFAFC()
{
  result = qword_27EDF75D0;
  if (!qword_27EDF75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75D0);
  }

  return result;
}

unint64_t sub_2450AFB54()
{
  result = qword_27EDF75D8;
  if (!qword_27EDF75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75D8);
  }

  return result;
}

unint64_t sub_2450AFBAC()
{
  result = qword_27EDF75E0;
  if (!qword_27EDF75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75E0);
  }

  return result;
}

unint64_t sub_2450AFC04()
{
  result = qword_27EDF75E8;
  if (!qword_27EDF75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75E8);
  }

  return result;
}

unint64_t sub_2450AFC5C()
{
  result = qword_27EDF75F0;
  if (!qword_27EDF75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75F0);
  }

  return result;
}

uint64_t sub_2450AFCB0(char a1)
{
  v4 = v1;
  if (qword_27EDF6718 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE0AEA0;
  if (!*(qword_27EE0AEA0 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = sub_2450C81F8(0);
  if ((v8 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v3 = *v9;
  v2 = v9[1];
  v10 = qword_27EDF6738;

  if (v10 != -1)
  {
LABEL_20:
    swift_once();
  }

  v11 = off_27EDF7D98;
  if (*(off_27EDF7D98 + 2) && (v12 = sub_2450C8284(1936290409), (v13 & 1) != 0))
  {
    v14 = *(v11[7] + 8 * v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7600, &unk_2450F0020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2450EBD40;
    type metadata accessor for UseCaseConfigurationBehavior();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(inited + 32) = v16;
    *(inited + 40) = &off_285801758;
    type metadata accessor for HardwareAvailabilityBehavior();
    v17 = swift_allocObject();
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 41) = 0u;
    *(v17 + 60) = 1936290409;
    *(inited + 48) = v17;
    *(inited + 56) = &off_2857FF098;
    swift_retain_n();
    v18 = sub_2450C9B84(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7608, &unk_2450EBDD0);
    swift_arrayDestroy();
    *(v4 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v4 + 24) = v18;
    if (a1)
    {
    }

    else
    {
      type metadata accessor for AlwaysOnBehavior();
      swift_allocObject();

      sub_2450C5CFC(v3, v2);
      sub_2450C5EAC();

      sub_2450DE734(v23, v4);
    }
  }

  else
  {

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v19 = sub_2450E5638();
    __swift_project_value_buffer(v19, qword_27EE0AEC8);
    v20 = sub_2450E5628();
    v21 = sub_2450E59A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24508F000, v20, v21, "Could not register the HAD client with appropriate behaviors!", v22, 2u);
      MEMORY[0x245D63500](v22, -1, -1);
    }

    *(v4 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v4 + 24) = sub_2450C3028(MEMORY[0x277D84F90]);
  }

  return v4;
}

id sub_2450B0004(uint64_t a1)
{
  type metadata accessor for ClientHardwareConnectionBehavior();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  type metadata accessor for ClientHardwareProtocol();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  type metadata accessor for HardwareConfigurationBehavior();
  *(swift_allocObject() + 16) = v4;
  swift_retain_n();

  sub_2450DE740(v5, v1);

  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for ADMBehavior();
  *(swift_allocObject() + 16) = v7;

  sub_2450DE818(v8, v1);

  sub_2450DE824(v9, v1);

  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  type metadata accessor for HALPropertyBehavior();
  *(swift_allocObject() + 16) = v11;

  sub_2450DE830(v12, v1);

  v13 = *(v1 + 16);
  [v13 lock];
  swift_beginAccess();
  v14 = sub_2450DC878(*(v1 + 24));
  [v13 unlock];
  if (!v14)
  {
    goto LABEL_4;
  }

  [v13 lock];
  v15 = sub_2450DC860(*(v1 + 24));
  result = [v13 unlock];
  if (v15)
  {

    sub_2450BC6EC(v17);

    sub_245094C8C();

LABEL_4:
  }

  __break(1u);
  return result;
}

id sub_2450B0250()
{
  v1 = v0;
  v2 = type metadata accessor for ADMBehavior();
  v3 = *(v0 + 16);
  [v3 lock];
  swift_beginAccess();
  sub_2450C7F5C(v2);
  swift_endAccess();
  [v3 unlock];
  v4 = type metadata accessor for HardwareConfigurationBehavior();
  [v3 lock];
  swift_beginAccess();
  sub_2450C7F5C(v4);
  swift_endAccess();
  [v3 unlock];
  v5 = type metadata accessor for HALPropertyBehavior();
  [v3 lock];
  swift_beginAccess();
  sub_2450C7F5C(v5);
  swift_endAccess();
  [v3 unlock];
  v6 = type metadata accessor for ClientHardwareConnectionBehavior();
  [v3 lock];
  swift_beginAccess();
  sub_2450C7F5C(v6);
  swift_endAccess();
  [v3 unlock];
  [v3 lock];
  v7 = sub_2450DC878(*(v0 + 24));
  [v3 unlock];
  if (v7)
  {
    v8 = *(v7 + 56);
    *(v7 + 56) = 1;
    if (v8 == 3)
    {
      sub_245094CC4();
    }
  }

  [v3 lock];
  v9 = sub_2450DC890(*(v1 + 24));
  result = [v3 unlock];
  if (v9)
  {
    sub_2450C6114(3);
  }

  return result;
}

uint64_t sub_2450B0464()
{
  v2 = v1;
  v3 = *(v0 + 16);
  [v3 lock];
  swift_beginAccess();
  v4 = sub_2450DC860(*(v0 + 24));
  [v3 unlock];
  if (!v4)
  {
    sub_2450B09A8();
    swift_allocError();
    *v10 = 0xD000000000000018;
    *(v10 + 8) = 0x80000002450F2DC0;
    *(v10 + 16) = 2;
    return swift_willThrow();
  }

  [v3 lock];
  v5 = sub_2450DC8C0(*(v0 + 24));
  [v3 unlock];
  if (v5)
  {
    [v3 lock];
    v6 = sub_2450DC8A8(*(v0 + 24));
    [v3 unlock];
    if (v6)
    {
      v7 = *(v4 + 16);
      v8 = *(v7 + 16);

      if (v8 == 1751741300)
      {
        v9 = sub_2450BCB28(&unk_2857FEF58);
        swift_arrayDestroy();
      }

      else
      {
        v9 = MEMORY[0x277D84FA0];
      }

      sub_2450CD538(v9);
      if (v2)
      {
      }

      sub_2450BC4D0(v7);
      sub_24509F04C();
    }

    else
    {
      sub_2450B09A8();
      swift_allocError();
      *v13 = 0xD000000000000014;
      *(v13 + 8) = 0x80000002450F2DE0;
      *(v13 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_2450B09A8();
    swift_allocError();
    *v12 = 0xD000000000000014;
    *(v12 + 8) = 0x80000002450F2DE0;
    *(v12 + 16) = 2;
    swift_willThrow();
  }
}

void sub_2450B071C()
{
  v1 = *(v0 + 16);
  [v1 lock];
  swift_beginAccess();
  v2 = sub_2450DC878(*(v0 + 24));
  [v1 unlock];
  if (v2)
  {
    sub_245095628();
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v3 = sub_2450E5638();
    __swift_project_value_buffer(v3, qword_27EE0AEC8);
    v4 = sub_2450E5628();
    v5 = sub_2450E59A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24508F000, v4, v5, "HAD is missing it's hardware availability behavior!", v6, 2u);
      MEMORY[0x245D63500](v6, -1, -1);
    }
  }
}

uint64_t sub_2450B085C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

BOOL sub_2450B08C0()
{
  v1 = *(v0 + 16);
  [v1 lock];
  swift_beginAccess();
  v2 = sub_2450DC878(*(v0 + 24));
  [v1 unlock];
  if (v2)
  {
    v3 = *(v2 + 56);

    return v3 == 3 || v3 == 0;
  }

  else
  {
    sub_2450B09A8();
    swift_allocError();
    *v6 = 0xD000000000000033;
    *(v6 + 8) = 0x80000002450F2D80;
    *(v6 + 16) = 2;
    swift_willThrow();
  }

  return v5;
}

unint64_t sub_2450B09A8()
{
  result = qword_27EDF75F8;
  if (!qword_27EDF75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF75F8);
  }

  return result;
}

void sub_2450B09FC(uint64_t a1)
{
  v2 = sub_2450E5758();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_2450E5628();
  v8 = sub_2450E59A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_2450E5748();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_2450C0EE8(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24508F000, v7, v8, "Connnection to Registrar died! %s - Exiting.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245D63500](v10, -1, -1);
    MEMORY[0x245D63500](v9, -1, -1);

    exit(0);
  }

  (*(v3 + 8))(v5, v2);
  exit(0);
}

uint64_t sub_2450B0C1C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  v18 = v4;
  v19 = sub_2450B12F4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  v6 = *(v4 + 20);
  v7 = sub_2450E56C8();
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1 + v6, a2, v7);
  *boxed_opaque_existential_1 = v3;
  v8 = v18;
  v9 = v19;
  v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17[-1] - v13;

  sub_2450A77E0(v10, v8, v9, v14);
  (*(v12 + 8))(v14, AssociatedTypeWitness);

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return sub_2450E5788();
}

uint64_t sub_2450B0EF8(unsigned __int8 *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_2450CC938(v3 | v2);
}

uint64_t sub_2450B10BC(char *a1, uint64_t a2)
{
  v3 = *a1;

  sub_2450CCAAC(v3, a2);

  return sub_2450E5788();
}

uint64_t sub_2450B1290()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2450B12F4()
{
  result = qword_27EDF7610;
  if (!qword_27EDF7610)
  {
    type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7610);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2450B13D4()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v1 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24508F000, oslog, v1, "Derived client should implement this", v2, 2u);
    MEMORY[0x245D63500](v2, -1, -1);
  }
}

uint64_t sub_2450B14E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = 0;
  type metadata accessor for ClientSharedAudioXPCService();
  *(swift_allocObject() + 40) = 0;

  v10 = sub_2450B519C(a1, a2, a3, a4);
  *(v5 + 16) = v10;

  if (v10[2])
  {

    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v11 = sub_2450E5638();
    __swift_project_value_buffer(v11, qword_27EE0AEC8);

    v12 = sub_2450E5628();
    v13 = sub_2450E5988();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      v16 = sub_2450C0EE8(a1, a2, &v18);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_24508F000, v12, v13, "Started listening for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x245D63500](v15, -1, -1);
      MEMORY[0x245D63500](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_2450B16F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF76B8, &qword_2450EC1C8);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF76C0, &qword_2450EC1D0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF76C8, &qword_2450EC1D8);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v30 - v6;
  v31 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF76D0, &qword_2450EC1E0);
  v13 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v15 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B4238();
  sub_2450E5F58();
  sub_2450B444C(v40, v12, type metadata accessor for CoreAudioOrchestratorServerXPC.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v12;
      v18 = v12[1];
      v42 = 1;
      sub_2450B42E0();
      v19 = v33;
      v20 = v41;
      sub_2450E5D58();
      v42 = v17;
      v43 = v18;
      sub_2450B4050();
      v21 = v36;
      sub_2450E5E08();
      (*(v35 + 8))(v19, v21);
      return (*(v13 + 8))(v15, v20);
    }

    else
    {
      v25 = *v12;
      v26 = *(v12 + 1);
      v42 = 2;
      sub_2450B428C();
      v27 = v37;
      v28 = v41;
      sub_2450E5D58();
      v42 = v25;
      v44 = v26;
      sub_2450B4160();
      v29 = v39;
      sub_2450E5E08();
      (*(v38 + 8))(v27, v29);
      (*(v13 + 8))(v15, v28);
    }
  }

  else
  {
    sub_2450B4388(v12, v9, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient);
    v42 = 0;
    sub_2450B4334();
    v23 = v41;
    sub_2450E5D58();
    sub_2450B3F88(&qword_27EDF7670, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient, &unk_2450EC008);
    v24 = v34;
    sub_2450E5E08();
    (*(v32 + 8))(v7, v24);
    sub_2450B43F0(v9);
    return (*(v13 + 8))(v15, v23);
  }
}

uint64_t sub_2450B1C9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7678, &qword_2450EC1A0);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v65 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7680, &qword_2450EC1A8);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  MEMORY[0x28223BE20](v4);
  v64 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7688, &qword_2450EC1B0);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v52 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7690, &unk_2450EC1B8);
  v67 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v10 = &v52 - v9;
  v11 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v52 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v23 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2450B4238();
  v24 = v68;
  sub_2450E5F48();
  if (!v24)
  {
    v54 = v20;
    v52 = v17;
    v53 = v14;
    v25 = v64;
    v26 = v65;
    v55 = v22;
    v68 = v11;
    v27 = v66;
    v29 = v62;
    v28 = v63;
    v30 = sub_2450E5D38();
    v31 = (2 * *(v30 + 16)) | 1;
    v72 = v30;
    v73 = v30 + 32;
    v74 = 0;
    v75 = v31;
    v32 = sub_2450BBCA8();
    v33 = v28;
    if (v32 == 3 || v74 != v75 >> 1)
    {
      v34 = sub_2450E5B88();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
      *v36 = v68;
      sub_2450E5C58();
      sub_2450E5B78();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v67 + 8))(v10, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        if (v32 == 1)
        {
          v69 = 1;
          sub_2450B42E0();
          sub_2450E5C48();
          v44 = v27;
          v45 = v28;
          sub_2450B3FFC();
          v46 = v59;
          sub_2450E5D08();
          v47 = v67;
          (*(v60 + 8))(v25, v46);
          (*(v47 + 8))(v10, v45);
          swift_unknownObjectRelease();
          v48 = v70;
          v49 = v52;
          *v52 = v69;
          v49[1] = v48;
        }

        else
        {
          v69 = 2;
          sub_2450B428C();
          sub_2450E5C48();
          v44 = v27;
          sub_2450B410C();
          v43 = v56;
          sub_2450E5D08();
          (*(v61 + 8))(v26, v43);
          (*(v67 + 8))(v10, v28);
          swift_unknownObjectRelease();
          v50 = v71;
          v49 = v53;
          *v53 = v69;
          *(v49 + 1) = v50;
        }

        swift_storeEnumTagMultiPayload();
        v51 = v49;
        v42 = v55;
        sub_2450B4388(v51, v55, type metadata accessor for CoreAudioOrchestratorServerXPC.Request);
      }

      else
      {
        v69 = 0;
        sub_2450B4334();
        v38 = v29;
        v39 = v28;
        sub_2450E5C48();
        type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
        sub_2450B3F88(&qword_27EDF7668, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient, &unk_2450EC030);
        v40 = v54;
        v41 = v58;
        sub_2450E5D08();
        (*(v57 + 8))(v38, v41);
        (*(v67 + 8))(v10, v39);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v42 = v55;
        sub_2450B4388(v40, v55, type metadata accessor for CoreAudioOrchestratorServerXPC.Request);
        v44 = v27;
      }

      sub_2450B4388(v42, v44, type metadata accessor for CoreAudioOrchestratorServerXPC.Request);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v76);
}

unint64_t sub_2450B2508()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265747369676572;
  }
}

uint64_t sub_2450B257C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450B4E00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450B25A4(uint64_t a1)
{
  v2 = sub_2450B4238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B25E0(uint64_t a1)
{
  v2 = sub_2450B4238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B261C(uint64_t a1)
{
  v2 = sub_2450B42E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B2658(uint64_t a1)
{
  v2 = sub_2450B42E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B2694(uint64_t a1)
{
  v2 = sub_2450B4334();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B26D0(uint64_t a1)
{
  v2 = sub_2450B4334();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B270C(uint64_t a1)
{
  v2 = sub_2450B428C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B2748(uint64_t a1)
{
  v2 = sub_2450B428C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B27B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7730, &qword_2450EC218);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B4604();
  sub_2450E5F58();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2450B455C();
  sub_2450E5E08();
  if (!v2)
  {
    type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
    v10[13] = 1;
    sub_2450E56C8();
    sub_2450B3F88(&qword_27EDF7738, MEMORY[0x277D855B8], MEMORY[0x277D855C0]);
    sub_2450E5E08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2450B2984@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_2450E56C8();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7718, &qword_2450EC210);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B4604();
  sub_2450E5F48();
  if (!v2)
  {
    v19 = v8;
    v11 = v10;
    v13 = v22;
    v12 = v23;
    v26 = 0;
    sub_2450B4508();
    v14 = v24;
    sub_2450E5D08();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_2450B3F88(&qword_27EDF7728, MEMORY[0x277D855B8], MEMORY[0x277D855D0]);
    sub_2450E5D08();
    (*(v13 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v12);
    sub_2450B4388(v15, v21, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2450B2CA0()
{
  if (*v0)
  {
    return 0x746E696F70646E65;
  }

  else
  {
    return 0x4449746E65696C63;
  }
}

uint64_t sub_2450B2CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450B2DB0(uint64_t a1)
{
  v2 = sub_2450B4604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B2DEC(uint64_t a1)
{
  v2 = sub_2450B4604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B2E28@<X0>(uint64_t a1@<X8>)
{
  sub_2450B444C(v1, a1, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient);
  type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2450B2EBC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7710, &qword_2450EC208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B45B0();
  sub_2450E5F58();
  v14 = v8;
  v13 = 0;
  sub_2450B455C();
  sub_2450E5E08();
  if (!v2)
  {
    v12 = 1;
    sub_2450E5DD8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2450B305C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7700, &qword_2450EC200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B45B0();
  sub_2450E5F48();
  if (!v2)
  {
    v14 = 0;
    sub_2450B4508();
    sub_2450E5D08();
    v9 = v15;
    v13 = 1;
    v11 = sub_2450E5CD8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2450B321C()
{
  if (*v0)
  {
    return 0x79646165527369;
  }

  else
  {
    return 0x4449746E65696C63;
  }
}

uint64_t sub_2450B3258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79646165527369 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450B3334(uint64_t a1)
{
  v2 = sub_2450B45B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B3370(uint64_t a1)
{
  v2 = sub_2450B45B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B33AC@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2450B3430(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF76F0, &qword_2450EC1F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B44B4();
  sub_2450E5F58();
  v13 = v8;
  v12 = 0;
  sub_2450B455C();
  sub_2450E5E08();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7158, &qword_2450EC1F0);
    sub_2450A6920(&qword_27EDF7160, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_2450E5E08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2450B3608@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF76D8, &qword_2450EC1E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B44B4();
  sub_2450E5F48();
  if (!v2)
  {
    v14 = 0;
    sub_2450B4508();
    sub_2450E5D08();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7158, &qword_2450EC1F0);
    v13 = 1;
    sub_2450A6920(&qword_27EDF71B0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_2450E5D08();
    (*(v6 + 8))(v8, v5);
    v11 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_2450B3818()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x4449746E65696C63;
  }
}

uint64_t sub_2450B3858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002450F2FA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450B393C(uint64_t a1)
{
  v2 = sub_2450B44B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B3978(uint64_t a1)
{
  v2 = sub_2450B44B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B39B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = v3;
  *(a1 + 8) = v4;
  type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2450B3AD4(uint64_t a1)
{
  result = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2450B3B68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreAudioOrchestratorServerXPC.NotifyHardwareIsReady(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for CoreAudioOrchestratorServerXPC.NotifyHardwareIsReady(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_2450B3D24(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2450E56C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2450B3DDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2450E56C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2450B3E7C(uint64_t a1)
{
  result = sub_2450E56C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2450B3F88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2450B3FFC()
{
  result = qword_27EDF7648;
  if (!qword_27EDF7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7648);
  }

  return result;
}

unint64_t sub_2450B4050()
{
  result = qword_27EDF7650;
  if (!qword_27EDF7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7650);
  }

  return result;
}

uint64_t sub_2450B40D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450B410C()
{
  result = qword_27EDF7658;
  if (!qword_27EDF7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7658);
  }

  return result;
}

unint64_t sub_2450B4160()
{
  result = qword_27EDF7660;
  if (!qword_27EDF7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7660);
  }

  return result;
}

uint64_t sub_2450B41B4(uint64_t a1)
{
  *(a1 + 8) = sub_2450B3F88(&qword_27EDF7668, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient, &unk_2450EC030);
  result = sub_2450B3F88(&qword_27EDF7670, type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient, &unk_2450EC008);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450B4238()
{
  result = qword_27EDF7698;
  if (!qword_27EDF7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7698);
  }

  return result;
}

unint64_t sub_2450B428C()
{
  result = qword_27EDF76A0;
  if (!qword_27EDF76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF76A0);
  }

  return result;
}

unint64_t sub_2450B42E0()
{
  result = qword_27EDF76A8;
  if (!qword_27EDF76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF76A8);
  }

  return result;
}

unint64_t sub_2450B4334()
{
  result = qword_27EDF76B0;
  if (!qword_27EDF76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF76B0);
  }

  return result;
}

uint64_t sub_2450B4388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2450B43F0(uint64_t a1)
{
  v2 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2450B444C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2450B44B4()
{
  result = qword_27EDF76E0;
  if (!qword_27EDF76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF76E0);
  }

  return result;
}

unint64_t sub_2450B4508()
{
  result = qword_27EDF76E8;
  if (!qword_27EDF76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF76E8);
  }

  return result;
}

unint64_t sub_2450B455C()
{
  result = qword_27EDF76F8;
  if (!qword_27EDF76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF76F8);
  }

  return result;
}

unint64_t sub_2450B45B0()
{
  result = qword_27EDF7708;
  if (!qword_27EDF7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7708);
  }

  return result;
}

unint64_t sub_2450B4604()
{
  result = qword_27EDF7720;
  if (!qword_27EDF7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7720);
  }

  return result;
}

unint64_t sub_2450B46CC()
{
  result = qword_27EDF7740;
  if (!qword_27EDF7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7740);
  }

  return result;
}

unint64_t sub_2450B4724()
{
  result = qword_27EDF7748;
  if (!qword_27EDF7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7748);
  }

  return result;
}

unint64_t sub_2450B477C()
{
  result = qword_27EDF7750;
  if (!qword_27EDF7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7750);
  }

  return result;
}

unint64_t sub_2450B47D4()
{
  result = qword_27EDF7758;
  if (!qword_27EDF7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7758);
  }

  return result;
}

unint64_t sub_2450B482C()
{
  result = qword_27EDF7760;
  if (!qword_27EDF7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7760);
  }

  return result;
}

unint64_t sub_2450B4884()
{
  result = qword_27EDF7768;
  if (!qword_27EDF7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7768);
  }

  return result;
}

unint64_t sub_2450B48DC()
{
  result = qword_27EDF7770;
  if (!qword_27EDF7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7770);
  }

  return result;
}

unint64_t sub_2450B4934()
{
  result = qword_27EDF7778;
  if (!qword_27EDF7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7778);
  }

  return result;
}

unint64_t sub_2450B498C()
{
  result = qword_27EDF7780;
  if (!qword_27EDF7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7780);
  }

  return result;
}

unint64_t sub_2450B49E4()
{
  result = qword_27EDF7788;
  if (!qword_27EDF7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7788);
  }

  return result;
}

unint64_t sub_2450B4A3C()
{
  result = qword_27EDF7790;
  if (!qword_27EDF7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7790);
  }

  return result;
}

unint64_t sub_2450B4A94()
{
  result = qword_27EDF7798;
  if (!qword_27EDF7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7798);
  }

  return result;
}

unint64_t sub_2450B4AEC()
{
  result = qword_27EDF77A0;
  if (!qword_27EDF77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77A0);
  }

  return result;
}

unint64_t sub_2450B4B44()
{
  result = qword_27EDF77A8;
  if (!qword_27EDF77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77A8);
  }

  return result;
}

unint64_t sub_2450B4B9C()
{
  result = qword_27EDF77B0;
  if (!qword_27EDF77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77B0);
  }

  return result;
}

unint64_t sub_2450B4BF4()
{
  result = qword_27EDF77B8;
  if (!qword_27EDF77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77B8);
  }

  return result;
}

unint64_t sub_2450B4C4C()
{
  result = qword_27EDF77C0;
  if (!qword_27EDF77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77C0);
  }

  return result;
}

unint64_t sub_2450B4CA4()
{
  result = qword_27EDF77C8;
  if (!qword_27EDF77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77C8);
  }

  return result;
}

unint64_t sub_2450B4CFC()
{
  result = qword_27EDF77D0;
  if (!qword_27EDF77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77D0);
  }

  return result;
}

unint64_t sub_2450B4D54()
{
  result = qword_27EDF77D8;
  if (!qword_27EDF77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77D8);
  }

  return result;
}

unint64_t sub_2450B4DAC()
{
  result = qword_27EDF77E0;
  if (!qword_27EDF77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77E0);
  }

  return result;
}

uint64_t sub_2450B4E00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265747369676572 && a2 == 0xEE00746E65696C43;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002450F2F60 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002450F2F80 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2450B4F48()
{
  v1 = *v0;

  return v1;
}

void sub_2450B4F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  *token.val = 0;

  v6 = sub_2450E57C8();

  v7 = SecTaskCopyValueForEntitlement(v5, v6, &token);

  v8 = *token.val;
  if (*token.val)
  {
    type metadata accessor for CFError(0);
    sub_2450B59EC();
    swift_allocError();
    *v9 = v8;
LABEL_8:
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v7 || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || (v10 & 1) == 0)
  {
    sub_2450B5998();
    swift_allocError();
    goto LABEL_8;
  }

LABEL_9:
  swift_unknownObjectRelease();
}

uint64_t sub_2450B5128(uint64_t a1, uint64_t a2)
{

  sub_2450E5708();
}

void *sub_2450B519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_2450E56F8();
  MEMORY[0x28223BE20](v8 - 8);
  v5[2] = 0;
  v5[3] = a3;
  v5[4] = a4;

  sub_2450E56E8();
  sub_2450E5738();
  swift_allocObject();
  v9 = sub_2450E5718();

  v5[2] = v9;

  return v5;
}

uint64_t sub_2450B53F0(uint64_t a1, uint64_t a2)
{
  swift_retain_n();
  sub_2450E5708();
}

uint64_t sub_2450B5470(uint64_t a1, uint64_t a2)
{
  v4 = sub_2450E5768();
  sub_2450B4F9C(v4, v5, v6, v7);
  return (*(*a2 + 168))(a1);
}

unint64_t sub_2450B55A4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74C8, &qword_2450EB788);
  result = sub_2450B5934();
  *(a1 + 32) = result;
  *a1 = 0xD000000000000020;
  *(a1 + 8) = 0x80000002450F30B0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_2450B5608()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_2450B56B4(uint64_t a1)
{
  v2 = sub_2450E5758();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v9 = sub_2450E5638();
  __swift_project_value_buffer(v9, qword_27EE0AEC8);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = sub_2450E5628();
  v12 = sub_2450E59A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v15 = sub_2450E5818();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_2450C0EE8(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24508F000, v11, v12, "Client cancelled connection. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245D63500](v14, -1, -1);
    MEMORY[0x245D63500](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

unint64_t sub_2450B5934()
{
  result = qword_27EDF74D0;
  if (!qword_27EDF74D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF74C8, &qword_2450EB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF74D0);
  }

  return result;
}

unint64_t sub_2450B5998()
{
  result = qword_27EDF77E8;
  if (!qword_27EDF77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77E8);
  }

  return result;
}

unint64_t sub_2450B59EC()
{
  result = qword_27EDF77F0;
  if (!qword_27EDF77F0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF77F0);
  }

  return result;
}

uint64_t sub_2450B5A68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7820, &qword_2450ECC48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7828, &qword_2450ECC50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B6328();
  sub_2450E5F58();
  sub_2450B637C();
  sub_2450E5D58();
  sub_2450B6424();
  sub_2450E5E08();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450B5C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450B5D00(uint64_t a1)
{
  v2 = sub_2450B6328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B5D3C(uint64_t a1)
{
  v2 = sub_2450B6328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B5D78(uint64_t a1)
{
  v2 = sub_2450B637C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B5DB4(uint64_t a1)
{
  v2 = sub_2450B637C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B5E20(uint64_t a1)
{
  v2 = sub_2450B6798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B5E5C(uint64_t a1)
{
  v2 = sub_2450B6798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B5E98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7878, &qword_2450ECF10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450B6798();
  sub_2450E5F58();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2450B5FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF77F8, &qword_2450ECC30);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7800, &unk_2450ECC38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2450B6328();
  sub_2450E5F48();
  if (!v1)
  {
    v11 = v21;
    v12 = v7;
    v13 = sub_2450E5D38();
    v14 = (2 * *(v13 + 16)) | 1;
    v22 = v13;
    v23 = v13 + 32;
    v24 = 0;
    v25 = v14;
    if (sub_2450BA304() || v24 != v25 >> 1)
    {
      v15 = v6;
      v16 = sub_2450E5B88();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
      *v18 = &type metadata for CoreAudioOrchestratorLaunchServiceXPC.Request;
      sub_2450E5C58();
      sub_2450E5B78();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
      swift_willThrow();
      (*(v12 + 8))(v9, v15);
    }

    else
    {
      sub_2450B637C();
      sub_2450E5C48();
      sub_2450B63D0();
      sub_2450E5D08();
      (*(v11 + 8))(v5, v3);
      (*(v7 + 8))(v9, v6);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

unint64_t sub_2450B6328()
{
  result = qword_27EDF7808;
  if (!qword_27EDF7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7808);
  }

  return result;
}

unint64_t sub_2450B637C()
{
  result = qword_27EDF7810;
  if (!qword_27EDF7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7810);
  }

  return result;
}

unint64_t sub_2450B63D0()
{
  result = qword_27EDF7818;
  if (!qword_27EDF7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7818);
  }

  return result;
}

unint64_t sub_2450B6424()
{
  result = qword_27EDF7830;
  if (!qword_27EDF7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7830);
  }

  return result;
}

unint64_t sub_2450B64AC()
{
  result = qword_27EDF7838;
  if (!qword_27EDF7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7838);
  }

  return result;
}

unint64_t sub_2450B6504()
{
  result = qword_27EDF7840;
  if (!qword_27EDF7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7840);
  }

  return result;
}

unint64_t sub_2450B6558(uint64_t a1)
{
  *(a1 + 8) = sub_2450B63D0();
  result = sub_2450B6424();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450B658C()
{
  result = qword_27EDF7848;
  if (!qword_27EDF7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7848);
  }

  return result;
}

unint64_t sub_2450B65E4()
{
  result = qword_27EDF7850;
  if (!qword_27EDF7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7850);
  }

  return result;
}

unint64_t sub_2450B663C()
{
  result = qword_27EDF7858;
  if (!qword_27EDF7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7858);
  }

  return result;
}

unint64_t sub_2450B6694()
{
  result = qword_27EDF7860;
  if (!qword_27EDF7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7860);
  }

  return result;
}

unint64_t sub_2450B66EC()
{
  result = qword_27EDF7868;
  if (!qword_27EDF7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7868);
  }

  return result;
}

unint64_t sub_2450B6744()
{
  result = qword_27EDF7870;
  if (!qword_27EDF7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7870);
  }

  return result;
}

unint64_t sub_2450B6798()
{
  result = qword_27EDF7880;
  if (!qword_27EDF7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7880);
  }

  return result;
}

unint64_t sub_2450B6800()
{
  result = qword_27EDF7888;
  if (!qword_27EDF7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7888);
  }

  return result;
}

unint64_t sub_2450B6858()
{
  result = qword_27EDF7890;
  if (!qword_27EDF7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7890);
  }

  return result;
}

unint64_t sub_2450B68D0(uint64_t a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1 + 32;
    do
    {
      sub_2450AD6FC(v3, v24);
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      sub_2450E55A8();
      swift_allocObject();
      sub_2450E5598();
      v8 = sub_2450E5588();
      v10 = v9;

      v11 = objc_opt_self();
      v12 = sub_2450E55F8();
      v23[0] = 0;
      v13 = [v11 JSONObjectWithData:v12 options:0 error:v23];

      v14 = v23[0];
      if (v13)
      {
        sub_2450E59E8();
        sub_2450A5294(v8, v10);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78A8, &qword_2450ECFF8);
        swift_dynamicCast();
        v15 = v23[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2450D2E00(0, v2[2] + 1, 1, v2);
        }

        v17 = v2[2];
        v16 = v2[3];
        if (v17 >= v16 >> 1)
        {
          v2 = sub_2450D2E00((v16 > 1), v17 + 1, 1, v2);
        }

        v2[2] = v17 + 1;
        v2[v17 + 4] = v15;
      }

      else
      {
        v18 = v14;
        v19 = sub_2450E55D8();

        swift_willThrow();
        sub_2450A5294(v8, v10);
        if (qword_27EDF6748 != -1)
        {
          swift_once();
        }

        v4 = sub_2450E5638();
        __swift_project_value_buffer(v4, qword_27EE0AEC8);
        v5 = sub_2450E5628();
        v6 = sub_2450E59B8();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_24508F000, v5, v6, "Failed to encode message field", v7, 2u);
          MEMORY[0x245D63500](v7, -1, -1);
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7898, &qword_2450ECFE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2450EA8E0;
  v24[0] = 0x6567617373656DLL;
  v24[1] = 0xE700000000000000;
  sub_2450E5B08();
  *(inited + 72) = v2;
  v21 = sub_2450C2AE4(inited);
  swift_setDeallocating();
  sub_2450B6C80(inited + 32);
  return v21;
}

uint64_t sub_2450B6C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78A0, &qword_2450ECFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2450B6D18(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *&v25 = &type metadata for CreateConfigurationResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78F0, qword_2450ED020);
  v9 = sub_2450E5818();
  v11 = v10;
  v12 = sub_2450D2F34(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2450D2F34((v13 > 1), v14 + 1, 1, v12);
  }

  v26 = &type metadata for CreateConfigurationResponseHeader;
  v27 = sub_2450B74C4();
  v15 = swift_allocObject();
  *&v25 = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3 & 1;
  v12[2] = v14 + 1;
  sub_24509551C(&v25, &v12[5 * v14 + 4]);
  *&v25 = &type metadata for StatusDescription;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  v16 = sub_2450E5818();
  v18 = v17;
  v20 = v12[2];
  v19 = v12[3];
  if (v20 >= v19 >> 1)
  {
    v12 = sub_2450D2F34((v19 > 1), v20 + 1, 1, v12);
  }

  v26 = &type metadata for StatusDescription;
  v27 = sub_2450B7350();
  v21 = swift_allocObject();
  *&v25 = v21;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = a1;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  v12[2] = v20 + 1;
  sub_24509551C(&v25, &v12[5 * v20 + 4]);
  v22 = sub_2450B68D0(v12);

  return v22;
}

unint64_t sub_2450B6F10(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *&v25 = &type metadata for SubscriptionResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78D0, &qword_2450ED010);
  v9 = sub_2450E5818();
  v11 = v10;
  v12 = sub_2450D2F34(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2450D2F34((v13 > 1), v14 + 1, 1, v12);
  }

  v26 = &type metadata for SubscriptionResponseHeader;
  v27 = sub_2450B73E4();
  v15 = swift_allocObject();
  *&v25 = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3 & 1;
  v12[2] = v14 + 1;
  sub_24509551C(&v25, &v12[5 * v14 + 4]);
  *&v25 = &type metadata for StatusDescription;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  v16 = sub_2450E5818();
  v18 = v17;
  v20 = v12[2];
  v19 = v12[3];
  if (v20 >= v19 >> 1)
  {
    v12 = sub_2450D2F34((v19 > 1), v20 + 1, 1, v12);
  }

  v26 = &type metadata for StatusDescription;
  v27 = sub_2450B7350();
  v21 = swift_allocObject();
  *&v25 = v21;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = a1;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  v12[2] = v20 + 1;
  sub_24509551C(&v25, &v12[5 * v20 + 4]);
  v22 = sub_2450B68D0(v12);

  return v22;
}

unint64_t sub_2450B7138(unsigned __int8 a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  *&v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = sub_2450E5818();
  v14 = v13;
  v15 = sub_2450D2F34(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_2450D2F34((v16 > 1), v17 + 1, 1, v15);
  }

  v27 = a4;
  v28 = a7();
  *&v26 = v12;
  *(&v26 + 1) = v14;
  v15[2] = v17 + 1;
  sub_24509551C(&v26, &v15[5 * v17 + 4]);
  *&v26 = &type metadata for StatusDescription;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  v18 = sub_2450E5818();
  v20 = v19;
  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    v15 = sub_2450D2F34((v21 > 1), v22 + 1, 1, v15);
  }

  v27 = &type metadata for StatusDescription;
  v28 = sub_2450B7350();
  v23 = swift_allocObject();
  *&v26 = v23;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  v15[2] = v22 + 1;
  sub_24509551C(&v26, &v15[5 * v22 + 4]);
  v24 = sub_2450B68D0(v15);

  return v24;
}

unint64_t sub_2450B72FC()
{
  result = qword_27EDF78B8;
  if (!qword_27EDF78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF78B8);
  }

  return result;
}

unint64_t sub_2450B7350()
{
  result = qword_27EDF78C8;
  if (!qword_27EDF78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF78C8);
  }

  return result;
}

uint64_t sub_2450B73A4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_2450B73E4()
{
  result = qword_27EDF78D8;
  if (!qword_27EDF78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF78D8);
  }

  return result;
}

uint64_t sub_2450B7438()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

unint64_t sub_2450B7470()
{
  result = qword_27EDF78E8;
  if (!qword_27EDF78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF78E8);
  }

  return result;
}

unint64_t sub_2450B74C4()
{
  result = qword_27EDF78F8;
  if (!qword_27EDF78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF78F8);
  }

  return result;
}

ValueMetadata *sub_2450B751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98[4] = *MEMORY[0x277D85DE8];
  sub_2450E5B08();
  if (!*(a1 + 16) || (v5 = sub_2450C81B4(&v94), (v6 & 1) == 0))
  {
    sub_2450B883C(&v94);
    goto LABEL_6;
  }

  sub_24509FAE0(*(a1 + 56) + 32 * v5, v98);
  sub_2450B883C(&v94);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v7 = 0x80000002450F3190;
    v8 = 0xD000000000000010;
    goto LABEL_7;
  }

  v8 = 1701869940;
  v7 = 0xE400000000000000;
LABEL_7:
  v94 = &type metadata for UseCaseID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7920, &qword_2450ED140);
  if (sub_2450E5818() == v8 && v9 == v7)
  {

LABEL_11:

    *(a2 + 24) = &type metadata for UseCaseID;
    *(a2 + 32) = sub_2450B8EEC();
    v11 = objc_opt_self();
    v12 = sub_2450E5798();
    v13 = [v11 isValidJSONObject_];

    if (v13)
    {
      v14 = sub_2450E5798();
      v98[0] = 0;
      v15 = [v11 dataWithJSONObject:v14 options:0 error:v98];

      v16 = v98[0];
      if (v15)
      {
        v17 = sub_2450E5608();
        v19 = v18;

        sub_2450E5578();
        swift_allocObject();
        sub_2450E5568();
        sub_2450B8F40();
LABEL_14:
        sub_2450E5558();
        if (v2)
        {
LABEL_15:

          sub_2450A5294(v17, v19);
          return __swift_deallocate_boxed_opaque_existential_1(a2);
        }

        sub_2450A5294(v17, v19);
        result = v94;
        v21 = v95;
        v22 = v96;
LABEL_29:
        *a2 = result;
        *(a2 + 8) = v21;
        *(a2 + 16) = v22;
        return result;
      }

      goto LABEL_76;
    }

    result = sub_2450C3A54();
LABEL_17:
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a2);
    }

    goto LABEL_29;
  }

  v10 = sub_2450E5E68();

  if (v10)
  {
    goto LABEL_11;
  }

  v94 = &type metadata for DevicePropertyDescription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7928, &qword_2450ED148);
  if (sub_2450E5818() == v8 && v23 == v7)
  {

LABEL_23:

    *(a2 + 24) = &type metadata for DevicePropertyDescription;
    *(a2 + 32) = sub_2450B8E44();
    *a2 = swift_allocObject();
    v25 = objc_opt_self();
    v26 = sub_2450E5798();
    v27 = [v25 isValidJSONObject_];

    if (v27)
    {
      v28 = sub_2450E5798();
      v94 = 0;
      v29 = [v25 dataWithJSONObject:v28 options:0 error:&v94];

      v16 = v94;
      if (v29)
      {
        v30 = sub_2450E5608();
        v32 = v31;

        sub_2450E5578();
        swift_allocObject();
        sub_2450E5568();
        sub_2450A4DBC();
        goto LABEL_26;
      }

      goto LABEL_76;
    }

    result = sub_2450BD698();
LABEL_31:
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a2);
    }

    return result;
  }

  v24 = sub_2450E5E68();

  if (v24)
  {
    goto LABEL_23;
  }

  v94 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
  if (sub_2450E5818() == v8 && v33 == v7)
  {

LABEL_37:

    *(a2 + 24) = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
    *(a2 + 32) = sub_2450B8D9C();
    v35 = objc_opt_self();
    v36 = sub_2450E5798();
    v37 = [v35 isValidJSONObject_];

    if (v37)
    {
      v38 = sub_2450E5798();
      v98[0] = 0;
      v39 = [v35 dataWithJSONObject:v38 options:0 error:v98];

      v16 = v98[0];
      if (v39)
      {
        v17 = sub_2450E5608();
        v19 = v40;

        sub_2450E5578();
        swift_allocObject();
        sub_2450E5568();
        sub_2450B8DF0();
        goto LABEL_14;
      }

      goto LABEL_76;
    }

    result = sub_2450C3A24();
    goto LABEL_17;
  }

  v34 = sub_2450E5E68();

  if (v34)
  {
    goto LABEL_37;
  }

  v94 = &type metadata for IsolatedUseCaseDevicesAvailable;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7930, &qword_2450EF950);
  if (sub_2450E5818() == v8 && v41 == v7)
  {

LABEL_46:

    *(a2 + 24) = &type metadata for IsolatedUseCaseDevicesAvailable;
    *(a2 + 32) = sub_2450B8CF4();
    v43 = objc_opt_self();
    v44 = sub_2450E5798();
    v45 = [v43 isValidJSONObject_];

    if (!v45)
    {
      result = sub_2450C39F4();
      goto LABEL_17;
    }

    v46 = sub_2450E5798();
    v98[0] = 0;
    v47 = [v43 dataWithJSONObject:v46 options:0 error:v98];

    v16 = v98[0];
    if (v47)
    {
      v17 = sub_2450E5608();
      v19 = v48;

      sub_2450E5578();
      swift_allocObject();
      sub_2450E5568();
      sub_2450B8D48();
      goto LABEL_14;
    }

    goto LABEL_76;
  }

  v42 = sub_2450E5E68();

  if (v42)
  {
    goto LABEL_46;
  }

  v94 = &type metadata for DataPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7938, &unk_2450ED150);
  if (sub_2450E5818() == v8 && v49 == v7)
  {

LABEL_54:

    *(a2 + 24) = &type metadata for DataPayload;
    *(a2 + 32) = sub_2450B8C0C();
    v51 = swift_allocObject();
    *a2 = v51;
    v52 = objc_opt_self();
    v53 = sub_2450E5798();
    v54 = [v52 isValidJSONObject_];

    if (v54)
    {
      v55 = sub_2450E5798();
      v94 = 0;
      v56 = [v52 dataWithJSONObject:v55 options:0 error:&v94];

      v16 = v94;
      if (v56)
      {
        v30 = sub_2450E5608();
        v32 = v57;

        sub_2450E5578();
        swift_allocObject();
        sub_2450E5568();
        sub_2450B8CA0();
LABEL_26:
        sub_2450E5558();
        if (!v2)
        {

          return sub_2450A5294(v30, v32);
        }

        goto LABEL_27;
      }

LABEL_76:
      v80 = v16;
      sub_2450E55D8();

LABEL_77:
      swift_willThrow();
      return __swift_deallocate_boxed_opaque_existential_1(a2);
    }

    result = sub_2450BD450(a1, (v51 + 16));
    goto LABEL_31;
  }

  v50 = sub_2450E5E68();

  if (v50)
  {
    goto LABEL_54;
  }

  v94 = &type metadata for BoolPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7940, &qword_2450EF930);
  if (sub_2450E5818() == v8 && v58 == v7)
  {

    goto LABEL_62;
  }

  v59 = sub_2450E5E68();

  if (v59)
  {
LABEL_62:

    *(a2 + 24) = &type metadata for BoolPayload;
    *(a2 + 32) = sub_2450B8B64();
    v60 = objc_opt_self();
    v61 = sub_2450E5798();
    v62 = [v60 isValidJSONObject_];

    if (v62)
    {
      v63 = sub_2450E5798();
      v98[0] = 0;
      v64 = [v60 dataWithJSONObject:v63 options:0 error:v98];

      v16 = v98[0];
      if (!v64)
      {
        goto LABEL_76;
      }

      v17 = sub_2450E5608();
      v19 = v65;

      sub_2450E5578();
      swift_allocObject();
      sub_2450E5568();
      sub_2450B8BB8();
      sub_2450E5558();
      if (v2)
      {
        goto LABEL_15;
      }

      sub_2450A5294(v17, v19);
      result = v94;
      v66 = v95;
      v67 = v96;
    }

    else
    {
      result = sub_2450C3910();
      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_1(a2);
      }
    }

    *a2 = result;
    *(a2 + 8) = v66;
    *(a2 + 16) = v67 & 1;
    return result;
  }

  v94 = &type metadata for StringPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7948, &unk_2450ED160);
  if (sub_2450E5818() == v8 && v68 == v7)
  {

LABEL_72:

    *(a2 + 24) = &type metadata for StringPayload;
    *(a2 + 32) = sub_2450B8AB4();
    v70 = swift_allocObject();
    *a2 = v70;
    v71 = objc_opt_self();
    v72 = sub_2450E5798();
    v73 = [v71 isValidJSONObject_];

    if (v73)
    {
      v74 = sub_2450E5798();
      v98[0] = 0;
      v75 = [v71 dataWithJSONObject:v74 options:0 error:v98];

      v16 = v98[0];
      if (!v75)
      {
        goto LABEL_76;
      }

      v30 = sub_2450E5608();
      v32 = v76;

      sub_2450E5578();
      swift_allocObject();
      sub_2450E5568();
      sub_2450B8B10();
      sub_2450E5558();
      if (v2)
      {
LABEL_27:

        sub_2450A5294(v30, v32);
        return __swift_deallocate_boxed_opaque_existential_1(a2);
      }

      sub_2450A5294(v30, v32);
      result = v94;
      v77 = v95;
      v78 = v96;
      v79 = v97;
    }

    else
    {
      result = sub_2450C3830();
      if (v2)
      {
        return __swift_deallocate_boxed_opaque_existential_1(a2);
      }
    }

    v70[2] = result;
    v70[3] = v77;
    v70[4] = v78;
    v70[5] = v79;
    return result;
  }

  v69 = sub_2450E5E68();

  if (v69)
  {
    goto LABEL_72;
  }

  v94 = &type metadata for IntPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7950, &qword_2450EDDD0);
  if (sub_2450E5818() == v8 && v81 == v7)
  {
  }

  else
  {
    v82 = sub_2450E5E68();

    if ((v82 & 1) == 0)
    {
      sub_2450B8890();
      swift_allocError();
      *v92 = v8;
      *(v92 + 8) = v7;
      *(v92 + 16) = 0;
      return swift_willThrow();
    }
  }

  *(a2 + 24) = &type metadata for IntPayload;
  *(a2 + 32) = sub_2450B88E4();
  v83 = objc_opt_self();
  v84 = sub_2450E5798();
  v85 = [v83 isValidJSONObject_];

  if (v85)
  {
    v86 = sub_2450E5798();
    v98[0] = 0;
    v87 = [v83 dataWithJSONObject:v86 options:0 error:v98];

    v88 = v98[0];
    if (!v87)
    {
      v93 = v88;
      sub_2450E55D8();

      goto LABEL_77;
    }

    v17 = sub_2450E5608();
    v19 = v89;

    sub_2450E5578();
    swift_allocObject();
    sub_2450E5568();
    sub_2450B8A60();
    sub_2450E5558();
    if (v2)
    {
      goto LABEL_15;
    }

    sub_2450A5294(v17, v19);
    result = v94;
    v90 = v95;
    v91 = v96;
  }

  else
  {
    result = sub_2450C3800();
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a2);
    }
  }

  *a2 = result;
  *(a2 + 8) = v90;
  *(a2 + 16) = v91;
  return result;
}

ValueMetadata *sub_2450B84FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2450B751C(a1, &v15);
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7908, &qword_2450ED130);
    if (swift_dynamicCast())
    {
      return sub_24509551C(v13, a2);
    }

    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2450B87D4(v13);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_2450E5B58();
    v11 = v15;
    v12 = v16;
    sub_2450E5B08();
    if (*(a1 + 16) && (v6 = sub_2450C81B4(&v15), (v7 & 1) != 0))
    {
      sub_24509FAE0(*(a1 + 56) + 32 * v6, v13);
      sub_2450B883C(&v15);
      if (swift_dynamicCast())
      {
        v8 = 1701869940;
        v9 = 0xE400000000000000;
LABEL_10:
        MEMORY[0x245D624D0](v8, v9);

        MEMORY[0x245D624D0](0xD000000000000023, 0x80000002450F31B0);
        sub_2450B8890();
        swift_allocError();
        *v10 = v11;
        *(v10 + 8) = v12;
        *(v10 + 16) = 0;
        return swift_willThrow();
      }
    }

    else
    {
      sub_2450B883C(&v15);
    }

    v9 = 0x80000002450F3190;
    v8 = 0xD000000000000010;
    goto LABEL_10;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2450B872C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2450B8774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_2450B87D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7910, &qword_2450ED138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2450B8890()
{
  result = qword_27EDF7918;
  if (!qword_27EDF7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7918);
  }

  return result;
}

unint64_t sub_2450B88E4()
{
  result = qword_27EDF7958;
  if (!qword_27EDF7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7958);
  }

  return result;
}

uint64_t sub_2450B8938(uint64_t a1)
{
  v7[0] = 0x6567617373656DLL;
  v7[1] = 0xE700000000000000;
  sub_2450E5B08();
  if (*(a1 + 16) && (v2 = sub_2450C81B4(v6), (v3 & 1) != 0))
  {
    sub_24509FAE0(*(a1 + 56) + 32 * v2, v7);
    sub_2450B883C(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF79D0, qword_2450ED170);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2450B883C(v6);
    return 0;
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245D63500);
  }

  return result;
}

unint64_t sub_2450B8A60()
{
  result = qword_27EDF7960;
  if (!qword_27EDF7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7960);
  }

  return result;
}

unint64_t sub_2450B8AB4()
{
  result = qword_27EDF7968;
  if (!qword_27EDF7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7968);
  }

  return result;
}

unint64_t sub_2450B8B10()
{
  result = qword_27EDF7970;
  if (!qword_27EDF7970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7970);
  }

  return result;
}

unint64_t sub_2450B8B64()
{
  result = qword_27EDF7978;
  if (!qword_27EDF7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7978);
  }

  return result;
}

unint64_t sub_2450B8BB8()
{
  result = qword_27EDF7980;
  if (!qword_27EDF7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7980);
  }

  return result;
}

unint64_t sub_2450B8C0C()
{
  result = qword_27EDF7988;
  if (!qword_27EDF7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7988);
  }

  return result;
}

uint64_t sub_2450B8C60()
{

  sub_2450A5294(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2450B8CA0()
{
  result = qword_27EDF7990;
  if (!qword_27EDF7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7990);
  }

  return result;
}

unint64_t sub_2450B8CF4()
{
  result = qword_27EDF7998;
  if (!qword_27EDF7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7998);
  }

  return result;
}

unint64_t sub_2450B8D48()
{
  result = qword_27EDF79A0;
  if (!qword_27EDF79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79A0);
  }

  return result;
}

unint64_t sub_2450B8D9C()
{
  result = qword_27EDF79A8;
  if (!qword_27EDF79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79A8);
  }

  return result;
}

unint64_t sub_2450B8DF0()
{
  result = qword_27EDF79B0;
  if (!qword_27EDF79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79B0);
  }

  return result;
}

unint64_t sub_2450B8E44()
{
  result = qword_27EDF79B8;
  if (!qword_27EDF79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79B8);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_2450B8EEC()
{
  result = qword_27EDF79C0;
  if (!qword_27EDF79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79C0);
  }

  return result;
}

unint64_t sub_2450B8F40()
{
  result = qword_27EDF79C8;
  if (!qword_27EDF79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79C8);
  }

  return result;
}

uint64_t sub_2450B8FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a3 + 24);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v4;
  return v5(v7, a2);
}

uint64_t sub_2450B9038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  v7 = *(a5 + 32);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = v6;
  return v7(v9, a2, a3, a4);
}

uint64_t sub_2450B90B8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ContextSemanticOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15ContextSemanticOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_2450B9184(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2450B91A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_2450B91D0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    sub_2450E5838();
  }

  else
  {
    sub_2450E5838();

    return sub_2450E5F28();
  }
}

uint64_t sub_2450B9368(void *a1, uint64_t a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A70, &qword_2450ED368);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A78, &qword_2450ED370);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A80, &qword_2450ED378);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A88, &qword_2450ED380);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A90, &qword_2450ED388);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = &v30 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A98, &qword_2450ED390);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v33 = &v30 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7AA0, &qword_2450ED398);
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7AA8, &qword_2450ED3A0);
  v30 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7AB0, &qword_2450ED3A8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v30 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450BB244();
  sub_2450E5F58();
  if ((v51 & 0x100000000) == 0)
  {
    v58 = 6;
    sub_2450BB2EC();
    v24 = v48;
    sub_2450E5D58();
    v25 = v50;
    sub_2450E5E28();
    (*(v49 + 8))(v24, v25);
    return (*(v21 + 8))(v23, v20);
  }

  if (v51 > 2)
  {
    if (v51 > 4)
    {
      if (v51 == 5)
      {
        v57 = 5;
        sub_2450BB340();
        v27 = v42;
        sub_2450E5D58();
        v29 = v43;
        v28 = v44;
      }

      else
      {
        v59 = 7;
        sub_2450BB298();
        v27 = v45;
        sub_2450E5D58();
        v29 = v46;
        v28 = v47;
      }
    }

    else if (v51 == 3)
    {
      v55 = 3;
      sub_2450BB3E8();
      v27 = v36;
      sub_2450E5D58();
      v29 = v37;
      v28 = v38;
    }

    else
    {
      v56 = 4;
      sub_2450BB394();
      v27 = v39;
      sub_2450E5D58();
      v29 = v40;
      v28 = v41;
    }

    goto LABEL_16;
  }

  if (v51)
  {
    if (v51 != 1)
    {
      v54 = 2;
      sub_2450BB43C();
      v27 = v33;
      sub_2450E5D58();
      v29 = v34;
      v28 = v35;
LABEL_16:
      (*(v29 + 8))(v27, v28);
      return (*(v21 + 8))(v23, v20);
    }

    v53 = 1;
    sub_2450BB490();
    sub_2450E5D58();
    (*(v31 + 8))(v16, v32);
  }

  else
  {
    v52 = 0;
    sub_2450BB4E4();
    sub_2450E5D58();
    (*(v30 + 8))(v19, v17);
  }

  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_2450B9B24()
{
  v1 = *v0;
  v2 = 0x6C6172656E6567;
  v3 = 0x646574616C6F7369;
  if (v1 != 6)
  {
    v3 = 0x6F6C66664F707364;
  }

  v4 = 0x506C616974617073;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000020;
  if (v1 == 2)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0x6F73496563696F76;
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

uint64_t sub_2450B9C4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450BA400(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450B9C74(uint64_t a1)
{
  v2 = sub_2450BB244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9CB0(uint64_t a1)
{
  v2 = sub_2450BB244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9CEC(uint64_t a1)
{
  v2 = sub_2450BB298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9D28(uint64_t a1)
{
  v2 = sub_2450BB298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9D64(uint64_t a1)
{
  v2 = sub_2450BB4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9DA0(uint64_t a1)
{
  v2 = sub_2450BB4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9DDC(uint64_t a1)
{
  v2 = sub_2450BB2EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9E18(uint64_t a1)
{
  v2 = sub_2450BB2EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9E54(uint64_t a1)
{
  v2 = sub_2450BB3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9E90(uint64_t a1)
{
  v2 = sub_2450BB3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9ECC(uint64_t a1)
{
  v2 = sub_2450BB394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9F08(uint64_t a1)
{
  v2 = sub_2450BB394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9F44(uint64_t a1)
{
  v2 = sub_2450BB340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9F80(uint64_t a1)
{
  v2 = sub_2450BB340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450B9FBC(uint64_t a1)
{
  v2 = sub_2450BB490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450B9FF8(uint64_t a1)
{
  v2 = sub_2450BB490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450BA034(uint64_t a1)
{
  v2 = sub_2450BB43C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450BA070(uint64_t a1)
{
  v2 = sub_2450BB43C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450BA0AC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450BA6BC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_2450BA114()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_2450E5EF8();
  sub_2450B91D0(v4, v1 | (v2 << 32));
  return sub_2450E5F38();
}

uint64_t sub_2450BA188(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_2450E5EF8();
  sub_2450B91D0(v5, v2 | (v3 << 32));
  return sub_2450E5F38();
}

unint64_t sub_2450BA210()
{
  result = qword_27EDF79D8;
  if (!qword_27EDF79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF79D8);
  }

  return result;
}

uint64_t sub_2450BA264()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2450BA298()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2450BA2D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_2450BA304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

BOOL sub_2450BA330(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return (a2 & 0x100000000) != 0 && a2 == 1;
        }

        else
        {
          return (a2 & 0x100000000) != 0 && a2 == 2;
        }
      }

      else
      {
        return (a2 & 0x100000000) != 0 && !a2;
      }
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        return (a2 & 0x100000000) != 0 && a2 == 5;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 5;
      }
    }

    else if (a1 == 3)
    {
      return (a2 & 0x100000000) != 0 && a2 == 3;
    }

    else
    {
      return (a2 & 0x100000000) != 0 && a2 == 4;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t sub_2450BA400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F73496563696F76 && a2 == 0xEE006E6F6974616CLL || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002450F32D0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000002450F32F0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x506C616974617073 && a2 == 0xEF6B63616279616CLL || (sub_2450E5E68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002450F3320 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646574616C6F7369 && a2 == 0xED00006F69647541 || (sub_2450E5E68() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C66664F707364 && a2 == 0xEA00000000006461)
  {

    return 7;
  }

  else
  {
    v6 = sub_2450E5E68();

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

unint64_t sub_2450BA6BC(void *a1)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF79E0, &qword_2450ED318);
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v73 = &v54 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF79E8, &qword_2450ED320);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF79F0, &qword_2450ED328);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF79F8, &qword_2450ED330);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  MEMORY[0x28223BE20](v7);
  v75 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A00, &qword_2450ED338);
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  MEMORY[0x28223BE20](v10);
  v74 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A08, &qword_2450ED340);
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  MEMORY[0x28223BE20](v13);
  v72 = &v54 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A10, &qword_2450ED348);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A18, &qword_2450ED350);
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7A20, &unk_2450ED358);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2450BB244();
  v26 = v78;
  sub_2450E5F48();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v79);
  }

  v54 = v18;
  v55 = v17;
  v28 = v74;
  v27 = v75;
  v29 = v76;
  v56 = 0;
  v30 = v77;
  v78 = v22;
  v31 = v24;
  v32 = sub_2450E5D38();
  if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 8))
  {
    v37 = v21;
    v38 = sub_2450E5B88();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730);
    *v40 = &_s15ContextSemanticON;
    sub_2450E5C58();
    sub_2450E5B78();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v78 + 8))(v31, v37);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v79);
  }

  if (*(v32 + 32) > 3u)
  {
    if (*(v32 + 32) <= 5u)
    {
      v42 = v21;
      v43 = v78;
      if (v33 == 4)
      {
        v84 = 4;
        sub_2450BB394();
        v44 = v56;
        sub_2450E5C48();
        if (!v44)
        {
          (*(v65 + 8))(v27, v64);
          (*(v43 + 8))(v31, v42);
          swift_unknownObjectRelease();
          v36 = 1;
          v35 = 4;
          goto LABEL_33;
        }
      }

      else
      {
        v85 = 5;
        sub_2450BB340();
        v51 = v56;
        sub_2450E5C48();
        if (!v51)
        {
          (*(v66 + 8))(v29, v67);
          (*(v43 + 8))(v31, v42);
          swift_unknownObjectRelease();
          v36 = 1;
          v35 = 5;
          goto LABEL_33;
        }
      }

      (*(v43 + 8))(v31, v42);
      goto LABEL_10;
    }

    v45 = v78;
    if (v33 == 6)
    {
      v86 = 6;
      sub_2450BB2EC();
      v47 = v56;
      sub_2450E5C48();
      if (!v47)
      {
        v48 = v21;
        v49 = v70;
        LODWORD(v35) = sub_2450E5D28();
        (*(v69 + 8))(v30, v49);
        (*(v45 + 8))(v31, v48);
        swift_unknownObjectRelease();
        v36 = 0;
        v35 = v35;
        goto LABEL_33;
      }
    }

    else
    {
      v87 = 7;
      sub_2450BB298();
      v52 = v73;
      v53 = v56;
      sub_2450E5C48();
      if (!v53)
      {
        (*(v68 + 8))(v52, v71);
        (*(v45 + 8))(v31, v21);
        swift_unknownObjectRelease();
        v36 = 1;
        v35 = 6;
        goto LABEL_33;
      }
    }

    goto LABEL_29;
  }

  v34 = v56;
  if (*(v32 + 32) > 1u)
  {
    v45 = v78;
    if (v33 == 2)
    {
      v82 = 2;
      sub_2450BB43C();
      v46 = v72;
      sub_2450E5C48();
      if (!v34)
      {
        (*(v61 + 8))(v46, v60);
        (*(v45 + 8))(v31, v21);
        swift_unknownObjectRelease();
        v36 = 1;
        v35 = 2;
        goto LABEL_33;
      }
    }

    else
    {
      v83 = 3;
      sub_2450BB3E8();
      sub_2450E5C48();
      if (!v34)
      {
        (*(v63 + 8))(v28, v62);
        (*(v45 + 8))(v31, v21);
        swift_unknownObjectRelease();
        v36 = 1;
        v35 = 3;
        goto LABEL_33;
      }
    }

LABEL_29:
    (*(v45 + 8))(v31, v21);
    goto LABEL_10;
  }

  if (*(v32 + 32))
  {
    v81 = 1;
    sub_2450BB490();
    v50 = v55;
    sub_2450E5C48();
    if (!v34)
    {
      (*(v59 + 8))(v50, v57);
      (*(v78 + 8))(v31, v21);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 1;
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  v80[0] = 0;
  sub_2450BB4E4();
  sub_2450E5C48();
  if (v34)
  {
LABEL_23:
    (*(v78 + 8))(v31, v21);
    goto LABEL_10;
  }

  (*(v58 + 8))(v20, v54);
  (*(v78 + 8))(v24, v21);
  swift_unknownObjectRelease();
  v35 = 0;
  v36 = 1;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  return v35 | (v36 << 32);
}

unint64_t sub_2450BB244()
{
  result = qword_27EDF7A28;
  if (!qword_27EDF7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A28);
  }

  return result;
}

unint64_t sub_2450BB298()
{
  result = qword_27EDF7A30;
  if (!qword_27EDF7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A30);
  }

  return result;
}

unint64_t sub_2450BB2EC()
{
  result = qword_27EDF7A38;
  if (!qword_27EDF7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A38);
  }

  return result;
}

unint64_t sub_2450BB340()
{
  result = qword_27EDF7A40;
  if (!qword_27EDF7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A40);
  }

  return result;
}

unint64_t sub_2450BB394()
{
  result = qword_27EDF7A48;
  if (!qword_27EDF7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A48);
  }

  return result;
}

unint64_t sub_2450BB3E8()
{
  result = qword_27EDF7A50;
  if (!qword_27EDF7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A50);
  }

  return result;
}

unint64_t sub_2450BB43C()
{
  result = qword_27EDF7A58;
  if (!qword_27EDF7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A58);
  }

  return result;
}

unint64_t sub_2450BB490()
{
  result = qword_27EDF7A60;
  if (!qword_27EDF7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A60);
  }

  return result;
}

unint64_t sub_2450BB4E4()
{
  result = qword_27EDF7A68;
  if (!qword_27EDF7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7A68);
  }

  return result;
}