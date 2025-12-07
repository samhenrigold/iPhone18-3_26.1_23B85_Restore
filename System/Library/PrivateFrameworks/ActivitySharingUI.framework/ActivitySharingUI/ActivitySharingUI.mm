id SmallCapsFontForFont(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277D74338];
  v1 = *MEMORY[0x277D74388];
  v14 = *MEMORY[0x277D74398];
  v15 = v1;
  v16 = &unk_2850F9C40;
  v17 = &unk_2850F9C58;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:&v16 forKeys:&v14 count:2];
  v18 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:{1, v14, v15, v16, v17}];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v7 = [v3 fontDescriptor];
  v8 = [v7 fontDescriptorByAddingAttributes:v6];

  v9 = MEMORY[0x277D74300];
  [v3 pointSize];
  v11 = v10;

  v12 = [v9 fontWithDescriptor:v8 size:v11];

  return v12;
}

void sub_23E6A0B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E6A118C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ASActivitySummaryGoalFormatString()
{
  v0 = ActivitySharingBundle();
  v1 = [v0 localizedStringForKey:@"LIST_VIEW_GOAL_FORMAT_WITH_UNITS_%@_%@_%@" value:&stru_2850F6650 table:@"Localizable"];

  return v1;
}

uint64_t sub_23E6A16DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E6A16FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23E6A1730(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Reply(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23E6A17DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Reply(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E6A1880()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23E6A18D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Reply(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23E6A197C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Reply(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E6A1A20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Reply(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23E6A1ACC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Reply(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E6A1B70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Reply(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23E6A1C1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Reply(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E6A1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23E6C32C4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23E6C3274();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23E6A1DE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23E6C32C4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23E6C3274();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23E6A1F08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23E6A1F64(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_23E6A1FC8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_fittingSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_23E6A2020(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_fittingSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_23E6A2078(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Reply(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_23E6A2124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Reply(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23E6A21C8()
{

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

void _DrawPathWithColor(CGContext *a1, const CGPath *a2, void *a3)
{
  v5 = a3;
  CGContextSaveGState(a1);
  v6 = [v5 CGColor];

  CGContextSetFillColorWithColor(a1, v6);
  CGContextAddPath(a1, a2);
  CGContextDrawPath(a1, kCGPathFill);

  CGContextRestoreGState(a1);
}

void sub_23E6A53A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23E6A69E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E6A6C84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23E6A7D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23E6A8A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void ASLaunchToMessagesWithRecipients(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 componentsJoinedByString:{@", "}];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"sms://open?recipients=%@&allowRetargeting=true", v1];
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&dword_23E69E000, v3, OS_LOG_TYPE_DEFAULT, "Launching to messages app. URL String is %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  [v4 openURL:v5 options:MEMORY[0x277CBEC10] completionHandler:0];
}

__CFString *ASBreadcrumbKeyForBulletinType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = @"GOAL_COMPLETION_BREADCRUMB";
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        v6 = a1 == 2;
        v7 = @"WORKOUT_BREADCRUMB";
        goto LABEL_8;
      }

      ASLoggingInitialize();
      v8 = *MEMORY[0x277CE8FF8];
      if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
      {
        ASBreadcrumbKeyForBulletinType_cold_2(v8);
      }

      goto LABEL_20;
    }

    if (a1 == 3)
    {
      v5 = @"ACHIEVEMENT_BREADCRUMB";
      goto LABEL_25;
    }

LABEL_15:
    v5 = @"COMPETITION_IN_PROGRESS_BREADCRUMB";
    goto LABEL_25;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      v6 = a1 == 6;
      v7 = @"COMPETITION_ACCEPT_BREADCRUMB";
LABEL_8:
      if (v6)
      {
        v5 = v7;
      }

      goto LABEL_25;
    }

    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      ASBreadcrumbKeyForBulletinType_cold_1(v9);
    }

LABEL_20:
    v5 = 0;
    goto LABEL_25;
  }

  if (a1 != 7)
  {
    if (a1 != 8)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v10 = [v3 isScoreTied];
  v11 = @"COMPETITION_END_BREADCRUMB";
  if (v10)
  {
    v11 = @"COMPETITION_TIE_BREADCRUMB";
  }

  v5 = v11;
LABEL_25:

  return v5;
}

id MessageBubbleBackgroundPlatter()
{
  if (MessageBubbleBackgroundPlatter_onceToken != -1)
  {
    MessageBubbleBackgroundPlatter_cold_1();
  }

  v0 = [MessageBubbleBackgroundPlatter_imageCache objectForKey:@"MessageBubbleBackgroundPlatter"];
  if (!v0)
  {
    v6.width = 30.0;
    v6.height = 30.0;
    UIGraphicsBeginImageContextWithOptions(v6, 0, 0.0);
    v1 = [MEMORY[0x277D75348] as_competitionNotificationAccentGold];
    [v1 setFill];

    v2 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 30.0, 30.0, 15.0}];
    [v2 fill];
    v0 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (v0)
    {
      [MessageBubbleBackgroundPlatter_imageCache setObject:v0 forKey:@"MessageBubbleBackgroundPlatter"];
    }
  }

  v3 = v0;

  return v3;
}

uint64_t __MessageBubbleBackgroundPlatter_block_invoke()
{
  MessageBubbleBackgroundPlatter_imageCache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

id _ASCompetitionEndedWinnerSuffixForFriend(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 currentOrMostRecentCompetition];
  v5 = v4;
  if (a2 == 1)
  {
    v6 = [v4 daysWonByParticipant:0];
    v7 = [v6 count];

    if (v7 < 6)
    {
      if (ASCompetitionScoresAreWithinClosenessThreshold())
      {
        v8 = MEMORY[0x277CE8F20];
      }

      else if (ASDidLosePreviousCompetitionWithFriend())
      {
        v8 = MEMORY[0x277CE8F38];
      }

      else
      {
        v13 = ASCompetitionDayWithHighestScoreForParticipant();

        if (v13)
        {
          v8 = MEMORY[0x277CE8F18];
        }

        else
        {
          v8 = MEMORY[0x277CE8F28];
        }
      }
    }

    else
    {
      v8 = MEMORY[0x277CE8F40];
    }
  }

  else
  {
    v9 = ASCompetitionScoresAreWithinClosenessThreshold();
    v8 = MEMORY[0x277CE8F20];
    if (!v9)
    {
      v8 = MEMORY[0x277CE8F28];
    }
  }

  v10 = *v8;
  v11 = *v8;

  return v10;
}

id _ASCompetitionEndedLoserSuffixForFriend(void *a1, uint64_t a2)
{
  v3 = [a1 currentOrMostRecentCompetition];
  v4 = ASCompetitionScoresAreWithinClosenessThreshold();
  if (a2 == 1)
  {
    if (v4)
    {
      v5 = MEMORY[0x277CE8F20];
    }

    else
    {
      v6 = ASCompetitionWinningDayWithHighestScoreForParticipant();

      if (v6)
      {
        v5 = MEMORY[0x277CE8F58];
      }

      else
      {
        v7 = ASCompetitionDayWithHighestScoreForParticipant();

        if (v7)
        {
          v5 = MEMORY[0x277CE8F18];
        }

        else
        {
          v5 = MEMORY[0x277CE8F28];
        }
      }
    }
  }

  else
  {
    v5 = MEMORY[0x277CE8F20];
    if (!v4)
    {
      v5 = MEMORY[0x277CE8F28];
    }
  }

  v8 = *v5;
  v9 = *v5;

  return v8;
}

id _ASCompetitionEndedKeyForFriend(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 currentOrMostRecentCompetition];
  v5 = *MEMORY[0x277CE8F10];
  if ([v4 isScoreTied])
  {
    v6 = [v5 stringByAppendingString:*MEMORY[0x277CE8F48]];
  }

  else
  {
    if ([v4 isParticipantWinning:0])
    {
      v7 = [v5 stringByAppendingString:*MEMORY[0x277CE8F50]];
      _ASCompetitionEndedWinnerSuffixForFriend(v3, a2);
    }

    else
    {
      v7 = [v5 stringByAppendingString:*MEMORY[0x277CE8F30]];
      _ASCompetitionEndedLoserSuffixForFriend(v3, a2);
    }
    v8 = ;
    v6 = [v7 stringByAppendingString:v8];
  }

  return v6;
}

id ASCompetitionEndedDemoKey()
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v2 = [v1 stringForKey:@"CompetitionEndDescription"];

  return v2;
}

id ASCompetitionEndedDescriptionForFriend(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 currentOrMostRecentCompetition];
  v5 = ASCompetitionEndedDemoKey();
  if (v5)
  {
    ASLoggingInitialize();
    v6 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_23E69E000, v6, OS_LOG_TYPE_DEFAULT, "Found Competition End Description Key in user defaults: %@", &v24, 0xCu);
    }

    v7 = ActivitySharingBundle();
    v8 = [v7 localizedStringForKey:v5 value:&stru_2850F6650 table:0];
  }

  else
  {
    v7 = _ASCompetitionEndedKeyForFriend(v3, a2);
    v9 = ActivitySharingBundle();
    v10 = FILocalizationTableForExperienceType();
    v8 = FIRandomStringForPrefixWithTableName();
  }

  v11 = [v3 contact];

  v12 = [v11 displayName];

  v13 = [v4 daysWonByParticipant:0];
  [v13 count];
  v14 = FILocalizeCount();

  v15 = ASCompetitionDayWithHighestScoreForParticipant();
  v16 = FILocalizedDayName();
  v17 = ASCompetitionWinningDayWithHighestScoreForParticipant();
  v18 = FILocalizedDayName();
  if (v12)
  {
    v19 = [v8 stringByReplacingOccurrencesOfString:@"<friend-name>" withString:v12];

    v8 = v19;
  }

  if (v14)
  {
    v20 = [v8 stringByReplacingOccurrencesOfString:@"<num-days>" withString:v14];

    v8 = v20;
  }

  v21 = FIStringByReplacingDynamicPlaceholder();

  v22 = FIStringByReplacingDynamicPlaceholder();

  return v22;
}

id ASCompetitionEndedTitleForFriend(void *a1)
{
  v1 = [a1 currentOrMostRecentCompetition];
  if ([v1 isScoreTied])
  {
    v2 = ActivitySharingBundle();
    v3 = v2;
    v4 = @"COMPETITION_ENDED_TIED";
  }

  else
  {
    v5 = [v1 isParticipantWinning:0];
    v2 = ActivitySharingBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"COMPETITION_ENDED_WINNER";
    }

    else
    {
      v4 = @"COMPETITION_ENDED_LOSER";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_2850F6650 table:@"Localizable"];

  return v6;
}

id ASCompetitionFirstGlanceDescriptionForTypeWithFriends(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    v5 = MEMORY[0x277CE8FA8];
    if (a1 == 1)
    {
      v5 = MEMORY[0x277CE8FB0];
    }

    v6 = [*MEMORY[0x277CE8F60] stringByAppendingString:*v5];
    if (a1 == 1)
    {
      ASFriendsWithCompetitionsStartingToday();
    }

    else
    {
      ASFriendsWithCompetitionsEndingToday();
    }
    v9 = ;
    v10 = [v9 count];
    v11 = v10;
    v12 = MEMORY[0x277CE8F70];
    v13 = MEMORY[0x277CE8FA0];
    v14 = MEMORY[0x277CE8F98];
    if (v10 != 3)
    {
      v14 = MEMORY[0x277CE8F68];
    }

    if (v10 != 2)
    {
      v13 = v14;
    }

    if (v10 != 1)
    {
      v12 = v13;
    }

    v49 = *v12;
    v15 = [v6 stringByAppendingString:?];

    if (a1 != 1 && v11 == 1)
    {
      v16 = [v9 lastObject];
      v17 = [v16 currentCompetition];
      if (ASCompetitionScoresAreWithinClosenessThreshold())
      {
        v18 = MEMORY[0x277CE8F88];
      }

      else if ([v17 isParticipantWinning:0])
      {
        v18 = MEMORY[0x277CE8F78];
      }

      else
      {
        HasCrossedMercyThresholdOnLastDayForCompetition = ASCompetitionParticipantHasCrossedMercyThresholdOnLastDayForCompetition();
        v18 = MEMORY[0x277CE8F80];
        if (HasCrossedMercyThresholdOnLastDayForCompetition)
        {
          v18 = MEMORY[0x277CE8F90];
        }
      }

      v20 = *v18;
      v21 = [v15 stringByAppendingString:v20];

      v15 = v21;
    }

    v22 = FILocalizationTableForExperienceType();
    v23 = ActivitySharingBundle();
    v47 = v22;
    v8 = FIRandomStringForPrefixWithTableName();

    v50 = v4;
    v48 = v15;
    if (v11)
    {
      v24 = [v9 objectAtIndexedSubscript:0];
      v25 = [v24 displayName];

      if (v11 == 1)
      {
        v26 = v9;
        v45 = 0;
        v46 = 0;
      }

      else
      {
        v27 = [v9 objectAtIndexedSubscript:1];
        v46 = [v27 displayName];

        v26 = v9;
        if (v11 < 3)
        {
          v45 = 0;
        }

        else
        {
          v28 = [v9 objectAtIndexedSubscript:2];
          v45 = [v28 displayName];
        }
      }
    }

    else
    {
      v26 = v9;
      v45 = 0;
      v46 = 0;
      v25 = 0;
    }

    v29 = MEMORY[0x277CCACA8];
    v30 = ActivitySharingBundle();
    v31 = [v30 localizedStringForKey:@"COMPETITIONS" value:&stru_2850F6650 table:@"Localizable"];
    v32 = [v29 localizedStringWithFormat:v31, v11];

    v33 = MEMORY[0x277CCACA8];
    v34 = ActivitySharingBundle();
    v35 = [v34 localizedStringForKey:@"POINTS" value:&stru_2850F6650 table:@"Localizable"];
    v36 = [v26 objectAtIndexedSubscript:0];
    v37 = [v36 currentCompetition];
    v38 = [v33 localizedStringWithFormat:v35, ASCompetitionCurrentScoreDelta()];

    if (v25)
    {
      v39 = [v8 stringByReplacingOccurrencesOfString:@"<first-friend-name>" withString:v25];

      v8 = v39;
    }

    if (v46)
    {
      v40 = [v8 stringByReplacingOccurrencesOfString:@"<second-friend-name>" withString:v46];

      v8 = v40;
    }

    if (v45)
    {
      v41 = [v8 stringByReplacingOccurrencesOfString:@"<third-friend-name>" withString:v45];

      v8 = v41;
    }

    if (v32)
    {
      v42 = [v8 stringByReplacingOccurrencesOfString:@"<num-competitions>" withString:v32];

      v8 = v42;
    }

    if (v38)
    {
      v43 = [v8 stringByReplacingOccurrencesOfString:@"<num-points>" withString:v38];

      v8 = v43;
    }

    v4 = v50;
  }

  else
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      ASCompetitionFirstGlanceDescriptionForTypeWithFriends_cold_1(v7);
    }

    v8 = 0;
  }

  return v8;
}

id ASCompetitionFirstGlanceSectionHeaderForType(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) < 2)
  {
    v3 = ActivitySharingBundle();
    v4 = v3;
    v5 = @"COMPETITION_MORE_COMPETITIONS_HEADER";
LABEL_6:
    v6 = [v3 localizedStringForKey:v5 value:&stru_2850F6650 table:@"Localizable"];
    v2 = [v6 localizedUppercaseString];

    goto LABEL_10;
  }

  if (a1)
  {
    if (a1 != 3)
    {
      goto LABEL_10;
    }

    v3 = ActivitySharingBundle();
    v4 = v3;
    v5 = @"COMPETITION_ALL_COMPETITIONS_HEADER";
    goto LABEL_6;
  }

  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FF8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
  {
    ASCompetitionFirstGlanceSectionHeaderForType_cold_1(v7);
  }

  v2 = 0;
LABEL_10:

  return v2;
}

id ASCompetitionScoreCapCelebrationTitle(uint64_t a1)
{
  v1 = ActivitySharingBundle();
  v2 = [v1 localizedStringForKey:@"COMPETITION_SCORE_CAP_CELEBRATION_TITLE" value:&stru_2850F6650 table:@"Localizable"];

  return v2;
}

id ASCompetitionScoreCapCelebrationDescription(uint64_t a1)
{
  v1 = ActivitySharingBundle();
  v2 = FIRandomStringForPrefixWithTableName();

  return v2;
}

id _ASCompetitionLearnMoreTextAttributes()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D740C0];
  v0 = [MEMORY[0x277D75348] as_lightCompetitionGold];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

id ASCompetitionLearnMoreIntroductionAttributedStringForFriend(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCA898];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [v4 as_competitionLearnMoreIntroductionForExperienceType:a2];

  v7 = _ASCompetitionLearnMoreTextAttributes();
  v8 = [v5 initWithString:v6 attributes:v7];

  return v8;
}

id ASCompetitionLearnMoreDetailsAttributedStringForFriend(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCA898];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [v4 as_competitionLearnMoreDetailMessageForExperienceType:a2];

  v7 = _ASCompetitionLearnMoreTextAttributes();
  v8 = [v5 initWithString:v6 attributes:v7];

  return v8;
}

id ASCompetitionZeroPaddedScoreString(uint64_t a1)
{
  if (ASCompetitionZeroPaddedScoreString_onceToken != -1)
  {
    ASCompetitionZeroPaddedScoreString_cold_1();
  }

  v2 = ASCompetitionZeroPaddedScoreString_formatter;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

uint64_t __ASCompetitionZeroPaddedScoreString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = ASCompetitionZeroPaddedScoreString_formatter;
  ASCompetitionZeroPaddedScoreString_formatter = v0;

  [ASCompetitionZeroPaddedScoreString_formatter setMinimumIntegerDigits:2];
  [ASCompetitionZeroPaddedScoreString_formatter setMaximumFractionDigits:0];
  v2 = ASCompetitionZeroPaddedScoreString_formatter;

  return [v2 setNumberStyle:1];
}

id ASCompetitionStageStringWithCompetition(void *a1)
{
  v1 = a1;
  v2 = [v1 stage];
  if (v2 == 2)
  {
    v11 = ActivitySharingBundle();
    v3 = v11;
    v12 = @"COMPETITION_TALLYING_POINTS";
LABEL_8:
    v10 = [v11 localizedStringForKey:v12 value:&stru_2850F6650 table:@"Localizable"];
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (![v1 isLastDayOfCompetition])
    {
      v13 = [v1 numberOfDaysRemaining];
      v14 = MEMORY[0x277D0A7E8];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v3 = [v14 stringWithNumber:v15 decimalPrecision:1];

      v16 = MEMORY[0x277CCACA8];
      v17 = ActivitySharingBundle();
      v18 = [v17 localizedStringForKey:@"DAYS_REMAINING" value:&stru_2850F6650 table:@"Localizable"];
      v10 = [v16 stringWithFormat:v18, v13, v3];

      goto LABEL_11;
    }

    v11 = ActivitySharingBundle();
    v3 = v11;
    v12 = @"COMPETITION_ENDS_TODAY";
    goto LABEL_8;
  }

  if (v2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"EEEE"];
  v4 = [v1 startDate];
  v5 = [v3 stringFromDate:v4];
  v6 = [v5 capitalizedString];

  v7 = MEMORY[0x277CCACA8];
  v8 = ActivitySharingBundle();
  v9 = [v8 localizedStringForKey:@"COMPETITION_START_DATE" value:&stru_2850F6650 table:@"Localizable"];
  v10 = [v7 stringWithFormat:v9, v6];

LABEL_11:
LABEL_12:

  return v10;
}

id ASAttributedNumberStringWithKey(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D0A7E8];
  v10 = MEMORY[0x277CCABB0];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = [v10 numberWithUnsignedInteger:a1];
  v16 = [v9 stringWithNumber:v15 decimalPrecision:1];

  v17 = MEMORY[0x277CCACA8];
  v18 = ActivitySharingBundle();
  v19 = [v18 localizedStringForKey:v14 value:&stru_2850F6650 table:@"Localizable"];

  v20 = [v17 stringWithFormat:v19, a1, v16];

  v21 = objc_alloc(MEMORY[0x277CCAB48]);
  v23 = *MEMORY[0x277D740C0];
  v30[0] = *MEMORY[0x277D740A8];
  v22 = v30[0];
  v30[1] = v23;
  v31[0] = v12;
  v31[1] = v11;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v25 = [v21 initWithString:v20 attributes:v24];
  v26 = [v25 string];
  v27 = [v26 rangeOfString:v16];
  [v25 addAttribute:v22 value:v13 range:{v27, v28}];

  return v25;
}

id _AttributedNameStringWithDotPrefix(void *a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB48];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = objc_alloc_init(v5);
  v10 = objc_alloc_init(MEMORY[0x277D74270]);
  v11 = [MEMORY[0x277D755D0] configurationWithFont:v7 scale:1];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"circlebadge.fill" withConfiguration:v11];
  v13 = [v12 imageWithTintColor:v6];

  [v10 setImage:v13];
  v14 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v10];
  [v9 appendAttributedString:v14];
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  [v9 appendAttributedString:v15];

  v16 = objc_alloc(MEMORY[0x277CCA898]);
  v21[0] = *MEMORY[0x277D740C0];
  v17 = [MEMORY[0x277D75348] whiteColor];
  v21[1] = *MEMORY[0x277D740A8];
  v22[0] = v17;
  v22[1] = v7;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v19 = [v16 initWithString:v8 attributes:v18];
  [v9 appendAttributedString:v19];

  return v9;
}

uint64_t ASDurationInDaysSinceDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 hk_gregorianCalendar];
  v4 = [v3 startOfDayForDate:v2];

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 startOfDayForDate:v5];

  v7 = [v3 components:16 fromDate:v4 toDate:v6 options:0];
  v8 = [v7 day];

  return v8;
}

id ASSharingStartTimeStringFromDate(void *a1)
{
  v1 = a1;
  if (ASSharingStartTimeStringFromDate_onceToken != -1)
  {
    ASSharingStartTimeStringFromDate_cold_1();
  }

  v2 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v3 = [v2 isDateInToday:v1];

  v4 = &ASSharingStartTimeStringFromDate___todayFormatter;
  if (!v3)
  {
    v4 = &ASSharingStartTimeStringFromDate___notTodayFormatter;
  }

  v5 = [*v4 stringFromDate:v1];

  return v5;
}

uint64_t __ASSharingStartTimeStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = ASSharingStartTimeStringFromDate___todayFormatter;
  ASSharingStartTimeStringFromDate___todayFormatter = v0;

  [ASSharingStartTimeStringFromDate___todayFormatter setDateStyle:0];
  [ASSharingStartTimeStringFromDate___todayFormatter setTimeStyle:1];
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = ASSharingStartTimeStringFromDate___notTodayFormatter;
  ASSharingStartTimeStringFromDate___notTodayFormatter = v2;

  [ASSharingStartTimeStringFromDate___notTodayFormatter setDateStyle:4];
  [ASSharingStartTimeStringFromDate___notTodayFormatter setTimeStyle:0];
  v4 = ASSharingStartTimeStringFromDate___notTodayFormatter;

  return [v4 setFormattingContext:5];
}

id _BackgroundColorForDetailViewType(void *a1)
{
  if (a1 < 5)
  {
    goto LABEL_2;
  }

  if (a1 == 5)
  {
    a1 = [MEMORY[0x277D75348] as_competitionFriendListPlatterGold];
  }

  else if (a1 == 6)
  {
LABEL_2:
    a1 = [MEMORY[0x277D75348] as_competitionNotificationPlatterGold];
  }

  return a1;
}

uint64_t _ViewModulesForDetailViewType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 29;
  }

  else
  {
    return qword_23E6C5610[a1 - 1];
  }
}

id _CreateSeparatorView()
{
  v0 = objc_alloc(MEMORY[0x277D75D18]);
  v1 = [v0 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v2 = [MEMORY[0x277D75348] as_competitionNotificationAccentGold];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  [v3 setCornerRadius:1.0];

  return v1;
}

id ASDisplayModeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_278C53390[a1];
    v2 = ActivitySharingBundle();
    v3 = [v2 localizedStringForKey:v1 value:&stru_2850F6650 table:@"Localizable"];
  }

  return v3;
}

uint64_t ASActivitySharingReplyContextTypeFromBulletinType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 1;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v6 = [v3 currentOrMostRecentCompetition];
        v9 = [v6 myTotalScore];
        v10 = [v6 opponentTotalScore];
        v11 = 3;
        if (v9 <= v10)
        {
          v11 = 4;
        }

        if (v9 == v10)
        {
          v5 = 5;
        }

        else
        {
          v5 = v11;
        }

        goto LABEL_19;
      }

      v7 = a1 == 8;
      v8 = 6;
    }

    else
    {
      if (a1 == 5)
      {
LABEL_13:
        v5 = 7;
        goto LABEL_20;
      }

      v7 = a1 == 6;
      v8 = 2;
    }

    if (v7)
    {
      v5 = v8;
    }
  }

  else
  {
    if ((a1 - 1) < 3)
    {
      v6 = [v3 currentCompetition];
      v5 = [v6 stage] == 1;
LABEL_19:

      goto LABEL_20;
    }

    if (!a1)
    {
      goto LABEL_13;
    }
  }

LABEL_20:

  return v5;
}

id _ASActivitySharingSuffixesByTextType()
{
  v2[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"_TEXT_EMOJI";
  v2[1] = @"_TEXT_ONLY";
  v2[2] = @"_EMOJI_ONLY";
  v2[3] = @"_TEXT_ONLY";
  v2[4] = @"_EMOJI_ONLY";
  v2[5] = @"_TEXT_EMOJI";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:6];

  return v0;
}

id _ASActivitySharingSuffixesByMessageToneForReplyContextType(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [@"_ENCOURAGING" stringByAppendingString:@"_TEXT_EMOJI"];
  v3 = [@"_ENCOURAGING" stringByAppendingString:@"_EMOJI_ONLY"];
  v4 = [@"_SMACK" stringByAppendingString:@"_TEXT_EMOJI"];
  v5 = [@"_ENCOURAGING" stringByAppendingString:@"_TEXT_ONLY"];
  v6 = [@"_SMACK" stringByAppendingString:@"_EMOJI_ONLY"];
  v7 = [@"_ENCOURAGING" stringByAppendingString:@"_TEXT_ONLY"];
  v8 = [@"_SMACK" stringByAppendingString:@"_TEXT_ONLY"];
  v9 = v8;
  if (a1)
  {
    v15 = v2;
    v16 = v8;
    v17 = v3;
    v18 = v5;
    v19 = v4;
    v20 = v6;
    v10 = MEMORY[0x277CBEA60];
    v11 = &v15;
    v12 = 6;
  }

  else
  {
    v21 = v2;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v26 = v7;
    v27 = v8;
    v10 = MEMORY[0x277CBEA60];
    v11 = &v21;
    v12 = 7;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27}];

  return v13;
}

__CFString *_ASActivitySharingSuffixForWorkoutType(void *a1)
{
  v1 = a1;
  v2 = [v1 workoutActivityType];
  v3 = [MEMORY[0x277D0A810] activityTypeWithWorkout:v1];
  v4 = v3;
  if (v2 <= 51)
  {
    if (v2 > 34)
    {
      if (v2 > 43)
      {
        if (v2 == 44)
        {
          v12 = @"_STAIR_STEPPER";
          goto LABEL_52;
        }

        if (v2 != 46)
        {
          v5 = v2 == 50;
          v6 = @"_TRADITIONAL_STRENGTH_TRAINING";
          goto LABEL_27;
        }

        v19 = [v1 fiui_swimmingLocationType];
        v17 = @"_POOL_SWIM";
        if (v19 == 2)
        {
          v17 = @"_OPEN_WATER_SWIM";
        }

LABEL_51:
        v12 = v17;
        goto LABEL_52;
      }

      if (v2 == 35)
      {
        v16 = [v3 isIndoor];
        v17 = @"_OUTDOOR_ROWING";
        v18 = @"_INDOOR_ROWING";
      }

      else
      {
        if (v2 != 37)
        {
          v12 = 0;
          goto LABEL_52;
        }

        v16 = [v3 isIndoor];
        v17 = @"_OUTDOOR_RUN";
        v18 = @"_INDOOR_RUN";
      }

LABEL_49:
      if (v16)
      {
        v17 = v18;
      }

      goto LABEL_51;
    }

    if (v2 <= 19)
    {
      if (v2 == 13)
      {
        v16 = [v3 isIndoor];
        v17 = @"_OUTDOOR_CYCLE";
        v18 = @"_INDOOR_CYCLE";
        goto LABEL_49;
      }

      v5 = v2 == 16;
      v6 = @"_ELLIPTICAL";
      goto LABEL_27;
    }

    v13 = @"_FUNCTIONAL_STRENGTH_TRAINING";
    v14 = @"_HIKING";
    if (v2 != 24)
    {
      v14 = 0;
    }

    v15 = v2 == 20;
LABEL_36:
    if (v15)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }

    goto LABEL_52;
  }

  if (v2 <= 64)
  {
    if (v2 <= 58)
    {
      if (v2 == 52)
      {
        v16 = [v3 isIndoor];
        v17 = @"_OUTDOOR_WALK";
        v18 = @"_INDOOR_WALK";
        goto LABEL_49;
      }

      v5 = v2 == 57;
      v6 = @"_YOGA";
LABEL_27:
      if (v5)
      {
        v12 = v6;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_52;
    }

    v13 = @"_CORE_TRAINING";
    v14 = @"_HIIT";
    if (v2 != 63)
    {
      v14 = 0;
    }

    v15 = v2 == 59;
    goto LABEL_36;
  }

  v7 = @"_TAICHI";
  v8 = @"_CARDIO_DANCE";
  v9 = @"_COOLDOWN";
  if (v2 != 80)
  {
    v9 = 0;
  }

  if (v2 != 77)
  {
    v8 = v9;
  }

  if (v2 != 72)
  {
    v7 = v8;
  }

  v10 = @"_KICKBOXING";
  v11 = @"_PILATES";
  if (v2 != 66)
  {
    v11 = 0;
  }

  if (v2 != 65)
  {
    v10 = v11;
  }

  if (v2 <= 71)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

LABEL_52:

  return v12;
}

id _ASActivitySharingWorkoutKey(void *a1)
{
  v1 = _ASActivitySharingSuffixForWorkoutType(a1);
  if (v1)
  {
    v2 = [@"_WORKOUT" stringByAppendingString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _ASActivitySharingOrderedSuffixesForReplyContextType(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 > 6)
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (((1 << a1) & 0x7A) != 0)
    {
      _ASActivitySharingSuffixesByTextType();
    }

    else
    {
      _ASActivitySharingSuffixesByMessageToneForReplyContextType(a1);
    }
    v4 = ;
  }

  return v4;
}

id _ASActivitySharingPrefixForReplyContextType(unint64_t a1)
{
  if (a1 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = [@"FRIEND_REPLY" stringByAppendingString:{off_278C53508[a1], v1}];
  }

  return v3;
}

uint64_t ASWatchRepliesCategoryForFitnessExperienceType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 7;
  }

  else
  {
    return qword_23E6C5640[a1];
  }
}

id ASActivitySharingBaseKeysForReplyContextType(unint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 == 7)
  {
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE8FF8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
    {
      ASActivitySharingBaseKeysForReplyContextType_cold_1(v4);
    }

    v5 = 0;
  }

  else
  {
    v6 = _ASActivitySharingPrefixForReplyContextType(a1);
    v7 = _ASActivitySharingOrderedSuffixesForReplyContextType(a1, v3);
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = [v8 initWithArray:MEMORY[0x277CBEBF8]];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v6 stringByAppendingString:{*(*(&v21 + 1) + 8 * i), v21}];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    if (a1 <= 1 && v3)
    {
      v16 = _ASActivitySharingWorkoutKey(v3);
      if (v16)
      {
        v17 = [@"FRIEND_REPLY" stringByAppendingString:v16];
        v18 = [v9 count];
        if (v18 >= (a1 ^ 1))
        {
          v19 = a1 ^ 1;
        }

        else
        {
          v19 = v18;
        }

        [v9 insertObject:v17 atIndex:{v19, v21}];
      }
    }

    v5 = [v9 copy];
  }

  return v5;
}

id ASAllValidLocalizationKeysForPrefix(void *a1, void *a2, unint64_t a3)
{
  v4 = a1;
  v5 = a2;
  v6 = 0;
  for (i = MEMORY[0x277CBEBF8]; ; i = v10)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", v4, v6];
    v9 = WRLocalizedCategoryString();
    if ([v9 isEqualToString:v8])
    {
      break;
    }

    v6 = (v6 + 1);
    v10 = [i arrayByAddingObject:v8];
  }

  return i;
}

id ASActivitySharingRandomizedReplyKeysForReplyContextType(unint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v21 = v7;
  ASActivitySharingBaseKeysForReplyContextType(a1, v7);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v12 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = ASAllValidLocalizationKeysForPrefix(v14, v8, a4);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __ASActivitySharingRandomizedReplyKeysForReplyContextType_block_invoke;
        v23[3] = &unk_278C534E8;
        v12 = v12;
        v24 = v12;
        v16 = [v15 hk_filter:v23];

        if ([v16 count])
        {
          v17 = [v16 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v16, "count"))}];
          v18 = [v12 arrayByAddingObject:v17];

          v12 = v18;
        }

        else
        {
          ASLoggingInitialize();
          v19 = *MEMORY[0x277CE8FF8];
          if (os_log_type_enabled(*MEMORY[0x277CE8FF8], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v14;
            _os_log_error_impl(&dword_23E69E000, v19, OS_LOG_TYPE_ERROR, "Didn't find reply keys for base reply key %@", buf, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

id ASActivitySharingRandomizedLocalizedReplyForReplyContextType(unint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = ASActivitySharingRandomizedReplyKeysForReplyContextType(a1, a2, v7, a4);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = WRLocalizedCategoryString();
        [v9 addObject:{v15, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

id _ASWorkoutCountString(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = ActivitySharingBundle();
  v4 = [v3 localizedStringForKey:@"WORKOUTS" value:&stru_2850F6650 table:@"Localizable"];
  v5 = [v2 count];

  v6 = [v1 localizedStringWithFormat:v4, v5];

  return v6;
}

id ASWorkoutNameString(void *a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = [v3 keyColorForDisplayMode:4];
  if ([v4 count] == 1)
  {
    v6 = [v4 anyObject];

    v4 = [v6 hkWorkoutFromFriendWorkout];

    v7 = [v4 metadata];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
    [v8 BOOLValue];

    [v4 workoutActivityType];
    [v4 fi_swimmingLocationType];
    FILocalizedNameForActivityType();
  }

  else
  {
    _ASWorkoutCountString(v4);
  }
  v9 = ;

  v10 = objc_alloc(MEMORY[0x277CCAB48]);
  v15[0] = *MEMORY[0x277D740A8];
  v11 = [v3 descriptionFont];

  v15[1] = *MEMORY[0x277D740C0];
  v16[0] = v11;
  v16[1] = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [v10 initWithString:v9 attributes:v12];

  return v13;
}

id ASWorkoutCountString(void *a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = [v3 keyColorForDisplayMode:4];
  v6 = _ASWorkoutCountString(v4);

  v7 = objc_alloc(MEMORY[0x277CCAB48]);
  v12[0] = *MEMORY[0x277D740A8];
  v8 = [v3 multilineDataFont];

  v12[1] = *MEMORY[0x277D740C0];
  v13[0] = v8;
  v13[1] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v7 initWithString:v6 attributes:v9];

  return v10;
}

id ASWorkoutCaloriesString(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 keyColorForDisplayMode:4];
  v9 = MEMORY[0x277CCD7E8];
  v10 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v11 = [v9 quantityWithUnit:v10 doubleValue:0.0];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v38 + 1) + 8 * v16) totalEnergyBurned];
        v11 = [v17 _quantityByAddingQuantity:v18];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v14);
  }

  v37 = [v7 localizedStringWithActiveEnergy:v11];
  v19 = objc_alloc(MEMORY[0x277CCAB48]);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v37];
  v44 = *MEMORY[0x277D740A8];
  v21 = v44;
  [v6 multilineDataFont];
  v22 = v7;
  v23 = v36 = v7;
  v45 = *MEMORY[0x277D740C0];
  v24 = v45;
  v46[0] = v23;
  v46[1] = v8;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v44 count:2];
  v25 = v35 = v8;
  v26 = [v19 initWithString:v20 attributes:v25];

  v27 = [v22 localizedShortActiveEnergyUnitString];
  v28 = objc_alloc(MEMORY[0x277CCA898]);
  v29 = [v27 localizedUppercaseString];
  v42[0] = v21;
  v30 = v6;
  v31 = [v6 multilineUnitFont];
  v42[1] = v24;
  v43[0] = v31;
  v43[1] = v35;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v33 = [v28 initWithString:v29 attributes:v32];
  [v26 appendAttributedString:v33];

  return v26;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23E6B3220()
{
  sub_23E6B35D0();
  result = sub_23E6C3504();
  qword_27E34E258 = result;
  return result;
}

uint64_t sub_23E6B3294(uint64_t a1, id *a2)
{
  result = sub_23E6C3384();
  *a2 = 0;
  return result;
}

uint64_t sub_23E6B330C(uint64_t a1, id *a2)
{
  v3 = sub_23E6C3394();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23E6B338C@<X0>(uint64_t *a1@<X8>)
{
  sub_23E6C33A4();
  v2 = sub_23E6C3374();

  *a1 = v2;
  return result;
}

uint64_t sub_23E6B33D0()
{
  v0 = sub_23E6C33A4();
  v1 = MEMORY[0x23EF0F030](v0);

  return v1;
}

uint64_t sub_23E6B340C(uint64_t a1)
{
  sub_23E6C33A4();
  sub_23E6C33F4();
}

uint64_t sub_23E6B3460(uint64_t a1)
{
  sub_23E6C33A4();
  sub_23E6C3624();
  sub_23E6C33F4();
  v1 = sub_23E6C3644();

  return v1;
}

uint64_t sub_23E6B34D4(void *a1, uint64_t *a2)
{
  v2 = sub_23E6C33A4();
  v4 = v3;
  if (v2 == sub_23E6C33A4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23E6C35E4();
  }

  return v7 & 1;
}

uint64_t sub_23E6B355C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23E6C3374();

  *a2 = v3;
  return result;
}

uint64_t sub_23E6B35A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E6C33A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23E6B35D0()
{
  result = qword_27E34E288;
  if (!qword_27E34E288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E34E288);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E6B3628(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E6B3648(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23E6B369C(uint64_t a1)
{
  v2 = sub_23E6B379C(&qword_27E34E2B8, &unk_23E6C5830);
  v3 = sub_23E6B379C(&qword_27E34E2C0, &unk_23E6C5784);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E6B379C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23E6B3828(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for WorkoutRenderer(uint64_t a1)
{
  result = qword_27E34E450;
  if (!qword_27E34E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E6B38F4(uint64_t a1)
{
  sub_23E6B39F0(319, &qword_27E34E460, 0x277CCDDD0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Reply(319);
    if (v2 <= 0x3F)
    {
      sub_23E6B39F0(319, &qword_27E34E468, 0x277D755E8);
      if (v3 <= 0x3F)
      {
        sub_23E6B39F0(319, &qword_27E34E470, 0x277D756B8);
        if (v4 <= 0x3F)
        {
          sub_23E6B3A38(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23E6B39F0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_23E6B3A38(uint64_t a1)
{
  if (!qword_27E34E478)
  {
    sub_23E6B39F0(255, &qword_27E34E470, 0x277D756B8);
    v1 = sub_23E6C3514();
    if (!v2)
    {
      atomic_store(v1, &qword_27E34E478);
    }
  }
}

void sub_23E6B3AA0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for WorkoutRenderer(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = a1;
  v117 = v7;
  sub_23E6B4C44(a2, &v9[*(v7 + 20)]);
  v10 = qword_27E34E268;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v123);
  v12 = v124;
  v13 = v125;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  (*(v13 + 8))(v119, v12, v13);
  v14 = [v11 hkWorkoutFromFriendWorkout];
  if (!v14)
  {
    goto LABEL_41;
  }

  v15 = v14;
  v16 = [v14 workoutActivityType];
  v115 = v15;
  if (v16 == 84)
  {

    v17 = [objc_opt_self() diveColors];
    if (!v17)
    {
      __break(1u);
      goto LABEL_44;
    }

    v18 = v17;
    v19 = [v17 nonGradientTextColor];

    if (v19)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v20 = [v11 goalType];

  v21 = [objc_opt_self() metricColorsForGoalTypeIdentifier_];
  v19 = [v21 nonGradientTextColor];

  if (!v19)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_9:
  v22 = v124;
  v23 = v125;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  v24 = (*(v23 + 40))(v22, v23);
  v113 = a3;
  v114 = a2;
  v112 = v19;
  v108 = v16;
  if ((v24 & 1) == 0)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    v110 = 0;
    v111 = 0;
    v54 = v117;
    *&v9[v117[6]] = v55;
LABEL_14:
    v56 = v124;
    v57 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    (*(v57 + 96))(a2, v56, v57);
    v58 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    *&v9[v54[7]] = v58;
    v59 = v124;
    v60 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v116 = v9;
    v61 = *(v60 + 24);
    v62 = v58;
    v63 = v61(v59, v60);
    sub_23E6B4774(v63);

    v64 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v65 = sub_23E6C3374();
    type metadata accessor for Key(0);
    v67 = v66;
    sub_23E6B4D50();
    v109 = v67;
    v68 = sub_23E6C3364();

    v69 = [v64 initWithString:v65 attributes:v68];

    [v62 setAttributedText_];
    [v62 setNumberOfLines_];

    v70 = v115;
    _HKWorkoutIsIndoor(v70);
    [v70 workoutActivityType];
    v115 = v70;
    [v70 fi_swimmingLocationType];
    v71 = FILocalizedNameForActivityType();
    if (v71)
    {
      v72 = v71;

      v73 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
      *&v116[v117[8]] = v73;
      v75 = v124;
      v74 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v76 = *(v74 + 32);
      v77 = v73;
      v78 = v76(v75, v74);
      sub_23E6B4774(v78);

      v79 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v80 = sub_23E6C3364();

      v81 = [v79 initWithString:v72 attributes:v80];

      [v77 setAttributedText_];
      [v77 setNumberOfLines_];

      if (v122 != 1)
      {

        v94 = v115;
        sub_23E6B4E10(v119);

        sub_23E6B4E64(v114);
        v86 = v116;
        *&v116[v117[9]] = 0;
        goto LABEL_33;
      }

      v82 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
      v83 = [objc_allocWithZone(MEMORY[0x277D0A808]) initWithHealthStore_];
      v84 = [objc_allocWithZone(MEMORY[0x277D0A7E8]) initWithUnitManager_];
      v85 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
      v86 = v116;
      *&v116[v117[9]] = v85;
      v87 = v108;
      v88 = v112;
      v89 = v115;
      v109 = v82;
      v107 = v83;
      if (v108 == 84)
      {

        if (v84)
        {
          v90 = v84;
          [v89 duration];
          v91 = [v90 stringWithDuration:2 durationFormat:?];

          if (v91)
          {
            sub_23E6C33A4();
            v93 = v92;

            v91 = 0;
          }

          else
          {
            v93 = 0;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (v84)
        {
          v118[0] = 0;
          v95 = v84;
          v96 = v89;
          v97 = [v95 localizedGoalDescriptionForWorkout:v89 withValue:v118 appendActivityType:0];

          v98 = v118[0];
          if (v97)
          {
            sub_23E6C33A4();
            v93 = v99;
            v91 = v98;
          }

          else
          {
            v91 = v118[0];
            v93 = 0;
          }

          v87 = v108;
          v89 = v115;
          goto LABEL_29;
        }
      }

      v93 = 0;
      v91 = 0;
LABEL_29:
      if (v85)
      {
        if (v93)
        {
          v100 = sub_23E6C3374();
        }

        else
        {
          v100 = 0;
        }

        v103 = v110;
        [v85 setText_];

        [v85 setNumberOfLines_];
        if (v87 == 84)
        {
          v104 = [objc_opt_self() metricColorsForGoalTypeIdentifier_];
          v105 = [v104 nonGradientTextColor];
        }

        else
        {
          v105 = v88;
        }

        v102 = v111;
        [v85 setTextColor_];

        [v85 setFont_];
        sub_23E6B4E10(v119);

        sub_23E6B4E64(v114);
        v101 = v113;
        goto LABEL_39;
      }

      sub_23E6B4E64(v114);

      sub_23E6B4E10(v119);
LABEL_33:
      v101 = v113;
      v103 = v110;
      v102 = v111;
LABEL_39:
      __swift_destroy_boxed_opaque_existential_1(v123);
      sub_23E6B4F0C(v86, v101);
      sub_23E6B4F70(v103, v102);
      return;
    }

LABEL_42:
    __break(1u);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CE8E98]) initWithNumberOfRings_];
  v26 = objc_allocWithZone(MEMORY[0x277CE8EA8]);
  v116 = v25;
  v27 = [v26 initWithRingGroupController_];
  v28 = v115;
  [v115 fiui_completionFactor];
  v29 = v27;
  v31 = [objc_opt_self() renderSingleRingUsingRingsView:v27 forPercentage:v19 withDiameter:v19 thickness:v30 topColor:*&v119[9] bottomColor:*&v119[16]];
  v32 = [v28 fiui_activityType];
  v33 = FIUIStaticWorkoutIconImage();

  if (v33)
  {
    v34 = [v33 imageWithRenderingMode_];

    v35 = [v34 imageWithTintColor_];
    [v31 size];
    v37 = v36;
    v39 = v38;
    v127.origin.x = 0.0;
    v127.origin.y = 0.0;
    v127.size.width = v37;
    v127.size.height = v39;
    v128 = CGRectInset(v127, v120, v120);
    x = v128.origin.x;
    y = v128.origin.y;
    width = v128.size.width;
    height = v128.size.height;
    [v31 size];
    v46 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v47 = swift_allocObject();
    v47[3] = 0.0;
    v47[4] = 0.0;
    *(v47 + 2) = v31;
    v47[5] = v37;
    v47[6] = v39;
    *(v47 + 7) = v35;
    v47[8] = x;
    v47[9] = y;
    v47[10] = width;
    v47[11] = height;
    v48 = swift_allocObject();
    v48[2] = sub_23E6B4F80;
    v48[3] = v47;
    v111 = v47;
    v118[4] = sub_23E6B4FF8;
    v118[5] = v48;
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 1107296256;
    v118[2] = sub_23E6B4728;
    v118[3] = &block_descriptor;
    v49 = _Block_copy(v118);
    v50 = v31;
    v51 = v35;

    v52 = [v46 imageWithActions_];
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      v53 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      v54 = v117;
      *&v9[v117[6]] = v53;
      [v53 setContentMode_];

      v110 = sub_23E6B4F80;
      a2 = v114;
      goto LABEL_14;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_45:
  __break(1u);
}

void sub_23E6B4728(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_23E6B4774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E488, &unk_23E6C58F0);
    v1 = sub_23E6C35B4();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_23E6B5038(&v25[8], v23);
    sub_23E6B5038(v23, v25);
    sub_23E6C33A4();
    sub_23E6C3624();
    sub_23E6C33F4();
    v14 = sub_23E6C3644();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_23E6B5038(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23E6B4A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23E6C5890;
  v2 = type metadata accessor for WorkoutRenderer(0);
  v3 = *(v0 + v2[7]);
  *(v1 + 32) = v3;
  v4 = *(v0 + v2[8]);
  *(v1 + 40) = v4;
  v5 = *(v0 + v2[9]);
  if (v5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E6C58A0;
    *(inited + 32) = v5;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    sub_23E6C03F8(inited);
  }

  else
  {
    v10 = v3;
    v11 = v4;
  }

  return v1;
}

void sub_23E6B4B10()
{
  v1 = [*v0 endDate];
  sub_23E6C3254();
}

uint64_t sub_23E6B4B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for Reply(0) + 24);
  v6 = sub_23E6C32C4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23E6B4C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Reply(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E6B4CA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23E6B4D50()
{
  result = qword_27E34E2B8;
  if (!qword_27E34E2B8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E2B8);
  }

  return result;
}

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t sub_23E6B4E64(uint64_t a1)
{
  v2 = type metadata accessor for Reply(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23E6B4F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutRenderer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E6B4F70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_23E6B4F80()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  [*(v0 + 16) drawInRect_];

  return [v1 drawInRect_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_23E6B5038(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for CompetitionAcceptedRenderer(uint64_t a1)
{
  result = qword_27E34E490;
  if (!qword_27E34E490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E6B50BC(uint64_t a1)
{
  result = sub_23E6B39F0(319, &qword_27E34E4A0, 0x277CE90D8);
  if (v2 <= 0x3F)
  {
    result = sub_23E6B39F0(319, &qword_27E34E4A8, 0x277CE90F8);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Reply(319);
      if (v4 <= 0x3F)
      {
        result = sub_23E6B39F0(319, &qword_27E34E468, 0x277D755E8);
        if (v5 <= 0x3F)
        {
          result = sub_23E6B39F0(319, &qword_27E34E470, 0x277D756B8);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_23E6B51C8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v91 = sub_23E6C3274();
  v8 = *(v91 - 8);
  v9 = MEMORY[0x28223BE20](v91);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  *a4 = a1;
  v13 = type metadata accessor for CompetitionAcceptedRenderer(0);
  sub_23E6B4C44(a2, a4 + v13[6]);
  a4[1] = a3;
  v14 = qword_27E34E268;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v92);
  v16 = v93;
  v17 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  (*(v17 + 8))(v95, v16, v17);
  [v15 victoryBadgeStyle];
  type metadata accessor for Reply(0);
  v18 = sub_23E6C3294();
  v19 = ASEphemeralCompetitionVictoryAchievementForStyle();

  v20 = [v15 endDate];
  if (v20)
  {
    v21 = v20;
    v89 = a2;
    sub_23E6C3254();

    v22 = sub_23E6C3244();
    v23 = *(v8 + 8);
    v83 = v8 + 8;
    v81 = v23;
    v23(v12, v91);
    v24 = [v15 victoryBadgeStyle];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v88 = v19;
    v26 = ASEphemeralEarnedAchievement();

    v85 = [objc_allocWithZone(MEMORY[0x277CE8DA8]) init];
    v87 = v26;
    v27 = [v85 thumbnailImageForAchievement:v26 size:{v96, v96}];
    v28 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v86 = v27;
    v29 = [v28 initWithImage_];
    *(a4 + v13[7]) = v29;
    [v29 setContentMode_];
    type metadata accessor for ReplyBubbleView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = objc_opt_self();
    v78 = ObjCClassFromMetadata;
    v31 = [v77 bundleForClass_];
    v32 = sub_23E6C3374();
    v33 = [v31 localizedStringForKey:v32 value:0 table:0];

    v34 = v33;
    if (!v33)
    {
      sub_23E6C33A4();
      v34 = sub_23E6C3374();
    }

    v35 = sub_23E6C33A4();
    v37 = v36;
    v38 = [objc_opt_self() as_lightCompetitionGold];
    v39 = v93;
    v40 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v41 = (*(v40 + 24))(v39, v40);
    sub_23E6B4774(v41);

    v42 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    type metadata accessor for Key(0);
    v44 = v43;
    v45 = sub_23E6B4D50();
    v80 = v44;
    v79 = v45;
    v46 = sub_23E6C3364();

    v47 = [v42 initWithString:v34 attributes:v46];

    v48 = *MEMORY[0x277D740C0];
    v49 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v49 = v35;
    }

    v50 = 7;
    if (((v37 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
    {
      v50 = 11;
    }

    v51 = sub_23E6B5D7C(0xFuLL, v50 | (v49 << 16), v35, v37);
    v84 = v38;
    [v47 addAttribute:v48 value:v38 range:{0, v51}];
    v52 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    *(a4 + v13[8]) = v52;
    v53 = v52;
    v82 = v47;
    [v53 setAttributedText_];
    [v53 setNumberOfLines_];
    [v53 setAllowsDefaultTighteningForTruncation_];
    [v53 setLineBreakMode_];

    v54 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v55 = sub_23E6C3374();
    [v54 setDateFormat_];

    v56 = [v15 startDate];
    if (v56)
    {

      v57 = v90;
      sub_23E6C3254();

      v58 = sub_23E6C3244();
      v81(v57, v91);
      v59 = [v54 stringFromDate_];

      v60 = sub_23E6C33A4();
      v62 = v61;

      v63 = [v77 bundleForClass_];
      v64 = sub_23E6C3374();
      v65 = [v63 localizedStringForKey:v64 value:0 table:0];

      sub_23E6C33A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_23E6C5900;
      *(v66 + 56) = MEMORY[0x277D837D0];
      *(v66 + 64) = sub_23E6B5F8C();
      *(v66 + 32) = v60;
      *(v66 + 40) = v62;
      sub_23E6C33B4();

      v67 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
      *(a4 + v13[9]) = v67;
      v68 = v93;
      v69 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v70 = *(v69 + 32);
      v71 = v67;
      v72 = v70(v68, v69);
      sub_23E6B4774(v72);

      v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v74 = sub_23E6C3374();

      v75 = sub_23E6C3364();

      v76 = [v73 initWithString:v74 attributes:v75];

      [v71 setAttributedText_];
      [v71 setNumberOfLines_];
      [v71 setAllowsDefaultTighteningForTruncation_];
      [v71 setLineBreakMode_];

      sub_23E6B4E10(v95);
      sub_23E6B4E64(v89);
      __swift_destroy_boxed_opaque_existential_1(v92);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23E6B5B8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E6C5890;
  v4 = *(v1 + *(a1 + 32));
  v5 = *(v1 + *(a1 + 36));
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = v4;
  v7 = v5;
  return v3;
}

id sub_23E6B5C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23E6C32C4();
  v6 = MEMORY[0x28223BE20](*(v5 - 8));
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 24);
  LODWORD(v7) = *(v9 + 16);
  v16 = v6;
  if (v7 == 1)
  {
    v10 = type metadata accessor for Reply(0);
    v11 = *(v16 + 16);
    v12 = v9 + *(v10 + 24);

    return v11(a2, v12, v5);
  }

  else
  {
    result = [*(v2 + 8) UUID];
    if (result)
    {
      v14 = result;
      sub_23E6C32A4();

      return (*(v16 + 32))(a2, v8, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_23E6B5D7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_23E6B6170(a1, a3, a4);
  v8 = sub_23E6B6170(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_23E6C33D4();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_23E6C3574();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_23E6C33E4();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_23E6C3574();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_23E6B5F8C()
{
  result = qword_27E34E4B8;
  if (!qword_27E34E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E4B8);
  }

  return result;
}

unint64_t sub_23E6B5FE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_23E6C3574();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_23E6B60F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23E6C3424();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EF0F010](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_23E6B6170(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23E6B6208(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23E6B5FE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23E6B6208(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_23E6B60F4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23E6B627C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = type metadata accessor for Reply(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v39[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23E6B4CA8(a1, v3 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer);
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v3 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_separatorView) = v10;
  sub_23E6B4C44(a2, v9);
  v11 = sub_23E6BCEE4(v9, v4);
  if (qword_27E34E268 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v39);
  v12 = v40;
  v13 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(v13 + 8))(v42, v12, v13);
  v14 = OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_separatorView;
  v15 = *&v11[OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_separatorView];
  v16 = *&v42[6];
  v17 = objc_allocWithZone(MEMORY[0x277D75348]);
  v18 = v15;
  v19 = [v17 initWithWhite:v16 alpha:1.0];
  [v18 setBackgroundColor_];

  v20 = *&v11[v14];
  v21 = v11;
  [v21 addSubview_];
  v22 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v23 + 40))(v22, v23))
  {
    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v26 = (*(v25 + 8))(v24, v25);
    [v21 addSubview_];
  }

  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  result = (*(v28 + 16))(v27, v28);
  v30 = result;
  if (result >> 62)
  {
    result = sub_23E6C35A4();
    v31 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_14;
    }
  }

  if (v31 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v31; ++i)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x23EF0F150](i, v30);
    }

    else
    {
      v33 = *(v30 + 8 * i + 32);
    }

    v34 = v33;
    [v21 addSubview_];
  }

LABEL_14:

  if (v43 == 1 && (v4 & 1) == 0)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v21 action:0];
    [v21 addGestureRecognizer_];
    v36 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v21 action:0];
    [v36 setNumberOfTapsRequired_];
    [v21 addGestureRecognizer_];
    v37 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v21 action:sel_handleTapGesture_];
    [v37 requireGestureRecognizerToFail_];
    [v37 requireGestureRecognizerToFail_];
    [v21 addGestureRecognizer_];
    [v21 setUserInteractionEnabled_];

    sub_23E6B4E10(v42);
  }

  else
  {
    sub_23E6B4E10(v42);
  }

  sub_23E6B4E64(a2);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

void sub_23E6B67AC()
{
  v1 = v0;
  v265.receiver = v0;
  v265.super_class = type metadata accessor for ActivityReplyBubbleView(0);
  objc_msgSendSuper2(&v265, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v6 = &v0[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_fittingSize];
  swift_beginAccess();
  if (v3 == *v6 && v5 == v6[1])
  {
    return;
  }

  if (qword_27E34E268 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v251);
  v8 = v252;
  v9 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  (v9)[1](v254, v8, v9);
  v10 = v252;
  v11 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  [v1 bounds];
  v16 = sub_23E6C0E80(v1[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_reply + 16], v10, v11, v12, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v252;
  v24 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  v25 = *&v1[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_userMessageLabel];
  v26 = [v25 font];
  if (!v26)
  {
    goto LABEL_135;
  }

  v27 = v26;
  v28 = (v24)[7](v26, v23, v24);

  v266.origin.x = v16;
  v266.origin.y = v18;
  v266.size.width = v20;
  v266.size.height = v22;
  MinX = CGRectGetMinX(v266);
  v238 = v257;
  [v25 _lastLineBaselineFrameOriginY];
  v30 = v29;
  v31 = v252;
  v32 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  v33 = (v32[5])(v31, v32);
  v34 = v255;
  v35 = v264;
  if (v33)
  {
    v36 = v264;
  }

  else
  {
    v36 = v255;
  }

  v233 = v36;
  v37 = v252;
  v38 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  LOBYTE(v37) = (v38[5])(v37, v38);
  v242 = v16;
  v267.origin.x = v16;
  v245 = v20;
  v246 = v18;
  v267.origin.y = v18;
  v267.size.width = v20;
  rect = v22;
  v267.size.height = v22;
  v39 = CGRectGetMinX(v267);
  v239 = v34;
  if (v37)
  {
    v40 = v39 + v260 + v259 + v263;
  }

  else
  {
    v35 = v34;
    v40 = v39 + v34;
  }

  v268.origin.x = v16;
  v268.size.width = v20;
  v268.origin.y = v18;
  v268.size.height = v22;
  MaxX = CGRectGetMaxX(v268);
  v42 = *&v1[OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer + 24];
  v43 = *&v1[OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer + 32];
  v247 = &v1[OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer], v42);
  v44 = (*(v43 + 16))(v42, v43);
  if (v44 >> 62)
  {
    v48 = v44;
    v49 = sub_23E6C35A4();
    v44 = v48;
    if (v49)
    {
      goto LABEL_16;
    }

LABEL_21:

    v47 = v25;
    goto LABEL_22;
  }

  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x23EF0F150](0, v44);
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      __break(1u);
      goto LABEL_62;
    }

    v46 = *(v44 + 32);
  }

  v47 = v46;

LABEL_22:
  v50 = v252;
  v51 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  v240 = v47;
  v52 = [v47 font];
  if (!v52)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v53 = v52;
  v16 = v28 + v30;
  v18 = v258;
  v54 = (v51)[11](v52, v50, v51);

  v55 = *(v247 + 3);
  v56 = *(v247 + 4);
  __swift_project_boxed_opaque_existential_1(v247, v55);
  v57 = (*(v56 + 16))(v55, v56);
  v58 = v57;
  v241 = v25;
  v243 = v1;
  v236 = v6;
  if (v57 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23E6C35A4())
  {
    v20 = v16 + v18;
    v60 = &selRef_initWithString_;
    if (!i)
    {
      break;
    }

    v61 = 0;
    MaxX = MaxX - v35 - v40;
    v62 = v20 + v54;
    v248 = v58 & 0xC000000000000001;
    v54 = 1.79769313e308;
    while (1)
    {
      if (v248)
      {
        v63 = MEMORY[0x23EF0F150](v61, v58);
      }

      else
      {
        if (v61 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v63 = *(v58 + 8 * v61 + 32);
      }

      v64 = v63;
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      [v63 sizeThatFits_];
      [v64 v60[147]];
      [v64 _setFirstLineBaselineFrameOriginY_];
      [v64 _lastLineBaselineFrameOriginY];
      v69 = v68;
      v71 = v252;
      v70 = v253;
      __swift_project_boxed_opaque_existential_1(v251, v252);
      v72 = [v64 font];
      if (!v72)
      {
        goto LABEL_134;
      }

      v73 = v72;
      v35 = (v70)[10](v72, v71, v70);

      v62 = v69 + v35;
      ++v61;
      v60 = &selRef_initWithString_;
      if (v65 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_35:

  v74 = *(v247 + 3);
  v75 = *(v247 + 4);
  v76 = __swift_project_boxed_opaque_existential_1(v247, v74);
  v44 = (*(v75 + 16))(v74, v75);
  if (v44 >> 62)
  {
    v134 = v44;
    v77 = sub_23E6C35A4();
    v44 = v134;
  }

  else
  {
    v77 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v242;
  v24 = v241;
  v25 = v243;
  if (v77)
  {
    v78 = __OFSUB__(v77, 1);
    v45 = v77 - 1;
    if (!v78)
    {
      if ((v44 & 0xC000000000000001) == 0)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v45 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v79 = *(v44 + 8 * v45 + 32);
LABEL_43:
          v80 = v79;

          goto LABEL_45;
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_63:
      v79 = MEMORY[0x23EF0F150](v45, v44);
      goto LABEL_43;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v80 = v241;
LABEL_45:
  v234 = v18;
  v235 = v16;
  v81 = v252;
  v82 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  v83 = [v80 font];
  if (!v83)
  {
LABEL_137:
    __break(1u);
    return;
  }

  v84 = v83;
  MaxX = (v82)[9](v83, v81, v82);

  v85 = v252;
  v86 = v253;
  __swift_project_boxed_opaque_existential_1(v251, v252);
  v58 = &__block_descriptor_32_e18_B16__0__ASFriend_8l;
  v248 = v80;
  if ((v86[5])(v85, v86))
  {
    [v240 _firstLineCapFrameOriginY];
    v88 = v87;
    [v80 _lastLineBaselineFrameOriginY];
    v90 = v89;
    v232 = MaxX;
    v91 = v259;
    v92 = v247;
    v93 = *(v247 + 3);
    v94 = *(v247 + 4);
    __swift_project_boxed_opaque_existential_1(v247, v93);
    v95 = (*(v94 + 8))(v93, v94);
    [v95 frame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v231 = v20;
    v103 = v102;

    v269.origin.x = v97;
    v269.origin.y = v99;
    v269.size.width = v101;
    v269.size.height = v103;
    Width = CGRectGetWidth(v269);
    v105 = *(v247 + 3);
    v106 = *(v247 + 4);
    v107 = v91 / Width;
    __swift_project_boxed_opaque_existential_1(v92, *(v92 + 3));
    v108 = (*(v106 + 8))(v105, v106);
    [v108 frame];
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;

    v270.origin.x = v110;
    v270.origin.y = v112;
    v270.size.width = v114;
    v270.size.height = v116;
    v117 = v107 * CGRectGetHeight(v270);
    v40 = v242;
    v271.origin.x = v242;
    v271.size.width = v245;
    v271.origin.y = v246;
    v271.size.height = rect;
    v118 = CGRectGetMinX(v271) + v260;
    v119 = (v88 + v90 - v117) * 0.5;
    v120 = *(v247 + 3);
    v121 = *(v247 + 4);
    __swift_project_boxed_opaque_existential_1(v92, *(v92 + 3));
    v122 = (*(v121 + 8))(v120, v121);
    v123 = v91;
    MaxX = v232;
    [v122 setFrame_];

    v18 = v231 + v261 - v119;
    if (v18 > 0.0)
    {
      v124 = *(v247 + 3);
      v125 = *(v247 + 4);
      __swift_project_boxed_opaque_existential_1(v247, v124);
      v126 = sub_23E6C14C8(v124, v125);
      v76 = v126;
      if (!(v126 >> 62))
      {
        v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v128 = &selRef_initWithString_;
        if (v127)
        {
LABEL_50:
          if (v127 < 1)
          {
            goto LABEL_133;
          }

          v129 = 0;
          do
          {
            if ((v76 & 0xC000000000000001) != 0)
            {
              v130 = MEMORY[0x23EF0F150](v129, v76);
            }

            else
            {
              v130 = *(v76 + 8 * v129 + 32);
            }

            v131 = v130;
            ++v129;
            [v130 *(v58 + 3752)];
            v132 = v18 + CGRectGetMinY(v272);
            [v131 *(v58 + 3752)];
            v133 = CGRectGetMinX(v273);
            [v131 *(v58 + 3752)];
            [v131 v128[147]];
          }

          while (v127 != v129);
        }

LABEL_67:

        v25 = v243;
        v80 = v248;
        goto LABEL_68;
      }

LABEL_66:
      v127 = sub_23E6C35A4();
      v128 = &selRef_initWithString_;
      if (v127)
      {
        goto LABEL_50;
      }

      goto LABEL_67;
    }
  }

LABEL_68:
  [v80 _lastLineBaselineFrameOriginY];
  v136 = MaxX + v135 + *&v254[2];
  v137 = *(v247 + 3);
  v138 = *(v247 + 4);
  __swift_project_boxed_opaque_existential_1(v247, v137);
  v139 = (*(v138 + 8))(v137, v138);
  [v139 *(v58 + 3752)];
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;

  v274.origin.x = v141;
  v274.origin.y = v143;
  v274.size.width = v145;
  v274.size.height = v147;
  v148 = v262 - (v136 - CGRectGetMaxY(v274));
  if (v148 < 0.0)
  {
    v149 = 0.0;
  }

  else
  {
    v149 = v148;
  }

  if (*(v25 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_isPending))
  {
    v150 = v256;
  }

  else
  {
    v150 = v239;
  }

  [v24 *(v58 + 3752)];
  v151 = CGRectGetMaxX(v275);
  v152 = *(v247 + 3);
  v153 = *(v247 + 4);
  __swift_project_boxed_opaque_existential_1(v247, v152);
  v154 = (*(v153 + 16))(v152, v153);
  v155 = v154;
  if (v154 >> 62)
  {
    goto LABEL_88;
  }

  v156 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = v150 + v151; v156; j = v150 + v151)
  {
    v158 = 0;
    while (1)
    {
      if ((v155 & 0xC000000000000001) != 0)
      {
        v159 = MEMORY[0x23EF0F150](v158, v155);
      }

      else
      {
        if (v158 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v159 = *(v155 + 8 * v158 + 32);
      }

      v160 = v159;
      v161 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      [v159 *(v58 + 3752)];
      v150 = CGRectGetMaxX(v276);

      if (j <= v233 + v150)
      {
        j = v233 + v150;
      }

      ++v158;
      if (v161 == v156)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v156 = sub_23E6C35A4();
  }

LABEL_89:
  v162 = v136 + v149;

  v163 = v243;
  v164 = *&v243[OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_separatorView];
  [v164 setFrame_];
  v277.origin.x = v40;
  v277.size.width = v245;
  v277.origin.y = v246;
  v277.size.height = rect;
  v165 = &off_23E6C5000;
  if (CGRectGetHeight(v277) < v162)
  {
    v278.origin.x = v40;
    v278.size.width = v245;
    v278.origin.y = v246;
    v278.size.height = rect;
    v166 = v162 - CGRectGetHeight(v278);
    [v24 *(v58 + 3752)];
    CGRectGetHeight(v279);
    [v24 *(v58 + 3752)];
    CGRectGetWidth(v280);
    [v24 *(v58 + 3752)];
    [v24 setFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E6C58A0;
    *(inited + 32) = v164;
    v168 = swift_initStackObject();
    *(v168 + 16) = xmmword_23E6C58A0;
    v169 = *(v247 + 3);
    v170 = *(v247 + 4);
    __swift_project_boxed_opaque_existential_1(v247, v169);
    v171 = *(v170 + 8);
    v172 = v164;
    *(v168 + 32) = v171(v169, v170);
    sub_23E6C0410(v168);
    v173 = inited;
    v174 = *(v247 + 3);
    v175 = *(v247 + 4);
    __swift_project_boxed_opaque_existential_1(v247, v174);
    v176 = (*(v175 + 16))(v174, v175);
    if (v176 >> 62)
    {
      sub_23E6B83C8();
      v177 = sub_23E6C3594();
    }

    else
    {

      sub_23E6C35F4();
      sub_23E6B83C8();
      v177 = v176;
    }

    sub_23E6C0410(v177);
    v178 = v173;
    v24 = v241;
    if (v173 >> 62)
    {
      v179 = sub_23E6C35A4();
      v165 = &off_23E6C5000;
      if (v179)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v179 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v165 = &off_23E6C5000;
      if (v179)
      {
LABEL_94:
        if (v179 < 1)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v180 = 0;
        do
        {
          if ((v178 & 0xC000000000000001) != 0)
          {
            v181 = MEMORY[0x23EF0F150](v180, v178);
          }

          else
          {
            v181 = *(v178 + 8 * v180 + 32);
          }

          v182 = v181;
          ++v180;
          [v181 *(v58 + 3752)];
          v184 = v183 - v166;
          [v182 *(v58 + 3752)];
          v186 = v185;
          [v182 *(v58 + 3752)];
          [v182 setFrame_];
        }

        while (v179 != v180);
      }
    }

    v163 = v243;
    v80 = v248;
  }

  if ([v163 effectiveUserInterfaceLayoutDirection] != 1)
  {
    goto LABEL_114;
  }

  v187 = *(v247 + 3);
  v188 = *(v247 + 4);
  __swift_project_boxed_opaque_existential_1(v247, v187);
  v189 = sub_23E6C14C8(v187, v188);
  v190 = v189;
  if (v189 >> 62)
  {
    v191 = sub_23E6C35A4();
    if (v191)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v191 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v191)
    {
LABEL_106:
      if (v191 < 1)
      {
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v192 = 0;
      do
      {
        if ((v190 & 0xC000000000000001) != 0)
        {
          v193 = MEMORY[0x23EF0F150](v192, v190);
        }

        else
        {
          v193 = *(v190 + 8 * v192 + 32);
        }

        v194 = v193;
        ++v192;
        [v193 *(v58 + 3752)];
        x = v281.origin.x;
        y = v281.origin.y;
        v197 = v281.size.width;
        height = v281.size.height;
        v199 = j - CGRectGetMinX(v281);
        v282.origin.x = x;
        v282.origin.y = y;
        v282.size.width = v197;
        v282.size.height = height;
        v200 = v199 - CGRectGetWidth(v282);
        v283.origin.x = x;
        v283.origin.y = y;
        v283.size.width = v197;
        v283.size.height = height;
        [v194 setFrame_];
      }

      while (v191 != v192);
    }
  }

  v80 = v248;
LABEL_114:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
  v201 = swift_initStackObject();
  v249 = *(v165 + 138);
  *(v201 + 16) = v249;
  *(v201 + 32) = v24;
  v202 = swift_initStackObject();
  *(v202 + 16) = v249;
  *(v202 + 32) = v164;
  v250 = v201;
  v203 = v24;
  v204 = v164;
  sub_23E6C0410(v202);
  v205 = *(v247 + 3);
  v206 = *(v247 + 4);
  __swift_project_boxed_opaque_existential_1(v247, v205);
  v207 = sub_23E6C14C8(v205, v206);
  sub_23E6C0410(v207);
  if (v250 >> 62)
  {
    v208 = sub_23E6C35A4();
    if (v208)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v208 = *((v250 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v208)
    {
LABEL_116:
      if (v208 >= 1)
      {
        v209 = 0;
        do
        {
          if ((v250 & 0xC000000000000001) != 0)
          {
            v210 = MEMORY[0x23EF0F150](v209, v250);
          }

          else
          {
            v210 = *(v250 + 8 * v209 + 32);
          }

          v211 = v210;
          ++v209;
          [v210 *(v58 + 3752)];
          UIRoundToViewScale();
          v213 = v212;
          UIRoundToViewScale();
          v215 = v214;
          UIRoundToViewScale();
          v217 = v216;
          UIRoundToViewScale();
          [v211 setFrame_];
        }

        while (v208 != v209);
        goto LABEL_123;
      }

      __break(1u);
      goto LABEL_131;
    }
  }

LABEL_123:

  v219 = j + *&v254[1];
  v284.origin.x = v40;
  v284.size.width = v245;
  v284.origin.y = v246;
  v284.size.height = rect;
  v220 = CGRectGetHeight(v284);
  if (v162 >= v220)
  {
    v221 = v220;
  }

  else
  {
    v221 = v162;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_23E6C5900;
  v223 = sub_23E6C34C4();
  v225 = v224;
  *(v222 + 56) = MEMORY[0x277D837D0];
  *(v222 + 64) = sub_23E6B5F8C();
  *(v222 + 32) = v223;
  *(v222 + 40) = v225;
  v226 = sub_23E6C34A4();
  if (qword_27E34E250 != -1)
  {
    swift_once();
  }

  v227 = qword_27E34E258;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_23E6C5900;
  *(v228 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
  *(v228 + 64) = sub_23E6B8314();
  *(v228 + 32) = v222;
  sub_23E6C3354("Layout finished, exact fitting size is %{public}@", 49, 2, &dword_23E69E000, v227, v226, v228);

  v229 = CGCeiling(v219);
  v230 = CGCeiling(v221);
  sub_23E6B4E10(v254);
  *v236 = v229;
  v236[1] = v230;
  __swift_destroy_boxed_opaque_existential_1(v251);
}

uint64_t sub_23E6B7B28()
{
  v1 = (v0 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

id sub_23E6B7B68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityReplyBubbleView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static ReplyBubbleView.bubbleViewFor(reply:payload:isPending:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 176) = a3;
  *(v3 + 136) = a1;
  type metadata accessor for Reply(0);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = sub_23E6C3484();
  *(v3 + 160) = sub_23E6C3474();
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  *v6 = v3;
  v6[1] = sub_23E6B7CE8;

  return static ActivityRendererFactory.activityRenderer(for:payload:)(v3 + 56, a1, a2);
}

uint64_t sub_23E6B7CE8()
{

  v1 = sub_23E6C3464();

  return MEMORY[0x2822009F8](sub_23E6B7E24, v1, v0);
}

uint64_t sub_23E6B7E24()
{

  if (*(v0 + 80))
  {
    v1 = *(v0 + 176);
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    sub_23E6B7FA8((v0 + 56), v0 + 16);
    sub_23E6B4CA8(v0 + 16, v0 + 96);
    sub_23E6B4C44(v3, v2);
    v4 = objc_allocWithZone(type metadata accessor for ActivityReplyBubbleView(0));
    v5 = sub_23E6B627C((v0 + 96), v2, v1);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v6 = *(v0 + 176);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    sub_23E6B7F40(v0 + 56);
    sub_23E6B4C44(v8, v7);
    v9 = objc_allocWithZone(type metadata accessor for ReplyBubbleView(0));
    v5 = sub_23E6BCEE4(v7, v6);
  }

  v10 = *(v0 + 8);

  return v10(v5);
}

uint64_t sub_23E6B7F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4C0, qword_23E6C5988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E6B7FA8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for ActivityReplyBubbleView(uint64_t a1)
{
  result = qword_27E34E4C8;
  if (!qword_27E34E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E6B8064()
{
  v1 = sub_23E6C3274();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E6C32C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = v5;
    v22 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v21 = OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_reply;
    v11 = (v0 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer);
    v12 = v6;
    v14 = *(v0 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer + 24);
    v13 = *(v0 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17ActivitySharingUI23ActivityReplyBubbleView_activityRenderer), v14);
    v15 = *(v13 + 40);
    v23 = v1;
    v15(v14, v13);
    v16 = v11[3];
    v17 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v16);
    (*(v17 + 24))(v16, v17);
    v18 = v11[3];
    v19 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v18);
    (*(v19 + 32))(&v27, v18, v19);
    v26 = v27;
    (*(v22 + 8))(v0 + v21, v8, v4, &v26, ObjectType);
    swift_unknownObjectRelease();
    (*(v2 + 8))(v4, v23);
    return (*(v12 + 8))(v8, v25);
  }

  return result;
}

unint64_t sub_23E6B8314()
{
  result = qword_27E34E4E8;
  if (!qword_27E34E4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E34E4E0, &qword_23E6C5C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E4E8);
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

unint64_t sub_23E6B83C8()
{
  result = qword_27E34E4F0;
  if (!qword_27E34E4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E34E4F0);
  }

  return result;
}

uint64_t type metadata accessor for AchievementRenderer(uint64_t a1)
{
  result = qword_27E34E4F8;
  if (!qword_27E34E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E6B8488(uint64_t a1)
{
  result = sub_23E6B39F0(319, &qword_27E34E508, 0x277CCDDC0);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Reply(319);
    if (v3 <= 0x3F)
    {
      result = sub_23E6B39F0(319, &qword_27E34E468, 0x277D755E8);
      if (v4 <= 0x3F)
      {
        result = sub_23E6B39F0(319, &qword_27E34E470, 0x277D756B8);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_23E6B856C(void *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 templateUniqueName];
  v3 = ASIsCompetitionVictoryTemplate();

  v4 = sub_23E6C34A4();
  if (v3)
  {
    if (qword_27E34E250 != -1)
    {
      swift_once();
    }

    v5 = qword_27E34E258;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23E6C5900;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
    *(v6 + 64) = sub_23E6B8314();
    *(v6 + 32) = MEMORY[0x277D84F90];
    sub_23E6C3354("Competition victory, building an in-memory achievement to render", 64, 2, &dword_23E69E000, v5, v4, v6);

    return ASEphemeralCompetitionVictoryAchievementForFriendAchievement();
  }

  if (qword_27E34E250 != -1)
  {
    swift_once();
  }

  v8 = qword_27E34E258;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E6C5900;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
  *(v9 + 56) = v10;
  v11 = sub_23E6B8314();
  *(v9 + 64) = v11;
  *(v9 + 32) = MEMORY[0x277D84F90];
  sub_23E6C3354("Not a competition victory achievement, looking up via xpc to healthd", 68, 2, &dword_23E69E000, v8, v4, v9);

  v12 = [objc_allocWithZone(MEMORY[0x277CE8DE0]) init];
  result = [a1 templateUniqueName];
  if (result)
  {
    v14 = result;
    v36[0] = 0;
    v7 = [v12 ephemeralAchievementWithTemplateUniqueName:result error:v36];

    if (v36[0])
    {
      v15 = v36[0];

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23E6C59F0;
      v17 = [a1 templateUniqueName];
      v18 = MEMORY[0x277D837D0];
      if (v17)
      {
        v19 = v17;
        v20 = sub_23E6C33A4();
        v22 = v21;

        v23 = MEMORY[0x277D837D0];
        v17 = sub_23E6B5F8C();
      }

      else
      {
        v20 = 0;
        v22 = 0;
        v23 = 0;
        *(v16 + 48) = 0;
      }

      *(v16 + 32) = v20;
      *(v16 + 40) = v22;
      *(v16 + 56) = v23;
      *(v16 + 64) = v17;
      v36[0] = v15;
      v27 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E520, qword_23E6C5A58);
      v28 = sub_23E6C33C4();
      v30 = v29;
      *(v16 + 96) = v18;
      *(v16 + 104) = sub_23E6B5F8C();
      *(v16 + 72) = v28;
      *(v16 + 80) = v30;
      v31 = sub_23E6C34A4();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_23E6C5900;
      *(v32 + 56) = v10;
      *(v32 + 64) = v11;
      *(v32 + 32) = v16;
      sub_23E6C3354("Error fetching achievement for template name %@: %@", 51, 2, &dword_23E69E000, v8, v31, v32);

      return 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_23E6C5900;
      if (v7)
      {
        v25 = sub_23E6B39F0(0, &qword_27E34E510, 0x277CE8CB0);
        v26 = sub_23E6B93BC();
      }

      else
      {
        v25 = 0;
        v26 = 0;
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
      }

      *(v24 + 32) = v7;
      *(v24 + 56) = v25;
      *(v24 + 64) = v26;
      v33 = v7;
      v34 = sub_23E6C34A4();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_23E6C5900;
      *(v35 + 56) = v10;
      *(v35 + 64) = v11;
      *(v35 + 32) = v24;
      sub_23E6C3354("Fetched achievement: %@", 23, 2, &dword_23E69E000, v8, v34, v35);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_23E6B8A40(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v65 = sub_23E6C3274();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  v9 = type metadata accessor for AchievementRenderer(0);
  v10 = a4 + v9[5];
  v72 = a3;
  sub_23E6B4C44(a3, v10);
  v11 = qword_27E34E268;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v73);
  v13 = v74;
  v14 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  (*(v14 + 8))(v76, v13, v14);
  v70 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(a4 + v9[7]) = v15;
  v16 = v76[20];
  v17 = v15;
  [v17 setNumberOfLines_];
  [v17 setAllowsDefaultTighteningForTruncation_];
  v62 = v17;
  [v17 setLineBreakMode_];
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(a4 + v9[8]) = v18;
  v19 = v18;
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v66 = v19;
  [v19 setLineBreakMode_];
  v20 = ASEphemeralEarnedAchievementForFriendAchievement();
  v21 = [v12 templateUniqueName];
  LODWORD(v19) = ASIsCompetitionVictoryTemplate();

  v69 = a2;
  v68 = a4;
  v67 = v9;
  v71 = v20;
  if (v19)
  {
    type metadata accessor for ReplyBubbleView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_23E6C3374();
    v25 = [v23 localizedStringForKey:v24 value:0 table:0];

LABEL_6:
    v26 = sub_23E6C33A4();
    v28 = v27;

    goto LABEL_7;
  }

  v25 = [v70 titleForAchievement_];
  if (v25)
  {
    goto LABEL_6;
  }

  v26 = 0;
  v28 = 0;
LABEL_7:
  v29 = v74;
  v30 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v31 = [v71 template];
  (*(v30 + 104))(v72, v26, v28, v31, v29, v30);

  v32 = v74;
  v33 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v34 = [v12 completedDate];

  if (v34)
  {
    v35 = v63;
    sub_23E6C3254();

    v61[1] = (*(v33 + 112))(v72, v35, v26, v28, v32, v33);

    (*(v64 + 8))(v35, v65);
    v36 = v74;
    v37 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v38 = (*(v37 + 24))(v36, v37);
    sub_23E6B4774(v38);

    v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v40 = sub_23E6C3374();

    type metadata accessor for Key(0);
    sub_23E6B4D50();
    v41 = sub_23E6C3364();

    v42 = [v39 initWithString:v40 attributes:v41];

    v43 = v62;
    [v62 setAttributedText_];

    v44 = v74;
    v45 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v46 = (*(v45 + 32))(v44, v45);
    sub_23E6B4774(v46);

    v47 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v48 = sub_23E6C3374();

    v49 = sub_23E6C3364();

    v50 = [v47 initWithString:v48 attributes:v49];

    v51 = v66;
    [v66 setAttributedText_];

    v52 = v74;
    v53 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    if ((*(v53 + 40))(v52, v53))
    {
      v54 = [objc_allocWithZone(MEMORY[0x277CE8DA8]) init];
      v55 = *&v76[9];
      v56 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
      *(v68 + v67[6]) = v56;
      v57 = v56;
      [v57 setContentMode_];
      v58 = v71;
      v59 = [v54 thumbnailImageForAchievement:v71 size:{v55 + 10.0, v55 + 10.0}];
      [v57 setImage_];

      sub_23E6B4E10(v76);
      sub_23E6B4E64(v72);
    }

    else
    {
      v60 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];

      sub_23E6B4E10(v76);
      sub_23E6B4E64(v72);
      *(v68 + v67[6]) = v60;
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E6B92E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23E6C5890;
  v4 = *(v1 + *(a1 + 28));
  v5 = *(v1 + *(a1 + 32));
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = v4;
  v7 = v5;
  return v3;
}

void sub_23E6B9354()
{
  v1 = [*v0 completedDate];
  if (v1)
  {
    v2 = v1;
    sub_23E6C3254();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23E6B93BC()
{
  result = qword_27E34E518;
  if (!qword_27E34E518)
  {
    sub_23E6B39F0(255, &qword_27E34E510, 0x277CE8CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E518);
  }

  return result;
}

uint64_t type metadata accessor for GoalCompletionRenderer(uint64_t a1)
{
  result = qword_27E34E528;
  if (!qword_27E34E528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E6B9498(uint64_t a1)
{
  result = sub_23E6B39F0(319, &qword_27E34E538, 0x277CCDDC8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Reply(319);
    if (v3 <= 0x3F)
    {
      result = sub_23E6B39F0(319, &qword_27E34E468, 0x277D755E8);
      if (v4 <= 0x3F)
      {
        result = sub_23E6B39F0(319, &qword_27E34E470, 0x277D756B8);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23E6B957C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v6 = type metadata accessor for GoalCompletionRenderer(0);
  sub_23E6B4C44(a2, a3 + v6[5]);
  v42 = a1;
  v7 = [v42 activitySummary];
  if (qword_27E34E268 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v43);
  v8 = v44;
  v9 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v9 + 8))(v46, v8, v9);
  v10 = [objc_opt_self() activityRingGroup];
  HIDWORD(v11) = HIDWORD(v47);
  *&v11 = v47;
  [v10 setGroupDiameter_];
  HIDWORD(v12) = HIDWORD(v48);
  *&v12 = v48;
  [v10 setThickness_];
  HIDWORD(v13) = HIDWORD(v49);
  *&v13 = v49;
  [v10 setInterspacing_];
  [v10 hk:v7 configureWithActivitySummary:0 animated:?];
  v41 = [objc_opt_self() renderRingGroup:v10 withRenderer:0];
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(a3 + v6[6]) = v14;
  [v14 setContentMode_];
  v40 = v7;
  if (v7)
  {
    v15 = [v7 _isStandalonePhoneSummary];
  }

  else
  {
    v15 = 0;
  }

  v16 = v44;
  v17 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v17 + 120))(a2, v15, v16, v17);
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(a3 + v6[7]) = v18;
  v19 = v50;
  v20 = v18;
  [v20 setNumberOfLines_];
  v21 = v44;
  v22 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v23 = (*(v22 + 24))(v21, v22);
  sub_23E6B4774(v23);

  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_23E6C3374();

  type metadata accessor for Key(0);
  sub_23E6B4D50();
  v26 = sub_23E6C3364();

  v27 = [v24 initWithString:v25 attributes:v26];

  [v20 setAttributedText_];
  [v20 setLineBreakMode_];

  v28 = v44;
  v29 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  (*(v29 + 128))(v42, v28, v29);

  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(a3 + v6[8]) = v30;
  v31 = v30;
  [v31 setNumberOfLines_];
  v32 = v44;
  v33 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v34 = (*(v33 + 32))(v32, v33);
  sub_23E6B4774(v34);

  v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v36 = sub_23E6C3374();

  v37 = sub_23E6C3364();

  v38 = [v35 initWithString:v36 attributes:v37];

  [v31 setAttributedText_];
  [v31 setLineBreakMode_];

  sub_23E6B4E10(v46);
  sub_23E6B4E64(a2);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_23E6B9AB4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_23E6C3324();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E540, &unk_23E6C5C40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E548, &unk_23E6C5AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_23E6C3274();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  [*v1 snapshotIndex];
  v21 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (v21)
  {
    v22 = v21;
    sub_23E6C31D4();

    v23 = sub_23E6C31F4();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
  }

  else
  {
    v23 = sub_23E6C31F4();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  }

  sub_23E6B9F18(v8, v10);
  sub_23E6C31F4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v10, 1, v23) == 1)
  {
    sub_23E6B9F88(v10, &qword_27E34E540, &unk_23E6C5C40);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_7:
    sub_23E6B9F88(v13, &qword_27E34E548, &unk_23E6C5AB0);
    return sub_23E6C3264();
  }

  sub_23E6C31E4();
  (*(v24 + 8))(v10, v23);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  (*(v15 + 32))(v20, v13, v14);
  sub_23E6C3314();
  sub_23E6C3264();
  sub_23E6C32F4();
  v26 = *(v15 + 8);
  v26(v18, v14);
  (*(v28 + 8))(v4, v29);
  sub_23E6C3234();
  return (v26)(v20, v14);
}

uint64_t sub_23E6B9F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E540, &unk_23E6C5C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E6B9F88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Reply.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Reply.friend.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Reply(0) + 24);
  v4 = sub_23E6C32C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Reply(uint64_t a1)
{
  result = qword_27E34E568;
  if (!qword_27E34E568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Reply.recipientAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for Reply(0) + 28));

  return v1;
}

uint64_t Reply.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Reply(0) + 32);
  v4 = sub_23E6C3274();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Reply.debugDescription.getter()
{
  sub_23E6C3544();
  MEMORY[0x23EF0F000](0x3D6567617373654DLL, 0xE900000000000027);
  MEMORY[0x23EF0F000](*v0, *(v0 + 8));
  MEMORY[0x23EF0F000](0x6D6F724673692027, 0xEB000000003D654DLL);
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x23EF0F000](v1, v2);

  MEMORY[0x23EF0F000](0x3D646E6569726620, 0xE800000000000000);
  v3 = type metadata accessor for Reply(0);
  sub_23E6C32C4();
  sub_23E6BA3D8(&qword_27E34E550, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v4 = sub_23E6C35D4();
  MEMORY[0x23EF0F000](v4);

  MEMORY[0x23EF0F000](0xD000000000000012, 0x800000023E6C71E0);
  MEMORY[0x23EF0F000](*(v0 + *(v3 + 28)), *(v0 + *(v3 + 28) + 8));
  MEMORY[0x23EF0F000](0x617473656D697420, 0xEB000000003D706DLL);
  sub_23E6C3274();
  sub_23E6BA3D8(&qword_27E34E558, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v5 = sub_23E6C35D4();
  MEMORY[0x23EF0F000](v5);

  return 0;
}

uint64_t sub_23E6BA3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Reply.init(message:isFromMe:friend:recipientAddress:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for Reply(0);
  v14 = v13[6];
  v15 = sub_23E6C32C4();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  v16 = (a8 + v13[7]);
  *v16 = a5;
  v16[1] = a6;
  v17 = v13[8];
  v18 = sub_23E6C3274();
  v19 = *(*(v18 - 8) + 32);

  return v19(a8 + v17, a7, v18);
}

uint64_t static Reply.reply(from:isFromMe:)@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v64 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E560, &unk_23E6C5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_23E6C32C4();
  v62 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E548, &unk_23E6C5AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_23E6C3274();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = sub_23E6C3214();
  v20 = ASMessageFromRichMessagePayload();

  if (v20)
  {
    v59 = v4;
    v58 = sub_23E6C33A4();
    v22 = v21;

    v23 = sub_23E6C3214();
    v24 = ASRecipientAddressFromRichMessagePayload();

    if (v24)
    {
      v57 = v22;
      v25 = sub_23E6C33A4();
      v55 = v26;
      v56 = v25;

      v27 = sub_23E6C3214();
      v28 = ASTimestampFromRichMessagePayload();

      if (v28)
      {
        sub_23E6C3254();

        v29 = *(v13 + 32);
        v29(v11, v16, v12);
        (*(v13 + 56))(v11, 0, 1, v12);
        v29(v18, v11, v12);
        v30 = v61;
      }

      else
      {
        (*(v13 + 56))(v11, 1, 1, v12);
        sub_23E6C3264();
        v42 = (*(v13 + 48))(v11, 1, v12);
        v30 = v61;
        if (v42 != 1)
        {
          sub_23E6B9F88(v11, &qword_27E34E548, &unk_23E6C5AB0);
        }
      }

      v43 = sub_23E6C3214();
      v44 = ASFriendUUIDFromRichMessagePayload();

      if (v44)
      {
        v45 = v60;
        sub_23E6C32A4();

        v46 = v62;
        v47 = *(v62 + 32);
        v48 = v59;
        v47(v59, v45, v5);
        (*(v46 + 56))(v48, 0, 1, v5);
        v47(v30, v48, v5);
      }

      else
      {
        v46 = v62;
        v49 = v59;
        (*(v62 + 56))(v59, 1, 1, v5);
        sub_23E6C32B4();
        if ((*(v46 + 48))(v49, 1, v5) != 1)
        {
          sub_23E6B9F88(v49, &qword_27E34E560, &unk_23E6C5AC0);
        }
      }

      v50 = v64;
      v51 = v57;
      *v64 = v58;
      v50[1] = v51;
      *(v50 + 16) = v63 & 1;
      v52 = type metadata accessor for Reply(0);
      (*(v46 + 32))(v50 + v52[6], v30, v5);
      v53 = (v50 + v52[7]);
      v54 = v55;
      *v53 = v56;
      v53[1] = v54;
      (*(v13 + 32))(v50 + v52[8], v18, v12);
      return (*(*(v52 - 1) + 56))(v50, 0, 1, v52);
    }

    v34 = sub_23E6C3494();
    if (qword_27E34E250 != -1)
    {
      swift_once();
    }

    v35 = qword_27E34E258;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_23E6C5900;
    *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
    *(v36 + 64) = sub_23E6B8314();
    *(v36 + 32) = MEMORY[0x277D84F90];
    sub_23E6C3354("Recipient address missing from payload", 38, 2, &dword_23E69E000, v35, v34, v36);
  }

  else
  {
    v31 = sub_23E6C3494();
    if (qword_27E34E250 != -1)
    {
      swift_once();
    }

    v32 = qword_27E34E258;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23E6C5900;
    *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
    *(v33 + 64) = sub_23E6B8314();
    *(v33 + 32) = MEMORY[0x277D84F90];
    sub_23E6C3354("Message missing from payload", 28, 2, &dword_23E69E000, v32, v31, v33);
  }

  v37 = type metadata accessor for Reply(0);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v64;

  return v38(v40, 1, 1, v39);
}

uint64_t sub_23E6BAC7C(uint64_t a1)
{
  result = sub_23E6C32C4();
  if (v2 <= 0x3F)
  {
    result = sub_23E6C3274();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23E6BAD18(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 fontWithDescriptor:v8 size:0.0];
    v11 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    v12 = [objc_opt_self() defaultParagraphStyle];
    [v11 setParagraphStyle_];

    if ((a4 & 1) == 0)
    {
      v13 = *&a3;
      v14 = [v9 fontWithDescriptor:v8 size:0.0];
      [v14 _scaledValueForValue_];
      v16 = v15;
      [v11 setLineSpacing_];
      [v11 setMinimumLineHeight_];
      [v11 setMaximumLineHeight_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E648, &qword_23E6C5C58);
    inited = swift_initStackObject();
    v18 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    *(inited + 16) = xmmword_23E6C5B20;
    v19 = *MEMORY[0x277D740A8];
    *(inited + 40) = v11;
    *(inited + 48) = v19;
    v20 = *MEMORY[0x277D740C0];
    *(inited + 56) = v10;
    *(inited + 64) = v20;
    *(inited + 72) = a1;
    v21 = v18;
    v22 = v11;
    v23 = v19;
    v24 = v10;
    v25 = v20;
    v26 = a1;
    v27 = sub_23E6C0B34(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E34E650, &unk_23E6C5C60);
    swift_arrayDestroy();

    return v27;
  }

  else
  {
    sub_23E6C3494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_23E6C5900;
    v30 = sub_23E6C33A4();
    v32 = v31;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_23E6B5F8C();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    if (qword_27E34E250 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23E6C5900;
    *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
    *(v33 + 64) = sub_23E6B8314();
    *(v33 + 32) = v29;
    sub_23E6C3354("Error creating font descriptor, style: %d", 1);

    v34 = MEMORY[0x277D84F90];

    return sub_23E6C0B34(v34);
  }
}

uint64_t sub_23E6BB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    type metadata accessor for ReplyBubbleView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_23E6C3374();
    v10 = a1;
    v11 = [v8 localizedStringForKey:v9 value:0 table:0];

    a2 = sub_23E6C33A4();
    v6 = v12;

    a1 = v10;
  }

  ACHTemplateIsMonthlyChallenge();
  v13 = *(a1 + 16);
  v14 = a1;
  type metadata accessor for ReplyBubbleView(0);
  v15 = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_23E6C3374();

  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  sub_23E6C33A4();
  if (v13 == 1)
  {
    v19 = type metadata accessor for Reply(0);
    v20 = sub_23E6BC934(*(v14 + *(v19 + 28)), *(v14 + *(v19 + 28) + 8), 1);
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_23E6C59F0;
    v24 = MEMORY[0x277D837D0];
    *(v23 + 56) = MEMORY[0x277D837D0];
    v25 = sub_23E6B5F8C();
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    *(v23 + 96) = v24;
    *(v23 + 104) = v25;
    v26 = (v23 + 80);
    *(v23 + 64) = v25;
    *(v23 + 72) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_23E6C5900;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_23E6B5F8C();
    *(v27 + 32) = a2;
    v26 = (v27 + 40);
  }

  *v26 = v6;
  v28 = sub_23E6C33B4();

  return v28;
}

uint64_t sub_23E6BB3F0(uint64_t a1, char a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = type metadata accessor for Reply(0);
    v4 = sub_23E6BC934(*(a1 + *(v3 + 28)), *(a1 + *(v3 + 28) + 8), 1);
    v6 = v5;
    type metadata accessor for ReplyBubbleView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_23E6C3374();
    v10 = [v8 localizedStringForKey:v9 value:0 table:0];

    sub_23E6C33A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23E6C5900;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_23E6B5F8C();
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    v12 = sub_23E6C33B4();
  }

  else
  {
    type metadata accessor for ReplyBubbleView(0);
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_23E6C3374();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    v12 = sub_23E6C33A4();
  }

  return v12;
}

uint64_t sub_23E6BB660(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E640, &qword_23E6C5C38);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_23E6C3324();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E540, &unk_23E6C5C40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E548, &unk_23E6C5AB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_23E6C3274();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 snapshotIndex];
  v21 = _HKActivityCacheDateComponentsFromCacheIndex();
  if (v21)
  {
    v22 = v21;
    sub_23E6C31D4();

    v23 = sub_23E6C31F4();
    (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  }

  else
  {
    v23 = sub_23E6C31F4();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  }

  sub_23E6B9F18(v11, v13);
  sub_23E6C31F4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_23E6B9F88(v13, &qword_27E34E540, &unk_23E6C5C40);
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_7:
    sub_23E6B9F88(v16, &qword_27E34E548, &unk_23E6C5AB0);
    return 0;
  }

  sub_23E6C31E4();
  (*(v24 + 8))(v13, v23);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  (*(v18 + 32))(v20, v16, v17);
  sub_23E6C32E4();
  v27 = v35;
  v26 = v36;
  v28 = *(v35 + 48);
  if (v28(v4, 1, v36) == 1)
  {
    sub_23E6C3314();
    if (v28(v4, 1, v26) != 1)
    {
      sub_23E6B9F88(v4, &qword_27E34E640, &qword_23E6C5C38);
    }
  }

  else
  {
    (*(v27 + 32))(v7, v4, v26);
  }

  if (qword_27E34E270 != -1)
  {
    swift_once();
  }

  v29 = qword_27E34E7A8;
  v30 = sub_23E6C3304();
  [v29 setTimeZone_];

  v31 = qword_27E34E7A8;
  v32 = sub_23E6C3244();
  v33 = [v31 stringFromDate_];

  v34 = sub_23E6C33A4();
  (*(v27 + 8))(v7, v26);
  (*(v18 + 8))(v20, v17);
  return v34;
}

uint64_t sub_23E6BBC08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v16[11] = v3;
  v17 = *(v1 + 200);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v5;
  v16[8] = *(v1 + 136);
  v16[9] = v2;
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v7;
  v16[4] = *(v1 + 72);
  v16[5] = v4;
  v16[0] = *(v1 + 8);
  v16[1] = v6;
  v8 = *(v1 + 152);
  v9 = *(v1 + 184);
  *(a1 + 160) = *(v1 + 168);
  *(a1 + 176) = v9;
  *(a1 + 192) = *(v1 + 200);
  v10 = *(v1 + 88);
  v11 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v8;
  v12 = *(v1 + 24);
  v13 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v13;
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v10;
  *a1 = *(v1 + 8);
  *(a1 + 16) = v12;
  return sub_23E6BC13C(v16, v15);
}

unint64_t sub_23E6BBCFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = [objc_opt_self() whiteColor];
  v7 = sub_23E6BAD18(v6, *a3, a4, 0);

  return v7;
}

unint64_t sub_23E6BBD68()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:*(v0 + 128) alpha:1.0];
  v2 = sub_23E6BAD18(v1, *MEMORY[0x277D76938], 0, 1);

  return v2;
}

uint64_t sub_23E6BBEA4()
{
  v0 = sub_23E6BCCA8();
  v1 = ASShortNameForContactStoreContact();

  if (!v1)
  {
    return sub_23E6BC5C8();
  }

  v2 = sub_23E6C33A4();

  return v2;
}

double sub_23E6BBF50()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76938];
  v2 = [v0 preferredFontForTextStyle_];

  xmmword_27E34E578 = xmmword_23E6C5B30;
  xmmword_27E34E588 = xmmword_23E6C5B40;
  xmmword_27E34E598 = 0x403E000000000000uLL;
  xmmword_27E34E5A8 = xmmword_23E6C5B50;
  xmmword_27E34E5B8 = xmmword_23E6C5B60;
  xmmword_27E34E5C8 = xmmword_23E6C5B70;
  xmmword_27E34E5D8 = xmmword_23E6C5B80;
  xmmword_27E34E5E8 = xmmword_23E6C5B90;
  xmmword_27E34E5F8 = xmmword_23E6C5BA0;
  *&xmmword_27E34E608 = v2;
  BYTE8(xmmword_27E34E608) = 1;
  *&xmmword_27E34E618 = 3;
  result = 4.0;
  *(&xmmword_27E34E618 + 8) = xmmword_23E6C5BB0;
  qword_27E34E630 = 2;
  byte_27E34E638 = 1;
  return result;
}

uint64_t static ReplyLayoutValues.phoneValues.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E34E260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_27E34E608;
  v15[10] = xmmword_27E34E618;
  v15[11] = unk_27E34E628;
  v3 = xmmword_27E34E5C8;
  v4 = xmmword_27E34E5D8;
  v15[6] = xmmword_27E34E5D8;
  v15[7] = xmmword_27E34E5E8;
  v5 = xmmword_27E34E5E8;
  v6 = xmmword_27E34E5F8;
  v15[8] = xmmword_27E34E5F8;
  v15[9] = xmmword_27E34E608;
  v7 = xmmword_27E34E588;
  v8 = xmmword_27E34E598;
  v15[2] = xmmword_27E34E598;
  v15[3] = xmmword_27E34E5A8;
  v9 = xmmword_27E34E5A8;
  v10 = xmmword_27E34E5B8;
  v15[4] = xmmword_27E34E5B8;
  v15[5] = xmmword_27E34E5C8;
  v15[0] = xmmword_27E34E578;
  v11 = xmmword_27E34E578;
  v15[1] = xmmword_27E34E588;
  v12 = unk_27E34E628;
  *(a1 + 160) = xmmword_27E34E618;
  *(a1 + 176) = v12;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  *(a1 + 144) = v2;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v16 = byte_27E34E638;
  *(a1 + 192) = byte_27E34E638;
  *a1 = v11;
  *(a1 + 16) = v7;
  return sub_23E6BC13C(v15, &v14);
}

uint64_t static ReplyLayoutValues.phoneValues.setter(uint64_t a1)
{
  if (qword_27E34E260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9[9] = xmmword_27E34E608;
  v9[10] = xmmword_27E34E618;
  v9[11] = unk_27E34E628;
  v10 = byte_27E34E638;
  v9[7] = xmmword_27E34E5E8;
  v9[8] = xmmword_27E34E5F8;
  v9[2] = xmmword_27E34E598;
  v9[3] = xmmword_27E34E5A8;
  v9[5] = xmmword_27E34E5C8;
  v9[6] = xmmword_27E34E5D8;
  v9[4] = xmmword_27E34E5B8;
  v9[0] = xmmword_27E34E578;
  v9[1] = xmmword_27E34E588;
  v2 = *(a1 + 176);
  xmmword_27E34E618 = *(a1 + 160);
  unk_27E34E628 = v2;
  byte_27E34E638 = *(a1 + 192);
  v3 = *(a1 + 112);
  xmmword_27E34E5D8 = *(a1 + 96);
  xmmword_27E34E5E8 = v3;
  v4 = *(a1 + 144);
  xmmword_27E34E5F8 = *(a1 + 128);
  xmmword_27E34E608 = v4;
  v5 = *(a1 + 48);
  xmmword_27E34E598 = *(a1 + 32);
  xmmword_27E34E5A8 = v5;
  v6 = *(a1 + 80);
  xmmword_27E34E5B8 = *(a1 + 64);
  xmmword_27E34E5C8 = v6;
  v7 = *(a1 + 16);
  xmmword_27E34E578 = *a1;
  xmmword_27E34E588 = v7;
  return sub_23E6B4E10(v9);
}

uint64_t (*static ReplyLayoutValues.phoneValues.modify(uint64_t a1))()
{
  if (qword_27E34E260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_23E6BC364(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
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

uint64_t sub_23E6BC3AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E6BC430()
{
  v0 = sub_23E6C3324();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E6C3314();
  if (qword_27E34E270 != -1)
  {
    swift_once();
  }

  v4 = qword_27E34E7A8;
  v5 = sub_23E6C3304();
  [v4 setTimeZone_];

  v6 = qword_27E34E7A8;
  v7 = sub_23E6C3244();
  v8 = [v6 stringFromDate_];

  v9 = sub_23E6C33A4();
  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_23E6BC5C8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for ReplyBubbleView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_23E6C3374();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    v1 = sub_23E6C33A4();
    v7 = v6;

    *(v0 + 16) = v1;
    *(v0 + 24) = v7;
  }

  return v1;
}

uint64_t sub_23E6BC6B4(uint64_t a1, uint64_t a2, char a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = sub_23E6C3374();
    v5 = ASContactStorePredicateForDestination();

    v6 = sub_23E6BCB8C();
    sub_23E6BCBF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E34E6C0, &qword_23E6C5CD0);
    v7 = sub_23E6C3444();

    v22[0] = 0;
    v8 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v7 error:v22];

    v9 = v22[0];
    if (!v8)
    {
      v19 = v22[0];
      v20 = sub_23E6C3204();

      swift_willThrow();
      goto LABEL_18;
    }

    sub_23E6BCE98();
    v10 = sub_23E6C3454();
    v11 = v9;

    if (v10 >> 62)
    {
      if (sub_23E6C35A4())
      {
        goto LABEL_5;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23EF0F150](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v12 = *(v10 + 32);
      }

      v13 = v12;

      v14 = ASFullNameForContactStoreContact();
      if (v14)
      {
        v15 = v14;
        a1 = sub_23E6C33A4();

        return a1;
      }

LABEL_18:

      return a1;
    }

    goto LABEL_18;
  }

  v16 = sub_23E6BCCA8();
  v17 = ASFullNameForContactStoreContact();

  if (!v17)
  {
    v18 = sub_23E6BCCA8();
    v17 = ASShortNameForContactStoreContact();

    if (!v17)
    {
      return sub_23E6BC5C8();
    }
  }

  a1 = sub_23E6C33A4();

  return a1;
}

uint64_t sub_23E6BC934(uint64_t a1, uint64_t a2, char a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    v15 = sub_23E6BCCA8();
    v16 = ASShortNameForContactStoreContact();

    if (!v16)
    {
      return sub_23E6BC5C8();
    }

    a1 = sub_23E6C33A4();

    return a1;
  }

  v4 = sub_23E6C3374();
  v5 = ASContactStorePredicateForDestination();

  v6 = sub_23E6BCB8C();
  sub_23E6BCBF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E34E6C0, &qword_23E6C5CD0);
  v7 = sub_23E6C3444();

  v20[0] = 0;
  v8 = [v6 unifiedContactsMatchingPredicate:v5 keysToFetch:v7 error:v20];

  v9 = v20[0];
  if (!v8)
  {
    v17 = v20[0];
    v18 = sub_23E6C3204();

    swift_willThrow();
LABEL_15:

    return a1;
  }

  sub_23E6BCE98();
  v10 = sub_23E6C3454();
  v11 = v9;

  if (v10 >> 62)
  {
    if (sub_23E6C35A4())
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x23EF0F150](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = [v13 givenName];
  a1 = sub_23E6C33A4();

  return a1;
}

id sub_23E6BCB8C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_23E6BCBF8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_23E6C58A0;
    *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    *(v0 + 40) = v1;
  }

  return v1;
}

id sub_23E6BCCA8()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_23E6BCD08();
    v3 = *(v0 + 48);
    *(v0 + 48) = v2;
    v4 = v2;
    sub_23E6BCE78(v3);
  }

  sub_23E6BCE88(v1);
  return v2;
}

id sub_23E6BCD08()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23E6BCB8C();
  sub_23E6BCBF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E34E6C0, &qword_23E6C5CD0);
  v1 = sub_23E6C3444();

  v7[0] = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch_error_];

  v3 = v7[0];
  if (!v2)
  {
    v4 = v3;
    v5 = sub_23E6C3204();

    swift_willThrow();
    return 0;
  }

  return v2;
}

uint64_t sub_23E6BCE04()
{

  sub_23E6BCE78(*(v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_23E6BCE78(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23E6BCE88(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_23E6BCE98()
{
  result = qword_27E34E6D0;
  if (!qword_27E34E6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E34E6D0);
  }

  return result;
}

char *sub_23E6BCEE4(uint64_t *a1, char a2)
{
  *&v2[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_23E6B4C44(a1, &v2[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_reply]);
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *&v2[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_userMessageLabel] = v5;
  v6 = &v2[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_fittingSize];
  *v6 = 0;
  v6[1] = 0;
  v2[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_isPending] = a2;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for ReplyBubbleView(0);
  v7 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = qword_27E34E268;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v25);
  v10 = v26;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v11 + 8))(v29, v10, v11);
  v12 = OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_userMessageLabel;
  v13 = *(v9 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_userMessageLabel);
  v14 = v26;
  v15 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v24 = a1;
  v16 = *(v15 + 16);
  v17 = v13;
  v18 = v16(v14, v15);
  sub_23E6B4774(v18);

  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_23E6C3374();
  type metadata accessor for Key(0);
  sub_23E6B4D50();
  v21 = sub_23E6C3364();

  v22 = [v19 initWithString:v20 attributes:v21];

  [v17 setAttributedText_];
  [*(v9 + v12) setNumberOfLines_];
  [*(v9 + v12) setAllowsDefaultTighteningForTruncation_];
  [*(v9 + v12) setLineBreakMode_];
  [v9 addSubview_];

  sub_23E6B4E10(v29);
  sub_23E6B4E64(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v9;
}

uint64_t sub_23E6BD204(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23E6BD270(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23E6BD310;
}

void sub_23E6BD310(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_23E6BD398()
{
  v1 = v0 + OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_fittingSize;
  swift_beginAccess();
  return *v1;
}

uint64_t ReplyBubbleViewTapBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_23E6C3624();
  MEMORY[0x23EF0F230](v1);
  return sub_23E6C3644();
}

uint64_t sub_23E6BD484()
{
  v1 = *v0;
  sub_23E6C3624();
  MEMORY[0x23EF0F230](v1);
  return sub_23E6C3644();
}

uint64_t sub_23E6BD4F8(uint64_t a1)
{
  v2 = *v1;
  sub_23E6C3624();
  MEMORY[0x23EF0F230](v2);
  return sub_23E6C3644();
}

void sub_23E6BD624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23E6C5900;
  [v1 bounds];
  v3 = sub_23E6C34B4();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_23E6B5F8C();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = sub_23E6C34A4();
  if (qword_27E34E250 != -1)
  {
    swift_once();
  }

  v7 = qword_27E34E258;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23E6C5900;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
  *(v8 + 56) = v9;
  v10 = sub_23E6B8314();
  *(v8 + 64) = v10;
  *(v8 + 32) = v2;
  sub_23E6C3354("OMG base bubble view Layout for bounds: %{public}@", 50, 2, &dword_23E69E000, v7, v6, v8);

  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v15 = &v1[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_fittingSize];
  swift_beginAccess();
  if (v12 == *v15 && v14 == v15[1])
  {
    v16 = sub_23E6C34A4();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_23E6C5900;
    *(v17 + 56) = v9;
    *(v17 + 64) = v10;
    *(v17 + 32) = MEMORY[0x277D84F90];
    sub_23E6C3354("Skipping layout pass, size matches current fitting size", 55, 2, &dword_23E69E000, v7, v16, v17);

    return;
  }

  if (qword_27E34E268 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v71);
  v18 = v72;
  v19 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  (*(v19 + 8))(v74, v18, v19);
  v20 = v72;
  v21 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  [v1 bounds];
  v26 = sub_23E6C0E80(v1[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_reply + 16], v20, v21, v22, v23, v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v75;
  if (v1[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_isPending])
  {
    v34 = v76;
  }

  else
  {
    v34 = v75;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_23E6C5900;
  *(v35 + 56) = MEMORY[0x277D85048];
  *(v35 + 64) = sub_23E6BDD00();
  *(v35 + 32) = v34;
  v36 = sub_23E6C34A4();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_23E6C5900;
  *(v37 + 56) = v9;
  *(v37 + 64) = v10;
  *(v37 + 32) = v35;
  sub_23E6C3354("OMG userMessageTrailingInset %@", 31, 2, &dword_23E69E000, v7, v36, v37);

  v77.origin.x = v26;
  v77.origin.y = v28;
  v77.size.width = v30;
  v77.size.height = v32;
  Width = CGRectGetWidth(v77);
  v39 = *&v1[OBJC_IVAR____TtC17ActivitySharingUI15ReplyBubbleView_userMessageLabel];
  [v39 sizeThatFits_];
  v41 = v40;
  v43 = v42;
  v78.origin.x = v26;
  v78.origin.y = v28;
  v78.size.width = v30;
  v78.size.height = v32;
  [v39 setFrame_];
  v44 = v72;
  v45 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v46 = [v39 font];
  if (!v46)
  {
    __break(1u);
    goto LABEL_17;
  }

  v47 = v46;
  rect = v30;
  v48 = (*(v45 + 48))(v46, v44, v45);

  [v39 _setFirstLineBaselineFrameOriginY_];
  [v39 frame];
  MaxX = CGRectGetMaxX(v79);
  [v39 _lastLineBaselineFrameOriginY];
  v51 = v50;
  v52 = v72;
  v53 = v73;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v54 = [v39 font];
  if (!v54)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v55 = v54;
  v56 = v34 + MaxX;
  v57 = (*(v53 + 64))(v54, v52, v53);

  v58 = v51 + v57;
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    [v39 frame];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v80.origin.y = v28;
    v66 = v65;
    v80.origin.x = v26;
    v80.size.width = rect;
    v80.size.height = v32;
    v67 = CGRectGetWidth(v80);
    v81.origin.x = v60;
    v81.origin.y = v62;
    v81.size.width = v64;
    v81.size.height = v66;
    v68 = v67 - CGRectGetMinX(v81);
    v82.origin.x = v60;
    v82.origin.y = v62;
    v82.size.width = v64;
    v82.size.height = v66;
    v69 = v68 - CGRectGetWidth(v82);
    v83.origin.x = v60;
    v83.origin.y = v62;
    v83.size.width = v64;
    v83.size.height = v66;
    [v39 setFrame_];
  }

  sub_23E6B4E10(v74);
  *v15 = v56;
  v15[1] = v58;
  __swift_destroy_boxed_opaque_existential_1(v71);
}

id ReplyBubbleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReplyBubbleView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23E6BDD00()
{
  result = qword_27E34E6F0;
  if (!qword_27E34E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E6F0);
  }

  return result;
}

uint64_t type metadata accessor for ReplyBubbleView(uint64_t a1)
{
  result = qword_27E34E708;
  if (!qword_27E34E708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23E6BDDA4()
{
  result = qword_27E34E700;
  if (!qword_27E34E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplyBubbleViewTapBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for ReplyBubbleViewTapBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23E6BDF88(uint64_t a1)
{
  result = type metadata accessor for Reply(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for CompetitionScoreRenderer(uint64_t a1)
{
  result = qword_27E34E718;
  if (!qword_27E34E718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E6BE1C8(uint64_t a1)
{
  sub_23E6B39F0(319, &qword_27E34E4A0, 0x277CE90D8);
  if (v1 <= 0x3F)
  {
    sub_23E6B39F0(319, &qword_27E34E4A8, 0x277CE90F8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Reply(319);
      if (v3 <= 0x3F)
      {
        sub_23E6B39F0(319, &qword_27E34E468, 0x277D755E8);
        if (v4 <= 0x3F)
        {
          sub_23E6B39F0(319, &qword_27E34E470, 0x277D756B8);
          if (v5 <= 0x3F)
          {
            sub_23E6B3A38(319);
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

uint64_t sub_23E6BE30C()
{
  if (*(v0[6] + 16) == 1)
  {
    v1 = MEMORY[0x277D84F90];
    sub_23E6C0C2C(MEMORY[0x277D84F90]);
    sub_23E6C0D24(v1, &qword_27E34E790, &qword_23E6C5EC0);
    sub_23E6C0D24(v1, &qword_27E34E788, &qword_23E6C5EB8);
    v2 = objc_allocWithZone(MEMORY[0x277CE90F8]);
    sub_23E6B39F0(0, &qword_27E34E768, 0x277CCABB0);
    sub_23E6B39F0(0, &qword_27E34E538, 0x277CCDDC8);
    sub_23E6C0E14();
    v3 = sub_23E6C3364();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E778, &qword_23E6C5EA8);
    v4 = sub_23E6C3364();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E780, &qword_23E6C5EB0);
    v5 = sub_23E6C3364();

    sub_23E6B39F0(0, &qword_27E34E4A0, 0x277CE90D8);
    v6 = sub_23E6C3444();
    v7 = [v2 initWithActivitySnapshots:v3 friendAchievements:v4 friendWorkouts:v5 contact:0 competitions:v6];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    sub_23E6C3344();
    v0[7] = sub_23E6C3334();
    v11 = (*MEMORY[0x277CE94A0] + MEMORY[0x277CE94A0]);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_23E6BE5B8;

    return v11();
  }
}

uint64_t sub_23E6BE5B8()
{

  return MEMORY[0x2822009F8](sub_23E6BE6B4, 0, 0);
}

uint64_t sub_23E6BE6B4()
{
  type metadata accessor for Reply(0);
  v1 = sub_23E6C3284();
  v3 = v2;
  *(v0 + 72) = v2;
  v6 = (*MEMORY[0x277CE9498] + MEMORY[0x277CE9498]);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_23E6BE78C;

  return v6(v1, v3);
}

uint64_t sub_23E6BE78C(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23E6BEA88, 0, 0);
  }

  else
  {

    v4[12] = a1;
    v7 = (*MEMORY[0x277CE9490] + MEMORY[0x277CE9490]);
    v5 = swift_task_alloc();
    v4[13] = v5;
    *v5 = v4;
    v5[1] = sub_23E6BE928;

    return v7();
  }
}

uint64_t sub_23E6BE928()
{

  return MEMORY[0x2822009F8](sub_23E6BEA24, 0, 0);
}

uint64_t sub_23E6BEA24()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23E6BEA88()
{

  v1 = sub_23E6C3494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23E6C5900;
  swift_getErrorValue();
  v3 = sub_23E6C3614();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_23E6B5F8C();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (qword_27E34E250 != -1)
  {
    swift_once();
  }

  v6 = qword_27E34E258;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23E6C5900;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
  *(v7 + 64) = sub_23E6C0AEC(&qword_27E34E4E8, &qword_27E34E4E0, &qword_23E6C5C50, MEMORY[0x277CC9C50]);
  *(v7 + 32) = v2;
  sub_23E6C3354("Failed to fetch friend with error %@", 36, 2, &dword_23E69E000, v6, v1, v7);

  v10 = (*MEMORY[0x277CE9490] + MEMORY[0x277CE9490]);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_23E6BECAC;

  return v10();
}

uint64_t sub_23E6BECAC()
{

  return MEMORY[0x2822009F8](sub_23E6BEDA8, 0, 0);
}

uint64_t sub_23E6BEDA8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(0);
}

id sub_23E6BEE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E748, &qword_23E6C5E90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = objc_opt_self();
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v14 = [v12 stringWithNumber:v13 decimalPrecision:1];

  if (v14)
  {
    v15 = sub_23E6C33A4();
    v17 = v16;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D83E88];
    *(v18 + 16) = xmmword_23E6C5900;
    v20 = MEMORY[0x277D83ED0];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = a3;
    v15 = sub_23E6C33B4();
    v17 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23E6C59F0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v24 = sub_23E6B5F8C();
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v15;
  *(v22 + 80) = v17;

  v25 = sub_23E6C33B4();
  v27 = v26;
  sub_23E6B4774(a5);
  v28 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v29 = sub_23E6C3374();
  type metadata accessor for Key(0);
  sub_23E6B4D50();
  v30 = sub_23E6C3364();

  v31 = [v28 initWithString:v29 attributes:v30];

  v46 = v25;
  v47 = v27;
  v44 = v15;
  v45 = v17;
  v32 = sub_23E6C32D4();
  (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
  sub_23E6C0A30();
  v33 = sub_23E6C3524();
  v35 = v34;
  LOBYTE(v30) = v36;
  sub_23E6C0A84(v11);

  if (v30)
  {
  }

  else
  {
    v37 = *MEMORY[0x277D740C0];
    v46 = v33;
    v47 = v35;
    v44 = v25;
    v45 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E758, &qword_23E6C5E98);
    sub_23E6C0AEC(&qword_27E34E760, &qword_27E34E758, &qword_23E6C5E98, MEMORY[0x277D83D30]);
    v38 = sub_23E6C34F4();
    [v31 addAttribute:v37 value:v43 range:{v38, v39}];
  }

  v40 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v40 setAttributedText_];
  [v40 setNumberOfLines_];

  return v40;
}

void sub_23E6BF234(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_23E6C3274();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  v114 = type metadata accessor for CompetitionScoreRenderer(0);
  sub_23E6B4C44(a2, a4 + v114[6]);
  v115 = a4;
  a4[1] = a3;
  v12 = qword_27E34E268;
  v13 = a1;
  v14 = a3;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_23E6B4CA8(&qword_27E34EC20, v116);
  v15 = v117;
  v16 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  (*(v16 + 8))(v119, v15, v16);
  [v13 victoryBadgeStyle];
  v110 = type metadata accessor for Reply(0);
  v17 = sub_23E6C3294();
  v18 = ASEphemeralCompetitionVictoryAchievementForStyle();

  v19 = [v13 endDate];
  if (!v19)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = v19;
  sub_23E6C3254();

  v21 = sub_23E6C3244();
  (*(v9 + 8))(v11, v8);
  v22 = [v13 victoryBadgeStyle];
  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v24 = ASEphemeralEarnedAchievement();

  v108 = [objc_allocWithZone(MEMORY[0x277CE8DA8]) init];
  v25 = [v108 thumbnailImageForAchievement:v24 size:{v120, v120}];
  v26 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v109 = v25;
  v27 = [v26 initWithImage_];
  *(v115 + v114[7]) = v27;
  [v27 setContentMode_];
  v28 = v117;
  v29 = v118;
  __swift_project_boxed_opaque_existential_1(v116, v117);
  v112 = (*(v29 + 136))(a2, v28, v29);
  v113 = v30;
  v31 = *(a2 + 16);
  v107 = v13;
  v106 = a2;
  if (v31)
  {
    v32 = v14;
    v33 = v24;

    v34 = v117;
    v35 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v36 = (*(v35 + 144))(a2, v34, v35);
    v38 = v37;
    v39 = 0;
    v40 = &selRef_opponentTotalScore;
    v41 = 1;
    v42 = &selRef_myTotalScore;
    goto LABEL_12;
  }

  v43 = [v14 contact];
  if (!v43)
  {
    goto LABEL_32;
  }

  v44 = v43;
  v45 = v14;
  v46 = [v43 shortName];

  if (v46)
  {
    v33 = v24;
    v36 = sub_23E6C33A4();
    v38 = v47;

LABEL_11:
    v41 = 0;
    v40 = &selRef_myTotalScore;
    v39 = 1;
    v42 = &selRef_opponentTotalScore;
LABEL_12:
    v103 = v33;
    v104 = v18;

    v49 = v107;
    v50 = [v107 *v42];
    v51 = v38;
    v52 = [v49 *v40];
    v53 = objc_opt_self();
    v99 = v39;
    v54 = [v53 as:v39 colorForParticipant:v49 competition:?];
    v55 = [v53 as:v41 colorForParticipant:v49 competition:?];
    v56 = v117;
    v57 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v58 = (*(v57 + 24))(v56, v57);
    v100 = v36;
    v101 = v55;
    v59 = sub_23E6BEE14(v36, v51, v52, v55, v58);
    v105 = v51;

    v60 = v114;
    v61 = v115;
    *(v115 + v114[8]) = v59;
    v102 = v54;
    v62 = sub_23E6BEE14(v112, v113, v50, v54, v58);

    *(v61 + v60[9]) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4D8, &qword_23E6C5A50);
    v63 = swift_allocObject();
    v111 = xmmword_23E6C5900;
    *(v63 + 16) = xmmword_23E6C5900;
    v64 = v106;
    v65 = sub_23E6C3224();
    v67 = v66;
    *(v63 + 56) = MEMORY[0x277D837D0];
    v110 = sub_23E6B5F8C();
    *(v63 + 64) = v110;
    *(v63 + 32) = v65;
    *(v63 + 40) = v67;
    v68 = sub_23E6C34A4();
    if (qword_27E34E250 != -1)
    {
      swift_once();
    }

    v69 = qword_27E34E258;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v70 = swift_allocObject();
    *(v70 + 16) = v111;
    *(v70 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
    *(v70 + 64) = sub_23E6C0AEC(&qword_27E34E4E8, &qword_27E34E4E0, &qword_23E6C5C50, MEMORY[0x277CC9C50]);
    *(v70 + 32) = v63;
    sub_23E6C3354("Fixing current date to render competition score: %@", 51, 2, &dword_23E69E000, v69, v68, v70);

    v71 = sub_23E6C3244();
    [v49 setCurrentDateOverride_];

    v72 = v49;
    if ([v49 stage] == 1)
    {

      v73 = ASCompetitionStageStringWithCompetition(v49);

      v74 = v109;
      v75 = v108;
      if (!v73)
      {
        sub_23E6B4E64(v64);

        sub_23E6B4E10(v119);
        *(v115 + v114[10]) = 0;
LABEL_30:
        __swift_destroy_boxed_opaque_existential_1(v116);
        return;
      }

      sub_23E6C33A4();
    }

    else
    {
      v76 = [v49 isScoreTied];
      v74 = v109;
      v75 = v108;
      if (v76)
      {

        type metadata accessor for ReplyBubbleView(0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v78 = [objc_opt_self() bundleForClass_];
        v79 = sub_23E6C3374();
        v80 = [v78 localizedStringForKey:v79 value:0 table:0];

        sub_23E6C33A4();
      }

      else
      {
        v81 = [v72 isParticipantWinning_];

        if (v81)
        {
          v82 = v112;
        }

        else
        {
          v82 = v100;
        }

        if (v81)
        {
          v83 = v113;
        }

        else
        {
          v83 = v105;
        }

        type metadata accessor for ReplyBubbleView(0);
        v84 = swift_getObjCClassFromMetadata();
        v85 = [objc_opt_self() bundleForClass_];
        v86 = sub_23E6C3374();
        v87 = [v85 localizedStringForKey:v86 value:0 table:0];

        sub_23E6C33A4();
        v88 = swift_allocObject();
        *(v88 + 16) = v111;
        v89 = v110;
        *(v88 + 56) = MEMORY[0x277D837D0];
        *(v88 + 64) = v89;
        *(v88 + 32) = v82;
        *(v88 + 40) = v83;
        sub_23E6C33B4();
      }
    }

    v90 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    *(v115 + v114[10]) = v90;
    if (v90)
    {
      v91 = v90;
      [v90 setNumberOfLines_];
      [v91 setLineBreakMode_];
      v92 = v117;
      v93 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v94 = (*(v93 + 32))(v92, v93);
      sub_23E6B4774(v94);

      v95 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v96 = sub_23E6C3374();

      type metadata accessor for Key(0);
      sub_23E6B4D50();
      v97 = sub_23E6C3364();

      v98 = [v95 initWithString:v96 attributes:v97];

      [v91 setAttributedText_];
      sub_23E6B4E10(v119);

      sub_23E6B4E64(v64);
    }

    else
    {
      sub_23E6B4E64(v64);

      sub_23E6B4E10(v119);
    }

    goto LABEL_30;
  }

  v46 = [v14 displayName];

  if (v46)
  {
    v33 = v24;
    v36 = sub_23E6C33A4();
    v38 = v48;
    goto LABEL_11;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_23E6BFEE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23E6C5890;
  v2 = type metadata accessor for CompetitionScoreRenderer(0);
  v3 = *(v0 + v2[8]);
  *(v1 + 32) = v3;
  v4 = *(v0 + v2[9]);
  *(v1 + 40) = v4;
  v5 = *(v0 + v2[10]);
  if (v5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E6C58A0;
    *(inited + 32) = v5;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    sub_23E6C0428(inited, sub_23E6C06C8);
  }

  else
  {
    v10 = v3;
    v11 = v4;
  }

  return v1;
}

id sub_23E6BFFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23E6C32C4();
  v6 = MEMORY[0x28223BE20](*(v5 - 8));
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 24);
  LODWORD(v7) = *(v9 + 16);
  v16 = v6;
  if (v7 == 1)
  {
    v10 = type metadata accessor for Reply(0);
    v11 = *(v16 + 16);
    v12 = v9 + *(v10 + 24);

    return v11(a2, v12, v5);
  }

  else
  {
    result = [*(v2 + 8) UUID];
    if (result)
    {
      v14 = result;
      sub_23E6C32A4();

      return (*(v16 + 32))(a2, v8, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_23E6C0148(uint64_t a1)
{
  sub_23E6C33A4();
  sub_23E6C3624();
  sub_23E6C33F4();
  v2 = sub_23E6C3644();

  return sub_23E6C0220(a1, v2);
}

unint64_t sub_23E6C01DC(uint64_t a1)
{
  v2 = sub_23E6C34D4();

  return sub_23E6C0324(a1, v2);
}

unint64_t sub_23E6C0220(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23E6C33A4();
      v8 = v7;
      if (v6 == sub_23E6C33A4() && v8 == v9)
      {
        break;
      }

      v11 = sub_23E6C35E4();

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

unint64_t sub_23E6C0324(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_23E6B39F0(0, &qword_27E34E768, 0x277CCABB0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23E6C34E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_23E6C0428(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_23E6C35A4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_23E6C35A4();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23E6C0520(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_23E6C0520(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23E6C35A4();
LABEL_9:
  result = sub_23E6C3564();
  *v2 = result;
  return result;
}

void (*sub_23E6C05C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EF0F150](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23E6C0E7C;
  }

  __break(1u);
  return result;
}

void (*sub_23E6C0640(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EF0F150](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_23E6C06C0;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E6C06C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23E6C35A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23E6C35A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23E6C0AEC(&qword_27E34E730, &qword_27E34E728, &qword_23E6C5E78, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E728, &qword_23E6C5E78);
            v9 = sub_23E6C05C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23E6B39F0(0, &qword_27E34E470, 0x277D756B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23E6C087C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23E6C35A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23E6C35A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23E6C0AEC(&qword_27E34E740, &qword_27E34E738, &unk_23E6C5E80, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E738, &unk_23E6C5E80);
            v9 = sub_23E6C0640(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23E6B39F0(0, &qword_27E34E4F0, 0x277D75D18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23E6C0A30()
{
  result = qword_27E34E750;
  if (!qword_27E34E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E750);
  }

  return result;
}

uint64_t sub_23E6C0A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E748, &qword_23E6C5E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E6C0AEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_23E6C0B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E7A0, &unk_23E6C5ED0);
    v3 = sub_23E6C35B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_23E6C0148(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E6C0C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E798, &qword_23E6C5EC8);
    v3 = sub_23E6C35B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23E6C01DC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E6C0D24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23E6C35B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_23E6C01DC(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E6C0E14()
{
  result = qword_27E34E770;
  if (!qword_27E34E770)
  {
    sub_23E6B39F0(255, &qword_27E34E768, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E34E770);
  }

  return result;
}

double sub_23E6C0E80(char a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = 0.0;
  if ((a1 & 1) == 0)
  {
    (*(a3 + 8))(v16, a2, a3);
    sub_23E6B4E10(v16);
    v13 = *&v16[1];
  }

  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  v14 = v13 + CGRectGetMinX(v17);
  v18.origin.x = a4;
  v18.origin.y = a5;
  v18.size.width = a6;
  v18.size.height = a7;
  CGRectGetWidth(v18);
  (*(a3 + 8))(v16, a2, a3);
  sub_23E6B4E10(v16);
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  CGRectGetMinY(v19);
  v20.origin.x = a4;
  v20.origin.y = a5;
  v20.size.width = a6;
  v20.size.height = a7;
  CGRectGetHeight(v20);
  return v14;
}

uint64_t sub_23E6C0FB4()
{
  qword_27E34EC38 = &type metadata for ReplyLayoutPhone;
  unk_27E34EC40 = &off_2850F6358;
  v0 = swift_allocObject();
  qword_27E34EC20 = v0;
  type metadata accessor for ContactFormatter();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 1;
  *(v0 + 16) = v1;
  if (qword_27E34E260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_27E34E618;
  v14[10] = xmmword_27E34E618;
  v14[11] = unk_27E34E628;
  v3 = xmmword_27E34E5C8;
  v4 = xmmword_27E34E5D8;
  v14[6] = xmmword_27E34E5D8;
  v14[7] = xmmword_27E34E5E8;
  v5 = xmmword_27E34E5E8;
  v6 = xmmword_27E34E5F8;
  v14[8] = xmmword_27E34E5F8;
  v14[9] = xmmword_27E34E608;
  v7 = xmmword_27E34E588;
  v8 = xmmword_27E34E598;
  v14[2] = xmmword_27E34E598;
  v14[3] = xmmword_27E34E5A8;
  v9 = xmmword_27E34E5A8;
  v10 = xmmword_27E34E5B8;
  v14[4] = xmmword_27E34E5B8;
  v14[5] = xmmword_27E34E5C8;
  v14[0] = xmmword_27E34E578;
  v11 = xmmword_27E34E578;
  v14[1] = xmmword_27E34E588;
  *(v0 + 168) = xmmword_27E34E608;
  *(v0 + 184) = v2;
  *(v0 + 200) = unk_27E34E628;
  *(v0 + 104) = v3;
  *(v0 + 120) = v4;
  *(v0 + 136) = v5;
  *(v0 + 152) = v6;
  *(v0 + 40) = v7;
  *(v0 + 56) = v8;
  *(v0 + 72) = v9;
  *(v0 + 88) = v10;
  v15 = byte_27E34E638;
  *(v0 + 216) = byte_27E34E638;
  *(v0 + 24) = v11;
  return sub_23E6BC13C(v14, &v13);
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_23E6C1230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E6C1278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_23E6C1464()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27E34E7A8 = v0;
  return result;
}

uint64_t sub_23E6C14C8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E480, &unk_23E6C5960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E6C58A0;
  *(v4 + 32) = (*(a2 + 8))(a1, a2);
  v5 = (*(a2 + 16))(a1, a2);
  if (v5 >> 62)
  {
    sub_23E6B83C8();
    v6 = sub_23E6C3594();
  }

  else
  {

    sub_23E6C35F4();
    sub_23E6B83C8();
    v6 = v5;
  }

  sub_23E6C0410(v6);
  return v4;
}

uint64_t static ActivityRendererFactory.activityRenderer(for:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = type metadata accessor for CompetitionScoreRenderer(0);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for CompetitionAcceptedRenderer(0);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for GoalCompletionRenderer(0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for AchievementRenderer(0);
  v3[13] = swift_task_alloc();
  type metadata accessor for Reply(0);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for WorkoutRenderer(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E6C1758, 0, 0);
}

uint64_t sub_23E6C1758(uint64_t a1)
{
  v2 = sub_23E6C3214();
  v3 = ASRichMessageTypeFromRichMessagePayload();

  if (v3 <= 1)
  {
    switch(v3)
    {
      case -1:
        v26 = sub_23E6C3494();
        if (qword_27E34E250 != -1)
        {
          swift_once();
        }

        v27 = qword_27E34E258;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_23E6C5900;
        *(v28 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
        *(v28 + 64) = sub_23E6B8314();
        *(v28 + 32) = MEMORY[0x277D84F90];
        sub_23E6C3354("Unknown event type", 18, 2, &dword_23E69E000, v27, v26, v28);
        goto LABEL_45;
      case 0:
        v35 = sub_23E6C34A4();
        if (qword_27E34E250 != -1)
        {
          swift_once();
        }

        v5 = qword_27E34E258;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
        v36 = swift_allocObject();
        v55 = xmmword_23E6C5900;
        *(v36 + 16) = xmmword_23E6C5900;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
        *(v36 + 56) = v37;
        v38 = sub_23E6B8314();
        *(v36 + 64) = v38;
        v39 = MEMORY[0x277D84F90];
        *(v36 + 32) = MEMORY[0x277D84F90];
        sub_23E6C3354("Creating goalCompletion renderer", 32, 2, &dword_23E69E000, v5, v35, v36);

        v40 = sub_23E6C3214();
        v41 = ASSnapshotFromRichMessagePayload();
        v1[22] = v41;

        if (v41)
        {
          sub_23E6C3484();
          v1[23] = sub_23E6C3474();
          v13 = sub_23E6C3464();
          v15 = v42;
          v16 = sub_23E6C2348;
          goto LABEL_29;
        }

        v46 = sub_23E6C3494();
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_23E6C5900;
        *(v47 + 56) = v37;
        *(v47 + 64) = v38;
        *(v47 + 32) = v39;
        v48 = "Snapshot missing from payload";
        v49 = 29;
        goto LABEL_44;
      case 1:
        v4 = sub_23E6C34A4();
        if (qword_27E34E250 != -1)
        {
          swift_once();
        }

        v5 = qword_27E34E258;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
        v6 = swift_allocObject();
        v55 = xmmword_23E6C5900;
        *(v6 + 16) = xmmword_23E6C5900;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
        *(v6 + 56) = v7;
        v8 = sub_23E6B8314();
        *(v6 + 64) = v8;
        v9 = MEMORY[0x277D84F90];
        *(v6 + 32) = MEMORY[0x277D84F90];
        sub_23E6C3354("Creating achievement renderer", 29, 2, &dword_23E69E000, v5, v4, v6);

        v10 = sub_23E6C3214();
        v11 = ASAchievementFromRichMessagePayload();
        v1[19] = v11;

        if (v11)
        {
          v12 = sub_23E6B856C(v11);
          v1[20] = v12;
          if (v12)
          {
            sub_23E6C3484();
            v1[21] = sub_23E6C3474();
            v13 = sub_23E6C3464();
            v15 = v14;
            v16 = sub_23E6C21AC;
LABEL_29:

            return MEMORY[0x2822009F8](v16, v13, v15);
          }

          goto LABEL_46;
        }

        v46 = sub_23E6C3494();
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_23E6C5900;
        *(v47 + 56) = v7;
        *(v47 + 64) = v8;
        *(v47 + 32) = v9;
        v48 = "Achievement missing from payload";
        goto LABEL_41;
    }

    goto LABEL_22;
  }

  if (v3 != 4)
  {
    if (v3 != 3)
    {
      if (v3 == 2)
      {
        v17 = sub_23E6C34A4();
        if (qword_27E34E250 != -1)
        {
          swift_once();
        }

        v18 = qword_27E34E258;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_23E6C5900;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
        *(v19 + 56) = v20;
        v21 = sub_23E6B8314();
        *(v19 + 64) = v21;
        v22 = MEMORY[0x277D84F90];
        *(v19 + 32) = MEMORY[0x277D84F90];
        sub_23E6C3354("Creating workout renderer", 25, 2, &dword_23E69E000, v18, v17, v19);

        v23 = sub_23E6C3214();
        v24 = ASWorkoutFromRichMessagePayload();
        v1[17] = v24;

        if (v24)
        {
          sub_23E6C3484();
          v1[18] = sub_23E6C3474();
          v13 = sub_23E6C3464();
          v15 = v25;
          v16 = sub_23E6C202C;
          goto LABEL_29;
        }

        v50 = sub_23E6C3494();
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_23E6C5900;
        *(v51 + 56) = v20;
        *(v51 + 64) = v21;
        *(v51 + 32) = v22;
        sub_23E6C3354("Workout missing from payload", 28, 2, &dword_23E69E000, v18, v50, v51, xmmword_23E6C5900);
        goto LABEL_45;
      }

LABEL_22:
      type metadata accessor for ASRichMessageType(0);
      v1[2] = v3;
      v34 = MEMORY[0x277D83B88];

      return MEMORY[0x2821FE1D0](v33, v1 + 2, v33, v34);
    }

    v43 = sub_23E6C3214();
    v44 = ASCompetitionFromRichMessagePayload();
    v1[24] = v44;

    if (v44)
    {
      v31 = swift_task_alloc();
      v1[25] = v31;
      *v31 = v1;
      v32 = sub_23E6C24C8;
      goto LABEL_34;
    }

LABEL_37:
    v46 = sub_23E6C3494();
    if (qword_27E34E250 != -1)
    {
      swift_once();
    }

    v5 = qword_27E34E258;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4B0, &unk_23E6C59E0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_23E6C5900;
    *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34E4E0, &qword_23E6C5C50);
    *(v47 + 64) = sub_23E6B8314();
    *(v47 + 32) = MEMORY[0x277D84F90];
    v48 = "Competition missing from payload";
LABEL_41:
    v49 = 32;
LABEL_44:
    sub_23E6C3354(v48, v49, 2, &dword_23E69E000, v5, v46, v47, v55);
LABEL_45:

LABEL_46:
    v52 = v1[3];
    *(v52 + 32) = 0;
    *v52 = 0u;
    *(v52 + 16) = 0u;

    v53 = v1[1];

    return v53();
  }

  v29 = sub_23E6C3214();
  v30 = ASCompetitionFromRichMessagePayload();
  v1[28] = v30;

  if (!v30)
  {
    goto LABEL_37;
  }

  v31 = swift_task_alloc();
  v1[29] = v31;
  *v31 = v1;
  v32 = sub_23E6C28A8;
LABEL_34:
  v31[1] = v32;
  v45 = v1[4];

  return sub_23E6BE2EC(v45);
}

uint64_t sub_23E6C202C()
{
  v1 = v0[17];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[4];

  sub_23E6B4C44(v4, v3);
  sub_23E6B3AA0(v1, v3, v2);

  return MEMORY[0x2822009F8](sub_23E6C20C4, 0, 0);
}

uint64_t sub_23E6C20C4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[3];
  v3[3] = v0[15];
  v3[4] = &off_2850F61A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_23E6C2CEC(v2, boxed_opaque_existential_1, type metadata accessor for WorkoutRenderer);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E6C21AC()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[4];

  sub_23E6B4C44(v5, v4);
  sub_23E6B8A40(v2, v1, v4, v3);

  return MEMORY[0x2822009F8](sub_23E6C225C, 0, 0);
}

uint64_t sub_23E6C225C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[13];
  v4 = v0[3];
  v4[3] = v0[12];
  v4[4] = &off_2850F6278;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  sub_23E6C2CEC(v3, boxed_opaque_existential_1, type metadata accessor for AchievementRenderer);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23E6C2348()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[4];

  sub_23E6B4C44(v4, v2);
  sub_23E6B957C(v1, v2, v3);

  return MEMORY[0x2822009F8](sub_23E6C23E0, 0, 0);
}

uint64_t sub_23E6C23E0()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = v0[3];
  v3[3] = v0[10];
  v3[4] = &off_2850F62A8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_23E6C2CEC(v2, boxed_opaque_existential_1, type metadata accessor for GoalCompletionRenderer);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E6C24C8(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_23E6C25C8, 0, 0);
}

uint64_t sub_23E6C25C8()
{
  if (*(v0 + 208))
  {
    sub_23E6C3484();
    *(v0 + 216) = sub_23E6C3474();
    v2 = sub_23E6C3464();

    return MEMORY[0x2822009F8](sub_23E6C2704, v2, v1);
  }

  else
  {

    v3 = *(v0 + 24);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23E6C2704()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[4];

  sub_23E6B4C44(v5, v3);
  sub_23E6B51C8(v2, v3, v1, v4);

  return MEMORY[0x2822009F8](sub_23E6C27B8, 0, 0);
}

uint64_t sub_23E6C27B8()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[9];
  v4 = v0[3];
  v4[3] = v0[8];
  v4[4] = &off_2850F6248;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  sub_23E6C2CEC(v3, boxed_opaque_existential_1, type metadata accessor for CompetitionAcceptedRenderer);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23E6C28A8(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_23E6C29A8, 0, 0);
}

uint64_t sub_23E6C29A8()
{
  if (*(v0 + 240))
  {
    sub_23E6C3484();
    *(v0 + 248) = sub_23E6C3474();
    v2 = sub_23E6C3464();

    return MEMORY[0x2822009F8](sub_23E6C2AE4, v2, v1);
  }

  else
  {

    v3 = *(v0 + 24);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_23E6C2AE4()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[14];
  v4 = v0[7];
  v5 = v0[4];

  sub_23E6B4C44(v5, v3);
  sub_23E6BF234(v2, v3, v1, v4);

  return MEMORY[0x2822009F8](sub_23E6C2B98, 0, 0);
}

uint64_t sub_23E6C2B98()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[7];
  v4 = v0[3];
  v4[3] = v0[6];
  v4[4] = &off_2850F6480;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  sub_23E6C2CEC(v3, boxed_opaque_existential_1, type metadata accessor for CompetitionScoreRenderer);

  v6 = v0[1];

  return v6();
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

uint64_t sub_23E6C2CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivityRendererFactory(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ActivityRendererFactory(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}