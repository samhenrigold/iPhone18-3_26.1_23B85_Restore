@interface EKiMIPReply
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
- (id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPReply

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  diffCopy = diff;
  if ([event isSelfOrganized])
  {
    v6 = 0;
  }

  else
  {
    summaryDictionary = [diffCopy summaryDictionary];
    v8 = [summaryDictionary objectForKey:@"selfAttendee.statusRaw"];

    v6 = v8 != 0;
  }

  return v6;
}

- (id)attendees
{
  v6[1] = *MEMORY[0x1E69E9840];
  event = [(EKiMIPHandler *)self event];
  organizer = [event organizer];
  v6[0] = organizer;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)emailSubject
{
  event = [(EKiMIPHandler *)self event];
  participationStatus = [event participationStatus];

  if ((participationStatus - 2) <= 2 && (v6 = off_1E7801400[participationStatus - 2], EKBundle(v5), v7 = objc_claimAutoreleasedReturnValue(), [v7 localizedStringForKey:v6 value:&stru_1F1B49D68 table:@"iTIP"], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = MEMORY[0x1E696AEC0];
    event2 = [(EKiMIPHandler *)self event];
    title = [event2 title];
    v12 = [v9 localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, title];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)emailBody
{
  v3 = MEMORY[0x1E6992F68];
  event = [(EKiMIPHandler *)self event];
  startDate = [event startDate];
  v6 = [v3 requiresSingularLocalizationForDate:startDate];

  event2 = [(EKiMIPHandler *)self event];
  participationStatus = [event2 participationStatus];

  switch(participationStatus)
  {
    case 4:
      event3 = [(EKiMIPHandler *)self event];
      isAllDay = [event3 isAllDay];

      if (isAllDay)
      {
        v12 = EKBundle(v20);
        v13 = v12;
        v14 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@.\n";
        goto LABEL_10;
      }

      event4 = [(EKiMIPHandler *)self event];
      isFloating = [event4 isFloating];

      v13 = EKBundle(v27);
      if (isFloating)
      {
        if (v6)
        {
          v14 = @"iTIP tentative acceptance floating event singular hour";
        }

        else
        {
          v14 = @"iTIP tentative acceptance floating event plural hour";
        }

        v21 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@ at %@.\n";
      }

      else
      {
        if (v6)
        {
          v14 = @"iTIP tentative acceptance timed event singular hour";
        }

        else
        {
          v14 = @"iTIP tentative acceptance timed event plural hour";
        }

        v21 = @"%@ has tentatively accepted your invitation to the event: %@, scheduled for %@ at %@ (%@).\n";
      }

      break;
    case 3:
      event5 = [(EKiMIPHandler *)self event];
      isAllDay2 = [event5 isAllDay];

      if (isAllDay2)
      {
        v12 = EKBundle(v17);
        v13 = v12;
        v14 = @"%@ has declined your invitation to the event: %@, scheduled for %@.\n";
        goto LABEL_10;
      }

      event6 = [(EKiMIPHandler *)self event];
      isFloating2 = [event6 isFloating];

      v13 = EKBundle(v24);
      if (isFloating2)
      {
        if (v6)
        {
          v14 = @"iTIP decline floating event singular hour";
        }

        else
        {
          v14 = @"iTIP decline floating event plural hour";
        }

        v21 = @"%@ has declined your invitation to the event: %@, scheduled for %@ at %@.\n";
      }

      else
      {
        if (v6)
        {
          v14 = @"iTIP decline timed event singular hour";
        }

        else
        {
          v14 = @"iTIP decline timed event plural hour";
        }

        v21 = @"%@ has declined your invitation to the event: %@, scheduled for %@ at %@ (%@).\n";
      }

      break;
    case 2:
      event7 = [(EKiMIPHandler *)self event];
      isAllDay3 = [event7 isAllDay];

      if (isAllDay3)
      {
        v12 = EKBundle(v11);
        v13 = v12;
        v14 = @"%@ has accepted your invitation to the event: %@, scheduled for %@.\n";
LABEL_10:
        v21 = &stru_1F1B49D68;
        goto LABEL_39;
      }

      event8 = [(EKiMIPHandler *)self event];
      isFloating3 = [event8 isFloating];

      v13 = EKBundle(v30);
      if (isFloating3)
      {
        if (v6)
        {
          v14 = @"iTIP accept floating event singular hour";
        }

        else
        {
          v14 = @"iTIP accept floating event plural hour";
        }

        v21 = @"%@ has accepted your invitation to the event: %@, scheduled for %@ at %@.\n";
      }

      else
      {
        if (v6)
        {
          v14 = @"iTIP accept timed event singular hour";
        }

        else
        {
          v14 = @"iTIP accept timed event plural hour";
        }

        v21 = @"%@ has accepted your invitation to the event: %@, scheduled for %@ at %@ (%@).\n";
      }

      break;
    default:
LABEL_42:
      v44 = 0;
      goto LABEL_48;
  }

  v12 = v13;
LABEL_39:
  v31 = [v12 localizedStringForKey:v14 value:v21 table:@"iTIP"];

  if (!v31)
  {
    goto LABEL_42;
  }

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  myFullName = [defaultProvider myFullName];

  event9 = [(EKiMIPHandler *)self event];
  startDate2 = [event9 startDate];
  localizedLongDate = [startDate2 localizedLongDate];

  event10 = [(EKiMIPHandler *)self event];
  startDate3 = [event10 startDate];
  localizedShortTime = [startDate3 localizedShortTime];

  event11 = [(EKiMIPHandler *)self event];
  LODWORD(startDate3) = [event11 isAllDay];

  if (startDate3)
  {
    v41 = MEMORY[0x1E696AEC0];
    event12 = [(EKiMIPHandler *)self event];
    title = [event12 title];
    [v41 localizedStringWithValidatedFormat:v31 validFormatSpecifiers:@"%@%@%@" error:0, myFullName, title, localizedLongDate, v52];
  }

  else
  {
    event13 = [(EKiMIPHandler *)self event];
    isFloating4 = [event13 isFloating];

    v47 = MEMORY[0x1E696AEC0];
    event12 = [(EKiMIPHandler *)self event];
    title2 = [event12 title];
    title = title2;
    if (!isFloating4)
    {
      event14 = [(EKiMIPHandler *)self event];
      timeZone = [event14 timeZone];
      v44 = [v47 localizedStringWithValidatedFormat:v31 validFormatSpecifiers:@"%@%@%@%@%@" error:0, myFullName, title, localizedLongDate, localizedShortTime, timeZone];

      v31 = event14;
      goto LABEL_47;
    }

    [v47 localizedStringWithValidatedFormat:v31 validFormatSpecifiers:@"%@%@%@%@" error:0, myFullName, title2, localizedLongDate, localizedShortTime];
  }
  v44 = ;
LABEL_47:

LABEL_48:

  return v44;
}

@end