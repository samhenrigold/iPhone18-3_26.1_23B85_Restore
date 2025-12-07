@interface ICSTimeZone
+ (BOOL)_isTimeZone:(id)zone pseudoDSTForDate:(id)date;
+ (BOOL)perfectMatchForSubarray:(id)subarray inTZChangeArray:(id)array;
+ (id)blocksAfterDate:(id)date untilDate:(id)untilDate forTimeZone:(id)zone;
+ (id)quickTimeZoneNames;
+ (id)slowTimeZoneNames;
+ (id)timeZoneWithSystemTimeZoneName:(id)name;
+ (int64_t)matchTypeForSubarray:(id)subarray inTZChangeArray:(id)array;
- (BOOL)isEqualToNSTimeZone:(id)zone forDate:(id)date;
- (ICSTimeZone)initWithSystemTimeZone:(id)zone;
- (ICSTimeZone)initWithSystemTimeZone:(id)zone fromDate:(id)date options:(int)options;
- (ICSTimeZone)initWithTimeZone:(id)zone fromDate:(id)date options:(int)options;
- (NSString)tzid;
- (id)_previousDSTTransitionForDate:(id)date timezone:(id)timezone;
- (id)computeTimeZoneChangeListFromDate:(id)date toDate:(id)toDate;
- (id)getNSTimeZone:(id)zone;
- (id)getNSTimeZoneFromDate:(id)date toDate:(id)toDate;
- (id)propertiesToExcludeForChecksum;
- (id)systemTimeZoneForDate:(id)date;
@end

@implementation ICSTimeZone

- (id)propertiesToExcludeForChecksum
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICSTimeZone_propertiesToExcludeForChecksum__block_invoke;
  block[3] = &unk_27A64B928;
  block[4] = self;
  if (propertiesToExcludeForChecksum_onceToken_0 != -1)
  {
    dispatch_once(&propertiesToExcludeForChecksum_onceToken_0, block);
  }

  return propertiesToExcludeForChecksum_propertiesToExcludeForChecksum;
}

void __45__ICSTimeZone_propertiesToExcludeForChecksum__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = ICSTimeZone;
  v1 = objc_msgSendSuper2(&v5, sel_propertiesToExcludeForChecksum);
  v6[0] = @"UID";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = propertiesToExcludeForChecksum_propertiesToExcludeForChecksum;
  propertiesToExcludeForChecksum_propertiesToExcludeForChecksum = v3;
}

- (ICSTimeZone)initWithSystemTimeZone:(id)zone fromDate:(id)date options:(int)options
{
  v5 = *&options;
  dateCopy = date;
  name = [zone name];
  v10 = [ICSTimeZone timeZoneWithSystemTimeZoneName:name];
  v11 = [(ICSTimeZone *)self initWithTimeZone:v10 fromDate:dateCopy options:v5];

  return v11;
}

- (NSString)tzid
{
  v2 = [(ICSComponent *)self propertiesForName:@"TZID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (id)systemTimeZoneForDate:(id)date
{
  dateCopy = date;
  systemTimeZone = self->_systemTimeZone;
  if (!systemTimeZone)
  {
    v6 = [(ICSTimeZone *)self getNSTimeZone:dateCopy];
    v7 = self->_systemTimeZone;
    self->_systemTimeZone = v6;

    systemTimeZone = self->_systemTimeZone;
    if (!systemTimeZone)
    {
      null = [MEMORY[0x277CBEB68] null];
      v9 = self->_systemTimeZone;
      self->_systemTimeZone = null;

      systemTimeZone = self->_systemTimeZone;
    }
  }

  null2 = [MEMORY[0x277CBEB68] null];

  if (systemTimeZone == null2)
  {
    v11 = 0;
  }

  else
  {
    v11 = self->_systemTimeZone;
  }

  return v11;
}

+ (id)blocksAfterDate:(id)date untilDate:(id)untilDate forTimeZone:(id)zone
{
  v196 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  untilDateCopy = untilDate;
  zoneCopy = zone;
  array = [MEMORY[0x277CBEB18] array];
  v156 = dateCopy;
  v12 = [zoneCopy nextDaylightSavingTimeTransitionAfterDate:dateCopy];
  v162 = *MEMORY[0x277CBE5C0];
  v165 = untilDateCopy;
  v181 = array;
  v161 = zoneCopy;
  if ([v12 compare:untilDateCopy] == -1)
  {
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v16 = 0;
    v171 = 0;
    v17 = 0;
    v18 = 0;
    v172 = 0;
    v173 = 0;
    v19 = v12;
    selfCopy = self;
    while (1)
    {
      v20 = [v19 dateByAddingTimeInterval:1.0];
      if ([zoneCopy isDaylightSavingTimeForDate:v20])
      {
        v175 = 0;
        v182 = 1;
      }

      else
      {
        v182 = [self _isTimeZone:zoneCopy pseudoDSTForDate:v20];
        v175 = v182;
      }

      obj = [zoneCopy abbreviationForDate:v20];
      v21 = [v19 dateByAddingTimeInterval:-1.0];
      v22 = [zoneCopy secondsFromGMTForDate:v21];

      v185 = v20;
      v23 = [zoneCopy secondsFromGMTForDate:v20];
      if ([array count] && v22 == v23)
      {
        v179 = v18;
        v14 = v17;
        v15 = v16;
        v24 = obj;
        goto LABEL_57;
      }

      v170 = v19;
      v177 = v22;
      v25 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v162];
      v27 = v166;
      v26 = v167;
      v28 = v182 ? v166 : v167;
      v29 = v28;
      v179 = v23;
      if (!v29)
      {
        break;
      }

      v30 = v29;
      dtstart = [v29 dtstart];
      value = [dtstart value];

      [v25 setTimeZone:zoneCopy];
      components = [value components];
      v34 = [v25 dateFromComponents:components];

      v35 = v173;
      if (!v182)
      {
        v35 = v172;
      }

      v158 = v35;
      if (!v34)
      {
        goto LABEL_22;
      }

      v36 = MEMORY[0x277CBEBB0];
      v37 = [v34 dateByAddingTimeInterval:-1.0];
      v38 = [v36 timeZoneForSecondsFromGMT:{objc_msgSend(zoneCopy, "secondsFromGMTForDate:", v37)}];
      [v25 setTimeZone:v38];

      v39 = [v25 components:1788 fromDate:v34];
      [v25 rangeOfUnit:16 inUnit:8 forDate:v34];
      v163 = v34;
      v164 = v39;
      if ([v39 day] + 7 > v40)
      {
        [v39 setWeekdayOrdinal:-1];
      }

LABEL_23:
      v42 = MEMORY[0x277CBEBB0];
      v43 = [v170 dateByAddingTimeInterval:-1.0];
      v44 = [v42 timeZoneForSecondsFromGMT:{objc_msgSend(zoneCopy, "secondsFromGMTForDate:", v43)}];
      [v25 setTimeZone:v44];

      if (v170)
      {
        v45 = [v25 components:1788 fromDate:v170];
        [v25 rangeOfUnit:16 inUnit:8 forDate:v170];
        v46 = v177;
        if ([v45 day] + 7 > v47)
        {
          [v45 setWeekdayOrdinal:-1];
        }
      }

      else
      {
        [0 day];
        v45 = 0;
        v46 = v177;
      }

      v48 = v182;
      if (v46 == [v30 tzoffsetfrom] && v179 == objc_msgSend(v30, "tzoffsetto") && ((v175 ^ 1 | v171) & 1) != 0)
      {
        v155 = v30;
        tzname = [v30 tzname];
        lastObject = [tzname lastObject];
        if ([obj isEqualToString:lastObject] && objc_msgSend(v45, "year") == v158 + 1 && (v51 = objc_msgSend(v45, "month"), v51 == objc_msgSend(v164, "month")) && (v52 = objc_msgSend(v45, "weekday"), v52 == objc_msgSend(v164, "weekday")) && (v53 = objc_msgSend(v45, "weekdayOrdinal"), v53 == objc_msgSend(v164, "weekdayOrdinal")) && (v54 = objc_msgSend(v45, "hour"), v54 == objc_msgSend(v164, "hour")))
        {
          minute = [v45 minute];
          minute2 = [v164 minute];

          v57 = minute == minute2;
          v48 = v182;
          v30 = v155;
          if (v57)
          {
            rrule = [v155 rrule];
            v59 = [rrule count];

            v60 = v155;
            if (!v59)
            {
              v61 = [[ICSRecurrenceRule alloc] initWithFrequency:7];
              v62 = MEMORY[0x277CBEA60];
              v63 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "month")}];
              v64 = [v62 arrayWithObject:v63];
              [(ICSRecurrenceRule *)v61 setBymonth:v64];

              v65 = MEMORY[0x277CBEA60];
              v159 = [ICSByDayValue alloc];
              weekday = [v45 weekday];
              v67 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "weekdayOrdinal")}];
              v68 = [(ICSByDayValue *)v159 initWithWeekday:weekday number:v67];
              v69 = [v65 arrayWithObject:v68];
              [(ICSRecurrenceRule *)v61 setByday:v69];

              v70 = [MEMORY[0x277CBEA60] arrayWithObjects:{v61, 0}];
              [v155 setRrule:v70];

              [v155 setRdate:0];
            }

            v71 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);
            [v25 setTimeZone:v71];

            v72 = v169;
            v19 = v170;
            v24 = obj;
            if (v170)
            {
              v73 = [v25 components:764 fromDate:v170];
            }

            else
            {
              v73 = 0;
            }

            v87 = [(ICSDateTimeValue *)[ICSDateTimeUTCValue alloc] initWithYear:[(ICSDate *)v73 year] month:[(ICSDate *)v73 month] day:[(ICSDate *)v73 day] hour:[(ICSDate *)v73 hour] minute:[(ICSDate *)v73 minute] second:[(ICSDate *)v73 second]];
            rrule2 = [v155 rrule];
            v95 = [rrule2 objectAtIndex:0];

            [v95 setUntil:v87];
            goto LABEL_49;
          }
        }

        else
        {

          v48 = v182;
          v30 = v155;
        }
      }

      v182 = v48;
      v74 = off_27A64B680;
      if (!v48)
      {
        v74 = off_27A64B688;
      }

      v75 = objc_alloc_init(*v74);
      if (v48)
      {
        v27 = v75;
      }

      else
      {
        v26 = v75;
      }

      v166 = v27;
      v167 = v26;
      v76 = [ICSDate alloc];
      year = [v45 year];
      month = [v45 month];
      v79 = [v45 day];
      hour = [v45 hour];
      v81 = v25;
      minute3 = [v45 minute];
      second = [v45 second];
      v84 = v79;
      zoneCopy = v161;
      v85 = minute3;
      v25 = v81;
      v73 = [(ICSDate *)v76 initWithYear:year month:month day:v84 hour:hour minute:v85 second:second];
      [v75 setDtstart:v73];
      v24 = obj;
      v86 = [MEMORY[0x277CBEA60] arrayWithObject:obj];
      [v75 setTzname:v86];

      [v75 setTzoffsetfrom:v177];
      [v75 setTzoffsetto:v179];
      [v75 addRecurrenceDate:v73];
      v87 = v75;

      [v181 addObject:v87];
      v60 = v30;
      v72 = v169;
      v19 = v170;
LABEL_49:

      year2 = [v45 year];
      v15 = v182;
      v89 = v171;
      if (v182)
      {
        v89 = v175;
      }

      v171 = v89;
      if (v182)
      {
        v90 = v172;
      }

      else
      {
        v90 = year2;
      }

      v91 = v173;
      if (v182)
      {
        v91 = year2;
      }

      v172 = v90;
      v173 = v91;
      v92 = v45;

      v93 = v24;
      v168 = v92;
      v169 = v93;
      v14 = v177;
      self = selfCopy;
      array = v181;
LABEL_57:
      v12 = [zoneCopy nextDaylightSavingTimeTransitionAfterDate:v185];
      if ([v12 compare:v19] != 1)
      {

        v12 = v19;
        v13 = v179;
        goto LABEL_63;
      }

      v94 = [v12 compare:v165];
      v19 = v12;
      v16 = v15;
      v17 = v14;
      v13 = v179;
      v18 = v179;
      if (v94 != -1)
      {
        goto LABEL_63;
      }
    }

    v30 = 0;
    v41 = v173;
    if (!v182)
    {
      v41 = v172;
    }

    v158 = v41;
LABEL_22:
    [0 day];
    v163 = 0;
    v164 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  LOBYTE(v171) = 0;
  LOBYTE(v15) = 0;
  v168 = 0;
  v169 = 0;
  v166 = 0;
  v167 = 0;
LABEL_63:
  v180 = v13;
  if ((v171 & 1) != 0 && (v15 & 1) == 0)
  {
    [array removeAllObjects];
  }

  v176 = v12;
  v178 = v14;
  v183 = v15;

  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  obja = [array copy];
  v96 = [obja countByEnumeratingWithState:&v190 objects:v195 count:16];
  if (!v96)
  {
    v98 = 0;
    v99 = 0;
    goto LABEL_91;
  }

  v97 = v96;
  v98 = 0;
  v99 = 0;
  v100 = *v191;
  do
  {
    for (i = 0; i != v97; ++i)
    {
      if (*v191 != v100)
      {
        objc_enumerationMutation(obja);
      }

      v102 = *(*(&v190 + 1) + 8 * i);
      rrule3 = [v102 rrule];
      v104 = [rrule3 count];

      if (!v104)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v105 = v99;
        }

        else
        {
          v105 = v98;
        }

        v106 = v105;
        rrule4 = [v106 rrule];
        v108 = [rrule4 count];

        if (!v108)
        {
          tzoffsetfrom = [v106 tzoffsetfrom];
          if (tzoffsetfrom == [v102 tzoffsetfrom])
          {
            tzoffsetto = [v106 tzoffsetto];
            if (tzoffsetto == [v102 tzoffsetto])
            {
              tzname2 = [v106 tzname];
              tzname3 = [v102 tzname];
              v186 = [tzname2 isEqualToArray:tzname3];

              if (v186)
              {
                dtstart2 = [v102 dtstart];
                [v106 addRecurrenceDate:dtstart2];

                [v181 removeObjectIdenticalTo:v102];
                goto LABEL_87;
              }
            }
          }
        }
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v115 = v102;
      if (isKindOfClass)
      {
        v106 = v99;
      }

      else
      {
        v106 = v98;
      }

      if (isKindOfClass)
      {
        v99 = v115;
      }

      else
      {
        v98 = v115;
      }

LABEL_87:
    }

    v97 = [obja countByEnumeratingWithState:&v190 objects:v195 count:16];
  }

  while (v97);
LABEL_91:

  v116 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v162];
  date = [MEMORY[0x277CBEAA8] date];
  v118 = [v116 components:4 fromDate:date];

  rrule5 = [v99 rrule];
  v120 = [rrule5 count];

  v121 = v181;
  if (v120)
  {
    rrule6 = [v99 rrule];
    v123 = [rrule6 objectAtIndex:0];

    until = [v123 until];
    year3 = [until year];
    if (year3 > [v118 year] + 10)
    {
      [v123 setCount:0];
      [v123 setUntil:0];
    }
  }

  rrule7 = [v98 rrule];
  v127 = [rrule7 count];

  if (v127)
  {
    rrule8 = [v98 rrule];
    v129 = [rrule8 objectAtIndex:0];

    until2 = [v129 until];
    year4 = [until2 year];
    if (year4 > [v118 year] + 10)
    {
      [v129 setCount:0];
      [v129 setUntil:0];
    }
  }

  rrule9 = [v99 rrule];
  if (![rrule9 count])
  {
    goto LABEL_109;
  }

  rrule10 = [v98 rrule];
  v134 = [rrule10 count];

  if (v134)
  {
    v174 = v118;
    rrule9 = [v99 rrule];
    v135 = [rrule9 objectAtIndex:0];
    until3 = [(ICSDate *)v135 until];
    if (!until3)
    {
      goto LABEL_108;
    }

    v137 = until3;
    rrule11 = [v98 rrule];
    v139 = [rrule11 objectAtIndex:0];
    until4 = [v139 until];

    v118 = v174;
    if (until4)
    {
      v141 = off_27A64B680;
      if ((v183 & 1) == 0)
      {
        v141 = off_27A64B688;
      }

      rrule9 = objc_alloc_init(*v141);
      v135 = -[ICSDate initWithYear:month:day:hour:minute:second:]([ICSDate alloc], "initWithYear:month:day:hour:minute:second:", [v168 year], objc_msgSend(v168, "month"), objc_msgSend(v168, "day"), objc_msgSend(v168, "hour"), objc_msgSend(v168, "minute"), objc_msgSend(v168, "second"));
      [rrule9 setDtstart:v135];
      if (v169)
      {
        v194 = v169;
        v142 = [MEMORY[0x277CBEA60] arrayWithObjects:&v194 count:1];
        [rrule9 setTzname:v142];
      }

      [rrule9 setTzoffsetfrom:v178];
      [rrule9 setTzoffsetto:v180];
      [v181 addObject:rrule9];
LABEL_108:

      v118 = v174;
LABEL_109:
    }
  }

  if (![v181 count])
  {
    v143 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v162];
    v144 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);
    v184 = v143;
    [v143 setTimeZone:v144];

    v145 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    v146 = [v143 components:252 fromDate:?];
    v187 = v116;
    v147 = v118;
    v148 = -[ICSDate initWithYear:month:day:hour:minute:second:]([ICSDate alloc], "initWithYear:month:day:hour:minute:second:", [v146 year], objc_msgSend(v146, "month"), objc_msgSend(v146, "day"), objc_msgSend(v146, "hour"), objc_msgSend(v146, "minute"), objc_msgSend(v146, "second"));
    v149 = objc_alloc_init(ICSTimeZoneStandardBlock);
    [(ICSTimeZoneBlock *)v149 setDtstart:v148];
    v150 = MEMORY[0x277CBEA60];
    v151 = [v161 abbreviationForDate:v145];
    v152 = [v150 arrayWithObject:v151];
    [(ICSTimeZoneBlock *)v149 setTzname:v152];

    v118 = v147;
    -[ICSTimeZoneBlock setTzoffsetfrom:](v149, "setTzoffsetfrom:", [v161 secondsFromGMTForDate:v156]);
    v116 = v187;
    -[ICSTimeZoneBlock setTzoffsetto:](v149, "setTzoffsetto:", [v161 secondsFromGMTForDate:v156]);
    [v181 addObject:v149];

    v121 = v181;
  }

  v153 = v121;

  return v121;
}

+ (BOOL)_isTimeZone:(id)zone pseudoDSTForDate:(id)date
{
  dateCopy = date;
  name = [zone name];
  v7 = [name isEqualToString:@"Europe/Moscow"];

  if (v7)
  {
    if (_isTimeZone_pseudoDSTForDate__onceToken != -1)
    {
      +[ICSTimeZone(TimeZoneGeneration) _isTimeZone:pseudoDSTForDate:];
    }

    v8 = [_isTimeZone_pseudoDSTForDate__beginEffectiveDST laterDate:dateCopy];
    if (v8 == dateCopy)
    {
      v9 = [_isTimeZone_pseudoDSTForDate__endEffectiveDST earlierDate:dateCopy];
      LOBYTE(v7) = v9 == dateCopy;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

uint64_t __64__ICSTimeZone_TimeZoneGeneration___isTimeZone_pseudoDSTForDate___block_invoke()
{
  v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1301180400.0];
  v1 = _isTimeZone_pseudoDSTForDate__beginEffectiveDST;
  _isTimeZone_pseudoDSTForDate__beginEffectiveDST = v0;

  _isTimeZone_pseudoDSTForDate__endEffectiveDST = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1414274400.0];

  return MEMORY[0x2821F96F8]();
}

- (ICSTimeZone)initWithSystemTimeZone:(id)zone
{
  v24 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = [(ICSComponent *)self init];
  if (v5)
  {
    name = [zoneCopy name];
    [(ICSTimeZone *)v5 setTzid:name];

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v10 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);
    [v9 setTimeZone:v10];

    [v7 setYear:1900];
    v11 = [v9 dateFromComponents:v7];
    [v7 setYear:2050];
    v12 = [v9 dateFromComponents:v7];
    v13 = [ICSTimeZone blocksAfterDate:v11 untilDate:v12 forTimeZone:zoneCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(ICSComponent *)v5 addComponent:*(*(&v19 + 1) + 8 * v17++) withUIDGenerator:0];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

- (ICSTimeZone)initWithTimeZone:(id)zone fromDate:(id)date options:(int)options
{
  v61 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  dateCopy = date;
  v9 = [(ICSComponent *)self init];
  if (v9)
  {
    tzid = [zoneCopy tzid];
    [(ICSTimeZone *)v9 setTzid:tzid];

    v51 = [MEMORY[0x277CBEB58] set];
    optionsCopy = options;
    v46 = zoneCopy;
    if (options == 1)
    {
      v11 = objc_alloc(MEMORY[0x277CBEA80]);
      v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      v13 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);
      [v12 setTimeZone:v13];

      v54 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v54 setYear:2050];
      v14 = v12;
      v52 = [v12 dateFromComponents:v54];
      v15 = MEMORY[0x277CBEBB0];
      tzid2 = [zoneCopy tzid];
      v17 = objc_msgSend_timeZoneWithName_(v15);

      options = 1;
      v18 = objc_opt_new();
      [v18 setYear:{objc_msgSend(dateCopy, "year")}];
      [v18 setMonth:{objc_msgSend(dateCopy, "month")}];
      [v18 setDay:{objc_msgSend(dateCopy, "day")}];
      [v18 setHour:{objc_msgSend(dateCopy, "hour")}];
      [v18 setMinute:{objc_msgSend(dateCopy, "minute")}];
      [v18 setSecond:{objc_msgSend(dateCopy, "second")}];
      [v18 setTimeZone:v17];
      v19 = v14;
      v20 = [v14 dateFromComponents:v18];
      v21 = [(ICSTimeZone *)v9 _previousDSTTransitionForDate:v20 timezone:v17];
      v22 = [v21 dateByAddingTimeInterval:-1.0];
      components = [ICSTimeZone blocksAfterDate:v22 untilDate:v52 forTimeZone:v17];

      v24 = 1;
    }

    else
    {
      components = [zoneCopy components];
      v24 = -1;
    }

    if ([components count])
    {
      v25 = 0;
      v53 = 0;
      v55 = 0;
      v26 = 0x27A64B000;
      v48 = v24;
      while (1)
      {
        v27 = [components objectAtIndex:v25];
        if (++v25 >= [components count])
        {
          value = 0;
        }

        else
        {
          v28 = v25;
          while (1)
          {
            v29 = objc_opt_class();
            v30 = [components objectAtIndex:v28];
            v31 = objc_opt_class();

            if (v29 == v31)
            {
              break;
            }

            if (++v28 >= [components count])
            {
              value = 0;
              goto LABEL_14;
            }
          }

          v33 = [components objectAtIndex:v28];
          dtstart = [v33 dtstart];
          value = [dtstart value];

LABEL_14:
          v26 = 0x27A64B000uLL;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = [objc_alloc(*(v26 + 1400)) initWithYear:objc_msgSend(value month:"year") day:objc_msgSend(value hour:"month") minute:objc_msgSend(value second:{"day"), objc_msgSend(value, "hour"), objc_msgSend(value, "minute"), objc_msgSend(value, "second")}];
          v36 = v35;
          if (v35)
          {
            options = optionsCopy;
            v24 = v48;
            v26 = 0x27A64B000;
            if ([v35 compare:dateCopy] != 1)
            {
              goto LABEL_35;
            }
          }

          else
          {
            options = optionsCopy;
            v24 = v48;
            v26 = 0x27A64B000;
          }
        }

        else
        {
          v36 = 0;
        }

        if (options == 2)
        {
          [v51 addObject:v27];
          goto LABEL_35;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_30;
        }

        v38 = v55;
        if (v55 < v24)
        {
          ++v55;
LABEL_29:
          [v51 addObject:v27];
LABEL_30:
          v38 = v55;
        }

        v37 = v53;
LABEL_33:
        v53 = v37;
        v55 = v38;
        if (v37 == v24 && v38 == v24)
        {

          goto LABEL_38;
        }

LABEL_35:

        if (v25 >= [components count])
        {
          goto LABEL_38;
        }
      }

      v37 = v53;
      if (v53 >= v24)
      {
        v38 = v55;
        goto LABEL_33;
      }

      ++v53;
      goto LABEL_29;
    }

LABEL_38:
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    allObjects = [v51 allObjects];
    v40 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v41 = [v40 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v57;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [(ICSComponent *)v9 addComponent:*(*(&v56 + 1) + 8 * i) withUIDGenerator:0];
        }

        v42 = [v40 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v42);
    }

    zoneCopy = v47;
  }

  return v9;
}

- (id)_previousDSTTransitionForDate:(id)date timezone:(id)timezone
{
  dateCopy = date;
  timezoneCopy = timezone;
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v8 setTimeZone:timezoneCopy];
  v9 = [v8 dateByAddingUnit:4 value:-1 toDate:dateCopy options:1];
  timeZone = [v8 timeZone];
  v11 = [timeZone nextDaylightSavingTimeTransitionAfterDate:v9];

  v12 = v11;
  v13 = [v12 earlierDate:dateCopy];
  v14 = [v13 isEqualToDate:v12];

  v15 = v12;
  if (!v14)
  {
    goto LABEL_4;
  }

  do
  {
    v16 = v12;
    v12 = v15;

    timeZone2 = [v8 timeZone];
    v15 = [timeZone2 nextDaylightSavingTimeTransitionAfterDate:v12];

    v18 = [v15 earlierDate:dateCopy];
    v19 = [v18 isEqualToDate:v15];
  }

  while ((v19 & 1) != 0);
  if ((v14 & 1) == 0)
  {
LABEL_4:
    v20 = [v8 components:252 fromDate:dateCopy];
    [v20 setMonth:1];
    [v20 setDay:1];
    v21 = [v8 dateFromComponents:v20];
    timeZone3 = [v8 timeZone];
    v23 = [timeZone3 nextDaylightSavingTimeTransitionAfterDate:v21];

    v12 = v23;
  }

  return v12;
}

+ (id)timeZoneWithSystemTimeZoneName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _sCache;
  if (!_sCache)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = _sCache;
    _sCache = v7;

    v6 = _sCache;
  }

  v9 = [v6 objectForKey:nameCopy];
  if (!v9)
  {
    v10 = [ICSTimeZone alloc];
    v11 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);
    v9 = [(ICSTimeZone *)v10 initWithSystemTimeZone:v11];

    [_sCache setObject:v9 forKey:nameCopy];
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)isEqualToNSTimeZone:(id)zone forDate:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  if (zoneCopy)
  {
    dateCopy = date;
    selfCopy = self;
    v8 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [dateCopy year] - 1, objc_msgSend(dateCopy, "month"), objc_msgSend(dateCopy, "day"), objc_msgSend(dateCopy, "hour"), objc_msgSend(dateCopy, "minute"), objc_msgSend(dateCopy, "second"));
    v9 = [ICSDateTimeValue alloc];
    year = [dateCopy year];
    month = [dateCopy month];
    v12 = [dateCopy day];
    hour = [dateCopy hour];
    minute = [dateCopy minute];
    second = [dateCopy second];

    v16 = [(ICSDateTimeValue *)v9 initWithYear:year + 1 month:month day:v12 hour:hour minute:minute second:second];
    v17 = [(ICSTimeZone *)selfCopy computeTimeZoneChangeListFromDate:v8 toDate:v16];
    v18 = [zoneCopy ICSComputeTimeZoneChangeListFromDate:v8 toDate:v16];
    v19 = [v18 ICSContainsArray:v17];
    v20 = v19;
    if ((v19 & 1) == 0)
    {
      v21 = logHandle(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        name = [zoneCopy name];
        v24 = [(ICSComponent *)selfCopy ICSStringWithOptions:0];
        *buf = 138413570;
        v27 = name;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v16;
        v32 = 2112;
        v33 = v17;
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = v24;
        _os_log_error_impl(&dword_2754C5000, v21, OS_LOG_TYPE_ERROR, "VTIMEZONE does not match System Time Zone (%@) for %@ to %@: %@ != %@\n\n%@", buf, 0x3Eu);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)getNSTimeZoneFromDate:(id)date toDate:(id)toDate
{
  v93 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  selfCopy = self;
  tzid = [(ICSTimeZone *)self tzid];
  v7 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);
  if (v7 && [tzid rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    systemTimeZone = v7;
    v15 = systemTimeZone;
    goto LABEL_40;
  }

  v8 = [(ICSTimeZone *)self computeTimeZoneChangeListFromDate:dateCopy toDate:toDateCopy];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy_;
  v78 = __Block_byref_object_dispose_;
  v79 = 0;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __54__ICSTimeZone_Internal__getNSTimeZoneFromDate_toDate___block_invoke;
  v68[3] = &unk_27A64C2B0;
  v9 = dateCopy;
  v69 = v9;
  v10 = toDateCopy;
  v70 = v10;
  selfCopy2 = self;
  v52 = v8;
  v72 = v52;
  v73 = &v74;
  v11 = MEMORY[0x277C799E0](v68);
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];

  if (!(v11)[2](v11, systemTimeZone))
  {
    tzid2 = [(ICSTimeZone *)self tzid];
    v17 = tzid2 == 0;

    if (v17)
    {
      v14 = tzid;
    }

    else
    {
      tzid3 = [(ICSTimeZone *)selfCopy tzid];
      v14 = [ICSTimeZoneTranslator timeZoneNameForNonstandardTimeZone:tzid3];

      if (v14)
      {
        v19 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);

        if (v19)
        {
          v20 = (v11)[2](v11, v19);
          if ((v20 & 1) == 0)
          {
            v21 = logHandle(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v50 = [(ICSComponent *)selfCopy ICSStringWithOptions:0];
              *buf = 138413314;
              v84 = v14;
              v85 = 2112;
              v86 = v9;
              v87 = 2112;
              v88 = v10;
              v89 = 2112;
              v90 = v52;
              v91 = 2112;
              v92 = v50;
              _os_log_error_impl(&dword_2754C5000, v21, OS_LOG_TYPE_ERROR, "VTIMEZONE does not match System Time Zone (%@) for %@ to %@: %@\n\n%@", buf, 0x34u);
            }
          }

          v13 = v19;
          systemTimeZone = v13;
          goto LABEL_5;
        }

        systemTimeZone = 0;
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    quickTimeZoneNames = [objc_opt_class() quickTimeZoneNames];
    v23 = [quickTimeZoneNames countByEnumeratingWithState:&v64 objects:v82 count:16];
    if (v23)
    {
      v24 = *v65;
      while (2)
      {
        v25 = 0;
        v26 = systemTimeZone;
        v27 = v14;
        do
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(quickTimeZoneNames);
          }

          v14 = *(*(&v64 + 1) + 8 * v25);

          systemTimeZone = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);

          if ((v11)[2](v11, systemTimeZone))
          {
            systemTimeZone = systemTimeZone;

            goto LABEL_38;
          }

          ++v25;
          v26 = systemTimeZone;
          v27 = v14;
        }

        while (v23 != v25);
        v23 = [quickTimeZoneNames countByEnumeratingWithState:&v64 objects:v82 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    slowTimeZoneNames = [objc_opt_class() slowTimeZoneNames];
    v29 = [slowTimeZoneNames countByEnumeratingWithState:&v60 objects:v81 count:16];
    if (v29)
    {
      v14 = 0;
      v30 = *v61;
      while (2)
      {
        v31 = 0;
        v32 = systemTimeZone;
        v33 = v14;
        do
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(slowTimeZoneNames);
          }

          v14 = *(*(&v60 + 1) + 8 * v31);

          systemTimeZone = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);

          if ((v11)[2](v11, systemTimeZone))
          {
            systemTimeZone = systemTimeZone;

            goto LABEL_38;
          }

          ++v31;
          v32 = systemTimeZone;
          v33 = v14;
        }

        while (v29 != v31);
        v29 = [slowTimeZoneNames countByEnumeratingWithState:&v60 objects:v81 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v34 = v75[5];
    if (v34)
    {
      v15 = v34;
      v14 = 0;
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      quickTimeZoneNames2 = [objc_opt_class() quickTimeZoneNames];
      slowTimeZoneNames2 = [objc_opt_class() slowTimeZoneNames];
      obj = [quickTimeZoneNames2 arrayByAddingObjectsFromArray:slowTimeZoneNames2];

      v38 = [obj countByEnumeratingWithState:&v56 objects:v80 count:16];
      if (v38)
      {
        v14 = 0;
        v39 = *v57;
        while (2)
        {
          v40 = v38;
          v41 = 0;
          v42 = systemTimeZone;
          v43 = v14;
          do
          {
            if (*v57 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v56 + 1) + 8 * v41);

            systemTimeZone = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0]);

            currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
            v45 = [systemTimeZone localizedName:0 locale:currentLocale];
            tzid4 = [(ICSTimeZone *)selfCopy tzid];
            v47 = [v45 isEqualToString:tzid4];

            if (v47)
            {
              systemTimeZone = systemTimeZone;

              goto LABEL_38;
            }

            ++v41;
            v42 = systemTimeZone;
            v43 = v14;
          }

          while (v40 != v41);
          v38 = [obj countByEnumeratingWithState:&v56 objects:v80 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      if ([v52 count] == 1)
      {
        v48 = [v52 objectAtIndex:0];
        v49 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v48, "tzOffsetTo")}];

        systemTimeZone = v49;
        v14 = 0;
LABEL_38:
        v15 = systemTimeZone;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }
    }

    goto LABEL_39;
  }

  v13 = systemTimeZone;
  systemTimeZone = v13;
  v14 = tzid;
LABEL_5:
  v15 = v13;
LABEL_39:

  _Block_object_dispose(&v74, 8);
  tzid = v14;
LABEL_40:

  return v15;
}

uint64_t __54__ICSTimeZone_Internal__getNSTimeZoneFromDate_toDate___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ICSComputeTimeZoneChangeListFromDate:a1[4] toDate:a1[5]];
    v7 = [objc_opt_class() matchTypeForSubarray:a1[7] inTZChangeArray:v6];
    if (v7 == 2)
    {
      v11 = 1;
    }

    else
    {
      if (v7 == 1)
      {
        v8 = *(a1[8] + 8);
        v10 = *(v8 + 40);
        v9 = (v8 + 40);
        if (!v10)
        {
          objc_storeStrong(v9, a2);
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)quickTimeZoneNames
{
  if (quickTimeZoneNames_onceToken != -1)
  {
    +[ICSTimeZone(Internal) quickTimeZoneNames];
  }

  v3 = quickTimeZoneNames__quickTimeZoneNames;

  return v3;
}

void __43__ICSTimeZone_Internal__quickTimeZoneNames__block_invoke()
{
  v0 = quickTimeZoneNames__quickTimeZoneNames;
  quickTimeZoneNames__quickTimeZoneNames = &unk_288428320;
}

+ (id)slowTimeZoneNames
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ICSTimeZone_Internal__slowTimeZoneNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (slowTimeZoneNames_onceToken != -1)
  {
    dispatch_once(&slowTimeZoneNames_onceToken, block);
  }

  v2 = slowTimeZoneNames__slowTimeZones;

  return v2;
}

void __42__ICSTimeZone_Internal__slowTimeZoneNames__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [*(a1 + 32) quickTimeZoneNames];
  v3 = [v1 setWithArray:v2];

  v4 = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICSTimeZone_Internal__slowTimeZoneNames__block_invoke_2;
  v9[3] = &unk_27A64C2D8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 indexesOfObjectsPassingTest:v9];
  v7 = [v4 objectsAtIndexes:v6];
  v8 = slowTimeZoneNames__slowTimeZones;
  slowTimeZoneNames__slowTimeZones = v7;
}

- (id)getNSTimeZone:(id)zone
{
  zoneCopy = zone;
  v5 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [zoneCopy year] - 1, objc_msgSend(zoneCopy, "month"), objc_msgSend(zoneCopy, "day"), objc_msgSend(zoneCopy, "hour"), objc_msgSend(zoneCopy, "minute"), objc_msgSend(zoneCopy, "second"));
  v6 = [ICSDateTimeValue alloc];
  year = [zoneCopy year];
  month = [zoneCopy month];
  v9 = [zoneCopy day];
  hour = [zoneCopy hour];
  minute = [zoneCopy minute];
  second = [zoneCopy second];

  v13 = [(ICSDateTimeValue *)v6 initWithYear:year + 1 month:month day:v9 hour:hour minute:minute second:second];
  v14 = [(ICSTimeZone *)self getNSTimeZoneFromDate:v5 toDate:v13];

  return v14;
}

+ (BOOL)perfectMatchForSubarray:(id)subarray inTZChangeArray:(id)array
{
  subarrayCopy = subarray;
  arrayCopy = array;
  if ([subarrayCopy count] && (v7 = objc_msgSend(subarrayCopy, "count"), v7 <= objc_msgSend(arrayCopy, "count")) && (objc_msgSend(subarrayCopy, "objectAtIndex:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(arrayCopy, "indexOfObject:", v8), v8, v9 != 0x7FFFFFFFFFFFFFFFLL) && (v10 = objc_msgSend(subarrayCopy, "count") + v9, v10 <= objc_msgSend(arrayCopy, "count")))
  {
    if ([subarrayCopy count] >= 2)
    {
      v13 = 1;
      do
      {
        v14 = [subarrayCopy objectAtIndex:v13];
        v15 = [arrayCopy objectAtIndex:v9 + v13];
        v11 = [v14 isEqual:v15];

        if ((v11 & 1) == 0)
        {
          break;
        }

        ++v13;
      }

      while (v13 < [subarrayCopy count]);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (int64_t)matchTypeForSubarray:(id)subarray inTZChangeArray:(id)array
{
  subarrayCopy = subarray;
  arrayCopy = array;
  if ([self perfectMatchForSubarray:subarrayCopy inTZChangeArray:arrayCopy])
  {
    v8 = 2;
  }

  else
  {
    v9 = [arrayCopy objectAtIndexedSubscript:0];
    tzOffsetTo = [v9 tzOffsetTo];

    v11 = [subarrayCopy objectAtIndexedSubscript:0];
    tzOffsetTo2 = [v11 tzOffsetTo];

    if ([arrayCopy count])
    {
      v13 = 0;
      v14 = 0;
      LOBYTE(v15) = 0;
      v16 = 0;
      do
      {
        v17 = [arrayCopy objectAtIndexedSubscript:v13];
        v18 = v17;
        v15 = v15 || [v17 tzOffsetTo] != tzOffsetTo;
        if (v14 < [subarrayCopy count])
        {
          v19 = [subarrayCopy objectAtIndexedSubscript:v14];
          if ([v18 isCloseTo:v19])
          {
            ++v14;
            v16 = v16 || [v19 tzOffsetTo] != tzOffsetTo2;
          }

          else if (v14)
          {

            goto LABEL_18;
          }
        }

        ++v13;
      }

      while (v13 < [arrayCopy count]);
      v8 = (v14 != 0) & (v16 ^ v15 ^ 1u);
    }

    else
    {
LABEL_18:
      v8 = 0;
    }
  }

  return v8;
}

- (id)computeTimeZoneChangeListFromDate:(id)date toDate:(id)toDate
{
  v83 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  array = [MEMORY[0x277CBEB18] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  selfCopy = self;
  obj = [(ICSComponent *)self components];
  v7 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v75;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v75 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v74 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 computeTimeZoneChangeListFromDate:dateCopy toDate:toDateCopy];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v70 objects:v81 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v71;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v71 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v70 + 1) + 8 * j);
                if (([array containsObject:v17] & 1) == 0)
                {
                  [array addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v70 objects:v81 count:16];
            }

            while (v14);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v8);
  }

  if (![array count])
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    components = [(ICSComponent *)selfCopy components];
    v19 = [components countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v19)
    {
      v20 = v19;
      obja = 0;
      v21 = 0;
      v22 = *v67;
      v48 = *v67;
      v49 = components;
      do
      {
        v23 = 0;
        v50 = v20;
        do
        {
          if (*v67 != v22)
          {
            objc_enumerationMutation(components);
          }

          v24 = *(*(&v66 + 1) + 8 * v23);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            dtstart = [v24 dtstart];
            value = [dtstart value];

            if ([value compare:toDateCopy] == -1)
            {
              v51 = value;
              if (!v21 || [value compare:v21] == 1)
              {
                v27 = value;

                obja = [v24 tzoffsetto];
                v21 = v27;
              }

              v53 = v23;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              rrule = [v24 rrule];
              v29 = [rrule countByEnumeratingWithState:&v62 objects:v79 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v63;
                do
                {
                  for (k = 0; k != v30; ++k)
                  {
                    if (*v63 != v31)
                    {
                      objc_enumerationMutation(rrule);
                    }

                    v33 = *(*(&v62 + 1) + 8 * k);
                    until = [v33 until];
                    v35 = [until compare:v21];

                    if (v35 == 1)
                    {
                      until2 = [v33 until];

                      obja = [v24 tzoffsetto];
                      v21 = until2;
                    }
                  }

                  v30 = [rrule countByEnumeratingWithState:&v62 objects:v79 count:16];
                }

                while (v30);
              }

              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              rdate = [v24 rdate];
              v38 = [rdate countByEnumeratingWithState:&v58 objects:v78 count:16];
              if (v38)
              {
                v39 = v38;
                v40 = *v59;
                do
                {
                  for (m = 0; m != v39; ++m)
                  {
                    if (*v59 != v40)
                    {
                      objc_enumerationMutation(rdate);
                    }

                    v42 = *(*(&v58 + 1) + 8 * m);
                    value2 = [v42 value];
                    v44 = [value2 compare:v21];

                    if (v44 == 1)
                    {
                      value3 = [v42 value];

                      obja = [v24 tzoffsetto];
                      v21 = value3;
                    }
                  }

                  v39 = [rdate countByEnumeratingWithState:&v58 objects:v78 count:16];
                }

                while (v39);
              }

              v22 = v48;
              components = v49;
              v20 = v50;
              value = v51;
              v23 = v53;
            }
          }

          ++v23;
        }

        while (v23 != v20);
        v20 = [components countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v20);
    }

    else
    {
      obja = 0;
      v21 = 0;
    }

    v46 = [[ICSTimeZoneChange alloc] initWithTimeInterval:obja tzOffsetTo:0.0];
    [array addObject:v46];
  }

  [array sortUsingSelector:{sel_compare_, v48, v49}];

  return array;
}

@end