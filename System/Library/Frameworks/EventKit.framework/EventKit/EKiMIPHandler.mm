@interface EKiMIPHandler
+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff;
+ (id)emailsFromAttendees:(id)attendees;
- (BOOL)sendEmail;
- (EKiMIPHandler)initWithEvent:(id)event;
- (id)attachmentData;
- (id)attendees;
- (id)emailAttachmentName;
- (id)emailBody;
- (id)emailSubject;
- (id)iCalendarDocumentWithMethod:(int)method;
- (int)icsMethod;
- (void)sendEmail;
@end

@implementation EKiMIPHandler

- (EKiMIPHandler)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = EKiMIPHandler;
  v6 = [(EKiMIPHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

- (id)attachmentData
{
  v2 = [(EKiMIPHandler *)self iCalendarDocumentWithMethod:[(EKiMIPHandler *)self icsMethod]];
  v3 = [v2 ICSDataWithOptions:0];

  return v3;
}

- (BOOL)sendEmail
{
  attendees = [(EKiMIPHandler *)self attendees];
  v4 = [EKiMIPHandler emailsFromAttendees:attendees];

  if ([v4 count])
  {
    emailSubject = [(EKiMIPHandler *)self emailSubject];
    if (!emailSubject)
    {
      v6 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [(EKiMIPHandler *)self sendEmail:v6];
      }
    }
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKiMIPHandler *)self sendEmail:v13];
    }
  }

  return 0;
}

+ (id)emailsFromAttendees:(id)attendees
{
  v19 = *MEMORY[0x1E69E9840];
  attendeesCopy = attendees;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = attendeesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        emailAddress = [v10 emailAddress];

        if (emailAddress)
        {
          emailAddress2 = [v10 emailAddress];
          [v4 addObject:emailAddress2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)iCalendarDocumentWithMethod:(int)method
{
  v3 = *&method;
  v95 = *MEMORY[0x1E69E9840];
  event = [(EKiMIPHandler *)self event];
  exportToICS = [event exportToICS];

  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  v91 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69E3CB0]) initWithData:exportToICS options:0 error:&v91];
  v8 = v91;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v68 = exportToICS;
    v69 = defaultProvider;
    v67 = v8;
    calendar = [v7 calendar];
    [calendar setMethod:v3];

    calendar2 = [v7 calendar];
    [calendar2 setX_calendarserver_access:0];

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v66 = v7;
    calendar3 = [v7 calendar];
    components = [calendar3 components];

    v23 = [components countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (!v23)
    {
      goto LABEL_50;
    }

    v24 = v23;
    v25 = *v88;
    v72 = v3;
    v70 = *v88;
    v71 = components;
    while (1)
    {
      v26 = 0;
      v76 = v24;
      do
      {
        if (*v88 != v25)
        {
          objc_enumerationMutation(components);
        }

        v27 = *(*(&v87 + 1) + 8 * v26);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
          v29 = v28;
          switch(v3)
          {
            case 2:
              organizer = [v28 organizer];

              if (!organizer)
              {
                v78 = v29;
                v59 = MEMORY[0x1E695DFF8];
                myEmailAddress = [v69 myEmailAddress];
                v61 = [v59 URLForMail:myEmailAddress];

                if (v61)
                {
                  v62 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v61];
                  [v78 setOrganizer:v62];

                  myShortDisplayName = [v69 myShortDisplayName];
                  organizer2 = [v78 organizer];
                  [organizer2 setCn:myShortDisplayName];
                }

                v29 = v78;
              }

              break;
            case 5:
              organizer3 = [v28 organizer];

              if (!organizer3)
              {
                v45 = v29;
                v46 = MEMORY[0x1E695DFF8];
                myEmailAddress2 = [v69 myEmailAddress];
                v48 = [v46 URLForMail:myEmailAddress2];

                if (v48)
                {
                  v49 = [objc_alloc(MEMORY[0x1E69E3D10]) initWithURL:v48];
                  [v45 setOrganizer:v49];

                  myShortDisplayName2 = [v69 myShortDisplayName];
                  organizer4 = [v45 organizer];
                  [organizer4 setCn:myShortDisplayName2];
                }

                v29 = v45;
              }

              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v52 = v29;
              attendee = [v29 attendee];
              v54 = [attendee countByEnumeratingWithState:&v79 objects:v92 count:16];
              if (v54)
              {
                v55 = v54;
                v56 = *v80;
                do
                {
                  for (i = 0; i != v55; ++i)
                  {
                    if (*v80 != v56)
                    {
                      objc_enumerationMutation(attendee);
                    }

                    [*(*(&v79 + 1) + 8 * i) setRsvp:0];
                  }

                  v55 = [attendee countByEnumeratingWithState:&v79 objects:v92 count:16];
                }

                while (v55);
              }

              v29 = v52;
              [v52 setSequence:{objc_msgSend(v52, "sequence") + 1}];
              [v52 setStatus:8];
              [v52 setX_wr_rsvpneeded:0];
              goto LABEL_46;
            case 3:
              calGregorianGMTCalendar = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
              v31 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
              [MEMORY[0x1E695DF00] date];
              v33 = v32 = v29;
              v75 = calGregorianGMTCalendar;
              v34 = [calGregorianGMTCalendar components:252 fromDate:v33];

              v74 = v31;
              v35 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithYear:objc_msgSend(v34 month:"year") day:objc_msgSend(v34 hour:"month") minute:objc_msgSend(v34 second:"day") timeZone:{objc_msgSend(v34, "hour"), objc_msgSend(v34, "minute"), objc_msgSend(v34, "second"), v31}];
              [v32 setDtstamp:v35];
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v77 = v32;
              attendee2 = [v32 attendee];
              v37 = [attendee2 countByEnumeratingWithState:&v83 objects:v93 count:16];
              if (v37)
              {
                v73 = v35;
                v38 = *v84;
                while (2)
                {
                  for (j = 0; j != v37; j = j + 1)
                  {
                    if (*v84 != v38)
                    {
                      objc_enumerationMutation(attendee2);
                    }

                    v40 = *(*(&v83 + 1) + 8 * j);
                    defaultProvider2 = [MEMORY[0x1E6992F50] defaultProvider];
                    value = [v40 value];
                    v43 = [defaultProvider2 urlMatchesOneOfMyEmails:value];

                    if (v43)
                    {
                      v37 = [MEMORY[0x1E695DEC8] arrayWithObject:v40];
                      goto LABEL_43;
                    }
                  }

                  v37 = [attendee2 countByEnumeratingWithState:&v83 objects:v93 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }

LABEL_43:
                v3 = v75;
                v35 = v73;
              }

              else
              {
                v3 = v75;
              }

              [v77 setAttendee:v37];
              v29 = v77;

              LODWORD(v3) = v72;
              v25 = v70;
              components = v71;
LABEL_46:
              v24 = v76;
              break;
          }
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = [components countByEnumeratingWithState:&v87 objects:v94 count:16];
      if (!v24)
      {
LABEL_50:

        v7 = v66;
        v18 = v66;
        v9 = v67;
        exportToICS = v68;
        defaultProvider = v69;
        goto LABEL_51;
      }
    }
  }

  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [(EKiMIPHandler *)v9 iCalendarDocumentWithMethod:v11, v12, v13, v14, v15, v16, v17];
  }

  v18 = 0;
LABEL_51:

  return v18;
}

+ (BOOL)shouldSendEmailForEvent:(id)event withDiff:(id)diff
{
  v4 = OUTLINED_FUNCTION_2_5(self, a2);
  OUTLINED_FUNCTION_0_12(v4);
  return 0;
}

- (id)attendees
{
  v2 = OUTLINED_FUNCTION_2_5(self, a2);
  OUTLINED_FUNCTION_0_12(v2);
  return 0;
}

- (id)emailSubject
{
  v2 = OUTLINED_FUNCTION_2_5(self, a2);
  OUTLINED_FUNCTION_0_12(v2);
  return 0;
}

- (id)emailBody
{
  v2 = OUTLINED_FUNCTION_2_5(self, a2);
  OUTLINED_FUNCTION_0_12(v2);
  return 0;
}

- (id)emailAttachmentName
{
  v2 = OUTLINED_FUNCTION_2_5(self, a2);
  OUTLINED_FUNCTION_0_12(v2);
  return 0;
}

- (int)icsMethod
{
  v2 = OUTLINED_FUNCTION_2_5(self, a2);
  OUTLINED_FUNCTION_0_12(v2);
  return 0;
}

- (void)sendEmail
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(self + 8);
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "No email recipients for iMIP event: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)iCalendarDocumentWithMethod:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "Could not parse ICSDocument from data: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end