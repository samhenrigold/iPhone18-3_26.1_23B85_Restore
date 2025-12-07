uint64_t sub_1C0591270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000025;
  v3 = "common_WorkoutGoal_RingClosed";
  if (a1 == 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0xD000000000000025;
  }

  if (a1 == 4)
  {
    v5 = "ion_IndirectDismissal";
  }

  else
  {
    v5 = "common_Interjection_Ignore";
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000025;
  }

  else
  {
    v6 = v4;
  }

  if (a1 == 3)
  {
    v7 = "ion_DirectDismissal";
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v8 = 0xD00000000000001DLL;
  }

  else
  {
    v8 = 0xD000000000000023;
  }

  if (a1 == 1)
  {
    v9 = "common_Interjection_ThankYou";
  }

  else
  {
    v9 = "common_Interjection_Attention";
  }

  if (!a1)
  {
    v8 = 0xD00000000000001CLL;
    v9 = "common_WorkoutGoal_RingClosed";
  }

  v10 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "ion_DirectDismissal";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001ALL;
      v3 = "ion_IndirectDismissal";
    }

    else
    {
      v3 = "common_Interjection_Ignore";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001DLL;
      v3 = "common_Interjection_ThankYou";
    }

    else
    {
      v2 = 0xD000000000000023;
      v3 = "common_Interjection_Attention";
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C05913DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "common_SummaryMode_Entirety";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "al_ExerciseRingClosed";
      v4 = 0xD000000000000021;
    }

    else
    {
      v5 = "al_MoveRingClosed";
      v4 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (v3)
    {
      v5 = "common_WorkoutGoal_Open";
    }

    else
    {
      v5 = "common_SummaryMode_Entirety";
    }
  }

  if (a2 > 1u)
  {
    v2 = "al_ExerciseRingClosed";
    v6 = "al_MoveRingClosed";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v6 = "common_WorkoutGoal_Open";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000025;
    }

    else
    {
      v8 = 0xD000000000000017;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C0591500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "operator_increasing";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "common_MessageMode_Text";
    }

    else
    {
      v5 = "common_MessageMode_Audio";
    }

    v4 = 0xD000000000000018;
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (v3)
    {
      v5 = "common_MessageMode_Video";
    }

    else
    {
      v5 = "operator_increasing";
    }
  }

  v6 = "common_MessageMode_Text";
  if (a2 != 2)
  {
    v6 = "common_MessageMode_Audio";
  }

  v7 = 0xD000000000000017;
  if (a2)
  {
    v2 = "common_MessageMode_Video";
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (a2 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C0591608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "common_Politeness_Polite";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "common_Quantifier_Less";
    v12 = 0xD000000000000015;
    if (a1 != 6)
    {
      v12 = 0xD000000000000016;
      v11 = "common_Quantifier_All";
    }

    v13 = "common_Quantifier_Multiple";
    v14 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v14 = 0xD000000000000016;
      v13 = "common_Quantifier_Remainder";
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
    v5 = "common_Quantifier_Any";
    v6 = 0xD000000000000018;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001ALL;
      v5 = "common_Quantifier_Single";
    }

    v7 = "common_Quantifier_None";
    v8 = 0xD000000000000015;
    if (!a1)
    {
      v8 = 0xD000000000000016;
      v7 = "common_Politeness_Polite";
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = "common_Quantifier_All";
        goto LABEL_33;
      }

      v16 = "common_Quantifier_More";
    }

    else
    {
      if (a2 == 4)
      {
        v3 = "common_Quantifier_Multiple";
        v2 = 0xD00000000000001BLL;
        goto LABEL_38;
      }

      v16 = "common_Quantifier_Less";
    }

    v3 = v16 - 32;
    goto LABEL_38;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "common_Quantifier_Any";
      v2 = 0xD000000000000018;
    }

    else
    {
      v3 = "common_Quantifier_Single";
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2)
  {
    v15 = "common_Quantifier_Any";
LABEL_33:
    v3 = v15 - 32;
    v2 = 0xD000000000000015;
  }

LABEL_38:
  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1C095DF3C();
  }

  return v17 & 1;
}

uint64_t sub_1C05917F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "common_ActiveType_Upcoming";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (a1 == 5)
  {
    v6 = "common_EmailState_Unsent";
  }

  else
  {
    v6 = "common_EmailState_Received";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (a1 == 3)
  {
    v8 = "common_EmailState_Read";
  }

  else
  {
    v8 = "common_EmailState_Saved";
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

  if (v4 == 1)
  {
    v10 = "common_EmailState_Unread";
  }

  else
  {
    v10 = "common_EmailState_Sent";
  }

  if (v4)
  {
    v11 = 0xD000000000000016;
  }

  else
  {
    v11 = 0xD000000000000018;
  }

  if (v4)
  {
    v12 = v10;
  }

  else
  {
    v12 = "common_ActiveType_Upcoming";
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "common_EmailState_Unread";
      }

      else
      {
        v3 = "common_EmailState_Sent";
      }
    }

    else
    {
      v2 = 0xD000000000000018;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000001ALL;
      v3 = "common_EmailState_Unsent";
    }

    else
    {
      v2 = 0xD000000000000019;
      v3 = "common_EmailState_Received";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000017;
    v3 = "common_EmailState_Read";
  }

  else
  {
    v2 = 0xD000000000000018;
    v3 = "common_EmailState_Saved";
  }

  if (v13 == v2 && (v14 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C095DF3C();
  }

  return v15 & 1;
}

uint64_t sub_1C0591984(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "common_DayOfWeek_Sunday";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v8 = "common_RadioBand_HD";
    }

    else
    {
      v8 = "common_DayOfWeek_Sunday";
    }

    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = "common_RadioBand_AM";
    if (a1 == 3)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v5 = "common_RadioBand_FM";
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v6;
    }

    if (v4 == 2)
    {
      v8 = "common_RadioBand_XM";
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 1u)
  {
    v9 = "common_RadioBand_HD";
    v11 = a2 == 0;
  }

  else
  {
    v3 = "common_RadioBand_XM";
    v9 = "common_RadioBand_AM";
    if (a2 == 3)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = 0xD000000000000014;
    }

    if (a2 != 3)
    {
      v9 = "common_RadioBand_FM";
    }

    v11 = a2 == 2;
    if (a2 != 2)
    {
      v2 = v10;
    }
  }

  if (!v11)
  {
    v3 = v9;
  }

  if (v7 == v2 && (v8 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C0591AB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "common_TimeUnit_Week";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a1 == 5)
  {
    v6 = "common_DayOfWeek_Monday";
  }

  else
  {
    v6 = "common_DayOfWeek_Tuesday";
  }

  if (a1 == 3)
  {
    v7 = "common_DayOfWeek_Saturday";
  }

  else
  {
    v7 = "common_DayOfWeek_Friday";
  }

  if (a1 <= 4u)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v8 = v5;
  }

  if (v4 > 4)
  {
    v7 = v6;
  }

  v9 = 0xD00000000000001ALL;
  if (v4 == 1)
  {
    v10 = "common_DayOfWeek_Thursday";
  }

  else
  {
    v9 = 0xD000000000000019;
    v10 = "common_DayOfWeek_Wednesday";
  }

  if (!v4)
  {
    v9 = 0xD000000000000019;
    v10 = "common_TimeUnit_Week";
  }

  if (v4 > 2)
  {
    v11 = v7;
  }

  else
  {
    v8 = v9;
    v11 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001ALL;
        v3 = "common_DayOfWeek_Thursday";
      }

      else
      {
        v2 = 0xD000000000000019;
        v3 = "common_DayOfWeek_Wednesday";
      }
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000018;
      v3 = "common_DayOfWeek_Monday";
    }

    else
    {
      v3 = "common_DayOfWeek_Tuesday";
    }
  }

  else if (a2 == 3)
  {
    v3 = "common_DayOfWeek_Saturday";
  }

  else
  {
    v3 = "common_DayOfWeek_Friday";
  }

  if (v8 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C0591C38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "common_Duration_AllDay";
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = "common_Duration_NoDuration";
      v3 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2)
    {
      v4 = "common_Duration_TotalDuration";
    }

    else
    {
      v4 = "common_DateType_BankHoliday";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = "common_Duration_AllDay";
    }

    else
    {
      v6 = "common_Duration_NoDuration";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v6 = "common_Duration_TotalDuration";
    }

    else
    {
      v6 = "common_DateType_BankHoliday";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C0591D6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF646E657070615FLL;
  v3 = 0x726F74617265706FLL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x6563616C706572;
  if (a1 != 4)
  {
    v6 = 0x6C61757145746F6ELL;
    v5 = 0xE900000000000073;
  }

  if (a1 == 3)
  {
    v6 = 0x646E65707061;
    v5 = 0xE600000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000001C09B2D20;
  if (a1 != 1)
  {
    v7 = 0xD000000000000012;
    v8 = 0x80000001C09B28B0;
  }

  if (!a1)
  {
    v7 = 0x726F74617265706FLL;
    v8 = 0xEF646E657070615FLL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v9 != 0x646E65707061)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v9 != 0x6563616C706572)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE900000000000073;
      if (v9 != 0x6C61757145746F6ELL)
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
        v2 = 0x80000001C09B2D20;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0x80000001C09B28B0;
      v3 = 0xD000000000000012;
    }

    if (v9 != v3)
    {
LABEL_31:
      v11 = sub_1C095DF3C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v2)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}

uint64_t sub_1C0591F44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "operator_notEquals";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v3)
    {
      v4 = "common_Time_Sunset";
    }

    else
    {
      v4 = "operator_notEquals";
    }
  }

  else if (a1 == 2)
  {
    v4 = "common_Time_Noon";
    v5 = 0xD000000000000014;
  }

  else if (a1 == 3)
  {
    v4 = "common_Time_Midnight";
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = "common_Time_Sunrise";
    v5 = 0xD000000000000017;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (a2)
    {
      v2 = "common_Time_Sunset";
    }
  }

  else if (a2 == 2)
  {
    v2 = "common_Time_Noon";
    v6 = 0xD000000000000014;
  }

  else if (a2 == 3)
  {
    v2 = "common_Time_Midnight";
    v6 = 0xD000000000000013;
  }

  else
  {
    v2 = "common_Time_Sunrise";
    v6 = 0xD000000000000017;
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C05920AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "common_Age_Senior";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD00000000000001ELL;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (v4)
    {
      v5 = "common_Date_Tomorrow";
    }

    else
    {
      v5 = "common_Age_Senior";
    }
  }

  else if (a1 == 2)
  {
    v5 = "common_Date_DayBeforeYesterday";
    v6 = 0xD00000000000001CLL;
  }

  else if (a1 == 3)
  {
    v5 = "common_Date_DayAfterTomorrow";
    v6 = 0xD000000000000011;
  }

  else
  {
    v5 = "common_Date_Today";
    v6 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a2)
    {
      v3 = "common_Date_Tomorrow";
    }
  }

  else if (a2 == 2)
  {
    v3 = "common_Date_DayBeforeYesterday";
    v2 = 0xD00000000000001CLL;
  }

  else if (a2 == 3)
  {
    v3 = "common_Date_DayAfterTomorrow";
  }

  else
  {
    v3 = "common_Date_Today";
    v2 = 0xD000000000000015;
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C059221C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E65;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEB00000000747865;
    v13 = 0x65666E4972657375;
    v14 = 0xEC00000064657272;
    if (a1 != 2)
    {
      v13 = 0x666544746E656761;
      v14 = 0xEC000000746C7561;
    }

    v15 = 0x7272754372657375;
    if (a1)
    {
      v12 = 0xEB00000000746E65;
    }

    else
    {
      v15 = 0x746E6F4372657375;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v4 = 0x666E49746E656761;
    v5 = 0xED00006465727265;
    v6 = 0x726544746E656761;
    v7 = 0xEC00000064657669;
    if (a1 != 7)
    {
      v6 = 0x6C6552746E656761;
      v7 = 0xEC00000064657861;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x766544746E656761;
    v9 = 0xEB00000000656369;
    if (a1 != 4)
    {
      v8 = 0x6F7244746E656761;
      v9 = 0xEC00000064657070;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (v10 != 0x7272754372657375)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v2 = 0xEB00000000747865;
        if (v10 != 0x746E6F4372657375)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v2 = 0xEC00000064657272;
      if (v10 != 0x65666E4972657375)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x666544746E656761;
    v17 = 1953264993;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED00006465727265;
        if (v10 != 0x666E49746E656761)
        {
          goto LABEL_52;
        }
      }

      else if (a2 == 7)
      {
        v2 = 0xEC00000064657669;
        if (v10 != 0x726544746E656761)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v2 = 0xEC00000064657861;
        if (v10 != 0x6C6552746E656761)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v2 = 0xEB00000000656369;
      if (v10 != 0x766544746E656761)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x6F7244746E656761;
    v17 = 1684369520;
  }

  v2 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v10 != v16)
  {
LABEL_52:
    v18 = sub_1C095DF3C();
    goto LABEL_53;
  }

LABEL_50:
  if (v11 != v2)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_1C0592530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x736E6961746E6F63;
  if (a1 != 4)
  {
    v5 = 0x61746E6F43746F6ELL;
    v4 = 0xEB00000000736E69;
  }

  if (a1 == 3)
  {
    v5 = 0x724665766F6D6572;
    v4 = 0xED00007465536D6FLL;
  }

  v6 = 0xD000000000000015;
  v7 = 0xD00000000000001ALL;
  if (a1 == 1)
  {
    v3 = 0x80000001C09B2710;
  }

  else
  {
    v7 = 0x7465536F54646461;
  }

  if (a1)
  {
    v6 = v7;
  }

  else
  {
    v3 = 0x80000001C09B26F0;
  }

  if (a1 <= 2u)
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xED00007465536D6FLL;
      if (v8 != 0x724665766F6D6572)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0xE800000000000000;
      if (v8 != 0x736E6961746E6F63)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0xEB00000000736E69;
      if (v8 != 0x61746E6F43746F6ELL)
      {
LABEL_35:
        v11 = sub_1C095DF3C();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x80000001C09B2710;
      if (v8 != 0xD00000000000001ALL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0xE800000000000000;
      if (v8 != 0x7465536F54646461)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0x80000001C09B26F0;
    if (v8 != 0xD000000000000015)
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

BOOL sub_1C0592738(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_1C0972E90[a1];
  }

  if (a4)
  {
    a3 = qword_1C0972E90[a3];
  }

  return a1 == a3;
}

uint64_t sub_1C059275C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 28271;
    }

    else
    {
      v3 = 28265;
    }

    v4 = 0xE200000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1918985582;
  }

  else
  {
    v3 = 0xD000000000000010;
    if (v2 == 3)
    {
      v4 = 0x80000001C09B26B0;
    }

    else
    {
      v4 = 0x80000001C09B26D0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 28271;
    }

    else
    {
      v6 = 28265;
    }

    v5 = 0xE200000000000000;
    if (v3 != v6)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1918985582)
    {
LABEL_26:
      v7 = sub_1C095DF3C();
      goto LABEL_27;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x80000001C09B26B0;
    }

    else
    {
      v5 = 0x80000001C09B26D0;
    }

    if (v3 != 0xD000000000000010)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1C05928D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006163697265;
  v3 = 0x6D41206874726F4ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x61697361727545;
  if (a1 != 6)
  {
    v6 = 0x61696E6165634FLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x65706F727545;
  if (a1 != 4)
  {
    v8 = 1634300737;
    v7 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6974637261746E41;
  v10 = 0xEA00000000006163;
  if (a1 != 2)
  {
    v9 = 0x616369726641;
    v10 = 0xE600000000000000;
  }

  v11 = 0x6D41206874756F53;
  if (!a1)
  {
    v11 = 0x6D41206874726F4ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = 0xED00006163697265;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v2 = 0xE700000000000000;
      if (a2 == 6)
      {
        v14 = 0x697361727545;
      }

      else
      {
        v14 = 0x696E6165634FLL;
      }

      if (v12 != (v14 & 0xFFFFFFFFFFFFLL | 0x61000000000000))
      {
        goto LABEL_41;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v12 != 0x65706F727545)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v12 != 1634300737)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_37;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEA00000000006163;
      if (v12 != 0x6974637261746E41)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    v2 = 0xE600000000000000;
    v3 = 0x616369726641;
  }

  else if (a2)
  {
    if (v12 != 0x6D41206874756F53)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (v12 != v3)
  {
LABEL_41:
    v15 = sub_1C095DF3C();
    goto LABEL_42;
  }

LABEL_37:
  if (v13 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_1C0592B10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x73656C696DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6574656D6F6C696BLL;
    }

    else
    {
      v4 = 0x6C6163697475616ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007372;
    }

    else
    {
      v5 = 0xEE0073656C696D20;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73726574656DLL;
    }

    else
    {
      v4 = 0x73656C696DLL;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6574656D6F6C696BLL;
  v8 = 0xEA00000000007372;
  if (a2 != 2)
  {
    v7 = 0x6C6163697475616ELL;
    v8 = 0xEE0073656C696D20;
  }

  if (a2)
  {
    v2 = 0x73726574656DLL;
    v6 = 0xE600000000000000;
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
    v11 = sub_1C095DF3C();
  }

  return v11 & 1;
}

uint64_t sub_1C0592C68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "tionAttributesLatest";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "ttribute_ConditionDeparture";
      v4 = 0xD00000000000003ELL;
    }

    else
    {
      v5 = "ttribute_ConditionEnterVehicle";
      v4 = 0xD00000000000003FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000003BLL;
    }

    else
    {
      v4 = 0xD000000000000039;
    }

    if (v3)
    {
      v5 = "ttribute_ConditionArrival";
    }

    else
    {
      v5 = "tionAttributesLatest";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ttribute_ConditionDeparture";
    v6 = "ttribute_ConditionEnterVehicle";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD00000000000003ELL;
    }

    else
    {
      v8 = 0xD00000000000003FLL;
    }
  }

  else
  {
    v6 = "ttribute_ConditionArrival";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000003BLL;
    }

    else
    {
      v8 = 0xD000000000000039;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C0592D8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = "e_PhoneCallNounBluetooth";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = "otebookItemType_Folder";
  }

  else
  {
    v5 = "otebookItemType_List";
  }

  v6 = 0xD000000000000026;
  if (a1 == 3)
  {
    v6 = 0xD000000000000024;
    v7 = "otebookItemType_Subtask";
  }

  else
  {
    v7 = "otebookItemType_Task";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD000000000000024;
  }

  if (v4 > 4)
  {
    v7 = v5;
  }

  v9 = 0xD000000000000027;
  if (v4 == 1)
  {
    v9 = 0xD000000000000024;
    v10 = "otebookItemType_Reminder";
  }

  else
  {
    v10 = "otebookItemType_Item";
  }

  if (!v4)
  {
    v9 = 0xD000000000000028;
    v10 = "e_PhoneCallNounBluetooth";
  }

  if (v4 > 2)
  {
    v11 = v7;
  }

  else
  {
    v8 = v9;
    v11 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "otebookItemType_Reminder";
      }

      else
      {
        v2 = 0xD000000000000027;
        v3 = "otebookItemType_Item";
      }
    }

    else
    {
      v2 = 0xD000000000000028;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v3 = "otebookItemType_Folder";
    }

    else
    {
      v3 = "otebookItemType_List";
    }
  }

  else if (a2 == 3)
  {
    v3 = "otebookItemType_Subtask";
  }

  else
  {
    v2 = 0xD000000000000026;
    v3 = "otebookItemType_Task";
  }

  if (v8 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C0592F14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000003DLL;
  v3 = "sAttributesHandwritten";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "buteAuthorCollection";
    v12 = 0xD000000000000032;
    if (a1 != 6)
    {
      v12 = 0xD00000000000003DLL;
      v11 = "itingsNounXiehouyu";
    }

    v13 = "itingsNounCouplet";
    v14 = 0xD000000000000043;
    if (a1 != 4)
    {
      v14 = 0xD000000000000044;
      v13 = "buteMatchingCouplet";
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
    v5 = "tingAttribute_WritingsNounPoem";
    v6 = 0xD000000000000031;
    if (a1 == 2)
    {
      v6 = 0xD00000000000003DLL;
    }

    else
    {
      v5 = "itingsQueryAttributeNextVerse";
    }

    v7 = "itingsNounIdiomSolitaire";
    v8 = 0xD00000000000002ELL;
    if (!a1)
    {
      v8 = 0xD000000000000038;
      v7 = "sAttributesHandwritten";
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "itingsNounIdiomSolitaire";
        v2 = 0xD00000000000002ELL;
      }

      else
      {
        v2 = 0xD000000000000038;
      }

      goto LABEL_39;
    }

    if (a2 != 2)
    {
      v3 = "itingsQueryAttributeNextVerse";
      v2 = 0xD000000000000031;
      goto LABEL_39;
    }

    v15 = "appleWriting_WritingAttribute_WritingsQueryAttributeNextVerse";
LABEL_38:
    v3 = (v15 - 32);
    goto LABEL_39;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v3 = "buteAuthorCollection";
      v2 = 0xD000000000000032;
      goto LABEL_39;
    }

    v15 = "appleWriting_WritingAttribute_WritingsQueryAttributePrevVerse";
    goto LABEL_38;
  }

  if (a2 == 4)
  {
    v3 = "itingsNounCouplet";
    v2 = 0xD000000000000043;
  }

  else
  {
    v3 = "buteMatchingCouplet";
    v2 = 0xD000000000000044;
  }

LABEL_39:
  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1C095DF3C();
  }

  return v16 & 1;
}

uint64_t sub_1C0593114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000037;
  v3 = "kAttribute_EarningsPerShare";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000036;
  }

  else
  {
    v5 = 0xD000000000000033;
  }

  if (a1 == 4)
  {
    v6 = "ntactAttributesHomePage";
  }

  else
  {
    v6 = "ntactAttributesPresent";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000037;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v8 = "ntactAttributesRingtone";
  }

  else
  {
    v8 = v6;
  }

  if (v4 == 1)
  {
    v9 = "ntactAttributesFuture";
  }

  else
  {
    v9 = "ntactAttributesTextTone";
  }

  if (v4)
  {
    v10 = 0xD000000000000037;
  }

  else
  {
    v10 = 0xD000000000000035;
  }

  if (!v4)
  {
    v9 = "kAttribute_EarningsPerShare";
  }

  if (v4 > 2)
  {
    v11 = v8;
  }

  else
  {
    v7 = v10;
    v11 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "ntactAttributesRingtone";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000036;
      v3 = "ntactAttributesHomePage";
    }

    else
    {
      v2 = 0xD000000000000033;
      v3 = "ntactAttributesPresent";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "ntactAttributesFuture";
    }

    else
    {
      v3 = "ntactAttributesTextTone";
    }
  }

  else
  {
    v2 = 0xD000000000000035;
  }

  if (v7 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C0593274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "common_UserEntity_Everywhere";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "kChangeState_GoUpOrDown";
      v4 = 0xD000000000000021;
    }

    else
    {
      v5 = "kChangeState_GoUp";
      v4 = 0xD000000000000023;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000027;
    }

    else
    {
      v4 = 0xD000000000000026;
    }

    if (v3)
    {
      v5 = "kChangeState_Unchanged";
    }

    else
    {
      v5 = "common_UserEntity_Everywhere";
    }
  }

  if (a2 > 1u)
  {
    v2 = "kChangeState_GoUpOrDown";
    v6 = "kChangeState_GoUp";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD000000000000023;
    }
  }

  else
  {
    v6 = "kChangeState_Unchanged";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000027;
    }

    else
    {
      v8 = 0xD000000000000026;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C05933A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "Attribute_TimerAttributesOn";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v5 = "common_UserEntity_Anywhere";
    }

    else
    {
      v5 = "Attribute_TimerAttributesOn";
    }
  }

  else if (a1 == 2)
  {
    v5 = "common_UserEntity_There";
    v6 = 0xD000000000000019;
  }

  else if (a1 == 3)
  {
    v5 = "common_UserEntity_Nowhere";
    v6 = 0xD000000000000016;
  }

  else
  {
    v5 = "common_UserEntity_Here";
    v6 = 0xD00000000000001CLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000017;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v3 = "common_UserEntity_Anywhere";
    }
  }

  else if (a2 == 2)
  {
    v3 = "common_UserEntity_There";
    v2 = 0xD000000000000019;
  }

  else if (a2 == 3)
  {
    v3 = "common_UserEntity_Nowhere";
  }

  else
  {
    v3 = "common_UserEntity_Here";
    v2 = 0xD00000000000001CLL;
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C0593508(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000028;
  v3 = 0xD00000000000002DLL;
  v4 = "ttributesFlagged";
  v5 = a1;
  v6 = 0xD00000000000002CLL;
  if (a1 == 4)
  {
    v7 = "Attribute_TimerAttributesPaused";
  }

  else
  {
    v6 = 0xD00000000000002BLL;
    v7 = "Attribute_TimerAttributesOff";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000002FLL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "Attribute_TimerTypeSleep";
  }

  v9 = 0xD000000000000030;
  if (v5 == 1)
  {
    v10 = "Attribute_TimerNounSleepTimer";
  }

  else
  {
    v9 = 0xD000000000000028;
    v10 = "ttributesRunning";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "ttributesFlagged";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002FLL;
      v4 = "Attribute_TimerTypeSleep";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000002CLL;
      v4 = "Attribute_TimerAttributesPaused";
    }

    else
    {
      v2 = 0xD00000000000002BLL;
      v4 = "Attribute_TimerAttributesOff";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000030;
      v4 = "Attribute_TimerNounSleepTimer";
    }

    else
    {
      v4 = "ttributesRunning";
    }
  }

  else
  {
    v2 = 0xD00000000000002DLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C0593680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000030;
  v3 = "Attribute_AlarmAttributesSound";
  v4 = a1;
  if (a1 <= 4u)
  {
    v10 = "ttributesPreview";
    v11 = 0xD00000000000002DLL;
    v12 = "Attribute_EmailAttributesRead";
    v13 = 0xD00000000000002FLL;
    if (a1 == 3)
    {
      v13 = 0xD000000000000031;
    }

    else
    {
      v12 = "ttributesReceived";
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = "Attribute_EmailAttributesNew";
    if (a1)
    {
      v15 = 0xD000000000000030;
    }

    else
    {
      v15 = 0xD00000000000002CLL;
    }

    if (!a1)
    {
      v14 = "Attribute_AlarmAttributesSound";
    }

    if (a1 <= 1u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v5 = "ttributesAttachment";
      v6 = "Attribute_EmailAttributesSent";
      v17 = 0xD00000000000002ELL;
      if (a1 != 9)
      {
        v17 = 0xD000000000000030;
        v6 = "Attribute_EmailAttributesSaved";
      }

      v8 = a1 == 8;
      if (a1 == 8)
      {
        v9 = 0xD00000000000002DLL;
      }

      else
      {
        v9 = v17;
      }
    }

    else
    {
      v5 = "Attribute_EmailAttributesUnread";
      v6 = "ttributesUnsaved";
      v7 = 0xD00000000000002FLL;
      if (a1 != 6)
      {
        v7 = 0xD000000000000033;
        v6 = "Attribute_EmailAttributesLatest";
      }

      v8 = a1 == 5;
      if (a1 == 5)
      {
        v9 = 0xD000000000000030;
      }

      else
      {
        v9 = v7;
      }
    }

    if (v8)
    {
      v16 = v5;
    }

    else
    {
      v16 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 != 5)
      {
        if (a2 != 6)
        {
          v3 = "Attribute_EmailAttributesLatest";
          v2 = 0xD000000000000033;
          goto LABEL_56;
        }

        v18 = "appleEmail_EmailAttribute_EmailAttributesLatest";
        goto LABEL_51;
      }

      v20 = "appleEmail_EmailAttribute_EmailAttributesUnsaved";
LABEL_55:
      v3 = (v20 - 32);
      goto LABEL_56;
    }

    if (a2 != 8)
    {
      if (a2 != 9)
      {
        v20 = "appleEmail_EmailAttribute_EmailAttributesFlagged";
        goto LABEL_55;
      }

      v3 = "Attribute_EmailAttributesSent";
      v2 = 0xD00000000000002ELL;
      goto LABEL_56;
    }

    v19 = "appleEmail_EmailAttribute_EmailAttributesSent";
LABEL_49:
    v3 = (v19 - 32);
    v2 = 0xD00000000000002DLL;
    goto LABEL_56;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        v18 = "appleEmail_EmailAttribute_EmailAttributesUnread";
LABEL_51:
        v3 = (v18 - 32);
        v2 = 0xD00000000000002FLL;
        goto LABEL_56;
      }

      v3 = "Attribute_EmailAttributesRead";
      v2 = 0xD000000000000031;
      goto LABEL_56;
    }

    v19 = "appleEmail_EmailAttribute_EmailAttributesRead";
    goto LABEL_49;
  }

  if (a2)
  {
    v20 = "appleEmail_EmailAttribute_EmailAttributesPreview";
    goto LABEL_55;
  }

  v2 = 0xD00000000000002CLL;
LABEL_56:
  if (v9 == v2 && (v16 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_1C095DF3C();
  }

  return v21 & 1;
}

uint64_t sub_1C0593904(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "Attribute_AlarmAttributesSleep";
      v3 = 0xD00000000000002CLL;
    }

    else
    {
      v4 = "Attribute_AlarmAttributesSet";
      v3 = 0xD00000000000002ELL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000002ELL;
    }

    else
    {
      v3 = 0xD00000000000002FLL;
    }

    if (v2)
    {
      v4 = "Attribute_AlarmAttributesNotSet";
    }

    else
    {
      v4 = "_UserEntityAttribute_New";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000002CLL;
    }

    else
    {
      v5 = 0xD00000000000002ELL;
    }

    if (a2 == 2)
    {
      v6 = "Attribute_AlarmAttributesSleep";
    }

    else
    {
      v6 = "Attribute_AlarmAttributesSet";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000002ELL;
    }

    else
    {
      v5 = 0xD00000000000002FLL;
    }

    if (a2)
    {
      v6 = "Attribute_AlarmAttributesNotSet";
    }

    else
    {
      v6 = "_UserEntityAttribute_New";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

unint64_t Com_Apple_Siri_Product_Proto_ValueType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xA;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0593A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05AB49C(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

uint64_t sub_1C0593B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05AB448(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

unint64_t Com_Apple_Siri_Product_Proto_MitigatorClassification.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0593C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05AD7FC(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

unint64_t Com_Apple_Siri_Product_Proto_MetaDomainAction.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_1C0593DA4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1C0593DBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C0593DD8(uint64_t a1, uint64_t a2)
{
  sub_1C095DFEC();
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0593E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C05AD7A8(a1, a2, a3);

  return MEMORY[0x1EEE3F550](a1, a2, v5);
}

uint64_t sub_1C0593E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C095DFEC();
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0593F4C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t sub_1C0593FFC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t Com_Apple_Siri_Product_Proto_AdjustmentReason.sourceClass.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_AdjustmentReason.sourceClass.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_AdjustmentReason.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_DerivedOrigin.adjustmentReason.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  sub_1C05149F8(v1 + *(v6 + 24), v5, &qword_1EBE17758, &unk_1C0971240);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17758, &unk_1C0971240);
  }

  return result;
}

uint64_t sub_1C059434C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  sub_1C05149F8(a1 + *(v7 + 24), v6, &qword_1EBE17758, &unk_1C0971240);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17758, &unk_1C0971240);
  }

  return result;
}

uint64_t sub_1C05944B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05A8AB4(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE17758, &unk_1C0971240);
  sub_1C05A8A4C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DerivedOrigin.adjustmentReason.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE17758, &unk_1C0971240);
  sub_1C05A8A4C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_DerivedOrigin.adjustmentReason.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17758, &unk_1C0971240);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17758, &unk_1C0971240);
    }
  }

  else
  {
    sub_1C05A8A4C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  }

  return sub_1C05948B0;
}

uint64_t Com_Apple_Siri_Product_Proto_DerivedOrigin.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void Com_Apple_Siri_Product_Proto_Origin.originType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.originType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.reason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(v0 + *(v4 + 20), v3, &qword_1EBE17760, &unk_1C099BB10);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1C05145B4(v3, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v3;
    }

    sub_1C0594D2C(v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  return 0;
}

uint64_t sub_1C0594D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0594D8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(a1 + *(v7 + 20), v6, &qword_1EBE17760, &unk_1C099BB10);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_1C05145B4(v6, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v10 = *v6;
      v11 = v6[1];
      goto LABEL_6;
    }

    result = sub_1C0594D2C(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  v10 = 0;
  v11 = 0xE000000000000000;
LABEL_6:
  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_1C0594EDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20));

  sub_1C05145B4(v4, &qword_1EBE17760, &unk_1C099BB10);
  *v4 = v3;
  v4[1] = v2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20));
  sub_1C05145B4(v5, &qword_1EBE17760, &unk_1C099BB10);
  *v5 = a1;
  v5[1] = a2;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v5, 0, 1, v6);
}

void (*Com_Apple_Siri_Product_Proto_Origin.reason.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  *(v5 + 48) = v9;
  sub_1C05149F8(v1 + v9, v8, &qword_1EBE17760, &unk_1C099BB10);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  *(v5 + 32) = v10;
  v11 = *(v10 - 8);
  *(v5 + 40) = v11;
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v8;
      v13 = v8[1];
      goto LABEL_12;
    }

    sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_12:
  *v5 = v12;
  *(v5 + 8) = v13;
  return sub_1C05951F0;
}

void sub_1C05951F0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = *(*a1 + 12);
  v8 = (*a1)[3];
  v9 = ((*a1)[2] + v7);
  if (a2)
  {

    sub_1C05145B4(v9, &qword_1EBE17760, &unk_1C099BB10);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
  }

  else
  {
    sub_1C05145B4((*a1)[2] + v7, &qword_1EBE17760, &unk_1C099BB10);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
  }

  free(v8);

  free(v2);
}

double Com_Apple_Siri_Product_Proto_Origin.matchingSpan.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(v1 + *(v6 + 20), v5, &qword_1EBE17760, &unk_1C099BB10);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      return result;
    }

    sub_1C0594D2C(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0) + 20);
  if (qword_1EBE0FD48 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_1EBE0FD50;

  return result;
}

void (*Com_Apple_Siri_Product_Proto_Origin.matchingSpan.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  *(v5 + 12) = v13;
  sub_1C05149F8(v1 + v13, v8, &qword_1EBE17760, &unk_1C099BB10);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05A8A4C(v8, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      return sub_1C0595744;
    }

    sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v16 = *(v9 + 20);
  if (qword_1EBE0FD48 != -1)
  {
    swift_once();
  }

  *(v12 + v16) = qword_1EBE0FD50;

  return sub_1C0595744;
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.derivedOrigin.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(v1 + *(v6 + 20), v5, &qword_1EBE17760, &unk_1C099BB10);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    }

    sub_1C0594D2C(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t sub_1C059593C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(a1 + *(v7 + 20), v6, &qword_1EBE17760, &unk_1C099BB10);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE17760, &unk_1C099BB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    }

    sub_1C0594D2C(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

uint64_t sub_1C0595B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  sub_1C05A8AB4(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  sub_1C05145B4(a2 + v13, &qword_1EBE17760, &unk_1C099BB10);
  sub_1C05A8A4C(v12, a2 + v13, a6);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t sub_1C0595C40(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  sub_1C05145B4(v3 + v6, &qword_1EBE17760, &unk_1C099BB10);
  sub_1C05A8A4C(a1, v3 + v6, a2);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*Com_Apple_Siri_Product_Proto_Origin.derivedOrigin.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  *(v5 + 12) = v13;
  sub_1C05149F8(v1 + v13, v8, &qword_1EBE17760, &unk_1C099BB10);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17760, &unk_1C099BB10);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
    return sub_1C0595F88;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    goto LABEL_15;
  }

  sub_1C05A8A4C(v8, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  return sub_1C0595F88;
}

void sub_1C0595FB8(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_1C05A8AB4(v11, v10, a3);
    sub_1C05145B4(v12 + v9, &qword_1EBE17760, &unk_1C099BB10);
    sub_1C05A8A4C(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_1C0594D2C(v11, a5);
  }

  else
  {
    sub_1C05145B4(v12 + v9, &qword_1EBE17760, &unk_1C099BB10);
    sub_1C05A8A4C(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t sub_1C0596138@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05961D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_OriginalElementValue.input.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_OriginalElementValue.input.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_OriginalElementValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v1 + *(v6 + 28), v5, &qword_1EBE17768, &unk_1C0971250);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17768, &unk_1C0971250);
  }

  return result;
}

uint64_t sub_1C0596670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(a1 + *(v7 + 28), v6, &qword_1EBE17768, &unk_1C0971250);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17768, &unk_1C0971250);
  }

  return result;
}

uint64_t sub_1C059681C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05A8AB4(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 28);
  sub_1C05145B4(a2 + v8, &qword_1EBE17768, &unk_1C0971250);
  sub_1C05A8A4C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.origin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 28);
  sub_1C05145B4(v1 + v3, &qword_1EBE17768, &unk_1C0971250);
  sub_1C05A8A4C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_ElementValue.origin.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17768, &unk_1C0971250);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17768, &unk_1C0971250);
    }
  }

  else
  {
    sub_1C05A8A4C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  }

  return sub_1C0596C5C;
}

BOOL Com_Apple_Siri_Product_Proto_ElementValue.hasOrigin.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v0 + *(v4 + 28), v3, &qword_1EBE17768, &unk_1C0971250);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17768, &unk_1C0971250);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_ElementValue.clearOrigin()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 28);
  sub_1C05145B4(v0 + v1, &qword_1EBE17768, &unk_1C0971250);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.originalValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v1 + *(v6 + 32), v5, &qword_1EBE17770, &unk_1C099BB00);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17770, &unk_1C099BB00);
  }

  return result;
}

uint64_t sub_1C0596F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(a1 + *(v7 + 32), v6, &qword_1EBE17770, &unk_1C099BB00);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE17770, &unk_1C099BB00);
  }

  return result;
}

uint64_t sub_1C05970E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05A8AB4(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 32);
  sub_1C05145B4(a2 + v8, &qword_1EBE17770, &unk_1C099BB00);
  sub_1C05A8A4C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.originalValue.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 32);
  sub_1C05145B4(v1 + v3, &qword_1EBE17770, &unk_1C099BB00);
  sub_1C05A8A4C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_ElementValue.originalValue.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 32);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17770, &unk_1C099BB00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17770, &unk_1C099BB00);
    }
  }

  else
  {
    sub_1C05A8A4C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  }

  return sub_1C05974E0;
}

BOOL Com_Apple_Siri_Product_Proto_ElementValue.hasOriginalValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v0 + *(v4 + 32), v3, &qword_1EBE17770, &unk_1C099BB00);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17770, &unk_1C099BB00);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_ElementValue.clearOriginalValue()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 32);
  sub_1C05145B4(v0 + v1, &qword_1EBE17770, &unk_1C099BB00);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_Siri_Product_Proto_ElementValue.valueType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.valueType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void Com_Apple_Siri_Product_Proto_ElementValue.value.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v1 + *(v6 + 36), v5, &qword_1EBE17778, &unk_1C0971260);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v9 = *(v7 + 20);
    if (qword_1EBE15458 != -1)
    {
      swift_once();
    }

    *(a1 + v9) = qword_1EBE15460;
    v10 = v8(v5, 1, v7);

    if (v10 != 1)
    {
      sub_1C05145B4(v5, &qword_1EBE17778, &unk_1C0971260);
    }
  }

  else
  {
    sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }
}

void sub_1C059788C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(a1 + *(v7 + 36), v6, &qword_1EBE17778, &unk_1C0971260);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBE15458 != -1)
    {
      swift_once();
    }

    *(a2 + v10) = qword_1EBE15460;
    v11 = v9(v6, 1, v8);

    if (v11 != 1)
    {
      sub_1C05145B4(v6, &qword_1EBE17778, &unk_1C0971260);
    }
  }

  else
  {
    sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }
}

uint64_t sub_1C0597A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05A8AB4(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 36);
  sub_1C05145B4(a2 + v8, &qword_1EBE17778, &unk_1C0971260);
  sub_1C05A8A4C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 36);
  sub_1C05145B4(v1 + v3, &qword_1EBE17778, &unk_1C0971260);
  sub_1C05A8A4C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_ElementValue.value.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 36);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE17778, &unk_1C0971260);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_1EBE15458 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EBE15460;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17778, &unk_1C0971260);
    }
  }

  else
  {
    sub_1C05A8A4C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  return sub_1C0597E70;
}

BOOL Com_Apple_Siri_Product_Proto_ElementValue.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v0 + *(v4 + 36), v3, &qword_1EBE17778, &unk_1C0971260);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1C05145B4(v3, &qword_1EBE17778, &unk_1C0971260);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_ElementValue.clearValue()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0) + 36);
  sub_1C05145B4(v0 + v1, &qword_1EBE17778, &unk_1C0971260);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = v2[7];
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t sub_1C0598208@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05982A4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Siri_Product_Proto_Element.ontologyNodeName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_Siri_Product_Proto_Element.ontologyNodeName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Element.resultIds.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Element.terminalElement.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(v1 + *(v6 + 24), v5, &qword_1EBE16E00, &qword_1C099BAE0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE16E00, &qword_1C099BAE0);
LABEL_5:
    *a1 = MEMORY[0x1E69E7CC0];
    type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
    return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C0594D2C(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    goto LABEL_5;
  }

  return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
}

uint64_t sub_1C05986E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(a1 + *(v7 + 24), v6, &qword_1EBE16E00, &qword_1C099BAE0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE16E00, &qword_1C099BAE0);
LABEL_5:
    *a2 = MEMORY[0x1E69E7CC0];
    type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
    return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C0594D2C(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    goto LABEL_5;
  }

  return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
}

void (*Com_Apple_Siri_Product_Proto_Element.terminalElement.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  *(v5 + 12) = v12;
  sub_1C05149F8(v1 + v12, v8, &qword_1EBE16E00, &qword_1C099BAE0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16E00, &qword_1C099BAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C05A8A4C(v8, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      return sub_1C0598ABC;
    }

    sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  }

  *v11 = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  return sub_1C0598ABC;
}

uint64_t Com_Apple_Siri_Product_Proto_Element.nonTerminalElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(v1 + *(v6 + 24), v5, &qword_1EBE16E00, &qword_1C099BAE0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1C05145B4(v5, &qword_1EBE16E00, &qword_1C099BAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    }

    sub_1C0594D2C(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  }

  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0598C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(a1 + *(v7 + 24), v6, &qword_1EBE16E00, &qword_1C099BAE0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE16E00, &qword_1C099BAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    }

    sub_1C0594D2C(v6, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  }

  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0598DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7)
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  sub_1C05A8AB4(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  sub_1C05145B4(a2 + v13, &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C05A8A4C(v12, a2 + v13, a6);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t sub_1C0598EF8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  sub_1C05145B4(v3 + v6, &qword_1EBE16E00, &qword_1C099BAE0);
  sub_1C05A8A4C(a1, v3 + v6, a2);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*Com_Apple_Siri_Product_Proto_Element.nonTerminalElement.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  *(v5 + 12) = v12;
  sub_1C05149F8(v1 + v12, v8, &qword_1EBE16E00, &qword_1C099BAE0);
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16E00, &qword_1C099BAE0);
LABEL_15:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    return sub_1C05991DC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C0594D2C(v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    goto LABEL_15;
  }

  sub_1C05A8A4C(v8, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  return sub_1C05991DC;
}

void sub_1C059920C(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_1C05A8AB4(v11, v10, a3);
    sub_1C05145B4(v12 + v9, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05A8A4C(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_1C0594D2C(v11, a5);
  }

  else
  {
    sub_1C05145B4(v12 + v9, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05A8A4C(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t Com_Apple_Siri_Product_Proto_Element.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Element.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Com_Apple_Siri_Product_Proto_TerminalElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C05626C0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t static Com_Apple_Siri_Product_Proto_NonTerminalElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t Com_Apple_Siri_Product_Proto_Element.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  v2 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.element.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  sub_1C05149F8(v1 + *(v6 + 24), v5, &qword_1EBE16E10, &unk_1C0971270);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE16E10, &unk_1C0971270);
  }

  return result;
}

uint64_t sub_1C0599838@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  sub_1C05149F8(a1 + *(v7 + 24), v6, &qword_1EBE16E10, &unk_1C0971270);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C05A8A4C(v6, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16E10, &unk_1C0971270);
  }

  return result;
}

uint64_t sub_1C05999EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05A8AB4(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0) + 24);
  sub_1C05145B4(a2 + v8, &qword_1EBE16E10, &unk_1C0971270);
  sub_1C05A8A4C(v7, a2 + v8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.element.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE16E10, &unk_1C0971270);
  sub_1C05A8A4C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Siri_Product_Proto_IntentNode.element.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16E10, &unk_1C0971270);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = 0xE000000000000000;
    *(v14 + 2) = MEMORY[0x1E69E7CC0];
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16E10, &unk_1C0971270);
    }
  }

  else
  {
    sub_1C05A8A4C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
  }

  return sub_1C0599E34;
}

void sub_1C0599E70(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_1C05A8AB4(v12, v11, a5);
    sub_1C05145B4(v15 + v10, a3, a4);
    sub_1C05A8A4C(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1C0594D2C(v12, a6);
  }

  else
  {
    sub_1C05145B4(v15 + v10, a3, a4);
    sub_1C05A8A4C(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_1C0599FE8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_1C05149F8(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1C05145B4(v11, a1, a2);
  return v14;
}

uint64_t sub_1C059A120(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1C05145B4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

double Com_Apple_Siri_Product_Proto_ProtoIntent.score.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1C059A34C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.score.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.score.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);
  return sub_1C059A524;
}

void sub_1C059A524(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.originalInput.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_1C059A64C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1C059A6A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.originalInput.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05A53E0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.originalInput.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return sub_1C059A8A4;
}

void sub_1C059A8A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v8 = sub_1C05A53E0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v12 = sub_1C05A53E0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 24) = v3;
    *(v12 + 32) = v5;
  }

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.allWordsMatched.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_1C059AA20(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 40) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.allWordsMatched.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 40) = a1 & 1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.allWordsMatched.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 40);
  return sub_1C059ABEC;
}

void sub_1C059ABEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 40) = v5;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.primary.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 41);
}

uint64_t sub_1C059ACF8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 41) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.primary.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 41) = a1 & 1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.primary.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 41);
  return sub_1C059AEC4;
}

void sub_1C059AEC4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 41) = v5;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.usingExplicitInput.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 42);
}

uint64_t sub_1C059AFD0(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 42) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.usingExplicitInput.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 42) = a1 & 1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.usingExplicitInput.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 42);
  return sub_1C059B19C;
}

void sub_1C059B19C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 42) = v5;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.intentRank.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 44);
}

uint64_t sub_1C059B2A8(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 44) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.intentRank.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 44) = a1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.intentRank.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 80) = *(v6 + 44);
  return sub_1C059B470;
}

void sub_1C059B470(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 44) = v3;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.nerbasedParse.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t sub_1C059B580(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 48) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.nerbasedParse.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 48) = a1 & 1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.nerbasedParse.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 48);
  return sub_1C059B74C;
}

void sub_1C059B74C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 48) = v5;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.intentID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  swift_beginAccess();
  return *(v1 + 52);
}

uint64_t sub_1C059B858(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 52) = v3;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.intentID.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C05A53E0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 52) = a1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.intentID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 80) = *(v6 + 52);
  return sub_1C059BA20;
}

void sub_1C059BA20(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 52) = v3;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.nlState.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  v7 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(v6 + v7, v5, &qword_1EBE17780, &qword_1C0999E30);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1C05A8A4C(v5, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a1[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
  a1[3] = sub_1C058BC4C(v10);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v5, &qword_1EBE17780, &qword_1C0999E30);
  }

  return result;
}

uint64_t sub_1C059BC88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05A8AB4(a1, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v13 = sub_1C05A53E0(v13);
    *(a2 + v11) = v13;
  }

  sub_1C05A8A4C(v10, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C051F9D4(v6, v13 + v14, &qword_1EBE17780, &qword_1C0999E30);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.nlState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1C05A53E0(v9);
    *(v2 + v7) = v9;
  }

  sub_1C05A8A4C(a1, v6, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C051F9D4(v6, v9 + v11, &qword_1EBE17780, &qword_1C0999E30);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.nlState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE17780, &qword_1C0999E30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v19 = MEMORY[0x1E69E7CC0];
    v14[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
    v14[3] = sub_1C058BC4C(v19);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE17780, &qword_1C0999E30);
    }
  }

  else
  {
    sub_1C05A8A4C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  }

  return sub_1C059C260;
}

void sub_1C059C260(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C05A8AB4(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v6 = sub_1C05A53E0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C05A8A4C(v10, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
    swift_beginAccess();
    sub_1C051F9D4(v14, v6 + v15, &qword_1EBE17780, &qword_1C0999E30);
    swift_endAccess();
    sub_1C0594D2C(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v18 = sub_1C05A53E0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C05A8A4C(v9, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
    swift_beginAccess();
    sub_1C051F9D4(v14, v18 + v23, &qword_1EBE17780, &qword_1C0999E30);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Siri_Product_Proto_ProtoIntent.hasNlState.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  v5 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(v4 + v5, v3, &qword_1EBE17780, &qword_1C0999E30);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1C05145B4(v3, &qword_1EBE17780, &qword_1C0999E30);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_ProtoIntent.clearNlState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C051F9D4(v4, v7 + v9, &qword_1EBE17780, &qword_1C0999E30);
  swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.mitigatorClassification.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1C059C77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C059C7E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(a2 + v5) = v7;
  }

  v8 = v7 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  result = swift_beginAccess();
  *v8 = v3;
  *(v8 + 8) = v4;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.mitigatorClassification.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(v2 + v5) = v7;
  }

  v8 = v7 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  result = swift_beginAccess();
  *v8 = v3;
  *(v8 + 8) = v4;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.mitigatorClassification.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C059C9FC;
}

void sub_1C059C9FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05A53E0(v8);
    *(v10 + v9) = v8;
  }

  v11 = v8 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  swift_beginAccess();
  *v11 = v3;
  *(v11 + 8) = v6;

  free(v2);
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.strippedVoiceTrigger.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C059CB44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20)) + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C059CBAC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C05A53E0(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  *v8 = v4;
  v8[1] = v3;
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.strippedVoiceTrigger.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05A53E0(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.strippedVoiceTrigger.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C059CDCC;
}

void sub_1C059CDCC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v8 = sub_1C05A53E0(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    *v11 = v3;
    v11[1] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v13 = sub_1C05A53E0(v13);
      *(v15 + v14) = v13;
    }

    v16 = (v13 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    *v16 = v3;
    v16[1] = v5;
  }

  free(v2);
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.invalidVoiceTrigger.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C059CFD4;
}

uint64_t sub_1C059CFEC(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t sub_1C059D040(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05A53E0(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  result = swift_beginAccess();
  *(v10 + v11) = v7;
  return result;
}

uint64_t sub_1C059D0F0(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05A53E0(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  result = swift_beginAccess();
  *(v8 + v9) = a1 & 1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.suggested.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C059D240;
}

void sub_1C059D24C(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v9 = sub_1C05A53E0(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v7;

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.metaDomainAction.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C059D3E4;
}

uint64_t sub_1C059D3FC(uint64_t *a1)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  swift_beginAccess();
}

uint64_t sub_1C059D454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C059D4C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05A53E0(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *(v10 + v11) = v7;
}

uint64_t sub_1C059D580(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C05A53E0(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  swift_beginAccess();
  *(v8 + v9) = a1;
}

void (*Com_Apple_Siri_Product_Proto_ProtoIntent.intentTree.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C059D6DC;
}

void sub_1C059D6E8(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 88);
      v11 = *(v4 + 80);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v9 = sub_1C05A53E0(v9);
      *(v11 + v10) = v9;
    }

    v12 = *a3;
    swift_beginAccess();
    *(v9 + v12) = v5;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v7 + v6);
    if ((v13 & 1) == 0)
    {
      v15 = *(v4 + 88);
      v16 = *(v4 + 80);
      type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
      swift_allocObject();
      v14 = sub_1C05A53E0(v14);
      *(v16 + v15) = v14;
    }

    v17 = *a3;
    swift_beginAccess();
    *(v14 + v17) = v5;
  }

  free(v4);
}

double Com_Apple_Siri_Product_Proto_ProtoIntent.init()@<D0>(uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  if (qword_1EBE15030 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBE15038;

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.languageContainerTopLevelIntents.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.alternativeIntentsIndices.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0) + 32);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_IntentHierarchy.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = sub_1C058BE34(v2);
  a1[2] = sub_1C058C00C(v2);
  a1[3] = sub_1C058BE34(v2);
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntentHierarchy(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_IntegerList.integerValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1C059DC38@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C059DC80()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE175D8);
  __swift_project_value_buffer(v0, qword_1EBE175D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C09711F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "NULL_VALUE_TYPE";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "DOUBLE";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "FLOAT";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "INT";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "LONG";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "STRING";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "DATE_TIME";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SCALAR";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SEMANTIC_TAG";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SEMANTIC_VALUE";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C059E074()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE175F0);
  __swift_project_value_buffer(v0, qword_1EBE175F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C09711F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v5 = "NULL_ORIGIN_TYPE";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "USER_CONTEXT";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "USER_CURRENT";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "USER_INFERRED";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "AGENT_DEFAULT";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "AGENT_DEVICE";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AGENT_DROPPED";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "AGENT_INFERRED";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "AGENT_DERIVED";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AGENT_RELAXED";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C059E46C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17608);
  __swift_project_value_buffer(v0, qword_1EBE17608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MITIGATOR_NOT_SET";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OK";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SORRY";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SILENT";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C059E6F4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17620);
  __swift_project_value_buffer(v0, qword_1EBE17620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "META_DOMAIN_ACTION_NOT_SET";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "READ";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DATA_RESOLUTION_COMPLETED";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_AdjustmentReason.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1C095D50C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_AdjustmentReason.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C095D66C(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C095D66C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C059EB3C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C059EBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17978, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_AdjustmentReason);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C059EC54(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE0FC38, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_AdjustmentReason);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C059ECC0(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE0FC38, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_AdjustmentReason);

  return sub_1C095D5AC();
}

uint64_t sub_1C059ED7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C096E0D0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69D26E0];
  v16 = sub_1C095D6BC();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 11;
  v18[16] = 2;
  v17();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_DerivedOrigin.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C059F060(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
        sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C059F060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  sub_1C05AB400(&qword_1EBE0FC38, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_DerivedOrigin.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v15 = v3;
  sub_1C05149F8(v3 + *(v14 + 24), v6, &qword_1EBE17758, &unk_1C0971240);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE17758, &unk_1C0971240);
    v11 = v17;
  }

  else
  {
    sub_1C05A8A4C(v6, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    sub_1C05AB400(&qword_1EBE0FC38, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    v11 = v17;
    sub_1C095D6AC();
    result = sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    if (v11)
    {
      return result;
    }
  }

  if (!*(*v15 + 16))
  {
    return sub_1C095D36C();
  }

  type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);
  result = sub_1C095D69C();
  if (!v11)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C059F424@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C059F4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17970, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DerivedOrigin);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C059F59C(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE0FC78, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DerivedOrigin);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C059F608(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE0FC78, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DerivedOrigin);

  return sub_1C095D5AC();
}

uint64_t sub_1C059F6A4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17668);
  __swift_project_value_buffer(v0, qword_1EBE17668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "matchingSpan";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "derivedOrigin";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C059FC0C(v5, a1, a2, a3);
        }

        else if (result == 4)
        {
          sub_1C05A01A0(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_1C05AB448(1, v10, v11);
        sub_1C095D45C();
      }

      else if (result == 2)
      {
        sub_1C059FA20(v5, a1, a2, a3);
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C059FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = (a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20));
  sub_1C05149F8(v8, v7, &qword_1EBE17760, &unk_1C099BB10);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v16 = *(v9 - 8);
  v10 = (*(v16 + 48))(v7, 1, v9);
  sub_1C05145B4(v7, &qword_1EBE17760, &unk_1C099BB10);
  if (v10 == 1)
  {
    v11 = v19;
  }

  else
  {
    v11 = v19;
    result = sub_1C095D42C();
    if (v11)
    {
      return result;
    }
  }

  v17 = 0;
  v18 = 0;
  result = sub_1C095D4FC();
  v13 = v18;
  if (v11)
  {
  }

  if (v18)
  {
    v14 = v17;
    sub_1C05145B4(v8, &qword_1EBE17760, &unk_1C099BB10);
    *v8 = v14;
    v8[1] = v13;
    swift_storeEnumTagMultiPayload();
    return (*(v16 + 56))(v8, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1C059FC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v50 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v47 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v41 = v25;
  v25(&v39 - v23, 1, 1, v5);
  v26 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  v45 = a1;
  sub_1C05149F8(a1 + v26, v12, &qword_1EBE17760, &unk_1C099BB10);
  v43 = v14;
  v27 = *(v14 + 48);
  v48 = v13;
  if (v27(v12, 1, v13) == 1)
  {
    v40 = v26;
    sub_1C05145B4(v12, &qword_1EBE17760, &unk_1C099BB10);
    v28 = v49;
    v29 = v51;
  }

  else
  {
    sub_1C05A8A4C(v12, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v32 = v51;
    sub_1C095D42C();
    v29 = v32;
    if (v32)
    {
      sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      goto LABEL_8;
    }

    v40 = v26;
    sub_1C05A8A4C(v19, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v24, &qword_1EBE179C8, &qword_1C0972E60);
      v34 = v42;
      sub_1C05A8A4C(v17, v42, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      sub_1C05A8A4C(v34, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
      v28 = v49;
      v41(v24, 0, 1, v49);
    }

    else
    {
      sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      v28 = v49;
    }
  }

  sub_1C05AB400(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C095D55C();
  if (v29)
  {
LABEL_8:
    v31 = v24;
    return sub_1C05145B4(v31, &qword_1EBE179C8, &qword_1C0972E60);
  }

  v30 = v46;
  sub_1C0575620(v24, v46, &qword_1EBE179C8, &qword_1C0972E60);
  if ((*(v47 + 48))(v30, 1, v28) != 1)
  {
    v35 = v44;
    sub_1C05A8A4C(v30, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    v36 = v45;
    v37 = v40;
    sub_1C05145B4(v45 + v40, &qword_1EBE17760, &unk_1C099BB10);
    sub_1C05A8A4C(v35, v36 + v37, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    v38 = v48;
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v36 + v37, 0, 1, v38);
  }

  v31 = v30;
  return sub_1C05145B4(v31, &qword_1EBE179C8, &qword_1C0972E60);
}

uint64_t sub_1C05A01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v50 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179D0, &qword_1C0972E68);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v47 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v41 = v25;
  v25(&v39 - v23, 1, 1, v5);
  v26 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0) + 20);
  v45 = a1;
  sub_1C05149F8(a1 + v26, v12, &qword_1EBE17760, &unk_1C099BB10);
  v43 = v14;
  v27 = *(v14 + 48);
  v48 = v13;
  if (v27(v12, 1, v13) == 1)
  {
    v40 = v26;
    sub_1C05145B4(v12, &qword_1EBE17760, &unk_1C099BB10);
    v28 = v49;
    v29 = v51;
  }

  else
  {
    sub_1C05A8A4C(v12, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v32 = v51;
    sub_1C095D42C();
    v29 = v32;
    if (v32)
    {
      sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      goto LABEL_8;
    }

    v40 = v26;
    sub_1C05A8A4C(v19, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C05145B4(v24, &qword_1EBE179D0, &qword_1C0972E68);
      v34 = v42;
      sub_1C05A8A4C(v17, v42, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
      sub_1C05A8A4C(v34, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
      v28 = v49;
      v41(v24, 0, 1, v49);
    }

    else
    {
      sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      v28 = v49;
    }
  }

  sub_1C05AB400(&qword_1EBE0FC78, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  sub_1C095D55C();
  if (v29)
  {
LABEL_8:
    v31 = v24;
    return sub_1C05145B4(v31, &qword_1EBE179D0, &qword_1C0972E68);
  }

  v30 = v46;
  sub_1C0575620(v24, v46, &qword_1EBE179D0, &qword_1C0972E68);
  if ((*(v47 + 48))(v30, 1, v28) != 1)
  {
    v35 = v44;
    sub_1C05A8A4C(v30, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    v36 = v45;
    v37 = v40;
    sub_1C05145B4(v45 + v40, &qword_1EBE17760, &unk_1C099BB10);
    sub_1C05A8A4C(v35, v36 + v37, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    v38 = v48;
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v36 + v37, 0, 1, v38);
  }

  v31 = v30;
  return sub_1C05145B4(v31, &qword_1EBE179D0, &qword_1C0972E68);
}

uint64_t Com_Apple_Siri_Product_Proto_Origin.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v15 = &v21 - v14;
  if (*v3)
  {
    v16 = *(v3 + 8);
    v21 = *v3;
    v22 = v16;
    sub_1C05AB448(v11, v12, v13);
    result = sub_1C095D60C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(v6 + *(v18 + 20), v15, &qword_1EBE17760, &unk_1C099BB10);
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v19 - 8) + 48))(v15, 1, v19) == 1)
  {
    return sub_1C095D36C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C0594D2C(v15, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    result = sub_1C05A095C(v6, a1, a2, a3);
    if (v5)
    {
      return result;
    }

    return sub_1C095D36C();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C05A0ADC(v6, a1, a2, a3);
  }

  else
  {
    sub_1C05A0D20(v6, a1, a2, a3);
  }

  result = sub_1C0594D2C(v15, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  if (!v5)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(a1 + *(v8 + 20), v7, &qword_1EBE17760, &unk_1C099BB10);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17760, &unk_1C099BB10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C095D66C();
  }

  result = sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  __break(1u);
  return result;
}

uint64_t sub_1C05A0ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(a1 + *(v11 + 20), v7, &qword_1EBE17760, &unk_1C099BB10);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17760, &unk_1C099BB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C05A8A4C(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    sub_1C05AB400(&qword_1EBE0FC90, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    sub_1C095D6AC();
    return sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  }

  result = sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  __break(1u);
  return result;
}

uint64_t sub_1C05A0D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(a1 + *(v11 + 20), v7, &qword_1EBE17760, &unk_1C099BB10);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17760, &unk_1C099BB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C05A8A4C(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    sub_1C05AB400(&qword_1EBE0FC78, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    sub_1C095D6AC();
    return sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
  }

  result = sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  __break(1u);
  return result;
}

uint64_t sub_1C05A0FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05A1084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17968, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Origin);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A1124(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE153F8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Origin);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A1190(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE153F8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Origin);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_OriginalElementValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C095D44C();
    }

    else if (result == 2)
    {
      sub_1C095D50C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_OriginalElementValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C095D5FC(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C095D66C(), !v4))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t sub_1C05A1404@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05A147C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17960, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_OriginalElementValue);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A151C(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE15090, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_OriginalElementValue);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A1588(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE15090, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_OriginalElementValue);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A1624()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17698);
  __swift_project_value_buffer(v0, qword_1EBE17698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "semanticTags";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "origin";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originalValue";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "valueType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "value";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C095D4BC();
        }

        else if (result == 2)
        {
          sub_1C05A1A08(a1, v5, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1C05A1ABC(a1, v5, a2, a3);
            break;
          case 4:
            sub_1C05AB49C(4, v10, v11);
            sub_1C095D45C();
            break;
          case 5:
            sub_1C05A1B70(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05A1A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05AB400(&qword_1EBE153F8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Origin);
  return sub_1C095D55C();
}

uint64_t sub_1C05A1ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  sub_1C05AB400(&qword_1EBE15090, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  return sub_1C095D55C();
}

uint64_t sub_1C05A1B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  sub_1C05AB400(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_ElementValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v32 - v9;
  v38 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + 16))
  {
    result = sub_1C095D64C();
    if (v4)
    {
      return result;
    }

    v35 = a2;
    v36 = a3;
    v5 = 0;
  }

  else
  {
    v35 = a2;
    v36 = a3;
  }

  v39 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  sub_1C05149F8(v3 + v39[7], v18, &qword_1EBE17768, &unk_1C0971250);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1C05145B4(v18, &qword_1EBE17768, &unk_1C0971250);
  }

  else
  {
    sub_1C05A8A4C(v18, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C05AB400(&qword_1EBE153F8, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C095D6AC();
    result = sub_1C0594D2C(v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    if (v5)
    {
      return result;
    }
  }

  sub_1C05149F8(v3 + v39[8], v13, &qword_1EBE17770, &unk_1C099BB00);
  if ((*(v40 + 48))(v13, 1, v41) == 1)
  {
    result = sub_1C05145B4(v13, &qword_1EBE17770, &unk_1C099BB00);
  }

  else
  {
    v26 = v34;
    sub_1C05A8A4C(v13, v34, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    sub_1C05AB400(&qword_1EBE15090, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    sub_1C095D6AC();
    result = sub_1C0594D2C(v26, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
    if (v5)
    {
      return result;
    }
  }

  v28 = v37;
  v27 = v38;
  if (!*(v3 + 8) || (v29 = *(v3 + 16), v42 = *(v3 + 8), v43 = v29, sub_1C05AB49C(result, v24, v25), result = sub_1C095D60C(), !v5))
  {
    sub_1C05149F8(v3 + v39[9], v28, &qword_1EBE17778, &unk_1C0971260);
    if ((*(v33 + 48))(v28, 1, v27) == 1)
    {
      sub_1C05145B4(v28, &qword_1EBE17778, &unk_1C0971260);
    }

    else
    {
      v30 = v28;
      v31 = v32;
      sub_1C05A8A4C(v30, v32, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
      sub_1C05AB400(&qword_1EBE15438, type metadata accessor for Com_Apple_Siri_Product_Proto_Value, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Value);
      sub_1C095D6AC();
      result = sub_1C0594D2C(v31, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
      if (v5)
      {
        return result;
      }
    }

    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A2328@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[7];
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C05A2498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17958, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ElementValue);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A2538(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE151F8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ElementValue);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A25A4(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE151F8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ElementValue);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_TerminalElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
        sub_1C05AB400(&qword_1EBE151F8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ElementValue);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_TerminalElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0), sub_1C05AB400(&qword_1EBE151F8, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ElementValue), result = sub_1C095D69C(), !v4))
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A28D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17950, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A2970(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A29DC(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A2A8C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE176C8);
  __swift_project_value_buffer(v0, qword_1EBE176C8);
  return sub_1C095D6DC();
}

uint64_t Com_Apple_Siri_Product_Proto_NonTerminalElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1C095D41C();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_1C05A2BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17948, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NonTerminalElement);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A2C90(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NonTerminalElement);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A2CFC(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NonTerminalElement);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A2D78(uint64_t a1, uint64_t a2)
{
  sub_1C095D38C();
  sub_1C05AB400(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05A2E1C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE176E0);
  __swift_project_value_buffer(v0, qword_1EBE176E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ontologyNodeName";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultIds";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "terminalElement";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nonTerminalElement";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Element.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1C05A3164(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_1C05A36F8(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1C095D50C();
    }

    else if (result == 2)
    {
      sub_1C095D4BC();
    }
  }

  return result;
}

uint64_t sub_1C05A3164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v50 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17998, &qword_1C0972E30);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v47 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v41 = v25;
  v25(&v39 - v23, 1, 1, v5);
  v26 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  v45 = a1;
  sub_1C05149F8(a1 + v26, v12, &qword_1EBE16E00, &qword_1C099BAE0);
  v43 = v14;
  v27 = *(v14 + 48);
  v48 = v13;
  if (v27(v12, 1, v13) == 1)
  {
    v40 = v26;
    sub_1C05145B4(v12, &qword_1EBE16E00, &qword_1C099BAE0);
    v28 = v49;
    v29 = v51;
  }

  else
  {
    sub_1C05A8A4C(v12, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    v32 = v51;
    sub_1C095D42C();
    v29 = v32;
    if (v32)
    {
      sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      goto LABEL_8;
    }

    v40 = v26;
    sub_1C05A8A4C(v19, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v28 = v49;
    }

    else
    {
      sub_1C05145B4(v24, &qword_1EBE17998, &qword_1C0972E30);
      v38 = v42;
      sub_1C05A8A4C(v17, v42, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      sub_1C05A8A4C(v38, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      v28 = v49;
      v41(v24, 0, 1, v49);
    }
  }

  sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);
  sub_1C095D55C();
  if (v29)
  {
LABEL_8:
    v31 = v24;
    return sub_1C05145B4(v31, &qword_1EBE17998, &qword_1C0972E30);
  }

  v30 = v46;
  sub_1C0575620(v24, v46, &qword_1EBE17998, &qword_1C0972E30);
  if ((*(v47 + 48))(v30, 1, v28) != 1)
  {
    v34 = v44;
    sub_1C05A8A4C(v30, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v35 = v45;
    v36 = v40;
    sub_1C05145B4(v45 + v40, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05A8A4C(v34, v35 + v36, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v37 = v48;
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v35 + v36, 0, 1, v37);
  }

  v31 = v30;
  return sub_1C05145B4(v31, &qword_1EBE17998, &qword_1C0972E30);
}

uint64_t sub_1C05A36F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v50 = a2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179A0, &qword_1C0972E38);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v46 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v47 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v41 = v25;
  v25(&v39 - v23, 1, 1, v5);
  v26 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0) + 24);
  v45 = a1;
  sub_1C05149F8(a1 + v26, v12, &qword_1EBE16E00, &qword_1C099BAE0);
  v43 = v14;
  v27 = *(v14 + 48);
  v48 = v13;
  if (v27(v12, 1, v13) == 1)
  {
    v40 = v26;
    sub_1C05145B4(v12, &qword_1EBE16E00, &qword_1C099BAE0);
    v28 = v49;
    v29 = v51;
  }

  else
  {
    sub_1C05A8A4C(v12, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    v32 = v51;
    sub_1C095D42C();
    v29 = v32;
    if (v32)
    {
      sub_1C0594D2C(v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      goto LABEL_8;
    }

    v40 = v26;
    sub_1C05A8A4C(v19, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v24, &qword_1EBE179A0, &qword_1C0972E38);
      v34 = v42;
      sub_1C05A8A4C(v17, v42, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
      sub_1C05A8A4C(v34, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
      v28 = v49;
      v41(v24, 0, 1, v49);
    }

    else
    {
      sub_1C0594D2C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v28 = v49;
    }
  }

  sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  sub_1C095D55C();
  if (v29)
  {
LABEL_8:
    v31 = v24;
    return sub_1C05145B4(v31, &qword_1EBE179A0, &qword_1C0972E38);
  }

  v30 = v46;
  sub_1C0575620(v24, v46, &qword_1EBE179A0, &qword_1C0972E38);
  if ((*(v47 + 48))(v30, 1, v28) != 1)
  {
    v35 = v44;
    sub_1C05A8A4C(v30, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    v36 = v45;
    v37 = v40;
    sub_1C05145B4(v45 + v40, &qword_1EBE16E00, &qword_1C099BAE0);
    sub_1C05A8A4C(v35, v36 + v37, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    v38 = v48;
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v36 + v37, 0, 1, v38);
  }

  v31 = v30;
  return sub_1C05145B4(v31, &qword_1EBE179A0, &qword_1C0972E38);
}

uint64_t Com_Apple_Siri_Product_Proto_Element.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = v3[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_1C095D66C(), !v4))
  {
    if (!*(v3[2] + 16) || (result = sub_1C095D64C(), !v4))
    {
      v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
      sub_1C05149F8(v5 + *(v15 + 24), v11, &qword_1EBE16E00, &qword_1C099BAE0);
      v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
      if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
      {
        return sub_1C095D36C();
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C05A40D0(v5, a1, a2, a3);
      }

      else
      {
        sub_1C05A3E8C(v5, a1, a2, a3);
      }

      result = sub_1C0594D2C(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      if (!v4)
      {
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t sub_1C05A3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(a1 + *(v11 + 24), v7, &qword_1EBE16E00, &qword_1C099BAE0);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16E00, &qword_1C099BAE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C05A8A4C(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    sub_1C05AB400(&qword_1EBE15110, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_TerminalElement);
    sub_1C095D6AC();
    return sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
  }

  result = sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t sub_1C05A40D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05149F8(a1 + *(v11 + 24), v7, &qword_1EBE16E00, &qword_1C099BAE0);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16E00, &qword_1C099BAE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C05A8A4C(v7, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    sub_1C05AB400(&qword_1EBE150B0, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
    sub_1C095D6AC();
    return sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_NonTerminalElement);
  }

  result = sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t sub_1C05A4360@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05A440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C05A4480(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C05A4548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17940, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Element);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A45E8(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Element);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A4654(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Element);

  return sub_1C095D5AC();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C05A47C4(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C095D48C();
    }
  }

  return result;
}

uint64_t sub_1C05A47C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Element);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_IntentNode.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0) + 24);
  v15 = v3;
  sub_1C05149F8(v3 + v11, v6, &qword_1EBE16E10, &unk_1C0971270);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE16E10, &unk_1C0971270);
    v12 = v18;
  }

  else
  {
    sub_1C05A8A4C(v6, v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    sub_1C05AB400(&qword_1EBE153B8, type metadata accessor for Com_Apple_Siri_Product_Proto_Element, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_Element);
    v12 = v18;
    sub_1C095D6AC();
    result = sub_1C0594D2C(v10, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
    if (v12)
    {
      return result;
    }
  }

  if (!*v15)
  {
    return sub_1C095D36C();
  }

  result = sub_1C095D62C();
  if (!v12)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A4B30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C05A4C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17938, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentNode);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A4CA0(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentNode);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A4D0C(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentNode);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A4DA8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17710);
  __swift_project_value_buffer(v0, qword_1EBE17710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C0971230;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "score";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v36 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "originalInput";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v36 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "allWordsMatched";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v36 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "primary";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v36 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "usingExplicitInput";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v36 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "intentRank";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v36 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "NERBasedParse";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v36 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "intentId";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v36 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "nlState";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "mitigatorClassification";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v8();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "strippedVoiceTrigger";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "invalidVoiceTrigger";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v8();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "suggested";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "metaDomainAction";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "intentTree";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C05A52B0()
{
  type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
  swift_allocObject();
  result = sub_1C05A52F0();
  qword_1EBE15038 = result;
  return result;
}

uint64_t sub_1C05A52F0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 42) = 0;
  *(v0 + 44) = 0;
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  v1 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree) = v5;
  return v0;
}

uint64_t sub_1C05A53E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v38 - v4;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 42) = 0;
  *(v1 + 44) = 0;
  v39 = (v1 + 44);
  *(v1 + 48) = 0;
  v40 = (v1 + 48);
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 52) = 0;
  v41 = (v1 + 52);
  v5 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  v43 = v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v44 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger) = 0;
  v45 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested) = 0;
  v46 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction) = MEMORY[0x1E69E7CC0];
  v47 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  *(v1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree) = v9;
  swift_beginAccess();
  v10 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v10;
  swift_beginAccess();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v11;
  *(v1 + 32) = v12;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v11;
  swift_beginAccess();
  v13 = *(a1 + 41);
  swift_beginAccess();
  *(v1 + 41) = v13;
  swift_beginAccess();
  v14 = *(a1 + 42);
  swift_beginAccess();
  *(v1 + 42) = v14;
  swift_beginAccess();
  v15 = *(a1 + 44);
  v16 = v39;
  swift_beginAccess();
  *v16 = v15;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 48);
  v17 = v40;
  swift_beginAccess();
  *v17 = v16;
  swift_beginAccess();
  LODWORD(v16) = *(a1 + 52);
  v18 = v41;
  swift_beginAccess();
  *v18 = v16;
  v19 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  v20 = v42;
  sub_1C05149F8(a1 + v19, v42, &qword_1EBE17780, &qword_1C0999E30);
  swift_beginAccess();

  sub_1C051F9D4(v20, v1 + v5, &qword_1EBE17780, &qword_1C0999E30);
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification);
  swift_beginAccess();
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  v23 = v43;
  swift_beginAccess();
  *v23 = v22;
  *(v23 + 8) = v21;
  v24 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v8 = v26;
  v8[1] = v25;

  v27 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + v27);
  v28 = v44;
  swift_beginAccess();
  *(v1 + v28) = v27;
  v29 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);
  v30 = v45;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v46;
  swift_beginAccess();
  *(v1 + v33) = v32;

  v34 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  swift_beginAccess();
  v35 = *(a1 + v34);

  v36 = v47;
  swift_beginAccess();
  *(v1 + v36) = v35;

  return v1;
}

uint64_t sub_1C05A5950()
{

  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState, &qword_1EBE17780, &qword_1C0999E30);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C05A53E0(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C05A5AA8(v10, a1, a2, a3);
}

uint64_t sub_1C05A5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_1C05A5CE8(a2, a1, a3, a4);
          break;
        case 2:
          sub_1C05A5D6C(a2, a1, a3, a4);
          break;
        case 4:
          sub_1C05A5DF0(a2, a1, a3, a4);
          break;
        case 5:
          sub_1C05A5E74(a2, a1, a3, a4);
          break;
        case 6:
          sub_1C05A5EF8(a2, a1, a3, a4);
          break;
        case 7:
          sub_1C05A5F7C(a2, a1, a3, a4);
          break;
        case 8:
          sub_1C05A6000(a2, a1, a3, a4);
          break;
        case 9:
          sub_1C05A6084(a2, a1, a3, a4);
          break;
        case 10:
          sub_1C05A6108(a2, a1, a3, a4);
          break;
        case 11:
          sub_1C05A61E4(a2, a1, a3, a4);
          break;
        case 12:
          sub_1C05A6280(a2, a1, a3, a4);
          break;
        case 13:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
          goto LABEL_14;
        case 14:
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
LABEL_14:
          sub_1C05516B8(v11, v12, v13, v14, v15);
          break;
        case 15:
          sub_1C05A630C(a2, a1, a3, a4);
          break;
        case 16:
          sub_1C05A63A8(a2, a1, a3, a4);
          break;
        default:
          break;
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C05A5CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D4EC();
  return swift_endAccess();
}

uint64_t sub_1C05A5D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C05A5DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D52C();
  return swift_endAccess();
}

uint64_t sub_1C05A6000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C05A6084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D52C();
  return swift_endAccess();
}

uint64_t sub_1C05A6108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  sub_1C05AB400(&qword_1EBE0FDA0, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NLState);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05A61E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1C05AD7FC(v4, v5, v6);
  sub_1C095D45C();
  return swift_endAccess();
}

uint64_t sub_1C05A6280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D50C();
  return swift_endAccess();
}

uint64_t sub_1C05A630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1C05AD7A8(v4, v5, v6);
  sub_1C095D43C();
  return swift_endAccess();
}

uint64_t sub_1C05A63A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentNode);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_ProtoIntent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  result = sub_1C05A64F0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C05A64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v38 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16) == 0.0)
  {
    v13 = a4;
  }

  else
  {
    result = sub_1C095D65C();
    if (v4)
    {
      return result;
    }

    v13 = a4;
    v5 = 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 32);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_1C095D66C();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 40) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 41) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 42) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 44))
  {
    result = sub_1C095D67C();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 52))
  {
    result = sub_1C095D67C();
    if (v5)
    {
      return result;
    }

    v34 = v13;
    v5 = 0;
  }

  else
  {
    v34 = v13;
  }

  v17 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(a1 + v17, v10, &qword_1EBE17780, &qword_1C0999E30);
  if ((*(v35 + 48))(v10, 1, v38) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE17780, &qword_1C0999E30);
  }

  else
  {
    sub_1C05A8A4C(v10, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C05AB400(&qword_1EBE0FDA0, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C095D6AC();
    result = sub_1C0594D2C(v12, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v18 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification);
  v19 = swift_beginAccess();
  if (*v18)
  {
    v22 = *(v18 + 8);
    v36 = *v18;
    v37 = v22;
    sub_1C05AD7FC(v19, v20, v21);
    result = sub_1C095D60C();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v23 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1C095D66C();

    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v27 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
  swift_beginAccess();
  if (*(a1 + v27) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v28 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
  swift_beginAccess();
  if (*(a1 + v28) == 1)
  {
    result = sub_1C095D5FC();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v29 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
  v30 = swift_beginAccess();
  if (!*(*(a1 + v29) + 16) || (sub_1C05AD7A8(v30, v31, v32), , sub_1C095D5DC(), result = , !v5))
  {
    v33 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
    result = swift_beginAccess();
    if (*(*(a1 + v33) + 16))
    {
      type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
      sub_1C05AB400(&qword_1EBE152B8, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_IntentNode);

      sub_1C095D69C();
    }
  }

  return result;
}

uint64_t sub_1C05A6BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17990, &qword_1C0972E28);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v59 - v15;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  if (v17 != *(a2 + 16))
  {
    goto LABEL_19;
  }

  v60 = v5;
  v61 = v10;
  swift_beginAccess();
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  swift_beginAccess();
  if ((v19 != *(a2 + 24) || v18 != *(a2 + 32)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v20 = *(a1 + 40);
  swift_beginAccess();
  if (v20 != *(a2 + 40))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v21 = *(a1 + 41);
  swift_beginAccess();
  if (v21 != *(a2 + 41))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v22 = *(a1 + 42);
  swift_beginAccess();
  if (v22 != *(a2 + 42))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v23 = *(a1 + 44);
  swift_beginAccess();
  if (v23 != *(a2 + 44))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v24 = *(a1 + 48);
  swift_beginAccess();
  if (v24 != *(a2 + 48))
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v25 = *(a1 + 52);
  swift_beginAccess();
  if (v25 != *(a2 + 52))
  {
    goto LABEL_19;
  }

  v26 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  sub_1C05149F8(a1 + v26, v16, &qword_1EBE17780, &qword_1C0999E30);
  v27 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
  swift_beginAccess();
  v28 = *(v8 + 48);
  v29 = v61;
  sub_1C05149F8(v16, v61, &qword_1EBE17780, &qword_1C0999E30);
  v59 = v28;
  sub_1C05149F8(a2 + v27, v29 + v28, &qword_1EBE17780, &qword_1C0999E30);
  v30 = *(v60 + 48);
  if (v30(v29, 1, v4) == 1)
  {

    sub_1C05145B4(v16, &qword_1EBE17780, &qword_1C0999E30);
    v31 = v61;
    v32 = v30(&v61[v59], 1, v4) == 1;
    v33 = v31;
    if (!v32)
    {
      goto LABEL_17;
    }

    sub_1C05145B4(v31, &qword_1EBE17780, &qword_1C0999E30);
LABEL_22:
    v40 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
    swift_beginAccess();
    v41 = *(a1 + v40);
    v42 = a2 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification;
    swift_beginAccess();
    v43 = *v42;
    if (*(v42 + 8) == 1)
    {
      if (v43 > 1)
      {
        if (v43 == 2)
        {
          if (v41 != 2)
          {
            goto LABEL_18;
          }
        }

        else if (v41 != 3)
        {
          goto LABEL_18;
        }
      }

      else if (v43)
      {
        if (v41 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v41)
      {
        goto LABEL_18;
      }
    }

    else if (v41 != v43)
    {
      goto LABEL_18;
    }

    v44 = (a1 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    v45 = *v44;
    v46 = v44[1];
    v47 = (a2 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
    swift_beginAccess();
    if (v45 == *v47 && v46 == v47[1] || (sub_1C095DF3C() & 1) != 0)
    {
      v48 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
      swift_beginAccess();
      LODWORD(v48) = *(a1 + v48);
      v49 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
      swift_beginAccess();
      if (v48 == *(a2 + v49))
      {
        v50 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
        swift_beginAccess();
        LODWORD(v50) = *(a1 + v50);
        v51 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
        swift_beginAccess();
        if (v50 == *(a2 + v51))
        {
          v52 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
          swift_beginAccess();
          v53 = *(a1 + v52);
          v54 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
          swift_beginAccess();
          if (sub_1C0563790(v53, *(a2 + v54)))
          {
            v55 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
            swift_beginAccess();
            v56 = *(a1 + v55);
            v57 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
            swift_beginAccess();
            v58 = *(a2 + v57);

            v35 = sub_1C0563820(v56, v58);

            return v35 & 1;
          }
        }
      }
    }

    goto LABEL_18;
  }

  v34 = v61;
  sub_1C05149F8(v61, v14, &qword_1EBE17780, &qword_1C0999E30);
  if (v30((v34 + v59), 1, v4) != 1)
  {
    v37 = v61;
    sub_1C05A8A4C(&v61[v59], v7, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);

    v39 = static Com_Apple_Siri_Product_Proto_NLState.== infix(_:_:)(v14, v7, v38);
    sub_1C0594D2C(v7, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C05145B4(v16, &qword_1EBE17780, &qword_1C0999E30);
    sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
    sub_1C05145B4(v37, &qword_1EBE17780, &qword_1C0999E30);
    if ((v39 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  sub_1C05145B4(v16, &qword_1EBE17780, &qword_1C0999E30);
  sub_1C0594D2C(v14, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
  v33 = v61;
LABEL_17:
  sub_1C05145B4(v33, &qword_1EBE17990, &qword_1C0972E28);
LABEL_18:

LABEL_19:
  v35 = 0;
  return v35 & 1;
}

double sub_1C05A7470@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_1EBE15030 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EBE15038;

  return result;
}

uint64_t sub_1C05A7534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C05AB400(&qword_1EBE17930, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ProtoIntent);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05A75D4(uint64_t a1)
{
  v2 = sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ProtoIntent);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C05A7640(uint64_t a1, uint64_t a2)
{
  sub_1C05AB400(&qword_1EBE14FF0, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent, &protocol conformance descriptor for Com_Apple_Siri_Product_Proto_ProtoIntent);

  return sub_1C095D5AC();
}

uint64_t sub_1C05A76DC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE17728);
  __swift_project_value_buffer(v0, qword_1EBE17728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "intents";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "languageContainerTopLevelIntents";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previousIntentsIndices";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "alternativeIntentsIndices";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}