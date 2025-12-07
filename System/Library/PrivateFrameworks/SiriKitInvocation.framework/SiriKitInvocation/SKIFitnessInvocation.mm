@interface SKIFitnessInvocation
+ (id)announcePayloadFromUserData:(id)data;
+ (id)announceWorkoutReminder:(id)reminder announcePayload:(id)payload;
+ (id)announceWorkoutVoiceFeedback:(id)feedback announcePayload:(id)payload;
+ (id)updateStartLocalRequest:(id)request withNewAnnouncePayload:(id)payload;
+ (id)workoutReminderFromPayload:(id)payload;
+ (id)workoutVoiceFeedbackFromPayload:(id)payload;
+ (void)updateDict:(id)dict withAnnouncePayload:(id)payload;
@end

@implementation SKIFitnessInvocation

+ (id)announceWorkoutReminder:(id)reminder announcePayload:(id)payload
{
  v6 = MEMORY[0x277CBEB38];
  payloadCopy = payload;
  reminderCopy = reminder;
  v9 = [[v6 alloc] initWithCapacity:8];
  predictionIdentifier = [reminderCopy predictionIdentifier];
  [v9 setValue:predictionIdentifier forKey:@"predictionIdentifier"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reminderCopy, "workoutType")}];
  [v9 setValue:v11 forKey:@"workoutType"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(reminderCopy, "workoutActivityType")}];
  [v9 setValue:v12 forKey:@"workoutActivityType"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reminderCopy, "workoutLocationType")}];
  [v9 setValue:v13 forKey:@"workoutLocationType"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(reminderCopy, "workoutSwimmingLocationType")}];
  [v9 setValue:v14 forKey:@"workoutSwimmingLocationType"];

  v15 = MEMORY[0x277CCABB0];
  predictionType = [reminderCopy predictionType];

  v17 = [v15 numberWithInteger:predictionType];
  [v9 setValue:v17 forKey:@"predictionType"];

  [self updateDict:v9 withAnnouncePayload:payloadCopy];
  v18 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v19 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.fitness.announceWorkoutReminder"];
  [(SKIDirectInvocationPayload *)v19 setUserData:v9];
  v20 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v18 payload:v19];
  v21 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v20];

  return v21;
}

+ (id)workoutReminderFromPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"predictionIdentifier"];
  stringValue = [v4 stringValue];

  v6 = [payloadCopy objectForKeyedSubscript:@"predictionType"];
  integerValue = [v6 integerValue];

  v8 = [payloadCopy objectForKeyedSubscript:@"workoutType"];
  integerValue2 = [v8 integerValue];

  v10 = [payloadCopy objectForKeyedSubscript:@"workoutActivityType"];
  integerValue3 = [v10 integerValue];

  v12 = [payloadCopy objectForKeyedSubscript:@"workoutLocationType"];
  integerValue4 = [v12 integerValue];

  v14 = [payloadCopy objectForKeyedSubscript:@"workoutSwimmingLocationType"];

  integerValue5 = [v14 integerValue];
  v16 = [objc_alloc(MEMORY[0x277CEF420]) initWithPredictionIdentifier:stringValue predictionType:integerValue workoutType:integerValue2 workoutActivityType:integerValue3 locationType:integerValue4 swimmingLocationType:integerValue5];

  return v16;
}

+ (id)announceWorkoutVoiceFeedback:(id)feedback announcePayload:(id)payload
{
  v6 = MEMORY[0x277CBEB38];
  payloadCopy = payload;
  feedbackCopy = feedback;
  dictionary = [v6 dictionary];
  v19 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:feedbackCopy requiringSecureCoding:1 error:&v19];

  v11 = v19;
  v12 = v11;
  if (v10)
  {
    [dictionary setObject:v10 forKey:@"voiceFeedbackData"];
  }

  else
  {
    v13 = SKIDefaultLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation announceWorkoutVoiceFeedback:announcePayload:];
    }
  }

  [self updateDict:dictionary withAnnouncePayload:payloadCopy];

  v14 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v15 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.fitness.announceWorkoutVoiceFeedback"];
  [(SKIDirectInvocationPayload *)v15 setUserData:dictionary];
  v16 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v14 payload:v15];
  v17 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v16];

  return v17;
}

+ (id)workoutVoiceFeedbackFromPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:@"voiceFeedbackData"];
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
    v5 = v9;
    v6 = v5;
    if (v5)
    {
      v7 = SKIDefaultLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[SKIFitnessInvocation workoutVoiceFeedbackFromPayload:];
      }
    }
  }

  else
  {
    v6 = SKIDefaultLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation workoutVoiceFeedbackFromPayload:];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)updateStartLocalRequest:(id)request withNewAnnouncePayload:(id)payload
{
  payloadCopy = payload;
  clientBoundCommands = [request clientBoundCommands];
  firstObject = [clientBoundCommands firstObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    parse = [firstObject parse];
    directInvocation = [parse directInvocation];

    invocationIdentifier = [directInvocation invocationIdentifier];
    if ([invocationIdentifier isEqualToString:@"com.apple.siri.directInvocation.fitness.announceWorkoutReminder"] & 1) != 0 || (v13 = objc_msgSend(invocationIdentifier, "isEqualToString:", @"com.apple.siri.directInvocation.fitness.announceWorkoutVoiceFeedback"), (v13))
    {
      v14 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:invocationIdentifier];
      data = [directInvocation data];

      if (data)
      {
        v17 = MEMORY[0x277CCAC58];
        data2 = [directInvocation data];
        v28 = 0;
        v19 = [v17 propertyListWithData:data2 options:0 format:0 error:&v28];
        v20 = v28;
        [(SKIDirectInvocationPayload *)v14 setUserData:v19];

        if (v20)
        {
          v22 = SKIDefaultLog(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
          }

          v23 = 0;
        }

        else
        {
          userData = [(SKIDirectInvocationPayload *)v14 userData];
          v22 = [userData mutableCopy];

          [self updateDict:v22 withAnnouncePayload:payloadCopy];
          [(SKIDirectInvocationPayload *)v14 setUserData:v22];
          v25 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
          v26 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v25 payload:v14];
          v23 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v26];
        }
      }

      else
      {
        v20 = SKIDefaultLog(v16);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
        }

        v23 = 0;
      }
    }

    else
    {
      v14 = SKIDefaultLog(v13);
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
      }

      v23 = 0;
    }
  }

  else
  {
    directInvocation = SKIDefaultLog(isKindOfClass);
    if (os_log_type_enabled(directInvocation, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation updateStartLocalRequest:withNewAnnouncePayload:];
    }

    v23 = 0;
  }

  return v23;
}

+ (void)updateDict:(id)dict withAnnouncePayload:(id)payload
{
  dictCopy = dict;
  payloadCopy = payload;
  appBundleIdOfLastAnnouncement = [payloadCopy appBundleIdOfLastAnnouncement];
  v8 = [appBundleIdOfLastAnnouncement length];

  if (v8)
  {
    appBundleIdOfLastAnnouncement2 = [payloadCopy appBundleIdOfLastAnnouncement];
    [dictCopy setValue:appBundleIdOfLastAnnouncement2 forKey:@"appBundleIdOfLastAnnouncement"];
  }

  else
  {
    [dictCopy removeObjectForKey:@"appBundleIdOfLastAnnouncement"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [dictCopy setValue:v10 forKey:@"synchronousBurstIndex"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isSameTypeAsLastAnnouncement")}];
  [dictCopy setValue:v11 forKey:@"isSameTypeAsLastAnnouncement"];

  v12 = MEMORY[0x277CCABB0];
  [payloadCopy timeSinceLastAnnouncement];
  v13 = [v12 numberWithDouble:?];
  [dictCopy setValue:v13 forKey:@"timeSinceLastAnnouncement"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [dictCopy setValue:v14 forKey:@"announcePlatform"];

  v19 = 0;
  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v19];
  v16 = v19;
  v17 = v16;
  if (v15)
  {
    [dictCopy setValue:v15 forKey:@"announcePayload"];
  }

  else
  {
    v18 = SKIDefaultLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation updateDict:withAnnouncePayload:];
    }
  }
}

+ (id)announcePayloadFromUserData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"announcePayload"];
  v9 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    v7 = SKIDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SKIFitnessInvocation announcePayloadFromUserData:];
    }
  }

  return v4;
}

+ (void)announceWorkoutVoiceFeedback:announcePayload:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)workoutVoiceFeedbackFromPayload:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)updateStartLocalRequest:withNewAnnouncePayload:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)updateStartLocalRequest:withNewAnnouncePayload:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)updateDict:withAnnouncePayload:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)announcePayloadFromUserData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end