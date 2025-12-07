uint64_t sub_21908965C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0x74695470756F7267;
    v9 = 0xEA0000000000656CLL;
    if (a1 != 1)
    {
      v8 = 0x62755370756F7267;
      v9 = 0xED0000656C746974;
    }

    if (a1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 1701869940;
    }

    if (v2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v3 = 0xD000000000000011;
      v4 = 0x8000000219CD77A0;
      v5 = 0x8000000219CD7500;
      v6 = 0xD000000000000017;
      v7 = a1 == 5;
    }

    else
    {
      v3 = 0x74695470756F7267;
      v4 = 0xEF726F6C6F43656CLL;
      v5 = 0x8000000219CD83D0;
      v6 = 0xD000000000000013;
      v7 = a1 == 3;
    }

    if (v7)
    {
      v10 = v3;
    }

    else
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA0000000000656CLL;
        if (v10 != 0x74695470756F7267)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v12 = 0xED0000656C746974;
        if (v10 != 0x62755370756F7267)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v13 = 0xD000000000000017;
    }

    if (a2 == 5)
    {
      v12 = 0x8000000219CD77A0;
    }

    else
    {
      v12 = 0x8000000219CD7500;
    }

    if (v10 != v13)
    {
      goto LABEL_43;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEF726F6C6F43656CLL;
    if (v10 != 0x74695470756F7267)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = 0x8000000219CD83D0;
    if (v10 != 0xD000000000000013)
    {
LABEL_43:
      v14 = sub_219BF78F4();
      goto LABEL_44;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_2190898C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = "r";
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xD00000000000001DLL;
    v13 = "icClusteringKnobs";
    v14 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v14 = 0xD000000000000017;
      v13 = "generalTopicClusteringKnobs";
    }

    v15 = "hardPaywallBundleArticleLimit";
    if (a1)
    {
      v12 = 0xD000000000000021;
    }

    else
    {
      v15 = "r";
    }

    if (a1 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }

    if (v4 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v5 = "HeadlinesInMoreForYou";
    v6 = "minChannelGroupRatio";
    v7 = 0xD000000000000020;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001ALL;
      v6 = "minTopicGroupRatio";
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v5 = v6;
    }

    v8 = "orphanedClusteringKnobs";
    v9 = 0xD000000000000025;
    if (a1 == 4)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v8 = "clusterOrderingMode";
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "icClusteringKnobs";
        v2 = 0xD00000000000001BLL;
      }

      else
      {
        v3 = "generalTopicClusteringKnobs";
        v2 = 0xD000000000000017;
      }
    }

    else if (a2)
    {
      v3 = "hardPaywallBundleArticleLimit";
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001DLL;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v3 = "orphanedClusteringKnobs";
      v2 = 0xD000000000000013;
    }

    else
    {
      v3 = "clusterOrderingMode";
      v2 = 0xD000000000000025;
    }
  }

  else if (a2 == 6)
  {
    v3 = "HeadlinesInMoreForYou";
  }

  else if (a2 == 7)
  {
    v3 = "minChannelGroupRatio";
    v2 = 0xD000000000000020;
  }

  else
  {
    v3 = "minTopicGroupRatio";
    v2 = 0xD00000000000001ALL;
  }

  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_219BF78F4();
  }

  return v16 & 1;
}

uint64_t sub_219089B04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = 0x8000000219CD7500;
    }

    else
    {
      v6 = 0x8000000219CD77A0;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xD00000000000001BLL;
    if (a1 == 3)
    {
      v3 = 0x8000000219CD9420;
    }

    else
    {
      v4 = 0x746E65746E6F63;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x8000000219CD77C0;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (a2)
    {
      v7 = 0x8000000219CD7500;
    }

    else
    {
      v7 = 0x8000000219CD77A0;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x8000000219CD77C0;
    if (v5 != 0xD000000000000016)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x8000000219CD9420;
    if (v5 != 0xD00000000000001BLL)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x746E65746E6F63)
    {
LABEL_35:
      v9 = sub_219BF78F4();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_219089CA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73656E696C6461;
  v3 = 0x6548756F59726F66;
  v4 = a1;
  v5 = 0x526C656E6E616863;
  v6 = 0xEE00736570696365;
  if (a1 != 5)
  {
    v5 = 0x6365526369706F74;
    v6 = 0xEC00000073657069;
  }

  v7 = 0x6E6F697461727563;
  v8 = 0xE900000000000073;
  if (a1 != 3)
  {
    v7 = 0x6552756F59726F66;
    v8 = 0xED00007365706963;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x655274736574616CLL;
  v10 = 0xED00007365706963;
  if (a1 != 1)
  {
    v9 = 0x676E69646E657274;
    v10 = 0xEF73657069636552;
  }

  if (!a1)
  {
    v9 = 0x6548756F59726F66;
    v10 = 0xEF73656E696C6461;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED00007365706963;
        if (v11 != 0x655274736574616CLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF73657069636552;
        if (v11 != 0x676E69646E657274)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE00736570696365;
        if (v11 != 0x526C656E6E616863)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC00000073657069;
        if (v11 != 0x6365526369706F74)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v11 != 0x6E6F697461727563)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6552756F59726F66;
    v2 = 0xED00007365706963;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_219BF78F4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_219089F40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000017;
  v5 = 0x8000000219CD77C0;
  v6 = 0xD000000000000016;
  if (a1 != 4)
  {
    v6 = 0xD00000000000001BLL;
    v5 = 0x8000000219CD7220;
  }

  if (a1 == 3)
  {
    v5 = 0x8000000219CD7500;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0x62755370756F7267;
  v8 = 0xED0000656C746974;
  if (v2 != 1)
  {
    v7 = 0xD000000000000011;
    v8 = 0x8000000219CD77A0;
  }

  if (v2)
  {
    v3 = v8;
  }

  else
  {
    v7 = 1701869940;
  }

  if (v2 <= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x8000000219CD7500;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000219CD77C0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000219CD7220;
      if (v9 != 0xD00000000000001BLL)
      {
LABEL_35:
        v12 = sub_219BF78F4();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xED0000656C746974;
      if (v9 != 0x62755370756F7267)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000219CD77A0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1701869940)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_21908A110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C656E6E616863;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xED0000736569726FLL;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x745364657373696DLL;
    }

    else
    {
      v6 = 0x6369706F74;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x756F59726F66;
    }

    else
    {
      v6 = 0x6C656E6E616863;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x745364657373696DLL;
  v10 = 0xED0000736569726FLL;
  if (a2 != 2)
  {
    v9 = 0x6369706F74;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x756F59726F66;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_219BF78F4();
  }

  return v13 & 1;
}

uint64_t sub_21908A258(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x69726F6765746163;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007365;
    }

    else
    {
      v5 = 0x8000000219CD7500;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x62755370756F7267;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xED0000656C746974;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x69726F6765746163;
  v8 = 0x8000000219CD7500;
  if (a2 == 2)
  {
    v8 = 0xEA00000000007365;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a2)
  {
    v2 = 0x62755370756F7267;
    v6 = 0xED0000656C746974;
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
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908A3B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x637461427473616CLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x637461427478656ELL;
    }

    else
    {
      v4 = 0x637461427473616CLL;
    }

    v5 = 0xE900000000000068;
  }

  else if (a1 == 2)
  {
    v4 = 0x6142646E61707865;
    v5 = 0xEB00000000686374;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x70696B536C6F6F70;
    }

    else
    {
      v4 = 0x7461427974706D65;
    }

    if (v3 == 3)
    {
      v5 = 0xED00006863746142;
    }

    else
    {
      v5 = 0xEA00000000006863;
    }
  }

  v6 = 0x6142646E61707865;
  v7 = 0xEB00000000686374;
  v8 = 0x70696B536C6F6F70;
  v9 = 0xED00006863746142;
  if (a2 != 3)
  {
    v8 = 0x7461427974706D65;
    v9 = 0xEA00000000006863;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0x637461427478656ELL;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE900000000000068;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_219BF78F4();
  }

  return v12 & 1;
}

uint64_t sub_21908A55C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7974697669746361;
    }

    else
    {
      v4 = 0x446873696C627570;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000657461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465727574616566;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7974697669746361;
  if (a2 != 2)
  {
    v8 = 0x446873696C627570;
    v7 = 0xEB00000000657461;
  }

  if (a2)
  {
    v2 = 0x6465727574616566;
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
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908A6A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006C61636967;
  if (a1 > 3u)
  {
    v3 = 0x8000000219CD75C0;
    v4 = 0xD000000000000024;
    if (a1 == 6)
    {
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0x8000000219CD75E0;
    }

    v5 = 0x8000000219CD7580;
    v6 = 0xD000000000000016;
    if (a1 != 4)
    {
      v6 = 0xD00000000000001DLL;
      v5 = 0x8000000219CD75A0;
    }

    v7 = a1 <= 5u;
  }

  else
  {
    v3 = 0x8000000219CD7530;
    v4 = 0xD00000000000001CLL;
    if (a1 != 2)
    {
      v4 = 0xD000000000000023;
      v3 = 0x8000000219CD7550;
    }

    v5 = 0x8000000219CD7330;
    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0x6F6C6F6E6F726863;
      v5 = 0xED00006C61636967;
    }

    v7 = a1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x8000000219CD7530;
        if (v8 != 0xD00000000000001CLL)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0x8000000219CD7550;
        if (v8 != 0xD000000000000023)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2)
    {
      v2 = 0x8000000219CD7330;
      if (v8 != 0xD000000000000014)
      {
        goto LABEL_43;
      }
    }

    else if (v8 != 0x6F6C6F6E6F726863)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0x8000000219CD7580;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v10 = "diversifyReverseChronological";
LABEL_36:
    v2 = (v10 - 32) | 0x8000000000000000;
    if (v8 != 0xD00000000000001DLL)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v10 = "limitedDiversifyChronological";
    goto LABEL_36;
  }

  v2 = 0x8000000219CD75E0;
  if (v8 != 0xD000000000000024)
  {
LABEL_43:
    v11 = sub_219BF78F4();
    goto LABEL_44;
  }

LABEL_41:
  if (v9 != v2)
  {
    goto LABEL_43;
  }

  v11 = 1;
LABEL_44:

  return v11 & 1;
}

uint64_t sub_21908A90C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E657665;
  v3 = a1;
  v4 = 0x6E69776F6C6C6F66;
  v5 = 0xE900000000000067;
  v6 = 0x6465727574616566;
  if (a1 != 4)
  {
    v6 = 0x676E69726F766166;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = 0xE800000000000000;
  }

  v7 = 0x65676E6172;
  if (a1 != 1)
  {
    v7 = 0x7961646F74;
  }

  if (!a1)
  {
    v7 = 0x746E657665;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 2)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE900000000000067;
      if (v8 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0xE800000000000000;
      if (a2 == 4)
      {
        if (v8 != 0x6465727574616566)
        {
          goto LABEL_31;
        }
      }

      else if (v8 != 0x676E69726F766166)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 0x65676E6172)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x7961646F74;
    }

    if (v8 != v2)
    {
LABEL_31:
      v11 = sub_219BF78F4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v9 != v10)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_21908AACC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006761;
  v3 = 0x5464657461727563;
  v4 = a1;
  v5 = 0xEE006C656E6E6168;
  if (a1 == 5)
  {
    v6 = 0x43676E696B636162;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (a1 != 5)
  {
    v5 = 0x8000000219CD7460;
  }

  v7 = 0x8000000219CD7410;
  v8 = 0xD000000000000026;
  if (a1 != 3)
  {
    v8 = 0x54676E696B636162;
    v7 = 0xEA00000000006761;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v6;
    v9 = v5;
  }

  v10 = 0x8000000219CD73D0;
  if (a1 == 1)
  {
    v11 = 0xD000000000000016;
  }

  else
  {
    v11 = 0xD00000000000001ALL;
  }

  if (a1 != 1)
  {
    v10 = 0x8000000219CD73F0;
  }

  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x5464657461727563;
  }

  if (!v4)
  {
    v10 = 0xEA00000000006761;
  }

  if (v4 <= 2)
  {
    v13 = v10;
  }

  else
  {
    v12 = v8;
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000219CD73D0;
      v3 = 0xD000000000000016;
      goto LABEL_37;
    }

    v2 = 0x8000000219CD73F0;
LABEL_36:
    v3 = 0xD00000000000001ALL;
    goto LABEL_37;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = 0x43676E696B636162;
      v2 = 0xEE006C656E6E6168;
      goto LABEL_37;
    }

    v2 = 0x8000000219CD7460;
    goto LABEL_36;
  }

  if (a2 == 3)
  {
    v2 = 0x8000000219CD7410;
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0x54676E696B636162;
  }

LABEL_37:
  if (v12 == v3 && v13 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_219BF78F4();
  }

  return v14 & 1;
}

uint64_t sub_21908ACA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657461;
  v3 = 0x446873696C627570;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7370756F7267;
    }

    else
    {
      v5 = 0x617461646174656DLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x63416F546C6C6163;
    }

    else
    {
      v5 = 0x446873696C627570;
    }

    if (v4)
    {
      v6 = 0xEC0000006E6F6974;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x7370756F7267;
  if (a2 != 2)
  {
    v8 = 0x617461646174656DLL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x63416F546C6C6163;
    v2 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908ADF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656546664F706F74;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x646568636163;
  v7 = 0x6552646568636163;
  v8 = 0xEC0000006C6F6F70;
  if (a1 != 4)
  {
    v7 = 0xD000000000000011;
    v8 = 0x8000000219CD7F50;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x68736572666572;
  if (a1 != 1)
  {
    v10 = 0x646E61707865;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x656546664F706F74;
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
      v2 = 0xE600000000000000;
      if (v11 != 0x646568636163)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000006C6F6F70;
      if (v11 != 0x6552646568636163)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x8000000219CD7F50;
      if (v11 != 0xD000000000000011)
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
        v2 = 0xE700000000000000;
        if (v11 != 0x68736572666572)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x646E61707865;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_219BF78F4();
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

uint64_t sub_21908AFCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x686374616DLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 7630702;
    }

    else
    {
      v5 = 0x686374616DLL;
    }

    if (v3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6557664F73796164;
    v4 = 0xEA00000000006B65;
  }

  else if (a1 == 3)
  {
    v4 = 0xE600000000000000;
    v5 = 0x7265746C6966;
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x726F7463656C6573;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE300000000000000;
    v8 = 7630702;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6557664F73796164;
    v6 = 0xEA00000000006B65;
    v7 = 0xE600000000000000;
    v8 = 0x7265746C6966;
    if (a2 != 3)
    {
      v8 = 0x726F7463656C6573;
      v7 = 0xE800000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_219BF78F4();
  }

  return v12 & 1;
}

uint64_t sub_21908B134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x6C616E6F73726570;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000219CD7330;
    }

    else
    {
      v5 = 0xEF6E6F6974617A69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F6C6F6E6F726863;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xED00006C61636967;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x8000000219CD7330;
  if (a2 != 2)
  {
    v7 = 0x6C616E6F73726570;
    v8 = 0xEF6E6F6974617A69;
  }

  if (a2)
  {
    v2 = 0x6F6C6F6E6F726863;
    v6 = 0xED00006C61636967;
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
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908B2A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1701869940;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000011;
    v4 = 0x8000000219CD7630;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x736D657469;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1701869940)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000219CD7630;
    if (v3 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x736D657469)
    {
LABEL_31:
      v7 = sub_219BF78F4();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_21908B41C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F697461727564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736C656E6E616863;
    }

    else
    {
      v5 = 0x736369706F74;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
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
      v5 = 1936154996;
    }

    else
    {
      v5 = 0x6E6F697461727564;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x736C656E6E616863;
  if (a2 != 2)
  {
    v8 = 0x736369706F74;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 1936154996;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908B548(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000474E494645;
  v3 = 0x495242594C494144;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xE400000000000000;
      v5 = 1330791752;
    }

    else
    {
      v5 = 0xD000000000000011;
      v6 = 0x8000000219CD91A0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x495242594C494144;
    }

    if (v4)
    {
      v6 = 0x8000000219CD9180;
    }

    else
    {
      v6 = 0xED0000474E494645;
    }
  }

  v7 = 1330791752;
  v8 = 0x8000000219CD91A0;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000219CD9180;
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
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908B684(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E696665;
  v3 = 0x697242796C696164;
  v4 = a1;
  v5 = 0xEE00646579616C50;
  v6 = 0x6C6C6177796170;
  if (a1 == 5)
  {
    v6 = 0x796C746E65636572;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0x8000000219CD91E0;
  v8 = 0x7473696C79616C70;
  if (a1 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x8000000219CD91C0;
  v10 = 0xD000000000000014;
  if (a1 != 1)
  {
    v10 = 1869768040;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x697242796C696164;
    v9 = 0xED0000676E696665;
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
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000219CD91C0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1869768040)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE00646579616C50;
        if (v11 != 0x796C746E65636572)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6C6C6177796170)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000219CD91E0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v2 = 0xE800000000000000;
    v3 = 0x7473696C79616C70;
  }

  if (v11 != v3)
  {
LABEL_39:
    v13 = sub_219BF78F4();
    goto LABEL_40;
  }

LABEL_36:
  if (v12 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_21908B8AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6863746566657270;
    }

    else
    {
      v3 = 0x6E6F697461727563;
    }

    v4 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x68736572666572;
    }

    else
    {
      v3 = 0x746C7561666564;
    }

    v4 = 0xE700000000000000;
  }

  v5 = 0x6863746566657270;
  if (a2 != 2)
  {
    v5 = 0x6E6F697461727563;
  }

  if (a2)
  {
    v2 = 0x68736572666572;
  }

  if (a2 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21908B9F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = 0x756F59726F66;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x756F59726F66;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x8000000219CD73A0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4)
    {
      v6 = 0x8000000219CD7380;
    }

    else
    {
      v6 = 0x8000000219CD7360;
    }
  }

  v7 = 0x8000000219CD73A0;
  if (a2 == 2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  v8 = 0x8000000219CD7380;
  if (!a2)
  {
    v2 = 0xD000000000000010;
    v8 = 0x8000000219CD7360;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908BB10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x657061707377656ELL;
  v5 = 0xEA00000000007372;
  if (a1 != 5)
  {
    v4 = 0x64656546676174;
    v5 = 0xE700000000000000;
  }

  v6 = 0x656E697A6167616DLL;
  v7 = 0xEC00000064656546;
  if (a1 != 3)
  {
    v6 = 0x697A6167614D796DLL;
    v7 = 0xEB0000000073656ELL;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x79726F6765746163;
  if (a1 != 1)
  {
    v9 = 0x64616F6C6E776F64;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676F6C61746163;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x79726F6765746163)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE900000000000073;
        if (v10 != 0x64616F6C6E776F64)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x676F6C61746163)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000007372;
      if (v10 != 0x657061707377656ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656546676174)
      {
LABEL_39:
        v13 = sub_219BF78F4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEC00000064656546;
    if (v10 != 0x656E697A6167616DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB0000000073656ELL;
    if (v10 != 0x697A6167614D796DLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_21908BD70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x69666E6F43707061;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x79654B6568636163;
  if (a1 == 6)
  {
    v6 = 0x6C6F506568636163;
    v5 = 0xEB00000000796369;
  }

  v7 = 0x8000000219CD6AA0;
  v8 = 0xD000000000000016;
  if (a1 == 4)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x8000000219CD6AC0;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000011;
  if (a1 == 2)
  {
    v9 = 0x43746E65746E6F63;
    v10 = 0xED00006769666E6FLL;
  }

  else
  {
    v10 = 0x8000000219CD93E0;
  }

  v11 = 0xE700000000000000;
  v12 = 0x747865746E6F63;
  if (!a1)
  {
    v12 = 0x69666E6F43707061;
    v11 = 0xE900000000000067;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
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
        v2 = 0xEB00000000796369;
        if (v13 != 0x6C6F506568636163)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x79654B6568636163)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000219CD6AA0;
      if (v13 != 0xD000000000000010)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0x8000000219CD6AC0;
      if (v13 != 0xD000000000000016)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED00006769666E6FLL;
        if (v13 != 0x43746E65746E6F63)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0x8000000219CD93E0;
      v3 = 0xD000000000000011;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x747865746E6F63)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v13 != v3)
    {
LABEL_44:
      v15 = sub_219BF78F4();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v14 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_21908BFF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000746E6574;
  v3 = 0x6E6F436B63617274;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x7265746F6F66;
  v7 = 0x6F74617261706573;
  v8 = 0xE900000000000072;
  if (a1 != 4)
  {
    v7 = 0x697242796C696164;
    v8 = 0xED0000676E696665;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6C65436B63617274;
  v10 = 0xE90000000000006CLL;
  if (a1 != 1)
  {
    v9 = 0x726564616568;
    v10 = 0xE600000000000000;
  }

  if (!a1)
  {
    v9 = 0x6E6F436B63617274;
    v10 = 0xEC000000746E6574;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x7265746F6F66)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000072;
      if (v11 != 0x6F74617261706573)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xED0000676E696665;
      if (v11 != 0x697242796C696164)
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
        v2 = 0xE90000000000006CLL;
        if (v11 != 0x6C65436B63617274)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x726564616568;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_219BF78F4();
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

uint64_t sub_21908C1F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0xE200000000000000;
    v13 = 29295;
    if (a1 != 2)
    {
      v13 = 7630702;
      v12 = 0xE300000000000000;
    }

    v14 = 6581857;
    if (a1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v14 = 1885693291;
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
    v3 = 0xE600000000000000;
    v4 = 0x746E65636572;
    v5 = 0xE400000000000000;
    v6 = 1852139639;
    if (a1 != 7)
    {
      v6 = 0x65766F6D6572;
      v5 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE700000000000000;
    v8 = 0x794270756F7267;
    if (a1 != 4)
    {
      v8 = 0x746573627573;
      v7 = 0xE600000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE200000000000000;
        if (v9 != 29295)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE300000000000000;
        if (v9 != 7630702)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE300000000000000;
      if (v9 != 6581857)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1885693291)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x794270756F7267)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x746573627573)
      {
LABEL_52:
        v16 = sub_219BF78F4();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x746E65636572)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE400000000000000;
    if (v9 != 1852139639)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x65766F6D6572)
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

uint64_t sub_21908C440(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000219CD71D0;
  v5 = 0xD000000000000019;
  if (a1 != 4)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000219CD71F0;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000219CD71B0;
  }

  v6 = 0x6373627553746F6ELL;
  v7 = 0xED00006465626972;
  if (v2 != 1)
  {
    v6 = 0xD000000000000012;
    v7 = 0x8000000219CD7190;
  }

  if (v2)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2 <= 2)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v10 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v10 = 0xED00006465626972;
      if (v8 != 0x6373627553746F6ELL)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v10 = 0x8000000219CD7190;
LABEL_29:
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v10 = 0x8000000219CD71B0;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v10 = 0x8000000219CD71D0;
    if (v8 != 0xD000000000000019)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0x8000000219CD71F0;
    if (v8 != 0xD000000000000013)
    {
LABEL_34:
      v11 = sub_219BF78F4();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v9 != v10)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_21908C604(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x8000000219CD7FB0;
  v5 = 0xD000000000000015;
  if (a1 != 4)
  {
    v5 = 0x4F65636976726573;
    v4 = 0xEE00736E6F697470;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000019;
    v6 = 0x8000000219CD7F90;
  }

  else
  {
    v6 = v4;
  }

  v7 = 0x676E615265746164;
  v8 = 0xE900000000000065;
  if (a1 != 1)
  {
    v7 = 0xD000000000000011;
    v8 = 0x8000000219CD7F70;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 1684957547;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x8000000219CD7F90;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000219CD7FB0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xEE00736E6F697470;
      if (v9 != 0x4F65636976726573)
      {
LABEL_35:
        v12 = sub_219BF78F4();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x676E615265746164)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000219CD7F70;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1684957547)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_21908C800(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000070756FLL;
  v3 = 0x724774616D726F66;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736E6F6974636573;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x8000000219CD7220;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C656E6E616863;
    }

    else
    {
      v5 = 0x724774616D726F66;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB0000000070756FLL;
    }
  }

  v7 = 0x736E6F6974636573;
  v8 = 0x8000000219CD7220;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    v3 = 0x6C656E6E616863;
    v2 = 0xE700000000000000;
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
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908C948(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x4F65636976726573;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000219CD6910;
    }

    else
    {
      v6 = 0xEE00736E6F697470;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E694B70756F7267;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEA00000000007364;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x8000000219CD6910;
  if (a2 != 2)
  {
    v7 = 0x4F65636976726573;
    v8 = 0xEE00736E6F697470;
  }

  if (a2)
  {
    v3 = 0x6E694B70756F7267;
    v2 = 0xEA00000000007364;
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
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908CAA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x726F737365636361;
    v4 = 0xED00007478655479;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6C72557265766F63;
    }

    else
    {
      v3 = 0x6152746365707361;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEB000000006F6974;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00007478655479;
    if (v3 != 0x726F737365636361)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6C72557265766F63)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEB000000006F6974;
    if (v3 != 0x6152746365707361)
    {
LABEL_34:
      v7 = sub_219BF78F4();
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

uint64_t sub_21908CC50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x496C656E6E616863;
  v5 = 0xEA00000000007344;
  if (a1 != 5)
  {
    v4 = 0x736C656E6E616863;
    v5 = 0xE800000000000000;
  }

  v6 = 0x326C72556E6F6369;
  if (a1 != 3)
  {
    v6 = 0x336C72556E6F6369;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = 0xE900000000000078;
  }

  v7 = 0x696669746E656469;
  v8 = 0xEA00000000007265;
  if (a1 != 1)
  {
    v7 = 0x316C72556E6F6369;
    v8 = 0xE900000000000078;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v11 = 0x316C72556E6F6369;
        goto LABEL_33;
      }

      v12 = 0xEA00000000007265;
      if (v9 != 0x696669746E656469)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v11 = 0x326C72556E6F6369;
      }

      else
      {
        v11 = 0x336C72556E6F6369;
      }

LABEL_33:
      v12 = 0xE900000000000078;
      if (v9 != v11)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (a2 == 5)
    {
      v12 = 0xEA00000000007344;
      if (v9 != 0x496C656E6E616863)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v9 != 0x736C656E6E616863)
      {
LABEL_38:
        v13 = sub_219BF78F4();
        goto LABEL_39;
      }
    }
  }

LABEL_36:
  if (v10 != v12)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_21908CE84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000016;
  v5 = 0x69666E6F43707061;
  v6 = 0xE900000000000067;
  if (a1 != 4)
  {
    v5 = 0x6C6F506568636163;
    v6 = 0xEB00000000796369;
  }

  if (a1 == 3)
  {
    v7 = 0x8000000219CD6AC0;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0x43746E65746E6F63;
  v9 = 0xED00006769666E6FLL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v9 = 0x8000000219CD6AA0;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x747865746E6F63;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000219CD6AC0;
      if (v10 != 0xD000000000000016)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x69666E6F43707061)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xEB00000000796369;
      if (v10 != 0x6C6F506568636163)
      {
LABEL_35:
        v13 = sub_219BF78F4();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xED00006769666E6FLL;
      if (v10 != 0x43746E65746E6F63)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0x8000000219CD6AA0;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x747865746E6F63)
    {
      goto LABEL_35;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_35;
  }

  v13 = 1;
LABEL_36:

  return v13 & 1;
}

uint64_t sub_21908D09C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x4F65636976726573;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEE00736E6F697470;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6373654464656566;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xEE00726F74706972;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1684957547;
  if (a2 != 2)
  {
    v8 = 0x4F65636976726573;
    v7 = 0xEE00736E6F697470;
  }

  if (a2)
  {
    v3 = 0x6373654464656566;
    v2 = 0xEE00726F74706972;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908D200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7374726F7073;
  if (a1 != 5)
  {
    v5 = 0x6C75736552706F74;
    v4 = 0xE900000000000074;
  }

  v6 = 0xE700000000000000;
  v7 = 0x73657069636572;
  if (a1 != 3)
  {
    v7 = 0x6365526465766173;
    v6 = 0xEC00000073657069;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x736C656E6E616863;
  if (a1 != 1)
  {
    v9 = 0x736369706F74;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x73656C6369747261;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x736C656E6E616863)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x736369706F74)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x73656C6369747261)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7374726F7073)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6C75736552706F74)
      {
LABEL_39:
        v13 = sub_219BF78F4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73657069636572)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEC00000073657069;
    if (v10 != 0x6365526465766173)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_21908D438(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x6973695664696170;
  v6 = 0xEE007974696C6962;
  v7 = 0xE700000000000000;
  v8 = 0x6C656E6E616863;
  if (a1 != 4)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736575737369;
  if (a1 != 1)
  {
    v10 = 0x6E656449646E696BLL;
    v9 = 0xEE00726569666974;
  }

  if (!a1)
  {
    v10 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE007974696C6962;
      if (v11 != 0x6973695664696170)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6C656E6E616863)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x656C746974)
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
        v2 = 0xE600000000000000;
        if (v11 != 0x736575737369)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6E656449646E696BLL;
      v2 = 0xEE00726569666974;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_219BF78F4();
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

uint64_t sub_21908D630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x8000000219CD8430;
    }

    else
    {
      v3 = 0x74496769666E6F63;
      v4 = 0xEB00000000736D65;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6574616C75706F70;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xEE00736D65744964;
    }

    else
    {
      v4 = 0x8000000219CD8400;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000219CD8430;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEB00000000736D65;
      if (v3 != 0x74496769666E6F63)
      {
LABEL_26:
        v7 = sub_219BF78F4();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6574616C75706F70;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (a2)
    {
      v6 = 0xEE00736D65744964;
    }

    else
    {
      v6 = 0x8000000219CD8400;
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

uint64_t sub_21908D7AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x756F59726F66;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C6C6177796170;
    }

    else
    {
      v3 = 0x64657461727563;
    }

    v4 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x7478654E7075;
    }

    else
    {
      v3 = 0x756F59726F66;
    }

    v4 = 0xE600000000000000;
  }

  v5 = 0x6C6C6177796170;
  if (a2 != 2)
  {
    v5 = 0x64657461727563;
  }

  if (a2)
  {
    v2 = 0x7478654E7075;
  }

  if (a2 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21908D8E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6365526465766173;
  v5 = 0xEC00000073657069;
  if (a1 != 5)
  {
    v4 = 0x6C75736552706F74;
    v5 = 0xE900000000000074;
  }

  v6 = 0xE600000000000000;
  v7 = 0x7374726F7073;
  if (a1 != 3)
  {
    v7 = 0x73657069636572;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x736C656E6E616863;
  if (a1 != 1)
  {
    v9 = 0x736369706F74;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x73656C6369747261;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x736C656E6E616863)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x736369706F74)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x73656C6369747261)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC00000073657069;
      if (v10 != 0x6365526465766173)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6C75736552706F74)
      {
LABEL_39:
        v13 = sub_219BF78F4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x7374726F7073)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73657069636572)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_21908DB1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  if (a1 <= 3u)
  {
    v3 = 0x65644970756F7267;
    v6 = 0xEF7265696669746ELL;
    if (a1 != 2)
    {
      v3 = 0x6E656449646E696BLL;
      v6 = 0xEE00726569666974;
    }

    v7 = 0x446873696C627570;
    v8 = 0xEB00000000657461;
    if (!a1)
    {
      v7 = 0x4164657461657263;
      v8 = 0xE900000000000074;
    }

    v9 = a1 <= 1u;
  }

  else
  {
    v3 = 0x4449656C7A7A7570;
    v4 = 0x7472416F69647561;
    v5 = 0xEF734449656C6369;
    if (a1 != 7)
    {
      v4 = 0x4449657069636572;
      v5 = 0xE900000000000073;
    }

    if (a1 == 6)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v3 = v4;
      v6 = v5;
    }

    v7 = 0x49656C6369747261;
    v8 = 0xEA00000000007344;
    if (a1 != 4)
    {
      v7 = 0x7344496575737369;
      v8 = 0xE800000000000000;
    }

    v9 = a1 <= 5u;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEF7265696669746ELL;
        if (v10 != 0x65644970756F7267)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0xEE00726569666974;
        if (v10 != 0x6E656449646E696BLL)
        {
          goto LABEL_48;
        }
      }
    }

    else if (a2)
    {
      v2 = 0xEB00000000657461;
      if (v10 != 0x446873696C627570)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v2 = 0xE900000000000074;
      if (v10 != 0x4164657461657263)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_46;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v12 = 0x656C7A7A7570;
    }

    else
    {
      if (a2 == 7)
      {
        v2 = 0xEF734449656C6369;
        if (v10 != 0x7472416F69647561)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v12 = 0x657069636572;
    }

    if (v10 != (v12 & 0xFFFFFFFFFFFFLL | 0x4449000000000000))
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (a2 == 4)
  {
    v2 = 0xEA00000000007344;
    if (v10 != 0x49656C6369747261)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    if (v10 != 0x7344496575737369)
    {
LABEL_48:
      v13 = sub_219BF78F4();
      goto LABEL_49;
    }
  }

LABEL_46:
  if (v11 != v2)
  {
    goto LABEL_48;
  }

  v13 = 1;
LABEL_49:

  return v13 & 1;
}

uint64_t sub_21908DE1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x4164657461657263;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE600000000000000;
    v13 = 0x7370756F7267;
    if (a1 != 2)
    {
      v13 = 0x4C52557465737361;
      v12 = 0xE900000000000073;
    }

    v14 = 0x4164657461647075;
    if (!a1)
    {
      v14 = 0x4164657461657263;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v4 <= 1)
    {
      v11 = 0xE900000000000074;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = 0x4974657373417661;
    v6 = 0xEA00000000007344;
    v7 = 0xED00007344497965;
    if (a1 != 7)
    {
      v7 = 0xEE00734952557965;
    }

    if (a1 != 6)
    {
      v5 = 0x4B74657373417661;
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    v9 = 0x8000000219CD7E10;
    if (a1 != 4)
    {
      v8 = 0x444964726F636572;
      v9 = 0xE900000000000073;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x7370756F7267)
        {
          goto LABEL_50;
        }
      }

      else if (v10 != 0x4C52557465737361)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (a2)
      {
        v3 = 0x4164657461647075;
      }

      v2 = 0xE900000000000074;
      if (v10 != v3)
      {
        goto LABEL_50;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0x8000000219CD7E10;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_50;
      }
    }

    else if (v10 != 0x444964726F636572)
    {
LABEL_50:
      v15 = sub_219BF78F4();
      goto LABEL_51;
    }
  }

  else if (a2 == 6)
  {
    v2 = 0xEA00000000007344;
    if (v10 != 0x4974657373417661)
    {
      goto LABEL_50;
    }
  }

  else if (a2 == 7)
  {
    v2 = 0xED00007344497965;
    if (v10 != 0x4B74657373417661)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v2 = 0xEE00734952557965;
    if (v10 != 0x4B74657373417661)
    {
      goto LABEL_50;
    }
  }

  if (v11 != v2)
  {
    goto LABEL_50;
  }

  v15 = 1;
LABEL_51:

  return v15 & 1;
}

uint64_t sub_21908E0E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7370756F7267;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736E6F6974636573;
    }

    else
    {
      v4 = 0x617461646174656DLL;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x446873696C627570;
    }

    else
    {
      v4 = 0x7370756F7267;
    }

    if (v3)
    {
      v5 = 0xEB00000000657461;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x736E6F6974636573;
  if (a2 != 2)
  {
    v7 = 0x617461646174656DLL;
  }

  if (a2)
  {
    v2 = 0x446873696C627570;
    v6 = 0xEB00000000657461;
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
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_219BF78F4();
  }

  return v10 & 1;
}

uint64_t sub_21908E238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6C6C6177796170;
  v6 = 0xE700000000000000;
  v7 = 0x64657461727563;
  if (a1 != 4)
  {
    v7 = 0x4C7974696C697475;
    v6 = 0xEC000000736B6E69;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x7478654E7075;
  if (a1 != 1)
  {
    v8 = 0x756F59726F66;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 1869768040;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6C6C6177796170)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x64657461727563)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEC000000736B6E69;
      if (v9 != 0x4C7974696C697475)
      {
LABEL_34:
        v12 = sub_219BF78F4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x7478654E7075)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x756F59726F66)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1869768040)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_21908E414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6775156;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646574756DLL;
    }

    else
    {
      v4 = 0x74756374726F6873;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6974736567677573;
    }

    else
    {
      v4 = 6775156;
    }

    if (v3)
    {
      v5 = 0xEA00000000006E6FLL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x646574756DLL;
  if (a2 != 2)
  {
    v8 = 0x74756374726F6873;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6974736567677573;
    v6 = 0xEA00000000006E6FLL;
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
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908E550(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6575737349;
  v6 = 0xE600000000000000;
  v7 = 0x657069636552;
  if (a1 != 4)
  {
    v7 = 0x706D6F636F747541;
    v6 = 0xEC0000006574656CLL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656C6369747241;
  if (a1 != 1)
  {
    v9 = 0x6369706F54;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6C656E6E616843;
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
      if (v10 != 0x6575737349)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x657069636552)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC0000006574656CLL;
      if (v10 != 0x706D6F636F747541)
      {
LABEL_34:
        v13 = sub_219BF78F4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C6369747241)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6369706F54)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6C656E6E616843)
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

uint64_t sub_21908E730(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE900000000000073;
  v6 = 0xE400000000000000;
  v7 = 1936154996;
  if (a1 != 4)
  {
    v7 = 0xD000000000000011;
    v6 = 0x8000000219CD8C40;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656372756F73;
  if (a1 != 1)
  {
    v9 = 0x746E496863746566;
    v8 = 0xED00006C61767265;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x444964726F636572;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656E696C64616568)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936154996)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x8000000219CD8C40;
      if (v10 != 0xD000000000000011)
      {
LABEL_34:
        v13 = sub_219BF78F4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656372756F73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED00006C61767265;
      if (v10 != 0x746E496863746566)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x444964726F636572)
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

uint64_t sub_21908E91C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F69647561;
  v6 = 0x6E69776F6C6C6F66;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656E697A6167616DLL;
  if (a1 != 1)
  {
    v9 = 0x7374726F7073;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x7961646F74;
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
      if (v10 != 0x6F69647561)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
LABEL_34:
        v13 = sub_219BF78F4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656E697A6167616DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7374726F7073)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x7961646F74)
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

uint64_t sub_21908EAEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C7A7A7570;
  if (a1 != 5)
  {
    v5 = 7107189;
    v4 = 0xE300000000000000;
  }

  v6 = 0x65764574726F7073;
  v7 = 0xEA0000000000746ELL;
  if (a1 != 3)
  {
    v6 = 0x6546656C7A7A7570;
    v7 = 0xEA00000000006465;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 6775156;
  if (a1 != 1)
  {
    v9 = 0x6575737369;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E696C64616568;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 0xE300000000000000;
        if (v10 != 6775156)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v10 != 0x6575737369)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v10 != 0x656E696C64616568)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 0xE600000000000000;
      if (v10 != 0x656C7A7A7570)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE300000000000000;
      if (v10 != 7107189)
      {
LABEL_39:
        v15 = sub_219BF78F4();
        goto LABEL_40;
      }
    }
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0x65764574726F7073;
      v13 = 29806;
    }

    else
    {
      v12 = 0x6546656C7A7A7570;
      v13 = 25701;
    }

    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v10 != v12)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v14)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_21908ECF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6C75736552706F54;
  v4 = a1;
  v5 = 0x6365526465766153;
  v6 = 0xEC00000073657069;
  if (a1 != 6)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7374726F7053;
  if (a1 != 4)
  {
    v8 = 0x73657069636552;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x736C656E6E616843;
  if (a1 != 2)
  {
    v10 = 0x736369706F54;
    v9 = 0xE600000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x736569726F7453;
  if (!a1)
  {
    v12 = 0x6C75736552706F54;
    v11 = 0xE900000000000074;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
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
        v2 = 0xEC00000073657069;
        if (v13 != 0x6365526465766153)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6E776F6E6B6E75)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xE700000000000000;
        v15 = 0x657069636552;
LABEL_34:
        if (v13 != (v15 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE600000000000000;
      if (v13 != 0x7374726F7053)
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
        v2 = 0xE800000000000000;
        if (v13 != 0x736C656E6E616843)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE600000000000000;
      v3 = 0x736369706F54;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      v15 = 0x6569726F7453;
      goto LABEL_34;
    }

    if (v13 != v3)
    {
LABEL_41:
      v16 = sub_219BF78F4();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t sub_21908EF4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x444970756F7267;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x6552686372616573;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000219CD8060;
    }

    else
    {
      v5 = 0xED000073746C7573;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x72754370756F7267;
    }

    else
    {
      v4 = 0x444970756F7267;
    }

    if (v3)
    {
      v5 = 0xEB00000000726F73;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x8000000219CD8060;
  if (a2 != 2)
  {
    v7 = 0x6552686372616573;
    v8 = 0xED000073746C7573;
  }

  if (a2)
  {
    v2 = 0x72754370756F7267;
    v6 = 0xEB00000000726F73;
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
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21908F0B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x313434333431;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0x8000000219CD7820;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x343434333431;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x303634333431;
    }

    else
    {
      v3 = 0x353534333431;
    }

    v4 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x313434333431;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x8000000219CD7820;
    }

    if (v3 != v6)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (a2 == 2)
    {
      if (v3 != 0x343434333431)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 3)
    {
      if (v3 != 0x303634333431)
      {
        goto LABEL_32;
      }
    }

    else if (v3 != 0x353534333431)
    {
LABEL_32:
      v7 = sub_219BF78F4();
      goto LABEL_33;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_32;
  }

  v7 = 1;
LABEL_33:

  return v7 & 1;
}

uint64_t sub_21908F238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEB00000000706F54;
  v4 = 0x41746E6573657270;
  if (a1 == 2)
  {
    v4 = 0x6F546C6C6F726373;
  }

  else
  {
    v3 = 0xEE006C61646F4D73;
  }

  v5 = 0xD000000000000010;
  v6 = 0x8000000219CD77E0;
  if (a1)
  {
    v5 = 0x657370616C6C6F63;
    v6 = 0xEF72616265646953;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6F546C6C6F726373;
    }

    else
    {
      v11 = 0x41746E6573657270;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000706F54;
    }

    else
    {
      v10 = 0xEE006C61646F4D73;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x657370616C6C6F63;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEF72616265646953;
    }

    else
    {
      v10 = 0x8000000219CD77E0;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_219BF78F4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_21908F3B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000070756FLL;
  v3 = 0x724774616D726F66;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x72656874616577;
  v7 = 0xD00000000000001BLL;
  v8 = 0x8000000219CD7220;
  if (a1 != 4)
  {
    v7 = 0x656C65536F726568;
    v8 = 0xED00006E6F697463;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v10 = 0x736E6F6974636573;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x724774616D726F66;
    v9 = 0xEB0000000070756FLL;
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
      v2 = 0xE700000000000000;
      if (v11 != 0x72656874616577)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000219CD7220;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xED00006E6F697463;
      if (v11 != 0x656C65536F726568)
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
        v2 = 0xE700000000000000;
        if (v11 != 0x6C656E6E616863)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x736E6F6974636573;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_219BF78F4();
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

void static NewsActivity2.feed(_:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  *(v8 + 56) = 0u;
  *(v8 + 96) = -1;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0;
  *a2 = v8 | 0x2000000000000004;

  sub_21908FD7C(v3, v4, v5, v6, v7);
}

double static NewsActivity2.feedL2(_:referralContext:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v4;
  *(v13 + 32) = v5;
  *(v13 + 40) = v6;
  *(v13 + 48) = v11;
  *(v13 + 56) = 0;
  *(v13 + 64) = v7;
  *(v13 + 72) = v8;
  *(v13 + 80) = v9;
  *(v13 + 88) = v10;
  *(v13 + 96) = v12;
  *a3 = v13 | 0x2000000000000006;
  sub_21908FD7C(v3, v4, v5, v6, v11);

  return sub_218F20858(v7, v8, v9, v10, v12);
}

uint64_t sub_21908F748@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2190924DC(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_219BDD944();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190924DC(0, &qword_280E90938, MEMORY[0x277D33250], v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  sub_219BF2394();
  v17 = sub_219BF2364();
  sub_219092F4C(v2, v13, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  sub_2190925A0(v13, v10, MEMORY[0x277D2FB40]);
  sub_219BDD8C4();
  sub_218790034(v10, MEMORY[0x277D2FB40]);
  sub_219BF2354();

  v18 = sub_219BF12B4();
  LODWORD(v4) = (*(*(v18 - 8) + 48))(v16, 1, v18);
  sub_219092EC0(v16);
  if (v4 == 1 && ((sub_219092F4C(v2, v13, type metadata accessor for NewsActivity2.Article), , sub_2190925A0(v13, v10, MEMORY[0x277D2FB40]), sub_219BDD8B4(), sub_218790034(v10, MEMORY[0x277D2FB40]), v19 = sub_219BDB954(), v20 = *(v19 - 8), (*(v20 + 48))(v7, 1, v19) == 1) || (v21 = sub_219BDB854(), (*(v20 + 8))(v7, v19), v22 = [v21 fc:0 isHardPaywallNewsArticleURL:?], v21, v22)))
  {
    v23 = MEMORY[0x277D34D30];
  }

  else
  {
    *a1 = 0;
    v23 = MEMORY[0x277D34D38];
  }

  v24 = *v23;
  v25 = sub_219BE3D44();
  return (*(*(v25 - 8) + 104))(a1, v24, v25);
}

uint64_t sub_21908FB78(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = sub_219BDD944();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219092F4C(v3, v9, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  v10 = sub_2190925A0(v9, v6, MEMORY[0x277D2FB40]);
  v11 = a1(v10);
  sub_218790034(v6, MEMORY[0x277D2FB40]);
  return v11;
}

uint64_t NewsActivity2.Article.articleRouteModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219092F4C(v1, v5, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  return sub_2190925A0(v5, a1, MEMORY[0x277D2FB40]);
}

void sub_21908FD7C(id result, void *a2, void *a3, uint64_t a4, char a5)
{
  if (a5 == 2 || a5 == 1)
  {

    v6 = a3;
  }

  else
  {
    if (a5)
    {
      return;
    }

    swift_unknownObjectRetain();
    v6 = a2;
  }

  v7 = v6;
}

uint64_t NewsActivity2.Feed.identifier.getter()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
  }

  else
  {
    v2 = [*v0 identifier];
    v1 = sub_219BF5414();
  }

  return v1;
}

char *NewsActivity2.activityTraits.getter()
{
  v1 = sub_219BDE664();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = *v0;
  v12 = (v11 >> 58) & 0x3C | (v11 >> 1) & 3;
  if (v12 > 0x26)
  {
    goto LABEL_14;
  }

  if (((1 << ((v11 >> 58) & 0x3C | (v11 >> 1) & 3)) & 0x4000010C00) != 0)
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v14 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x18);
    v15 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x20);
    v16 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x28);
    v17 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x30);
    v18 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x40);
    v19 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x48);
    v20 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x50);
    v21 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x58);
    v22 = *((v11 & 0xFFFFFFFFFFFFFF9) + 0x60);
    v32 = v13;
    sub_21908FD7C(v13, v14, v15, v16, v17);
    sub_218F20858(v18, v19, v20, v21, v22);
    v23 = v15;
    if (v17)
    {
      v23 = v16;
      if (v17 != 1)
      {
        v23 = v16;
      }
    }

    sub_21896FBB0(v32, v14, v15, v16, v17);
    sub_218DFAEC4(v18, v19, v20, v21, v22);
    return v23;
  }

  if (((1 << ((v11 >> 58) & 0x3C | (v11 >> 1) & 3)) & 0x300000) != 0)
  {
    v23 = *((v11 & 0xFFFFFFFFFFFFFF9) + *(&unk_219C59388 + ((*((v11 & 0xFFFFFFFFFFFFFF9) + 0x38) >> 59) & 0x18)));

    return v23;
  }

  if (v12 != 30)
  {
LABEL_14:
    if ((v12 - 1) >= 2)
    {
      if (v12 != 8)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      sub_2187B2C48(0);
    }

    v28 = swift_projectBox();
    sub_219092F4C(v28, v10, type metadata accessor for NewsActivity2.Article);
    sub_2190925A0(v10, v7, type metadata accessor for NewsActivity2.Article);
    sub_2187B2DA0(0);
    v23 = *&v7[*(v29 + 48)];
    sub_218790034(v7, MEMORY[0x277D2FB40]);
    return v23;
  }

  v24 = sub_219BDE634();
  (*(v2 + 104))(v4, *MEMORY[0x277D30088], v1);
  v25 = sub_219089150(v4, v24, MEMORY[0x277D30090], &qword_27CC15988, MEMORY[0x277D30090], MEMORY[0x277D30098]);

  (*(v2 + 8))(v4, v1);
  if (!v25)
  {

    return MEMORY[0x277D84F90];
  }

  v23 = sub_2191F8570(0, 1, 1, MEMORY[0x277D84F90]);
  v27 = *(v23 + 2);
  v26 = *(v23 + 3);
  if (v27 >= v26 >> 1)
  {
    v23 = sub_2191F8570((v26 > 1), v27 + 1, 1, v23);
  }

  *(v23 + 2) = v27 + 1;
  v23[v27 + 32] = 1;
  return v23;
}

uint64_t static NewsActivity2.recipeBoxL2.getter@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *a1 = result | 0x7000000000000006;
  return result;
}

void sub_2190902E8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v15 = *v1;
  v16 = (v15 >> 58) & 0x3C | (v15 >> 1) & 3;
  if (v16 <= 7)
  {
    if ((v16 - 3) < 5 || (v16 - 1) >= 2)
    {
      goto LABEL_4;
    }

    sub_2187B2C48(0);
LABEL_10:
    v18 = swift_projectBox();
    sub_219092F4C(v18, v14, type metadata accessor for NewsActivity2.Article);
    sub_219092F4C(v14, v11, type metadata accessor for NewsActivity2.Article);
    sub_2187B2DA0(0);

    sub_2190925A0(v11, v8, MEMORY[0x277D2FB40]);
    v19 = sub_219BDD8C4();
    v21 = v20;
    sub_218790034(v8, MEMORY[0x277D2FB40]);
    sub_218790034(v14, type metadata accessor for NewsActivity2.Article);
    *a1 = v19;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    return;
  }

  if (v16 > 0x3C)
  {
    goto LABEL_10;
  }

  if (((1 << ((v15 >> 58) & 0x3C | (v15 >> 1) & 3)) & 0x17FFFFFFFF0FFE00) == 0)
  {
    if (((1 << ((v15 >> 58) & 0x3C | (v15 >> 1) & 3)) & 0xF00000) != 0)
    {
      memmove(&__dst, ((v15 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v22 = __dst;
      v23 = v51 >> 6;
      if (v23)
      {
        if (v23 == 1)
        {
        }

        else
        {
          v37[0] = __dst;
          v37[1] = v46;
          v37[2] = v47;
          v37[3] = v48;
          v37[4] = v49;
          v38 = v50 & 1;
          v22 = sub_219BD47C0();
          v24 = v29;
        }

        *a1 = v22;
        *(a1 + 8) = v24;
        v17 = 1;
      }

      else
      {
        v39 = __dst;
        v40 = v46;
        v41 = v47;
        v42 = v48;
        v43 = v49;
        v44 = v50 & 1;
        sub_219092568(&__dst, v37);
        v25 = [sub_219BD4870() identifier];
        v26 = sub_219BF5414();
        v28 = v27;

        sub_218AAFFC4(&__dst);
        *a1 = v26;
        *(a1 + 8) = v28;
        v17 = 1;
      }

      goto LABEL_5;
    }

    if (v16 == 59)
    {
      v30 = swift_projectBox();
      sub_219092F4C(v30, v5, type metadata accessor for PuzzleModel);
      v31 = *v5;
      v32 = *(v5 + 1);
      if (v5[16])
      {
        v33 = [swift_unknownObjectRetain() identifier];
        v34 = sub_219BF5414();
        v36 = v35;

        sub_218B083E8(v31, v32, 1);
        v31 = v34;
        v32 = v36;
      }

      else
      {
      }

      sub_218790034(v5, type metadata accessor for PuzzleModel);
      *a1 = v31;
      *(a1 + 8) = v32;
      v17 = 2;
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_4:
  *a1 = 0;
  *(a1 + 8) = 0;
  v17 = -1;
LABEL_5:
  *(a1 + 16) = v17;
}

uint64_t NewsActivity2.Tip.description.getter()
{
  v1 = *(v0 + 8) >> 61;
  v2 = 0x6465776F6C6C6F66;
  v3 = 0x73756C507377656ELL;
  if (v1 != 6)
  {
    v3 = 0x6843657069636572;
  }

  if (v1 == 4)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v1 <= 5)
  {
    v3 = v4;
  }

  v5 = 0x63537374726F7073;
  if (v1 != 2)
  {
    v5 = 0x7548656C7A7A7570;
  }

  if (v1)
  {
    v2 = 0x74756374726F6873;
  }

  if (v1 > 1)
  {
    v2 = v5;
  }

  if (v1 <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

double sub_219090828()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  qword_27CC15930 = v0 | 0x4000000000000002;
  return result;
}

unint64_t static NewsActivity2.defaultActivity.getter@<X0>(void *a1@<X8>)
{
  if (qword_27CC08268 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27CC15930;
  *a1 = qword_27CC15930;

  return sub_2189EB264(v2);
}

double sub_2190908FC@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = swift_allocObject();
  v13 = [a1 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  *(v12 + 16) = v14;
  *(v12 + 24) = v16;
  *(v12 + 32) = a2;
  *(v12 + 40) = 0;
  *(v12 + 48) = 1;
  *(v12 + 56) = a4;
  *(v12 + 64) = v7;
  *(v12 + 72) = v8;
  *(v12 + 80) = v9;
  *(v12 + 88) = v10;
  *(v12 + 96) = v11;
  *a5 = v12 | 0x2000000000000006;
  v17 = a2;

  return sub_218F20858(v7, v8, v9, v10, v11);
}

uint64_t NewsActivity2.Issue.identifier.getter(__n128 a1)
{
  v2 = *v1;
  v6 = *(v1 + 47) >> 6;
  if (v6)
  {
    if (v6 == 1)
    {
    }

    else
    {
      return sub_219BD47C0();
    }
  }

  else
  {
    LOBYTE(v9) = v1[5] & 1;
    v5 = v1[4];
    v3 = v1[3];
    v4 = v1[2];
    v7 = [sub_219BD4870() identifier];
    v2 = sub_219BF5414();
  }

  return v2;
}

uint64_t sub_219090ACC()
{
  v13 = *v0;
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  sub_2190924DC(0, &qword_280E8BDB0, MEMORY[0x277D6E1C8], MEMORY[0x277D84560]);
  v1 = sub_219BE8B94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = *MEMORY[0x277D6E1C0];
  v7 = *(v2 + 104);
  v7(v5 + v4, v6, v1);
  v8 = *MEMORY[0x277D6E1B0];
  v7(v5 + v4 + v3, v8, v1);
  v16 = sub_2188441E8(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0EE20;
  v7(v9 + v4, v6, v1);
  v7(v9 + v4 + v3, v8, v1);
  v7(v9 + v4 + 2 * v3, *MEMORY[0x277D6E1A8], v1);
  v7(v9 + v4 + 3 * v3, *MEMORY[0x277D6E1B8], v1);
  v10 = sub_2188441E8(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_5;
    }

    v11 = v14 + OBJC_IVAR___TSFeedViewContext_feedTagType;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) != 0 || *v11 != 1)
    {
      goto LABEL_5;
    }
  }

  else if ([v13 tagType] != 1)
  {
LABEL_5:

    return v10;
  }

  return v16;
}

uint64_t NewsActivity2.Article.activityTraits.getter()
{
  v1 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219092F4C(v0, v3, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);
  v5 = *&v3[*(v4 + 48)];
  sub_218790034(v3, MEMORY[0x277D2FB40]);
  return v5;
}

NewsUI2::NewsActivity2::Trait_optional __swiftcall NewsActivity2.Trait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NewsActivity2.Trait.rawValue.getter()
{
  v1 = 0x657370616C6C6F63;
  v2 = 0x6F546C6C6F726373;
  if (*v0 != 2)
  {
    v2 = 0x41746E6573657270;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_219090FE4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2190910CC(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2190911A0(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_219091290(unint64_t *a1@<X8>)
{
  v2 = 0xEF72616265646953;
  v3 = 0x657370616C6C6F63;
  v4 = 0xEB00000000706F54;
  v5 = 0x6F546C6C6F726373;
  if (*v1 != 2)
  {
    v5 = 0x41746E6573657270;
    v4 = 0xEE006C61646F4D73;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000219CD77E0;
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

uint64_t NewsActivity2.Issue.transitionIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 47) >> 6;
  if (v6)
  {
    if (v6 == 1)
    {
    }

    else
    {
      v5 = sub_219BD47C0();
      v4 = v9;
    }
  }

  else
  {
    v7 = [sub_219BD4870() identifier];
    v5 = sub_219BF5414();
    v4 = v8;
  }

  *a1 = v5;
  a1[1] = v4;
  v10 = *MEMORY[0x277D6E648];
  v11 = sub_219BE94F4();
  v14 = *(v11 - 8);
  (*(v14 + 104))(a1, v10, v11);
  v12 = *(v14 + 56);

  return v12(a1, 0, 1, v11);
}

id NewsActivity2.Issue.replacingRouteModel(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v2[6];
  v10 = v2[5] >> 62;
  if (!v10)
  {
    goto LABEL_4;
  }

  if (v10 == 1)
  {
    v9 = v2[2];
LABEL_4:
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 47) = 0;
    *(a2 + 45) = 0;
    *(a2 + 41) = 0;
    *(a2 + 48) = v9;
    goto LABEL_6;
  }

  v13 = v2 + 7;
  v12 = v2[7];
  v11 = v13[1];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1 | 0x8000000000000000;
  *(a2 + 48) = v9;
  *(a2 + 56) = v12;
  *(a2 + 64) = v11;

LABEL_6:

  return sub_21896FE24(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_21909163C(__n128 a1)
{
  v2 = *v1;
  v6 = *(v1 + 47) >> 6;
  if (v6)
  {
    if (v6 == 1)
    {
    }

    else
    {
      return sub_219BD47C0();
    }
  }

  else
  {
    LOBYTE(v9) = v1[5] & 1;
    v5 = v1[4];
    v3 = v1[3];
    v4 = v1[2];
    v7 = [sub_219BD4870() identifier];
    v2 = sub_219BF5414();
  }

  return v2;
}

NewsUI2::NewsActivity2::Article::Trait_optional __swiftcall NewsActivity2.Article.Trait.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t NewsActivity2.Article.transitionIdentifier.getter()
{
  v1 = v0;
  v2 = sub_219BDD944();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219092F4C(v1, v7, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  sub_2190925A0(v7, v4, MEMORY[0x277D2FB40]);
  sub_219BDD8D4();
  return sub_218790034(v4, MEMORY[0x277D2FB40]);
}

void *sub_21909189C(uint64_t a1, SEL *a2, uint64_t (*a3)(char *))
{
  v6 = sub_219BDD424();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD944();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_219092F4C(a1, &v25 - v14, MEMORY[0x277D2FB40]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219092FB4(0, &qword_280EE37C0, sub_21909303C, MEMORY[0x277D2FB40], " route ");
    v17 = v16;
    v18 = swift_projectBox();
    sub_219092F4C(v18 + *(v17 + 48), v12, MEMORY[0x277D2FB40]);
    v19 = a3(v12);
    sub_218790034(v12, MEMORY[0x277D2FB40]);
  }

  else
  {
    sub_219BDEA64();
    v19 = sub_219BDD414();
    (*(v7 + 8))(v9, v6);
    if (v19)
    {
      v20 = [v19 *a2];
      swift_unknownObjectRelease();
      if (v20)
      {
        v19 = sub_219BF5414();
      }

      else
      {

        v19 = 0;
      }
    }

    else
    {
    }

    sub_219092FB4(0, &qword_280EE8A90, MEMORY[0x277D30268], MEMORY[0x277D2FF20], " articleNavigationAction ");
    v22 = *(v21 + 48);
    v23 = sub_219BDE294();
    (*(*(v23 - 8) + 8))(&v15[v22], v23);
  }

  return v19;
}

uint64_t sub_219091BC8()
{
  v1 = sub_219BDD944();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219092F4C(v0, v6, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  sub_2190925A0(v6, v3, MEMORY[0x277D2FB40]);
  v7 = sub_219BDD8A4();
  sub_218790034(v3, MEMORY[0x277D2FB40]);
  return v7;
}

void sub_219091CFC(uint64_t a1@<X8>)
{
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      v8 = *(v1 + 16);
      v9 = OBJC_IVAR___TSFeedViewContext_sourceURL;
      swift_beginAccess();
      sub_2188383F8(v8 + v9, a1);
    }

    else
    {
      sub_219BF7514();
      __break(1u);
    }
  }

  else
  {
    v3 = *v1;
    sub_219BF7314();

    v4 = [v3 identifier];
    v5 = sub_219BF5414();
    v7 = v6;

    MEMORY[0x21CECC330](v5, v7);

    sub_219BDB914();
  }
}

BOOL NewsActivity2.Feed.shouldPresentAsModal.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = *(v0 + 16);
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = (v1 + 32);

  do
  {
    v5 = v2-- != 0;
    v6 = v5;
    if (!v5)
    {
      break;
    }

    if (*v3 > 2u)
    {

      break;
    }

    v4 = sub_219BF78F4();

    ++v3;
  }

  while ((v4 & 1) == 0);

  return v6;
}

uint64_t sub_219091FC4()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
  }

  else
  {
    v2 = [*v0 identifier];
    v1 = sub_219BF5414();
  }

  return v1;
}

uint64_t sub_219092084@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v5 = *(v3 + 8) >> 61;
  if (v5 <= 3)
  {
    if (v5 <= 1)
    {
      if (!v5)
      {
        swift_unknownObjectRetain();
        sub_219BEB664();

        return swift_unknownObjectRelease();
      }

      if (qword_27CC08690 != -1)
      {
        swift_once();
      }

      v7 = sub_219BEB674();
      v8 = v7;
      v9 = qword_27CCD8CC0;
      goto LABEL_29;
    }

    if (v5 == 2)
    {

      return MEMORY[0x28218F9A8](a3, a1);
    }

    if (qword_280EE35B8 != -1)
    {
      swift_once();
    }

    v7 = sub_219BEB674();
    v8 = v7;
    v9 = qword_280F62428;
LABEL_29:
    v10 = __swift_project_value_buffer(v7, v9);
    v11 = *(*(v8 - 8) + 16);

    return v11(a2, v10, v8);
  }

  if (v5 <= 5)
  {
    if (v5 == 4)
    {
      if (qword_280EE35B0 != -1)
      {
        swift_once();
      }

      v7 = sub_219BEB674();
      v8 = v7;
      v9 = qword_280F62410;
    }

    else
    {
      if (qword_280EE35C8 != -1)
      {
        swift_once();
      }

      v7 = sub_219BEB674();
      v8 = v7;
      v9 = qword_280F62440;
    }

    goto LABEL_29;
  }

  if (v5 == 6)
  {

    return MEMORY[0x28218F9B8](a3, a1);
  }

  else
  {

    return MEMORY[0x28218F9B0](a3, a1);
  }
}

uint64_t sub_2190922D8()
{
  v1 = *(v0 + 8) >> 61;
  v2 = 0x6465776F6C6C6F66;
  v3 = 0x73756C507377656ELL;
  if (v1 != 6)
  {
    v3 = 0x6843657069636572;
  }

  if (v1 == 4)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v1 <= 5)
  {
    v3 = v4;
  }

  v5 = 0x63537374726F7073;
  if (v1 != 2)
  {
    v5 = 0x7548656C7A7A7570;
  }

  if (v1)
  {
    v2 = 0x74756374726F6873;
  }

  if (v1 > 1)
  {
    v2 = v5;
  }

  if (v1 <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Bool __swiftcall NewsActivity2.isSupported(with:)(UITraitCollection with)
{
  if (((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3) != 0xC)
  {
    return 1;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 + 1 > 7 || ((1 << (v4 + 1)) & 0xD9) != 0)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  if (v4 != 1)
  {
    return 0;
  }

  return [(objc_class *)with.super.isa horizontalSizeClass]== 1;
}

void sub_2190924DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_219092540(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

double sub_219092554(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2190925A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_219092608(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

double sub_21909261C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_219092634()
{
  result = qword_27CC15948;
  if (!qword_27CC15948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15948);
  }

  return result;
}

unint64_t sub_21909268C()
{
  result = qword_27CC15950;
  if (!qword_27CC15950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15950);
  }

  return result;
}

unint64_t sub_2190926E4()
{
  result = qword_27CC15958;
  if (!qword_27CC15958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15958);
  }

  return result;
}

unint64_t sub_21909273C()
{
  result = qword_27CC15960;
  if (!qword_27CC15960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15960);
  }

  return result;
}

uint64_t sub_219092790(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x44 && *(a1 + 8))
  {
    return (*a1 + 68);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x43)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2190927EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x43)
  {
    *result = a2 - 68;
    if (a3 >= 0x44)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x44)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_219092850(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x3C)
  {
    *result = ((a2 << 58) | (2 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 60)) | 0xF000000000000000;
  }

  return result;
}

uint64_t sub_2190928C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
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

double sub_219092914(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2190929BC(uint64_t a1, uint64_t a2)
{
  sub_2187B2DA0(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219092A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187B2DA0(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

void sub_219092AC4(uint64_t a1)
{
  type metadata accessor for NewsActivity2.Article(319);
  if (v1 <= 0x3F)
  {
    sub_218AAFD24(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsUI217SearchRequestDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_219092BBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 91))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 90);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219092BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 75) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 90) = -a2;
    }
  }

  return result;
}

uint64_t sub_219092C4C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 74) = 0u;
    v2 = a2 - 2;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 90) = a2;
  return result;
}

uint64_t sub_219092CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219092CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_219092D30(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_219092D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FF9 && *(a1 + 24))
  {
    return (*a1 + 8185);
  }

  v3 = (((*(a1 + 8) >> 51) >> 10) | (8 * ((*(a1 + 8) >> 51) & 0x200 | (((*(a1 + 8) >> 1) & 3) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x1FFF;
  if (v3 >> 3 >= 0x3FF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_219092DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 8185;
    if (a3 >= 0x1FF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0x3FF | ((-a2 & 0x1FFF) << 10);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xF000000000000006 | (v3 << 51) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

void *sub_219092E78(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF9 | (a2 << 61);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_219092EC0(uint64_t a1)
{
  sub_2190924DC(0, &qword_280E90938, MEMORY[0x277D33250], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219092F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219092FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_21909303C()
{
  result = qword_280EE37C8;
  if (!qword_280EE37C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE37C8);
  }

  return result;
}

unint64_t sub_2190930A0()
{
  result = qword_27CC15978;
  if (!qword_27CC15978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15978);
  }

  return result;
}

uint64_t sub_2190930F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21909315C()
{
  v1 = *v0;
  v2 = swift_allocObject();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for FeedMastheadModel();
  v5 = swift_allocObject();
  v5[3] = v3;
  v5[4] = v4;
  v5[2] = 0;
  *(v2 + 16) = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v2 | 0x6000000000000000;
}

void sub_21909321C(uint64_t a1)
{
  sub_219093424(319, &qword_280E8F130, type metadata accessor for MagazineCategoryConfig);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MagazineCategoryConfig(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2190932E4(uint64_t a1)
{
  type metadata accessor for MagazineCatalogSectionDescriptor.Categories(319);
  if (v1 <= 0x3F)
  {
    sub_21909336C();
    if (v2 <= 0x3F)
    {
      sub_21909339C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_21909336C()
{
  result = qword_27CC159B0;
  if (!qword_27CC159B0)
  {
    result = &type metadata for MagazineGridModel;
    atomic_store(&type metadata for MagazineGridModel, &qword_27CC159B0);
  }

  return result;
}

void sub_21909339C(uint64_t a1)
{
  if (!qword_27CC159B8)
  {
    sub_219093424(255, &qword_27CC159C0, sub_2189537DC);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC159B8);
    }
  }
}

void sub_219093424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF5B14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219093478()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219093934(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2190939FC(v4, type metadata accessor for MagazineCatalogSectionDescriptor);
    return 0x69726F6765746163;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v6 = *v4;
LABEL_12:

    return v6;
  }

  v6 = v4[3];
  v7 = v4[4];
  if (!v7)
  {

    sub_218EC2854(v6, 0);

    return 0x697A6167616D796DLL;
  }

  if (v7 == 1)
  {

    sub_218EC2854(v6, 1uLL);

    return 0x7372616579;
  }

  if (v7 != 2)
  {

    sub_218EC2854(v6, v7);
    goto LABEL_12;
  }

  sub_218EC2854(v6, 2uLL);

  return 0x64616F6C6E776F64;
}

uint64_t sub_219093674(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219093934(v4, v3);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v5 = *v3;
  }

  else
  {
    sub_2190939FC(v3, type metadata accessor for MagazineCatalogSectionDescriptor);
    return 0;
  }

  return v5;
}

uint64_t sub_21909373C()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219093934(v1, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2190939FC(v7, type metadata accessor for MagazineCatalogSectionDescriptor);
    return 0;
  }

  else
  {
    sub_219093998(v7, v4);
    if (v4[*(v2 + 24) + 8] - 1 >= 4)
    {
      v9 = sub_219BF5544();
    }

    else
    {
      v9 = 0;
    }

    sub_2190939FC(v4, type metadata accessor for MagazineCatalogSectionDescriptor.Categories);
    return v9;
  }
}

void sub_2190938A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (sub_219418338(*a1, *a2) & 1) != 0 && (sub_218BDC7F0())
  {
    v6 = *(a3 + 24);
    v7 = a1 + v6;
    v8 = *(a1 + v6);
    v9 = a2 + v6;
    v10 = *v9;
    v11 = v9[8];
    v12 = v7[8];

    sub_218FB951C(v8, v12, v10, v11);
  }
}

uint64_t sub_219093934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219093998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190939FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219093A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v27 - v8);
  sub_219093E48(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v12[*(v13 + 56)];
  sub_219093934(a1, v12);
  sub_219093934(a2, v14);
  type metadata accessor for MagazineCatalogSectionDescriptor(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_219093998(v12, v9);
      sub_219093998(v14, v6);
      if (sub_219418338(*v9, *v6) & 1) != 0 && (sub_218BDC7F0())
      {
        sub_218FB951C(*(v9 + *(v4 + 24)), *(v9 + *(v4 + 24) + 8), *(v6 + *(v4 + 24)), *(v6 + *(v4 + 24) + 8));
        v24 = v25;
      }

      else
      {
        v24 = 0;
      }

      sub_2190939FC(v6, type metadata accessor for MagazineCatalogSectionDescriptor.Categories);
      sub_2190939FC(v9, type metadata accessor for MagazineCatalogSectionDescriptor.Categories);
      return v24 & 1;
    }

    sub_2190939FC(v12, type metadata accessor for MagazineCatalogSectionDescriptor.Categories);
LABEL_14:
    sub_2190939FC(v14, type metadata accessor for MagazineCatalogSectionDescriptor);
    v24 = 0;
    return v24 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = *(v12 + 2);

    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v23 = *(v14 + 16);

      v24 = sub_2194182F0(v22, v23);

      return v24 & 1;
    }

    goto LABEL_14;
  }

  v16 = *(v12 + 1);
  v30 = *v12;
  v31 = v16;
  v32[0] = *(v12 + 2);
  *(v32 + 9) = *(v12 + 41);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_219093EAC(&v30);
    goto LABEL_14;
  }

  v17 = 0xEB0000000073656ELL;
  v18 = 0x697A6167616D796DLL;
  v19 = *(v14 + 16);
  v27 = *v14;
  v28 = v19;
  v29[0] = *(v14 + 32);
  *(v29 + 9) = *(v14 + 41);
  v20 = *&v32[0];
  if (*&v32[0])
  {
    if (*&v32[0] == 1)
    {
      v20 = 0xE500000000000000;
      v21 = 0x7372616579;
    }

    else if (*&v32[0] == 2)
    {
      v21 = 0x64616F6C6E776F64;
      v20 = 0xE900000000000073;
    }

    else
    {
      v21 = *(&v31 + 1);
    }
  }

  else
  {
    v21 = 0x697A6167616D796DLL;
    v20 = 0xEB0000000073656ELL;
  }

  sub_219093EAC(&v30);
  if (*&v29[0])
  {
    if (*&v29[0] == 1)
    {
      v17 = 0xE500000000000000;
      v18 = 0x7372616579;
    }

    else if (*&v29[0] == 2)
    {
      v18 = 0x64616F6C6E776F64;
      v17 = 0xE900000000000073;
    }

    else
    {
      v18 = *(&v28 + 1);
    }
  }

  sub_219093EAC(&v27);
  if (v21 == v18 && v20 == v17)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_219BF78F4();
  }

  return v24 & 1;
}

void sub_219093E48(uint64_t a1)
{
  if (!qword_27CC159C8)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC159C8);
    }
  }
}

id sub_219093F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v5 = sub_219BEEE54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_headlineConverter + 24);
  v12 = *(v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_headlineConverter + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_headlineConverter), v13);
  (*(v12 + 8))(a1, v13, v12);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_listeningProgressManager), *(v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_listeningProgressManager + 24));
  sub_219BDECC4();
  sub_219BEEE44();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = *(v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_commandCenter);
  v17 = *(v3 + OBJC_IVAR____TtC7NewsUI224AudioActionSheetProvider_commandCenter + 8);
  v18 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  v19 = sub_2195A419C(v15 != 0.0);
  v21 = v37;
  v20 = v38;
  sub_2195A41A0(v11, v19, v22, v37, v38, v16, v17, v15 != 0.0);
  v24 = v23;

  v36 = v24;
  [v18 addAction_];
  v25 = sub_218C148C0(v15 != 0.0);
  v27 = sub_2195A49F8(v25, v26, v21, v20, v11, v16, v17);

  if (v27)
  {
    [v18 addAction_];
  }

  v28 = sub_218C14A14(v15 != 0.0);
  v30 = sub_2195A4C94(v28, v29, v21, v20, v11, v16, v17);

  if (v30)
  {
    [v18 addAction_];
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v33 = sub_219BF53D4();

  v34 = [objc_opt_self() actionWithTitle:v33 style:1 handler:0];

  [v18 addAction_];
  sub_218EB8BCC(v11);
  return v18;
}

id AudioActionSheetProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioActionSheetProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioActionSheetProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_2190944C4(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  sub_21896FA3C(0);
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  v66 = &v62 - v6;
  v7 = sub_219BE8C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_219BDD944();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v21 = type metadata accessor for HistoryFeedRouteModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219095790(a1, v23, type metadata accessor for HistoryFeedRouteModel);
  v24 = v20;
  v25 = v67;
  sub_218B5E238(v23, v24, MEMORY[0x277D2FB40]);
  (*(v8 + 16))(v10, v25, v7);
  sub_219BE9424();
  (*(v12 + 104))(v14, *MEMORY[0x277D6E598], v11);
  sub_21900E980(&unk_280EE44E0, MEMORY[0x277D6E5A8], MEMORY[0x277D6E5B0]);
  v69 = v17;
  LOBYTE(a1) = sub_219BF53A4();
  v26 = *(v12 + 8);
  v70 = v11;
  v71 = v12 + 8;
  v26(v14, v11);
  if ((a1 & 1) == 0)
  {
    v27 = sub_219BE8BF4();
    if (v27)
    {
      v28 = v27;
      sub_218C1A2CC(v81);
      v29 = v81[0];
      if ((~v81[0] & 0xF000000000000007) != 0)
      {
        v61 = v69;
        sub_219BE6474();

        v26(v61, v70);
        sub_218D0E588(v72, MEMORY[0x277D2FB40]);
        return sub_218970170(v29);
      }
    }
  }

  v30 = v68;
  v31 = *(v68 + 112);
  sub_2187B2C48(0);
  v33 = v32;
  v34 = swift_allocBox();
  v36 = v35;
  v37 = *(v33 + 48);
  sub_2187B2DA0(0);
  v39 = *(v38 + 48);
  sub_219095790(v72, v36, MEMORY[0x277D2FB40]);
  v40 = MEMORY[0x277D84F90];
  *(v36 + v39) = MEMORY[0x277D84F90];
  *(v36 + v37) = v40;
  v67 = v34;
  v41 = v34 | 2;
  v42 = *(v30 + 64);
  v43 = sub_219BDFA44();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_218718690(v30 + 72, v81);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = v31;
  sub_2187B171C(v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v62 = v26;
  if (v75)
  {
    sub_21875F93C(&v74, v76);
    *&v74 = v41;
    v45 = sub_2194DA78C(v76);
    v68 = v46;
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_2187B1CC0(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v45 = qword_280ED32D8;
    v49 = qword_280ED32E0;
    v48 = qword_280ED32E8;

    v68 = v49;
    sub_2188202A8(v49);
  }

  v73 = v41;
  v75 = sub_219BDD274();
  *&v74 = v42;
  v50 = v65;
  sub_219095790(v44, v65, sub_21896FA3C);
  sub_2187B171C(v81, v76, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v42;
  sub_218B5E238(v50, v54 + v51, sub_21896FA3C);
  v55 = v54 + v52;
  v56 = v76[1];
  *v55 = v76[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v77;
  v57 = (v54 + v53);
  v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v57 = 0;
  v57[1] = 0;
  v59 = v68;
  *v58 = v45;
  v58[1] = v59;
  v58[2] = v48;
  swift_retain_n();

  sub_2188202A8(v59);
  sub_2186CF94C(0);
  sub_21900E980(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v59, v48);
  sub_2187B1CC0(v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v44, sub_21896FA3C);
  v62(v69, v70);
  sub_218D0E588(v72, MEMORY[0x277D2FB40]);
  sub_218806FD0(&v74);

  return result;
}

uint64_t sub_219094EB4(uint64_t a1)
{
  sub_21896F9B8(0);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v59 - v8;
  sub_21896FA3C(0);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v62 = sub_219BDD944();
  MEMORY[0x28223BE20](v62);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for HistoryFeedRouteModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219095790(a1, v23, type metadata accessor for HistoryFeedRouteModel);
  sub_218B5E238(v23, v20, MEMORY[0x277D2FB40]);
  v24 = *(v1 + 112);
  sub_2187B2C48(0);
  v26 = v25;
  v67 = swift_allocBox();
  v28 = v27;
  v29 = *(v26 + 48);
  sub_2187B2DA0(0);
  v31 = *(v30 + 48);
  v68 = v20;
  sub_219095790(v20, v28, MEMORY[0x277D2FB40]);
  v32 = MEMORY[0x277D84F90];
  *(v28 + v31) = MEMORY[0x277D84F90];
  v33 = v13;
  *(v28 + v29) = v32;
  v34 = *(v1 + 64);
  v35 = sub_219BDFA44();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  sub_218718690(v1 + 72, v72);
  v71[5] = v24;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v36 = sub_219BDC8C4();

  if (v36)
  {
    v37 = v28;
    v38 = v64;
    sub_219095790(v37, v64, type metadata accessor for NewsActivity2.Article);
    v39 = v63;
    sub_219095790(v38, v63, type metadata accessor for NewsActivity2.Article);

    sub_218B5E238(v39, v15, MEMORY[0x277D2FB40]);
    sub_218D0E588(v38, type metadata accessor for NewsActivity2.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = swift_projectBox();
      v41 = v59;
      sub_219095790(v40, v59, sub_21896F9B8);
      v42 = v61;
      sub_218B5E238(v41 + *(v60 + 48), v61, MEMORY[0x277D2FB40]);
      __swift_destroy_boxed_opaque_existential_1(v41);

      sub_2186C66AC();
      v43 = sub_219BF6F44();
      sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C09BA0;
      v45 = sub_219BDD8C4();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2186FC3BC();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      v48 = sub_219BF6214();
      sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v43, v48, v44);

      v49 = MEMORY[0x277D2FB40];
      sub_218D0E588(v42, MEMORY[0x277D2FB40]);
      sub_2187B1CC0(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218D0E588(v33, sub_21896FA3C);
      sub_218D0E588(v68, v49);

      return 0;
    }

    sub_218D0E588(v15, MEMORY[0x277D2FB40]);
  }

  v71[4] = v67 | 2;
  v71[3] = sub_219BDD274();
  v71[0] = v34;
  v50 = v66;
  sub_219095790(v33, v66, sub_21896FA3C);
  sub_2187B171C(v72, v69, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v52 = (v10 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v34;
  sub_218B5E238(v50, v53 + v51, sub_21896FA3C);
  v54 = v53 + v52;
  v55 = v69[1];
  *v54 = v69[0];
  *(v54 + 16) = v55;
  *(v54 + 32) = v70;
  v56 = (v53 + ((v52 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v56 = 0;
  v56[1] = 0;
  sub_2186CF94C(0);
  sub_21900E980(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v58 = sub_219BEB454();

  sub_2187B1CC0(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v33, sub_21896FA3C);
  sub_218D0E588(v68, MEMORY[0x277D2FB40]);
  sub_218806FD0(v71);

  return v58;
}

uint64_t sub_219095790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2190957F8(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729D18(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for AudioFeedTrack(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EE3208(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_219095C6C(v12);
LABEL_5:
    sub_2186C66AC();
    v17 = sub_219BF6F74();
    v18 = sub_219BF6214();
    sub_218729D18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    sub_218EE3208(a1, v9);
    v20 = sub_219BF5484();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2186FC3BC();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_219BE5314("Not updating lastListened for track %{public}@", 46, 2, &dword_2186C1000, v17, v18, v19);

    return;
  }

  sub_218C162E4(v12, v16);
  if ((v16[3] & 1) == 0)
  {
    sub_218EB8BCC(v16);
    goto LABEL_5;
  }

  sub_2186C66AC();
  v23 = sub_219BF6F74();
  v24 = sub_219BF6214();
  sub_218729D18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C09BA0;
  sub_219095CF8();
  v26 = sub_219BF7894();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = sub_2186FC3BC();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  sub_219BE5314("Updating lastListened for article %{public}@", 44, 2, &dword_2186C1000, v23, v24, v25);

  v29 = [*v16 identifier];
  if (!v29)
  {
    sub_219BF5414();
    v29 = sub_219BF53D4();
  }

  sub_219BDBD24();
  v30 = sub_219BDBC04();
  (*(v4 + 8))(v6, v3);
  [v32 markArticle:v29 withLastListened:v30];

  sub_218EB8BCC(v16);
}

uint64_t sub_219095C6C(uint64_t a1)
{
  sub_218729D18(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219095CF8()
{
  result = qword_280EDC9E0;
  if (!qword_280EDC9E0)
  {
    type metadata accessor for AudioFeedTrack(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDC9E0);
  }

  return result;
}

uint64_t sub_219095D50(char a1)
{
  v2 = sub_219BF3BC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 2) > 4u)
  {
    v7 = MEMORY[0x277D34080];
  }

  else
  {
    v7 = qword_278242B00[(a1 - 2)];
  }

  (*(v3 + 104))(v6, *v7, v2, v4);
  v8 = sub_219BF3BB4();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_219095E7C()
{
  v1 = sub_219BF3BC4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) - 2 > 4)
  {
    v6 = MEMORY[0x277D34080];
  }

  else
  {
    v6 = qword_278242B00[(*(v0 + 16) - 2)];
  }

  (*(v2 + 104))(v5, *v6, v1, v3);
  v7 = sub_219BF3BB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_219095FA0()
{
  v1 = sub_219BF3BC4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 - 2 > 4)
  {
    v6 = MEMORY[0x277D34080];
  }

  else
  {
    v6 = qword_278242B00[(*v0 - 2)];
  }

  (*(v2 + 104))(v5, *v6, v1, v3);
  v7 = sub_219BF3BB4();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_2190960D8()
{
  v1 = *(v0 + 40);

  return v1;
}

void *sub_219096108()
{
  v1 = *(v0 + 8);
  sub_218A472B0(v1, *(v0 + 16), *(v0 + 24));
  return v1;
}

void *sub_219096150()
{
  v1 = *(v0 + 24);
  sub_218A472B0(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

id sub_219096198@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BDB5E4();
  v8 = v7;

  if (qword_27CC08420 != -1)
  {
    swift_once();
  }

  v9 = qword_27CCD88C0;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 5;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 57) = a1;

  return v9;
}

id sub_2190962D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BDB5E4();
  v8 = v7;

  if (qword_27CC08410 != -1)
  {
    swift_once();
  }

  v9 = qword_27CCD88B0;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 3;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 3;
  *(a2 + 56) = a1;
  *(a2 + 57) = 1;

  return v9;
}

id sub_219096410@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BDB5E4();
  v8 = v7;

  if (qword_27CC08418 != -1)
  {
    swift_once();
  }

  v9 = qword_27CCD88B8;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = 2;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 2;
  *(a2 + 56) = 1;
  *(a2 + 57) = a1;

  return v9;
}

uint64_t sub_219096574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2190965BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21909663C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219096684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaglessNotification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MagazineFeedExpandRequest(uint64_t a1)
{
  result = qword_280EBE0F0;
  if (!qword_280EBE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219096840(uint64_t a1)
{
  result = type metadata accessor for MagazineFeedGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}