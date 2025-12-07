uint64_t sub_10076D5F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 3158066;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xE300000000000000;
    if (a1 == 2)
    {
      v5 = 3223602;
    }

    else
    {
      v5 = 3354674;
    }
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 3158066;
    }

    else
    {
      v5 = 12589;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 3223602;
  if (a2 != 2)
  {
    v8 = 3354674;
  }

  if (a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v2 = 12589;
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
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10076D6E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696772616843;
    }

    else
    {
      v4 = 0x6772616843746F4ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000676E69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656772616843;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x676E696772616843;
  if (a2 != 2)
  {
    v7 = 0x6772616843746F4ELL;
    v6 = 0xEB00000000676E69;
  }

  if (a2)
  {
    v2 = 0x64656772616843;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10076D83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461447472617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65746144646E65;
    }

    else
    {
      v5 = 0x7461447472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE300000000000000;
    v5 = 7562345;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7261646E6F636573;
    }

    else
    {
      v5 = 0x6F43686372616573;
    }

    if (v4 == 3)
    {
      v6 = 0xEC00000073644979;
    }

    else
    {
      v6 = 0xED0000747865746ELL;
    }
  }

  v7 = 0xE300000000000000;
  v8 = 7562345;
  v9 = 0x7261646E6F636573;
  v10 = 0xEC00000073644979;
  if (a2 != 3)
  {
    v9 = 0x6F43686372616573;
    v10 = 0xED0000747865746ELL;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x65746144646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10076D9D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x65776F5068676968;
    v13 = 0xE900000000000072;
    if (a1 != 2)
    {
      v12 = 0x4F7265776F506E6FLL;
      v13 = 0xED0000694669576ELL;
    }

    v14 = 0x6F506D756964656DLL;
    if (a1)
    {
      v11 = 0xEB00000000726577;
    }

    else
    {
      v14 = 0x7265776F50776F6CLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x7265747461426E6FLL;
    v4 = 0xEF6C6C65436E4F79;
    v5 = 0x6F696E61706D6F63;
    v6 = 0xEF79627261654E6ELL;
    if (a1 != 7)
    {
      v5 = 0x6857796669746F6ELL;
      v6 = 0xEF646E756F466E65;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x4F7265776F506E6FLL;
    v8 = 0xED00006C6C65436ELL;
    if (a1 != 4)
    {
      v7 = 0x7265747461426E6FLL;
      v8 = 0xEF694669576E4F79;
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
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xEB00000000726577;
        if (v9 != 0x6F506D756964656DLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x7265776F50776F6CLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v15 = 0xE900000000000072;
      if (v9 != 0x65776F5068676968)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x694669576ELL;
LABEL_45:
    v15 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v9 != 0x4F7265776F506E6FLL)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xEF6C6C65436E4F79;
      if (v9 != 0x7265747461426E6FLL)
      {
        goto LABEL_52;
      }
    }

    else if (a2 == 7)
    {
      v15 = 0xEF79627261654E6ELL;
      if (v9 != 0x6F696E61706D6F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEF646E756F466E65;
      if (v9 != 0x6857796669746F6ELL)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v16 = 0x6C6C65436ELL;
    goto LABEL_45;
  }

  v15 = 0xEF694669576E4F79;
  if (v9 != 0x7265747461426E6FLL)
  {
LABEL_52:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_10076DD34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x614D6E6F63616562;
  if (a1 == 5)
  {
    v5 = 0x657264644163616DLL;
  }

  else
  {
    v4 = 0xE900000000000070;
  }

  v6 = 0x8000000101347C70;
  v7 = 0xD000000000000016;
  if (a1 != 3)
  {
    v7 = 1701667182;
    v6 = 0xE400000000000000;
  }

  if (a1 > 4u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x696669746E656469;
  if (a1 == 1)
  {
    v9 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0xEA00000000007265;
  }

  if (a1)
  {
    v8 = v9;
  }

  else
  {
    v3 = 0x8000000101347C50;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
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
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6E6F6973726576)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = 0xEA00000000007265;
        if (v10 != 0x696669746E656469)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0x8000000101347C50;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000007373;
      if (v10 != 0x657264644163616DLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE900000000000070;
      if (v10 != 0x614D6E6F63616562)
      {
LABEL_42:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x8000000101347C70;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_10076DF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "instructionsToDisableItems";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD00000000000002ALL;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (a1 == 5)
  {
    v6 = "isementDurationInSecs";
  }

  else
  {
    v6 = "isementDurationDecayFactor";
  }

  v7 = 0xD000000000000025;
  if (a1 == 3)
  {
    v7 = 0xD000000000000016;
    v8 = "ementIntervalInSecs";
  }

  else
  {
    v8 = "slowRollDurationInSecs";
  }

  if (v4 <= 4)
  {
    v9 = v8;
  }

  else
  {
    v7 = v5;
    v9 = v6;
  }

  v10 = 0xD000000000000023;
  if (v4 == 1)
  {
    v10 = 0xD000000000000016;
    v11 = "initialNoBeaconPeriodInSecs";
  }

  else
  {
    v11 = "fastRollDurationInSecs";
  }

  if (!v4)
  {
    v10 = 0xD00000000000001BLL;
    v11 = "instructionsToDisableItems";
  }

  if (v4 <= 2)
  {
    v12 = v11;
  }

  else
  {
    v10 = v7;
    v12 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "initialNoBeaconPeriodInSecs";
      }

      else
      {
        v2 = 0xD000000000000023;
        v3 = "fastRollDurationInSecs";
      }
    }

    else
    {
      v2 = 0xD00000000000001BLL;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000002ALL;
      v3 = "isementDurationInSecs";
    }

    else
    {
      v2 = 0xD000000000000020;
      v3 = "isementDurationDecayFactor";
    }
  }

  else if (a2 == 3)
  {
    v3 = "ementIntervalInSecs";
  }

  else
  {
    v2 = 0xD000000000000025;
    v3 = "slowRollDurationInSecs";
  }

  if (v10 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10076E110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x666E497865646E69;
      v4 = 0xE90000000000006FLL;
    }

    else
    {
      v3 = 0x6D617473656D6974;
      v4 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1701869940;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0x8000000101347590;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0x666E497865646E69;
    }

    else
    {
      v7 = 0x6D617473656D6974;
    }

    if (a2 == 2)
    {
      v6 = 0xE90000000000006FLL;
    }

    else
    {
      v6 = 0xE900000000000070;
    }

    if (v3 != v7)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 1701869940;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0x8000000101347590;
    }

    if (v3 != v5)
    {
      goto LABEL_29;
    }
  }

  if (v4 != v6)
  {
LABEL_29:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_30;
  }

  v8 = 1;
LABEL_30:

  return v8 & 1;
}

uint64_t sub_10076E260(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000746E656D65;
  v3 = 0x7369747265766461;
  v4 = a1;
  v5 = 0x8000000101347FC0;
  v6 = 0xD000000000000012;
  if (a1 != 6)
  {
    v6 = 0x737574617473;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656475746974616CLL;
  if (a1 != 4)
  {
    v8 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461446174656DLL;
  if (a1 != 2)
  {
    v10 = 0xD000000000000010;
    v9 = 0x8000000101347FA0;
  }

  v11 = 0x6D617473656D6974;
  v12 = 0xE900000000000070;
  if (!a1)
  {
    v11 = 0x7369747265766461;
    v12 = 0xED0000746E656D65;
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
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000101347FC0;
        if (v13 != 0xD000000000000012)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x737574617473)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x656475746974616CLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0xE900000000000065;
      if (v13 != 0x64757469676E6F6CLL)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x617461446174656DLL)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0xD000000000000010;
      v2 = 0x8000000101347FA0;
    }

    else if (a2)
    {
      v2 = 0xE900000000000070;
      if (v13 != 0x6D617473656D6974)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_10076E4D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747265434143;
  v3 = a1;
  v4 = 0xE600000000000000;
  if (a1 <= 3u)
  {
    v12 = 0x6843657571696E55;
    v13 = 0xEC00000044497069;
    if (a1 != 2)
    {
      v12 = 0x6E496F545344494FLL;
      v13 = 0xED00006564756C63;
    }

    v14 = 0x444970696843;
    if (!a1)
    {
      v14 = 0x747265434143;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = 0x6275504B4953;
    v6 = 0xD000000000000012;
    v7 = 0x8000000101347F60;
    if (a1 != 7)
    {
      v6 = 0x6574744174726373;
      v7 = 0xEF6E6F6974617473;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x754E6C6169726553;
    v9 = 0xEC0000007265626DLL;
    if (a1 != 4)
    {
      v8 = 0x79746964696C6156;
      v9 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE600000000000000;
        if (v10 != 0x6275504B4953)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (a2 == 7)
      {
        v15 = 0x8000000101347F60;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0x6574744174726373;
      v15 = 0xEF6E6F6974617473;
      goto LABEL_45;
    }

    if (a2 != 4)
    {
      v15 = 0xE800000000000000;
      if (v10 != 0x79746964696C6156)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = 0x754E6C6169726553;
    v17 = 1919246957;
LABEL_38:
    v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v10 != v16)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v15 = 0xED00006564756C63;
      if (v10 != 0x6E496F545344494FLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = 0x6843657571696E55;
    v17 = 1145663593;
    goto LABEL_38;
  }

  v15 = 0xE600000000000000;
  if (a2)
  {
    if (v10 != 0x444970696843)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v18 = 1;
LABEL_50:

  return v18 & 1;
}

uint64_t sub_10076E7B8(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076E8F0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076EA6C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076EB90(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076ED0C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076EE68(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076F00C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10076F154(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_10076F2C0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F3CC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F500(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F64C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F790(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076F8C8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FA38(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FB34(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FC6C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10076FD74(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10076FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v30 = 0x2000000000;
  v31 = __DataStorage.init(length:)();
  sub_1007765FC(&v30, 0);
  v4 = v30;
  v5 = HIDWORD(v30);
  if (__OFSUB__(HIDWORD(v30), v30))
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v31;
  if (HIDWORD(v30) - v30 != 32)
  {
    goto LABEL_8;
  }

  swift_allocObject();
  v7 = __DataStorage.init(length:)();
  v30 = 0x2000000000;
  v31 = v7;
  sub_1007765FC(&v30, 0);
  if (__OFSUB__(HIDWORD(v30), v30))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v30) - v30 == 32)
  {
    v29 = v31 | 0x4000000000000000;
    v8 = v30 | (HIDWORD(v30) << 32);
    v9 = v6 | 0x4000000000000000;
    v10 = v4 | (v5 << 32);
    v11 = type metadata accessor for TimeBasedKey(0);
    v12 = *(v11 + 20);
    v13 = type metadata accessor for DateInterval();
    (*(*(v13 - 8) + 16))(a2, a1 + v12, v13);
    v14 = (a1 + *(v11 + 24));
    v15 = v14[4];
    v16 = v14[5];
    v17 = type metadata accessor for CryptoKeys(0);
    v18 = (a2 + v17[5]);
    *v18 = v15;
    v18[1] = v16;
    v19 = v14[2];
    v20 = v14[3];
    v21 = (a2 + v17[6]);
    *v21 = v19;
    v21[1] = v20;
    sub_10002E98C(v15, v16);
    sub_100017D5C(v19, v20);
    v22 = PublicKey.advertisement.getter(v19, v20);
    v24 = v23;
    result = sub_100038BC4(a1, type metadata accessor for TimeBasedKey);
    v26 = (a2 + v17[7]);
    *v26 = v22;
    v26[1] = v24;
    v27 = (a2 + v17[8]);
    *v27 = v10;
    v27[1] = v9;
    v28 = (a2 + v17[9]);
    *v28 = v8;
    v28[1] = v29;
    return result;
  }

LABEL_8:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CryptoKeys.privateKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys(0) + 20);
  v2 = *v1;
  sub_10002E98C(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for CryptoKeys(uint64_t a1)
{
  result = qword_1016A90B0;
  if (!qword_1016A90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptoKeys.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys(0) + 24);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.advertisement.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys(0) + 28);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.sharedSecretKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys(0) + 32);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.intermediateKey.getter()
{
  v1 = v0 + *(type metadata accessor for CryptoKeys(0) + 36);
  v2 = *v1;
  sub_100017D5C(*v1, *(v1 + 8));
  return v2;
}

uint64_t CryptoKeys.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DateInterval();
  sub_1000211C0(&qword_1016A9030, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for CryptoKeys(0);
  v4 = (v1 + v3[5]);
  v5 = v4[1];
  if (v5 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *v4;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v6, v5);
    Data.hash(into:)();
    sub_100006654(v6, v5);
  }

  v7 = (v1 + v3[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(*v7, v9);
  Data.hash(into:)();
  sub_100016590(v8, v9);
  v10 = (v2 + v3[7]);
  v11 = *v10;
  v12 = v10[1];
  sub_100017D5C(*v10, v12);
  Data.hash(into:)();
  sub_100016590(v11, v12);
  v13 = (v2 + v3[8]);
  v14 = *v13;
  v15 = v13[1];
  sub_100017D5C(*v13, v15);
  Data.hash(into:)();
  sub_100016590(v14, v15);
  v16 = (v2 + v3[9]);
  v17 = *v16;
  v18 = v16[1];
  sub_100017D5C(*v16, v18);
  Data.hash(into:)();

  return sub_100016590(v17, v18);
}

Swift::Int CryptoKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  CryptoKeys.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1007704F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 19779;
    v7 = 20035;
    if (a1 != 10)
    {
      v7 = 78;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 17747;
    v9 = 18771;
    if (a1 != 7)
    {
      v9 = 73;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 68;
    v2 = 65;
    v3 = 19283;
    if (a1 != 4)
    {
      v3 = 79;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 21072;
    if (a1 != 1)
    {
      v4 = 21840;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1007705E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  CryptoKeys.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100770620(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1007704F4(*a1);
  v5 = v4;
  if (v3 == sub_1007704F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007706A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1007704F4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10077070C(uint64_t a1)
{
  sub_1007704F4(*v1);
  String.hash(into:)();
}

Swift::Int sub_100770760(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1007704F4(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1007707C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100776F70(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007707F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007704F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100770838@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100776F70(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100770860(uint64_t a1)
{
  v2 = sub_100776CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10077089C(uint64_t a1)
{
  v2 = sub_100776CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CryptoKeys.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A9038, &qword_1013BAC20);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  __chkstk_darwin(v8);
  v11 = v54 - v10;
  sub_1000035D0(a1, a1[3]);
  sub_100776CE4();
  v57 = v11;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000035D0(a1, a1[3]);
  v12 = dispatch thunk of Encoder.userInfo.getter();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for CodingUserInfoKey();
  v14 = sub_1000076D4(v13, static CodingUserInfoKey.messagingCoder);
  if (*(v12 + 16) && (v15 = sub_100771F94(v14), (v16 & 1) != 0))
  {
    sub_100013894(*(v12 + 56) + 32 * v15, &v59);

    if (swift_dynamicCast())
    {
      v17 = v58;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_9:
  sub_1000BC4D4(&qword_1016A0DA0, &qword_1013A4CC8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10138BBE0;
  DateInterval.start.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v20 = v19;
  (*(v5 + 8))(v7, v4);
  *(v18 + 32) = v20;
  DateInterval.duration.getter();
  *(v18 + 40) = v21;
  v59 = v18;
  v58 = 0;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  sub_10047AC58(&qword_1016A0DB0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
  v22 = v54[1];
  v23 = v55;
  v24 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v22)
  {
  }

  else
  {

    v25 = type metadata accessor for CryptoKeys(0);
    v26 = (v2 + v25[5]);
    v27 = *v26;
    v28 = v26[1];
    if (v28 >> 60 == 15)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v26;
    }

    v30 = 0xF000000000000000;
    if (v28 >> 60 != 15)
    {
      v30 = v28;
    }

    v59 = v29;
    v60 = v30;
    v58 = 1;
    sub_10002E98C(v27, v28);
    sub_1000E3190();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v59, v60);
    v31 = (v2 + v25[6]);
    v32 = v31[1];
    v59 = *v31;
    v60 = v32;
    v58 = 2;
    sub_100017D5C(v59, v32);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
    v33 = (v2 + v25[7]);
    v34 = v33[1];
    v59 = *v33;
    v60 = v34;
    v58 = 3;
    sub_100017D5C(v59, v34);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
    v35 = v2 + v25[9];
    v36 = *(v35 + 8);
    v59 = *v35;
    v60 = v36;
    v58 = 8;
    sub_100017D5C(v59, v36);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
    if (v17)
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v38 = __DataStorage.init(length:)();
      v59 = 0x2000000000;
      v60 = v38;
      sub_1007765FC(&v59, 0);
      v60 |= 0x4000000000000000uLL;
      v58 = 4;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v59, v60);
      swift_allocObject();
      v51 = __DataStorage.init(length:)();
      v59 = 0x2000000000;
      v60 = v51;
      sub_1007765FC(&v59, 0);
      v60 |= 0x4000000000000000uLL;
      v58 = 5;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v59, v60);
      swift_allocObject();
      v52 = __DataStorage.init(length:)();
      v59 = 0x2000000000;
      v60 = v52;
      sub_1007765FC(&v59, 0);
      v60 |= 0x4000000000000000uLL;
      v58 = 6;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100016590(v59, v60);
      swift_allocObject();
      v53 = __DataStorage.init(length:)();
      v59 = 0x1000000000;
      v60 = v53;
      sub_1007765FC(&v59, 0);
      v60 |= 0x4000000000000000uLL;
      v58 = 7;
    }

    else
    {
      v39 = (v2 + v25[8]);
      v40 = v39[1];
      v59 = *v39;
      v60 = v40;
      v58 = 4;
      sub_100017D5C(v59, v40);
    }

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
    v59 = sub_100499CE0(*v35, *(v35 + 8));
    v60 = v41;
    v58 = 9;
    v24 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
    v59 = sub_100497AF4(*v35, *(v35 + 8));
    v60 = v42;
    v58 = 10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
    v44 = *v33;
    v43 = v33[1];
    v45 = sub_100499CE0(*v35, *(v35 + 8));
    v47 = v46;
    v48 = sub_100499208(v45, v46, v44, v43);
    v50 = v49;
    sub_100016590(v45, v47);
    v59 = v48;
    v60 = v50;
    v58 = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v59, v60);
  }

  return (*(v56 + 8))(v24, v23);
}

void *CryptoKeys.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A9048, &qword_1013BAC28);
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for CryptoKeys(0);
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v55 = a1;
  sub_1000035D0(a1, v13);
  sub_100776CE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v55);
  }

  v50 = v6;
  v51 = v12;
  v14 = v54;
  v52 = v10;
  sub_1000BC4D4(&qword_1016A0DA8, &qword_1013A4CD0);
  v57 = 0;
  sub_10047AC58(&qword_1016A0DC0, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v56;
  v57 = 1;
  sub_1000E307C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v15;
  v16 = v56;
  v57 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = v16;
  v17 = v56;
  v57 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v17;
  v18 = v56;
  v57 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = *(&v18 + 1);
  v46 = v18;
  v19 = v56;
  v57 = 8;
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v19;
  v21 = v49;
  if (!*(v49 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v42 = v56;
  result = Date.init(timeIntervalSinceReferenceDate:)();
  v22 = v51;
  if (*(v21 + 16) < 2uLL)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v43 = *(&v19 + 1);

  DateInterval.init(start:duration:)();
  v23 = *(&v48 + 1);
  v24 = v22;
  if (*(&v48 + 1) >> 60 == 15)
  {
    v25 = 0;
    v26 = 0xF000000000000000;
    v27 = v52;
    v30 = v47;
    v28 = v30 >> 64;
    v29 = v30;
  }

  else
  {
    v31 = v48;
    sub_10002E98C(v48, *(&v48 + 1));
    v25 = sub_10049BD68(v31, v23);
    v32 = v47;
    v28 = v32 >> 64;
    v29 = v32;
    v27 = v52;
  }

  v33 = &v24[v27[5]];
  *v33 = v25;
  v33[1] = v26;
  sub_100017D5C(v29, v28);
  v34 = sub_10049C0AC(v29, v28);
  v35 = &v24[v52[6]];
  *v35 = v34;
  v35[1] = v36;
  v38 = v45;
  v37 = v46;
  sub_100017D5C(v46, v45);
  sub_100018000(v37, v38, &v56);
  *&v24[v52[7]] = v56;
  v39 = v43;
  sub_100017D5C(v44, v43);
  sub_1004A4714(v44, v39, &v56);
  *&v24[v52[8]] = v56;
  sub_1004A4714(v42, *(&v42 + 1), &v56);
  (*(v14 + 8))(v9, v7);
  sub_100006654(v48, *(&v48 + 1));
  sub_100016590(v47, *(&v47 + 1));
  sub_100016590(v46, v45);
  sub_100016590(v44, v43);
  v40 = v51;
  *&v51[v52[9]] = v56;
  sub_100038B5C(v40, v53, type metadata accessor for CryptoKeys);
  sub_100007BAC(v55);
  return sub_100038BC4(v40, type metadata accessor for CryptoKeys);
}

uint64_t sub_100771A28@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_100771C94(uint64_t a1, Swift::UInt a2)
{
  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();

  return sub_100772EB4(v3, a2, v4);
}

unint64_t sub_100771D14(uint64_t a1)
{
  v2 = a1;
  v3 = sub_10076F790(*(v1 + 40), a1);

  return sub_100772F30(v2, v3);
}

unint64_t sub_100771D84(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100773274(a1 & 1, v2);
}

unint64_t sub_100771E5C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1007737BC(a1, v4);
}

unint64_t sub_100771EA0(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_10076EE68(v4, v1);
  v2 = Hasher._finalize()();

  return sub_100773884(v1, v2);
}

unint64_t sub_100771F0C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_10125403C(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100773BDC(v1, v2);
}

unint64_t sub_100771F94(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100774184(a1, v2);
}

unint64_t sub_100771FF8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016A9110, CKRecordID_ptr);
}

unint64_t sub_100772048(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013BAE48[v1]);
  v2 = Hasher._finalize()();

  return sub_10077431C(v1, v2);
}

unint64_t sub_1007720C0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_101698D00, SPHandle_ptr);
}

unint64_t sub_100772110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100774468(v5, a2, a3, v6);
}

unint64_t sub_1007721A4(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();
  return sub_100775680(v1, v2);
}

unint64_t sub_1007721E4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016C21A0, NSObject_ptr);
}

unint64_t sub_100772234(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  v2 = Hasher._finalize()();
  return sub_100775680(v1, v2);
}

unint64_t sub_1007722A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 44;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  String.hash(into:)();

  v11 = Hasher._finalize()();
  return sub_100774540(a1, a2, a3, a4, v11);
}

unint64_t sub_1007723C0(uint64_t a1)
{
  type metadata accessor for MACAddress();
  sub_1000211C0(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100021208(a1, v2, &type metadata accessor for MACAddress, &unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
}

unint64_t sub_100772494(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100774764(a1, v2);
}

unint64_t sub_100772524(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100D6178C(v4);
  v2 = Hasher._finalize()();
  return sub_100775938(a1, v2, type metadata accessor for OwnedBeaconRecord, type metadata accessor for OwnedBeaconRecord, sub_100D65130, type metadata accessor for OwnedBeaconRecord);
}

unint64_t sub_1007725DC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016A9118, IDSService_ptr);
}

unint64_t sub_10077262C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1007768D0(v4, a1);
  v2 = Hasher._finalize()();

  return sub_100774868(a1, v2);
}

unint64_t sub_100772698(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return sub_100775A94(a1, v2);
}

uint64_t sub_100772700(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t sub_100772794(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100017D5C(a1, a2);
  Data.hash(into:)();
  sub_100016590(a1, a2);
  v4 = Hasher._finalize()();

  return sub_100774904(a1, a2, v4);
}

unint64_t sub_100772824(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100774E0C(a1, v2);
}

unint64_t sub_100772890(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconIdentifier(0);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconKeyServiceBuilder.FileKey(0);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100774E9C(a1, v2);
}

unint64_t sub_100772A10(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10110787C(v4);
  v2 = Hasher._finalize()();

  return sub_100775100(a1, v2);
}

unint64_t sub_100772A7C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_100775680(v1, v2);
}

unint64_t sub_100772AE4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for BeaconKeyManager.FileKey(0);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1007756F0(a1, v2);
}

unint64_t sub_100772BF4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1010DC2EC(v4);
  v2 = Hasher._finalize()();
  return sub_100775938(a1, v2, type metadata accessor for StableIdentifier, type metadata accessor for StableIdentifier, sub_1010DF484, type metadata accessor for StableIdentifier);
}

unint64_t sub_100772CAC(uint64_t a1)
{
  sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  sub_100776FBC(&unk_1016C3020, &protocol conformance descriptor for Identifier<A>);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100775B00(a1, v2);
}

unint64_t sub_100772D3C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &qword_1016A9120, CBUUID_ptr);
}

unint64_t sub_100772D8C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10077439C(a1, v4, &unk_1016BBFC0, CKRecordZoneID_ptr);
}

unint64_t sub_100772DDC(char *a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013BAFA8[*a1]);
  type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  type metadata accessor for UUID();
  sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100775CB4(a1, v2);
}

unint64_t sub_100772EB4(int a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100772F30(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = 0xE700000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v25 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v25 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v12 = 0xE700000000000000;
            v11 = 0x6465726F6E6769;
          }

          else
          {
            v11 = 0x7265766F63736964;
            v12 = 0xEA00000000006465;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v11 = 0x6465676174736E75;
          }

          else
          {
            v11 = 0x7761726468746977;
          }

          v12 = 0xE800000000000000;
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x796669746F6ELL;
        }

        else
        {
          v8 = 0x657461647075;
        }

        if (*(*(v25 + 48) + v4))
        {
          v9 = 0x646567617473;
        }

        else
        {
          v9 = 0x6E776F6E6B6E75;
        }

        if (*(*(v25 + 48) + v4))
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v8;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xE600000000000000;
        }
      }

      v13 = 0x7265766F63736964;
      if (v6 == 6)
      {
        v13 = 0x6465726F6E6769;
      }

      v14 = 0xEA00000000006465;
      if (v6 == 6)
      {
        v14 = 0xE700000000000000;
      }

      v15 = 0x7761726468746977;
      if (v6 == 4)
      {
        v15 = 0x6465676174736E75;
      }

      if (v6 <= 5)
      {
        v13 = v15;
        v14 = 0xE800000000000000;
      }

      if (v6 == 2)
      {
        v16 = 0x796669746F6ELL;
      }

      else
      {
        v16 = 0x657461647075;
      }

      v17 = 0xE600000000000000;
      if (v6)
      {
        v18 = 0x646567617473;
      }

      else
      {
        v18 = 0x6E776F6E6B6E75;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v16 = v18;
        v17 = v5;
      }

      v19 = v6 <= 3 ? v16 : v13;
      v20 = v6 <= 3 ? v17 : v14;
      if (v11 == v19 && v12 == v20)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        v5 = 0xE700000000000000;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007731BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100773274(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1)
    {
      v7 = 0x800000010134A000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000014 : 0x6E776F6E6B6E75;
      v9 = *(*(v2 + 48) + v4) ? 0x800000010134A000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1007733BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100017D5C(v17, v16);
          sub_100771A28(v45, v9, v8, &v44);
          sub_100016590(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100017D5C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100017D5C(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100771A28(v34, a1, a2, v45);
        sub_100016590(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100017D5C(v17, v16);
      sub_100771A28(v45, v9, v8, &v44);
      sub_100016590(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1007737BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100476DEC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100476E48(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100773884(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x65776F5068676968;
        }

        else
        {
          v9 = 0x4F7265776F506E6FLL;
        }

        if (v6 == 2)
        {
          v10 = 0xE900000000000072;
        }

        else
        {
          v10 = 0xED0000694669576ELL;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0x6F506D756964656DLL;
        }

        else
        {
          v11 = 0x7265776F50776F6CLL;
        }

        if (v6)
        {
          v12 = 0xEB00000000726577;
        }

        else
        {
          v12 = 0xE800000000000000;
        }

        if (v6 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (v6 <= 1)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0x4F7265776F506E6FLL;
        }

        else
        {
          v7 = 0x7265747461426E6FLL;
        }

        if (v6 == 4)
        {
          v8 = 0xED00006C6C65436ELL;
        }

        else
        {
          v8 = 0xEF694669576E4F79;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x7265747461426E6FLL;
        v8 = 0xEF6C6C65436E4F79;
      }

      else if (v6 == 7)
      {
        v7 = 0x6F696E61706D6F63;
        v8 = 0xEF79627261654E6ELL;
      }

      else
      {
        v7 = 0x6857796669746F6ELL;
        v8 = 0xEF646E756F466E65;
      }

      v13 = 0x6F696E61706D6F63;
      if (v5 != 7)
      {
        v13 = 0x6857796669746F6ELL;
      }

      v14 = 0xEF79627261654E6ELL;
      if (v5 != 7)
      {
        v14 = 0xEF646E756F466E65;
      }

      if (v5 == 6)
      {
        v13 = 0x7265747461426E6FLL;
        v14 = 0xEF6C6C65436E4F79;
      }

      if (v5 == 4)
      {
        v15 = 0x4F7265776F506E6FLL;
      }

      else
      {
        v15 = 0x7265747461426E6FLL;
      }

      v16 = 0xEF694669576E4F79;
      if (v5 == 4)
      {
        v16 = 0xED00006C6C65436ELL;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x65776F5068676968;
      }

      else
      {
        v17 = 0x4F7265776F506E6FLL;
      }

      if (v5 == 2)
      {
        v18 = 0xE900000000000072;
      }

      else
      {
        v18 = 0xED0000694669576ELL;
      }

      if (v5)
      {
        v19 = 0x6F506D756964656DLL;
      }

      else
      {
        v19 = 0x7265776F50776F6CLL;
      }

      if (v5)
      {
        v20 = 0xEB00000000726577;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_100773BDC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7972616D697270;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE900000000000079;
          v8 = 0x7261646E6F636573;
          break;
        case 2:
          v8 = 0xD000000000000019;
          v7 = 0x8000000101348160;
          break;
        case 3:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000101348180;
          break;
        case 4:
          v8 = 0x646E7542646C6977;
          v7 = 0xEA0000000000656CLL;
          break;
        case 5:
          v8 = 0x417972616D697270;
          v7 = 0xEE00737365726464;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x80000001013481C0;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x80000001013475D0;
          break;
        case 8:
          v8 = 0xD000000000000011;
          v7 = 0x80000001013475F0;
          break;
        case 9:
          v8 = 0x697463656E6E6F63;
          v7 = 0xED000079654B6E6FLL;
          break;
        case 0xA:
          v8 = 0x656E774F7261656ELL;
          v7 = 0xEC00000079654B72;
          break;
        case 0xB:
          v8 = 0x656B6F546E696F6ALL;
          v7 = 0xE90000000000006ELL;
          break;
        case 0xC:
          v8 = 0xD000000000000015;
          v7 = 0x80000001013481F0;
          break;
        case 0xD:
          v8 = 0xD000000000000010;
          v7 = 0x8000000101348210;
          break;
        case 0xE:
          v8 = 0x7461636F4C626577;
          v7 = 0xEE0079654B6E6F69;
          break;
        case 0xF:
          v8 = 0x646174654D626577;
          v7 = 0xEB00000000617461;
          break;
        case 0x10:
          v8 = 0x6D65744974736F6CLL;
          v7 = 0xED00007365746144;
          break;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x8000000101348240;
          break;
        case 0x12:
          v8 = 0xD000000000000016;
          v7 = 0x8000000101348260;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x7972616D697270;
      switch(a1)
      {
        case 1:
          v9 = 0xE900000000000079;
          if (v8 == 0x7261646E6F636573)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        case 2:
          v9 = 0x8000000101348160;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v9 = 0x8000000101348180;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          v9 = 0xEA0000000000656CLL;
          if (v8 != 0x646E7542646C6977)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v13 = 0x417972616D697270;
          v14 = 0x737365726464;
          goto LABEL_47;
        case 6:
          v9 = 0x80000001013481C0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 7:
          v9 = 0x80000001013475D0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v9 = 0x80000001013475F0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v11 = 0x697463656E6E6F63;
          v12 = 0x79654B6E6FLL;
          goto LABEL_34;
        case 10:
          v10 = 0x656E774F7261656ELL;
          v9 = 0xEC00000079654B72;
          goto LABEL_56;
        case 11:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x656B6F546E696F6ALL)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v9 = 0x80000001013481F0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 13:
          v9 = 0x8000000101348210;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v13 = 0x7461636F4C626577;
          v14 = 0x79654B6E6F69;
LABEL_47:
          v9 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v13)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v9 = 0xEB00000000617461;
          if (v8 != 0x646174654D626577)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v11 = 0x6D65744974736F6CLL;
          v12 = 0x7365746144;
LABEL_34:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v11)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v9 = 0x8000000101348240;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v9 = 0x8000000101348260;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v8 != v10)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_58:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100774184(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10077431C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_1013BAE48[*(*(v2 + 48) + result)] == qword_1013BAE48[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10077439C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100008BB8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100774468(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a1;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == v10)
      {
        v14 = *(v13 + 1) == a2 && *(v13 + 2) == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100774540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v20 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v5;
    v19 = ~v6;
    while (1)
    {
      v10 = (*(v8 + 48) + 32 * v7);
      v22 = *v10;
      v23 = v10[1];
      swift_bridgeObjectRetain_n();
      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 44;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 44;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      if (v22 == a1 && v23 == a2)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v7 = (v7 + 1) & v19;
        if ((*(v20 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v7;
    }
  }

  return v7;
}

unint64_t sub_100774764(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100774868(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (sub_100776224(*(*(v2 + 48) + 8 * v4), a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100774904(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v45 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v42 = v14;
    v41 = HIDWORD(a1) - a1;
    v43 = v10;
    v44 = BYTE6(a2);
    v39 = v4;
    v37 = v7;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_65;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_66;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v44;
          if (v13)
          {
            v26 = v41;
            if (v42)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
      }

LABEL_39:
      if (v22 == v26)
      {
        if (v22 < 1)
        {
          return v6;
        }

        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v29 = *(v17 + 16);
            v38 = *(v17 + 24);
            sub_100017D5C(v17, v16);
            sub_100017D5C(v17, v16);
            sub_100017D5C(a1, v8);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v31 = __DataStorage._offset.getter();
              if (__OFSUB__(v29, v31))
              {
                goto LABEL_69;
              }

              v30 += v29 - v31;
            }

            if (__OFSUB__(v38, v29))
            {
              goto LABEL_68;
            }

            __DataStorage._length.getter();
            v32 = v30;
            v8 = a2;
            sub_100771A28(v32, a1, a2, v47);
            sub_100016590(v17, v16);
            sub_100016590(v17, v16);
            sub_100016590(a1, a2);
            if (v47[0])
            {
              return v6;
            }

LABEL_60:
            v4 = v39;
            v10 = v43;
            goto LABEL_13;
          }

          memset(v47, 0, 14);
          sub_100017D5C(v17, v16);
          sub_100017D5C(v17, v16);
          sub_100017D5C(a1, v8);
          sub_100771A28(v47, a1, v8, &v46);
          sub_100016590(v17, v16);
          sub_100016590(v17, v16);
          sub_100016590(a1, v8);
          if (v46)
          {
            return v6;
          }
        }

        else
        {
          if (v18)
          {
            if (v17 >> 32 < v17)
            {
              goto LABEL_67;
            }

            sub_100017D5C(v17, v16);
            sub_100017D5C(v17, v16);
            sub_100017D5C(a1, v8);
            v33 = __DataStorage._bytes.getter();
            if (v33)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v17, v34))
              {
                goto LABEL_70;
              }

              v33 += v17 - v34;
            }

            __DataStorage._length.getter();
            v35 = v33;
            v8 = a2;
            sub_100771A28(v35, a1, a2, v47);
            sub_100016590(v17, v16);
            sub_100016590(v17, v16);
            sub_100016590(a1, a2);
            v7 = v37;
            if (v47[0])
            {
              return v6;
            }

            goto LABEL_60;
          }

          v47[0] = v17;
          LOWORD(v47[1]) = v16;
          BYTE2(v47[1]) = BYTE2(v16);
          BYTE3(v47[1]) = BYTE3(v16);
          BYTE4(v47[1]) = BYTE4(v16);
          BYTE5(v47[1]) = BYTE5(v16);
          sub_100017D5C(v17, v16);
          sub_100017D5C(v17, v16);
          sub_100017D5C(a1, v8);
          sub_100771A28(v47, a1, v8, &v46);
          sub_100016590(v17, v16);
          sub_100016590(v17, v16);
          sub_100016590(a1, v8);
          if (v46)
          {
            return v6;
          }

          v10 = v43;
        }
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v45) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_100774E0C(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(v2 + 48) + 8 * result);
    if (v7 > a1)
    {
      break;
    }

    v8 = a1 - v7;
    if ((a1 - v7) < 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    if (v8)
    {
      result = (result + 1) & v6;
      if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
      {
        continue;
      }
    }

    return result;
  }

  if ((v7 - a1) >= 0)
  {
    v8 = a1 - v7;
    goto LABEL_7;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100774E9C(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for BeaconKeyServiceBuilder.FileKey(0);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_100038B5C(*(v2 + 48) + v11 * v9, v7, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      if (static UUID.== infix(_:_:)() & 1) != 0 && (type metadata accessor for BeaconIdentifier(0), (static UUID.== infix(_:_:)()))
      {
        v12 = *(v23 + 20);
        v13 = v7[v12];
        v14 = *(a1 + v12);
        if (v13)
        {
          v15 = 0x7261646E6F636553;
        }

        else
        {
          v15 = 0x7972616D697250;
        }

        if (v13)
        {
          v16 = 0xE900000000000079;
        }

        else
        {
          v16 = 0xE700000000000000;
        }

        if (v14)
        {
          v17 = 0x7261646E6F636553;
        }

        else
        {
          v17 = 0x7972616D697250;
        }

        if (v14)
        {
          v18 = 0xE900000000000079;
        }

        else
        {
          v18 = 0xE700000000000000;
        }

        if (v15 == v17 && v16 == v18)
        {

          sub_100038BC4(v7, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
          return v9;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100038BC4(v7, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
        if (v20)
        {
          return v9;
        }
      }

      else
      {
        sub_100038BC4(v7, type metadata accessor for BeaconKeyServiceBuilder.FileKey);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100775100(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v54 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v54);
  v12 = &v43 - v11;
  v48 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  __chkstk_darwin(v48);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + 64;
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  if ((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v53 = v5;
    v19 = ~v17;
    v20 = (v6 + 48);
    v21 = *(v13 + 72);
    v43 = (v6 + 32);
    v46 = (v6 + 8);
    v47 = v10;
    v22 = v21;
    v23 = v48;
    v51 = v20;
    v52 = ~v17;
    v49 = v21;
    v50 = v2 + 64;
    do
    {
      sub_100038B5C(*(v2 + 48) + v22 * v18, v15, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      v24 = v2;
      v25 = v23[6];
      v26 = *(v54 + 48);
      sub_100015794(&v15[v25], v12);
      sub_100015794(a1 + v25, &v12[v26]);
      v27 = *v20;
      v28 = v53;
      if ((*v20)(v12, 1, v53) == 1)
      {
        v29 = v27(&v12[v26], 1, v28);
        v2 = v24;
        if (v29 != 1)
        {
          goto LABEL_4;
        }

        sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
        v16 = v50;
        v20 = v51;
        v19 = v52;
        v22 = v49;
      }

      else
      {
        v30 = v47;
        sub_100015794(v12, v47);
        if (v27(&v12[v26], 1, v28) == 1)
        {
          (*v46)(v30, v28);
          v2 = v24;
          v23 = v48;
LABEL_4:
          sub_10000B3A8(v12, &qword_1016AF880, &unk_10138CE20);
          v16 = v50;
          v20 = v51;
          v19 = v52;
          v22 = v49;
          goto LABEL_5;
        }

        v31 = &v12[v26];
        v32 = v44;
        (*v43)(v44, v31, v28);
        sub_1000211C0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v46;
        (*v46)(v32, v28);
        v33(v30, v28);
        sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
        v2 = v24;
        v23 = v48;
        v22 = v49;
        v16 = v50;
        v20 = v51;
        v19 = v52;
        if ((v45 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (static Date.== infix(_:_:)())
      {
        if (v34 = v23[8], v35 = *&v15[v34], v36 = *&v15[v34 + 8], v37 = (a1 + v34), v35 == *v37) && v36 == v37[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          if (*&v15[v23[9]] == *(a1 + v23[9]))
          {
            if (v38 = v23[10], v39 = *&v15[v38], v40 = *&v15[v38 + 8], v41 = (a1 + v38), v39 == *v41) && v40 == v41[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              if (v15[v23[11]] == *(a1 + v23[11]) && v15[v23[12]] == *(a1 + v23[12]))
              {
                sub_100038BC4(v15, type metadata accessor for ManagedCBPeripheralBeaconInfo);
                return v18;
              }
            }
          }
        }
      }

LABEL_5:
      sub_100038BC4(v15, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v18 = (v18 + 1) & v19;
    }

    while (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  return v18;
}

unint64_t sub_100775680(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1007756F0(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for BeaconKeyManager.FileKey(0);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_100038B5C(*(v2 + 48) + v11 * v9, v7, type metadata accessor for BeaconKeyManager.FileKey);
      if (static UUID.== infix(_:_:)())
      {
        v12 = *(v23 + 20);
        v13 = v7[v12];
        v14 = *(a1 + v12);
        if (v13)
        {
          v15 = 0x7261646E6F636553;
        }

        else
        {
          v15 = 0x7972616D697250;
        }

        if (v13)
        {
          v16 = 0xE900000000000079;
        }

        else
        {
          v16 = 0xE700000000000000;
        }

        if (v14)
        {
          v17 = 0x7261646E6F636553;
        }

        else
        {
          v17 = 0x7972616D697250;
        }

        if (v14)
        {
          v18 = 0xE900000000000079;
        }

        else
        {
          v18 = 0xE700000000000000;
        }

        if (v15 == v17 && v16 == v18)
        {

          sub_100038BC4(v7, type metadata accessor for BeaconKeyManager.FileKey);
          return v9;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100038BC4(v7, type metadata accessor for BeaconKeyManager.FileKey);
        if (v20)
        {
          return v9;
        }
      }

      else
      {
        sub_100038BC4(v7, type metadata accessor for BeaconKeyManager.FileKey);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100775938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v22 = a6;
  v11 = a3(0) - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = -1 << *(v6 + 32);
  v16 = a2 & ~v15;
  if ((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v12 + 72);
    do
    {
      sub_100038B5C(*(v6 + 48) + v18 * v16, v14, a4);
      v19 = a5(v14, a1);
      sub_100038BC4(v14, v22);
      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v6 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_100775A94(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100775B00(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100776FBC(&qword_1016A9128, &protocol conformance descriptor for Identifier<A>);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100775CB4(char *a1, uint64_t a2)
{
  v16 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = dword_1013BAFA8[*a1];
    v12 = *(v5 + 72);
    do
    {
      sub_100038B5C(*(v2 + 48) + v12 * v9, v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
      if (dword_1013BAFA8[*v7] == v11)
      {
        v13 = static UUID.== infix(_:_:)();
        sub_100038BC4(v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
        if (v13)
        {
          return v9;
        }
      }

      else
      {
        sub_100038BC4(v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_100775E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1000211C0(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100776224(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_100776394(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_100016590(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_10138C660;
      sub_100016590(0, 0xC000000000000000);
      sub_1007765FC(&__b, v2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_100016590(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *result = v7;
    result[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  sub_100016590(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = __DataStorage._length.getter();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), v2, v19);
  *result = __b;
  result[1] = v9 | 0x8000000000000000;
}

void sub_1007765FC(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

void sub_1007766A4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_1000211C0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      Hasher._combine(_:)(v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1007768D0(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  for (i = (v5 + 63) >> 6; v7; v3 ^= Hasher._finalize()())
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a2 + 48) + (v10 | (v9 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v11);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      Hasher._combine(_:)(v3);
      return;
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL _s12searchpartyd10CryptoKeysV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CryptoKeys(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      v11 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
      sub_100006654(v10, v9);
      sub_100006654(v10, v9);
      sub_100006654(v7, v6);
      sub_100006654(v7, v6);
      if (!v11)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_6;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  sub_100006654(v7, v6);
LABEL_8:
  v12 = v4[6];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *v15;
  v17 = v15[1];
  sub_100017D5C(v13, v14);
  sub_100017D5C(v16, v17);
  v18 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14, v16, v17);
  sub_100016590(v16, v17);
  sub_100016590(v13, v14);
  if (v18)
  {
    v19 = v4[7];
    v20 = *(a1 + v19);
    v21 = *(a1 + v19 + 8);
    v22 = (a2 + v19);
    v23 = *v22;
    v24 = v22[1];
    sub_100017D5C(v20, v21);
    sub_100017D5C(v23, v24);
    v25 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21, v23, v24);
    sub_100016590(v23, v24);
    sub_100016590(v20, v21);
    if (v25)
    {
      v26 = v4[8];
      v27 = *(a1 + v26);
      v28 = *(a1 + v26 + 8);
      v29 = (a2 + v26);
      v30 = *v29;
      v31 = v29[1];
      sub_100017D5C(v27, v28);
      sub_100017D5C(v30, v31);
      v32 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v27, v28, v30, v31);
      sub_100016590(v30, v31);
      sub_100016590(v27, v28);
      if (v32)
      {
        v33 = v4[9];
        v34 = a1 + v33;
        v35 = *(a1 + v33);
        v36 = *(v34 + 8);
        v37 = (a2 + v33);
        v38 = *v37;
        v39 = v37[1];
        sub_100017D5C(v35, v36);
        sub_100017D5C(v38, v39);
        v40 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v36, v38, v39);
        sub_100016590(v38, v39);
        sub_100016590(v35, v36);
        return v40;
      }
    }
  }

  return 0;
}

unint64_t sub_100776CE4()
{
  result = qword_1016A9040;
  if (!qword_1016A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9040);
  }

  return result;
}

void sub_100776DA8(uint64_t a1)
{
  type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    sub_10047B1B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100776E6C()
{
  result = qword_1016A90F8;
  if (!qword_1016A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A90F8);
  }

  return result;
}

unint64_t sub_100776EC4()
{
  result = qword_1016A9100;
  if (!qword_1016A9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9100);
  }

  return result;
}

unint64_t sub_100776F1C()
{
  result = qword_1016A9108;
  if (!qword_1016A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9108);
  }

  return result;
}

unint64_t sub_100776F70(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609DD0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100776FBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169A060, &unk_10139DB00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100777020(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100777040, 0, 0);
}

uint64_t sub_100777040()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for ObservedAdvertisement(0);
  sub_100780324(&qword_1016A9238, type metadata accessor for ObservedAdvertisement, &unk_101397E00);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  v0[4] = v1;
  v0[5] = v2;

  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100777210;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0x5F28747265736E69, 0xEA0000000000293ALL, sub_100780388, v5, &type metadata for () + 1);
}

uint64_t sub_100777210()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100780A30;
  }

  else
  {

    v2 = sub_1007809CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10077732C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100777398(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_1007773B8, 0, 0);
}

uint64_t sub_1007773B8()
{
  v1 = v0[3];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_10077FC44(&qword_1016A9230, &qword_1016A9238, &unk_101397E00, &protocol conformance descriptor for <A> [A]);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[5] = v2;
  v0[6] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[4];

  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1007775A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0x5F286574656C6564, 0xEA0000000000293ALL, sub_10078037C, v7, &type metadata for () + 1);
}

uint64_t sub_1007775A8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100780A2C;
  }

  else
  {

    v2 = sub_1007809C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1007776C4(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1007809BC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632520;
  v11 = _Block_copy(aBlock);

  [a2 deleteObservedAdvertisementsWithAdvertisementsData:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_100777894(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100006654(v4, v8);
}

uint64_t sub_100777940(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100777960, 0, 0);
}

uint64_t sub_100777960()
{
  v1 = v0[3];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_10077FC44(&qword_1016A9230, &qword_1016A9238, &unk_101397E00, &protocol conformance descriptor for <A> [A]);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[5] = v2;
  v0[6] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[4];

  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_100777B50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000011, 0x800000010135F120, sub_10078036C, v7, &type metadata for () + 1);
}

uint64_t sub_100777B50()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100777CD0;
  }

  else
  {

    v2 = sub_100777C6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100777C6C()
{
  sub_100016590(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100777CD0()
{
  sub_100016590(v0[5], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_100777D40(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100780378;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016324D0;
  v11 = _Block_copy(aBlock);

  [a2 markObservedAdvertisementsPublishedWithAdvertisementsData:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_100777F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100777F88(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a4;
  *(v4 + 96) = a3;
  *(v4 + 32) = a1;
  return _swift_task_switch(sub_100777FB0, 0, 0);
}

uint64_t sub_100777FB0()
{
  v1 = *(v0 + 32);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  *(v0 + 16) = v1;
  sub_1000BC4D4(&qword_1016A9220, &qword_1013BB1A0);
  sub_100780190();
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 96);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  *(v9 + 48) = v6;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  v11 = sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  *v10 = v0;
  v10[1] = sub_100778190;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 24, 0, 0, 0xD000000000000040, 0x800000010135F0A0, sub_100780244, v9, v11);
}

uint64_t sub_100778190()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100778314;
  }

  else
  {

    v2 = sub_1007782AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007782AC()
{
  sub_100016590(v0[7], v0[8]);
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100778314()
{
  sub_100016590(v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

void sub_100778384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - v12;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_1007809B8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632430;
  v17 = _Block_copy(aBlock);

  [a2 reverseChronologicalObservationsWithIdentifierData:isa limit:a5 isPublished:a6 & 1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_10077856C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_10077858C, 0, 0);
}

uint64_t sub_10077858C()
{
  v1 = v0[4];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_10077FDCC();
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[6] = v2;
  v0[7] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[5];

  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  *v8 = v0;
  v8[1] = sub_100778758;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001DLL, 0x800000010135F080, sub_10078015C, v7, v9);
}

uint64_t sub_100778758()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1007788DC;
  }

  else
  {

    v2 = sub_100778874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100778874()
{
  sub_100016590(v0[6], v0[7]);
  v1 = v0[3];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1007788DC()
{
  sub_100016590(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

void sub_10077894C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100780168;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016323E0;
  v11 = _Block_copy(aBlock);

  [a2 observationsWithAdvertisementsData:isa completion:v11];
  _Block_release(v11);
}

void sub_100778B1C(uint64_t a1, void *a2, double a3)
{
  v6 = sub_1000BC4D4(&qword_1016A9218, &unk_1013BB180);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_10077FF44;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632390;
  v12 = _Block_copy(aBlock);

  [a2 nearbyBeaconsWithSeconds:v12 completion:a3];
  _Block_release(v12);
}

uint64_t sub_100778CDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_willThrow();
    v15 = a3;
LABEL_6:
    v35 = v15;
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A9218, &unk_1013BB180);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a2 >> 60 == 15)
  {
    sub_10022A480();
    v15 = swift_allocError();
    *v16 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v32 = v12;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  sub_100017D5C(a1, a2);
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10077FF6C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v28 = a1;
  v29 = a2;
  v30 = a4;

  v34 = v35;
  v18 = *(v35 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v32 + 48);
    v33 = (v32 + 32);
    v21 = v34 + 40;
    v22 = _swiftEmptyArrayStorage;
    v31 = v18;
    while (v19 < *(v34 + 16))
    {

      UUID.init(uuidString:)();

      if ((*v20)(v10, 1, v11) == 1)
      {
        result = sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v23 = *v33;
        (*v33)(v14, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100A5BFE0(0, v22[2] + 1, 1, v22);
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_100A5BFE0((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        result = (v23)(v22 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, v14, v11);
        v18 = v31;
      }

      ++v19;
      v21 += 16;
      if (v18 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_19:

    v26 = sub_10000954C(v22);

    v35 = v26;

    sub_1000BC4D4(&qword_1016A9218, &unk_1013BB180);
    CheckedContinuation.resume(returning:)();
    sub_100006654(v28, v29);
  }

  return result;
}

uint64_t sub_1007790F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100779114, 0, 0);
}

uint64_t sub_100779114()
{
  v1 = v0[4];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_10077FDCC();
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[6] = v2;
  v0[7] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[5];

  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = sub_1000BC4D4(&qword_1016A9200, &qword_10140D630);
  *v8 = v0;
  v8[1] = sub_1007792E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001ALL, 0x800000010135F040, sub_10077FE50, v7, v9);
}

uint64_t sub_1007792E0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1007809D4;
  }

  else
  {

    v2 = sub_1007809AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1007793FC(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9208, &unk_1013BB170);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10077FE5C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632340;
  v11 = _Block_copy(aBlock);

  [a2 locationsWithAdvertisementsData:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_1007795CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A9200, &qword_10140D630);
      sub_10077FE84();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A9208, &unk_1013BB170);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A9208, &unk_1013BB170);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10077977C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10077979C, 0, 0);
}

uint64_t sub_10077979C()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier(0);
  sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[4] = v1;
  v0[5] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[3];

  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = sub_1000BC4D4(&qword_1016A91D0, &qword_1013BB140);
  *v7 = v0;
  v7[1] = sub_100779984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 9, 0, 0, 0xD000000000000013, 0x800000010135F020, sub_10077FD14, v6, v8);
}

uint64_t sub_100779984()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100779B10;
  }

  else
  {

    v2 = sub_100779AA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100779AA0()
{
  sub_100016590(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 72) | (*(v0 + 73) << 8);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100779B10()
{
  sub_100016590(v0[4], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_100779B80(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A91D8, &qword_1013BB148);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10077FD20;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016322F0;
  v11 = _Block_copy(aBlock);

  [a2 latestStatusWithIdentifierData:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_100779D50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A91E0, &qword_1013BB150);
      sub_10077FD48();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A91D8, &qword_1013BB148);
      CheckedContinuation.resume(returning:)();
      return sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A91D8, &qword_1013BB148);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100779F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100779F38, 0, 0);
}

uint64_t sub_100779F38()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier(0);
  sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  v0[5] = v1;
  v0[6] = v2;

  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  *v6 = v0;
  v6[1] = sub_1007775A8;
  v8 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000013, 0x800000010135F020, sub_10077FCE0, v5, v7);
}

void sub_10077A11C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10077FCEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016322A0;
  v11 = _Block_copy(aBlock);

  [a2 latestObservedAdvertisementWithIdentifierData:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_10077A2EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_1016A91C8, &qword_1013BB130);
  v9 = __chkstk_darwin(v8);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v27 - v18;
  if (a3)
  {
    swift_willThrow();
    v20 = a3;
LABEL_6:
    v28 = v20;
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
    return CheckedContinuation.resume(throwing:)();
  }

  if (a2 >> 60 == 15)
  {
    sub_10022A480();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v27[1] = a4;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  sub_100017D5C(a1, a2);
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_10077FC44(&qword_1016A91B0, &qword_1016A91B8, &unk_101397E28, &protocol conformance descriptor for <A> [A]);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v23 = v28;
  if (*(v28 + 16))
  {
    v24 = type metadata accessor for ObservedAdvertisement(0);
    v25 = *(v24 - 8);
    sub_10078057C(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v19, type metadata accessor for ObservedAdvertisement);

    (*(v25 + 56))(v19, 0, 1, v24);
  }

  else
  {

    v26 = type metadata accessor for ObservedAdvertisement(0);
    (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  }

  sub_1000D2A70(v19, v13, &unk_10169BB50, &unk_101395760);
  swift_storeEnumTagMultiPayload();
  sub_1000D2A70(v13, v11, &qword_1016A91C8, &qword_1013BB130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v11;
    sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000D2AD8(v11, v17, &unk_10169BB50, &unk_101395760);
    sub_1000BC4D4(&qword_1016A91C0, &qword_1013BB128);
    CheckedContinuation.resume(returning:)();
  }

  sub_100006654(a1, a2);
  sub_10000B3A8(v13, &qword_1016A91C8, &qword_1013BB130);
  return sub_10000B3A8(v19, &unk_10169BB50, &unk_101395760);
}

uint64_t sub_10077A798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 96) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_10077A7C0, 0, 0);
}

uint64_t sub_10077A7C0()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for BeaconIdentifier(0);
  sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;

  v4 = *(v0 + 96);
  if (v4 == 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v4];
  }

  *(v0 + 64) = v5;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v8[2] = v6;
  v8[3] = v1;
  v8[4] = v3;
  v8[5] = v5;
  v8[6] = v7;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  *v9 = v0;
  v9[1] = sub_10077A9EC;
  v11 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000029, 0x800000010135EE50, sub_10077F694, v8, v10);
}

uint64_t sub_10077A9EC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10077AB7C;
  }

  else
  {

    v2 = sub_10077AB08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077AB08()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  sub_100016590(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10077AB7C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_100016590(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_10077AC00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a5;
  v22 = a1;
  v7 = sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000D2A70(a6, v13, &qword_1016980D0, &unk_10138F3B0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  isa = 0;
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v13, v15);
  }

  (*(v8 + 16))(v10, v22, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v10, v7);
  aBlock[4] = sub_10077F6A4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101631F80;
  v20 = _Block_copy(aBlock);

  [v23 latestDeviceEventWithIdentifierData:v14.super.isa source:v24 attachedDevice:isa completion:v20];
  _Block_release(v20);
}

uint64_t sub_10077AED0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a4;
  v6 = type metadata accessor for DeviceEvent(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_1000BC4D4(&qword_1016A9148, &qword_1013BB0D0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v20 = (&v28 - v19);
  __chkstk_darwin(v18);
  v23 = &v28 - v21;
  if (a3)
  {
    swift_willThrow();
    v32 = a3;
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v28 = v12;
    v29 = v7;
    v25 = v30;
    if (a2 >> 60 == 15)
    {
      (*(v29 + 56))(&v28 - v21, 1, 1, v6);
      swift_storeEnumTagMultiPayload();
      sub_1000D2A70(v23, v20, &qword_1016A9148, &qword_1013BB0D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *v20;
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        sub_1000D2AD8(v20, v28, &unk_1016AA500, &unk_1013B3600);
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(returning:)();
      }

      return sub_10000B3A8(v23, &qword_1016A9148, &qword_1013BB0D0);
    }

    else
    {
      v26 = v22;
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(v25, a2);
      PropertyListDecoder.init()();
      sub_100780324(&qword_1016A9150, type metadata accessor for DeviceEvent, &unk_1013F0B20);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_10078057C(v9, v26, type metadata accessor for DeviceEvent);
      (*(v29 + 56))(v26, 0, 1, v6);
      swift_storeEnumTagMultiPayload();
      sub_1000D2A70(v26, v16, &qword_1016A9148, &qword_1013BB0D0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v32 = *v16;
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        sub_1000D2AD8(v16, v28, &unk_1016AA500, &unk_1013B3600);
        sub_1000BC4D4(&qword_1016A9140, &unk_1013BB0C0);
        CheckedContinuation.resume(returning:)();
      }

      sub_100006654(v25, a2);
      sub_10000B3A8(v26, &qword_1016A9148, &qword_1013BB0D0);
      return sub_1007805E4(v9, type metadata accessor for DeviceEvent);
    }
  }
}

uint64_t sub_10077B3DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10077B3FC, 0, 0);
}

uint64_t sub_10077B3FC()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for DeviceEvent(0);
  sub_100780324(&qword_1016A9130, type metadata accessor for DeviceEvent, &unk_1013F0AF8);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  v0[4] = v1;
  v0[5] = v2;

  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10077B5CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000013, 0x800000010135EE30, sub_10077F630, v5, &type metadata for () + 1);
}

uint64_t sub_10077B5CC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100779B10;
  }

  else
  {

    v2 = sub_10077B6E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077B6E8()
{
  sub_100016590(v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

void sub_10077B74C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1007809B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632250;
  v12 = _Block_copy(aBlock);

  [a2 latestAnonymousObservationsWithLimit:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_10077B904(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
      sub_10077FC44(&qword_1016A91B0, &qword_1016A91B8, &unk_101397E28, &protocol conformance descriptor for <A> [A]);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A91A8, &qword_1013BB110);
  return CheckedContinuation.resume(throwing:)();
}

void sub_10077BAEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_10077BB64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - v13;
  (*(v12 + 16))(aBlock - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v17);
}

uint64_t sub_10077BD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10077BD98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = sub_1000BC4D4(&qword_1016A9198, &qword_1013BB100);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - v13;
  (*(v12 + 16))(aBlock - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077BAEC;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  [a2 *a6];
  _Block_release(v17);
}

uint64_t sub_10077BF40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&qword_1016A9198, &qword_1013BB100);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&qword_1016A9198, &qword_1013BB100);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10077BFD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10077BFF4, 0, 0);
}

uint64_t sub_10077BFF4()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for KeySyncMetadata(0);
  sub_100780324(&qword_1016A9190, type metadata accessor for KeySyncMetadata, &unk_1013CC680);
  v1 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v3 = v2;
  v0[4] = v1;
  v0[5] = v2;

  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v4;
  v5[3] = v1;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100777210;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000017, 0x800000010135EF40, sub_10077F9CC, v5, &type metadata for () + 1);
}

void sub_10077C1C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v19 = a2;
  v20 = a8;
  v11 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v14, v11);
  aBlock[4] = a6;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = a7;
  v18 = _Block_copy(aBlock);

  [v19 *v20];
  _Block_release(v18);
}

uint64_t sub_10077C388(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10077C3FC(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1007809B4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_1016320C0;
  v11 = _Block_copy(aBlock);

  [a2 metadataWithBeaconIdentifier:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_10077C5C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_willThrow();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      sub_100017D5C(a1, a2);
      PropertyListDecoder.init()();
      sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
      sub_10077F910();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
      CheckedContinuation.resume(returning:)();
      sub_100006654(a1, a2);
    }

    sub_10022A480();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10077C770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_10077C794, 0, 0);
}

uint64_t sub_10077C794()
{
  v1 = v0[5];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v1;
  sub_1000BC4D4(&qword_1016A9158, &qword_1013BB0E0);
  sub_10077F774();
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v0[7] = v2;
  v0[8] = v3;
  v4 = v2;
  v5 = v3;
  v6 = v0[6];
  v7 = v0[4];

  v8 = swift_task_alloc();
  v0[9] = v8;
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v4;
  v8[5] = v5;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  *v9 = v0;
  v9[1] = sub_10077C970;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000021, 0x800000010135EEF0, sub_10077F84C, v8, v10);
}

uint64_t sub_10077C970()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1007809D8;
  }

  else
  {

    v2 = sub_1007809B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10077CA8C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9178, &qword_1013BB0F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_10077F858;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100777894;
  aBlock[3] = &unk_101632070;
  v12 = _Block_copy(aBlock);

  [a2 metadataWithBeaconIdentifier:isa typesData:v9 completion:v12];
  _Block_release(v12);
}

void sub_10077CC78(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10077F75C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_101632020;
  v11 = _Block_copy(aBlock);

  [a2 deleteMetadataWithBeaconIdentifier:isa completion:v11];
  _Block_release(v11);
}

void sub_10077CE3C(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_100780A34;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  aBlock[3] = &unk_101631FD0;
  v10 = _Block_copy(aBlock);

  [a2 removeOrphanedKeySyncMetaDataWithCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_10077CFEC(uint64_t a1)
{
  if (a1)
  {
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10077D078(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A92E8, &qword_1013BB290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000035D0(a1, a1[3]);
  sub_100780528();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for DeviceEvent(0);
  sub_100780324(&qword_1016A9130, type metadata accessor for DeviceEvent, &unk_1013F0AF8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AttachedAccessoryEventsTransport(0);
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10077D314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v4 = __chkstk_darwin(v3 - 8);
  v40 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v41 = v37 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v37 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = v37 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v37 - v15;
  __chkstk_darwin(v14);
  v45 = (v37 - v17);
  v18 = sub_1000BC4D4(&qword_1016A92F8, &qword_1013BB298);
  v42 = *(v18 - 8);
  v43 = v18;
  __chkstk_darwin(v18);
  v20 = v37 - v19;
  v21 = type metadata accessor for AttachedAccessoryEventsTransport(0);
  __chkstk_darwin(v21);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v47 = a1;
  sub_1000035D0(a1, v24);
  sub_100780528();
  v44 = v20;
  v25 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100007BAC(v47);
  }

  v46 = v13;
  v38 = v10;
  v26 = v42;
  v27 = v23;
  v28 = type metadata accessor for DeviceEvent(0);
  v53 = 0;
  v29 = sub_100780324(&qword_1016A9150, type metadata accessor for DeviceEvent, &unk_1013F0B20);
  v30 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v45, v27, &unk_1016AA500, &unk_1013B3600);
  v52 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v45 = v21;
  sub_1000D2AD8(v16, v27 + *(v21 + 20), &unk_1016AA500, &unk_1013B3600);
  v51 = 2;
  v31 = v46;
  v37[0] = v29;
  v37[1] = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v45;
  sub_1000D2AD8(v31, v27 + v45[6], &unk_1016AA500, &unk_1013B3600);
  v50 = 3;
  v33 = v38;
  v46 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v33, v27 + v32[7], &unk_1016AA500, &unk_1013B3600);
  v49 = 4;
  v34 = v41;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v34, v27 + v32[8], &unk_1016AA500, &unk_1013B3600);
  v48 = 5;
  v35 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v26 + 8))(v44, v30);
  sub_1000D2AD8(v35, v27 + v32[9], &unk_1016AA500, &unk_1013B3600);
  sub_10078057C(v27, v39, type metadata accessor for AttachedAccessoryEventsTransport);
  sub_100007BAC(v47);
  return sub_1007805E4(v27, type metadata accessor for AttachedAccessoryEventsTransport);
}

uint64_t sub_10077D9C4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100777020(a1, v4);
}

uint64_t sub_10077DA60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100777398(a1, v4);
}

uint64_t sub_10077DAFC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100777940(a1, v4);
}

uint64_t sub_10077DBBC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10077DCB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000020, 0x800000010135F0F0, sub_100780254, v2, &type metadata for () + 1);
}

uint64_t sub_10077DCB0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100780A40;
  }

  else
  {

    v2 = j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077DDCC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100780A44;

  return sub_100777F88(a1, a2, a3, v8);
}

uint64_t sub_10077DE80(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000D2118;

  return sub_10077856C(a1, v4);
}

uint64_t sub_10077DF1C(double a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *v1;
  return _swift_task_switch(sub_10077DF44, 0, 0);
}

uint64_t sub_10077DF44()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  *v4 = v0;
  v4[1] = sub_10077E054;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000017, 0x800000010135F060, sub_10077FF38, v3, v5);
}

uint64_t sub_10077E054()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100274F20;
  }

  else
  {

    v2 = sub_100780A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077E170(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1007790F4(a1, v4);
}

uint64_t sub_10077E20C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10077E2A8;

  return sub_10077977C(a1, v4);
}

uint64_t sub_10077E2A8(__int16 a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 0x1FF);
  }
}

uint64_t sub_10077E3E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100779F14(a1, a2, v6);
}

uint64_t sub_10077E494(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_10077E4B8, 0, 0);
}

uint64_t sub_10077E4B8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  *v4 = v0;
  v4[1] = sub_10077E5C0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000023, 0x800000010135EFF0, sub_10077FC3C, v3, v5);
}

uint64_t sub_10077E5C0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1007809C0;
  }

  else
  {

    v2 = sub_100780A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077E700()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10077E7F4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000001ELL, 0x800000010135EFD0, sub_10077FB2C, v2, &type metadata for () + 1);
}

uint64_t sub_10077E7F4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10077E910;
  }

  else
  {

    v2 = j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077E910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10077E998()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10077EA90;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000029, 0x800000010135EFA0, sub_10077FA64, v2, &type metadata for Int64);
}

uint64_t sub_10077EA90()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1007809C4;
  }

  else
  {

    v2 = sub_100780A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077EBD0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10077ECC8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001BLL, 0x800000010135EF60, sub_10077FA18, v2, &type metadata for Int64);
}

uint64_t sub_10077ECC8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10077EE00;
  }

  else
  {

    v2 = sub_10077EDE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077EE00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10077EE64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10077BFD4(a1, v4);
}

uint64_t sub_10077EF00(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_10077EF24, 0, 0);
}

uint64_t sub_10077EF24()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  *v2 = v0;
  v2[1] = sub_10077E5C0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001BLL, 0x800000010135EF20, sub_10077F9C4, v1, v3);
}

uint64_t sub_10077F030(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100780A44;

  return sub_10077C770(a1, a2, v6);
}

uint64_t sub_10077F0DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10077F100, 0, 0);
}

uint64_t sub_10077F100()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_10077F1F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000021, 0x800000010135EEC0, sub_10077F754, v1, &type metadata for () + 1);
}

uint64_t sub_10077F1F0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10077EE00;
  }

  else
  {

    v2 = Database.await(state:);
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10077F330()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10077DCB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000001FLL, 0x800000010135EEA0, sub_10077F6CC, v2, &type metadata for () + 1);
}

uint64_t sub_10077F424(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100014744;

  return sub_10077A798(a1, a2, a3, a4, v10);
}

uint64_t sub_10077F508()
{
  sub_10022A480();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10077F594(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10077B3DC(a1, v4);
}

unint64_t sub_10077F774()
{
  result = qword_1016A9160;
  if (!qword_1016A9160)
  {
    sub_1000BC580(&qword_1016A9158, &qword_1013BB0E0);
    sub_10077F7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9160);
  }

  return result;
}

unint64_t sub_10077F7F8()
{
  result = qword_1016A9168;
  if (!qword_1016A9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9168);
  }

  return result;
}

unint64_t sub_10077F910()
{
  result = qword_1016A9180;
  if (!qword_1016A9180)
  {
    sub_1000BC580(&qword_1016A9170, &qword_1013BB0E8);
    sub_100780324(&qword_1016A9188, type metadata accessor for KeySyncMetadata, &unk_1013CC6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9180);
  }

  return result;
}

uint64_t sub_10077FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_1000BC4D4(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_10077FC44(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A91A0, &qword_1013BB108);
    sub_100780324(a2, type metadata accessor for ObservedAdvertisement, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10077FD48()
{
  result = qword_1016A91E8;
  if (!qword_1016A91E8)
  {
    sub_1000BC580(&qword_1016A91E0, &qword_1013BB150);
    sub_10028E850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A91E8);
  }

  return result;
}

unint64_t sub_10077FDCC()
{
  result = qword_1016A91F8;
  if (!qword_1016A91F8)
  {
    sub_1000BC580(&qword_1016A91F0, &unk_1013BB160);
    sub_10028E94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A91F8);
  }

  return result;
}

unint64_t sub_10077FE84()
{
  result = qword_1016A9210;
  if (!qword_1016A9210)
  {
    sub_1000BC580(&qword_1016A9200, &qword_10140D630);
    sub_100780324(&qword_10169C738, type metadata accessor for ObservedAdvertisement.Location, &unk_101397C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9210);
  }

  return result;
}

unint64_t sub_10077FF6C()
{
  result = qword_1016A8A58;
  if (!qword_1016A8A58)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A8A58);
  }

  return result;
}

unint64_t sub_10077FFE8()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000017;
  if (v2 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10078008C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10078075C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1007800B4(uint64_t a1)
{
  v2 = sub_100780528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007800F0(uint64_t a1)
{
  v2 = sub_100780528();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100780190()
{
  result = qword_1016A9228;
  if (!qword_1016A9228)
  {
    sub_1000BC580(&qword_1016A9220, &qword_1013BB1A0);
    sub_100780324(&qword_1016A9138, type metadata accessor for BeaconIdentifier, &unk_1013BEF04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9228);
  }

  return result;
}

uint64_t sub_100780324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AttachedAccessoryEventsTransport(uint64_t a1)
{
  result = qword_1016A9298;
  if (!qword_1016A9298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100780448(uint64_t a1)
{
  sub_1007804C0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1007804C0(uint64_t a1)
{
  if (!qword_1016A92A8)
  {
    type metadata accessor for DeviceEvent(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016A92A8);
    }
  }
}

unint64_t sub_100780528()
{
  result = qword_1016A92F0;
  if (!qword_1016A92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A92F0);
  }

  return result;
}

uint64_t sub_10078057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007805E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100780658()
{
  result = qword_1016A9300;
  if (!qword_1016A9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9300);
  }

  return result;
}

unint64_t sub_1007806B0()
{
  result = qword_1016A9308;
  if (!qword_1016A9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9308);
  }

  return result;
}

unint64_t sub_100780708()
{
  result = qword_1016A9310;
  if (!qword_1016A9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9310);
  }

  return result;
}

uint64_t sub_10078075C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010135F140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010135F160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010135F180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010135F1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010135F1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010135F1E0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100780A4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 address];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  MACAddress.init(data:type:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &qword_1016A40D0, &unk_10138BE70);
    v18 = type metadata accessor for Date();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v20 = sub_10002F740();
    __chkstk_darwin(v20);
    *(&v23 - 2) = v16;
    sub_1012BC3D0(sub_10079934C, v20, v6);

    (*(v14 + 8))(v16, v13);
    v21 = v25;
    if ((*(v24 + 48))(v6, 1, v25) == 1)
    {
      sub_10000B3A8(v6, &unk_1016C7C90, &qword_1013BB4B0);
      v22 = type metadata accessor for Date();
      return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    }

    else
    {
      sub_1007A91C8(v6, v9, type metadata accessor for WildModeAssociationRecord);
      sub_1000D2A70(&v9[*(v21 + 44)], a2, &unk_101696900, &unk_10138B1E0);
      return sub_1007A810C(v9, type metadata accessor for WildModeAssociationRecord);
    }
  }
}

Swift::Int sub_100780E54(uint64_t *a1)
{
  v2 = *(type metadata accessor for WildModeTrackingLocation(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32124(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1007979C8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100780EFC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for Calendar.SearchDirection();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v35 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Calendar.MatchingPolicy();
  v31 = *(v46 - 8);
  v4 = v31;
  __chkstk_darwin(v46);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A9620, &qword_1013BB5A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1000BC4D4(&qword_1016A9628, &unk_1013BB5A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for DateComponents();
  v38 = *(v13 - 8);
  v39 = v13;
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v36 = *(v16 - 8);
  v37 = v16;
  __chkstk_darwin(v16);
  v32 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Calendar();
  v19 = *(v18 - 8);
  v33 = v18;
  v34 = v19;
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  Date.init()();
  (*(v19 + 56))(v12, 1, 1, v18);
  v22 = type metadata accessor for TimeZone();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  (*(v4 + 104))(v6, enum case for Calendar.MatchingPolicy.nextTime(_:), v46);
  v23 = v35;
  v25 = v40;
  v24 = v41;
  (*(v35 + 104))(v40, enum case for Calendar.RepeatedTimePolicy.first(_:), v41);
  v27 = v42;
  v26 = v43;
  v28 = v44;
  (*(v43 + 104))(v42, enum case for Calendar.SearchDirection.forward(_:), v44);
  v29 = v32;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  (*(v26 + 8))(v27, v28);
  (*(v23 + 8))(v25, v24);
  (*(v31 + 8))(v6, v46);
  (*(v38 + 8))(v15, v39);
  (*(v36 + 8))(v29, v37);
  return (*(v34 + 8))(v21, v33);
}

uint64_t sub_1007814F4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B2D0);
  sub_1000076D4(v0, qword_10177B2D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100781578(unsigned __int8 a1)
{
  switch(a1)
  {
    case 6u:
      _StringGuts.grow(_:)(16);
      sub_1007A7D10();
      v3 = CustomStringConvertible.typeDescription.getter();

      v15 = v3;
      v1 = 0x7070416E6F6E2E20;
      v2 = 0xEE0068736F50656CLL;
      break;
    case 5u:
      sub_1007A7D10();
      v15 = CustomStringConvertible.typeDescription.getter();
      v1 = 0x50656C7070612E20;
      v2 = 0xEB0000000068736FLL;
      break;
    case 4u:
      sub_1007A7D10();
      v15 = CustomStringConvertible.typeDescription.getter();
      v1 = 0x776F6E6B6E752E20;
      v2 = 0xE90000000000006ELL;
      break;
    default:
      _StringGuts.grow(_:)(27);
      sub_1007A7D10();
      v5 = CustomStringConvertible.typeDescription.getter();

      v15 = v5;
      v6._object = 0x800000010135F620;
      v6._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v6);
      v7 = 0xE500000000000000;
      v8 = 0x656C707061;
      v9 = 0xE700000000000000;
      v10 = 0x6579656B776168;
      if (a1 != 2)
      {
        v10 = 1701602664;
        v9 = 0xE400000000000000;
      }

      if (a1)
      {
        v8 = 0x6E6169727564;
        v7 = 0xE600000000000000;
      }

      if (a1 <= 1u)
      {
        v11 = v8;
      }

      else
      {
        v11 = v10;
      }

      if (a1 <= 1u)
      {
        v12 = v7;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
      String.append(_:)(*&v11);

      v1 = 41;
      v2 = 0xE100000000000000;
      break;
  }

  String.append(_:)(*&v1);
  return v15;
}

uint64_t sub_1007817BC(void *a1)
{
  type metadata accessor for TrackingAvoidanceError(0);
  sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
  _BridgedStoredNSError.code.getter();
  if (v9 <= 6)
  {
    if ((v9 - 1) >= 4)
    {
      if (v9 == 5)
      {
        return 1;
      }

      if (v9 != 6)
      {
LABEL_16:
        if (qword_101694910 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_1000076D4(v3, qword_10177B2D0);
        v4 = a1;
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134217984;
          _BridgedStoredNSError.code.getter();
          *(v7 + 4) = v8;

          _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected TrackingAvoidanceError %ld!", v7, 0xCu);
        }

        else
        {
        }
      }
    }

    return 0;
  }

  if (v9 > 0xD)
  {
    goto LABEL_12;
  }

  if (((1 << v9) & 0x3600) != 0)
  {
    return 0;
  }

  if (v9 != 8)
  {
    if (v9 == 11)
    {
      return 3;
    }

LABEL_12:
    if (v9 == 7)
    {
      return 2;
    }

    goto LABEL_16;
  }

  return 4;
}

uint64_t SPUnauthorizedTrackingObservationType.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x746C75616665642ELL;
  }

  if (a1 == 1)
  {
    return 0x4D6E4F706565622ELL;
  }

  type metadata accessor for TrackingObservationType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100781A68(uint64_t a1)
{
  if (!*v1)
  {
    return 0x746C75616665642ELL;
  }

  if (*v1 == 1)
  {
    return 0x4D6E4F706565622ELL;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t SPUnauthorizedTrackingObservationAction.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6465676174732ELL;
    }

    if (a1 == 1)
    {
      return 0x796669746F6E2ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6574616470752ELL;
      case 3:
        return 0x65676174736E752ELL;
      case 4:
        return 0x617264687469772ELL;
    }
  }

  return 0x6E776F6E6B6E752ELL;
}

uint64_t sub_100781BB0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6465676174732ELL;
    }

    if (v1 == 1)
    {
      return 0x796669746F6E2ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6574616470752ELL;
      case 3:
        return 0x65676174736E752ELL;
      case 4:
        return 0x617264687469772ELL;
    }
  }

  return 0x6E776F6E6B6E752ELL;
}

uint64_t sub_100781C80()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A9318);
  v1 = sub_1000076D4(v0, qword_1016A9318);
  if (qword_101694910 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B2D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100781D48(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100799304(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[2] = v13;
  v2[3] = v9;
  v10 = v14;
  v2[4] = &_swiftEmptySetSingleton;
  v2[5] = v10;
  return v2;
}

void sub_100781FD8(unint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v81 = a3;
  v82 = a2;
  v73 = type metadata accessor for UnwantedTrackingUserNotification(0);
  __chkstk_darwin(v73);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v78 = &v63 - v8;
  v77 = type metadata accessor for WildModeAssociationRecord(0);
  v85 = *(v77 - 8);
  __chkstk_darwin(v77);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v11 - 8);
  v80 = &v63 - v12;
  v13 = type metadata accessor for MACAddress();
  v84 = *(v13 - 8);
  __chkstk_darwin(v13);
  v86 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v83 = v13;
    v16 = qword_10177C398;
    v17 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138BBE0;
    v19 = *v3;
    v79 = v3;
    v88 = v19;
    sub_1000BC4D4(&qword_1016A94C0, &qword_1013BB4B8);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    v23 = sub_100008C00();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v23;
    v64 = v23;
    *(v18 + 64) = v23;
    *(v18 + 72) = 0xD00000000000003BLL;
    *(v18 + 80) = 0x800000010135F320;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "%{public}@: %{public}@", 22, 2, v18);

    v24 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C3F8;
    v3 = swift_allocObject();
    v67 = xmmword_101385D80;
    *(v3 + 16) = xmmword_101385D80;
    v26 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v3 + 56) = &type metadata for Int;
    *(v3 + 64) = &protocol witness table for Int;
    *(v3 + 32) = v26;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "withdrew %d unauthorized tracking observation(s)", v63);

    v65 = v17;
    v66 = v25;
    v28 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v83;
    if (!v28)
    {
      break;
    }

    v29 = 0;
    v15 = 0;
    v76 = a1 & 0xC000000000000001;
    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = (v84 + 48);
    v71 = (v84 + 32);
    v70 = (v85 + 48);
    v72 = (v84 + 8);
    *&v27 = 67109120;
    v68 = v27;
    v69 = a1;
    while (v76)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_35;
      }

LABEL_14:
      v32 = v28;
      v85 = v30;
      v33 = [v30 trackingIdentifier];
      v34 = [v33 address];

      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v80;
      MACAddress.init(data:type:)();
      if ((*v74)(v35, 1, v13) == 1)
      {
        sub_10000B3A8(v35, &qword_1016A40D0, &unk_10138BE70);
        v50 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v66, "received an advertisement of unexpected length or format", 56, 2, _swiftEmptyArrayStorage);
        type metadata accessor for TrackingAvoidanceError(0);
        v87 = 3;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        inited = swift_initStackObject();
        *(inited + 16) = v67;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v52;
        *(inited + 48) = 0xD00000000000001ALL;
        *(inited + 56) = 0x800000010135F300;
        sub_10090403C(inited);
        swift_setDeallocating();
        sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v53 = v88;
        v82(v88);

        return;
      }

      v36 = v86;
      (*v71)(v86, v35, v13);
      v37 = *(v79 + 16);
      v38 = v78;
      sub_10125FD10(v36, v78);
      if ((*v70)(v38, 1, v77) == 1)
      {
        sub_10000B3A8(v38, &unk_1016C7C90, &qword_1013BB4B0);
        v54 = static os_log_type_t.error.getter();
        v55 = swift_allocObject();
        *(v55 + 16) = v67;
        v56 = v86;
        v57 = MACAddress.description.getter();
        v58 = v64;
        *(v55 + 56) = &type metadata for String;
        *(v55 + 64) = v58;
        *(v55 + 32) = v57;
        *(v55 + 40) = v59;
        os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v66, "wild mode association record for %@ not found!", 46, 2, v55);

        type metadata accessor for TrackingAvoidanceError(0);
        v87 = 10;
        sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
        v60 = swift_initStackObject();
        *(v60 + 16) = v67;
        *(v60 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v60 + 72) = &type metadata for String;
        *(v60 + 40) = v61;
        *(v60 + 48) = 0xD000000000000021;
        *(v60 + 56) = 0x800000010135F3D0;
        sub_10090403C(v60);
        swift_setDeallocating();
        sub_10000B3A8(v60 + 32, &unk_101695C20, &unk_101386D90);
        sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
        _BridgedStoredNSError.init(_:userInfo:)();
        v62 = v88;
        v82(v88);

        (*v72)(v56, v83);
        return;
      }

      v84 = v31;
      sub_1007A91C8(v38, v10, type metadata accessor for WildModeAssociationRecord);
      v39 = *(v37 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for URL();
      v41 = sub_1000076D4(v40, qword_10177A8D0);
      v42 = __chkstk_darwin(v41);
      *(&v63 - 4) = v39;
      *(&v63 - 3) = v10;
      *(&v63 - 2) = v42;
      OS_dispatch_queue.sync<A>(execute:)();
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177BA08);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = v68;
        _os_log_impl(&_mh_execute_header, v44, v45, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v46, 8u);
      }

      ThrottledDarwinPoster.post(bypassRateLimit:)(0);
      v13 = v83;
      if (v15)
      {

        v15 = 0;
      }

      v47 = v85;
      v28 = v32;
      sub_100A8AF58();
      v48 = v73;
      sub_1007A7DFC(v10, &v6[*(v73 + 20)], type metadata accessor for WildModeAssociationRecord);
      *v6 = 2;
      v6[*(v48 + 24)] = 66;
      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10079936C(v6);
      v3 = v81;
      v82(0);

      sub_1007A810C(v6, type metadata accessor for UnwantedTrackingUserNotification);
      (*v72)(v86, v13);
      sub_1007A810C(v10, type metadata accessor for WildModeAssociationRecord);
      ++v29;
      v49 = v84 == v32;
      a1 = v69;
      if (v49)
      {
        return;
      }
    }

    if (v29 >= *(v75 + 16))
    {
      goto LABEL_36;
    }

    v30 = *(a1 + 8 * v29 + 32);
    v31 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      goto LABEL_14;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }
}

void sub_100782CBC(void *a1, void *a2, void (*a3)(uint64_t, void *))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v40 = a2, swift_errorRetain(), sub_1000BC4D4(&qword_101696960, &unk_10138B220), type metadata accessor for TrackingAvoidanceError(0), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v39;
    v11 = sub_1007817BC(v39);
    if (v12)
    {
      v13 = [a1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = objc_allocWithZone(SPTrackingAvoidanceResult);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      sub_100008BB8(0, &qword_1016A9618, SPTrackingAvoidancePolicy_ptr);
      v16 = Array._bridgeToObjectiveC()().super.isa;
      v17 = [v14 initWithIdentifier:isa type:5 policies:v16];

      (*(v7 + 8))(v9, v6);
      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10138C320;
      *(inited + 32) = v17;
      v19 = v17;
      v20 = sub_10112B0F0(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v21 = v10;
      a3(v20, v10);

      return;
    }

    v30 = v11;
    v31 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = objc_allocWithZone(SPTrackingAvoidanceResult);
    v33 = UUID._bridgeToObjectiveC()().super.isa;
    sub_100008BB8(0, &qword_1016A9618, SPTrackingAvoidancePolicy_ptr);
    v34 = Array._bridgeToObjectiveC()().super.isa;
    v35 = [v32 initWithIdentifier:v33 type:v30 policies:v34];

    (*(v7 + 8))(v9, v6);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10138C320;
    *(v36 + 32) = v35;
    v28 = v35;
    v37 = sub_10112B0F0(v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    a3(v37, 0);
  }

  else
  {
    v22 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = objc_allocWithZone(SPTrackingAvoidanceResult);
    v24 = UUID._bridgeToObjectiveC()().super.isa;
    sub_100008BB8(0, &qword_1016A9618, SPTrackingAvoidancePolicy_ptr);
    v25 = Array._bridgeToObjectiveC()().super.isa;
    v26 = [v23 initWithIdentifier:v24 type:0 policies:v25];

    (*(v7 + 8))(v9, v6);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_10138C320;
    *(v27 + 32) = v26;
    v28 = v26;
    v29 = sub_10112B0F0(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    a3(v29, a2);
  }
}

uint64_t sub_100783194(uint64_t a1, void (*a2)(void *, uint64_t))
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100B134FC(_swiftEmptyArrayStorage);
    v4 = v6;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  a2(v4, a1);
}

uint64_t sub_100783224@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v295 = a2;
  v4 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v4 - 8);
  v281 = v272 - v5;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v279 = v272 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v280 = v272 - v10;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v11 - 8);
  v282 = v272 - v12;
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v13 - 8);
  v291 = (v272 - v14);
  v15 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  __chkstk_darwin(v15 - 8);
  v284 = v272 - v16;
  v289 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *&v294 = *(v289 - 8);
  __chkstk_darwin(v289);
  v283 = v272 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v19 = __chkstk_darwin(v18 - 8);
  v288 = v272 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v278 = v272 - v22;
  __chkstk_darwin(v21);
  v286 = v272 - v23;
  v290 = type metadata accessor for MACAddress();
  v292 = *(v290 - 8);
  v24 = __chkstk_darwin(v290);
  *&v293 = v272 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v287 = v272 - v26;
  v27 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v27 - 8);
  v29 = v272 - v28;
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = v272 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = v272 - v35;
  *&v296 = a1;
  v37 = [a1 trackingIdentifier];
  v285 = v2;
  sub_100780A4C(v37, v29);

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v277 = v7;
    sub_10000B3A8(v29, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v31 + 32))(v36, v29, v30);
    static Date.trustedNow.getter(v34);
    v38 = static Date.> infix(_:_:)();
    v39 = *(v31 + 8);
    (v39)(v34, v30);
    if (v38)
    {
      v292 = v39;
      *&v293 = v36;
      v291 = " present in the request";
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v40 = swift_allocObject();
      v294 = xmmword_101385D80;
      *(v40 + 16) = xmmword_101385D80;
      v41 = [v296 trackingIdentifier];
      v42 = [v41 advertisementData];

      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = Data.hexString.getter();
      v48 = v47;
      sub_100016590(v43, v45);
      *(v40 + 56) = &type metadata for String;
      v49 = sub_100008C00();
      *(v40 + 64) = v49;
      *(v40 + 32) = v46;
      *(v40 + 40) = v48;
      v50 = String.init(format:_:)();
      v52 = v51;
      v53 = static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v54 = qword_10177C3F8;
      v55 = swift_allocObject();
      *(v55 + 16) = v294;
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = v49;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;

      os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "%@", 2, 2, v55);

      type metadata accessor for TrackingAvoidanceError(0);
      *v299 = 7;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v56 = swift_allocObject();
      *(v56 + 16) = v294;
      *(v56 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v56 + 72) = &type metadata for String;
      *(v56 + 40) = v57;
      *(v56 + 48) = v50;
      *(v56 + 56) = v52;
      sub_10090403C(v56);
      swift_setDeallocating();
      sub_10000B3A8(v56 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
      _BridgedStoredNSError.init(_:userInfo:)();
      (v292)(v293, v30);
      goto LABEL_125;
    }

    v277 = v7;
    (v39)(v36, v30);
  }

  v58 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  v59 = [v296 observedLocations];
  sub_100008BB8(0, &qword_1016B27B0, SPObservationLocation_ptr);
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_10;
    }

LABEL_123:

    v63 = static os_log_type_t.error.getter();
    if (qword_1016950B0 == -1)
    {
LABEL_124:
      os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, qword_10177C3F8, "There is no location", 20, 2, _swiftEmptyArrayStorage);
      type metadata accessor for TrackingAvoidanceError(0);
      *v299 = 4;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      v266 = swift_allocObject();
      *(v266 + 16) = xmmword_101385D80;
      *(v266 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v266 + 72) = &type metadata for String;
      *(v266 + 40) = v267;
      *(v266 + 48) = 0xD000000000000027;
      *(v266 + 56) = 0x800000010135F5B0;
      sub_10090403C(v266);
      swift_setDeallocating();
      sub_10000B3A8(v266 + 32, &unk_101695C20, &unk_101386D90);
      swift_deallocClassInstance();
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
      _BridgedStoredNSError.init(_:userInfo:)();
      goto LABEL_125;
    }

LABEL_132:
    v268 = v63;
    swift_once();
    v63 = v268;
    goto LABEL_124;
  }

  v61 = _CocoaArrayWrapper.endIndex.getter();
  if (!v61)
  {
    goto LABEL_123;
  }

LABEL_10:
  v62 = __OFSUB__(v61, 1);
  v63 = v61 - 1;
  if (v62)
  {
    __break(1u);
  }

  else if ((v60 & 0xC000000000000001) == 0)
  {
    if ((v63 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_130;
    }

    if (v63 < *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(v60 + 8 * v63 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_132;
  }

  v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v37 = v64;

  v65 = [v296 observedLocations];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v275 = v6;
  v58 = (v60 & 0xFFFFFFFFFFFFFF8);
  if (v60 >> 62)
  {
LABEL_130:
    v66 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }

  v66 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v67 = 0;
  while (1)
  {
    if (v66 == v67)
    {

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      v71 = sub_101074534(v297);

      if ((v71 & 1) == 0)
      {
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        v297 = 0x7365547265646E75;
        v298 = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        if (v299[0] != 1)
        {
          v92 = static os_log_type_t.error.getter();
          if (qword_1016950B0 != -1)
          {
            v270 = v92;
            swift_once();
            v92 = v270;
          }

          os_log(_:dso:log:_:_:)(v92, &_mh_execute_header, qword_10177C3F8, "UT notifications are disabled. Not triggering any UT.", 53, 2, _swiftEmptyArrayStorage);
          type metadata accessor for TrackingAvoidanceError(0);
          *v299 = 5;
          sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_101385D80;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = inited + 32;
          v90 = 0x800000010135FDB0;
          *(inited + 72) = &type metadata for String;
          v91 = 0xD000000000000029;
          goto LABEL_45;
        }
      }

      v72 = v295;
      v273 = v37;
      v73 = [v296 trackingIdentifier];
      v74 = [v73 data];

      v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      if (qword_101694918 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_1000076D4(v78, qword_1016A9318);
      sub_100017D5C(v75, v77);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();
      v81 = os_log_type_enabled(v79, v80);
      v276 = v75;
      v274 = v77;
      v272[1] = 0;
      if (!v81)
      {
        sub_100016590(v75, v77);
        goto LABEL_54;
      }

      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v297 = v83;
      *v82 = 134218242;
      v84 = v77 >> 62;
      if ((v77 >> 62) > 1)
      {
        if (v84 != 2)
        {
          v85 = 0;
          goto LABEL_53;
        }

        v94 = *(v75 + 16);
        v93 = *(v75 + 24);
        v62 = __OFSUB__(v93, v94);
        v85 = v93 - v94;
        if (!v62)
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else if (!v84)
      {
        v85 = BYTE6(v77);
LABEL_53:
        *(v82 + 4) = v85;
        sub_100016590(v75, v77);
        *(v82 + 12) = 2082;
        v95 = Data.hexString.getter();
        v97 = sub_1000136BC(v95, v96, &v297);

        *(v82 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v79, v80, "Decoding advertisement from advertisementData[%ld]: %{public}s", v82, 0x16u);
        sub_100007BAC(v83);

LABEL_54:

        v98 = v72;
        v99 = v296;
        v100 = [v296 trackingIdentifier];
        v101 = [v100 isPosh];

        v102 = [v99 trackingIdentifier];
        v103 = [v102 networkID];

        v104 = [v99 trackingIdentifier];
        v105 = [v104 status];

        if (v103 == 1)
        {
          v106 = 5;
        }

        else
        {
          v106 = 6;
        }

        if (v101)
        {
          v107 = v106;
        }

        else
        {
          v107 = (v105 >> 4) & 3;
        }

        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v297 = v111;
          *v110 = 136446210;
          v112 = sub_100781578(v107);
          v114 = sub_1000136BC(v112, v113, &v297);

          *(v110 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v108, v109, "UnauthorizedTrackingAdvertisementType: %{public}s", v110, 0xCu);
          sub_100007BAC(v111);
        }

        v115 = v276;
        v116 = v294;
        v117 = v293;
        switch(v107)
        {
          case 4u:
            v143 = v296;
            v144 = Logger.logObject.getter();
            v145 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              *v146 = 67109632;
              v147 = [v143 trackingIdentifier];
              v148 = [v147 isPosh];

              *(v146 + 4) = v148;
              *(v146 + 8) = 256;
              v149 = [v143 trackingIdentifier];
              LOBYTE(v148) = [v149 networkID];

              *(v146 + 10) = v148;
              *(v146 + 11) = 256;
              v150 = [v143 trackingIdentifier];
              LOBYTE(v148) = [v150 status];

              *(v146 + 13) = v148;
              _os_log_impl(&_mh_execute_header, v144, v145, "Unknown advertisement type. isPosh: %{BOOL}d networkID: %hhu status: %hhu", v146, 0xEu);
            }

            else
            {

              v144 = v143;
            }

            type metadata accessor for TrackingAvoidanceError(0);
            *v299 = 6;
            sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
            v172 = swift_initStackObject();
            *(v172 + 16) = xmmword_101385D80;
            *(v172 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(v172 + 72) = &type metadata for String;
            *(v172 + 40) = v173;
            *(v172 + 48) = 0xD00000000000001ALL;
            *(v172 + 56) = 0x800000010135F4B0;
            sub_10090403C(v172);
            swift_setDeallocating();
            sub_10000B3A8(v172 + 32, &unk_101695C20, &unk_101386D90);
            sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
            _BridgedStoredNSError.init(_:userInfo:)();
            v156 = v276;
            v157 = v274;
            goto LABEL_84;
          case 6u:
            v125 = [v296 trackingIdentifier];
            v126 = [v125 address];

            v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v129 = v128;

            sub_100017D5C(v127, v129);
            v130 = v286;
            MACAddress.init(data:type:)();
            v131 = v292;
            v132 = v290;
            if (v292[6](v130, 1, v290) == 1)
            {
              sub_10000B3A8(v130, &qword_1016A40D0, &unk_10138BE70);
              sub_100017D5C(v127, v129);
              v133 = Logger.logObject.getter();
              v134 = static os_log_type_t.error.getter();
              sub_100016590(v127, v129);
              if (os_log_type_enabled(v133, v134))
              {
                v135 = swift_slowAlloc();
                v136 = swift_slowAlloc();
                v297 = v136;
                *v135 = 136446210;
                v137 = Data.hexString.getter();
                v139 = sub_1000136BC(v137, v138, &v297);

                *(v135 + 4) = v139;
                _os_log_impl(&_mh_execute_header, v133, v134, "Invalid MAC address %{public}s", v135, 0xCu);
                sub_100007BAC(v136);
              }

              v140 = v295;
              type metadata accessor for TrackingAvoidanceError(0);
              *v299 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v141 = swift_initStackObject();
              *(v141 + 16) = xmmword_101385D80;
              *(v141 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v141 + 72) = &type metadata for String;
              *(v141 + 40) = v142;
              *(v141 + 48) = 0xD00000000000001FLL;
              *(v141 + 56) = 0x800000010135F4D0;
              sub_10090403C(v141);
              swift_setDeallocating();
              sub_10000B3A8(v141 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              sub_100016590(v276, v274);

              sub_100016590(v127, v129);
              *v140 = v297;
              sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
            }

            else
            {
              v158 = v273;
              v159 = v130;
              v160 = v287;
              *&v296 = v131[4];
              (v296)(v287, v159, v132);
              v131[2](v117, v160, v132);
              v161 = Logger.logObject.getter();
              v162 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v161, v162))
              {
                v163 = swift_slowAlloc();
                *&v293 = v163;
                *&v294 = swift_slowAlloc();
                v297 = v294;
                *v163 = 136446210;
                sub_100799304(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
                v291 = v161;
                v164 = dispatch thunk of CustomStringConvertible.description.getter();
                v166 = v165;
                (v131[1])(v117, v132);
                v167 = v132;
                v168 = sub_1000136BC(v164, v166, &v297);

                v169 = v293;
                *(v293 + 4) = v168;
                v170 = v291;
                _os_log_impl(&_mh_execute_header, v291, v162, "Posh address: %{public}s", v169, 0xCu);
                sub_100007BAC(v294);
                v171 = v273;

                sub_100016590(v276, v274);
                sub_100016590(v127, v129);
              }

              else
              {
                sub_100016590(v276, v274);
                sub_100016590(v127, v129);

                (v131[1])(v117, v132);
                v167 = v132;
                v171 = v158;
              }

              v186 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
              v187 = v186[12];
              v188 = v186[16];
              v189 = v186[20];
              v190 = v186[24];
              v191 = v295;
              (v296)(v295, v287, v167);
              *&v191[v187] = xmmword_1013B6600;
              (*(v277 + 56))(&v191[v188], 1, 1, v275);
              *&v191[v189] = v171;
              v191[v190] = 4;
LABEL_105:
              sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
            }

            return swift_storeEnumTagMultiPayload();
          case 5u:
            v118 = v274;
            sub_100017D5C(v276, v274);
            sub_100497060(v115, v118, &v297);
            v119 = v298;
            if (v298 >> 60 == 15)
            {
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                *v122 = 0;
                _os_log_impl(&_mh_execute_header, v120, v121, "received an advertisement of unexpected length or format", v122, 2u);
              }

              type metadata accessor for TrackingAvoidanceError(0);
              *v299 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v123 = swift_allocObject();
              *(v123 + 16) = xmmword_101385D80;
              *(v123 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v123 + 72) = &type metadata for String;
              *(v123 + 40) = v124;
              *(v123 + 48) = 0xD00000000000001ALL;
              *(v123 + 56) = 0x800000010135F300;
              sub_10090403C(v123);
              swift_setDeallocating();
              sub_10000B3A8(v123 + 32, &unk_101695C20, &unk_101386D90);
              swift_deallocClassInstance();
LABEL_79:
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              v156 = v276;
              v157 = v118;
LABEL_84:
              sub_100016590(v156, v157);

LABEL_85:
              *v98 = v297;
              sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
              return swift_storeEnumTagMultiPayload();
            }

            v174 = v297;
            v175 = 4;
            break;
          default:
            v118 = v274;
            sub_100017D5C(v276, v274);
            sub_100497060(v115, v118, &v297);
            v119 = v298;
            if (v298 >> 60 == 15)
            {
              v151 = Logger.logObject.getter();
              v152 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v151, v152))
              {
                v153 = swift_slowAlloc();
                *v153 = 0;
                _os_log_impl(&_mh_execute_header, v151, v152, "received an advertisement of unexpected length or format", v153, 2u);
              }

              type metadata accessor for TrackingAvoidanceError(0);
              *v299 = 3;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v154 = swift_initStackObject();
              *(v154 + 16) = xmmword_101385D80;
              *(v154 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v154 + 72) = &type metadata for String;
              *(v154 + 40) = v155;
              *(v154 + 48) = 0xD00000000000001ALL;
              *(v154 + 56) = 0x800000010135F300;
              sub_10090403C(v154);
              swift_setDeallocating();
              sub_10000B3A8(v154 + 32, &unk_101695C20, &unk_101386D90);
              goto LABEL_79;
            }

            v174 = v297;
            sub_100017D5C(v297, v298);
            v179 = [v296 trackingIdentifier];
            v180 = [v179 status];

            v181 = (v180 >> 4) & 3;
            if (v181 > 1)
            {
              v178 = v284;
              if (v181 == 2)
              {
                sub_100006654(v174, v119);
                v192 = 2;
              }

              else
              {
                sub_100006654(v174, v119);
                v192 = 3;
              }

              LODWORD(v293) = v192;
              v176 = v292;
              v177 = v288;
LABEL_100:
              v193 = *(v285 + 16);
              sub_100017D5C(v174, v119);
              type metadata accessor for BeaconKeyManager(0);
              v287 = v193;
              v194 = v174;
              OSAllocatedUnfairLock.callAsFunction<A>(_:)();
              v195 = type metadata accessor for UUID();
              v196 = 1;
              v197 = v291;
              (*(*(v195 - 8) + 56))(v291, 1, 1, v195);
              *&v294 = v194;
              v198 = sub_1012DD334(v194, v119, v197);
              v199 = v198[2];
              if (v199)
              {
                sub_1007A7DFC(v198 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * (v199 - 1), v178, type metadata accessor for BeaconKeyManager.IndexInformation);
                v196 = 0;
              }

              sub_10000B3A8(v291, &qword_1016980D0, &unk_10138F3B0);
              v200 = v289;
              (*(v116 + 56))(v178, v196, 1, v289);
              if ((*(v116 + 48))(v178, 1, v200) == 1)
              {
                sub_10000B3A8(v178, &unk_1016C1120, &qword_1013C49D0);
                v201 = v294;
                sub_100017D5C(v294, v119);
                v202 = static MACAddress.length.getter();
                sub_10002EA98(v202, v201, v119, &v297);
                MACAddress.init(data:type:)();
                v203 = v119;
                v204 = v290;
                result = (v176[6])(v177, 1, v290);
                if (result != 1)
                {
                  sub_100006654(v201, v203);
                  v206 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
                  v207 = v295;
                  v208 = &v295[v206[12]];
                  v209 = v201;
                  v210 = v206[16];
                  v211 = v206[20];
                  v212 = v206[24];
                  sub_100016590(v276, v274);
                  v176[4](v207, v288, v204);
                  *v208 = v209;
                  *(v208 + 1) = v203;
                  (*(v277 + 56))(&v207[v210], 1, 1, v275);
                  *&v207[v211] = v273;
                  v207[v212] = v293;
                  goto LABEL_105;
                }

                __break(1u);
                goto LABEL_136;
              }

              v291 = v119;
              v77 = v283;
              sub_1007A91C8(v178, v283, type metadata accessor for BeaconKeyManager.IndexInformation);
              v83 = static os_log_type_t.default.getter();
              if (qword_1016950B0 == -1)
              {
LABEL_107:
                v213 = qword_10177C3F8;
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v214 = swift_allocObject();
                *(v214 + 16) = xmmword_10138BBE0;
                v215 = UUID.uuidString.getter();
                v217 = v216;
                *(v214 + 56) = &type metadata for String;
                v218 = sub_100008C00();
                *(v214 + 64) = v218;
                *(v214 + 32) = v215;
                *(v214 + 40) = v217;
                sub_1000035D0((v77 + *(v289 + 20)), *(v77 + *(v289 + 20) + 24));
                *(v214 + 96) = &type metadata for UInt64;
                *(v214 + 104) = &protocol witness table for UInt64;
                dispatch thunk of RawRepresentable.rawValue.getter();
                os_log(_:dso:log:_:_:)(v83, &_mh_execute_header, v213, "Found beacon %@ and index %d.", 29, 2, v214);

                v219 = v282;
                sub_100AA33AC(v77, v282);
                v220 = type metadata accessor for OwnedBeaconRecord(0);
                if ((*(*(v220 - 8) + 48))(v219, 1, v220) != 1)
                {
                  sub_100006654(v294, v291);
                  sub_10000B3A8(v219, &unk_1016A9A20, &qword_10138B280);
                  v228 = static os_log_type_t.default.getter();
                  os_log(_:dso:log:_:_:)(v228, &_mh_execute_header, v213, "Beacon belongs to owner", 23, 2, _swiftEmptyArrayStorage);
                  v229 = swift_allocObject();
                  v293 = xmmword_101385D80;
                  *(v229 + 16) = xmmword_101385D80;
                  v230 = [v296 trackingIdentifier];
                  v231 = [v230 advertisementData];

                  v232 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v234 = v233;

                  v235 = Data.hexString.getter();
                  v237 = v236;
                  sub_100016590(v232, v234);
                  *(v229 + 56) = &type metadata for String;
                  *(v229 + 64) = v218;
                  *(v229 + 32) = v235;
                  *(v229 + 40) = v237;
                  v238 = String.init(format:_:)();
                  v240 = v239;
                  type metadata accessor for TrackingAvoidanceError(0);
                  *v299 = 8;
                  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
                  v241 = swift_allocObject();
                  *(v241 + 16) = v293;
                  *(v241 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  *(v241 + 72) = &type metadata for String;
                  *(v241 + 40) = v242;
                  *(v241 + 48) = v238;
                  *(v241 + 56) = v240;
                  sub_10090403C(v241);
                  swift_setDeallocating();
                  sub_10000B3A8(v241 + 32, &unk_101695C20, &unk_101386D90);
                  swift_deallocClassInstance();
                  sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
                  _BridgedStoredNSError.init(_:userInfo:)();
                  sub_100016590(v276, v274);

                  sub_100006654(v294, v291);
                  sub_1007A810C(v77, type metadata accessor for BeaconKeyManager.IndexInformation);
LABEL_125:
                  *v295 = v297;
                  sub_1000BC4D4(&qword_1016A9640, &qword_1013BB5D0);
                  return swift_storeEnumTagMultiPayload();
                }

                sub_10000B3A8(v219, &unk_1016A9A20, &qword_10138B280);
                v221 = v281;
                sub_100AA5198(v77, v281);
                v222 = v277;
                v223 = v275;
                v224 = (*(v277 + 48))(v221, 1, v275);
                v225 = v273;
                if (v224 == 1)
                {
                  v226 = v294;
                  v227 = v291;
                  sub_100006654(v294, v291);
                  sub_10000B3A8(v221, &unk_101698C30, &unk_101392630);
                }

                else
                {
                  v36 = v280;
                  sub_1007A91C8(v221, v280, type metadata accessor for SharedBeaconRecord);
                  v243 = v36[*(v223 + 64)];
                  if (v243 == 4 || v243 == 1)
                  {
                    v277 = v222;
                    v244 = static os_log_type_t.default.getter();
                    v245 = swift_allocObject();
                    v296 = xmmword_101385D80;
                    *(v245 + 16) = xmmword_101385D80;
                    sub_1007A7DFC(v36, v279, type metadata accessor for SharedBeaconRecord);
                    v246 = String.init<A>(describing:)();
                    *(v245 + 56) = &type metadata for String;
                    *(v245 + 64) = v218;
                    *(v245 + 32) = v246;
                    *(v245 + 40) = v247;
                    os_log(_:dso:log:_:_:)(v244, &_mh_execute_header, v213, "Found shared beacon %@.", 23, 2, v245);

                    if ((sub_100785DE8(&v36[*(v223 + 20)]) & 1) == 0)
                    {
                      goto LABEL_117;
                    }

                    v248 = v294;
                    sub_100006654(v294, v291);
                    v249 = String.init(format:_:)();
                    v251 = v250;
                    v252 = static os_log_type_t.default.getter();
                    v253 = swift_allocObject();
                    *(v253 + 16) = v296;
                    *(v253 + 56) = &type metadata for String;
                    *(v253 + 64) = v218;
                    *(v253 + 32) = v249;
                    *(v253 + 40) = v251;

                    os_log(_:dso:log:_:_:)(v252, &_mh_execute_header, v213, "%@", 2, 2, v253);

                    type metadata accessor for TrackingAvoidanceError(0);
                    *v299 = 7;
                    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
                    v254 = swift_initStackObject();
                    *(v254 + 16) = v296;
                    *(v254 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(v254 + 72) = &type metadata for String;
                    *(v254 + 40) = v255;
                    *(v254 + 48) = v249;
                    *(v254 + 56) = v251;
                    sub_10090403C(v254);
                    swift_setDeallocating();
                    sub_10000B3A8(v254 + 32, &unk_101695C20, &unk_101386D90);
                    sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
                    _BridgedStoredNSError.init(_:userInfo:)();

                    sub_100006654(v248, v291);
                    sub_100016590(v276, v274);
                    sub_1007A810C(v36, type metadata accessor for SharedBeaconRecord);
                    goto LABEL_121;
                  }

                  v226 = v294;
                  v227 = v291;
                  sub_100006654(v294, v291);
                  sub_1007A810C(v36, type metadata accessor for SharedBeaconRecord);
                  v225 = v273;
                }

                type metadata accessor for TrackingAvoidanceError(0);
                *v299 = 6;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
                _BridgedStoredNSError.init(_:userInfo:)();
                sub_100016590(v276, v274);

                sub_100006654(v226, v227);
LABEL_121:
                sub_1007A810C(v283, type metadata accessor for BeaconKeyManager.IndexInformation);
                goto LABEL_125;
              }

LABEL_134:
              swift_once();
              goto LABEL_107;
            }

            if (!v181)
            {
              v182 = v174;
              v183 = static os_log_type_t.error.getter();
              if (qword_1016950B0 != -1)
              {
                v271 = v183;
                swift_once();
                v183 = v271;
              }

              os_log(_:dso:log:_:_:)(v183, &_mh_execute_header, qword_10177C3F8, "not an acceptable device type", 29, 2, _swiftEmptyArrayStorage);
              type metadata accessor for TrackingAvoidanceError(0);
              *v299 = 6;
              sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
              v184 = swift_initStackObject();
              *(v184 + 16) = xmmword_101385D80;
              *(v184 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v184 + 72) = &type metadata for String;
              *(v184 + 40) = v185;
              *(v184 + 48) = 0xD00000000000001DLL;
              *(v184 + 56) = 0x800000010135FE00;
              sub_10090403C(v184);
              swift_setDeallocating();
              sub_10000B3A8(v184 + 32, &unk_101695C20, &unk_101386D90);
              sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
              _BridgedStoredNSError.init(_:userInfo:)();
              sub_100006654(v182, v119);
              sub_100016590(v276, v118);

              sub_100006654(v182, v119);
              goto LABEL_85;
            }

            sub_100006654(v174, v119);
            v175 = 1;
            break;
        }

        LODWORD(v293) = v175;
        v176 = v292;
        v177 = v288;
        v178 = v284;
        goto LABEL_100;
      }

      LODWORD(v85) = HIDWORD(v75) - v75;
      if (__OFSUB__(HIDWORD(v75), v75))
      {
        __break(1u);
        goto LABEL_134;
      }

      v85 = v85;
      goto LABEL_53;
    }

    if ((v60 & 0xC000000000000001) != 0)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v67 >= v58[2])
      {
        goto LABEL_116;
      }

      v68 = *(v60 + 8 * v67 + 32);
    }

    v69 = v68;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    v70 = sub_1010E13F0();

    ++v67;
    if (v70)
    {

      v86 = static os_log_type_t.error.getter();
      if (qword_1016950B0 != -1)
      {
        v269 = v86;
        swift_once();
        v86 = v269;
      }

      os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, qword_10177C3F8, "received locations within blocked regions", 41, 2, _swiftEmptyArrayStorage);
      type metadata accessor for TrackingAvoidanceError(0);
      *v299 = 11;
      sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = inited + 32;
      v90 = 0x800000010135F490;
      *(inited + 72) = &type metadata for String;
      v91 = 0xD00000000000001CLL;
LABEL_45:
      *(inited + 40) = v88;
      *(inited + 48) = v91;
      *(inited + 56) = v90;
      sub_10090403C(inited);
      swift_setDeallocating();
      sub_10000B3A8(v89, &unk_101695C20, &unk_101386D90);
      sub_100799304(&qword_101696158, type metadata accessor for TrackingAvoidanceError, &unk_101389AA8);
      _BridgedStoredNSError.init(_:userInfo:)();

      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v256 = v294;
  v257 = v291;
  sub_100017D5C(v294, v291);
  v258 = static MACAddress.length.getter();
  sub_10002EA98(v258, v256, v257, &v297);
  v259 = v278;
  MACAddress.init(data:type:)();
  v260 = v292;
  v261 = v290;
  result = (v292[6])(v259, 1, v290);
  if (result != 1)
  {
    sub_100006654(v256, v257);
    v262 = sub_1000BC4D4(&qword_1016A9638, &qword_1013BB5C8);
    v263 = v295;
    v264 = &v295[v262[12]];
    v265 = v262[16];
    *&v296 = v262[20];
    v289 = v262[24];
    sub_100016590(v276, v274);
    v260[4](v263, v259, v261);
    sub_1007A810C(v283, type metadata accessor for BeaconKeyManager.IndexInformation);
    *v264 = v256;
    v264[1] = v257;
    sub_1007A91C8(v36, &v263[v265], type metadata accessor for SharedBeaconRecord);
    (*(v277 + 56))(&v263[v265], 0, 1, v275);
    *&v263[v296] = v273;
    v263[v289] = v293;
    goto LABEL_105;
  }

LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_100785DE8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v42[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v48 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v47 = &v42[-v9];
  v10 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42[-v11];
  v13 = type metadata accessor for WildModeAssociationRecord(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v42[-v18];
  v20 = sub_10002F740();
  v49 = a1;
  sub_1012BC3D0(sub_1007A7D64, v20, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v21 = &unk_1016C7C90;
    v22 = &qword_1013BB4B0;
    v23 = v12;
  }

  else
  {
    v46 = v6;
    sub_1007A91C8(v12, v19, type metadata accessor for WildModeAssociationRecord);
    v24 = static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C3F8;
    v44 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    sub_1007A7DFC(v19, v17, type metadata accessor for WildModeAssociationRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    v30 = sub_100008C00();
    *(v26 + 64) = v30;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    v45 = v25;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Found ignored shared beacon record %@.", 38, 2, v26);

    sub_1000D2A70(&v19[*(v13 + 44)], v4, &unk_101696900, &unk_10138B1E0);
    v31 = v46;
    if ((*(v46 + 48))(v4, 1, v5) != 1)
    {
      v33 = v47;
      (*(v31 + 32))(v47, v4, v5);
      v34 = v48;
      static Date.trustedNow.getter(v48);
      v43 = static os_log_type_t.default.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_10138BBE0;
      sub_100799304(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = v30;
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v30;
      *(v35 + 72) = v38;
      *(v35 + 80) = v39;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v45, "ignoresUntilDate %@. now %@.", 28, 2, v35);

      v32 = static Date.> infix(_:_:)();
      v40 = *(v31 + 8);
      v40(v34, v5);
      v40(v33, v5);
      sub_1007A810C(v19, type metadata accessor for WildModeAssociationRecord);
      return v32 & 1;
    }

    sub_1007A810C(v19, type metadata accessor for WildModeAssociationRecord);
    v21 = &unk_101696900;
    v22 = &unk_10138B1E0;
    v23 = v4;
  }

  sub_10000B3A8(v23, v21, v22);
  v32 = 0;
  return v32 & 1;
}