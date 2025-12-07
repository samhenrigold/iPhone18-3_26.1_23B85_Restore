uint64_t sub_24DD85DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = a2;
    v4 = a1;
    if (a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 56)
    {
      v7 = *(v4 + i + 48);
      v6 = *(v4 + i + 56);
      v8 = *(v4 + i + 64);
      v9 = *(v4 + i + 72);
      v39 = *(v4 + i + 76);
      v10 = *(v4 + i + 80);
      v11 = *(v4 + i + 84);
      v12 = *(v3 + i + 48);
      v13 = *(v3 + i + 56);
      v40 = *(v3 + i + 64);
      v14 = *(v3 + i + 72);
      v15 = *(v3 + i + 76);
      v16 = *(v3 + i + 80);
      v17 = *(v4 + i + 32) == *(v3 + i + 32) && *(v4 + i + 40) == *(v3 + i + 40);
      v18 = *(v3 + i + 84);
      if (!v17)
      {
        v35 = *(v3 + i + 48);
        v38 = *(v3 + i + 84);
        v36 = *(v3 + i + 76);
        v19 = *(v3 + i + 80);
        v37 = *(v4 + i + 64);
        v20 = *(v4 + i + 72);
        v21 = *(v3 + i + 72);
        v22 = *(v4 + i + 56);
        v23 = sub_24DE22CA0();
        v3 = a2;
        v12 = v35;
        v6 = v22;
        v14 = v21;
        v9 = v20;
        v8 = v37;
        v16 = v19;
        v15 = v36;
        v18 = v38;
        v4 = a1;
        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v13)
        {
          return 0;
        }

        if (v7 != v12 || v6 != v13)
        {
          v25 = v16;
          v26 = v9;
          v27 = v14;
          v28 = sub_24DE22CA0();
          v14 = v27;
          v9 = v26;
          v16 = v25;
          v4 = a1;
          v3 = a2;
          if ((v28 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v13)
      {
        return 0;
      }

      if (v9)
      {
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v40)
        {
          v29 = v14;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          return 0;
        }
      }

      if (v10)
      {
        if (v11 == v18)
        {
          v30 = v16;
        }

        else
        {
          v30 = 0;
        }

        if (v30 != 1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v16)
        {
          return result;
        }

        if (v39 != v15 || v11 != v18)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD85FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    while (1)
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v6 = *(a1 + v3 + 64);
      v7 = *(a1 + v3 + 72);
      v8 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v23 = v3;
      v24 = *(a2 + v3 + 72);
      if (*(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40))
      {
        if (v4 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_24DE22CA0();
        result = 0;
        if ((v12 & 1) == 0 || v4 != v8)
        {
          return result;
        }
      }

      v14 = v5 == v9 && v6 == v10;
      if (!v14 && (sub_24DE22CA0() & 1) == 0)
      {
        break;
      }

      if (v7 == 6)
      {
        if (v24 != 6)
        {
          return 0;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        v16 = 27503;
        switch(v7)
        {
          case 1:
            v16 = 0x5F79646165726C61;
            v15 = 0xEF64657469766E69;
            break;
          case 2:
            v16 = 0xD000000000000010;
            v15 = 0x800000024DE39BB0;
            break;
          case 3:
            v16 = 0xD000000000000020;
            v15 = 0x800000024DE39BD0;
            break;
          case 4:
            v16 = 0xD00000000000001CLL;
            v15 = 0x800000024DE39C00;
            break;
          case 5:
            v15 = 0xE500000000000000;
            v16 = 0x726F727265;
            break;
          default:
            break;
        }

        v17 = 0xE200000000000000;
        v18 = 27503;
        switch(v24)
        {
          case 0:
            break;
          case 1:
            v18 = 0x5F79646165726C61;
            v17 = 0xEF64657469766E69;
            break;
          case 2:
            v18 = 0xD000000000000010;
            v17 = 0x800000024DE39BB0;
            break;
          case 3:
            v18 = 0xD000000000000020;
            v17 = 0x800000024DE39BD0;
            break;
          case 4:
            v18 = 0xD00000000000001CLL;
            v17 = 0x800000024DE39C00;
            break;
          case 5:
            v17 = 0xE500000000000000;
            v18 = 0x726F727265;
            break;
          default:
            return 0;
        }

        if (v16 == v18 && v15 == v17)
        {
        }

        else
        {
          v20 = sub_24DE22CA0();

          if ((v20 & 1) == 0)
          {
            return 0;
          }
        }
      }

      v3 = v23 + 48;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD8633C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, 0x81uLL);
      memcpy(v14, v3, 0x81uLL);
      memcpy(v16, i, 0x81uLL);
      memcpy(__src, i, 0x81uLL);
      sub_24DDE51F8(__dst, v12);
      sub_24DDE51F8(v16, v12);
      static Components.Schemas.Leaderboard_ScoreWithPlayerDesc.== infix(_:_:)(v14, __src, v5, v6, v7, v8);
      v10 = v9;
      memcpy(v17, __src, 0x81uLL);
      sub_24DDE5174(v17);
      memcpy(v18, v14, 0x81uLL);
      sub_24DDE5174(v18);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD8644C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 472)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v14, v3, sizeof(v14));
      memcpy(v16, i, sizeof(v16));
      memcpy(__src, i, sizeof(__src));
      sub_24DDE3E38(__dst, v12);
      sub_24DDE3E38(v16, v12);
      static Components.Schemas.Leaderboard_GetLeaderboards_Result.== infix(_:_:)(v14, __src, v5, v6, v7, v8);
      v10 = v9;
      memcpy(v17, __src, sizeof(v17));
      sub_24DDE3E70(v17);
      memcpy(v18, v14, sizeof(v18));
      sub_24DDE3E70(v18);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 472;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD8655C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 9)
    {
      v5 = *i;
      v6 = i[1];
      v7 = i[2];
      v8 = i[3];
      v9 = i[4];
      v10 = i[6];
      v38 = i[5];
      v11 = *(v3 - 12);
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[2];
      v15 = v3[3];
      v16 = v3[4];
      v18 = v3[5];
      v17 = v3[6];
      if (*(i - 12))
      {
        if (!*(v3 - 12))
        {
          return 0;
        }
      }

      else
      {
        if (*(i - 4) != *(v3 - 4))
        {
          v11 = 1;
        }

        if (v11)
        {
          return 0;
        }
      }

      if (v5)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(i - 1) != *(v3 - 1) || v5 != v12)
        {
          v36 = v3[5];
          v37 = i[3];
          v34 = v3[6];
          v35 = i[4];
          v20 = i[6];
          v21 = v3[3];
          v22 = i[1];
          v23 = v3[1];
          v24 = sub_24DE22CA0();
          v13 = v23;
          v6 = v22;
          v15 = v21;
          v10 = v20;
          v17 = v34;
          v9 = v35;
          v18 = v36;
          v8 = v37;
          if ((v24 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v7)
      {
        if (!v14)
        {
          return 0;
        }

        if (v6 != v13 || v7 != v14)
        {
          v26 = v10;
          v27 = v15;
          v28 = sub_24DE22CA0();
          v15 = v27;
          v10 = v26;
          if ((v28 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v14)
      {
        return 0;
      }

      if (v9)
      {
        if (!v16)
        {
          return 0;
        }

        if (v8 != v15 || v9 != v16)
        {
          v30 = v10;
          v31 = sub_24DE22CA0();
          v10 = v30;
          if ((v31 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v10)
      {
        if (!v17)
        {
          return 0;
        }

        v32 = v38 == v18 && v10 == v17;
        if (!v32 && (sub_24DE22CA0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v17)
      {
        return 0;
      }

      v3 += 9;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_24DD86754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Components.Schemas.Game_GetLeaderboardCategories_Result(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_24DD74A90();
        sub_24DD74A90();
        static Components.Schemas.Game_GetLeaderboardCategories_Result.== infix(_:_:)(v10, v7, v16, v17, v18, v19);
        v21 = v20;
        sub_24DD74008();
        sub_24DD74008();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_24DD8690C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 192)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_24DDE7374(__dst, v7);
      sub_24DDE7374(v11, v7);
      v5 = static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummary_Response_ActiveChallengeResponse.== infix(_:_:)(v9);
      memcpy(v12, __src, sizeof(v12));
      sub_24DDE73AC(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_24DDE73AC(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 192;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86A1C(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v28 = a2 + 32;
  v29 = result + 32;
  v27 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v29 + 80 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[4];
    v10 = v4[5];
    v35 = v4[7];
    v36 = v4[6];
    v31 = v4[9];
    v32 = v4[8];
    v11 = (v28 + 80 * v3);
    v13 = v11[2];
    v12 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    v33 = v11[7];
    v34 = v11[6];
    v16 = v11[8];
    v30 = v11[9];
    v17 = v5 == *v11 && v6 == v11[1];
    if (!v17 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
      if (!v12)
      {
        return 0;
      }

      v18 = v7 == v13 && v8 == v12;
      if (!v18 && (sub_24DE22CA0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    v19 = v9 == v14 && v10 == v15;
    if (!v19 && (sub_24DE22CA0() & 1) == 0)
    {
      return 0;
    }

    result = v36;
    if (v36 != v34 || v35 != v33)
    {
      result = sub_24DE22CA0();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v32)
    {
      if (!v16)
      {
        return 0;
      }

      v21 = *(v32 + 16);
      if (v21 != *(v16 + 16))
      {
        return 0;
      }

      if (v21)
      {
        v22 = v32 == v16;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v32 + 40);
        v24 = (v16 + 40);
        while (v21)
        {
          result = *(v23 - 1);
          if (result != *(v24 - 1) || *v23 != *v24)
          {
            result = sub_24DE22CA0();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v23 += 2;
          v24 += 2;
          if (!--v21)
          {
            goto LABEL_45;
          }
        }

        __break(1u);
        break;
      }

LABEL_45:
      if (v31 != v30)
      {
        return 0;
      }
    }

    else
    {
      if (v16)
      {
        v26 = 0;
      }

      else
      {
        v26 = v31 == v30;
      }

      if (!v26)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    v2 = v27;
    if (v3 == v27)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD86C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 176)
    {
      memcpy(__dst, v3, 0xA9uLL);
      memcpy(v9, v3, 0xA9uLL);
      memcpy(v11, i, 0xA9uLL);
      memcpy(__src, i, sizeof(__src));
      sub_24DDE72B8(__dst, v7);
      sub_24DDE72B8(v11, v7);
      v5 = static Components.Schemas.Com_apple_gk_data_challenge_ChallengeSummaryDetailResponse.== infix(_:_:)(v9);
      memcpy(v12, __src, 0xA9uLL);
      sub_24DDE72F0(v12);
      memcpy(v13, v9, 0xA9uLL);
      sub_24DDE72F0(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 176;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86D3C(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD86D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 288)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_24DDE47A8(__dst, v7);
      sub_24DDE47A8(v11, v7);
      v5 = static Components.Schemas.GetGameAchievements_Achievement.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_24DDE47E0(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_24DDE47E0(v13);
      if (!v5)
      {
        break;
      }

      v3 += 288;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86EA8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = *(v1 + 16);
  if (v3 == *(v2 + 16))
  {
    if (!v3 || v1 == v2)
    {
      return 1;
    }

    v4 = (v1 + 32);
    for (i = (v2 + 32); ; i += 624)
    {
      memcpy(__dst, v4, 0x26FuLL);
      memcpy(v15, v4, 0x26FuLL);
      memcpy(v17, i, 0x26FuLL);
      memcpy(__src, i, 0x26FuLL);
      sub_24DDE30DC(__dst, v13);
      sub_24DDE30DC(v17, v13);
      static Components.Schemas.Profile_GetProfileInfo_ProfileInfo.== infix(_:_:)(v15, __src, v6, v7, v8, v9);
      v11 = v10;
      memcpy(v18, __src, 0x26FuLL);
      sub_24DDE2F5C(v18);
      memcpy(v19, v15, 0x26FuLL);
      sub_24DDE2F5C(v19);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v4 += 624;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24DD86FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 152)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      v5 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_FriendEntry.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_24DD83490(__dst, v7);
      sub_24DD83490(v11, v7);
      sub_24DD83460(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_24DD83460(v13);
      if (!v5)
      {
        break;
      }

      v3 += 152;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_24DD870E4()
{
  result = qword_27F1B2900;
  if (!qword_27F1B2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2900);
  }

  return result;
}

unint64_t sub_24DD87138()
{
  result = qword_27F1B2908;
  if (!qword_27F1B2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2908);
  }

  return result;
}

unint64_t sub_24DD8718C()
{
  result = qword_27F1B2918;
  if (!qword_27F1B2918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B2910, &qword_24DE230B8);
    sub_24DD87258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2918);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24DD87258()
{
  result = qword_27F1B2920;
  if (!qword_27F1B2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B2920);
  }

  return result;
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2960, &qword_24DE230D8);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_152();
  v6 = sub_24DDE20BC();

  OUTLINED_FUNCTION_425();
  sub_24DE22D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
  OUTLINED_FUNCTION_4();
  sub_24DDE2110(v7);
  OUTLINED_FUNCTION_920();
  OUTLINED_FUNCTION_179();
  sub_24DE22C70();
  if (v6)
  {
  }

  else
  {

    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_139();
    sub_24DE22C50();
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
  }

  v8 = OUTLINED_FUNCTION_446();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_768();
  v2 = *(v1 + 80);
  sub_24DDE0DB4(v3, v4);
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_727();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_584();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_446();
  sub_24DE22AD0();
  if (v2)
  {
    OUTLINED_FUNCTION_878();
    OUTLINED_FUNCTION_549();

    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_887();
    OUTLINED_FUNCTION_549();
  }
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_884();
  a31 = v34;
  a32 = v35;
  v36 = *v32;
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_1290(v37, v38, v39);
  sub_24DDE0DB4(&a12, v36);
  OUTLINED_FUNCTION_533();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_727();
  sub_24DE22AD0();
  OUTLINED_FUNCTION_584();
  sub_24DE22AD0();
  sub_24DE22AD0();
  sub_24DE22CE0();
  if (v33)
  {
    OUTLINED_FUNCTION_919();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_882();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_645();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2980, &qword_24DE230E8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_301(v24);
  sub_24DDE20BC();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_675();
  sub_24DE22D30();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    LOBYTE(v52[0]) = 0;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v29);
    OUTLINED_FUNCTION_782();
    sub_24DE22BC0();
    v30 = v53[0];
    OUTLINED_FUNCTION_304();
    v47 = sub_24DE22BA0();
    OUTLINED_FUNCTION_816(v31, &a17);
    OUTLINED_FUNCTION_304();
    v32 = sub_24DE22BA0();
    v48 = v33;
    v46 = v32;
    OUTLINED_FUNCTION_304();
    v45 = sub_24DE22BA0();
    v50 = v34;
    LOBYTE(v53[0]) = 4;
    OUTLINED_FUNCTION_304();
    v44 = sub_24DE22BA0();
    v49 = v35;
    OUTLINED_FUNCTION_1016(5);
    OUTLINED_FUNCTION_304();
    v36 = sub_24DE22B40();
    v37 = OUTLINED_FUNCTION_381();
    v39 = v38;
    v40(v37, v27);
    v52[0] = v30;
    OUTLINED_FUNCTION_707();
    v52[1] = v42;
    v52[2] = v41;
    v52[3] = v46;
    v52[4] = v48;
    v52[5] = v45;
    v52[6] = v50;
    v52[7] = v44;
    v52[8] = v49;
    v52[9] = v36;
    v52[10] = v39;
    memcpy(v26, v52, 0x58uLL);
    sub_24DDE2164(v52, v53);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v53[0] = v30;
    v53[1] = v47;
    v53[2] = v51;
    v53[3] = v46;
    OUTLINED_FUNCTION_1236();
    v53[4] = v48;
    v53[5] = v43;
    v53[6] = v50;
    v53[7] = v44;
    v53[8] = v49;
    v53[9] = v36;
    v53[10] = v39;
    sub_24DDE219C(v53);
  }

  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.message.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

double Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.alert.setter()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

double Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.init(status:message:alert:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  OUTLINED_FUNCTION_917(a2, a1);
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v6, v7, v8, v9);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

GameCenterServerClient::Components::Schemas::Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.CodingKeys.stringValue.getter()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7472656C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_24DD87C60@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD87C90()
{
  sub_24DDE21CC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD87CC8()
{
  sub_24DDE21CC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_267(a1);
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_1282();
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  if (v11)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (v12)
    {
      return 0;
    }
  }

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v13 = v3 == v5 && v4 == v6;
  if (!v13 && (sub_24DE22CA0() & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  if (v2 != 1)
  {
    if (v9 != 1)
    {
      v50 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
      v51 = OUTLINED_FUNCTION_94();
      sub_24DD7639C(v51, v52, v53, v54);
      OUTLINED_FUNCTION_380();
      OUTLINED_FUNCTION_693();
      sub_24DD7639C(v55, v56, v57, v58);
      v59 = OUTLINED_FUNCTION_94();
      sub_24DD7639C(v59, v60, v61, v62);

      v63 = OUTLINED_FUNCTION_94();
      sub_24DD763E4(v63, v64, v65, v66);
      return (v50 & 1) != 0;
    }

    v26 = OUTLINED_FUNCTION_94();
    sub_24DD7639C(v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_603();
    sub_24DD7639C(v30, v31, v32, v10);
    v33 = OUTLINED_FUNCTION_94();
    sub_24DD7639C(v33, v34, v35, v36);

    goto LABEL_20;
  }

  v14 = OUTLINED_FUNCTION_176();
  sub_24DD7639C(v14, v15, v16, v17);
  if (v9 != 1)
  {
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_693();
    sub_24DD7639C(v37, v38, v39, v40);
LABEL_20:
    v41 = OUTLINED_FUNCTION_94();
    sub_24DD763E4(v41, v42, v43, v44);
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_693();
    sub_24DD763E4(v45, v46, v47, v48);
    return 0;
  }

  v18 = 1;
  v19 = OUTLINED_FUNCTION_603();
  sub_24DD7639C(v19, v20, v21, v10);
  v22 = OUTLINED_FUNCTION_176();
  sub_24DD763E4(v22, v23, v24, v25);
  return v18;
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2990, &qword_24DE230F0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE21CC();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v12)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_139();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_606();
    OUTLINED_FUNCTION_554();
    sub_24DD7639C(v6, v7, v8, v9);
    sub_24DD87138();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_197();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
  }

  v10 = OUTLINED_FUNCTION_446();
  v11(v10);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_192();
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  if (v5 == 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_386();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v3 == 1)
  {
    goto LABEL_13;
  }

  sub_24DE22CE0();
  if (!v3)
  {
    sub_24DE22CE0();
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_13:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_999();
    return;
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_593();
  sub_24DE22AD0();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_999();

  sub_24DE22AD0();
}

void Components.Schemas.Com_apple_gk_data_invitation_plist_ShareActivity_ResponseContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29A0, &qword_24DE230F8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_84();
  v29 = v24[4];
  OUTLINED_FUNCTION_153(v24);
  sub_24DDE21CC();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v25)
  {
    OUTLINED_FUNCTION_612();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v51 = 0;
    v52 = a11;
    v53 = v27;
    v54 = v29;
    *v55 = xmmword_24DE22F30;
    *&v55[16] = 0;
    v56 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_436();
    v30 = sub_24DE22B80();
    v31 = v30;
    OUTLINED_FUNCTION_212(v30);
    LOBYTE(v51) = v32;
    OUTLINED_FUNCTION_436();
    sub_24DE22B40();
    OUTLINED_FUNCTION_807();
    OUTLINED_FUNCTION_890();
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_581();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v33 = OUTLINED_FUNCTION_305();
    v34(v33);
    v35 = v48;
    v37 = v49;
    v36 = v50;
    v38 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v38, v39, v40, v41);
    LODWORD(v44) = v31;
    BYTE4(v44) = a11;
    *(&v44 + 1) = v27;
    *&v45 = v29;
    *(&v45 + 1) = v48;
    v46 = v49;
    v47 = v50;
    *(v27 + 48) = v50;
    v42 = v46;
    v43 = v44;
    *(v27 + 16) = v45;
    *(v27 + 32) = v42;
    *v27 = v43;
    sub_24DDE2250(&v44, &v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v51 = v31;
    v52 = a11;
    v53 = v27;
    v54 = v29;
    *v55 = v35;
    *&v55[8] = v37;
    v56 = v36;
  }

  sub_24DDE2220(&v51);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Artwork.bgColor.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor1.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor2.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor3.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.textColor4.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.url.setter()
{
  OUTLINED_FUNCTION_372();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Components.Schemas.Artwork.width.setter(uint64_t result)
{
  *(v1 + 104) = result;
  *(v1 + 108) = BYTE4(result) & 1;
  return result;
}

__n128 Components.Schemas.Artwork.init(height:bgColor:textColor1:textColor2:textColor3:textColor4:url:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, int a13, char a14)
{
  result = a11;
  *a9 = a1;
  *(a9 + 4) = BYTE4(a1) & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  *(a9 + 108) = a14 & 1;
  return result;
}

GameCenterServerClient::Components::Schemas::Artwork::CodingKeys_optional __swiftcall Components.Schemas.Artwork.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::Artwork::CodingKeys_optional __swiftcall Components.Schemas.Artwork.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Artwork.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void sub_24DD88750()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_895();
      break;
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_1281();
      break;
    default:
      return;
  }
}

uint64_t sub_24DD888CC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Artwork.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD888FC()
{
  sub_24DDE2288();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD88934()
{
  sub_24DDE2288();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Artwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_596();
  OUTLINED_FUNCTION_267(v2);
  v4 = v3[3];
  v6 = v3[4];
  v5 = v3[5];
  v7 = v3[6];
  v78 = v3[8];
  OUTLINED_FUNCTION_1282();
  v20 = v19;
  v22 = *(v15 + 24);
  v21 = *(v15 + 32);
  v24 = *(v15 + 40);
  v23 = *(v15 + 48);
  v76 = *(v15 + 56);
  v25 = *(v15 + 72);
  v77 = *(v15 + 64);
  v27 = *(v15 + 80);
  v26 = *(v15 + 88);
  v28 = *(v15 + 96);
  if (v29)
  {
    if (!v16)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*v14 == *v15)
    {
      v30 = v16;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_60;
    }
  }

  if (v9)
  {
    if (!v11)
    {
      goto LABEL_60;
    }

    if (v8 != v10 || v9 != v11)
    {
      v70 = *(v15 + 72);
      v72 = *(v15 + 88);
      v68 = v17;
      v32 = v18;
      v62 = v13;
      v63 = *(v15 + 96);
      v64 = *(v15 + 80);
      v66 = v12;
      v33 = sub_24DE22CA0();
      v13 = v62;
      v27 = v64;
      v12 = v66;
      v28 = v63;
      v18 = v32;
      v17 = v68;
      v25 = v70;
      v26 = v72;
      if ((v33 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_60;
  }

  if (v6)
  {
    if (!v21)
    {
      goto LABEL_60;
    }

    if (v4 != v22 || v6 != v21)
    {
      v71 = v25;
      v73 = v26;
      v69 = v17;
      v35 = v18;
      v36 = v28;
      v65 = v27;
      v67 = v12;
      v37 = v13;
      v38 = sub_24DE22CA0();
      v27 = v65;
      v12 = v67;
      v13 = v37;
      v28 = v36;
      v25 = v71;
      v26 = v73;
      v18 = v35;
      v17 = v69;
      if ((v38 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_60;
  }

  if (v7)
  {
    if (!v23)
    {
      goto LABEL_60;
    }

    if (v5 != v24 || v7 != v23)
    {
      v74 = v26;
      v40 = v17;
      v41 = v18;
      v42 = v28;
      v43 = v12;
      v44 = v13;
      v45 = v27;
      v46 = sub_24DE22CA0();
      v27 = v45;
      v13 = v44;
      v12 = v43;
      v26 = v74;
      v28 = v42;
      v18 = v41;
      v17 = v40;
      if ((v46 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_60;
  }

  if (v78)
  {
    if (!v77)
    {
      goto LABEL_60;
    }

    if (v20 != v76 || v78 != v77)
    {
      v75 = v26;
      v48 = v17;
      v49 = v18;
      v50 = v28;
      v51 = v12;
      v52 = v13;
      v53 = v27;
      v54 = sub_24DE22CA0();
      v27 = v53;
      v13 = v52;
      v12 = v51;
      v28 = v50;
      v18 = v49;
      v17 = v48;
      v26 = v75;
      if ((v54 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v77)
  {
    goto LABEL_60;
  }

  if (v13)
  {
    if (!v27)
    {
      goto LABEL_60;
    }

    if (v12 != v25 || v13 != v27)
    {
      v56 = v26;
      v57 = v17;
      v58 = v18;
      v59 = v28;
      v60 = sub_24DE22CA0();
      v26 = v56;
      v28 = v59;
      v18 = v58;
      v17 = v57;
      if ((v60 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_60;
  }

  if (v18 && v28 && (v17 != v26 || v18 != v28))
  {
    sub_24DE22CA0();
  }

LABEL_60:
  OUTLINED_FUNCTION_585();
}

void Components.Schemas.Artwork.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_645();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29A8, &qword_24DE23100);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_153(v25);
  sub_24DDE2288();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_820();
  sub_24DE22C30();
  if (!v23)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_747();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_843();
    OUTLINED_FUNCTION_681();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_970();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_195();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_376();
    sub_24DE22C30();
  }

  v28 = OUTLINED_FUNCTION_530();
  v29(v28, v26);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Artwork.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1011();
  OUTLINED_FUNCTION_192();
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v9 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 108);
  if (v8 == 1)
  {
    sub_24DE22CE0();
    if (v2)
    {
LABEL_3:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_867();
      sub_24DE22AD0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24DE22CE0();
LABEL_6:
  if (v3)
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1073();
    sub_24DE22AD0();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_24DE22CE0();
    if (v9)
    {
LABEL_8:
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1074();
      sub_24DE22AD0();
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  sub_24DE22CE0();
  if (v4)
  {
LABEL_9:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_822();
    sub_24DE22AD0();
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_24DE22CE0();
  if (v5)
  {
LABEL_10:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_426();
    sub_24DE22AD0();
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_24DE22CE0();
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_18:
    sub_24DE22CE0();
    sub_24DE22CF0();
    goto LABEL_19;
  }

LABEL_16:
  sub_24DE22CE0();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_714();
  sub_24DE22AD0();
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_12:
  sub_24DE22CE0();
LABEL_19:
  OUTLINED_FUNCTION_1007();
}

uint64_t Components.Schemas.Artwork.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Artwork.hash(into:)(v2);
  return sub_24DE22D10();
}

void Components.Schemas.Artwork.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1067();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29B8, &qword_24DE23108);
  OUTLINED_FUNCTION_24();
  v13 = v12;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_84();
  *(v11 - 72) = v15;
  v16 = v5[3];
  v17 = v5[4];
  *(v11 - 328) = v5;
  OUTLINED_FUNCTION_153(v5);
  sub_24DDE2288();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v6)
  {
    *(v11 - 336) = v6;
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_770();
    __swift_destroy_boxed_opaque_existential_1Tm(*(v11 - 328));
    *(v11 - 200) = 0;
    *(v11 - 196) = *(v11 - 68);
    *(v11 - 195) = *(v11 - 67);
    *(v11 - 193) = *(v11 - 65);
    *(v11 - 192) = 0;
    *(v11 - 184) = v8;
    *(v11 - 176) = v16;
    *(v11 - 168) = v10;
    OUTLINED_FUNCTION_1236();
    *(v11 - 160) = v5;
    *(v11 - 152) = v19;
    v20 = *(v11 - 344);
    *(v11 - 144) = *(v11 - 360);
    *(v11 - 136) = v20;
    *(v11 - 128) = *(v11 - 352);
    *(v11 - 120) = v9;
    *(v11 - 112) = v7;
    *(v11 - 104) = v17;
    *(v11 - 96) = 0;
    LOBYTE(v20) = *(v11 - 72);
  }

  else
  {
    *(v11 - 200) = 0;
    OUTLINED_FUNCTION_392();
    v18 = sub_24DE22B80();
    *(v11 - 368) = v18;
    OUTLINED_FUNCTION_212(v18);
    *(v11 - 200) = v21;
    OUTLINED_FUNCTION_392();
    *(v11 - 384) = sub_24DE22B40();
    OUTLINED_FUNCTION_816(v22, v11 - 120);
    *(v11 - 200) = v23;
    OUTLINED_FUNCTION_392();
    *(v11 - 400) = sub_24DE22B40();
    *(v11 - 392) = v24;
    *(v11 - 200) = 3;
    OUTLINED_FUNCTION_392();
    v25 = sub_24DE22B40();
    *(v11 - 320) = v26;
    *(v11 - 200) = 4;
    OUTLINED_FUNCTION_392();
    v27 = sub_24DE22B40();
    *(v11 - 344) = v28;
    *(v11 - 200) = 5;
    OUTLINED_FUNCTION_392();
    v29 = sub_24DE22B40();
    *(v11 - 360) = v27;
    *(v11 - 408) = v30;
    *(v11 - 352) = v29;
    *(v11 - 200) = 6;
    OUTLINED_FUNCTION_392();
    v31 = sub_24DE22B40();
    *(v11 - 416) = v32;
    v33 = v31;
    *(v11 - 69) = 7;
    v34 = sub_24DE22B80();
    *(v11 - 336) = 0;
    v35 = v34;
    v36 = OUTLINED_FUNCTION_667();
    v37(v36);
    *(v11 - 440) = v35;
    *(v11 - 72) = BYTE4(v35) & 1;
    *(v11 - 312) = *(v11 - 368);
    v38 = *(v11 - 68);
    *(v11 - 428) = v38;
    *(v11 - 308) = v38;
    v39 = *(v11 - 384);
    *(v11 - 304) = v39;
    v40 = *(v11 - 376);
    *(v11 - 296) = v40;
    v41 = *(v11 - 400);
    *(v11 - 288) = v41;
    v42 = *(v11 - 392);
    *(v11 - 280) = v42;
    OUTLINED_FUNCTION_1244();
    *(v11 - 424) = v25;
    v43 = *(v11 - 320);
    *(v11 - 264) = v43;
    *(v11 - 256) = v27;
    OUTLINED_FUNCTION_1235(v11 - 88);
    v44 = *(v11 - 408);
    *(v11 - 232) = v44;
    *(v11 - 224) = v33;
    *(v11 - 216) = *(v11 - 416);
    *(v11 - 208) = v45;
    v46 = *(v11 - 72);
    *(v11 - 444) = v46;
    *(v11 - 204) = v46;
    memcpy(v47, (v11 - 312), 0x6DuLL);
    sub_24DDE230C(v11 - 312, v11 - 200);
    __swift_destroy_boxed_opaque_existential_1Tm(*(v11 - 328));
    *(v11 - 200) = *(v11 - 368);
    *(v11 - 196) = *(v11 - 428);
    *(v11 - 192) = v39;
    *(v11 - 184) = v40;
    *(v11 - 176) = v41;
    *(v11 - 168) = v42;
    *(v11 - 160) = *(v11 - 424);
    *(v11 - 152) = v43;
    *(v11 - 144) = *(v11 - 360);
    *(v11 - 136) = v27;
    *(v11 - 128) = v13 + 8;
    *(v11 - 120) = v44;
    v20 = *(v11 - 416);
    *(v11 - 112) = v33;
    *(v11 - 104) = v20;
    *(v11 - 96) = *(v11 - 440);
    LODWORD(v20) = *(v11 - 444);
  }

  *(v11 - 92) = v20;
  sub_24DDE22DC(v11 - 200);
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD8967C(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Artwork.hash(into:)(v2);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.App_AppInit_RequestContent.timestamp.setter()
{
  OUTLINED_FUNCTION_372();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_24DD89734()
{
  OUTLINED_FUNCTION_960();
  sub_24DE22960();
  v0 = OUTLINED_FUNCTION_525();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Components.Schemas.App_AppInit_RequestContent.pushToken.modify()
{
  v0 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v0);
  return OUTLINED_FUNCTION_574();
}

uint64_t Components.Schemas.App_AppInit_RequestContent.background.setter(char a1)
{
  result = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_RequestContent.background.modify()
{
  v0 = OUTLINED_FUNCTION_429();
  type metadata accessor for Components.Schemas.App_AppInit_RequestContent(v0);
  return OUTLINED_FUNCTION_574();
}

void Components.Schemas.App_AppInit_RequestContent.init(timestamp:pushToken:background:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  v5 = v4;
  OUTLINED_FUNCTION_1033();
  v7 = v6;
  v9 = v8;
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  sub_24DE22960();
  OUTLINED_FUNCTION_778();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = *(inited + 24);
  *v9 = v7;
  v9[1] = v3;
  sub_24DDE444C(v2);
  *(v9 + v15) = v5;
  OUTLINED_FUNCTION_999();
}

GameCenterServerClient::Components::Schemas::App_AppInit_RequestContent::CodingKeys_optional __swiftcall Components.Schemas.App_AppInit_RequestContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.App_AppInit_RequestContent.CodingKeys.stringValue.getter()
{
  v1 = 0x6B6F742D68737570;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_24DD89A04@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.App_AppInit_RequestContent.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD89A34()
{
  sub_24DDE238C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD89A6C()
{
  sub_24DDE238C();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.App_AppInit_RequestContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_372();
  sub_24DE22960();
  OUTLINED_FUNCTION_27();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
  OUTLINED_FUNCTION_443(v12);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_238();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C8, &qword_24DE23118);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_223();
  v16 = *v7 == *v6 && v7[1] == v6[1];
  if (v16 || (sub_24DE22CA0() & 1) != 0)
  {
    type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
    v17 = *(v14 + 48);
    OUTLINED_FUNCTION_910();
    sub_24DDE73DC(v18);
    OUTLINED_FUNCTION_910();
    sub_24DDE73DC(v19);
    OUTLINED_FUNCTION_568(v8);
    if (!v16)
    {
      v20 = OUTLINED_FUNCTION_503();
      sub_24DDE73DC(v20);
      OUTLINED_FUNCTION_568(v8 + v17);
      if (!v21)
      {
        v24 = OUTLINED_FUNCTION_1029();
        v25(v24);
        OUTLINED_FUNCTION_52();
        sub_24DDE23E0(v26);
        OUTLINED_FUNCTION_454();
        sub_24DE22AB0();
        v27 = *(v10 + 8);
        v28 = OUTLINED_FUNCTION_551();
        v27(v28);
        v29 = OUTLINED_FUNCTION_615();
        v27(v29);
        sub_24DDE8DAC(v8, &qword_27F1B29C0);
        goto LABEL_15;
      }

      v22 = OUTLINED_FUNCTION_615();
      v23(v22);
LABEL_14:
      sub_24DDE8DAC(v8, &qword_27F1B29C8);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_568(v8 + v17);
    if (!v16)
    {
      goto LABEL_14;
    }

    sub_24DDE8DAC(v8, &qword_27F1B29C0);
  }

LABEL_15:
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.App_AppInit_RequestContent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29D8, &qword_24DE23120);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_250(a1);
  sub_24DDE238C();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_453();
  sub_24DE22C50();
  if (!v1)
  {
    type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
    OUTLINED_FUNCTION_414();
    sub_24DE22960();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v4);
    OUTLINED_FUNCTION_377();
    sub_24DE22C20();
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_502();
    sub_24DE22C00();
  }

  v5 = OUTLINED_FUNCTION_446();
  return v6(v5);
}

void Components.Schemas.App_AppInit_RequestContent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_429();
  v7 = sub_24DE22960();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_66();
  v9 = OUTLINED_FUNCTION_393();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_443(v11);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_147();
  sub_24DE22AD0();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  sub_24DDE73DC(v6 + *(inited + 20));
  OUTLINED_FUNCTION_880(v6, 1, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_546();
    v16(v15);
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v17);
    OUTLINED_FUNCTION_610();
    sub_24DE22AA0();
    v18 = OUTLINED_FUNCTION_541();
    v19(v18);
  }

  if (*(v6 + *(inited + 24)) != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.App_AppInit_RequestContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_645();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29C0, &qword_24DE23110);
  OUTLINED_FUNCTION_443(v24);
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_223();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B29F8, &qword_24DE23128);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_140();
  inited = type metadata accessor for Components.Schemas.App_AppInit_RequestContent(0);
  OUTLINED_FUNCTION_90();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  v30 = *(v29 + 20);
  v31 = sub_24DE22960();
  OUTLINED_FUNCTION_778();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_250(v23);
  sub_24DDE238C();
  OUTLINED_FUNCTION_544();
  sub_24DE22D30();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_24DDE8DAC(v20 + v30, &qword_27F1B29C0);
  }

  else
  {
    OUTLINED_FUNCTION_578();
    *v20 = sub_24DE22BA0();
    v20[1] = v35;
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_52();
    sub_24DDE23E0(v36);
    sub_24DE22B70();
    sub_24DDE444C(v21);
    OUTLINED_FUNCTION_589();
    v37 = sub_24DE22B50();
    v38 = *(inited + 24);
    v39 = OUTLINED_FUNCTION_763();
    v40(v39);
    *(v20 + v38) = v37;
    sub_24DD74A90();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_669();
    sub_24DD74008();
  }

  OUTLINED_FUNCTION_1259();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.GameMetadata.softwareType.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 8) = v3;
  *(v2 + 16) = v1;
  return result;
}

uint64_t sub_24DD8A4CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24DDE0A84(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24DE22CA0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Components.Schemas.GameMetadata.imageUrls.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

void sub_24DD8A6B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0u;
  OUTLINED_FUNCTION_1115(a1, 0);
  *(v1 + 101) = 0;
}

uint64_t Components.Schemas.GameMetadata.artwork.getter()
{
  OUTLINED_FUNCTION_1087();
  OUTLINED_FUNCTION_847();
  v4 = memcpy(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_1324(v4, (v0 + 32));
  v11 = OUTLINED_FUNCTION_1030(v5, v6, &unk_27F1B2A08, &unk_24DE23130, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  return sub_24DDE73DC(v11);
}

void *Components.Schemas.GameMetadata.artwork.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_847();
  memcpy(v1, v2, v3);
  sub_24DDE8DAC(&v5, &unk_27F1B2A08);
  return OUTLINED_FUNCTION_1171((v0 + 32));
}

uint64_t Components.Schemas.GameMetadata.name.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 144) = v3;
  *(v2 + 152) = v1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.maxAchievements.setter(uint64_t result)
{
  *(v1 + 160) = result;
  *(v1 + 164) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.maxAchievementsScore.setter(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 172) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.numLeaderboardCategories.setter(uint64_t result)
{
  *(v1 + 176) = result;
  *(v1 + 180) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.bundleId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 208) = v3;
  *(v2 + 216) = v1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.defaultLeaderboardCategory.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 224) = v3;
  *(v2 + 232) = v1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.supportedTransports.setter(uint64_t a1)
{

  *(v1 + 248) = a1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.platforms.setter(uint64_t a1)
{

  *(v1 + 256) = a1;
  return result;
}

uint64_t Components.Schemas.GameMetadata.source.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 264) = v3;
  *(v2 + 272) = v1;
  return result;
}

__n128 Components.Schemas.GameMetadata.init(arcadeGame:softwareType:imageUrls:artwork:name:maxAchievements:maxAchievementsScore:numLeaderboardCategories:allowChallenges:allowLeaderboardChallenges:isArcadeGame:isPrerendered:supportsTurnBasedMultiPlayer:supportsAchievements:adamId:bundleId:defaultLeaderboardCategory:hasAggregateLeaderboard:supportsLeaderboards:supportsMultiPlayer:supportedTransports:platforms:source:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, int a9, char a10, int a11, char a12, uint64_t a13, uint64_t a14, char a15, __int128 a16, uint64_t a17, uint64_t a18, int a19, __n128 a20, uint64_t a21, uint64_t a22)
{
  v26 = *a4;
  *(a8 + 32) = 0;
  v27 = (a8 + 32);
  *(a8 + 40) = 0;
  *(a8 + 48) = 1;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 104) = 0u;
  *(a8 + 120) = 0u;
  *(a8 + 133) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;

  *(a8 + 24) = v26;
  memcpy(__dst, v27, 0x6DuLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2A08);
  v28 = OUTLINED_FUNCTION_539();
  memcpy(v28, v29, 0x6DuLL);
  *(a8 + 144) = a5;
  *(a8 + 152) = a6;
  *(a8 + 160) = a7;
  *(a8 + 164) = BYTE4(a7) & 1;
  *(a8 + 168) = a9;
  *(a8 + 172) = a10 & 1;
  *(a8 + 176) = a11;
  *(a8 + 180) = a12 & 1;
  *(a8 + 181) = a13;
  *(a8 + 183) = *(&a13 + 2);
  *(a8 + 192) = a14;
  *(a8 + 200) = a15 & 1;
  *(a8 + 208) = a16;
  *(a8 + 224) = a17;
  *(a8 + 232) = a18;
  *(a8 + 240) = a19;
  *(a8 + 241) = *(&a19 + 1);
  result = a20;
  *(a8 + 248) = a20;
  *(a8 + 264) = a21;
  *(a8 + 272) = a22;
  return result;
}

GameCenterServerClient::Components::Schemas::GameMetadata::CodingKeys_optional __swiftcall Components.Schemas.GameMetadata.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 5;
  switch(v2)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v4 = 1;
      goto LABEL_15;
    case 2:
      v4 = 2;
      goto LABEL_15;
    case 3:
      v4 = 3;
      goto LABEL_15;
    case 4:
      v4 = 4;
LABEL_15:
      v5 = v4;
      break;
    case 5:
      break;
    case 6:
      v5 = 6;
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    default:
      v5 = 23;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::GameMetadata::CodingKeys_optional __swiftcall Components.Schemas.GameMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.GameMetadata.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.GameMetadata.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_419();
      break;
    case 3:
      OUTLINED_FUNCTION_340();
      break;
    case 5:
    case 8:
      OUTLINED_FUNCTION_758(21);
      break;
    case 6:
      OUTLINED_FUNCTION_759(21);
      break;
    case 7:
      OUTLINED_FUNCTION_1122(21);
      break;
    case 9:
    case 0x10:
      OUTLINED_FUNCTION_762();
      break;
    case 0xD:
    case 0x12:
    case 0x13:
      OUTLINED_FUNCTION_155();
      break;
    case 0xE:
      OUTLINED_FUNCTION_752();
      break;
    case 0xF:
      OUTLINED_FUNCTION_151();
      break;
    case 0x11:
      OUTLINED_FUNCTION_1121(21);
      break;
    case 0x14:
      OUTLINED_FUNCTION_344(21);
      break;
    default:
      return;
  }
}

void sub_24DD8B2F4(uint64_t *a1@<X8>)
{
  Components.Schemas.GameMetadata.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DD8B328()
{
  sub_24DDE2584();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8B360()
{
  sub_24DDE2584();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.GameMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  memcpy(__dst, v8 + 4, 0x6DuLL);
  v111 = v9[18];
  v115 = v9[19];
  v107 = *(v9 + 40);
  v113 = *(v9 + 164);
  v104 = *(v9 + 42);
  v108 = *(v9 + 172);
  v105 = *(v9 + 180);
  v100 = *(v9 + 44);
  v101 = *(v9 + 181);
  v97 = *(v9 + 183);
  v98 = *(v9 + 182);
  v95 = *(v9 + 185);
  v96 = *(v9 + 184);
  v93 = *(v9 + 200);
  v94 = *(v9 + 186);
  v91 = v9[24];
  v92 = v9[27];
  v87 = v9[28];
  v89 = v9[26];
  v90 = v9[29];
  v88 = *(v9 + 240);
  v85 = *(v9 + 242);
  v86 = *(v9 + 241);
  v83 = v9[32];
  v84 = v9[31];
  v81 = v9[34];
  v82 = v9[33];
  v14 = *v7;
  v16 = *(v7 + 1);
  v15 = *(v7 + 2);
  v17 = *(v7 + 3);
  OUTLINED_FUNCTION_847();
  memcpy(v18, v19, v20);
  v110 = *(v7 + 18);
  v114 = *(v7 + 19);
  v106 = *(v7 + 40);
  v112 = v7[164];
  v103 = *(v7 + 42);
  v109 = v7[172];
  v99 = *(v7 + 44);
  v102 = v7[180];
  v116 = v7[181];
  v21 = v7[183];
  if (v10 == 2)
  {
    v80 = v7[182];
    if (v14 != 2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v14 == 2)
    {
      goto LABEL_29;
    }

    v80 = v7[182];
    if ((v14 ^ v10))
    {
      goto LABEL_29;
    }
  }

  if (v12)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    if (v11 != v16 || v12 != v15)
    {
      v15 = v7[241];
      v16 = v7[240];
      v10 = v7[186];
      v14 = v7[184];
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_29;
  }

  if (!v13)
  {
    if (!v17)
    {
      v75 = v21;
      OUTLINED_FUNCTION_1021();

      goto LABEL_22;
    }

LABEL_20:

    goto LABEL_29;
  }

  if (!v17)
  {
    goto LABEL_20;
  }

  v75 = v21;
  OUTLINED_FUNCTION_1021();
  swift_bridgeObjectRetain_n();

  v23 = sub_24DD8A4CC(v13, v17);
  swift_bridgeObjectRelease_n();

  if ((v23 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v24 = __src;
  v25 = __dst[2];
  *&v125[3] = *(v7 + 2);
  v26 = v127;
  if (__dst[2] == 1)
  {
    if (v127 == 1)
    {
      *__src = *(v9 + 2);
      *&__src[16] = 1;
      OUTLINED_FUNCTION_1285();
      OUTLINED_FUNCTION_499();
      sub_24DDE73DC(v27);
      OUTLINED_FUNCTION_499();
      sub_24DDE73DC(v28);
      OUTLINED_FUNCTION_592();
      sub_24DDE8DAC(v29, v30);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_553();
    sub_24DDE73DC(v34);
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC(v35);
LABEL_28:
    *__src = *(v9 + 2);
    *&__src[16] = v25;
    memcpy(&__src[24], v9 + 7, 0x55uLL);
    *v122 = *v125;
    *&v122[15] = *&v125[15];
    v123 = v26;
    memcpy(v124, v7 + 56, sizeof(v124));
    sub_24DDE8DAC(__src, &unk_27F1B2A10);
    goto LABEL_29;
  }

  *__src = *(v9 + 2);
  *&__src[16] = __dst[2];
  OUTLINED_FUNCTION_1285();
  memcpy(v120, __src, 0x6DuLL);
  if (v26 == 1)
  {
    memcpy(v119, __src, 0x6DuLL);
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC(v31);
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC(v32);
    OUTLINED_FUNCTION_553();
    sub_24DDE73DC(v33);
    sub_24DDE22DC(v119);
    goto LABEL_28;
  }

  v119[0] = *(v7 + 2);
  v24 = v119;
  memcpy(&v119[1] + 8, v7 + 56, 0x55uLL);
  *&v119[1] = v26;
  static Components.Schemas.Artwork.== infix(_:_:)(v120, v119);
  v37 = v36;
  memcpy(v117, v119, 0x6DuLL);
  v26 = &unk_24DE23130;
  OUTLINED_FUNCTION_489();
  sub_24DDE73DC(v38);
  OUTLINED_FUNCTION_489();
  sub_24DDE73DC(v39);
  OUTLINED_FUNCTION_489();
  sub_24DDE73DC(v40);
  sub_24DDE22DC(v117);
  memcpy(v118, v120, 0x6DuLL);
  sub_24DDE22DC(v118);
  v119[0] = *(v9 + 2);
  *&v119[1] = v25;
  memcpy(&v119[1] + 8, v9 + 7, 0x55uLL);
  OUTLINED_FUNCTION_540();
  sub_24DDE8DAC(v41, v42);
  if ((v37 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  if (v115)
  {
    OUTLINED_FUNCTION_844();
    v52 = v75;
    v53 = v116;
    if (!v114)
    {
      goto LABEL_29;
    }

    if (v111 != v110 || v43 != v114)
    {
      v73 = v10;
      v74 = v14;
      v76 = v49;
      v77 = v44;
      v78 = v48;
      v79 = v47;
      v55 = v45;
      v56 = v46;
      v57 = v50;
      v58 = v51;
      v59 = sub_24DE22CA0();
      v53 = v116;
      v52 = v75;
      v51 = v58;
      v50 = v57;
      v49 = v76;
      v44 = v77;
      v48 = v78;
      v47 = v79;
      v46 = v56;
      v45 = v55;
      v10 = v73;
      v14 = v74;
      if ((v59 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_844();
    v52 = v75;
    v53 = v116;
    if (v114)
    {
      goto LABEL_29;
    }
  }

  if (v113)
  {
    if (!v112)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v60 = v112;
    if (v107 != v106)
    {
      v60 = 1;
    }

    if (v60)
    {
      goto LABEL_29;
    }
  }

  if (v108)
  {
    if (!v109)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v61 = v109;
    if (v104 != v103)
    {
      v61 = 1;
    }

    if (v61)
    {
      goto LABEL_29;
    }
  }

  if (v105)
  {
    if (!v102)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v62 = v102;
    if (v100 != v99)
    {
      v62 = 1;
    }

    if (v62)
    {
      goto LABEL_29;
    }
  }

  if (v101 == 2)
  {
    if (v53 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v53 == 2 || ((v53 ^ v101) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v98 == 2)
  {
    if (v80 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v80 == 2 || ((v80 ^ v98) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v97 == 2)
  {
    if (v52 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v52 == 2 || ((v52 ^ v97) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v96 == 2)
  {
    if (v51 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v51 == 2 || ((v51 ^ v96) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v95 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v26 == 2 || ((v26 ^ v95) & 1) != 0)
  {
    goto LABEL_29;
  }

  v63 = v24;
  v64 = v9;
  v65 = v48;
  v66 = v47;
  v67 = v46;
  v68 = v45;
  if (v94 == 2)
  {
    if (v50 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v50 == 2 || ((v50 ^ v94) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v93)
  {
    if (!v49)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v91 == v63)
    {
      v69 = v49;
    }

    else
    {
      v69 = 1;
    }

    if (v69)
    {
      goto LABEL_29;
    }
  }

  if (v92)
  {
    if (!v64)
    {
      goto LABEL_29;
    }

    v70 = v89 == v44 && v92 == v64;
    if (!v70 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v64)
  {
    goto LABEL_29;
  }

  if (v90)
  {
    if (!v66)
    {
      goto LABEL_29;
    }

    if (v87 != v65 || v90 != v66)
    {
      OUTLINED_FUNCTION_500();
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  else if (v66)
  {
    goto LABEL_29;
  }

  if (v88 == 2)
  {
    if (v67 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v67 == 2 || ((v67 ^ v88) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v86 == 2)
  {
    if (v68 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v68 == 2 || ((v68 ^ v86) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v85 == 2)
  {
    if (v25 != 2)
    {
      goto LABEL_29;
    }
  }

  else if (v25 == 2 || ((v25 ^ v85) & 1) != 0)
  {
    goto LABEL_29;
  }

  if (v84)
  {
    if (!v10 || (sub_24DD86D3C(v84, v10) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v10)
  {
    goto LABEL_29;
  }

  if (v83)
  {
    if (!v14 || (sub_24DD85994(v83, v14) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v14)
  {
    goto LABEL_29;
  }

  if (v81 && v15 && (v82 != v16 || v81 != v15))
  {
    OUTLINED_FUNCTION_806();
    sub_24DE22CA0();
  }

LABEL_29:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.GameMetadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_645();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A18, &qword_24DE23140);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_223();
  v38 = *(v24 + 24);
  OUTLINED_FUNCTION_847();
  memcpy(v29, v30, v31);
  v37 = *(v24 + 172);
  v36 = *(v24 + 180);
  OUTLINED_FUNCTION_153(v27);
  sub_24DDE2584();
  OUTLINED_FUNCTION_617();
  sub_24DE22D50();
  LOBYTE(v40[0]) = 0;
  sub_24DE22C00();
  if (v25)
  {
    v34 = OUTLINED_FUNCTION_464();
  }

  else
  {
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    v40[0] = v38;
    sub_24DDE25D8();

    sub_24DE22C20();

    OUTLINED_FUNCTION_1314(v40);
    OUTLINED_FUNCTION_598();
    sub_24DDE73DC(&v41);
    sub_24DDE262C();
    OUTLINED_FUNCTION_750();
    sub_24DE22C20();
    memcpy(v39, v40, 0x6DuLL);
    sub_24DDE8DAC(v39, &unk_27F1B2A08);
    OUTLINED_FUNCTION_1079(4);
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_862();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_635(v37);
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_635(v36);
    OUTLINED_FUNCTION_750();
    sub_24DE22C30();
    OUTLINED_FUNCTION_793(8);
    OUTLINED_FUNCTION_750();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(9);
    OUTLINED_FUNCTION_750();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(10);
    OUTLINED_FUNCTION_1274();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(11);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(12);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(13);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1079(14);
    OUTLINED_FUNCTION_416();
    sub_24DE22C40();
    OUTLINED_FUNCTION_1079(15);
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_1079(16);
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_793(17);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(18);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    OUTLINED_FUNCTION_793(19);
    OUTLINED_FUNCTION_251();
    sub_24DE22C00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A38, &qword_24DE23148);
    OUTLINED_FUNCTION_4();
    sub_24DDE2680(v32);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v33);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_416();
    sub_24DE22C20();
    OUTLINED_FUNCTION_1079(22);
    OUTLINED_FUNCTION_416();
    sub_24DE22BF0();
    v34 = OUTLINED_FUNCTION_379();
  }

  v35(v34);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.GameMetadata.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v8 = v7;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v21 = *(v6 + 152);
  v22 = *(v6 + 164);
  v23 = *(v6 + 172);
  v24 = *(v6 + 180);
  v25 = *(v6 + 181);
  v26 = *(v6 + 182);
  v27 = *(v6 + 183);
  v11 = *(v6 + 185);
  v19 = *(v6 + 192);
  v30 = *(v6 + 186);
  v31 = *(v6 + 200);
  v12 = *(v6 + 216);
  v13 = *(v6 + 232);
  v28 = *(v6 + 184);
  v29 = *(v6 + 240);
  v14 = *(v6 + 241);
  v32 = *(v6 + 242);
  v33 = *(v6 + 248);
  v20 = *(v6 + 48);
  v34 = *(v6 + 272);
  v35 = *(v6 + 256);
  if (*v6 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v9)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1084();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v10)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v15 = OUTLINED_FUNCTION_548();
    sub_24DDE2424(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v20 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    __src[0] = *(v6 + 32);
    memcpy(&__src[1] + 8, (v6 + 56), 0x55uLL);
    *&__src[1] = v20;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v37 = *(v6 + 32);
    v38 = v20;
    memcpy(v39, (v6 + 56), sizeof(v39));
    sub_24DDE230C(&v37, v40);
    Components.Schemas.Artwork.hash(into:)(v8);
    memcpy(v40, __src, 0x6DuLL);
    sub_24DDE22DC(v40);
  }

  if (v21)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1083();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v22)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v24)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v25 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v26 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v27 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v28 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v11 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v30 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v31)
  {
    OUTLINED_FUNCTION_795();
    if (v12)
    {
LABEL_38:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_41;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v19);
    if (v12)
    {
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_41:
  if (v13)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v29 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v14 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v32 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v33)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v17 = OUTLINED_FUNCTION_492();
    sub_24DDE1900(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v35)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DDE0DB4(v8, v35);
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v34)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1278();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.GameMetadata.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.GameMetadata.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

void Components.Schemas.GameMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_359();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A48, &qword_24DE23150);
  OUTLINED_FUNCTION_27();
  v11 = v10;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_91();
  v157 = v13;
  v154 = v13;
  v151 = v13;
  v148 = v13;
  v14 = v5[4];
  OUTLINED_FUNCTION_153(v5);
  sub_24DDE2584();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_528();
    OUTLINED_FUNCTION_612();
    OUTLINED_FUNCTION_95();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    LOBYTE(v116) = 2;
    v117 = v11;
    v118 = v9;
    v119 = 0;
    v120 = v82;
    v121 = v81;
    v122 = v14;
    OUTLINED_FUNCTION_866();
    *(&v116 + 1) = v160[0];
    HIDWORD(v116) = *(v160 + 3);
    OUTLINED_FUNCTION_730();
    v124 = BYTE4(v8);
    v123 = v8;
    v125 = v158;
    OUTLINED_FUNCTION_823();
    v126 = v157;
    v127 = *(v15 + 24);
    OUTLINED_FUNCTION_1263();
    v128 = v154;
    v17 = *(v16 + 20);
    v130 = v153;
    v129 = v17;
    v131 = v65;
    v132 = v151;
    v133 = v7;
    OUTLINED_FUNCTION_945();
    v134 = v88;
    v135 = v86;
    v137 = v150;
    v136 = *(v18 + 14);
    v138 = v84;
    v139 = v148;
    v19 = *v18;
    *&v140[3] = *(v18 + 3);
    *v140 = v19;
    OUTLINED_FUNCTION_622();
    *&v140[42] = v20;
    v141 = v59;
    v142 = v57;
    v144 = 0;
    v143 = 0;
  }

  else
  {
    LOBYTE(v116) = 0;
    v53 = sub_24DE22B50();
    OUTLINED_FUNCTION_64(1);
    v51 = sub_24DE22B40();
    v52 = v21;
    sub_24DDE2704();
    OUTLINED_FUNCTION_1202();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v50 = v116;

    v100[23] = 3;
    sub_24DDE2758();
    OUTLINED_FUNCTION_1202();
    OUTLINED_FUNCTION_436();
    sub_24DE22B70();
    v83 = v101;
    v22 = v102;
    v48 = v103;
    v23 = v104;
    v76 = v107;
    v77 = v106;
    v78 = v105;
    v79 = v108;
    v74 = v109;
    v71 = v111;
    v72 = v110;
    v69 = v113;
    v70 = v112;
    v49 = v114 | (v115 << 32);
    v95[1] = 0;
    v95[0] = 0;
    v95[2] = 1;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    memset(v100, 0, 21);
    sub_24DDE8DAC(v95, &unk_27F1B2A08);
    OUTLINED_FUNCTION_64(4);
    v80 = v23;
    v73 = sub_24DE22B40();
    v75 = v24;
    OUTLINED_FUNCTION_64(5);
    v25 = sub_24DE22B80();
    v68 = v25;
    v157 = BYTE4(v25) & 1;
    OUTLINED_FUNCTION_64(6);
    v26 = sub_24DE22B80();
    v67 = v26;
    v154 = BYTE4(v26) & 1;
    OUTLINED_FUNCTION_64(7);
    v27 = sub_24DE22B80();
    v66 = v27;
    v151 = BYTE4(v27) & 1;
    OUTLINED_FUNCTION_64(8);
    v47 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(9);
    v92 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(10);
    v91 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(11);
    v90 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(12);
    v89 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(13);
    v87 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(14);
    v85 = sub_24DE22B90();
    OUTLINED_FUNCTION_1189(v85, v28);
    OUTLINED_FUNCTION_57(15);
    v61 = sub_24DE22B40();
    v63 = v29;
    OUTLINED_FUNCTION_57(16);
    v62 = sub_24DE22B40();
    v64 = v30;
    OUTLINED_FUNCTION_57(17);
    v55 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(18);
    v54 = sub_24DE22B50();
    OUTLINED_FUNCTION_57(19);
    v56 = sub_24DE22B50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A38, &qword_24DE23148);
    OUTLINED_FUNCTION_3();
    sub_24DDE2680(v31);
    OUTLINED_FUNCTION_782();
    sub_24DE22B70();
    v60 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    LOBYTE(v93[0]) = 21;
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v32);
    OUTLINED_FUNCTION_782();
    sub_24DE22B70();
    v58 = v116;
    v94 = 22;
    v33 = sub_24DE22B40();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_142();
    v37(v36);
    LOBYTE(v93[0]) = v53;
    *(v93 + 1) = v160[0];
    HIDWORD(v93[0]) = *(v160 + 3);
    v93[1] = v51;
    v93[2] = v52;
    v93[3] = v50;
    v93[4] = v83;
    v93[5] = v22;
    v93[6] = v48;
    v93[7] = v80;
    v93[8] = v78;
    v93[9] = v77;
    v93[10] = v76;
    v93[11] = v79;
    v93[12] = v74;
    v93[13] = v72;
    v93[14] = v71;
    v93[15] = v70;
    v93[16] = v69;
    BYTE4(v93[17]) = BYTE4(v49);
    LODWORD(v93[17]) = v49;
    *(&v93[17] + 5) = v158;
    HIBYTE(v93[17]) = v159;
    v93[18] = v73;
    v93[19] = v75;
    LODWORD(v93[20]) = v68;
    v46 = v157;
    BYTE4(v93[20]) = v157;
    *(&v93[20] + 5) = v155;
    HIBYTE(v93[20]) = v156;
    LODWORD(v93[21]) = v67;
    v45 = v154;
    BYTE4(v93[21]) = v154;
    HIBYTE(v93[21]) = v153;
    *(&v93[21] + 5) = v152;
    LODWORD(v93[22]) = v66;
    *(&v93[23] + 3) = v149;
    HIDWORD(v93[25]) = *&v147[3];
    *(&v93[25] + 1) = *v147;
    *(&v93[30] + 3) = v145;
    v44 = v151;
    BYTE4(v93[22]) = v151;
    BYTE5(v93[22]) = v47;
    BYTE6(v93[22]) = v92;
    HIBYTE(v93[22]) = v91;
    LOBYTE(v93[23]) = v90;
    BYTE1(v93[23]) = v89;
    BYTE2(v93[23]) = v87;
    HIBYTE(v93[23]) = v150;
    v93[24] = v85;
    HIBYTE(v93[30]) = v146;
    v43 = v148;
    LOBYTE(v93[25]) = v148;
    v93[26] = v61;
    v93[27] = v63;
    v93[28] = v62;
    v93[29] = v64;
    LOBYTE(v93[30]) = v55;
    BYTE1(v93[30]) = v54;
    BYTE2(v93[30]) = v56;
    v93[31] = v60;
    v93[32] = v58;
    v93[33] = v33;
    v93[34] = v35;
    memcpy(v7, v93, 0x118uLL);
    sub_24DDE27AC(v93, &v116);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    LOBYTE(v116) = v53;
    v117 = v51;
    v118 = v52;
    v119 = v50;
    v120 = v83;
    v121 = v22;
    v122 = v48;
    OUTLINED_FUNCTION_866();
    OUTLINED_FUNCTION_730();
    v124 = BYTE4(v49);
    *(&v116 + 1) = v160[0];
    HIDWORD(v116) = *(v160 + 3);
    v123 = v49;
    v125 = v158;
    OUTLINED_FUNCTION_823();
    v126 = v46;
    *(v38 + 165) = v155;
    OUTLINED_FUNCTION_1263();
    v128 = v45;
    v130 = v153;
    *(v39 + 173) = v152;
    v131 = v66;
    v132 = v44;
    v133 = v47;
    OUTLINED_FUNCTION_945();
    v134 = v89;
    v135 = v87;
    v137 = v150;
    *(v40 + 187) = v149;
    v138 = v85;
    v139 = v43;
    *&v140[3] = *&v147[3];
    *(v40 + 201) = *v147;
    OUTLINED_FUNCTION_622();
    *(v42 + 243) = v41;
    v141 = v60;
    v142 = v58;
    v143 = v33;
    v144 = v35;
  }

  sub_24DDE26D4(&v116);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD8D438(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.GameMetadata.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.status.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.message.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 24) = v3;
  *(v2 + 32) = v1;
  return result;
}

void Components.Schemas.App_AppInit_ResponseContent.alert.getter()
{
  v0 = OUTLINED_FUNCTION_1243();
  *v2 = v0;
  v2[1] = v1;
  v2[2] = v3;
  v2[3] = v4;
  sub_24DD7639C(v0, v1, v3, v4);
}

double Components.Schemas.App_AppInit_ResponseContent.alert.setter()
{
  v0 = OUTLINED_FUNCTION_1243();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_995().n128_u64[0];
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.appSession.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 72) = v3;
  *(v2 + 80) = v1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gameMetadata.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), 0x118uLL);
  memcpy(a1, (v1 + 88), 0x118uLL);
  return sub_24DDE73DC(__dst);
}

void *Components.Schemas.App_AppInit_ResponseContent.gameMetadata.setter()
{
  OUTLINED_FUNCTION_564();
  memcpy(v2, (v1 + 88), 0x118uLL);
  sub_24DDE8DAC(&v4, &unk_27F1B2A68);
  return memcpy((v1 + 88), v0, 0x118uLL);
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gameScopedPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 368) = v3;
  *(v2 + 376) = v1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.teamScopedPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 384) = v3;
  *(v2 + 392) = v1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.allowContactLookup.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 408) = v3;
  *(v2 + 416) = v1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.contactAssociationId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 424) = v3;
  *(v2 + 432) = v1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.lastUpdated.setter(uint64_t result, char a2)
{
  *(v2 + 440) = result;
  *(v2 + 448) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.privacyNoticeVersion.setter(uint64_t result, char a2)
{
  *(v2 + 456) = result;
  *(v2 + 464) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gamesPrivacyNoticeVersion.setter(uint64_t result, char a2)
{
  *(v2 + 472) = result;
  *(v2 + 480) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.gamesCrossUseNoticeVersion.setter(uint64_t result, char a2)
{
  *(v2 + 488) = result;
  *(v2 + 496) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.crossUseLinkedDsid.setter(uint64_t result, char a2)
{
  *(v2 + 504) = result;
  *(v2 + 512) = a2 & 1;
  return result;
}

void Components.Schemas.App_AppInit_ResponseContent.init(lastUpdatedMillis:status:message:alert:appSession:gameMetadata:gameScopedPlayerId:teamScopedPlayerId:renewAuthToken:isDefaultNickname:hasPrivacySettings:allowContactLookup:contactAssociationId:lastUpdated:privacyNoticeVersion:gamesPrivacyNoticeVersion:gamesCrossUseNoticeVersion:crossUseLinkedDsid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int128 a22, uint64_t a23, uint64_t a24, int a25, __int128 a26, __int128 a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37)
{
  OUTLINED_FUNCTION_659();
  v59 = v37;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24DDE27E4(__src);
  memcpy((v53 + 88), __src, 0x118uLL);
  *v53 = v51;
  *(v53 + 8) = v49 & 1;
  *(v53 + 12) = v47;
  *(v53 + 16) = BYTE4(v47) & 1;
  *(v53 + 24) = v45;
  *(v53 + 32) = v43;
  v54 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v54, v55, v56, v57);
  v58 = *v41;
  *(v53 + 56) = v41[1];
  *(v53 + 40) = v58;
  *(v53 + 72) = v39;
  *(v53 + 80) = v59;
  memcpy(__dst, (v53 + 88), 0x118uLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2A68);
  memcpy((v53 + 88), a21, 0x118uLL);
  *(v53 + 368) = a22;
  *(v53 + 384) = a23;
  *(v53 + 392) = a24;
  *(v53 + 400) = a25;
  *(v53 + 401) = *(&a25 + 1);
  *(v53 + 408) = a26;
  *(v53 + 424) = a27;
  *(v53 + 440) = a28;
  *(v53 + 448) = a29 & 1;
  *(v53 + 456) = a30;
  *(v53 + 464) = a31 & 1;
  *(v53 + 472) = a32;
  *(v53 + 480) = a33 & 1;
  *(v53 + 488) = a34;
  *(v53 + 496) = a35 & 1;
  *(v53 + 504) = a36;
  *(v53 + 512) = a37 & 1;
  OUTLINED_FUNCTION_653();
}

GameCenterServerClient::Components::Schemas::App_AppInit_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.App_AppInit_ResponseContent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_798();
  v4 = 18;
  if (v2 < 0x12)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

GameCenterServerClient::Components::Schemas::App_AppInit_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.App_AppInit_ResponseContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.App_AppInit_ResponseContent.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.CodingKeys.rawValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_16();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32();
      break;
    case 4:
      result = 0x737365732D707061;
      break;
    case 5:
      result = 0x74656D2D656D6167;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = OUTLINED_FUNCTION_758(21);
      break;
    case 9:
      result = OUTLINED_FUNCTION_423(21);
      break;
    case 0xA:
    case 0xB:
      result = OUTLINED_FUNCTION_344(21);
      break;
    case 0xC:
    case 0xE:
      result = OUTLINED_FUNCTION_759(21);
      break;
    case 0xD:
      result = OUTLINED_FUNCTION_286();
      break;
    case 0xF:
      result = OUTLINED_FUNCTION_762();
      break;
    case 0x10:
      result = 0xD00000000000001ELL;
      break;
    case 0x11:
      result = 0xD000000000000015;
      break;
    default:
      result = OUTLINED_FUNCTION_760(21);
      break;
  }

  return result;
}

uint64_t sub_24DD8DFF8@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.App_AppInit_ResponseContent.CodingKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD8E02C()
{
  sub_24DDE2820();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8E064()
{
  sub_24DDE2820();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.App_AppInit_ResponseContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  v10 = *v8;
  v11 = *(v8 + 8);
  v135 = *(v8 + 3);
  v12 = *(v8 + 16);
  v137 = v8[4];
  v131 = v8[5];
  v132 = v8[7];
  v133 = v8[8];
  v134 = v8[6];
  v123 = v8[9];
  v125 = v8[10];
  v126 = v8[3];
  memcpy(__dst, v8 + 11, sizeof(__dst));
  v119 = v9[46];
  v120 = v9[47];
  v116 = v9[48];
  v117 = v9[49];
  v114 = *(v9 + 401);
  v115 = *(v9 + 400);
  v113 = *(v9 + 402);
  v109 = v9[53];
  v110 = v9[51];
  v111 = v9[54];
  v112 = v9[52];
  v13 = *v7;
  v14 = *(v7 + 8);
  v15 = *(v7 + 3);
  v16 = *(v7 + 16);
  v17 = v7[3];
  v18 = v7[4];
  v127 = v7[5];
  v128 = v7[7];
  v129 = v7[6];
  v130 = v7[8];
  v122 = v7[9];
  v124 = v7[10];
  memcpy(__src, v7 + 11, sizeof(__src));
  v118 = v7[46];
  v121 = v7[47];
  v19 = v7[51];
  v20 = v7[53];
  v21 = v7[54];
  if (v11)
  {
    if (!v14)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v10 == v13)
    {
      v22 = v14;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_31;
    }
  }

  if (v12)
  {
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (v135 == v15)
    {
      v23 = v16;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_31;
    }
  }

  if (v137)
  {
    if (!v18)
    {
      goto LABEL_31;
    }

    v136 = v7[48];
    if (v126 != v17 || v137 != v18)
    {
      v105 = v7[53];
      v107 = v7[54];
      LODWORD(v17) = *(v7 + 464);
      v13 = v7[55];
      v25 = v7[51];
      v26 = sub_24DE22CA0();
      v21 = v107;
      v19 = v25;
      v20 = v105;
      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v136 = v7[48];
    if (v18)
    {
      goto LABEL_31;
    }
  }

  if (v134 == 1)
  {
    v108 = v21;
    v104 = v19;
    v106 = v20;
    OUTLINED_FUNCTION_1226();
    v27 = v131;
    OUTLINED_FUNCTION_572();
    sub_24DD7639C(v28, v29, v30, v133);
    if (v129 == 1)
    {
      sub_24DD7639C(v127, 1, v128, v130);
      OUTLINED_FUNCTION_784();
      OUTLINED_FUNCTION_430();
      sub_24DD763E4(v31, v32, v33, v34);
      goto LABEL_33;
    }

    v39 = v128;
    v48 = OUTLINED_FUNCTION_380();
    v41 = v130;
    sub_24DD7639C(v48, v49, v128, v130);
LABEL_30:
    OUTLINED_FUNCTION_252();
    sub_24DD763E4(v50, v51, v52, v53);
    v54 = OUTLINED_FUNCTION_380();
    sub_24DD763E4(v54, v55, v39, v41);
    goto LABEL_31;
  }

  v27 = v131;
  v143[0] = v131;
  v143[1] = v134;
  v143[2] = v132;
  v143[3] = v133;
  if (v129 == 1)
  {
    OUTLINED_FUNCTION_252();
    sub_24DD7639C(v35, v36, v37, v38);
    v39 = v128;
    v40 = OUTLINED_FUNCTION_603();
    v41 = v130;
    sub_24DD7639C(v40, v42, v43, v130);
    OUTLINED_FUNCTION_252();
    sub_24DD7639C(v44, v45, v46, v47);

    goto LABEL_30;
  }

  v108 = v21;
  v104 = v19;
  v106 = v20;
  OUTLINED_FUNCTION_1226();
  LODWORD(v13) = v128;
  v141[0] = v127;
  v141[1] = v129;
  v141[2] = v128;
  LODWORD(v17) = v130;
  v141[3] = v130;
  v56 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
  OUTLINED_FUNCTION_252();
  sub_24DD7639C(v57, v58, v59, v60);
  v61 = OUTLINED_FUNCTION_380();
  sub_24DD7639C(v61, v62, v128, v130);
  OUTLINED_FUNCTION_252();
  sub_24DD7639C(v63, v64, v65, v66);

  OUTLINED_FUNCTION_252();
  sub_24DD763E4(v67, v68, v69, v70);
  if ((v56 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (v125)
  {
    if (!v124)
    {
      goto LABEL_31;
    }

    v71 = v123 == v122 && v125 == v124;
    if (!v71 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v124)
  {
    goto LABEL_31;
  }

  memcpy(v143, __dst, 0x118uLL);
  memcpy(&v143[35], __src, 0x118uLL);
  memcpy(v144, __dst, sizeof(v144));
  if (sub_24DDE27FC(v144) != 1)
  {
    OUTLINED_FUNCTION_1166(v142);
    memcpy(v141, &v143[35], 0x118uLL);
    if (sub_24DDE27FC(v141) != 1)
    {
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v81);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v82);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v83);
      static Components.Schemas.GameMetadata.== infix(_:_:)(v143, &v143[35], v84, v85, v86, v87);
      v89 = v88;
      memcpy(v138, &v143[35], sizeof(v138));
      sub_24DDE26D4(v138);
      OUTLINED_FUNCTION_1166(v139);
      sub_24DDE26D4(v139);
      OUTLINED_FUNCTION_1166(v140);
      OUTLINED_FUNCTION_444();
      sub_24DDE8DAC(v90, v91);
      if ((v89 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_50;
    }

    OUTLINED_FUNCTION_1166(v140);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v76);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v77);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v78);
    sub_24DDE26D4(v140);
LABEL_48:
    memcpy(v141, v143, sizeof(v141));
    sub_24DDE8DAC(v141, &unk_27F1B2A70);
    goto LABEL_31;
  }

  memcpy(v141, &v143[35], 0x118uLL);
  if (sub_24DDE27FC(v141) != 1)
  {
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v79);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v80);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_1166(v142);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v72);
  OUTLINED_FUNCTION_377();
  sub_24DDE73DC(v73);
  OUTLINED_FUNCTION_444();
  sub_24DDE8DAC(v74, v75);
LABEL_50:
  if (v120)
  {
    OUTLINED_FUNCTION_1047();
    if (!v121)
    {
      goto LABEL_31;
    }

    if (v119 != v118 || v92 != v121)
    {
      v96 = v93;
      v97 = v94;
      v98 = sub_24DE22CA0();
      v94 = v97;
      v93 = v96;
      if ((v98 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_1047();
    if (v121)
    {
      goto LABEL_31;
    }
  }

  if (v117)
  {
    if (!v94)
    {
      goto LABEL_31;
    }

    if (v116 != v136 || v117 != v94)
    {
      v100 = v93;
      v101 = sub_24DE22CA0();
      v93 = v100;
      if ((v101 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v94)
  {
    goto LABEL_31;
  }

  if (v115 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v17 == 2 || ((v17 ^ v115) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v114 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v27 == 2 || ((v27 ^ v114) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v113 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_31;
    }
  }

  else if (v13 == 2 || ((v13 ^ v113) & 1) != 0)
  {
    goto LABEL_31;
  }

  if (v112)
  {
    if (!v93)
    {
      goto LABEL_31;
    }

    v102 = v110 == v104 && v112 == v93;
    if (!v102 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v93)
  {
    goto LABEL_31;
  }

  if (v111 && v108 && (v109 != v106 || v111 != v108))
  {
    sub_24DE22CA0();
  }

LABEL_31:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.App_AppInit_ResponseContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A78, &qword_24DE23168);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_390();
  v24 = v5[6];
  v25 = v5[5];
  v22 = v5[7];
  v23 = v5[8];
  v21 = v5[9];
  memcpy(v28, v5 + 11, 0x118uLL);
  v20 = v5[46];
  v19 = v5[48];
  OUTLINED_FUNCTION_387(v8, v8[3]);
  sub_24DDE2820();
  OUTLINED_FUNCTION_851();
  sub_24DE22D50();
  v27[0] = 0;
  sub_24DE22C40();
  if (v6)
  {
    v10 = OUTLINED_FUNCTION_426();
    v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_1027();
    sub_24DE22C30();
    v13 = OUTLINED_FUNCTION_732();
    OUTLINED_FUNCTION_1300(v13);
    v14 = OUTLINED_FUNCTION_463();
    sub_24DD7639C(v14, v15, v16, v17);
    sub_24DD87138();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C20();
    sub_24DD763E4(v25, v24, v22, v23);
    OUTLINED_FUNCTION_1300(v21);
    memcpy(v27, v28, sizeof(v27));
    v26[287] = 5;
    sub_24DDE73DC(v28);
    sub_24DDE2874();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C20();
    memcpy(v26, v27, 0x118uLL);
    sub_24DDE8DAC(v26, &unk_27F1B2A68);
    OUTLINED_FUNCTION_764(6);
    OUTLINED_FUNCTION_1300(v20);
    OUTLINED_FUNCTION_764(7);
    OUTLINED_FUNCTION_1300(v19);
    OUTLINED_FUNCTION_1027();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1027();
    sub_24DE22C00();
    sub_24DE22C00();
    OUTLINED_FUNCTION_764(11);
    OUTLINED_FUNCTION_329();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_764(12);
    OUTLINED_FUNCTION_329();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_764(13);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(14);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(15);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(16);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    OUTLINED_FUNCTION_764(17);
    OUTLINED_FUNCTION_329();
    sub_24DE22C40();
    v18 = OUTLINED_FUNCTION_541();
    v12(v18);
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

void Components.Schemas.App_AppInit_ResponseContent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v8 = v7;
  v25 = *(v6 + 16);
  v9 = v6[4];
  v10 = v6[6];
  v11 = v6[8];
  v27 = v6[10];
  v12 = v6[47];
  v29 = v6[49];
  v30 = *(v6 + 401);
  v35 = *(v6 + 400);
  v36 = *(v6 + 402);
  v31 = v6[52];
  v32 = v6[54];
  v23 = v6[55];
  v24 = v6[57];
  v33 = *(v6 + 448);
  v34 = *(v6 + 464);
  v13 = *(v6 + 480);
  v20 = v6[59];
  v21 = v6[61];
  v26 = *(v6 + 496);
  v22 = v6[63];
  v28 = *(v6 + 512);
  if (*(v6 + 8) == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    v14 = *v6;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v14);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_795();
    if (v9)
    {
LABEL_6:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_1278();
      sub_24DE22AD0();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_9:
  if (v10 != 1)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    if (v10)
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      OUTLINED_FUNCTION_826();
      sub_24DE22AD0();
      if (v11)
      {
LABEL_12:
        OUTLINED_FUNCTION_371();
        sub_24DE22CE0();
        OUTLINED_FUNCTION_1082();
        sub_24DE22AD0();
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_795();
      if (v11)
      {
        goto LABEL_12;
      }
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_15:
  if (v27)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  memcpy(__dst, v6 + 11, 0x118uLL);
  if (sub_24DDE27FC(__dst) == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    memcpy(v37, v6 + 11, sizeof(v37));
    sub_24DDE27AC(v37, v38);
    Components.Schemas.GameMetadata.hash(into:)(v8, v15, v16, v17, v18, v19);
    memcpy(v38, v6 + 11, sizeof(v38));
    sub_24DDE26D4(v38);
  }

  if (v12)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v29)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v35 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v30 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v36 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v31)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v32)
    {
LABEL_35:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_38;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v32)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_38:
  if (v33)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v23);
  }

  if (v34)
  {
    OUTLINED_FUNCTION_795();
    if (!v13)
    {
LABEL_43:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      MEMORY[0x253039750](v20);
      goto LABEL_46;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v24);
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_46:
  if (v26)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v21);
  }

  if (v28)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v22);
  }

  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.App_AppInit_ResponseContent.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.App_AppInit_ResponseContent.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

void Components.Schemas.App_AppInit_ResponseContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2A90, &qword_24DE23170);
  OUTLINED_FUNCTION_27();
  v11 = v10;
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_138();
  v122 = 1;
  v119 = 1;
  sub_24DDE27E4(v123);
  memcpy(v117, v123, sizeof(v117));
  v114 = 1;
  v112 = 1;
  v110 = 1;
  v108 = 1;
  v106 = 1;
  v13 = v7[3];
  v14 = v7[4];
  v61 = v7;
  OUTLINED_FUNCTION_153(v7);
  sub_24DDE2820();
  OUTLINED_FUNCTION_220();
  sub_24DE22D30();
  if (v5)
  {
    OUTLINED_FUNCTION_145();
    OUTLINED_FUNCTION_583();
    OUTLINED_FUNCTION_295();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v79 = 0;
    LOBYTE(v80) = v122;
    *(&v80 + 1) = v120;
    BYTE3(v80) = v121;
    HIDWORD(v80) = 0;
    LOBYTE(v81) = v119;
    *(&v81 + 1) = *v118;
    HIDWORD(v81) = *&v118[3];
    v82 = v9;
    v83 = v11;
    v84 = v5;
    v85 = v7;
    v86 = v63;
    v87 = v65;
    OUTLINED_FUNCTION_1262();
    memcpy(v88, v117, sizeof(v88));
    OUTLINED_FUNCTION_916();
    v89 = v14;
    v90 = v13;
    v91 = v72;
    OUTLINED_FUNCTION_697(v92);
    v93 = v114;
    *v94 = v15[6];
    *&v94[3] = *(v15 + 27);
    v95 = v67;
    v96 = v112;
    *v97 = v15[4];
    *&v97[3] = *(v15 + 19);
    v98 = v54;
    v99 = v110;
    *v100 = v15[2];
    *&v100[3] = *(v15 + 11);
    v101 = v52;
    v102 = v108;
    *v103 = *v15;
    *&v103[3] = *(v15 + 3);
    v104 = 0;
    v105 = v106;
  }

  else
  {
    LOBYTE(v79) = 0;
    v50 = sub_24DE22B90();
    v122 = v16 & 1;
    OUTLINED_FUNCTION_207(1);
    v17 = sub_24DE22B80();
    v49 = v17;
    v119 = BYTE4(v17) & 1;
    OUTLINED_FUNCTION_207(2);
    v47 = sub_24DE22B40();
    v48 = v18;
    v74[0] = 3;
    sub_24DDE1E9C();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v46 = v79;
    v19 = v80;
    v64 = v81;
    v66 = v82;
    v20 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v20, v21, v22, v23);
    OUTLINED_FUNCTION_207(4);
    v60 = sub_24DE22B40();
    v62 = v24;
    v77[287] = 5;
    sub_24DDE28F8();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    memcpy(v76, v78, sizeof(v76));
    memcpy(v77, v117, 0x118uLL);
    sub_24DDE8DAC(v77, &unk_27F1B2A68);
    memcpy(v117, v76, sizeof(v117));
    OUTLINED_FUNCTION_207(6);
    v58 = sub_24DE22B40();
    v59 = v25;
    OUTLINED_FUNCTION_207(7);
    v56 = sub_24DE22B40();
    v57 = v26;
    OUTLINED_FUNCTION_207(8);
    v45 = sub_24DE22B50();
    OUTLINED_FUNCTION_207(9);
    v44 = sub_24DE22B50();
    OUTLINED_FUNCTION_122(10);
    v73 = sub_24DE22B50();
    OUTLINED_FUNCTION_122(11);
    v70 = sub_24DE22B40();
    v71 = v27;
    OUTLINED_FUNCTION_122(12);
    sub_24DE22B40();
    v69 = v28;
    OUTLINED_FUNCTION_122(13);
    sub_24DE22B90();
    v114 = v29 & 1;
    OUTLINED_FUNCTION_122(14);
    v68 = sub_24DE22B90();
    v112 = v30 & 1;
    OUTLINED_FUNCTION_122(15);
    v55 = sub_24DE22B90();
    v110 = v31 & 1;
    OUTLINED_FUNCTION_122(16);
    v53 = sub_24DE22B90();
    v108 = v32 & 1;
    v75 = 17;
    v33 = sub_24DE22B90();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_306();
    v37(v36);
    v106 = v35 & 1;
    *v74 = v50;
    v51 = v122;
    v74[8] = v122;
    *&v74[9] = v120;
    v74[11] = v121;
    *&v74[12] = v49;
    v43 = v119;
    v74[16] = v119;
    *&v74[17] = *v118;
    *&v74[20] = *&v118[3];
    *&v74[24] = v47;
    *&v74[32] = v48;
    *&v74[40] = v46;
    *&v74[48] = v19;
    *&v74[56] = v64;
    *&v74[64] = v66;
    *&v74[72] = v60;
    *&v74[80] = v62;
    memcpy(&v74[88], v76, 0x118uLL);
    *&v74[368] = v58;
    *&v74[376] = v59;
    *&v74[384] = v56;
    *&v74[392] = v57;
    v74[400] = v45;
    v74[401] = v44;
    v74[402] = v73;
    *&v74[403] = v115;
    v74[407] = v116;
    *&v74[408] = v70;
    *&v74[416] = v71;
    OUTLINED_FUNCTION_1209(v69);
    v42 = v114;
    v74[448] = v114;
    *&v74[449] = *v113;
    *&v74[452] = *&v113[3];
    *&v74[456] = v68;
    v41 = v112;
    v74[464] = v112;
    *&v74[465] = *v111;
    *&v74[468] = *&v111[3];
    *&v74[472] = v55;
    v40 = v110;
    v74[480] = v110;
    *&v74[481] = *v109;
    *&v74[484] = *&v109[3];
    *&v74[488] = v53;
    v38 = v108;
    v74[496] = v108;
    *&v74[497] = *v107;
    *&v74[500] = *&v107[3];
    *&v74[504] = v33;
    v39 = v106;
    v74[512] = v106;
    memcpy(v9, v74, 0x201uLL);
    sub_24DDE294C(v74, &v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v79 = v50;
    LOBYTE(v80) = v51;
    *(&v80 + 1) = v120;
    BYTE3(v80) = v121;
    HIDWORD(v80) = v49;
    LOBYTE(v81) = v43;
    *(&v81 + 1) = *v118;
    HIDWORD(v81) = *&v118[3];
    v82 = v47;
    v83 = v48;
    v84 = v46;
    v85 = v19;
    v86 = v64;
    v87 = v66;
    OUTLINED_FUNCTION_1262();
    memcpy(v88, v117, sizeof(v88));
    OUTLINED_FUNCTION_916();
    v89 = v45;
    v90 = v44;
    v91 = v73;
    OUTLINED_FUNCTION_697(v92);
    v93 = v42;
    *v94 = *v113;
    *&v94[3] = *&v113[3];
    v95 = v68;
    v96 = v41;
    *v97 = *v111;
    *&v97[3] = *&v111[3];
    v98 = v55;
    v99 = v40;
    *v100 = *v109;
    *&v100[3] = *&v109[3];
    v101 = v53;
    v102 = v38;
    *v103 = *v107;
    *&v103[3] = *&v107[3];
    v104 = v33;
    v105 = v39;
  }

  sub_24DDE28C8(&v79);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD8FDBC(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.App_AppInit_ResponseContent.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.games.setter()
{
  result = OUTLINED_FUNCTION_1311();
  *v1 = v0;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.relatedPlayerIds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.init(games:relatedPlayerIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x73656D6167;
  }
}

uint64_t sub_24DD8FF20@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetScopedIDs_Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD8FF50()
{
  sub_24DDE2984();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD8FF88()
{
  sub_24DDE2984();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Profile_GetScopedIDs_Request.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_281(a1);
  v3 = *(v2 + 8);
  v5 = *v4;
  v7 = *(v6 + 8);
  if (v1)
  {
    if (!v5 || (sub_24DD85994(v1, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_407();
      if (sub_24DD85994(v8, v9))
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

void Components.Schemas.Profile_GetScopedIDs_Request.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_1177();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AA0, &qword_24DE23178);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_111();
  v6 = sub_24DDE2984();

  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_475();
  sub_24DE22D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
  OUTLINED_FUNCTION_4();
  sub_24DDE2110(v7);
  OUTLINED_FUNCTION_920();
  OUTLINED_FUNCTION_709();
  OUTLINED_FUNCTION_376();
  sub_24DE22C20();

  if (!v6)
  {
    OUTLINED_FUNCTION_1175();
    OUTLINED_FUNCTION_920();
    OUTLINED_FUNCTION_709();
    OUTLINED_FUNCTION_376();
    sub_24DE22C20();
  }

  v8 = OUTLINED_FUNCTION_446();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  if (!*v1)
  {
    OUTLINED_FUNCTION_887();
    if (v3)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_887();
  }

  OUTLINED_FUNCTION_878();
  sub_24DDE0DB4(a1, v4);
  if (!v3)
  {
    return OUTLINED_FUNCTION_887();
  }

LABEL_3:
  OUTLINED_FUNCTION_878();
  v5 = OUTLINED_FUNCTION_446();

  return sub_24DDE0DB4(v5, v6);
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Request.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  OUTLINED_FUNCTION_796(a1);
  if (v3)
  {
    v4 = sub_24DE22CE0();
    v12 = OUTLINED_FUNCTION_814(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
    sub_24DDE0DB4(v12, v13);
  }

  else
  {
    sub_24DE22CE0();
  }

  if (v2)
  {
    v14 = sub_24DE22CE0();
    v22 = OUTLINED_FUNCTION_452(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
    sub_24DDE0DB4(v22, v23);
  }

  else
  {
    sub_24DE22CE0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetScopedIDs_Request.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_455();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AB0, &qword_24DE23180);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE2984();
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v10)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v14);
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_507();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    OUTLINED_FUNCTION_1175();
    OUTLINED_FUNCTION_928();
    OUTLINED_FUNCTION_507();
    OUTLINED_FUNCTION_439();
    sub_24DE22B70();
    v15 = OUTLINED_FUNCTION_379();
    v16(v15);
    *v12 = a10;
    v12[1] = a10;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD90470(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1232(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Profile_GetScopedIDs_Request.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.init(status:results:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_24DD90590@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetScopedIDs_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD905C0()
{
  sub_24DDE29D8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD905F8()
{
  sub_24DDE29D8();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Profile_GetScopedIDs_Response.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_267(a1);
  v3 = *(v2 + 4);
  v4 = *(v2 + 8);
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (v6)
    {
      return 0;
    }
  }

  if (v1)
  {
    return v4 && (sub_24DD8655C(v1, v4) & 1) != 0;
  }

  return !v4;
}

void Components.Schemas.Profile_GetScopedIDs_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AB8, &qword_24DE23188);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_250(v7);
  sub_24DDE29D8();
  OUTLINED_FUNCTION_425();
  OUTLINED_FUNCTION_709();
  sub_24DE22D50();
  OUTLINED_FUNCTION_502();
  sub_24DE22C30();
  if (!v5)
  {
    OUTLINED_FUNCTION_414();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AC8, &qword_24DE23190);
    sub_24DDE2A2C();
    OUTLINED_FUNCTION_1063();
    OUTLINED_FUNCTION_179();
    sub_24DE22C20();
  }

  v9 = OUTLINED_FUNCTION_446();
  v10(v9);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_192();
  v2 = *(v1 + 8);
  if (v3 != 1)
  {
    OUTLINED_FUNCTION_1163();
    sub_24DE22CF0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (!v2)
  {
    return sub_24DE22CE0();
  }

LABEL_3:
  sub_24DE22CE0();
  v4 = OUTLINED_FUNCTION_407();

  return sub_24DDE1718(v4, v5);
}

uint64_t Components.Schemas.Profile_GetScopedIDs_Response.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_796(a1);
  sub_24DE22CE0();
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_1306();
  }

  if (v3)
  {
    v4 = sub_24DE22CE0();
    v12 = OUTLINED_FUNCTION_452(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
    sub_24DDE1718(v12, v13);
  }

  else
  {
    sub_24DE22CE0();
  }

  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetScopedIDs_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AE0, &qword_24DE23198);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE29D8();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v5)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_416();
    sub_24DE22B80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AC8, &qword_24DE23190);
    OUTLINED_FUNCTION_414();
    sub_24DDE2B04();
    OUTLINED_FUNCTION_211();
    sub_24DE22B70();
    v8 = OUTLINED_FUNCTION_106();
    v9(v8);
    OUTLINED_FUNCTION_975();
    *(v6 + 8) = v10;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD90A90(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1232(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Profile_GetScopedIDs_Response.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ImageURL.init(avatarType:template:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ImageURL.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x742D726174617661;
  }
}

uint64_t sub_24DD90BCC@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetProfileInfo_ImageURL.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD90BFC()
{
  sub_24DDE2BDC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD90C34()
{
  sub_24DDE2BDC();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

BOOL static Components.Schemas.Profile_GetProfileInfo_ImageURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 16) && v6 == v7;
    return v9 || (sub_24DE22CA0() & 1) != 0;
  }

  return !v7;
}

void Components.Schemas.Profile_GetProfileInfo_ImageURL.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_891();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2AF8, &qword_24DE231A0);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_737();
  OUTLINED_FUNCTION_153(v6);
  sub_24DDE2BDC();
  OUTLINED_FUNCTION_200();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_139();
  sub_24DE22C40();
  if (!v5)
  {
    OUTLINED_FUNCTION_121();
    sub_24DE22BF0();
  }

  v8 = OUTLINED_FUNCTION_213();
  v9(v8);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ImageURL.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_438();
  v2 = v1[3];
  if (*(v1 + 8) != 1)
  {
    v4 = *v1;
    sub_24DE22CE0();
    MEMORY[0x253039750](v4);
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (!v2)
  {
    return sub_24DE22CE0();
  }

LABEL_3:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();

  return sub_24DE22AD0();
}

void Components.Schemas.Profile_GetProfileInfo_ImageURL.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_1100();
  v27 = *v26;
  v28 = v26[3];
  OUTLINED_FUNCTION_796(v29);
  OUTLINED_FUNCTION_1035();
  if (v30)
  {
    sub_24DE22CE0();
  }

  else
  {
    sub_24DE22CE0();
    MEMORY[0x253039750](v27);
  }

  sub_24DE22CE0();
  if (v28)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1098();
}

void Components.Schemas.Profile_GetProfileInfo_ImageURL.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2B08, &qword_24DE231A8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_79();
  sub_24DDE2BDC();
  OUTLINED_FUNCTION_501();
  OUTLINED_FUNCTION_475();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_336();
    v9 = sub_24DE22B90();
    v11 = v10;
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_529();
    sub_24DE22B40();
    OUTLINED_FUNCTION_1036();
    v15 = v12;
    v13 = OUTLINED_FUNCTION_532();
    v14(v13);
    *v7 = v9;
    *(v7 + 8) = v11 & 1;
    *(v7 + 16) = v15;
    *(v7 + 24) = v5;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_631();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD910A4(uint64_t a1)
{
  v1 = sub_24DE22CC0();
  v9 = OUTLINED_FUNCTION_1051(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  Components.Schemas.Profile_GetProfileInfo_ImageURL.hash(into:)(v9);
  return sub_24DE22D10();
}

uint64_t Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.init(suggestionsCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

void Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_247();
}

uint64_t sub_24DD9123C()
{
  sub_24DDE2C30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD91274()
{
  sub_24DDE2C30();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t static Components.Schemas.Profile_GetSuggestedPlayerNickname_Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.achievements.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *v2 = v3;
  v2[1] = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.friends.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.gamesPlayed.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 32) = v3;
  *(v2 + 40) = v1;
  return result;
}

void __swiftcall Components.Schemas.Profile_GetProfileInfo_PrivacySettings.init(achievements:friends:gamesPlayed:)(GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_PrivacySettings *__return_ptr retstr, Swift::String_optional achievements, Swift::String_optional friends, Swift::String_optional gamesPlayed)
{
  retstr->achievements = achievements;
  retstr->friends = friends;
  retstr->gamesPlayed = gamesPlayed;
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_PrivacySettings::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_PrivacySettings.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_PrivacySettings.CodingKeys.stringValue.getter()
{
  v1 = 0x73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x6C702D73656D6167;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D65766569686361;
  }
}

uint64_t sub_24DD91648@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetProfileInfo_PrivacySettings.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9167C()
{
  sub_24DDE2C84();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD916B4()
{
  sub_24DDE2C84();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.alias.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 16) = v3;
  *(v2 + 24) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.firstName.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 40) = v3;
  *(v2 + 48) = v1;
  return result;
}

void sub_24DD91930(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.imageUrls.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24DDE2CD8(v2, v3, v4, v5);
}

__n128 Components.Schemas.Profile_GetProfileInfo_ProfileInfo.imageUrls.setter(uint64_t a1)
{
  sub_24DDE2CEC(v1[7], v1[8], v1[9], v1[10]);
  result = *a1;
  *(v1 + 9) = *(a1 + 16);
  *(v1 + 7) = result;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.inputId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 88) = v3;
  *(v2 + 96) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastName.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedGame.getter()
{
  OUTLINED_FUNCTION_961();
  OUTLINED_FUNCTION_1201();
  memcpy(v2, v3, v4);
  v5 = memcpy(v0, (v1 + 144), 0x59uLL);
  v11 = OUTLINED_FUNCTION_805(v5, v6, &unk_27F1B2B40, &unk_24DE231D0, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  return sub_24DDE73DC(v11);
}

void *Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedGame.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_1201();
  memcpy(v1, v2, v3);
  sub_24DDE8DAC(&v5, &unk_27F1B2B40);
  return OUTLINED_FUNCTION_949((v0 + 144));
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastPlayedTimestamp.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numAchievements.setter(uint64_t result)
{
  *(v1 + 252) = result;
  *(v1 + 256) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numCommonFriends.setter(uint64_t result)
{
  *(v1 + 260) = result;
  *(v1 + 264) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numCommonGames.setter(uint64_t result)
{
  *(v1 + 268) = result;
  *(v1 + 272) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numFriends.setter(uint64_t result)
{
  *(v1 + 276) = result;
  *(v1 + 280) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.numGamesPlayed.setter(uint64_t result)
{
  *(v1 + 284) = result;
  *(v1 + 288) = BYTE4(result) & 1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.playerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 296) = v3;
  *(v2 + 304) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.gameScopedPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 312) = v3;
  *(v2 + 320) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.teamScopedPlayerId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 328) = v3;
  *(v2 + 336) = v1;
  return result;
}

double sub_24DD91F1C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24DE22F30;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.privacySettings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[43];
  v3 = v1[44];
  v4 = v1[45];
  v5 = v1[46];
  v6 = v1[47];
  v7 = v1[48];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_24DDE3490(v2, v3);
}

__n128 Components.Schemas.Profile_GetProfileInfo_ProfileInfo.privacySettings.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_24DDE34E4(*(v1 + 344), *(v1 + 352));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 344) = *a1;
  *(v1 + 360) = v6;
  *(v1 + 376) = v3;
  *(v1 + 384) = v4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendsApi.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 400) = v3;
  *(v2 + 408) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendInvitesFromChallenges.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 416) = v3;
  *(v2 + 424) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowFriendInvitesFromMultiplayerInvites.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 432) = v3;
  *(v2 + 440) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.allowContactLookup.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 448) = v3;
  *(v2 + 456) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.contactAssociationId.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_372();

  *(v2 + 464) = v3;
  *(v2 + 472) = v1;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.lastUpdated.setter(uint64_t result, char a2)
{
  *(v2 + 480) = result;
  *(v2 + 488) = a2 & 1;
  return result;
}

void *sub_24DD922DC()
{
  OUTLINED_FUNCTION_1086();
  sub_24DDE2D00(v0);
  v1 = OUTLINED_FUNCTION_1065();
  return memcpy(v1, v2, 0x7DuLL);
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.avatar.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1183();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 496), 0x7DuLL);
  return sub_24DDE73DC(v7);
}

void *Components.Schemas.Profile_GetProfileInfo_ProfileInfo.avatar.setter()
{
  OUTLINED_FUNCTION_564();
  OUTLINED_FUNCTION_1183();
  memcpy(v2, v3, v4);
  sub_24DDE8DAC(&v6, &unk_27F1B2B48);
  return memcpy((v1 + 496), v0, 0x7DuLL);
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.init(pbaccount:challengeable:achievementPoints:alias:findable:firstName:imageUrls:inputId:isChild:isInvitable:isPlayerInvitable:lastSeenTimestamp:lastName:lastPlayedGame:lastPlayedTimestamp:numAchievements:numCommonFriends:numCommonGames:numFriends:numGamesPlayed:pbAccount:playerId:gameScopedPlayerId:teamScopedPlayerId:privacySettings:isArcadeSubscriber:allowFriendsApi:allowFriendInvitesFromChallenges:allowFriendInvitesFromMultiplayerInvites:allowContactLookup:contactAssociationId:lastUpdated:canReceiveFriendInvitation:avatar:isChallengeable:supportsMultiplayerActivities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, uint64_t a22, uint64_t a23, int a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, const void *a29, uint64_t a30, char a31, int a32, int a33, char a34, int a35, char a36, int a37, char a38, int a39, char a40, int a41, char a42, __int16 a43, char a44, __int128 a45, __int128 a46, uint64_t a47, uint64_t a48, __int128 *a49, char a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, __int128 a55, uint64_t a56, char a57, char a58, const void *a59, __int16 a60)
{
  OUTLINED_FUNCTION_659();
  v80 = v60;
  v79 = v61;
  v78 = v62;
  v76 = v63;
  v77 = v64;
  v75 = v65;
  v73 = v66;
  v74 = v67;
  v69 = v68;
  v70 = v68 + 256;
  *(v68 + 72) = 0;
  *(v68 + 80) = 1;
  v68 += 360;
  *v68 = 0u;
  *(v68 + 16) = 0u;
  *(v69 + 144) = xmmword_24DE22F30;
  *(v69 + 56) = 0;
  *(v69 + 64) = 0;
  *(v69 + 160) = 0u;
  *(v69 + 176) = 0u;
  *(v69 + 192) = 0u;
  *(v69 + 208) = 0u;
  *(v69 + 217) = 0u;
  *(v70 + 88) = xmmword_24DE22F30;
  v81 = *(a49 + 5);
  v82 = *(a49 + 4);
  sub_24DDE2D00(__src);
  memcpy((v69 + 496), __src, 0x7DuLL);
  *v69 = v73;
  *(v69 + 1) = v74;
  *(v69 + 4) = v75;
  *(v69 + 8) = BYTE4(v75) & 1;
  *(v69 + 16) = v76;
  *(v69 + 24) = v77;
  *(v69 + 32) = v78;
  *(v69 + 40) = v79;
  *(v69 + 48) = v80;
  sub_24DDE2CEC(*(v69 + 56), *(v69 + 64), *(v69 + 72), *(v69 + 80));
  v71 = *a21;
  *(v69 + 72) = a21[1];
  *(v69 + 56) = v71;
  *(v69 + 88) = a22;
  *(v69 + 96) = a23;
  *(v69 + 104) = a24;
  *(v69 + 105) = *(&a24 + 1);
  *(v69 + 112) = a25;
  *(v69 + 120) = a26 & 1;
  *(v69 + 128) = a27;
  *(v69 + 136) = a28;
  memcpy(__dst, (v69 + 144), 0x59uLL);
  sub_24DDE8DAC(__dst, &unk_27F1B2B40);
  memcpy((v69 + 144), a29, 0x59uLL);
  *(v69 + 240) = a30;
  *(v69 + 248) = a31 & 1;
  *(v69 + 252) = a33;
  *(v69 + 256) = a34 & 1;
  *(v69 + 260) = a35;
  *(v69 + 264) = a36 & 1;
  *(v69 + 268) = a37;
  *(v69 + 272) = a38 & 1;
  *(v69 + 276) = a39;
  *(v69 + 280) = a40 & 1;
  *(v69 + 284) = a41;
  *(v69 + 288) = a42 & 1;
  *(v69 + 289) = a44;
  *(v69 + 296) = a45;
  *(v69 + 312) = a46;
  *(v69 + 328) = a47;
  *(v69 + 336) = a48;
  sub_24DDE34E4(*(v70 + 88), *(v69 + 352));
  v72 = *a49;
  *(v70 + 104) = a49[1];
  *(v70 + 88) = v72;
  *(v69 + 376) = v82;
  *(v69 + 384) = v81;
  *(v69 + 392) = a50;
  *(v69 + 400) = a51;
  *(v69 + 416) = a52;
  *(v69 + 432) = a53;
  *(v69 + 448) = a54;
  *(v69 + 464) = a55;
  *(v69 + 480) = a56;
  *(v69 + 488) = a57 & 1;
  *(v69 + 489) = a58;
  memcpy(v85, (v69 + 496), 0x7DuLL);
  sub_24DDE8DAC(v85, &unk_27F1B2B48);
  memcpy((v69 + 496), a59, 0x7DuLL);
  *(v69 + 621) = a60;
  OUTLINED_FUNCTION_653();
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_ProfileInfo::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_755();
  sub_24DE22CB0();
  result.value = OUTLINED_FUNCTION_1325();
  v4 = 0;
  v5 = 18;
  switch(v2)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v4 = 1;
      goto LABEL_28;
    case 2:
      v4 = 2;
      goto LABEL_28;
    case 3:
      v4 = 3;
      goto LABEL_28;
    case 4:
      v4 = 4;
      goto LABEL_28;
    case 5:
      v4 = 5;
      goto LABEL_28;
    case 6:
      v4 = 6;
      goto LABEL_28;
    case 7:
      v4 = 7;
      goto LABEL_28;
    case 8:
      v4 = 8;
      goto LABEL_28;
    case 9:
      v4 = 9;
      goto LABEL_28;
    case 10:
      v4 = 10;
      goto LABEL_28;
    case 11:
      v4 = 11;
      goto LABEL_28;
    case 12:
      v4 = 12;
      goto LABEL_28;
    case 13:
      v4 = 13;
      goto LABEL_28;
    case 14:
      v4 = 14;
      goto LABEL_28;
    case 15:
      v4 = 15;
      goto LABEL_28;
    case 16:
      v4 = 16;
      goto LABEL_28;
    case 17:
      v4 = 17;
LABEL_28:
      v5 = v4;
      break;
    case 18:
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    case 35:
      v5 = 35;
      break;
    default:
      v5 = 36;
      break;
  }

  *v1 = v5;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_ProfileInfo::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_460();
  LOBYTE(v2) = Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.init(rawValue:)(v1);
  OUTLINED_FUNCTION_458(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12));
  return result;
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
    case 0x10:
      OUTLINED_FUNCTION_561(16);
      break;
    case 3:
      OUTLINED_FUNCTION_830();
      break;
    case 5:
      OUTLINED_FUNCTION_895();
      break;
    case 6:
      OUTLINED_FUNCTION_419();
      break;
    case 0xA:
    case 0xB:
    case 0x1B:
    case 0x1C:
    case 0x23:
      OUTLINED_FUNCTION_1162();
      break;
    case 0xC:
      OUTLINED_FUNCTION_828();
      break;
    case 0xD:
    case 0xF:
    case 0x11:
    case 0x13:
    case 0x18:
    case 0x22:
      OUTLINED_FUNCTION_155();
      break;
    case 0x15:
      OUTLINED_FUNCTION_193(0x726579616C70);
      break;
    case 0x19:
    case 0x1D:
      OUTLINED_FUNCTION_560(16);
      break;
    case 0x1A:
      OUTLINED_FUNCTION_244(16);
      break;
    case 0x1E:
      OUTLINED_FUNCTION_761(16);
      break;
    case 0x1F:
      OUTLINED_FUNCTION_286();
      break;
    default:
      return;
  }
}

void sub_24DD92ECC(uint64_t *a1@<X8>)
{
  Components.Schemas.Profile_GetProfileInfo_ProfileInfo.CodingKeys.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DD92F00()
{
  sub_24DDE2D80();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD92F38()
{
  sub_24DDE2D80();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Profile_GetProfileInfo_ProfileInfo.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  OUTLINED_FUNCTION_569();
  v9 = *v8;
  v10 = v8[1];
  v330 = *(v8 + 1);
  v332 = v8[8];
  v328 = *(v8 + 2);
  v331 = *(v8 + 3);
  v329 = v8[32];
  v327 = *(v8 + 6);
  v318 = *(v8 + 11);
  v322 = *(v8 + 12);
  v320 = v8[104];
  v315 = v8[105];
  v314 = v8[106];
  v308 = *(v8 + 14);
  v311 = v8[120];
  v306 = *(v8 + 16);
  v310 = *(v8 + 17);
  OUTLINED_FUNCTION_1201();
  memcpy(v11, v12, v13);
  v300 = *(v7 + 240);
  v304 = *(v7 + 248);
  v297 = *(v7 + 252);
  v301 = *(v7 + 256);
  v293 = *(v7 + 260);
  v298 = *(v7 + 264);
  v289 = *(v7 + 268);
  v294 = *(v7 + 272);
  v284 = *(v7 + 276);
  v290 = *(v7 + 280);
  v281 = *(v7 + 284);
  v285 = *(v7 + 288);
  v282 = *(v7 + 289);
  v200 = *(v7 + 296);
  v204 = *(v7 + 312);
  v277 = *(v7 + 304);
  v278 = *(v7 + 320);
  v208 = *(v7 + 336);
  v212 = *(v7 + 328);
  v255 = *(v7 + 344);
  v256 = *(v7 + 360);
  v257 = *(v7 + 368);
  v258 = *(v7 + 376);
  v259 = *(v7 + 384);
  HIDWORD(v244) = *(v7 + 392);
  v249 = *(v7 + 400);
  v246 = *(v7 + 352);
  v247 = *(v7 + 408);
  v260 = *(v7 + 424);
  v261 = *(v7 + 416);
  v266 = *(v7 + 440);
  v267 = *(v7 + 432);
  v269 = *(v7 + 456);
  v270 = *(v7 + 448);
  v271 = *(v7 + 472);
  v272 = *(v7 + 464);
  v274 = *(v7 + 480);
  v273 = *(v7 + 488);
  v275 = *(v7 + 489);
  OUTLINED_FUNCTION_1183();
  memcpy(v14, v15, v16);
  v17 = *v6;
  v18 = v6[1];
  v19 = *(v6 + 1);
  v20 = v6[8];
  v22 = *(v6 + 2);
  v21 = *(v6 + 3);
  v23 = v6[32];
  v326 = *(v6 + 6);
  v323 = *(v6 + 8);
  v324 = *(v6 + 9);
  v325 = *(v6 + 10);
  v317 = *(v6 + 11);
  v321 = *(v6 + 12);
  v319 = v6[104];
  v316 = v6[105];
  v313 = v6[106];
  v307 = *(v6 + 14);
  v312 = v6[120];
  v305 = *(v6 + 16);
  v309 = *(v6 + 17);
  memcpy(__dst, v6 + 144, 0x59uLL);
  v299 = *(v6 + 30);
  v303 = v6[248];
  v296 = *(v6 + 63);
  v302 = v6[256];
  v291 = *(v6 + 65);
  v295 = v6[264];
  v287 = *(v6 + 67);
  v292 = v6[272];
  v283 = *(v6 + 69);
  v288 = v6[280];
  v279 = *(v6 + 71);
  v286 = v6[288];
  v280 = v6[289];
  v276 = *(v6 + 38);
  v180 = *(v6 + 37);
  v184 = *(v6 + 39);
  v188 = *(v6 + 40);
  v192 = *(v6 + 41);
  v196 = *(v6 + 42);
  v216 = *(v6 + 43);
  v220 = *(v6 + 45);
  v226 = *(v6 + 44);
  v228 = *(v6 + 46);
  v222 = *(v6 + 47);
  HIDWORD(v224) = v6[392];
  v230 = *(v6 + 48);
  v232 = *(v6 + 50);
  v234 = *(v6 + 51);
  v236 = *(v6 + 52);
  v238 = *(v6 + 53);
  v240 = *(v6 + 54);
  v242 = *(v6 + 55);
  v251 = *(v6 + 56);
  v253 = *(v6 + 57);
  v262 = *(v6 + 58);
  v263 = *(v6 + 59);
  v264 = *(v6 + 60);
  v265 = v6[488];
  v268 = v6[489];
  memcpy(v344, v6 + 496, 0x7DuLL);
  if (v9 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v17 == 2 || ((v17 ^ v9) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v10 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v18 == 2 || ((v18 ^ v10) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v332)
  {
    if (!v20)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v330 == v19)
    {
      v24 = v20;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_48;
    }
  }

  if (v331)
  {
    if (!v21)
    {
      goto LABEL_48;
    }

    if (v328 != v22 || v331 != v21)
    {
      OUTLINED_FUNCTION_641();
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v21)
  {
    goto LABEL_48;
  }

  if (v329 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v23 == 2 || ((v23 ^ v329) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v327)
  {
    OUTLINED_FUNCTION_1071();
    if (!v326)
    {
      goto LABEL_48;
    }

    v29 = v26 == v28 && v27 == v326;
    if (!v29 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1071();
    if (v326)
    {
      goto LABEL_48;
    }
  }

  if (v22 == 1)
  {
    v30 = OUTLINED_FUNCTION_539();
    sub_24DDE2CD8(v30, v31, v9, 1);
    v32 = v325;
    if (v325 == 1)
    {
      sub_24DDE2CD8(v17, v323, v324, 1);
      v33 = OUTLINED_FUNCTION_539();
      sub_24DDE2CEC(v33, v34, v9, 1);
      goto LABEL_50;
    }

    v46 = OUTLINED_FUNCTION_1020();
    sub_24DDE2CD8(v46, v47, v48, v325);
LABEL_47:
    v49 = OUTLINED_FUNCTION_290();
    sub_24DDE2CEC(v49, v50, v51, v52);
    OUTLINED_FUNCTION_954();
    sub_24DDE2CEC(v53, v54, v55, v32);
    goto LABEL_48;
  }

  __src[0] = v18;
  __src[1] = v20;
  __src[2] = v9;
  __src[3] = v22;
  v32 = v325;
  if (v325 == 1)
  {
    v35 = OUTLINED_FUNCTION_290();
    sub_24DDE2CD8(v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_1020();
    sub_24DDE2CD8(v39, v40, v41, 1);
    v42 = OUTLINED_FUNCTION_290();
    sub_24DDE2CD8(v42, v43, v44, v45);

    goto LABEL_47;
  }

  v338[0] = v17;
  LOBYTE(v338[1]) = v323 & 1;
  v338[2] = v324;
  v338[3] = v325;
  v333 = static Components.Schemas.Profile_GetProfileInfo_ImageURL.== infix(_:_:)(__src, v338);
  v56 = OUTLINED_FUNCTION_290();
  sub_24DDE2CD8(v56, v57, v58, v59);
  v60 = OUTLINED_FUNCTION_822();
  sub_24DDE2CD8(v60, v61, v324, v325);
  v62 = OUTLINED_FUNCTION_290();
  sub_24DDE2CD8(v62, v63, v64, v65);

  v66 = OUTLINED_FUNCTION_290();
  sub_24DDE2CEC(v66, v67, v68, v69);
  if (!v333)
  {
    goto LABEL_48;
  }

LABEL_50:
  if (v322)
  {
    if (!v321)
    {
      goto LABEL_48;
    }

    v70 = v318 == v317 && v322 == v321;
    if (!v70 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v321)
  {
    goto LABEL_48;
  }

  if (v320 == 2)
  {
    if (v319 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v319 == 2 || ((v319 ^ v320) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v315 == 2)
  {
    if (v316 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v316 == 2 || ((v316 ^ v315) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v314 == 2)
  {
    if (v313 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v313 == 2 || ((v313 ^ v314) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v311)
  {
    if (!v312)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v71 = v312;
    if (v308 != v307)
    {
      v71 = 1;
    }

    if (v71)
    {
      goto LABEL_48;
    }
  }

  if (v310)
  {
    if (!v309)
    {
      goto LABEL_48;
    }

    v72 = v306 == v305 && v310 == v309;
    if (!v72 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v309)
  {
    goto LABEL_48;
  }

  v73 = v341[16];
  v74 = v341[17];
  OUTLINED_FUNCTION_1002(v336);
  v75 = __dst[0];
  v76 = __dst[1];
  memcpy(v335, &__dst[2], 0x49uLL);
  if (v74 == 1)
  {
    if (__dst[1] == 1)
    {
      __src[0] = v73;
      __src[1] = 1;
      OUTLINED_FUNCTION_940(__src);
      OUTLINED_FUNCTION_500();
      sub_24DDE73DC(v77);
      OUTLINED_FUNCTION_500();
      sub_24DDE73DC(v78);
      OUTLINED_FUNCTION_954();
      v81 = sub_24DDE8DAC(v79, v80);
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v92);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v93);
LABEL_95:
    __src[0] = v73;
    __src[1] = v74;
    memcpy(&__src[2], v336, 0x49uLL);
    __src[12] = v75;
    __src[13] = v76;
    memcpy(&__src[14], v335, 0x49uLL);
    v94 = &unk_27F1B2B50;
    v95 = __src;
    goto LABEL_96;
  }

  __src[0] = v73;
  __src[1] = v74;
  OUTLINED_FUNCTION_940(__src);
  memcpy(v338, __src, 0x59uLL);
  if (v76 == 1)
  {
    memcpy(v341, __src, 0x59uLL);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v89);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v90);
    OUTLINED_FUNCTION_377();
    sub_24DDE73DC(v91);
    sub_24DDE2054(v341);
    goto LABEL_95;
  }

  memcpy(&v341[2], &__dst[2], 0x49uLL);
  v341[0] = v75;
  v341[1] = v76;
  static Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.== infix(_:_:)(v338, v341);
  v97 = v96;
  memcpy(v337, v341, 0x59uLL);
  OUTLINED_FUNCTION_499();
  sub_24DDE73DC(v98);
  OUTLINED_FUNCTION_499();
  sub_24DDE73DC(v99);
  OUTLINED_FUNCTION_499();
  sub_24DDE73DC(v100);
  sub_24DDE2054(v337);
  memcpy(v339, v338, 0x59uLL);
  sub_24DDE2054(v339);
  v341[0] = v73;
  v341[1] = v74;
  memcpy(&v341[2], v336, 0x49uLL);
  OUTLINED_FUNCTION_592();
  v81 = sub_24DDE8DAC(v101, v102);
  if ((v97 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_98:
  if (v304)
  {
    if (!v303)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v103 = v303;
    if (v300 != v299)
    {
      v103 = 1;
    }

    if (v103)
    {
      goto LABEL_48;
    }
  }

  if (v301)
  {
    if (!v302)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v104 = v302;
    if (v297 != v296)
    {
      v104 = 1;
    }

    if (v104)
    {
      goto LABEL_48;
    }
  }

  if (v298)
  {
    if (!v295)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v105 = v295;
    if (v293 != v291)
    {
      v105 = 1;
    }

    if (v105)
    {
      goto LABEL_48;
    }
  }

  if (v294)
  {
    if (!v292)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v106 = v292;
    if (v289 != v287)
    {
      v106 = 1;
    }

    if (v106)
    {
      goto LABEL_48;
    }
  }

  if (v290)
  {
    if (!v288)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v107 = v288;
    if (v284 != v283)
    {
      v107 = 1;
    }

    if (v107)
    {
      goto LABEL_48;
    }
  }

  if (v285)
  {
    if (!v286)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v108 = v286;
    if (v281 != v279)
    {
      v108 = 1;
    }

    if (v108)
    {
      goto LABEL_48;
    }
  }

  if (v282 == 2)
  {
    if (v280 != 2)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v81 = 0;
    if (v280 == 2 || ((v280 ^ v282) & 1) != 0)
    {
      goto LABEL_48;
    }
  }

  if (v277)
  {
    if (!v276)
    {
      goto LABEL_48;
    }

    if (v200 != v180 || v277 != v276)
    {
      v81 = sub_24DE22CA0();
      if ((v81 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v276)
  {
    goto LABEL_48;
  }

  if (v278)
  {
    if (!v188)
    {
      goto LABEL_48;
    }

    if (v204 != v184 || v278 != v188)
    {
      v81 = sub_24DE22CA0();
      if ((v81 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v188)
  {
    goto LABEL_48;
  }

  if (v208)
  {
    if (!v196)
    {
      goto LABEL_48;
    }

    if (v212 != v192 || v208 != v196)
    {
      v81 = sub_24DE22CA0();
      if ((v81 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else if (v196)
  {
    goto LABEL_48;
  }

  if (v246 != 1)
  {
    __src[0] = v255;
    __src[1] = v246;
    __src[2] = v256;
    __src[3] = v257;
    __src[4] = v258;
    __src[5] = v259;
    if (v226 != 1)
    {
      v338[0] = v216;
      v338[1] = v226;
      v338[2] = v220;
      v338[3] = v228;
      v338[4] = v222;
      v338[5] = v230;
      v334 = static Components.Schemas.Profile_GetProfileInfo_PrivacySettings.== infix(_:_:)();
      sub_24DDE3490(v255, v246);
      v154 = OUTLINED_FUNCTION_557();
      sub_24DDE3490(v154, v155);
      OUTLINED_FUNCTION_708();
      OUTLINED_FUNCTION_1273();
      sub_24DDE3490(v156, v157);

      OUTLINED_FUNCTION_708();
      OUTLINED_FUNCTION_1273();
      sub_24DDE34E4(v158, v159);
      if ((v334 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_174;
    }

    v132 = sub_24DDE3490(v255, v246);
    OUTLINED_FUNCTION_1294(v132, v133, v134, v135, v136, v137, v138, v139, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216);
    OUTLINED_FUNCTION_503();
    OUTLINED_FUNCTION_595();
    sub_24DDE3490(v140, v141);

LABEL_172:
    v144 = sub_24DDE34E4(v255, v246);
    v152 = OUTLINED_FUNCTION_1253(v144, v145, v146, v147, v148, v149, v150, v151, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219);
    sub_24DDE34E4(v152, v153);
    goto LABEL_48;
  }

  v112 = OUTLINED_FUNCTION_1254(v81, v82, v83, v84, v85, v86, v87, v88, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v222, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v244, 1, v247, v249, v251, v253, v255);
  v114 = sub_24DDE3490(v112, v113);
  if (v227 != 1)
  {
    v142 = OUTLINED_FUNCTION_1253(v114, v115, v116, v117, v118, v119, v120, v121, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217);
    sub_24DDE3490(v142, v143);
    goto LABEL_172;
  }

  v122 = OUTLINED_FUNCTION_1294(v114, v115, v116, v117, v118, v119, v120, v121, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217);
  v130 = OUTLINED_FUNCTION_1254(v122, v123, v124, v125, v126, v127, v128, v129, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v221, v223, v225, 1, v229, v231, v233, v235, v237, v239, v241, v243, v245, v246, v248, v250, v252, v254, v255);
  sub_24DDE34E4(v130, v131);
LABEL_174:
  if (HIDWORD(v244) == 2)
  {
    if (HIDWORD(v224) != 2)
    {
      goto LABEL_48;
    }
  }

  else if (HIDWORD(v224) == 2 || ((HIDWORD(v224) ^ HIDWORD(v244)) & 1) != 0)
  {
    goto LABEL_48;
  }

  if (v247)
  {
    if (!v234)
    {
      goto LABEL_48;
    }

    v160 = v249 == v232 && v247 == v234;
    if (!v160 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v234)
  {
    goto LABEL_48;
  }

  if (v260)
  {
    if (!v238)
    {
      goto LABEL_48;
    }

    v161 = v261 == v236 && v260 == v238;
    if (!v161 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v238)
  {
    goto LABEL_48;
  }

  if (v266)
  {
    if (!v242)
    {
      goto LABEL_48;
    }

    v162 = v267 == v240 && v266 == v242;
    if (!v162 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v242)
  {
    goto LABEL_48;
  }

  if (v269)
  {
    if (!v253)
    {
      goto LABEL_48;
    }

    v163 = v270 == v251 && v269 == v253;
    if (!v163 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v253)
  {
    goto LABEL_48;
  }

  if (v271)
  {
    if (!v263)
    {
      goto LABEL_48;
    }

    v164 = v272 == v262 && v271 == v263;
    if (!v164 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v263)
  {
    goto LABEL_48;
  }

  if (v273)
  {
    if (!v265)
    {
      goto LABEL_48;
    }

    goto LABEL_230;
  }

  v165 = v265;
  if (v274 != v264)
  {
    v165 = 1;
  }

  if ((v165 & 1) == 0)
  {
LABEL_230:
    if (v275 == 2)
    {
      if (v268 != 2)
      {
        goto LABEL_48;
      }
    }

    else if (v268 == 2 || ((v268 ^ v275) & 1) != 0)
    {
      goto LABEL_48;
    }

    memcpy(__src, v342, 0x7DuLL);
    OUTLINED_FUNCTION_1059();
    memcpy(v166, v167, v168);
    memcpy(v341, v342, 0x7DuLL);
    if (sub_24DDE2D2C(v341) == 1)
    {
      memcpy(v338, &__src[16], 0x7DuLL);
      if (sub_24DDE2D2C(v338) == 1)
      {
        OUTLINED_FUNCTION_1170(v339);
        OUTLINED_FUNCTION_500();
        sub_24DDE73DC(v169);
        OUTLINED_FUNCTION_500();
        sub_24DDE73DC(v170);
        OUTLINED_FUNCTION_954();
        sub_24DDE8DAC(v171, v172);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v176);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v177);
    }

    else
    {
      OUTLINED_FUNCTION_1170(v339);
      memcpy(v338, &__src[16], 0x7DuLL);
      if (sub_24DDE2D2C(v338) != 1)
      {
        OUTLINED_FUNCTION_1134(v342);
        OUTLINED_FUNCTION_1134(v344);
        OUTLINED_FUNCTION_1134(v339);
        static Components.Schemas.ArtworkAvatar.== infix(_:_:)(__src, &__src[16]);
        memcpy(v335, &__src[16], 0x7DuLL);
        sub_24DDE2D50(v335);
        OUTLINED_FUNCTION_1170(v336);
        sub_24DDE2D50(v336);
        OUTLINED_FUNCTION_1170(v337);
        OUTLINED_FUNCTION_454();
        sub_24DDE8DAC(v178, v179);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_1170(v337);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v173);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v174);
      OUTLINED_FUNCTION_377();
      sub_24DDE73DC(v175);
      sub_24DDE2D50(v337);
    }

    memcpy(v338, __src, 0xFDuLL);
    v94 = &unk_27F1B2B58;
    v95 = v338;
LABEL_96:
    sub_24DDE8DAC(v95, v94);
  }

LABEL_48:
  OUTLINED_FUNCTION_653();
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2B60, &qword_24DE231F0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  v34 = *(v5 + 56);
  v35 = *(v5 + 64);
  v36 = *(v5 + 80);
  v37 = *(v5 + 72);
  OUTLINED_FUNCTION_1201();
  memcpy(v10, v11, v12);
  v33 = *(v5 + 256);
  v32 = *(v5 + 264);
  v23 = *(v5 + 272);
  v24 = *(v5 + 280);
  v25 = *(v5 + 288);
  v30 = *(v5 + 352);
  v31 = *(v5 + 344);
  v28 = *(v5 + 368);
  v29 = *(v5 + 360);
  v26 = *(v5 + 384);
  v27 = *(v5 + 376);
  OUTLINED_FUNCTION_1183();
  memcpy(v13, v14, v15);
  OUTLINED_FUNCTION_250(v8);
  sub_24DDE2D80();
  sub_24DE22D50();
  LOBYTE(v39[0]) = 0;
  sub_24DE22C00();
  if (v6)
  {
    v17 = OUTLINED_FUNCTION_557();
    v18(v17);
  }

  else
  {
    OUTLINED_FUNCTION_771(1);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_604();
    sub_24DE22C30();
    OUTLINED_FUNCTION_531(3);
    sub_24DE22BF0();
    OUTLINED_FUNCTION_771(4);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(5);
    sub_24DE22BF0();
    sub_24DDE2CD8(v34, v35, v37, v36);
    sub_24DDE2DD4();
    OUTLINED_FUNCTION_436();
    sub_24DE22C20();
    sub_24DDE2CEC(v34, v35, v37, v36);
    OUTLINED_FUNCTION_531(7);
    OUTLINED_FUNCTION_436();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_771(8);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_771(9);
    OUTLINED_FUNCTION_604();
    sub_24DE22C00();
    OUTLINED_FUNCTION_771(10);
    OUTLINED_FUNCTION_1274();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(11);
    OUTLINED_FUNCTION_253();
    sub_24DE22C40();
    OUTLINED_FUNCTION_531(12);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    memcpy(v41, v42, sizeof(v41));
    v40[95] = 13;
    sub_24DDE73DC(v42);
    sub_24DDE2E28();
    OUTLINED_FUNCTION_228();
    sub_24DE22C20();
    memcpy(v40, v41, 0x59uLL);
    sub_24DDE8DAC(v40, &unk_27F1B2B40);
    OUTLINED_FUNCTION_531(14);
    OUTLINED_FUNCTION_253();
    sub_24DE22C40();
    OUTLINED_FUNCTION_1055(v33);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v32);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v23);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v24);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_1055(v25);
    OUTLINED_FUNCTION_228();
    sub_24DE22C30();
    OUTLINED_FUNCTION_771(20);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(21);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(22);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(23);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    v39[0] = v31;
    v39[1] = v30;
    v39[2] = v29;
    v39[3] = v28;
    v39[4] = v27;
    v39[5] = v26;
    sub_24DDE3490(v31, v30);
    sub_24DDE2E7C();
    OUTLINED_FUNCTION_228();
    sub_24DE22C20();
    sub_24DDE34E4(v31, v30);
    OUTLINED_FUNCTION_771(25);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_531(26);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(27);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(28);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(29);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(30);
    OUTLINED_FUNCTION_253();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_531(31);
    OUTLINED_FUNCTION_253();
    sub_24DE22C40();
    OUTLINED_FUNCTION_771(32);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_1059();
    memcpy(v20, v21, v22);
    v38[127] = 33;
    sub_24DDE73DC(&v43);
    sub_24DDE2ED0();
    OUTLINED_FUNCTION_228();
    sub_24DE22C20();
    memcpy(v38, v39, 0x7DuLL);
    sub_24DDE8DAC(v38, &unk_27F1B2B48);
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    OUTLINED_FUNCTION_228();
    sub_24DE22C00();
    v19 = OUTLINED_FUNCTION_379();
    v16(v19);
  }

  OUTLINED_FUNCTION_644();
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_659();
  v7 = v6;
  v9 = v8;
  v10 = *v6;
  v37 = v6[1];
  v38 = v6[8];
  v39 = *(v6 + 3);
  v40 = v6[32];
  v30 = *(v6 + 7);
  v41 = *(v6 + 6);
  v42 = *(v6 + 10);
  v43 = *(v6 + 12);
  v44 = v6[104];
  v45 = v6[105];
  v46 = v6[106];
  v31 = *(v6 + 8);
  v32 = *(v6 + 14);
  v47 = v6[120];
  v48 = *(v6 + 17);
  v11 = *(v6 + 18);
  v12 = *(v6 + 19);
  v33 = v11;
  v34 = *(v7 + 30);
  v49 = v7[248];
  v50 = v7[256];
  v51 = v7[264];
  v52 = v7[272];
  v53 = v7[280];
  v54 = v7[288];
  v55 = v7[289];
  v56 = *(v7 + 38);
  v57 = *(v7 + 40);
  v58 = *(v7 + 42);
  v13 = *(v7 + 44);
  v35 = *(v7 + 46);
  v14 = *(v7 + 48);
  v59 = v7[392];
  v15 = *(v7 + 51);
  v16 = *(v7 + 53);
  v64 = *(v7 + 55);
  v60 = *(v7 + 57);
  v17 = *(v7 + 59);
  v36 = *(v7 + 60);
  v61 = v7[488];
  v18 = v7[489];
  memcpy(v72, v7 + 496, 0x7DuLL);
  v62 = v7[621];
  v63 = v7[622];
  if (v10 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v37 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v38)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v39)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v40 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v41)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v42 != 1)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    if (v31)
    {
      OUTLINED_FUNCTION_795();
      if (v42)
      {
LABEL_19:
        OUTLINED_FUNCTION_371();
        sub_24DE22CE0();
        OUTLINED_FUNCTION_826();
        sub_24DE22AD0();
        goto LABEL_22;
      }
    }

    else
    {
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      MEMORY[0x253039750](v30);
      if (v42)
      {
        goto LABEL_19;
      }
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_22:
  if (v43)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v44 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v45 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v46 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v47)
  {
    OUTLINED_FUNCTION_795();
    if (v48)
    {
LABEL_33:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_36;
    }
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v32);
    if (v48)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_36:
  if (v12 == 1)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    memcpy(&__src[2], v7 + 160, 0x49uLL);
    __src[0] = v33;
    __src[1] = v12;
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    v68 = v33;
    v69 = v12;
    memcpy(v70, v7 + 160, 0x49uLL);
    sub_24DDE2084(&v68, __dst);
    Components.Schemas.Com_apple_gk_data_jackson_GameDescriptor.hash(into:)(v9);
    memcpy(__dst, __src, 0x59uLL);
    sub_24DDE2054(__dst);
  }

  if (v49)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v34);
  }

  if (v50)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v51)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v52)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v53)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v54)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22CF0();
  }

  if (v55 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v56)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v57)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v58)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v13 == 1)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  if (v13)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1081();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (v35)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1084();
    sub_24DE22AD0();
  }

  else
  {
    OUTLINED_FUNCTION_795();
  }

  if (!v14)
  {
LABEL_77:
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1083();
    sub_24DE22AD0();
  }

  if (v59 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v15)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v16)
    {
LABEL_82:
      OUTLINED_FUNCTION_371();
      sub_24DE22CE0();
      sub_24DE22AD0();
      goto LABEL_85;
    }
  }

  else
  {
    OUTLINED_FUNCTION_795();
    if (v16)
    {
      goto LABEL_82;
    }
  }

  OUTLINED_FUNCTION_795();
LABEL_85:
  if (v64)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    if (v60)
    {
      goto LABEL_87;
    }

LABEL_90:
    OUTLINED_FUNCTION_795();
    if (v17)
    {
      goto LABEL_88;
    }

    goto LABEL_91;
  }

  OUTLINED_FUNCTION_795();
  if (!v60)
  {
    goto LABEL_90;
  }

LABEL_87:
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  sub_24DE22AD0();
  if (v17)
  {
LABEL_88:
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    sub_24DE22AD0();
    goto LABEL_92;
  }

LABEL_91:
  OUTLINED_FUNCTION_795();
LABEL_92:
  if (v61)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v36);
  }

  if (v18 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_1059();
  memcpy(v19, v20, v21);
  if (sub_24DDE2D2C(__dst) == 1)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_1059();
  memcpy(v22, v23, v24);
  v25 = v68;
  v26 = v69;
  OUTLINED_FUNCTION_371();
  sub_24DE22CE0();
  if (v26)
  {
    OUTLINED_FUNCTION_795();
  }

  else
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    MEMORY[0x253039750](v25);
  }

  if (v70[2] == 1)
  {
LABEL_102:
    OUTLINED_FUNCTION_795();
  }

  else
  {
    memcpy(v66, v70, sizeof(v66));
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
    OUTLINED_FUNCTION_1059();
    memcpy(v27, v28, v29);
    sub_24DDE2F24(__src, v65);
    sub_24DDE2F24(&v68, v65);
    Components.Schemas.Artwork.hash(into:)(v9);
    memcpy(v65, v66, 0x6DuLL);
    sub_24DDE22DC(v65);
    sub_24DDE8DAC(v72, &unk_27F1B2B48);
  }

  if (v62 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  if (v63 != 2)
  {
    OUTLINED_FUNCTION_371();
    sub_24DE22CE0();
  }

  sub_24DE22CE0();
  OUTLINED_FUNCTION_653();
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_796(a1);
  Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetProfileInfo_ProfileInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_992();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2B90, &qword_24DE231F8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_140();
  v265 = 1;
  v260 = 1;
  v257 = 1;
  v254 = 1;
  v251 = 1;
  v248 = 1;
  v245 = 1;
  v242 = 1;
  v238 = 1;
  sub_24DDE2D00(v266);
  memcpy(&v237[6], v266, 0x7DuLL);
  v10 = v5[3];
  v140 = v5;
  OUTLINED_FUNCTION_250(v5);
  sub_24DDE2D80();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_1097(v11);
  if (v6)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_984();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_520(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    LOWORD(v165) = 514;
    HIDWORD(v165) = v138;
    v167 = v134;
    v168 = v136;
    LOBYTE(v169) = 2;
    OUTLINED_FUNCTION_821();
    v171 = v8;
    v172 = v125;
    v173 = v127;
    v174 = v10;
    v175 = v7;
    OUTLINED_FUNCTION_1223();
    OUTLINED_FUNCTION_1048();
    v180 = 1;
    OUTLINED_FUNCTION_590();
    v182 = v143;
    v186 = v141;
    v190 = 0;
    *(&v166 + 1) = *v264;
    *(&v169 + 1) = *v263;
    v176 = v261;
    v179[0] = *v259;
    *&v181[3] = *&v258[3];
    *v181 = *v258;
    v184 = v255;
    v188 = v252;
    v192 = v249;
    v196 = v246;
    LOBYTE(v166) = v265;
    HIDWORD(v166) = *&v264[3];
    HIDWORD(v169) = *&v263[3];
    v177 = v262;
    v178 = v260;
    *(v179 + 3) = *&v259[3];
    v183 = v257;
    v185 = v256;
    v187 = v254;
    v189 = v253;
    v191 = v251;
    v193 = v250;
    v194 = v93;
    v195 = v248;
    v197 = v247;
    v198 = v79;
    v199 = v245;
    v200 = v243;
    v201 = v244;
    v202 = v75;
    v203 = v242;
    v204 = v56;
    v205 = v240;
    v206 = v241;
    v207 = v81;
    v208 = v87;
    v209 = v83;
    v210 = v91;
    v211 = v85;
    v212 = v95;
    v213 = v77;
    v214 = v62;
    v215 = v89;
    v216 = v97;
    v217 = v101;
    v218 = v107;
    v219 = v54;
    *v220 = *v239;
    *&v220[3] = *&v239[3];
    v221 = v99;
    v222 = v105;
    v223 = v103;
    v224 = v111;
    v225 = v109;
    v226 = v115;
    v227 = v113;
    v228 = v117;
    v229 = v119;
    v230 = v121;
    v231 = v123;
    v232 = v238;
    v233 = v58;
    memcpy(v234, v237, sizeof(v234));
    v235 = v60;
    v39 = 2;
  }

  else
  {
    LOBYTE(v165) = 0;
    OUTLINED_FUNCTION_417();
    v53 = sub_24DE22B50();
    OUTLINED_FUNCTION_38(1);
    v52 = sub_24DE22B50();
    OUTLINED_FUNCTION_38(2);
    v13 = sub_24DE22B80();
    v139 = v13;
    v265 = BYTE4(v13) & 1;
    OUTLINED_FUNCTION_38(3);
    v135 = sub_24DE22B40();
    v137 = v14;
    OUTLINED_FUNCTION_38(4);
    v51 = sub_24DE22B50();
    OUTLINED_FUNCTION_38(5);
    v132 = sub_24DE22B40();
    v133 = v15;
    sub_24DDE2F8C();
    OUTLINED_FUNCTION_175();
    sub_24DE22B70();
    v129 = v165;
    v50 = v168;
    v16 = OUTLINED_FUNCTION_232();
    sub_24DDE2CEC(v16, v17, v18, 1);
    OUTLINED_FUNCTION_38(7);
    v130 = v166;
    v131 = v167;
    v126 = sub_24DE22B40();
    v128 = v19;
    OUTLINED_FUNCTION_38(8);
    v49 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(9);
    v48 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(10);
    v147 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(11);
    v146 = sub_24DE22B90();
    v260 = v20 & 1;
    OUTLINED_FUNCTION_26(12);
    sub_24DE22B40();
    v145 = v21;
    v153[95] = 13;
    sub_24DDE2FE0();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    v47 = v154;
    v72 = v156;
    v73 = v155;
    v70 = v158;
    v71 = v157;
    v68 = v160;
    v69 = v159;
    v66 = v162;
    v67 = v161;
    v65 = v163;
    v64 = v164;
    *v153 = xmmword_24DE22F30;
    memset(&v153[16], 0, 73);
    sub_24DDE8DAC(v153, &unk_27F1B2B40);
    OUTLINED_FUNCTION_26(14);
    v144 = sub_24DE22B90();
    v257 = v22 & 1;
    OUTLINED_FUNCTION_26(15);
    v142 = sub_24DE22B80();
    v254 = BYTE4(v142) & 1;
    OUTLINED_FUNCTION_26(16);
    v74 = sub_24DE22B80();
    v251 = BYTE4(v74) & 1;
    OUTLINED_FUNCTION_26(17);
    v94 = sub_24DE22B80();
    v248 = BYTE4(v94) & 1;
    OUTLINED_FUNCTION_26(18);
    v80 = sub_24DE22B80();
    v245 = BYTE4(v80) & 1;
    OUTLINED_FUNCTION_26(19);
    v76 = sub_24DE22B80();
    v242 = BYTE4(v76) & 1;
    OUTLINED_FUNCTION_26(20);
    v57 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(21);
    v82 = sub_24DE22B40();
    v88 = v23;
    OUTLINED_FUNCTION_26(22);
    v84 = sub_24DE22B40();
    v92 = v24;
    OUTLINED_FUNCTION_26(23);
    v86 = sub_24DE22B40();
    v96 = v25;
    v148[0] = 24;
    sub_24DDE3034();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    v78 = v165;
    v63 = v166;
    v90 = v167;
    v98 = v168;
    v102 = v169;
    v108 = v170;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_1042();
    sub_24DDE34E4(v26, v27);
    OUTLINED_FUNCTION_26(25);
    v55 = sub_24DE22B50();
    OUTLINED_FUNCTION_26(26);
    v100 = sub_24DE22B40();
    v106 = v28;
    OUTLINED_FUNCTION_26(27);
    v104 = sub_24DE22B40();
    v112 = v29;
    OUTLINED_FUNCTION_26(28);
    v110 = sub_24DE22B40();
    v116 = v30;
    OUTLINED_FUNCTION_26(29);
    v114 = sub_24DE22B40();
    v118 = v31;
    OUTLINED_FUNCTION_26(30);
    v120 = sub_24DE22B40();
    v122 = v32;
    OUTLINED_FUNCTION_26(31);
    v124 = sub_24DE22B90();
    v238 = v33 & 1;
    OUTLINED_FUNCTION_26(32);
    v59 = sub_24DE22B50();
    v151[127] = 33;
    sub_24DDE3088();
    OUTLINED_FUNCTION_227();
    sub_24DE22B70();
    memcpy(v150, v152, sizeof(v150));
    memcpy(v151, &v237[6], 0x7DuLL);
    sub_24DDE8DAC(v151, &unk_27F1B2B48);
    memcpy(&v237[6], v150, 0x7DuLL);
    OUTLINED_FUNCTION_26(34);
    v61 = sub_24DE22B50();
    v149 = 35;
    OUTLINED_FUNCTION_417();
    v34 = sub_24DE22B50();
    v35 = OUTLINED_FUNCTION_118();
    v36(v35);
    v148[0] = v53;
    v148[1] = v52;
    *&v148[4] = v139;
    v44 = v265;
    v148[8] = v265;
    *&v148[9] = *v264;
    *&v148[12] = *&v264[3];
    *&v148[16] = v135;
    *&v148[24] = v137;
    v148[32] = v51;
    *&v148[33] = *v263;
    *&v148[36] = *&v263[3];
    *&v148[40] = v132;
    *&v148[48] = v133;
    *&v148[56] = v129;
    *&v148[64] = v130;
    *&v148[72] = v131;
    *&v148[80] = v50;
    *&v148[88] = v126;
    *&v148[96] = v128;
    v148[104] = v49;
    v148[105] = v48;
    v148[106] = v147;
    *&v148[107] = v261;
    v148[111] = v262;
    *&v148[112] = v146;
    v43 = v260;
    v148[120] = v260;
    *&v148[121] = *v259;
    *&v148[124] = *&v259[3];
    OUTLINED_FUNCTION_1209(v145);
    *&v148[152] = v47;
    *&v148[160] = v73;
    *&v148[168] = v72;
    *&v148[176] = v71;
    *&v148[184] = v70;
    *&v148[192] = v69;
    *&v148[200] = v68;
    *&v148[208] = v67;
    *&v148[216] = v66;
    *&v148[224] = v65;
    v148[232] = v64;
    *&v148[236] = *&v258[3];
    *&v148[233] = *v258;
    *&v148[240] = v144;
    v42 = v257;
    v148[248] = v257;
    v148[251] = v256;
    *&v148[249] = v255;
    *&v148[252] = v142;
    v41 = v254;
    v148[256] = v254;
    *&v148[257] = v252;
    v148[259] = v253;
    *&v148[260] = v74;
    v40 = v251;
    v148[264] = v251;
    *&v148[265] = v249;
    v148[267] = v250;
    *&v148[268] = v94;
    v37 = v248;
    v148[272] = v248;
    *&v148[273] = v246;
    v148[275] = v247;
    *&v148[276] = v80;
    v38 = v245;
    v148[280] = v245;
    *&v148[281] = v243;
    v148[283] = v244;
    *&v148[284] = v76;
    *&v148[290] = v240;
    *&v148[393] = *v239;
    v45 = v242;
    v148[288] = v242;
    v148[289] = v57;
    *&v148[294] = v241;
    *&v148[296] = v82;
    *&v148[304] = v88;
    *&v148[312] = v84;
    *&v148[320] = v92;
    *&v148[328] = v86;
    *&v148[336] = v96;
    *&v148[344] = v78;
    *&v148[352] = v63;
    *&v148[360] = v90;
    *&v148[368] = v98;
    *&v148[376] = v102;
    *&v148[384] = v108;
    v148[392] = v55;
    *&v148[396] = *&v239[3];
    *&v148[400] = v100;
    *&v148[408] = v106;
    *&v148[416] = v104;
    *&v148[424] = v112;
    *&v148[432] = v110;
    *&v148[440] = v116;
    *&v148[448] = v114;
    *&v148[456] = v118;
    *&v148[464] = v120;
    *&v148[472] = v122;
    *&v148[480] = v124;
    v46 = v238;
    v148[488] = v238;
    v148[489] = v59;
    memcpy(&v148[490], v237, 0x83uLL);
    v148[621] = v61;
    v148[622] = v34;
    memcpy(v8, v148, 0x26FuLL);
    sub_24DDE30DC(v148, &v165);
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    LOBYTE(v165) = v53;
    BYTE1(v165) = v52;
    HIDWORD(v165) = v139;
    LOBYTE(v166) = v44;
    v167 = v135;
    v168 = v137;
    LOBYTE(v169) = v51;
    OUTLINED_FUNCTION_821();
    v171 = v50;
    v172 = v126;
    v173 = v128;
    v174 = v49;
    v175 = v48;
    OUTLINED_FUNCTION_1223();
    v178 = v43;
    OUTLINED_FUNCTION_1048();
    v180 = v47;
    OUTLINED_FUNCTION_590();
    v182 = v144;
    v183 = v42;
    v186 = v142;
    v187 = v41;
    v190 = v74;
    v191 = v40;
    v194 = v94;
    v195 = v37;
    v198 = v80;
    v199 = v38;
    v202 = v76;
    *(&v166 + 1) = *v264;
    *(&v169 + 1) = *v263;
    HIDWORD(v166) = *&v264[3];
    HIDWORD(v169) = *&v263[3];
    v176 = v261;
    v177 = v262;
    v179[0] = *v259;
    *(v179 + 3) = *&v259[3];
    *&v181[3] = *&v258[3];
    *v181 = *v258;
    v185 = v256;
    v184 = v255;
    v188 = v252;
    v189 = v253;
    v192 = v249;
    v193 = v250;
    v196 = v246;
    v197 = v247;
    v200 = v243;
    v201 = v244;
    v203 = v45;
    v204 = v57;
    v205 = v240;
    v206 = v241;
    v207 = v82;
    v208 = v88;
    v209 = v84;
    v210 = v92;
    v211 = v86;
    v212 = v96;
    v213 = v78;
    v214 = v63;
    v215 = v90;
    v216 = v98;
    v217 = v102;
    v218 = v108;
    v219 = v55;
    *v220 = *v239;
    *&v220[3] = *&v239[3];
    v221 = v100;
    v222 = v106;
    v223 = v104;
    v224 = v112;
    v225 = v110;
    v226 = v116;
    v227 = v114;
    v228 = v118;
    v229 = v120;
    v230 = v122;
    v231 = v124;
    v232 = v46;
    v233 = v59;
    memcpy(v234, v237, sizeof(v234));
    v235 = v61;
    v39 = v34;
  }

  v236 = v39;
  sub_24DDE2F5C(&v165);
  OUTLINED_FUNCTION_869();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD9680C(uint64_t a1)
{
  sub_24DE22CC0();
  Components.Schemas.Profile_GetProfileInfo_ProfileInfo.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_24DE22D10();
}

GameCenterServerClient::Components::Schemas::SetProfileSettings_PrivacySettings::CodingKeys_optional __swiftcall Components.Schemas.SetProfileSettings_PrivacySettings.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_765();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_24DD968F8()
{
  sub_24DDE3114();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD96930()
{
  sub_24DDE3114();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void _s22GameCenterServerClient10ComponentsO7SchemasO011Profile_GetG20Info_PrivacySettingsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1013();
  v3 = v2[2];
  v5 = v2[3];
  v4 = v2[4];
  v6 = v2[5];
  v8 = v7[1];
  v9 = v7[2];
  v11 = v7[3];
  v10 = v7[4];
  v12 = v7[5];
  if (v2[1])
  {
    if (!v8)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_360(v2);
    v15 = v15 && v13 == v14;
    if (!v15 && (sub_24DE22CA0() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v8)
  {
    goto LABEL_26;
  }

  if (v5)
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    if (v3 != v9 || v5 != v11)
    {
      OUTLINED_FUNCTION_503();
      OUTLINED_FUNCTION_809();
      if ((sub_24DE22CA0() & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_26;
  }

  if (v6 && v12 && (v4 != v10 || v6 != v12))
  {
    OUTLINED_FUNCTION_369();
  }

LABEL_26:
  OUTLINED_FUNCTION_999();
}

void sub_24DD96A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  v16 = v6;
  v8 = v7;
  v10 = OUTLINED_FUNCTION_632(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_100();
  v13 = OUTLINED_FUNCTION_301(v8);
  v16(v13);
  OUTLINED_FUNCTION_675();
  sub_24DE22D50();
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_819();
  sub_24DE22BF0();
  if (!v5)
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_393();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
  }

  v14 = OUTLINED_FUNCTION_180();
  v15(v14);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

void _s22GameCenterServerClient10ComponentsO7SchemasO011Profile_GetG20Info_PrivacySettingsV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  OUTLINED_FUNCTION_1013();
  OUTLINED_FUNCTION_438();
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_24DE22CE0();
    OUTLINED_FUNCTION_464();
    sub_24DE22AD0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24DE22CE0();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_24DE22CE0();
    OUTLINED_FUNCTION_999();
    return;
  }

  sub_24DE22CE0();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_406();
  sub_24DE22AD0();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_24DE22CE0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_999();

  sub_24DE22AD0();
}

void _s22GameCenterServerClient10ComponentsO7SchemasO011Profile_GetG20Info_PrivacySettingsV9hashValueSivg_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_1161();
  v29 = v28[1];
  v30 = v28[3];
  v31 = v28[5];
  OUTLINED_FUNCTION_796(v32);
  sub_24DE22CE0();
  if (v29)
  {
    OUTLINED_FUNCTION_495();
    sub_24DE22AD0();
  }

  sub_24DE22CE0();
  if (v30)
  {
    OUTLINED_FUNCTION_519();
    sub_24DE22AD0();
  }

  sub_24DE22CE0();
  if (v31)
  {
    OUTLINED_FUNCTION_409();
    sub_24DE22AD0();
  }

  sub_24DE22D10();
  OUTLINED_FUNCTION_1159();
}

void sub_24DD96D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_645();
  v21 = v20;
  v23 = v22;
  v43 = v24;
  v26 = OUTLINED_FUNCTION_632(v22, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_140();
  v29 = OUTLINED_FUNCTION_255(v23);
  v21(v29);
  OUTLINED_FUNCTION_1222();
  OUTLINED_FUNCTION_507();
  sub_24DE22D30();
  if (v19)
  {
    OUTLINED_FUNCTION_875();
  }

  else
  {
    OUTLINED_FUNCTION_578();
    OUTLINED_FUNCTION_365();
    v30 = sub_24DE22B40();
    v32 = v31;
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_365();
    v33 = sub_24DE22B40();
    v35 = v34;
    v42 = v33;
    OUTLINED_FUNCTION_589();
    OUTLINED_FUNCTION_365();
    v36 = sub_24DE22B40();
    v38 = v37;
    v41 = v36;
    v39 = OUTLINED_FUNCTION_380();
    v40(v39);
    *v43 = v30;
    v43[1] = v32;
    v43[2] = v42;
    v43[3] = v35;
    v43[4] = v41;
    v43[5] = v38;

    OUTLINED_FUNCTION_321();
  }

  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD96F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_937();
  v5 = sub_24DE22CC0();
  v13 = OUTLINED_FUNCTION_856(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_24DE22D10();
}

double _s22GameCenterServerClient10ComponentsO7SchemasO010Friend_GetG23PlayerIdsYukon_ResponseV5alertAE31Com_apple_gk_data_jackson_AlertVSgvs_0()
{
  v0 = OUTLINED_FUNCTION_513();
  sub_24DD763E4(v0, v1, v2, v3);
  *&result = OUTLINED_FUNCTION_219().n128_u64[0];
  return result;
}

__n128 _s22GameCenterServerClient10ComponentsO7SchemasO010Friend_GetG23PlayerIdsYukon_ResponseV6status7message5alert7resultsAGs5Int32VSg_SSSgAE31Com_apple_gk_data_jackson_AlertVSgSayAE0g1_hgijk1_G5EntryVGSgtcfC_0@<Q0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  OUTLINED_FUNCTION_917(a4, a3);
  *(a3 + 4) = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  v10 = OUTLINED_FUNCTION_33();
  sub_24DD763E4(v10, v11, v12, v13);
  result = *a1;
  *(a3 + 40) = *(a1 + 16);
  *(a3 + 24) = result;
  *(a3 + 56) = a2;
  return result;
}

GameCenterServerClient::Components::Schemas::Profile_GetSuggestedPlayerNickname_Response::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetSuggestedPlayerNickname_Response.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Profile_GetSuggestedPlayerNickname_Response.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = 0x6974736567677573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD9721C@<X0>(uint64_t *a1@<X8>)
{
  result = Components.Schemas.Profile_GetSuggestedPlayerNickname_Response.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD9724C()
{
  sub_24DDE3168();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_24DD97284()
{
  sub_24DDE3168();
  v0 = OUTLINED_FUNCTION_374();

  return MEMORY[0x2821FE720](v0);
}

void static Components.Schemas.Profile_GetSuggestedPlayerNickname_Response.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_597();
  OUTLINED_FUNCTION_267(v2);
  v4 = *(v3 + 32);
  v5 = *(v3 + 56);
  OUTLINED_FUNCTION_1282();
  v12 = *(v11 + 32);
  v13 = *(v11 + 56);
  if (v14)
  {
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (v15)
    {
      goto LABEL_21;
    }
  }

  if (!v7)
  {
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_14:
    if (v4 == 1)
    {
      v17 = OUTLINED_FUNCTION_176();
      sub_24DD7639C(v17, v18, v19, v20);
      if (v12 == 1)
      {
        OUTLINED_FUNCTION_1025();
        sub_24DD7639C(v21, v22, v23, v24);
        v25 = OUTLINED_FUNCTION_176();
        sub_24DD763E4(v25, v26, v27, v28);
LABEL_23:
        if (v5 && v13)
        {
          v69 = OUTLINED_FUNCTION_708();
          sub_24DD85994(v69, v70);
        }

        goto LABEL_21;
      }

      OUTLINED_FUNCTION_557();
      OUTLINED_FUNCTION_1025();
      sub_24DD7639C(v41, v42, v43, v44);
    }

    else
    {
      if (v12 != 1)
      {
        v71 = static Components.Schemas.Friend_GetFriendPlayerIdsYukon_Request.== infix(_:_:)();
        v53 = OUTLINED_FUNCTION_94();
        sub_24DD7639C(v53, v54, v55, v56);
        OUTLINED_FUNCTION_557();
        OUTLINED_FUNCTION_1025();
        sub_24DD7639C(v57, v58, v59, v60);
        v61 = OUTLINED_FUNCTION_94();
        sub_24DD7639C(v61, v62, v63, v64);

        v65 = OUTLINED_FUNCTION_94();
        sub_24DD763E4(v65, v66, v67, v68);
        if ((v71 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v29 = OUTLINED_FUNCTION_94();
      sub_24DD7639C(v29, v30, v31, v32);
      OUTLINED_FUNCTION_1025();
      sub_24DD7639C(v33, v34, v35, v36);
      v37 = OUTLINED_FUNCTION_94();
      sub_24DD7639C(v37, v38, v39, v40);
    }

    v45 = OUTLINED_FUNCTION_94();
    sub_24DD763E4(v45, v46, v47, v48);
    OUTLINED_FUNCTION_557();
    OUTLINED_FUNCTION_1025();
    sub_24DD763E4(v49, v50, v51, v52);
    goto LABEL_21;
  }

  if (v9)
  {
    v16 = v6 == v8 && v7 == v9;
    if (v16 || (sub_24DE22CA0() & 1) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_586();
}

void Components.Schemas.Profile_GetSuggestedPlayerNickname_Response.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2BD0, &qword_24DE23210);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_111();
  sub_24DDE3168();
  OUTLINED_FUNCTION_314();
  sub_24DE22D50();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_488();
  sub_24DE22C30();
  if (!v9)
  {
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_135();
    sub_24DE22BF0();
    OUTLINED_FUNCTION_141();
    sub_24DD87138();
    OUTLINED_FUNCTION_110();
    sub_24DE22C20();
    OUTLINED_FUNCTION_555();
    OUTLINED_FUNCTION_292();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_4();
    sub_24DDE2110(v6);
    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_190();
    sub_24DE22C20();
  }

  v7 = OUTLINED_FUNCTION_180();
  v8(v7);
  OUTLINED_FUNCTION_403();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD97610(uint64_t a1)
{
  OUTLINED_FUNCTION_588(a1);
  v1(v3);
  return sub_24DE22D10();
}

void Components.Schemas.Profile_GetSuggestedPlayerNickname_Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2BE0, &qword_24DE23218);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_373();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_168();
  sub_24DDE3168();
  OUTLINED_FUNCTION_233();
  sub_24DE22D30();
  if (v6)
  {
    OUTLINED_FUNCTION_75();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_93();
    v8 = sub_24DE22B80();
    OUTLINED_FUNCTION_212(v8);
    v21[0] = v9;
    OUTLINED_FUNCTION_93();
    v10 = sub_24DE22B40();
    OUTLINED_FUNCTION_776(v10, v11);
    OUTLINED_FUNCTION_224();
    sub_24DE22B70();
    OUTLINED_FUNCTION_824();
    v12 = OUTLINED_FUNCTION_33();
    sub_24DD763E4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B2970, &qword_24DE230E0);
    OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_3();
    sub_24DDE2110(v16);
    OUTLINED_FUNCTION_144();
    v17 = OUTLINED_FUNCTION_124();
    v18(v17);
    v19 = OUTLINED_FUNCTION_14();
    sub_24DDE31EC(v19, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_40();
  }

  sub_24DDE31BC(v21);
  OUTLINED_FUNCTION_450();
  OUTLINED_FUNCTION_644();
}

uint64_t sub_24DD978B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_855(a1, a2);
  v2(v4);
  return sub_24DE22D10();
}

GameCenterServerClient::Components::Schemas::Profile_GetProfileInfo_ResponseContent::CodingKeys_optional __swiftcall Components.Schemas.Profile_GetProfileInfo_ResponseContent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_89();
  sub_24DE22B30();
  OUTLINED_FUNCTION_798();
  OUTLINED_FUNCTION_636();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Components.Schemas.Profile_GetProfileInfo_ResponseContent.CodingKeys.stringValue.getter()
{
  result = 0x737574617473;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_32();
      break;
    case 3:
      result = 0x2D656C69666F7270;
      break;
    default:
      return result;
  }

  return result;
}