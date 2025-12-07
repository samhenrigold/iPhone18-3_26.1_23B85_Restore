uint64_t sub_217CA24B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000217DCC900;
  v5 = 0xD000000000000013;
  if (a1 != 4)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000217DCC920;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000217DCC8E0;
  }

  v6 = 0x6761507961646F74;
  v7 = 0xE900000000000065;
  if (v2 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000217DCC8C0;
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
      v10 = 0xE900000000000065;
      if (v8 != 0x6761507961646F74)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v10 = 0x8000000217DCC8C0;
LABEL_29:
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v10 = 0x8000000217DCC8E0;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v10 = 0x8000000217DCC900;
    if (v8 != 0xD000000000000013)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = 0x8000000217DCC920;
    if (v8 != 0xD000000000000014)
    {
LABEL_34:
      v11 = sub_217D89D4C();
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

uint64_t sub_217CA2670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 6448503;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x65726F7453707061;
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
  v7 = 0xE400000000000000;
  v8 = 1937204590;
  if (a2 != 2)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x65726F7453707061;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA2794(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x534F64615069;
    }

    else
    {
      v4 = 0x534F63616DLL;
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
      v4 = 5459817;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x534F64615069;
  if (a2 != 2)
  {
    v8 = 0x534F63616DLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 5459817;
    v6 = 0xE300000000000000;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA28B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x72656E6E6162;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = 0x566C6C6F52657270;
      v6 = 1868915817;
    }

    else
    {
      if (a1 == 3)
      {
        v4 = 0xE800000000000000;
        v5 = 0x644165766974616ELL;
        goto LABEL_14;
      }

      v5 = 0x6974737265746E69;
      v6 = 1818323316;
    }

    v4 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE700000000000000;
    v8 = 0xE600000000000000;
    v9 = 0x72656E6E6162;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x566C6C6F52657270;
    v7 = 0xEC0000006F656469;
    v8 = 0xE800000000000000;
    v9 = 0x644165766974616ELL;
    if (a2 != 3)
    {
      v9 = 0x6974737265746E69;
      v8 = 0xEC0000006C616974;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v4 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217CA2A48(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x656C6369747261;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v2 = 1684366694;
  }

  else if (a1 == 3)
  {
    v2 = 0x747241664F646E65;
    v3 = 0xEC000000656C6369;
  }

  else
  {
    v2 = 0x636552664F646E65;
    v3 = 0xEB00000000657069;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x656C6369747261;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x747241664F646E65;
    v5 = 0xEC000000656C6369;
    if (a2 != 3)
    {
      v4 = 0x636552664F646E65;
      v5 = 0xEB00000000657069;
    }

    if (a2 == 2)
    {
      v6 = 1684366694;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_217D89D4C();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_217CA2BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E69776F6C6C6F66;
  v5 = 0xEF6573776F724267;
  if (a1 != 4)
  {
    v4 = 0xD000000000000017;
    v5 = 0x8000000217DCB010;
  }

  if (a1 == 3)
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000217DCAFE0;
  }

  v6 = 0xD000000000000016;
  if (a1 == 1)
  {
    v6 = 0x6E69776F6C6C6F66;
    v7 = 0xE900000000000067;
  }

  else
  {
    v7 = 0x8000000217DCAFC0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x8000000217DCAFE0;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xEF6573776F724267;
      if (v8 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x8000000217DCB010;
      if (v8 != 0xD000000000000017)
      {
LABEL_35:
        v11 = sub_217D89D4C();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xE900000000000067;
      if (v8 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x8000000217DCAFC0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE700000000000000;
    if (v8 != 0x6E776F6E6B6E75)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

uint64_t sub_217CA2DE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646564616F6CLL;
    }

    else
    {
      v4 = 0x676B636142707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEF6465646E756F72;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E6F646E616261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x646564616F6CLL;
  if (a2 != 2)
  {
    v8 = 0x676B636142707061;
    v7 = 0xEF6465646E756F72;
  }

  if (a2)
  {
    v2 = 0x656E6F646E616261;
    v6 = 0xE900000000000064;
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
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA2F3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265747865;
  if (a1 != 6)
  {
    v5 = 0x72756769666E6F63;
    v4 = 0xEC000000656C6261;
  }

  v6 = 0x43656C646E754273;
  v7 = 0xEE00726569727261;
  if (a1 != 4)
  {
    v6 = 0x7748656C646E7562;
    v7 = 0xE900000000000064;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656C646E7562;
  if (a1 != 2)
  {
    v9 = 0x656C646E754273;
    v8 = 0xE700000000000000;
  }

  v10 = 0x6574726143616C61;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
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
        v13 = 0xE800000000000000;
        if (v11 != 0x6C616E7265747865)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEC000000656C6261;
        if (v11 != 0x72756769666E6F63)
        {
LABEL_45:
          v14 = sub_217D89D4C();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00726569727261;
      if (v11 != 0x43656C646E754273)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE900000000000064;
      if (v11 != 0x7748656C646E7562)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C646E7562)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x656C646E754273)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x6574726143616C61)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
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

uint64_t sub_217CA31DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65736C6166;
    }

    else
    {
      v4 = 0x656279616DLL;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x65736C6166;
  if (a2 != 2)
  {
    v7 = 0x656279616DLL;
  }

  if (a2)
  {
    v2 = 1702195828;
    v6 = 0xE400000000000000;
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
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA3300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x4D747865746E6F63;
    v12 = 0xEB00000000756E65;
    if (a1 != 2)
    {
      v11 = 0x7463416570697773;
      v12 = 0xEB000000006E6F69;
    }

    v13 = 0x776F7272616873;
    if (!a1)
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 2003134838;
    v6 = 0x616D6D6F4379656BLL;
    v7 = 0xEA0000000000646ELL;
    if (a1 != 7)
    {
      v6 = 0x6E65746E49707061;
      v7 = 0xE900000000000074;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x7261626C6F6F74;
    if (a1 != 4)
    {
      v8 = 0x726162756E656DLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = 0xE700000000000000;
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
        v15 = 0x4D747865746E6F63;
        v16 = 7695973;
      }

      else
      {
        v15 = 0x7463416570697773;
        v16 = 7237481;
      }

      v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v15)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    v14 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x776F7272616873)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v14 = 0xE700000000000000;
      if (a2 == 4)
      {
        v17 = 1819242356;
      }

      else
      {
        v17 = 1970169197;
      }

      if (v9 != (v17 | 0x72616200000000))
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (a2 == 6)
    {
      v14 = 0xE400000000000000;
      if (v9 != 2003134838)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (a2 == 7)
    {
      v14 = 0xEA0000000000646ELL;
      if (v9 != 0x616D6D6F4379656BLL)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    v2 = 0x6E65746E49707061;
    v14 = 0xE900000000000074;
  }

  if (v9 != v2)
  {
LABEL_49:
    v18 = sub_217D89D4C();
    goto LABEL_50;
  }

LABEL_45:
  if (v10 != v14)
  {
    goto LABEL_49;
  }

  v18 = 1;
LABEL_50:

  return v18 & 1;
}

uint64_t sub_217CA35AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E696C6E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7473616F74;
    }

    else
    {
      v4 = 0x6954656C62627562;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x72656E6E6162;
    }

    else
    {
      v4 = 0x656E696C6E69;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x7473616F74;
  if (a2 != 2)
  {
    v7 = 0x6954656C62627562;
    v6 = 0xE900000000000070;
  }

  if (a2)
  {
    v2 = 0x72656E6E6162;
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
    v9 = 0xE600000000000000;
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
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA36E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6C6C696B676973;
    v12 = 0x6D726574676973;
    if (a1 != 8)
    {
      v12 = 0x74697571676973;
    }

    if (a1 != 7)
    {
      v11 = v12;
    }

    v13 = 0xE600000000000000;
    v14 = 0x737562676973;
    if (a1 != 5)
    {
      v14 = 0x70617274676973;
      v13 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 6)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x6C6C69676973;
    v6 = 0xE700000000000000;
    v7 = 0x74726261676973;
    if (a1 != 3)
    {
      v7 = 0x657066676973;
      v6 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x76676573676973;
    if (!a1)
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
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
        v15 = 0xE600000000000000;
        if (v9 != 0x737562676973)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x70617274676973)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    v15 = 0xE700000000000000;
    if (a2 == 7)
    {
      if (v9 != 0x6C6C696B676973)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      if (v9 != 0x6D726574676973)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0x74697571676973;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x6C6C69676973)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x74726261676973)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x657066676973)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    v15 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x76676573676973)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v9 != v2)
  {
LABEL_54:
    v16 = sub_217D89D4C();
    goto LABEL_55;
  }

LABEL_51:
  if (v10 != v15)
  {
    goto LABEL_54;
  }

  v16 = 1;
LABEL_55:

  return v16 & 1;
}

uint64_t sub_217CA39B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006B63;
    v4 = 0xED00006B63617453;
    if (a1 == 2)
    {
      v6 = 0x6174537472616D73;
    }

    else
    {
      v6 = 0x7472616D536E6F6ELL;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xEC00000074656764;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x695764656E6E6970;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
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
  v9 = 0x6174537472616D73;
  v10 = 0xEA00000000006B63;
  if (a2 != 2)
  {
    v9 = 0x7472616D536E6F6ELL;
    v10 = 0xED00006B63617453;
  }

  if (a2)
  {
    v2 = 0x695764656E6E6970;
    v8 = 0xEC00000074656764;
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
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217CA3B20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1818845542;
    }

    else
    {
      v4 = 0x7373696D736964;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73736563637573;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1818845542;
  if (a2 != 2)
  {
    v7 = 0x7373696D736964;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x73736563637573;
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
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA3C50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1869768058;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x7974666966;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1214606959;
    }

    else
    {
      v3 = 1215264628;
    }

    v4 = v3 | 0x72646E7500000000;
    v5 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1869768058;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x72646E7548656E6FLL;
    if (a2 != 3)
    {
      v6 = 0x72646E75486F7774;
    }

    if (a2 == 2)
    {
      v7 = 0x7974666966;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xEA00000000006465;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v8)
  {
LABEL_34:
    v10 = sub_217D89D4C();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_217CA3DC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7974666966;
  v6 = 0x4679746E65766573;
  v7 = 0xEB00000000657669;
  if (a1 != 4)
  {
    v6 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1869768058;
  if (a1 != 1)
  {
    v9 = 0x694679746E657774;
    v8 = 0xEA00000000006576;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
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
      if (v10 != 0x7974666966)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000657669;
      if (v10 != 0x4679746E65766573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x72646E7548656E6FLL)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768058)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x694679746E657774)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746C7561666564)
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

void *sub_217CA3FB8(unsigned __int8 a1)
{
  v2 = sub_217D87A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = a1;
  v16 = MEMORY[0x277D84F90];
  if (((1 << v15) & 0x2D) == 0)
  {
    if (v15 == 1)
    {
      sub_217D87A1C();
      (*(v3 + 16))(v6, v9, v2);
      v16 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = v16[2];
      v17 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v16 = sub_217B5ABE8((v17 > 1), v18 + 1, 1, v16);
      }

      v14 = v9;
      v12 = v6;
    }

    else
    {
      sub_217D87A1C();
      (*(v3 + 16))(v12, v14, v2);
      v16 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = v16[2];
      v20 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v20 >> 1)
      {
        v16 = sub_217B5ABE8((v20 > 1), v18 + 1, 1, v16);
      }
    }

    (*(v3 + 8))(v14, v2);
    v16[2] = v19;
    (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v12, v2);
  }

  return v16;
}

void *sub_217CA4284(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_217D87A4C();
  v42 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v41 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - v25;
  v27 = a2;
  v28 = MEMORY[0x277D84F90];
  if (v27 > 2)
  {
    if ((v27 - 5) >= 4)
    {
      v41 = v3;
      if (v27 == 3)
      {
        sub_217D87A1C();
        (*(v42 + 16))(v6, v9, v3);
        v28 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
        v32 = v28[2];
        v34 = v28[3];
        v33 = v32 + 1;
        if (v32 >= v34 >> 1)
        {
          v28 = sub_217B5ABE8((v34 > 1), v32 + 1, 1, v28);
        }

        v26 = v9;
        v24 = v6;
        v29 = v42;
      }

      else
      {
        sub_217D87A1C();
        v29 = v42;
        (*(v42 + 16))(v12, v15, v3);
        v37 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
        v28 = v37;
        v32 = v37[2];
        v38 = v37[3];
        if (v32 >= v38 >> 1)
        {
          v28 = sub_217B5ABE8((v38 > 1), v32 + 1, 1, v37);
        }

        v26 = v15;
        v24 = v12;
        v33 = v32 + 1;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v27)
    {
      sub_217D87A1C();
      v29 = v42;
      v35 = *(v42 + 16);
      v41 = v3;
      v35(v24, v26, v3);
      v28 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = v28[2];
      v36 = v28[3];
      v33 = v32 + 1;
      if (v32 >= v36 >> 1)
      {
        v28 = sub_217B5ABE8((v36 > 1), v32 + 1, 1, v28);
      }

      goto LABEL_18;
    }

    if (v27 != 1)
    {
      sub_217D87A1C();
      v29 = v42;
      v30 = *(v42 + 16);
      v41 = v3;
      v30(v18, v21, v3);
      v28 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = v28[2];
      v31 = v28[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v28 = sub_217B5ABE8((v31 > 1), v32 + 1, 1, v28);
      }

      v26 = v21;
      v24 = v18;
LABEL_18:
      v39 = v41;
      (*(v29 + 8))(v26, v41);
      v28[2] = v33;
      (*(v29 + 32))(v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, v24, v39);
    }
  }

  return v28;
}

void sub_217CA4794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a3;
  v72 = a2;
  v71 = sub_217D87A4C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v74 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for MediaEngageEvent.Model(0);
  MEMORY[0x28223BE20](v82);
  v75 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CA50DC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217D881AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  sub_217CA5134(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if (!v21)
  {
    v22(v11, 1, 1, v17);
    sub_217CA5210(v11, sub_217CA50DC);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v22(v11, 0, 1, v17);
  (*(v18 + 32))(v20, v11, v17);
  v23 = sub_217D8816C();
  v24 = sub_217D887BC();
  if (v5)
  {
    (*(v18 + 8))(v20, v17);

    return;
  }

  v26 = v24;
  v27 = v25;

  sub_217D8796C();
  swift_allocObject();
  sub_217D8795C();
  sub_217CA51C8(&qword_27CBA37A8, type metadata accessor for MediaEngageEvent.Model, &protocol conformance descriptor for MediaEngageEvent.Model);
  v28 = v75;
  v29 = v82;
  sub_217D8794C();
  v69 = v27;

  v30 = (v28 + v29[9]);
  v31 = *v30;
  v32 = *(v30 + 1);
  v33 = *(v30 + 2);
  v34 = *(v30 + 6);
  v35 = v30[28];
  v36 = v28 + v29[10];
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 12);
  v40 = *(v36 + 16);
  v41 = *(v36 + 17);
  if (((1 << v31) & 0x2D) != 0)
  {
    goto LABEL_6;
  }

  if (*(v36 + 8) <= 3u)
  {
    if (*(v36 + 8) > 1u)
    {
      v63 = *v36;
      v68 = v31;
      v67 = v32;
      v66 = v33;
      v65 = v34;
      v64 = v35;
      v62 = v40;
      v61 = v39;
      v60 = v41;
    }

    else
    {
      if (*(v36 + 8))
      {

LABEL_6:
        (*(v18 + 8))(v20, v17);
        sub_217AE010C(v26, v69);
        sub_217CA5210(v28, type metadata accessor for MediaEngageEvent.Model);
        return;
      }

      v60 = *(v36 + 17);
      v61 = v39;
      v62 = v40;
      v63 = v37;
      v64 = v35;
      v65 = v34;
      v66 = v33;
      v67 = v32;
      v68 = v31;
    }
  }

  else
  {
    v68 = v31;
    v67 = v32;
    v66 = v33;
    v65 = v34;
    v64 = v35;
    v63 = v37;
    v62 = v40;
    v61 = v39;
    v60 = v41;
  }

  v42 = sub_217D89D4C();

  if (v42)
  {
    goto LABEL_6;
  }

  sub_217D87A1C();
  v43 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v45 = v43[2];
  v44 = v43[3];
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    v59 = v45 + 1;
    v57 = sub_217B5ABE8((v44 > 1), v45 + 1, 1, v43);
    v46 = v59;
    v43 = v57;
  }

  v43[2] = v46;
  (*(v70 + 32))(v43 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v45, v74, v71);
  v77 = v43;
  v47 = v28 + v82[5];
  v48 = *(v47 + 48);
  v78[2] = *(v47 + 32);
  v78[3] = v48;
  *&v79[15] = *(v47 + 127);
  v49 = *(v47 + 112);
  v78[6] = *(v47 + 96);
  *v79 = v49;
  v50 = *(v47 + 80);
  v78[4] = *(v47 + 64);
  v78[5] = v50;
  v51 = *v47;
  v78[1] = *(v47 + 16);
  v78[0] = v51;
  v52 = v28 + v82[6];
  v81 = *(v52 + 32);
  v53 = *(v52 + 16);
  v80[0] = *v52;
  v80[1] = v53;
  v54 = sub_217C81FAC(v78, v80, *(v28 + v82[8]), *(v28 + v82[8] + 8), *(v28 + v82[8] + 16), v72, v73);
  sub_217B0E7A0(v54);
  v55 = sub_217CA4284(v63, v38);
  sub_217B0E7A0(v55);
  v76 = v64;
  v56 = sub_217CA3FB8(v68);
  sub_217B0E7A0(v56);
  sub_217AE010C(v26, v69);
  (*(v18 + 8))(v20, v17);
  sub_217CA5210(v28, type metadata accessor for MediaEngageEvent.Model);
}

void sub_217CA50DC(uint64_t a1)
{
  if (!qword_27CBA37A0)
  {
    sub_217CA5134(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA37A0);
    }
  }
}

void sub_217CA5134(uint64_t a1)
{
  if (!qword_2811C88F0)
  {
    type metadata accessor for MediaEngageEvent(255);
    sub_217CA51C8(qword_2811C5130, type metadata accessor for MediaEngageEvent, &protocol conformance descriptor for MediaEngageEvent);
    v1 = sub_217D881AC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88F0);
    }
  }
}

uint64_t sub_217CA51C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217CA5210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217CA5270()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_2811C00F0);
  v1 = __swift_project_value_buffer(v0, qword_2811C00F0);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217CA535C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_2811C00C8);
  v1 = __swift_project_value_buffer(v0, qword_2811C00C8);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217CA541C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C00A0);
  __swift_project_value_buffer(v0, qword_2811C00A0);
  return sub_217D8866C();
}

uint64_t BannerAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BannerAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 24);
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 24);
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 28);
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 28);
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 32);
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 32);
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adStateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 36);
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adStateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 36);
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 40);
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 40);
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 44);
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 44);
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 48);
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 48);
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 52);
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 52);
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.bannerAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 56);
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4, &type metadata for BannerAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BannerAdImpressionEvent.bannerAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 56);
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4, &type metadata for BannerAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 60);
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CA6640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t BannerAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BannerAdImpressionEvent(0) + 60);
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BannerAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BannerAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4, &type metadata for BannerAdData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v12, v27);
}

uint64_t sub_217CA6D88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t BannerAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t BannerAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

void BannerAdImpressionEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t BannerAdImpressionEvent.Model.adStateData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

double BannerAdImpressionEvent.Model.adSizeData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for BannerAdImpressionEvent.Model(0) + 44));
  *a1 = result;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t BannerAdImpressionEvent.Model.bannerAdData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = v4[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v4;
  return result;
}

uint64_t BannerAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BannerAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 BannerAdImpressionEvent.Model.init(eventData:timedData:adUserData:userBundleSubscriptionContextData:channelData:adStateData:adPlacementData:adSizeData:adPositionData:adFeedData:bannerAdData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, int *a10, char *a11, char *a12, char *a13)
{
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a5 + 32);
  v22 = *a6;
  v38 = a7[1];
  v39 = *a7;
  v40 = *(a10 + 4);
  v41 = *a10;
  v45 = *a12;
  v44 = a12[1];
  v42 = *a11;
  v43 = a12[2];
  v46 = *a13;
  v23 = sub_217D8899C();
  v24 = *a8;
  v36 = *(a5 + 16);
  v37 = *a5;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v25 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = (a9 + v25[6]);
  *v28 = v19;
  v28[1] = v20;
  v29 = a9 + v25[7];
  v30 = *(a4 + 16);
  *v29 = *a4;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a4 + 32);
  *(v29 + 48) = *(a4 + 48);
  v31 = a9 + v25[8];
  result = v37;
  *v31 = v37;
  *(v31 + 16) = v36;
  *(v31 + 32) = v21;
  *(a9 + v25[9]) = v22;
  v33 = (a9 + v25[10]);
  *v33 = v39;
  v33[1] = v38;
  *(a9 + v25[11]) = v24;
  v34 = a9 + v25[12];
  *v34 = v41;
  *(v34 + 4) = v40;
  *(a9 + v25[13]) = v42;
  v35 = (a9 + v25[14]);
  *v35 = v45;
  v35[1] = v44;
  v35[2] = v43;
  *(a9 + v25[15]) = v46;
  return result;
}

unint64_t sub_217CA72C8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6144646565466461;
    v7 = 0x644172656E6E6162;
    if (a1 != 10)
    {
      v7 = 0x4470756F72476461;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6D6563616C506461;
    v9 = 0x6144657A69536461;
    if (a1 != 7)
    {
      v9 = 0x697469736F506461;
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
    v1 = 0x746144746E657665;
    v2 = 0xD000000000000021;
    v3 = 0x446C656E6E616863;
    if (a1 != 4)
    {
      v3 = 0x4465746174536461;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74614464656D6974;
    if (a1 != 1)
    {
      v4 = 0x6144726573556461;
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

uint64_t sub_217CA7494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CA9390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CA74BC(uint64_t a1)
{
  v2 = sub_217CA7BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CA74F8(uint64_t a1)
{
  v2 = sub_217CA7BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BannerAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CA85A4(0, &qword_27CBA37B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CA7BD8();
  sub_217D89E7C();
  LOBYTE(v43[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for BannerAdImpressionEvent.Model(0);
    LOBYTE(v43[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v46 = *v11;
    v47 = v12;
    v45 = 2;
    sub_217A586D4();

    sub_217D89CAC();

    v13 = (v3 + v10[7]);
    v14 = v13[1];
    v43[0] = *v13;
    v43[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v43[2] = v13[2];
    v44 = *(v13 + 48);
    v39 = v16;
    v40 = v15;
    v41 = v13[2];
    v42 = *(v13 + 48);
    v38 = 3;
    sub_217ACC004(v43, v36);
    sub_217A55B98();
    sub_217D89CAC();
    v36[0] = v39;
    v36[1] = v40;
    v36[2] = v41;
    v37 = v42;
    sub_217ACC69C(v36);
    v17 = (v3 + v10[8]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v31 = *v17;
    v32 = v18;
    v33 = v19;
    v34 = v20;
    v35 = v21;
    HIBYTE(v30) = 4;
    sub_217AD86BC(v31, v18, v19, v20, v21);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v31, v32, v33, v34, v35);
    LOBYTE(v31) = *(v3 + v10[9]);
    HIBYTE(v30) = 5;
    sub_217BB537C();
    sub_217D89CAC();
    v22 = (v3 + v10[10]);
    v23 = v22[1];
    v31 = *v22;
    v32 = v23;
    HIBYTE(v30) = 6;
    sub_217B3CE84();

    sub_217D89CAC();

    v31 = *(v3 + v10[11]);
    HIBYTE(v30) = 7;
    sub_217B95B14();
    sub_217D89CAC();
    v24 = (v3 + v10[12]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LODWORD(v31) = v25;
    BYTE4(v31) = v24;
    HIBYTE(v30) = 8;
    sub_217B3D0DC();
    sub_217D89C3C();
    LOBYTE(v31) = *(v3 + v10[13]);
    HIBYTE(v30) = 9;
    sub_217A5BFF4();
    sub_217D89C3C();
    v26 = (v3 + v10[14]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v26) = v26[2];
    LOBYTE(v31) = v27;
    BYTE1(v31) = v28;
    BYTE2(v31) = v26;
    HIBYTE(v30) = 10;
    sub_217C60AD4();
    sub_217D89CAC();
    LOBYTE(v31) = *(v3 + v10[15]);
    HIBYTE(v30) = 11;
    sub_217B3D560();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CA7BD8()
{
  result = qword_27CBA37B8;
  if (!qword_27CBA37B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37B8);
  }

  return result;
}

void BannerAdImpressionEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v40 = sub_217D889CC();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CA85A4(0, &qword_27CBA37C0, MEMORY[0x277D844C8]);
  v43 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CA7BD8();
  v42 = v9;
  v13 = v44;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v39;
    v35 = v10;
    v44 = v12;
    v15 = v40;
    LOBYTE(v48) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v41;
    sub_217D89BCC();
    v17 = v44;
    (*(v38 + 32))(v44, v16, v5);
    LOBYTE(v48) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    sub_217D89BCC();
    v34[1] = v5;
    v41 = 0;
    v18 = v35;
    (*(v37 + 32))(&v17[v35[5]], v4, v15);
    LOBYTE(v45) = 2;
    sub_217A5867C();
    sub_217D89BCC();
    v34[0] = a1;
    v19 = *(&v48 + 1);
    v20 = &v17[v18[6]];
    *v20 = v48;
    *(v20 + 1) = v19;
    v53 = 3;
    sub_217A54D08();
    sub_217D89BCC();
    v21 = &v17[v18[7]];
    v22 = v49;
    *v21 = v48;
    *(v21 + 1) = v22;
    *(v21 + 2) = v50;
    v21[48] = v51;
    v52 = 4;
    sub_217AD07F8();
    sub_217D89B5C();
    v23 = v47;
    v24 = &v17[v18[8]];
    v25 = v46;
    *v24 = v45;
    *(v24 + 1) = v25;
    *(v24 + 4) = v23;
    v52 = 5;
    sub_217BB5324();
    sub_217D89BCC();
    v17[v18[9]] = v45;
    v52 = 6;
    sub_217B3CE30();
    sub_217D89BCC();
    v26 = *(&v45 + 1);
    v27 = &v17[v18[10]];
    *v27 = v45;
    *(v27 + 1) = v26;
    v52 = 7;
    sub_217B95AC0();
    sub_217D89BCC();
    *&v44[v35[11]] = v45;
    v52 = 8;
    sub_217B3D088();
    sub_217D89B5C();
    v28 = BYTE4(v45);
    v29 = &v44[v35[12]];
    *v29 = v45;
    v29[4] = v28;
    v52 = 9;
    sub_217A5BD70();
    sub_217D89B5C();
    v44[v35[13]] = v45;
    v52 = 10;
    sub_217C60A7C();
    sub_217D89BCC();
    v30 = BYTE1(v45);
    v31 = BYTE2(v45);
    v32 = &v44[v35[14]];
    *v32 = v45;
    v32[1] = v30;
    v32[2] = v31;
    v52 = 11;
    sub_217B3D50C();
    sub_217D89B5C();
    (*(v14 + 8))(v42, v43);
    v33 = v44;
    v44[v35[15]] = v45;
    sub_217CA8608(v33, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_217CA866C(v33);
  }
}

void sub_217CA85A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CA7BD8();
    v7 = a3(a1, &type metadata for BannerAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CA8608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CA866C(uint64_t a1)
{
  v2 = type metadata accessor for BannerAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CA87A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CA6640(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217CA6640(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217CA6640(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217CA6640(0, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217CA6640(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217CA6640(0, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217CA6640(0, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_217CA6640(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217CA6640(0, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4, &type metadata for BannerAdData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217CA6640(0, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v13, v28);
}

void sub_217CA8D4C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217CA6640(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
      if (v3 <= 0x3F)
      {
        sub_217CA6640(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217CA6640(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            sub_217CA6640(319, &qword_2811C87F8, sub_217BB5324, sub_217BB537C, &type metadata for AdStateData);
            if (v6 <= 0x3F)
            {
              sub_217CA6640(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
              if (v7 <= 0x3F)
              {
                sub_217CA6640(319, &qword_2811C8838, sub_217B95AC0, sub_217B95B14, &type metadata for AdSizeData);
                if (v8 <= 0x3F)
                {
                  sub_217CA6640(319, &qword_2811C8748, sub_217B3D088, sub_217B3D0DC, &type metadata for AdPositionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217CA6640(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
                    if (v10 <= 0x3F)
                    {
                      sub_217CA6640(319, &qword_2811C87B0, sub_217C60A7C, sub_217C60AD4, &type metadata for BannerAdData);
                      if (v11 <= 0x3F)
                      {
                        sub_217CA6640(319, &qword_2811C8800, sub_217B3D50C, sub_217B3D560, &type metadata for AdGroupData);
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

void sub_217CA9118(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9FD60, &type metadata for AdPositionData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_27CB9FD68, &type metadata for AdFeedData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CB9FD70, &type metadata for AdGroupData);
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

unint64_t sub_217CA928C()
{
  result = qword_27CBA37D8;
  if (!qword_27CBA37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37D8);
  }

  return result;
}

unint64_t sub_217CA92E4()
{
  result = qword_27CBA37E0;
  if (!qword_27CBA37E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37E0);
  }

  return result;
}

unint64_t sub_217CA933C()
{
  result = qword_27CBA37E8;
  if (!qword_27CBA37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37E8);
  }

  return result;
}

uint64_t sub_217CA9390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4465746174536461 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144657A69536461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x697469736F506461 && a2 == 0xEE00617461446E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x644172656E6E6162 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
  {

    return 11;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

NewsAnalytics::SubscriptionStatus_optional __swiftcall SubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionStatus.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x6373627553746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CA9850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6269726373627573;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CA9978()
{
  result = qword_27CBA37F0;
  if (!qword_27CBA37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37F0);
  }

  return result;
}

uint64_t sub_217CA99CC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CA9A80(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CA9B20(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CA9BDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x6269726373627573;
  if (v2 != 1)
  {
    v5 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CA9D0C()
{
  result = qword_2811C2E18;
  if (!qword_2811C2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E18);
  }

  return result;
}

NewsAnalytics::MediaPlayMethod_optional __swiftcall MediaPlayMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaPlayMethod.rawValue.getter()
{
  v1 = 0x79616C706F747561;
  if (*v0 != 1)
  {
    v1 = 0x7474754279616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217CA9E24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v4 = 0x7474754279616C70;
    v3 = 0xEF73736572506E6FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x79616C706F747561;
  if (*a2 != 1)
  {
    v8 = 0x7474754279616C70;
    v7 = 0xEF73736572506E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217CA9F44()
{
  result = qword_27CBA37F8;
  if (!qword_27CBA37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA37F8);
  }

  return result;
}

uint64_t sub_217CA9F98()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CAA048(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CAA0E4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CAA19C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v5 = 0x7474754279616C70;
    v4 = 0xEF73736572506E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217CAA2C8()
{
  result = qword_27CBA3800;
  if (!qword_27CBA3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3800);
  }

  return result;
}

uint64_t JourneyTriggerInactiveErrorDetailData.triggerName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JourneyTriggerInactiveErrorDetailData.triggerName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::JourneyTriggerInactiveErrorDetailData __swiftcall JourneyTriggerInactiveErrorDetailData.init(triggerName:triggerInactiveErrorReason:)(NewsAnalytics::JourneyTriggerInactiveErrorDetailData triggerName, NewsAnalytics::JourneyTriggerInactiveErrorReason_optional triggerInactiveErrorReason)
{
  v3 = *triggerInactiveErrorReason.value;
  *v2 = triggerName.triggerName;
  *(v2 + 16) = v3;
  triggerName.triggerInactiveErrorReason = triggerInactiveErrorReason;
  return triggerName;
}

uint64_t sub_217CAA3F4()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x4E72656767697274;
  }
}

uint64_t sub_217CAA43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E72656767697274 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD1D40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217CAA524(uint64_t a1)
{
  v2 = sub_217CAA73C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CAA560(uint64_t a1)
{
  v2 = sub_217CAA73C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JourneyTriggerInactiveErrorDetailData.encode(to:)(void *a1)
{
  sub_217CAA9EC(0, &qword_27CBA3808, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v14 = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_217CAA73C();
  sub_217D89E7C();
  v17 = 0;
  sub_217D89C0C();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217CAA790();
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_217CAA73C()
{
  result = qword_27CBA3810;
  if (!qword_27CBA3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3810);
  }

  return result;
}

unint64_t sub_217CAA790()
{
  result = qword_27CBA3818;
  if (!qword_27CBA3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3818);
  }

  return result;
}

uint64_t JourneyTriggerInactiveErrorDetailData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217CAA9EC(0, &qword_27CBA3820, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CAA73C();
  sub_217D89E5C();
  if (!v2)
  {
    v19 = 0;
    v10 = sub_217D89B2C();
    v12 = v11;
    v13 = v10;
    v17 = 1;
    sub_217CAAA50();
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v14 = v18;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CAA9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CAA73C();
    v7 = a3(a1, &type metadata for JourneyTriggerInactiveErrorDetailData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CAAA50()
{
  result = qword_27CBA3828;
  if (!qword_27CBA3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3828);
  }

  return result;
}

uint64_t sub_217CAAADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_217CAAB38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_217CAABB0()
{
  result = qword_27CBA3830;
  if (!qword_27CBA3830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3830);
  }

  return result;
}

unint64_t sub_217CAAC08()
{
  result = qword_27CBA3838;
  if (!qword_27CBA3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3838);
  }

  return result;
}

unint64_t sub_217CAAC60()
{
  result = qword_27CBA3840;
  if (!qword_27CBA3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3840);
  }

  return result;
}

uint64_t sub_217CAAD7C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3878);
  __swift_project_value_buffer(v0, qword_27CBA3878);
  return sub_217D8866C();
}

uint64_t SearchEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 24);
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 24);
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 28);
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CAB2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SearchEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 28);
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchEvent(0);
  v5 = v4[5];
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t SearchEvent.Model.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
}

uint64_t SearchEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SearchEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchEvent.Model.init(eventData:searchData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = a2[3];
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  v16 = type metadata accessor for SearchEvent.Model(0);
  v17 = a5 + v16[5];
  *v17 = v8;
  *(v17 + 8) = v9;
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  v18 = a5 + v16[6];
  v19 = *(a3 + 16);
  *v18 = *a3;
  *(v18 + 16) = v19;
  result = *(a3 + 32);
  *(v18 + 32) = result;
  *(v18 + 48) = *(a3 + 48);
  v21 = a5 + v16[7];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

unint64_t sub_217CAB87C()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0x6144686372616573;
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

uint64_t sub_217CAB904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CAC970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CAB92C(uint64_t a1)
{
  v2 = sub_217CABD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CAB968(uint64_t a1)
{
  v2 = sub_217CABD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CAC240(0, &qword_27CBA3890, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CABD38();
  sub_217D89E7C();
  LOBYTE(v34[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SearchEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = *(v11 + 16);
    v14 = v11[3];
    v37 = *v11;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v36 = 1;
    sub_217B23A38();

    sub_217D89CAC();

    v15 = (v3 + v10[6]);
    v16 = v15[1];
    v34[0] = *v15;
    v34[1] = v16;
    v18 = *v15;
    v17 = v15[1];
    v34[2] = v15[2];
    v35 = *(v15 + 48);
    v30 = v18;
    v31 = v17;
    v32 = v15[2];
    v33 = *(v15 + 48);
    v29 = 2;
    sub_217ACC004(v34, v27);
    sub_217A55B98();
    sub_217D89CAC();
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v28 = v33;
    sub_217ACC69C(v27);
    v20 = (v3 + v10[7]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    v24 = v21;
    v25 = v22;
    v26 = v20;
    v23[7] = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CABD38()
{
  result = qword_27CBA3898;
  if (!qword_27CBA3898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3898);
  }

  return result;
}

uint64_t SearchEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_217D8899C();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CAC240(0, &qword_27CBA38A0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SearchEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CABD38();
  v33 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  v13 = v12;
  v14 = v29;
  LOBYTE(v37) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v30;
  v16 = v31;
  sub_217D89BCC();
  (*(v14 + 32))(v13, v15, v4);
  LOBYTE(v34) = 1;
  sub_217B23D2C();
  sub_217D89BCC();
  v17 = *(&v37 + 1);
  v18 = v38;
  v19 = *(&v38 + 1);
  v20 = v13 + v10[5];
  *v20 = v37;
  *(v20 + 8) = v17;
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v42 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v21 = v13 + v10[6];
  v22 = v38;
  *v21 = v37;
  *(v21 + 16) = v22;
  *(v21 + 32) = v39;
  *(v21 + 48) = v40;
  v41 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v32 + 8))(v33, v16);
  v23 = v35;
  v24 = v36;
  v25 = v13 + v10[7];
  *v25 = v34;
  *(v25 + 8) = v23;
  *(v25 + 16) = v24;
  sub_217CAC2A4(v13, v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_217CAC308(v13);
}

void sub_217CAC240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CABD38();
    v7 = a3(a1, &type metadata for SearchEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CAC2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CAC308(uint64_t a1)
{
  v2 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CAC43C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217CAB2E0(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217CAB2E0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217CAB2E0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217CAC64C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CAB2E0(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
    if (v2 <= 0x3F)
    {
      sub_217CAB2E0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217CAB2E0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217CAC7D0(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217CAC86C()
{
  result = qword_27CBA38C8;
  if (!qword_27CBA38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA38C8);
  }

  return result;
}

unint64_t sub_217CAC8C4()
{
  result = qword_27CBA38D0;
  if (!qword_27CBA38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA38D0);
  }

  return result;
}

unint64_t sub_217CAC91C()
{
  result = qword_27CBA38D8;
  if (!qword_27CBA38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA38D8);
  }

  return result;
}

uint64_t sub_217CAC970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217CACBB4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3910);
  __swift_project_value_buffer(v0, qword_27CBA3910);
  return sub_217D8866C();
}

uint64_t SubscribeButtonTapEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscribeButtonTapEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 20);
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 24);
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 28);
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 32);
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 36);
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 40);
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 44);
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 48);
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 52);
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 56);
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 56);
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 60);
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 60);
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 64);
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 64);
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 68);
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscribeButtonTapEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 68);
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 72);
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CAE3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SubscribeButtonTapEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscribeButtonTapEvent(0) + 72);
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscribeButtonTapEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscribeButtonTapEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v21 - 8) + 104))(a1 + v20, v6, v21);
  v22 = v4[13];
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v6, v33);
}

uint64_t SubscribeButtonTapEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

void SubscribeButtonTapEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t SubscribeButtonTapEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscribeButtonTapEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t SubscribeButtonTapEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 40);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t SubscribeButtonTapEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscribeButtonTapEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscribeButtonTapEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

void SubscribeButtonTapEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t SubscribeButtonTapEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t SubscribeButtonTapEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 64);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t SubscribeButtonTapEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 68));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_217AE38AC(&v11, &v10, &qword_27CB9F6A0, &type metadata for PuzzleData);
}

void SubscribeButtonTapEvent.Model.recipeData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscribeButtonTapEvent.Model(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  sub_217AD86BC(v4, v5, v6, v7, v8);
}

__n128 SubscribeButtonTapEvent.Model.init(eventData:articleData:channelData:feedData:groupData:viewData:sectionData:purchaseData:purchaseSessionData:paywallData:issueData:subscribeButtonContextData:userBundleSubscriptionContextData:puzzleData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int16 *a11, __int128 *a12, __int16 *a13, uint64_t a14, _OWORD *a15, uint64_t a16)
{
  v21 = *(a3 + 4);
  v51 = *a4;
  v50 = *(a4 + 2);
  v56 = *a6;
  v55 = a6[1];
  v54 = *(a6 + 8);
  v59 = *a7;
  v58 = *(a7 + 2);
  v57 = *(a7 + 24);
  v62 = *a8;
  v61 = a8[1];
  v60 = *(a8 + 16);
  v63 = a10[1];
  v64 = *a10;
  v65 = *a11;
  v66 = *a13;
  v69 = *(a16 + 32);
  v22 = sub_217D8899C();
  v67 = *(a16 + 16);
  v68 = *a16;
  v52 = a12[1];
  v53 = *a12;
  v48 = a3[1];
  v49 = *a3;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  *(v24 + 127) = *(a2 + 127);
  v27 = *(a2 + 112);
  *(v24 + 96) = *(a2 + 96);
  *(v24 + 112) = v27;
  v28 = *(a2 + 80);
  *(v24 + 64) = *(a2 + 64);
  *(v24 + 80) = v28;
  v29 = a9 + v23[6];
  *v29 = v49;
  *(v29 + 16) = v48;
  *(v29 + 32) = v21;
  v30 = a9 + v23[7];
  *v30 = v51;
  *(v30 + 16) = v50;
  v31 = (a9 + v23[8]);
  v32 = a5[7];
  v31[6] = a5[6];
  v31[7] = v32;
  v31[8] = a5[8];
  v33 = a5[3];
  v31[2] = a5[2];
  v31[3] = v33;
  v34 = a5[5];
  v31[4] = a5[4];
  v31[5] = v34;
  v35 = a5[1];
  *v31 = *a5;
  v31[1] = v35;
  v36 = a9 + v23[9];
  *v36 = v56;
  *(v36 + 8) = v55;
  *(v36 + 16) = v54;
  v37 = a9 + v23[10];
  *v37 = v59;
  *(v37 + 16) = v58;
  *(v37 + 24) = v57;
  v38 = a9 + v23[11];
  *v38 = v62;
  *(v38 + 8) = v61;
  *(v38 + 16) = v60;
  v39 = (a9 + v23[12]);
  *v39 = v64;
  v39[1] = v63;
  *(a9 + v23[13]) = v65;
  v40 = (a9 + v23[14]);
  *v40 = v53;
  v40[1] = v52;
  *(a9 + v23[15]) = v66;
  v41 = a9 + v23[16];
  *(v41 + 48) = *(a14 + 48);
  v42 = *(a14 + 32);
  *(v41 + 16) = *(a14 + 16);
  *(v41 + 32) = v42;
  *v41 = *a14;
  v43 = (a9 + v23[17]);
  v44 = a15[4];
  v43[3] = a15[3];
  v43[4] = v44;
  v45 = a15[2];
  v43[1] = a15[1];
  v43[2] = v45;
  *v43 = *a15;
  v46 = a9 + v23[18];
  result = v68;
  *v46 = v68;
  *(v46 + 16) = v67;
  *(v46 + 32) = v69;
  return result;
}

uint64_t sub_217CAF448(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x44656C6369747261;
    case 2:
      v4 = 0x656E6E616863;
      return v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 3:
      v5 = 1684366694;
      return v5 | 0x6174614400000000;
    case 4:
      return 0x74614470756F7267;
    case 5:
      v5 = 2003134838;
      return v5 | 0x6174614400000000;
    case 6:
      return 0x446E6F6974636573;
    case 7:
      return 0x6573616863727570;
    case 8:
      return 0xD000000000000013;
    case 9:
      v4 = 0x6C6177796170;
      return v4 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
    case 10:
      return 0x7461446575737369;
    case 11:
      return 0xD00000000000001ALL;
    case 12:
      return 0xD000000000000021;
    case 13:
      v3 = 0x656C7A7A7570;
      goto LABEL_15;
    case 14:
      v3 = 0x657069636572;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CAF5E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CB1FE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CAF608(uint64_t a1)
{
  v2 = sub_217CB00DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CAF644(uint64_t a1)
{
  v2 = sub_217CB00DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscribeButtonTapEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CB0E2C(0, &qword_27CBA3928, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB00DC();
  sub_217D89E7C();
  v139[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v140 = v7;
  v11 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  v68 = v3;
  v69 = v11;
  v12 = v3 + *(v11 + 20);
  v13 = *(v12 + 96);
  v14 = *(v12 + 64);
  v136 = *(v12 + 80);
  v137 = v13;
  v15 = *(v12 + 96);
  *v138 = *(v12 + 112);
  v16 = *(v12 + 16);
  v17 = *(v12 + 48);
  v133 = *(v12 + 32);
  v134 = v17;
  v18 = *(v12 + 48);
  v135 = *(v12 + 64);
  v19 = *(v12 + 16);
  v132[0] = *v12;
  v132[1] = v19;
  v129 = v136;
  v130 = v15;
  v131[0] = *(v12 + 112);
  v126 = v133;
  v127 = v18;
  v128 = v14;
  *&v138[15] = *(v12 + 127);
  *(v131 + 15) = *(v12 + 127);
  v124 = v132[0];
  v125 = v16;
  v123 = 1;
  sub_217AE38AC(v132, &v108, &qword_2811C7DB8, &type metadata for ArticleData);
  sub_217ACF52C();
  sub_217D89C3C();
  v121[5] = v129;
  v121[6] = v130;
  *v122 = v131[0];
  *&v122[15] = *(v131 + 15);
  v121[2] = v126;
  v121[3] = v127;
  v121[4] = v128;
  v121[0] = v124;
  v121[1] = v125;
  sub_217AE4A44(v121, &qword_2811C7DB8, &type metadata for ArticleData);
  v20 = v68;
  v21 = (v68 + v69[6]);
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[3];
  v25 = v21[4];
  *&v108 = *v21;
  *(&v108 + 1) = v22;
  *&v109 = v23;
  *(&v109 + 1) = v24;
  *&v110 = v25;
  LOBYTE(v99) = 2;
  sub_217AD86BC(v108, v22, v23, v24, v25);
  sub_217AD084C();
  sub_217D89C3C();
  sub_217AD96A4(v108, *(&v108 + 1), v109, *(&v109 + 1), v110);
  v26 = (v20 + v69[7]);
  v27 = v26[1];
  v28 = v26[2];
  v118 = *v26;
  v119 = v27;
  v120 = v28;
  v117 = 3;
  sub_217AD1A68(v118, v27, v28);
  sub_217A5BA2C();
  sub_217D89C3C();
  sub_217AD290C(v118, v119, v120);
  v29 = (v20 + v69[8]);
  v30 = v29[6];
  v31 = v29[4];
  v113 = v29[5];
  v114 = v30;
  v32 = v29[6];
  v33 = v29[8];
  v115 = v29[7];
  v116 = v33;
  v34 = v29[2];
  v35 = *v29;
  v109 = v29[1];
  v110 = v34;
  v36 = v29[2];
  v37 = v29[4];
  v111 = v29[3];
  v112 = v37;
  v38 = *v29;
  v105 = v32;
  v106 = v115;
  v107 = v29[8];
  v108 = v38;
  v101 = v36;
  v102 = v111;
  v103 = v31;
  v104 = v113;
  v99 = v35;
  v100 = v109;
  v98 = 4;
  sub_217AE38AC(&v108, v97, &qword_2811BD178, &type metadata for GroupData);
  sub_217A5D3B4();
  sub_217D89C3C();
  v97[6] = v105;
  v97[7] = v106;
  v97[8] = v107;
  v97[2] = v101;
  v97[3] = v102;
  v97[4] = v103;
  v97[5] = v104;
  v97[0] = v99;
  v97[1] = v100;
  sub_217AE4A44(v97, &qword_2811BD178, &type metadata for GroupData);
  v39 = (v20 + v69[9]);
  v40 = *v39;
  v41 = v39[1];
  LOWORD(v39) = *(v39 + 8);
  *&v85[0] = v40;
  *(&v85[0] + 1) = v41;
  LOWORD(v85[1]) = v39;
  LOBYTE(v78) = 5;
  sub_217A5E790();

  sub_217D89C3C();

  v42 = v20 + v69[10];
  v43 = *(v42 + 24);
  *&v85[0] = *v42;
  *(v85 + 8) = *(v42 + 8);
  BYTE8(v85[1]) = v43;
  LOBYTE(v78) = 6;
  sub_217B17644();

  sub_217D89C3C();

  v44 = (v20 + v69[11]);
  v45 = *v44;
  v46 = v44[1];
  LOBYTE(v44) = *(v44 + 16);
  *&v85[0] = v45;
  *(&v85[0] + 1) = v46;
  LOBYTE(v85[1]) = v44;
  LOBYTE(v78) = 7;
  sub_217AFF378();

  sub_217D89C3C();

  v47 = (v20 + v69[12]);
  v48 = v47[1];
  *&v85[0] = *v47;
  *(&v85[0] + 1) = v48;
  LOBYTE(v78) = 8;
  sub_217B1E4A0();

  sub_217D89C3C();

  LOWORD(v85[0]) = *(v20 + v69[13]);
  LOBYTE(v78) = 9;
  sub_217B1DEE8();
  sub_217D89C3C();
  v49 = (v20 + v69[14]);
  v50 = v49[1];
  v51 = v49[2];
  v52 = v49[3];
  *&v85[0] = *v49;
  *(&v85[0] + 1) = v50;
  *&v85[1] = v51;
  *(&v85[1] + 1) = v52;
  LOBYTE(v78) = 10;
  sub_217AE39D0(*&v85[0], v50, v51, v52);
  sub_217ACFF94();
  sub_217D89C3C();
  sub_217AE4AA0(*&v85[0], *(&v85[0] + 1), *&v85[1], *(&v85[1] + 1));
  v96 = *(v68 + v69[15]);
  v95 = 11;
  sub_217B1EA58();
  sub_217D89CAC();
  v53 = (v68 + v69[16]);
  v54 = v53[1];
  v93[0] = *v53;
  v93[1] = v54;
  v56 = *v53;
  v55 = v53[1];
  v93[2] = v53[2];
  v94 = *(v53 + 48);
  v89 = v56;
  v90 = v55;
  v91 = v53[2];
  v92 = *(v53 + 48);
  v88 = 12;
  sub_217ACC004(v93, v85);
  sub_217A55B98();
  sub_217D89CAC();
  v83[0] = v89;
  v83[1] = v90;
  v83[2] = v91;
  v84 = v92;
  sub_217ACC69C(v83);
  v57 = (v68 + v69[17]);
  v58 = v57[4];
  v59 = v57[1];
  v60 = v57[2];
  v86 = v57[3];
  v87 = v58;
  v61 = *v57;
  v62 = *v57;
  v85[1] = v57[1];
  v85[2] = v60;
  v85[0] = v61;
  v80 = v60;
  v81 = v86;
  v82 = v57[4];
  v78 = v62;
  v79 = v59;
  v77 = 13;
  sub_217AE38AC(v85, v76, &qword_27CB9F6A0, &type metadata for PuzzleData);
  sub_217AD6D08();
  sub_217D89C3C();
  v76[2] = v80;
  v76[3] = v81;
  v76[4] = v82;
  v76[0] = v78;
  v76[1] = v79;
  sub_217AE4A44(v76, &qword_27CB9F6A0, &type metadata for PuzzleData);
  v63 = (v68 + v69[18]);
  v64 = v63[1];
  v65 = v63[2];
  v66 = v63[3];
  v67 = v63[4];
  v71 = *v63;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v70 = 14;
  sub_217AD86BC(v71, v64, v65, v66, v67);
  sub_217B1F08C();
  sub_217D89C3C();
  sub_217AD96A4(v71, v72, v73, v74, v75);
  return (*(v140 + 8))(v9, v6);
}

unint64_t sub_217CB00DC()
{
  result = qword_27CBA3930;
  if (!qword_27CBA3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3930);
  }

  return result;
}

void SubscribeButtonTapEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_217D8899C();
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CB0E2C(0, &qword_27CBA3938, MEMORY[0x277D844C8]);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  v9 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217CB00DC();
  v56 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  else
  {
    v13 = v52;
    v49 = v9;
    v50 = v11;
    LOBYTE(v82) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    v14 = v50;
    (*(v51 + 32))(v50, v55, v4);
    v73 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v48 = v4;
    v55 = 0;
    v15 = &v14[v49[5]];
    v16 = v79;
    v17 = *v81;
    *(v15 + 6) = v80;
    *(v15 + 7) = v17;
    *(v15 + 127) = *&v81[15];
    v18 = v75;
    v19 = v77;
    *(v15 + 2) = v76;
    *(v15 + 3) = v19;
    *(v15 + 4) = v78;
    *(v15 + 5) = v16;
    *v15 = v74;
    *(v15 + 1) = v18;
    LOBYTE(v62) = 2;
    sub_217AD07F8();
    sub_217D89B5C();
    v20 = v84;
    v21 = &v14[v49[6]];
    v22 = v83;
    *v21 = v82;
    *(v21 + 1) = v22;
    *(v21 + 4) = v20;
    LOBYTE(v62) = 3;
    sub_217A5B978();
    sub_217D89B5C();
    v23 = v83;
    v24 = &v14[v49[7]];
    *v24 = v82;
    *(v24 + 2) = v23;
    v72 = 4;
    sub_217A5D308();
    sub_217D89B5C();
    v25 = &v14[v49[8]];
    v26 = v89;
    *(v25 + 6) = v88;
    *(v25 + 7) = v26;
    *(v25 + 8) = v90;
    v27 = v85;
    *(v25 + 2) = v84;
    *(v25 + 3) = v27;
    v28 = v87;
    *(v25 + 4) = v86;
    *(v25 + 5) = v28;
    v29 = v83;
    *v25 = v82;
    *(v25 + 1) = v29;
    LOBYTE(v68) = 5;
    sub_217A5E738();
    sub_217D89B5C();
    v30 = v63;
    v31 = &v14[v49[9]];
    *v31 = v62;
    *(v31 + 8) = v30;
    LOBYTE(v68) = 6;
    sub_217B175F0();
    sub_217D89B5C();
    v32 = v63;
    v33 = BYTE8(v63);
    v34 = &v14[v49[10]];
    *v34 = v62;
    *(v34 + 2) = v32;
    v34[24] = v33;
    LOBYTE(v68) = 7;
    sub_217AFF324();
    sub_217D89B5C();
    v35 = v63;
    v36 = &v50[v49[11]];
    *v36 = v62;
    v36[16] = v35;
    LOBYTE(v68) = 8;
    sub_217B1E44C();
    sub_217D89B5C();
    *&v50[v49[12]] = v62;
    LOBYTE(v68) = 9;
    sub_217B1DE94();
    sub_217D89B5C();
    *&v50[v49[13]] = v62;
    LOBYTE(v68) = 10;
    sub_217ACFF40();
    sub_217D89B5C();
    v37 = &v50[v49[14]];
    v38 = v63;
    *v37 = v62;
    *(v37 + 1) = v38;
    LOBYTE(v68) = 11;
    sub_217B1EA04();
    sub_217D89BCC();
    *&v50[v49[15]] = v62;
    v67 = 12;
    sub_217A54D08();
    sub_217D89BCC();
    v39 = &v50[v49[16]];
    v40 = v69;
    *v39 = v68;
    *(v39 + 1) = v40;
    *(v39 + 2) = v70;
    v39[48] = v71;
    v61 = 13;
    sub_217AD6CB4();
    sub_217D89B5C();
    v41 = &v50[v49[17]];
    v42 = v65;
    *(v41 + 2) = v64;
    *(v41 + 3) = v42;
    *(v41 + 4) = v66;
    v43 = v63;
    *v41 = v62;
    *(v41 + 1) = v43;
    v57 = 14;
    sub_217B1F038();
    sub_217D89B5C();
    (*(v53 + 8))(v56, v54);
    v44 = v60;
    v45 = v50;
    v46 = &v50[v49[18]];
    v47 = v59;
    *v46 = v58;
    *(v46 + 1) = v47;
    *(v46 + 4) = v44;
    sub_217CB0E90(v45, v13);
    __swift_destroy_boxed_opaque_existential_1(v91);
    sub_217CB0EF4(v45);
  }
}

void sub_217CB0E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB00DC();
    v7 = a3(a1, &type metadata for SubscribeButtonTapEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CB0E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CB0EF4(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeButtonTapEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CB1028@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217CAE3A8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217CAE3A8(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217CAE3A8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_217CAE3A8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  sub_217CAE3A8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  sub_217CAE3A8(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  sub_217CAE3A8(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v20 - 8) + 104))(a2 + v19, v7, v20);
  v21 = a1[12];
  sub_217CAE3A8(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v22 - 8) + 104))(a2 + v21, v7, v22);
  v23 = a1[13];
  sub_217CAE3A8(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_217CAE3A8(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_217CAE3A8(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217CAE3A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_217CAE3A8(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v32 - 8) + 104))(a2 + v31, v7, v32);
  v33 = a1[18];
  sub_217CAE3A8(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v7, v34);
}

void sub_217CB1774(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CAE3A8(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CAE3A8(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217CAE3A8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217CAE3A8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217CAE3A8(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217CAE3A8(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
              if (v7 <= 0x3F)
              {
                sub_217CAE3A8(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
                if (v8 <= 0x3F)
                {
                  sub_217CAE3A8(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217CAE3A8(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8, &type metadata for PaywallData);
                    if (v10 <= 0x3F)
                    {
                      sub_217CAE3A8(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                      if (v11 <= 0x3F)
                      {
                        sub_217CAE3A8(319, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
                        if (v12 <= 0x3F)
                        {
                          sub_217CAE3A8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                          if (v13 <= 0x3F)
                          {
                            sub_217CAE3A8(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
                            if (v14 <= 0x3F)
                            {
                              sub_217CAE3A8(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
                              if (v15 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_217CB1C68(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD200, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CB9F108, &type metadata for PurchaseData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CB9F7C8, &type metadata for PurchaseSessionData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C7CF8, &type metadata for PaywallData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_27CB9F6A0, &type metadata for PuzzleData);
                        if (v12 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_2811C7EF8, &type metadata for RecipeData);
                          if (v13 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_217CB1EE0()
{
  result = qword_27CBA3940;
  if (!qword_27CBA3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3940);
  }

  return result;
}

unint64_t sub_217CB1F38()
{
  result = qword_27CBA3948;
  if (!qword_27CBA3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3948);
  }

  return result;
}

unint64_t sub_217CB1F90()
{
  result = qword_27CBA3950;
  if (!qword_27CBA3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3950);
  }

  return result;
}

uint64_t sub_217CB1FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD9F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217CB24AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

NewsAnalytics::AdEngagementType_optional __swiftcall AdEngagementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x696B536F65646976;
  if (v1 != 5)
  {
    v3 = 0x6974737265746E69;
  }

  v4 = 0x7561506F65646976;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x615472656E6E6162;
  if (v1 != 1)
  {
    v5 = 0x616C506F65646976;
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

unint64_t sub_217CB2628()
{
  result = qword_27CBA3958;
  if (!qword_27CBA3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3958);
  }

  return result;
}

uint64_t sub_217CB2688(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217CB27CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x696B536F65646976;
  v6 = 0xE900000000000070;
  if (v2 != 5)
  {
    v5 = 0x6974737265746E69;
    v6 = 0xEF7061546C616974;
  }

  v7 = 0xEA00000000006573;
  v8 = 0x7561506F65646976;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000217DCBA70;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x615472656E6E6162;
  v10 = 0xE900000000000070;
  if (v2 != 1)
  {
    v9 = 0x616C506F65646976;
    v10 = 0xE900000000000079;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_217CB298C()
{
  result = qword_27CBA3960;
  if (!qword_27CBA3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3960);
  }

  return result;
}

uint64_t sub_217CB2AA8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1348);
  __swift_project_value_buffer(v0, qword_2811C1348);
  return sub_217D8866C();
}

uint64_t FeedGroupLayoutEvent2.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGroupLayoutEvent2.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 20);
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 24);
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.feedGroupLayoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.feedGroupLayoutData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 28);
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 32);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGroupLayoutEvent2.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGroupLayoutEvent2(0) + 36);
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGroupLayoutEvent2.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGroupLayoutEvent2(0);
  v5 = v4[5];
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217A608E0(0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t FeedGroupLayoutEvent2.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGroupLayoutEvent2.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGroupLayoutEvent2.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent2.Model(0) + 24));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t FeedGroupLayoutEvent2.Model.feedGroupLayoutData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_217CB37C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 32);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedGroupLayoutEvent2.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGroupLayoutEvent2.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedGroupLayoutEvent2.Model.init(eventData:feedData:groupData:feedGroupLayoutData:timedData:viewData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *a4;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 8);
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  v19 = a7 + v18[5];
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v11;
  v20 = (a7 + v18[6]);
  v21 = a3[7];
  v20[6] = a3[6];
  v20[7] = v21;
  v20[8] = a3[8];
  v22 = a3[3];
  v20[2] = a3[2];
  v20[3] = v22;
  v23 = a3[5];
  v20[4] = a3[4];
  v20[5] = v23;
  v24 = a3[1];
  *v20 = *a3;
  v20[1] = v24;
  *(a7 + v18[7]) = v13;
  v25 = v18[8];
  v26 = sub_217D889CC();
  result = (*(*(v26 - 8) + 32))(a7 + v25, a5, v26);
  v28 = a7 + v18[9];
  *v28 = v14;
  *(v28 + 8) = v15;
  *(v28 + 16) = v16;
  return result;
}

unint64_t sub_217CB39E4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  v4 = 0x74614464656D6974;
  if (v1 != 4)
  {
    v4 = 0x6174614477656976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x74614470756F7267;
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

uint64_t sub_217CB3AA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CB4EC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CB3AC8(uint64_t a1)
{
  v2 = sub_217CB3F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CB3B04(uint64_t a1)
{
  v2 = sub_217CB3F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGroupLayoutEvent2.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CB47A0(0, &qword_27CBA3968, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB3F78();
  sub_217D89E7C();
  LOBYTE(v44) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v54[0] = *v11;
    v55 = v12;
    v56 = v13;
    v53 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[6];
    v16 = v14[4];
    v49 = v14[5];
    v50 = v15;
    v17 = v14[6];
    v18 = v14[8];
    v51 = v14[7];
    v52 = v18;
    v19 = v14[2];
    v20 = *v14;
    v45 = v14[1];
    v46 = v19;
    v21 = v14[2];
    v22 = v14[4];
    v47 = v14[3];
    v48 = v22;
    v23 = *v14;
    v41 = v17;
    v42 = v51;
    v43 = v14[8];
    v44 = v23;
    v37 = v21;
    v38 = v47;
    v39 = v16;
    v40 = v49;
    v35 = v20;
    v36 = v45;
    v34 = 2;
    sub_217AF7618(&v44, v33);
    sub_217A5D3B4();
    sub_217D89CAC();
    v33[7] = v42;
    v33[8] = v43;
    v33[2] = v37;
    v33[3] = v38;
    v33[5] = v40;
    v33[6] = v41;
    v33[4] = v39;
    v33[0] = v35;
    v33[1] = v36;
    sub_217AF8104(v33);
    LOBYTE(v29) = *(v3 + v10[7]);
    v32 = 3;
    sub_217A63994();
    sub_217D89C3C();
    LOBYTE(v29) = 4;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v25 = (v3 + v10[9]);
    v26 = *v25;
    v27 = v25[1];
    LOWORD(v25) = *(v25 + 8);
    v29 = v26;
    v30 = v27;
    v31 = v25;
    v32 = 5;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CB3F78()
{
  result = qword_27CBA3970;
  if (!qword_27CBA3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3970);
  }

  return result;
}

uint64_t FeedGroupLayoutEvent2.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_217D889CC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CB47A0(0, &qword_27CBA3978, MEMORY[0x277D844C8]);
  v39 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB3F78();
  v38 = v9;
  v13 = v53;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v31 = a1;
  v15 = v12;
  v16 = v35;
  v45[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v34 + 32))(v15, v37, v5);
  LOBYTE(v40) = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v17 = v15 + *(v10 + 20);
  *v17 = v45[0];
  *(v17 + 8) = *&v45[8];
  v44 = 2;
  sub_217A5D308();
  v53 = 0;
  sub_217D89BCC();
  v18 = (v15 + *(v10 + 24));
  v19 = v51;
  v20 = v52;
  v18[6] = v50;
  v18[7] = v19;
  v18[8] = v20;
  v21 = v47;
  v18[2] = v46;
  v18[3] = v21;
  v22 = v49;
  v18[4] = v48;
  v18[5] = v22;
  v23 = *&v45[16];
  *v18 = *v45;
  v18[1] = v23;
  v43 = 3;
  sub_217A63908();
  sub_217D89B5C();
  v24 = v10;
  v25 = v36;
  *(v15 + v24[7]) = v40;
  LOBYTE(v40) = 4;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v26 = v33;
  sub_217D89BCC();
  (*(v16 + 32))(v15 + v24[8], v14, v26);
  v43 = 5;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v25 + 8))(v38, v39);
  v27 = v41;
  v28 = v42;
  v29 = v15 + v24[9];
  *v29 = v40;
  *(v29 + 8) = v27;
  *(v29 + 16) = v28;
  sub_217CB4804(v15, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_217CB4868(v15);
}

void sub_217CB47A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB3F78();
    v7 = a3(a1, &type metadata for FeedGroupLayoutEvent2.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CB4804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CB4868(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupLayoutEvent2.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217CB499C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A60740(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A60740(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217A60740(0, &qword_2811C8618, sub_217A63908, sub_217A63994, &type metadata for FeedGroupLayoutData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217A608E0(0);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A60740(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217CB4CA0(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217CB4D5C();
    if (v2 <= 0x3F)
    {
      sub_217D889CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217CB4D5C()
{
  if (!qword_27CBA3990)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3990);
    }
  }
}

unint64_t sub_217CB4DC0()
{
  result = qword_27CBA3998;
  if (!qword_27CBA3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3998);
  }

  return result;
}

unint64_t sub_217CB4E18()
{
  result = qword_27CBA39A0;
  if (!qword_27CBA39A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA39A0);
  }

  return result;
}

unint64_t sub_217CB4E70()
{
  result = qword_27CBA39A8;
  if (!qword_27CBA39A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA39A8);
  }

  return result;
}

uint64_t sub_217CB4EC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1DF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t ExposedPaywallContentData.channelIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsAnalytics::ExposedPaywallContentData __swiftcall ExposedPaywallContentData.init(channelIDs:)(Swift::OpaquePointer_optional channelIDs)
{
  rawValue = channelIDs.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.channelIDs.value._rawValue = v4;
  result.channelIDs.is_nil = v5;
  return result;
}

uint64_t sub_217CB5180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xEA00000000007344)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217CB5210(uint64_t a1)
{
  v2 = sub_217CB5424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CB524C(uint64_t a1)
{
  v2 = sub_217CB5424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExposedPaywallContentData.encode(to:)(void *a1)
{
  sub_217CB563C(0, &qword_2811BC5A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB5424();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_217D89C3C();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217CB5424()
{
  result = qword_2811BF278;
  if (!qword_2811BF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF278);
  }

  return result;
}

uint64_t ExposedPaywallContentData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217CB563C(0, &qword_27CBA39B0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB5424();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217CB563C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB5424();
    v7 = a3(a1, &type metadata for ExposedPaywallContentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217CB56A4()
{
  result = qword_2811BF258;
  if (!qword_2811BF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF258);
  }

  return result;
}

unint64_t sub_217CB56FC()
{
  result = qword_2811BF260;
  if (!qword_2811BF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF260);
  }

  return result;
}

unint64_t sub_217CB57A4()
{
  result = qword_27CBA39B8;
  if (!qword_27CBA39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA39B8);
  }

  return result;
}

unint64_t sub_217CB57FC()
{
  result = qword_2811BF268;
  if (!qword_2811BF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF268);
  }

  return result;
}

unint64_t sub_217CB5854()
{
  result = qword_2811BF270;
  if (!qword_2811BF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF270);
  }

  return result;
}

uint64_t sub_217CB5970()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA39F0);
  __swift_project_value_buffer(v0, qword_27CBA39F0);
  return sub_217D8866C();
}

uint64_t SubscriptionResultEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionResultEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290, &type metadata for SubscriptionResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290, &type metadata for SubscriptionResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854, &type metadata for StoreKitErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854, &type metadata for StoreKitErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 64);
  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 64);
  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.amsErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 68);
  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44, &type metadata for AMSErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.amsErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 68);
  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44, &type metadata for AMSErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 72);
  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 72);
  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 76);
  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 76);
  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.puzzleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 80);
  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.puzzleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 80);
  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.sourceUrlData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 84);
  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.sourceUrlData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 84);
  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 88);
  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217CB7824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SubscriptionResultEvent.recipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 88);
  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionResultEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217CB7824(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217CB7824(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217CB7824(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_217CB7824(0, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217CB7824(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217CB7824(0, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217CB7824(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217CB7824(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v21 - 8) + 104))(a1 + v20, v6, v21);
  v22 = v4[13];
  sub_217CB7824(0, &qword_2811C85A8, sub_217AEB238, sub_217AEB290, &type metadata for SubscriptionResultData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217CB7824(0, &qword_2811C8668, sub_217B717FC, sub_217B71854, &type metadata for StoreKitErrorData);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_217CB7824(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v27 - 8) + 104))(a1 + v26, v6, v27);
  v28 = v4[16];
  sub_217CB7824(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  (*(*(v29 - 8) + 104))(a1 + v28, v6, v29);
  v30 = v4[17];
  sub_217CB7824(0, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44, &type metadata for AMSErrorData);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217CB7824(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217CB7824(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v35 - 8) + 104))(a1 + v34, v6, v35);
  v36 = v4[20];
  sub_217CB7824(0, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
  (*(*(v37 - 8) + 104))(a1 + v36, v6, v37);
  v38 = v4[21];
  sub_217CB7824(0, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
  (*(*(v39 - 8) + 104))(a1 + v38, v6, v39);
  v40 = v4[22];
  sub_217CB7824(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  v42 = *(*(v41 - 8) + 104);

  return v42(a1 + v40, v6, v41);
}

uint64_t SubscriptionResultEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AE38AC(v17, v16, &qword_2811C7DB8, &type metadata for ArticleData);
}

uint64_t SubscriptionResultEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t SubscriptionResultEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t SubscriptionResultEvent.Model.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 32);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

void SubscriptionResultEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

uint64_t SubscriptionResultEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionResultEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void SubscriptionResultEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t SubscriptionResultEvent.Model.subscriptionResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SubscriptionResultEvent.Model.storeKitErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

void SubscriptionResultEvent.Model.userBundleSubscriptionContextData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 60);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  sub_217C50AA4(v4, v5, v6, v7, v8, v9);
}

uint64_t SubscriptionResultEvent.Model.adReferralData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.amsErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  v4 = (v1 + *(result + 68));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

void SubscriptionResultEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AE3AE8(v4, v5, v6, v7, v8);
}

uint64_t SubscriptionResultEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 76));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.puzzleData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 80));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_217AE38AC(v10, &v9, &qword_27CB9F6A0, &type metadata for PuzzleData);
}

void SubscriptionResultEvent.Model.sourceUrlData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217C70C5C(v4, v5, v6, v7);
}

void SubscriptionResultEvent.Model.recipeData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 88));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

__n128 SubscriptionResultEvent.Model.init(eventData:articleData:feedData:groupData:sectionData:campaignData:purchaseData:purchaseSessionData:issueData:subscriptionResultData:storeKitErrorData:userBundleSubscriptionContextData:adReferralData:amsErrorData:articleExposureContextData:tagData:puzzleData:sourceUrlData:recipeData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, char *a11, char *a12, __int128 *a13, uint64_t *a14, int *a15, __int128 *a16, uint64_t *a17, _OWORD *a18, __int128 *a19, uint64_t a20)
{
  v57 = *a3;
  v56 = *(a3 + 2);
  v64 = *a5;
  v63 = *(a5 + 2);
  v62 = *(a5 + 24);
  v67 = *(a6 + 5);
  v68 = *(a6 + 4);
  v70 = a7[1];
  v71 = *a7;
  v69 = *(a7 + 16);
  v73 = *a8;
  v72 = a8[1];
  v75 = *a11;
  v76 = *a12;
  v78 = *(a13 + 4);
  v77 = *(a13 + 5);
  v79 = a14[1];
  v80 = *a14;
  v82 = *(a15 + 4);
  v83 = *a15;
  v85 = a17[1];
  v86 = *a17;
  v74 = *(a13 + 48);
  v81 = *(a16 + 4);
  v90 = *(a20 + 32);
  v24 = sub_217D8899C();
  v88 = *(a20 + 16);
  v89 = *a20;
  v87 = *a19;
  v84 = a19[1];
  v65 = a16[1];
  v66 = *a16;
  v60 = a13[1];
  v61 = *a13;
  v58 = a10[1];
  v59 = *a10;
  v54 = a6[1];
  v55 = *a6;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for SubscriptionResultEvent.Model(0);
  v26 = a9 + v25[5];
  v27 = *(a2 + 48);
  *(v26 + 32) = *(a2 + 32);
  *(v26 + 48) = v27;
  v28 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 16) = v28;
  *(v26 + 127) = *(a2 + 127);
  v29 = *(a2 + 112);
  *(v26 + 96) = *(a2 + 96);
  *(v26 + 112) = v29;
  v30 = *(a2 + 80);
  *(v26 + 64) = *(a2 + 64);
  *(v26 + 80) = v30;
  v31 = a9 + v25[6];
  *v31 = v57;
  *(v31 + 16) = v56;
  v32 = (a9 + v25[7]);
  v33 = a4[7];
  v32[6] = a4[6];
  v32[7] = v33;
  v32[8] = a4[8];
  v34 = a4[3];
  v32[2] = a4[2];
  v32[3] = v34;
  v35 = a4[5];
  v32[4] = a4[4];
  v32[5] = v35;
  v36 = a4[1];
  *v32 = *a4;
  v32[1] = v36;
  v37 = a9 + v25[8];
  *v37 = v64;
  *(v37 + 16) = v63;
  *(v37 + 24) = v62;
  v38 = a9 + v25[9];
  *v38 = v55;
  *(v38 + 16) = v54;
  *(v38 + 32) = v68;
  *(v38 + 40) = v67;
  v39 = a9 + v25[10];
  *v39 = v71;
  *(v39 + 8) = v70;
  *(v39 + 16) = v69;
  v40 = (a9 + v25[11]);
  *v40 = v73;
  v40[1] = v72;
  v41 = (a9 + v25[12]);
  *v41 = v59;
  v41[1] = v58;
  *(a9 + v25[13]) = v75;
  *(a9 + v25[14]) = v76;
  v42 = a9 + v25[15];
  *v42 = v61;
  *(v42 + 16) = v60;
  *(v42 + 32) = v78;
  *(v42 + 40) = v77;
  *(v42 + 48) = v74;
  v43 = (a9 + v25[16]);
  *v43 = v80;
  v43[1] = v79;
  v44 = a9 + v25[17];
  *v44 = v83;
  *(v44 + 4) = v82;
  v45 = a9 + v25[18];
  *v45 = v66;
  *(v45 + 16) = v65;
  *(v45 + 32) = v81;
  v46 = (a9 + v25[19]);
  *v46 = v86;
  v46[1] = v85;
  v47 = (a9 + v25[20]);
  v48 = a18[4];
  v47[3] = a18[3];
  v47[4] = v48;
  v49 = a18[2];
  v47[1] = a18[1];
  v47[2] = v49;
  *v47 = *a18;
  v50 = (a9 + v25[21]);
  *v50 = v87;
  v50[1] = v84;
  v51 = a9 + v25[22];
  result = v89;
  *v51 = v89;
  *(v51 + 16) = v88;
  *(v51 + 32) = v90;
  return result;
}

uint64_t sub_217CB8C70(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x6174614464656566;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      result = 0x446E6F6974636573;
      break;
    case 5:
      result = 0x6E676961706D6163;
      break;
    case 6:
      result = 0x6573616863727570;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x7461446575737369;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0x7272656665526461;
      break;
    case 13:
      result = 0x726F727245736D61;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x61746144676174;
      break;
    case 16:
      v3 = 0x656C7A7A7570;
      goto LABEL_20;
    case 17:
      result = 0x7255656372756F73;
      break;
    case 18:
      v3 = 0x657069636572;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217CB8E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217CBB6A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217CB8ED0(uint64_t a1)
{
  v2 = sub_217CB9A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CB8F0C(uint64_t a1)
{
  v2 = sub_217CB9A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CBAA44(0, &qword_27CBA3A08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v82 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB9A88();
  sub_217D89E7C();
  v143[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SubscriptionResultEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v141 = *(v11 + 96);
    *v142 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v137 = *(v11 + 32);
    v138 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v139 = *(v11 + 64);
    v140 = v17;
    v18 = *(v11 + 16);
    v136[0] = *v11;
    v136[1] = v18;
    v19 = *(v11 + 112);
    v134 = v141;
    v135[0] = v19;
    v130 = v137;
    v131 = v16;
    v133 = v12;
    v132 = v139;
    *&v142[15] = *(v11 + 127);
    *(v135 + 15) = *(v11 + 127);
    v128 = v136[0];
    v129 = v14;
    v127 = 1;
    sub_217AE38AC(v136, v113, &qword_2811C7DB8, &type metadata for ArticleData);
    sub_217ACF52C();
    sub_217D89C3C();
    v125[6] = v134;
    *v126 = v135[0];
    *&v126[15] = *(v135 + 15);
    v125[2] = v130;
    v125[3] = v131;
    v125[4] = v132;
    v125[5] = v133;
    v125[0] = v128;
    v125[1] = v129;
    sub_217AE4A44(v125, &qword_2811C7DB8, &type metadata for ArticleData);
    v20 = (v3 + v10[6]);
    v21 = v20[1];
    v22 = v20[2];
    v122 = *v20;
    v123 = v21;
    v124 = v22;
    v121 = 2;
    sub_217AD1A68(v122, v21, v22);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v122, v123, v124);
    v23 = (v3 + v10[7]);
    v24 = v23[5];
    v25 = v23[7];
    v118 = v23[6];
    v119 = v25;
    v26 = v23[7];
    v120 = v23[8];
    v27 = v23[1];
    v28 = v23[3];
    v114 = v23[2];
    v115 = v28;
    v29 = v23[3];
    v30 = v23[5];
    v116 = v23[4];
    v117 = v30;
    v31 = v23[1];
    v113[0] = *v23;
    v113[1] = v31;
    v110 = v118;
    v111 = v26;
    v112 = v23[8];
    v106 = v114;
    v107 = v29;
    v108 = v116;
    v109 = v24;
    v104 = v113[0];
    v105 = v27;
    v103 = 3;
    sub_217AE38AC(v113, v102, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v102[6] = v110;
    v102[7] = v111;
    v102[8] = v112;
    v102[2] = v106;
    v102[3] = v107;
    v102[4] = v108;
    v102[5] = v109;
    v102[0] = v104;
    v102[1] = v105;
    sub_217AE4A44(v102, &qword_2811BD178, &type metadata for GroupData);
    v32 = v3 + v10[8];
    v33 = *(v32 + 24);
    *&v95[0] = *v32;
    *(v95 + 8) = *(v32 + 8);
    BYTE8(v95[1]) = v33;
    LOBYTE(v90) = 4;
    sub_217B17644();

    sub_217D89C3C();

    v34 = (v3 + v10[9]);
    v35 = v34[1];
    v36 = v34[2];
    v37 = v34[3];
    v38 = v34[4];
    v39 = v34[5];
    *&v95[0] = *v34;
    *(&v95[0] + 1) = v35;
    *&v95[1] = v36;
    *(&v95[1] + 1) = v37;
    *&v96 = v38;
    *(&v96 + 1) = v39;
    LOBYTE(v90) = 5;
    sub_217B1563C(*&v95[0], v35, v36, v37, v38, v39);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(*&v95[0], *(&v95[0] + 1), *&v95[1], *(&v95[1] + 1), v96, *(&v96 + 1));
    v41 = (v3 + v10[10]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v41) = *(v41 + 16);
    *&v95[0] = v42;
    *(&v95[0] + 1) = v43;
    LOBYTE(v95[1]) = v41;
    LOBYTE(v90) = 6;
    sub_217AFF378();

    sub_217D89CAC();

    v44 = (v3 + v10[11]);
    v45 = v44[1];
    *&v95[0] = *v44;
    *(&v95[0] + 1) = v45;
    LOBYTE(v90) = 7;
    sub_217B1E4A0();

    sub_217D89CAC();

    v46 = (v3 + v10[12]);
    v47 = v46[1];
    v48 = v46[2];
    v49 = v46[3];
    *&v95[0] = *v46;
    *(&v95[0] + 1) = v47;
    *&v95[1] = v48;
    *(&v95[1] + 1) = v49;
    LOBYTE(v90) = 8;
    sub_217AE39D0(*&v95[0], v47, v48, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(*&v95[0], *(&v95[0] + 1), *&v95[1], *(&v95[1] + 1));
    LOBYTE(v95[0]) = *(v3 + v10[13]);
    LOBYTE(v90) = 9;
    sub_217AEB290();
    sub_217D89CAC();
    LOBYTE(v95[0]) = *(v3 + v10[14]);
    LOBYTE(v90) = 10;
    sub_217B71854();
    sub_217D89C3C();
    v50 = v3 + v10[15];
    v51 = *(v50 + 8);
    v52 = *(v50 + 16);
    v53 = *(v50 + 24);
    v54 = *(v50 + 32);
    v55 = *(v50 + 40);
    v56 = *(v50 + 48);
    *&v95[0] = *v50;
    *(&v95[0] + 1) = v51;
    *&v95[1] = v52;
    *(&v95[1] + 1) = v53;
    *&v96 = v54;
    *(&v96 + 1) = v55;
    LOBYTE(v97) = v56;
    LOBYTE(v90) = 11;
    sub_217C50AA4(*&v95[0], v51, v52, v53, v54, v55);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(*&v95[0], *(&v95[0] + 1), *&v95[1], *(&v95[1] + 1), v96, *(&v96 + 1));
    v57 = (v3 + v10[16]);
    v58 = v57[1];
    *&v95[0] = *v57;
    *(&v95[0] + 1) = v58;
    LOBYTE(v90) = 12;
    sub_217BEB06C();

    sub_217D89C3C();

    v59 = (v3 + v10[17]);
    v60 = *v59;
    LOBYTE(v59) = *(v59 + 4);
    LODWORD(v95[0]) = v60;
    BYTE4(v95[0]) = v59;
    LOBYTE(v90) = 13;
    sub_217B8CF44();
    sub_217D89C3C();
    v61 = (v3 + v10[18]);
    v62 = v61[1];
    v63 = v61[2];
    v64 = v61[3];
    v65 = v61[4];
    *&v95[0] = *v61;
    *(&v95[0] + 1) = v62;
    *&v95[1] = v63;
    *(&v95[1] + 1) = v64;
    *&v96 = v65;
    LOBYTE(v90) = 14;
    sub_217AE3AE8(*&v95[0], v62, v63, v64, v65);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(*&v95[0], *(&v95[0] + 1), *&v95[1], *(&v95[1] + 1), v96);
    v66 = (v3 + v10[19]);
    v67 = v66[1];
    v100 = *v66;
    v101 = v67;
    v99 = 15;
    sub_217AF6B14();

    sub_217D89C3C();

    v68 = (v3 + v10[20]);
    v69 = v68[1];
    v70 = v68[3];
    v96 = v68[2];
    v97 = v70;
    v71 = v68[3];
    v98 = v68[4];
    v72 = v68[1];
    v95[0] = *v68;
    v95[1] = v72;
    v92 = v96;
    v93 = v71;
    v94 = v68[4];
    v90 = v95[0];
    v91 = v69;
    v89 = 16;
    sub_217AE38AC(v95, v88, &qword_27CB9F6A0, &type metadata for PuzzleData);
    sub_217AD6D08();
    sub_217D89C3C();
    v88[2] = v92;
    v88[3] = v93;
    v88[4] = v94;
    v88[0] = v90;
    v88[1] = v91;
    sub_217AE4A44(v88, &qword_27CB9F6A0, &type metadata for PuzzleData);
    v73 = (v3 + v10[21]);
    v74 = v73[1];
    v75 = v73[2];
    v76 = v73[3];
    v82 = *v73;
    v83 = v74;
    v84 = v75;
    v85 = v76;
    v87 = 17;
    sub_217C70C5C(v82, v74, v75, v76);
    sub_217B6AB1C();
    sub_217D89C3C();
    sub_217AE4AA0(v82, v83, v84, v85);
    v77 = (v3 + v10[22]);
    v78 = v77[1];
    v79 = v77[2];
    v80 = v77[3];
    v81 = v77[4];
    v82 = *v77;
    v83 = v78;
    v84 = v79;
    v85 = v80;
    v86 = v81;
    v87 = 18;
    sub_217AD86BC(v82, v78, v79, v80, v81);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v82, v83, v84, v85, v86);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CB9A88()
{
  result = qword_27CBA3A10;
  if (!qword_27CBA3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A10);
  }

  return result;
}

void SubscriptionResultEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_217D8899C();
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v61 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CBAA44(0, &qword_27CBA3A18, MEMORY[0x277D844C8]);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v56 - v6;
  v8 = type metadata accessor for SubscriptionResultEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CB9A88();
  v64 = v7;
  v11 = v94;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v57 = v8;
    v58 = a1;
    v94 = v10;
    LOBYTE(v85) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v12 = v61;
    sub_217D89BCC();
    v13 = v94;
    (*(v60 + 32))(v94, v12, v3);
    v76 = 1;
    sub_217ACF4D8();
    sub_217D89B5C();
    v56[1] = v3;
    v61 = 0;
    v14 = v57;
    v15 = &v13[v57[5]];
    v16 = *v84;
    *(v15 + 6) = v83;
    *(v15 + 7) = v16;
    *(v15 + 127) = *&v84[15];
    v17 = v80;
    *(v15 + 2) = v79;
    *(v15 + 3) = v17;
    v18 = v82;
    *(v15 + 4) = v81;
    *(v15 + 5) = v18;
    v19 = v78;
    *v15 = v77;
    *(v15 + 1) = v19;
    LOBYTE(v70) = 2;
    sub_217A5B978();
    sub_217D89B5C();
    v20 = v86;
    v21 = &v13[v14[6]];
    *v21 = v85;
    *(v21 + 2) = v20;
    v75 = 3;
    sub_217A5D308();
    sub_217D89B5C();
    v22 = &v13[v14[7]];
    v23 = v92;
    *(v22 + 6) = v91;
    *(v22 + 7) = v23;
    *(v22 + 8) = v93;
    v24 = v88;
    *(v22 + 2) = v87;
    *(v22 + 3) = v24;
    v25 = v90;
    *(v22 + 4) = v89;
    *(v22 + 5) = v25;
    v26 = v86;
    *v22 = v85;
    *(v22 + 1) = v26;
    LOBYTE(v65) = 4;
    sub_217B175F0();
    sub_217D89B5C();
    v27 = v71;
    v28 = BYTE8(v71);
    v29 = &v13[v14[8]];
    *v29 = v70;
    *(v29 + 2) = v27;
    v29[24] = v28;
    LOBYTE(v65) = 5;
    sub_217A66A84();
    sub_217D89B5C();
    v30 = &v13[v14[9]];
    v31 = v71;
    *v30 = v70;
    *(v30 + 1) = v31;
    *(v30 + 2) = v72;
    LOBYTE(v65) = 6;
    sub_217AFF324();
    sub_217D89BCC();
    v32 = *(&v70 + 1);
    v33 = v71;
    v34 = &v13[v14[10]];
    *v34 = v70;
    *(v34 + 1) = v32;
    v34[16] = v33;
    LOBYTE(v65) = 7;
    sub_217B1E44C();
    sub_217D89BCC();
    v35 = *(&v70 + 1);
    v36 = &v13[v14[11]];
    *v36 = v70;
    *(v36 + 1) = v35;
    LOBYTE(v65) = 8;
    sub_217ACFF40();
    sub_217D89B5C();
    v37 = &v94[v57[12]];
    v38 = v71;
    *v37 = v70;
    *(v37 + 1) = v38;
    LOBYTE(v65) = 9;
    sub_217AEB238();
    sub_217D89BCC();
    v94[v57[13]] = v70;
    LOBYTE(v65) = 10;
    sub_217B717FC();
    sub_217D89B5C();
    v94[v57[14]] = v70;
    LOBYTE(v65) = 11;
    sub_217A54D08();
    sub_217D89B5C();
    v39 = v73;
    v40 = &v94[v57[15]];
    v41 = v71;
    *v40 = v70;
    *(v40 + 1) = v41;
    *(v40 + 2) = v72;
    v40[48] = v39;
    LOBYTE(v65) = 12;
    sub_217BEB014();
    sub_217D89B5C();
    *&v94[v57[16]] = v70;
    LOBYTE(v65) = 13;
    sub_217B8CEEC();
    sub_217D89B5C();
    v42 = BYTE4(v70);
    v43 = &v94[v57[17]];
    *v43 = v70;
    v43[4] = v42;
    LOBYTE(v65) = 14;
    sub_217AE2CA8();
    sub_217D89B5C();
    v44 = v72;
    v45 = &v94[v57[18]];
    v46 = v71;
    *v45 = v70;
    *(v45 + 1) = v46;
    *(v45 + 4) = v44;
    LOBYTE(v65) = 15;
    sub_217AF6AC0();
    sub_217D89B5C();
    *&v94[v57[19]] = v70;
    v69 = 16;
    sub_217AD6CB4();
    sub_217D89B5C();
    v47 = &v94[v57[20]];
    v48 = v73;
    *(v47 + 2) = v72;
    *(v47 + 3) = v48;
    *(v47 + 4) = v74;
    v49 = v71;
    *v47 = v70;
    *(v47 + 1) = v49;
    v68 = 17;
    sub_217B6AAC8();
    sub_217D89B5C();
    v50 = &v94[v57[21]];
    v51 = v66;
    *v50 = v65;
    *(v50 + 1) = v51;
    v68 = 18;
    sub_217B1F038();
    sub_217D89B5C();
    (*(v62 + 8))(v64, v63);
    v52 = v67;
    v53 = v94;
    v54 = &v94[v57[22]];
    v55 = v66;
    *v54 = v65;
    *(v54 + 1) = v55;
    *(v54 + 4) = v52;
    sub_217CBAAA8(v53, v59);
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_217CBAB0C(v53);
  }
}

void sub_217CBAA44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CB9A88();
    v7 = a3(a1, &type metadata for SubscriptionResultEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CBAAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CBAB0C(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217CBAC6C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217CB7824(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217CB7824(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217CB7824(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217CB7824(319, &qword_2811C87C8, sub_217B175F0, sub_217B17644, &type metadata for SectionData);
          if (v5 <= 0x3F)
          {
            sub_217CB7824(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
            if (v6 <= 0x3F)
            {
              sub_217CB7824(319, &qword_2811C8790, sub_217AFF324, sub_217AFF378, &type metadata for PurchaseData);
              if (v7 <= 0x3F)
              {
                sub_217CB7824(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
                if (v8 <= 0x3F)
                {
                  sub_217CB7824(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                  if (v9 <= 0x3F)
                  {
                    sub_217CB7824(319, &qword_2811C85A8, sub_217AEB238, sub_217AEB290, &type metadata for SubscriptionResultData);
                    if (v10 <= 0x3F)
                    {
                      sub_217CB7824(319, &qword_2811C8668, sub_217B717FC, sub_217B71854, &type metadata for StoreKitErrorData);
                      if (v11 <= 0x3F)
                      {
                        sub_217CB7824(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                        if (v12 <= 0x3F)
                        {
                          sub_217CB7824(319, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
                          if (v13 <= 0x3F)
                          {
                            sub_217CB7824(319, &qword_2811C87B8, sub_217B8CEEC, sub_217B8CF44, &type metadata for AMSErrorData);
                            if (v14 <= 0x3F)
                            {
                              sub_217CB7824(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                              if (v15 <= 0x3F)
                              {
                                sub_217CB7824(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
                                if (v16 <= 0x3F)
                                {
                                  sub_217CB7824(319, &qword_2811C8828, sub_217AD6CB4, sub_217AD6D08, &type metadata for PuzzleData);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_217CB7824(319, &qword_2811C84F0, sub_217B6AAC8, sub_217B6AB1C, &type metadata for URLData);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_217CB7824(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
                                      if (v19 <= 0x3F)
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

void sub_217CBB2A4(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C7DB8, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7C80, &type metadata for SectionData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C7A98, &type metadata for CampaignData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CBA3A20, &type metadata for StoreKitErrorData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811BDCD8, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_27CBA3A28, &type metadata for AdReferralData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_27CBA3A30, &type metadata for AMSErrorData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811BF120, &type metadata for ArticleExposureContextData);
                        if (v12 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_2811BD360, &type metadata for TagData);
                          if (v13 <= 0x3F)
                          {
                            sub_217A5E974(319, &qword_27CB9F6A0, &type metadata for PuzzleData);
                            if (v14 <= 0x3F)
                            {
                              sub_217A5E974(319, &qword_27CBA3A38, &type metadata for URLData);
                              if (v15 <= 0x3F)
                              {
                                sub_217A5E974(319, &qword_2811C7EF8, &type metadata for RecipeData);
                                if (v16 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217CBB5A0()
{
  result = qword_27CBA3A40;
  if (!qword_27CBA3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A40);
  }

  return result;
}

unint64_t sub_217CBB5F8()
{
  result = qword_27CBA3A48;
  if (!qword_27CBA3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A48);
  }

  return result;
}

unint64_t sub_217CBB650()
{
  result = qword_27CBA3A50;
  if (!qword_27CBA3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3A50);
  }

  return result;
}

uint64_t sub_217CBB6A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD1E10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1E30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7272656665526461 && a2 == 0xEE00617461446C61 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726F727245736D61 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6144656C7A7A7570 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7255656372756F73 && a2 == 0xED0000617461446CLL || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6144657069636572 && a2 == 0xEA00000000006174)
  {

    return 18;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217CBBCAC()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA3A58);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3A58);
  *v1 = 0x726F70732E6D6F63;
  *(v1 + 8) = 0xEA00000000007374;
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217CBBD9C()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA3A70);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3A70);
  v2 = *MEMORY[0x277CEADB0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217CBBE5C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3A88);
  __swift_project_value_buffer(v0, qword_27CBA3A88);
  return sub_217D8866C();
}

uint64_t FollowSportsTagEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowSportsTagEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 20);
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 24);
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.sportsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.sportsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 28);
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowSportsTagEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowSportsTagEvent(0) + 32);
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FollowSportsTagEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FollowSportsTagEvent(0);
  v5 = v4[5];
  sub_217A62980(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62980(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62980(0, &qword_2811C8808, sub_217A6120C, sub_217A61284, &type metadata for SportsData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A62980(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t FollowSportsTagEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t FollowSportsTagEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t FollowSportsTagEvent.Model.sportsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 28));
}

uint64_t FollowSportsTagEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FollowSportsTagEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 FollowSportsTagEvent.Model.init(eventData:userBundleSubscriptionContextData:tagData:sportsData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 8);
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for FollowSportsTagEvent.Model(0);
  v17 = a6 + v16[5];
  v18 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v18;
  result = *(a2 + 32);
  *(v17 + 32) = result;
  *(v17 + 48) = *(a2 + 48);
  v20 = (a6 + v16[6]);
  *v20 = v9;
  v20[1] = v10;
  *(a6 + v16[7]) = v11;
  v21 = a6 + v16[8];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  return result;
}

uint64_t sub_217CBCB30(uint64_t a1)
{
  v2 = sub_217CBCF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CBCB6C(uint64_t a1)
{
  v2 = sub_217CBCF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FollowSportsTagEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217CBD4C0(0, &qword_27CBA3AA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBCF60();
  sub_217D89E7C();
  v37 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FollowSportsTagEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[2];
    v13 = *v11;
    v14 = *v11;
    v34 = v11[1];
    v35 = v12;
    v33 = v13;
    v36 = *(v11 + 48);
    v29 = v14;
    v30 = v34;
    v31 = v11[2];
    v32 = *(v11 + 48);
    v28 = 1;
    sub_217ACC004(&v33, v26);
    sub_217A55B98();
    sub_217D89CAC();
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v27 = v32;
    sub_217ACC69C(v26);
    v15 = (v3 + v10[6]);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v25 = 2;
    sub_217AF6B14();

    sub_217D89CAC();

    v22 = *(v3 + v10[7]);
    v25 = 3;
    sub_217A61284();

    sub_217D89CAC();

    v18 = (v3 + v10[8]);
    v19 = *v18;
    v20 = v18[1];
    LOWORD(v18) = *(v18 + 8);
    v22 = v19;
    v23 = v20;
    v24 = v18;
    v25 = 4;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217CBCF60()
{
  result = qword_27CBA3AA8;
  if (!qword_27CBA3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AA8);
  }

  return result;
}

uint64_t FollowSportsTagEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CBD4C0(0, &qword_27CBA3AB0, MEMORY[0x277D844C8]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for FollowSportsTagEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBCF60();
  v28 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v25;
  LOBYTE(v33) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v26;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v38 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  v14 = &v11[v9[5]];
  v15 = v34;
  *v14 = v33;
  *(v14 + 1) = v15;
  *(v14 + 2) = v35;
  v14[48] = v36;
  v37 = 2;
  sub_217AF6AC0();
  v26 = 0;
  sub_217D89BCC();
  v16 = v27;
  v17 = v31;
  v18 = &v11[v9[6]];
  *v18 = v30;
  *(v18 + 1) = v17;
  v37 = 3;
  sub_217A6120C();
  sub_217D89BCC();
  *&v11[v9[7]] = v30;
  v37 = 4;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v16 + 8))(v28, v29);
  v19 = v31;
  v20 = v32;
  v21 = &v11[v9[8]];
  *v21 = v30;
  *(v21 + 1) = v19;
  *(v21 + 8) = v20;
  sub_217CBD524(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217CBD588(v11);
}

void sub_217CBD4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217CBCF60();
    v7 = a3(a1, &type metadata for FollowSportsTagEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217CBD524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowSportsTagEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217CBD588(uint64_t a1)
{
  v2 = type metadata accessor for FollowSportsTagEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217CBD720()
{
  result = qword_27CBA3AD8;
  if (!qword_27CBA3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AD8);
  }

  return result;
}

unint64_t sub_217CBD778()
{
  result = qword_27CBA3AE0;
  if (!qword_27CBA3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AE0);
  }

  return result;
}

unint64_t sub_217CBD7D0()
{
  result = qword_27CBA3AE8;
  if (!qword_27CBA3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AE8);
  }

  return result;
}

uint64_t sub_217CBD838@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_217CBD868(uint64_t a1)
{
  v2 = sub_217CBDA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217CBD8A4(uint64_t a1)
{
  v2 = sub_217CBDA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationTagData.encode(to:)(void *a1)
{
  sub_217CBD9EC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBDA48();
  sub_217D89E7C();
  return (*(v4 + 8))(v6, v3);
}

void sub_217CBD9EC(uint64_t a1)
{
  if (!qword_27CBA3AF0)
  {
    sub_217CBDA48();
    v1 = sub_217D89CDC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA3AF0);
    }
  }
}

unint64_t sub_217CBDA48()
{
  result = qword_27CBA3AF8;
  if (!qword_27CBA3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3AF8);
  }

  return result;
}

unint64_t sub_217CBDAC8()
{
  result = qword_27CBA3B00;
  if (!qword_27CBA3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B00);
  }

  return result;
}

unint64_t sub_217CBDB20()
{
  result = qword_27CBA3B08;
  if (!qword_27CBA3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B08);
  }

  return result;
}

uint64_t sub_217CBDB9C(void *a1)
{
  sub_217CBD9EC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217CBDA48();
  sub_217D89E7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217CBDCCC()
{
  result = qword_2811C29C0;
  if (!qword_2811C29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C29C0);
  }

  return result;
}

unint64_t sub_217CBDD24()
{
  result = qword_27CBA3B10;
  if (!qword_27CBA3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B10);
  }

  return result;
}

NewsAnalytics::DialogStyle_optional __swiftcall DialogStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DialogStyle.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  v2 = 0x7473616F74;
  if (*v0 != 2)
  {
    v2 = 0x6954656C62627562;
  }

  if (*v0)
  {
    v1 = 0x72656E6E6162;
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

unint64_t sub_217CBDE58()
{
  result = qword_27CBA3B18;
  if (!qword_27CBA3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B18);
  }

  return result;
}

uint64_t sub_217CBDEAC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBDF68(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CBE010(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBE0D4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E696C6E69;
  v4 = 0xE500000000000000;
  v5 = 0x7473616F74;
  if (*v1 != 2)
  {
    v5 = 0x6954656C62627562;
    v4 = 0xE900000000000070;
  }

  if (*v1)
  {
    v3 = 0x72656E6E6162;
    v2 = 0xE600000000000000;
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

unint64_t sub_217CBE20C()
{
  result = qword_2811C7D60;
  if (!qword_2811C7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7D60);
  }

  return result;
}

NewsAnalytics::PurchaseSource_optional __swiftcall PurchaseSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchaseSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1937204590;
  if (*v0 != 2)
  {
    v2 = 6448503;
  }

  if (*v0)
  {
    v1 = 0x65726F7453707061;
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

unint64_t sub_217CBE338()
{
  result = qword_27CBA3B20;
  if (!qword_27CBA3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B20);
  }

  return result;
}

uint64_t sub_217CBE38C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBE440(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CBE4E0(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBE59C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1937204590;
  if (*v1 != 2)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x65726F7453707061;
    v2 = 0xE800000000000000;
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

unint64_t sub_217CBE6CC()
{
  result = qword_27CBA3B28;
  if (!qword_27CBA3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B28);
  }

  return result;
}

NewsAnalytics::NotificationInterruptionLevel_optional __swiftcall NotificationInterruptionLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NotificationInterruptionLevel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x657669746361;
  v4 = 0x736E6553656D6974;
  if (v1 != 3)
  {
    v4 = 0x6C61636974697263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766973736170;
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

unint64_t sub_217CBE830()
{
  result = qword_27CBA3B30;
  if (!qword_27CBA3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3B30);
  }

  return result;
}

uint64_t sub_217CBE884()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217CBE970(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217CBEA48(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217CBEB3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x657669746361;
  v7 = 0xED00006576697469;
  v8 = 0x736E6553656D6974;
  if (v2 != 3)
  {
    v8 = 0x6C61636974697263;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65766973736170;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}