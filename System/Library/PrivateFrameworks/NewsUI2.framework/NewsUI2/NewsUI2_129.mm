uint64_t sub_21950EFC4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21950F094(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21950F150(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21950F21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21950F508(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21950F24C(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000070756FLL;
  v3 = 0x724774616D726F66;
  v4 = 0xE800000000000000;
  v5 = 0x736E6F6974636573;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001BLL;
    v4 = 0x8000000219CD7220;
  }

  if (*v1)
  {
    v3 = 0x6C656E6E616863;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_21950F2D8()
{
  v1 = 0x724774616D726F66;
  v2 = 0x736E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x6C656E6E616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21950F360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21950F508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21950F388(uint64_t a1)
{
  v2 = sub_21950ED78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21950F3C4(uint64_t a1)
{
  v2 = sub_21950ED78();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21950F404()
{
  result = qword_27CC1B4E8;
  if (!qword_27CC1B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4E8);
  }

  return result;
}

unint64_t sub_21950F45C()
{
  result = qword_27CC1B4F0;
  if (!qword_27CC1B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4F0);
  }

  return result;
}

unint64_t sub_21950F4B4()
{
  result = qword_27CC1B4F8;
  if (!qword_27CC1B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4F8);
  }

  return result;
}

unint64_t sub_21950F508(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21950F57C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = [v5 sportsTheme];
  if (v6)
  {
    v7 = [v6 sportsLogoMastheadVisibility];
    result = swift_unknownObjectRelease();
    if (v7 == 1)
    {
      goto LABEL_9;
    }

    if (v7 == 2)
    {
LABEL_8:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  result = [v5 sportsType];
  if (result <= 0xB && ((1 << result) & 0x803) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = [v5 sportsTheme];
  result = [a1 horizontalSizeClass];
  if (!result || result == 2)
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = [v10 sportsLogoImageAssetHandle];
    if (v11)
    {
      goto LABEL_22;
    }

    v12 = [v10 sportsLogoImageCompactAssetHandle];
    if (!v12)
    {
LABEL_24:
      result = swift_unknownObjectRelease();
      goto LABEL_8;
    }

LABEL_19:
    v13 = v12;
    *(a2 + 24) = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
    *(a2 + 32) = sub_2189EB528();
    result = swift_unknownObjectRelease();
    *a2 = v13;
    return result;
  }

  if (result != 1)
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = [v10 sportsLogoImageAssetHandle];
    if (v11)
    {
      goto LABEL_22;
    }

    v12 = [v10 sportsLogoImageCompactAssetHandle];
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [v10 sportsLogoImageCompactAssetHandle];
  if (!v11)
  {
    v12 = [v10 sportsLogoImageAssetHandle];
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_22:
  v14 = v11;
  v16 = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
  v17 = sub_2189EB528();
  *&v15 = v14;
  swift_unknownObjectRelease();
  return sub_2186CB1F0(&v15, a2);
}

id sub_21950F7B8()
{
  v1 = *(v0 + 8);
  result = [v1 theme];
  if (result)
  {
    v3 = [result navigationChromeSeparatorColor];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v1 theme];
      if (v4)
      {
        v5 = [v4 darkStyleNavigationChromeSeparatorColor];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = objc_opt_self();
          v7 = [v3 ne_color];
          v8 = [v5 ne_color];
          v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

          return v9;
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_21950F8F4()
{
  v1 = *(v0 + 8);
  v2 = [v1 sportsType];
  if (v2 == 1 || v2 == 7)
  {
    result = [v1 sportsSecondaryName];
    if (result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v2 != 3)
    {
      return 0;
    }

    v7 = [v1 sportsLeagueType];
    if (v7 >= 2)
    {
      if ((v7 - 2) > 1)
      {
        result = [v1 sportsSecondaryName];
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = [v1 sportsSecondaryName];
        if (!result)
        {
          return result;
        }
      }

LABEL_7:
      v5 = result;
      v6 = sub_219BF5414();

      return v6;
    }

    if (([v1 hideLocationInMasthead] & 1) == 0)
    {
      result = [v1 sportsLocation];
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21950FA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_219BF7464();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21950FAE8, 0, 0);
}

uint64_t sub_21950FAE8(uint64_t a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61728;
  *(v1 + 128) = qword_280F61728;
  v3 = sub_219BF6214();
  sub_219BE5314("MySports setup will ensure follows", 34, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  *v4 = v1;
  v4[1] = sub_21950FBE4;

  return sub_219511434();
}

uint64_t sub_21950FBE4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_219510FCC;
  }

  else
  {
    v2 = sub_21950FCF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21950FCF8(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = sub_219BF6214();
  v4 = MEMORY[0x277D84F90];
  sub_219BE5314("MySports setup did ensure follows", 33, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  v5 = sub_219BF6214();
  sub_219BE5314("MySports setup will ensure onboarding", 37, 2, &dword_2186C1000, v2, v5, v4);
  v6 = swift_task_alloc();
  *(v1 + 152) = v6;
  *v6 = v1;
  v6[1] = sub_21950FDF4;

  return sub_219511B60();
}

uint64_t sub_21950FDF4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_219511200;
  }

  else
  {
    v2 = sub_21950FF08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21950FF08(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = sub_219BF6214();
  sub_219BE5314("MySports setup did ensure onboarding", 36, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  v4 = sub_219BF7C34();
  v6 = v5;
  sub_219BF79D4();
  v7 = swift_task_alloc();
  *(v1 + 168) = v7;
  *v7 = v1;
  v7[1] = sub_219510018;

  return sub_21907C5A0(v4, v6, 0, 0, 1);
}

uint64_t sub_219510018()
{
  v2 = *v1;
  v3 = *v1;
  v2[22] = v0;

  v4 = v2[15];
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_219510790, 0, 0);
  }

  else
  {
    v7 = *(v5 + 8);
    v2[23] = v7;
    v2[24] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v8 = swift_task_alloc();
    v2[25] = v8;
    *v8 = v3;
    v8[1] = sub_2195101FC;
    v9 = v2[9];

    return sub_2195126A0(v9);
  }
}

uint64_t sub_2195101FC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_21951055C;
  }

  else
  {
    v2 = sub_219510310;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219510310()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_2195103EC;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_2195103EC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2 + 184))(*(v2 + 112), *(v2 + 96));
  if (v0)
  {
    v3 = sub_219510D98;
  }

  else
  {
    v3 = sub_2195109C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21951055C(uint64_t a1)
{
  v2 = v1;
  v3 = v1[26];
  v4 = v1[16];
  v14 = v1[10];
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  v1[2] = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  v1[3] = 0xE000000000000000;
  v1[6] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v1[2];
  v8 = v2[3];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("MySports setup failed, error=%{public}@", 39, 2, &dword_2186C1000, v4, v5, v6);

  sub_219BF7314();
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D249F0);
  v2[7] = v3;
  sub_219BF7484();
  v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v10 = sub_219BF53D4();

  v11 = [v9 initWithMessage_];

  v14(v11);

  v12 = v2[1];

  return v12();
}

uint64_t sub_219510790(uint64_t a1)
{
  v2 = v1;
  v3 = v1[22];
  v4 = v1[16];
  v14 = v1[10];
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  v1[2] = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  v1[3] = 0xE000000000000000;
  v1[6] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v1[2];
  v8 = v2[3];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("MySports setup failed, error=%{public}@", 39, 2, &dword_2186C1000, v4, v5, v6);

  sub_219BF7314();
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D249F0);
  v2[7] = v3;
  sub_219BF7484();
  v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v10 = sub_219BF53D4();

  v11 = [v9 initWithMessage_];

  v14(v11);

  v12 = v2[1];

  return v12();
}

uint64_t sub_2195109C4()
{
  sub_219BF5BD4();
  *(v0 + 232) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_219510A58, v2, v1);
}

uint64_t sub_219510A58()
{
  v1 = v0[28];
  v2 = v0[9];

  sub_219512CDC(v2);
  v0[30] = v1;
  if (v1)
  {
    v3 = sub_219510B64;
  }

  else
  {
    v3 = sub_219510AEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_219510AEC()
{
  (*(v0 + 80))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219510B64(uint64_t a1)
{
  v2 = v1;
  v3 = v1[30];
  v4 = v1[16];
  v14 = v1[10];
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  v1[2] = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  v1[3] = 0xE000000000000000;
  v1[6] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v1[2];
  v8 = v2[3];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("MySports setup failed, error=%{public}@", 39, 2, &dword_2186C1000, v4, v5, v6);

  sub_219BF7314();
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D249F0);
  v2[7] = v3;
  sub_219BF7484();
  v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v10 = sub_219BF53D4();

  v11 = [v9 initWithMessage_];

  v14(v11);

  v12 = v2[1];

  return v12();
}

uint64_t sub_219510D98(uint64_t a1)
{
  v2 = v1;
  v3 = v1[28];
  v4 = v1[16];
  v14 = v1[10];
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  v1[2] = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  v1[3] = 0xE000000000000000;
  v1[6] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v1[2];
  v8 = v2[3];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("MySports setup failed, error=%{public}@", 39, 2, &dword_2186C1000, v4, v5, v6);

  sub_219BF7314();
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D249F0);
  v2[7] = v3;
  sub_219BF7484();
  v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v10 = sub_219BF53D4();

  v11 = [v9 initWithMessage_];

  v14(v11);

  v12 = v2[1];

  return v12();
}

uint64_t sub_219510FCC(uint64_t a1)
{
  v2 = v1;
  v3 = v1[18];
  v4 = v1[16];
  v14 = v1[10];
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  v1[2] = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  v1[3] = 0xE000000000000000;
  v1[6] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v1[2];
  v8 = v2[3];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("MySports setup failed, error=%{public}@", 39, 2, &dword_2186C1000, v4, v5, v6);

  sub_219BF7314();
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D249F0);
  v2[7] = v3;
  sub_219BF7484();
  v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v10 = sub_219BF53D4();

  v11 = [v9 initWithMessage_];

  v14(v11);

  v12 = v2[1];

  return v12();
}

uint64_t sub_219511200(uint64_t a1)
{
  v2 = v1;
  v3 = v1[20];
  v4 = v1[16];
  v14 = v1[10];
  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  v1[2] = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  v1[3] = 0xE000000000000000;
  v1[6] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = v1[2];
  v8 = v2[3];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("MySports setup failed, error=%{public}@", 39, 2, &dword_2186C1000, v4, v5, v6);

  sub_219BF7314();
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  MEMORY[0x21CECC330](0xD00000000000001FLL, 0x8000000219D249F0);
  v2[7] = v3;
  sub_219BF7484();
  v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v10 = sub_219BF53D4();

  v11 = [v9 initWithMessage_];

  v14(v11);

  v12 = v2[1];

  return v12();
}

uint64_t sub_219511434()
{
  v1[4] = v0;
  sub_219BF5BD4();
  v1[5] = sub_219BF5BC4();
  v2 = sub_219BF5B44();
  v1[6] = v2;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_219511500, v2, v3);
}

uint64_t sub_219511500()
{
  v15 = v0;
  v14[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0[4] + OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_subscriptionController);
  v0[8] = v1;
  v2 = [v1 subscribedTagIDs];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = sub_219BF5924();

  v5 = sub_218845F78(v4);

  v7 = sub_218845F78(v6);

  if (*(v5 + 16) <= *(v7 + 16) >> 3)
  {
    v14[0] = v7;
    sub_218EB3B08(v5);

    v8 = *(v7 + 16);
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = sub_218EB4048(v5, v7);

    v8 = *(v7 + 16);
    if (v8)
    {
LABEL_4:
      __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_tagService), *(v0[4] + OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_tagService + 24));
      v9 = sub_21947D1C0(v8, 0);
      v10 = sub_2194ABD64(v14, v9 + 4, v8, v7);
      sub_21892DE98(v14[0]);
      if (v10 == v8)
      {
        v0[9] = sub_219BF1C34();

        v11 = swift_task_alloc();
        v0[10] = v11;
        *v11 = v0;
        v11[1] = sub_2195117A4;

        return MEMORY[0x2821D23D8](v0 + 2);
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2195117A4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_219511AC4;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_2195118F4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2195118F4()
{

  v2 = v0[2];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_219BF7214();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x21CECE0F0](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v10 = v1;

            sub_219BDB724();

            swift_willThrow();
            swift_unknownObjectRelease();
            v11 = v0[1];
            goto LABEL_17;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = v0[8];
        v0[3] = 0;
        v8 = [v7 addSubscriptionToTag:v5 error:v0 + 3];
        v1 = v0[3];
        if (!v8)
        {
          goto LABEL_13;
        }

        v9 = v1;
        swift_unknownObjectRelease();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  v11 = v0[1];
LABEL_17:

  return v11();
}

uint64_t sub_219511AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219511B80()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_219511C74;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD00000000000001ELL, 0x8000000219D24AA0, sub_219512F6C, v2, v4);
}

uint64_t sub_219511C74()
{

  return MEMORY[0x2822009F8](sub_219511D8C, 0, 0);
}

uint64_t sub_219511D8C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportsOnboardingManager;
  v0[6] = OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportsOnboardingManager;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v0[7] = (*(v4 + 32))(v3, v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_219511E74;

  return MEMORY[0x2821D23D8](v0 + 13);
}

uint64_t sub_219511E74()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_218DE952C;
  }

  else
  {

    v2 = sub_219511F90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219511F90()
{
  v1 = (v0[3] + v0[6]);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v0[10] = (*(v3 + 8))(v2, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_219512070;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_219512070()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219079BAC;
  }

  else
  {

    v2 = sub_21951218C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21951218C()
{
  if (*(v0 + 16) != 1)
  {
    sub_219512EA4();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_219512384(uint64_t a1, uint64_t a2)
{
  sub_219512F74();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportsSyncManager);
  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI217MySportsTestSuite_sportsSyncManager + 24);
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  (*(v11 + 32))(2, sub_219512FD8, v13, v10, v11);

  return result;
}

uint64_t sub_2195125CC(uint64_t a1)
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
  v10[1] = sub_2187608D4;

  return sub_21950FA18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2195126A0(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_219BE9414();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  sub_219BF5BD4();
  v1[25] = sub_219BF5BC4();
  v4 = sub_219BF5B44();
  v1[26] = v4;
  v1[27] = v3;

  return MEMORY[0x2822009F8](sub_219512794, v4, v3);
}

uint64_t sub_219512794()
{
  v1 = *(v0 + 168);
  sub_219512EF8();
  swift_allocObject();
  *(v0 + 224) = sub_219BE2B44();

  v2 = sub_219BF53D4();

  v3 = [v1 objectForKey_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v0 + 168);
  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558((v0 + 48), (v0 + 16));
  sub_2186CF94C(0);
  swift_dynamicCast();

  sub_219BE6454();

  v6 = sub_219BF53D4();

  v7 = [v5 objectForKey_];

  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 176);
  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558((v0 + 112), (v0 + 80));
  swift_dynamicCast();
  v11 = swift_allocObject();
  *(v11 + 16) = 3;
  *(v11 + 24) = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  *(v11 + 32) = 2;
  *(v0 + 160) = v11 | 0x7000000000000000;
  (*(v9 + 104))(v8, *MEMORY[0x277D6E598], v10);
  sub_219BE6474();
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 176);

  (*(v13 + 8))(v12, v14);
  v15.n128_f64[0] = sub_218932F9C(*(v0 + 160));
  v4 = MEMORY[0x21CEB98C0](v15);
  *(v0 + 232) = v4;
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2821D23D8](v4);
  }

  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_219512AC0;

  return MEMORY[0x2821D23D8](v4);
}

uint64_t sub_219512AC0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_219512C54;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_219512BDC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_219512BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219512C54()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_219512CDC(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v10, &v11);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    swift_dynamicCast();
    sub_2190CEEB4(0);
    sub_219BF6584();

    v4 = v12;
    if (v12)
    {
      sub_219BE8664();

      v5 = sub_219BE7BC4();

      v6 = v5;

      v7 = sub_219BF53D4();

      [a1 setObject:v6 forKey:v7];
    }

    else
    {
      sub_219512EA4();
      swift_allocError();
      *v8 = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_219512EA4()
{
  result = qword_27CC1B540;
  if (!qword_27CC1B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B540);
  }

  return result;
}

void sub_219512EF8()
{
  if (!qword_27CC1B548)
  {
    v0 = sub_219BE2B54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1B548);
    }
  }
}

void *sub_219512F4C(void *result)
{
  if (((*result >> 58) & 0x3C | (*result >> 1) & 3) == 0x1C)
  {
    return sub_219BE2B34();
  }

  return result;
}

void sub_219512F74()
{
  if (!qword_280E8EAB0)
  {
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EAB0);
    }
  }
}

unint64_t sub_21951304C()
{
  result = qword_27CC1B558;
  if (!qword_27CC1B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B558);
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoritesLayoutModel(uint64_t a1)
{
  result = qword_27CC1B560;
  if (!qword_27CC1B560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2195130EC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219513978(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_219513250@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219513978(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_21951333C(uint64_t a1)
{
  v2 = sub_2195139DC(&qword_27CC18960, &unk_219C85F64);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2195133E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219513978(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_219513574(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219513978(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2195136F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219513978(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_219513834(uint64_t a1)
{
  v2 = sub_219BEF974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219513978(v1, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEF924();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_219513978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoritesLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195139DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsFavoritesLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219513A20()
{

  return swift_deallocClassInstance();
}

id sub_219513A8C()
{
  result = [*(*v0 + 32) mutedTagIDs];
  if (result)
  {
    v2 = result;
    v3 = sub_219BF5D44();

    v4 = *(v3 + 16);

    return (v4 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219513B00()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v27 = v9;
  v10 = v9 | 0x3000000000000002;
  v11 = *(v0 + 24);
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v8;
  sub_2187B14CC(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v30)
  {
    sub_21875F93C(&v29, v31);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2187448D0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
  }

  v28 = v10;
  v30 = sub_219BDD274();
  *&v29 = v11;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = v7;
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  sub_2189B4EAC(v4, v19 + v16);
  v20 = v19 + v17;
  v21 = v31[1];
  *v20 = v31[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = (v19 + v18);
  v23 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = 0;
  v22[1] = 0;
  *v23 = v14;
  v23[1] = v13;
  v23[2] = v15;
  swift_retain_n();

  sub_2188202A8(v13);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v13, v15);
  sub_2187448D0(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v26);
  sub_2187448D0(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_2195140BC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 400));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 456));
  __swift_destroy_boxed_opaque_existential_1((v0 + 496));
  return v0;
}

void *sub_21951416C@<X0>(uint64_t a2@<X8>)
{
  sub_21875FC6C(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  result = sub_219BF08B4();
  if (!v2)
  {
    v45 = 0;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51[0] = v57;
    v51[1] = v58;
    v51[2] = v59;
    v52 = v60;
    sub_219BF0944();
    v44 = *(v65 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    sub_219BE3204();

    v8 = sub_219BE2E54();
    type metadata accessor for TagFeedPoolService();
    sub_219BE2F84();

    v9 = sub_219BE2E54();
    v43 = sub_219BE3064();

    v47 = MEMORY[0x277D84F90];
    sub_2194FB220(0);
    swift_allocObject();
    v42 = sub_219BE3014();
    if (qword_280EBB6C8 != -1)
    {
      swift_once();
    }

    v10 = qword_280F61B20;
    v11 = *algn_280F61B28;
    v12 = qword_280F61B30;
    v13 = unk_280F61B38;
    v47 = qword_280F61B20;
    v48 = *algn_280F61B28;
    v49 = qword_280F61B30;
    v50 = unk_280F61B38;
    sub_21870F564(0, &qword_280EE6D50, &type metadata for FoodRecipeItemsFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_2189B67F4(v10, v11, v12, v13);
    v41 = sub_219BE3014();
    v14 = sub_219BF5BF4();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = sub_2195E76C4(0, 0, v6, &unk_219C86280, v15);
    v39 = v52;
    v40 = v16;
    v17 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D6CF30];
    sub_21875FC6C(0, &qword_280EE6AE0, sub_2186DC224, MEMORY[0x277D6CF30]);
    swift_allocObject();

    v38 = sub_219BE3014();
    sub_2189EEC00();
    swift_allocError();
    *v19 = 3;
    sub_218A9F350(0);
    swift_allocObject();
    v37 = sub_219BE2FF4();
    v47 = v17;
    sub_21875FC6C(0, &unk_280EE6B60, sub_2190D6AB0, v18);
    swift_allocObject();
    v36 = sub_219BE3014();
    v47 = v17;
    sub_2194FB3B8(0, v20);
    swift_allocObject();
    v21 = sub_219BE3014();
    sub_219BF0944();
    v22 = *(v47 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

    sub_219BF0944();
    v23 = *(v46 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);

    v24 = *(&v54 + 1);
    v26 = v55;
    v25 = v56;

    result = sub_218A410EC(v51);
    v27 = v43;
    *a2 = v44;
    *(a2 + 8) = v23;
    v29 = v41;
    v28 = v42;
    *(a2 + 16) = v27;
    *(a2 + 24) = v28;
    v31 = v39;
    v30 = v40;
    *(a2 + 32) = v29;
    *(a2 + 40) = v30;
    v33 = v37;
    v32 = v38;
    *(a2 + 48) = v31;
    *(a2 + 56) = v32;
    v34 = v36;
    *(a2 + 64) = v33;
    *(a2 + 72) = v34;
    *(a2 + 80) = v21;
    *(a2 + 88) = v24;
    *(a2 + 96) = v26;
    *(a2 + 112) = v25;
    *(a2 + 120) = v22;
  }

  return result;
}

uint64_t sub_2195146B8(uint64_t a1)
{
  v12 = MEMORY[0x277D84FA0];
  v3 = *(*(*(a1 + 24) + 16) + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      v6 = *(v3 + v5);

      sub_2197A43D0(a1, v6);
      sub_218DD8A14(v7);

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  if ([*(v1 + 440) useFood])
  {
    v8 = [sub_219BF6394() isRecipeCatalog];
    swift_unknownObjectRelease();
    if (v8)
    {
      sub_21949B194(&v11, 9);
      sub_21949B194(&v10, 11);
    }
  }

  return v12;
}

void sub_2195147E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v149 = a3;
  v165 = a2;
  v158 = a4;
  sub_21875FC6C(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v159 = v145 - v8;
  v148 = sub_219BEEA84();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145[1] = v9;
  v146 = v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BF0BD4();
  v163 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v161 = v10;
  v162 = v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);
  v12 = sub_2195146B8(a1);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61708;
  sub_21875FC6C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  sub_2194B74B0();
  v15 = sub_219BF5D54();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v14 + 64) = v19;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v167 = 0;
  v168 = 0xE000000000000000;
  v166 = *(a1 + 16);
  type metadata accessor for TagFeedServiceContext(0);
  sub_219BF7484();
  v20 = v167;
  v21 = v168;
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = v21;
  v22 = sub_219BF6214();
  sub_219BE5314("Feed pool fetching requirements=%{public}@, context=%{public}@", 62, 2, &dword_2186C1000, v13, v22, v14);

  v23 = v5;
  v24 = sub_2195146B8(a1);
  sub_219BF6394();
  swift_getObjectType();
  LOBYTE(v15) = sub_219BF6274();
  swift_unknownObjectRelease();
  if (v15)
  {
    v25 = 0x20000011ALL;
  }

  else
  {
    v25 = 0x20000013ALL;
  }

  v26 = sub_218C32064(7, v24);

  if (v26)
  {
    v27 = v25 | 0x2000000000;
  }

  else
  {
    v27 = v25;
  }

  v28 = a1;
  v29 = *(a1 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);
  v30 = objc_opt_self();
  v156 = v29;
  v31 = [v30 feedRangeFromDateRange_];
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  v33 = v31;
  v34 = v11;
  v164 = v11;
  v160 = v12;
  v155 = v33;
  if (v32)
  {
    v35 = v11;
    sub_2194B4390(&unk_282A27BE0);
    sub_218C337D4(v36, v12);
    v38 = v37;

    v40 = v12;
    if (v38)
    {
      sub_2189EEC00();
      swift_allocError();
      *v41 = 3;
      sub_21870F564(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v42 = sub_219BE2FF4();
      v43 = v23;
    }

    else
    {
      MEMORY[0x28223BE20](v39);
      v43 = v23;
      v145[-2] = v23;
      v145[-1] = v32;
      sub_218A80AC8(0);
      sub_219BE3204();
      v52 = sub_219BE2E54();
      type metadata accessor for TagFeedPoolService();
      v53 = sub_219BE2F84();

      v42 = v53;
    }

    v51 = v28;
    v154 = v42;

    sub_2194B4390(&unk_282A27C08);
    sub_218C337D4(v54, v40);
    v56 = v55;

    v57 = v157;
    if (v56)
    {
      sub_2189EEC00();
      swift_allocError();
      v59 = 3;
    }

    else
    {
      v60 = [v32 issueListID];
      if (v60)
      {
        v61 = v60;
        v62 = sub_219BF5414();
        v64 = v63;

        MEMORY[0x28223BE20](v65);
        v145[-4] = v43;
        v145[-3] = v62;
        v145[-2] = v64;
        sub_2194FB220(0);
        swift_allocObject();
        v66 = sub_219BE30B4();

        v67 = v66;
LABEL_25:
        v34 = v164;
        v50 = v165;
        goto LABEL_26;
      }

      sub_2189EEC00();
      swift_allocError();
      v59 = 2;
    }

    *v58 = v59;
    sub_2194FB220(0);
    swift_allocObject();
    v76 = sub_219BE2FF4();

    v67 = v76;
    goto LABEL_25;
  }

  v44 = v33;
  sub_2194B4390(&unk_282A27C30);
  sub_218C337D4(v45, v12);
  v47 = v46;

  if (v47)
  {
    sub_2189EEC00();
    swift_allocError();
    *v48 = 3;
    sub_21870F564(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v49 = sub_219BE2FF4();
    v43 = v23;
    v50 = v165;
    v51 = v28;
  }

  else
  {
    sub_21870F564(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
    v68 = swift_allocObject();
    v43 = v23;
    v68[2] = v23;
    v68[3] = v34;
    v51 = v28;
    v68[4] = v28;
    v68[5] = v44;
    v68[6] = v44;
    v68[7] = v44;
    v69 = MEMORY[0x277D84F90];
    v68[8] = MEMORY[0x277D84F90];
    v68[9] = v69;
    v68[10] = v27;
    v70 = v44;
    v71 = v34;

    v49 = sub_219BE2F54();
    v50 = v165;
  }

  v154 = v49;

  sub_2194B4390(&unk_282A27C58);
  v40 = v160;
  sub_218C337D4(v72, v160);
  v74 = v73;

  v57 = v157;
  if (v74)
  {
    sub_2189EEC00();
    swift_allocError();
    *v75 = 3;
    sub_2194FB220(0);
    swift_allocObject();
    v67 = sub_219BE2FF4();
  }

  else
  {
    v67 = sub_218FF6CA4(v51);
  }

LABEL_26:
  v157 = v67;

  sub_2194B4390(&unk_282A27C80);
  sub_218C337D4(v77, v40);
  v79 = v78;

  if (v79)
  {
    sub_2189EEC00();
    swift_allocError();
    *v80 = 3;
    sub_218A9F350(0);
    swift_allocObject();
    v81 = sub_219BE2FF4();
  }

  else
  {
    v82 = __swift_project_boxed_opaque_existential_1((v43 + 72), *(v43 + 96));
    sub_219516BA4(v34, v51, v50, *v82);
  }

  v153 = v81;
  sub_2194B4390(&unk_282A27CA8);
  sub_218C337D4(v83, v40);
  v85 = v84;

  if (v85)
  {
    sub_2189EEC00();
    swift_allocError();
    *v86 = 3;
    sub_2195174B0(0);
    swift_allocObject();
    v87 = sub_219BE2FF4();
  }

  else
  {
    v87 = sub_2194CC7E4(v34, v51, v50);
  }

  v152 = v87;
  sub_2194B4390(&unk_282A27CD0);
  sub_218C337D4(v88, v40);
  v90 = v89;

  if (v90)
  {
    sub_2189EEC00();
    swift_allocError();
    *v91 = 3;
    sub_21875FC6C(0, &qword_280EE6AE0, sub_2186DC224, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v92 = sub_219BE2FF4();
  }

  else
  {
    v92 = sub_21901AF54(v34, v51, v50);
  }

  v151 = v92;
  sub_2194B4390(&unk_282A27CF8);
  sub_218C337D4(v93, v40);
  v95 = v94;

  if (v95)
  {
    sub_2189EEC00();
    swift_allocError();
    *v97 = 3;
    sub_21875FC6C(0, &unk_280EE6B60, sub_2190D6AB0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v150 = sub_219BE2FF4();
  }

  else
  {
    MEMORY[0x28223BE20](v96);
    v145[-4] = v43;
    v145[-3] = v34;
    v145[-2] = v51;
    v145[-1] = v50;
    sub_219BE3204();
    v98 = sub_219BE2E54();
    sub_21951708C(0);
    type metadata accessor for TagFeedPoolService();
    sub_219BE2F84();

    v99 = sub_219BE2E54();
    sub_2190D6AB0(0, v100);
    v150 = sub_219BE2F64();
  }

  sub_2194B4390(&unk_282A27D20);
  sub_218C337D4(v101, v40);
  v103 = v102;

  if (v103)
  {
    sub_2189EEC00();
    swift_allocError();
    *v105 = 3;
    sub_2194FB3B8(0, v106);
    swift_allocObject();
    v107 = sub_219BE2FF4();
  }

  else
  {
    sub_2194FB3B8(0, v104);
    v109 = v162;
    v108 = v163;
    (*(v163 + 16))(v162, v50, v57);
    v110 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = v43;
    *(v111 + 24) = v51;
    (*(v108 + 32))(v111 + v110, v109, v57);

    v107 = sub_219BE2F54();
  }

  v112 = v107;
  v113 = v57;
  sub_2194B4390(&unk_282A27D48);
  sub_218C337D4(v114, v40);
  v116 = v115;

  if (v116)
  {
    sub_2189EEC00();
    swift_allocError();
    *v117 = 3;
    sub_21870F564(0, &qword_280EE6D50, &type metadata for FoodRecipeItemsFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v118 = sub_219BE2FF4();
  }

  else
  {
    sub_21870F564(0, &qword_280EE6D50, &type metadata for FoodRecipeItemsFetchResult, MEMORY[0x277D6CF30]);
    v119 = v147;
    v120 = v146;
    v121 = v148;
    (*(v147 + 16))(v146, v149, v148);
    v122 = (*(v119 + 80) + 24) & ~*(v119 + 80);
    v123 = swift_allocObject();
    *(v123 + 16) = v43;
    (*(v119 + 32))(v123 + v122, v120, v121);

    v118 = sub_219BE2F54();
  }

  v124 = v118;
  sub_2194B4390(&unk_282A27D70);
  v126 = v125;
  v127 = v162;
  v128 = v163;
  (*(v163 + 16))(v162, v165, v113);
  v129 = (*(v128 + 80) + 40) & ~*(v128 + 80);
  v130 = swift_allocObject();
  *(v130 + 2) = v124;
  *(v130 + 3) = v43;
  *(v130 + 4) = v51;
  (*(v128 + 32))(&v130[v129], v127, v113);
  v131 = sub_219BF5BF4();
  v132 = v159;
  (*(*(v131 - 8) + 56))(v159, 1, 1, v131);
  v133 = swift_allocObject();
  v133[2] = 0;
  v133[3] = 0;
  v133[4] = v160;
  v133[5] = v126;
  v133[6] = &unk_219C86260;
  v133[7] = v130;

  v134 = sub_2195E76C4(0, 0, v132, &unk_219C86270, v133);
  v135 = *(v51 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

  v136 = v156;
  v137 = v164;
  v138 = v154;

  v139 = v157;

  v140 = v155;

  v141 = v158;
  *v158 = v137;
  v141[1] = v136;
  v141[2] = v138;
  v141[3] = v139;
  v141[4] = v124;
  v141[5] = v134;
  v142 = v151;
  v141[6] = v152;
  v141[7] = v142;
  v143 = v150;
  v141[8] = v153;
  v141[9] = v143;
  v144 = MEMORY[0x277D84FA0];
  v141[10] = v112;
  v141[11] = v144;
  v141[12] = v144;
  v141[13] = v144;
  v141[14] = v144;
  v141[15] = v135;
}

uint64_t sub_2195158B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_219515964;

  return sub_219277008(a3, a4);
}

uint64_t sub_219515964(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_218D42790, 0, 0);
}

uint64_t sub_219515A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_219BDBD64();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219515B28, 0, 0);
}

uint64_t sub_219515B28()
{
  v1 = v0[8];
  v2 = v1[61];
  v18 = v1[60];
  __swift_project_boxed_opaque_existential_1(v1 + 57, v18);
  v3 = qword_280E8D7F8;
  v4 = *MEMORY[0x277D30BC0];
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = qword_280F61708;
  v9 = sub_219BEEA74();
  sub_219BDBD54();
  v10 = sub_219BDBD44();
  v12 = v11;
  (*(v5 + 8))(v6, v7);
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = [objc_opt_self() defaultCachePolicy];
  }

  v0[2] = v10;
  v0[3] = v12;
  v0[4] = v4;
  v0[5] = v8;
  v0[6] = v13;
  v17 = (*(v2 + 8) + **(v2 + 8));
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_219515D44;
  v15 = v0[7];

  return v17(v15, v0 + 2, v18, v2);
}

uint64_t sub_219515D44()
{
  v2 = *v1;
  v3 = *v1;
  v2[14] = v0;

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219515EFC, 0, 0);
  }

  else
  {

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_219515EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219515F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a1;
  v5[11] = a3;
  v6 = swift_task_alloc();
  v5[14] = v6;
  *v6 = v5;
  v6[1] = sub_219516004;

  return MEMORY[0x2821D23D8](v5 + 2);
}

uint64_t sub_219516004()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_219516350;
  }

  else
  {
    v2 = sub_219516118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219516118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 48) = v1;
  *(v0 + 144) = v3;
  *(v0 + 152) = v4;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_2195161D4;
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);

  return sub_2189B5C7C(v8, (v0 + 48), v6, v7);
}

uint64_t sub_2195161D4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_219516368;
  }

  else
  {
    v2 = sub_2195162E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195162E8()
{
  sub_218C6F990(v0[16], v0[17], v0[18], v0[19]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_219516368()
{
  sub_218C6F990(v0[16], v0[17], v0[18], v0[19]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2195163D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2195163F8, 0, 0);
}

uint64_t sub_2195163F8()
{
  sub_218C337D4(v0[4], v0[3]);
  if (v1)
  {
    sub_2189EEC00();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v7 = (v0[5] + *v0[5]);
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_218FC7518;
    v6 = v0[2];

    return v7(v6);
  }
}

uint64_t sub_219516564(uint64_t a1)
{
  sub_219BF08B4();
  if (!v2)
  {
    v4[4] = v8;
    v4[5] = v9;
    v4[6] = v10;
    v4[7] = v11;
    v4[0] = v4[8];
    v4[1] = v5;
    v4[2] = v6;
    v4[3] = v7;
    v1 = v5;

    sub_218A410EC(v4);
  }

  return v1;
}

uint64_t sub_2195165E4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = *a1;
    v5 = a1[2];
    v6 = a1[4];
    v21 = a1[5];
    v23 = v2;
    v22 = v6;
    sub_219BF0944();
    v7 = *(v25 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);

    v8 = [objc_opt_self() feedRangeFromDateRange_];

    sub_219BF0944();
    v9 = sub_2195146B8(v25);

    sub_2194B4390(&unk_282A27D98);
    sub_218C337D4(v10, v9);
    v12 = v11;

    if (v12)
    {
      sub_2189EEC00();
      swift_allocError();
      *v13 = 3;
      sub_21870F564(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v14 = sub_219BE2FF4();

      return v14;
    }

    else
    {
      sub_219BF0944();
      v19 = *(v25 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      sub_219BF0944();
      sub_21870F564(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
      v20 = swift_allocObject();
      v20[2] = a2;
      v20[3] = v19;
      v20[4] = v24;
      v20[5] = v8;
      v20[6] = v23;
      v20[7] = v22;
      v20[8] = v4;
      v20[9] = v5;
      v20[10] = v21;

      return sub_219BE2F54();
    }
  }

  else
  {
    sub_2190D6CDC(0);
    v17 = v16;
    sub_21877CB88(&qword_27CC15FC0, sub_2190D6CDC, MEMORY[0x277D31FC0]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D31FB0], v17);
    return swift_willThrow();
  }
}

id sub_21951692C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EDF3C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_280F62278;
  v2 = qword_280F62280;
  v3 = unk_280F62288;
  *a1 = qword_280F62270;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v6 = xmmword_280F62290;
  *(a1 + 32) = xmmword_280F62290;

  return sub_2189EEB80(v3, v6);
}

uint64_t sub_2195169E0()
{
  sub_2195140BC();

  return swift_deallocClassInstance();
}

double sub_219516A14@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**v2 + 240))(v9, *a1);
  v4 = v13;
  a2[4] = v12;
  a2[5] = v4;
  v5 = v15;
  a2[6] = v14;
  a2[7] = v5;
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  result = *&v10;
  v8 = v11;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

double sub_219516A8C@<D0>(_OWORD *a2@<X8>)
{
  sub_21951416C(v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_219516AE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_2189EC3A4(a1, v4, v5, v6, (v1 + 5));
}

void sub_219516BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  sub_21875FC6C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v7;
  v38 = &off_282A34C28;
  v36[0] = a4;

  v14 = [a1 backingChannel];
  if (!v14)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v23 = qword_280F61708;
    sub_21875FC6C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    v25 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    v26 = sub_219BF5414();
    v28 = v27;

    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_2186FC3BC();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    v29 = sub_219BF6214();
    sub_219BE5314("Channel section headlines requested for non-channel tag %{public}@", 66, 2, &dword_2186C1000, v23, v29, v24);

    sub_2189EEC00();
    swift_allocError();
    *v30 = 4;
    sub_218A9F350(0);
    swift_allocObject();
    sub_219BE2FF4();
    goto LABEL_9;
  }

  v15 = v14;
  v34 = v7;
  sub_2195175B8(*(*(*(a2 + 24) + 24) + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionGroupKnobs, v13);
  v33 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v16 = [v15 identifier];
  v31 = sub_219BF5414();
  v32 = v17;
  sub_219BDBD24();
  v18 = sub_219BDBD34();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_219BEF524();
  v20 = v35;
  v21 = 0;
  if ((*(v19 + 48))(v10, 1, v18) != 1)
  {
    v21 = sub_219BDBC04();
    (*(v19 + 8))(v10, v18);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v21 timeInterval:v20];

  if (v22)
  {

    sub_219BEF524();
    (off_282A34C30[0])(v31, v32, v22, *&v35, 0, 0);
    swift_unknownObjectRelease();

    sub_21951761C(v13);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v36);
    return;
  }

  __break(1u);
}

void sub_21951708C(uint64_t a1)
{
  if (!qword_280EC9758[0])
  {
    sub_2186E2394();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EC9758);
    }
  }
}

uint64_t sub_219517110(uint64_t a1)
{
  v4 = *(sub_219BF0BD4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_2195158B4(a1, v6, v7, v1 + v5);
}

uint64_t sub_219517200(uint64_t a1)
{
  v4 = *(sub_219BEEA84() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_219515A64(a1, v6, v1 + v5);
}

uint64_t sub_2195172E4(uint64_t a1)
{
  v4 = *(sub_219BF0BD4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_219515F60(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2195173DC(uint64_t a1)
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
  v10[1] = sub_2187609C8;

  return sub_2195163D0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_2195174B0(uint64_t a1)
{
  if (!qword_280EE6A60)
  {
    sub_219517534(255, &qword_280E8ECA0, &qword_280E8E430, &protocolRef_FCPuzzleProviding, sub_2186D6710);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6A60);
    }
  }
}

void sub_219517534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF5B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2195175B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21951761C(uint64_t a1)
{
  v2 = type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2195176B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_2194FB148(a1);
}

uint64_t sub_21951775C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_2189EC3A4(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_219517830()
{
  result = qword_27CC1B578;
  if (!qword_27CC1B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B578);
  }

  return result;
}

void sub_2195178FC()
{
  sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for RecipeCatalogSearchViewController();

  v1 = sub_219BE1E04();

  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong setText_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_219517A08(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_219517BD8(a1, v17);
  v6 = sub_219517F04(a1);
  sub_21988E41C();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_2186D6034(0);
    v8 = sub_219BE1DE4();
  }

  else
  {
    v8 = 0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for TagFeedViewController();
  sub_218718690(v17, v16);
  v9 = swift_allocObject();
  v9[2] = v6;
  sub_2186CB1F0(v16, (v9 + 3));
  v9[8] = a1;
  v9[9] = a2;
  v9[10] = v8;

  v10 = a1;

  v11 = sub_219BE1E04();

  if (v11)
  {
    v12 = sub_2195189F0(v10, (v3 + 16), v6);
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1(v17);
    v15 = (v11 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
    *v15 = v12;
    v15[1] = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219517BD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_219BEBDB4();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BEBC84();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
  v10 = [a1 identifier];
  sub_219BF5414();

  sub_219BEC124();

  v11 = a1;
  sub_219BEBC64();
  v12 = [objc_msgSend(v11 backingTag)];
  swift_unknownObjectRelease();
  if (v12)
  {
    swift_unknownObjectRetain();
    sub_219BEBDA4();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_219518CFC(&qword_27CC1B588, MEMORY[0x277D2D1A0], MEMORY[0x277D2D198]);
    v13 = v18;
    sub_219BEC144();
    swift_unknownObjectRelease();
    (*(v17 + 8))(v6, v13);
  }

  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_219518CFC(&qword_280EE34B8, MEMORY[0x277D2D120], MEMORY[0x277D2D118]);
  v14 = v19;
  sub_219BEC144();
  (*(v7 + 8))(v9, v14);
  sub_218718690(v21, v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_219517F04(void *a1)
{
  v23 = a1;
  v1 = sub_219BDEED4();
  v2 = *(v1 - 8);
  v24 = v1;
  v25 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE14C4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE14A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE15B4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D2F518], v12, v14);
  v17 = sub_219BDD0F4();
  (*(v13 + 8))(v16, v12);
  v18 = v23;
  sub_21999FD58(v7);
  v19 = [v18 identifier];
  sub_219BF5414();

  sub_219BE1484();
  sub_219518CFC(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDD1F4();
  (*(v9 + 8))(v11, v8);
  sub_21999FD58(v7);
  sub_219BDEEC4();
  sub_219518CFC(&unk_280EE8930, MEMORY[0x277D2D750], MEMORY[0x277D2D748]);
  v20 = v24;
  sub_219BDD1F4();
  (*(v25 + 8))(v4, v20);
  return v17;
}

uint64_t sub_2195182C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FAF08();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8(0);
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6034(0);
  return sub_219BE1B54();
}

id sub_219518468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = type metadata accessor for TagFeedRecipeCatalogSearchCoordinator();
  v16 = objc_allocWithZone(v46);
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented] = 0;
  v17 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_spacerBarButtonItem;
  sub_219BE7274();
  *&v16[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:6 target:0 action:0];
  v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems] = 0;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___filterBarButtonItem] = 0;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___stateFilterBarButtonItem] = 0;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___recipeBoxBarButtonItem] = 0;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___cancelSearchBarButtonItem] = 0;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_feedDescriptor] = a1;
  v18 = &v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_commandCenter];
  *v18 = a2;
  v18[1] = a3;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_tracker] = a4;
  v19 = &v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogFilterResultProvider];
  *v19 = a6;
  v19[1] = &off_282A8E5D8;
  v20 = &v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogFilterSelectionManager];
  *v20 = a7;
  v20[1] = a8;
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogSearchViewController] = a5;
  v21 = objc_allocWithZone(MEMORY[0x277D759F0]);
  v48 = a1;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v22 = a5;
  v23 = [v21 initWithSearchResultsController_];
  v24 = [v23 searchBar];
  [v24 setAutocorrectionType_];

  v25 = [v23 searchBar];
  [v25 setAutocapitalizationType_];

  v26 = [v23 searchBar];
  [v26 setLookToDictateEnabled_];

  v27 = [v23 searchBar];
  [v27 setShowsCancelButton_];

  v28 = [v23 searchBar];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v31 = sub_219BF53D4();

  [v28 setPlaceholder_];

  [v23 setShowsSearchResultsController_];
  [v23 setObscuresBackgroundDuringPresentation_];
  [v23 setHidesNavigationBarDuringPresentation_];
  *&v16[OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController] = v23;
  v49.receiver = v16;
  v49.super_class = v46;
  v32 = v23;
  v33 = objc_msgSendSuper2(&v49, sel_init);
  v34 = OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_searchHomeContainerController;
  v35 = v33;
  sub_219B5F630([v32 searchBar]);
  [v32 setDelegate_];
  v36 = [v32 searchBar];
  [v36 setDelegate_];

  v37 = &v22[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_delegate];
  *&v22[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_delegate + 8] = &off_282A358C8;
  swift_unknownObjectWeakAssign();
  v38 = *&v22[v34];
  swift_unknownObjectWeakLoadStrong();
  *(v38 + OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8) = *(v37 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  (*(*(a8 + 8) + 48))(ObjectType);
  v40 = *&v22[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8];
  swift_getObjectType();
  v41 = *(*(v40 + 8) + 24);
  v42 = v35;
  v41();

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v43 = sub_218ABA354();
    v44 = [objc_opt_self() systemPinkColor];
    [v43 setTintColor_];
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v42;
}

void *sub_2195189F0(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, qword_280EAF3B0, &protocol descriptor for RecipeCatalogSearchModuleType, 1);
    sub_219BE1E34();
    if (v17)
    {
      sub_2186CB1F0(&v16, v18);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
      result = sub_219BE1E34();
      v8 = v16;
      if (v16)
      {
        v9 = *(&v16 + 1);
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        sub_2195178FC();
        v11 = v10;
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        type metadata accessor for RecipeCatalogSearchFilterResultsProvider();
        result = sub_219BE1E24();
        if (result)
        {
          v12 = result;
          __swift_project_boxed_opaque_existential_1(a2, a2[3]);
          sub_2186C709C(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType, 0);
          result = sub_219BE1DF4();
          if (v14)
          {

            v13 = sub_219518468(a1, v8, v9, a3, v11, v12, v14, v15);
            __swift_destroy_boxed_opaque_existential_1(v18);
            return v13;
          }

          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    sub_219518C34(&v16);
  }

  return 0;
}

uint64_t sub_219518C34(uint64_t a1)
{
  sub_219518C90(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219518C90(uint64_t a1)
{
  if (!qword_27CC1B580)
  {
    sub_2186C709C(255, qword_280EAF3B0, &protocol descriptor for RecipeCatalogSearchModuleType, 1);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B580);
    }
  }
}

uint64_t sub_219518CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_219518D6C(uint64_t a1)
{
  v2 = v1;
  sub_21896FA3C(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = *(v2 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  if (a1 && (v13 = sub_219BE82D4()) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v2 + 24);
  }

  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v11;
  sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v30 = v12;
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2187448D0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12 | 0x8000000000000000;
  v33 = sub_219BDD274();
  *&v32 = v14;
  sub_2189B4E2C(v10, v7);
  sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  sub_2189B4EAC(v7, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16, v18);
  sub_2187448D0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v29);
  sub_2187448D0(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

void sub_219519384(uint64_t a1)
{
  if (!qword_280E92330)
  {
    type metadata accessor for SportsLinksTagFeedGroupConfigData(255);
    sub_21951E844(&unk_280EA1C80, type metadata accessor for SportsLinksTagFeedGroupConfigData, &unk_219C555AC);
    sub_21951E844(&qword_280EA1C90, type metadata accessor for SportsLinksTagFeedGroupConfigData, &unk_219C55584);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92330);
    }
  }
}

uint64_t type metadata accessor for SportsLinksTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EAB160;
  if (!qword_280EAB160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195194B0(uint64_t a1)
{
  sub_219519384(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsLinksTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E90250, MEMORY[0x277D33C48], 0);
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, qword_280EBA370, &protocol descriptor for SportsFavoritesServiceType, 1);
          if (v5 <= 0x3F)
          {
            sub_2186C709C(319, &unk_280E8FE20, MEMORY[0x277D34428], 1);
            if (v6 <= 0x3F)
            {
              sub_2186C709C(319, &qword_280E8FD40, MEMORY[0x277D34618], 1);
              if (v7 <= 0x3F)
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

uint64_t sub_21951961C(uint64_t a1)
{
  sub_218A59C84(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(v9 + 20);
  if (*(*(v10 + *(type metadata accessor for SportsLinksTagFeedGroupKnobs(0) + 20)) + 16))
  {

    v47 = sub_218EEE328(v11);
    v44 = v12;
    MEMORY[0x28223BE20](v47);
    *(&v38 - 2) = v1;
    *(&v38 - 1) = a1;
    sub_21951E150(0);
    sub_219BE3204();
    v40 = v1;
    v43 = type metadata accessor for SportsLinksTagFeedGroupEmitter;
    sub_21951E88C(v1, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsLinksTagFeedGroupEmitter);
    v13 = *(v6 + 80);
    v46 = v4;
    v14 = (v13 + 16) & ~v13;
    v15 = v13;
    v16 = swift_allocObject();
    v39 = type metadata accessor for SportsLinksTagFeedGroupEmitter;
    v41 = v14;
    sub_21951E734(v8, v16 + v14, type metadata accessor for SportsLinksTagFeedGroupEmitter);
    v17 = sub_219BE2E54();
    sub_21951E270(0);
    v42 = sub_219BE2F64();

    v18 = v40;
    sub_21951E88C(v40, v8, type metadata accessor for SportsLinksTagFeedGroupEmitter);
    v45 = v14 + v7;
    v19 = (v14 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = v15;
    v21 = swift_allocObject();
    v22 = v21 + v14;
    v23 = v39;
    sub_21951E734(v8, v22, v39);
    v24 = v21 + v19;
    *v24 = v47;
    *(v24 + 8) = v44;
    *(v21 + v20) = a1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_21951E378;
    *(v25 + 24) = v21;
    swift_unknownObjectRetain();

    v26 = sub_219BE2E54();
    sub_219BF1904();
    sub_219BE2F64();

    v27 = v18;
    v28 = v43;
    sub_21951E88C(v18, v8, v43);
    v29 = swift_allocObject();
    v30 = v41;
    sub_21951E734(v8, v29 + v41, v23);
    *(v29 + v19) = a1;

    v31 = sub_219BE2E54();
    sub_219BE2F64();

    sub_21951E88C(v27, v8, v28);
    v32 = swift_allocObject();
    sub_21951E734(v8, v32 + v30, v23);
    v33 = sub_219BE2E54();
    v34 = sub_219BE3054();
    swift_unknownObjectRelease();

    return v34;
  }

  else
  {
    sub_21951E598();
    v36 = swift_allocError();
    *v37 = 1;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for TagFeedGroup(0);
    sub_21877D2B0();
    sub_219BEF194();

    sub_21951E314(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_219519BA0@<X0>(uint64_t *a1@<X8>)
{
  sub_219519384(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x3000000000000006;
  return result;
}

uint64_t sub_219519C20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsLinksTagFeedGroupKnobs(0);
  a2[4] = sub_21951E844(&qword_280EB29B0, type metadata accessor for SportsLinksTagFeedGroupKnobs, &unk_219C1CAC8);
  a2[5] = sub_21951E844(&qword_27CC1B5A8, type metadata accessor for SportsLinksTagFeedGroupKnobs, &unk_219C1CAA0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21951E88C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsLinksTagFeedGroupKnobs);
}

uint64_t sub_219519CE8(uint64_t a1)
{
  type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  v2 = MEMORY[0x277D84560];
  sub_21951E314(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_21951E314(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v2);
  v8 = sub_219BF0644();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32EF8], v8);
  v12 = sub_2194B3180(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  *(v7 + v6) = v12;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D322C8], v4);
  sub_2191EDA0C(v7);
  return v1;
}

uint64_t sub_219519F68()
{
  sub_219519384(0);

  return sub_219BEDCA4();
}

uint64_t sub_219519F94@<X0>(uint64_t *a2@<X8>)
{
  sub_21951E314(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219519384(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21951E8F4(inited + 32, sub_2188317B0);
  sub_21951E314(0, &qword_280EE7850, type metadata accessor for SportsLinksTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21951E954();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21951A118(uint64_t a1)
{
  sub_21951E844(&qword_280EAB188, type metadata accessor for SportsLinksTagFeedGroupEmitter, &unk_219C864A8);

  return sub_219BE2324();
}

uint64_t sub_21951A2A4()
{
  v1 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v1 - 8);

  v4 = sub_218EEE328(v2);
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = sub_219BEEDD4();
      sub_21951E844(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      *v6 = 0xD000000000000026;
      v6[1] = 0x8000000219D24E00;
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D32398], v5);
      swift_willThrow();
LABEL_13:
      swift_unknownObjectRelease();
      return v5;
    }

    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61708;
    v15 = sub_219BF6214();
    sub_219BE5314("Sports links fetching for my sports", 35, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
    v16 = type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
    __swift_project_boxed_opaque_existential_1((v0 + *(v16 + 32)), *(v0 + *(v16 + 32) + 24));
    sub_2191ABC74(0);
    v17 = sub_219BE2E54();
    sub_21951E150(0);
    v5 = sub_219BE2F74();
  }

  else
  {
    v7 = [swift_unknownObjectRetain() asSports];
    if (!v7)
    {
      v5 = sub_219BEEDD4();
      sub_21951E844(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v5 - 8) + 104))(v18, *MEMORY[0x277D323A0], v5);
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v8 = v7;
    if ([v7 sportsType] == 1)
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v9 = qword_280F61708;
      sub_2186F20D4(0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_219C09BA0;
      v26 = 0;
      v27 = 0xE000000000000000;
      v28 = v8;
      sub_2186D85DC();
      sub_219BF7484();
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_2186FC3BC();
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      v11 = sub_219BF6214();
      sub_219BE5314("Sports links fetching for children of tag=%{public}@", 52, 2, &dword_2186C1000, v9, v11, v10);

      MEMORY[0x28223BE20](v12);
      *(&v24 - 2) = v0;
      sub_219BF29D4();
      sub_219BE3204();
      *(swift_allocObject() + 16) = v8;
      swift_unknownObjectRetain();
      v13 = sub_219BE2E54();
      sub_21951E150(0);
      v5 = sub_219BE2F64();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_21951E314(0, &qword_27CC0FBD0, MEMORY[0x277D34408], MEMORY[0x277D84560]);
      v25 = sub_219BF43B4();
      v20 = *(v25 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_219C09BA0;
      v23 = [v4 identifier];
      v24 = sub_219BF5414();

      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      *(v22 + v21) = sub_219BF49E4();
      (*(v20 + 104))(v22 + v21, *MEMORY[0x277D343F0], v25);
      v26 = v22;
      sub_21951E314(0, &unk_27CC1B598, sub_21951E150, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v5 = sub_219BE3014();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
    }
  }

  return v5;
}

uint64_t sub_21951A948(uint64_t *a1, uint64_t a2)
{
  v3 = sub_219BF4684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
  swift_getObjectType();
  v18 = sub_219BF2F84();
  v8 = (a2 + *(v7 + 40));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v9 = *MEMORY[0x277D344A0];
  v10 = *(v4 + 104);
  v16 = v3;
  v10(v6, v9, v3);
  sub_219BF4C14();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v17 = sub_219BE2F24();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v12 = v16;
  v10(v6, *MEMORY[0x277D34490], v16);
  sub_219BF4C14();
  v11(v6, v12);
  sub_219BE2F24();

  v13 = sub_219BE31B4();

  return v13;
}

uint64_t sub_21951AB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, char *a7)
{
  v8 = v7;
  v126 = a7;
  v131 = a5;
  v117 = a2;
  v118 = a3;
  sub_21951E314(0, &qword_280E900E8, MEMORY[0x277D33F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  v17 = sub_219BF3824();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v116 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = &v101 - v21;
  v22 = sub_219BF4234();
  v128 = sub_219BF4254();
  v23 = sub_219BF41E4();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v127 = v17;
  v130 = qword_280F61708;
  sub_2186F20D4(0);
  v115 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C0B8C0;
  v132 = v23;
  v129 = v22 >> 62;
  if (v22 >> 62)
  {
    v98 = v25;
    v26 = sub_219BF7214();
    v25 = v98;
  }

  else
  {
    v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D83B88];
  v28 = MEMORY[0x277D83C10];
  *(v25 + 56) = MEMORY[0x277D83B88];
  *(v25 + 64) = v28;
  *(v25 + 32) = v26;
  v122 = v128 >> 62;
  if (v128 >> 62)
  {
    v123 = v7;
    v99 = v25;
    v29 = sub_219BF7214();
    v25 = v99;
    v8 = v123;
  }

  else
  {
    v29 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v25 + 96) = v27;
  *(v25 + 104) = v28;
  v30 = v132;
  v31 = v132 >> 62;
  *(v25 + 72) = v29;
  v121 = v31;
  if (v31)
  {
    v123 = v8;
    v100 = v25;
    v32 = sub_219BF7214();
    v25 = v100;
    v8 = v123;
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v25 + 136) = v27;
  *(v25 + 144) = v28;
  *(v25 + 112) = v32;
  sub_219BF6214();
  sub_219BE5314("Sports links has %ld scores, %ld standings, %ld brackets", v101, v102, v103);

  v33 = a4 + *(type metadata accessor for SportsLinksTagFeedGroupEmitter(0) + 20);
  v34 = *(v33 + *(type metadata accessor for SportsLinksTagFeedGroupKnobs(0) + 20));
  v35 = *(v34 + 16);
  if (v35)
  {
    v123 = v8;
    v112 = v16;
    v113 = v13;
    v114 = a4;
    v36 = v132;
    v37 = v132 & 0xFFFFFFFFFFFFFF8;
    v108 = v132 & 0xFFFFFFFFFFFFFF8;
    if (v132 < 0)
    {
      v37 = v132;
    }

    v107 = v37;
    v119 = (v18 + 48);
    v111 = (v18 + 32);
    v110 = (v18 + 8);
    v38 = v128;
    v106 = v128 & 0xFFFFFFFFFFFFFF8;
    if ((v128 & 0x8000000000000000) == 0)
    {
      v38 = v128 & 0xFFFFFFFFFFFFFF8;
    }

    v105 = v38;
    v39 = v22 & 0xFFFFFFFFFFFFFF8;
    v125 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 < 0)
    {
      v39 = v22;
    }

    v124 = v39;
    v40 = (v34 + 48);
    v41 = MEMORY[0x277D84F90];
    v109 = xmmword_219C09EC0;
    while (1)
    {
      v43 = *(v40 - 2);
      v42 = *(v40 - 1);
      if (*v40)
      {
        if (*v40 == 1)
        {
          if (!a6)
          {

            v44 = [v131 asSports];
            if (v44)
            {
              v45 = [v44 sportsType];
              swift_unknownObjectRelease();
              if (v45 == 1)
              {
                v46 = v43;
                v47 = v42;
                v48 = 1;
                goto LABEL_51;
              }

              v36 = v132;
              if (v122)
              {
                if (sub_219BF7214())
                {
LABEL_44:
                  v51 = v112;
                  sub_21951E5EC(v117, v112);
                  v60 = v127;
                  if ((*v119)(v51, 1, v127) != 1)
                  {
                    v104 = v22;
                    v61 = v120;
                    (*v111)(v120, v51, v60);
                    sub_219BEF0B4();
                    v62 = *(v133 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

                    MEMORY[0x28223BE20](v63);
                    *(&v101 - 4) = v61;
                    *(&v101 - 3) = v62;
                    *(&v101 - 16) = 11;
                    v64 = v123;
                    v65 = sub_218DE06B4(sub_21951E6B4, (&v101 - 6), v128);
                    v123 = v64;
                    if (v65 >> 62)
                    {
                      v103 = sub_219BF7214();
                    }

                    else
                    {
                      v103 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    sub_219BEF0B4();
                    v66 = *(v133 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

                    MEMORY[0x28223BE20](v67);
                    *(&v101 - 4) = v120;
                    *(&v101 - 3) = v66;
                    *(&v101 - 16) = 18;
                    v68 = v123;
                    v69 = sub_218DE06B4(sub_21951EA44, (&v101 - 6), v128);
                    v123 = v68;
                    if (v69 >> 62)
                    {
                      v70 = sub_219BF7214();
                    }

                    else
                    {
                      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v71 = v103;
                    HIDWORD(v102) = v103 != 0;

                    v101 = v70;
                    v72 = swift_allocObject();
                    *(v72 + 16) = v109;
                    v73 = MEMORY[0x277D839B0];
                    *(v72 + 56) = MEMORY[0x277D839B0];
                    v74 = MEMORY[0x277D839F0];
                    *(v72 + 64) = MEMORY[0x277D839F0];
                    *(v72 + 32) = BYTE4(v102);
                    *(v72 + 96) = v73;
                    *(v72 + 104) = v74;
                    *(v72 + 72) = v70 != 0;
                    sub_219BF6214();
                    sub_219BE5314("Sports links checking standings, L1=%d, L2=%d", v101, v102);

                    if (v71)
                    {
                      v36 = v132;
                      v22 = v104;
                    }

                    else
                    {
                      v36 = v132;
                      v22 = v104;
                      if (v101)
                      {

                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v41 = sub_2191FAD4C(0, *(v41 + 2) + 1, 1, v41);
                        }

                        v76 = *(v41 + 2);
                        v75 = *(v41 + 3);
                        if (v76 >= v75 >> 1)
                        {
                          v41 = sub_2191FAD4C((v75 > 1), v76 + 1, 1, v41);
                        }

                        *(v41 + 2) = v76 + 1;
                        v77 = &v41[24 * v76];
                        *(v77 + 4) = v43;
                        *(v77 + 5) = v42;
                        v77[48] = 1;
                        v78 = sub_219BF6214();
                        sub_219BE5314("Sports Links successfully added standings", 41, 2, &dword_2186C1000, v130, v78, MEMORY[0x277D84F90]);
                        v36 = v132;
                      }
                    }

                    v94.n128_f64[0] = sub_218DA6BD8(v43, v42, 1u);
                    (*v110)(v120, v127, v94);
                    goto LABEL_18;
                  }

                  v53 = v43;
                  v54 = v42;
                  v55 = 1;
LABEL_46:
                  sub_218DA6BD8(v53, v54, v55);
                  sub_21951E7D4(v51, &qword_280E900E8, MEMORY[0x277D33F30]);
LABEL_52:
                  v36 = v132;
                  goto LABEL_18;
                }
              }

              else if (*(v106 + 16))
              {
                goto LABEL_44;
              }
            }

            sub_218DA6BD8(v43, v42, 1u);
          }
        }

        else if (!a6)
        {

          v49 = [v131 asSports];
          if (v49)
          {
            v50 = [v49 sportsType];
            swift_unknownObjectRelease();
            if (v50 != 1)
            {
              if (v121)
              {
                if (sub_219BF7214())
                {
                  goto LABEL_33;
                }
              }

              else if (*(v108 + 16))
              {
LABEL_33:
                v51 = v113;
                sub_21951E5EC(v118, v113);
                v52 = v127;
                if ((*v119)(v51, 1, v127) != 1)
                {
                  v104 = v22;
                  v79 = v116;
                  (*v111)(v116, v51, v52);
                  sub_219BEF0B4();
                  v80 = *(v133 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

                  MEMORY[0x28223BE20](v81);
                  *(&v101 - 4) = v79;
                  *(&v101 - 3) = v80;
                  *(&v101 - 16) = 19;
                  v82 = v123;
                  v83 = sub_218DDFEC4(sub_21951E680, (&v101 - 6), v132);
                  v123 = v82;
                  if (v83 >> 62)
                  {
                    v84 = sub_219BF7214();
                  }

                  else
                  {
                    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v85 = swift_allocObject();
                  *(v85 + 16) = v109;
                  v86 = MEMORY[0x277D839B0];
                  *(v85 + 56) = MEMORY[0x277D839B0];
                  v87 = MEMORY[0x277D839F0];
                  *(v85 + 64) = MEMORY[0x277D839F0];
                  *(v85 + 32) = v84 != 0;
                  *(v85 + 96) = v86;
                  *(v85 + 104) = v87;
                  *(v85 + 72) = v84 != 0;
                  sub_219BF6214();
                  sub_219BE5314("Sports links checking brackets, L1=%d, L2=%d", v101, v102);

                  if (v84)
                  {
                    v36 = v132;
                    v22 = v104;
                  }

                  else
                  {

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v22 = v104;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v41 = sub_2191FAD4C(0, *(v41 + 2) + 1, 1, v41);
                    }

                    v90 = *(v41 + 2);
                    v89 = *(v41 + 3);
                    if (v90 >= v89 >> 1)
                    {
                      v41 = sub_2191FAD4C((v89 > 1), v90 + 1, 1, v41);
                    }

                    *(v41 + 2) = v90 + 1;
                    v91 = &v41[24 * v90];
                    *(v91 + 4) = v43;
                    *(v91 + 5) = v42;
                    v91[48] = 2;
                    v92 = sub_219BF6214();
                    sub_219BE5314("Sports Links successfully added brackets", 40, 2, &dword_2186C1000, v130, v92, MEMORY[0x277D84F90]);
                    v36 = v132;
                  }

                  v93.n128_f64[0] = sub_218DA6BD8(v43, v42, 2u);
                  (*v110)(v116, v127, v93);
                  goto LABEL_18;
                }

                v53 = v43;
                v54 = v42;
                v55 = 2;
                goto LABEL_46;
              }
            }

            v46 = v43;
            v47 = v42;
            v48 = 2;
LABEL_51:
            sub_218DA6BD8(v46, v47, v48);
            goto LABEL_52;
          }

          sub_218DA6BD8(v43, v42, 2u);
        }
      }

      else if (a6 != 1)
      {
        if (!v129)
        {
          if (!*(v125 + 16))
          {
            goto LABEL_18;
          }

LABEL_36:
          sub_21951E6E8(v43, v42, 0);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_2191FAD4C(0, *(v41 + 2) + 1, 1, v41);
          }

          v57 = *(v41 + 2);
          v56 = *(v41 + 3);
          if (v57 >= v56 >> 1)
          {
            v41 = sub_2191FAD4C((v56 > 1), v57 + 1, 1, v41);
          }

          *(v41 + 2) = v57 + 1;
          v58 = &v41[24 * v57];
          *(v58 + 4) = v43;
          *(v58 + 5) = v42;
          v58[48] = 0;
          v59 = sub_219BF6214();
          sub_219BE5314("Sports Links successfully added scores", 38, 2, &dword_2186C1000, v130, v59, MEMORY[0x277D84F90]);
          v46 = v43;
          v47 = v42;
          v48 = 0;
          goto LABEL_51;
        }

        if (sub_219BF7214())
        {
          goto LABEL_36;
        }
      }

LABEL_18:
      v40 += 24;
      if (!--v35)
      {

        a4 = v114;
        v8 = v123;
        goto LABEL_81;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
  v36 = v132;
LABEL_81:

  if (*(v41 + 2))
  {
    v36 = a4;
    sub_21951B930(v126, v41);
    if (!v8)
    {
      v36 = v95;
    }
  }

  else
  {

    sub_21951E598();
    swift_allocError();
    *v96 = 0;
    swift_willThrow();
  }

  return v36;
}

void sub_21951B930(char *a1, uint64_t a2)
{
  v78 = a1;
  v77 = sub_219BF3E84();
  v3 = *(v77 - 1);
  MEMORY[0x28223BE20](v77);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_21951E314(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - v7;
  sub_21951E314(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v58 - v9;
  sub_21951E314(0, &qword_280E91A70, sub_2189AD5C8, v5);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v58 - v11;
  v12 = sub_219BF2AB4();
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21951E314(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_219BF2034();
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  v65 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SportsLinksTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v61);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1934();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = *(a2 + 16);
  v25 = MEMORY[0x277D84F90];
  v72 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v26;
  v62 = v16;
  if (v24)
  {
    v59 = v20;
    v74 = v22;
    v85 = MEMORY[0x277D84F90];
    v76 = v24;
    sub_218C35610(0, v24, 0);
    v27 = 0;
    v28 = a2;
    v29 = v85;
    v75 = v3 + 32;
    v30 = (v28 + 48);
    v31 = v60;
    while (1)
    {
      v32 = *(v30 - 2);
      v33 = *(v30 - 1);
      v34 = *v30;
      v81 = v27;
      v82 = v32;
      v83 = v33;
      v84 = v34;
      sub_21951E6E8(v32, v33, v34);
      sub_21951E6E8(v32, v33, v34);
      sub_218DA6BD8(v32, v33, v34);
      v35 = v80;
      sub_21951D528(v27, &v82, v78, v31);
      if (v35)
      {
        break;
      }

      v80 = 0;
      sub_218DA6BD8(v82, v83, v84);
      v85 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_218C35610((v36 > 1), v37 + 1, 1);
        v31 = v60;
        v29 = v85;
      }

      ++v27;
      v30 += 24;
      *(v29 + 16) = v37 + 1;
      (*(v3 + 32))(v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37, v31, v77);
      if (v76 == v27)
      {
        v21 = v73;
        v22 = v74;
        v25 = MEMORY[0x277D84F90];
        v20 = v59;
        goto LABEL_10;
      }
    }

    sub_218DA6BD8(v82, v83, v84);
  }

  else
  {
LABEL_10:
    sub_219519384(0);
    v38 = v79;
    v39 = v20;
    sub_219BEDD14();
    v40 = *(v61 + 20);
    sub_219BF1794();
    v41 = *(v22 + 8);
    v74 = v22 + 8;
    v77 = v41;
    v41(&v39[v40], v21);
    v60 = type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
    v42 = (v38 + *(v60 + 6));
    v43 = v42[3];
    v75 = v42[4];
    v76 = v43;
    v61 = __swift_project_boxed_opaque_existential_1(v42, v43);
    v44 = sub_219BEC004();
    (*(*(v44 - 8) + 56))(v62, 1, 1, v44);
    sub_219A95188(v25);
    sub_219A95188(v25);
    sub_219A951A0(v25);
    sub_219A951B8(v25);
    sub_219A952CC(v25);
    sub_219A952E4(v25);
    sub_219A953F8(v25);
    v45 = v65;
    sub_219BF2024();
    v46 = *(v60 + 5);
    sub_2189AD5C8(0);
    v48 = v47;
    v49 = *(v47 - 8);
    v50 = v63;
    (*(v49 + 16))(v63, v79 + v46, v47);
    (*(v49 + 56))(v50, 0, 1, v48);
    sub_219BEF0B4();
    v51 = *(v81 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v52 = sub_219BF35D4();
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    LOBYTE(v85) = 15;
    sub_21951E184(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    sub_219BEF0B4();
    sub_218CB8CBC();

    sub_219BEF0B4();
    v53 = *(v85 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    sub_219BF3914();
    swift_allocObject();
    sub_219BF3904();
    v54 = sub_219BF2774();
    (*(*(v54 - 8) + 56))(v71, 1, 1, v54);
    v55 = qword_280E8D7F8;
    *MEMORY[0x277D30BC0];
    if (v55 != -1)
    {
      swift_once();
    }

    qword_280F61708;
    v56 = v68;
    sub_219BF2A84();
    v57 = v72;
    sub_219BF2194();
    (*(v69 + 8))(v56, v70);
    (*(v66 + 8))(v45, v67);
    v77(v57, v73);
  }
}

uint64_t sub_21951C428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21951C5BC(a1, v9);
  sub_21951E88C(v9, v6, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_21951E314(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v10 = sub_219BE3014();
  sub_21951E8F4(v9, type metadata accessor for TagFeedGroup);
  return v10;
}

uint64_t sub_21951C5BC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v24 = a3;
  sub_21951E314(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v21 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v13 = *(v22 - 8);
  v14 = MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v14);
  sub_219519384(0);
  v17 = sub_219BEDCB4();
  v21[1] = v18;
  v21[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  sub_219BED854();
  (*(v13 + 32))(v24, v16, v22);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21951C968(uint64_t a1, uint64_t a2)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  sub_219BEF194();
  sub_21951E314(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_21951CAC4(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF43B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  if (*a1 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_13:
    *a2 = v13;
    return;
  }

  v32 = MEMORY[0x277D84F90];
  sub_218C37920(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v28 = v12;
    v22 = a2;
    v23 = v2;
    v14 = 0;
    v13 = v32;
    v15 = v11;
    v27 = v11 & 0xC000000000000001;
    v26 = *MEMORY[0x277D343F0];
    v24 = v8 + 32;
    v25 = (v8 + 104);
    v29 = v11;
    v30 = v7;
    do
    {
      if (v27)
      {
        v16 = MEMORY[0x21CECE0F0](v14, v15);
      }

      else
      {
        v16 = *(v15 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      v17 = [v16 identifier];
      sub_219BF5414();

      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      v18 = sub_219BF49E4();
      swift_unknownObjectRelease();
      *v10 = v18;
      v19 = v30;
      (*v25)(v10, v26, v30);
      v32 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_218C37920((v20 > 1), v21 + 1, 1);
        v13 = v32;
      }

      ++v14;
      *(v13 + 16) = v21 + 1;
      (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v10, v19);
      v15 = v29;
    }

    while (v28 != v14);
    a2 = v22;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_21951CDB4(uint64_t a1)
{
  v2 = type metadata accessor for SportsLinksTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 36)), *(a1 + *(v2 + 36) + 24));
  return sub_219BF4434();
}

uint64_t sub_21951CE10(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BF43B4();
  v52 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BF34F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21951E314(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = v42 - v14;
  v16 = [a2 identifier];
  sub_219BF5414();

  sub_219BF29A4();
  v17 = v9;

  if ((*(v9 + 48))(v15, 1, v8) != 1)
  {
    v27 = sub_219BF34B4();
    v49 = *(v9 + 8);
    v50 = v9 + 8;
    v49(v15, v8);
    v28 = *(v27 + 16);
    if (v28)
    {
      v45 = v2;
      v30 = *(v17 + 16);
      v29 = v17 + 16;
      v48 = v30;
      v31 = *(v29 + 64);
      v42[1] = v27;
      v32 = v27 + ((v31 + 32) & ~v31);
      v33 = *(v29 + 56);
      v34 = MEMORY[0x277D84F90];
      v46 = v29;
      v47 = v8;
      v30(v11, v32, v8);
      while (1)
      {
        v36 = sub_219BF34D4();
        v38 = v37;
        v49(v11, v8);
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_218840D24(0, *(v34 + 2) + 1, 1, v34);
          }

          v40 = *(v34 + 2);
          v39 = *(v34 + 3);
          if (v40 >= v39 >> 1)
          {
            v34 = sub_218840D24((v39 > 1), v40 + 1, 1, v34);
          }

          *(v34 + 2) = v40 + 1;
          v35 = &v34[16 * v40];
          *(v35 + 4) = v36;
          *(v35 + 5) = v38;
          v8 = v47;
        }

        v32 += v33;
        if (!--v28)
        {
          break;
        }

        v48(v11, v32, v8);
      }

      v3 = v45;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v53 = v34;
    sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v18 = sub_219BF56E4();

    v19 = *(v18 + 16);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_21:

    v20 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  sub_21951E7D4(v15, &qword_27CC13BD0, MEMORY[0x277D33E48]);
  v18 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_3:
  v45 = v3;
  v53 = MEMORY[0x277D84F90];
  sub_218C37920(0, v19, 0);
  v20 = v53;
  LODWORD(v50) = *MEMORY[0x277D343F0];
  v21 = (v52 + 104);
  v48 = v18;
  v49 = (v52 + 32);
  v22 = v18 + 40;
  v24 = v43;
  v23 = v44;
  do
  {

    sub_219BF4CE4();
    sub_219BF49F4();
    swift_allocObject();
    *v24 = sub_219BF49E4();
    (*v21)(v24, v50, v23);
    v53 = v20;
    v26 = *(v20 + 2);
    v25 = *(v20 + 3);
    if (v26 >= v25 >> 1)
    {
      sub_218C37920((v25 > 1), v26 + 1, 1);
      v24 = v43;
      v23 = v44;
      v20 = v53;
    }

    *(v20 + 2) = v26 + 1;
    (*(v52 + 32))(&v20[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v26], v24, v23);
    v22 += 16;
    --v19;
  }

  while (v19);

LABEL_22:
  v53 = v20;
  sub_21951E314(0, &unk_27CC1B598, sub_21951E150, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_21951D43C(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, id)@<X4>, uint64_t *a5@<X8>)
{
  v7 = a3;
  v10 = *a1;
  v11 = sub_219BF6394();
  v12 = [a2 alternativeFeedDescriptor];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 feedConfiguration];
  }

  else
  {
    v14 = [a2 feedConfiguration];
  }

  v15 = sub_219975D48(v7);
  v17 = a4(v11, v10, v15, v16, v14);
  swift_unknownObjectRelease();

  *a5 = v17;
}

uint64_t sub_21951D528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X4>, uint64_t a5@<X8>)
{
  v61 = a4;
  v53 = a5;
  sub_21951E700(0);
  v54 = v7;
  v8 = *(v7 - 8);
  v58 = v7 - 8;
  v59 = v8;
  v60 = v8;
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50[0] = v50 - v11;
  v12 = sub_219BF2124();
  MEMORY[0x28223BE20](v12 - 8);
  v65 = sub_219BF14C4();
  v13 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v52 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = v50 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v50 - v18;
  v20 = *a2;
  v55 = *(a2 + 8);
  v56 = v20;
  LODWORD(v57) = *(a2 + 16);
  sub_219BF20F4();
  sub_219BF14A4();
  sub_219BF2104();
  sub_219BF14A4();
  v67 = 0x2D73726564616568;
  v68 = 0xE800000000000000;
  v70 = a1;
  v21 = sub_219BF7894();
  MEMORY[0x21CECC330](v21);

  v50[1] = v67;
  v63 = v68;
  v22 = MEMORY[0x277D84560];
  sub_21951E314(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v23 = *(v13 + 72);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C09EC0;
  v64 = v13;
  v26 = v19;
  v27 = *(v13 + 16);
  v28 = v19;
  v29 = v65;
  v27(v25 + v24, v28, v65);
  v30 = v66;
  v27(v25 + v24 + v23, v66, v29);
  sub_21951E314(0, &qword_27CC1B590, sub_21951E700, v22);
  v31 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v32 = swift_allocObject();
  v67 = v56;
  v68 = v55;
  v69 = v57;
  v33 = v62;
  sub_21951DBE0(&v67, v32 + v31);
  v62 = v33;
  if (v33)
  {

    v34 = *(v64 + 8);
    v34(v30, v29);
    v34(v26, v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    return swift_deallocClassInstance();
  }

  else
  {
    v58 = v24;
    v59 = v23;
    v60 = v25;
    v61 = v26;
    v36 = v50[0];
    sub_21951E88C(v32 + v31, v50[0], sub_21951E700);
    v37 = v36;
    v38 = v51;
    sub_21951E734(v37, v51, sub_21951E700);
    v39 = v64;
    if ((*(v64 + 48))(v38, 1, v29) == 1)
    {
      sub_21951E8F4(v38, sub_21951E700);
      v40 = MEMORY[0x277D84F90];
    }

    else
    {
      v57 = *(v39 + 32);
      v57(v52, v38, v29);
      v40 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_2191F7664(0, v40[2] + 1, 1, v40);
      }

      v42 = v40[2];
      v41 = v40[3];
      v44 = v58;
      v43 = v59;
      if (v42 >= v41 >> 1)
      {
        v40 = sub_2191F7664((v41 > 1), v42 + 1, 1, v40);
      }

      v45 = v52;
      v40[2] = v42 + 1;
      v46 = v40 + v44 + v42 * v43;
      v29 = v65;
      v57(v46, v45, v65);
      v39 = v64;
    }

    v47 = v60;
    swift_setDeallocating();
    sub_21951E8F4(v32 + v31, sub_21951E700);
    swift_deallocClassInstance();
    v67 = v47;
    sub_2191EED78(v40);
    v48 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v48);
    sub_218F0BB90(v48);
    sub_219BF3E74();
    v49 = *(v39 + 8);
    v49(v66, v29);
    return (v49)(v61, v29);
  }
}

uint64_t sub_21951DBE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2124();
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = &v30 - v11;
  v35 = *(a1 + 16);

  v13 = sub_218EEE328(v12);
  v33 = v14;
  sub_219BEF0B4();
  v15 = *(v36 + 16);

  v16 = *(v15 + 32);

  v17 = [v16 backingTag];

  v18 = [v17 identifier];
  swift_unknownObjectRelease();
  v19 = v18;
  v20 = v18;
  if (!v18)
  {
    sub_219BF5414();
    v20 = sub_219BF53D4();

    sub_219BF5414();
    v31 = v7;
    v19 = sub_219BF53D4();
    v7 = v31;
  }

  v21 = v18;
  if (v35)
  {
    if (v35 == 1)
    {

      v22 = [objc_opt_self() nss:v20 NewsURLForTagID:4 feedConfiguration:?];
    }

    else
    {

      v22 = [objc_opt_self() nss:v19 NewsURLForTagID:7 feedConfiguration:?];
    }

    sub_219BDB8B4();

LABEL_11:
    sub_219BF20E4();
    (*(v5 + 8))(v7, v4);
    sub_219BF14A4();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (!v33)
  {
    v27 = [v13 identifier];
    if (!v27)
    {
      sub_219BF5414();
      v27 = sub_219BF53D4();
    }

    v28 = [objc_opt_self() nss:v27 NewsURLForTagID:5 feedConfiguration:?];

    sub_219BDB8B4();
    goto LABEL_11;
  }

  if (v33 == 1)
  {
    v23 = sub_219BEEDD4();
    sub_21951E844(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v24 = 0xD000000000000026;
    v24[1] = 0x8000000219D24E00;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D32398], v23);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v29 = [objc_opt_self() nss_NewsURLForMySportsScores];
  sub_219BDB8B4();

  sub_219BF20E4();
  (*(v5 + 8))(v7, v4);
  sub_219BF14A4();
LABEL_12:
  v26 = sub_219BF14C4();
  return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
}

void sub_21951E184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_21951E270(uint64_t a1)
{
  if (!qword_280E8FEE0)
  {
    sub_219BF4264();
    sub_21951E314(255, &qword_280E900E8, MEMORY[0x277D33F30], MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8FEE0);
    }
  }
}

void sub_21951E314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21951E378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for SportsLinksTagFeedGroupEmitter(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_21951AB78(a1, a2, a3, v3 + v8, *(v3 + ((v8 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v8 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((v8 + *(v7 + 64) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21951E43C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_21951E270(0);
  return v3(a1, a1 + *(v4 + 48), a1 + *(v4 + 64));
}

uint64_t sub_21951E494(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsLinksTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21951C428(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_21951E598()
{
  result = qword_280EAB1B0[0];
  if (!qword_280EAB1B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAB1B0);
  }

  return result;
}

uint64_t sub_21951E5EC(uint64_t a1, uint64_t a2)
{
  sub_21951E314(0, &qword_280E900E8, MEMORY[0x277D33F30], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21951E6E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_21951E734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21951E7D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21951E314(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21951E844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21951E88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21951E8F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21951E954()
{
  result = qword_280EE7858;
  if (!qword_280EE7858)
  {
    sub_21951E314(255, &qword_280EE7850, type metadata accessor for SportsLinksTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7858);
  }

  return result;
}

unint64_t sub_21951E9F0()
{
  result = qword_27CC1B5B0;
  if (!qword_27CC1B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B5B0);
  }

  return result;
}

id ChannelIssuesGroupConfig.__allocating_init(issueIDs:channel:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___TSChannelIssuesGroupConfig_issueIDs] = a1;
  *&v9[OBJC_IVAR___TSChannelIssuesGroupConfig_channel] = a2;
  v10 = &v9[OBJC_IVAR___TSChannelIssuesGroupConfig_title];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t ChannelIssuesGroupConfig.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSChannelIssuesGroupConfig_title);

  return v1;
}

id ChannelIssuesGroupConfig.init(issueIDs:channel:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___TSChannelIssuesGroupConfig_issueIDs] = a1;
  *&v4[OBJC_IVAR___TSChannelIssuesGroupConfig_channel] = a2;
  v10 = &v4[OBJC_IVAR___TSChannelIssuesGroupConfig_title];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id ChannelIssuesGroupConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChannelIssuesGroupConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21951EDF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x277D84F90];
  sub_218C37970(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_219BF7174();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = [*(*(a1 + 56) + 8 * v5) unsignedIntegerValue];
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_218C37970((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 8 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_2187BC250(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_21951F020(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      sub_219523AB8(v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21951F0AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      sub_21952368C(v7, a1, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21951F148(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      sub_219523E9C(&unk_282A27DC0, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21951F1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for AudioState(0);
    if ((sub_21941AA94(*(a2 + *(v7 + 28)), *(a1 + *(v7 + 28))) & 1) != 0 || (v8 = swift_unknownObjectWeakLoadStrong()) == 0)
    {
    }

    else
    {
      v9 = v8;
      v10 = v6;
      sub_219523E9C(&unk_282A27DE8, v9);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21951F29C(_OWORD *a1)
{
  v26 = a1;
  swift_getObjectType();
  v2 = type metadata accessor for AudioFeedServiceContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = CACurrentMediaTime();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v10 = qword_280F616F8;
  v11 = sub_219BF6214();
  sub_219BE5314("Audio feed will start prewarming", 32, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
  sub_21951F6E8(v8);
  sub_219523FC8(v8, v5, type metadata accessor for AudioFeedServiceContext);
  v24[1] = v1;
  v25 = v8;
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21952576C(v5, v13 + v12, type metadata accessor for AudioFeedServiceContext);
  sub_219BE31F4();

  v14 = v25;
  sub_219523FC8(v25, v5, type metadata accessor for AudioFeedServiceContext);
  v15 = swift_allocObject();
  sub_21952576C(v5, v15 + v12, type metadata accessor for AudioFeedServiceContext);
  sub_219524064(0);
  sub_219BE2F84();

  sub_2195254E0(0);
  sub_219BE2F84();

  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v16 = sub_219BF66A4();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v18 = v26;
  v19 = v26[1];
  *(v17 + 24) = *v26;
  *(v17 + 40) = v19;
  *(v17 + 56) = *(v18 + 4);
  v20 = *v18;
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v9;
  v21 = sub_219BE2E54();
  v22 = sub_219BE2FD4();

  sub_219523F68(v14, type metadata accessor for AudioFeedServiceContext);
  return v22;
}

uint64_t sub_21951F6E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDBD64();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BEE754();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0644();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v36 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures), *(v1 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeatures + 24));
  v13 = off_282A442B8;
  type metadata accessor for OfflineFeatures();
  if (v13(5) == 6)
  {
    v14 = sub_219BF1AE4();
    v15 = *(v7 + 104);
    if (v14)
    {
      v15(v12, *MEMORY[0x277D32EF8], v6);
      v16 = *MEMORY[0x277D32EF0];
    }

    else
    {
      v16 = *MEMORY[0x277D32EF0];
      v15(v12, v16, v6);
    }
  }

  else
  {
    v16 = *MEMORY[0x277D32EF0];
    v15 = *(v7 + 104);
    v15(v12, v16, v6);
  }

  v15(v9, v16, v6);
  sub_2195258C8(&qword_280E90ED0, 255, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
  sub_219BF5874();
  sub_219BF5874();
  if (v36 == v34 && v37 == v35)
  {
    v17 = 0;
  }

  else if (sub_219BF78F4())
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v12, v6);

  v19 = v28;
  sub_218E1257C(v17);
  v20 = type metadata accessor for AudioFeedServiceContext(0);
  v21 = v29;
  v22 = v31;
  (*(v29 + 16))(a1 + *(v20 + 28), v19, v31);
  v23 = v30;
  sub_219BDBD54();
  v24 = sub_219BDBD44();
  v26 = v25;
  (*(v32 + 8))(v23, v33);
  *a1 = v24;
  *(a1 + 8) = v26;
  result = (*(v21 + 8))(v19, v22);
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21951FB48()
{
  v1 = v0;
  v2 = sub_219BF0644();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  type metadata accessor for AudioFeedServiceContext(0);
  sub_2195258C8(&qword_280EC5DD0, 255, type metadata accessor for AudioFeedServiceContext, &unk_219C19B38);
  sub_219BEF384();
  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D32EF0])
  {
    sub_21870F564(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else if (v9 == *MEMORY[0x277D32EF8])
  {
    v11 = *(v0 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeedPrimer + 24);
    v12 = *(v0 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeedPrimer + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeedPrimer), *(v1 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_offlineFeedPrimer + 24));
    v13 = xmmword_219C43570;
    return sub_21895F754(&v13, v11, v12);
  }

  else
  {
    *&v13 = 0;
    *(&v13 + 1) = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219D1B0E0);
    sub_219BEF384();
    sub_219BF7484();
    (*(v3 + 8))(v5, v2);
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_21951FE14(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186E71C8();
  sub_219BEF3D4();
  sub_219BEE814();

  *(swift_allocObject() + 16) = v1;

  v2 = sub_219BE2E54();
  sub_2195254E0(0);
  v3 = sub_219BE2F74();

  return v3;
}

uint64_t sub_21951FF04(uint64_t *a1)
{
  sub_2186FB308(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x277D33070], v3);
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186E71C8();
  swift_retain_n();

  v9 = sub_219BEF3B4();
  v10 = sub_21952008C(v6, v9);

  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_21952008C(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AudioFeedGroupConfig(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB308(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  if ((*(v10 + 88))(v13, v9) == *MEMORY[0x277D33070])
  {
    v36 = v2;
    (*(v10 + 96))(v13, v9);
    v14 = *(*v13 + 16);

    v15 = sub_219BF0954();
    v13 = v15;
    v37 = v14;
    v38 = a2;
    v35 = a1;
    if (v15 >> 62)
    {
      goto LABEL_18;
    }

    a2 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      while (1)
      {
        v16 = 0;
        v10 = v13 & 0xC000000000000001;
        v9 = v13 & 0xFFFFFFFFFFFFFF8;
        while (v10)
        {
          v2 = MEMORY[0x21CECE0F0](v16, v13);
          a1 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }

LABEL_8:
          sub_219BEDF74();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_219523F68(v7, type metadata accessor for AudioFeedGroupConfig);
          if (EnumCaseMultiPayload <= 1)
          {

            a1 = v35;
            v2 = v36;
            a2 = v38;
            goto LABEL_16;
          }

          ++v16;
          if (a1 == a2)
          {
            goto LABEL_19;
          }
        }

        if (v16 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_18:
        a2 = sub_219BF7214();
        if (!a2)
        {
          goto LABEL_19;
        }
      }

      v2 = *&v13[8 * v16 + 32];

      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_19:

    v23 = sub_219BEE824();
    v24 = v38;
    if (*(v38 + 16) == 1)
    {
      sub_21911C3C0(0);
      v26 = v25;
      v27 = swift_allocBox();
      v29 = v28;
      v30 = *(v26 + 48);
      v31 = *(type metadata accessor for AudioFeedGroup(0) - 8);
      sub_219523FC8(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v29, type metadata accessor for AudioFeedGroup);
      *(v29 + v30) = v23;
    }

    else
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v24;
      *(v32 + 24) = v23;
      v27 = v32 | 0x2000000000000000;
    }

    v39 = v27;
    sub_2195256D0(0, &unk_280EE6C38, sub_219524064, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v22 = sub_219BE3014();
  }

  else
  {
LABEL_14:
    v18 = (*(v10 + 8))(v13, v9);
LABEL_16:
    MEMORY[0x28223BE20](v18);
    *(&v34 - 2) = v2;
    *(&v34 - 1) = a1;
    sub_219524064(0);
    sub_219BE3204();
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = a2;

    v20 = v2;
    v21 = sub_219BE2E54();
    v22 = sub_219BE2F64();
  }

  return v22;
}

uint64_t sub_219520540(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AudioFeedExpandRequest(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = v3;
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = CACurrentMediaTime();
  v6 = *a1;
  v5 = a1[1];
  v7 = qword_280E8D7D8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280F616F8;
  v9 = sub_219BF6214();
  sub_2186F20D4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v10 + 64) = v12;
  v27 = v6;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v32 = 0;
  v33 = 0xE000000000000000;
  type metadata accessor for AudioFeedGapLocation(0);

  sub_219BF7484();
  v13 = v32;
  v14 = v33;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = v14;
  sub_219BE5314("Audio feed will start expanding, identifier=%{public}@, location=%{public}@", 75, 2, &dword_2186C1000, v8, v9, v10);

  v26 = type metadata accessor for AudioFeedExpandRequest;
  v15 = v30;
  sub_219523FC8(a1, v30, type metadata accessor for AudioFeedExpandRequest);
  v16 = *(v28 + 80);
  v17 = swift_allocObject();
  v28 = type metadata accessor for AudioFeedExpandRequest;
  sub_21952576C(v15, v17 + ((v16 + 16) & ~v16), type metadata accessor for AudioFeedExpandRequest);
  sub_2186FB308(0);
  sub_219BE31D4();

  sub_219524064(0);
  v18 = v27;
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v19 = sub_219BF66A4();
  sub_219523FC8(a1, v15, v26);
  v20 = swift_allocObject();
  v20[2] = v4;
  *(v20 + 3) = v18;
  *(v20 + 4) = v5;
  sub_21952576C(v15, v20 + ((v16 + 40) & ~v16), v28);

  sub_219BE2F84();

  v21 = swift_allocObject();
  v21[2] = v4;
  *(v21 + 3) = v18;
  *(v21 + 4) = v5;
  v22 = sub_219BE2E54();
  v23 = sub_219BE2FD4();

  return v23;
}

uint64_t sub_219520958(uint64_t a1)
{
  sub_2186FB308(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = type metadata accessor for AudioFeedGapLocation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedExpandRequest(0);
  sub_219523FC8(a1 + *(v13 + 20), v12, type metadata accessor for AudioFeedGapLocation);
  (*(v4 + 32))(v9, v12, v3);
  (*(v4 + 16))(v6, v9, v3);
  sub_2195256D0(0, &qword_280EE6C10, sub_2186FB308, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v14 = sub_219BE3014();
  (*(v4 + 8))(v9, v3);
  return v14;
}

uint64_t sub_219520B8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v27 = a5;
  v25[1] = a2;
  v9 = type metadata accessor for AudioFeedExpandRequest(0);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = *a1;
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v25[0] = qword_280F616F8;
  sub_2186F20D4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v13 = MEMORY[0x277D83A80];
  *(v12 + 56) = MEMORY[0x277D839F8];
  *(v12 + 64) = v13;
  *(v12 + 32) = v14;
  v15 = MEMORY[0x277D837D0];
  *(v12 + 96) = MEMORY[0x277D837D0];
  v16 = sub_2186FC3BC();
  *(v12 + 104) = v16;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  v28 = v11;
  sub_219524064(0);
  sub_2195258C8(&qword_280E91648, 255, sub_219524064, MEMORY[0x277D32588]);

  v17 = sub_219BE2324();
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 112) = v17;
  *(v12 + 120) = v18;
  v19 = sub_219BF6214();
  sub_219BE5314("Audio feed successfully expanded gap, time=%fms, identifier=%{public}@, fetchResult=%@", 86, 2, &dword_2186C1000, v25[0], v19, v12);

  sub_219BEE4A4();
  sub_219523FC8(v27, v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedExpandRequest);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_21952576C(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for AudioFeedExpandRequest);
  v22 = sub_219BE2E54();
  v23 = sub_219BE2F74();

  return v23;
}

void sub_219520E84(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_219BEF6F4();
  sub_219BEF704();
  sub_2195256D0(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2195258C8(&unk_280EE5DD0, 255, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v6 = sub_219BF56C4();

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v6;
}

void sub_219520F94(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v6 = qword_280F616F8;
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  v10 = MEMORY[0x277D837D0];
  *(v7 + 96) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v7 + 104) = v11;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  v12 = sub_219BF6214();
  sub_219BE5314("Audio feed failed expanded gap, time=%fms, identifier=%{public}@, error=%{public}@", 82, 2, &dword_2186C1000, v6, v12, v7);
}

uint64_t sub_219521110(_OWORD *a1)
{
  v26 = a1;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AudioFeedServiceContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = CACurrentMediaTime();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v10 = qword_280F616F8;
  v11 = sub_219BF6214();
  sub_219BE5314("Audio feed will start refreshing", 32, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
  sub_21951F6E8(v8);
  v24 = *(v1 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_accessQueue);
  sub_219523FC8(v8, v5, type metadata accessor for AudioFeedServiceContext);
  v25 = v8;
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21952576C(v5, v13 + v12, type metadata accessor for AudioFeedServiceContext);
  sub_219BE31F4();

  v14 = v25;
  sub_219523FC8(v25, v5, type metadata accessor for AudioFeedServiceContext);
  v15 = swift_allocObject();
  sub_21952576C(v5, v15 + v12, type metadata accessor for AudioFeedServiceContext);
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_219BE2F84();

  sub_219524064(0);
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v16 = sub_219BF66A4();
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v18 = v26;
  v19 = v26[1];
  *(v17 + 24) = *v26;
  *(v17 + 40) = v19;
  *(v17 + 56) = *(v18 + 4);
  v20 = *v18;
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v9;
  v21 = sub_219BE2E54();
  v22 = sub_219BE2FD4();

  sub_219523F68(v14, type metadata accessor for AudioFeedServiceContext);
  return v22;
}

uint64_t sub_21952152C(uint64_t *a1, double a2, uint64_t a3, void *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v8 = qword_280F616F8;
  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  v12 = sub_219BF6214();
  sub_219BE5314(a5, 44, 2, &dword_2186C1000, v8, v12, v9);

  sub_219BEE4A4();
  v13 = sub_219BE2E54();
  v14 = sub_219BE2F74();

  return v14;
}

void sub_219521690(uint64_t a1, const char *a2, double a3)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280F616F8;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = sub_2186FC3BC();
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  v8 = sub_219BF6214();
  sub_219BE5314(a2, 54, 2, &dword_2186C1000, v4, v8, v5);
}

uint64_t sub_2195217E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_219BF0644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186E71C8();
  v45[3] = v11;
  v46 = a1;
  sub_219BEE844();
  LODWORD(v11) = (*(v8 + 88))(v10, v7);
  LODWORD(a1) = *MEMORY[0x277D32EF8];
  (*(v8 + 8))(v10, v7);
  if (v11 == a1)
  {
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v12 = qword_280F616F8;
    sub_2186F20D4(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09EC0;
    v48[0] = *a2;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = *a2;
    v14 = *(a2 + 16);
    v49 = v14;
    sub_21870F564(0, &qword_280E8F2A8, &type metadata for AudioFeedGroupKind, MEMORY[0x277D83940]);
    *(v13 + 96) = v15;
    *(v13 + 104) = sub_219525158();
    *(v13 + 72) = v14;
    sub_218A18DB4(v48, v50);
    sub_2195251D4(&v49, v50);
    v16 = sub_219BF6214();
    sub_219BE5314("Audio feed will skip targeted refresh because the cursor is offline", 67, 2, &dword_2186C1000, v12, v16, v13);

    sub_21952533C();
    swift_allocError();
    sub_21870F564(0, &unk_27CC1B648, &type metadata for AudioFeedRefreshResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }

  else
  {
    v45[1] = ObjectType;
    v45[2] = v3;
    v18 = CACurrentMediaTime();
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v19 = qword_280F616F8;
    sub_2186F20D4(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09EC0;
    v50[0] = *a2;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = *a2;
    v49 = *(a2 + 16);
    v21 = v49;
    sub_21870F564(0, &qword_280E8F2A8, &type metadata for AudioFeedGroupKind, MEMORY[0x277D83940]);
    *(v20 + 96) = v22;
    *(v20 + 104) = sub_219525158();
    *(v20 + 72) = v21;
    sub_218A18DB4(v50, v48);
    sub_2195251D4(&v49, v48);
    v23 = sub_219BF6214();
    sub_219BE5314("Audio feed will perform targeted refresh, identifier=%{public}@, groupKinds=%{public}@", 86, 2, &dword_2186C1000, v19, v23, v20);

    v47 = swift_allocObject();
    *(v47 + 16) = v49;
    v24 = *(v21 + 16);
    v25 = (v21 + 32);

    while (v24)
    {
      if (*v25 == 2)
      {

LABEL_12:
        v27 = *(v47 + 16);
        v28 = *(v27 + 16);
        v29 = (v27 + 32);
        v45[0] = v27;

        while (v28)
        {
          if (*v29 <= 2u && *v29 && *v29 != 2)
          {

LABEL_25:

            goto LABEL_26;
          }

          v30 = sub_219BF78F4();

          ++v29;
          --v28;
          if (v30)
          {
            goto LABEL_25;
          }
        }

        v31 = v47;
        v32 = *(v47 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + 16) = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_2191F9FC8(0, *(v32 + 2) + 1, 1, v32);
          *(v47 + 16) = v32;
        }

        v35 = *(v32 + 2);
        v34 = *(v32 + 3);
        if (v35 >= v34 >> 1)
        {
          v32 = sub_2191F9FC8((v34 > 1), v35 + 1, 1, v32);
        }

        *(v32 + 2) = v35 + 1;
        v32[v35 + 32] = 1;
        *(v47 + 16) = v32;
        break;
      }

      v26 = sub_219BF78F4();

      ++v25;
      --v24;
      if (v26)
      {
        goto LABEL_12;
      }
    }

LABEL_26:
    *(swift_allocObject() + 16) = v46;
    sub_219525650(0, &unk_280E90CE8, type metadata accessor for AudioFeedServiceConfig, sub_2186E71C8, MEMORY[0x277D32F90]);

    sub_219BE31D4();

    sub_219BE2F84();

    sub_219524064(0);
    sub_219BE2F84();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v36 = sub_219BF66A4();
    v37 = swift_allocObject();
    v38 = *(a2 + 16);
    *(v37 + 16) = *a2;
    *(v37 + 32) = v38;
    v39 = *(a2 + 48);
    *(v37 + 48) = *(a2 + 32);
    *(v37 + 64) = v39;
    *(v37 + 80) = v18;
    sub_219150010(a2, v48);
    sub_219BE2F84();

    v40 = swift_allocObject();
    v41 = *(a2 + 16);
    *(v40 + 16) = *a2;
    *(v40 + 32) = v41;
    v42 = *(a2 + 48);
    *(v40 + 48) = *(a2 + 32);
    *(v40 + 64) = v42;
    *(v40 + 80) = v18;
    sub_219150010(a2, v48);
    v43 = sub_219BE2E54();
    v44 = sub_219BE2FD4();

    return v44;
  }
}

uint64_t sub_2195220B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v27 = sub_219BDBD64();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioFeedServiceConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedServiceContext(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_219BF0944();
  sub_219523FC8(v9, v13, type metadata accessor for AudioFeedServiceContext);
  sub_219523F68(v9, type metadata accessor for AudioFeedServiceConfig);
  swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = v13[16];
  v19 = *(v11 + 36);
  v20 = sub_219BEE754();
  (*(*(v20 - 8) + 16))(&v16[v19], &v13[v19], v20);

  sub_219BDBD54();
  v21 = sub_219BDBD44();
  v23 = v22;
  (*(v4 + 8))(v6, v27);
  *v16 = v21;
  *(v16 + 1) = v23;
  *(v16 + 3) = v17;
  v16[16] = v18;
  sub_219523F68(v13, type metadata accessor for AudioFeedServiceContext);
  v24 = sub_219BED564();
  sub_219523F68(v16, type metadata accessor for AudioFeedServiceContext);
  return v24;
}

uint64_t sub_219522360(uint64_t a1, uint64_t a2)
{
  sub_2186FB308(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(a2 + OBJC_IVAR____TtC7NewsUI220AudioFeedDataManager_feedManager);
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186E71C8();

  sub_219BF0F44();
  sub_2187001D8(0);
  sub_2195258C8(&qword_280E90C18, 255, sub_2187001D8, MEMORY[0x277D33000]);
  v8 = sub_219BEDF24();
  (*(v5 + 8))(v7, v4);

  return v8;
}

uint64_t sub_2195224E0(uint64_t *a1, double a2, uint64_t a3, uint64_t *a4)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v5 = qword_280F616F8;
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = *a4;
  v8 = a4[1];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;

  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v9;
  *(v6 + 72) = v10;
  v11 = sub_219BF6214();
  sub_219BE5314("Audio feed successfully performed targeted refresh, identifier=%{public}@, time=%fms", 84, 2, &dword_2186C1000, v5, v11, v6);

  sub_219BEE4A4();
  v12 = sub_219BE2E54();
  v13 = sub_219BE2F74();

  return v13;
}

void sub_219522664(uint64_t *a1@<X8>)
{
  v3 = sub_219BEF6F4();
  sub_219BEF704();
  sub_2195256D0(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2195258C8(&unk_280EE5DD0, 255, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v4 = sub_219BF56C4();

  *a1 = v3;
  a1[1] = v4;
}

void sub_21952275C(uint64_t a1, uint64_t *a2, double a3)
{
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v4 = qword_280F616F8;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  v7 = *a2;
  v6 = a2[1];
  v8 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v5 + 96) = MEMORY[0x277D839F8];
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0xE000000000000000;
  v12 = sub_219BF6214();
  sub_219BE5314("Audio feed failed to perform targeted refresh, identifier=%{public}@, time=%fms, error=%{public}@", 97, 2, &dword_2186C1000, v4, v12, v5);
}

uint64_t sub_2195228D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2186FB308(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioFeedGroup(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = v16 >> 61;
  if ((v16 >> 61) <= 1)
  {
    v39[1] = a2;
    if (v17)
    {
      type metadata accessor for AudioFeedServiceConfig(0);
      sub_2186E71C8();
      sub_219BF0F84();
      v40 = a3;

      sub_2191EFA50(v37);
      v24 = sub_21952008C(v11, v40);

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      sub_21911C3C0(0);
      v39[0] = v3;
      v21 = swift_projectBox();
      sub_219523FC8(v21, v15, type metadata accessor for AudioFeedGroup);
      type metadata accessor for AudioFeedServiceConfig(0);
      sub_2186E71C8();

      sub_219BF0F84();
      sub_2195256D0(0, &unk_280E8BC70, type metadata accessor for AudioFeedGroup, MEMORY[0x277D84560]);
      v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09BA0;
      sub_219523FC8(v15, v23 + v22, type metadata accessor for AudioFeedGroup);
      v40 = a3;

      sub_2191EFA50(v23);
      v24 = sub_21952008C(v11, v40);

      (*(v9 + 8))(v11, v8);
      sub_219523F68(v15, type metadata accessor for AudioFeedGroup);
    }

    return v24;
  }

  else if (v17 == 2)
  {
    sub_21911C3C0(0);
    v27 = v26;
    v28 = swift_projectBox();
    v29 = *(v28 + *(v27 + 48));
    sub_219523FC8(v28, v15, type metadata accessor for AudioFeedGroup);
    v30 = swift_allocObject();
    sub_2195256D0(0, &unk_280E8BC70, type metadata accessor for AudioFeedGroup, MEMORY[0x277D84560]);
    v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    sub_219523FC8(v15, v32 + v31, type metadata accessor for AudioFeedGroup);
    v40 = a3;

    sub_2191EFA50(v32);
    *(v30 + 16) = v40;
    *(v30 + 24) = v29;
    v40 = v30 | 0x6000000000000000;
    sub_2195256D0(0, &unk_280EE6C38, sub_219524064, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v33 = sub_219BE3014();
    sub_219523F68(v15, type metadata accessor for AudioFeedGroup);
    return v33;
  }

  else
  {
    if (v17 == 3)
    {
      v18 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v19 = swift_allocObject();
      v40 = a3;

      sub_2191EFA50(v20);
      *(v19 + 16) = v40;
      *(v19 + 24) = v18;
      v40 = v19 | 0x6000000000000000;
      sub_2195256D0(0, &unk_280EE6C38, sub_219524064, MEMORY[0x277D6CF30]);
      swift_allocObject();
    }

    else
    {
      v34 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (*(a3 + 16))
      {
        v35 = swift_allocObject();
        *(v35 + 16) = a3;
        *(v35 + 24) = v34;
        v36 = v35 | 0x6000000000000000;
      }

      else
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v34;
        v36 = v38 | 0x8000000000000000;
      }

      v40 = v36;
      sub_2195256D0(0, &unk_280EE6C38, sub_219524064, MEMORY[0x277D6CF30]);
      swift_allocObject();
    }

    return sub_219BE3014();
  }
}

uint64_t sub_219523040(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = off_282A60A30;
    type metadata accessor for AudioFeedInteractor();
    v6(v2, &off_282A768F8, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219523104(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219524114(a1, a2, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21952317C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = sub_219524B18(v3, a1, result);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

void sub_2195231D0(void *a1, uint64_t a2)
{
  v3 = sub_219BF5904();
  v4 = [a1 historyItemsForArticleIDs_];

  sub_219525A88();
  v5 = sub_219BF5924();

  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CECE0F0](i, v5);
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    v9 = [v8 hasArticleCompletedListening];
    swift_unknownObjectRelease();
    if (v9)
    {

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_219523E9C(&unk_282A27E10, Strong);

        swift_unknownObjectRelease();
      }

      return;
    }
  }
}

uint64_t sub_21952368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = type metadata accessor for MastheadModelContext(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE61B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914F974(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219523FC8(a2, v14, sub_21914F974);
  v15 = sub_219BF1584();
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_219BE6EC4();
    sub_219BE6F74();

    v16 = (*(v9 + 88))(v11, v8);
    if (v16 == *MEMORY[0x277D6D520])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_18;
      }

      v18 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = off_282A82168;
        v20 = type metadata accessor for AudioFeedViewController();
        v19(v18, &off_282A59080, v20, &off_282A82148);
        swift_unknownObjectRelease();
      }

      goto LABEL_17;
    }

    if (v16 != *MEMORY[0x277D6D518] && v16 != *MEMORY[0x277D6D510])
    {
      (*(v9 + 8))(v11, v8);
      goto LABEL_18;
    }

    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      sub_219523D44(v23);
LABEL_17:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      sub_219523D44(v21);
      swift_unknownObjectRelease();
    }

    sub_219523F68(v14, sub_21914F974);
  }

LABEL_18:
  v24 = sub_219BF1B14();
  v25 = [*(a3 + OBJC_IVAR____TtC7NewsUI219AudioFeedInteractor_bundleSubscriptionManager) cachedSubscription];
  v26 = [v25 isSubscribed];

  v27 = sub_21914E9A4(a3);
  sub_21914EBD4(v30, &v7[*(v5 + 28)]);
  *v7 = v24 & 1;
  v7[1] = v26;
  v7[2] = v27 & 1;
  v7[*(v5 + 32)] = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      sub_219523C28(v7, v28);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_219523F68(v7, type metadata accessor for MastheadModelContext);
}

char *sub_219523AB8(uint64_t a1)
{
  swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_219BE86E4();
      v4 = objc_allocWithZone(sub_219BE9274());
      v5 = sub_219BE9254();
      result = [v3 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v6 = result;
      [result bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15[0] = v5;
      v15[1] = v8;
      v15[2] = v10;
      v15[3] = v12;
      v15[4] = v14;
      off_282A60A88(v15);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219523C28(uint64_t a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC7NewsUI223AudioFeedViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = sub_2195258C8(&qword_280EC5D20, 255, type metadata accessor for AudioFeedViewController, &unk_219C9C958);
    (*(v5 + 32))(a2, v7, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 reloadData];
}

void sub_219523D44(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_219BE86E4();
    v3 = objc_allocWithZone(sub_219BE9274());
    v15 = sub_219BE9254();
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v16[0] = v15;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = v11;
      v16[4] = v13;
      v14 = off_282A60A88;
      type metadata accessor for AudioFeedInteractor();
      v14(v16);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_219523E9C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = off_282A82178[0];
      type metadata accessor for AudioFeedViewController();
      v5(v4, &off_282A59080, a1);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219523F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219523FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219524114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v69 = a2;
  v56 = type metadata accessor for AudioFeedRouteModel(0);
  MEMORY[0x28223BE20](v56);
  v57 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_219BF4B24();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BF0F34();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0614();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195256D0(0, &qword_280EE57C0, sub_218953904, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - v10;
  sub_218953904(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219524DA4(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v59 = a3;
  sub_219BE6EC4();
  v72 = v70[0];
  sub_21898746C(0);
  sub_2195258C8(&unk_280EE54C0, 255, sub_21898746C, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_219BF4B14();
  sub_219BEB244();

  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    v22.n128_f64[0] = (*(v19 + 8))(v21, v18);
    return sub_219524D34(v11, &qword_280EE57C0, sub_218953904, v22);
  }

  v54 = v21;
  v55 = v18;
  v24 = v19;
  (*(v14 + 32))(v16, v11, v13);
  sub_219525650(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v25 = v65;
  sub_219BE5FD4();
  v27 = v66;
  v26 = v67;
  v28 = (*(v66 + 88))(v25, v67);
  v29 = v25;
  if (v28 == *MEMORY[0x277D32DB8] || v28 == *MEMORY[0x277D32D10] || v28 == *MEMORY[0x277D32E00])
  {
    goto LABEL_6;
  }

  if (v28 != *MEMORY[0x277D32E10])
  {
    if (v28 == *MEMORY[0x277D32E18] || v28 == *MEMORY[0x277D32DD8] || v28 == *MEMORY[0x277D32CF8] || v28 == *MEMORY[0x277D32DC0] || v28 == *MEMORY[0x277D32CF0] || v28 == *MEMORY[0x277D32E08] || v28 == *MEMORY[0x277D32DB0] || v28 == *MEMORY[0x277D32DE0] || v28 == *MEMORY[0x277D32D38])
    {
LABEL_6:
      (*(v14 + 8))(v16, v13);
      (*(v24 + 8))(v54, v55);
      return (*(v27 + 8))(v25, v26);
    }

    v49 = v26;
    if (v28 == *MEMORY[0x277D32DE8] || (v50 = v28, v28 == *MEMORY[0x277D32D18]))
    {
      (*(v14 + 8))(v16, v13);
      (*(v24 + 8))(v54, v55);
    }

    else
    {
      v52 = *MEMORY[0x277D32DD0];
      (*(v14 + 8))(v16, v13);
      result = (*(v24 + 8))(v54, v55);
      if (v50 == v52)
      {
        return result;
      }
    }

    return (*(v27 + 8))(v25, v49);
  }

  v53 = v13;
  (*(v27 + 96))(v25, v26);
  v31 = v61;
  v30 = v62;
  v32 = v64;
  (*(v61 + 32))(v62, v29, v64);
  v33 = v63;
  sub_219BF4B34();
  v34 = v58;
  v35 = v33;
  v36 = v60;
  if ((*(v58 + 88))(v35, v60) == *MEMORY[0x277D345D8])
  {
    v37 = v30;
    Strong = swift_unknownObjectWeakLoadStrong();
    v39 = v24;
    if (Strong)
    {
      v40 = Strong;
      v41 = sub_219BF0F14();
      v42 = v57;
      *v57 = v41;
      swift_storeEnumTagMultiPayload();
      v43 = sub_219BF4B14();
      v45 = v44;
      v46 = sub_219BE5F84();
      v48 = v47;
      __swift_project_boxed_opaque_existential_1((v40 + 48), *(v40 + 72));
      v70[0] = v43;
      v70[1] = v45;
      v70[2] = v46;
      v70[3] = v48;
      v71 = 2;
      sub_2196D4AD0(v42, v70);
      sub_219523F68(v42, type metadata accessor for AudioFeedRouteModel);
      (*(v31 + 8))(v62, v64);
      (*(v14 + 8))(v16, v53);
      (*(v39 + 8))(v54, v55);

      return swift_unknownObjectRelease();
    }

    else
    {
      (*(v31 + 8))(v37, v64);
      (*(v14 + 8))(v16, v53);
      return (*(v24 + 8))(v54, v55);
    }
  }

  else
  {
    v51 = sub_219BF0F14();
    sub_21914CD14(v51, v16);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v30, v32);
    (*(v14 + 8))(v16, v53);
    (*(v24 + 8))(v54, v55);
    return (*(v34 + 8))(v63, v36);
  }
}

uint64_t sub_219524B18(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_2195256D0(0, &qword_27CC15358, type metadata accessor for AudioFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v14 - v4);
  v6 = type metadata accessor for AudioFeedRouteModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914E438(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_219524D34(v5, &qword_27CC15358, type metadata accessor for AudioFeedRouteModel, v10);
  }

  else
  {
    sub_21952576C(v5, v9, type metadata accessor for AudioFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v12 = sub_2196D5548(v9);
      sub_219523F68(v9, type metadata accessor for AudioFeedRouteModel);
      swift_unknownObjectRelease();
      return v12;
    }

    sub_219523F68(v9, type metadata accessor for AudioFeedRouteModel);
  }

  return 0;
}

uint64_t sub_219524D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  sub_2195256D0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_219524DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_2195258C8(&qword_280EBC460, 255, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v8[3] = sub_2195258C8(&qword_280EDCBF0, 255, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

double sub_219524EA0(uint64_t a1)
{
  v1 = sub_21951EDF4(a1);
  v2 = sub_218CD10C8(v1);

  if (v2[2] && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    sub_219523E9C(v2, Strong);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_219524F58(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = off_282A82178[0];
        type metadata accessor for AudioFeedViewController();
        v5(v4, &off_282A59080, a1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_219525058(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1 == 4 || a1 == 2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = off_282A82178[0];
          type metadata accessor for AudioFeedViewController();
          v5(v4, &off_282A59080, &unk_282A27EB0);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_219525158()
{
  result = qword_280E8F2A0;
  if (!qword_280E8F2A0)
  {
    sub_21870F564(255, &qword_280E8F2A8, &type metadata for AudioFeedGroupKind, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F2A0);
  }

  return result;
}

uint64_t sub_2195251D4(uint64_t a1, uint64_t a2)
{
  sub_21870F564(0, &qword_280E8F2A8, &type metadata for AudioFeedGroupKind, MEMORY[0x277D83940]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21952525C()
{
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186E71C8();
  return sub_219BEE814();
}

uint64_t objectdestroy_30Tm()
{

  return swift_deallocObject();
}

unint64_t sub_21952533C()
{
  result = qword_27CC1B640;
  if (!qword_27CC1B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B640);
  }

  return result;
}

void sub_2195254E0(uint64_t a1)
{
  if (!qword_280E90CE0)
  {
    sub_219525650(255, &unk_280E90CE8, type metadata accessor for AudioFeedServiceConfig, sub_2186E71C8, MEMORY[0x277D32F90]);
    sub_219524064(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90CE0);
    }
  }
}

void sub_219525650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2195256D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219525734@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *a1;
  a2[1] = v3;
}

uint64_t sub_21952576C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195258C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_66Tm()
{
  v1 = (type metadata accessor for AudioFeedExpandRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2186FB308(0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

unint64_t sub_219525A88()
{
  result = qword_280E8E1B0;
  if (!qword_280E8E1B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E1B0);
  }

  return result;
}

unint64_t sub_219525B00()
{
  result = qword_27CC1B658;
  if (!qword_27CC1B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B658);
  }

  return result;
}

uint64_t sub_219525B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_2195271B4(0, &qword_27CC0AEC0, sub_21878E148, &type metadata for FollowingNotificationsLayoutModel, MEMORY[0x277D6DA50]);
  v9 = sub_219BE75E4();
  if (v25)
  {
    if (v25 == 1)
    {
      memcpy(v26, &v24[32], 0x1EAuLL);
      sub_2186CB1F0(&v23, v20);
      v10 = v21;
      v11 = v22;
      v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v12);
      v18 = a3;
      v19 = a4;
      v14 = sub_2195269F4(a1, v13, v26, sub_2195262BC, v17, v5, v10, *(v11 + 16));
      sub_218B107AC(v26);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      v26[2] = *&v24[32];
      v26[3] = *&v24[48];
      v26[4] = *&v24[64];
      v26[0] = *v24;
      v26[1] = *&v24[16];
      MEMORY[0x28223BE20](v9);
      v18 = a3;
      v19 = a4;
      v14 = sub_219525DF8(v23, v26, sub_2195262A4);
    }
  }

  else
  {
    v15 = memcpy(v26, v24, 0x1EAuLL);
    MEMORY[0x28223BE20](v15);
    v18 = a3;
    v19 = a4;
    v14 = sub_21952631C(a1, v23, v26, sub_2195274F8, v17, v4);
    sub_218B107AC(v26);
  }

  return v14;
}

uint64_t sub_219525DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v7 = a3();
  v8 = sub_219BE8284();
  v9 = *&v8[OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_onTap];

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a1;

  v11 = *(v4 + 72);
  v12 = sub_219BE8284();
  [v12 setFrame_];
  [v12 setContentEdgeInsets_];
  __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
  sub_218C043F8(v12, *(a1 + 32), *(a1 + 40), *(a2 + 40));

  return v7;
}

uint64_t sub_219525F38(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE6174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_219BE8284();

  v8 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
  v9 = *&v7[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = sub_219608868();
    v12 = *&v7[v8];
    *&v7[v8] = v11;
    v10 = v11;

    v7 = v12;
  }

  type metadata accessor for NotificationSwitch(0);
  sub_2195274B0(&qword_27CC11C08, type metadata accessor for NotificationSwitch, &unk_219C92824);
  sub_219BE68D4();

  swift_unownedRetainStrong();
  v13 = swift_unknownObjectWeakLoadStrong();

  if (v13)
  {
    swift_unownedRetainStrong();
    sub_2195271B4(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
    sub_219BE5FC4();
    sub_218A8E8A8(v15, v5);

    swift_unknownObjectRelease();
    sub_218A26564(v15);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_219526154(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unownedRetainStrong();

    v7[0] = a2;
    v8 = 2;
    v4 = *(*(Strong + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);

    v6(v7, ObjectType, v4);
    sub_218A26564(v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_219526224()
{
  sub_2191CE1C8(0);
  sub_219BF6454();
  sub_2192ED928(0);
  return sub_219BF6454();
}

uint64_t sub_219526274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_219525B9C(a1, a3, *a4, a5);
  *a2 = result;
  return result;
}

id sub_21952631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__n128), uint64_t a5, uint64_t a6)
{
  v67 = a2;
  v68 = a3;
  v63 = a1;
  sub_2195271B4(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
  v64 = *(v8 - 8);
  v65 = v8;
  v62 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v58 - v9;
  v10 = sub_219BEB824();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219527294(0, &qword_280EE3590, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_219BEB804();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BEB7A4();
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v69 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4(v20);
  v23 = sub_219BE8284();
  v24 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  swift_beginAccess();
  v23[v24] = 0;

  v25 = sub_219BE8284();
  v26 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
  v27 = *&v25[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v29 = sub_219608868();
    v30 = *&v25[v26];
    *&v25[v26] = v29;
    v31 = v29;

    v25 = v30;
  }

  sub_21952721C(0);
  v33 = &v18[*(v32 + 48)];
  v34 = *MEMORY[0x277D74A98];
  v35 = sub_219BEB724();
  (*(*(v35 - 8) + 104))(v18, v34, v35);
  *v33 = sub_218973C20;
  v33[1] = 0;
  (*(v16 + 104))(v18, *MEMORY[0x277D74AD8], v15);
  v36 = sub_219BEB754();
  (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
  sub_219BEB794();
  v37 = v66;
  sub_219BEB6D4();
  sub_219527294(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v38 = v70;
  v39 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  (*(v38 + 16))(v40 + v39, v37, v71);
  v41 = v22;
  sub_219BF69D4();

  v42 = sub_219BE8284();
  v43 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
  v44 = *&v42[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v46 = sub_219608868();
    v47 = *&v42[v43];
    *&v42[v43] = v46;
    v45 = v46;

    v42 = v47;
  }

  v48 = *&v45[OBJC_IVAR____TtC7NewsUI218NotificationSwitch_onValueChanged];
  v49 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRelease();
  swift_unownedRetain();

  v50 = v64;
  v51 = v59;
  v52 = v65;
  (*(v64 + 16))(v59, v63, v65);
  v53 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  *(v54 + 24) = a6;
  (*(v50 + 32))(v54 + v53, v51, v52);

  v55 = __swift_project_boxed_opaque_existential_1((a6 + 32), *(a6 + 56));
  v56 = sub_219BE8284();
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  sub_2191CE25C(v67, v56, v68, v72, *v55);

  sub_218D9828C(v72);
  (*(v70 + 8))(v37, v71);
  (*(v60 + 8))(v69, v61);
  return v41;
}

id sub_2195269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (**a8)(uint64_t, uint64_t))
{
  v78 = a3;
  v79 = a8;
  v74 = a1;
  sub_2195271B4(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
  v75 = *(v11 - 8);
  v76 = v11;
  v73 = *(v75 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = &v68 - v12;
  v13 = sub_219BEB824();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v77 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219527294(0, &qword_280EE3590, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v68 - v16;
  v18 = sub_219BEB804();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_219BEB7A4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v81 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v70 = v26;
  v27 = *(v26 + 16);
  v69 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a7;
  v28 = v27(v24);
  v29 = a4(v28);
  v30 = sub_219BE8284();
  v31 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  swift_beginAccess();
  v30[v31] = 0;

  v32 = sub_219BE8284();
  v33 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
  v34 = *&v32[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v36 = sub_219608868();
    v37 = *&v32[v33];
    *&v32[v33] = v36;
    v38 = v36;

    v32 = v37;
  }

  sub_21952721C(0);
  v40 = &v21[*(v39 + 48)];
  v41 = *MEMORY[0x277D74A98];
  v42 = sub_219BEB724();
  (*(*(v42 - 8) + 104))(v21, v41, v42);
  *v40 = sub_218973C20;
  v40[1] = 0;
  (*(v19 + 104))(v21, *MEMORY[0x277D74AD8], v18);
  v43 = sub_219BEB754();
  (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
  sub_219BEB794();
  v44 = v77;
  sub_219BEB6D4();
  sub_219527294(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v45 = v82;
  v46 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_219C09BA0;
  (*(v45 + 16))(v47 + v46, v44, v83);
  v48 = v29;
  sub_219BF69D4();

  v49 = sub_219BE8284();
  v50 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
  v51 = *&v49[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    v53 = sub_219608868();
    v54 = *&v49[v50];
    *&v49[v50] = v53;
    v52 = v53;

    v49 = v54;
  }

  v55 = *&v52[OBJC_IVAR____TtC7NewsUI218NotificationSwitch_onValueChanged];
  v56 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRelease();
  swift_unownedRetain();

  v57 = v75;
  v58 = v68;
  v59 = v76;
  (*(v75 + 16))(v68, v74, v76);
  v60 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  *(v61 + 24) = a6;
  (*(v57 + 32))(v61 + v60, v58, v59);

  v62 = __swift_project_boxed_opaque_existential_1((a6 + 32), *(a6 + 56));
  v63 = sub_219BE8284();
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v64 = *v62;
  v65 = v69;
  v66 = v80;
  sub_218D95C1C(v69, v63, v78, v84, v64, v80, v79);

  sub_218D9828C(v84);
  (*(v82 + 8))(v44, v83);
  (*(v71 + 8))(v81, v72);
  (*(v70 + 8))(v65, v66);
  return v48;
}

void sub_2195271B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21952721C(uint64_t a1)
{
  if (!qword_280EE3598)
  {
    sub_219BEB724();
    sub_218788800();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3598);
    }
  }
}

void sub_219527294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_3Tm_12()
{
  sub_2195271B4(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  swift_unownedRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2195273FC()
{
  sub_2195271B4(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_219525F38(v1, v2);
}

uint64_t sub_2195274B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9C290;
  if (!qword_280E9C290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219527574(uint64_t a1)
{
  sub_2186D868C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E90250, MEMORY[0x277D33C48], 0);
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280E910C0, MEMORY[0x277D32B88], 1);
          if (v5 <= 0x3F)
          {
            sub_2186C709C(319, &qword_280E8FD40, MEMORY[0x277D34618], 1);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2195276AC(uint64_t a1)
{
  v3 = type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v23 = type metadata accessor for SportsTopStoriesTagFeedGroupEmitter;
  v24 = v1;
  sub_21952B41C(v1, v6, type metadata accessor for SportsTopStoriesTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_219528014(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219528110(0);
  sub_219BE2F64();

  v11 = v23;
  sub_21952B41C(v1, v6, v23);
  v12 = swift_allocObject();
  sub_219528014(v6, v12 + v7);
  *(v12 + v8) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_219528218;
  *(v13 + 24) = v12;

  v14 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v15 = v24;
  sub_21952B41C(v24, v6, v11);
  v16 = swift_allocObject();
  sub_219528014(v6, v16 + v7);
  *(v16 + v8) = a1;

  v17 = sub_219BE2E54();
  sub_218A42380(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21952B41C(v15, v6, v11);
  v18 = swift_allocObject();
  sub_219528014(v6, v18 + v7);
  v19 = sub_219BE2E54();
  v20 = sub_219BE3064();

  return v20;
}

uint64_t sub_219527A58@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D868C(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x2000000000000004;
  return result;
}

uint64_t sub_219527AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  a2[4] = sub_21952B3D4(&qword_280EA18F8, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs, &unk_219CAEE1C);
  a2[5] = sub_21952B3D4(&qword_27CC1B6A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs, &unk_219CAEDF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21952B41C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
}

uint64_t sub_219527BF4()
{
  sub_2186D868C(0);

  return sub_219BEDCA4();
}

uint64_t sub_219527C20@<X0>(uint64_t *a2@<X8>)
{
  sub_21952B3D4(&unk_27CC1B688, type metadata accessor for SportsTopStoriesTagFeedGroupEmitter, &unk_219C86A04);
  sub_219BED704();
  sub_219529C88(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186D868C(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_219529C88(0, &qword_27CC1B6A8, type metadata accessor for SportsTopStoriesTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21952B484();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219527DBC(uint64_t a1)
{
  sub_21952B3D4(&unk_27CC1B678, type metadata accessor for SportsTopStoriesTagFeedGroupEmitter, &unk_219C869AC);

  return sub_219BE2324();
}

uint64_t sub_219527F48(uint64_t a1, __n128 a2)
{
  sub_219BEF0B4();
  v2 = *(v5 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BEF0B4();
  swift_unknownObjectRetain();

  sub_21952A520(v2);
  swift_unknownObjectRelease();

  v3 = sub_219BE31C4();

  return v3;
}

uint64_t sub_219528014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219528110(uint64_t a1)
{
  if (!qword_27CC1B698)
  {
    sub_219529C88(255, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1B698);
    }
  }
}

void *sub_2195281A8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21952A9BC(a4, *a1);
  if (!v4)
  {
    a2 = sub_2195282C0(a4, v7, a2);
  }

  return a2;
}

void *sub_219528218(uint64_t *a1, void *a2)
{
  v5 = *(type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2195281A8(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_2195282C0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v131 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_219529C88(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v128 = &v113 - v7;
  sub_219529C88(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v113 - v9;
  sub_219529C88(0, &qword_280E91A70, sub_2189AD5C8, v5);
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v113 - v11;
  v12 = sub_219BF2AB4();
  v126 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v123 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_219BF2034();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v132 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219529C88(0, &unk_280E8FF30, sub_218A42400, v5);
  MEMORY[0x28223BE20](v15 - 8);
  v119 = &v113 - v16;
  sub_219529C88(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  MEMORY[0x28223BE20](v17 - 8);
  v120 = &v113 - v18;
  v117 = type metadata accessor for SportsTopStoriesTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v117);
  v118 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BF1934();
  v20 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v130 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BF3484();
  v139 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = (&v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_219BF3C84();
  v145 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = (&v113 - v27);
  MEMORY[0x28223BE20](v29);
  v116 = &v113 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = (&v113 - v32);
  v34 = sub_219BF3E84();
  v133 = *(v34 - 8);
  v134 = v34;
  MEMORY[0x28223BE20](v34);
  v136 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v138 = &v113 - v37;
  v38 = a2;
  v127 = v12;
  if (a2 >> 62)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v137 = v20;
  if (v39)
  {
    v147 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v114 = v25;
    v115 = a3;
    v41 = v147;
    v42 = v38;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v43 = 0;
      LODWORD(v142) = *MEMORY[0x277D34128];
      v44 = (v145 + 104);
      v141 = (v145 + 32);
      do
      {
        *v33 = MEMORY[0x21CECE0F0](v43, v42);
        (*v44)(v33, v142, v23);
        v147 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_218C34A88((v45 > 1), v46 + 1, 1);
          v41 = v147;
        }

        ++v43;
        *(v41 + 16) = v46 + 1;
        (*(v145 + 4))(v41 + ((v145[80] + 32) & ~v145[80]) + *(v145 + 9) * v46, v33, v23);
        v42 = v38;
      }

      while (v39 != v43);
    }

    else
    {
      v47 = (v38 + 32);
      LODWORD(v142) = *MEMORY[0x277D34128];
      v48 = *(v145 + 13);
      v140 = v145 + 32;
      v141 = v48;
      do
      {
        *v28 = *v47;
        (v141)(v28, v142, v23);
        v147 = v41;
        v50 = *(v41 + 16);
        v49 = *(v41 + 24);
        swift_unknownObjectRetain();
        if (v50 >= v49 >> 1)
        {
          sub_218C34A88((v49 > 1), v50 + 1, 1);
          v41 = v147;
        }

        *(v41 + 16) = v50 + 1;
        (*(v145 + 4))(v41 + ((v145[80] + 32) & ~v145[80]) + *(v145 + 9) * v50, v28, v23);
        ++v47;
        --v39;
      }

      while (v39);
    }

    a3 = v115;
    v25 = v114;
  }

  v51 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v51);
  sub_218F0BB90(v51);
  sub_219BF3E74();
  if (a3 >> 62)
  {
    v52 = sub_219BF7214();
  }

  else
  {
    v52 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v52)
  {
    v147 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v52 & ~(v52 >> 63), 0);
    if ((v52 & 0x8000000000000000) == 0)
    {
      v53 = v147;
      v54 = a3;
      if ((a3 & 0xC000000000000001) != 0)
      {
        v55 = 0;
        LODWORD(v142) = *MEMORY[0x277D33E08];
        v141 = (v139 + 104);
        LODWORD(v140) = *MEMORY[0x277D34130];
        v56 = (v145 + 104);
        v139 = v145 + 32;
        v57 = v23;
        v58 = v116;
        do
        {
          v59 = v54;
          v60 = MEMORY[0x21CECE0F0](v55);
          v61 = swift_allocObject();
          *(v61 + 16) = v60;
          v63 = v143;
          v62 = v144;
          *v143 = v61;
          (*v141)(v63, v142, v62);
          sub_219BF1AC4();
          (*v56)(v58, v140, v57);
          v147 = v53;
          v65 = *(v53 + 16);
          v64 = *(v53 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_218C34A88((v64 > 1), v65 + 1, 1);
            v53 = v147;
          }

          ++v55;
          *(v53 + 16) = v65 + 1;
          (*(v145 + 4))(v53 + ((v145[80] + 32) & ~v145[80]) + *(v145 + 9) * v65, v58, v57);
          v54 = v59;
        }

        while (v52 != v55);
      }

      else
      {
        v67 = v25;
        v68 = (a3 + 32);
        LODWORD(v142) = *MEMORY[0x277D33E08];
        v69 = (v139 + 104);
        LODWORD(v141) = *MEMORY[0x277D34130];
        v70 = (v145 + 104);
        v140 = v145 + 32;
        do
        {
          v71 = *v68;
          v72 = swift_allocObject();
          *(v72 + 16) = v71;
          v74 = v143;
          v73 = v144;
          *v143 = v72;
          (*v69)(v74, v142, v73);

          sub_219BF1AC4();
          (*v70)(v67, v141, v23);
          v147 = v53;
          v76 = *(v53 + 16);
          v75 = *(v53 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_218C34A88((v75 > 1), v76 + 1, 1);
            v53 = v147;
          }

          *(v53 + 16) = v76 + 1;
          (*(v145 + 4))(v53 + ((v145[80] + 32) & ~v145[80]) + *(v145 + 9) * v76, v67, v23);
          ++v68;
          --v52;
        }

        while (v52);
      }

      v66 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  v66 = MEMORY[0x277D84F90];
LABEL_32:
  sub_218F0B984(v66);
  sub_218F0BA7C(v66);
  sub_218F0BB90(v66);
  sub_219BF3E74();
  v141 = type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  v77 = (v129 + *(v141 + 24));
  v78 = v77[3];
  v143 = v77[4];
  v144 = v78;
  v142 = __swift_project_boxed_opaque_existential_1(v77, v78);
  sub_2186D868C(0);
  v79 = v118;
  sub_219BEDD14();
  v80 = *(v117 + 20);
  sub_219BEF0B4();
  v81 = *(v147 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v82 = [v81 backingTag];

  v83 = [v82 identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v84 = sub_219BEC004();
  v85 = *(v84 - 8);
  v139 = *(v85 + 56);
  v140 = (v85 + 56);
  v86 = v120;
  (v139)(v120, 1, 1, v84);
  sub_218A42400(0);
  v88 = v119;
  (*(*(v87 - 8) + 56))(v119, 1, 1, v87);
  sub_219BF1764();

  sub_21952B2C4(v88, &unk_280E8FF30, sub_218A42400);
  sub_21952B2C4(v86, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v89 = *(v137 + 8);
  v137 += 8;
  v145 = v89;
  (v89)(&v79[v80], v135);
  sub_219529C88(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v90 = v133;
  v91 = *(v133 + 72);
  v92 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_219C09EC0;
  v94 = v93 + v92;
  v95 = *(v90 + 16);
  v96 = v134;
  v95(v94, v138, v134);
  v95(v94 + v91, v136, v96);
  (v139)(v86, 1, 1, v84);
  sub_219A95188(v66);
  sub_219A95188(v66);
  sub_219A951A0(v66);
  sub_219A951B8(v66);
  sub_219A952CC(v66);
  sub_219A952E4(v66);
  sub_219A953F8(v66);
  sub_219BF2024();
  v97 = *(v141 + 20);
  sub_2189AD5C8(0);
  v99 = v98;
  v100 = *(v98 - 8);
  v101 = v121;
  (*(v100 + 16))(v121, v129 + v97, v98);
  (*(v100 + 56))(v101, 0, 1, v99);
  sub_219BEF0B4();
  v102 = *(v147 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v103 = sub_219BF35D4();
  (*(*(v103 - 8) + 56))(v122, 1, 1, v103);
  LOBYTE(v146) = 11;
  sub_218A42380(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v104 = *(v146 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v105 = sub_219BF2774();
  (*(*(v105 - 8) + 56))(v128, 1, 1, v105);
  v106 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v106 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v107 = v123;
  sub_219BF2A84();
  v108 = v130;
  v109 = v132;
  v110 = sub_219BF2194();
  (*(v126 + 8))(v107, v127);
  (*(v124 + 8))(v109, v125);
  (v145)(v108, v135);
  v111 = v134;
  v112 = *(v133 + 8);
  v112(v136, v134);
  v112(v138, v111);
  return v110;
}

uint64_t sub_21952960C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  return v2(v5, *(a1 + 48));
}

uint64_t sub_219529654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  sub_219529758(a1, a2);
  sub_218A42380(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219529758@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  sub_219529C88(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v22 = &v19 - v7;
  v8 = sub_219BEF554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v19 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v12 = sub_219BF1904();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D868C(0);
  (*(*(v16 - 8) + 16))(a3, v4, v16);
  (*(v13 + 16))(v15, v20, v12);
  v20 = sub_219BEDCB4();
  sub_219BEDCC4();
  (*(v9 + 104))(v19, *MEMORY[0x277D32628], v8);
  type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v17 = sub_219BEE5D4();
  (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  type metadata accessor for SportsTopStoriesTagFeedGroup(0);
  sub_219BED854();
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_219529B00(uint64_t a1)
{
  type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  sub_21952B3D4(&unk_27CC1B688, type metadata accessor for SportsTopStoriesTagFeedGroupEmitter, &unk_219C86A04);
  sub_219BED704();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  sub_219BEF194();

  return result;
}

void sub_219529C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219529CEC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BEE6E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEFBD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
    __swift_project_boxed_opaque_existential_1((a3 + *(v14 + 32)), *(a3 + *(v14 + 32) + 24));
    (*(v11 + 104))(v13, *MEMORY[0x277D32978], v10);
    v15 = sub_219BF0034();
    (*(v11 + 8))(v13, v10);
    v16 = *(v15 + 16);
    if (v16)
    {
      v25 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v18 = *(v7 + 16);
      v17 = v7 + 16;
      v23[1] = v15;
      v24 = v18;
      v19 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v20 = *(v17 + 56);
      v21 = (v17 - 8);
      do
      {
        v24(v9, v19, v6);
        sub_219BEE6D4();
        (*v21)(v9, v6);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v19 += v20;
        --v16;
      }

      while (v16);

      return v25;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
  }

  return a2;
}

uint64_t sub_219529F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF4684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v7 + 36)), *(a1 + *(v7 + 36) + 24));
  (*(v4 + 104))(v6, *MEMORY[0x277D344A0], v3);
  sub_219BF4C14();
  (*(v4 + 8))(v6, v3);
  swift_getObjectType();
  sub_219BF2F74();
  v8 = sub_219BE31C4();

  return v8;
}

unint64_t sub_21952A120(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_219BF4254();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v6 = qword_280F61708;
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  if (v5 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = [objc_msgSend(a3 backingTag)];
  swift_unknownObjectRelease();
  v11 = sub_219BF5414();
  v13 = v12;

  *(v7 + 96) = MEMORY[0x277D837D0];
  *(v7 + 104) = sub_2186FC3BC();
  *(v7 + 72) = v11;
  *(v7 + 80) = v13;
  v14 = sub_219BF6214();
  sub_219BE5314("Sports Top Stories found %ld standings for tag %{public}@", 57, 2, &dword_2186C1000, v6, v14, v7);

  MEMORY[0x28223BE20](v15);
  v18[2] = a1;
  v18[3] = a3;
  v16 = sub_218DE06B4(sub_21952B3B8, v18, v5);

  return v16;
}

uint64_t sub_21952A2FC@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_219BF6394();
  v8 = [a2 alternativeFeedDescriptor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 feedConfiguration];
  }

  else
  {
    v10 = [a2 feedConfiguration];
  }

  v11 = sub_218CCED3C(v7, v6, 0xD000000000000010, 0x8000000219CD89F0, v10);
  result = swift_unknownObjectRelease();
  *a3 = v11;
  return result;
}

void sub_21952A3D0(void *a2@<X8>)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v3 = qword_280F61708;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_219BE5314("Sports Top Stories could not fetch standings, error=%{public}@", 62, 2, &dword_2186C1000, v3, v4, v5);

  *a2 = MEMORY[0x277D84F90];
}

uint64_t sub_21952A520(void *a1)
{
  v2 = v1;
  v4 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BF43B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC6B4();
  sub_219BDC8A4();

  if (v26[15] == 1)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v9 = qword_280F61708;
    v10 = sub_219BF6214();
    v11 = [objc_msgSend(a1 backingTag];
    swift_unknownObjectRelease();
    sub_219BF5414();

    sub_219BF4CE4();
    sub_219BF49F4();
    swift_allocObject();
    *v8 = sub_219BF49E4();
    v12 = MEMORY[0x277D343F0];
  }

  else
  {
    sub_2189D2C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v14 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    v15 = sub_219BF5414();
    v17 = v16;

    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    sub_219BF4CE4();
    sub_219BF4CB4();
    v12 = MEMORY[0x277D34400];
  }

  v18 = (*(v6 + 104))(v8, *v12, v5);
  MEMORY[0x28223BE20](v18);
  *&v26[-16] = v2;
  *&v26[-8] = v8;
  sub_219205570(0);
  sub_219BE3204();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21952B350;
  *(v20 + 24) = v19;
  v21 = a1;
  v22 = sub_219BE2E54();
  sub_219529C88(0, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
  sub_219BE2F74();

  v23 = sub_219BE2E54();
  v24 = sub_219BE3064();

  (*(v6 + 8))(v8, v5);
  return v24;
}

uint64_t sub_21952A9BC(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v4 = sub_219BDBD34();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v62 - v7;
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SportsTopStoriesTagFeedGroupEmitter(0) + 20);
  v69 = v2;
  v13 = v2 + v12;
  v14 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v15 = *(v9 + 8);
  v15(v11, v8);
  v77 = v78;
  sub_219BEF134();
  sub_219BEF524();
  v15(v11, v8);
  v72 = v78;
  v75 = v14;
  v76 = a1;
  v66 = v13;
  sub_219BEF134();
  sub_219BEF524();
  v73 = v8;
  v65 = v15;
  v15(v11, v8);
  v16 = v78;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v17 = qword_280F61708;
  sub_2186F20D4(0);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_219C0B8C0;
  v20 = MEMORY[0x277D83B88];
  v21 = MEMORY[0x277D83C10];
  *(v18 + 56) = MEMORY[0x277D83B88];
  *(v18 + 64) = v21;
  *(v18 + 32) = v72;
  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  *(v18 + 72) = v77;
  v67 = v16;
  if (v16)
  {
    v22 = 0x6C616E6F73726550;
  }

  else
  {
    v22 = 0xD000000000000015;
  }

  if (v16)
  {
    v23 = 0xEC00000064657A69;
  }

  else
  {
    v23 = 0x8000000219D25400;
  }

  *(v18 + 136) = MEMORY[0x277D837D0];
  *(v18 + 144) = sub_2186FC3BC();
  *(v19 + 112) = v22;
  *(v19 + 120) = v23;
  v24 = sub_219BF6214();
  sub_219BE5314("Sports top stories selecting headlines with min=%ld, max=%ld, ordering=%{public}@", 81, 2, &dword_2186C1000, v17, v24, v19);

  sub_219BEF134();
  sub_219BEF524();
  v25 = v73;
  v26 = v65;
  v65(v11, v73);
  v64 = v78;
  sub_219BEF134();
  sub_219BEF524();
  v26(v11, v25);
  v27 = v74;
  if (v64 != 1)
  {
    i = v74;
    goto LABEL_14;
  }

  v28 = v78;
  v29 = v63;
  v30 = sub_219BDBD24();
  MEMORY[0x28223BE20](v30);
  *(&v62 - 2) = v28;
  *(&v62 - 1) = v29;
  v31 = sub_2195EB294(sub_2194131A4, &v62 - 4, v27);
  if (v31 >> 62)
  {
    goto LABEL_65;
  }

  sub_219BF7924();
  sub_218731D50();
  for (i = v31; ; i = sub_219BF7534())
  {

    (*(v70 + 8))(v29, v71);
LABEL_14:
    sub_219BEF134();
    sub_219BEF524();
    v26(v11, v73);
    v33 = v68;
    v34 = sub_219BDBC54();
    MEMORY[0x28223BE20](v34);
    *(&v62 - 2) = v33;
    v35 = sub_2195EB294(sub_21932C664, &v62 - 4, i);
    if (v35 >> 62)
    {
      v11 = sub_218731D50();
      v36 = sub_219BF7534();
    }

    else
    {

      sub_219BF7924();
      v11 = sub_218731D50();
      v36 = v35;
    }

    v37 = v67;

    (*(v70 + 8))(v33, v71);
    v38 = sub_219529CEC(v37, v36, v69);

    sub_218731D50();
    v39 = sub_219BF5904();
    v29 = FCPromoteOneHeadlineIgnoringProminence();

    if (v29)
    {
      v40 = sub_219BF5924();

      v38 = v40;
    }

    v41 = v77;
    if (v77 < 0)
    {
      __break(1u);
    }

    else
    {
      v41 = v38 & 0xFFFFFFFFFFFFFF8;
      v33 = (v38 >> 62);
      if (!(v38 >> 62))
      {
        v42 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42 >= v77)
        {
          v43 = v77;
        }

        else
        {
          v43 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v77)
        {
          v44 = v43;
        }

        else
        {
          v44 = 0;
        }

        if (v42 < v44)
        {
          goto LABEL_63;
        }

        goto LABEL_27;
      }
    }

    v29 = (v38 < 0 ? v38 : v41);
    v60 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      break;
    }

    if (v60 >= v77)
    {
      v61 = v77;
    }

    else
    {
      v61 = v60;
    }

    if (v60 < 0)
    {
      v61 = v77;
    }

    if (v77)
    {
      v44 = v61;
    }

    else
    {
      v44 = 0;
    }

    if (sub_219BF7214() < v44)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_27:
    if ((v38 & 0xC000000000000001) != 0)
    {

      if (v44)
      {
        v45 = 0;
        do
        {
          v46 = v45 + 1;
          sub_219BF7334();
          v45 = v46;
        }

        while (v44 != v46);
      }
    }

    else
    {
    }

    if (v33)
    {
      v11 = sub_219BF7564();
      v47 = v49;
      v29 = v50;
      v48 = v51;
    }

    else
    {
      v29 = 0;
      v11 = (v38 & 0xFFFFFFFFFFFFFF8);
      v47 = (v38 & 0xFFFFFFFFFFFFFF8) + 32;
      v48 = (2 * v44) | 1;
    }

    v52 = (v48 >> 1) - v29;
    if (!__OFSUB__(v48 >> 1, v29))
    {
      v53 = v72;
      if (v52 < v72)
      {
        v54 = sub_219BEEDD4();
        sub_21952B3D4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        *v55 = v53;
        v55[1] = v52;
        (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D32400], v54);
        swift_willThrow();
        swift_unknownObjectRelease();
        return v54;
      }

      if (v48)
      {
        sub_219BF7934();
        swift_unknownObjectRetain_n();
        v57 = swift_dynamicCastClass();
        if (!v57)
        {
          swift_unknownObjectRelease();
          v57 = MEMORY[0x277D84F90];
        }

        v58 = *(v57 + 16);

        if (v58 != v52)
        {
          swift_unknownObjectRelease_n();
          goto LABEL_40;
        }

        v54 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v54)
        {
          return v54;
        }

        v54 = MEMORY[0x277D84F90];
      }

      else
      {
LABEL_40:
        sub_218B667DC(v11, v47, v29, v48);
        v54 = v56;
      }

      swift_unknownObjectRelease();
      return v54;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    sub_218731D50();
  }

  __break(1u);
  return result;
}

uint64_t sub_21952B2C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219529C88(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21952B358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_219205570(0);
  result = v5(a1, a1 + *(v6 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_21952B3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21952B41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21952B484()
{
  result = qword_27CC1B6B0;
  if (!qword_27CC1B6B0)
  {
    sub_219529C88(255, &qword_27CC1B6A8, type metadata accessor for SportsTopStoriesTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B6B0);
  }

  return result;
}

uint64_t sub_21952B50C(uint64_t a1)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_21952B90C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  sub_219BEF3D4();
  v1 = sub_219BEE814();

  return v1;
}

uint64_t sub_21952B5B0@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_21952B820(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  strcpy((inited + 32), "expandResult");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = type metadata accessor for TodayExpandResult(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_21952B7BC(v3, boxed_opaque_existential_1);
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_21952B820(0, &qword_27CC1B6C8, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D6CC20]);
  a2[3] = v7;
  a2[4] = sub_21952B884();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21952B708(uint64_t a1)
{
  sub_21952B90C(&unk_27CC1B6D8, type metadata accessor for TodayPrewarmResult, &unk_219C86AFC);

  return sub_219BE2324();
}

uint64_t sub_21952B7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayExpandResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21952B820(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21952B884()
{
  result = qword_27CC1B6D0;
  if (!qword_27CC1B6D0)
  {
    sub_21952B820(255, &qword_27CC1B6C8, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B6D0);
  }

  return result;
}

uint64_t sub_21952B90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21952B978@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BE4B94();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D34950])
  {
    sub_219BF7514();
    __break(1u);
  }

  else
  {
    if (v8 == *MEMORY[0x277D34938])
    {

      sub_219BE4AA4();
      v9 = MEMORY[0x277D34898];
LABEL_11:
      v10 = *v9;
      v11 = sub_219BE49D4();
      return (*(*(v11 - 8) + 104))(a1, v10, v11);
    }

    if (v8 == *MEMORY[0x277D34948])
    {

      sub_219BE4AA4();
      v9 = MEMORY[0x277D348C0];
      goto LABEL_11;
    }

    if (v8 == *MEMORY[0x277D34960] || v8 == *MEMORY[0x277D34958])
    {

      sub_219BE4AE4();
      v9 = MEMORY[0x277D348A0];
      goto LABEL_11;
    }

    if (v8 == *MEMORY[0x277D34940])
    {

      sub_219BE4AA4();
      v9 = MEMORY[0x277D348A8];
      goto LABEL_11;
    }
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_21952BC00(uint64_t *a1, uint64_t (*a2)(void), SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    a2();
    v8 = *(v3 + OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_appConfiguration);
    if ([v8 respondsToSelector_])
    {
      [v8 *a3];
    }

    LOBYTE(v5) = sub_219BDC8C4();

    *(v3 + v4) = v5 & 1;
  }

  return v5 & 1;
}

void *sub_21952BCCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BF7B14();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_219BF7914();
    __swift_destroy_boxed_opaque_existential_1(v3);
    return sub_219BDBC74();
  }

  return result;
}

uint64_t NewsEngagementEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21952C268(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EngagementEvent(0);
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v31 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21952BC00(&OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor____lazy_storage___useSmarterMessaging, MEMORY[0x277D31430], &selRef_smarterMessagingEnabled);
  if (result & 1) != 0 || (result = sub_21952BC00(&OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor____lazy_storage___useAppReviewRequest, MEMORY[0x277D31428], &selRef_appReviewRequestEnabled), (result))
  {
    v14 = *(v3 + OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_eventTranslators);
    v15 = *(v14 + 16);
    if (v15)
    {
      v26 = OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor____lazy_storage___useSmarterMessaging;
      v25 = (v3 + OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_engagementService);
      v33 = *(v3 + OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_jsonDecoder);
      v24 = (v3 + OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor_appReviewRequestManager);
      v16 = v14 + 32;
      v29 = (v10 + 48);
      *&v13 = 136315138;
      v27 = v13;
      v28 = v3;
      v32 = v9;
      do
      {
        v34 = v15;
        sub_218718690(v16, v35);
        v17 = v36;
        v18 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v18 + 8))(a1, v33, a2, a3, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(v35);
        if ((*v29)(v9, 1, v30) == 1)
        {
          v19 = sub_21952C268;
          v20 = v9;
        }

        else
        {
          sub_21952C66C(v9, v31);
          if (*(v3 + v26))
          {
            v21 = v25[3];
            v22 = v25[4];
            __swift_project_boxed_opaque_existential_1(v25, v21);
            (*(v22 + 8))(v31, v21, v22);
          }

          if (sub_21952BC00(&OBJC_IVAR____TtC7NewsUI228NewsEngagementEventProcessor____lazy_storage___useAppReviewRequest, MEMORY[0x277D31428], &selRef_appReviewRequestEnabled))
          {
            __swift_project_boxed_opaque_existential_1(v24, v24[3]);
            sub_21880C6BC(v31);
          }

          v19 = type metadata accessor for EngagementEvent;
          v20 = v31;
        }

        result = sub_21952C6D0(v20, v19);
        v16 += 40;
        v15 = v34 - 1;
      }

      while (v34 != 1);
    }
  }

  return result;
}

void sub_21952C268(uint64_t a1)
{
  if (!qword_280EDA8E0)
  {
    type metadata accessor for EngagementEvent(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EDA8E0);
    }
  }
}

id NewsEngagementEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsEngagementEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21952C40C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D470](a1, ObjectType);
}

uint64_t sub_21952C45C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D478](a1, ObjectType);
}

uint64_t sub_21952C4AC(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D480](a1, ObjectType);
}

uint64_t sub_21952C4FC(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D490](a1, ObjectType);
}

uint64_t sub_21952C54C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D468](a1, a2, ObjectType);
}

uint64_t sub_21952C5A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D488](a1, a2, ObjectType);
}

uint64_t sub_21952C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D498](a1, a2, a3, a4, ObjectType);
}

uint64_t sub_21952C66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21952C6D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21952C748(id a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for TagViewBadgeView();
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 accessibilityContrast];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (a1)
  {
    v6 = v3 == v5;
    a1 = [a1 userInterfaceStyle];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (!v6 || a1 != v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 traitCollection];
      v12 = [v10 resolvedColorWithTraitCollection_];

      [v1 setBackgroundColor_];
    }
  }
}

id sub_21952CA28(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TagViewBadgeView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21952CA90(uint64_t a1, uint64_t a2)
{
  sub_2186FB308(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21952CAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186FB308(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_21952CB7C()
{
  v1 = v0;
  v2 = sub_219BF1584();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28(0);
  v5 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219531B60(v1, v19, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = sub_219BE5B24();
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v22 = *v19;
        sub_2186F151C(0);
        v24 = v19 + *(v23 + 48);
      }

      else
      {
        sub_2186FB36C(0);
        v27 = v34;
        v28 = v35;
        v29 = v36;
        (*(v35 + 32))(v34, v19 + *(v26 + 48), v36);
        v22 = sub_219BF1524();
        (*(v28 + 8))(v27, v29);
        v24 = v19;
      }

      sub_219531104(v24, type metadata accessor for AudioFeedGapLocation);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v32;
      (*(v32 + 32))(v11, v19, v9);
      v22 = sub_219BF07B4();
      (*(v21 + 8))(v11, v9);
    }

    else
    {
      v25 = v33;
      (*(v33 + 32))(v7, v19, v5);
      v22 = sub_219BF07B4();
      (*(v25 + 8))(v7, v5);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    v22 = sub_219BF07B4();
    (*(v14 + 8))(v16, v13);
  }

  return v22;
}

uint64_t sub_21952CFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2186EFD84(&qword_280EDCC08, type metadata accessor for AudioFeedModel, &unk_219C86D50);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_21952D078(uint64_t a1, uint64_t a2)
{
  sub_2186FB308(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_219531B00(0, &qword_27CC1B730, type metadata accessor for AudioFeedGapLocation);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v16 = *(v15 + 56);
  sub_219531B60(a1, &v20 - v13, type metadata accessor for AudioFeedGapLocation);
  sub_219531B60(a2, &v14[v16], type metadata accessor for AudioFeedGapLocation);
  v17 = *(v6 + 32);
  v17(v11, v14, v5);
  v17(v8, &v14[v16], v5);
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186EFD84(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
  LOBYTE(a2) = sub_219BF0F64();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  return a2 & 1;
}

uint64_t sub_21952D29C@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v1 = sub_219BF1584();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28(0);
  v5 = v4;
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v9 = v8;
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v47, v19, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v30 = v46;
      *v46 = *v19;
      v31 = *MEMORY[0x277D32DE0];
      v32 = sub_219BF0614();
      return (*(*(v32 - 8) + 104))(v30, v31, v32);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_2186F151C(0);
      v25 = *(v24 + 48);
      v26 = v46;
      sub_219BF03C4();
      v27 = *MEMORY[0x277D32DB8];
      v28 = sub_219BF0614();
      (*(*(v28 - 8) + 104))(v26, v27, v28);
      return sub_219531104(&v19[v25], type metadata accessor for AudioFeedGapLocation);
    }

    else
    {
      sub_2186FB36C(0);
      v38 = v44;
      v37 = v45;
      (*(v44 + 32))(v3, &v19[*(v36 + 48)], v45);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v39 = v46;
      sub_219BEDB14();
      (*(v38 + 8))(v3, v37);
      v40 = *MEMORY[0x277D32D10];
      v41 = sub_219BF0614();
      (*(*(v41 - 8) + 104))(v39, v40, v41);
      return sub_219531104(v19, type metadata accessor for AudioFeedGapLocation);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = v42;
        (*(v42 + 32))(v11, v19, v9);
        v22 = v46;
        sub_219BF07D4();
        (*(v21 + 8))(v11, v9);
        v23 = MEMORY[0x277D32DC0];
      }

      else
      {
        v33 = v43;
        (*(v43 + 32))(v7, v19, v5);
        v22 = v46;
        sub_219BF07D4();
        (*(v33 + 8))(v7, v5);
        v23 = MEMORY[0x277D32CF0];
      }
    }

    else
    {
      (*(v14 + 32))(v16, v19, v13);
      v22 = v46;
      sub_219BF07D4();
      (*(v14 + 8))(v16, v13);
      v23 = MEMORY[0x277D32E10];
    }

    v34 = *v23;
    v35 = sub_219BF0614();
    return (*(*(v35 - 8) + 104))(v22, v34, v35);
  }
}

uint64_t sub_21952D86C()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219531B60(v0, v7, type metadata accessor for AudioFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 4)
  {
    if (EnumCaseMultiPayload == 4)
    {

      sub_2186F151C(0);
      v14 = &v7[*(v10 + 48)];
    }

    else
    {
      sub_2186FB36C(0);
      v12 = *(v11 + 48);
      v13 = sub_219BF1584();
      (*(*(v13 - 8) + 8))(&v7[v12], v13);
      v14 = v7;
    }

    sub_219531104(v14, type metadata accessor for AudioFeedGapLocation);
    return 0;
  }

  else
  {
    sub_219531104(v7, type metadata accessor for AudioFeedModel);
    sub_21952D29C(v4);
    v9 = sub_219BF05A4();
    (*(v2 + 8))(v4, v1);
  }

  return v9;
}