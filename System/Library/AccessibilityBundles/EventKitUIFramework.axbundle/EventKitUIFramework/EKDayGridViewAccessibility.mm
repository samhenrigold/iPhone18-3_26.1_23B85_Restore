@interface EKDayGridViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHideEmptyHours;
- (EKDayGridViewAccessibility)initWithFrame:(CGRect)frame backgroundColor:(id)color opaque:(BOOL)opaque numberOfDaysToDisplay:(unint64_t)display;
- (id)accessibilityElements;
- (void)_axResetChildren;
- (void)dealloc;
@end

@implementation EKDayGridViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayViewController"];
  [validationsCopy validateClass:@"EKDayView"];
  [validationsCopy validateClass:@"EKDayViewContent"];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceMethod:@"currentDayView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayView" hasInstanceMethod:@"dayContent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceMethod:@"grid" withFullSignature:{"@", 0}];
}

- (EKDayGridViewAccessibility)initWithFrame:(CGRect)frame backgroundColor:(id)color opaque:(BOOL)opaque numberOfDaysToDisplay:(unint64_t)display
{
  v9.receiver = self;
  v9.super_class = EKDayGridViewAccessibility;
  v6 = [(EKDayGridViewAccessibility *)&v9 initWithFrame:color backgroundColor:opaque opaque:display numberOfDaysToDisplay:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:v6 selector:sel__accessibilityOccurrencesChanged_ name:@"CalendarModelDisplayedOccurrencesChangedNotification" object:0];

  return v6;
}

- (void)_axResetChildren
{
  v26 = *MEMORY[0x29EDCA608];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(EKDayGridViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      v14 = v3;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        [v6 setAccessibilityContainer:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setAccessibilityDelegate:0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setDayGrid:0];
          children = [v6 children];
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = [children countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v17;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v17 != v10)
                {
                  objc_enumerationMutation(children);
                }

                v12 = *(*(&v16 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v12 setDayGridView:0];
                }
              }

              v9 = [children countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v9);
          }

          v3 = v14;
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  [(EKDayGridViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
}

- (BOOL)_accessibilityHideEmptyHours
{
  v2 = [(EKDayGridViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Ncwidgetviewco.isa)];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityElements
{
  v126 = *MEMORY[0x29EDCA608];
  v3 = [(EKDayGridViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  _accessibilityViewController = [v3 _accessibilityViewController];

  v5 = [_accessibilityViewController safeValueForKeyPath:@"currentDayView.dayContent.grid"];
  v6 = v5;
  if (_accessibilityViewController)
  {
    v7 = v5 == self;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    date = 0;
    goto LABEL_78;
  }

  v8 = MEMORY[0x29EDC7620];
  v9 = [(EKDayGridViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    [(EKDayGridViewAccessibility *)self _accessibilitySetRetainedValue:v10 forKey:*v8];
    v12 = [(EKDayGridViewAccessibility *)self safeValueForKey:@"superview"];
    if (v12)
    {
      NSClassFromString(&cfstr_Ekdayviewconte.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _AXAssert();
        date = 0;
LABEL_76:

        goto LABEL_77;
      }
    }

    v13 = [v12 safeValueForKey:@"_dayStarts"];
    v94 = v13;
    if ([v13 count])
    {
      v14 = [v13 objectAtIndex:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = v12;
        buf[0] = 0;
        objc_opt_class();
        v17 = [v13 objectAtIndex:0];
        v18 = [v17 objectForKey:@"startDate"];
        v19 = __UIAccessibilityCastAsClass();

        date = [v19 date];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v16;
          goto LABEL_16;
        }

        _AXAssert();

        date = 0;
        v12 = v16;
      }

      else
      {
        _AXAssert();
        date = 0;
      }

LABEL_75:

      goto LABEL_76;
    }

    buf[0] = 0;
    objc_opt_class();
    v20 = [v12 safeValueForKey:@"_startDate"];
    v21 = __UIAccessibilityCastAsClass();

    date = [v21 date];

LABEL_16:
    if (date)
    {
      v101 = v10;
      v92 = v6;
      v93 = _accessibilityViewController;
      currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
      v23 = [currentCalendar components:62 fromDate:date];
      [v23 setHour:0];
      v97 = currentCalendar;
      v90 = v23;
      v98 = [currentCalendar dateFromComponents:v23];

      _accessibilityHideEmptyHours = [(EKDayGridViewAccessibility *)self _accessibilityHideEmptyHours];
      v25 = [v94 count];
      v91 = v12;
      v103 = [v12 safeValueForKey:@"occurrenceViews"];
      v105 = v25;
      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          v27 = [objc_allocWithZone(MobileCalDayContainerAccessibilityElement) initWithAccessibilityContainer:self];
          v28 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
          [v28 setDay:v26];
          v29 = [v97 dateByAddingComponents:v28 toDate:v98 options:0];
          if (!v29)
          {
            v30 = AXLogAppAccessibility();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v123 = v98;
              v124 = 2112;
              v125 = v28;
              _os_log_error_impl(&dword_29BDB9000, v30, OS_LOG_TYPE_ERROR, "Unable to get date from start date %@ adding date components %@", buf, 0x16u);
            }

            v29 = [v98 dateByAddingTimeInterval:(86400 * v26)];
          }

          v109 = v28;
          [v27 setDate:v29];
          [v27 setIndexInArray:v26];
          [v27 setDayGrid:self];
          [v101 addObject:v27];
          currentCalendar2 = [MEMORY[0x29EDB8D98] currentCalendar];
          v107 = v29;
          v32 = [currentCalendar2 components:62 fromDate:v29];

          v33 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) initWithCapacity:24];
          v34 = 0;
          v35 = 0;
          do
          {
            [v32 setHour:v34];
            currentCalendar3 = [MEMORY[0x29EDB8D98] currentCalendar];
            v37 = [currentCalendar3 dateFromComponents:v32];

            if (([v37 isEqualToDate:v35] & 1) == 0)
            {
              v38 = [[MobileCalHourAccessibilityElement alloc] initWithAccessibilityContainer:v27];
              [(MobileCalHourAccessibilityElement *)v38 setHourDate:v37];
              [(MobileCalHourAccessibilityElement *)v38 setIsAccessibilityElement:!_accessibilityHideEmptyHours];
              [(MobileCalHourAccessibilityElement *)v38 setDayGridView:self];
              [v33 addObject:v38];
            }

            ++v34;
            v35 = v37;
          }

          while (v34 != 24);
          [v27 setChildren:v33];
          if (_accessibilityHideEmptyHours && ![v103 count])
          {
            v39 = [[MobileCalDayPlaceholderElement alloc] initWithAccessibilityContainer:v27];
            v40 = accessibilityLocalizedString(@"no.events.today");
            [(MobileCalDayPlaceholderElement *)v39 setAccessibilityLabel:v40];

            v121 = v39;
            v41 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v121 count:1];
            v42 = [v41 mutableCopy];
            [v27 setChildren:v42];
          }

          ++v26;
        }

        while (v26 != v105);
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v43 = v103;
      v44 = [v43 countByEnumeratingWithState:&v115 objects:v120 count:16];
      v10 = v101;
      if (v44)
      {
        v45 = v44;
        v46 = *v116;
        v99 = v43;
        v100 = *v116;
        do
        {
          v47 = 0;
          v102 = v45;
          do
          {
            if (*v116 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v115 + 1) + 8 * v47);
            if ([v48 isAccessibilityElement])
            {
              v49 = [v48 safeValueForKey:@"occurrence"];
              v50 = v49;
              if (v49)
              {
                startDate = [v49 startDate];
                if (startDate)
                {
                  v106 = v50;
                  currentCalendar4 = [MEMORY[0x29EDB8D98] currentCalendar];
                  v108 = startDate;
                  v53 = [currentCalendar4 components:62 fromDate:startDate];

                  v110 = v53;
                  v54 = [v53 copyWithZone:0];
                  [v54 setHour:0];
                  [v54 setMinute:0];
                  [v54 setSecond:0];
                  currentCalendar5 = [MEMORY[0x29EDB8D98] currentCalendar];
                  v104 = v54;
                  v56 = [currentCalendar5 dateFromComponents:v54];

                  v113 = 0u;
                  v114 = 0u;
                  v111 = 0u;
                  v112 = 0u;
                  v57 = v10;
                  v58 = [v57 countByEnumeratingWithState:&v111 objects:v119 count:16];
                  if (!v58)
                  {
                    v65 = v57;
                    goto LABEL_65;
                  }

                  v59 = v58;
                  v60 = *v112;
LABEL_41:
                  v61 = 0;
                  while (1)
                  {
                    if (*v112 != v60)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v62 = *(*(&v111 + 1) + 8 * v61);
                    date2 = [v62 date];
                    v64 = [v56 isEqualToDate:date2];

                    if (v64)
                    {
                      break;
                    }

                    if (v59 == ++v61)
                    {
                      v59 = [v57 countByEnumeratingWithState:&v111 objects:v119 count:16];
                      if (!v59)
                      {
                        v65 = v57;
                        v46 = v100;
                        v10 = v101;
                        v43 = v99;
                        v45 = v102;
                        goto LABEL_65;
                      }

                      goto LABEL_41;
                    }
                  }

                  v65 = v62;

                  v46 = v100;
                  v10 = v101;
                  v43 = v99;
                  v45 = v102;
                  startDate = v108;
                  if (v65)
                  {
                    children = [v65 children];
                    if (children)
                    {
                      hour = [v110 hour];
                      v68 = hour >= [children count];
                      v45 = v102;
                      if (!v68)
                      {
                        v69 = [children objectAtIndex:{objc_msgSend(v110, "hour")}];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v48 setAccessibilityContainer:v65];
                          buf[0] = 0;
                          objc_opt_class();
                          v70 = __UIAccessibilityCastAsSafeCategory();
                          if (buf[0] == 1)
                          {
                            goto LABEL_81;
                          }

                          v71 = v70;
                          [v70 _axSetDropPointDescriptorsProvider:v69];

                          [children replaceObjectAtIndex:objc_msgSend(v110 withObject:{"hour"), v48}];
                        }

                        else
                        {
                          objc_opt_class();
                          v72 = v69;
                          v96 = v69;
                          if (objc_opt_isKindOfClass())
                          {
                            [v48 setAccessibilityContainer:v69];
                            buf[0] = 0;
                            objc_opt_class();
                            children2 = [v69 children];
                            firstObject = [children2 firstObject];
                            v75 = __UIAccessibilityCastAsSafeCategory();

                            if (buf[0] == 1)
                            {
                              goto LABEL_81;
                            }

                            _axDropPointDescriptorsProvider = [v75 _axDropPointDescriptorsProvider];
                            buf[0] = 0;
                            objc_opt_class();
                            v77 = __UIAccessibilityCastAsSafeCategory();
                            if (buf[0] == 1)
                            {
                              goto LABEL_81;
                            }

                            v78 = v77;
                            [v77 _axSetDropPointDescriptorsProvider:_axDropPointDescriptorsProvider];

                            v69 = v96;
                            children3 = [v96 children];
                            [children3 addObject:v48];

                            v45 = v102;
                          }

                          else
                          {
                            v80 = [objc_allocWithZone(MobileCalOccurrencyContainerAccessibilityElement) initWithAccessibilityContainer:v65];
                            array = [MEMORY[0x29EDB8DE8] array];
                            [v80 setChildren:array];

                            [v72 setAccessibilityContainer:v80];
                            children4 = [v80 children];
                            [children4 addObject:v72];

                            v95 = v80;
                            [v48 setAccessibilityContainer:v80];
                            buf[0] = 0;
                            objc_opt_class();
                            v83 = __UIAccessibilityCastAsSafeCategory();
                            if (buf[0] == 1 || (v84 = v83, [v83 _axDropPointDescriptorsProvider], v85 = objc_claimAutoreleasedReturnValue(), buf[0] = 0, objc_opt_class(), __UIAccessibilityCastAsSafeCategory(), v86 = objc_claimAutoreleasedReturnValue(), buf[0] == 1))
                            {
LABEL_81:
                              abort();
                            }

                            v87 = v86;
                            [v86 _axSetDropPointDescriptorsProvider:v85];

                            children5 = [v95 children];
                            [children5 addObject:v48];

                            [children replaceObjectAtIndex:objc_msgSend(v110 withObject:{"hour"), v95}];
                            v45 = v102;
                            v69 = v96;
                          }
                        }

                        v46 = v100;
                      }
                    }

LABEL_65:
                    startDate = v108;
                  }

                  v50 = v106;
                }

                else
                {
                  _AXAssert();
                }
              }
            }

            ++v47;
          }

          while (v47 != v45);
          v45 = [v43 countByEnumeratingWithState:&v115 objects:v120 count:16];
        }

        while (v45);
      }

      date = v10;
      v6 = v92;
      _accessibilityViewController = v93;
      v12 = v91;
    }

    else
    {
      _AXAssert();
    }

    goto LABEL_75;
  }

  v10 = v9;
  date = v10;
LABEL_77:

LABEL_78:

  return date;
}

uint64_t __51__EKDayGridViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Ekdayviewcontr_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  [(EKDayGridViewAccessibility *)self _axResetChildren];
  v4.receiver = self;
  v4.super_class = EKDayGridViewAccessibility;
  [(EKDayGridViewAccessibility *)&v4 dealloc];
}

@end