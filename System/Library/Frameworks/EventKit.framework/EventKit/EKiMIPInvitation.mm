@interface EKiMIPInvitation
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
- (EKiMIPInvitation)initWithEvent:(id)event withDiff:(id)diff;
- (id)emailBody;
- (id)emailSubject;
@end

@implementation EKiMIPInvitation

- (EKiMIPInvitation)initWithEvent:(id)event withDiff:(id)diff
{
  diffCopy = diff;
  v12.receiver = self;
  v12.super_class = EKiMIPInvitation;
  v7 = [(EKiMIPHandler *)&v12 initWithEvent:event];
  if (v7)
  {
    relationshipMultiValueAdds = [diffCopy relationshipMultiValueAdds];
    v9 = [relationshipMultiValueAdds objectForKeyedSubscript:*MEMORY[0x1E6992568]];
    attendees = v7->_attendees;
    v7->_attendees = v9;
  }

  return v7;
}

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  diffCopy = diff;
  if ([event isSelfOrganized])
  {
    relationshipMultiValueAdds = [diffCopy relationshipMultiValueAdds];
    v7 = [relationshipMultiValueAdds objectForKeyedSubscript:*MEMORY[0x1E6992568]];

    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)emailSubject
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = EKBundle(self);
  v5 = [v4 localizedStringForKey:@"Event invitation: %@" value:&stru_1F1B49D68 table:@"iTIP"];
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

  v43 = localizedShortTime;

  v9 = MEMORY[0x1E6992F68];
  event4 = [(EKiMIPHandler *)self event];
  startDate3 = [event4 startDate];
  v12 = [v9 requiresSingularLocalizationForDate:startDate3];

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  v14 = MEMORY[0x1E695DFF8];
  myEmailAddress = [defaultProvider myEmailAddress];
  v16 = [v14 URLForMail:myEmailAddress];

  v42 = v16;
  v17 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v16];
  myShortDisplayName = [defaultProvider myShortDisplayName];
  [v17 setCn:myShortDisplayName];

  event5 = [(EKiMIPHandler *)self event];
  isAllDay = [event5 isAllDay];

  if (isAllDay)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = EKBundle(v21);
    v24 = [v23 localizedStringForKey:@"%@ has invited you to the event: %@ value:scheduled for %@. To accept or decline this invitation table:{click the link below.\n", &stru_1F1B49D68, @"iTIP"}];
    displayName = [v17 displayName];
    event6 = [(EKiMIPHandler *)self event];
    title = [event6 title];
    v28 = localizedLongDate;
    v29 = [v22 localizedStringWithFormat:v24, displayName, title, localizedLongDate];
    v30 = v43;
  }

  else
  {
    event7 = [(EKiMIPHandler *)self event];
    isFloating = [event7 isFloating];

    v41 = MEMORY[0x1E696AEC0];
    v34 = EKBundle(v33);
    v23 = v34;
    v28 = localizedLongDate;
    if (isFloating)
    {
      if (v12)
      {
        v35 = @"itip invitation singular";
      }

      else
      {
        v35 = @"itip invitation plural";
      }

      v24 = [v34 localizedStringForKey:v35 value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@. To accept or decline this invitation, click the link below.\n", @"iTIP"}];
      displayName = [v17 displayName];
      event6 = [(EKiMIPHandler *)self event];
      title = [event6 title];
      v30 = v43;
      v29 = [v41 localizedStringWithFormat:v24, displayName, title, localizedLongDate, v43];
    }

    else
    {
      v40 = v34;
      if (v12)
      {
        v24 = [v34 localizedStringForKey:@"itip invitation with timezone singular" value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@ (%@). To accept or decline this invitation, click the link below.\n", @"iTIP"}];
        displayName = [v17 displayName];
        event6 = [(EKiMIPHandler *)self event];
        title = [event6 title];
        event8 = [(EKiMIPHandler *)self event];
        timeZone = [event8 timeZone];
        v30 = v43;
        v28 = localizedLongDate;
        v29 = [v41 localizedStringWithFormat:v24, displayName, title, localizedLongDate, v43, timeZone];
      }

      else
      {
        v24 = [v34 localizedStringForKey:@"itip invitation with timezone plural" value:@"%@ has invited you to the event: %@ table:{scheduled for %@ at %@ (%@). To accept or decline this invitation, click the link below.\n", @"iTIP"}];
        displayName = [v17 displayName];
        event6 = [(EKiMIPHandler *)self event];
        title = [event6 title];
        event8 = [(EKiMIPHandler *)self event];
        timeZone2 = [event8 timeZone];
        v28 = localizedLongDate;
        v29 = [v41 localizedStringWithFormat:v24, displayName, title, localizedLongDate, v43, timeZone2];

        v30 = v43;
      }

      v23 = v40;
    }
  }

  return v29;
}

@end