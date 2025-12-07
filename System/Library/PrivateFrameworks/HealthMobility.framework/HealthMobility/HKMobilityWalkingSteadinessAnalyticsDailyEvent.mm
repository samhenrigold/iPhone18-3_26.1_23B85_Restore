@interface HKMobilityWalkingSteadinessAnalyticsDailyEvent
- (HKMobilityWalkingSteadinessAnalyticsDailyEvent)initWithDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsDailyEvent

- (HKMobilityWalkingSteadinessAnalyticsDailyEvent)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = HKMobilityWalkingSteadinessAnalyticsDailyEvent;
  v6 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v6 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  v8 = objc_alloc_init(v6);
  v9 = MEMORY[0x277CCABB0];
  environmentDataSource = [sourceCopy environmentDataSource];

  v11 = [v9 numberWithBool:{objc_msgSend(environmentDataSource, "isImproveHealthAndActivityEnabled")}];
  [v8 setObject:v11 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  dataSource = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v43 = 0;
  v13 = [dataSource hasWalkingSteadinessMeasurementsWithError:&v43];
  v14 = v43;
  [v8 setObject:v13 forKeyedSubscript:@"hasWalkingSteadinessMeasurements"];

  v15 = v14;
  if (v15 || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v16 = objc_claimAutoreleasedReturnValue(), v42 = 0, [v16 walkingSteadinessNotificationsEnabledWithError:&v42], v17 = objc_claimAutoreleasedReturnValue(), v18 = v42, objc_msgSend(v8, "setObject:forKeyedSubscript:", v17, @"isWalkingSteadinessNotificationsEnabled"), v17, v16, (v15 = v18) != 0) || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v19 = objc_claimAutoreleasedReturnValue(), v41 = 0, objc_msgSend(v19, "activePairedWatchTypeWithError:", &v41), v20 = objc_claimAutoreleasedReturnValue(), v21 = v41, objc_msgSend(v8, "setObject:forKeyedSubscript:", v20, @"activePairedWatchType"), v20, v19, (v15 = v21) != 0) || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v22 = objc_claimAutoreleasedReturnValue(), v40 = 0, objc_msgSend(v22, "areHealthNotificationsAuthorizedWithError:", &v40), v23 = objc_claimAutoreleasedReturnValue(), v24 = v40, objc_msgSend(v8, "setObject:forKeyedSubscript:", v23, @"areHealthNotificationsAuthorized"), v23, v22, (v15 = v24) != 0) || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v25 = objc_claimAutoreleasedReturnValue(), v39 = 0, objc_msgSend(v25, "hasLaunchedHealthAppInLastWeek:", &v39), v26 = objc_claimAutoreleasedReturnValue(), v27 = v39, objc_msgSend(v8, "setObject:forKeyedSubscript:", v26, @"hasLaunchedHealthAppInLastWeek"), v26, v25, (v15 = v27) != 0))
  {
    v28 = v15;
    if (error)
    {
      v29 = v15;
      *error = v28;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_10:
    v30 = 0;
    goto LABEL_11;
  }

  dataSource2 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v38 = 0;
  v33 = [dataSource2 hasLaunchedHealthAppInLastMonth:&v38];
  v34 = v38;
  [v8 setObject:v33 forKeyedSubscript:@"hasLaunchedHealthAppInLastMonth"];

  v35 = v34;
  if (v35)
  {
    v36 = v35;
    if (error)
    {
      v37 = v35;
      *error = v36;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_10;
  }

  v30 = [v8 copy];
LABEL_11:

  return v30;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dataSource = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v67 = 0;
  v8 = [dataSource ageWithError:&v67];
  v9 = v67;

  v10 = v9;
  if (v10)
  {
    v11 = v10;
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v49 = v11;
    goto LABEL_21;
  }

  v14 = [HKMobilityAnalyticsUtilities payloadValueForAge:v8];
  [v6 setObject:v14 forKeyedSubscript:@"age"];

  dataSource2 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v66 = 0;
  v11 = [dataSource2 biologicalSexWithError:&v66];
  v16 = v66;

  v17 = v16;
  if (v17
    || (+[HKMobilityAnalyticsUtilities payloadStringForBiologicalSex:](HKMobilityAnalyticsUtilities, "payloadStringForBiologicalSex:", v11), v18 = objc_claimAutoreleasedReturnValue(), [v6 setObject:v18 forKeyedSubscript:@"sex"], v18, -[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v19 = objc_claimAutoreleasedReturnValue(), v65 = 0, objc_msgSend(v19, "hasHeightWithError:", &v65), v20 = objc_claimAutoreleasedReturnValue(), v21 = v65, objc_msgSend(v6, "setObject:forKeyedSubscript:", v20, @"hasHeight"), v20, v19, -[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v22 = objc_claimAutoreleasedReturnValue(), v64 = v21, objc_msgSend(v22, "numberOfDaysSinceLastWalkingSteadinessMeasurementWithError:", &v64), v23 = objc_claimAutoreleasedReturnValue(), v24 = v64, v21, objc_msgSend(v6, "setObject:forKeyedSubscript:", v23, @"numberOfDaysSinceLastWalkingSteadinessMeasurement"), v23, v22, (v17 = v24) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v25 = objc_claimAutoreleasedReturnValue(), v63 = 0, [v25 numberOfLowNotificationsInPastYearWithError:&v63], v26 = objc_claimAutoreleasedReturnValue(), v27 = v63, objc_msgSend(v6, "setObject:forKeyedSubscript:", v26, @"numberOfLowNotificationsInPastYear"), v26, v25, (v17 = v27) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v28 = objc_claimAutoreleasedReturnValue(), v62 = 0, [v28 numberOfRepeatLowNotificationsInPastYearWithError:&v62], v29 = objc_claimAutoreleasedReturnValue(), v30 = v62, objc_msgSend(v6, "setObject:forKeyedSubscript:", v29, @"numberOfRepeatLowNotificationsInPastYear"), v29, v28, (v17 = v30) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v31 = objc_claimAutoreleasedReturnValue(), v61 = 0, [v31 numberOfVeryLowNotificationsInPastYearWithError:&v61], v32 = objc_claimAutoreleasedReturnValue(), v33 = v61, objc_msgSend(v6, "setObject:forKeyedSubscript:", v32, @"numberOfVeryLowNotificationsInPastYear"), v32, v31, (v17 = v33) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v34 = objc_claimAutoreleasedReturnValue(), v60 = 0, [v34 numberOfRepeatVeryLowNotificationsInPastYearWithError:&v60], v35 = objc_claimAutoreleasedReturnValue(), v36 = v60, objc_msgSend(v6, "setObject:forKeyedSubscript:", v35, @"numberOfRepeatVeryLowNotificationsInPastYear"), v35, v34, (v17 = v36) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v37 = objc_claimAutoreleasedReturnValue(), v59 = 0, [v37 numberOfInitialNotificationsInPastYearWithError:&v59], v38 = objc_claimAutoreleasedReturnValue(), v39 = v59, objc_msgSend(v6, "setObject:forKeyedSubscript:", v38, @"numberOfInitialNotificationsInPastYear"), v38, v37, (v17 = v39) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v40 = objc_claimAutoreleasedReturnValue(), v58 = 0, [v40 daysSinceLastRepeatNotificationWithError:&v58], v41 = objc_claimAutoreleasedReturnValue(), v42 = v58, objc_msgSend(v6, "setObject:forKeyedSubscript:", v41, @"daysSinceLastRepeatNotification"), v41, v40, (v17 = v42) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v43 = objc_claimAutoreleasedReturnValue(), v57 = 0, [v43 daysSinceLastInitialNotificationWithError:&v57], v44 = objc_claimAutoreleasedReturnValue(), v45 = v57, objc_msgSend(v6, "setObject:forKeyedSubscript:", v44, @"daysSinceLastInitialNotification"), v44, v43, (v17 = v45) != 0)
    || (-[HKMobilityWalkingSteadinessAnalyticsDailyEvent dataSource](self, "dataSource"), v46 = objc_claimAutoreleasedReturnValue(), v56 = 0, [v46 currentWalkingSteadinessClassificationWithError:&v56], v47 = objc_claimAutoreleasedReturnValue(), v48 = v56, objc_msgSend(v6, "setObject:forKeyedSubscript:", v47, @"currentWalkingSteadinessClassification"), v47, v46, (v17 = v48) != 0))
  {
    v49 = v17;
LABEL_15:
    if (error)
    {
      v50 = v49;
      *error = v49;
    }

    else
    {
      _HKLogDroppedError();
    }

    v13 = 0;
    goto LABEL_21;
  }

  dataSource3 = [(HKMobilityWalkingSteadinessAnalyticsDailyEvent *)self dataSource];
  v55 = 0;
  v53 = [dataSource3 previousWalkingSteadinessClassificationWithError:&v55];
  v54 = v55;
  [v6 setObject:v53 forKeyedSubscript:@"previousWalkingSteadinessClassification"];

  v49 = v54;
  if (v49)
  {
    goto LABEL_15;
  }

  v13 = [v6 copy];
LABEL_21:

  return v13;
}

@end