uint64_t sub_21688B76C()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688B7D8(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE900000000000074;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688B868(char a1)
{
  v2 = "";
  switch(a1)
  {
    case 1:
      v2 = "musicAddToLibrary";
      break;
    case 2:
      v2 = "musicAddToPlaylist";
      break;
    case 3:
      v2 = "musicPlaybackUpsell";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688B980(char a1)
{
  if (a1)
  {
    v1 = 0xEF7265766F436E65;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688BA3C()
{
  OUTLINED_FUNCTION_90_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v1, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688BAC4(char a1, char a2)
{
  v2 = "nded";
  if (a1)
  {
    v3 = "compactHorizontalSizeClassOnly";
  }

  else
  {
    v3 = "nded";
  }

  if (a2)
  {
    v2 = "compactHorizontalSizeClassOnly";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21700F7D4();
  }

  return v4 & 1;
}

uint64_t sub_21688BB60(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1684828002;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1684828002;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_21688BBEC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "nextPageAppearance";
    }

    else
    {
      v2 = "nextPageDisappearance";
    }
  }

  else
  {
    v2 = "tSection";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688BCC0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0x6974616D6F747561;
  v6 = 0xE900000000000063;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_104_3();
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_104_3() & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v6 = 0xEB00000000656772;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      OUTLINED_FUNCTION_103_6();
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
      break;
    case 3:
      OUTLINED_FUNCTION_103_6();
      v2 = 26482;
      OUTLINED_FUNCTION_124_2();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688BDE4(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6448503;
  }

  else
  {
    v3 = 0x63696D616E7964;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6448503;
  }

  else
  {
    v5 = 0x63696D616E7964;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_21688BE70(char a1, uint64_t a2)
{
  v2 = 0xEA0000000000796CLL;
  v3 = 0x6E4F73616D6D6F63;
  v4 = "commasWithAmpersand";
  if (a1)
  {
    OUTLINED_FUNCTION_143_0();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xED0000646E416874;
    }
  }

  else
  {
    v9 = 0x6E4F73616D6D6F63;
    v10 = 0xEA0000000000796CLL;
  }

  if (a2)
  {
    v11 = (v4 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x695773616D6D6F63;
    }

    if (a2 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = 0xED0000646E416874;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_62_3(v9, a2, v3);
  }

  return v13 & 1;
}

uint64_t sub_21688BF70(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6C6C616D73;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x72616C75676572;
    }

    else
    {
      v4 = 0x656772616CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6C6C616D73;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x72616C75676572;
    }

    else
    {
      v2 = 0x656772616CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688C054(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x656C63726963;
  }

  else
  {
    v2 = 0x657261757173;
  }

  if (a2)
  {
    v3 = 0x656C63726963;
  }

  else
  {
    v3 = 0x657261757173;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21688C0CC()
{
  OUTLINED_FUNCTION_90_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE900000000000072;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v1, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688C15C()
{
  OUTLINED_FUNCTION_101_3();
  v2 = 0xE600000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE800000000000000;
      v5 = 0x647261646E617473;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_104_3();
      break;
    case 3:
      v2 = 0xE700000000000000;
      v5 = 0x6B726F77747261;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v5 = 0x676E6964616F6CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE800000000000000;
      v1 = 0x647261646E617473;
      break;
    case 2:
      OUTLINED_FUNCTION_103_6();
      break;
    case 3:
      v6 = 0xE700000000000000;
      v1 = 0x6B726F77747261;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v1 = 0x676E6964616F6CLL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, v0, v1);
  }

  return v8 & 1;
}

uint64_t sub_21688C2A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6B63696C63;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6B63696C63;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_38_8(22);
      break;
    case 2:
      v5 = 0x4565727574616566;
      v6 = 0x64656761676ELL;
      goto LABEL_6;
    case 3:
      v5 = 0x6574617453696C6DLL;
      v6 = 0x65676E616843;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701273968;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_37_12();
      break;
    case 2:
      v2 = 0x4565727574616566;
      v8 = 0x64656761676ELL;
      goto LABEL_12;
    case 3:
      v2 = 0x6574617453696C6DLL;
      v8 = 0x65676E616843;
LABEL_12:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1701273968;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_21688C414()
{
  OUTLINED_FUNCTION_66_8();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
      break;
    case 3:
      OUTLINED_FUNCTION_136_0();
      break;
    default:
      v5 = OUTLINED_FUNCTION_38_8(30);
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      break;
    case 2:
      v1 = 0x6572676F72506E69;
      v6 = 0xEA00000000007373;
      break;
    case 3:
      v1 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
      break;
    default:
      OUTLINED_FUNCTION_37_12();
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, v0, v1);
  }

  return v8 & 1;
}

uint64_t sub_21688C544(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEF64656464416E69;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688C5E0(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688C668(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000736E69;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688C700()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688C77C()
{
  OUTLINED_FUNCTION_71_7();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 0x7265766F706F70;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = 0x6572616873;
      break;
    case 3:
      v5 = 0x747865746E6F63;
      break;
    case 4:
      OUTLINED_FUNCTION_137_0();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v1 = 0x7265766F706F70;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v1 = 0x6572616873;
      break;
    case 3:
      v1 = 0x747865746E6F63;
      break;
    case 4:
      v1 = 0x616C506F54646461;
      v6 = 0xED00007473696C79;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, v0, v1);
  }

  return v8 & 1;
}

uint64_t sub_21688C8D4(char a1)
{
  if (a1)
  {
    v1 = 0xEE006C6169726574;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688C970(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E6E657473696CLL;
  v4 = a1;
  v5 = 0x6F4E6E657473696CLL;
  v6 = 0xE900000000000077;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6573776F7262;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x6F69646172;
      break;
    case 3:
      v5 = 0x614C686372616573;
      v7 = 0x676E69646ELL;
      goto LABEL_6;
    case 4:
      v5 = 0x6552686372616573;
      v7 = 0x73746C7573;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x736F65646976;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6573776F7262;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6F69646172;
      break;
    case 3:
      OUTLINED_FUNCTION_101_3();
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v9 = 0x676E69646ELL;
      goto LABEL_13;
    case 4:
      OUTLINED_FUNCTION_101_3();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      v9 = 0x73746C7573;
LABEL_13:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x736F65646976;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_62_3(v5, a2, v3);
  }

  return v12 & 1;
}

uint64_t sub_21688CB18()
{
  OUTLINED_FUNCTION_90_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v1, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688CBA4(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688CC38()
{
  OUTLINED_FUNCTION_90_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE90000000000006ELL;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v1, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688CCC8()
{
  OUTLINED_FUNCTION_90_4();
  if (v7)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE900000000000074;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v1 == v3 && v0 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v1, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_21688CD58(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "EnableScratchpad";
    }

    else
    {
      v2 = "ApplicationScriptURL";
    }
  }

  else
  {
    v2 = "SwiftMusicDisableJavaScript";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688CE2C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "laimerPresentation";
    }

    else
    {
      v2 = "isclaimerPresentation";
    }
  }

  else
  {
    v2 = "ScriptURLStoredDeviceVersion";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688CEF8(char a1)
{
  if (a1)
  {
    v2 = "newFeaturesNoticePresentation";
  }

  else
  {
    v2 = "privacyDisclaimerPresentation";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688CFA0(char a1)
{
  if (a1)
  {
    v2 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v2 = "isUMCachePolicyEnabled";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688D034(char a1, uint64_t a2)
{
  v3 = 0xD00000000000001BLL;
  v4 = "libraryImportWebView";
  v5 = "libraryImportWebView";
  switch(a1)
  {
    case 1:
      v5 = "SwiftMusicURLSchemeOverride";
      goto LABEL_4;
    case 2:
      v5 = "SwiftMusicURLHostOverride";
LABEL_4:
      v3 = 0xD000000000000019;
      break;
    case 3:
      v5 = "SwiftMusicURLPortOverride";
      v3 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001BLL;
  switch(a2)
  {
    case 1:
      v4 = "SwiftMusicURLSchemeOverride";
      goto LABEL_9;
    case 2:
      v4 = "SwiftMusicURLHostOverride";
LABEL_9:
      v6 = 0xD000000000000019;
      break;
    case 3:
      v4 = "SwiftMusicURLPortOverride";
      v6 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v3, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_21688D154(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656772616CLL;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x656772616CLL;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_21688D1E4()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688D260(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_21688D2E4(char a1, uint64_t a2)
{
  v2 = 0x65726E6567;
  if (a1)
  {
    OUTLINED_FUNCTION_91_7();
    if (v3)
    {
      v5 = 2003789939;
    }

    else
    {
      v5 = 0x726F7461727563;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x65726E6567;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
    if (v7)
    {
      v2 = 2003789939;
    }

    else
    {
      v2 = 0x726F7461727563;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_21688D3B8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6D744179626C6F64;
  v3 = 0xEA0000000000736FLL;
  v4 = a1;
  v5 = 0x6D744179626C6F64;
  switch(v4)
  {
    case 1:
      v5 = 0x64754179626C6F64;
      v3 = 0xEA00000000006F69;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x7373656C73736F6CLL;
      break;
    case 3:
      v5 = 0x736F4C7365526968;
      v6 = 0x7373656C73;
      goto LABEL_6;
    case 4:
      v5 = 0x4D6C617469676964;
      v6 = 0x7265747361;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xEA0000000000736FLL;
  switch(a2)
  {
    case 1:
      v2 = 0x64754179626C6F64;
      v7 = 0xEA00000000006F69;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v2 = 0x7373656C73736F6CLL;
      break;
    case 3:
      v2 = 0x736F4C7365526968;
      v8 = 0x7373656C73;
      goto LABEL_12;
    case 4:
      v2 = 0x4D6C617469676964;
      v8 = 0x7265747361;
LABEL_12:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_21688D578(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  OUTLINED_FUNCTION_144_0();
  v7 = (a3)(a2);
  if (v4 == v7 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_28_17(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_21688D628(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6472616F6279656BLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6472616F6279656BLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x79726F7473;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1701998445;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x636972796CLL;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x80000002170801D0;
      break;
    case 5:
      v3 = 0x80000002170801F0;
      v5 = 0xD000000000000012;
      break;
    case 6:
      v5 = 0x6E654D6570697773;
      v3 = 0xE900000000000075;
      break;
    case 7:
      v3 = 0x8000000217080210;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x79726F7473;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1701998445;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x636972796CLL;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v6 = 0x80000002170801D0;
      break;
    case 5:
      v6 = 0x80000002170801F0;
      v2 = 0xD000000000000012;
      break;
    case 6:
      v2 = 0x6E654D6570697773;
      v6 = 0xE900000000000075;
      break;
    case 7:
      v6 = 0x8000000217080210;
      v2 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_21688D870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_144_0();
  v6 = a3();
  if (v4 == v6 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17(v4, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_21688D900()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688D9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_2168A5534(a4, a5, a6);
  sub_21700E7C4();
  sub_21700E7C4();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_62_3(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_21688DA88()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688DB04(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688DC00(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688DC70(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688DCD4(uint64_t a1, unsigned __int8 a2)
{
  sub_21700E614();
}

uint64_t sub_21688DD54(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688DDBC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_136_0();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688DEC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_113_4();
      break;
    case 3:
      OUTLINED_FUNCTION_40();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688DF68(uint64_t a1, unsigned __int8 a2)
{
  sub_21700E614();
}

uint64_t sub_21688DFEC(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E04C()
{
  OUTLINED_FUNCTION_134_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_133();
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E11C(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E184(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_94_6();
      break;
    case 3:
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_94_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E22C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
  }

  sub_21700E614();
}

uint64_t sub_21688E2A4(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E304(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_40();
      break;
    case 3:
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E3C0()
{
  OUTLINED_FUNCTION_130_0();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E49C(uint64_t a1, unsigned __int8 a2)
{
  sub_21700E614();
}

uint64_t sub_21688E538(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 2:
      OUTLINED_FUNCTION_126();
      break;
    case 4:
      OUTLINED_FUNCTION_44_12();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E5F8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 3:
      OUTLINED_FUNCTION_124_2();
      break;
    case 4:
      OUTLINED_FUNCTION_44_12();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E6B8()
{
  OUTLINED_FUNCTION_123_1();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_40();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E7C8(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E810(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E87C(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E928(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688E9D0()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688EA34(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688EA90(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688EAF4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_127();
  }

  sub_21700E614();
}

uint64_t sub_21688EB70(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688EBEC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_143_0();
  }

  sub_21700E614();
}

uint64_t sub_21688EC80(uint64_t a1, unsigned __int8 a2)
{
  sub_21700E614();
}

uint64_t sub_21688ED04()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688ED70()
{
  OUTLINED_FUNCTION_120_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_94_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688EE24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 2:
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688EEFC()
{
  OUTLINED_FUNCTION_44_12();
  switch(v0)
  {
    case 1:
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_136_0();
      break;
    default:
      OUTLINED_FUNCTION_40();
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688EFA8(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F020(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F084(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F0F8(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F150()
{
  OUTLINED_FUNCTION_113_4();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_137_0();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688F22C(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F2A4(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F330(uint64_t a1, char a2, uint64_t a3)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_120_2();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688F418()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688F480(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F4F0()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688F55C()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688F5E4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_127();
  }

  sub_21700E614();
}

uint64_t sub_21688F660(uint64_t a1, unsigned __int8 a2)
{
  sub_21700E614();
}

uint64_t sub_21688F6FC(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F77C(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F7E4(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F890(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F8E8(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688F948(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
  }

  sub_21700E614();
}

uint64_t sub_21688F9DC(uint64_t a1, char a2)
{
  sub_21700E614();
}

uint64_t sub_21688FAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_121_1(v3, v4);
}

uint64_t sub_21688FB5C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
    case 7:
      OUTLINED_FUNCTION_40();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688FCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_121_1(v3, v4);
}

uint64_t sub_21688FD0C(uint64_t a1, char a2)
{
  sub_21700E614();
}

void ContentDescriptor.init(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v82 = v23;
  v25 = v24;
  v27 = v26;
  v80 = v28;
  v86 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  v34 = &v74 - v33;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  v81 = &v74 - v40;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v74 - v43;
  v45 = *(v36 + 16);
  v85 = v27;
  v83 = v46;
  v45(&v74 - v43, v27, v42);
  v84 = v30;
  v47 = *(v30 + 16);
  v48 = v86;
  v47(v34, v25);
  v49 = v82;
  ContentKind.init(deserializing:using:)(v44, v34, v50, v51, v52, v53, v54, v55, v74, v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  if (v49)
  {
    (*(v84 + 8))(v25, v48);
    (*(v36 + 8))(v85, v83);
  }

  else
  {
    v75 = v47;
    v76 = v25;
    v82 = v36;
    v56 = v81;
    *v80 = a13;
    v57 = v85;
    sub_21700CE04();
    if (sub_21700CDA4())
    {
      v58 = sub_21700E2E4();
      v59 = sub_2168A5534(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      OUTLINED_FUNCTION_12(v58, v59);
      v61 = v60;
      v62 = type metadata accessor for ContentDescriptor(0);
      *v61 = 0x696669746E656469;
      v61[1] = 0xEB00000000737265;
      v61[2] = v62;
      OUTLINED_FUNCTION_50();
      (*(v63 + 104))(v61);
      swift_willThrow();
      (*(v84 + 8))(v76, v86);
      v64 = v83;
      v65 = *(v82 + 8);
      v65(v57, v83);
      v65(v56, v64);
    }

    else
    {
      v66 = OUTLINED_FUNCTION_109();
      v67 = v83;
      (v45)(v66);
      v75(v78, v76, v86);
      ContentIdentifiers.init(deserializing:using:)();
      v68 = v82;
      memcpy(v80 + 8, v87, 0x69uLL);
      v69 = v77;
      v70 = v85;
      sub_21700CE04();
      type metadata accessor for ContentDescriptor(0);
      sub_21700CD34();
      v71 = OUTLINED_FUNCTION_128();
      v72(v71);
      v73 = *(v68 + 8);
      v73(v70, v67);
      v73(v69, v67);
      v73(v81, v67);
    }
  }

  OUTLINED_FUNCTION_21_4();
}

JSValue __swiftcall ContentDescriptor.makeValue(in:)(JSContext in)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_0();
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __dst[0] = *v1;
    sub_216890F8C(result.super.isa, in.super.isa);
    memcpy(v15, v1 + 8, 0x69uLL);
    memcpy(v14, v1 + 8, 0x69uLL);
    sub_21686BC90(v15, __dst);
    ContentIdentifiers.makeValue(in:)(in);
    memcpy(__dst, v14, 0x69uLL);
    sub_21686BCEC(__dst);
    sub_21700F0B4();
    v8 = type metadata accessor for ContentDescriptor(0);
    sub_2168282D4(&v1[*(v8 + 24)], v2, &qword_27CABA820, &unk_217018CE0);
    v9 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
    {
      sub_2166997CC(v2, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v10 = sub_217005DE4();
      v12 = v11;
      OUTLINED_FUNCTION_50();
      (*(v13 + 8))(v2, v9);
      v14[0] = v10;
      v14[1] = v12;
      sub_21700DD04();

      sub_21700F0B4();
    }

    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_216890478()
{
  switch(*v0)
  {
    case 4:
    case 0x16:
      return;
    case 5:
      OUTLINED_FUNCTION_77_6();
      break;
    case 6:
      OUTLINED_FUNCTION_69_7();
      break;
    case 7:
      OUTLINED_FUNCTION_68_6();
      break;
    case 8:
      OUTLINED_FUNCTION_48_9();
      break;
    case 9:
      OUTLINED_FUNCTION_70_4();
      break;
    case 0xA:
      OUTLINED_FUNCTION_17_5();
      break;
    case 0xB:
      OUTLINED_FUNCTION_47_10();
      break;
    case 0xC:
      OUTLINED_FUNCTION_93_6();
      break;
    case 0xD:
      OUTLINED_FUNCTION_60_4();
      break;
    case 0xE:
    case 0xF:
      OUTLINED_FUNCTION_79_8();
      break;
    case 0x10:
      OUTLINED_FUNCTION_49_9();
      break;
    case 0x11:
      OUTLINED_FUNCTION_53_8();
      break;
    case 0x12:
      OUTLINED_FUNCTION_46_10();
      break;
    case 0x13:
      OUTLINED_FUNCTION_84_7();
      break;
    case 0x14:
      OUTLINED_FUNCTION_61_4();
      break;
    case 0x15:
      OUTLINED_FUNCTION_72_7();
      break;
    default:
      OUTLINED_FUNCTION_52_6();
      break;
  }
}

uint64_t sub_216890548()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC0, &qword_21702DD80);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  MEMORY[0x21CE9F090](v2);
  v5 = sub_21700E264();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2166997CC(v4, &qword_27CABACC0, &qword_21702DD80);
  }

  else
  {
    v6 = sub_21700E254();
    OUTLINED_FUNCTION_50();
    (*(v7 + 8))(v4, v5);
    v8 = [v6 ams_DSID];

    if (v8)
    {
      v9 = [v8 stringValue];

      sub_21700E514();
    }
  }

  return OUTLINED_FUNCTION_8();
}

MusicUI::ContentKind::AppleCuratorKind_optional __swiftcall ContentKind.AppleCuratorKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21700F5E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContentKind.AppleCuratorKind.rawValue.getter()
{
  v1 = 2003789939;
  if (*v0 != 1)
  {
    v1 = 0x726F7461727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726E6567;
  }
}

uint64_t sub_216890760@<X0>(uint64_t *a1@<X8>)
{
  result = ContentKind.AppleCuratorKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void ContentKind.init(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v26 = v25;
  v28 = v27;
  v29 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_125_1();
  sub_21700CE04();
  sub_21689D37C();
  sub_21700CCD4();
  if (v23)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v37 + 8))(v26);
    v38 = *(v31 + 8);
    v39 = OUTLINED_FUNCTION_104_0();
    v38(v39);
    (v38)(v24, v29);
  }

  else
  {
    v82 = v28;
    v40 = *(v31 + 8);
    v40(v24, v29);
    switch(a13)
    {
      case 1:
        OUTLINED_FUNCTION_105_3();
        sub_21700CE04();
        sub_21689D3D0();
        sub_21700CD14();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v64 + 8))(v26);
        v65 = OUTLINED_FUNCTION_104_0();
        (v40)(v65);
        v40(v35, v29);
        v43 = a12;
        break;
      case 2:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v56 + 8))(v26);
        v57 = OUTLINED_FUNCTION_104_0();
        (v40)(v57);
        v43 = 5;
        break;
      case 3:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v60 + 8))(v26);
        v61 = OUTLINED_FUNCTION_104_0();
        (v40)(v61);
        v43 = 6;
        break;
      case 4:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v50 + 8))(v26);
        v51 = OUTLINED_FUNCTION_104_0();
        (v40)(v51);
        v43 = 7;
        break;
      case 5:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v68 + 8))(v26);
        v69 = OUTLINED_FUNCTION_104_0();
        (v40)(v69);
        v43 = 8;
        break;
      case 6:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v72 + 8))(v26);
        v73 = OUTLINED_FUNCTION_104_0();
        (v40)(v73);
        v43 = 9;
        break;
      case 7:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v62 + 8))(v26);
        v63 = OUTLINED_FUNCTION_104_0();
        (v40)(v63);
        v43 = 10;
        break;
      case 8:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v78 + 8))(v26);
        v79 = OUTLINED_FUNCTION_104_0();
        (v40)(v79);
        v43 = 11;
        break;
      case 9:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v54 + 8))(v26);
        v55 = OUTLINED_FUNCTION_104_0();
        (v40)(v55);
        v43 = 12;
        break;
      case 10:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v76 + 8))(v26);
        v77 = OUTLINED_FUNCTION_104_0();
        (v40)(v77);
        v43 = 13;
        break;
      case 11:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v48 + 8))(v26);
        v49 = OUTLINED_FUNCTION_104_0();
        (v40)(v49);
        v43 = 14;
        break;
      case 12:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v52 + 8))(v26);
        v53 = OUTLINED_FUNCTION_104_0();
        (v40)(v53);
        v43 = 15;
        break;
      case 13:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v70 + 8))(v26);
        v71 = OUTLINED_FUNCTION_104_0();
        (v40)(v71);
        v43 = 16;
        break;
      case 14:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v46 + 8))(v26);
        v47 = OUTLINED_FUNCTION_104_0();
        (v40)(v47);
        v43 = 17;
        break;
      case 15:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v58 + 8))(v26);
        v59 = OUTLINED_FUNCTION_104_0();
        (v40)(v59);
        v43 = 18;
        break;
      case 16:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v44 + 8))(v26);
        v45 = OUTLINED_FUNCTION_104_0();
        (v40)(v45);
        v43 = 19;
        break;
      case 17:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v66 + 8))(v26);
        v67 = OUTLINED_FUNCTION_104_0();
        (v40)(v67);
        v43 = 20;
        break;
      case 18:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v74 + 8))(v26);
        v75 = OUTLINED_FUNCTION_104_0();
        (v40)(v75);
        v43 = 21;
        break;
      case 19:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v80 + 8))(v26);
        v81 = OUTLINED_FUNCTION_104_0();
        (v40)(v81);
        v43 = 22;
        break;
      default:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v41 + 8))(v26);
        v42 = OUTLINED_FUNCTION_104_0();
        (v40)(v42);
        v43 = 4;
        break;
    }

    *v82 = v43;
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216890F8C(uint64_t a1, void *a2)
{
  v4 = *v2;
  sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
  sub_216890478();
  v5 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837D0];
  v14 = v6;
  v15 = v7;
  v8 = a2;
  v9 = sub_2166F1E10(&v14, a2);
  sub_2166F1F64(v9, 1684957547, 0xE400000000000000);
  if ((v4 - 3) >= 0x14)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v10 = 0xE400000000000000;
        v11 = 2003789939;
      }

      else
      {
        v10 = 0xE700000000000000;
        v11 = 0x726F7461727563;
      }
    }

    else
    {
      OUTLINED_FUNCTION_138_2();
    }

    v16 = v5;
    v14 = v11;
    v15 = v10;
    v12 = v8;
    v13 = sub_2166F1E10(&v14, a2);
    sub_2166F1F64(v13, 0xD000000000000010, 0x8000000217083700);
  }
}

void sub_2168910B8(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_52_6();
      break;
    case 2:
      OUTLINED_FUNCTION_77_6();
      break;
    case 3:
      OUTLINED_FUNCTION_69_7();
      break;
    case 4:
      OUTLINED_FUNCTION_68_6();
      break;
    case 5:
      OUTLINED_FUNCTION_48_9();
      break;
    case 6:
      OUTLINED_FUNCTION_70_4();
      break;
    case 7:
      OUTLINED_FUNCTION_17_5();
      break;
    case 8:
      OUTLINED_FUNCTION_47_10();
      break;
    case 9:
      OUTLINED_FUNCTION_93_6();
      break;
    case 10:
      OUTLINED_FUNCTION_60_4();
      break;
    case 11:
    case 12:
      OUTLINED_FUNCTION_79_8();
      break;
    case 13:
      OUTLINED_FUNCTION_49_9();
      break;
    case 14:
      OUTLINED_FUNCTION_53_8();
      break;
    case 15:
      OUTLINED_FUNCTION_46_10();
      break;
    case 16:
      OUTLINED_FUNCTION_84_7();
      break;
    case 17:
      OUTLINED_FUNCTION_61_4();
      break;
    case 18:
      OUTLINED_FUNCTION_72_7();
      break;
    default:
      return;
  }
}

unint64_t sub_216891180(uint64_t a1, uint64_t a2)
{
  v2 = sub_21700F7F4();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21689124C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216891180(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21689127C(void *a1@<X8>)
{
  sub_2168910B8(*v1);
  *a1 = v3;
  a1[1] = v4;
}

BOOL static ContentKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 4:
      return v3 == 4;
    case 5:
      return v3 == 5;
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
    case 8:
      return v3 == 8;
    case 9:
      return v3 == 9;
    case 10:
      return v3 == 10;
    case 11:
      return v3 == 11;
    case 12:
      return v3 == 12;
    case 13:
      return v3 == 13;
    case 14:
      return v3 == 14;
    case 15:
      return v3 == 15;
    case 16:
      return v3 == 16;
    case 17:
      return v3 == 17;
    case 18:
      return v3 == 18;
    case 19:
      return v3 == 19;
    case 20:
      return v3 == 20;
    case 21:
      return v3 == 21;
    case 22:
      return v3 == 22;
    default:
      if ((v3 - 4) < 0x13)
      {
        return 0;
      }

      if (v2 != 3)
      {
        return v3 != 3 && (sub_21688D2E4(v2, v3) & 1) != 0;
      }

      return v3 == 3;
  }
}

uint64_t sub_216891420(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21689149C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x727543656C707061 && a2 == 0xEC000000726F7461;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
      if (v7 || (sub_21700F7D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000021707F930 == a2;
        if (v8 || (sub_21700F7D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000021707F950 == a2;
          if (v9 || (sub_21700F7D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7241746964657263 && a2 == 0xEC00000074736974;
            if (v10 || (sub_21700F7D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726F7461727563 && a2 == 0xE700000000000000;
              if (v11 || (sub_21700F7D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x800000021707F970 == a2;
                if (v12 || (sub_21700F7D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xED00006D6574496CLL;
                  if (v13 || (sub_21700F7D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
                    if (v14 || (sub_21700F7D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
                      if (v15 || (sub_21700F7D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
                        if (v16 || (sub_21700F7D4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7473696C79616C70 && a2 == 0xEE007265646C6F46;
                          if (v17 || (sub_21700F7D4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6174536F69646172 && a2 == 0xEC0000006E6F6974;
                            if (v18 || (sub_21700F7D4() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x614C64726F636572 && a2 == 0xEB000000006C6562;
                              if (v19 || (sub_21700F7D4() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x72506C6169636F73 && a2 == 0xED0000656C69666FLL;
                                if (v20 || (sub_21700F7D4() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1735290739 && a2 == 0xE400000000000000;
                                  if (v21 || (sub_21700F7D4() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x646F736970457674 && a2 == 0xE900000000000065;
                                    if (v22 || (sub_21700F7D4() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6E6F736165537674 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_21700F7D4() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x776F68537674 && a2 == 0xE600000000000000)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_21700F7D4();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_216891AA8(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x727543656C707061;
      break;
    case 2:
      result = 0x747369747261;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7241746964657263;
      break;
    case 6:
      result = 0x726F7461727563;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x6569766F6DLL;
      break;
    case 10:
      result = 0x646956636973756DLL;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x6174536F69646172;
      break;
    case 14:
      result = 0x614C64726F636572;
      break;
    case 15:
      result = 0x72506C6169636F73;
      break;
    case 16:
      result = 1735290739;
      break;
    case 17:
      result = 0x646F736970457674;
      break;
    case 18:
      result = 0x6E6F736165537674;
      break;
    case 19:
      result = 0x776F68537674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216891CE4(uint64_t a1)
{
  v2 = sub_21689DB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216891D20(uint64_t a1)
{
  v2 = sub_21689DB08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216891D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216891420(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_216891D8C(uint64_t a1)
{
  v2 = sub_21689DA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216891DC8(uint64_t a1)
{
  v2 = sub_21689DA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216891E04(uint64_t a1)
{
  v2 = sub_21689DA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216891E40(uint64_t a1)
{
  v2 = sub_21689DA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216891E7C(uint64_t a1)
{
  v2 = sub_21689D964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216891EB8(uint64_t a1)
{
  v2 = sub_21689D964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216891EF4(uint64_t a1)
{
  v2 = sub_21689D9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216891F30(uint64_t a1)
{
  v2 = sub_21689D9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216891F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21689149C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216891FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216891AA0();
  *a1 = result;
  return result;
}

uint64_t sub_216891FE4(uint64_t a1)
{
  v2 = sub_21689D424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892020(uint64_t a1)
{
  v2 = sub_21689D424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21689205C(uint64_t a1)
{
  v2 = sub_21689D910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892098(uint64_t a1)
{
  v2 = sub_21689D910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2168920D4(uint64_t a1)
{
  v2 = sub_21689D8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892110(uint64_t a1)
{
  v2 = sub_21689D8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21689214C(uint64_t a1)
{
  v2 = sub_21689D868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892188(uint64_t a1)
{
  v2 = sub_21689D868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2168921C4(uint64_t a1)
{
  v2 = sub_21689D814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892200(uint64_t a1)
{
  v2 = sub_21689D814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21689223C(uint64_t a1)
{
  v2 = sub_21689D7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892278(uint64_t a1)
{
  v2 = sub_21689D7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2168922B4(uint64_t a1)
{
  v2 = sub_21689D76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2168922F0(uint64_t a1)
{
  v2 = sub_21689D76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21689232C(uint64_t a1)
{
  v2 = sub_21689D718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892368(uint64_t a1)
{
  v2 = sub_21689D718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2168923A4(uint64_t a1)
{
  v2 = sub_21689D6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2168923E0(uint64_t a1)
{
  v2 = sub_21689D6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21689241C(uint64_t a1)
{
  v2 = sub_21689D670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892458(uint64_t a1)
{
  v2 = sub_21689D670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216892494(uint64_t a1)
{
  v2 = sub_21689D61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2168924D0(uint64_t a1)
{
  v2 = sub_21689D61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21689250C(uint64_t a1)
{
  v2 = sub_21689D5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892548(uint64_t a1)
{
  v2 = sub_21689D5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216892584(uint64_t a1)
{
  v2 = sub_21689D574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2168925C0(uint64_t a1)
{
  v2 = sub_21689D574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2168925FC(uint64_t a1)
{
  v2 = sub_21689D520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892638(uint64_t a1)
{
  v2 = sub_21689D520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216892674(uint64_t a1)
{
  v2 = sub_21689D4CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2168926B0(uint64_t a1)
{
  v2 = sub_21689D4CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2168926EC(uint64_t a1)
{
  v2 = sub_21689D478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216892728(uint64_t a1)
{
  v2 = sub_21689D478();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContentKind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  a22 = v27;
  a23 = v28;
  v163 = v24;
  v29 = v23;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA830, &qword_217021368);
  OUTLINED_FUNCTION_1();
  v158 = v33;
  v159 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  v157 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA838, &qword_217021370);
  OUTLINED_FUNCTION_1();
  v155 = v37;
  v156 = v36;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  v154 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA840, &qword_217021378);
  OUTLINED_FUNCTION_1();
  v152 = v41;
  v153 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  v151 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA848, &qword_217021380);
  OUTLINED_FUNCTION_1();
  v149 = v45;
  v150 = v44;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_105();
  v148 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA850, &qword_217021388);
  OUTLINED_FUNCTION_1();
  v146 = v49;
  v147 = v48;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  v145 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA858, &qword_217021390);
  OUTLINED_FUNCTION_1();
  v143 = v53;
  v144 = v52;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA860, &qword_217021398);
  OUTLINED_FUNCTION_0(v56, &a20);
  v142[0] = v57;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA868, &qword_2170213A0);
  OUTLINED_FUNCTION_0(v60, &a17);
  v140 = v61;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA870, &qword_2170213A8);
  OUTLINED_FUNCTION_0(v64, &a14);
  v139 = v65;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA878, &qword_2170213B0);
  OUTLINED_FUNCTION_0(v68, &v164);
  v138 = v69;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA880, &qword_2170213B8);
  OUTLINED_FUNCTION_0(v72, &v161);
  v137 = v73;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA888, &qword_2170213C0);
  OUTLINED_FUNCTION_0(v76, &v158);
  v136 = v77;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA890, &qword_2170213C8);
  OUTLINED_FUNCTION_0(v80, &v155);
  v135 = v81;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA898, &qword_2170213D0);
  OUTLINED_FUNCTION_0(v84, &v152);
  v134 = v85;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8A0, &qword_2170213D8);
  OUTLINED_FUNCTION_0(v88, &v149);
  v133 = v89;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8A8, &qword_2170213E0);
  OUTLINED_FUNCTION_0(v92, &v146);
  v132 = v93;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8B0, &qword_2170213E8);
  OUTLINED_FUNCTION_0(v96, &v143);
  v131 = v97;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8B8, &qword_2170213F0);
  OUTLINED_FUNCTION_0(v100, v142);
  v130 = v101;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_12_2();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8C0, &qword_2170213F8);
  OUTLINED_FUNCTION_0(v103, &v141);
  v128 = v104;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v105);
  v107 = &v126 - v106;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8C8, &qword_217021400);
  OUTLINED_FUNCTION_1();
  v127 = v109;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_67_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA8D0, &qword_217021408);
  OUTLINED_FUNCTION_1();
  v161 = v111;
  v162 = v112;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v113);
  v115 = &v126 - v114;
  v116 = *v29;
  v117 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_21689D424();
  v160 = v115;
  sub_21700F974();
  switch(v116)
  {
    case 4:
      a13 = 0;
      sub_21689DB08();
      v117 = v160;
      v116 = v161;
      sub_21700F6C4();
      (*(v127 + 8))(v26, v108);
      goto LABEL_23;
    case 5:
      a13 = 2;
      sub_21689DA0C();
      OUTLINED_FUNCTION_19_19(&type metadata for ContentKind.ArtistCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = v142;
      goto LABEL_22;
    case 6:
      a13 = 3;
      sub_21689D9B8();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.ArtistUploadedVideoCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v143;
      goto LABEL_22;
    case 7:
      a13 = 4;
      sub_21689D964();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.ArtistUploadedSongCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v146;
      goto LABEL_22;
    case 8:
      a13 = 5;
      sub_21689D910();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.CreditArtistCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v149;
      goto LABEL_22;
    case 9:
      a13 = 6;
      sub_21689D8BC();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.CuratorCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v152;
      goto LABEL_22;
    case 10:
      a13 = 7;
      sub_21689D868();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.EditorialElementCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v155;
      goto LABEL_22;
    case 11:
      a13 = 8;
      sub_21689D814();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.EditorialItemCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v158;
      goto LABEL_22;
    case 12:
      a13 = 9;
      sub_21689D7C0();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.MovieCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v161;
      goto LABEL_22;
    case 13:
      a13 = 10;
      sub_21689D76C();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.MusicVideoCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &v164;
      goto LABEL_22;
    case 14:
      a13 = 11;
      sub_21689D718();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.PlaylistCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &a14;
      goto LABEL_22;
    case 15:
      a13 = 12;
      sub_21689D6C4();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.PlaylistFolderCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &a17;
      goto LABEL_22;
    case 16:
      a13 = 13;
      sub_21689D670();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.RadioStationCodingKeys, &a13);
      v120 = OUTLINED_FUNCTION_15_18();
      v122 = &a20;
LABEL_22:
      v121(v120, *(v122 - 32));
      goto LABEL_23;
    case 17:
      a13 = 14;
      sub_21689D61C();
      OUTLINED_FUNCTION_13_14(&type metadata for ContentKind.RecordLabelCodingKeys, &a13);
      v119 = v143;
      v118 = v144;
      goto LABEL_19;
    case 18:
      a13 = 15;
      sub_21689D5C8();
      v25 = v145;
      OUTLINED_FUNCTION_19_19(&type metadata for ContentKind.SocialProfileCodingKeys, &a13);
      v119 = v146;
      v118 = v147;
      goto LABEL_19;
    case 19:
      a13 = 16;
      sub_21689D574();
      v25 = v148;
      OUTLINED_FUNCTION_19_19(&type metadata for ContentKind.SongCodingKeys, &a13);
      v119 = v149;
      v118 = v150;
      goto LABEL_19;
    case 20:
      a13 = 17;
      sub_21689D520();
      v25 = v151;
      OUTLINED_FUNCTION_19_19(&type metadata for ContentKind.TvEpisodeCodingKeys, &a13);
      v119 = v152;
      v118 = v153;
      goto LABEL_19;
    case 21:
      a13 = 18;
      sub_21689D4CC();
      v25 = v154;
      OUTLINED_FUNCTION_19_19(&type metadata for ContentKind.TvSeasonCodingKeys, &a13);
      v119 = v155;
      v118 = v156;
      goto LABEL_19;
    case 22:
      a13 = 19;
      sub_21689D478();
      v25 = v157;
      OUTLINED_FUNCTION_19_19(&type metadata for ContentKind.TvShowCodingKeys, &a13);
      v119 = v158;
      v118 = v159;
LABEL_19:
      (*(v119 + 8))(v25, v118);
LABEL_23:
      (*(v162 + 8))(v117, v116);
      break;
    default:
      a13 = 1;
      sub_21689DA60();
      sub_21700F6C4();
      a13 = v116;
      sub_21689DAB4();
      v123 = v129;
      sub_21700F704();
      (*(v128 + 8))(v107, v123);
      v124 = OUTLINED_FUNCTION_109();
      v125(v124);
      break;
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t ContentKind.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1)
  {
    case 4:
      v3 = 0;
      goto LABEL_21;
    case 5:
      v3 = 2;
      goto LABEL_21;
    case 6:
      v3 = 3;
      goto LABEL_21;
    case 7:
      v3 = 4;
      goto LABEL_21;
    case 8:
      v3 = 5;
      goto LABEL_21;
    case 9:
      v3 = 6;
      goto LABEL_21;
    case 0xA:
      v3 = 7;
      goto LABEL_21;
    case 0xB:
      v3 = 8;
      goto LABEL_21;
    case 0xC:
      v3 = 9;
      goto LABEL_21;
    case 0xD:
      v3 = 10;
      goto LABEL_21;
    case 0xE:
      v3 = 11;
      goto LABEL_21;
    case 0xF:
      v3 = 12;
      goto LABEL_21;
    case 0x10:
      v3 = 13;
      goto LABEL_21;
    case 0x11:
      v3 = 14;
      goto LABEL_21;
    case 0x12:
      v3 = 15;
      goto LABEL_21;
    case 0x13:
      v3 = 16;
      goto LABEL_21;
    case 0x14:
      v3 = 17;
      goto LABEL_21;
    case 0x15:
      v3 = 18;
      goto LABEL_21;
    case 0x16:
      v3 = 19;
LABEL_21:
      result = MEMORY[0x21CEA0720](v3);
      break;
    default:
      MEMORY[0x21CEA0720](1);
      if (v2 == 3)
      {
        result = sub_21700F914();
      }

      else
      {
        sub_21700F914();
        OUTLINED_FUNCTION_138_2();
        sub_21700E614();
      }

      break;
  }

  return result;
}

uint64_t ContentKind.hashValue.getter()
{
  v2[79] = *v0;
  sub_21700F8F4();
  ContentKind.hash(into:)(v2);
  return sub_21700F944();
}

void ContentKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_22_3();
  a18 = v21;
  a19 = v22;
  v209 = v19;
  v24 = v23;
  v205 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA988, &qword_217021410);
  OUTLINED_FUNCTION_0(v26, &a17);
  v196[1] = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  v204[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA990, &qword_217021418);
  OUTLINED_FUNCTION_0(v30, &a15);
  v195[1] = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v204[0] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA998, &qword_217021420);
  OUTLINED_FUNCTION_0(v34, &a13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v203[2] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9A0, &qword_217021428);
  OUTLINED_FUNCTION_0(v37, &a11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  v203[1] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9A8, &qword_217021430);
  OUTLINED_FUNCTION_0(v40, &a10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  v203[0] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9B0, &qword_217021438);
  OUTLINED_FUNCTION_0(v43, &v210);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_105();
  v202 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9B8, &qword_217021440);
  OUTLINED_FUNCTION_0(v46, &v208);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v201[2] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9C0, &qword_217021448);
  OUTLINED_FUNCTION_0(v49, v207);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  v201[1] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9C8, &qword_217021450);
  OUTLINED_FUNCTION_0(v52, &v205);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v201[0] = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9D0, &qword_217021458);
  OUTLINED_FUNCTION_0(v55, v204);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  v200[1] = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9D8, &qword_217021460);
  OUTLINED_FUNCTION_0(v58, v203);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_105();
  v207[1] = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9E0, &qword_217021468);
  OUTLINED_FUNCTION_0(v61, &v202);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_105();
  v200[0] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9E8, &qword_217021470);
  OUTLINED_FUNCTION_0(v64, v199);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_105();
  v199[1] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9F0, &qword_217021478);
  OUTLINED_FUNCTION_0(v67, v201);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_105();
  v207[0] = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA9F8, &qword_217021480);
  OUTLINED_FUNCTION_0(v70, v200);
  v194 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_105();
  v206 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA00, &qword_217021488);
  OUTLINED_FUNCTION_0(v74, &v198);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_105();
  v199[0] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA08, &qword_217021490);
  OUTLINED_FUNCTION_0(v77, v197);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_105();
  v198 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA10, &qword_217021498);
  OUTLINED_FUNCTION_0(v80, v195);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_105();
  v197[1] = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA18, &qword_2170214A0);
  OUTLINED_FUNCTION_0(v83, v196);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_41_1();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA20, &qword_2170214A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_2();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA28, &qword_2170214B0);
  OUTLINED_FUNCTION_1();
  v89 = v88;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_67_0();
  v91 = v24[3];
  v208 = v24;
  __swift_project_boxed_opaque_existential_1(v24, v91);
  sub_21689D424();
  v92 = v209;
  sub_21700F964();
  if (v92)
  {
    goto LABEL_10;
  }

  v93 = v206;
  v209 = v89;
  v94 = v20;
  v95 = sub_21700F6B4();
  v96 = sub_2168A1310(v95, 0);
  v100 = v87;
  if (v98 == v99 >> 1)
  {
    v101 = v20;
LABEL_9:
    v114 = sub_21700F434();
    OUTLINED_FUNCTION_12(v114, MEMORY[0x277D841A0]);
    v116 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA30, &unk_2170214B8);
    *v116 = &type metadata for ContentKind;
    sub_21700F604();
    sub_21700F424();
    OUTLINED_FUNCTION_50();
    (*(v117 + 104))(v116);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v209 + 8))(v101, v100);
LABEL_10:
    v113 = v208;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    OUTLINED_FUNCTION_21_4();
    return;
  }

  if (v98 < (v99 >> 1))
  {
    v102 = v87;
    v193 = *(v97 + v98);
    sub_2168A3358(v98 + 1, v99 >> 1, v96, v97, v98, v99);
    v104 = v103;
    v106 = v105;
    swift_unknownObjectRelease();
    v101 = v94;
    if (v104 == v106 >> 1)
    {
      v107 = v205;
      switch(v193)
      {
        case 1:
          BYTE7(a10) = 1;
          sub_21689DA60();
          OUTLINED_FUNCTION_17_23(&type metadata for ContentKind.AppleCuratorCodingKeys, &a10 + 7);
          sub_2168A33D4();
          sub_21700F644();
          swift_unknownObjectRelease();
          v189 = OUTLINED_FUNCTION_12_21();
          v190(v189);
          v191 = OUTLINED_FUNCTION_104_0();
          v192(v191);
          v112 = BYTE7(a10);
          v113 = v208;
          break;
        case 2:
          v118 = v205;
          BYTE7(a10) = 2;
          sub_21689DA0C();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.ArtistCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v143 = OUTLINED_FUNCTION_12_21();
          v144(v143);
          v145 = OUTLINED_FUNCTION_5_26();
          v146(v145);
          v112 = 5;
          goto LABEL_31;
        case 3:
          v118 = v205;
          BYTE7(a10) = 3;
          sub_21689D9B8();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.ArtistUploadedVideoCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v151 = OUTLINED_FUNCTION_12_21();
          v152(v151);
          v153 = OUTLINED_FUNCTION_5_26();
          v154(v153);
          v112 = 6;
          goto LABEL_31;
        case 4:
          v118 = v205;
          BYTE7(a10) = 4;
          sub_21689D964();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.ArtistUploadedSongCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v131 = OUTLINED_FUNCTION_12_21();
          v132(v131);
          v133 = OUTLINED_FUNCTION_5_26();
          v134(v133);
          v112 = 7;
          goto LABEL_31;
        case 5:
          v118 = v205;
          BYTE7(a10) = 5;
          sub_21689D910();
          OUTLINED_FUNCTION_17_23(&type metadata for ContentKind.CreditArtistCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          (*(v194 + 8))(v93);
          v163 = OUTLINED_FUNCTION_5_26();
          v164(v163);
          v112 = 8;
          goto LABEL_31;
        case 6:
          BYTE7(a10) = 6;
          sub_21689D8BC();
          OUTLINED_FUNCTION_17_23(&type metadata for ContentKind.CuratorCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v169 = OUTLINED_FUNCTION_15_18();
          v170(v169);
          v171 = OUTLINED_FUNCTION_5_26();
          v172(v171);
          v112 = 9;
          v113 = v208;
          break;
        case 7:
          v118 = v205;
          BYTE7(a10) = 7;
          sub_21689D868();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.EditorialElementCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v155 = OUTLINED_FUNCTION_12_21();
          v156(v155);
          v157 = OUTLINED_FUNCTION_5_26();
          v158(v157);
          v112 = 10;
          goto LABEL_31;
        case 8:
          v118 = v205;
          BYTE7(a10) = 8;
          sub_21689D814();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.EditorialItemCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v181 = OUTLINED_FUNCTION_12_21();
          v182(v181);
          v183 = OUTLINED_FUNCTION_5_26();
          v184(v183);
          v112 = 11;
          goto LABEL_31;
        case 9:
          v118 = v205;
          BYTE7(a10) = 9;
          sub_21689D7C0();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.MovieCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v139 = OUTLINED_FUNCTION_12_21();
          v140(v139);
          v141 = OUTLINED_FUNCTION_5_26();
          v142(v141);
          v112 = 12;
          goto LABEL_31;
        case 10:
          v118 = v205;
          BYTE7(a10) = 10;
          sub_21689D76C();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.MusicVideoCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v177 = OUTLINED_FUNCTION_12_21();
          v178(v177);
          v179 = OUTLINED_FUNCTION_5_26();
          v180(v179);
          v112 = 13;
          goto LABEL_31;
        case 11:
          v118 = v205;
          BYTE7(a10) = 11;
          sub_21689D718();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.PlaylistCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v127 = OUTLINED_FUNCTION_12_21();
          v128(v127);
          v129 = OUTLINED_FUNCTION_5_26();
          v130(v129);
          v112 = 14;
          goto LABEL_31;
        case 12:
          v118 = v205;
          BYTE7(a10) = 12;
          sub_21689D6C4();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.PlaylistFolderCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v135 = OUTLINED_FUNCTION_12_21();
          v136(v135);
          v137 = OUTLINED_FUNCTION_5_26();
          v138(v137);
          v112 = 15;
          goto LABEL_31;
        case 13:
          v118 = v205;
          BYTE7(a10) = 13;
          sub_21689D670();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.RadioStationCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v165 = OUTLINED_FUNCTION_12_21();
          v166(v165);
          v167 = OUTLINED_FUNCTION_5_26();
          v168(v167);
          v112 = 16;
          goto LABEL_31;
        case 14:
          v118 = v205;
          BYTE7(a10) = 14;
          sub_21689D61C();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.RecordLabelCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v123 = OUTLINED_FUNCTION_12_21();
          v124(v123);
          v125 = OUTLINED_FUNCTION_5_26();
          v126(v125);
          v112 = 17;
          goto LABEL_31;
        case 15:
          v118 = v205;
          BYTE7(a10) = 15;
          sub_21689D5C8();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.SocialProfileCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v147 = OUTLINED_FUNCTION_12_21();
          v148(v147);
          v149 = OUTLINED_FUNCTION_5_26();
          v150(v149);
          v112 = 18;
          goto LABEL_31;
        case 16:
          v118 = v205;
          BYTE7(a10) = 16;
          sub_21689D574();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.SongCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v119 = OUTLINED_FUNCTION_12_21();
          v120(v119);
          v121 = OUTLINED_FUNCTION_5_26();
          v122(v121);
          v112 = 19;
          goto LABEL_31;
        case 17:
          v118 = v205;
          BYTE7(a10) = 17;
          sub_21689D520();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.TvEpisodeCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v159 = OUTLINED_FUNCTION_12_21();
          v160(v159, v195[0]);
          v161 = OUTLINED_FUNCTION_5_26();
          v162(v161);
          v112 = 20;
          goto LABEL_31;
        case 18:
          v118 = v205;
          BYTE7(a10) = 18;
          sub_21689D4CC();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.TvSeasonCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v173 = OUTLINED_FUNCTION_12_21();
          v174(v173, v196[0]);
          v175 = OUTLINED_FUNCTION_5_26();
          v176(v175);
          v112 = 21;
          goto LABEL_31;
        case 19:
          v118 = v205;
          BYTE7(a10) = 19;
          sub_21689D478();
          OUTLINED_FUNCTION_11_23(&type metadata for ContentKind.TvShowCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v185 = OUTLINED_FUNCTION_12_21();
          v186(v185, v197[0]);
          v187 = OUTLINED_FUNCTION_5_26();
          v188(v187);
          v112 = 22;
LABEL_31:
          v113 = v208;
          v107 = v118;
          break;
        default:
          BYTE7(a10) = 0;
          sub_21689DB08();
          OUTLINED_FUNCTION_17_23(&type metadata for ContentKind.AlbumCodingKeys, &a10 + 7);
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_15_18();
          v109(v108, v85);
          v110 = OUTLINED_FUNCTION_5_26();
          v111(v110);
          v112 = 4;
          v113 = v208;
          break;
      }

      *v107 = v112;
      goto LABEL_11;
    }

    v100 = v102;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_216894CD4(uint64_t a1)
{
  v3[79] = *v1;
  sub_21700F8F4();
  ContentKind.hash(into:)(v3);
  return sub_21700F944();
}

void ContentIdentifiers.init(deserializing:using:)()
{
  OUTLINED_FUNCTION_22_3();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_105_3();
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = *(v7 + 8);
  v15(v11, v5);
  *v4 = v12;
  *(v4 + 8) = v14;
  sub_21700CE04();
  sub_21700CDB4();
  v16 = OUTLINED_FUNCTION_25_12();
  (v15)(v16);
  *(v4 + 16) = v11;
  *(v4 + 24) = v14;
  OUTLINED_FUNCTION_105_3();
  sub_21700CE04();
  sub_21700CDB4();
  v17 = OUTLINED_FUNCTION_25_12();
  (v15)(v17);
  *(v4 + 32) = v11;
  *(v4 + 40) = v14;
  sub_21700CE04();
  sub_21700CDB4();
  v18 = OUTLINED_FUNCTION_25_12();
  (v15)(v18);
  *(v4 + 48) = v11;
  *(v4 + 56) = v14;
  OUTLINED_FUNCTION_105_3();
  sub_21700CE04();
  sub_21700CDB4();
  v19 = OUTLINED_FUNCTION_25_12();
  (v15)(v19);
  *(v4 + 64) = v11;
  *(v4 + 72) = v14;
  sub_21700CE04();
  sub_21700CDB4();
  v20 = OUTLINED_FUNCTION_25_12();
  (v15)(v20);
  *(v4 + 80) = v11;
  *(v4 + 88) = v14;
  OUTLINED_FUNCTION_105_3();
  sub_21700CE04();
  v21 = sub_21700CDC4();
  LOBYTE(v14) = v22;
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v23 + 8))(v24);
  v15(v2, v5);
  v15(v11, v5);
  *(v4 + 96) = v21;
  *(v4 + 104) = v14 & 1;
  OUTLINED_FUNCTION_21_4();
}

void sub_21689501C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2168A32FC(a1, &selRef_cloudUniversalLibraryID);
  v30 = v5;
  v31 = v4;
  v6 = sub_2168A32FC(a1, &selRef_socialProfileID);
  v28 = v7;
  v29 = v6;
  v8 = sub_2168A32FC(a1, &selRef_storeCloudAlbumID);
  v26 = v9;
  v27 = v8;
  if ([a1 storeCloudID])
  {
    [a1 storeCloudID];
    v10 = sub_21700F784();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if ([a1 storePurchasedAdamID])
  {
    [a1 storePurchasedAdamID];
    v13 = sub_21700F784();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  if ([a1 storeAdamID])
  {
    [a1 storeAdamID];
    v16 = sub_21700F784();
  }

  else
  {
    v16 = sub_2168A32FC(a1, &selRef_globalPlaylistID);
    if (!v17)
    {
      v23 = [a1 modelKind];
      v19 = v23;
      if (v23)
      {
        [v23 modelClass];

        swift_getObjCClassMetadata();
        sub_216685F4C(0, &qword_27CABACF8, 0x277CD5F18);
        if (swift_dynamicCastMetatype())
        {
          v24 = sub_2168A32FC(a1, &selRef_radioStationStringID);
          v19 = v25;
          if (v25)
          {
            v18 = v24;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_11;
    }
  }

  v18 = v16;
  v19 = v17;
LABEL_11:
  v20 = [a1 library];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 persistentID];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v27;
  *(a2 + 40) = v26;
  *(a2 + 48) = v10;
  *(a2 + 56) = v12;
  *(a2 + 64) = v13;
  *(a2 + 72) = v15;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v22;
  *(a2 + 104) = v21 == 0;
}

uint64_t ContentIdentifiers.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

uint64_t ContentIdentifiers.identifierKinds.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 104);
  v13 = MEMORY[0x277D84FA0];
  if (v6 | v2)
  {
    sub_2168A14E4(&v11, 1);
  }

  if (((v1 == 0) & v7) != 1 || v3 != 0 || (v5 | v4) != 0)
  {
    sub_2168A14E4(&v12, 0);
  }

  return v13;
}

uint64_t sub_216895554()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[11];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v0[10] & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v1 = v0[10];
  }

  else
  {
LABEL_6:
    if (!v2)
    {
      return 0;
    }

    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {
      return 0;
    }
  }

  sub_21700DF14();
  return v1;
}

uint64_t sub_2168955E4()
{
  v2 = v0[1];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = *(v0 + 104);
  if (!v3)
  {
    goto LABEL_9;
  }

  v1 = v0[4];
  v9 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v9 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_21700DF14();
  }

  else
  {
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_9:
    v10 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_21700DF14();
      return v4;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_19;
      }

LABEL_14:
      v11 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v11 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        sub_21700DF14();
        return v6;
      }

      else
      {
        if (!v2)
        {
          goto LABEL_29;
        }

LABEL_19:
        v12 = HIBYTE(v2) & 0xF;
        if ((v2 & 0x2000000000000000) == 0)
        {
          v12 = *v0 & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          v1 = *v0;
          sub_21700DF14();
        }

        else
        {
LABEL_29:
          if (!v0[12])
          {
            v8 = 1;
          }

          if (v8)
          {
            return 0;
          }

          else
          {
            sub_21700F784();
            OUTLINED_FUNCTION_144_0();
          }
        }
      }
    }
  }

  return v1;
}

JSValue __swiftcall ContentIdentifiers.makeValue(in:)(JSContext in)
{
  OUTLINED_FUNCTION_149();
  v3.super.isa = v2;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = *(v1 + 104);
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    v24 = v10;
    if (v4)
    {
      v12 = sub_21700DF14();
      OUTLINED_FUNCTION_118_3(v12, MEMORY[0x277D837D0], MEMORY[0x277D22580]);
    }

    OUTLINED_FUNCTION_122_2(result.super.isa, 0xD000000000000017, 0x8000000217083750);
    if (v5)
    {
      v14 = sub_21700DF14();
      OUTLINED_FUNCTION_118_3(v14, MEMORY[0x277D837D0], MEMORY[0x277D22580]);
    }

    OUTLINED_FUNCTION_122_2(v13, 0x72506C6169636F73, 0xEF4449656C69666FLL);
    if (v6)
    {
      v15 = sub_21700DF14();
      v16 = OUTLINED_FUNCTION_118_3(v15, MEMORY[0x277D837D0], MEMORY[0x277D22580]);
    }

    else
    {
      v16 = 0;
    }

    sub_2166F1F64(v16, 0xD000000000000011, 0x8000000217083770);
    if (v7)
    {
      v18 = sub_21700DF14();
      OUTLINED_FUNCTION_118_3(v18, MEMORY[0x277D837D0], MEMORY[0x277D22580]);
    }

    OUTLINED_FUNCTION_122_2(v17, 0x6F6C4365726F7473, 0xEC00000044496475);
    if (v8)
    {
      v20 = sub_21700DF14();
      OUTLINED_FUNCTION_118_3(v20, MEMORY[0x277D837D0], MEMORY[0x277D22580]);
    }

    OUTLINED_FUNCTION_122_2(v19, 0xD000000000000014, 0x8000000217083790);
    if (v9)
    {
      v22 = sub_21700DF14();
      OUTLINED_FUNCTION_118_3(v22, MEMORY[0x277D837D0], MEMORY[0x277D22580]);
    }

    OUTLINED_FUNCTION_122_2(v21, 0x61644165726F7473, 0xEB0000000044496DLL);
    if (v24)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64.makeValue(in:)(v3).super.isa;
    }

    sub_2166F1F64(isa, 0xD000000000000013, 0x80000002170837B0);
    OUTLINED_FUNCTION_148_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ContentIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v23 = *(a2 + 80);
  v22 = *(a2 + 88);
  if ((*(a2 + 104) & 1) == 0 && (*(a1 + 104) & 1) == 0 && *(a2 + 96) == *(a1 + 96))
  {
    return 1;
  }

  if (v15 && v5)
  {
    if (v14 == v4 && v15 == v5)
    {
      return 1;
    }

    v52 = *(a2 + 80);
    v54 = v12;
    v50 = v13;
    v51 = v11;
    v26 = *(a2 + 88);
    v27 = v10;
    v48 = v8;
    v49 = *(a2 + 64);
    v28 = *(a2 + 72);
    v29 = sub_21700F7D4();
    v8 = v48;
    v20 = v49;
    v21 = v28;
    v10 = v27;
    v22 = v26;
    v13 = v50;
    v11 = v51;
    v23 = v52;
    v12 = v54;
    if (v29)
    {
      return 1;
    }
  }

  if (v17 && v7)
  {
    if (v16 == v6 && v17 == v7)
    {
      return 1;
    }

    v53 = v21;
    v55 = v12;
    v31 = v22;
    v32 = v10;
    v33 = v20;
    v34 = v8;
    v35 = sub_21700F7D4();
    v8 = v34;
    v21 = v53;
    v12 = v55;
    v20 = v33;
    v10 = v32;
    v22 = v31;
    if (v35)
    {
      return 1;
    }
  }

  if (v19 && v9)
  {
    if (v18 == v8 && v19 == v9)
    {
      return 1;
    }

    v37 = v12;
    v38 = v22;
    v39 = v10;
    v40 = v20;
    v41 = v21;
    v42 = sub_21700F7D4();
    v21 = v41;
    v20 = v40;
    v10 = v39;
    v22 = v38;
    v12 = v37;
    if (v42)
    {
      return 1;
    }
  }

  if (v21 && v10)
  {
    if (v20 == v11 && v21 == v10)
    {
      return 1;
    }

    v44 = v12;
    v45 = v22;
    v46 = sub_21700F7D4();
    v22 = v45;
    v12 = v44;
    if (v46)
    {
      return 1;
    }
  }

  result = 0;
  if (!v22 || !v13)
  {
    return result;
  }

  if (v23 == v12 && v22 == v13)
  {
    return 1;
  }

  return sub_21700F7D4();
}

uint64_t ContentIdentifiers.debugDescription.getter()
{
  sub_21700F3B4();
  MEMORY[0x21CE9F490](0xD000000000000014, 0x80000002170837D0);
  v18 = sub_216895554();
  v19 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  OUTLINED_FUNCTION_117_3(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, 0);

  MEMORY[0x21CE9F490](0xD000000000000017, 0x80000002170837F0);
  v9 = sub_2168955E4();
  OUTLINED_FUNCTION_117_3(v9, v10, v11, v12, v13, v14, v15, v16, v9, v10, v20);

  return v21;
}

uint64_t sub_216895D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000217083750 == a2;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72506C6169636F73 && a2 == 0xEF4449656C69666FLL;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000217083770 == a2;
      if (v7 || (sub_21700F7D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6C4365726F7473 && a2 == 0xEC00000044496475;
        if (v8 || (sub_21700F7D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000217083790 == a2;
          if (v9 || (sub_21700F7D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x61644165726F7473 && a2 == 0xEB0000000044496DLL;
            if (v10 || (sub_21700F7D4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000013 && 0x80000002170837B0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_21700F7D4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_216895F94(char a1)
{
  result = 0x72506C6169636F73;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6F6C4365726F7473;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x61644165726F7473;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_2168960A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216895D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2168960C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216895F8C();
  *a1 = result;
  return result;
}

uint64_t sub_2168960F0(uint64_t a1)
{
  v2 = sub_2168A3428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21689612C(uint64_t a1)
{
  v2 = sub_2168A3428();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContentIdentifiers.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22_3();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA48, &qword_2170214C8);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_2();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2168A3428();
  sub_21700F974();
  sub_21700F6D4();
  if (!v23)
  {
    OUTLINED_FUNCTION_35_11();
    sub_21700F6D4();
    OUTLINED_FUNCTION_35_11();
    sub_21700F6D4();
    OUTLINED_FUNCTION_35_11();
    sub_21700F6D4();
    OUTLINED_FUNCTION_35_11();
    sub_21700F6D4();
    OUTLINED_FUNCTION_35_11();
    sub_21700F6D4();
    OUTLINED_FUNCTION_35_11();
    sub_21700F714();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_21_4();
}

void ContentIdentifiers.init(from:)()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA58, &qword_2170214D0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2168A3428();
  sub_21700F964();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_30_12();
    v10 = sub_21700F614();
    v12 = v11;
    OUTLINED_FUNCTION_30_12();
    v26 = sub_21700F614();
    v31 = v13;
    OUTLINED_FUNCTION_30_12();
    v25 = sub_21700F614();
    v30 = v14;
    OUTLINED_FUNCTION_30_12();
    v24 = sub_21700F614();
    v29 = v15;
    OUTLINED_FUNCTION_30_12();
    v23 = sub_21700F614();
    v28 = v16;
    LOBYTE(v33[0]) = 5;
    OUTLINED_FUNCTION_30_12();
    v22 = sub_21700F614();
    v27 = v17;
    OUTLINED_FUNCTION_30_12();
    v18 = sub_21700F654();
    v20 = v19;
    v21 = v18;
    (*(v8 + 8))(v1, v6);
    v32[0] = v10;
    v32[1] = v12;
    v32[2] = v26;
    v32[3] = v31;
    v32[4] = v25;
    v32[5] = v30;
    v32[6] = v24;
    v32[7] = v29;
    v32[8] = v23;
    v32[9] = v28;
    v32[10] = v22;
    v32[11] = v27;
    v32[12] = v21;
    LOBYTE(v32[13]) = v20 & 1;
    memcpy(v5, v32, 0x69uLL);
    sub_21686BC90(v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    v33[0] = v10;
    v33[1] = v12;
    v33[2] = v26;
    v33[3] = v31;
    v33[4] = v25;
    v33[5] = v30;
    v33[6] = v24;
    v33[7] = v29;
    v33[8] = v23;
    v33[9] = v28;
    v33[10] = v22;
    v33[11] = v27;
    v33[12] = v21;
    v34 = v20 & 1;
    sub_21686BCEC(v33);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t ContentDescriptor.identifiers.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x69uLL);
  memcpy(a1, (v1 + 8), 0x69uLL);
  return sub_21686BC90(__dst, v4);
}

id ContentDescriptor.modelObject(with:)(uint64_t a1)
{
  v2 = ContentDescriptor.toMPIdentifierSet.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() sharedServerObjectDatabase];
  v5 = [v4 modelObjectMatchingIdentifierSet:v3 propertySet:a1];

  if (!v5)
  {

    return 0;
  }

  v6 = [v5 innermostModelObject];

  return v6;
}

id ContentDescriptor.toMPIdentifierSet.getter()
{
  v2 = v0;
  if (!v0[2] && !v0[4] && !v0[6] && !v0[8] && !v0[10] && !v0[12] && (v0[14] & 1) != 0)
  {
    return 0;
  }

  result = 0;
  switch(*v0)
  {
    case 1:
      v4 = [objc_opt_self() kindWithVariants_];
      goto LABEL_19;
    case 2:
      v4 = [objc_opt_self() kindWithVariants_];
      goto LABEL_19;
    case 3:
      sub_216685F4C(0, &qword_27CABAA70, 0x277CD5E78);
      v4 = [swift_getObjCClassFromMetadata() identityKind];
      goto LABEL_19;
    case 4:
      v24 = objc_opt_self();
      v1 = [objc_opt_self() kindWithVariants_];
      v0 = [v24 kindWithSongKind_];

      MEMORY[0x28223BE20](v25);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34F4;
      goto LABEL_20;
    case 5:
      v0 = sub_216685F4C(0, &qword_27CABAA78, 0x277CD5E50);
      sub_216B9D308();
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v10);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A349C;
      goto LABEL_20;
    case 6:
      v22 = [objc_opt_self() kindWithVariants_];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v23);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34D4;
      goto LABEL_20;
    case 7:
      v5 = [objc_opt_self() kindWithVariants_];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v6);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34CC;
      goto LABEL_20;
    case 8:
    case 0xA:
    case 0xB:
    case 0xF:
      return result;
    case 9:
      sub_216685F4C(0, &qword_27CABAA70, 0x277CD5E78);
      v8 = [swift_getObjCClassFromMetadata() identityKind];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v9);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A3494;
      goto LABEL_20;
    case 0xC:
      v18 = [objc_opt_self() kindWithVariants_];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v19);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34BC;
      goto LABEL_20;
    case 0xD:
      v34 = [objc_opt_self() kindWithVariants_];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v35);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34DC;
      goto LABEL_20;
    case 0xE:
      v11 = objc_opt_self();
      sub_216685F4C(0, &qword_27CABAA98, 0x277CD5EF8);
      v12 = sub_216B9D10C();
      v13 = [v11 kindWithPlaylistEntryKind:v12 options:0];

      MEMORY[0x28223BE20](v14);
      v40[2] = v2;
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v15 = sub_2168A34EC;
      v16 = v13;
      v17 = v40;
      goto LABEL_21;
    case 0x10:
      sub_216685F4C(0, &qword_27CABAA90, 0x277CD5F20);
      v38 = [swift_getObjCClassFromMetadata() identityKind];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34C4;
      goto LABEL_20;
    case 0x11:
      sub_216685F4C(0, &unk_27CABAA60, 0x277CD5F30);
      v26 = [swift_getObjCClassFromMetadata() identityKind];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v27);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A347C;
      goto LABEL_20;
    case 0x12:
      sub_216685F4C(0, &qword_280E29BC8, 0x277CD5F50);
      v31 = [swift_getObjCClassFromMetadata() identityKind];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v32);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A3484;
      goto LABEL_20;
    case 0x13:
      v36 = [objc_opt_self() kindWithVariants_];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v37);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34E4;
      goto LABEL_20;
    case 0x14:
      v28 = [objc_opt_self() kindWithVariants_];
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v29);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34A4;
      goto LABEL_20;
    case 0x15:
      v0 = sub_216685F4C(0, &qword_27CABAA80, 0x277CD5F98);
      sub_216B9D2EC();
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v30);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34AC;
      goto LABEL_20;
    case 0x16:
      v0 = sub_216685F4C(0, &qword_27CABAA88, 0x277CD5FA8);
      sub_216B9D234();
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v33);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A34B4;
      goto LABEL_20;
    default:
      v4 = [objc_opt_self() kindWithVariants_];
LABEL_19:
      v20 = v4;
      OUTLINED_FUNCTION_16_23();
      MEMORY[0x28223BE20](v21);
      OUTLINED_FUNCTION_6_29();
      objc_allocWithZone(MEMORY[0x277CD5DA0]);
      v7 = sub_2168A348C;
LABEL_20:
      v15 = v7;
      v16 = v0;
      v17 = v1;
LABEL_21:
      result = sub_21689D1FC(v16, v15, v17);
      break;
  }

  return result;
}

uint64_t static ContentDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_145_1();
  v9[0] = *v2;
  v8[0] = *v3;
  if (!static ContentKind.== infix(_:_:)(v9, v8))
  {
    return 0;
  }

  memcpy(v6, (v0 + 8), 0x69uLL);
  memcpy(__dst, (v1 + 8), 0x69uLL);
  v4 = static ContentIdentifiers.== infix(_:_:)(v0 + 8, v1 + 8);
  memcpy(v8, (v1 + 8), 0x69uLL);
  sub_21686BC90(v6, v9);
  sub_21686BC90(__dst, v9);
  sub_21686BCEC(v8);
  memcpy(v9, (v0 + 8), 0x69uLL);
  sub_21686BCEC(v9);
  return v4 & 1;
}

uint64_t ContentDescriptor.debugDescription.getter()
{
  v1 = OUTLINED_FUNCTION_82();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = __dst - v4;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_21700F3B4();

  v11 = 0x3D646E696BLL;
  v12 = 0xE500000000000000;
  LOBYTE(__dst[0]) = *v0;
  sub_216890478();
  MEMORY[0x21CE9F490]();

  MEMORY[0x21CE9F490](0x6669746E65646920, 0xED00003D73726569);
  memcpy(__dst, v0 + 8, 0x69uLL);
  v6 = ContentIdentifiers.debugDescription.getter();
  MEMORY[0x21CE9F490](v6);

  MEMORY[0x21CE9F490](0x3D6C727520, 0xE500000000000000);
  v7 = type metadata accessor for ContentDescriptor(0);
  sub_2168282D4(&v0[*(v7 + 24)], v5, &qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_104_0();
  v8 = sub_21700E594();
  MEMORY[0x21CE9F490](v8);

  return v11;
}

uint64_t sub_216897450(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_21700F7D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21689756C(unsigned __int8 a1)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](a1);
  return sub_21700F944();
}

uint64_t sub_2168975B4(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 7107189;
}

uint64_t sub_21689760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216897450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216897634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216897564();
  *a1 = result;
  return result;
}

uint64_t sub_21689765C(uint64_t a1)
{
  v2 = sub_2168A34FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216897698(uint64_t a1)
{
  v2 = sub_2168A34FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContentDescriptor.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_22_3();
  v26 = v24;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAAA0, &qword_2170214D8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_67_0();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2168A34FC();
  sub_21700F974();
  sub_2168A3550();
  sub_21700F764();
  if (!v25)
  {
    memcpy(v36, (v26 + 8), 0x69uLL);
    memcpy(v35, (v26 + 8), sizeof(v35));
    sub_21686BC90(v36, v34);
    sub_2168A35A4();
    sub_21700F764();
    memcpy(v34, v35, 0x69uLL);
    sub_21686BCEC(v34);
    type metadata accessor for ContentDescriptor(0);
    sub_217005EF4();
    OUTLINED_FUNCTION_56_7();
    sub_2168A5534(v30, v31, MEMORY[0x277CC9268]);
    sub_21700F704();
  }

  v32 = OUTLINED_FUNCTION_109();
  v33(v32);
  OUTLINED_FUNCTION_21_4();
}

void ContentDescriptor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_41_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAAC8, &qword_2170214E0);
  OUTLINED_FUNCTION_0(v28, &a10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v30 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = (v33 - v32);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2168A34FC();
  sub_21700F964();
  if (v20)
  {
    v41 = OUTLINED_FUNCTION_135_1();
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    v47 = 0;
    v35 = sub_2168A35F8();
    OUTLINED_FUNCTION_151_0(&type metadata for ContentKind, &v47, v36, v37, v35);
    *v34 = v48[0];
    HIBYTE(a10) = 1;
    v38 = sub_2168A364C();
    OUTLINED_FUNCTION_151_0(&type metadata for ContentIdentifiers, &a10 + 7, v39, v40, v38);
    memcpy(v34 + 8, v48, 0x69uLL);
    sub_217005EF4();
    BYTE6(a10) = 2;
    OUTLINED_FUNCTION_56_7();
    sub_2168A5534(v42, v43, MEMORY[0x277CC9280]);
    sub_21700F644();
    v44 = OUTLINED_FUNCTION_100_6();
    v45(v44);
    sub_2166CF4DC(v21, &v34[*(v30 + 24)]);
    sub_2168A557C();
    v46 = OUTLINED_FUNCTION_135_1();
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    sub_2168A55D0(v34, type metadata accessor for ContentDescriptor);
  }

  OUTLINED_FUNCTION_21_4();
}

void *ContentDescriptor.init(_:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 modelKind];
  if (v4)
  {
    v5 = v4;
    sub_216B9CE38(&v14);
    v6 = v14;
    if (v14 != 23)
    {
      sub_21689501C(a1, __src);

      v7 = *(type metadata accessor for ContentDescriptor(0) + 24);
      v8 = sub_217005EF4();
      __swift_storeEnumTagSinglePayload(&a2[v7], 1, 1, v8);
      *a2 = v6;
      return memcpy(a2 + 8, __src, 0x69uLL);
    }
  }

  sub_21700F3B4();
  MEMORY[0x21CE9F490](0xD00000000000001ALL, 0x8000000217083840);
  v14 = [a1 modelKind];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAAE8, &qword_2170214E8);
  v10 = sub_21700E594();
  MEMORY[0x21CE9F490](v10);

  MEMORY[0x21CE9F490](0xD000000000000016, 0x8000000217083860);
  v11 = [a1 description];
  sub_21700E514();

  v12 = OUTLINED_FUNCTION_82();
  MEMORY[0x21CE9F490](v12);

  MEMORY[0x21CE9F490](39, 0xE100000000000000);
  result = sub_21700F584();
  __break(1u);
  return result;
}

uint64_t sub_216897E5C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A5328;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_4;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57C4;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_82;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_216898224(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[12];
  if (v4)
  {
    result = a2[11];
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_21700E4D4();
      v7 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      result = [v3 setAdamID_];
    }
  }

  v8 = a2[10];
  if (v8)
  {
    v9 = a2[9];
    v10 = HIBYTE(v8) & 0xF;
    v11 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v9 & 0xFFFFFFFFFFFFLL)
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        sub_21700DF14();
        v14 = sub_216B034C0(v9);
        v33 = v32;

        if (v33)
        {
          return result;
        }

        goto LABEL_69;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v34[0] = v9;
        v34[1] = v8 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (v10)
          {
            if (--v10)
            {
              v14 = 0;
              v24 = v34 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  break;
                }

                v26 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v26 + v25;
                if (__OFADD__(v26, v25))
                {
                  break;
                }

                ++v24;
                if (!--v10)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_67;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (v9 != 45)
        {
          if (v10)
          {
            v14 = 0;
            v29 = v34;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v10)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_67;
        }

        if (v10)
        {
          if (--v10)
          {
            v14 = 0;
            v18 = v34 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v10)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_21700F444();
        }

        v13 = *result;
        if (v13 == 43)
        {
          if (v11 >= 1)
          {
            v10 = v11 - 1;
            if (v11 != 1)
            {
              v14 = 0;
              if (result)
              {
                v21 = (result + 1);
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_67;
                  }

                  v23 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    goto LABEL_67;
                  }

                  v14 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_67;
                  }

                  ++v21;
                  if (!--v10)
                  {
                    goto LABEL_68;
                  }
                }
              }

              goto LABEL_59;
            }

            goto LABEL_67;
          }

          goto LABEL_77;
        }

        if (v13 != 45)
        {
          if (v11)
          {
            v14 = 0;
            if (result)
            {
              while (1)
              {
                v27 = *result - 48;
                if (v27 > 9)
                {
                  goto LABEL_67;
                }

                v28 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_67;
                }

                v14 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_67;
                }

                ++result;
                if (!--v11)
                {
                  goto LABEL_59;
                }
              }
            }

            goto LABEL_59;
          }

LABEL_67:
          v14 = 0;
          LOBYTE(v10) = 1;
LABEL_68:
          v35 = v10;
          if (v10)
          {
            return result;
          }

LABEL_69:
          if (v14)
          {
            return [v3 setPurchasedAdamID_];
          }

          return result;
        }

        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v14 = 0;
            if (result)
            {
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_67;
                }

                v17 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_67;
                }

                v14 = v17 - v16;
                if (__OFSUB__(v17, v16))
                {
                  goto LABEL_67;
                }

                ++v15;
                if (!--v10)
                {
                  goto LABEL_68;
                }
              }
            }

LABEL_59:
            LOBYTE(v10) = 0;
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  return result;
}

uint64_t sub_216898584(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2168A557C();
  v5 = swift_allocObject();
  sub_2168A5624();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2168A53B0;
  *(v6 + 24) = v5;
  v26 = sub_2168A57D8;
  v27 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2168A57B4;
  v25 = &block_descriptor_92;
  v7 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 112))
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  aBlock = *(a2 + 104);
  v11 = aBlock;
  sub_21700F784();
  v12 = sub_21700E4D4();

  v10 = swift_allocObject();
  *(v10 + 16) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2168A5460;
  *(v13 + 24) = v10;
  v26 = sub_2168A57D8;
  v27 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2168A57B4;
  v25 = &block_descriptor_111;
  v14 = _Block_copy(&aBlock);

  [a1 setLibraryIdentifiersWithDatabaseID:v12 block:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = sub_2168A5460;
LABEL_6:
  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v17 = v16;

  if (v17)
  {
    v18 = sub_21700E4D4();

    sub_2168A557C();
    v19 = swift_allocObject();
    sub_2168A5624();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_2168A5448;
    *(v20 + 24) = v19;
    v26 = sub_2168A57D8;
    v27 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_2168A57B4;
    v25 = &block_descriptor_102;
    v21 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v18 block:v21];

    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    sub_21667E91C(v9, v10);

    if ((v21 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_21667E91C(v9, v10);
}

void sub_216898AD0(void *a1, void *a2)
{
  v4 = a2[12];
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = a2[11] & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_21700E4D4();
      v7 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID_];
      v8 = sub_21700E4D4();
      [a1 setGlobalPlaylistID_];
    }
  }

  v9 = a2[2];
  if (v9)
  {
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = a2[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11 = sub_21700E4D4();
      [a1 setUniversalCloudLibraryID_];
    }
  }
}

uint64_t sub_216898BEC(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A5470;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_121;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57B8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_131;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_216898FB4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A5488;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_141;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57B8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_151;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_21689937C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A57BC;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_161;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57B8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_171;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_216899744(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A57BC;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_181;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57B8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_191;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_216899B0C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    OUTLINED_FUNCTION_20_3();
    if (v2)
    {
      v3 = sub_21700E4D4();
      MPStoreItemMetadataInt64NormalizeStoreIDValue();

      v4 = OUTLINED_FUNCTION_146_0();

      [v4 v5];
    }
  }
}

uint64_t sub_216899B8C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v7 = swift_allocObject();
      v8 = sub_2168A54A0;
      *(v7 + 16) = sub_2168A54A0;
      *(v7 + 24) = v6;
      v21 = sub_2168A57D8;
      v22 = v7;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_2168A57B4;
      v20 = &block_descriptor_203;
      v9 = _Block_copy(&v17);
      sub_21700DF14();

      [a1 setRadioIdentifiersWithBlock_];
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v12 = v11;

  if (v12)
  {
    v13 = sub_21700E4D4();

    v21 = j_nullsub_1;
    v22 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2168A57B4;
    v20 = &block_descriptor_194;
    v14 = _Block_copy(&v17);

    [a1 setPersonalStoreIdentifiersWithPersonID:v13 block:v14];

    _Block_release(v14);
    v15 = swift_isEscapingClosureAtFileLocation();
    result = sub_21667E91C(v8, v6);
    if ((v15 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_21667E91C(v8, v6);
}

void sub_216899E28(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21700E4D4();
  [a1 setStationStringID_];
}

uint64_t sub_216899E88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_216899EDC(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A57C0;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_213;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A54A8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_223;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_21689A2A4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A54C0;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_233;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57B8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_243;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_21689A66C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A57C8;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_253;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57B8;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_263;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_21689AA34()
{
  OUTLINED_FUNCTION_145_1();
  if (*(v2 + 96))
  {
    OUTLINED_FUNCTION_20_3();
    if (v3)
    {
      v4 = sub_21700E4D4();
      v5 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [v0 setAdamID_];
    }
  }

  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_20_3();
    if (v6)
    {
      v7 = sub_21700E4D4();
      [v0 setUniversalCloudLibraryID_];
    }
  }
}

void sub_21689AAF8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = *(a2 + 56);
    v4 = HIBYTE(v2) & 0xF;
    v5 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3 & 0xFFFFFFFFFFFFLL)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        sub_21700DF14();
        sub_216B034C4(v3, v2, 0xAuLL);
        v10 = v19;
        v21 = v20;

        if (v21)
        {
          return;
        }

        goto LABEL_76;
      }

      if ((v2 & 0x2000000000000000) != 0)
      {
        if (v3 == 43)
        {
          if (v4)
          {
            if (v4 != 1)
            {
              v10 = 0;
              OUTLINED_FUNCTION_36_10();
              while (1)
              {
                OUTLINED_FUNCTION_14_17();
                if (!v12 && v11)
                {
                  break;
                }

                OUTLINED_FUNCTION_110_2();
                if (!v12)
                {
                  break;
                }

                OUTLINED_FUNCTION_99_6();
                if (v11)
                {
                  break;
                }

                OUTLINED_FUNCTION_42_5();
                if (v12)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_74;
          }

LABEL_85:
          __break(1u);
          return;
        }

        if (v3 != 45)
        {
          if (v4)
          {
            v10 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v12 && v11)
              {
                break;
              }

              OUTLINED_FUNCTION_110_2();
              if (!v12)
              {
                break;
              }

              OUTLINED_FUNCTION_99_6();
              if (v11)
              {
                break;
              }

              OUTLINED_FUNCTION_42_5();
              if (v12)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            v10 = 0;
            OUTLINED_FUNCTION_36_10();
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v12 && v11)
              {
                break;
              }

              OUTLINED_FUNCTION_110_2();
              if (!v12)
              {
                break;
              }

              v11 = 10 * v10 >= v15;
              v10 = 10 * v10 - v15;
              if (!v11)
              {
                break;
              }

              OUTLINED_FUNCTION_42_5();
              if (v12)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v8 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_21700F444();
        }

        v9 = *v8;
        if (v9 == 43)
        {
          if (v5 >= 1)
          {
            if (v5 != 1)
            {
              v10 = 0;
              if (v8)
              {
                OUTLINED_FUNCTION_87_5();
                while (1)
                {
                  OUTLINED_FUNCTION_14_17();
                  if (!v12 && v11)
                  {
                    goto LABEL_74;
                  }

                  OUTLINED_FUNCTION_110_2();
                  if (!v12)
                  {
                    goto LABEL_74;
                  }

                  OUTLINED_FUNCTION_99_6();
                  if (v11)
                  {
                    goto LABEL_74;
                  }

                  OUTLINED_FUNCTION_42_5();
                  if (v12)
                  {
                    goto LABEL_75;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_74;
          }

          goto LABEL_84;
        }

        if (v9 != 45)
        {
          if (v5)
          {
            v10 = 0;
            if (v8)
            {
              while (1)
              {
                OUTLINED_FUNCTION_98_5();
                if (!v12 && v11)
                {
                  goto LABEL_74;
                }

                if (!is_mul_ok(v10, v17))
                {
                  goto LABEL_74;
                }

                v11 = __CFADD__(10 * v10, v18);
                v10 = 10 * v10 + v18;
                if (v11)
                {
                  goto LABEL_74;
                }

                if (v16 == 1)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_64;
          }

LABEL_74:
          v10 = 0;
          v14 = 1;
LABEL_75:
          if (v14)
          {
            return;
          }

LABEL_76:
          if (v10)
          {
            [a1 setCloudID_];
          }

          return;
        }

        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v10 = 0;
            if (v8)
            {
              OUTLINED_FUNCTION_87_5();
              while (1)
              {
                OUTLINED_FUNCTION_14_17();
                if (!v12 && v11)
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_110_2();
                if (!v12)
                {
                  goto LABEL_74;
                }

                v11 = 10 * v10 >= v13;
                v10 = 10 * v10 - v13;
                if (!v11)
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_42_5();
                if (v12)
                {
                  goto LABEL_75;
                }
              }
            }

LABEL_64:
            v14 = 0;
            goto LABEL_75;
          }

          goto LABEL_74;
        }

        __break(1u);
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }
}

uint64_t sub_21689AD84(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A57C0;
  *(v5 + 24) = v4;
  v19 = sub_2168A57D8;
  v20 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2168A57B4;
  v18 = &block_descriptor_273;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    sub_2168A557C();
    v11 = swift_allocObject();
    sub_2168A5624();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2168A57C4;
    *(v12 + 24) = v11;
    v19 = sub_2168A57D8;
    v20 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_2168A57B4;
    v18 = &block_descriptor_283;
    v13 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_21689B14C()
{
  OUTLINED_FUNCTION_145_1();
  if (*(v2 + 96))
  {
    OUTLINED_FUNCTION_20_3();
    if (v3)
    {
      v4 = sub_21700E4D4();
      v5 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [v0 setAdamID_];
    }
  }

  v6 = v1[10];
  if (!v6)
  {
    goto LABEL_75;
  }

  v7 = v1[9];
  OUTLINED_FUNCTION_132();
  if (!v9)
  {
    goto LABEL_75;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      OUTLINED_FUNCTION_131_0();
      if (v14)
      {
        if (v18)
        {
          if (v18 != 1)
          {
            OUTLINED_FUNCTION_36_10();
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v14 & v13)
              {
                break;
              }

              OUTLINED_FUNCTION_22_23();
              if (!v14)
              {
                break;
              }

              v12 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              OUTLINED_FUNCTION_42_5();
              if (v14)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_85:
        __break(1u);
        return;
      }

      if (v19 != 45)
      {
        if (v18)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v14 & v13)
            {
              break;
            }

            OUTLINED_FUNCTION_22_23();
            if (!v14)
            {
              break;
            }

            v12 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            OUTLINED_FUNCTION_42_5();
            if (v14)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v18)
      {
        if (v18 != 1)
        {
          OUTLINED_FUNCTION_36_10();
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v14 & v13)
            {
              break;
            }

            OUTLINED_FUNCTION_22_23();
            if (!v14)
            {
              break;
            }

            v12 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              break;
            }

            OUTLINED_FUNCTION_42_5();
            if (v14)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_82();
        v10 = sub_21700F444();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              OUTLINED_FUNCTION_87_5();
              while (1)
              {
                OUTLINED_FUNCTION_14_17();
                if (!v14 & v13)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_22_23();
                if (!v14)
                {
                  goto LABEL_71;
                }

                v12 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_42_5();
                if (v14)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_84;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              OUTLINED_FUNCTION_98_5();
              if (!v14 & v13)
              {
                goto LABEL_71;
              }

              v29 = 10 * v12;
              if ((v12 * v27) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_71;
              }

              v12 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              if (v26 == 1)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_71:
        v12 = 0;
        v17 = 1;
LABEL_72:
        if ((v17 & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_75;
      }

      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            OUTLINED_FUNCTION_87_5();
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v14 & v13)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_22_23();
              if (!v14)
              {
                goto LABEL_71;
              }

              v12 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_42_5();
              if (v14)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v17 = 0;
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  sub_21700DF14();
  v36 = OUTLINED_FUNCTION_82();
  v12 = sub_216B034C0(v36);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_73:
    if (v12)
    {
      v32 = OUTLINED_FUNCTION_146_0();
      [v32 v33];
    }
  }

LABEL_75:
  if (v1[2])
  {
    OUTLINED_FUNCTION_20_3();
    if (v34)
    {
      v35 = sub_21700E4D4();
      [v0 setUniversalCloudLibraryID_];
    }
  }
}

void sub_21689B41C()
{
  OUTLINED_FUNCTION_145_1();
  v3 = *(v2 + 64);
  if (!v3)
  {
    goto LABEL_72;
  }

  v4 = *(v1 + 56);
  OUTLINED_FUNCTION_132();
  if (!v6)
  {
    goto LABEL_72;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      OUTLINED_FUNCTION_131_0();
      if (v11)
      {
        if (v15)
        {
          if (v15 != 1)
          {
            OUTLINED_FUNCTION_36_10();
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v11 && v10)
              {
                break;
              }

              OUTLINED_FUNCTION_108_5();
              if (!v11)
              {
                break;
              }

              OUTLINED_FUNCTION_63_5();
              v9 = v22 + v21;
              if (__CFADD__(v22, v21))
              {
                break;
              }

              OUTLINED_FUNCTION_42_5();
              if (v11)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_82:
        __break(1u);
        return;
      }

      if (v16 != 45)
      {
        if (v15)
        {
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v11 && v10)
            {
              break;
            }

            OUTLINED_FUNCTION_108_5();
            if (!v11)
            {
              break;
            }

            OUTLINED_FUNCTION_63_5();
            v9 = v27 + v26;
            if (__CFADD__(v27, v26))
            {
              break;
            }

            OUTLINED_FUNCTION_42_5();
            if (v11)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v15)
      {
        if (v15 != 1)
        {
          OUTLINED_FUNCTION_36_10();
          while (1)
          {
            OUTLINED_FUNCTION_14_17();
            if (!v11 && v10)
            {
              break;
            }

            OUTLINED_FUNCTION_108_5();
            if (!v11)
            {
              break;
            }

            OUTLINED_FUNCTION_63_5();
            v9 = v18 - v17;
            if (v18 < v17)
            {
              break;
            }

            OUTLINED_FUNCTION_42_5();
            if (v11)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_82();
        v7 = sub_21700F444();
      }

      v8 = *v7;
      if (v8 == 43)
      {
        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              OUTLINED_FUNCTION_87_5();
              while (1)
              {
                OUTLINED_FUNCTION_14_17();
                if (!v11 && v10)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_108_5();
                if (!v11)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_63_5();
                v9 = v20 + v19;
                if (__CFADD__(v20, v19))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_42_5();
                if (v11)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_81;
      }

      if (v8 != 45)
      {
        if (v5)
        {
          v9 = 0;
          if (v7)
          {
            while (1)
            {
              OUTLINED_FUNCTION_98_5();
              if (!v11 && v10)
              {
                goto LABEL_68;
              }

              if (!is_mul_ok(v9, v24))
              {
                goto LABEL_68;
              }

              v10 = __CFADD__(10 * v9, v25);
              v9 = 10 * v9 + v25;
              if (v10)
              {
                goto LABEL_68;
              }

              if (v23 == 1)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v9 = 0;
        v14 = 1;
LABEL_69:
        if ((v14 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_72;
      }

      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v9 = 0;
          if (v7)
          {
            OUTLINED_FUNCTION_87_5();
            while (1)
            {
              OUTLINED_FUNCTION_14_17();
              if (!v11 && v10)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_108_5();
              if (!v11)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_63_5();
              v9 = v13 - v12;
              if (v13 < v12)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_42_5();
              if (v11)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v14 = 0;
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_21700DF14();
  v32 = OUTLINED_FUNCTION_82();
  sub_216B034C4(v32, v33, 0xAuLL);
  v9 = v34;
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_70:
    if (v9)
    {
      v28 = OUTLINED_FUNCTION_146_0();
      [v28 v29];
    }
  }

LABEL_72:
  if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_20_3();
    if (v30)
    {
      v31 = sub_21700E4D4();
      [v0 setCloudAlbumID_];
    }
  }
}

uint64_t sub_21689B6C4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v7 = swift_allocObject();
      v8 = sub_2168A54D8;
      *(v7 + 16) = sub_2168A54D8;
      *(v7 + 24) = v6;
      v21 = sub_2168A57D8;
      v22 = v7;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_2168A57B4;
      v20 = &block_descriptor_296;
      v9 = _Block_copy(&v17);
      sub_21700DF14();

      [a1 setUniversalStoreIdentifiersWithBlock_];
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v12 = v11;

  if (v12)
  {
    v13 = sub_21700E4D4();

    v21 = j_nullsub_1;
    v22 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2168A57B4;
    v20 = &block_descriptor_286;
    v14 = _Block_copy(&v17);

    [a1 setPersonalStoreIdentifiersWithPersonID:v13 block:v14];

    _Block_release(v14);
    v15 = swift_isEscapingClosureAtFileLocation();
    result = sub_21667E91C(v8, v6);
    if ((v15 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_21667E91C(v8, v6);
}

uint64_t sub_21689B960(void *a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v7 = swift_allocObject();
      v8 = sub_2168A57DC;
      *(v7 + 16) = sub_2168A57DC;
      *(v7 + 24) = v6;
      v21 = sub_2168A57D8;
      v22 = v7;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_2168A57B4;
      v20 = &block_descriptor_309;
      v9 = _Block_copy(&v17);
      sub_21700DF14();

      [a1 setUniversalStoreIdentifiersWithBlock_];
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v12 = v11;

  if (v12)
  {
    v13 = sub_21700E4D4();

    v21 = j_nullsub_1;
    v22 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2168A57B4;
    v20 = &block_descriptor_299;
    v14 = _Block_copy(&v17);

    [a1 setPersonalStoreIdentifiersWithPersonID:v13 block:v14];

    _Block_release(v14);
    v15 = swift_isEscapingClosureAtFileLocation();
    result = sub_21667E91C(v8, v6);
    if ((v15 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_21667E91C(v8, v6);
}

uint64_t sub_21689BBFC(void *a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v7 = swift_allocObject();
      v8 = sub_2168A57DC;
      *(v7 + 16) = sub_2168A57DC;
      *(v7 + 24) = v6;
      v21 = sub_2168A57D8;
      v22 = v7;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_2168A57B4;
      v20 = &block_descriptor_322;
      v9 = _Block_copy(&v17);
      sub_21700DF14();

      [a1 setUniversalStoreIdentifiersWithBlock_];
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v12 = v11;

  if (v12)
  {
    v13 = sub_21700E4D4();

    v21 = j_nullsub_1;
    v22 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2168A57B4;
    v20 = &block_descriptor_312;
    v14 = _Block_copy(&v17);

    [a1 setPersonalStoreIdentifiersWithPersonID:v13 block:v14];

    _Block_release(v14);
    v15 = swift_isEscapingClosureAtFileLocation();
    result = sub_21667E91C(v8, v6);
    if ((v15 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_21667E91C(v8, v6);
}

uint64_t sub_21689BE98(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentDescriptor(0) - 8;
  MEMORY[0x28223BE20](v3);
  sub_2168A557C();
  v4 = swift_allocObject();
  sub_2168A5624();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2168A54F4;
  *(v5 + 24) = v4;
  v17 = sub_2168A57D8;
  v18 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2168A57B4;
  v16 = &block_descriptor_332;
  v6 = _Block_copy(&aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = sub_21700E4D4();

    v17 = j_nullsub_1;
    v18 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2168A57B4;
    v16 = &block_descriptor_335;
    v11 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v10 block:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_21689C1B0(void *a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = sub_21700E4D4();
    [a1 setSocialProfileID_];
  }
}

uint64_t sub_21689C21C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    v4 = *(a2 + 88);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v7 = swift_allocObject();
      v8 = sub_2168A57DC;
      *(v7 + 16) = sub_2168A57DC;
      *(v7 + 24) = v6;
      v21 = sub_2168A57D8;
      v22 = v7;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_2168A57B4;
      v20 = &block_descriptor_354;
      v9 = _Block_copy(&v17);
      sub_21700DF14();

      [a1 setUniversalStoreIdentifiersWithBlock_];
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  sub_21700E294();
  sub_21700E284();
  sub_216890548();
  v12 = v11;

  if (v12)
  {
    v13 = sub_21700E4D4();

    v21 = j_nullsub_1;
    v22 = 0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2168A57B4;
    v20 = &block_descriptor_344;
    v14 = _Block_copy(&v17);

    [a1 setPersonalStoreIdentifiersWithPersonID:v13 block:v14];

    _Block_release(v14);
    v15 = swift_isEscapingClosureAtFileLocation();
    result = sub_21667E91C(v8, v6);
    if ((v15 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_21667E91C(v8, v6);
}

id sub_21689C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21700E4D4();
  MPStoreItemMetadataInt64NormalizeStoreIDValue();

  v4 = OUTLINED_FUNCTION_146_0();

  return [v4 v5];
}

void sub_21689C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_22_3();
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_41_1();
  v33 = type metadata accessor for ContentIdentifiers(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v74 - v39;
  v41 = type metadata accessor for ContentDescriptor.ContentKind(0);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_125_1();
  v85 = v28;
  sub_216FDB7AC();
  sub_2168A557C();
  sub_21689C894(v45, v47, v48, v49, v50, v51, v52, v53, v74, v75, SWORD2(v75), SBYTE6(v75), SHIBYTE(v75), v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1));
  OUTLINED_FUNCTION_0_56();
  sub_2168A55D0(v25, v54);
  if (v24)
  {
    OUTLINED_FUNCTION_21_17();
  }

  else
  {
    v83 = 0;
    v84 = v26;
    *v30 = a14;
    sub_216FDBC34(v40);
    sub_2168A557C();
    v55 = v33[6];
    v56 = (v37 + v33[5]);
    v75 = v56[1];
    v57 = (v37 + v55);
    v58 = v57[1];
    v59 = v33[8];
    v60 = (v37 + v33[7]);
    v61 = v60[1];
    v62 = (v37 + v33[9]);
    v63 = v62[1];
    v64 = (v37 + v33[10]);
    v65 = v64[1];
    v66 = v37 + v33[11];
    v82 = *v66;
    LOBYTE(v66) = *(v66 + 8);
    *&v67 = *v57;
    v78 = v67;
    *&v67 = *v56;
    v76 = v67;
    *&v67 = *v60;
    v79 = v67;
    *&v67 = *v64;
    v81 = v67;
    *&v67 = *v62;
    v80 = v67;
    v86 = v66;
    v68 = *(v37 + v59 + 8);
    *&v67 = *(v37 + v59);
    v77 = v67;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_2168A55D0(v37, type metadata accessor for ContentIdentifiers);
    sub_2168A55D0(v40, type metadata accessor for ContentIdentifiers);
    *&v69 = v76;
    *(&v69 + 1) = v75;
    *&v70 = v78;
    *(&v70 + 1) = v58;
    *(v30 + 24) = v70;
    *(v30 + 8) = v69;
    *&v69 = v79;
    *(&v69 + 1) = v61;
    *&v70 = v77;
    *(&v70 + 1) = v68;
    *(v30 + 56) = v70;
    *(v30 + 40) = v69;
    *&v69 = v80;
    *&v70 = v81;
    *(&v69 + 1) = v63;
    *(&v70 + 1) = v65;
    *(v30 + 88) = v70;
    *(v30 + 72) = v69;
    *(v30 + 104) = v82;
    *(v30 + 112) = v86;
    if (*(v85 + *(type metadata accessor for ContentDescriptor(0) + 28) + 8))
    {
      sub_21700DF14();
      v71 = v84;
      OUTLINED_FUNCTION_82();
      sub_217005ED4();

      OUTLINED_FUNCTION_21_17();
    }

    else
    {
      OUTLINED_FUNCTION_21_17();
      v72 = sub_217005EF4();
      v71 = v84;
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v72);
    }

    v73 = type metadata accessor for ContentDescriptor(0);
    sub_2166CF4DC(v71, v30 + *(v73 + 24));
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21689CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v61 - v37;
  if (v24)
  {
    v39 = 0;
    switch(v26)
    {
      case 1uLL:
        break;
      case 2uLL:
        v39 = 1;
        break;
      case 3uLL:
        v39 = 2;
        break;
      default:
        v63 = v28;
        OUTLINED_FUNCTION_86();
        sub_217007C94();
        v40 = sub_217007C84();
        v41 = sub_21700ED84();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v62 = v20;
          v44 = v43;
          a10 = v43;
          *v42 = 136315138;
          v64 = &type metadata for ContentDescriptor.ContentKind.AppleCurator.Kind;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE0, &unk_217022DB0);
          v45 = sub_21700E594();
          v47 = sub_2166A85FC(v45, v46, &a10);

          *(v42 + 4) = v47;
          _os_log_impl(&dword_216679000, v40, v41, "Unspecified value for type '%s'", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          OUTLINED_FUNCTION_152();
          MEMORY[0x21CEA1440](v42, -1, -1);
        }

        (*(v31 + 8))(v38, v29);
        goto LABEL_9;
    }
  }

  else
  {
    v63 = v28;
    OUTLINED_FUNCTION_86();
    sub_217007C94();
    v48 = sub_217007C84();
    v49 = sub_21700ED84();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v62 = v20;
      v51 = v50;
      v52 = swift_slowAlloc();
      a10 = v52;
      *v51 = 136315394;
      v64 = v26;
      v53 = sub_21700F784();
      v55 = sub_2166A85FC(v53, v54, &a10);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v64 = &type metadata for ContentDescriptor.ContentKind.AppleCurator.Kind;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE0, &unk_217022DB0);
      v56 = sub_21700E594();
      v58 = sub_2166A85FC(v56, v57, &a10);

      *(v51 + 14) = v58;
      _os_log_impl(&dword_216679000, v48, v49, "Unrecognized value '%s' for type '%s'", v51, 0x16u);
      v39 = 2;
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v52, -1, -1);
      OUTLINED_FUNCTION_152();

      v59 = OUTLINED_FUNCTION_104_0();
      v60(v59);
    }

    else
    {

      (*(v31 + 8))(v35, v29);
LABEL_9:
      v39 = 2;
    }

    v28 = v63;
  }

  *v28 = v39;
  OUTLINED_FUNCTION_21_4();
}

id sub_21689D1FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v12[4] = sub_2168A550C;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21689D330;
  v12[3] = &block_descriptor_341;
  v9 = _Block_copy(v12);

  v10 = [v4 initWithModelKind:a1 block:v9];

  _Block_release(v9);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_21689D330(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

unint64_t sub_21689D37C()
{
  result = qword_280E452D0;
  if (!qword_280E452D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E452D0);
  }

  return result;
}

unint64_t sub_21689D3D0()
{
  result = qword_280E452E8[0];
  if (!qword_280E452E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E452E8);
  }

  return result;
}

unint64_t sub_21689D424()
{
  result = qword_27CABA8D8;
  if (!qword_27CABA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA8D8);
  }

  return result;
}

unint64_t sub_21689D478()
{
  result = qword_27CABA8E0;
  if (!qword_27CABA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA8E0);
  }

  return result;
}

unint64_t sub_21689D4CC()
{
  result = qword_27CABA8E8;
  if (!qword_27CABA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA8E8);
  }

  return result;
}

unint64_t sub_21689D520()
{
  result = qword_27CABA8F0;
  if (!qword_27CABA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA8F0);
  }

  return result;
}

unint64_t sub_21689D574()
{
  result = qword_27CABA8F8;
  if (!qword_27CABA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA8F8);
  }

  return result;
}

unint64_t sub_21689D5C8()
{
  result = qword_27CABA900;
  if (!qword_27CABA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA900);
  }

  return result;
}

unint64_t sub_21689D61C()
{
  result = qword_27CABA908;
  if (!qword_27CABA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA908);
  }

  return result;
}

unint64_t sub_21689D670()
{
  result = qword_27CABA910;
  if (!qword_27CABA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA910);
  }

  return result;
}

unint64_t sub_21689D6C4()
{
  result = qword_27CABA918;
  if (!qword_27CABA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA918);
  }

  return result;
}

unint64_t sub_21689D718()
{
  result = qword_27CABA920;
  if (!qword_27CABA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA920);
  }

  return result;
}

unint64_t sub_21689D76C()
{
  result = qword_27CABA928;
  if (!qword_27CABA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA928);
  }

  return result;
}

unint64_t sub_21689D7C0()
{
  result = qword_27CABA930;
  if (!qword_27CABA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA930);
  }

  return result;
}

unint64_t sub_21689D814()
{
  result = qword_27CABA938;
  if (!qword_27CABA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA938);
  }

  return result;
}

unint64_t sub_21689D868()
{
  result = qword_27CABA940;
  if (!qword_27CABA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA940);
  }

  return result;
}

unint64_t sub_21689D8BC()
{
  result = qword_27CABA948;
  if (!qword_27CABA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA948);
  }

  return result;
}

unint64_t sub_21689D910()
{
  result = qword_27CABA950;
  if (!qword_27CABA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA950);
  }

  return result;
}

unint64_t sub_21689D964()
{
  result = qword_27CABA958;
  if (!qword_27CABA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA958);
  }

  return result;
}

unint64_t sub_21689D9B8()
{
  result = qword_27CABA960;
  if (!qword_27CABA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA960);
  }

  return result;
}

unint64_t sub_21689DA0C()
{
  result = qword_27CABA968;
  if (!qword_27CABA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA968);
  }

  return result;
}

unint64_t sub_21689DA60()
{
  result = qword_27CABA970;
  if (!qword_27CABA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA970);
  }

  return result;
}

unint64_t sub_21689DAB4()
{
  result = qword_27CABA978;
  if (!qword_27CABA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA978);
  }

  return result;
}

unint64_t sub_21689DB08()
{
  result = qword_27CABA980;
  if (!qword_27CABA980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA980);
  }

  return result;
}

uint64_t sub_21689DB5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_217016ED0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_21689DBC0()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABACA8, &qword_217022D88);
  v3 = *v0;
  v4 = sub_21700F374();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_116_2();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_26_17();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_147_2();
LABEL_15:
        OUTLINED_FUNCTION_92_4(v16);
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v1 + v10))
      {
        OUTLINED_FUNCTION_45_10();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void sub_21689DCBC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v2 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABAEF0, &unk_217022E08);
  v9 = *v0;
  v10 = sub_21700F374();
  if (v9[2])
  {
    v26 = v1;
    v11 = OUTLINED_FUNCTION_27_14();
    v13 = (v12 + 63) >> 6;
    if (v10 != v9 || v11 >= &v9[v13 + 7])
    {
      memmove(v11, v9 + 7, 8 * v13);
    }

    v15 = 0;
    *(v10 + 16) = v9[2];
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_26_17();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_15:
        v25 = *(v4 + 72) * (v21 | (v15 << 6));
        (*(v4 + 16))(v8, v9[6] + v25, v2);
        (*(v4 + 32))(*(v10 + 48) + v25, v8, v2);
      }

      while (v18);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v26;
        goto LABEL_19;
      }

      ++v22;
      if (v9[v15 + 7])
      {
        OUTLINED_FUNCTION_45_10();
        v18 = v24 & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v1 = v10;
    OUTLINED_FUNCTION_26();
  }
}

void *sub_21689DEA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAEE0, &qword_217022DF0);
  v2 = *v0;
  v3 = sub_21700F374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21689DFE8()
{
  v1 = v0;
  v2 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACB8, &unk_217022D90);
  v3 = *v0;
  v4 = sub_21700F374();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        sub_2168A557C();
        result = sub_2168A5624();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

void sub_21689E1F0()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE8, &unk_2170715D0);
  v3 = *v0;
  v4 = sub_21700F374();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_116_2();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_26_17();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_147_2();
LABEL_15:
        OUTLINED_FUNCTION_92_4(v16);
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v1 + v10))
      {
        OUTLINED_FUNCTION_45_10();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void *sub_21689E2EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACA0, &qword_217022D80);
  v2 = *v0;
  v3 = sub_21700F374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = *(v2 + 48);
        v18 = 120 * (v14 | (v8 << 6));
        memcpy(__dst, (v17 + v18), sizeof(__dst));
        memmove((*(v4 + 48) + v18), (v17 + v18), 0x78uLL);
        result = sub_2168A5278(__dst, &v19);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_21689E474()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v4 = OUTLINED_FUNCTION_2(Friends);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EF0, &qword_217022E00);
  v5 = *v0;
  v6 = sub_21700F374();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_112_3();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_26_17();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_141_1();
LABEL_15:
        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_9_31();
        sub_2168A557C();
        OUTLINED_FUNCTION_58_6();
        sub_2168A5624();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v1 + v12))
      {
        OUTLINED_FUNCTION_45_10();
        v15 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v6;
    OUTLINED_FUNCTION_26();
  }
}

void *sub_21689E5F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACF0, qword_217022DC0);
  v2 = *v0;
  v3 = sub_21700F374();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_21689E730()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v3 = type metadata accessor for MusicURLRequest(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAEE8, &qword_217022DF8);
  v5 = *v0;
  v6 = sub_21700F374();
  if (*(v5 + 16))
  {
    OUTLINED_FUNCTION_27_14();
    OUTLINED_FUNCTION_112_3();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v1, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_26_17();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_141_1();
LABEL_15:
        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_8_23();
        sub_2168A557C();
        OUTLINED_FUNCTION_57_9();
        sub_2168A5624();
      }

      while (v15);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v1 + v12))
      {
        OUTLINED_FUNCTION_45_10();
        v15 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v6;
    OUTLINED_FUNCTION_26();
  }
}