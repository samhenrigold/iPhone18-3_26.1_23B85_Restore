uint64_t sub_230DE7038()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 312);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 313) & 1 | (*(v0 + 314) << 8);
  sub_230D1CE3C(v4);
  *(v0 + 96) = v3;
  *(v0 + 104) = v5;
  *(v0 + 112) = v2;
  *(v0 + 120) = v6;
  *(v0 + 128) = v1;
  sub_230D1CDE0(v4, v0 + 136);
  v7 = swift_task_alloc();
  *(v0 + 288) = v7;
  *v7 = v0;
  v7[1] = sub_230DE7140;
  v8 = *(v0 + 272);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);

  return sub_230E57B20(v10, v9, v8, v0 + 96);
}

uint64_t sub_230DE7140(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[25];
    sub_230D666B4(v3[12], v3[13], v3[14], v3[15], v3[16]);

    v5 = sub_230D656D4;
    v6 = v4;
  }

  else
  {
    v7 = v3[25];
    sub_230D666B4(v3[12], v3[13], v3[14], v3[15], v3[16]);
    v5 = sub_230DE7298;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_230DE7298()
{
  if (*(v0[37] + 16))
  {
    v1 = v0[23];
    sub_230E68950();
    sub_230E68C90();
    v2 = sub_230E68C70();

    *v1 = v2;
  }

  else
  {

    sub_230E68950();
    sub_230D66764();
    swift_allocError();
    *v4 = 0xD00000000000001FLL;
    *(v4 + 8) = 0x8000000230E826D0;
    *(v4 + 16) = 3;
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_230DE7428()
{
  sub_230D1CE3C(*(v0 + 208));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ServicesIntelligenceProvider.clearCache(requestContext:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v3 = *(a1 + 16);
  *(v2 + 104) = *a1;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_230DE74CC, v1, 0);
}

uint64_t sub_230DE74CC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v2;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v5, v4, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_230DE78D4;

    return (sub_230D7C3E0)();
  }

  else
  {
    *(v0 + 176) = 31;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_230DE768C;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230DE768C()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230DE779C, v1, 0);
}

uint64_t sub_230DE779C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 152) = v3;
  *(v0 + 160) = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  *(v0 + 16) = v1;
  v11 = *(v0 + 104);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230DE78D4;

  return (sub_230D7C3E0)();
}

uint64_t sub_230DE78D4()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_230D63F54, v1, 0);
}

uint64_t sub_230DE7A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 272) = a2;
  *(v3 + 280) = a3;
  return MEMORY[0x2822009F8](sub_230DE7A40, a2, 0);
}

uint64_t sub_230DE7A40()
{
  v1 = *(v0 + 280);
  sub_230D1CDE0(v1, v0 + 16);
  sub_230D1CDE0(v1, v0 + 56);

  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_230DE7B1C;
  v3 = *(v0 + 280);

  return (sub_230D72678)(15, v3);
}

uint64_t sub_230DE7B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  sub_230D1CE3C(v5);
  v6 = *(v3 + 272);
  if (v1)
  {
    v7 = sub_230DE7C6C;
  }

  else
  {
    v7 = sub_230DE7CD8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230DE7C6C()
{
  v1 = v0[35];
  MEMORY[0x23191E910](v0[38]);
  sub_230D1CE3C(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_230DE7CD8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  sub_230D1CE3C(v2);
  sub_230D1CDE0(v2, v0 + 96);

  return MEMORY[0x2822009F8](sub_230DE7D54, v1, 0);
}

uint64_t sub_230DE7D54()
{
  sub_230D1CDE0(*(v0 + 280), v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_230DE7E48;

  return (sub_230D7F790)(7);
}

uint64_t sub_230DE7E48(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 280);
  *(*v1 + 320) = a1;

  sub_230D1CE3C(v3);

  return MEMORY[0x2822009F8](sub_230DE7F84, v2, 0);
}

uint64_t sub_230DE7F84()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230DE7FEC, v1, 0);
}

uint64_t sub_230DE7FEC()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000033, 0x8000000230E836F0);
  v0[32] = v1;
  v4 = sub_230E69890();
  MEMORY[0x23191DA00](v4);

  MEMORY[0x23191DA00](0x7220656863616320, 0xEE007364726F6365);
  sub_230E68950();

  sub_230D1CDE0(v3, (v0 + 22));

  return MEMORY[0x2822009F8](sub_230DE8124, v2, 0);
}

uint64_t sub_230DE8124()
{
  sub_230D1CDE0(*(v0 + 280), v0 + 216);

  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_230DE81F8;

  return (sub_230D81570)(7);
}

uint64_t sub_230DE81F8(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 280);
  *(*v1 + 336) = a1;

  sub_230D1CE3C(v3);

  return MEMORY[0x2822009F8](sub_230DE8334, v2, 0);
}

uint64_t sub_230DE8334()
{
  v1 = *(v0 + 272);
  sub_230D1CE3C(*(v0 + 280));

  return MEMORY[0x2822009F8](sub_230DE839C, v1, 0);
}

uint64_t sub_230DE839C()
{
  v1 = v0[42];
  if (v1 < 1)
  {
  }

  else
  {
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E83730);
    v0[33] = v1;
    v2 = sub_230E69890();
    MEMORY[0x23191DA00](v2);

    MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E83770);
    sub_230E68950();
  }

  v3 = v0[1];

  return v3();
}

uint64_t ServicesIntelligenceProvider.cleanupExpiredCache(requestContext:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 168) = v1;
  *(v2 + 176) = v3;
  v5 = a1[2];
  v6 = a1[3];
  *(v2 + 184) = v4;
  *(v2 + 192) = v5;
  v7 = a1[4];
  *(v2 + 200) = v6;
  *(v2 + 208) = v7;
  *(v2 + 280) = 0;
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  *(v2 + 80) = v6;
  *(v2 + 88) = v7;
  v9 = swift_task_alloc();
  *(v2 + 216) = v9;
  *v9 = v2;
  v9[1] = sub_230DE8598;

  return ServicesIntelligenceProvider.getKVDatabaseClient(domain:dataClass:requestContext:)((v2 + 280), v8, v2 + 56);
}

uint64_t sub_230DE8598(uint64_t a1)
{
  v4 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = sub_230DE8DA8;
  }

  else
  {
    v6 = sub_230DE86C8;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230DE86C8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1, v3, v2);
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_230DE8AD0;

    return (sub_230D81570)(7, v0 + 16);
  }

  else
  {
    *(v0 + 281) = 7;
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_230DE8884;

    return static RequestContext.from(_:correlationID:)(v0 + 96, (v0 + 281), 0, 0);
  }
}

uint64_t sub_230DE8884()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_230DE8994, v1, 0);
}

uint64_t sub_230DE8994()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 121);
  v6 = *(v0 + 128);
  *(v0 + 248) = v3;
  *(v0 + 256) = v6;
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 16) = v1;
  v11 = *(v0 + 176);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v11, v10, v9, v8, v7);
  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_230DE8AD0;

  return (sub_230D81570)(7, v0 + 16);
}

uint64_t sub_230DE8AD0(uint64_t a1)
{
  v2 = *(*v1 + 168);
  *(*v1 + 272) = a1;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230DE8C4C, v2, 0);
}

uint64_t sub_230DE8C4C()
{
  v1 = v0[34];
  if (v1 < 1)
  {
    sub_230E68950();
  }

  else
  {
    sub_230E69540();
    MEMORY[0x23191DA00](0xD00000000000003FLL, 0x8000000230E83690);
    v0[20] = v1;
    v2 = sub_230E69890();
    MEMORY[0x23191DA00](v2);

    MEMORY[0x23191DA00](0xD000000000000016, 0x8000000230E836D0);
    sub_230E68950();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_230DE8DA8()
{
  v1 = v0[29];
  sub_230E69540();
  v0[17] = 0;
  v0[18] = 0xE000000000000000;
  MEMORY[0x23191DA00](0xD00000000000004ALL, 0x8000000230E835F0);
  v0[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  sub_230E695F0();
  sub_230E68950();

  MEMORY[0x23191E910](v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_230DE8EB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD50, &qword_230E7AF40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEA524();
  sub_230E69A50();
  v13 = *v3;
  v14 = v13;
  v12[23] = 0;
  sub_230DEA578(&v14, v12);
  sub_230D2C474();
  sub_230E69850();
  sub_230D0F4A8(v13, *(&v13 + 1));
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_230E69810();
    LOBYTE(v13) = 2;
    sub_230E69830();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_230DE906C()
{
  v1 = 0x6D75736B63656863;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_230DE90D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DEA168(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DE90FC(uint64_t a1)
{
  v2 = sub_230DEA524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DE9138(uint64_t a1)
{
  v2 = sub_230DEA524();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_230DE9174@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_230DEA28C(a2, v6);
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

uint64_t sub_230DE91F8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_230E68F20();
      sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_230E68EE0();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_230DE93D8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_230DE93D8(v5, v6);
  }

  sub_230E68F20();
  sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_230E68EE0();
}

uint64_t sub_230DE93D8(uint64_t a1, uint64_t a2)
{
  result = sub_230E68730();
  if (!result || (result = sub_230E68750(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_230E68740();
      sub_230E68F20();
      sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_230E68EE0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230DE94B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 176) = a2;
  v7 = *(a3 + 16);
  *(v4 + 200) = *a3;
  *(v4 + 216) = v7;
  *(v4 + 232) = *(a3 + 32);
  *(v4 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  *(v4 + 88) = sub_230DE9ED4(&qword_27DB5ABF8, MEMORY[0x277D83988]);
  *(v4 + 56) = a1;

  return MEMORY[0x2822009F8](sub_230DE9590, a4, 0);
}

uint64_t sub_230DE9590()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    *(v0 + 248) = v1;
    *(v0 + 256) = v2;
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v8 = *(v0 + 176);
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    v9[2] = v0 + 56;
    v9[3] = v7;
    v9[4] = v0 + 16;
    v9[5] = v8;
    sub_230D0FA64(v6, v0 + 136, &qword_27DB5B8B8, &qword_230E7ADD0);
    v10 = swift_task_alloc();
    *(v0 + 272) = v10;
    *v10 = v0;
    v10[1] = sub_230D6633C;

    return sub_230D18BFC(8, v0 + 16, &unk_230E7ADF0, v9);
  }

  else
  {
    *(v0 + 288) = 8;
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v12[1] = sub_230DE976C;

    return static RequestContext.from(_:correlationID:)(v0 + 96, (v0 + 288), 0, 0);
  }
}

uint64_t sub_230DE976C()
{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_230DE987C, v1, 0);
}

uint64_t sub_230DE987C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 121);
  v6 = *(v0 + 128);
  *(v0 + 248) = v3;
  *(v0 + 256) = v6;
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 16) = v1;
  v9 = *(v0 + 176);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  v10[2] = v0 + 56;
  v10[3] = v8;
  v10[4] = v0 + 16;
  v10[5] = v9;
  sub_230D0FA64(v7, v0 + 136, &qword_27DB5B8B8, &qword_230E7ADD0);
  v11 = swift_task_alloc();
  *(v0 + 272) = v11;
  *v11 = v0;
  v11[1] = sub_230D6633C;

  return sub_230D18BFC(8, v0 + 16, &unk_230E7ADF0, v10);
}

uint64_t sub_230DE99C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_230E68F20();
  *&v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_230E68F10();
  v35 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - v14;
  sub_230DE9E8C(&qword_27DB5CD00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_230E68F00();
  sub_230D0DD0C(a1, a2);
  sub_230DE91F8(a1, a2, v7);
  sub_230D0F4A8(a1, a2);
  sub_230E68EF0();
  (*(v36 + 8))(v7, v4);
  v16 = *(v35 + 16);
  v33 = v15;
  v16(v12, v15, v8);
  sub_230DE9E8C(&qword_27DB5CD08, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  v34 = v8;
  result = sub_230E69160();
  v18 = v37;
  v19 = v38;
  v20 = *(v37 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v38 == v20)
  {
LABEL_2:

    v37 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
    sub_230DE9ED4(&qword_281565F50, MEMORY[0x277D83958]);
    v22 = sub_230E68FF0();

    (*(v35 + 8))(v33, v34);
    return v22;
  }

  else
  {
    v36 = xmmword_230E6B3B0;
    v23 = v38;
    while ((v19 & 0x8000000000000000) == 0)
    {
      if (v23 >= *(v18 + 16))
      {
        goto LABEL_13;
      }

      v24 = *(v18 + 32 + v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C208, &qword_230E75180);
      v25 = swift_allocObject();
      *(v25 + 16) = v36;
      *(v25 + 56) = MEMORY[0x277D84B78];
      *(v25 + 64) = MEMORY[0x277D84BC0];
      *(v25 + 32) = v24;
      v26 = sub_230E69090();
      v28 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_230E49E88(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_230E49E88((v29 > 1), v30 + 1, 1, v21);
        v21 = result;
      }

      ++v23;
      *(v21 + 16) = v30 + 1;
      v31 = v21 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      if (v20 == v23)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_230DE9DE4()
{
  result = qword_27DB5CCF0;
  if (!qword_27DB5CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCF0);
  }

  return result;
}

unint64_t sub_230DE9E38()
{
  result = qword_27DB5CCF8;
  if (!qword_27DB5CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CCF8);
  }

  return result;
}

uint64_t sub_230DE9E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230DE9ED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB5D8F0, &unk_230E70E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DE9F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1BF00;

  return sub_230E1C6B0(a1, v4, v5, v7, v6);
}

uint64_t sub_230DE9FF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_230DEA05C()
{
  result = qword_27DB5CD18;
  if (!qword_27DB5CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD18);
  }

  return result;
}

unint64_t sub_230DEA0B0()
{
  result = qword_27DB5CD20;
  if (!qword_27DB5CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD20);
  }

  return result;
}

unint64_t sub_230DEA104()
{
  result = qword_27DB5CD38;
  if (!qword_27DB5CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD38);
  }

  return result;
}

uint64_t sub_230DEA168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75736B63656863 && a2 == 0xE800000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DEA28C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD40, &qword_230E7AF38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEA524();
  sub_230E69A30();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_230D2C420();
  sub_230E69760();
  v20 = a2;
  v11 = v22;
  v10 = v23;
  LOBYTE(v22) = 1;
  v18 = sub_230E69720();
  v19 = v12;
  LOBYTE(v22) = 2;
  sub_230E69740();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  sub_230D0DD0C(v11, v10);
  v15 = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_230D0F4A8(v11, v10);

  v17 = v20;
  *v20 = v11;
  v17[1] = v10;
  v17[2] = v18;
  v17[3] = v15;
  v17[4] = v14;
  return result;
}

unint64_t sub_230DEA524()
{
  result = qword_27DB5CD48;
  if (!qword_27DB5CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD48);
  }

  return result;
}

unint64_t sub_230DEA5E8()
{
  result = qword_27DB5CD58;
  if (!qword_27DB5CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD58);
  }

  return result;
}

unint64_t sub_230DEA640()
{
  result = qword_27DB5CD60;
  if (!qword_27DB5CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD60);
  }

  return result;
}

unint64_t sub_230DEA698()
{
  result = qword_27DB5CD68;
  if (!qword_27DB5CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD68);
  }

  return result;
}

uint64_t Configuration.useCases.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Configuration.kvDatabases.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Configuration.sqlDatabases.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Configuration.vectorDatabases.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Configuration.logging.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

uint64_t Configuration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD70, &qword_230E7B060);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEAD9C();
  sub_230E69A30();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD78, &qword_230E7B068);
    v22 = 0;
    sub_230DEADF0();
    sub_230E69700();
    v11 = v23;
    v12 = MEMORY[0x277D84F90];
    if (!v23)
    {
      v11 = MEMORY[0x277D84F90];
    }

    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD90, &qword_230E7B070);
    v22 = 1;
    sub_230DEAEC8();
    sub_230E69700();
    if (v23)
    {
      v13 = v23;
    }

    else
    {
      v13 = v12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDA0, &qword_230E7B078);
    v22 = 2;
    sub_230DEAF4C(&qword_27DB5CDA8, &qword_27DB5AC40, &protocol conformance descriptor for SQLDatabaseConfiguration, MEMORY[0x277D83978]);
    sub_230E69700();
    v20 = a2;
    if (v23)
    {
      v14 = v23;
    }

    else
    {
      v14 = v12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDB0, &qword_230E7B080);
    v22 = 3;
    sub_230DEAFD4();
    sub_230E69700();
    v19 = v6;
    if (v23)
    {
      v15 = v23;
    }

    else
    {
      v15 = v12;
    }

    v22 = 4;
    sub_230DEB058();
    sub_230E69700();
    v16 = v23;

    LOBYTE(v23) = 5;
    v17 = sub_230E69750();
    (*(v19 + 8))(v9, v5);
    v18 = v20;
    *v20 = v21;
    v18[1] = v13;
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = v16;
    v18[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_230DEAD9C()
{
  result = qword_281566790;
  if (!qword_281566790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566790);
  }

  return result;
}

unint64_t sub_230DEADF0()
{
  result = qword_27DB5CD80;
  if (!qword_27DB5CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD78, &qword_230E7B068);
    sub_230DEAE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD80);
  }

  return result;
}

unint64_t sub_230DEAE74()
{
  result = qword_27DB5CD88;
  if (!qword_27DB5CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD88);
  }

  return result;
}

unint64_t sub_230DEAEC8()
{
  result = qword_27DB5CD98;
  if (!qword_27DB5CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD90, &qword_230E7B070);
    sub_230D0D730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CD98);
  }

  return result;
}

uint64_t sub_230DEAF4C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CDA0, &qword_230E7B078);
    sub_230DEB730(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DEAFD4()
{
  result = qword_27DB5CDB8;
  if (!qword_27DB5CDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CDB0, &qword_230E7B080);
    sub_230D45B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDB8);
  }

  return result;
}

unint64_t sub_230DEB058()
{
  result = qword_27DB5CDC0;
  if (!qword_27DB5CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDC0);
  }

  return result;
}

uint64_t Configuration.init(useCases:kvDatabases:sqlDatabases:vectorDatabases:logging:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = *a5;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;

  a7[4] = v9;
  a7[5] = a6;
  return result;
}

uint64_t sub_230DEB0F0()
{
  v1 = *v0;
  v2 = 0x7365736143657375;
  v3 = 0x6144726F74636576;
  v4 = 0x676E6967676F6CLL;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616261746144766BLL;
  if (v1 != 1)
  {
    v5 = 0x62617461446C7173;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230DEB1C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DEBBA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DEB1F0(uint64_t a1)
{
  v2 = sub_230DEAD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEB22C(uint64_t a1)
{
  v2 = sub_230DEAD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDC8, &qword_230E7B088);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v20 = v1[4];
  v21 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_230DEAD9C();

  sub_230E69A50();
  v25 = v10;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD78, &qword_230E7B068);
  sub_230DEB5D4();
  sub_230E69850();
  if (v2)
  {
  }

  else
  {
    v17 = v21;
    v16 = v22;

    v25 = v23;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CD90, &qword_230E7B070);
    sub_230DEB6AC();
    sub_230E69850();
    v25 = v16;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDA0, &qword_230E7B078);
    sub_230DEAF4C(&qword_281565F80, &qword_281566328, &protocol conformance descriptor for SQLDatabaseConfiguration, MEMORY[0x277D83948]);
    sub_230E69850();
    v25 = v17;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDB0, &qword_230E7B080);
    sub_230DEB774();
    sub_230E69850();
    v25 = v20;
    v24 = 4;
    sub_230DEB7F8();

    sub_230E697F0();

    LOBYTE(v25) = 5;
    sub_230E69840();
  }

  return (*(v5 + 8))(v8, v15);
}

unint64_t sub_230DEB5D4()
{
  result = qword_27DB5CDD0;
  if (!qword_27DB5CDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD78, &qword_230E7B068);
    sub_230DEB658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDD0);
  }

  return result;
}

unint64_t sub_230DEB658()
{
  result = qword_27DB5CDD8;
  if (!qword_27DB5CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDD8);
  }

  return result;
}

unint64_t sub_230DEB6AC()
{
  result = qword_281565F88;
  if (!qword_281565F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CD90, &qword_230E7B070);
    sub_230D0D784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F88);
  }

  return result;
}

uint64_t sub_230DEB730(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SQLDatabaseConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230DEB774()
{
  result = qword_281565F78;
  if (!qword_281565F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5CDB0, &qword_230E7B080);
    sub_230D45B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281565F78);
  }

  return result;
}

unint64_t sub_230DEB7F8()
{
  result = qword_2815664E0;
  if (!qword_2815664E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815664E0);
  }

  return result;
}

uint64_t sub_230DEB87C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_230DEB8C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230DEB934()
{
  result = qword_27DB5CDE0;
  if (!qword_27DB5CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CDE0);
  }

  return result;
}

unint64_t sub_230DEB98C()
{
  result = qword_281566780;
  if (!qword_281566780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566780);
  }

  return result;
}

unint64_t sub_230DEB9E4()
{
  result = qword_281566788;
  if (!qword_281566788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281566788);
  }

  return result;
}

char *sub_230DEBA38()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = byte_2845A5CE0[v0 + 32];
    sub_230D49110(0, 1, 0);
    v4 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      sub_230D49110((v5 > 1), v6 + 1, 1);
      v4 = v1;
    }

    *(v4 + 16) = v7;
    *(v4 + 32 + v6) = v3;
    v8 = *(v2 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v9 > *(v2 + 3) >> 1)
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v2 = sub_230E4AB9C(isUniquelyReferenced_nonNull_native, v11, 1, v2);
    }

    if (!*(v4 + 16))
    {
      goto LABEL_19;
    }

    v12 = *(v2 + 2);
    if ((*(v2 + 3) >> 1) - v12 <= v6)
    {
      goto LABEL_17;
    }

    memcpy(&v2[v12 + 32], (v4 + 32), v6 + 1);

    v13 = *(v2 + 2);
    v14 = __OFADD__(v13, v7);
    v15 = v13 + v7;
    if (v14)
    {
      goto LABEL_18;
    }

    *(v2 + 2) = v15;
    if (++v0 == 10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:

  __break(1u);
  return result;
}

uint64_t sub_230DEBBA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365736143657375 && a2 == 0xE800000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616261746144766BLL && a2 == 0xEB00000000736573 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x62617461446C7173 && a2 == 0xEC00000073657361 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144726F74636576 && a2 == 0xEF73657361626174 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_230DEBDB0(char a1)
{
  result = 0x6F6C6C6568;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 11:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6572546863746566;
      break;
    case 5:
      result = 0x61436573556E7572;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x74654D6873756C66;
      break;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x44564B6E49746573;
      break;
    case 13:
    case 14:
    case 16:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_230DEBFC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DF2D88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DEBFF4(uint64_t a1)
{
  v2 = sub_230DEE464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC030(uint64_t a1)
{
  v2 = sub_230DEE464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC06C(uint64_t a1)
{
  v2 = sub_230DEEA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC0A8(uint64_t a1)
{
  v2 = sub_230DEEA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC0E4(uint64_t a1)
{
  v2 = sub_230DEE774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC120(uint64_t a1)
{
  v2 = sub_230DEE774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC15C(uint64_t a1)
{
  v2 = sub_230DEEB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC198(uint64_t a1)
{
  v2 = sub_230DEEB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC1D4(uint64_t a1)
{
  v2 = sub_230DEE96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC210(uint64_t a1)
{
  v2 = sub_230DEE96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC24C(uint64_t a1)
{
  v2 = sub_230DEEC0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC288(uint64_t a1)
{
  v2 = sub_230DEEC0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC2C4(uint64_t a1)
{
  v2 = sub_230DEEABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC300(uint64_t a1)
{
  v2 = sub_230DEEABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC33C(uint64_t a1)
{
  v2 = sub_230DEE870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC378(uint64_t a1)
{
  v2 = sub_230DEE870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC3B4(uint64_t a1)
{
  v2 = sub_230DEED5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC3F0(uint64_t a1)
{
  v2 = sub_230DEED5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC42C(uint64_t a1)
{
  v2 = sub_230DEE5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC468(uint64_t a1)
{
  v2 = sub_230DEE5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC4A4(uint64_t a1)
{
  v2 = sub_230DEE6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC4E0(uint64_t a1)
{
  v2 = sub_230DEE6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC51C(uint64_t a1)
{
  v2 = sub_230DEECB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC558(uint64_t a1)
{
  v2 = sub_230DEECB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC594(uint64_t a1)
{
  v2 = sub_230DEEC60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC5D0(uint64_t a1)
{
  v2 = sub_230DEEC60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC60C(uint64_t a1)
{
  v2 = sub_230DEEBB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC648(uint64_t a1)
{
  v2 = sub_230DEEBB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC684(uint64_t a1)
{
  v2 = sub_230DEE624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC6C0(uint64_t a1)
{
  v2 = sub_230DEE624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DEC7C8(uint64_t a1)
{
  v2 = sub_230DEE81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC804(uint64_t a1)
{
  v2 = sub_230DEE81C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC840(uint64_t a1)
{
  v2 = sub_230DEE57C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC87C(uint64_t a1)
{
  v2 = sub_230DEE57C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC8B8(uint64_t a1)
{
  v2 = sub_230DEE4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC8F4(uint64_t a1)
{
  v2 = sub_230DEE4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC930(uint64_t a1)
{
  v2 = sub_230DEE8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC96C(uint64_t a1)
{
  v2 = sub_230DEE8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DEC9A8(uint64_t a1)
{
  v2 = sub_230DEED08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DEC9E4(uint64_t a1)
{
  v2 = sub_230DEED08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServicesIntelligenceXPCRequest.encode(to:)(void *a1)
{
  v2 = v1;
  *&v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDE8, &qword_230E7B270);
  *&v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216, v4);
  v212 = &v163 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDF0, &qword_230E7B278);
  v209 = *(v6 - 8);
  v210 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v206 = &v163 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CDF8, &qword_230E7B280);
  v201 = *(v9 - 8);
  v202 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v199 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE00, &qword_230E7B288);
  v213 = *(v12 - 8);
  v214 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v211 = &v163 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE08, &qword_230E7B290);
  v207 = *(v15 - 8);
  v208 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v205 = &v163 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE10, &qword_230E7B298);
  v203 = *(v18 - 8);
  v204 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v200 = &v163 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE18, &qword_230E7B2A0);
  v197 = *(v21 - 8);
  v198 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v196 = &v163 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE20, &qword_230E7B2A8);
  v194 = *(v24 - 8);
  v195 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v191 = &v163 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE28, &qword_230E7B2B0);
  v192 = *(v27 - 8);
  v193 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v188 = &v163 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE30, &qword_230E7B2B8);
  v189 = *(v30 - 8);
  v190 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v187 = &v163 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE38, &qword_230E7B2C0);
  v185 = *(v33 - 8);
  v186 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v184 = &v163 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE40, &qword_230E7B2C8);
  v182 = *(v36 - 8);
  v183 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v181 = &v163 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE48, &qword_230E7B2D0);
  v179 = *(v39 - 8);
  v180 = v39;
  MEMORY[0x28223BE20](v39, v40);
  v178 = &v163 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE50, &qword_230E7B2D8);
  v176 = *(v42 - 8);
  v177 = v42;
  MEMORY[0x28223BE20](v42, v43);
  v175 = &v163 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE58, &qword_230E7B2E0);
  v173 = *(v45 - 8);
  v174 = v45;
  MEMORY[0x28223BE20](v45, v46);
  v172 = &v163 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE60, &qword_230E7B2E8);
  v170 = *(v48 - 8);
  v171 = v48;
  MEMORY[0x28223BE20](v48, v49);
  v169 = &v163 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE68, &qword_230E7B2F0);
  v167 = *(v51 - 8);
  v168 = v51;
  MEMORY[0x28223BE20](v51, v52);
  v166 = &v163 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE70, &qword_230E7B2F8);
  v164 = *(v54 - 8);
  v165 = v54;
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v163 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE78, &qword_230E7B300);
  v163 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v163 - v60;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CE80, &qword_230E7B308);
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v62);
  v64 = &v163 - v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DEE464();
  v219 = v64;
  sub_230E69A50();
  v65 = v2[7];
  v228[6] = v2[6];
  v229[0] = v65;
  *(v229 + 9) = *(v2 + 121);
  v66 = v2[3];
  v228[2] = v2[2];
  v228[3] = v66;
  v67 = v2[5];
  v228[4] = v2[4];
  v228[5] = v67;
  v68 = v2[1];
  v228[0] = *v2;
  v228[1] = v68;
  switch(sub_230DEE4B8(v228))
  {
    case 1u:
      v126 = sub_230D04BB0(v228);
      LOBYTE(v221[0]) = 5;
      sub_230DEEBB8();
      v70 = v175;
      v72 = v219;
      v71 = v220;
      sub_230E697A0();
      v127 = *v126;
      v128 = *(v126 + 32);
      v221[1] = *(v126 + 16);
      v222 = v128;
      v221[0] = v127;
      v129 = *(v126 + 48);
      v130 = *(v126 + 64);
      v131 = *(v126 + 80);
      LOBYTE(v226) = *(v126 + 96);
      v224 = v130;
      v225 = v131;
      v223 = v129;
      sub_230DC7C2C();
      v73 = v177;
      sub_230E69850();
      v74 = v176;
      goto LABEL_28;
    case 2u:
      v111 = sub_230D04BB0(v228);
      v112 = *v111;
      v215 = *(v111 + 16);
      v216 = v112;
      v113 = *(v111 + 32);
      v114 = *(v111 + 40);
      LOBYTE(v221[0]) = 6;
      sub_230DEEB10();
      v115 = v178;
      v91 = v219;
      v90 = v220;
      sub_230E697A0();
      v221[0] = v216;
      v221[1] = v215;
      *&v222 = v113;
      *(&v222 + 1) = v114;
      sub_230DEEB64();
      v116 = v180;
      sub_230E69850();
      v117 = v179;
      goto LABEL_17;
    case 3u:
      sub_230D04BB0(v228);
      LOBYTE(v221[0]) = 7;
      sub_230DEEABC();
      v115 = v181;
      v91 = v219;
      v90 = v220;
      sub_230E697A0();
      v116 = v183;
      sub_230E69810();
      v117 = v182;
LABEL_17:
      (*(v117 + 8))(v115, v116);
      return (*(v217 + 8))(v91, v90);
    case 4u:
      v95 = sub_230D04BB0(v228);
      v96 = *v95;
      v97 = *(v95 + 16);
      *&v216 = *(v95 + 8);
      v98 = *(v95 + 32);
      v214 = *(v95 + 24);
      *&v215 = v97;
      v100 = *(v95 + 40);
      v99 = *(v95 + 48);
      LOBYTE(v221[0]) = 8;
      sub_230DEEA14();
      v89 = v184;
      v91 = v219;
      v90 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v96;
      v230 = 0;
      sub_230D0D0D4();
      v92 = v186;
      v101 = v218;
      sub_230E69850();
      if (v101)
      {
        v94 = v185;
        goto LABEL_9;
      }

      v156 = v98;
      v157 = v214;
      LOBYTE(v221[0]) = 1;
      sub_230E69810();
      *&v221[0] = v157;
      *(&v221[0] + 1) = v156;
      *&v221[1] = v100;
      *(&v221[1] + 1) = v99;
      v230 = 2;
      sub_230DEEA68();
      sub_230E69850();
      v158 = v219;
      v159 = v185;
      goto LABEL_46;
    case 5u:
      v132 = sub_230D04BB0(v228);
      v133 = *v132;
      LOBYTE(v221[0]) = 9;
      sub_230DEE96C();
      v134 = v187;
      v91 = v219;
      v90 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v133;
      v230 = 0;
      sub_230D0D0D4();
      v135 = v190;
      v136 = v218;
      sub_230E69850();
      if (!v136)
      {
        LOBYTE(v221[0]) = 1;
        sub_230E69810();
        v160 = *(v132 + 104);
        v224 = *(v132 + 88);
        v225 = v160;
        v226 = *(v132 + 120);
        v227 = *(v132 + 136);
        v161 = *(v132 + 40);
        v221[0] = *(v132 + 24);
        v221[1] = v161;
        v162 = *(v132 + 72);
        v222 = *(v132 + 56);
        v223 = v162;
        v230 = 2;
        sub_230DEE9C0();
        sub_230E69850();
      }

      (*(v189 + 8))(v134, v135);
      return (*(v217 + 8))(v91, v90);
    case 6u:
      v138 = sub_230D04BB0(v228);
      v139 = *v138;
      *&v216 = *(v138 + 8);
      v140 = *(v138 + 24);
      v215 = *(v138 + 32);
      v141 = *(v138 + 48);
      LOBYTE(v221[0]) = 10;
      sub_230DEE8C4();
      v142 = v188;
      v144 = v219;
      v143 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v139;
      v230 = 0;
      sub_230D0D0D4();
      v145 = v193;
      v146 = v218;
      sub_230E69850();
      if (!v146)
      {
        v218 = v141;
        LOBYTE(v221[0]) = 1;
        sub_230E69810();
        *&v221[0] = v140;
        *(v221 + 8) = v215;
        *(&v221[1] + 1) = v218;
        v230 = 2;
        sub_230DEE918();
        sub_230E69850();
      }

      (*(v192 + 8))(v142, v145);
      return (*(v217 + 8))(v144, v143);
    case 7u:
      v118 = sub_230D04BB0(v228);
      v119 = *v118;
      v216 = *(v118 + 8);
      LOBYTE(v221[0]) = 11;
      sub_230DEE870();
      v120 = v191;
      v122 = v219;
      v121 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v119;
      v230 = 0;
      sub_230D0D0D4();
      v123 = v195;
      v124 = v218;
      sub_230E69850();
      if (!v124)
      {
        v221[0] = v216;
        v230 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF00, &qword_230E7B318);
        sub_230D1D1C4(&qword_27DB5CF08, &qword_27DB5CF00, &qword_230E7B318, &protocol conformance descriptor for GetFromKVDatabaseRequest<A>);
        sub_230E69850();
      }

      v125 = v194;
      goto LABEL_43;
    case 8u:
      v151 = sub_230D04BB0(v228);
      v152 = *v151;
      v216 = *(v151 + 8);
      LOBYTE(v221[0]) = 12;
      sub_230DEE81C();
      v120 = v196;
      v122 = v219;
      v121 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v152;
      v230 = 0;
      sub_230D0D0D4();
      v123 = v198;
      v153 = v218;
      sub_230E69850();
      if (!v153)
      {
        v221[0] = v216;
        v230 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CEE8, &qword_230E7B310);
        sub_230D1D1C4(&qword_27DB5CEF0, &qword_27DB5CEE8, &qword_230E7B310, &protocol conformance descriptor for SetInKVDatabaseRequest<A>);
        sub_230E69850();
      }

      v125 = v197;
LABEL_43:
      (*(v125 + 8))(v120, v123);
      return (*(v217 + 8))(v122, v121);
    case 9u:
      v102 = sub_230D04BB0(v228);
      v103 = *v102;
      v104 = *(v102 + 24);
      LOBYTE(v221[0]) = 13;
      sub_230DEE774();
      v105 = v200;
      v107 = v219;
      v106 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v103;
      v230 = 0;
      sub_230D0D0D4();
      v108 = v204;
      v109 = v218;
      sub_230E69850();
      if (!v109)
      {
        LOBYTE(v221[0]) = 1;
        sub_230E69810();
        *&v221[0] = v104;
        v230 = 2;
        sub_230DEE7C8();
        sub_230E69850();
      }

      v110 = v203;
      goto LABEL_39;
    case 0xAu:
      v147 = sub_230D04BB0(v228);
      v148 = *v147;
      v149 = *(v147 + 24);
      LOBYTE(v221[0]) = 14;
      sub_230DEE6CC();
      v105 = v205;
      v107 = v219;
      v106 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v148;
      v230 = 0;
      sub_230D0D0D4();
      v108 = v208;
      v150 = v218;
      sub_230E69850();
      if (!v150)
      {
        LOBYTE(v221[0]) = 1;
        sub_230E69810();
        *&v221[0] = v149;
        v230 = 2;
        sub_230DEE720();
        sub_230E69850();
      }

      v110 = v207;
LABEL_39:
      (*(v110 + 8))(v105, v108);
      return (*(v217 + 8))(v107, v106);
    case 0xBu:
      v83 = sub_230D04BB0(v228);
      v84 = *v83;
      v85 = *(v83 + 16);
      *&v216 = *(v83 + 8);
      *&v215 = v85;
      v86 = *(v83 + 32);
      v212 = *(v83 + 24);
      v87 = *(v83 + 40);
      v88 = *(v83 + 48);
      LOBYTE(v221[0]) = 15;
      sub_230DEE624();
      v89 = v211;
      v91 = v219;
      v90 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v84;
      v230 = 0;
      sub_230D0D0D4();
      v92 = v214;
      v93 = v218;
      sub_230E69850();
      if (v93)
      {
        v94 = v213;
LABEL_9:
        (*(v94 + 8))(v89, v92);
        return (*(v217 + 8))(v91, v90);
      }

      else
      {
        v154 = v86;
        v155 = v212;
        LOBYTE(v221[0]) = 1;
        sub_230E69810();
        *&v221[0] = v155;
        *(&v221[0] + 1) = v154;
        *&v221[1] = v87;
        BYTE8(v221[1]) = v88;
        v230 = 2;
        sub_230DEE678();
        sub_230E69850();
        v158 = v219;
        v159 = v213;
LABEL_46:
        (*(v159 + 8))(v89, v92);
        return (*(v217 + 8))(v158, v220);
      }

    case 0xCu:
      sub_230D04BB0(v228);
      LOBYTE(v221[0]) = 17;
      sub_230DEE57C();
      v70 = v206;
      v72 = v219;
      v71 = v220;
      sub_230E697A0();
      v73 = v210;
      sub_230E69840();
      v74 = v209;
      goto LABEL_28;
    case 0xDu:
      v137 = *sub_230D04BB0(v228);
      LOBYTE(v221[0]) = 18;
      sub_230DEE4D4();
      v70 = v212;
      v72 = v219;
      v71 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v137;
      sub_230DEE528();
      v73 = v216;
      sub_230E69850();
      v74 = v215;
      goto LABEL_28;
    case 0xEu:
      LOBYTE(v221[0]) = 0;
      sub_230DEED5C();
      v80 = v219;
      v81 = v220;
      sub_230E697A0();
      (*(v163 + 8))(v61, v58);
      return (*(v217 + 8))(v80, v81);
    case 0xFu:
      LOBYTE(v221[0]) = 1;
      sub_230DEED08();
      v76 = v219;
      v77 = v220;
      sub_230E697A0();
      (*(v164 + 8))(v57, v165);
      return (*(v217 + 8))(v76, v77);
    case 0x10u:
      LOBYTE(v221[0]) = 2;
      sub_230DEECB4();
      v75 = v166;
      v76 = v219;
      v77 = v220;
      sub_230E697A0();
      v79 = v167;
      v78 = v168;
      goto LABEL_33;
    case 0x11u:
      LOBYTE(v221[0]) = 3;
      sub_230DEEC60();
      v75 = v169;
      v76 = v219;
      v77 = v220;
      sub_230E697A0();
      v79 = v170;
      v78 = v171;
      goto LABEL_33;
    case 0x12u:
      LOBYTE(v221[0]) = 16;
      sub_230DEE5D0();
      v75 = v199;
      v76 = v219;
      v77 = v220;
      sub_230E697A0();
      v79 = v201;
      v78 = v202;
LABEL_33:
      (*(v79 + 8))(v75, v78);
      return (*(v217 + 8))(v76, v77);
    default:
      v69 = *sub_230D04BB0(v228);
      LOBYTE(v221[0]) = 4;
      sub_230DEEC0C();
      v70 = v172;
      v72 = v219;
      v71 = v220;
      sub_230E697A0();
      LOBYTE(v221[0]) = v69;
      sub_230D0D0D4();
      v73 = v174;
      sub_230E697F0();
      v74 = v173;
LABEL_28:
      (*(v74 + 8))(v70, v73);
      return (*(v217 + 8))(v72, v71);
  }
}

unint64_t sub_230DEE464()
{
  result = qword_27DB5CE88;
  if (!qword_27DB5CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CE88);
  }

  return result;
}

uint64_t sub_230DEE4B8(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 0xDF)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 14);
  }
}

unint64_t sub_230DEE4D4()
{
  result = qword_27DB5CE90;
  if (!qword_27DB5CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CE90);
  }

  return result;
}

unint64_t sub_230DEE528()
{
  result = qword_27DB5CE98;
  if (!qword_27DB5CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CE98);
  }

  return result;
}

unint64_t sub_230DEE57C()
{
  result = qword_27DB5CEA0;
  if (!qword_27DB5CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEA0);
  }

  return result;
}

unint64_t sub_230DEE5D0()
{
  result = qword_27DB5CEA8;
  if (!qword_27DB5CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEA8);
  }

  return result;
}

unint64_t sub_230DEE624()
{
  result = qword_27DB5CEB0;
  if (!qword_27DB5CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEB0);
  }

  return result;
}

unint64_t sub_230DEE678()
{
  result = qword_27DB5CEB8;
  if (!qword_27DB5CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEB8);
  }

  return result;
}

unint64_t sub_230DEE6CC()
{
  result = qword_27DB5CEC0;
  if (!qword_27DB5CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEC0);
  }

  return result;
}

unint64_t sub_230DEE720()
{
  result = qword_27DB5CEC8;
  if (!qword_27DB5CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEC8);
  }

  return result;
}

unint64_t sub_230DEE774()
{
  result = qword_27DB5CED0;
  if (!qword_27DB5CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CED0);
  }

  return result;
}

unint64_t sub_230DEE7C8()
{
  result = qword_27DB5CED8;
  if (!qword_27DB5CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CED8);
  }

  return result;
}

unint64_t sub_230DEE81C()
{
  result = qword_27DB5CEE0;
  if (!qword_27DB5CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEE0);
  }

  return result;
}

unint64_t sub_230DEE870()
{
  result = qword_27DB5CEF8;
  if (!qword_27DB5CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CEF8);
  }

  return result;
}

unint64_t sub_230DEE8C4()
{
  result = qword_27DB5CF10;
  if (!qword_27DB5CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF10);
  }

  return result;
}

unint64_t sub_230DEE918()
{
  result = qword_27DB5CF18;
  if (!qword_27DB5CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF18);
  }

  return result;
}

unint64_t sub_230DEE96C()
{
  result = qword_27DB5CF20;
  if (!qword_27DB5CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF20);
  }

  return result;
}

unint64_t sub_230DEE9C0()
{
  result = qword_27DB5CF28;
  if (!qword_27DB5CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF28);
  }

  return result;
}

unint64_t sub_230DEEA14()
{
  result = qword_27DB5CF30;
  if (!qword_27DB5CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF30);
  }

  return result;
}

unint64_t sub_230DEEA68()
{
  result = qword_27DB5CF38;
  if (!qword_27DB5CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF38);
  }

  return result;
}

unint64_t sub_230DEEABC()
{
  result = qword_27DB5CF40;
  if (!qword_27DB5CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF40);
  }

  return result;
}

unint64_t sub_230DEEB10()
{
  result = qword_27DB5CF48;
  if (!qword_27DB5CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF48);
  }

  return result;
}

unint64_t sub_230DEEB64()
{
  result = qword_27DB5CF50;
  if (!qword_27DB5CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF50);
  }

  return result;
}

unint64_t sub_230DEEBB8()
{
  result = qword_27DB5CF58;
  if (!qword_27DB5CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF58);
  }

  return result;
}

unint64_t sub_230DEEC0C()
{
  result = qword_27DB5CF60;
  if (!qword_27DB5CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF60);
  }

  return result;
}

unint64_t sub_230DEEC60()
{
  result = qword_27DB5CF68;
  if (!qword_27DB5CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF68);
  }

  return result;
}

unint64_t sub_230DEECB4()
{
  result = qword_27DB5CF70;
  if (!qword_27DB5CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF70);
  }

  return result;
}

unint64_t sub_230DEED08()
{
  result = qword_27DB5CF78;
  if (!qword_27DB5CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF78);
  }

  return result;
}

unint64_t sub_230DEED5C()
{
  result = qword_27DB5CF80;
  if (!qword_27DB5CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5CF80);
  }

  return result;
}

uint64_t ServicesIntelligenceXPCRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v239 = a2;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF88, &qword_230E7B320);
  v214 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v3);
  v232 = &v180 - v4;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF90, &qword_230E7B328);
  v237 = *(v213 - 8);
  MEMORY[0x28223BE20](v213, v5);
  v233 = &v180 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF98, &qword_230E7B330);
  v207 = *(v7 - 8);
  v208 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v229 = &v180 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFA0, &qword_230E7B338);
  v11 = *(v10 - 8);
  v215 = v10;
  v216 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v234 = &v180 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFA8, &qword_230E7B340);
  v211 = *(v14 - 8);
  v212 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v231 = &v180 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFB0, &qword_230E7B348);
  v209 = *(v17 - 8);
  v210 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v230 = &v180 - v19;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFB8, &qword_230E7B350);
  v206 = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v20);
  v228 = &v180 - v21;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFC0, &qword_230E7B358);
  v203 = *(v217 - 8);
  MEMORY[0x28223BE20](v217, v22);
  v227 = &v180 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFC8, &qword_230E7B360);
  v204 = *(v24 - 8);
  v205 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v226 = &v180 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFD0, &qword_230E7B368);
  v201 = *(v27 - 8);
  v202 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v225 = &v180 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFD8, &qword_230E7B370);
  v199 = *(v30 - 8);
  v200 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v224 = &v180 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFE0, &qword_230E7B378);
  v197 = *(v33 - 8);
  v198 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v236 = &v180 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFE8, &qword_230E7B380);
  v195 = *(v36 - 8);
  v196 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v223 = &v180 - v38;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFF0, &qword_230E7B388);
  v194 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v39);
  v222 = &v180 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CFF8, &qword_230E7B390);
  v192 = *(v41 - 8);
  v193 = v41;
  MEMORY[0x28223BE20](v41, v42);
  v221 = &v180 - v43;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D000, &qword_230E7B398);
  v190 = *(v235 - 8);
  MEMORY[0x28223BE20](v235, v44);
  v220 = &v180 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D008, &qword_230E7B3A0);
  v188 = *(v46 - 8);
  v189 = v46;
  MEMORY[0x28223BE20](v46, v47);
  v219 = &v180 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D010, &qword_230E7B3A8);
  v186 = *(v49 - 8);
  v187 = v49;
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v180 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D018, &qword_230E7B3B0);
  v185 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v180 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D020, &unk_230E7B3B8);
  v240 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v180 - v59;
  v61 = a1[3];
  v241 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_230DEE464();
  v62 = v264;
  sub_230E69A30();
  if (v62)
  {
    goto LABEL_9;
  }

  v181 = v53;
  v182 = v56;
  v183 = v52;
  v184 = 0;
  v64 = v235;
  v63 = v236;
  v66 = v237;
  v65 = v238;
  v67 = v239;
  v264 = v57;
  v68 = sub_230E69780();
  v69 = (2 * *(v68 + 16)) | 1;
  v260 = v68;
  v261 = v68 + 32;
  v262 = 0;
  v263 = v69;
  v70 = sub_230D089D0();
  if (v262 != v263 >> 1)
  {
LABEL_6:
    v75 = sub_230E69580();
    swift_allocError();
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
    *v77 = &type metadata for ServicesIntelligenceXPCRequest;
    v72 = v60;
    v73 = v264;
    sub_230E696A0();
    sub_230E69570();
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D84160], v75);
    swift_willThrow();
LABEL_7:
    (*(v240 + 8))(v72, v73);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v78 = v241;
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  switch(v70)
  {
    case 0:
      v251[0] = 0;
      sub_230DEED5C();
      v71 = v182;
      v72 = v60;
      v73 = v264;
      v74 = v184;
      sub_230E69690();
      if (v74)
      {
        goto LABEL_7;
      }

      (*(v185 + 8))(v71, v181);
      (*(v240 + 8))(v72, v73);
      swift_unknownObjectRelease();
      sub_230DF163C(&v252);
      goto LABEL_33;
    case 1:
      v251[0] = 1;
      sub_230DEED08();
      v111 = v183;
      v110 = v184;
      v81 = v264;
      sub_230E69690();
      if (v110)
      {
        goto LABEL_41;
      }

      (*(v186 + 8))(v111, v187);
      (*(v240 + 8))(v60, v81);
      swift_unknownObjectRelease();
      sub_230DF1604(&v252);
      goto LABEL_33;
    case 2:
      v251[0] = 2;
      sub_230DEECB4();
      v100 = v219;
      v81 = v264;
      v101 = v184;
      sub_230E69690();
      if (v101)
      {
        goto LABEL_41;
      }

      (*(v188 + 8))(v100, v189);
      (*(v240 + 8))(v60, v81);
      swift_unknownObjectRelease();
      sub_230DF15CC(&v252);
      goto LABEL_33;
    case 3:
      v251[0] = 3;
      sub_230DEEC60();
      v105 = v220;
      v81 = v264;
      v106 = v184;
      sub_230E69690();
      if (v106)
      {
        goto LABEL_41;
      }

      (*(v190 + 8))(v105, v64);
      (*(v240 + 8))(v60, v81);
      swift_unknownObjectRelease();
      sub_230DF1594(&v252);
      goto LABEL_33;
    case 4:
      v251[0] = 4;
      sub_230DEEC0C();
      v90 = v221;
      v81 = v264;
      v91 = v184;
      sub_230E69690();
      if (v91)
      {
        goto LABEL_41;
      }

      sub_230D0D17C();
      v92 = v193;
      sub_230E69700();
      v93 = (v240 + 8);
      (*(v192 + 8))(v90, v92);
      (*v93)(v60, v81);
      swift_unknownObjectRelease();
      v251[0] = v242[0];
      sub_230DF1584(v251);
      goto LABEL_52;
    case 5:
      v251[0] = 5;
      sub_230DEEBB8();
      v115 = v222;
      v81 = v264;
      v116 = v184;
      sub_230E69690();
      if (v116)
      {
        goto LABEL_41;
      }

      sub_230DC7F8C();
      v117 = v191;
      sub_230E69760();
      v118 = (v240 + 8);
      (*(v194 + 8))(v115, v117);
      (*v118)(v60, v81);
      swift_unknownObjectRelease();
      *&v251[64] = v245;
      *&v251[80] = v246;
      v251[96] = v247;
      *v251 = v242[0];
      *&v251[16] = v242[1];
      *&v251[32] = v243;
      *&v251[48] = v244;
      sub_230DF1570(v251);
      goto LABEL_53;
    case 6:
      v251[0] = 6;
      sub_230DEEB10();
      v122 = v223;
      v81 = v264;
      v123 = v184;
      sub_230E69690();
      if (v123)
      {
        goto LABEL_41;
      }

      sub_230DF1508();
      v135 = v196;
      sub_230E69760();
      v136 = (v240 + 8);
      (*(v195 + 8))(v122, v135);
      (*v136)(v60, v81);
      swift_unknownObjectRelease();
      *v251 = v242[0];
      *&v251[16] = v242[1];
      *&v251[32] = v243;
      sub_230DF155C(v251);
LABEL_52:
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      v154 = *&v251[121];
      goto LABEL_55;
    case 7:
      v251[0] = 7;
      sub_230DEEABC();
      v107 = v264;
      v108 = v184;
      sub_230E69690();
      if (v108)
      {
        goto LABEL_35;
      }

      v109 = v198;
      v150 = sub_230E69720();
      v151 = v109;
      v153 = v152;
      (*(v197 + 8))(v63, v151);
      (*(v240 + 8))(v60, v107);
      swift_unknownObjectRelease();
      *v251 = v150;
      *&v251[8] = v153;
      sub_230DF14F4(v251);
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      v154 = *&v251[121];
      goto LABEL_55;
    case 8:
      v251[0] = 8;
      sub_230DEEA14();
      v130 = v224;
      v84 = v264;
      v131 = v184;
      sub_230E69690();
      if (v131)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      v138 = v200;
      sub_230E69760();
      v161 = v130;
      v162 = v250;
      v251[0] = 1;
      v238 = sub_230E69720();
      v178 = v177;
      v249 = 2;
      sub_230DF148C();
      sub_230E69760();
      (*(v199 + 8))(v161, v138);
      (*(v240 + 8))(v60, v84);
      swift_unknownObjectRelease();
      v251[0] = v162;
      *&v251[8] = v238;
      *&v251[16] = v178;
      *&v251[24] = v242[0];
      *&v251[40] = v242[1];
      sub_230DF14E0(v251);
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      v154 = *&v251[121];
      goto LABEL_55;
    case 9:
      v251[0] = 9;
      sub_230DEE96C();
      v97 = v225;
      v84 = v264;
      v98 = v184;
      sub_230E69690();
      if (v98)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      v99 = v202;
      sub_230E69760();
      v145 = v97;
      v146 = v250;
      v251[0] = 1;
      v238 = sub_230E69720();
      v170 = v169;
      v249 = 2;
      sub_230DF1424();
      sub_230E69760();
      v184 = 0;
      (*(v201 + 8))(v145, v99);
      (*(v240 + 8))(v60, v84);
      swift_unknownObjectRelease();
      *&v251[88] = v245;
      *&v251[104] = v246;
      *&v251[120] = v247;
      *&v251[24] = v242[0];
      *&v251[40] = v242[1];
      *&v251[56] = v243;
      v251[136] = v248;
      *&v251[72] = v244;
      v251[0] = v146;
      *&v251[8] = v238;
      *&v251[16] = v170;
      sub_230DF1478(v251);
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      *(v259 + 9) = *&v251[121];
      v254 = *&v251[32];
      v255 = *&v251[48];
      v256 = *&v251[64];
      v257 = *&v251[80];
      v252 = *v251;
      v253 = *&v251[16];
      v179 = v241;
      goto LABEL_56;
    case 10:
      v251[0] = 10;
      sub_230DEE8C4();
      v127 = v226;
      v84 = v264;
      v128 = v184;
      sub_230E69690();
      if (v128)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      v129 = v205;
      sub_230E69760();
      v159 = v127;
      v160 = v250;
      v251[0] = 1;
      v238 = sub_230E69720();
      v176 = v175;
      v249 = 2;
      sub_230DF13BC();
      sub_230E69760();
      (*(v204 + 8))(v159, v129);
      (*(v240 + 8))(v60, v84);
      swift_unknownObjectRelease();
      v251[0] = v160;
      *&v251[8] = v238;
      *&v251[16] = v176;
      *&v251[24] = *&v242[0];
      *&v251[32] = *(v242 + 8);
      *&v251[48] = *(&v242[1] + 1);
      sub_230DF1410(v251);
      goto LABEL_57;
    case 11:
      v251[0] = 11;
      sub_230DEE870();
      v87 = v227;
      v84 = v264;
      v88 = v184;
      sub_230E69690();
      if (v88)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      sub_230E69760();
      v89 = v240;
      v238 = v60;
      LODWORD(v237) = v250;
      v141 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CF00, &qword_230E7B318);
      v249 = 1;
      v142 = v217;
      sub_230D1D1C4(&qword_27DB5D050, &qword_27DB5CF00, &qword_230E7B318, &protocol conformance descriptor for GetFromKVDatabaseRequest<A>);
      sub_230E69760();
      (*(v203 + 8))(v141, v142);
      (*(v89 + 8))(v238, v84);
      swift_unknownObjectRelease();
      v251[0] = v237;
      *&v251[8] = v242[0];
      sub_230DF13A8(v251);
      goto LABEL_54;
    case 12:
      v251[0] = 12;
      sub_230DEE81C();
      v94 = v228;
      v84 = v264;
      v95 = v184;
      sub_230E69690();
      if (v95)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      sub_230E69760();
      v96 = v240;
      v238 = v60;
      LODWORD(v237) = v250;
      v143 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5CEE8, &qword_230E7B310);
      v249 = 1;
      v144 = v218;
      sub_230D1D1C4(&qword_27DB5D048, &qword_27DB5CEE8, &qword_230E7B310, &protocol conformance descriptor for SetInKVDatabaseRequest<A>);
      sub_230E69760();
      (*(v206 + 8))(v143, v144);
      (*(v96 + 8))(v238, v84);
      swift_unknownObjectRelease();
      v251[0] = v237;
      *&v251[8] = v242[0];
      sub_230DF1394(v251);
LABEL_54:
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      v154 = *&v251[121];
      goto LABEL_55;
    case 13:
      v251[0] = 13;
      sub_230DEE774();
      v119 = v230;
      v84 = v264;
      v120 = v184;
      sub_230E69690();
      if (v120)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      v121 = v210;
      sub_230E69760();
      v157 = v119;
      v158 = v250;
      v251[0] = 1;
      v238 = sub_230E69720();
      v174 = v173;
      v249 = 2;
      sub_230DF132C();
      sub_230E69760();
      (*(v209 + 8))(v157, v121);
      (*(v240 + 8))(v60, v84);
      swift_unknownObjectRelease();
      v251[0] = v158;
      *&v251[8] = v238;
      *&v251[16] = v174;
      *&v251[24] = *&v242[0];
      sub_230DF1380(v251);
      goto LABEL_57;
    case 14:
      v251[0] = 14;
      sub_230DEE6CC();
      v83 = v231;
      v84 = v264;
      v85 = v184;
      sub_230E69690();
      if (v85)
      {
        goto LABEL_47;
      }

      v251[0] = 0;
      sub_230D0D17C();
      v86 = v212;
      sub_230E69760();
      v139 = v83;
      v140 = v250;
      v251[0] = 1;
      v238 = sub_230E69720();
      v164 = v163;
      v249 = 2;
      sub_230DF12C4();
      sub_230E69760();
      (*(v211 + 8))(v139, v86);
      (*(v240 + 8))(v60, v84);
      swift_unknownObjectRelease();
      v251[0] = v140;
      *&v251[8] = v238;
      *&v251[16] = v164;
      *&v251[24] = *&v242[0];
      sub_230DF1318(v251);
LABEL_57:
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      v154 = *&v251[121];
      goto LABEL_55;
    case 15:
      v251[0] = 15;
      sub_230DEE624();
      v102 = v234;
      v84 = v264;
      v103 = v184;
      sub_230E69690();
      if (!v103)
      {
        v251[0] = 0;
        sub_230D0D17C();
        v104 = v215;
        sub_230E69760();
        v238 = v60;
        v147 = v250;
        v251[0] = 1;
        v148 = v102;
        v149 = sub_230E69720();
        v172 = v171;
        v237 = v149;
        v249 = 2;
        sub_230DF125C();
        sub_230E69760();
        (*(v216 + 8))(v148, v104);
        (*(v240 + 8))(v238, v84);
        swift_unknownObjectRelease();
        v251[0] = v147;
        *&v251[8] = v237;
        *&v251[16] = v172;
        *&v251[24] = v242[0];
        *&v251[40] = *&v242[1];
        v251[48] = BYTE8(v242[1]);
        sub_230DF12B0(v251);
        v258 = *&v251[96];
        v259[0] = *&v251[112];
        *(v259 + 9) = *&v251[121];
        v254 = *&v251[32];
        v255 = *&v251[48];
        v256 = *&v251[64];
        v257 = *&v251[80];
        v252 = *v251;
        v253 = *&v251[16];
        v179 = v241;
        goto LABEL_56;
      }

LABEL_47:
      (*(v240 + 8))(v60, v84);
      goto LABEL_8;
    case 16:
      v251[0] = 16;
      sub_230DEE5D0();
      v80 = v229;
      v81 = v264;
      v82 = v184;
      sub_230E69690();
      if (v82)
      {
LABEL_41:
        (*(v240 + 8))(v60, v81);
        goto LABEL_8;
      }

      (*(v207 + 8))(v80, v208);
      (*(v240 + 8))(v60, v81);
      swift_unknownObjectRelease();
      sub_230DF1224(&v252);
LABEL_33:
      v179 = v241;
      goto LABEL_56;
    case 17:
      v112 = v66;
      v251[0] = 17;
      sub_230DEE57C();
      v113 = v233;
      v107 = v264;
      v114 = v184;
      sub_230E69690();
      if (v114)
      {
LABEL_35:
        (*(v240 + 8))(v60, v107);
        goto LABEL_8;
      }

      v132 = v213;
      v133 = sub_230E69750();
      v134 = (v240 + 8);
      v155 = v132;
      v156 = v133;
      (*(v112 + 8))(v113, v155);
      (*v134)(v60, v107);
      swift_unknownObjectRelease();
      *v251 = v156;
      sub_230DF1210(v251);
      goto LABEL_53;
    case 18:
      v251[0] = 18;
      sub_230DEE4D4();
      v124 = v232;
      v125 = v264;
      v126 = v184;
      sub_230E69690();
      if (v126)
      {
        (*(v240 + 8))(v60, v125);
        swift_unknownObjectRelease();
        v78 = v241;
        return __swift_destroy_boxed_opaque_existential_1(v78);
      }

      sub_230DF11A8();
      sub_230E69760();
      v137 = (v240 + 8);
      (*(v214 + 8))(v124, v65);
      (*v137)(v60, v125);
      swift_unknownObjectRelease();
      v251[0] = v242[0];
      sub_230DF11FC(v251);
LABEL_53:
      v258 = *&v251[96];
      v259[0] = *&v251[112];
      v154 = *&v251[121];
LABEL_55:
      *(v259 + 9) = v154;
      v254 = *&v251[32];
      v255 = *&v251[48];
      v256 = *&v251[64];
      v257 = *&v251[80];
      v252 = *v251;
      v253 = *&v251[16];
      v179 = v241;
LABEL_56:
      v165 = v259[0];
      v67[6] = v258;
      v67[7] = v165;
      *(v67 + 121) = *(v259 + 9);
      v166 = v255;
      v67[2] = v254;
      v67[3] = v166;
      v167 = v257;
      v67[4] = v256;
      v67[5] = v167;
      v168 = v253;
      *v67 = v252;
      v67[1] = v168;
      result = __swift_destroy_boxed_opaque_existential_1(v179);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

unint64_t sub_230DF11A8()
{
  result = qword_27DB5D028;
  if (!qword_27DB5D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D028);
  }

  return result;
}

double sub_230DF1224(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

unint64_t sub_230DF125C()
{
  result = qword_27DB5D030;
  if (!qword_27DB5D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D030);
  }

  return result;
}

unint64_t sub_230DF12C4()
{
  result = qword_27DB5D038;
  if (!qword_27DB5D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D038);
  }

  return result;
}

unint64_t sub_230DF132C()
{
  result = qword_27DB5D040;
  if (!qword_27DB5D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D040);
  }

  return result;
}

unint64_t sub_230DF13BC()
{
  result = qword_27DB5D058;
  if (!qword_27DB5D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D058);
  }

  return result;
}

unint64_t sub_230DF1424()
{
  result = qword_27DB5D060;
  if (!qword_27DB5D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D060);
  }

  return result;
}

unint64_t sub_230DF148C()
{
  result = qword_27DB5D068;
  if (!qword_27DB5D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D068);
  }

  return result;
}

unint64_t sub_230DF1508()
{
  result = qword_27DB5D070;
  if (!qword_27DB5D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D070);
  }

  return result;
}

double sub_230DF1594(uint64_t a1)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

double sub_230DF15CC(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

double sub_230DF1604(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = -32;
  return result;
}

double sub_230DF163C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -32;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence0aB10XPCRequestO(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 0xDF)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 14);
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_230DF16E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 137))
  {
    return (*a1 + 114);
  }

  v3 = ((*(a1 + 136) >> 4) & 0xFFFFFF8F | (16 * ((*(a1 + 136) >> 1) & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_230DF1734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 136) = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_230DF17C0(uint64_t result, unsigned int a2)
{
  if (a2 < 0xE)
  {
    *(result + 136) = *(result + 136) & 1 | (16 * a2);
  }

  else
  {
    *result = a2 - 14;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = -32;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServicesIntelligenceXPCRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServicesIntelligenceXPCRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_230DF1AA4()
{
  result = qword_27DB5D078;
  if (!qword_27DB5D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D078);
  }

  return result;
}

unint64_t sub_230DF1AFC()
{
  result = qword_27DB5D080;
  if (!qword_27DB5D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D080);
  }

  return result;
}

unint64_t sub_230DF1B54()
{
  result = qword_27DB5D088;
  if (!qword_27DB5D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D088);
  }

  return result;
}

unint64_t sub_230DF1BAC()
{
  result = qword_27DB5D090;
  if (!qword_27DB5D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D090);
  }

  return result;
}

unint64_t sub_230DF1C04()
{
  result = qword_27DB5D098;
  if (!qword_27DB5D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D098);
  }

  return result;
}

unint64_t sub_230DF1C5C()
{
  result = qword_27DB5D0A0;
  if (!qword_27DB5D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0A0);
  }

  return result;
}

unint64_t sub_230DF1CB4()
{
  result = qword_27DB5D0A8;
  if (!qword_27DB5D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0A8);
  }

  return result;
}

unint64_t sub_230DF1D0C()
{
  result = qword_27DB5D0B0;
  if (!qword_27DB5D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0B0);
  }

  return result;
}

unint64_t sub_230DF1D64()
{
  result = qword_27DB5D0B8;
  if (!qword_27DB5D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0B8);
  }

  return result;
}

unint64_t sub_230DF1DBC()
{
  result = qword_27DB5D0C0;
  if (!qword_27DB5D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0C0);
  }

  return result;
}

unint64_t sub_230DF1E14()
{
  result = qword_27DB5D0C8;
  if (!qword_27DB5D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0C8);
  }

  return result;
}

unint64_t sub_230DF1E6C()
{
  result = qword_27DB5D0D0;
  if (!qword_27DB5D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0D0);
  }

  return result;
}

unint64_t sub_230DF1EC4()
{
  result = qword_27DB5D0D8;
  if (!qword_27DB5D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0D8);
  }

  return result;
}

unint64_t sub_230DF1F1C()
{
  result = qword_27DB5D0E0;
  if (!qword_27DB5D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0E0);
  }

  return result;
}

unint64_t sub_230DF1F74()
{
  result = qword_27DB5D0E8;
  if (!qword_27DB5D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0E8);
  }

  return result;
}

unint64_t sub_230DF1FCC()
{
  result = qword_27DB5D0F0;
  if (!qword_27DB5D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0F0);
  }

  return result;
}

unint64_t sub_230DF2024()
{
  result = qword_27DB5D0F8;
  if (!qword_27DB5D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D0F8);
  }

  return result;
}

unint64_t sub_230DF207C()
{
  result = qword_27DB5D100;
  if (!qword_27DB5D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D100);
  }

  return result;
}

unint64_t sub_230DF20D4()
{
  result = qword_27DB5D108;
  if (!qword_27DB5D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D108);
  }

  return result;
}

unint64_t sub_230DF212C()
{
  result = qword_27DB5D110;
  if (!qword_27DB5D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D110);
  }

  return result;
}

unint64_t sub_230DF2184()
{
  result = qword_27DB5D118;
  if (!qword_27DB5D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D118);
  }

  return result;
}

unint64_t sub_230DF21DC()
{
  result = qword_27DB5D120;
  if (!qword_27DB5D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D120);
  }

  return result;
}

unint64_t sub_230DF2234()
{
  result = qword_27DB5D128;
  if (!qword_27DB5D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D128);
  }

  return result;
}

unint64_t sub_230DF228C()
{
  result = qword_27DB5D130;
  if (!qword_27DB5D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D130);
  }

  return result;
}

unint64_t sub_230DF22E4()
{
  result = qword_27DB5D138;
  if (!qword_27DB5D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D138);
  }

  return result;
}

unint64_t sub_230DF233C()
{
  result = qword_27DB5D140;
  if (!qword_27DB5D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D140);
  }

  return result;
}

unint64_t sub_230DF2394()
{
  result = qword_27DB5D148;
  if (!qword_27DB5D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D148);
  }

  return result;
}

unint64_t sub_230DF23EC()
{
  result = qword_27DB5D150;
  if (!qword_27DB5D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D150);
  }

  return result;
}

unint64_t sub_230DF2444()
{
  result = qword_27DB5D158;
  if (!qword_27DB5D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D158);
  }

  return result;
}

unint64_t sub_230DF249C()
{
  result = qword_27DB5D160;
  if (!qword_27DB5D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D160);
  }

  return result;
}

unint64_t sub_230DF24F4()
{
  result = qword_27DB5D168;
  if (!qword_27DB5D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D168);
  }

  return result;
}

unint64_t sub_230DF254C()
{
  result = qword_27DB5D170;
  if (!qword_27DB5D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D170);
  }

  return result;
}

unint64_t sub_230DF25A4()
{
  result = qword_27DB5D178;
  if (!qword_27DB5D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D178);
  }

  return result;
}

unint64_t sub_230DF25FC()
{
  result = qword_27DB5D180;
  if (!qword_27DB5D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D180);
  }

  return result;
}

unint64_t sub_230DF2654()
{
  result = qword_27DB5D188;
  if (!qword_27DB5D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D188);
  }

  return result;
}

unint64_t sub_230DF26AC()
{
  result = qword_27DB5D190;
  if (!qword_27DB5D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D190);
  }

  return result;
}

unint64_t sub_230DF2704()
{
  result = qword_27DB5D198;
  if (!qword_27DB5D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D198);
  }

  return result;
}

unint64_t sub_230DF275C()
{
  result = qword_27DB5D1A0;
  if (!qword_27DB5D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1A0);
  }

  return result;
}

unint64_t sub_230DF27B4()
{
  result = qword_27DB5D1A8;
  if (!qword_27DB5D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1A8);
  }

  return result;
}

unint64_t sub_230DF280C()
{
  result = qword_27DB5D1B0;
  if (!qword_27DB5D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1B0);
  }

  return result;
}

unint64_t sub_230DF2864()
{
  result = qword_27DB5D1B8;
  if (!qword_27DB5D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1B8);
  }

  return result;
}

unint64_t sub_230DF28BC()
{
  result = qword_27DB5D1C0;
  if (!qword_27DB5D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1C0);
  }

  return result;
}

unint64_t sub_230DF2914()
{
  result = qword_27DB5D1C8;
  if (!qword_27DB5D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1C8);
  }

  return result;
}

unint64_t sub_230DF296C()
{
  result = qword_27DB5D1D0;
  if (!qword_27DB5D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1D0);
  }

  return result;
}

unint64_t sub_230DF29C4()
{
  result = qword_27DB5D1D8;
  if (!qword_27DB5D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1D8);
  }

  return result;
}

unint64_t sub_230DF2A1C()
{
  result = qword_27DB5D1E0;
  if (!qword_27DB5D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1E0);
  }

  return result;
}

unint64_t sub_230DF2A74()
{
  result = qword_27DB5D1E8;
  if (!qword_27DB5D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1E8);
  }

  return result;
}

unint64_t sub_230DF2ACC()
{
  result = qword_27DB5D1F0;
  if (!qword_27DB5D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1F0);
  }

  return result;
}

unint64_t sub_230DF2B24()
{
  result = qword_27DB5D1F8;
  if (!qword_27DB5D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D1F8);
  }

  return result;
}

unint64_t sub_230DF2B7C()
{
  result = qword_27DB5D200;
  if (!qword_27DB5D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D200);
  }

  return result;
}

unint64_t sub_230DF2BD4()
{
  result = qword_27DB5D208;
  if (!qword_27DB5D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D208);
  }

  return result;
}

unint64_t sub_230DF2C2C()
{
  result = qword_27DB5D210;
  if (!qword_27DB5D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D210);
  }

  return result;
}

unint64_t sub_230DF2C84()
{
  result = qword_27DB5D218;
  if (!qword_27DB5D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D218);
  }

  return result;
}

unint64_t sub_230DF2CDC()
{
  result = qword_27DB5D220;
  if (!qword_27DB5D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D220);
  }

  return result;
}

unint64_t sub_230DF2D34()
{
  result = qword_27DB5D228;
  if (!qword_27DB5D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D228);
  }

  return result;
}

uint64_t sub_230DF2D88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6C6568 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80650 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80780 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572546863746566 && a2 == 0xEF73746E656D7461 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61436573556E7572 && a2 == 0xEA00000000006573 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230E84450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6873756C66 && a2 == 0xEC00000073636972 || (sub_230E698C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80470 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80490 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80500 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x44564B6E49746573 && a2 == 0xEF65736162617461 || (sub_230E698C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80550 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80570 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80590 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80870 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000230E80910 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E808F0 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_230DF33B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230E698C0();

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

uint64_t sub_230DF34C8(void *a1)
{
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D6C0, &qword_230E7E9A0);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v4);
  v6 = &v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D6C8, &qword_230E7E9A8);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v7);
  v9 = &v30 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D6D0, &unk_230E7E9B0);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v11);
  v13 = &v30 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DFAA70();
  sub_230E69A50();
  v14 = v2[5];
  v43[4] = v2[4];
  v43[5] = v14;
  v44[0] = v2[6];
  *(v44 + 9) = *(v2 + 105);
  v15 = v2[1];
  v43[0] = *v2;
  v43[1] = v15;
  v16 = v2[3];
  v43[2] = v2[2];
  v43[3] = v16;
  LODWORD(a1) = sub_230DFABFC(v43);
  v17 = (v10 + 8);
  v18 = sub_230D0519C(v43);
  if (a1 == 1)
  {
    LOBYTE(v36) = 1;
    sub_230DFAAC4();
    v19 = v35;
    sub_230E697A0();
    v20 = v34;
    sub_230E69810();
    (*(v32 + 8))(v6, v20);
    return (*v17)(v13, v19);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_230DFAB38();
    v22 = v35;
    sub_230E697A0();
    v23 = *v18;
    v24 = v18[1];
    v25 = v18[3];
    v38 = v18[2];
    v39 = v25;
    v36 = v23;
    v37 = v24;
    v26 = v18[4];
    v27 = v18[5];
    v28 = v18[6];
    *(v42 + 9) = *(v18 + 105);
    v41 = v27;
    v42[0] = v28;
    v40 = v26;
    sub_230DFAC08();
    v29 = v33;
    sub_230E69850();
    (*(v31 + 8))(v9, v29);
    return (*v17)(v13, v22);
  }
}

uint64_t sub_230DF3864@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D688, &qword_230E7E988);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v41 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D690, &qword_230E7E990);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D698, &qword_230E7E998);
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v41 - v14;
  v16 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_230DFAA70();
  v17 = v48;
  sub_230E69A30();
  if (!v17)
  {
    v42 = v8;
    v48 = 0;
    v18 = v7;
    v20 = v46;
    v19 = v47;
    v21 = v15;
    v22 = sub_230E69780();
    v23 = (2 * *(v22 + 16)) | 1;
    v70 = v22;
    v71 = v22 + 32;
    v72 = 0;
    v73 = v23;
    v24 = sub_230D089CC();
    if (v24 == 2 || v72 != v73 >> 1)
    {
      v30 = sub_230E69580();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
      *v32 = &type metadata for ServicesIntelligenceXPCResult;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
    }

    else if (v24)
    {
      LOBYTE(v56) = 1;
      sub_230DFAAC4();
      v25 = v48;
      sub_230E69690();
      if (!v25)
      {
        v26 = v19;
        v27 = v44;
        v43 = v18;
        v28 = sub_230E69720();
        v42 = v29;
        v48 = 0;
        v37 = v28;
        (*(v45 + 8))(v43, v27);
        (*(v20 + 8))(v15, v12);
        swift_unknownObjectRelease();
        *&v56 = v37;
        *(&v56 + 1) = v42;
        sub_230DFAB18(&v56);
        v67 = v60;
        v68 = v61;
        v69[0] = v62[0];
        *(v69 + 9) = *(v62 + 9);
        v63 = v56;
        v64 = v57;
        v65 = v58;
        v66 = v59;
LABEL_12:
        v38 = v68;
        v26[4] = v67;
        v26[5] = v38;
        v26[6] = v69[0];
        *(v26 + 105) = *(v69 + 9);
        v39 = v64;
        *v26 = v63;
        v26[1] = v39;
        v40 = v66;
        v26[2] = v65;
        v26[3] = v40;
        return __swift_destroy_boxed_opaque_existential_1(v74);
      }
    }

    else
    {
      LOBYTE(v56) = 0;
      sub_230DFAB38();
      v34 = v11;
      v35 = v48;
      sub_230E69690();
      if (!v35)
      {
        v26 = v19;
        sub_230DFAB8C();
        v36 = v42;
        sub_230E69760();
        v43[1](v34, v36);
        (*(v20 + 8))(v21, v12);
        swift_unknownObjectRelease();
        v53 = v60;
        v54 = v61;
        v55[0] = v62[0];
        *(v55 + 9) = *(v62 + 9);
        v49 = v56;
        v50 = v57;
        v51 = v58;
        v52 = v59;
        sub_230DFABE0(&v49);
        v67 = v53;
        v68 = v54;
        v69[0] = v55[0];
        *(v69 + 9) = *(v55 + 9);
        v63 = v49;
        v64 = v50;
        v65 = v51;
        v66 = v52;
        goto LABEL_12;
      }
    }

    (*(v20 + 8))(v21, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_230DF3E68(char a1)
{
  result = 0x6F6C6C6568;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
    case 14:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6572546863746566;
      break;
    case 5:
      result = 0x61436573556E7572;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x74654D6873756C66;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 13:
      result = 0xD000000000000012;
      break;
    case 11:
    case 16:
    case 17:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x44564B6E49746573;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_230DF4070()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_230DF40A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_230E698C0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230E698C0();

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

uint64_t sub_230DF4180(uint64_t a1)
{
  v2 = sub_230DFAA70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF41BC(uint64_t a1)
{
  v2 = sub_230DFAA70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF41F8(uint64_t a1)
{
  v2 = sub_230DFAAC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4234(uint64_t a1)
{
  v2 = sub_230DFAAC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4270(uint64_t a1)
{
  v2 = sub_230DFAB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF42AC(uint64_t a1)
{
  v2 = sub_230DFAB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230DFA484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230DF4348(uint64_t a1)
{
  v2 = sub_230DF610C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4384(uint64_t a1)
{
  v2 = sub_230DF610C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF43C0(uint64_t a1)
{
  v2 = sub_230DF66C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF43FC(uint64_t a1)
{
  v2 = sub_230DF66C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4438(uint64_t a1)
{
  v2 = sub_230DF62D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4474(uint64_t a1)
{
  v2 = sub_230DF62D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF44B0(uint64_t a1)
{
  v2 = sub_230DF67BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF44EC(uint64_t a1)
{
  v2 = sub_230DF67BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4528(uint64_t a1)
{
  v2 = sub_230DF6618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4564(uint64_t a1)
{
  v2 = sub_230DF6618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF45A0(uint64_t a1)
{
  v2 = sub_230DF68B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF45DC(uint64_t a1)
{
  v2 = sub_230DF68B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4618(uint64_t a1)
{
  v2 = sub_230DF6768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4654(uint64_t a1)
{
  v2 = sub_230DF6768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4690(uint64_t a1)
{
  v2 = sub_230DF6420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF46CC(uint64_t a1)
{
  v2 = sub_230DF6420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4708(uint64_t a1)
{
  v2 = sub_230DF6A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4744(uint64_t a1)
{
  v2 = sub_230DF6A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4780(uint64_t a1)
{
  v2 = sub_230DF651C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF47BC(uint64_t a1)
{
  v2 = sub_230DF651C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF47F8(uint64_t a1)
{
  v2 = sub_230DF6228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4834(uint64_t a1)
{
  v2 = sub_230DF6228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4870(uint64_t a1)
{
  v2 = sub_230DF69B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF48AC(uint64_t a1)
{
  v2 = sub_230DF69B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF48E8(uint64_t a1)
{
  v2 = sub_230DF690C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4924(uint64_t a1)
{
  v2 = sub_230DF690C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4960(uint64_t a1)
{
  v2 = sub_230DF6864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF499C(uint64_t a1)
{
  v2 = sub_230DF6864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF49D8(uint64_t a1)
{
  v2 = sub_230DF6180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4A14(uint64_t a1)
{
  v2 = sub_230DF6180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4A50(uint64_t a1)
{
  v2 = sub_230DF6378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4A8C(uint64_t a1)
{
  v2 = sub_230DF6378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4AC8(uint64_t a1)
{
  v2 = sub_230DF64C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4B04(uint64_t a1)
{
  v2 = sub_230DF64C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4B40(uint64_t a1)
{
  v2 = sub_230DF6474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4B7C(uint64_t a1)
{
  v2 = sub_230DF6474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4BB8(uint64_t a1)
{
  v2 = sub_230DF6570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4BF4(uint64_t a1)
{
  v2 = sub_230DF6570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230DF4C30(uint64_t a1)
{
  v2 = sub_230DF6960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230DF4C6C(uint64_t a1)
{
  v2 = sub_230DF6960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServicesIntelligenceXPCResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D230, &qword_230E7CC70);
  v157 = *(v4 - 8);
  *&v158 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v156 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D238, &qword_230E7CC78);
  v154 = *(v7 - 8);
  v155 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v153 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D240, &qword_230E7CC80);
  v151 = *(v10 - 8);
  v152 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v150 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D248, &qword_230E7CC88);
  v148 = *(v13 - 8);
  v149 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v146 = &v104 - v15;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D250, &qword_230E7CC90);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v16);
  v144 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D258, &qword_230E7CC98);
  v142 = *(v18 - 8);
  v143 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v141 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D260, &qword_230E7CCA0);
  v139 = *(v21 - 8);
  v140 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v138 = &v104 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D268, &qword_230E7CCA8);
  v134 = *(v24 - 8);
  v135 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v132 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D270, &qword_230E7CCB0);
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v133 = &v104 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D278, &qword_230E7CCB8);
  v130 = *(v30 - 8);
  v131 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v129 = &v104 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D280, &qword_230E7CCC0);
  v127 = *(v33 - 8);
  v128 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v126 = &v104 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D288, &qword_230E7CCC8);
  v124 = *(v36 - 8);
  v125 = v36;
  MEMORY[0x28223BE20](v36, v37);
  v122 = &v104 - v38;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D290, &qword_230E7CCD0);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v39);
  v119 = &v104 - v40;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D298, &qword_230E7CCD8);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v41);
  v117 = &v104 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2A0, &qword_230E7CCE0);
  v115 = *(v43 - 8);
  v116 = v43;
  MEMORY[0x28223BE20](v43, v44);
  v114 = &v104 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2A8, &qword_230E7CCE8);
  v112 = *(v46 - 8);
  v113 = v46;
  MEMORY[0x28223BE20](v46, v47);
  v111 = &v104 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2B0, &qword_230E7CCF0);
  v109 = *(v49 - 8);
  v110 = v49;
  MEMORY[0x28223BE20](v49, v50);
  v108 = &v104 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2B8, &qword_230E7CCF8);
  v106 = *(v52 - 8);
  v107 = v52;
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v104 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2C0, &qword_230E7CD00);
  v105 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v104 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D2C8, &qword_230E7CD08);
  v61 = *(v60 - 8);
  v160 = v60;
  v161 = v61;
  MEMORY[0x28223BE20](v60, v62);
  v64 = &v104 - v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230DF610C();
  v159 = v64;
  sub_230E69A50();
  v65 = v2[5];
  v169[4] = v2[4];
  v169[5] = v65;
  v170[0] = v2[6];
  *(v170 + 9) = *(v2 + 105);
  v66 = v2[1];
  v169[0] = *v2;
  v169[1] = v66;
  v67 = v2[3];
  v169[2] = v2[2];
  v169[3] = v67;
  switch(sub_230DF6160(v169))
  {
    case 1u:
      sub_230D04CA4(v169);
      LOBYTE(v162) = 1;
      sub_230DF69B4();
      v88 = v159;
      v87 = v160;
      sub_230E697A0();
      v91 = v107;
      sub_230E69820();
      (*(v106 + 8))(v55, v91);
      return (*(v161 + 8))(v88, v87);
    case 2u:
      sub_230D04CA4(v169);
      LOBYTE(v162) = 2;
      sub_230DF6960();
      v86 = v108;
      v88 = v159;
      v87 = v160;
      sub_230E697A0();
      v89 = v110;
      sub_230E69810();
      (*(v109 + 8))(v86, v89);
      return (*(v161 + 8))(v88, v87);
    case 3u:
      sub_230D04CA4(v169);
      LOBYTE(v162) = 3;
      sub_230DF690C();
      v77 = v111;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      v80 = v113;
      sub_230E69820();
      v81 = v112;
      goto LABEL_23;
    case 4u:
      v83 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 4;
      sub_230DF68B8();
      v77 = v114;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3A0, &qword_230E7CD18);
      sub_230DF8C80(&qword_281565F58, &qword_281566080, &protocol conformance descriptor for Treatment, MEMORY[0x277D83948]);
      v80 = v116;
      sub_230E69850();
      v81 = v115;
      goto LABEL_23;
    case 5u:
      v92 = sub_230D04CA4(v169);
      LOBYTE(v162) = 5;
      sub_230DF6864();
      v77 = v117;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      v93 = *v92;
      v94 = v92[1];
      v95 = v92[3];
      v164 = v92[2];
      v165 = v95;
      v162 = v93;
      v163 = v94;
      v96 = v92[4];
      v97 = v92[5];
      v98 = v92[6];
      *(v168 + 9) = *(v92 + 105);
      v167 = v97;
      v168[0] = v98;
      v166 = v96;
      sub_230DEA05C();
      v80 = v120;
      sub_230E69850();
      v81 = v118;
      goto LABEL_23;
    case 6u:
      v100 = sub_230D04CA4(v169);
      v158 = *v100;
      v101 = *(v100 + 16);
      LOBYTE(v162) = 6;
      sub_230DF67BC();
      v77 = v119;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      v162 = v158;
      *&v163 = v101;
      sub_230DF6810();
      v80 = v123;
      sub_230E69850();
      v81 = v121;
      goto LABEL_23;
    case 7u:
      sub_230D04CA4(v169);
      LOBYTE(v162) = 7;
      sub_230DF6768();
      v77 = v122;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      v80 = v125;
      sub_230E69840();
      v81 = v124;
      goto LABEL_23;
    case 8u:
      v103 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 8;
      sub_230DF66C0();
      v77 = v126;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v103;
      sub_230DF6714();
      v80 = v128;
      sub_230E69850();
      v81 = v127;
      goto LABEL_23;
    case 9u:
      v85 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 9;
      sub_230DF6618();
      v77 = v129;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v85;
      sub_230DF666C();
      v80 = v131;
      sub_230E69850();
      v81 = v130;
      goto LABEL_23;
    case 0xAu:
      v102 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 10;
      sub_230DF6570();
      v77 = v133;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v102;
      sub_230DF65C4();
      v80 = v137;
      sub_230E69850();
      v81 = v136;
      goto LABEL_23;
    case 0xBu:
      v82 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 14;
      sub_230DF6420();
      v77 = v144;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D320, &qword_230E7CD10);
      sub_230DF8974(&qword_27DB5D328, &protocol conformance descriptor for GetFromKVDatabaseResponse<A>);
      v80 = v147;
      sub_230E69850();
      v81 = v145;
      goto LABEL_23;
    case 0xCu:
      v84 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 15;
      sub_230DF6378();
      v77 = v146;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v84;
      sub_230DF63CC();
      v80 = v149;
      sub_230E69850();
      v81 = v148;
      goto LABEL_23;
    case 0xDu:
      v99 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 16;
      sub_230DF62D0();
      v77 = v150;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v99;
      sub_230DF6324();
      v80 = v152;
      sub_230E69850();
      v81 = v151;
      goto LABEL_23;
    case 0xEu:
      v76 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 17;
      sub_230DF6228();
      v77 = v153;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v76;
      sub_230DF627C();
      v80 = v155;
      sub_230E69850();
      v81 = v154;
      goto LABEL_23;
    case 0xFu:
      v90 = *sub_230D04CA4(v169);
      LOBYTE(v162) = 18;
      sub_230DF6180();
      v77 = v156;
      v79 = v159;
      v78 = v160;
      sub_230E697A0();
      *&v162 = v90;
      sub_230DF61D4();
      v80 = v158;
      sub_230E69850();
      v81 = v157;
LABEL_23:
      (*(v81 + 8))(v77, v80);
      return (*(v161 + 8))(v79, v78);
    case 0x10u:
      LOBYTE(v162) = 11;
      sub_230DF651C();
      v71 = v132;
      v72 = v159;
      v73 = v160;
      sub_230E697A0();
      v75 = v134;
      v74 = v135;
      goto LABEL_20;
    case 0x11u:
      LOBYTE(v162) = 12;
      sub_230DF64C8();
      v71 = v138;
      v72 = v159;
      v73 = v160;
      sub_230E697A0();
      v75 = v139;
      v74 = v140;
      goto LABEL_20;
    case 0x12u:
      LOBYTE(v162) = 13;
      sub_230DF6474();
      v71 = v141;
      v72 = v159;
      v73 = v160;
      sub_230E697A0();
      v75 = v142;
      v74 = v143;
LABEL_20:
      (*(v75 + 8))(v71, v74);
      result = (*(v161 + 8))(v72, v73);
      break;
    default:
      sub_230D04CA4(v169);
      LOBYTE(v162) = 0;
      sub_230DF6A08();
      v69 = v159;
      v68 = v160;
      sub_230E697A0();
      sub_230E69810();
      (*(v105 + 8))(v59, v56);
      result = (*(v161 + 8))(v69, v68);
      break;
  }

  return result;
}

unint64_t sub_230DF610C()
{
  result = qword_27DB5D2D0;
  if (!qword_27DB5D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2D0);
  }

  return result;
}

uint64_t sub_230DF6160(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1;
  v3 = v1 >> 3;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 16);
  }
}

unint64_t sub_230DF6180()
{
  result = qword_27DB5D2D8;
  if (!qword_27DB5D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2D8);
  }

  return result;
}

unint64_t sub_230DF61D4()
{
  result = qword_27DB5D2E0;
  if (!qword_27DB5D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2E0);
  }

  return result;
}

unint64_t sub_230DF6228()
{
  result = qword_27DB5D2E8;
  if (!qword_27DB5D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2E8);
  }

  return result;
}

unint64_t sub_230DF627C()
{
  result = qword_27DB5D2F0;
  if (!qword_27DB5D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2F0);
  }

  return result;
}

unint64_t sub_230DF62D0()
{
  result = qword_27DB5D2F8;
  if (!qword_27DB5D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D2F8);
  }

  return result;
}

unint64_t sub_230DF6324()
{
  result = qword_27DB5D300;
  if (!qword_27DB5D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D300);
  }

  return result;
}

unint64_t sub_230DF6378()
{
  result = qword_27DB5D308;
  if (!qword_27DB5D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D308);
  }

  return result;
}

unint64_t sub_230DF63CC()
{
  result = qword_27DB5D310;
  if (!qword_27DB5D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D310);
  }

  return result;
}

unint64_t sub_230DF6420()
{
  result = qword_27DB5D318;
  if (!qword_27DB5D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D318);
  }

  return result;
}

unint64_t sub_230DF6474()
{
  result = qword_27DB5D330;
  if (!qword_27DB5D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D330);
  }

  return result;
}

unint64_t sub_230DF64C8()
{
  result = qword_27DB5D338;
  if (!qword_27DB5D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D338);
  }

  return result;
}

unint64_t sub_230DF651C()
{
  result = qword_27DB5D340;
  if (!qword_27DB5D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D340);
  }

  return result;
}

unint64_t sub_230DF6570()
{
  result = qword_27DB5D348;
  if (!qword_27DB5D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D348);
  }

  return result;
}

unint64_t sub_230DF65C4()
{
  result = qword_27DB5D350;
  if (!qword_27DB5D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D350);
  }

  return result;
}

unint64_t sub_230DF6618()
{
  result = qword_27DB5D358;
  if (!qword_27DB5D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D358);
  }

  return result;
}

unint64_t sub_230DF666C()
{
  result = qword_27DB5D360;
  if (!qword_27DB5D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D360);
  }

  return result;
}

unint64_t sub_230DF66C0()
{
  result = qword_27DB5D368;
  if (!qword_27DB5D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D368);
  }

  return result;
}

unint64_t sub_230DF6714()
{
  result = qword_27DB5D370;
  if (!qword_27DB5D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D370);
  }

  return result;
}

unint64_t sub_230DF6768()
{
  result = qword_27DB5D378;
  if (!qword_27DB5D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D378);
  }

  return result;
}

unint64_t sub_230DF67BC()
{
  result = qword_27DB5D380;
  if (!qword_27DB5D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D380);
  }

  return result;
}

unint64_t sub_230DF6810()
{
  result = qword_27DB5D388;
  if (!qword_27DB5D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D388);
  }

  return result;
}

unint64_t sub_230DF6864()
{
  result = qword_27DB5D390;
  if (!qword_27DB5D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D390);
  }

  return result;
}

unint64_t sub_230DF68B8()
{
  result = qword_27DB5D398;
  if (!qword_27DB5D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D398);
  }

  return result;
}

unint64_t sub_230DF690C()
{
  result = qword_27DB5D3A8;
  if (!qword_27DB5D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3A8);
  }

  return result;
}

unint64_t sub_230DF6960()
{
  result = qword_27DB5D3B0;
  if (!qword_27DB5D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3B0);
  }

  return result;
}

unint64_t sub_230DF69B4()
{
  result = qword_27DB5D3B8;
  if (!qword_27DB5D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3B8);
  }

  return result;
}

unint64_t sub_230DF6A08()
{
  result = qword_27DB5D3C0;
  if (!qword_27DB5D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D3C0);
  }

  return result;
}

uint64_t ServicesIntelligenceXPCResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v222 = a2;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3C8, &qword_230E7CD20);
  v202 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v3);
  v216 = &v162 - v4;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3D0, &qword_230E7CD28);
  v221 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v5);
  v220 = &v162 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3D8, &qword_230E7CD30);
  v198 = *(v7 - 8);
  v199 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v215 = &v162 - v9;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3E0, &qword_230E7CD38);
  v195 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v10);
  v214 = &v162 - v11;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3E8, &qword_230E7CD40);
  v194 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v12);
  v213 = &v162 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3F0, &qword_230E7CD48);
  v192 = *(v14 - 8);
  v193 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v212 = &v162 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3F8, &qword_230E7CD50);
  v190 = *(v17 - 8);
  v191 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v211 = &v162 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D400, &qword_230E7CD58);
  v187 = *(v20 - 8);
  v188 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v209 = &v162 - v22;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D408, &qword_230E7CD60);
  v186 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v23);
  v210 = &v162 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D410, &qword_230E7CD68);
  v184 = *(v25 - 8);
  v185 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v208 = &v162 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D418, &qword_230E7CD70);
  v182 = *(v28 - 8);
  v183 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v207 = &v162 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D420, &qword_230E7CD78);
  v180 = *(v31 - 8);
  v181 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v206 = &v162 - v33;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D428, &qword_230E7CD80);
  v179 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v34);
  v203 = &v162 - v35;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D430, &qword_230E7CD88);
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178, v36);
  v205 = &v162 - v37;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D438, &qword_230E7CD90);
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v38);
  v204 = &v162 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D440, &qword_230E7CD98);
  v172 = *(v40 - 8);
  v173 = v40;
  MEMORY[0x28223BE20](v40, v41);
  v219 = &v162 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D448, &qword_230E7CDA0);
  v170 = *(v43 - 8);
  v171 = v43;
  MEMORY[0x28223BE20](v43, v44);
  v218 = &v162 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D450, &qword_230E7CDA8);
  v168 = *(v46 - 8);
  v169 = v46;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v162 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D458, &qword_230E7CDB0);
  v167 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v162 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D460, &unk_230E7CDB8);
  v217 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v162 - v56;
  v58 = a1[3];
  v223 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_230DF610C();
  v59 = v249;
  sub_230E69A30();
  v249 = v59;
  if (!v59)
  {
    v163 = v50;
    v164 = v53;
    v165 = v49;
    v166 = v54;
    v60 = v218;
    v61 = v219;
    v63 = v220;
    v62 = v221;
    v64 = v222;
    v65 = sub_230E69780();
    v66 = (2 * *(v65 + 16)) | 1;
    v245 = v65;
    v246 = v65 + 32;
    v247 = 0;
    v248 = v66;
    v67 = sub_230D089D0();
    if (v247 == v248 >> 1)
    {
      switch(v67)
      {
        case 0:
          LOBYTE(v231) = 0;
          sub_230DF6A08();
          v68 = v164;
          v69 = v57;
          v70 = v166;
          v71 = v249;
          sub_230E69690();
          v249 = v71;
          if (v71)
          {
            goto LABEL_7;
          }

          v72 = v69;
          v73 = v163;
          v74 = sub_230E69720();
          v75 = v217;
          v249 = 0;
          v155 = v74;
          v157 = v156;
          (*(v167 + 8))(v68, v73);
          (*(v75 + 8))(v72, v166);
          swift_unknownObjectRelease();
          *&v231 = v155;
          *(&v231 + 1) = v157;
          sub_230DF8DCC(&v231);
          goto LABEL_69;
        case 1:
          LOBYTE(v231) = 1;
          sub_230DF69B4();
          v115 = v165;
          v99 = v166;
          v116 = v249;
          sub_230E69690();
          v249 = v116;
          if (v116)
          {
            goto LABEL_48;
          }

          v117 = v169;
          v118 = sub_230E69730();
          v119 = (v217 + 8);
          v249 = 0;
          v158 = v118;
          (*(v168 + 8))(v115, v117);
          (*v119)(v57, v99);
          swift_unknownObjectRelease();
          LOBYTE(v231) = v158 & 1;
          sub_230DF8DAC(&v231);
          goto LABEL_69;
        case 2:
          LOBYTE(v231) = 2;
          sub_230DF6960();
          v99 = v166;
          v100 = v249;
          sub_230E69690();
          v249 = v100;
          if (v100)
          {
            goto LABEL_48;
          }

          v101 = v171;
          v102 = sub_230E69720();
          v103 = v217;
          v249 = 0;
          v150 = v102;
          v151 = v60;
          v153 = v152;
          (*(v170 + 8))(v151, v101);
          (*(v103 + 8))(v57, v99);
          swift_unknownObjectRelease();
          *&v231 = v150;
          *(&v231 + 1) = v153;
          sub_230DF8D8C(&v231);
          goto LABEL_69;
        case 3:
          LOBYTE(v231) = 3;
          sub_230DF690C();
          v106 = v61;
          v99 = v166;
          v107 = v249;
          sub_230E69690();
          v249 = v107;
          if (v107)
          {
            goto LABEL_48;
          }

          v108 = v173;
          v109 = sub_230E69730();
          v110 = (v217 + 8);
          v249 = 0;
          v111 = v109;
          (*(v172 + 8))(v106, v108);
          (*v110)(v57, v99);
          swift_unknownObjectRelease();
          LOBYTE(v231) = v111 & 1;
          sub_230DF8D6C(&v231);
          goto LABEL_69;
        case 4:
          LOBYTE(v231) = 4;
          sub_230DF68B8();
          v82 = v204;
          v83 = v166;
          v93 = v249;
          sub_230E69690();
          v249 = v93;
          if (v93)
          {
            goto LABEL_56;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D3A0, &qword_230E7CD18);
          sub_230DF8C80(&qword_27DB5D4B0, &qword_27DB5D4B8, &protocol conformance descriptor for Treatment, MEMORY[0x277D83978]);
          v85 = v177;
          v94 = v249;
          sub_230E69760();
          v87 = (v175 + 8);
          v88 = (v217 + 8);
          v249 = v94;
          if (v94)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          *&v231 = v224;
          sub_230DF8D4C(&v231);
          goto LABEL_69;
        case 5:
          LOBYTE(v231) = 5;
          sub_230DF6864();
          v82 = v205;
          v83 = v166;
          v126 = v249;
          sub_230E69690();
          v249 = v126;
          if (v126)
          {
            goto LABEL_56;
          }

          sub_230DE9E38();
          v85 = v178;
          v127 = v249;
          sub_230E69760();
          v87 = (v176 + 8);
          v88 = (v217 + 8);
          v249 = v127;
          if (v127)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          v228 = v235;
          v229 = v236;
          v230[0] = v237[0];
          *(v230 + 9) = *(v237 + 9);
          v224 = v231;
          v225 = v232;
          v226 = v233;
          v227 = v234;
          sub_230DF8C60(&v224);
          v242 = v228;
          v243 = v229;
          v244[0] = v230[0];
          *(v244 + 9) = *(v230 + 9);
          v238 = v224;
          v239 = v225;
          v128 = v226;
          v129 = v227;
          goto LABEL_70;
        case 6:
          LOBYTE(v231) = 6;
          sub_230DF67BC();
          v132 = v203;
          v99 = v166;
          v133 = v249;
          sub_230E69690();
          v249 = v133;
          if (v133)
          {
LABEL_48:
            (*(v217 + 8))(v57, v99);
            break;
          }

          sub_230DF8BEC();
          v145 = v174;
          v146 = v249;
          sub_230E69760();
          v147 = (v179 + 8);
          v148 = (v217 + 8);
          v249 = v146;
          if (v146)
          {
            (*v147)(v132, v145);
            (*v148)(v57, v99);
            break;
          }

          (*v147)(v132, v145);
          (*v148)(v57, v99);
          swift_unknownObjectRelease();
          v231 = v224;
          *&v232 = v225;
          sub_230DF8C40(&v231);
          goto LABEL_69;
        case 7:
          LOBYTE(v231) = 7;
          sub_230DF6768();
          v112 = v206;
          v113 = v166;
          v114 = v249;
          sub_230E69690();
          v249 = v114;
          if (v114)
          {
            (*(v217 + 8))(v57, v113);
            break;
          }

          v142 = v181;
          v143 = sub_230E69750();
          v144 = (v217 + 8);
          v249 = 0;
          v154 = v143;
          (*(v180 + 8))(v112, v142);
          (*v144)(v57, v113);
          swift_unknownObjectRelease();
          *&v231 = v154;
          sub_230DF8BCC(&v231);
          goto LABEL_69;
        case 8:
          LOBYTE(v231) = 8;
          sub_230DF66C0();
          v82 = v207;
          v83 = v166;
          v141 = v249;
          sub_230E69690();
          v249 = v141;
          if (v141)
          {
            goto LABEL_56;
          }

          sub_230DF8B58();
          v85 = v183;
          v149 = v249;
          sub_230E69760();
          v87 = (v182 + 8);
          v88 = (v217 + 8);
          v249 = v149;
          if (v149)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          *&v231 = v224;
          sub_230DF8BAC(&v231);
          goto LABEL_69;
        case 9:
          LOBYTE(v231) = 9;
          sub_230DF6618();
          v82 = v208;
          v83 = v166;
          v97 = v249;
          sub_230E69690();
          v249 = v97;
          if (v97)
          {
            goto LABEL_56;
          }

          sub_230DF8AE4();
          v85 = v185;
          v98 = v249;
          sub_230E69760();
          v87 = (v184 + 8);
          v88 = (v217 + 8);
          v249 = v98;
          if (v98)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          *&v231 = v224;
          sub_230DF8B38(&v231);
          goto LABEL_69;
        case 10:
          LOBYTE(v231) = 10;
          sub_230DF6570();
          v82 = v210;
          v83 = v166;
          v139 = v249;
          sub_230E69690();
          v249 = v139;
          if (v139)
          {
            goto LABEL_56;
          }

          sub_230DF8A70();
          v85 = v189;
          v140 = v249;
          sub_230E69760();
          v87 = (v186 + 8);
          v88 = (v217 + 8);
          v249 = v140;
          if (v140)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          *&v231 = v224;
          sub_230DF8AC4(&v231);
          goto LABEL_69;
        case 11:
          LOBYTE(v231) = 11;
          sub_230DF651C();
          v91 = v209;
          v83 = v166;
          v92 = v249;
          sub_230E69690();
          v249 = v92;
          if (v92)
          {
            goto LABEL_56;
          }

          (*(v187 + 8))(v91, v188);
          (*(v217 + 8))(v57, v83);
          swift_unknownObjectRelease();
          sub_230DF8A4C(&v238);
          goto LABEL_46;
        case 12:
          LOBYTE(v231) = 12;
          sub_230DF64C8();
          v95 = v211;
          v83 = v166;
          v96 = v249;
          sub_230E69690();
          v249 = v96;
          if (v96)
          {
            goto LABEL_56;
          }

          (*(v190 + 8))(v95, v191);
          (*(v217 + 8))(v57, v83);
          swift_unknownObjectRelease();
          sub_230DF8A18(&v238);
          goto LABEL_46;
        case 13:
          LOBYTE(v231) = 13;
          sub_230DF6474();
          v130 = v212;
          v83 = v166;
          v131 = v249;
          sub_230E69690();
          v249 = v131;
          if (v131)
          {
            goto LABEL_56;
          }

          (*(v192 + 8))(v130, v193);
          (*(v217 + 8))(v57, v83);
          swift_unknownObjectRelease();
          sub_230DF89E4(&v238);
LABEL_46:
          v80 = v223;
          goto LABEL_71;
        case 14:
          LOBYTE(v231) = 14;
          sub_230DF6420();
          v82 = v213;
          v83 = v166;
          v89 = v249;
          sub_230E69690();
          v249 = v89;
          if (v89)
          {
            goto LABEL_56;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D320, &qword_230E7CD10);
          sub_230DF8974(&qword_27DB5D488, &protocol conformance descriptor for GetFromKVDatabaseResponse<A>);
          v85 = v196;
          v90 = v249;
          sub_230E69760();
          v87 = (v194 + 8);
          v88 = (v217 + 8);
          v249 = v90;
          if (v90)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          *&v231 = v224;
          sub_230DF89C4(&v231);
          goto LABEL_69;
        case 15:
          LOBYTE(v231) = 15;
          sub_230DF6378();
          v82 = v214;
          v83 = v166;
          v104 = v249;
          sub_230E69690();
          v249 = v104;
          if (v104)
          {
            goto LABEL_56;
          }

          sub_230DF8900();
          v85 = v197;
          v105 = v249;
          sub_230E69760();
          v87 = (v195 + 8);
          v88 = (v217 + 8);
          v249 = v105;
          if (v105)
          {
            goto LABEL_61;
          }

          (*v87)(v82, v85);
          (*v88)(v57, v83);
          swift_unknownObjectRelease();
          *&v231 = v224;
          sub_230DF8954(&v231);
          goto LABEL_69;
        case 16:
          LOBYTE(v231) = 16;
          sub_230DF62D0();
          v82 = v215;
          v83 = v166;
          v84 = v249;
          sub_230E69690();
          v249 = v84;
          if (v84)
          {
            goto LABEL_56;
          }

          sub_230DF888C();
          v85 = v199;
          v86 = v249;
          sub_230E69760();
          v87 = (v198 + 8);
          v88 = (v217 + 8);
          v249 = v86;
          if (!v86)
          {
            (*v87)(v82, v85);
            (*v88)(v57, v83);
            swift_unknownObjectRelease();
            *&v231 = v224;
            sub_230DF88E0(&v231);
            goto LABEL_69;
          }

LABEL_61:
          v124 = *v87;
          v125 = v82;
          goto LABEL_62;
        case 17:
          v120 = v62;
          LOBYTE(v231) = 17;
          sub_230DF6228();
          v83 = v166;
          v121 = v249;
          sub_230E69690();
          v249 = v121;
          if (v121)
          {
            goto LABEL_56;
          }

          sub_230DF8818();
          v85 = v201;
          v122 = v249;
          sub_230E69760();
          v123 = (v120 + 8);
          v88 = (v217 + 8);
          v249 = v122;
          if (!v122)
          {
            (*v123)(v63, v85);
            (*v88)(v57, v83);
            swift_unknownObjectRelease();
            *&v231 = v224;
            sub_230DF886C(&v231);
            goto LABEL_69;
          }

          v124 = *v123;
          v125 = v63;
LABEL_62:
          v124(v125, v85);
          goto LABEL_63;
        case 18:
          LOBYTE(v231) = 18;
          sub_230DF6180();
          v134 = v216;
          v83 = v166;
          v135 = v249;
          sub_230E69690();
          v249 = v135;
          if (v135)
          {
LABEL_56:
            (*(v217 + 8))(v57, v83);
            break;
          }

          sub_230DF87A4();
          v136 = v200;
          v137 = v249;
          sub_230E69760();
          v138 = (v202 + 8);
          v88 = (v217 + 8);
          v249 = v137;
          if (!v137)
          {
            (*v138)(v134, v136);
            (*v88)(v57, v83);
            swift_unknownObjectRelease();
            *&v231 = v224;
            sub_230DF87F8(&v231);
LABEL_69:
            v242 = v235;
            v243 = v236;
            v244[0] = v237[0];
            *(v244 + 9) = *(v237 + 9);
            v238 = v231;
            v239 = v232;
            v128 = v233;
            v129 = v234;
LABEL_70:
            v240 = v128;
            v241 = v129;
            v80 = v223;
LABEL_71:
            v159 = v243;
            v64[4] = v242;
            v64[5] = v159;
            v64[6] = v244[0];
            *(v64 + 105) = *(v244 + 9);
            v160 = v239;
            *v64 = v238;
            v64[1] = v160;
            v161 = v241;
            v64[2] = v240;
            v64[3] = v161;
            return __swift_destroy_boxed_opaque_existential_1(v80);
          }

          (*v138)(v134, v136);
LABEL_63:
          (*v88)(v57, v83);
          break;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v76 = sub_230E69580();
      v77 = swift_allocError();
      v79 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
      *v79 = &type metadata for ServicesIntelligenceXPCResponse;
      v69 = v57;
      v70 = v166;
      sub_230E696A0();
      sub_230E69570();
      (*(*(v76 - 8) + 104))(v79, *MEMORY[0x277D84160], v76);
      v249 = v77;
      swift_willThrow();
LABEL_7:
      (*(v217 + 8))(v69, v70);
    }

    swift_unknownObjectRelease();
  }

  v80 = v223;
  return __swift_destroy_boxed_opaque_existential_1(v80);
}

unint64_t sub_230DF87A4()
{
  result = qword_27DB5D468;
  if (!qword_27DB5D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D468);
  }

  return result;
}

uint64_t sub_230DF87F8(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x78;
  return result;
}

unint64_t sub_230DF8818()
{
  result = qword_27DB5D470;
  if (!qword_27DB5D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D470);
  }

  return result;
}

uint64_t sub_230DF886C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x70;
  return result;
}

unint64_t sub_230DF888C()
{
  result = qword_27DB5D478;
  if (!qword_27DB5D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D478);
  }

  return result;
}

uint64_t sub_230DF88E0(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x68;
  return result;
}

unint64_t sub_230DF8900()
{
  result = qword_27DB5D480;
  if (!qword_27DB5D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D480);
  }

  return result;
}

uint64_t sub_230DF8954(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x60;
  return result;
}

uint64_t sub_230DF8974(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5D320, &qword_230E7CD10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DF89C4(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x58;
  return result;
}

double sub_230DF89E4(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x80;
  return result;
}

double sub_230DF8A18(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x80;
  return result;
}

double sub_230DF8A4C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 0x80;
  return result;
}

unint64_t sub_230DF8A70()
{
  result = qword_27DB5D490;
  if (!qword_27DB5D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D490);
  }

  return result;
}

uint64_t sub_230DF8AC4(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x50;
  return result;
}

unint64_t sub_230DF8AE4()
{
  result = qword_27DB5D498;
  if (!qword_27DB5D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D498);
  }

  return result;
}

uint64_t sub_230DF8B38(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x48;
  return result;
}

unint64_t sub_230DF8B58()
{
  result = qword_27DB5D4A0;
  if (!qword_27DB5D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4A0);
  }

  return result;
}

uint64_t sub_230DF8BAC(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_230DF8BCC(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x38;
  return result;
}

unint64_t sub_230DF8BEC()
{
  result = qword_27DB5D4A8;
  if (!qword_27DB5D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4A8);
  }

  return result;
}

uint64_t sub_230DF8C40(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x30;
  return result;
}

uint64_t sub_230DF8C60(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x28;
  return result;
}

uint64_t sub_230DF8C80(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5D3A0, &qword_230E7CD18);
    sub_230DF8D08(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DF8D08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Treatment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230DF8D4C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x20;
  return result;
}

uint64_t sub_230DF8D6C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x18;
  return result;
}

uint64_t sub_230DF8D8C(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 0x10;
  return result;
}

uint64_t sub_230DF8DAC(uint64_t result)
{
  v1 = *(result + 120);
  *(result + 104) &= 1uLL;
  *(result + 120) = v1 & 1 | 8;
  return result;
}

uint64_t sub_230DF8DCC(uint64_t result)
{
  v1 = *(result + 120) & 1;
  *(result + 104) &= 1uLL;
  *(result + 120) = v1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20ServicesIntelligence0aB11XPCResponseO(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1;
  v3 = v1 >> 3;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 16);
  }
}

uint64_t sub_230DF8E38(uint64_t result, unsigned int a2)
{
  if (a2 < 0x10)
  {
    v2 = *(result + 120) & 1 | (8 * a2);
    *(result + 104) &= 1uLL;
    *(result + 120) = v2;
  }

  else
  {
    *result = a2 - 16;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0x80;
  }

  return result;
}

uint64_t sub_230DF8EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_230DF8EFC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 121) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      return result;
    }

    *(a1 + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_230DF8F78(uint64_t result, char a2)
{
  v2 = *(result + 120) & 0xF9 | (4 * (a2 & 1));
  *(result + 104) &= 1uLL;
  *(result + 120) = v2;
  return result;
}

unint64_t sub_230DF90F0()
{
  result = qword_27DB5D4C0;
  if (!qword_27DB5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4C0);
  }

  return result;
}

unint64_t sub_230DF9148()
{
  result = qword_27DB5D4C8;
  if (!qword_27DB5D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4C8);
  }

  return result;
}

unint64_t sub_230DF91A0()
{
  result = qword_27DB5D4D0;
  if (!qword_27DB5D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4D0);
  }

  return result;
}

unint64_t sub_230DF91F8()
{
  result = qword_27DB5D4D8;
  if (!qword_27DB5D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4D8);
  }

  return result;
}

unint64_t sub_230DF9250()
{
  result = qword_27DB5D4E0;
  if (!qword_27DB5D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4E0);
  }

  return result;
}

unint64_t sub_230DF92A8()
{
  result = qword_27DB5D4E8;
  if (!qword_27DB5D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4E8);
  }

  return result;
}

unint64_t sub_230DF9300()
{
  result = qword_27DB5D4F0;
  if (!qword_27DB5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4F0);
  }

  return result;
}

unint64_t sub_230DF9358()
{
  result = qword_27DB5D4F8;
  if (!qword_27DB5D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D4F8);
  }

  return result;
}

unint64_t sub_230DF93B0()
{
  result = qword_27DB5D500;
  if (!qword_27DB5D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D500);
  }

  return result;
}

unint64_t sub_230DF9408()
{
  result = qword_27DB5D508;
  if (!qword_27DB5D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D508);
  }

  return result;
}

unint64_t sub_230DF9460()
{
  result = qword_27DB5D510;
  if (!qword_27DB5D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D510);
  }

  return result;
}

unint64_t sub_230DF94B8()
{
  result = qword_27DB5D518;
  if (!qword_27DB5D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D518);
  }

  return result;
}

unint64_t sub_230DF9510()
{
  result = qword_27DB5D520;
  if (!qword_27DB5D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D520);
  }

  return result;
}

unint64_t sub_230DF9568()
{
  result = qword_27DB5D528;
  if (!qword_27DB5D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D528);
  }

  return result;
}

unint64_t sub_230DF95C0()
{
  result = qword_27DB5D530;
  if (!qword_27DB5D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D530);
  }

  return result;
}

unint64_t sub_230DF9618()
{
  result = qword_27DB5D538;
  if (!qword_27DB5D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D538);
  }

  return result;
}

unint64_t sub_230DF9670()
{
  result = qword_27DB5D540;
  if (!qword_27DB5D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D540);
  }

  return result;
}

unint64_t sub_230DF96C8()
{
  result = qword_27DB5D548;
  if (!qword_27DB5D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D548);
  }

  return result;
}

unint64_t sub_230DF9720()
{
  result = qword_27DB5D550;
  if (!qword_27DB5D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D550);
  }

  return result;
}

unint64_t sub_230DF9778()
{
  result = qword_27DB5D558;
  if (!qword_27DB5D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D558);
  }

  return result;
}

unint64_t sub_230DF97D0()
{
  result = qword_27DB5D560;
  if (!qword_27DB5D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D560);
  }

  return result;
}

unint64_t sub_230DF9828()
{
  result = qword_27DB5D568;
  if (!qword_27DB5D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D568);
  }

  return result;
}

unint64_t sub_230DF9880()
{
  result = qword_27DB5D570;
  if (!qword_27DB5D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D570);
  }

  return result;
}

unint64_t sub_230DF98D8()
{
  result = qword_27DB5D578;
  if (!qword_27DB5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D578);
  }

  return result;
}

unint64_t sub_230DF9930()
{
  result = qword_27DB5D580;
  if (!qword_27DB5D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D580);
  }

  return result;
}

unint64_t sub_230DF9988()
{
  result = qword_27DB5D588;
  if (!qword_27DB5D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D588);
  }

  return result;
}

unint64_t sub_230DF99E0()
{
  result = qword_27DB5D590;
  if (!qword_27DB5D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D590);
  }

  return result;
}

unint64_t sub_230DF9A38()
{
  result = qword_27DB5D598;
  if (!qword_27DB5D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D598);
  }

  return result;
}

unint64_t sub_230DF9A90()
{
  result = qword_27DB5D5A0;
  if (!qword_27DB5D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5A0);
  }

  return result;
}

unint64_t sub_230DF9AE8()
{
  result = qword_27DB5D5A8;
  if (!qword_27DB5D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5A8);
  }

  return result;
}

unint64_t sub_230DF9B40()
{
  result = qword_27DB5D5B0;
  if (!qword_27DB5D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5B0);
  }

  return result;
}

unint64_t sub_230DF9B98()
{
  result = qword_27DB5D5B8;
  if (!qword_27DB5D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5B8);
  }

  return result;
}

unint64_t sub_230DF9BF0()
{
  result = qword_27DB5D5C0;
  if (!qword_27DB5D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5C0);
  }

  return result;
}

unint64_t sub_230DF9C48()
{
  result = qword_27DB5D5C8;
  if (!qword_27DB5D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5C8);
  }

  return result;
}

unint64_t sub_230DF9CA0()
{
  result = qword_27DB5D5D0;
  if (!qword_27DB5D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5D0);
  }

  return result;
}

unint64_t sub_230DF9CF8()
{
  result = qword_27DB5D5D8;
  if (!qword_27DB5D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5D8);
  }

  return result;
}

unint64_t sub_230DF9D50()
{
  result = qword_27DB5D5E0;
  if (!qword_27DB5D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5E0);
  }

  return result;
}

unint64_t sub_230DF9DA8()
{
  result = qword_27DB5D5E8;
  if (!qword_27DB5D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5E8);
  }

  return result;
}

unint64_t sub_230DF9E00()
{
  result = qword_27DB5D5F0;
  if (!qword_27DB5D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5F0);
  }

  return result;
}

unint64_t sub_230DF9E58()
{
  result = qword_27DB5D5F8;
  if (!qword_27DB5D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D5F8);
  }

  return result;
}

unint64_t sub_230DF9EB0()
{
  result = qword_27DB5D600;
  if (!qword_27DB5D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D600);
  }

  return result;
}

unint64_t sub_230DF9F08()
{
  result = qword_27DB5D608;
  if (!qword_27DB5D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D608);
  }

  return result;
}

unint64_t sub_230DF9F60()
{
  result = qword_27DB5D610;
  if (!qword_27DB5D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D610);
  }

  return result;
}

unint64_t sub_230DF9FB8()
{
  result = qword_27DB5D618;
  if (!qword_27DB5D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D618);
  }

  return result;
}

unint64_t sub_230DFA010()
{
  result = qword_27DB5D620;
  if (!qword_27DB5D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D620);
  }

  return result;
}

unint64_t sub_230DFA068()
{
  result = qword_27DB5D628;
  if (!qword_27DB5D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D628);
  }

  return result;
}

unint64_t sub_230DFA0C0()
{
  result = qword_27DB5D630;
  if (!qword_27DB5D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D630);
  }

  return result;
}

unint64_t sub_230DFA118()
{
  result = qword_27DB5D638;
  if (!qword_27DB5D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D638);
  }

  return result;
}

unint64_t sub_230DFA170()
{
  result = qword_27DB5D640;
  if (!qword_27DB5D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D640);
  }

  return result;
}

unint64_t sub_230DFA1C8()
{
  result = qword_27DB5D648;
  if (!qword_27DB5D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D648);
  }

  return result;
}

unint64_t sub_230DFA220()
{
  result = qword_27DB5D650;
  if (!qword_27DB5D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D650);
  }

  return result;
}

unint64_t sub_230DFA278()
{
  result = qword_27DB5D658;
  if (!qword_27DB5D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D658);
  }

  return result;
}

unint64_t sub_230DFA2D0()
{
  result = qword_27DB5D660;
  if (!qword_27DB5D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D660);
  }

  return result;
}

unint64_t sub_230DFA328()
{
  result = qword_27DB5D668;
  if (!qword_27DB5D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D668);
  }

  return result;
}

unint64_t sub_230DFA380()
{
  result = qword_27DB5D670;
  if (!qword_27DB5D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D670);
  }

  return result;
}

unint64_t sub_230DFA3D8()
{
  result = qword_27DB5D678;
  if (!qword_27DB5D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D678);
  }

  return result;
}

unint64_t sub_230DFA430()
{
  result = qword_27DB5D680;
  if (!qword_27DB5D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D680);
  }

  return result;
}

uint64_t sub_230DFA484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C6C6568 && a2 == 0xE500000000000000;
  if (v4 || (sub_230E698C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80650 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_230E698C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80780 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572546863746566 && a2 == 0xEF73746E656D7461 || (sub_230E698C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61436573556E7572 && a2 == 0xEA00000000006573 || (sub_230E698C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230E84450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6873756C66 && a2 == 0xEC00000073636972 || (sub_230E698C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230E80450 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80470 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E84470 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80870 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000230E80910 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230E808F0 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230E80500 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x44564B6E49746573 && a2 == 0xEF65736162617461 || (sub_230E698C0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80550 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000230E80570 == a2 || (sub_230E698C0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230E80590 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_230E698C0();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_230DFAA70()
{
  result = qword_27DB5D6A0;
  if (!qword_27DB5D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6A0);
  }

  return result;
}

unint64_t sub_230DFAAC4()
{
  result = qword_27DB5D6A8;
  if (!qword_27DB5D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6A8);
  }

  return result;
}

uint64_t sub_230DFAB18(uint64_t result)
{
  v1 = *(result + 120) & 0xF9 | 4;
  *(result + 104) &= 1uLL;
  *(result + 120) = v1;
  return result;
}

unint64_t sub_230DFAB38()
{
  result = qword_27DB5D6B0;
  if (!qword_27DB5D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6B0);
  }

  return result;
}

unint64_t sub_230DFAB8C()
{
  result = qword_27DB5D6B8;
  if (!qword_27DB5D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6B8);
  }

  return result;
}

uint64_t sub_230DFABE0(uint64_t result)
{
  v1 = *(result + 120) & 0xF9;
  *(result + 104) &= 1uLL;
  *(result + 120) = v1;
  return result;
}

unint64_t sub_230DFAC08()
{
  result = qword_27DB5D6D8;
  if (!qword_27DB5D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6D8);
  }

  return result;
}

unint64_t sub_230DFAC90()
{
  result = qword_27DB5D6E0;
  if (!qword_27DB5D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6E0);
  }

  return result;
}

unint64_t sub_230DFACE8()
{
  result = qword_27DB5D6E8;
  if (!qword_27DB5D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6E8);
  }

  return result;
}

unint64_t sub_230DFAD40()
{
  result = qword_27DB5D6F0;
  if (!qword_27DB5D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6F0);
  }

  return result;
}

unint64_t sub_230DFAD98()
{
  result = qword_27DB5D6F8;
  if (!qword_27DB5D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D6F8);
  }

  return result;
}

unint64_t sub_230DFADF0()
{
  result = qword_27DB5D700;
  if (!qword_27DB5D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D700);
  }

  return result;
}

unint64_t sub_230DFAE48()
{
  result = qword_27DB5D708;
  if (!qword_27DB5D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D708);
  }

  return result;
}

unint64_t sub_230DFAEA0()
{
  result = qword_27DB5D710;
  if (!qword_27DB5D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D710);
  }

  return result;
}

unint64_t sub_230DFAEF8()
{
  result = qword_27DB5D718;
  if (!qword_27DB5D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D718);
  }

  return result;
}

unint64_t sub_230DFAF50()
{
  result = qword_27DB5D720;
  if (!qword_27DB5D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D720);
  }

  return result;
}

uint64_t ServicesIntelligenceXPC.Client.refreshConfiguration()()
{
  sub_230DF15CC(v0 + 16);
  v1 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v1;
  *(v0 + 281) = *(v0 + 137);
  v2 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v2;
  v3 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v3;
  v4 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 816) = v5;
  *v5 = v0;
  v5[1] = sub_230DFB078;

  return sub_230E01718(v0 + 304, (v0 + 160));
}

uint64_t sub_230DFB078()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_230DFB330;
  }

  else
  {
    v2 = sub_230DFB18C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DFB18C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 384);
  *(v0 + 624) = v1;
  *(v0 + 640) = v2;
  v3 = *(v0 + 400);
  *(v0 + 656) = v3;
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 352);
  *(v0 + 592) = v6;
  *(v0 + 608) = v7;
  v8 = *(v0 + 409);
  *(v0 + 665) = v8;
  *(v0 + 432) = v4;
  *(v0 + 448) = v5;
  *(v0 + 464) = v6;
  *(v0 + 480) = v7;
  *(v0 + 496) = v1;
  *(v0 + 512) = v2;
  *(v0 + 528) = v3;
  *(v0 + 537) = v8;
  if (sub_230DFABFC(v0 + 432) == 1)
  {
    v9 = sub_230D0519C(v0 + 432);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 432);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 720) = v13[2];
    *(v0 + 736) = v14;
    *(v0 + 688) = v16;
    *(v0 + 704) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 793) = *(v13 + 105);
    *(v0 + 768) = v18;
    *(v0 + 784) = v17;
    *(v0 + 752) = v19;
    if (sub_230DF6160(v0 + 688) == 1)
    {
      v20 = *sub_230D04CA4(v0 + 688);
      sub_230DFB3A0(v0 + 560);
      v21 = *(v0 + 8);
      v22 = v20;
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 560);
  }

  v21 = *(v0 + 8);
  v22 = 0;
LABEL_7:

  return v21(v22);
}

unint64_t sub_230DFB34C()
{
  result = qword_27DB5D728;
  if (!qword_27DB5D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D728);
  }

  return result;
}

uint64_t ServicesIntelligenceXPC.Client.getFromKVDatabase<A>(domain:request:)(uint64_t a1, _BYTE *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1432) = v6;
  *(v7 + 1424) = a6;
  *(v7 + 1416) = a5;
  *(v7 + 1408) = a4;
  *(v7 + 1400) = a1;
  *(v7 + 153) = *a2;
  *(v7 + 1440) = *a3;

  return MEMORY[0x2822009F8](sub_230DFB484, 0, 0);
}

uint64_t sub_230DFB484()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1424);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6B0, &qword_230E72AC0);
  *(v0 + 1384) = v3;
  *(v0 + 1392) = sub_230D0ACD8();
  *(v0 + 1360) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1456) = v4;
  *(v4 + 16) = *(v0 + 1408);
  *(v4 + 32) = v2;
  v5 = sub_230E68FA0();
  LOBYTE(v1) = *(v0 + 153);
  sub_230D0F12C(MEMORY[0x277D84F90]);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 1360), v3);
  v7 = *(v3 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v3);
  v9 = *v8;

  __swift_destroy_boxed_opaque_existential_1((v0 + 1360));

  *(v0 + 16) = v1;
  *(v0 + 24) = v9;
  *(v0 + 32) = v5;
  sub_230DF13A8(v0 + 16);
  v10 = *(v0 + 96);
  v11 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v11;
  *(v0 + 281) = *(v0 + 137);
  v12 = *(v0 + 32);
  v13 = *(v0 + 64);
  v14 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v13;
  *(v0 + 224) = v14;
  *(v0 + 240) = v10;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v12;
  v15 = swift_task_alloc();
  *(v0 + 1464) = v15;
  *v15 = v0;
  v15[1] = sub_230DFB73C;

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFB73C()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[22] = v3[3];
    v2[23] = v6;
    v2[20] = v4;
    v2[21] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v8;
    v2[26] = v9;
    v2[24] = v7;
    sub_230DFC328((v2 + 19));
    v10 = sub_230DFBB78;
  }

  else
  {
    v2[28] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[31] = v3[3];
    v2[32] = v13;
    v2[29] = v11;
    v2[30] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v15;
    v2[35] = v16;
    v2[33] = v14;
    sub_230DFC328((v2 + 28));
    v10 = sub_230DFB8CC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_230DFB8CC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 11)
    {
      v20 = *(v0 + 1424);
      v21 = *(v0 + 1416);
      v22 = *(v0 + 1408);
      v23 = *(v0 + 1400);
      sub_230D04CA4(v0 + 976);
      v24 = swift_task_alloc();
      v24[2] = v22;
      v24[3] = v21;
      v24[4] = v20;
      v25 = *(v0 + 880);
      *(v0 + 1152) = *(v0 + 896);
      *(v0 + 1136) = v25;
      v26 = *(v0 + 848);
      *(v0 + 1120) = *(v0 + 864);
      *(v0 + 1104) = v26;
      *(v0 + 1209) = *(v0 + 953);
      v27 = *(v0 + 928);
      *(v0 + 1200) = *(v0 + 944);
      v28 = *(v0 + 912);
      *(v0 + 1184) = v27;
      *(v0 + 1168) = v28;
      v29 = sub_230D0519C(v0 + 1104);
      sub_230DFC39C(v29, v0 + 1232);
      v30 = sub_230E68F70();
      sub_230DFB3A0(v0 + 848);
      sub_230DFB3A0(v0 + 848);

      GetFromKVDatabaseResponse.init(records:)(v30, v23);

      v31 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v32 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v31 = *(v0 + 8);
LABEL_7:

  return v31();
}

uint64_t sub_230DFBB78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DFBBDC@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_230E686C0();
  swift_allocObject();
  sub_230E686B0();
  sub_230E686A0();
  if (v4)
  {
    MEMORY[0x23191E910](v4);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return (*(*(a2 - 8) + 56))(a4, v7, 1, a2);
}

uint64_t ServicesIntelligenceXPC.Client.setInKVDatabase<A>(domain:request:)(uint64_t a1, _BYTE *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1136) = v6;
  *(v7 + 1128) = a6;
  *(v7 + 1120) = a5;
  *(v7 + 1112) = a4;
  *(v7 + 1104) = a1;
  *(v7 + 153) = *a2;
  *(v7 + 1144) = *a3;
  return MEMORY[0x2822009F8](sub_230DFBD0C, 0, 0);
}

uint64_t sub_230DFBD0C()
{
  v1 = *(v0 + 1128);
  v2 = swift_task_alloc();
  *(v0 + 1160) = v2;
  *(v2 + 16) = *(v0 + 1112);
  *(v2 + 32) = v1;
  v3 = sub_230E68FA0();
  v4 = *(v0 + 1152);
  v5 = *(v0 + 153);

  sub_230D0DA94(MEMORY[0x277D84F90]);

  *(v0 + 16) = v5;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  sub_230DF1394(v0 + 16);
  v6 = *(v0 + 96);
  v7 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v7;
  *(v0 + 281) = *(v0 + 137);
  v8 = *(v0 + 32);
  v9 = *(v0 + 64);
  v10 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v9;
  *(v0 + 224) = v10;
  *(v0 + 240) = v6;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v8;
  v11 = swift_task_alloc();
  *(v0 + 1168) = v11;
  *v11 = v0;
  v11[1] = sub_230DFBED0;

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFBED0()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  *(*v1 + 1176) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[22] = v3[3];
    v2[23] = v6;
    v2[20] = v4;
    v2[21] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v8;
    v2[26] = v9;
    v2[24] = v7;
    sub_230DFC328((v2 + 19));
    v10 = sub_230DFC224;
  }

  else
  {
    v2[28] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[31] = v3[3];
    v2[32] = v13;
    v2[29] = v11;
    v2[30] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v15;
    v2[35] = v16;
    v2[33] = v14;
    sub_230DFC328((v2 + 28));
    v10 = sub_230DFC060;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_230DFC060()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 12)
    {
      v20 = *(v0 + 1104);
      v21 = *sub_230D04CA4(v0 + 976);
      sub_230DFB3A0(v0 + 848);
      *v20 = v21;

      v22 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v22 = *(v0 + 8);
LABEL_7:

  return v22();
}

uint64_t sub_230DFC224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230DFC288@<X0>(uint64_t *a4@<X8>)
{
  sub_230E686F0();
  swift_allocObject();
  sub_230E686E0();
  v6 = sub_230E686D0();
  v8 = v7;

  if (!v4)
  {
    *a4 = v6;
    a4[1] = v8;
  }

  return result;
}

uint64_t ServicesIntelligenceXPC.Client.enqueueOperationMetrics(_:)(uint64_t a1, void *a2)
{
  *(v2 + 1104) = a1;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  *(v2 + 16) = *a2;
  v6 = a2[4];
  v7 = a2[5];
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = v6;
  *(v2 + 56) = v7;
  sub_230DF155C(v2 + 16);
  v8 = *(v2 + 96);
  v9 = *(v2 + 128);
  *(v2 + 256) = *(v2 + 112);
  *(v2 + 272) = v9;
  *(v2 + 281) = *(v2 + 137);
  v10 = *(v2 + 32);
  v11 = *(v2 + 64);
  v12 = *(v2 + 80);
  *(v2 + 192) = *(v2 + 48);
  *(v2 + 208) = v11;
  *(v2 + 224) = v12;
  *(v2 + 240) = v8;
  *(v2 + 160) = *(v2 + 16);
  *(v2 + 176) = v10;

  v13 = swift_task_alloc();
  *(v2 + 1112) = v13;
  *v13 = v2;
  v13[1] = sub_230DFC550;

  return sub_230E01718(v2 + 592, (v2 + 160));
}

uint64_t sub_230DFC550()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[22] = v3[3];
    v2[23] = v6;
    v2[20] = v4;
    v2[21] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v8;
    v2[26] = v9;
    v2[24] = v7;
    sub_230DFC328((v2 + 19));
    v10 = sub_230DFC884;
  }

  else
  {
    v2[28] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[31] = v3[3];
    v2[32] = v13;
    v2[29] = v11;
    v2[30] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v15;
    v2[35] = v16;
    v2[33] = v14;
    sub_230DFC328((v2 + 28));
    v10 = sub_230DFC6E0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_230DFC6E0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 6)
    {
      v20 = *(v0 + 1104);
      v21 = sub_230D04CA4(v0 + 976);
      v22 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v22;
      v23 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v24 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v23 = *(v0 + 8);
LABEL_7:

  return v23();
}

uint64_t ServicesIntelligenceXPC.Client.flushMetrics(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_230DF14F4(v2 + 16);
  v3 = *(v2 + 96);
  v4 = *(v2 + 128);
  *(v2 + 256) = *(v2 + 112);
  *(v2 + 272) = v4;
  *(v2 + 281) = *(v2 + 137);
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  v7 = *(v2 + 80);
  *(v2 + 192) = *(v2 + 48);
  *(v2 + 208) = v6;
  *(v2 + 224) = v7;
  *(v2 + 240) = v3;
  *(v2 + 160) = *(v2 + 16);
  *(v2 + 176) = v5;

  v8 = swift_task_alloc();
  *(v2 + 1104) = v8;
  *v8 = v2;
  v8[1] = sub_230DFC990;

  return sub_230E01718(v2 + 592, (v2 + 160));
}

uint64_t sub_230DFC990()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[22] = v3[3];
    v2[23] = v6;
    v2[20] = v4;
    v2[21] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v8;
    v2[26] = v9;
    v2[24] = v7;
    sub_230DFC328((v2 + 19));
    v10 = sub_230DFCCE8;
  }

  else
  {
    v2[28] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[31] = v3[3];
    v2[32] = v13;
    v2[29] = v11;
    v2[30] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v15;
    v2[35] = v16;
    v2[33] = v14;
    sub_230DFC328((v2 + 28));
    v10 = sub_230DFCB20;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_230DFCB20()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
LABEL_8:
    v24 = *(v0 + 8);

    return v24();
  }

  v13 = sub_230D0519C(v0 + 720);
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  *(v0 + 1008) = v13[2];
  *(v0 + 1024) = v14;
  *(v0 + 976) = v16;
  *(v0 + 992) = v15;
  v18 = v13[5];
  v17 = v13[6];
  v19 = v13[4];
  *(v0 + 1081) = *(v13 + 105);
  *(v0 + 1056) = v18;
  *(v0 + 1072) = v17;
  *(v0 + 1040) = v19;
  if (sub_230DF6160(v0 + 976) != 7)
  {
    sub_230DFB34C();
    swift_allocError();
    *v23 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
    goto LABEL_8;
  }

  v20 = *sub_230D04CA4(v0 + 976);
  sub_230DFB3A0(v0 + 848);
  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_230DFCD00(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_230DFCD20, 0, 0);
}

uint64_t sub_230DFCD20()
{
  v1 = sub_230E69030();
  v2 = sub_230E69030();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];
  v0[21] = v3;

  v4 = objc_allocWithZone(MEMORY[0x277CEE598]);

  v5 = v3;
  v6 = sub_230E69030();

  v7 = [v4 initWithContainerID:v6 bag:v5];
  v0[22] = v7;

  v8 = [v7 flush];
  v0[23] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_230DFCF34;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D730, &qword_230E7ED40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_230DC1810;
  v0[13] = &block_descriptor_0;
  v0[14] = v9;
  [v8 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_230DFCF34()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_230DFD0DC;
  }

  else
  {
    v2 = sub_230DFD044;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230DFD044()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  v4 = [v3 integerValue];
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_230DFD0DC(uint64_t a1)
{
  v2 = v1[23];
  v4 = v1[21];
  v3 = v1[22];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t ServicesIntelligenceXPC.Client.fetchFromSQLDatabase(domain:databaseName:request:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = a5[3];
  *(v5 + 1168) = a5[4];
  v7 = a5[4];
  *(v5 + 1184) = a5[5];
  v8 = a5[5];
  *(v5 + 1200) = a5[6];
  v9 = a5[1];
  *(v5 + 1104) = *a5;
  v10 = *a5;
  v11 = a5[1];
  *(v5 + 1120) = v9;
  v12 = a5[3];
  *(v5 + 1136) = a5[2];
  v13 = a5[2];
  *(v5 + 1152) = v12;
  *(v5 + 88) = v6;
  *(v5 + 72) = v13;
  *(v5 + 56) = v11;
  *(v5 + 40) = v10;
  *(v5 + 136) = a5[6];
  *(v5 + 120) = v8;
  *(v5 + 1344) = a1;
  v14 = *a2;
  *(v5 + 1216) = *(a5 + 112);
  *(v5 + 152) = *(a5 + 112);
  *(v5 + 104) = v7;
  *(v5 + 16) = v14;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  sub_230DF1478(v5 + 16);
  v15 = *(v5 + 96);
  v16 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v16;
  *(v5 + 281) = *(v5 + 137);
  v17 = *(v5 + 32);
  v18 = *(v5 + 64);
  v19 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v18;
  *(v5 + 224) = v19;
  *(v5 + 240) = v15;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v17;

  sub_230D1D0EC(v5 + 1104, v5 + 1224);
  v20 = swift_task_alloc();
  *(v5 + 1352) = v20;
  *v20 = v5;
  v20[1] = sub_230DFD2E4;

  return sub_230E01718(v5 + 592, (v5 + 160));
}

uint64_t sub_230DFD2E4()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[22] = v3[3];
    v2[23] = v6;
    v2[20] = v4;
    v2[21] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v8;
    v2[26] = v9;
    v2[24] = v7;
    sub_230DFC328((v2 + 19));
    v10 = sub_230DFD610;
  }

  else
  {
    v2[28] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[31] = v3[3];
    v2[32] = v13;
    v2[29] = v11;
    v2[30] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v15;
    v2[35] = v16;
    v2[33] = v14;
    sub_230DFC328((v2 + 28));
    v10 = sub_230DFD474;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_230DFD474()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 672);
  *(v0 + 912) = v1;
  *(v0 + 928) = v2;
  v3 = *(v0 + 688);
  *(v0 + 944) = v3;
  v4 = *(v0 + 592);
  v5 = *(v0 + 608);
  *(v0 + 848) = v4;
  *(v0 + 864) = v5;
  v6 = *(v0 + 624);
  v7 = *(v0 + 640);
  *(v0 + 880) = v6;
  *(v0 + 896) = v7;
  v8 = *(v0 + 697);
  *(v0 + 953) = v8;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  *(v0 + 752) = v6;
  *(v0 + 768) = v7;
  *(v0 + 784) = v1;
  *(v0 + 800) = v2;
  *(v0 + 816) = v3;
  *(v0 + 825) = v8;
  if (sub_230DFABFC(v0 + 720) == 1)
  {
    v9 = sub_230D0519C(v0 + 720);
    v10 = *v9;
    v11 = v9[1];
    sub_230DFB34C();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    swift_willThrow();
  }

  else
  {
    v13 = sub_230D0519C(v0 + 720);
    v14 = v13[3];
    v16 = *v13;
    v15 = v13[1];
    *(v0 + 1008) = v13[2];
    *(v0 + 1024) = v14;
    *(v0 + 976) = v16;
    *(v0 + 992) = v15;
    v18 = v13[5];
    v17 = v13[6];
    v19 = v13[4];
    *(v0 + 1081) = *(v13 + 105);
    *(v0 + 1056) = v18;
    *(v0 + 1072) = v17;
    *(v0 + 1040) = v19;
    if (sub_230DF6160(v0 + 976) == 9)
    {
      v20 = *(v0 + 1344);
      *v20 = *sub_230D04CA4(v0 + 976);
      v21 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_230DFB34C();
    swift_allocError();
    *v22 = xmmword_230E6E730;
    swift_willThrow();
    sub_230DFB3A0(v0 + 848);
  }

  v21 = *(v0 + 8);
LABEL_7:

  return v21();
}

uint64_t ServicesIntelligenceXPC.Client.fetchFromSQLDatabase(databaseName:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  *(v5 + 1168) = *(a4 + 64);
  *(v5 + 1184) = v6;
  *(v5 + 1200) = *(a4 + 96);
  v7 = *(a4 + 16);
  *(v5 + 1104) = *a4;
  *(v5 + 1120) = v7;
  v8 = *(a4 + 48);
  *(v5 + 1136) = *(a4 + 32);
  *(v5 + 1368) = v4;
  *(v5 + 1360) = a3;
  *(v5 + 1352) = a2;
  *(v5 + 1344) = a1;
  *(v5 + 1216) = *(a4 + 112);
  *(v5 + 1152) = v8;
  return MEMORY[0x2822009F8](sub_230DFD688, 0, 0);
}

uint64_t sub_230DFD688()
{
  sub_230DCB5D4((v0 + 153));
  v1 = *(v0 + 1184);
  *(v0 + 104) = *(v0 + 1168);
  *(v0 + 120) = v1;
  *(v0 + 136) = *(v0 + 1200);
  v2 = *(v0 + 1120);
  *(v0 + 40) = *(v0 + 1104);
  *(v0 + 56) = v2;
  v3 = *(v0 + 1152);
  *(v0 + 72) = *(v0 + 1136);
  v4 = *(v0 + 1360);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 153);
  *(v0 + 152) = *(v0 + 1216);
  *(v0 + 88) = v3;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  sub_230DF1478(v0 + 16);
  v7 = *(v0 + 96);
  v8 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v8;
  *(v0 + 281) = *(v0 + 137);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v11 = *(v0 + 80);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v10;
  *(v0 + 224) = v11;
  *(v0 + 240) = v7;
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v9;

  sub_230D1D0EC(v0 + 1104, v0 + 1224);
  v12 = swift_task_alloc();
  *(v0 + 1376) = v12;
  *v12 = v0;
  v12[1] = sub_230DFD81C;

  return sub_230E01718(v0 + 592, (v0 + 160));
}

uint64_t sub_230DFD81C()
{
  v2 = *v1;
  v3 = (*v1 + 160);
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v2[19] = *v3;
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[4];
    v2[22] = v3[3];
    v2[23] = v6;
    v2[20] = v4;
    v2[21] = v5;
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[7];
    *(v2 + 425) = *(v3 + 121);
    v2[25] = v8;
    v2[26] = v9;
    v2[24] = v7;
    sub_230DFC328((v2 + 19));
    v10 = sub_230DFD9AC;
  }

  else
  {
    v2[28] = *v3;
    v11 = v3[1];
    v12 = v3[2];
    v13 = v3[4];
    v2[31] = v3[3];
    v2[32] = v13;
    v2[29] = v11;
    v2[30] = v12;
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    *(v2 + 569) = *(v3 + 121);
    v2[34] = v15;
    v2[35] = v16;
    v2[33] = v14;
    sub_230DFC328((v2 + 28));
    v10 = sub_230DFD474;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t ServicesIntelligenceXPC.Client.deleteFromSQLDatabase(domain:databaseName:request:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *(v5 + 1104) = a1;
  v6 = *a5;
  v7 = a5[1];
  v8 = a5[2];
  v9 = a5[3];
  *(v5 + 16) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;
  sub_230DF14E0(v5 + 16);
  v10 = *(v5 + 96);
  v11 = *(v5 + 128);
  *(v5 + 256) = *(v5 + 112);
  *(v5 + 272) = v11;
  *(v5 + 281) = *(v5 + 137);
  v12 = *(v5 + 32);
  v13 = *(v5 + 64);
  v14 = *(v5 + 80);
  *(v5 + 192) = *(v5 + 48);
  *(v5 + 208) = v13;
  *(v5 + 224) = v14;
  *(v5 + 240) = v10;
  *(v5 + 160) = *(v5 + 16);
  *(v5 + 176) = v12;

  v15 = swift_task_alloc();
  *(v5 + 1112) = v15;
  *v15 = v5;
  v15[1] = sub_230DFDAE8;

  return sub_230E01718(v5 + 592, (v5 + 160));
}