@interface CADEventPredicate(EKPredicateEvaluating)
- (BOOL)ekPredicateEvaluateWithObject:()EKPredicateEvaluating;
@end

@implementation CADEventPredicate(EKPredicateEvaluating)

- (BOOL)ekPredicateEvaluateWithObject:()EKPredicateEvaluating
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    endDate = [self endDate];
    startDate = [self startDate];
    startDate2 = [self startDate];
    v26 = 0;
    if (!startDate2 || (v9 = startDate2, [self endDate], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10) || (objc_msgSend(v5, "startDate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "CalIsAfterOrSameAsDate:", endDate), v11, (v12 & 1) == 0) && (objc_msgSend(v5, "endDateUnadjustedForLegacyClients"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "CalIsBeforeOrSameAsDate:", startDate), v13, (v14 & 1) == 0))
    {
      calendars = [self calendars];
      if (!calendars || (v16 = calendars, [self calendars], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "calendar"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "CADObjectID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "containsObject:", v19), v19, v18, v17, v16, v20))
      {
        eventUUID = [self eventUUID];
        if (!eventUUID || (v22 = eventUUID, [self eventUUID], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "uniqueID"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "isEqualToString:", v24), v24, v23, v22, v25))
        {
          if ((![self excludeTimedEvents] || objc_msgSend(v5, "isAllDay")) && (!objc_msgSend(self, "excludeAllDayEvents") || (objc_msgSend(v5, "isAllDay") & 1) == 0) && (!objc_msgSend(self, "excludeDeclined") || objc_msgSend(v5, "participationStatus") != 3) && (!objc_msgSend(self, "excludeProposed") || (objc_msgSend(v5, "isProposedTimeEvent") & 1) == 0) && (!objc_msgSend(self, "excludeDeclinedUnlessProposed") || objc_msgSend(v5, "participationStatus") != 3 || objc_msgSend(v5, "isProposedTimeEvent")))
          {
            v26 = 1;
          }
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end