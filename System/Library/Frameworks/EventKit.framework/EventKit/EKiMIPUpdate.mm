@interface EKiMIPUpdate
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
- (id)attendees;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPUpdate

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  v29[10] = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if ([event isSelfOrganized])
  {
    differentKeys = [diffCopy differentKeys];
    v7 = *MEMORY[0x1E6992600];
    v29[0] = *MEMORY[0x1E6992708];
    v29[1] = v7;
    v8 = *MEMORY[0x1E69926D0];
    v29[2] = *MEMORY[0x1E69926C8];
    v29[3] = v8;
    v9 = *MEMORY[0x1E69926D8];
    v29[4] = *MEMORY[0x1E6992968];
    v29[5] = v9;
    v10 = *MEMORY[0x1E69925A0];
    v29[6] = *MEMORY[0x1E6992560];
    v29[7] = v10;
    v11 = *MEMORY[0x1E6992598];
    v29[8] = *MEMORY[0x1E6992648];
    v29[9] = v11;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:10];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v27 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([differentKeys containsObject:{*(*(&v24 + 1) + 8 * i), v24}])
          {
            v20 = 1;
            relationshipMultiValueAdds = v12;
            goto LABEL_16;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    relationshipMultiValueAdds = [diffCopy relationshipMultiValueAdds];
    v18 = *MEMORY[0x1E6992568];
    v19 = [relationshipMultiValueAdds objectForKeyedSubscript:*MEMORY[0x1E6992568]];
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      relationshipMultiValueRemoves = [diffCopy relationshipMultiValueRemoves];
      v22 = [relationshipMultiValueRemoves objectForKeyedSubscript:v18];
      v20 = v22 != 0;
    }

LABEL_16:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)attendees
{
  event = [(EKiMIPHandler *)self event];
  attendees = [event attendees];

  return attendees;
}

- (id)emailSubject
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle(self);
  v5 = [v4 localizedStringForKey:@"Event update: %@" value:&stru_1F1B49D68 table:@"iTIP"];
  event = [(EKiMIPHandler *)self event];
  title = [event title];
  v8 = [v3 localizedStringWithFormat:v5, title];

  return v8;
}

- (id)emailBody
{
  event = [(EKiMIPHandler *)self event];
  startDate = [event startDate];
  localizedLongDate = [startDate localizedLongDate];

  event2 = [(EKiMIPHandler *)self event];
  if ([event2 isAllDay])
  {
    localizedShortTime = 0;
  }

  else
  {
    event3 = [(EKiMIPHandler *)self event];
    startDate2 = [event3 startDate];
    localizedShortTime = [startDate2 localizedShortTime];
  }

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  v9 = MEMORY[0x1E695DFF8];
  myEmailAddress = [defaultProvider myEmailAddress];
  v11 = [v9 URLForMail:myEmailAddress];

  v44 = v11;
  v12 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v11];
  myShortDisplayName = [defaultProvider myShortDisplayName];
  [v12 setCn:myShortDisplayName];

  v14 = MEMORY[0x1E6992F68];
  event4 = [(EKiMIPHandler *)self event];
  startDate3 = [event4 startDate];
  v17 = [v14 requiresSingularLocalizationForDate:startDate3];

  event5 = [(EKiMIPHandler *)self event];
  LODWORD(startDate3) = [event5 isAllDay];

  if (startDate3)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = EKBundle(v19);
    displayName2 = [v21 localizedStringForKey:@"%@ has updated the event: %@ value:scheduled for %@. To acknowledge this invitation table:{click the link below.\n", &stru_1F1B49D68, @"iTIP"}];
    displayName = [v12 displayName];
    event6 = [(EKiMIPHandler *)self event];
    title = [event6 title];
    v26 = v20;
    v27 = localizedLongDate;
    v28 = [v26 localizedStringWithFormat:displayName2, displayName, title, localizedLongDate];
  }

  else
  {
    event7 = [(EKiMIPHandler *)self event];
    isFloating = [event7 isFloating];

    v33 = EKBundle(v32);
    v34 = v33;
    v29 = localizedShortTime;
    if (isFloating)
    {
      if (v17)
      {
        v35 = @"iTIP update floating event singular hour";
      }

      else
      {
        v35 = @"iTIP update floating event plural hour";
      }

      v21 = [v33 localizedStringForKey:v35 value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@. To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v38 = MEMORY[0x1E696AEC0];
      displayName2 = [v12 displayName];
      displayName = [(EKiMIPHandler *)self event];
      event6 = [displayName title];
      v27 = localizedLongDate;
      v28 = [v38 localizedStringWithFormat:v21, displayName2, event6, localizedLongDate, localizedShortTime];
      goto LABEL_14;
    }

    if (v17)
    {
      v21 = [v33 localizedStringForKey:@"iTIP update timed event singular hour" value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@ (%@). To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v42 = MEMORY[0x1E696AEC0];
      displayName2 = [v12 displayName];
      displayName = [(EKiMIPHandler *)self event];
      event6 = [displayName title];
      event8 = [(EKiMIPHandler *)self event];
      timeZone = [event8 timeZone];
      v27 = localizedLongDate;
      v28 = [v42 localizedStringWithFormat:v21, displayName2, event6, localizedLongDate, localizedShortTime, timeZone];
    }

    else
    {
      v21 = [v33 localizedStringForKey:@"iTIP update timed event plural hour" value:@"%@ has updated the event: %@ table:{scheduled for %@ at %@ (%@). To acknowledge this invitation, click the link below.\n", @"iTIP"}];

      v43 = MEMORY[0x1E696AEC0];
      displayName2 = [v12 displayName];
      displayName = [(EKiMIPHandler *)self event];
      event6 = [displayName title];
      event9 = [(EKiMIPHandler *)self event];
      timeZone2 = [event9 timeZone];
      v28 = [v43 localizedStringWithFormat:v21, displayName2, event6, localizedLongDate, localizedShortTime, timeZone2];

      v27 = localizedLongDate;
    }
  }

  v29 = localizedShortTime;
LABEL_14:

  return v28;
}

@end