@interface EMParsecInstantAnswers
+ (NSString)bundleIdentifier;
+ (id)_dateComponentsForDate:(id)date inTimeZone:(id)zone;
+ (id)_flightArrivalDateFromUpdatedFlightInformation:(id)information;
+ (id)_flightDepartureDateFromUpdatedFlightInformation:(id)information;
+ (id)dictionaryFromTimezone:(id)timezone;
+ (id)flightArrivalDateComponentsFromUpdatedFlightInformation:(id)information arrivalTimeZone:(id)zone;
+ (id)flightDepartureDateComponentsFromUpdatedFlightInformation:(id)information departureTimeZone:(id)zone;
+ (id)flightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date;
+ (id)flightURLFromUpdatedFlightInformation:(id)information;
+ (id)formattedDate:(id)date withTimezone:(id)timezone;
+ (id)inlineCardWithManageReservationButton:(BOOL)button bodyCardSectionID:(id)d buttonsCardSectionID:(id)iD;
+ (id)log;
+ (id)sfAirportToDictionnary:(id)dictionnary;
+ (id)sfFlightStatusToString:(int)string;
+ (id)sfFlightsToDictionary:(id)dictionary;
+ (id)updatedFlightInformationForInstantAnswer:(id)answer;
+ (id)utcFormatter;
+ (void)setBundleIdentifier:(id)identifier;
@end

@implementation EMParsecInstantAnswers

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__EMParsecInstantAnswers_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_30 != -1)
  {
    dispatch_once(&log_onceToken_30, block);
  }

  v2 = log_log_30;

  return v2;
}

void __29__EMParsecInstantAnswers_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_30;
  log_log_30 = v1;
}

+ (id)updatedFlightInformationForInstantAnswer:(id)answer
{
  v83 = *MEMORY[0x1E69E9840];
  answerCopy = answer;
  flightDepartureDateComponents = [answerCopy flightDepartureDateComponents];
  if (!flightDepartureDateComponents)
  {
    v15 = 0;
    goto LABEL_15;
  }

  v65 = answerCopy;
  flightArrivalDateComponents = [answerCopy flightArrivalDateComponents];
  if (!flightArrivalDateComponents)
  {
    goto LABEL_12;
  }

  flightArrivalAirportCode = [v65 flightArrivalAirportCode];
  if (!flightArrivalAirportCode)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  flightArrivalAirportCode2 = [v65 flightArrivalAirportCode];
  if ([flightArrivalAirportCode2 length] < 2 || (objc_msgSend(v65, "flightDepartureAirportCode"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_11;
  }

  flightDepartureAirportCode = [v65 flightDepartureAirportCode];
  v10 = [flightDepartureAirportCode length];

  if (v10 >= 2)
  {
    v11 = v65;
    v12 = objc_alloc(MEMORY[0x1E695DEE8]);
    v57 = [v12 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v13 = objc_msgSend_flightDepartureTimeZone(v65);

    if (v13)
    {
      v14 = objc_msgSend_flightDepartureTimeZone(v65);
      [v57 setTimeZone:v14];
    }

    else
    {
      v17 = +[EMParsecInstantAnswers log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] Received nil flightDepartureTimeZone, using UTC timeZone to initialize Calendar", buf, 2u);
      }

      v18 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
      [v57 setTimeZone:v18];

      v11 = v65;
    }

    flightDepartureDateComponents2 = [v11 flightDepartureDateComponents];
    v59 = [v57 dateFromComponents:flightDepartureDateComponents2];

    flightCarrierCode = [v65 flightCarrierCode];
    flightNumber = [v65 flightNumber];
    v56 = [EMParsecInstantAnswers flightInformationWithAirlineCode:flightCarrierCode flightNumber:flightNumber flightDate:v59];

    if (!v56)
    {
      v15 = 0;
LABEL_83:

      goto LABEL_14;
    }

    v22 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v56 count];
      *buf = 134217984;
      v82 = v23;
      _os_log_impl(&dword_1C6655000, v22, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found %lu events from flights api response", buf, 0xCu);
    }

    v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v56;
    v61 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (v61)
    {
      v60 = *v75;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v75 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [*(*(&v74 + 1) + 8 * i) objectForKey:{@"legs", v56}];
          if (v24)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v62 = v24;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v70 objects:v79 count:16];
            if (!v26)
            {
              goto LABEL_48;
            }

            v27 = *v71;
            while (1)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v71 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v70 + 1) + 8 * j);
                v30 = [v29 objectForKey:@"departureAirport"];
                v31 = v30;
                if (v30)
                {
                  v32 = [v30 objectForKey:@"code"];
                  if (!v32)
                  {
                    flightDepartureAirportCode2 = +[EMParsecInstantAnswers log];
                    if (os_log_type_enabled(flightDepartureAirportCode2, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1C6655000, flightDepartureAirportCode2, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found flight leg with no departure airport code", buf, 2u);
                    }

LABEL_45:

                    goto LABEL_46;
                  }

                  flightDepartureAirportCode2 = [v65 flightDepartureAirportCode];
                  if (![v32 isEqualToString:flightDepartureAirportCode2])
                  {
                    goto LABEL_45;
                  }

                  v34 = [v29 objectForKey:@"departureActualTime"];
                  if (!v34)
                  {
                    goto LABEL_45;
                  }

                  v35 = [v29 objectForKey:@"arrivalActualTime"];
                  v36 = v35 == 0;

                  if (!v36)
                  {
                    [v64 addObject:v29];
                  }
                }

                else
                {
                  v32 = +[EMParsecInstantAnswers log];
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1C6655000, v32, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found flight leg with no departure airport", buf, 2u);
                  }
                }

LABEL_46:
              }

              v26 = [v25 countByEnumeratingWithState:&v70 objects:v79 count:16];
              if (!v26)
              {
LABEL_48:

                v24 = v62;
                break;
              }
            }
          }
        }

        v61 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
      }

      while (v61);
    }

    v37 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v64 count];
      *buf = 134217984;
      v82 = v38;
      _os_log_impl(&dword_1C6655000, v37, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] found %lu flight legs with same departure airport and date", buf, 0xCu);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v39 = v64;
    v40 = [v39 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v40)
    {
      v41 = 0;
      v42 = *v67;
      v43 = 1.79769313e308;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v67 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v66 + 1) + 8 * k);
          v46 = [v45 objectForKey:{@"departurePublishedTime", v56}];
          if (v46)
          {
            v47 = +[EMParsecInstantAnswers utcFormatter];
            v48 = [v47 dateFromString:v46];

            if (v48 && ([v48 timeIntervalSinceDate:v59], v50 = fabs(v49), v50 <= v43))
            {
              v51 = v45;

              v41 = v51;
            }

            else
            {
              v50 = v43;
            }

            v43 = v50;
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v40);

      if (v39 && v41)
      {
        v52 = [EMParsecInstantAnswers _flightDepartureDateFromUpdatedFlightInformation:v41];
        v53 = [EMParsecInstantAnswers _flightArrivalDateFromUpdatedFlightInformation:v41];
        if (v52 && v53)
        {
          v54 = +[EMParsecInstantAnswers log];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C6655000, v54, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] successfully updated flight instant answer with live info.", buf, 2u);
          }

          v15 = v41;
        }

        else
        {
          v55 = +[EMParsecInstantAnswers log];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C6655000, v55, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] flightDepartureActualDate or flightArrivalActualDate is nil, skipping live info. update", buf, 2u);
          }

          v15 = 0;
        }

LABEL_82:
        goto LABEL_83;
      }
    }

    else
    {

      v41 = 0;
    }

    v52 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v52, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] no matching leg was found from flights api response", buf, 2u);
    }

    v15 = 0;
    goto LABEL_82;
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  answerCopy = v65;
LABEL_15:

  return v15;
}

+ (id)flightURLFromUpdatedFlightInformation:(id)information
{
  v3 = [information objectForKey:@"carrierWebsite"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_flightDepartureDateFromUpdatedFlightInformation:(id)information
{
  v3 = [information objectForKey:@"departureActualTime"];
  v4 = +[EMParsecInstantAnswers utcFormatter];
  v5 = [v4 dateFromString:v3];

  return v5;
}

+ (id)_flightArrivalDateFromUpdatedFlightInformation:(id)information
{
  v3 = [information objectForKey:@"arrivalActualTime"];
  v4 = +[EMParsecInstantAnswers utcFormatter];
  v5 = [v4 dateFromString:v3];

  return v5;
}

+ (id)flightDepartureDateComponentsFromUpdatedFlightInformation:(id)information departureTimeZone:(id)zone
{
  zoneCopy = zone;
  v6 = [EMParsecInstantAnswers _flightDepartureDateFromUpdatedFlightInformation:information];
  if (v6)
  {
    v7 = [EMParsecInstantAnswers _dateComponentsForDate:v6 inTimeZone:zoneCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)flightArrivalDateComponentsFromUpdatedFlightInformation:(id)information arrivalTimeZone:(id)zone
{
  zoneCopy = zone;
  v6 = [EMParsecInstantAnswers _flightArrivalDateFromUpdatedFlightInformation:information];
  if (v6)
  {
    v7 = [EMParsecInstantAnswers _dateComponentsForDate:v6 inTimeZone:zoneCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_dateComponentsForDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v7 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v7 setTimeZone:zoneCopy];
  v8 = [v7 components:252 fromDate:dateCopy];

  return v8;
}

+ (id)inlineCardWithManageReservationButton:(BOOL)button bodyCardSectionID:(id)d buttonsCardSectionID:(id)iD
{
  buttonCopy = button;
  v22[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v9 = objc_alloc_init(MEMORY[0x1E69C9F08]);
  [v9 setCardSectionId:dCopy];
  v10 = objc_alloc_init(MEMORY[0x1E69CA580]);
  [v9 setCommand:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69C9ED8]);
  [v11 setCardSectionId:iDCopy];
  v12 = objc_alloc_init(MEMORY[0x1E69C9F90]);
  v13 = objc_alloc_init(MEMORY[0x1E69CA580]);
  [v12 setCommand:v13];

  [v12 setUniqueId:1];
  if (buttonCopy)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69C9F90]);
    v15 = objc_alloc_init(MEMORY[0x1E69CA1E8]);
    [v14 setCommand:v15];

    [v14 setUniqueId:2];
    v22[0] = v12;
    v22[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v11 setButtons:v16];
  }

  else
  {
    v21 = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v11 setButtons:v14];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69C9F00]);
  v20[0] = v9;
  v20[1] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v17 setCardSections:v18];

  return v17;
}

+ (id)utcFormatter
{
  if (utcFormatter_onceToken != -1)
  {
    +[EMParsecInstantAnswers utcFormatter];
  }

  v3 = utcFormatter_utcFormatter;

  return v3;
}

void __38__EMParsecInstantAnswers_utcFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = utcFormatter_utcFormatter;
  utcFormatter_utcFormatter = v0;
}

+ (id)sfFlightStatusToString:(int)string
{
  if ((string - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1E826F1E0[string - 1];
  }
}

+ (id)dictionaryFromTimezone:(id)timezone
{
  timezoneCopy = timezone;
  v4 = objc_opt_new();
  name = [timezoneCopy name];

  if (name)
  {
    name2 = [timezoneCopy name];
    [v4 setObject:name2 forKeyedSubscript:@"name"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(timezoneCopy, "secondsFromGMT")}];
  [v4 setObject:v7 forKeyedSubscript:@"secondsFromGMT"];

  return v4;
}

+ (id)formattedDate:(id)date withTimezone:(id)timezone
{
  dateCopy = date;
  timezoneCopy = timezone;
  v9 = objc_autoreleasePoolPush();
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMParsecInstantAnswers.m" lineNumber:244 description:{@"Can't create formattedDate, date is nil"}];
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (timezoneCopy)
  {
    [v10 setTimeZone:timezoneCopy];
    v12 = [v11 formatOptions] | 0x40;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v11 setTimeZone:v13];

    v12 = [v11 formatOptions] & 0xFFFFFFFFFFFFFFBFLL;
  }

  [v11 setFormatOptions:v12];
  v14 = [v11 stringFromDate:dateCopy];

  objc_autoreleasePoolPop(v9);

  return v14;
}

+ (id)sfAirportToDictionnary:(id)dictionnary
{
  dictionnaryCopy = dictionnary;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  code = [dictionnaryCopy code];
  null = code;
  if (!code)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:null forKeyedSubscript:@"code"];
  if (!code)
  {
  }

  timezone = [dictionnaryCopy timezone];
  v10 = [self dictionaryFromTimezone:timezone];
  null2 = v10;
  if (!v10)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:null2 forKeyedSubscript:@"timezone"];
  if (!v10)
  {
  }

  name = [dictionnaryCopy name];
  null3 = name;
  if (!name)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:null3 forKeyedSubscript:@"name"];
  if (!name)
  {
  }

  v14 = [v6 copy];
  objc_autoreleasePoolPop(v5);

  return v14;
}

+ (id)sfFlightsToDictionary:(id)dictionary
{
  v100 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v66 = objc_opt_new();
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = dictionaryCopy;
  v3 = [obj countByEnumeratingWithState:&v94 objects:v99 count:{16, dictionaryCopy}];
  if (v3)
  {
    v65 = *v95;
    do
    {
      v4 = 0;
      v64 = v3;
      do
      {
        if (*v95 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v69 = v4;
        v5 = *(*(&v94 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v70 = objc_opt_new();
        flightNumber = [v5 flightNumber];
        v7 = flightNumber;
        if (!flightNumber)
        {
          null = [MEMORY[0x1E695DFB0] null];
          v7 = null;
        }

        [v70 setObject:v7 forKeyedSubscript:@"flightNumber"];
        if (!flightNumber)
        {
        }

        carrierCode = [v5 carrierCode];
        v9 = carrierCode;
        if (!carrierCode)
        {
          null2 = [MEMORY[0x1E695DFB0] null];
          v9 = null2;
        }

        [v70 setObject:v9 forKeyedSubscript:@"carrierCode"];
        if (!carrierCode)
        {
        }

        carrierWebsite = [v5 carrierWebsite];
        v87 = objc_opt_new();
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        legs = [v5 legs];
        v88 = [legs countByEnumeratingWithState:&v90 objects:v98 count:16];
        if (v88)
        {
          v86 = *v91;
          v71 = legs;
          do
          {
            for (i = 0; i != v88; ++i)
            {
              if (*v91 != v86)
              {
                objc_enumerationMutation(v71);
              }

              v13 = *(*(&v90 + 1) + 8 * i);
              v14 = objc_opt_new();
              v15 = +[EMParsecInstantAnswers sfFlightStatusToString:](EMParsecInstantAnswers, "sfFlightStatusToString:", [v13 status]);
              v16 = v15;
              if (!v15)
              {
                null3 = [MEMORY[0x1E695DFB0] null];
                v16 = null3;
              }

              [v14 setObject:v16 forKeyedSubscript:@"status"];
              if (!v15)
              {
              }

              title = [v13 title];
              v18 = title;
              if (!title)
              {
                null4 = [MEMORY[0x1E695DFB0] null];
                v18 = null4;
              }

              [v14 setObject:v18 forKeyedSubscript:@"title"];
              if (!title)
              {
              }

              departurePublishedTime = [v13 departurePublishedTime];
              departureAirport = [v13 departureAirport];
              timezone = [departureAirport timezone];
              v22 = [EMParsecInstantAnswers formattedDate:departurePublishedTime withTimezone:timezone];
              v23 = v22;
              if (!v22)
              {
                null5 = [MEMORY[0x1E695DFB0] null];
                v23 = null5;
              }

              [v14 setObject:v23 forKeyedSubscript:@"departurePublishedTime"];
              if (!v22)
              {
              }

              departureActualTime = [v13 departureActualTime];
              departureAirport2 = [v13 departureAirport];
              timezone2 = [departureAirport2 timezone];
              v27 = [EMParsecInstantAnswers formattedDate:departureActualTime withTimezone:timezone2];
              v28 = v27;
              if (!v27)
              {
                null6 = [MEMORY[0x1E695DFB0] null];
                v28 = null6;
              }

              [v14 setObject:v28 forKeyedSubscript:@"departureActualTime"];
              if (!v27)
              {
              }

              departureTerminal = [v13 departureTerminal];
              v30 = departureTerminal;
              if (!departureTerminal)
              {
                null7 = [MEMORY[0x1E695DFB0] null];
                v30 = null7;
              }

              [v14 setObject:v30 forKeyedSubscript:@"departureTerminal"];
              if (!departureTerminal)
              {
              }

              departureGate = [v13 departureGate];
              v32 = departureGate;
              if (!departureGate)
              {
                null8 = [MEMORY[0x1E695DFB0] null];
                v32 = null8;
              }

              [v14 setObject:v32 forKeyedSubscript:@"departureGate"];
              if (!departureGate)
              {
              }

              arrivalPublishedTime = [v13 arrivalPublishedTime];
              arrivalAirport = [v13 arrivalAirport];
              timezone3 = [arrivalAirport timezone];
              v36 = [EMParsecInstantAnswers formattedDate:arrivalPublishedTime withTimezone:timezone3];
              v37 = v36;
              if (!v36)
              {
                null9 = [MEMORY[0x1E695DFB0] null];
                v37 = null9;
              }

              [v14 setObject:v37 forKeyedSubscript:@"arrivalPublishedTime"];
              if (!v36)
              {
              }

              arrivalActualTime = [v13 arrivalActualTime];
              arrivalAirport2 = [v13 arrivalAirport];
              timezone4 = [arrivalAirport2 timezone];
              v41 = [EMParsecInstantAnswers formattedDate:arrivalActualTime withTimezone:timezone4];
              v42 = v41;
              if (!v41)
              {
                null10 = [MEMORY[0x1E695DFB0] null];
                v42 = null10;
              }

              [v14 setObject:v42 forKeyedSubscript:@"arrivalActualTime"];
              if (!v41)
              {
              }

              arrivalTerminal = [v13 arrivalTerminal];
              v44 = arrivalTerminal;
              if (!arrivalTerminal)
              {
                null11 = [MEMORY[0x1E695DFB0] null];
                v44 = null11;
              }

              [v14 setObject:v44 forKeyedSubscript:@"arrivalTerminal"];
              if (!arrivalTerminal)
              {
              }

              arrivalGate = [v13 arrivalGate];
              v46 = arrivalGate;
              if (!arrivalGate)
              {
                null12 = [MEMORY[0x1E695DFB0] null];
                v46 = null12;
              }

              [v14 setObject:v46 forKeyedSubscript:@"arrivalGate"];
              if (!arrivalGate)
              {
              }

              departureAirport3 = [v13 departureAirport];
              v48 = [EMParsecInstantAnswers sfAirportToDictionnary:departureAirport3];
              v49 = v48;
              if (!v48)
              {
                null13 = [MEMORY[0x1E695DFB0] null];
                v49 = null13;
              }

              [v14 setObject:v49 forKeyedSubscript:@"departureAirport"];
              if (!v48)
              {
              }

              arrivalAirport3 = [v13 arrivalAirport];
              v51 = [EMParsecInstantAnswers sfAirportToDictionnary:arrivalAirport3];
              v52 = v51;
              if (!v51)
              {
                null14 = [MEMORY[0x1E695DFB0] null];
                v52 = null14;
              }

              [v14 setObject:v52 forKeyedSubscript:@"arrivalAirport"];
              if (!v51)
              {
              }

              divertedAirport = [v13 divertedAirport];
              v54 = [self sfAirportToDictionnary:divertedAirport];
              v55 = v54;
              if (!v54)
              {
                null15 = [MEMORY[0x1E695DFB0] null];
                v55 = null15;
              }

              [v14 setObject:v55 forKeyedSubscript:@"divertedAirport"];
              if (!v54)
              {
              }

              v56 = carrierWebsite;
              if (!carrierWebsite)
              {
                null16 = [MEMORY[0x1E695DFB0] null];
                v56 = null16;
              }

              [v14 setObject:v56 forKeyedSubscript:@"carrierWebsite"];
              if (!carrierWebsite)
              {
              }

              [v87 addObject:v14];
            }

            legs = v71;
            v88 = [v71 countByEnumeratingWithState:&v90 objects:v98 count:16];
          }

          while (v88);
        }

        v57 = v87;
        if (!v87)
        {
          null17 = [MEMORY[0x1E695DFB0] null];
          v57 = null17;
        }

        [v70 setObject:v57 forKeyedSubscript:@"legs"];
        if (!v87)
        {
        }

        [v66 addObject:v70];

        objc_autoreleasePoolPop(context);
        v4 = v69 + 1;
      }

      while (v69 + 1 != v64);
      v3 = [obj countByEnumeratingWithState:&v94 objects:v99 count:16];
    }

    while (v3);
  }

  v58 = [v66 copy];

  return v58;
}

+ (id)flightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date
{
  v59 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  numberCopy = number;
  dateCopy = date;
  v12 = dateCopy;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__10;
  v52 = __Block_byref_object_dispose__10;
  v53 = 0;
  if (!codeCopy)
  {
    numberCopy = +[EMParsecInstantAnswers log];
    if (!os_log_type_enabled(numberCopy, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v24 = "[instant answers][flights api] Can't get flightInformation, airlineCode is nil";
LABEL_21:
    _os_log_impl(&dword_1C6655000, numberCopy, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_22;
  }

  if (!numberCopy)
  {
    numberCopy = +[EMParsecInstantAnswers log];
    if (!os_log_type_enabled(numberCopy, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v24 = "[instant answers][flights api] Can't get flightInformation, flightNumber is nil";
    goto LABEL_21;
  }

  if (!dateCopy)
  {
    numberCopy = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(numberCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "[instant answers][flights api] Can't get flightInformation, flightDate is nil";
      goto LABEL_21;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  numberCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", codeCopy, numberCopy];
  if (!numberCopy)
  {
    v26 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v26, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] Can't get flightInformation, query is malformed", buf, 2u);
    }

    goto LABEL_22;
  }

  v14 = +[EMParsecInstantAnswers bundleIdentifier];
  if (!v14)
  {
    v15 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] bundleIdentifier is undefined.", buf, 2u);
    }

    v14 = @"com.apple.undefined";
  }

  v36 = v14;
  v37 = [MEMORY[0x1E6998648] flightRequestForQuery:numberCopy date:v12 appBundleId:?];
  if (!v37)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMParsecInstantAnswers.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v16 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.mail" userAgent:@"mail/1"];
  [v16 setParsecEnabled:1];
  [v16 setDontPreloadImages:1];
  v17 = [MEMORY[0x1E6998670] sessionWithConfiguration:v16];
  *buf = 0;
  v43 = buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__10;
  v46 = __Block_byref_object_dispose__10;
  v47 = 0;
  v18 = dispatch_semaphore_create(0);
  v19 = dispatch_time(0, 500000000);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __83__EMParsecInstantAnswers_flightInformationWithAirlineCode_flightNumber_flightDate___block_invoke;
  v38[3] = &unk_1E826F1C0;
  v40 = &v48;
  v41 = buf;
  v20 = v18;
  v39 = v20;
  v21 = [v17 taskWithRequest:v37 completion:v38];
  [v21 resume];
  if (dispatch_semaphore_wait(v20, v19))
  {
    v22 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v57 = 67109120;
      LODWORD(v58) = 500;
      _os_log_impl(&dword_1C6655000, v22, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] coreparsec request timed out (timeout = %d ms)", v57, 8u);
    }

    v23 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v27 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v49[5] count];
      *v57 = 134217984;
      v58 = v28;
      _os_log_impl(&dword_1C6655000, v27, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] coreparsec results count = %lu", v57, 0xCu);
    }

    if (![v49[5] count])
    {
      v29 = *(v43 + 5);
      if (v29)
      {
        v55[0] = @"error";
        v54[0] = @"type";
        v54[1] = @"errorCode";
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v29, "code")}];
        v55[1] = v30;
        v54[2] = @"userInfo";
        userInfo = [*(v43 + 5) userInfo];
        v55[2] = userInfo;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
        v56 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
        v33 = v49[5];
        v49[5] = v32;
      }
    }

    v23 = v49[5];
  }

  _Block_object_dispose(buf, 8);
LABEL_23:

  _Block_object_dispose(&v48, 8);

  return v23;
}

void __83__EMParsecInstantAnswers_flightInformationWithAirlineCode_flightNumber_flightDate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 flightResults];
  if (!v8)
  {
    v9 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] empty coreparsec response for flight", &v14, 2u);
    }
  }

  v10 = [EMParsecInstantAnswers sfFlightsToDictionary:v8];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    v13 = +[EMParsecInstantAnswers log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1C6655000, v13, OS_LOG_TYPE_DEFAULT, "[instant answers][flights api] error when calling coreparsec : %@", &v14, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)setBundleIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[EMParsecInstantAnswers log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = identifierCopy;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "[instant answers] updated to use new bundle identifier:%{public}@", &v7, 0xCu);
  }

  v5 = [identifierCopy copy];
  v6 = s_bundleIdentifier;
  s_bundleIdentifier = v5;
}

+ (NSString)bundleIdentifier
{
  if (s_bundleIdentifier)
  {
    bundleIdentifier = s_bundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

@end