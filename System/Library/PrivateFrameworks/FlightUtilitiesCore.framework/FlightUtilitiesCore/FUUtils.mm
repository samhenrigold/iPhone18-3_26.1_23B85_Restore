@interface FUUtils
+ (id)airportFromSFAirport:(id)airport;
+ (id)convertFlightModel:(id)model withError:(id *)error;
+ (void)enumerateFlightCodesInString:(id)string usingBlock:(id)block;
+ (void)extractTimeForFlightStep:(id)step fromLeg:(id)leg;
@end

@implementation FUUtils

+ (void)enumerateFlightCodesInString:(id)string usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v19 = 0;
  v7 = DDScannerCreate();
  if (v7)
  {
    v8 = v7;
    v18 = 0;
    if (DDScannerScanString())
    {
      v9 = DDScannerCopyResultsWithOptions();
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v12 = Count;
          for (i = 0; i < v12; ++i)
          {
            CFArrayGetValueAtIndex(v10, i);
            if (DDResultHasType())
            {
              SubresultWithType = DDResultGetSubresultWithType();
              v15 = DDResultGetSubresultWithType();
              if (SubresultWithType)
              {
                if (v15)
                {
                  Value = DDResultGetValue();
                  integerValue = [DDResultGetValue() integerValue];
                  blockCopy[2](blockCopy, Value, integerValue, &v18);
                  if (v18)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        CFRelease(v10);
      }
    }

    CFRelease(v8);
  }
}

+ (id)airportFromSFAirport:(id)airport
{
  airportCopy = airport;
  v4 = objc_alloc_init(FUAirport);
  location = [airportCopy location];
  [location lat];
  v7 = v6;
  location2 = [airportCopy location];
  [location2 lng];
  v10 = CLLocationCoordinate2DMake(v7, v9);
  [(FUAirport *)v4 setLocation:v10.latitude, v10.longitude];

  code = [airportCopy code];
  [(FUAirport *)v4 setIATACode:code];

  name = [airportCopy name];
  [(FUAirport *)v4 setName:name];

  city = [airportCopy city];
  [(FUAirport *)v4 setCity:city];

  timezone = [airportCopy timezone];

  [(FUAirport *)v4 setTimeZone:timezone];

  return v4;
}

+ (void)extractTimeForFlightStep:(id)step fromLeg:(id)leg
{
  stepCopy = step;
  legCopy = leg;
  if ([stepCopy departure])
  {
    departurePublishedTime = [legCopy departurePublishedTime];
    departureActualTime = [legCopy departureActualTime];
    departureGateClosedTime = [legCopy departureGateClosedTime];
    [legCopy departureRunwayTime];
  }

  else
  {
    departurePublishedTime = [legCopy arrivalPublishedTime];
    departureActualTime = [legCopy arrivalActualTime];
    departureGateClosedTime = [legCopy arrivalGateTime];
    [legCopy arrivalRunwayTime];
  }
  v9 = ;

  [departurePublishedTime timeIntervalSince1970];
  if (v10 <= 0.0)
  {

    departurePublishedTime = 0;
  }

  [departureActualTime timeIntervalSince1970];
  if (v11 <= 0.0)
  {

    departureActualTime = 0;
  }

  [departureGateClosedTime timeIntervalSince1970];
  if (v12 <= 0.0)
  {

    departureGateClosedTime = 0;
  }

  [v9 timeIntervalSince1970];
  if (v13 <= 0.0)
  {

    v9 = 0;
  }

  if (departurePublishedTime)
  {
    v14 = [[FUStepTime alloc] initWithType:1 date:departurePublishedTime];
    [stepCopy setScheduledTime:v14];
  }

  if (departureActualTime)
  {
    v15 = [[FUStepTime alloc] initWithType:1 date:departureActualTime];
    [stepCopy setEstimatedTime:v15];
  }

  if (departureGateClosedTime)
  {
    v16 = [[FUStepTime alloc] initWithType:1 date:departureGateClosedTime];
    [stepCopy setActualTime:v16];
  }

  if (v9)
  {
    v17 = [[FUStepTime alloc] initWithType:2 date:v9];
    [stepCopy setRunwayTime:v17];
  }

  [stepCopy setPlannedTime:0];
}

+ (id)convertFlightModel:(id)model withError:(id *)error
{
  v142 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v95 = objc_opt_new();
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = modelCopy;
  v97 = [obj countByEnumeratingWithState:&v136 objects:v141 count:16];
  if (v97)
  {
    v96 = *v137;
    selfCopy = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v137 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v98 = v6;
        v7 = *(*(&v136 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        legs = [v7 legs];
        v103 = [legs countByEnumeratingWithState:&v132 objects:v140 count:16];
        if (v103)
        {
          v100 = *v133;
          v101 = v7;
          v102 = v8;
          do
          {
            v9 = 0;
            do
            {
              if (*v133 != v100)
              {
                objc_enumerationMutation(legs);
              }

              v10 = *(*(&v132 + 1) + 8 * v9);
              v131 = objc_alloc_init(FUFlightLeg);
              status = [v10 status];
              v123 = v9;
              if (status > 4)
              {
                v20 = status - 8;
                v21 = status == 7;
                if (status == 5)
                {
                  v21 = 0;
                }

                v128 = v20 < 2;
                v15 = v20 >= 2 && status == 5;
                v125 = 1;
                v16 = 0;
                v17 = v20 >= 2 && v21;
                v121 = 0;
                v19 = 1;
              }

              else
              {
                v12 = 3;
                if (status == 3)
                {
                  v13 = 1;
                }

                else
                {
                  v12 = 0;
                  v13 = 0;
                }

                v14 = 5;
                if (status != 3)
                {
                  v14 = 0;
                }

                if (status == 2)
                {
                  v12 = 6;
                  v13 = 0;
                  v14 = 6;
                }

                v128 = 0;
                v15 = 0;
                if (status == 1)
                {
                  v12 = 2;
                }

                v125 = v12;
                v16 = status == 1;
                v17 = 0;
                if (status == 1)
                {
                  v18 = 0;
                }

                else
                {
                  v18 = v13;
                }

                v121 = v18;
                if (status == 1)
                {
                  v19 = 2;
                }

                else
                {
                  v19 = v14;
                }
              }

              v22 = objc_alloc_init(FUFlightStep);
              [(FUFlightStep *)v22 setDeparture:1];
              [self extractTimeForFlightStep:v22 fromLeg:v10];
              v23 = objc_alloc_init(FUFlightStep);
              [(FUFlightStep *)v23 setDeparture:0];
              [self extractTimeForFlightStep:v23 fromLeg:v10];
              time = [(FUFlightStep *)v22 time];
              [time timeIntervalSinceNow];
              v26 = v25;

              time2 = [(FUFlightStep *)v23 time];
              [time2 timeIntervalSinceNow];
              v29 = v28;

              v30 = v125;
              if (v128 || v15)
              {
                v30 = 2;
              }

              if (v29 < 0.0)
              {
                v30 = v19;
              }

              if (v26 > 0.0)
              {
                v30 = v19;
              }

              if (v15 | v16 | v17 | v121)
              {
                v31 = 1;
              }

              else
              {
                v31 = v19;
              }

              if (v26 > 0.0)
              {
                v30 = v31;
              }

              v32 = 5;
              if (!v17)
              {
                v32 = v19;
              }

              v33 = 4;
              if (!v128 && !v16)
              {
                v33 = v32;
              }

              if (v29 < 0.0)
              {
                v34 = v33;
              }

              else
              {
                v34 = v30;
              }

              [(FUFlightLeg *)v131 setStatus:v34];
              lastUpdatedTime = [v10 lastUpdatedTime];
              [(FUFlightLeg *)v131 setDateLastUpdated:lastUpdatedTime];

              [(FUFlightStep *)v22 setLegStatus:v34];
              [(FUFlightStep *)v23 setLegStatus:v34];
              departureGate = [v10 departureGate];
              [(FUFlightStep *)v22 setGate:departureGate];

              departureTerminal = [v10 departureTerminal];
              [(FUFlightStep *)v22 setTerminal:departureTerminal];

              departureAirport = [v10 departureAirport];
              v39 = [self airportFromSFAirport:departureAirport];
              [(FUFlightStep *)v22 setAirport:v39];

              [(FUFlightLeg *)v131 setDeparture:v22];
              arrivalGate = [v10 arrivalGate];
              [(FUFlightStep *)v23 setGate:arrivalGate];

              arrivalTerminal = [v10 arrivalTerminal];
              [(FUFlightStep *)v23 setTerminal:arrivalTerminal];

              if (v34 == 5 || v34 == 3)
              {
                divertedAirport = [v10 divertedAirport];
                v43 = divertedAirport != 0;
              }

              else
              {
                v43 = 0;
                divertedAirport = v104;
              }

              if (v34 == 5 || v34 == 3)
              {
              }

              if (v43)
              {
                [v10 divertedAirport];
              }

              else
              {
                [v10 arrivalAirport];
              }
              v44 = ;
              v104 = divertedAirport;
              v45 = [self airportFromSFAirport:v44];
              [(FUFlightStep *)v23 setAirport:v45];

              [(FUFlightLeg *)v131 setArrival:v23];
              scheduledTime = [(FUFlightStep *)v23 scheduledTime];
              if (scheduledTime)
              {
                v47 = scheduledTime;
                scheduledTime2 = [(FUFlightStep *)v22 scheduledTime];

                if (scheduledTime2)
                {
                  scheduledTime3 = [(FUFlightStep *)v23 scheduledTime];
                  date = [scheduledTime3 date];
                  scheduledTime4 = [(FUFlightStep *)v22 scheduledTime];
LABEL_70:
                  v55 = scheduledTime4;
                  date2 = [scheduledTime4 date];
                  [date timeIntervalSinceDate:date2];
                  [(FUFlightLeg *)v131 setDuration:?];

                  goto LABEL_71;
                }
              }

              actualTime = [(FUFlightStep *)v23 actualTime];
              if (actualTime)
              {
                v53 = actualTime;
                actualTime2 = [(FUFlightStep *)v22 actualTime];

                if (actualTime2)
                {
                  scheduledTime3 = [(FUFlightStep *)v23 actualTime];
                  date = [scheduledTime3 date];
                  scheduledTime4 = [(FUFlightStep *)v22 actualTime];
                  goto LABEL_70;
                }
              }

LABEL_71:
              v120 = v23;
              v122 = v22;
              pegasusDefinedState = [v10 pegasusDefinedState];
              if (pegasusDefinedState <= 9)
              {
                [(FUFlightLeg *)v131 setFlightState:qword_24B8571D8[pegasusDefinedState]];
              }

              gateDepartureTimes = [v10 gateDepartureTimes];
              runwayDepartureTimes = [v10 runwayDepartureTimes];
              v114 = [FUDepartureInfo alloc];
              departureAirport2 = [v10 departureAirport];
              v129 = [self airportFromSFAirport:departureAirport2];
              departureGate2 = [v10 departureGate];
              departureTerminal2 = [v10 departureTerminal];
              pegasusDisplayFields = [v10 pegasusDisplayFields];
              departureTime = [pegasusDisplayFields departureTime];
              scheduled = [gateDepartureTimes scheduled];
              current = [gateDepartureTimes current];
              scheduled2 = [runwayDepartureTimes scheduled];
              v116 = runwayDepartureTimes;
              current2 = [runwayDepartureTimes current];
              bufferMinutes = [gateDepartureTimes bufferMinutes];
              bufferMinutes2 = [runwayDepartureTimes bufferMinutes];
              v67 = scheduled;
              v68 = [(FUBaseStopInfo *)v114 initWithAirport:v129 gate:departureGate2 terminal:departureTerminal2 displayTime:departureTime scheduledGateTime:scheduled currentGateTime:current scheduledRunwayTime:scheduled2 currentRunwayTime:current2 gateBufferMinutes:bufferMinutes runwayBufferMinutes:bufferMinutes2];

              v119 = v68;
              [(FUFlightLeg *)v131 setDepartureInfo:v68];
              gateArrivalTimes = [v10 gateArrivalTimes];
              runwayArrivalTimes = [v10 runwayArrivalTimes];
              v71 = [FUArrivalInfo alloc];
              arrivalAirport = [v10 arrivalAirport];
              v130 = [selfCopy airportFromSFAirport:arrivalAirport];
              arrivalGate2 = [v10 arrivalGate];
              arrivalTerminal2 = [v10 arrivalTerminal];
              baggageClaim = [v10 baggageClaim];
              divertedAirport2 = [v10 divertedAirport];
              v109 = [selfCopy airportFromSFAirport:divertedAirport2];
              v105 = v10;
              pegasusDisplayFields2 = [v10 pegasusDisplayFields];
              arrivalTime = [pegasusDisplayFields2 arrivalTime];
              scheduled3 = [gateArrivalTimes scheduled];
              v107 = gateArrivalTimes;
              current3 = [gateArrivalTimes current];
              scheduled4 = [runwayArrivalTimes scheduled];
              current4 = [runwayArrivalTimes current];
              bufferMinutes3 = [gateArrivalTimes bufferMinutes];
              bufferMinutes4 = [runwayArrivalTimes bufferMinutes];
              v108 = [(FUArrivalInfo *)v71 initWithAirport:v130 gate:arrivalGate2 terminal:arrivalTerminal2 baggageClaim:baggageClaim divertedAirport:v109 displayTime:arrivalTime scheduledGateTime:scheduled3 currentGateTime:current3 scheduledRunwayTime:scheduled4 currentRunwayTime:current4 gateBufferMinutes:bufferMinutes3 runwayBufferMinutes:bufferMinutes4];

              [(FUFlightLeg *)v131 setArrivalInfo:v108];
              if (!v107 && !runwayArrivalTimes && !gateDepartureTimes && !v116 && ![v105 pegasusDefinedState])
              {
                [(FUFlightLeg *)v131 setLegacy:1];
              }

              v8 = v102;
              [v102 addObject:v131];

              self = selfCopy;
              v9 = v123 + 1;
              v7 = v101;
            }

            while (v103 != v123 + 1);
            v103 = [legs countByEnumeratingWithState:&v132 objects:v140 count:16];
          }

          while (v103);
        }

        if ([v8 count])
        {
          v79 = objc_alloc_init(FUFlight);
          v80 = [v8 copy];
          [(FUFlight *)v79 setAllLegs:v80];

          flightNumber = [v7 flightNumber];
          -[FUFlight setFlightNumber:](v79, "setFlightNumber:", [flightNumber integerValue]);

          [(FUFlight *)v79 setDisplayFlightNumber:[(FUFlight *)v79 flightNumber]];
          flightID = [v7 flightID];
          [(FUFlight *)v79 setFlightIdentifier:flightID];

          carrierCode = [v7 carrierCode];
          if (carrierCode)
          {
            v84 = objc_alloc_init(FUAirline);
            carrierCode2 = [v7 carrierCode];
            [(FUAirline *)v84 setIATACode:carrierCode2];

            carrierName = [v7 carrierName];
            [(FUAirline *)v84 setName:carrierName];

            [(FUFlight *)v79 setAirline:v84];
            airline = [(FUFlight *)v79 airline];
            [(FUFlight *)v79 setDisplayAirline:airline];

            displayAirline = [(FUFlight *)v79 displayAirline];
            iATACode = [displayAirline IATACode];
            [(FUFlight *)v79 setQueriedAirlineTitle:iATACode];
          }

          v90 = objc_alloc_init(FUAirline);
          operatorCarrierCode = [v7 operatorCarrierCode];
          [(FUAirline *)v90 setIATACode:operatorCarrierCode];

          [(FUFlight *)v79 setOperatorAirline:v90];
          operatorFlightNumber = [v7 operatorFlightNumber];
          -[FUFlight setOperatorFlightNumber:](v79, "setOperatorFlightNumber:", [operatorFlightNumber integerValue]);

          [v95 addObject:v79];
        }

        v6 = v98 + 1;
      }

      while (v98 + 1 != v97);
      v97 = [obj countByEnumeratingWithState:&v136 objects:v141 count:16];
    }

    while (v97);
  }

  return v95;
}

@end