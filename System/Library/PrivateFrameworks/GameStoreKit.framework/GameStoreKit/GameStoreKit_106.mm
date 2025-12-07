uint64_t sub_24F0CF0B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x614C656E696C6E69;
    }

    else
    {
      v5 = 0x656E696C6E69;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000656772;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x656772616CLL;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000063;
    }
  }

  v7 = 0x614C656E696C6E69;
  v8 = 0xEB00000000656772;
  if (a2 != 2)
  {
    v7 = 0x656E696C6E69;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x656772616CLL;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CF1F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x746E657645707061;
    if (a1 != 6)
    {
      v10 = 0x6553646564697567;
      v9 = 0xEC00000068637261;
    }

    v11 = 0xE600000000000000;
    v12 = 0x656C646E7562;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x800000024FA42070;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6169726F74696465;
    v5 = 0xE90000000000006CLL;
    if (a1 != 2)
    {
      v4 = 0x7275507070416E69;
      v5 = 0xED00006573616863;
    }

    v6 = 0x747265766461;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x746E657645707061)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEC00000068637261;
        if (v7 != 0x6553646564697567)
        {
LABEL_47:
          v14 = sub_24F92CE08();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x656C646E7562)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000024FA42070;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE90000000000006CLL;
      if (v7 != 0x6169726F74696465)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED00006573616863;
      if (v7 != 0x7275507070416E69)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x747265766461)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x746E65746E6F63)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_24F0CF494(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65676E61726FLL;
    }

    else
    {
      v4 = 0x6574696877;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x7265666E69;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x65676E61726FLL;
  if (a2 != 2)
  {
    v8 = 0x6574696877;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1702194274;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CF5B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000022;
  v3 = "reviewSummaryText";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "oreKit.playTogetherSparseCount";
    v12 = 0xD000000000000027;
    if (a1 != 6)
    {
      v12 = 0xD000000000000026;
      v11 = "oreKit.homeContentLimit";
    }

    v13 = "oreKit.bagV3OfflineMaxAge";
    v14 = 0xD00000000000002FLL;
    if (a1 != 4)
    {
      v14 = 0xD00000000000002ELL;
      v13 = "oreKit.playTogetherContentLimit";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000036;
    v6 = "oreKit.debugOverlay";
    v7 = 0xD000000000000029;
    if (a1 == 2)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v6 = "oreKit.bagV3MaxAge";
    }

    v8 = "scriptionStateOverride";
    if (a1)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v8 = "reviewSummaryText";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "oreKit.playTogetherSparseCount";
        v2 = 0xD000000000000027;
      }

      else
      {
        v3 = "oreKit.homeContentLimit";
        v2 = 0xD000000000000026;
      }
    }

    else if (a2 == 4)
    {
      v3 = "oreKit.bagV3OfflineMaxAge";
      v2 = 0xD00000000000002FLL;
    }

    else
    {
      v3 = "oreKit.playTogetherContentLimit";
      v2 = 0xD00000000000002ELL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "oreKit.debugOverlay";
    }

    else
    {
      v3 = "oreKit.bagV3MaxAge";
      v2 = 0xD000000000000029;
    }
  }

  else if (a2)
  {
    v3 = "scriptionStateOverride";
    v2 = 0xD000000000000023;
  }

  else
  {
    v2 = 0xD000000000000036;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_24F92CE08();
  }

  return v15 & 1;
}

uint64_t sub_24F0CF7C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6F6C6E776F646572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (a2 != 2)
  {
    v8 = 0x6F6C6E776F646572;
    v7 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6573616863727570;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CF904(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x534E4F4954504FLL;
  if (a1 != 6)
  {
    v5 = 0x4543415254;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x4554454C4544;
  if (a1 != 4)
  {
    v7 = 0x5443454E4E4F43;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1145128264;
  if (a1 != 2)
  {
    v9 = 5526864;
    v8 = 0xE300000000000000;
  }

  v10 = 1414745936;
  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v10 = 5522759;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x534E4F4954504FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x4543415254)
        {
LABEL_45:
          v14 = sub_24F92CE08();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x4554454C4544)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x5443454E4E4F43)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1145128264)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 5526864)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE400000000000000;
    if (v11 != 1414745936)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 5522759)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_24F0CFB34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x800000024FA41D90;
      v3 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xE400000000000000;
      v3 = 1701736302;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x726F6C6F63;
    }

    if (v2)
    {
      v4 = 0x800000024FA41D70;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000024FA41D90;
      if (v3 != 0xD000000000000012)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE400000000000000;
      if (v3 != 1701736302)
      {
LABEL_26:
        v7 = sub_24F92CE08();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x726F6C6F63;
    }

    if (a2)
    {
      v6 = 0x800000024FA41D70;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_24F0CFC84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6C616D73;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xEA00000000006567;
    if (a1 == 2)
    {
      v5 = 0x72614C6172747865;
    }

    else
    {
      v5 = 0x646578696DLL;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x656772616CLL;
    }

    else
    {
      v5 = 0x6C6C616D73;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x72614C6172747865;
  v8 = 0xEA00000000006567;
  if (a2 != 2)
  {
    v7 = 0x646578696DLL;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x656772616CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CFDB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6552686372616573;
    }

    else
    {
      v5 = 0x614C686372616573;
    }

    if (v2)
    {
      v6 = 0xED000073746C7573;
    }

    else
    {
      v6 = 0xED0000676E69646ELL;
    }
  }

  else
  {
    v3 = 0x50746375646F7270;
    v4 = 0xEF4C414D59656761;
    if (a1 != 3)
    {
      v3 = 0xD00000000000001DLL;
      v4 = 0x800000024FA41CD0;
    }

    if (a1 == 2)
    {
      v5 = 0x7961646F74;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6552686372616573;
    }

    else
    {
      v11 = 0x614C686372616573;
    }

    if (a2)
    {
      v10 = 0xED000073746C7573;
    }

    else
    {
      v10 = 0xED0000676E69646ELL;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x50746375646F7270;
    v8 = 0x800000024FA41CD0;
    if (a2 == 3)
    {
      v8 = 0xEF4C414D59656761;
    }

    else
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a2 == 2)
    {
      v9 = 0x7961646F74;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_24F92CE08();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_24F0CFF70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE300000000000000;
    v12 = 0xE600000000000000;
    v13 = 0x6D6F74746F62;
    if (a1 != 2)
    {
      v13 = 0x676E696C69617274;
      v12 = 0xE800000000000000;
    }

    v14 = 0x676E696461656CLL;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 7368564;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x654C6D6F74746F62;
    v4 = 0xED0000676E696461;
    v5 = 0x72546D6F74746F62;
    v6 = 0xEE00676E696C6961;
    if (a1 != 7)
    {
      v5 = 0x7265746E6563;
      v6 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x696461654C706F74;
    v8 = 0xEA0000000000676ELL;
    if (a1 != 4)
    {
      v7 = 0x6C69617254706F74;
      v8 = 0xEB00000000676E69;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x6D6F74746F62)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x676E696C69617274)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x676E696461656CLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 7368564)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEA0000000000676ELL;
      if (v9 != 0x696461654C706F74)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEB00000000676E69;
      if (v9 != 0x6C69617254706F74)
      {
LABEL_52:
        v16 = sub_24F92CE08();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED0000676E696461;
    if (v9 != 0x654C6D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEE00676E696C6961;
    if (v9 != 0x72546D6F74746F62)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x7265746E6563)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_24F0D0260(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000024FA40FB0;
    }

    else
    {
      v3 = 0x65736E65646E6F63;
      v4 = 0xEF68637261655364;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x64417465736E69;
    }

    else
    {
      v3 = 25697;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000024FA40FB0;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEF68637261655364;
      if (v3 != 0x65736E65646E6F63)
      {
LABEL_26:
        v7 = sub_24F92CE08();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x64417465736E69;
    }

    else
    {
      v5 = 25697;
    }

    if (a2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_24F0D03CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1802398060;
  v3 = a1;
  v4 = 0xE400000000000000;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1954047348;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (v3 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x800000024FA40560;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7473694C6F666E69;
    }

    else
    {
      v5 = 1802398060;
    }

    if (v3)
    {
      v6 = 0xEC0000006D657449;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 1954047348;
  v8 = 0x800000024FA40560;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (a2)
  {
    v2 = 0x7473694C6F666E69;
    v4 = 0xEC0000006D657449;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D0500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x722D686372616573;
    }

    else
    {
      v3 = 0x6C2D686372616573;
    }

    if (v2)
    {
      v4 = 0xEE0073746C757365;
    }

    else
    {
      v4 = 0xEE00676E69646E61;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7961646F74;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000021;
    }

    if (v2 == 3)
    {
      v4 = 0x800000024FA40510;
    }

    else
    {
      v4 = 0x800000024FA40530;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x722D686372616573;
    }

    else
    {
      v7 = 0x6C2D686372616573;
    }

    if (a2)
    {
      v6 = 0xEE0073746C757365;
    }

    else
    {
      v6 = 0xEE00676E69646E61;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE500000000000000;
    if (v3 != 0x7961646F74)
    {
LABEL_37:
      v8 = sub_24F92CE08();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (a2 == 3)
    {
      v6 = 0x800000024FA40510;
    }

    else
    {
      v6 = 0x800000024FA40530;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_24F0D06B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x654C6D6F74746F62;
    v12 = 0xED0000676E696461;
    v13 = 0xE600000000000000;
    v14 = 0x6D6F74746F62;
    if (a1 != 8)
    {
      v14 = 0x72546D6F74746F62;
      v13 = 0xEE00676E696C6961;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xE600000000000000;
    v16 = 0x7265746E6563;
    if (a1 != 5)
    {
      v16 = 0x676E696C69617274;
      v15 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE300000000000000;
    v5 = 7368564;
    v6 = 0x6C69617254706F74;
    v7 = 0xEB00000000676E69;
    if (a1 != 3)
    {
      v6 = 0x676E696461656CLL;
      v7 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x696461654C706F74;
    if (a1)
    {
      v3 = 0xEA0000000000676ELL;
    }

    else
    {
      v8 = 1869768058;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x7265746E6563)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x676E696C69617274)
        {
LABEL_57:
          v18 = sub_24F92CE08();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xED0000676E696461;
      if (v9 != 0x654C6D6F74746F62)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x6D6F74746F62)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xEE00676E696C6961;
      if (v9 != 0x72546D6F74746F62)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xEA0000000000676ELL;
      if (v9 != 0x696461654C706F74)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1869768058)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE300000000000000;
    if (v9 != 7368564)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xEB00000000676E69;
    if (v9 != 0x6C69617254706F74)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x676E696461656CLL)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_24F0D09DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  v6 = 0x72614C6172747865;
  v7 = 0xEA00000000006567;
  if (a1 != 4)
  {
    v6 = 1869768040;
    v7 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x746361706D6F63;
  if (a1 != 1)
  {
    v9 = 0x7469617274726F70;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656772616CLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEA00000000006567;
      if (v10 != 0x72614C6172747865)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768040)
      {
LABEL_34:
        v13 = sub_24F92CE08();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x746361706D6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7469617274726F70)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6C6C616D73)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24F0D0BB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006275487365;
  v3 = 0x676E656C6C616863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4 == 2)
    {
      v6 = 0x800000024FA40430;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x61746544656D6167;
    }

    else
    {
      v5 = 0x676E656C6C616863;
    }

    if (v4)
    {
      v6 = 0xEB00000000736C69;
    }

    else
    {
      v6 = 0xED00006275487365;
    }
  }

  v7 = 0xD000000000000019;
  v8 = 0x800000024FA40430;
  if (a2 != 2)
  {
    v7 = 0x6669636570736E75;
    v8 = 0xEB00000000646569;
  }

  if (a2)
  {
    v3 = 0x61746544656D6167;
    v2 = 0xEB00000000736C69;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D0D1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65746E4565676170;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x72656D6974;
  if (a1 != 5)
  {
    v6 = 0x726576656ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265746E45707061;
  if (a1 != 3)
  {
    v8 = 0x747475426B636162;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7469784565676170;
  if (a1 != 1)
  {
    v10 = 0x74697845707061;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x65746E4565676170;
    v9 = 0xE900000000000072;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7469784565676170)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x74697845707061)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 > 4u)
  {
    v2 = 0xE500000000000000;
    if (a2 == 5)
    {
      v13 = 1701669236;
    }

    else
    {
      v13 = 1702258030;
    }

    if (v11 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x7200000000))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 != 3)
  {
    v3 = 0x747475426B636162;
    v2 = 0xEA00000000006E6FLL;
    goto LABEL_31;
  }

  v2 = 0xE800000000000000;
  if (v11 != 0x7265746E45707061)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (v12 != v2)
  {
LABEL_37:
    v14 = sub_24F92CE08();
    goto LABEL_38;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}

uint64_t sub_24F0D0F28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6775626564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616E7265746E69;
    }

    else
    {
      v4 = 0x69746375646F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65677265766E6F63;
    }

    else
    {
      v4 = 0x6775626564;
    }

    if (v3)
    {
      v5 = 0xEB0000000065636ELL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C616E7265746E69;
  if (a2 != 2)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 0x65677265766E6F63;
    v6 = 0xEB0000000065636ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D1080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x65676150656D6167;
    }

    if (v2)
    {
      v4 = 0x800000024FA40280;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x46776F4E79616C70;
    v4 = 0xEB00000000646565;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6552686372616573;
    }

    else
    {
      v3 = 0x79616C7265766FLL;
    }

    if (v2 == 3)
    {
      v4 = 0xED000073746C7573;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x65676150656D6167;
    }

    if (a2)
    {
      v5 = 0x800000024FA40280;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEB00000000646565;
    if (v3 != 0x46776F4E79616C70)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xED000073746C7573;
    if (v3 != 0x6552686372616573)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x79616C7265766FLL)
    {
LABEL_34:
      v7 = sub_24F92CE08();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_24F0D124C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736C69617465;
  v3 = 0x44746E756F636361;
  v4 = a1;
  v5 = 0xD000000000000013;
  v6 = 0x800000024FA40260;
  if (a1 != 6)
  {
    v5 = 0x6573616863727570;
    v6 = 0xEF79726F74736948;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74666947646E6573;
  if (a1 != 4)
  {
    v8 = 0x6853796C696D6166;
    v7 = 0xED0000676E697261;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6565646572;
  if (a1 != 2)
  {
    v10 = 0x73646E7546646461;
    v9 = 0xE800000000000000;
  }

  v11 = 0x6341657461657263;
  v12 = 0xED0000746E756F63;
  if (!a1)
  {
    v11 = 0x44746E756F636361;
    v12 = 0xEE00736C69617465;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x800000024FA40260;
        if (v13 != 0xD000000000000013)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEF79726F74736948;
        if (v13 != 0x6573616863727570)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (a2 != 4)
      {
        v15 = 0x6853796C696D6166;
        v16 = 0x676E697261;
LABEL_34:
        v2 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v13 != v15)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      if (v13 != 0x74666947646E6573)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x6D6565646572)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x73646E7546646461;
    }

    else if (a2)
    {
      v15 = 0x6341657461657263;
      v16 = 0x746E756F63;
      goto LABEL_34;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_24F92CE08();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_24F0D14EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6565646572;
    }

    else
    {
      v4 = 0x746E756F636361;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1952868711;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x79746972616863;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6565646572;
    }

    else
    {
      v9 = 0x746E756F636361;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6D6F74737563;
    if (a2 != 3)
    {
      v6 = 0x79746972616863;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1952868711;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0D1658(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "macOS";
  v4 = a1;
  v5 = 0xD000000000000016;
  if (a1 == 4)
  {
    v6 = "didBecomeArcadeTrialEligible";
  }

  else
  {
    v5 = 0xD000000000000013;
    v6 = "didBecomeNonSubscribed";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "didSubscribeToArcade";
  }

  if (a1 == 1)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (v4 == 1)
  {
    v9 = "arcadeTabDidComeOnScreen";
  }

  else
  {
    v9 = "arcadePageDidAppear";
  }

  if (!v4)
  {
    v8 = 0xD000000000000018;
    v9 = "macOS";
  }

  if (v4 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v8 = v7;
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "didSubscribeToArcade";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v3 = "didBecomeArcadeTrialEligible";
    }

    else
    {
      v3 = "didBecomeNonSubscribed";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "arcadeTabDidComeOnScreen";
    }

    else
    {
      v2 = 0xD000000000000014;
      v3 = "arcadePageDidAppear";
    }
  }

  else
  {
    v2 = 0xD000000000000018;
  }

  if (v8 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D17C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE700000000000000;
  v8 = 0x534F6863746177;
  if (a1 != 4)
  {
    v8 = 0x534F6E6F69736976;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5459817;
  if (a1 != 1)
  {
    v10 = 0x534F63616DLL;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v10 = 0x656E696665646E75;
    v9 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1397716596)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x534F6863746177)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x534F6E6F69736976)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE300000000000000;
        if (v11 != 5459817)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x534F63616DLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_24F92CE08();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Bool __swiftcall RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(Swift::String_optional bundleId, Swift::Int contentRating)
{
  v4 = v3;
  v5 = v2;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  if ((*(v3 + 24))())
  {
    if ((*(v4 + 8))(v5, v4) >= contentRating)
    {
      return 0;
    }

    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_24F92B0D8();
    v12 = v11;
    if (v10 == sub_24F92B0D8() && v12 == v13)
    {

      return 0;
    }

    v15 = sub_24F92CE08();

    if (v15)
    {
      return 0;
    }

    if (object)
    {
      v17 = (*(v4 + 16))(v5, v4);
      if (*(v17 + 16) && (v18 = sub_24E76D644(countAndFlagsBits, object), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        if (v20 >= contentRating)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  return 1;
}

BOOL RestrictionsProtocol.doesAllow(_:properties:)(char *a1, uint64_t a2)
{
  v10 = *a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    v2 = *(a2 + 48);
    v4 = *(a2 + 128);
    v5 = *(a2 + 136);
    if (*(a2 + 16) <= 1u || *(a2 + 16) == 2)
    {
      v6 = sub_24F92CE08();
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v5 = 1;
  }

  v7.value._countAndFlagsBits = v3;
  v7.value._object = v2;
  v11.value = v4;
  v11.is_nil = v5;
  v8 = RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(&v10, v7, v11, v6 & 1);

  return v8;
}

uint64_t RestrictionsCheckIntent.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

Swift::Bool __swiftcall RestrictionsProtocol.doesAllow(_:bundleId:contentRating:isArcadeApp:)(GameStoreKit::RestrictionsCheckIntent _, Swift::String_optional bundleId, Swift::Int_optional contentRating, Swift::Bool isArcadeApp)
{
  v6 = v5;
  v7 = v4;
  is_nil = contentRating.is_nil;
  value = contentRating.value;
  object = bundleId.value._object;
  countAndFlagsBits = bundleId.value._countAndFlagsBits;
  v13 = *_;
  if (((*(v5 + 24))() & 1) == 0 || ((*(v6 + 40))(v7, v6) & 1) != 0 && !isArcadeApp)
  {
    v14 = 0;
    return v14 & 1;
  }

  if (v13)
  {
    if (is_nil)
    {
      v14 = 1;
      return v14 & 1;
    }

LABEL_11:
    v17.value._countAndFlagsBits = countAndFlagsBits;
    v17.value._object = object;
    v14 = !RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(v17, value);
    return v14 & 1;
  }

  v16 = (*(v6 + 48))(v7, v6);
  v14 = v16 ^ 1;
  if ((v16 & 1) == 0 && !is_nil)
  {
    goto LABEL_11;
  }

  return v14 & 1;
}

unint64_t sub_24F0D1E00()
{
  result = qword_27F239078;
  if (!qword_27F239078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239078);
  }

  return result;
}

unint64_t sub_24F0D1E58()
{
  result = qword_27F239080;
  if (!qword_27F239080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239088, &qword_24F9C79B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239080);
  }

  return result;
}

uint64_t sub_24F0D1F0C@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v15[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239090, &qword_24F9C7B28);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  type metadata accessor for VideoPlaybackCoordinator(0);
  sub_24F0D221C();
  v9 = sub_24F923628();
  v10 = sub_24F922F98();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2390A0, &qword_24F9C7B30);
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v6 + 36)];
  *v12 = v10;
  v12[1] = v9;
  swift_allocObject();
  v13 = sub_24F923628();
  swift_unknownObjectWeakInit();

  sub_24F0D22B4();
  sub_24F925F28();

  return sub_24F0D2398(v8);
}

void sub_24F0D20E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
    swift_beginAccess();
    v6 = *&v4[v5];

    sub_24F7CDA88(v6, a1);
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      v9 = *&v4[v5];
      *&v4[v5] = a1;

      sub_24EEC4000(v9);

      sub_24EEC6054();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v10 & 1) == 0)
      {
        sub_24EEC66B8();
      }
    }
  }
}

unint64_t sub_24F0D221C()
{
  result = qword_27F239098;
  if (!qword_27F239098)
  {
    type metadata accessor for VideoPlaybackCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239098);
  }

  return result;
}

uint64_t sub_24F0D2274()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24F0D22B4()
{
  result = qword_27F2390A8;
  if (!qword_27F2390A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239090, &qword_24F9C7B28);
    sub_24E602068(&qword_27F2390B0, &qword_27F2390A0, &qword_24F9C7B30, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F2390B8, &qword_27F2390C0, &qword_24F9C7B38, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2390A8);
  }

  return result;
}

uint64_t sub_24F0D2398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239090, &qword_24F9C7B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0D2408()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239090, &qword_24F9C7B28);
  sub_24F0D22B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F0D2494(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_24F0D26D4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for ActivityInviteCard(uint64_t a1)
{
  result = qword_27F2390C8;
  if (!qword_27F2390C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F0D294C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24F0D2AEC(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F0D2AEC(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
            if (v6 <= 0x3F)
            {
              sub_24E6BCB04();
              if (v7 <= 0x3F)
              {
                sub_24F0D2AEC(319, &qword_27F22DA50, type metadata accessor for PlayerAvatar);
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

void sub_24F0D2AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F0D2B40(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x48746361706D6F63;
    v2 = 0x4172657469766E69;
    if (a1 != 7)
    {
      v2 = 0x7265764F6E497369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x6E6F6349656D6167;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F0D2C80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v41 - v6;
  v46 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2390E8, &unk_24F9C7C58);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v41 - v15;
  v17 = type metadata accessor for ActivityInviteCard(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v51 = v19 + 40;
  sub_24E61DA68(&v55, (v19 + 40), qword_27F21B590, &unk_24F93BE30);
  v52 = v17;
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v54 = v20;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F0D3938();
  v48 = v16;
  v24 = v50;
  sub_24F92D108();
  if (v24)
  {
    v26 = v51;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(v26, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v19[v54], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v50 = v14;
    v41 = v8;
    v42 = v11;
    v25 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v27 = v56;
    *v19 = v55;
    *(v19 + 1) = v27;
    *(v19 + 4) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v25;
    sub_24E61DA68(&v55, v51, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v55) = 2;
    sub_24E65CAA0();
    v29 = v50;
    sub_24F92CC68();
    sub_24E61DA68(v29, &v19[v54], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v55) = 3;
    sub_24F0D398C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v30 = v42;
    sub_24F92CC18();
    v31 = v52;
    sub_24E6009C8(v30, &v19[v52[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v55) = 4;
    sub_24F0D398C(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v32 = v41;
    sub_24F92CC68();
    sub_24E706B90(v32, &v19[v31[8]]);
    sub_24F9289E8();
    LOBYTE(v55) = 5;
    sub_24F0D398C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v33 = v45;
    sub_24F92CC18();
    sub_24E6009C8(v33, &v19[v31[9]], &qword_27F213FB0, &qword_24F93E6B0);
    LOBYTE(v55) = 6;
    v34 = sub_24F92CBC8();
    v35 = &v19[v31[10]];
    *v35 = v34;
    v35[1] = v36;
    type metadata accessor for PlayerAvatar(0);
    LOBYTE(v55) = 7;
    sub_24F0D398C(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v37 = v44;
    sub_24F92CC18();
    sub_24E6009C8(v37, &v19[v31[11]], &qword_27F227328, &unk_24F97E2A0);
    LOBYTE(v55) = 8;
    v38 = v48;
    v39 = sub_24F92CC38();
    (*(v28 + 8))(v38, v49);
    v19[v31[12]] = v39 & 1;
    sub_24F0D39D4(v19, v43, type metadata accessor for ActivityInviteCard);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24F0D3A3C(v19, type metadata accessor for ActivityInviteCard);
  }
}

uint64_t sub_24F0D36BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F0D3BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F0D36E4(uint64_t a1)
{
  v2 = sub_24F0D3938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F0D3720(uint64_t a1)
{
  v2 = sub_24F0D3938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F0D3794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F0D386C(uint64_t a1)
{
  *(a1 + 8) = sub_24F0D398C(&qword_27F21AA78, type metadata accessor for ActivityInviteCard, &unk_24F9C7C14);
  result = sub_24F0D398C(&qword_27F2390D8, type metadata accessor for ActivityInviteCard, &unk_24F9C7BD0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F0D3938()
{
  result = qword_27F2390F0;
  if (!qword_27F2390F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2390F0);
  }

  return result;
}

uint64_t sub_24F0D398C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0D39D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F0D3A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F0D3AB0()
{
  result = qword_27F2390F8;
  if (!qword_27F2390F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2390F8);
  }

  return result;
}

unint64_t sub_24F0D3B08()
{
  result = qword_27F239100;
  if (!qword_27F239100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239100);
  }

  return result;
}

unint64_t sub_24F0D3B60()
{
  result = qword_27F239108;
  if (!qword_27F239108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239108);
  }

  return result;
}

uint64_t sub_24F0D3BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x48746361706D6F63 && a2 == 0xEE00676E69646165 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4172657469766E69 && a2 == 0xED00007261746176 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265764F6E497369 && a2 == 0xEB0000000079616CLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

__n128 ProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD000000000000011;
  *(a4 + 1) = 0x800000024F9C7D60;
  v10 = type metadata accessor for ProductPageIntent(0);
  v11 = v10[5];
  v12 = sub_24F91F4A8();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t type metadata accessor for ProductPageIntent(uint64_t a1)
{
  result = qword_27F239120;
  if (!qword_27F239120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_24F9285B8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD000000000000011;
  a3[1] = 0x800000024F9C7D60;
  v59 = a1;
  sub_24F928398();
  sub_24F928268();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_24E601704(v9, &qword_27F228530, &unk_24F93C6E0);
    v24 = sub_24F92AC38();
    sub_24F0D49E0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ProductPageIntent(0);
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_24F928398();
    v30 = sub_24F928278();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ProductPageIntent(0);
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_24F928398();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_24EC55728();
    sub_24F929548();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t ProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductPageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ProductPageIntent.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductPageIntent(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  return sub_24EA145F0(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ProductPageIntent(0);
  v8 = isa;
  sub_24F91F398();
  v9 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_24EDC3010();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v12 = sub_24F92CDE8();
    sub_24E601704(&v15, &qword_27F251730, &unk_24F964AF0);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_24F92C328();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24F0D49E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0D4A40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F0D4B00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F0D4BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_24F0D4C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24F0D4C90@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v39 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239138, &qword_24F9C7F58);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239140, &qword_24F9C7F60);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239148, &qword_24F9C7F68);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239150, &qword_24F9C7F70);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = *a1;
  v41 = v16;
  v42 = a4;
  v40 = v26;
  if (v25 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_14;
      }

      v44 = *(a1 + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
      sub_24F926F38();
      if (v47 != 1)
      {
        goto LABEL_14;
      }
    }

    else if (v25)
    {
LABEL_14:
      sub_24F927618();
      sub_24F9238C8();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239158, &qword_24F9C7F78);
      (*(*(v31 - 8) + 16))(v15, v39, v31);
      v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239160, &qword_24F9C7F80) + 36)];
      v33 = v45;
      *v32 = v44;
      *(v32 + 1) = v33;
      *(v32 + 2) = v46;
      v34 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239168, &unk_24F9C7F88) + 36)];
      *v34 = a3;
      v34[1] = a5;
      v34[2] = a6;
      v34[3] = a7;
      *(v34 + 16) = 256;
      LOBYTE(v34) = a1[40];
      v35 = &v15[*(v13 + 36)];
      *v35 = a3;
      *(v35 + 1) = a5;
      *(v35 + 2) = a6;
      *(v35 + 3) = a7;
      v36 = *(a1 + 24);
      v47 = *(a1 + 3);
      *(v35 + 2) = v36;
      v35[48] = v34 & 1;
      sub_24E60169C(v15, v21, &qword_27F239138, &qword_24F9C7F58);
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v47, v43, &qword_27F233468, &qword_24F9AE280);
      sub_24E602068(&qword_27F239170, &qword_27F239158, &qword_24F9C7F78, MEMORY[0x277CE04B0]);
      sub_24F0D53EC();
      sub_24F924E28();
      sub_24E60169C(v24, v18, &qword_27F239150, &qword_24F9C7F70);
      swift_storeEnumTagMultiPayload();
      sub_24F0D563C();
      sub_24F924E28();
      sub_24E601704(v24, &qword_27F239150, &qword_24F9C7F70);
      v28 = v15;
      v29 = &qword_27F239138;
      v30 = &qword_24F9C7F58;
      return sub_24E601704(v28, v29, v30);
    }
  }

  else if (v25 <= 5)
  {
    if (v25 != 4)
    {
      goto LABEL_14;
    }

    v44 = *(a1 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    if ((v47 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v25 == 6 || v25 == 7)
  {
    goto LABEL_14;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239158, &qword_24F9C7F78);
  (*(*(v27 - 8) + 16))(v21, v39, v27);
  swift_storeEnumTagMultiPayload();
  sub_24E602068(&qword_27F239170, &qword_27F239158, &qword_24F9C7F78, MEMORY[0x277CE04B0]);
  sub_24F0D53EC();
  sub_24F924E28();
  sub_24E60169C(v24, v18, &qword_27F239150, &qword_24F9C7F70);
  swift_storeEnumTagMultiPayload();
  sub_24F0D563C();
  sub_24F924E28();
  v28 = v24;
  v29 = &qword_27F239150;
  v30 = &qword_24F9C7F70;
  return sub_24E601704(v28, v29, v30);
}

uint64_t sub_24F0D52B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v12 = *v2;
  v13 = v4;
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  sub_24F0D4C90(&v12, a1, v12, a2, *(&v12 + 1), *&v13, 0.0);
  v6 = swift_allocObject();
  v7 = v13;
  v6[1] = v12;
  v6[2] = v7;
  v8 = v15;
  v6[3] = v14;
  v6[4] = v8;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239130, &unk_24F9C7F48) + 36));
  *v9 = sub_24F0D53AC;
  v9[1] = v6;
  return sub_24F0D53B4(&v12, &v11);
}

uint64_t sub_24F0D536C()
{

  return swift_deallocObject();
}

unint64_t sub_24F0D53EC()
{
  result = qword_27F239178;
  if (!qword_27F239178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239138, &qword_24F9C7F58);
    sub_24F0D5478();
    sub_24F0D55E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239178);
  }

  return result;
}

unint64_t sub_24F0D5478()
{
  result = qword_27F239180;
  if (!qword_27F239180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239168, &unk_24F9C7F88);
    sub_24F0D5530();
    sub_24E602068(&qword_27F239190, &qword_27F239198, &qword_24F9C7F98, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239180);
  }

  return result;
}

unint64_t sub_24F0D5530()
{
  result = qword_27F239188;
  if (!qword_27F239188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239160, &qword_24F9C7F80);
    sub_24E602068(&qword_27F239170, &qword_27F239158, &qword_24F9C7F78, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239188);
  }

  return result;
}

unint64_t sub_24F0D55E8()
{
  result = qword_27F2391A0;
  if (!qword_27F2391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391A0);
  }

  return result;
}

unint64_t sub_24F0D563C()
{
  result = qword_27F2391A8;
  if (!qword_27F2391A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239150, &qword_24F9C7F70);
    sub_24E602068(&qword_27F239170, &qword_27F239158, &qword_24F9C7F78, MEMORY[0x277CE04B0]);
    sub_24F0D53EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391A8);
  }

  return result;
}

uint64_t sub_24F0D56F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_24F0D5750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24F0D57C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[32])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F0D5808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t sub_24F0D5860()
{
  result = qword_27F2391B0;
  if (!qword_27F2391B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239130, &unk_24F9C7F48);
    sub_24F0D5918();
    sub_24E602068(&qword_27F233450, &qword_27F233458, &qword_24F9C8010, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391B0);
  }

  return result;
}

unint64_t sub_24F0D5918()
{
  result = qword_27F2391B8;
  if (!qword_27F2391B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2391C0, &qword_24F9C8000);
    sub_24F0D599C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391B8);
  }

  return result;
}

unint64_t sub_24F0D599C()
{
  result = qword_27F2391C8;
  if (!qword_27F2391C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2391D0, &qword_24F9C8008);
    sub_24F0D563C();
    sub_24E602068(&qword_27F239170, &qword_27F239158, &qword_24F9C7F78, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391C8);
  }

  return result;
}

uint64_t sub_24F0D5A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2391F8, &qword_24F9C8160);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239200, &qword_24F9C8168);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *(v2 + 4);
  if (v10 && (v2[48] & 1) == 0)
  {
    v13 = *v2;
    v30 = *v2;
    v14 = *(v2 + 1);
    v15 = *(v2 + 2);
    v16 = *(v2 + 3);

    v17 = sub_24F927618();
    v19 = v18;
    sub_24F923658();

    v20 = sub_24F927618();
    v28 = v21;
    v29 = v20;
    LOBYTE(v36) = v13;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v16;
    v38 = v33;
    v39 = v34;
    *&v40 = v35;
    *(&v40 + 1) = v10;
    LOWORD(v41) = 256;
    *(&v41 + 1) = v20;
    *&v42 = v21;
    *(&v42 + 1) = v17;
    v43 = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239208, &qword_24F9C8170);
    (*(*(v22 - 8) + 16))(v9, a1, v22);
    v23 = &v9[*(v7 + 36)];
    v24 = v41;
    *(v23 + 4) = v40;
    *(v23 + 5) = v24;
    *(v23 + 6) = v42;
    *(v23 + 14) = v43;
    v25 = v37;
    *v23 = v36;
    *(v23 + 1) = v25;
    v26 = v39;
    *(v23 + 2) = v38;
    *(v23 + 3) = v26;
    v44[0] = v30;
    v45 = v14;
    v46 = v15;
    v47 = v16;
    v48 = v33;
    v49 = v34;
    v50 = v35;
    v51 = v10;
    v52 = 256;
    v53 = v29;
    v54 = v28;
    v55 = v17;
    v56 = v19;
    sub_24E60169C(&v36, &v32, &qword_27F239228, &qword_24F9C8178);
    sub_24E601704(v44, &qword_27F239228, &qword_24F9C8178);
    sub_24E60169C(v9, v6, &qword_27F239200, &qword_24F9C8168);
    swift_storeEnumTagMultiPayload();
    sub_24F0D6454();
    sub_24E602068(&qword_27F239218, &qword_27F239208, &qword_24F9C8170, MEMORY[0x277CE04B0]);
    sub_24F924E28();

    return sub_24E601704(v9, &qword_27F239200, &qword_24F9C8168);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239208, &qword_24F9C8170);
    (*(*(v11 - 8) + 16))(v6, a1, v11);
    swift_storeEnumTagMultiPayload();
    sub_24F0D6454();
    sub_24E602068(&qword_27F239218, &qword_27F239208, &qword_24F9C8170, MEMORY[0x277CE04B0]);
    return sub_24F924E28();
  }
}

__n128 sub_24F0D5EA0@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = sub_24F924248();
  MEMORY[0x28223BE20](v11);
  v13 = (v28.n128_f64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24F924B38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  v21 = *(v5 + 24);
  LOBYTE(v30) = *v5;
  v18 = v30;
  v22 = Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, v19, v20);
  (*(v15 + 104))(v17, **(&unk_27968E910 + v18), v14);
  if (v18 > 3)
  {
    if (v18 > 5)
    {
      if (v18 == 6)
      {
        v25 = [objc_opt_self() bezierPathWithRoundedRect:2 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, v22, v22}];
        v26 = [v25 CGPath];
        sub_24F925B48();
        v28 = v31;
        v29 = v30;
        v23 = v32;

        goto LABEL_16;
      }

      if (v18 == 7)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v18 == 4)
    {
LABEL_12:
      sub_24F927798();
      goto LABEL_13;
    }

LABEL_14:
    v24 = sub_24F924258();
    (*(v15 + 16))(v13 + *(v24 + 20), v17, v14);
    *v13 = v22;
    v13[1] = v22;
    *(v13 + *(v11 + 20)) = v21;
    sub_24F924238();
    v28 = v31;
    v29 = v30;
    v23 = v32;
    sub_24E6458F0(v13);
    goto LABEL_16;
  }

  if (v18 <= 1)
  {
    if (!v18)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v18 == 2)
  {
    goto LABEL_12;
  }

  sub_24F926FF8();
LABEL_13:
  v28 = v31;
  v29 = v30;
  v23 = v32;
LABEL_16:
  (*(v15 + 8))(v17, v14);
  result = v28;
  *a1 = v29;
  *(a1 + 16) = result;
  *(a1 + 32) = v23;
  return result;
}

double sub_24F0D61A8@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_24F0D5EA0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24F0D61EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F0D6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F0D6538();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F0D62D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F0D6538();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F0D633C(uint64_t a1)
{
  v2 = sub_24F0D6538();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24F0D638C()
{
  result = qword_27F2391E8;
  if (!qword_27F2391E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391E8);
  }

  return result;
}

unint64_t sub_24F0D63E4()
{
  result = qword_27F2391F0;
  if (!qword_27F2391F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2391F0);
  }

  return result;
}

unint64_t sub_24F0D6454()
{
  result = qword_27F239210;
  if (!qword_27F239210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239200, &qword_24F9C8168);
    sub_24E602068(&qword_27F239218, &qword_27F239208, &qword_24F9C8170, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F239220, &qword_27F239228, &qword_24F9C8178, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239210);
  }

  return result;
}

unint64_t sub_24F0D6538()
{
  result = qword_27F239230;
  if (!qword_27F239230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239230);
  }

  return result;
}

unint64_t sub_24F0D6590()
{
  result = qword_27F239238;
  if (!qword_27F239238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239240, &unk_24F9C8180);
    sub_24F0D6454();
    sub_24E602068(&qword_27F239218, &qword_27F239208, &qword_24F9C8170, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239238);
  }

  return result;
}

double sub_24F0D6648@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

const char *sub_24F0D6654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6)
{
  v7 = v6;
  v48 = a5;
  v60 = a3;
  v61 = a4;
  v10 = sub_24F92AC68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24F927D88();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v17 = MEMORY[0x25304F260]();
  if (v17)
  {
    v46 = v11;
    v47 = v10;
    v57 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8D8, &qword_24F956950);
    v18 = sub_24F92A9E8();
    v54 = v16;
    v19 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox;
    v20 = *(a2 + OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox);
    MEMORY[0x28223BE20](v18);
    v58 = v13;
    v45[-4] = sub_24F0D6648;
    v45[-3] = 0;
    v43 = v20;
    v56 = a1;
    v21 = v61;

    v49 = v14;
    v50 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239258, &qword_24F9C81B0);
    sub_24F92BF18();
    v55 = v7;

    v22 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v22;
    sub_24E822200(v18, v60, v21, isUniquelyReferenced_nonNull_native);

    v52 = v62;
    v53 = v45;
    v45[1] = a2;
    v25 = *(a2 + v19);
    MEMORY[0x28223BE20](v24);
    v43 = v26;
    v51 = *(v25 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
    v27 = v49;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v62 = v28;
    sub_24F0D81FC(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    v29 = v58;
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v30 = v54;
    v31 = v50;
    v32 = v59;
    v33 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v33);
    v45[-4] = sub_24F0D8514;
    v45[-3] = &v45[-4];
    v43 = v25;
    v34 = v55;
    sub_24F92BF08();
    v35 = v34;

    (*(v27 + 8))(v30, v32);

    v36 = swift_allocObject();
    v37 = v57;
    *(v36 + 16) = v31;
    *(v36 + 24) = v37;

    v38 = v56;

    sub_24F92AC48();
    if (v34)
    {
    }

    else
    {
      v40 = v60;
      v39 = v61;
      if (v48)
      {
        v41 = v48;
        sub_24F0D75D0(v31, v40, v39, v41);
      }

      v35 = sub_24F92AC58();

      (*(v46 + 8))(v29, v47);
    }
  }

  else
  {
    v35 = "JSTimeoutManager.promiseQueue";
    sub_24F92A868();
    sub_24F0D81FC(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    v43 = 0;
    v44 = 0;
    sub_24F92A808();
    swift_willThrow();
  }

  return v35;
}

uint64_t sub_24F0D6C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v22 = a5;
  v23 = a4;
  v20 = a3;
  v21 = a1;
  v7 = sub_24F9281B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a2, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v14 = *(v8 + 32);
  v14(v19 + v13, v11, v7);
  (v12)(v11, v20, v7);
  v15 = swift_allocObject();
  v14(v15 + v13, v11, v7);
  v16 = v21;
  *(v15 + ((v13 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v24[3] = sub_24F9298F8();
  v24[4] = MEMORY[0x277D22078];
  v24[0] = v22;
  v17 = v16;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_24F0D6E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93DE60;
  v1 = [objc_allocWithZone(MEMORY[0x277CD4658]) init];
  *(v0 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  *(v0 + 32) = v1;
  v2 = sub_24F9281A8();
}

void sub_24F0D70C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  v6 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
  v7 = MEMORY[0x253051C90](a1, a3);
  *(v5 + 56) = v6;
  *(v5 + 32) = v7;
  v8 = sub_24F9281A8();
}

void sub_24F0D742C(void *a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239258, &qword_24F9C81B0);
  sub_24F92BF18();

  if (*(v9 + 16) && (v6 = sub_24E76D644(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(v9 + 56) + 8 * v6);

    if ((sub_24F92A928() & 1) == 0)
    {
      sub_24F0D75D0(v8, a2, a3, a1);
    }
  }

  else
  {
  }
}

double sub_24F0D75D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v30 = sub_24F927D88();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F927DC8();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DE8();
  v27 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v28 = *(v4 + OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_promiseQueue);
  sub_24F927DD8();
  [a4 doubleValue];
  sub_24F927E58();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = v25;
  v20[5] = a3;
  aBlock[4] = sub_24F0D81B4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_113;
  v21 = _Block_copy(aBlock);

  sub_24F927DA8();
  v33 = MEMORY[0x277D84F90];
  sub_24F0D81FC(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  v22 = v30;
  sub_24F92C6A8();
  MEMORY[0x253051820](v18, v11, v9, v21);
  _Block_release(v21);
  (*(v32 + 8))(v9, v22);
  (*(v29 + 8))(v11, v31);
  v26(v18, v27);

  return result;
}

void sub_24F0D79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_24F92A928();
    if ((v13 & 1) == 0)
    {
      v23 = v22;
      v14 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox;
      v15 = *&v12[OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox];
      MEMORY[0x28223BE20](v13);
      v25 = a2;
      v22[-4] = sub_24F0D6648;
      v22[-3] = 0;
      v22[-2] = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239258, &qword_24F9C81B0);
      sub_24F92BF18();
      v24 = 0;

      sub_24E9902D8(a3, a4);

      v22[2] = v27;
      v23 = v22;
      v17 = *&v12[v14];
      MEMORY[0x28223BE20](v16);
      v22[-2] = v18;
      v22[1] = *(v17 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93DE60;

      sub_24F927D78();
      v26 = v19;
      sub_24F0D81FC(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      v20 = sub_24F92C6A8();
      MEMORY[0x28223BE20](v20);
      v22[-4] = sub_24F0D81D8;
      v22[-3] = &v22[-4];
      v22[-2] = v17;
      sub_24F92BF08();

      (*(v8 + 8))(v10, v7);

      v21 = [objc_allocWithZone(MEMORY[0x277CD4658]) init];
      v27 = v21;
      sub_24F92A9C8();
    }
  }
}

id sub_24F0D7D98()
{
  v12 = sub_24F92BEE8();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v11 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_promiseQueue;
  v10[1] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DA8();
  v15 = MEMORY[0x277D84F90];
  sub_24F0D81FC(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v12);
  v5 = sub_24F92BF38();
  v6 = v13;
  *&v13[v11] = v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit16JSTimeoutManager_activePromisesBox;
  sub_24E60FF64(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239260, &qword_24F9C81B8);
  swift_allocObject();
  *&v6[v7] = sub_24EA50028();
  v8 = type metadata accessor for JSTimeoutManager();
  v14.receiver = v6;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_24F0D8090(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSTimeoutManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24F0D8134()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F0D816C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0D81FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24F0D8244(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_24F0D8288()
{

  return swift_deallocObject();
}

uint64_t sub_24F0D82E4(__n128 a1)
{
  v2 = sub_24F9281B8();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_24F0D836C(__n128 a1)
{
  sub_24F9281B8();

  sub_24F0D6E44();
}

uint64_t sub_24F0D83DC(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24F0D8478(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F0D70C8(a1, v2 + v5, v6);
}

GameStoreKit::PrivacyTypeStyle_optional __swiftcall PrivacyTypeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PrivacyTypeStyle.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x61506C6961746564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_24F0D85E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x800000024FA3EFD0;
  if (v2 == 1)
  {
    v5 = 0x800000024FA3EFD0;
  }

  else
  {
    v3 = 0x61506C6961746564;
    v5 = 0xEA00000000006567;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x50746375646F7270;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000656761;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x61506C6961746564;
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x50746375646F7270;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000656761;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0D86E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0D879C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0D883C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0D88F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656761;
  v4 = 0x800000024FA3EFD0;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x61506C6961746564;
    v4 = 0xEA00000000006567;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x50746375646F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PrivacyType.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyType.detail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyType.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t PrivacyType.__allocating_init(id:title:detail:artwork:categories:style:clickAction:wantsScrollFocus:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v30 = a6;
  v31 = a7;
  v32 = a11;
  v33 = a2;
  v36 = a10;
  v34 = a9;
  v35 = a3;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = *a8;
  sub_24E60169C(a1, &v39, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v40 + 1))
  {
    v21 = v40;
    *(v19 + 80) = v39;
    *(v19 + 96) = v21;
    *(v19 + 112) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v29 = a4;
    v24 = v23;
    (*(v16 + 8))(v18, v15);
    v37 = v22;
    v38 = v24;
    a4 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v32, v19 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics);
  v25 = v35;
  *(v19 + 16) = v33;
  *(v19 + 24) = v25;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v26 = v31;
  *(v19 + 48) = v30;
  *(v19 + 56) = v26;
  *(v19 + 64) = v20;
  *(v19 + 72) = v34;
  *(v19 + 65) = v36 & 1;
  return v19;
}

uint64_t PrivacyType.init(id:title:detail:artwork:categories:style:clickAction:wantsScrollFocus:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v12 = v11;
  v31 = a6;
  v32 = a7;
  v33 = a11;
  v34 = a2;
  v37 = a10;
  v35 = a9;
  v36 = a3;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a8;
  sub_24E60169C(a1, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a4;
    v24 = v23;
    (*(v18 + 8))(v20, v17);
    v38 = v22;
    v39 = v24;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v25 = v44;
  *(v12 + 80) = v43;
  *(v12 + 96) = v25;
  *(v12 + 112) = v45;
  sub_24E65E0D4(v33, v12 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics);
  v26 = v36;
  *(v12 + 16) = v34;
  *(v12 + 24) = v26;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v27 = v32;
  *(v12 + 48) = v31;
  *(v12 + 56) = v27;
  *(v12 + 64) = v21;
  *(v12 + 72) = v35;
  *(v12 + 65) = v37 & 1;
  return v12;
}

uint64_t PrivacyType.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v88 = sub_24F91F6B8();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v94 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v76 - v11;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v76 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v76 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  sub_24F928398();
  v92 = sub_24F928348();
  v30 = v29;
  v33 = *(v13 + 8);
  v32 = v13 + 8;
  v31 = v33;
  v33(v28, v12);
  if (!v30)
  {
    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x656C746974;
LABEL_10:
    v55 = 0xE500000000000000;
    goto LABEL_11;
  }

  v95 = v30;
  sub_24F928398();
  v84 = sub_24F928348();
  v35 = v34;
  v31(v25, v12);
  if (!v35)
  {

    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x6C6961746564;
    v55 = 0xE600000000000000;
LABEL_11:
    v53[1] = v55;
    v53[2] = v97;
    v56 = MEMORY[0x277D22530];
LABEL_12:
    (*(*(v52 - 8) + 104))(v54, *v56, v52);
    swift_willThrow();
    (*(v98 + 8))(v106, v99);
    v31(a1, v12);
    return a1;
  }

  v85 = v35;
  sub_24F928398();
  sub_24F928348();
  v37 = v36;
  v31(v22, v12);
  if (!v37)
  {

    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x656C797473;
    goto LABEL_10;
  }

  v38 = sub_24F92CB88();

  if (v38 >= 3)
  {

    v52 = sub_24F92AC38();
    sub_24F0D9EC8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v54 = v58;
    v59 = MEMORY[0x277D84F90];
    *v58 = 0x656C797473;
    v58[1] = 0xE500000000000000;
    v58[2] = v97;
    v58[3] = v59;
    v56 = MEMORY[0x277D22540];
    goto LABEL_12;
  }

  v82 = v38;
  sub_24F929608();
  sub_24F928398();
  v83 = v12;
  v79 = *(v98 + 16);
  v39 = v90;
  v77 = v31;
  v40 = v106;
  v41 = v99;
  v79(v90, v106, v99);
  sub_24F929548();
  v81 = v32;
  v42 = v94;
  v43 = v40;
  v44 = v79;
  v79(v94, v43, v41);
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v44(v39, v42, v41);
  sub_24F0D9EC8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v80 = v105;
  sub_24F928398();
  v44(v39, v42, v41);
  v45 = v83;
  type metadata accessor for PrivacyCategory();
  sub_24F0D9EC8(&qword_27F232A88, type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  v46 = v77;
  v90 = sub_24F92B698();
  type metadata accessor for Action(0);
  sub_24F928398();
  v79 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v42);
  v46(v19, v45);
  v47 = v89;
  sub_24F928398();
  v78 = sub_24F928278();
  v46(v47, v45);
  v48 = v91;
  sub_24F928398();
  v49 = sub_24F928348();
  v51 = a1;
  if (v50)
  {
    *&v102 = v49;
    *(&v102 + 1) = v50;
  }

  else
  {
    v60 = v86;
    sub_24F91F6A8();
    v61 = sub_24F91F668();
    v63 = v62;
    (*(v87 + 8))(v60, v88);
    *&v102 = v61;
    *(&v102 + 1) = v63;
  }

  sub_24F92C7F8();
  v64 = v46;
  v46(v48, v45);
  v65 = v93;
  sub_24E60169C(v96, v93, &qword_27F213E68, &unk_24F93BC80);
  a1 = swift_allocObject();
  sub_24E60169C(&v105, &v102, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v103 + 1))
  {
    v66 = v103;
    *(a1 + 80) = v102;
    *(a1 + 96) = v66;
    *(a1 + 112) = v104;
  }

  else
  {
    v67 = v86;
    sub_24F91F6A8();
    v68 = sub_24F91F668();
    v70 = v69;
    (*(v87 + 8))(v67, v88);
    v100 = v68;
    v101 = v70;
    sub_24F92C7F8();
    sub_24E601704(&v102, &qword_27F235830, &qword_24F93B8C0);
  }

  v71 = v99;
  v72 = *(v98 + 8);
  v72(v106, v99);
  v64(v51, v45);
  sub_24E601704(&v105, &qword_27F235830, &qword_24F93B8C0);
  v72(v94, v71);
  sub_24E601704(v96, &qword_27F213E68, &unk_24F93BC80);
  sub_24E65E0D4(v65, a1 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics);
  v73 = v95;
  *(a1 + 16) = v92;
  *(a1 + 24) = v73;
  v74 = v85;
  *(a1 + 32) = v84;
  *(a1 + 40) = v74;
  v75 = v90;
  *(a1 + 48) = v80;
  *(a1 + 56) = v75;
  *(a1 + 64) = v82;
  *(a1 + 72) = v79;
  *(a1 + 65) = v78 & 1;
  return a1;
}

uint64_t PrivacyType.deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t PrivacyType.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11PrivacyType_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

unint64_t sub_24F0D9B80()
{
  result = qword_27F239268;
  if (!qword_27F239268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239268);
  }

  return result;
}

uint64_t type metadata accessor for PrivacyType(uint64_t a1)
{
  result = qword_27F239278;
  if (!qword_27F239278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0D9C68@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24F0D9EC8(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_24F0D9D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyType.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24F0D9D88(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F0D9EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24F0D9F64@<D0>(uint64_t a3@<X8>)
{
  v5 = sub_24F926E08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 18;
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_27F22B5B8;
  sub_24F926E98();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v10 = sub_24F926E88();

  (*(v6 + 8))(v8, v5);
  sub_24F9238C8();
  *&v14[38] = v17;
  *&v14[22] = v16;
  *&v14[6] = v15;
  v11 = *&v14[16];
  *(a3 + 18) = *v14;
  *a3 = v10;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v11;
  result = *&v14[32];
  *(a3 + 50) = *&v14[32];
  *(a3 + 64) = *&v14[46];
  return result;
}

uint64_t sub_24F0DA198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F648();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233EA0, &unk_24F9B0A10);
  v57 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v13 = sub_24F92A9E8();
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210C60 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_27F233E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C78, &unk_24F977EB0);
  sub_24F928868();

  if (v59[0])
  {
  }

  else
  {
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    (*(v57 + 16))(v12, v14, v8);
    v59[0] = MEMORY[0x277D84F98];
    sub_24F928878();
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F928868();

  v15 = v59[0];
  if (!v59[0])
  {
    goto LABEL_14;
  }

  if (!*(v59[0] + 16) || (v16 = sub_24E76D644(*(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey), *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey + 8)), (v17 & 1) == 0))
  {

LABEL_14:
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    (*(v57 + 16))(v56, v14, v8);
    v31 = sub_24F928858();
    if (*v30)
    {
      v32 = v30;
      v33 = (a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_actionKey);
      v52 = v8;
      v34 = a1;
      v35 = a3;
      v36 = a2;
      v37 = v13;
      v39 = *v33;
      v38 = v33[1];
      v40 = v53;
      sub_24F91F638();
      sub_24F91F5E8();
      v42 = v41;
      (*(v54 + 8))(v40, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *v32;
      *v32 = 0x8000000000000000;
      v44 = v38;
      v13 = v37;
      a2 = v36;
      a3 = v35;
      a1 = v34;
      v8 = v52;
      sub_24E8223AC(v39, v44, isUniquelyReferenced_nonNull_native, v42);
      *v32 = v58;
    }

    v31(v59, 0);

    (*(v57 + 8))(v56, v8);
    v45 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_primaryAction);
    v60 = type metadata accessor for Action(0);
    v61 = sub_24F0DA940(&qword_27F216DE8, type metadata accessor for Action);
    v59[0] = v45;
    type metadata accessor for RateLimitedActionImplementation(0, a3, v46, v47);

    swift_getWitnessTable();
    sub_24F1489C4(v59, a2);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v48 = sub_24E74EC40();
    swift_retain_n();
    v49 = sub_24F92BEF8();
    v60 = v48;
    v61 = MEMORY[0x277D225C0];
    v59[0] = v49;
    sub_24F92A958();

    goto LABEL_17;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit + 8) & 1) == 0)
  {
    v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_rateLimit);
    v22 = v53;
    sub_24F91F638();
    sub_24F91F5E8();
    v24 = v23;
    (*(v54 + 8))(v22, v55);
    if (v21 < v24 - v18)
    {
      goto LABEL_14;
    }
  }

  v25 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17RateLimitedAction_fallbackAction);
  if (!v25)
  {
    type metadata accessor for RateLimitedActionImplementation.ImplementationError(0, a3, v19, v20);
    swift_getWitnessTable();
    v51 = swift_allocError();
    sub_24F92A9A8();

    return v13;
  }

  v60 = type metadata accessor for Action(0);
  v61 = sub_24F0DA940(&qword_27F216DE8, type metadata accessor for Action);
  v59[0] = v25;
  type metadata accessor for RateLimitedActionImplementation(0, a3, v26, v27);
  swift_retain_n();
  swift_getWitnessTable();
  sub_24F1489C4(v59, a2);
  __swift_destroy_boxed_opaque_existential_1(v59);
  v28 = sub_24E74EC40();
  swift_retain_n();
  v29 = sub_24F92BEF8();
  v60 = v28;
  v61 = MEMORY[0x277D225C0];
  v59[0] = v29;
  sub_24F92A958();

LABEL_17:

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v13;
}

uint64_t sub_24F0DA940(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

_BYTE *Artwork.Variant.init(format:quality:supportsWideGamut:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t Artwork.Variant.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  sub_24F928398();
  sub_24F0DAC1C();
  sub_24F928208();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v21 = v22;
  sub_24F928398();
  v13 = sub_24F928258();
  v19 = v14;
  v12(v11, v5);
  sub_24F928398();
  v15 = sub_24F928278();
  v16 = sub_24F9285B8();
  (*(*(v16 - 8) + 8))(v20, v16);
  v12(a1, v5);
  result = (v12)(v8, v5);
  *a3 = v21;
  *(a3 + 8) = v13;
  *(a3 + 16) = v19 & 1;
  *(a3 + 17) = v15 & 1;
  return result;
}

unint64_t sub_24F0DAC1C()
{
  result = qword_27F239388;
  if (!qword_27F239388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239388);
  }

  return result;
}

uint64_t Artwork.Variant.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_24F92B218();

  sub_24F92D088();
  if (!v3)
  {
    MEMORY[0x253052A00](v2);
  }

  return sub_24F92D088();
}

uint64_t Artwork.Variant.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92D088();
  if (!v2)
  {
    MEMORY[0x253052A00](v1);
  }

  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t sub_24F0DAE78()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92D088();
  if (!v2)
  {
    MEMORY[0x253052A00](v1);
  }

  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit7ArtworkC7VariantV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((sub_24F0C96A0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return v4 ^ v7 ^ 1u;
}

unint64_t sub_24F0DAFE4()
{
  result = qword_27F239390;
  if (!qword_27F239390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239390);
  }

  return result;
}

uint64_t _s7VariantVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s7VariantVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

char *EditorialSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v181 = a2;
  v170 = sub_24F91F6B8();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_24F9285B8();
  v180 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v179 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v135 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v172 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v175 = &v135 - v10;
  MEMORY[0x28223BE20](v11);
  v176 = &v135 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v173 = (&v135 - v14);
  v183 = sub_24F928388();
  v15 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v165 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v135 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v135 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v135 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v135 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v135 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v135 - v36;
  v182 = a1;
  sub_24F928398();
  sub_24F0DE3EC();
  v38 = v177;
  sub_24F928218();
  if (v38)
  {
    (*(v180 + 8))(v181, v184);
    v39 = *(v15 + 8);
    v40 = v183;
    v39(v182, v183);
    v39(v37, v40);
    return v25;
  }

  v154 = v28;
  v155 = v25;
  v160 = v22;
  v156 = v19;
  v166 = v31;
  v164 = 0;
  v41 = *(v15 + 8);
  v177 = v15 + 8;
  v42 = v183;
  v41(v37, v183);
  v43 = LOBYTE(v198[0]);
  sub_24F928398();
  v44 = v173;
  sub_24F9282B8();
  v174 = v41;
  v41(v34, v42);
  v45 = sub_24F92AC28();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v44, 1, v45);
  v163 = v43;
  if (v47 == 1)
  {
    sub_24E601704(v44, &qword_27F2213B0, &qword_24F965EC0);
    v171 = 0;
  }

  else
  {
    v48 = v164;
    v171 = sub_24F92ABB8();
    v164 = v48;
    (*(v46 + 8))(v44, v45);
  }

  v49 = v179;
  v50 = v181;
  v51 = v178;
  v52 = v166;
  sub_24F929608();
  sub_24F928398();
  v54 = v180 + 16;
  v53 = *(v180 + 16);
  v55 = v184;
  v53(v51, v50, v184);
  sub_24F929548();
  v173 = v53;
  v53(v49, v50, v55);
  if (v171)
  {
    v56 = v182;
    sub_24F928398();
    sub_24F0DE890();
    sub_24F928248();
    v57 = v183;
    v58 = v52;
    v25 = v174;
    (v174)(v52, v183);
    v59 = LOBYTE(v198[0]);
    if (LOBYTE(v198[0]) == 4)
    {

      v60 = sub_24F92AC38();
      sub_24F0DE848(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v61 = 0x476B726F77747261;
      v61[1] = 0xEF65707954646972;
      v61[2] = v167;
      (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D22530], v60);
      swift_willThrow();
      v62 = *(v180 + 8);
      v63 = v184;
      v62(v181, v184);
      (v25)(v56, v57);
      v64 = v179;
      v65 = v63;
LABEL_39:
      v62(v64, v65);
      sub_24E601704(v176, &qword_27F213E68, &unk_24F93BC80);
      return v25;
    }
  }

  else
  {
    v59 = 4;
    v57 = v183;
    v58 = v52;
    v25 = v174;
    v56 = v182;
  }

  v153 = v59;
  v66 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v173(v178, v179, v184);
  v158 = sub_24F0DE848(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v159 = v66;
  sub_24F929548();
  v161 = v198[0];
  sub_24F928398();
  v157 = JSONObject.appStoreColor.getter();
  (v25)(v58, v57);
  if (v163 <= 2)
  {
    if (v163)
    {
      v25 = v178;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v163 == 3)
  {
LABEL_17:
    v25 = v178;
    goto LABEL_18;
  }

  v25 = v178;
  if (v163 != 4)
  {

    goto LABEL_19;
  }

LABEL_18:
  v67 = sub_24F92CE08();

  if (v67)
  {
LABEL_19:
    if (v161)
    {
      if (v157)
      {
        goto LABEL_21;
      }

      v131 = sub_24F92AC38();
      sub_24F0DE848(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v132 = 0x6F6C6F43746E6974;
      v132[1] = 0xE900000000000072;
      v132[2] = v167;
      (*(*(v131 - 8) + 104))(v132, *MEMORY[0x277D22530], v131);
      swift_willThrow();
    }

    else
    {

      v129 = sub_24F92AC38();
      sub_24F0DE848(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v130 = 0x6B726F77747261;
      v130[1] = 0xE700000000000000;
      v130[2] = v167;
      (*(*(v129 - 8) + 104))(v130, *MEMORY[0x277D22530], v129);
      swift_willThrow();
    }

    v62 = *(v180 + 8);
    v133 = v184;
    v62(v181, v184);
    (v174)(v56, v183);
    v64 = v179;
    v65 = v133;
    goto LABEL_39;
  }

LABEL_21:
  type metadata accessor for Lockup(0);
  sub_24F928398();
  v68 = v179;
  v69 = v184;
  v70 = v173;
  v173(v25, v179, v184);
  sub_24F0DE848(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_24F929548();
  v152 = v198[0];
  sub_24F928398();
  v70(v25, v68, v69);
  sub_24E951DC0();
  sub_24F929548();
  v71 = LODWORD(v198[0]) | ((WORD2(v198[0]) | (BYTE6(v198[0]) << 16)) << 32);
  if (LOBYTE(v198[0]) == 2)
  {
    v72 = v174;
    v73 = v183;
    v74 = v156;
    v75 = v160;
    v76 = v154;
    if (qword_27F2110F8 != -1)
    {
      swift_once();
    }

    v151 = dword_27F23E728;
    v150 = BYTE1(dword_27F23E728);
    v149 = BYTE2(dword_27F23E728);
    v148 = HIBYTE(dword_27F23E728);
    v147 = byte_27F23E72C;
    v146 = byte_27F23E72D;
    v145 = byte_27F23E72E;
  }

  else
  {
    v150 = (v71 >> 8) & 1;
    v149 = (v71 >> 16) & 1;
    v148 = (v71 >> 24) & 1;
    v147 = HIDWORD(v71) & 1;
    v146 = (v71 >> 40) & 1;
    v151 = LODWORD(v198[0]) | ((WORD2(v198[0]) | (BYTE6(v198[0]) << 16)) << 32);
    v145 = HIWORD(v71) & 1;
    v72 = v174;
    v73 = v183;
    v74 = v156;
    v75 = v160;
    v76 = v154;
  }

  v77 = v179;
  sub_24F928398();
  v78 = sub_24F928348();
  v162 = v54;
  if (v79)
  {
    v190 = v78;
    v191 = v79;
  }

  else
  {
    v80 = v168;
    sub_24F91F6A8();
    v81 = sub_24F91F668();
    v83 = v82;
    (*(v169 + 8))(v80, v170);
    v190 = v81;
    v191 = v83;
    v75 = v160;
    v72 = v174;
  }

  sub_24F92C7F8();
  v72(v76, v73);
  v84 = v155;
  sub_24F928398();
  v160 = sub_24F928348();
  v156 = v85;
  v72(v84, v73);
  sub_24F928398();
  v155 = sub_24F928348();
  v154 = v86;
  v72(v75, v73);
  sub_24F928398();
  v144 = sub_24F928348();
  v143 = v87;
  v72(v74, v73);
  type metadata accessor for Video(0);
  v88 = v166;
  sub_24F928398();
  v89 = v178;
  v90 = v184;
  v91 = v173;
  v173(v178, v77, v184);
  sub_24F0DE848(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  v142 = v198[7];
  sub_24F928398();
  v91(v89, v77, v90);
  sub_24F929548();
  v141 = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
  sub_24F928398();
  v91(v89, v77, v90);
  sub_24E705AFC();
  sub_24F929548();
  v140 = v196;
  sub_24F928398();
  v91(v89, v77, v90);
  type metadata accessor for AppEventFormattedDate(0);
  sub_24F0DE848(&qword_27F22D450, type metadata accessor for AppEventFormattedDate, &protocol conformance descriptor for AppEventFormattedDate);
  v139 = sub_24F92B698();
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v92 = v183;
  v93 = v174;
  (v174)(v88, v183);
  v138 = v195;
  v94 = v165;
  sub_24F928398();
  v137 = sub_24F928348();
  v136 = v95;
  v93(v94, v92);
  sub_24F928398();
  v96 = v184;
  v173(v89, v77, v184);
  sub_24F929548();
  v159 = v194;
  v97 = type metadata accessor for Action(0);
  sub_24F928398();
  v167 = v97;
  v98 = static Action.tryToMakeInstance(byDeserializing:using:)(v88, v77);
  v99 = v96;
  v100 = v98;
  v93(v88, v92);
  sub_24E60169C(v176, v175, &qword_27F213E68, &unk_24F93BC80);
  sub_24F928398();
  sub_24EABA874();
  sub_24F928208();
  v93(v88, v92);
  LODWORD(v165) = v193;
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v101 = v181;
  v173(v89, v181, v99);
  sub_24F0DE848(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
  v102 = v100;
  sub_24F929548();
  v178 = v192;
  type metadata accessor for EditorialSearchResult(0);
  v25 = swift_allocObject();
  v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type] = v163;
  v103 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title];
  v104 = v156;
  *v103 = v160;
  v103[1] = v104;
  v105 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle];
  v106 = v154;
  *v105 = v155;
  v105[1] = v106;
  v107 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline];
  v108 = v143;
  *v107 = v144;
  v107[1] = v108;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialArtwork] = v161;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialVideo] = v142;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_iconArtwork] = v141;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAdamIds] = v171;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAppIcons] = v140;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_lockup] = v152;
  v109 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions];
  *v109 = v151 & 1;
  v109[1] = v150;
  v109[2] = v149;
  v109[3] = v148;
  v109[4] = v147;
  v109[5] = v146;
  v109[6] = v145;
  v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_artworkGridType] = v153;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_appEventFormattedDates] = v139;
  v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_mediaOverlayStyle] = v138;
  v110 = &v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText];
  v111 = v136;
  *v110 = v137;
  v110[1] = v111;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeArtwork] = v159;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor] = v157;
  *&v25[OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_clickAction] = v102;
  sub_24E60169C(v198, &v190, &qword_27F235830, &qword_24F93B8C0);
  if (v102)
  {
    v173 = sub_24F0DE848(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v167 = 0;
    v173 = 0;
  }

  v112 = v180;
  v113 = v170;
  v114 = v169;
  v115 = v168;
  sub_24E60169C(v175, v172, &qword_27F213E68, &unk_24F93BC80);
  *&v25[OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity] = 0;
  sub_24E60169C(&v190, &v187, &qword_27F235830, &qword_24F93B8C0);
  v116 = v174;
  v117 = v182;
  if (*(&v188 + 1))
  {
    v118 = v188;
    *(v25 + 24) = v187;
    *(v25 + 40) = v118;
    *(v25 + 7) = v189;
  }

  else
  {

    sub_24F91F6A8();
    v119 = sub_24F91F668();
    v120 = v113;
    v121 = v102;
    v122 = v119;
    v124 = v123;
    (*(v114 + 8))(v115, v120);
    v185 = v122;
    v102 = v121;
    v186 = v124;
    v101 = v181;
    sub_24F92C7F8();
    sub_24E601704(&v187, &qword_27F235830, &qword_24F93B8C0);
  }

  v125 = *(v112 + 8);
  v126 = v184;
  v125(v101, v184);
  v116(v117, v183);
  sub_24E601704(&v190, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v175, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v198, &qword_27F235830, &qword_24F93B8C0);
  v125(v179, v126);
  sub_24E601704(v176, &qword_27F213E68, &unk_24F93BC80);
  *(v25 + 8) = v102;
  *(v25 + 9) = 0;
  v127 = v167;
  *(v25 + 10) = 0;
  *(v25 + 11) = v127;
  *(v25 + 12) = v173;
  sub_24E65E0D4(v172, &v25[OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics]);
  v25[17] = 2;
  v25[16] = v165;
  v128 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *&v25[v128] = v178;
  return v25;
}

GameStoreKit::EditorialSearchResultType_optional __swiftcall EditorialSearchResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialSearchResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x65706F6C65766564;
  v4 = 0x6369736162;
  if (v1 != 4)
  {
    v4 = 0x746E657645707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697463656C6C6F63;
  if (v1 != 1)
  {
    v5 = 0x79726F7473;
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

uint64_t sub_24F0DCEB8(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24F0DCFC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE900000000000072;
  v6 = 0x65706F6C65766564;
  v7 = 0xE500000000000000;
  v8 = 0x6369736162;
  if (v2 != 4)
  {
    v8 = 0x746E657645707061;
    v7 = 0xED000079726F7453;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x697463656C6C6F63;
  if (v2 != 1)
  {
    v10 = 0x79726F7473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

GameStoreKit::ArtworkGridType_optional __swiftcall ArtworkGridType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArtworkGridType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  v2 = 0x72614C6172747865;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x656772616CLL;
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

uint64_t sub_24F0DD16C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0DD224(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0DD2C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0DD388(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6C616D73;
  v4 = 0xEA00000000006567;
  v5 = 0x72614C6172747865;
  if (*v1 != 2)
  {
    v5 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x656772616CLL;
    v2 = 0xE500000000000000;
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

uint64_t EditorialSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title);

  return v1;
}

uint64_t EditorialSearchResult.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle);

  return v1;
}

uint64_t EditorialSearchResult.tagline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);

  return v1;
}

void EditorialSearchResult.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

void *EditorialSearchResult.tintColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor);
  v2 = v1;
  return v1;
}

void sub_24F0DD5D4(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) == 2 && (v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type), v2 <= 5))
  {
    *a1 = 0x30403030403uLL >> (8 * v2);
  }

  else
  {
    *a1 = 4;
  }
}

uint64_t sub_24F0DD61C()
{
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_24F92CE08();
  }

  return v1 & 1;
}

uint64_t EditorialSearchResult.badgeText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText);

  return v1;
}

uint64_t sub_24F0DD710@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for EditorialSearchResult(0);
  *a1 = v2;
}

uint64_t sub_24F0DD754()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type);
  if (v1 <= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type))
    {
      if (v1 == 1)
      {
        v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
        if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
        {
          v3 = 0xD000000000000033;
          v4 = 0x800000024FA6B710;
LABEL_18:
          v9._countAndFlagsBits = 0;
          v9._object = 0xE000000000000000;
          countAndFlagsBits = localizedString(_:comment:)(*&v3, v9)._countAndFlagsBits;
          goto LABEL_19;
        }
      }

      else
      {
        v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
        if (!*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
        {
          v3 = 0xD00000000000002ELL;
          v4 = 0x800000024FA6B6E0;
          goto LABEL_18;
        }
      }

LABEL_15:
      countAndFlagsBits = *v2;
LABEL_19:

      return countAndFlagsBits;
    }

    v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
    {
      goto LABEL_15;
    }

    v6 = "Search.EditorialSearchResultType.Heading.Category";
LABEL_17:
    v4 = (v6 - 32) | 0x8000000000000000;
    v3 = 0xD000000000000031;
    goto LABEL_18;
  }

  if (v1 == 3)
  {
    v7._countAndFlagsBits = 0xD000000000000032;
    v7._object = 0x800000024FA6B6A0;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    return localizedString(_:comment:)(v7, v8)._countAndFlagsBits;
  }

  else
  {
    if (v1 != 4)
    {
      v2 = (v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
      if (*(v0 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline + 8))
      {
        goto LABEL_15;
      }

      v6 = "Search.EditorialSearchResultType.Heading.AppEvent";
      goto LABEL_17;
    }

    return 0;
  }
}

uint64_t EditorialSearchResult.__allocating_init(id:type:title:subtitle:tagline:editorialArtwork:editorialVideo:iconArtwork:collectionAdamIds:collectionAppIcons:lockup:editorialDisplayOptions:artworkGridType:appEventFormattedDates:mediaOverlayStyle:tintColor:badgeText:badgeArtwork:clickAction:impressionMetrics:condensedBehavior:searchAdOpportunity:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v73 = a8;
  v72 = a7;
  v69 = a6;
  v67 = a5;
  v75 = a1;
  v82 = a24;
  v70 = a23;
  v79 = a21;
  v80 = a22;
  v81 = a19;
  v78 = a20;
  v74 = a14;
  v71 = a13;
  v68 = a12;
  v76 = a17;
  v77 = a25;
  v66 = sub_24F91F6B8();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v30 - 8);
  v83 = &v63 - v31;
  v32 = swift_allocObject();
  v33 = *a15;
  v34 = a15[1];
  v35 = a15[2];
  v36 = a15[3];
  v37 = a15[4];
  v38 = a15[5];
  v39 = a15[6];
  v40 = *a16;
  v41 = *a18;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type) = *a2;
  v42 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title);
  *v42 = a3;
  v42[1] = a4;
  v43 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle);
  *v43 = v67;
  v43[1] = v69;
  v44 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
  *v44 = v72;
  v44[1] = v73;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialArtwork) = a9;
  v45 = v70;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialVideo) = a10;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_iconArtwork) = a11;
  v46 = v75;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAdamIds) = v68;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAppIcons) = v71;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_lockup) = v74;
  v47 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  *v47 = v33;
  v47[1] = v34;
  v47[2] = v35;
  v47[3] = v36;
  v47[4] = v37;
  v47[5] = v38;
  v47[6] = v39;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_artworkGridType) = v40;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_appEventFormattedDates) = v76;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_mediaOverlayStyle) = v41;
  v48 = *v77;
  v49 = (v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText);
  v51 = v79;
  v50 = v80;
  *v49 = v78;
  v49[1] = v51;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeArtwork) = v50;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor) = v81;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_clickAction) = v45;
  sub_24E60169C(v46, v89, &qword_27F235830, &qword_24F93B8C0);
  if (v45)
  {
    v52 = type metadata accessor for Action(0);
    v53 = sub_24F0DE848(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v54 = v82;
  sub_24E60169C(v82, v83, &qword_27F213E68, &unk_24F93BC80);
  *(v32 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v89, &v86, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v87 + 1))
  {
    v55 = v87;
    *(v32 + 24) = v86;
    *(v32 + 40) = v55;
    *(v32 + 56) = v88;
  }

  else
  {

    v56 = v64;
    sub_24F91F6A8();
    v57 = v48;
    v58 = sub_24F91F668();
    v60 = v59;
    (*(v65 + 8))(v56, v66);
    v84 = v58;
    v48 = v57;
    v54 = v82;
    v85 = v60;
    sub_24F92C7F8();
    sub_24E601704(&v86, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v54, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v89, &qword_27F235830, &qword_24F93B8C0);
  *(v32 + 64) = v45;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  *(v32 + 88) = v52;
  *(v32 + 96) = v53;
  sub_24E65E0D4(v83, v32 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v32 + 17) = 2;
  *(v32 + 16) = v48;
  v61 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v32 + v61) = a26;
  return v32;
}

uint64_t EditorialSearchResult.init(id:type:title:subtitle:tagline:editorialArtwork:editorialVideo:iconArtwork:collectionAdamIds:collectionAppIcons:lockup:editorialDisplayOptions:artworkGridType:appEventFormattedDates:mediaOverlayStyle:tintColor:badgeText:badgeArtwork:clickAction:impressionMetrics:condensedBehavior:searchAdOpportunity:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26)
{
  v27 = v26;
  v75 = a8;
  v74 = a7;
  v71 = a6;
  v69 = a5;
  v83 = a24;
  v72 = a23;
  v81 = a22;
  v80 = a21;
  v82 = a19;
  v79 = a20;
  v76 = a14;
  v73 = a13;
  v70 = a12;
  v68 = a11;
  v78 = a25;
  v77 = a17;
  v67 = sub_24F91F6B8();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v33 - 8);
  v84 = &v64 - v34;
  v35 = *a15;
  v36 = a15[1];
  v37 = a15[2];
  v38 = a15[3];
  v39 = a15[4];
  v40 = a15[5];
  v41 = a15[6];
  v42 = *a16;
  v43 = *a18;
  v44 = a1;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type) = *a2;
  v45 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_title);
  *v45 = a3;
  v45[1] = a4;
  v46 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_subtitle);
  *v46 = v69;
  v46[1] = v71;
  v47 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tagline);
  *v47 = v74;
  v47[1] = v75;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialArtwork) = a9;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialVideo) = a10;
  v48 = v72;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_iconArtwork) = v68;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAdamIds) = v70;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_collectionAppIcons) = v73;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_lockup) = v76;
  v49 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  *v49 = v35;
  v49[1] = v36;
  v49[2] = v37;
  v49[3] = v38;
  v49[4] = v39;
  v49[5] = v40;
  v49[6] = v41;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_artworkGridType) = v42;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_appEventFormattedDates) = v77;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_mediaOverlayStyle) = v43;
  v50 = *v78;
  v51 = (v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeText);
  v52 = v80;
  *v51 = v79;
  v51[1] = v52;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_badgeArtwork) = v81;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_tintColor) = v82;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_clickAction) = v48;
  sub_24E60169C(a1, v93, &qword_27F235830, &qword_24F93B8C0);
  if (v48)
  {
    v53 = type metadata accessor for Action(0);
    v54 = sub_24F0DE848(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v55 = v83;
  sub_24E60169C(v83, v84, &qword_27F213E68, &unk_24F93BC80);
  *(v27 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v93, &v87, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {

    v56 = v65;
    sub_24F91F6A8();
    v57 = v50;
    v58 = sub_24F91F668();
    v60 = v59;
    (*(v66 + 8))(v56, v67);
    v85 = v58;
    v50 = v57;
    v55 = v83;
    v86 = v60;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v55, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v93, &qword_27F235830, &qword_24F93B8C0);
  v61 = v91;
  *(v27 + 24) = v90;
  *(v27 + 40) = v61;
  *(v27 + 56) = v92;
  *(v27 + 64) = v48;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  *(v27 + 88) = v53;
  *(v27 + 96) = v54;
  sub_24E65E0D4(v84, v27 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v27 + 17) = 2;
  *(v27 + 16) = v50;
  v62 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v27 + v62) = a26;

  return v27;
}

unint64_t sub_24F0DE3EC()
{
  result = qword_27F239398;
  if (!qword_27F239398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239398);
  }

  return result;
}

double sub_24F0DE440()
{

  return result;
}

uint64_t EditorialSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t EditorialSearchResult.__deallocating_deinit()
{
  EditorialSearchResult.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0DE71C@<X0>(void *a1@<X8>)
{
  v4 = *v2;
  a1[3] = type metadata accessor for EditorialSearchResult(0);
  *a1 = v4;
}

void sub_24F0DE764(_BYTE *a1@<X8>)
{
  if (*(*v1 + 16) == 2 && (v2 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_type), v2 <= 5))
  {
    *a1 = 0x30403030403uLL >> (8 * v2);
  }

  else
  {
    *a1 = 4;
  }
}

void sub_24F0DE7B0(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit21EditorialSearchResult_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

uint64_t type metadata accessor for EditorialSearchResult(uint64_t a1)
{
  result = qword_27F2393B8;
  if (!qword_27F2393B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0DE848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F0DE890()
{
  result = qword_27F2393A0;
  if (!qword_27F2393A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393A0);
  }

  return result;
}

unint64_t sub_24F0DE8E8()
{
  result = qword_27F2393A8;
  if (!qword_27F2393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393A8);
  }

  return result;
}

unint64_t sub_24F0DE940()
{
  result = qword_27F2393B0;
  if (!qword_27F2393B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393B0);
  }

  return result;
}

unint64_t ForceAskToBuyReason.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

GameStoreKit::ForceAskToBuyReason_optional __swiftcall ForceAskToBuyReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F0DEC40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "gnF";
  }

  else
  {
    v4 = "exceptionDeleted";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "exceptionDeleted";
  }

  else
  {
    v7 = "gnF";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

unint64_t sub_24F0DECF4()
{
  result = qword_27F2393C8;
  if (!qword_27F2393C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2393C8);
  }

  return result;
}

uint64_t sub_24F0DED48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0DEDCC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0DEE3C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0DEEBC@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F0DEF1C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "exceptionDeleted";
  }

  else
  {
    v3 = "gnF";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t AppOfferButtonPresenter.actionForCurrentState.getter()
{
  sub_24F0E3A20(&v5);
  v0 = v5;
  if (v5)
  {
    v1 = &qword_27F2129B0;
    v2 = &unk_24F945320;
    v3 = &v6;
  }

  else
  {
    v1 = &qword_27F233748;
    v2 = &unk_24F9C8AE0;
    v3 = &v5;
  }

  sub_24E601704(v3, v1, v2);
  return v0;
}

uint64_t AppOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, unsigned int *a8, __int16 a9, unsigned __int8 a10)
{
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  v18 = sub_24F0E85D8(a1, a2, a3, a4, a5, v17, a7, a8, a9, HIBYTE(a9), a10, v10, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v18;
}

char *sub_24F0DF09C()
{
  result = 0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 73);
  if (v7 <= 2)
  {
    if (*(v0 + 73))
    {
      if (v7 != 1)
      {
        return result;
      }

      v12 = *v0;
      if (v3 == 1)
      {
        return 0;
      }
    }

    else
    {
      v3 = ((*(v0 + 41) << 8) | ((*(v0 + 45) | (*(v0 + 47) << 16)) << 40) | v6);
      v12 = *(v0 + 32);
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      v2 = *(v0 + 48);
      LOBYTE(v6) = *(v0 + 72);
      if (v3 == 1)
      {
        return 0;
      }
    }

    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v71 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
        sub_24F0E8910(v12, v3, v2, v4);
        v72 = v3;
        v73 = [v71 init];
        v74 = [v73 stringFromByteCount_];
        v75 = sub_24F92B0D8();
        v120 = v76;

        v77 = [v73 stringFromByteCount_];
        v78 = sub_24F92B0D8();
        v80 = v79;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93A400;
        *(inited + 32) = 0x6574656C706D6F63;
        *(inited + 40) = 0xEF746E756F635F64;
        *(inited + 48) = v75;
        *(inited + 56) = v120;
        *(inited + 64) = 0x6F635F6C61746F74;
        *(inited + 72) = 0xEB00000000746E75;
        *(inited + 80) = v78;
        *(inited + 88) = v80;
        v82 = sub_24E6086DC(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
        swift_arrayDestroy();
        v83._countAndFlagsBits = 0xD000000000000017;
        v83._object = 0x800000024FA6BAE0;
        countAndFlagsBits = localizedString(_:with:)(v83, v82)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      return 0;
    }

    if (!v3)
    {
      return 0;
    }

    if (v4)
    {
      v42 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
      sub_24F0E8910(v12, v3, v2, v4);
      v43 = v3;
      v44 = v4;
      v45 = [v42 init];
      v46 = [v44 completedUnitCount];
      result = [v43 completedUnitCount];
      if (!__OFADD__(v46, result))
      {
        v47 = [v45 stringFromByteCount_];
        v48 = sub_24F92B0D8();
        v119 = v49;

        if ([v44 completedUnitCount] < 1 || (v50 = objc_msgSend(v43, sel_totalUnitCount), result = objc_msgSend(v44, sel_totalUnitCount), v5 = &result[v50], !__OFADD__(v50, result)))
        {
          v51 = [v45 stringFromByteCount_];
          v52 = sub_24F92B0D8();
          v54 = v53;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_24F93A400;
          *(v55 + 32) = 0x6574656C706D6F63;
          *(v55 + 40) = 0xEF746E756F635F64;
          *(v55 + 48) = v48;
          *(v55 + 56) = v119;
          *(v55 + 64) = 0x6F635F6C61746F74;
          *(v55 + 72) = 0xEB00000000746E75;
          *(v55 + 80) = v52;
          *(v55 + 88) = v54;
          v56 = sub_24E6086DC(v55);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
          swift_arrayDestroy();
          v57._countAndFlagsBits = 0xD000000000000017;
          v57._object = 0x800000024FA6BAE0;
          v58 = localizedString(_:with:)(v57, v56)._countAndFlagsBits;

          return v58;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

    sub_24F0E8910(v12, v3, v2, 0);

    goto LABEL_48;
  }

  switch(v7)
  {
    case 5u:
      if (v6)
      {
        if (!v3 || !v4)
        {
          return 0;
        }

        v13 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
        v14 = v3;
        v15 = v4;
        v16 = [v13 init];
        v17 = [v15 completedUnitCount];
        result = [v14 completedUnitCount];
        if (__OFADD__(v17, result))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          return result;
        }

        v18 = [v16 stringFromByteCount_];
        v19 = sub_24F92B0D8();
        v21 = v20;

        v22 = [v15 completedUnitCount];
        v23 = v5;
        if (v22 >= 1)
        {
          v24 = [v14 totalUnitCount];
          result = [v15 totalUnitCount];
          v23 = &result[v24];
          if (__OFADD__(v24, result))
          {
            goto LABEL_65;
          }
        }

        v25 = [v16 stringFromByteCount_];
        v26 = sub_24F92B0D8();
        v28 = v27;

        if (v5)
        {
          if (v5 >= 1)
          {
            v29 = sub_24F92BD08();
            if ((v30 & 1) == 0)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v29 = sub_24F92BD08();
          if ((v102 & 1) == 0)
          {
LABEL_58:
            v112 = [v16 stringFromByteCount_];
            v118 = sub_24F92B0D8();
            v114 = v113;

            v122 = ".AdditionalContent.NoThroughput";
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
            v115 = swift_initStackObject();
            *(v115 + 16) = xmmword_24F9479A0;
            *(v115 + 32) = 0x6574656C706D6F63;
            *(v115 + 40) = 0xEF746E756F635F64;
            *(v115 + 48) = v19;
            *(v115 + 56) = v21;
            *(v115 + 64) = 0x6F635F6C61746F74;
            *(v115 + 72) = 0xEB00000000746E75;
            *(v115 + 80) = v26;
            *(v115 + 88) = v28;
            *(v115 + 96) = 0xD000000000000010;
            *(v115 + 104) = 0x800000024FA6BBC0;
            *(v115 + 112) = v118;
            *(v115 + 120) = v114;
            v104 = sub_24E6086DC(v115);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
            swift_arrayDestroy();
            v105 = 0xD000000000000022;
LABEL_59:
            v106 = v122 | 0x8000000000000000;
            goto LABEL_60;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        v103 = swift_initStackObject();
        *(v103 + 16) = xmmword_24F93A400;
        *(v103 + 32) = 0x6574656C706D6F63;
        *(v103 + 40) = 0xEF746E756F635F64;
        *(v103 + 48) = v19;
        *(v103 + 56) = v21;
        *(v103 + 64) = 0x6F635F6C61746F74;
        *(v103 + 72) = 0xEB00000000746E75;
        *(v103 + 80) = v26;
        *(v103 + 88) = v28;
        v104 = sub_24E6086DC(v103);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
        swift_arrayDestroy();
        v105 = 0xD00000000000002FLL;
        v106 = 0x800000024FA6BB60;
LABEL_60:
        v116 = localizedString(_:with:)(*&v105, v104)._countAndFlagsBits;

        return v116;
      }

      if (!v2)
      {
        v8 = "OfferButton.Hint.Paused";
        v9 = 0xD00000000000001FLL;
        goto LABEL_6;
      }

      [*(v0 + 16) fractionCompleted];
      v60 = v59;
      v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v2 setNumberStyle_];
      v61 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v62 = [v2 stringFromNumber_];

      if (v62)
      {
        v63 = sub_24F92B0D8();
        v65 = v64;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        v66 = swift_initStackObject();
        *(v66 + 16) = xmmword_24F93DE60;
        *(v66 + 32) = 0xD000000000000010;
        v67 = v66 + 32;
        *(v66 + 40) = 0x800000024FA6BB40;
        *(v66 + 48) = v63;
        *(v66 + 56) = v65;
        v68 = sub_24E6086DC(v66);
        swift_setDeallocating();
        sub_24E601704(v67, &qword_27F219F90, &qword_24F955020);
        v69._countAndFlagsBits = 0xD00000000000001BLL;
        v69._object = 0x800000024FA6BB20;
        v70 = localizedString(_:with:)(v69, v68)._countAndFlagsBits;

        return v70;
      }

LABEL_48:

      return 0;
    case 4u:
      if (v3 && v4)
      {
        v31 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
        v14 = v3;
        v15 = v4;
        v16 = [v31 init];
        v32 = [v14 completedUnitCount];
        result = [v15 completedUnitCount];
        if (__OFADD__(v32, result))
        {
          __break(1u);
        }

        else
        {
          v33 = [v16 stringFromByteCount_];
          v34 = sub_24F92B0D8();
          v36 = v35;

          if ([v15 completedUnitCount] < 1)
          {
            if (v5 >= 1)
            {
              v85 = [v16 stringFromByteCount_];
              v39 = sub_24F92B0D8();
              v41 = v86;

LABEL_45:
              v87 = sub_24F92BD08();
              if ((v88 & 1) == 0)
              {
                v89 = [v16 stringFromByteCount_];
                v90 = sub_24F92B0D8();
                v121 = v14;
                v92 = v91;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
                v93 = swift_initStackObject();
                *(v93 + 16) = xmmword_24F9479A0;
                *(v93 + 32) = 0x6574656C706D6F63;
                *(v93 + 40) = 0xEF746E756F635F64;
                *(v93 + 48) = v34;
                *(v93 + 56) = v36;
                *(v93 + 64) = 0x6F635F6C61746F74;
                *(v93 + 72) = 0xEB00000000746E75;
                *(v93 + 80) = v39;
                *(v93 + 88) = v41;
                *(v93 + 96) = 0xD000000000000010;
                *(v93 + 104) = 0x800000024FA6BBC0;
                *(v93 + 112) = v90;
                *(v93 + 120) = v92;
                v94 = sub_24E6086DC(v93);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
                swift_arrayDestroy();
                v95._countAndFlagsBits = 0xD00000000000001CLL;
                v95._object = 0x800000024FA5BA40;
                v96 = localizedString(_:with:)(v95, v94)._countAndFlagsBits;

                return v96;
              }

LABEL_52:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
              v99 = swift_initStackObject();
              *(v99 + 16) = xmmword_24F93A400;
              *(v99 + 32) = 0x6574656C706D6F63;
              *(v99 + 40) = 0xEF746E756F635F64;
              *(v99 + 48) = v34;
              *(v99 + 56) = v36;
              *(v99 + 64) = 0x6F635F6C61746F74;
              *(v99 + 72) = 0xEB00000000746E75;
              *(v99 + 80) = v39;
              *(v99 + 88) = v41;
              v100 = sub_24E6086DC(v99);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
              swift_arrayDestroy();
              v101._countAndFlagsBits = 0xD000000000000029;
              v101._object = 0x800000024FA6BBE0;
              v96 = localizedString(_:with:)(v101, v100)._countAndFlagsBits;

              return v96;
            }

            [v14 totalUnitCount];
            goto LABEL_26;
          }

          v37 = [v14 totalUnitCount];
          result = [v15 totalUnitCount];
          if (!__OFADD__(v37, result))
          {
LABEL_26:
            v38 = [v16 stringFromByteCount_];
            v39 = sub_24F92B0D8();
            v41 = v40;

            if (v5)
            {
              if (v5 < 1)
              {
                goto LABEL_52;
              }

              goto LABEL_45;
            }

            v97 = sub_24F92BD08();
            if (v98)
            {
              goto LABEL_52;
            }

            v107 = [v16 stringFromByteCount_];
            v117 = sub_24F92B0D8();
            v108 = v36;
            v110 = v109;

            v122 = "OfferButton.Arcade.Title.Open";
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_24F9479A0;
            *(v111 + 32) = 0x6574656C706D6F63;
            *(v111 + 40) = 0xEF746E756F635F64;
            *(v111 + 48) = v34;
            *(v111 + 56) = v108;
            *(v111 + 64) = 0x6F635F6C61746F74;
            *(v111 + 72) = 0xEB00000000746E75;
            *(v111 + 80) = v39;
            *(v111 + 88) = v41;
            *(v111 + 96) = 0xD000000000000010;
            *(v111 + 104) = 0x800000024FA6BBC0;
            *(v111 + 112) = v117;
            *(v111 + 120) = v110;
            v104 = sub_24E6086DC(v111);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v105 = 0xD00000000000001CLL;
            goto LABEL_59;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      return 0;
    case 3u:
      v8 = "de.Title.PreorderedSubscribed";
      v9 = 0xD000000000000022;
LABEL_6:
      v10 = v8 | 0x8000000000000000;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      return localizedString(_:comment:)(*&v9, v11)._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_24F0DFFE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 10) = *(a1 + 58);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 10) = *(a2 + 58);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_24F0E59AC(v7, v9) & 1;
}

double sub_24F0E0078(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  sub_24F0E8528(v2, v1);

  swift_unknownObjectRelease();
  return result;
}

double AppOfferButtonPresenter.view.setter(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24F0E8528(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*AppOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F0E0198;
}

void sub_24F0E0198(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_24F0E846C();
    *(v3 + 24) = v4;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v2[5];
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 104))(v5, sel_offerButtonTapped, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F0E846C();
    *(v3 + 24) = v4;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = v2[5];
      v9 = *(v8 + 24);
      v10 = swift_getObjectType();
      (*(v9 + 104))(v8, sel_offerButtonTapped, v10, v9);
      swift_unknownObjectRelease();
    }

    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  swift_unknownObjectRelease();

  free(v2);
}

void AppOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void AppOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

double sub_24F0E0324(char a1)
{
  if (*(v1 + 158) != (a1 & 1))
  {
    if (*(v1 + 158))
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return result;
      }

      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = *(v3 + 88);

      v6(sub_24F0E899C, v5, ObjectType, v3);
    }

    else
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return result;
      }

      v7 = *(v1 + 24);
      v8 = swift_getObjectType();
      (*(v7 + 96))(v8, v7);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_24F0E0458(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 158);
    *(v2 + 158) = 0;
    sub_24F0E0324(v3);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, unsigned int *a8, __int16 a9, unsigned __int8 a10)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v15 = a6[3];
  v14 = a6[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a6, v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_24F0E4FF4(a1, a2, v24, v25, v26, v19, v27, v28, a9, HIBYTE(a9), a10, v10, v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v21;
}

double sub_24F0E0630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 240);
    v8 = *(Strong + 273);
    v9 = 2;
    if (v8 > 3)
    {
      if (v8 != 4 && v8 != 5)
      {
        goto LABEL_11;
      }

      v10 = (v7 >> 8) & 1;
    }

    else if (v8 == 1)
    {
      v10 = (v7 >> 8) & 1;
    }

    else
    {
      if (v8 != 3)
      {
LABEL_11:
        sub_24F0E06F0(a1, a2, v9);

        return result;
      }

      LODWORD(v10) = *(Strong + 200);
    }

    v9 = v10 & 1;
    goto LABEL_11;
  }

  return result;
}

double sub_24F0E06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (sub_24F0E3824())
  {
    v9 = *(v3 + 40);
    if (v9)
    {
      v10 = *(v9 + 72);
      if (*(v10 + 16))
      {

        v11 = sub_24E76DB58(12);
        if (v12)
        {
          v13 = (*(v10 + 56) + 16 * v11);
          v15 = *v13;
          v14 = v13[1];

          v16 = *(v4 + 216);
          v17 = *(v4 + 248);
          v32 = *(v4 + 232);
          v33[0] = v17;
          *(v33 + 10) = *(v4 + 258);
          v30 = *(v4 + 200);
          v31 = v16;
          v28 = v32;
          v29[0] = v17;
          *(v29 + 10) = *(v33 + 10);
          v26 = v30;
          v27 = v16;
          *(v4 + 200) = v15;
          *(v4 + 208) = v14;
          *(v4 + 273) = 11;

          sub_24EF7172C(&v30, v24);
          sub_24EF71698(&v26);
          sub_24F0E3770(&v30);
          sub_24EF71698(&v30);

          return result;
        }
      }
    }
  }

  if (a1)
  {
    v18 = swift_unknownObjectRetain();
    sub_24F0E2A04(v18, a2, a3, &v26);
    v19 = *(v4 + 216);
    v20 = *(v4 + 248);
    v32 = *(v4 + 232);
    v33[0] = v20;
    *(v33 + 10) = *(v4 + 258);
    v30 = *(v4 + 200);
    v31 = v19;
    v24[2] = v32;
    v25[0] = v20;
    *(v25 + 10) = *(v33 + 10);
    v24[0] = v30;
    v24[1] = v19;
    v21 = v27;
    *(v4 + 200) = v26;
    *(v4 + 258) = *(v29 + 10);
    v22 = v28;
    *(v4 + 248) = v29[0];
    *(v4 + 232) = v22;
    *(v4 + 216) = v21;
    sub_24EF7172C(&v30, v23);
    sub_24EF7172C(&v26, v23);
    sub_24EF71698(v24);
    sub_24F0E3770(&v30);
    sub_24EF71698(&v30);
    sub_24EF71698(&v26);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F0E08BC()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_16;
  }

  if (*(v1 + 122) != 1 || ((v2 = *(v1 + 97), v3 = v2 > 0xC, v4 = (1 << v2) & 0x1380, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v11 = *(v1 + 72);
    if (*(v11 + 16))
    {

      v12 = sub_24E76DB58(0);
      if (v13)
      {
        countAndFlagsBits = *(*(v11 + 56) + 16 * v12);

        goto LABEL_23;
      }
    }

LABEL_16:
    v15 = *(v0 + 32);
    if (v15 && *(v15 + 24))
    {
      countAndFlagsBits = *(v15 + 16);

      return countAndFlagsBits;
    }

    if (v1 && *(v1 + 208) == 1)
    {

      v16._object = 0x800000024FA5BAC0;
      v16._countAndFlagsBits = 0xD000000000000015;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v16)._countAndFlagsBits;

      goto LABEL_25;
    }

    v17._object = 0x800000024FA5BAC0;
    v17._countAndFlagsBits = 0xD000000000000015;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v17, v18)._countAndFlagsBits;
LABEL_23:

    return countAndFlagsBits;
  }

  v6 = *(v1 + 72);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_24E76DB58(13);
    if (v9)
    {
      countAndFlagsBits = *(*(v6 + 56) + 16 * v8);

LABEL_25:

      return countAndFlagsBits;
    }
  }

  if (*(v1 + 208) != 1)
  {
    v19._countAndFlagsBits = 0xD00000000000002BLL;
    v19._object = 0x800000024FA6B8C0;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v19, v20)._countAndFlagsBits;
    goto LABEL_25;
  }

  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = 0x800000024FA6B8C0;
  countAndFlagsBits = localizedStringForAdsLanguage(_:)(v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_24F0E0AA8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }
  }

  return 0;
}

double sub_24F0E0B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v11, ObjectType, a2);
    if (v14 >> 60)
    {
      if (v14 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(v11);
LABEL_12:
        LOBYTE(v10) = 1;
        goto LABEL_13;
      }

      v8 = v13 | v15;
      v9 = v11[3] | v11[2] | v11[1];
      if (v14 != 0x8000000000000000 || v8 | v11[0] | v12 | v9)
      {
        if (v14 == 0x8000000000000000 && v11[0] == 4)
        {
          v10 = v8 | v12 | v9;
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v11[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v10) = 0;
LABEL_13:
    *(v6 + 354) = v10;
    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

double sub_24F0E0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 240);
    v9 = *(Strong + 273);
    v10 = 2;
    if (v9 > 3)
    {
      if (v9 != 4 && v9 != 5)
      {
        goto LABEL_11;
      }

      v11 = (v8 >> 8) & 1;
    }

    else if (v9 == 1)
    {
      v11 = (v8 >> 8) & 1;
    }

    else
    {
      if (v9 != 3)
      {
LABEL_11:
        sub_24F0E06F0(a3, a4, v10);

        return result;
      }

      LODWORD(v11) = *(Strong + 200);
    }

    v10 = v11 & 1;
    goto LABEL_11;
  }

  return result;
}

double sub_24F0E0D10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F2105D0 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F22D7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v6 = *(v4 + 240);
    v7 = *(v4 + 273);
    v8 = 2;
    if (v7 > 3)
    {
      if (v7 != 4 && v7 != 5)
      {
        goto LABEL_13;
      }

      v9 = (v6 >> 8) & 1;
    }

    else if (v7 == 1)
    {
      v9 = (v6 >> 8) & 1;
    }

    else
    {
      if (v7 != 3)
      {
LABEL_13:
        sub_24F0E06F0(*(v4 + 128), *(v4 + 136), v8);
        _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();

        return result;
      }

      LODWORD(v9) = *(v4 + 200);
    }

    v8 = v9 & 1;
    goto LABEL_13;
  }

  return result;
}

void sub_24F0E0EE8()
{
  if (qword_27F2105D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F22D7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v2 = *(v0 + 240);
  v3 = *(v0 + 273);
  v4 = 2;
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v5 = (v2 >> 8) & 1;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      LODWORD(v5) = *(v0 + 200);
    }

    goto LABEL_11;
  }

  if (v3 == 4 || v3 == 5)
  {
    v5 = (v2 >> 8) & 1;
LABEL_11:
    v4 = v5 & 1;
  }

LABEL_12:
  sub_24F0E06F0(*(v0 + 128), *(v0 + 136), v4);

  _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t AppOfferButtonPresenter.deinit()
{
  [*(v0 + 160) removeObserver_];
  if (*(v0 + 128))
  {
    v1 = *(v0 + 136);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_24E883630(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  swift_unknownObjectRelease();

  sub_24E601704(v0 + 168, &qword_27F2129B0, &unk_24F945320);
  sub_24EF71118(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), HIBYTE(*(v0 + 272)));
  sub_24EF710F0(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352));
  return v0;
}

uint64_t AppOfferButtonPresenter.__deallocating_deinit()
{
  AppOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0E11FC()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 304);
  v43 = *(v0 + 312);
  v44 = *(v0 + 320);
  v5 = *(v0 + 352);
  if (v5 >> 8 > 0xFE || (v5 & 0xFF00) != 0x500)
  {
    return 0;
  }

  v6 = *(v0 + 321);
  v7 = (v0 + 322);
  if (v1 >= 0.97 || (v8 = *(v0 + 273), v8 > 9) || ((1 << v8) & 0x244) == 0)
  {
    *&v40 = v1;
    *(&v40 + 1) = v3;
    *&v41 = v2;
    v21 = *(v0 + 312);
    *(&v41 + 1) = v4;
    *v42 = v21;
    v42[8] = *(v0 + 320);
    v42[9] = v6;
    *&v42[10] = *v7;
    *&v42[24] = *(v0 + 336);
    *&v42[40] = v5;
    sub_24EF7172C(&v40, v35);
    goto LABEL_11;
  }

  v9 = *(v0 + 328);
  v33[2] = *(v0 + 312);
  v34[0] = v9;
  *(v34 + 10) = *(v0 + 338);
  v10 = *(v0 + 296);
  v33[0] = *(v0 + 280);
  v33[1] = v10;
  *(v0 + 280) = 0x3FF0000000000000;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 321) = v6 & 1;
  *(v0 + 353) = 5;
  *v35 = v1;
  v35[1] = v3;
  v35[2] = v2;
  v36 = v44;
  v35[3] = v4;
  v35[4] = v43;
  v37 = v6;
  v11 = *v7;
  *&v38[14] = *(v0 + 336);
  *v38 = v11;
  v39 = v5;
  sub_24EF7172C(v35, &v40);
  sub_24E601704(v33, &qword_27F234EF8, &unk_24F9B5488);
  v12 = objc_opt_self();
  if ([v12 disableActions])
  {
LABEL_11:

    return 0;
  }

  [v12 begin];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v13 = *(v0 + 148);
    v31 = *(v0 + 144);
    v32 = v13;
    v14 = *(v0 + 248);
    *v42 = *(v0 + 232);
    *&v42[16] = v14;
    *&v42[26] = *(v0 + 258);
    v15 = *(v0 + 216);
    v40 = *(v0 + 200);
    v41 = v15;
    v16 = *(v0 + 40);
    sub_24EF7172C(&v40, &aBlock);
    sub_24F0E15B8(&v40, v16, &aBlock);
    sub_24EF71698(&v40);
    v24 = aBlock;
    v25 = v27;
    (*(v22 + 64))(0, 0, &v31, &v24, v6 & 1, ObjectType, 1.0);
    swift_unknownObjectRelease();
    sub_24E97D004(v25, *(&v25 + 1));
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = 0x3FD6666666666666;
  *(v18 + 24) = v17;
  v29 = sub_24F0E8B80;
  v30 = v18;
  aBlock = MEMORY[0x277D85DD0];
  *&v27 = 1107296256;
  *(&v27 + 1) = sub_24EAF8248;
  v28 = &block_descriptor_21_0;
  v19 = _Block_copy(&aBlock);

  [v12 setCompletionBlock_];
  _Block_release(v19);
  [v12 commit];

  return 1;
}

unsigned __int8 *sub_24F0E15B8@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v12 = 0;
    v11 = 16;
    v13 = 3;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v4 = *(a2 + 240);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = result[73];
      if (v5 <= 9 && ((0x207u >> v5) & 1) != 0)
      {
        v6 = qword_24F9C8EB8[result[73]];
        v7 = a2;
        v8 = objc_opt_self();

        v9 = sub_24F92B588();
        LODWORD(v6) = [v8 isCapableOfAction:v6 capabilities:v9];

        a2 = v7;
        if (!v6)
        {
          v11 = *(v7 + 97);
          v13 = *(v7 + 104);
          v12 = *(v7 + 112);
          result = sub_24E9534EC(v13, v12);
          v10 = 5;
          goto LABEL_15;
        }
      }
    }
  }

  v10 = *(a2 + 96);
  v11 = *(a2 + 97);
  v13 = *(a2 + 104);
  v12 = *(a2 + 112);
  result = sub_24E9534EC(v13, v12);
  if (v10 == 7)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v11 == 16)
  {
    v11 = 0;
  }

  if (v13 == 3)
  {
    v13 = 0;
    v12 = 0;
  }

LABEL_15:
  *a3 = v10;
  *(a3 + 1) = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_24F0E16F4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(1);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v8 = *(v1 + 208);
    if (*(v1 + 121) == 1)
    {

      v9 = 0x800000024FA6BA60;
      v10 = 0xD00000000000001CLL;
      if (!v8)
      {
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(*&v10, v11)._countAndFlagsBits;
LABEL_13:
        v13 = countAndFlagsBits;

        return v13;
      }

LABEL_12:
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(*&v10)._countAndFlagsBits;
      goto LABEL_13;
    }

    v7 = 0x800000024FA6BA40;
    if (*(v1 + 208))
    {

      v10 = 0xD00000000000001CLL;
      v9 = 0x800000024FA6BA40;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0x800000024FA6BA40;
  }

  v14 = 0xD00000000000001CLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v15)._countAndFlagsBits;
}

uint64_t sub_24F0E1828()
{
  v1 = *(v0 + 40);
  if (v1)
  {

    v2 = sub_24F0E08BC();
    v4 = *(v1 + 224);
    if (v4)
    {
      if (v2 == *(v1 + 216) && v4 == v3)
      {

LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24F93DE60;
        *(inited + 32) = 0x6563697270;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = sub_24F0E08BC();
        *(inited + 56) = v9;
        v10 = sub_24E6086DC(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
        v11._object = 0x800000024FA6BA80;
        v11._countAndFlagsBits = 0xD000000000000018;
        countAndFlagsBits = localizedString(_:with:)(v11, v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      v6 = sub_24F92CE08();

      if (v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  return sub_24F0E08BC();
}

uint64_t sub_24F0E19A4()
{
  v1 = *(v0 + 273);
  if (v1 == 11)
  {
    v2 = 1;
    return v2 & 1;
  }

  if (v1 != 8)
  {
    v3 = (v0 + 200);
    v4 = *(v0 + 40);
    if (v4)
    {
      if (*(v4 + 96) == 5)
      {
        if (qword_27F2105D0 != -1)
        {
          swift_once();
        }

        v5 = sub_24F92AAE8();
        __swift_project_value_buffer(v5, qword_27F22D7F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93A400;
        sub_24F928448();
LABEL_10:
        sub_24F9283A8();
        sub_24F92A588();

        v2 = 0;
        return v2 & 1;
      }

      v8 = *(v0 + 248);
      v19 = *(v0 + 232);
      *v20 = v8;
      *&v20[10] = *(v0 + 258);
      v9 = *(v0 + 216);
      v17 = *v3;
      v18 = v9;
      v10 = *(v4 + 240);
      if (v10)
      {
        if (*(v10 + 16))
        {
          if (v20[25] <= 9u && ((0x207u >> v20[25]) & 1) != 0)
          {
            v11 = qword_24F9C8EB8[v20[25]];
            v12 = objc_opt_self();
            sub_24EF7172C(&v17, &v16);

            v13 = sub_24F92B588();
            LODWORD(v11) = [v12 isCapableOfAction:v11 capabilities:v13];
            sub_24EF71698(&v17);

            if (!v11)
            {
              if (qword_27F2105D0 != -1)
              {
                swift_once();
              }

              v15 = sub_24F92AAE8();
              __swift_project_value_buffer(v15, qword_27F22D7F8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
              sub_24F928468();
              *(swift_allocObject() + 16) = xmmword_24F93A400;
              sub_24F928448();
              goto LABEL_10;
            }
          }
        }
      }
    }

    else
    {
      v6 = *(v0 + 248);
      v19 = *(v0 + 232);
      *v20 = v6;
      *&v20[10] = *(v0 + 258);
      v7 = *(v0 + 216);
      v17 = *v3;
      v18 = v7;
    }

    v2 = !sub_24F0E3824();
    return v2 & 1;
  }

  v2 = *(v0 + 159);
  return v2 & 1;
}

uint64_t sub_24F0E1D30(uint64_t a1, double a2)
{
  v21 = sub_24F927D88();
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DE8();
  v20 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v15 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v19 = *(v9 + 8);
  v19(v11, v8);
  aBlock[4] = sub_24F0E8B8C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_24_0;
  v16 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  v17 = v21;
  sub_24F92C6A8();
  MEMORY[0x253051820](v14, v7, v4, v16);
  _Block_release(v16);

  (*(v24 + 8))(v4, v17);
  (*(v22 + 8))(v7, v23);
  return (v19)(v14, v20);
}

double sub_24F0E20D0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

void sub_24F0E2128(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (!v2[4])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
    v17 = 0uLL;
    v18 = -256;
    goto LABEL_44;
  }

  v5 = v2;
  v41 = *a1;
  v6 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v35 = *(a1 + 2);
  v36 = *(a1 + 1);
  v34 = *(a1 + 3);
  v7 = *(a1 + 6);
  v38 = *(a1 + 5);
  v39 = *(a1 + 4);
  v37 = *(a1 + 7);
  v8 = v2[9];
  v9 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v8);
  v10 = *(v9 + 8);

  v11 = v10(v8, v9);
  v12 = v2[5];
  if (v12)
  {
    v13 = v12[120];
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v43[0]) = v41;
    *(v43 + 1) = v6;
    HIBYTE(v43[0]) = BYTE6(v6);
    *(v43 + 5) = WORD2(v6);
    v43[1] = v36;
    v43[2] = v35;
    v43[3] = v34;
    v43[4] = v39;
    v43[5] = v38;
    v43[6] = v7;
    v43[7] = v37;
    sub_24F0E257C(v43, v44);
    v18 = v48;
    if (HIBYTE(v48) <= 0xFEu)
    {
      v14 = v44[0];
      v15 = v44[1];
      v16 = v44[2];
      v5 = v44[3];
      v40 = v46;
      v42 = v45;
      v7 = v47;

      v4 = v40;
      v17 = v42;
      goto LABEL_44;
    }

    goto LABEL_8;
  }

  v13 = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  type metadata accessor for SelectAppAction(0);
  if (swift_dynamicCastClass())
  {
    v19 = v7 >> 60;
    if (v7 >> 60 == 1)
    {
      if (!v12 || (v41 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v12[122])
      {
        goto LABEL_41;
      }

      v29 = v12[16];
      if (v29 <= 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v19 != 4)
      {
        if (v19 == 8)
        {
          if ((v20 = v41 | (v6 << 8), v21 = v35 | v36 | v34, v7 == 0x8000000000000000) && !(v21 | v39 | v38 | v37 | v20) || v7 == 0x8000000000000000 && v20 == 4 && !(v21 | v39 | v38 | v37))
          {
            v14 = sub_24F0E08BC();
            v15 = v22;
            if ((v13 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_34:

            v16 = 0;
            v5 = 0;
LABEL_43:
            v18 = 2560;
            goto LABEL_44;
          }
        }

LABEL_33:
        v14 = sub_24F0E08BC();
        v15 = v30;
        goto LABEL_34;
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      v29 = v12[16];
      if (v29 <= 1)
      {
LABEL_38:
        v7 = sub_24F92CE08();

        v14 = sub_24F0E08BC();
        v15 = v31;
        if (v7)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    if (v29 == 2)
    {
      goto LABEL_38;
    }

LABEL_41:
    v14 = sub_24F0E08BC();
    v15 = v32;
LABEL_42:
    v16 = sub_24F0E0AA8();
    v5 = v33;

    goto LABEL_43;
  }

  type metadata accessor for UnhideAppAction(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden;
    v25 = v23;
    swift_beginAccess();
    if (*(v25 + v24) == 1)
    {
      v14 = sub_24F0E08BC();
      v15 = v26;
      v16 = sub_24F0E0AA8();
      v5 = v27;

      v7 = 0;
      v18 = 0;
      v17 = xmmword_24F9406F0;
LABEL_36:
      v4 = 0uLL;
      goto LABEL_44;
    }
  }

  if ((sub_24F0E26CC(v5[16], v5[17]) & 1) == 0)
  {

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
    v17 = 0uLL;
    v18 = -256;
    goto LABEL_36;
  }

  v16 = v5;
  v14 = sub_24F0E2828();
  v15 = v28;

  v18 = 2304;
LABEL_44:
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v5;
  *(a2 + 32) = v17;
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  *(a2 + 72) = v18;
}

uint64_t sub_24F0E257C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  if (v4 >> 60 == 3)
  {
    goto LABEL_10;
  }

  if (v4 >> 60 != 8)
  {
    result = 0;
    object = 0;
    v13 = 0;
    v11 = -256;
    goto LABEL_16;
  }

  v5 = a1[4];
  v6 = *a1;
  v7 = a1[5] | a1[7];
  v8 = a1[3] | a1[2] | a1[1];
  if (v4 == 0x8000000000000000 && (v7 | *a1 | v5 | v8) == 0)
  {
    goto LABEL_10;
  }

  result = 0;
  v11 = -256;
  if (v4 != 0x8000000000000000 || v6 != 4)
  {
    object = 0;
    v13 = 0;
    goto LABEL_16;
  }

  object = 0;
  v13 = 0;
  if (!(v7 | v5 | v8))
  {
LABEL_10:
    v14 = *(v2 + 40);
    if (v14 && *(v14 + 208) == 1)
    {

      v15._object = 0x800000024FA500B0;
      v15._countAndFlagsBits = 0xD000000000000016;
      v16 = localizedStringForAdsLanguage(_:)(v15);

      object = v16._object;
      result = v16._countAndFlagsBits;
    }

    else
    {
      v17._object = 0x800000024FA500B0;
      v17._countAndFlagsBits = 0xD000000000000016;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = localizedString(_:comment:)(v17, v18);
      object = v19._object;
      result = v19._countAndFlagsBits;
    }

    v11 = 0;
    v13 = 1;
  }

LABEL_16:
  *a2 = result;
  *(a2 + 8) = object;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_24F0E26CC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 124) != 1)
  {
    return 0;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v8 = *(v3 + 40);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v9 = sub_24F3E5298(v8, v4, 0);
  v10 = [v9 isPlaceholder];

  if (v10)
  {
    return 0;
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(v14, *(v5 + 157), ObjectType, a2);
    v12 = v15 >> 60;
    if ((v15 >> 60) > 4)
    {
      if (v12 != 6 && v12 != 5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      if (v12 != 4)
      {
LABEL_14:
        sub_24E88D2AC(v14);
        return 1;
      }
    }

    sub_24E88D2AC(v14);
    return 0;
  }

  return 1;
}

uint64_t sub_24F0E2828()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v7 = 0x800000024FA5BA00;
LABEL_6:
    v8 = 0xD000000000000016;
    goto LABEL_17;
  }

  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {

    v3 = sub_24E76DB58(4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  if (*(v1 + 16) > 2u)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      v7 = 0x800000024FA5BA00;
      if (*(v1 + 208) == 1)
      {

        v10 = 0xD000000000000016;
        v11 = 0x800000024FA5BA00;
LABEL_15:
        countAndFlagsBits = localizedStringForAdsLanguage(_:)(*&v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      goto LABEL_6;
    }
  }

  if (*(v1 + 208) == 1)
  {

    v10 = 0xD00000000000001DLL;
    v11 = 0x800000024FA5BA20;
    goto LABEL_15;
  }

  v8 = 0xD00000000000001DLL;
  v7 = 0x800000024FA5BA20;
LABEL_17:
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v13)._countAndFlagsBits;
}