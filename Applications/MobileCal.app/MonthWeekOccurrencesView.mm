@interface MonthWeekOccurrencesView
+ (double)maxNarrowOccurrenceHeight;
+ (double)minNarrowOccurrenceHeight;
+ (id)xMoreStringAttributesCompact:(BOOL)compact narrow:(BOOL)narrow;
+ (void)clearMoreEventAttributes;
- (BOOL)_isBackgroundScene;
- (BOOL)_scheduleRenderIfNeeded;
- (BOOL)hasDrawnBefore;
- (BOOL)hasOccurrences;
- (BOOL)isNarrow;
- (BOOL)layoutOccurrencesIfNeeded;
- (BOOL)occurrence:(id)occurrence hasSymbolAtPoint:(CGPoint)point;
- (CGRect)_frameForStartColumn:(unint64_t)column endColumn:(unint64_t)endColumn dayRow:(unint64_t)row occurrenceRow:(double)occurrenceRow numRows:(double)rows;
- (CGRect)frameForLastOccurrenceOnDay:(id)day;
- (CGRect)frameForOccurrence:(id)occurrence onDay:(id)day;
- (CGRect)frameForOccurrenceAfterLastOnDay:(id)day;
- (EKEvent)selectedOccurrence;
- (MonthWeekOccurrencesView)initWithFrame:(CGRect)frame;
- (MonthWeekViewOccurrencesViewDelegate)delegate;
- (NSString)description;
- (_NSRange)_dayRangeForOccurrence:(id)occurrence useProposedTime:(BOOL)time isMultiDay:(BOOL *)day;
- (double)_occurrenceHeight;
- (id)_calendarDateAtPoint:(CGPoint)point;
- (id)_monthOccurrenceAtPoint:(CGPoint)point;
- (id)_occurrenceViewForEventOccurrence:(id)occurrence;
- (id)_searchForNextEventInForwardDirection:(BOOL)direction shouldMoveNext:(BOOL *)next;
- (id)annotatedEntities;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)firstNonAllDayEvent;
- (id)firstOccurrencesForEachDay;
- (id)occurrenceAtPoint:(CGPoint)point;
- (id)occurrenceViewForOccurrence:(id)occurrence onDay:(id)day;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)secondAndThirdOccurrencesForEachDay;
- (int64_t)_compareEventsForLinearNavigation:(id)navigation event2:(id)event2;
- (int64_t)_dayTypeForOccurrence:(id)occurrence;
- (void)_layoutSingleOccurrence:(id)occurrence index:(double)index numRows:(double)rows drawTimeString:(BOOL)string;
- (void)_populatedSortedArrayForLinearNavigation;
- (void)_setUpInteractions;
- (void)_updateOccurrencesBounds;
- (void)deselectOccurrence:(id)occurrence;
- (void)displayLayer:(id)layer;
- (void)drawIntoContext:(CGContext *)context traitCollection:(id)collection;
- (void)layoutOccurrences;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)renderLayer;
- (void)selectOccurrence:(id)occurrence;
- (void)setAnimating:(BOOL)animating;
- (void)setDayFrames:(CGRect *)frames;
- (void)setDrawWithViews:(BOOL)views;
- (void)setHasDrawnBefore:(BOOL)before;
- (void)setNeedsDisplay;
- (void)setOccurrences:(id)occurrences;
- (void)setSelectedOccurrence:(id)occurrence;
- (void)setSelectedOccurrences:(id)occurrences;
- (void)setStartDate:(id)date endDate:(id)endDate dayCount:(int64_t)count;
- (void)setupEntityProvider;
- (void)show:(BOOL)show occurrenceView:(id)view atRow:(double)row numRows:(double)rows drawTimeString:(BOOL)string;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation MonthWeekOccurrencesView

- (MonthWeekOccurrencesView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MonthWeekOccurrencesView;
  v3 = [(MonthWeekOccurrencesView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_drawLock._os_unfair_lock_opaque = 0;
    v3->_layoutOccurrencesNeeded = 1;
    v5 = +[UIColor clearColor];
    [(MonthWeekOccurrencesView *)v4 setBackgroundColor:v5];

    layer = [(MonthWeekOccurrencesView *)v4 layer];
    [layer setDelegate:v4];

    layer2 = [(MonthWeekOccurrencesView *)v4 layer];
    [layer2 setValue:&__kCFBooleanTrue forKeyPath:@"separatedOptions.enableContext"];
    [layer2 setNeedsDisplay];
    for (i = 0; i != 7; ++i)
    {
      v9 = objc_opt_new();
      v10 = v4->_moreEventsViews[i];
      v4->_moreEventsViews[i] = v9;
    }

    [(MonthWeekOccurrencesView *)v4 _setUpInteractions];
    [(MonthWeekOccurrencesView *)v4 setupEntityProvider];
  }

  return v4;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = MonthWeekOccurrencesView;
  v3 = [(MonthWeekOccurrencesView *)&v8 description];
  date = [(EKCalendarDate *)self->_startDate date];
  v5 = CUIKStringForDate();
  v6 = [NSString stringWithFormat:@"%@ Month Represented: %@", v3, v5];;

  return v6;
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (!animating && !self->_drawsWithViews)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      subviews = [(MonthWeekOccurrencesView *)self subviews];
      v5 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(subviews);
            }

            [*(*(&v9 + 1) + 8 * v8) removeFromSuperview];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }

      if (self->_needsRelayout)
      {
        [(MonthWeekOccurrencesView *)self layoutOccurrences];
      }

      [(MonthWeekOccurrencesView *)self layoutSubviews];
      [(MonthWeekOccurrencesView *)self renderLayer];
    }
  }
}

- (void)setDrawWithViews:(BOOL)views
{
  if (self->_drawsWithViews != views)
  {
    self->_drawsWithViews = views;
    if (views)
    {
      v4 = +[_BackgroundViewRenderManager sharedManager];
      [v4 cancelAllRendering];

      layer = [(MonthWeekOccurrencesView *)self layer];
      [layer setContents:0];

      v6 = [UIView alloc];
      [(MonthWeekOccurrencesView *)self bounds];
      v8 = v7;
      [(MonthWeekOccurrencesView *)self bounds];
      v9 = [v6 initWithFrame:{0.0, 0.0, v8}];
      [(MonthWeekOccurrencesView *)self setOccurrenceContainer:v9];

      occurrenceContainer = [(MonthWeekOccurrencesView *)self occurrenceContainer];
      [(MonthWeekOccurrencesView *)self addSubview:occurrenceContainer];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = self->_allMonthViews;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            occurrenceContainer2 = [(MonthWeekOccurrencesView *)self occurrenceContainer];
            [occurrenceContainer2 addSubview:v16];
          }

          v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v13);
      }

      v18 = 0;
      moreEventsViews = self->_moreEventsViews;
      do
      {
        [(_MoreEventsView *)moreEventsViews[v18] setIsCompact:self->_isCompact];
        [(MonthWeekOccurrencesView *)self addSubview:moreEventsViews[v18++]];
      }

      while (v18 != 7);
    }

    else if (![(MonthWeekOccurrencesView *)self animating])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      subviews = [(MonthWeekOccurrencesView *)self subviews];
      v21 = [subviews countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v26;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v26 != v23)
            {
              objc_enumerationMutation(subviews);
            }

            [*(*(&v25 + 1) + 8 * j) removeFromSuperview];
          }

          v22 = [subviews countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v22);
      }

      [(MonthWeekOccurrencesView *)self setOccurrenceContainer:0];
      [(MonthWeekOccurrencesView *)self layoutSubviews];
      [(MonthWeekOccurrencesView *)self renderLayer];
    }
  }
}

- (void)setStartDate:(id)date endDate:(id)endDate dayCount:(int64_t)count
{
  dateCopy = date;
  endDateCopy = endDate;
  if (![dateCopy isEqual:self->_startDate] || !objc_msgSend(endDateCopy, "isEqual:", self->_endDate) || self->_dayCount != count)
  {
    objc_storeStrong(&self->_startDate, date);
    objc_storeStrong(&self->_endDate, endDate);
    self->_dayCount = count;
    allOccurrences = self->_allOccurrences;
    self->_allOccurrences = &__NSArray0__struct;

    allOccurrencesSortedForLinearNavigation = self->_allOccurrencesSortedForLinearNavigation;
    self->_allOccurrencesSortedForLinearNavigation = 0;

    self->_layoutOccurrencesNeeded = 1;
    v12 = [(EKCalendarDate *)self->_startDate day];
    v13 = 0;
    if (v12 == 1)
    {
      v13 = 7 - self->_dayCount;
    }

    self->_firstDayIndex = v13;
    [(MonthWeekOccurrencesView *)self setNeedsLayout];
  }
}

+ (id)xMoreStringAttributesCompact:(BOOL)compact narrow:(BOOL)narrow
{
  if (compact && narrow)
  {
    v4 = qword_100251908;
    if (qword_100251908)
    {
      goto LABEL_12;
    }

    v5 = objc_opt_new();
    v6 = &qword_100251908;
    v7 = qword_100251908;
    qword_100251908 = v5;

    v8 = +[UIColor secondaryLabelColor];
    [qword_100251908 setObject:v8 forKeyedSubscript:NSForegroundColorAttributeName];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v10 = 8.5;
LABEL_8:
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v10];
    v14 = [v9 fontWithSize:?];
    [*v6 setObject:v14 forKeyedSubscript:NSFontAttributeName];

    v15 = objc_opt_new();
    [v15 setAlignment:1];
    v16 = &NSParagraphStyleAttributeName;
    goto LABEL_11;
  }

  if (compact)
  {
    v4 = qword_100251910;
    if (qword_100251910)
    {
      goto LABEL_12;
    }

    v11 = objc_opt_new();
    v6 = &qword_100251910;
    v12 = qword_100251910;
    qword_100251910 = v11;

    v13 = +[UIColor secondaryLabelColor];
    [qword_100251910 setObject:v13 forKeyedSubscript:NSForegroundColorAttributeName];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v10 = 9.5;
    goto LABEL_8;
  }

  v4 = qword_100251918;
  if (qword_100251918)
  {
    goto LABEL_12;
  }

  v17 = objc_opt_new();
  v6 = &qword_100251918;
  v18 = qword_100251918;
  qword_100251918 = v17;

  v19 = +[UIColor secondaryLabelColor];
  [qword_100251918 setObject:v19 forKeyedSubscript:NSForegroundColorAttributeName];

  v15 = +[MonthViewOccurrence textFont];
  v16 = &NSFontAttributeName;
LABEL_11:
  [*v6 setObject:v15 forKeyedSubscript:*v16];

  v4 = *v6;
LABEL_12:

  return v4;
}

+ (void)clearMoreEventAttributes
{
  v2 = qword_100251908;
  qword_100251908 = 0;

  v3 = qword_100251910;
  qword_100251910 = 0;

  v4 = qword_100251918;
  qword_100251918 = 0;
}

- (id)occurrenceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(MonthWeekOccurrencesView *)self isNarrow])
  {
    occurrence = 0;
  }

  else
  {
    v7 = [(MonthWeekOccurrencesView *)self _monthOccurrenceAtPoint:x, y];
    occurrence = [v7 occurrence];
  }

  return occurrence;
}

- (id)_monthOccurrenceAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_allMonthViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        [v9 occFrame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
        v27.size.height = v17 + v18;
        v27.origin.x = v11;
        v27.origin.y = v13;
        v27.size.width = v15;
        v26.x = x;
        v26.y = y;
        if (CGRectContainsPoint(v27, v26))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)occurrence:(id)occurrence hasSymbolAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  occurrenceCopy = occurrence;
  v8 = [occurrenceCopy CUIK_symbolName:{objc_msgSend(occurrenceCopy, "isAllDay")}];

  if (v8)
  {
    v9 = [(MonthWeekOccurrencesView *)self _monthOccurrenceAtPoint:x, y];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 isPointInSymbol:{x, y}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_calendarDateAtPoint:(CGPoint)point
{
  firstDayIndex = self->_firstDayIndex;
  if (firstDayIndex <= 6)
  {
    y = point.y;
    x = point.x;
    v10 = firstDayIndex + 1;
    p_size = &self->_dayFrames[firstDayIndex].size;
    while (1)
    {
      CalRoundRectToScreenScale();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      EKUISeparatorLineThickness();
      v23.size.width = v20 + v17;
      v23.origin.x = v13;
      v23.origin.y = v15;
      v23.size.height = v19;
      v22.x = x;
      v22.y = y;
      if (CGRectContainsPoint(v23, v22))
      {
        break;
      }

      p_size += 2;
      if (v10++ == 7)
      {
        v5 = 0;
        goto LABEL_11;
      }
    }

    v5 = [(EKCalendarDate *)self->_startDate calendarDateByAddingDays:0];
LABEL_11:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstOccurrencesForEachDay
{
  v3 = objc_opt_new();
  firstObject = [(NSMutableArray *)self->_layedOutRows firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    occurrenceBlocks = [firstObject occurrenceBlocks];
    v7 = [occurrenceBlocks countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(occurrenceBlocks);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          occurrence = [v11 occurrence];
          eventOccurrenceID = [occurrence eventOccurrenceID];
          [v3 setObject:v11 forKeyedSubscript:eventOccurrenceID];
        }

        v8 = [occurrenceBlocks countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }
  }

  if ([(MonthWeekOccurrencesView *)self dayCount])
  {
    v14 = 0;
    do
    {
      if (([v5 isFilledForDay:v14] & 1) == 0)
      {
        v15 = [(NSMutableArray *)self->_singleDayEventBuckets objectAtIndexedSubscript:v14];
        if ([v15 count])
        {
          v16 = [v15 objectAtIndexedSubscript:0];
          occurrence2 = [v16 occurrence];
          eventOccurrenceID2 = [occurrence2 eventOccurrenceID];
          [v3 setObject:v16 forKeyedSubscript:eventOccurrenceID2];
        }
      }

      ++v14;
    }

    while (v14 < [(MonthWeekOccurrencesView *)self dayCount]);
  }

  return v3;
}

- (id)secondAndThirdOccurrencesForEachDay
{
  v3 = objc_opt_new();
  if ([(MonthWeekOccurrencesView *)self dayCount])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_secondOccurrencesForEachDay objectAtIndexedSubscript:v4];
      v6 = +[NSNull null];

      if (v5 != v6)
      {
        v7 = [(NSMutableArray *)self->_secondOccurrencesForEachDay objectAtIndexedSubscript:v4];
        [v3 addObject:v7];
      }

      v8 = [(NSMutableArray *)self->_thirdOccurrencesForEachDay objectAtIndexedSubscript:v4];
      v9 = +[NSNull null];

      if (v8 != v9)
      {
        v10 = [(NSMutableArray *)self->_thirdOccurrencesForEachDay objectAtIndexedSubscript:v4];
        [v3 addObject:v10];
      }

      ++v4;
    }

    while (v4 < [(MonthWeekOccurrencesView *)self dayCount]);
  }

  return v3;
}

- (CGRect)frameForOccurrence:(id)occurrence onDay:(id)day
{
  occurrenceCopy = occurrence;
  dayCopy = day;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v11 = height;
  v12 = width;
  v13 = y;
  x = CGRectNull.origin.x;
  if (occurrenceCopy)
  {
    v11 = CGRectNull.size.height;
    v12 = CGRectNull.size.width;
    v13 = CGRectNull.origin.y;
    x = CGRectNull.origin.x;
    if (([occurrenceCopy isNew] & 1) == 0)
    {
      v15 = [(MonthWeekOccurrencesView *)self _occurrenceViewForEventOccurrence:occurrenceCopy];
      [v15 frame];
      x = v16;
      v13 = v17;
      v12 = v18;
      v11 = v19;
    }
  }

  v20 = [dayCopy differenceInDays:self->_startDate];
  if ([occurrenceCopy isNew])
  {
    [(MonthWeekOccurrencesView *)self _frameForStartColumn:v20 endColumn:v20 dayRow:0 occurrenceRow:0.0 numRows:1.0];
LABEL_12:
    x = v21;
    v13 = v22;
    v12 = v23;
    v11 = v24;
    goto LABEL_14;
  }

  if (!occurrenceCopy || (v30.origin.x = x, v30.origin.y = v13, v30.size.width = v12, v30.size.height = v11, CGRectIsNull(v30)) || (v31.origin.x = x, v31.origin.y = v13, v31.size.width = v12, v31.size.height = v11, CGRectIsEmpty(v31)))
  {
    if (v20 > 6)
    {
      v11 = height;
      v12 = width;
      v13 = y;
      x = CGRectNull.origin.x;
      goto LABEL_14;
    }

    moreEventsViews = self->_moreEventsViews;
    v11 = height;
    v12 = width;
    v13 = y;
    x = CGRectNull.origin.x;
    if ([(_MoreEventsView *)moreEventsViews[v20] numberOfEvents]>= 1)
    {
      [(_MoreEventsView *)moreEventsViews[v20] frame];
      goto LABEL_12;
    }
  }

LABEL_14:

  v26 = x;
  v27 = v13;
  v28 = v12;
  v29 = v11;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)frameForLastOccurrenceOnDay:(id)day
{
  dayCopy = day;
  v5 = [dayCopy differenceInDays:self->_startDate];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100059DA4;
  v40 = sub_100059DB4;
  v41 = 0;
  layedOutRows = self->_layedOutRows;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100059DBC;
  v35[3] = &unk_10020F780;
  v35[4] = &v36;
  v35[5] = v5;
  [(NSMutableArray *)layedOutRows enumerateObjectsWithOptions:2 usingBlock:v35];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [(NSMutableArray *)self->_singleDayEventBuckets objectAtIndexedSubscript:v5, 0];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        [v11 frame];
        v13 = v12;
        v15 = v14;
        [v37[5] frame];
        v16 = v13 + v15;
        if (v13 + v15 > v17 + v18)
        {
          objc_storeStrong(v37 + 5, v11);
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v31 objects:v42 count:{16, v16}];
    }

    while (v8);
  }

  [v37[5] frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  _Block_object_dispose(&v36, 8);

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)frameForOccurrenceAfterLastOnDay:(id)day
{
  dayCopy = day;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = [dayCopy differenceInDays:self->_startDate];
  layedOutRows = self->_layedOutRows;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005A07C;
  v21[3] = &unk_10020F780;
  v21[4] = &v22;
  v21[5] = v5;
  [(NSMutableArray *)layedOutRows enumerateObjectsWithOptions:2 usingBlock:v21];
  v7 = [(NSMutableArray *)self->_singleDayEventBuckets objectAtIndexedSubscript:v5];
  v8 = [v7 count];
  v23[3] += (v8 + 1);

  [(MonthWeekOccurrencesView *)self _frameForStartColumn:v5 endColumn:v5 dayRow:0 occurrenceRow:v23[3] numRows:1.0];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  _Block_object_dispose(&v22, 8);

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)occurrenceViewForOccurrence:(id)occurrence onDay:(id)day
{
  occurrenceCopy = occurrence;
  [(MonthWeekOccurrencesView *)self frameForOccurrence:occurrenceCopy onDay:day];
  v11 = [[MonthViewOccurrence alloc] initWithFrame:occurrenceCopy occurrence:0 forDayRange:1 isCompact:[(MonthWeekOccurrencesView *)self isCompact] isLargeCompact:[(MonthWeekOccurrencesView *)self isLargeCompact] isMultiDay:0, v7, v8, v9, v10];

  return v11;
}

- (CGRect)_frameForStartColumn:(unint64_t)column endColumn:(unint64_t)endColumn dayRow:(unint64_t)row occurrenceRow:(double)occurrenceRow numRows:(double)rows
{
  firstDayIndex = self->_firstDayIndex;
  v9 = firstDayIndex + column;
  v10 = firstDayIndex + endColumn;
  v11 = v9 > 6 || v10 >= 7;
  if (v11)
  {
    v12 = v9 % 7;
  }

  else
  {
    v12 = v9;
  }

  if (v11)
  {
    v13 = v10 % 7;
  }

  else
  {
    v13 = v10;
  }

  [(MonthWeekOccurrencesView *)self _occurrenceHeight];
  +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
  v24 = CGRectUnion(self->_dayFrames[v12], self->_dayFrames[v13]);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  CalRoundToScreenScale();
  v18 = v17 + y;
  CalRoundToScreenScale();
  v20 = v19;
  v21 = x;
  v22 = v18;
  v23 = width;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setDayFrames:(CGRect *)frames
{
  p_size = &self->_dayFrames[0].size;
  v5 = &frames->size;
  v6 = 7;
  do
  {
    [(MonthWeekOccurrencesView *)self bounds];
    v13.origin.x = v7;
    v13.origin.y = v8;
    v13.size.width = v9;
    v13.size.height = v10;
    v12 = *&v5[-1].width;
    v5 += 2;
    *&p_size[-1].width = CGRectIntersection(v12, v13);
    p_size += 2;
    --v6;
  }

  while (v6);

  [(MonthWeekOccurrencesView *)self setNeedsLayout];
}

- (void)_setUpInteractions
{
  if (!self->_interaction)
  {
    v3 = [[UIPointerInteraction alloc] initWithDelegate:self];
    interaction = self->_interaction;
    self->_interaction = v3;

    [(MonthWeekOccurrencesView *)self addInteraction:self->_interaction];
  }

  v5 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(MonthWeekOccurrencesView *)self addInteraction:v5];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  [requestCopy location];
  v7 = [(MonthWeekOccurrencesView *)self _monthOccurrenceAtPoint:?];
  occurrence = [v7 occurrence];
  [requestCopy location];
  v10 = v9;
  v12 = v11;

  v13 = [(MonthWeekOccurrencesView *)self _calendarDateAtPoint:v10, v12];
  v14 = v13;
  v15 = 0;
  if (v7 && occurrence && v13)
  {
    if ([v7 selected])
    {
      v15 = 0;
    }

    else
    {
      [(MonthWeekOccurrencesView *)self frameForOccurrence:occurrence onDay:v14];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v7 backgroundInsets];
      v15 = [UIPointerRegion regionWithRect:0 identifier:v17 + v27, v19 + v24, v21 - (v27 + v25), v23 - (v24 + v26)];
    }
  }

  return v15;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  [regionCopy rect];
  MidX = CGRectGetMidX(v18);
  [regionCopy rect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v19.origin.x = v9;
  v19.origin.y = v11;
  v19.size.width = v13;
  v19.size.height = v15;
  v16 = [(MonthWeekOccurrencesView *)self _monthOccurrenceAtPoint:MidX, CGRectGetMidY(v19)];
  [v16 setHidden:1];
  [(MonthWeekOccurrencesView *)self setNeedsDisplay];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  animatorCopy = animator;
  regionCopy = region;
  [regionCopy rect];
  MidX = CGRectGetMidX(v26);
  [regionCopy rect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v27.origin.x = v11;
  v27.origin.y = v13;
  v27.size.width = v15;
  v27.size.height = v17;
  [(MonthWeekOccurrencesView *)self _monthOccurrenceAtPoint:MidX, CGRectGetMidY(v27)];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10005A74C;
  v18 = v23 = &unk_10020F7A8;
  v24 = v18;
  selfCopy = self;
  v19 = objc_retainBlock(&v20);
  if ([v18 selected])
  {
    [animatorCopy addCompletion:v19];
  }

  else
  {
    (v19[2])(v19, 1);
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  [regionCopy rect];
  MidX = CGRectGetMidX(v36);
  [regionCopy rect];
  MidY = CGRectGetMidY(v37);
  midY = [(MonthWeekOccurrencesView *)self occurrenceAtPoint:MidX, MidY];
  midY2 = [(MonthWeekOccurrencesView *)self _calendarDateAtPoint:MidX, MidY];
  v10 = midY2;
  v11 = 0;
  if (midY && midY2)
  {
    superview = [(MonthWeekOccurrencesView *)self superview];
    [regionCopy rect];
    [superview convertRect:self fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    superview2 = [(MonthWeekOccurrencesView *)self superview];
    v22 = createImageViewFromView();

    [v22 setFrame:{v14, v16, v18, v20}];
    v23 = objc_alloc_init(UIPreviewParameters);
    delegate = [(MonthWeekOccurrencesView *)self delegate];
    selfCopy = [delegate containerViewForOccurrencePreview];

    if (!selfCopy)
    {
      selfCopy = self;
    }

    [(MonthWeekOccurrencesView *)selfCopy convertPoint:self fromView:MidX, MidY];
    v27 = v26;
    v29 = v28;
    if ([midY isAllDay])
    {
      v30 = +[UIColor clearColor];
      [v23 setBackgroundColor:v30];
    }

    v31 = [[UIPreviewTarget alloc] initWithContainer:selfCopy center:{v27, v29}];
    v32 = [[UITargetedPreview alloc] initWithView:v22 parameters:v23 target:v31];
    v33 = [UIPointerHoverEffect effectWithPreview:v32];
    [v33 setPreferredTintMode:1];
    [v33 setPrefersShadow:0];
    [v33 setPrefersScaledContent:0];
    v11 = [UIPointerStyle styleWithEffect:v33 shape:0];
  }

  return v11;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MonthWeekOccurrencesView;
  [(MonthWeekOccurrencesView *)&v3 layoutSubviews];
  if (!self->_inLayoutOccurrences)
  {
    [(MonthWeekOccurrencesView *)self _updateOccurrencesBounds];
  }

  [(MonthWeekOccurrencesView *)self setNeedsDisplay];
}

- (void)drawIntoContext:(CGContext *)context traitCollection:(id)collection
{
  collectionCopy = collection;
  if (![(MonthWeekOccurrencesView *)self animating])
  {
    os_unfair_lock_lock(&self->_drawLock);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_allMonthViews;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if (([v15 hidden] & 1) == 0)
          {
            [v15 occAlpha];
            if (v16 != 0.0)
            {
              [v15 occFrame];
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v32.origin.x = CGRectZero.origin.x;
              v32.origin.y = y;
              v32.size.width = width;
              v32.size.height = height;
              v33.origin.x = v18;
              v33.origin.y = v20;
              v33.size.width = v22;
              v33.size.height = v24;
              if (!CGRectEqualToRect(v32, v33))
              {
                [v15 drawInFrame:context context:collectionCopy traitCollection:{v18, v20, v22, v24}];
              }
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v9);
    }

    v25 = 0;
    moreEventsViews = self->_moreEventsViews;
    do
    {
      if ([(_MoreEventsView *)moreEventsViews[v25] numberOfEvents]>= 1)
      {
        [(_MoreEventsView *)moreEventsViews[v25] setIsCompact:self->_isCompact];
        [(_MoreEventsView *)moreEventsViews[v25] draw];
      }

      ++v25;
    }

    while (v25 != 7);
    os_unfair_lock_unlock(&self->_drawLock);
  }
}

- (void)_layoutSingleOccurrence:(id)occurrence index:(double)index numRows:(double)rows drawTimeString:(BOOL)string
{
  stringCopy = string;
  occurrenceCopy = occurrence;
  startRange = [occurrenceCopy startRange];
  endRange = [occurrenceCopy endRange];
  dayCount = self->_dayCount;
  v12 = startRange / dayCount;
  v13 = startRange % dayCount;
  v14 = endRange / dayCount;
  v15 = endRange % dayCount;
  isSingleDay = [occurrenceCopy isSingleDay];
  [occurrenceCopy resetSegments];
  occurrence = [occurrenceCopy occurrence];
  startDate = [occurrence startDate];
  [startDate timeIntervalSinceReferenceDate];
  v20 = v19;

  endDate = [occurrence endDate];
  [endDate timeIntervalSinceReferenceDate];
  v23 = v22;

  [(EKCalendarDate *)self->_startDate absoluteTime];
  v25 = v24;
  [(EKCalendarDate *)self->_endDate absoluteTime];
  v27 = v26;
  v28 = v14 - v12;
  if (v14 == v12)
  {
    if (isSingleDay)
    {
      rowsCopy = rows;
    }

    else
    {
      rowsCopy = 1.0;
    }

    [(MonthWeekOccurrencesView *)self _frameForStartColumn:v13 endColumn:v15 dayRow:v12 occurrenceRow:index numRows:rowsCopy];
    [occurrenceCopy setFrame:?];
    [occurrenceCopy setSplitLeftEdge:v20 < v25 splitRightEdge:v23 > v27];
    if (v20 >= v25)
    {
      v31 = 0;
    }

    else
    {
      [occurrenceCopy frame];
      v31 = v30 > self->_dayFrames[0].origin.x + 1.0;
    }

    [occurrenceCopy setFadeLeftEdge:v31];
    if (v23 <= v27)
    {
      v43 = 0;
    }

    else
    {
      [occurrenceCopy frame];
      v43 = v41 + v42 < self->_dayFrames[6].origin.x + self->_dayFrames[6].size.width + -1.0;
    }

    [occurrenceCopy setFadeRightEdge:v43];
  }

  else if (v28 != -1)
  {
    v32 = 0;
    do
    {
      if (v32 >= v28)
      {
        v33 = v15;
      }

      else
      {
        v33 = 6;
      }

      v34 = v23 > v27 || v32 < v28;
      if (v32)
      {
        v35 = 0;
      }

      else
      {
        v35 = v13;
      }

      [(MonthWeekOccurrencesView *)self _frameForStartColumn:v35 endColumn:v33 dayRow:v32 + v12 occurrenceRow:index numRows:1.0];
      v38 = v20 < v25 || v32 != 0;
      v39 = v20 < v25 && v36 > self->_dayFrames[0].origin.x + 1.0;
      v40 = v23 > v27 && v36 + v37 < self->_dayFrames[6].origin.x + self->_dayFrames[6].size.width + -1.0;
      [occurrenceCopy addSegmentWithFrame:v38 splitLeftEdge:v34 splitRightEdge:v39 fadeLeftEdge:v40 fadeRightEdge:?];
      ++v32;
    }

    while (v32 < v28 + 1);
  }

  [occurrenceCopy setDrawsTimeString:stringCopy];
}

- (_NSRange)_dayRangeForOccurrence:(id)occurrence useProposedTime:(BOOL)time isMultiDay:(BOOL *)day
{
  timeCopy = time;
  occurrenceCopy = occurrence;
  eventStore = [occurrenceCopy eventStore];
  timeZone = [eventStore timeZone];

  if (timeCopy)
  {
    proposedStartDate = [occurrenceCopy proposedStartDate];

    if (!proposedStartDate)
    {
      v35 = 0;
      rangeValue = 0;
      goto LABEL_28;
    }

    dayCopy2 = day;
    proposedStartDate2 = [occurrenceCopy proposedStartDate];
    v13 = [EKCalendarDate calendarDateWithDate:proposedStartDate2 timeZone:timeZone];

    proposedStartDate3 = [occurrenceCopy proposedStartDate];
    [occurrenceCopy duration];
    endDate = [proposedStartDate3 dateByAddingTimeInterval:?];
  }

  else
  {
    dayCopy2 = day;
    startDate = [occurrenceCopy startDate];
    v13 = [EKCalendarDate calendarDateWithDate:startDate timeZone:timeZone];

    endDate = [occurrenceCopy endDate];
  }

  v17 = [EKCalendarDate calendarDateWithDate:endDate timeZone:timeZone];

  if (([occurrenceCopy isAllDay] & 1) == 0)
  {
    [v17 absoluteTime];
    v19 = v18 + -1.0;
    timeZone2 = [v17 timeZone];
    v21 = [EKCalendarDate calendarDateWithAbsoluteTime:timeZone2 timeZone:v19];

    v17 = v21;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B354;
  block[3] = &unk_10020EB00;
  v22 = timeZone;
  v42 = v22;
  if (qword_100251930 != -1)
  {
    dispatch_once(&qword_100251930, block);
  }

  if (([qword_100251920 isEqualToTimeZone:v22] & 1) == 0)
  {
    objc_storeStrong(&qword_100251920, timeZone);
    [qword_100251928 removeAllObjects];
  }

  v39 = timeZone;
  v23 = [[DayRangeCacheKey alloc] initWithOccurrenceStart:v13 occurrenceEnd:v17 rangeBoundStart:self->_startDate rangeBoundEnd:self->_endDate];
  v24 = [qword_100251928 objectForKey:v23];
  if (!v24)
  {
    v25 = CUIKDayRangeForOccurenceDates();
    dayCount = self->_dayCount;
    if (dayCount >= 7)
    {
      dayCount = 7;
    }

    v28 = v25 + v26;
    v29 = dayCount - 1;
    if (v25 < dayCount - 1)
    {
      v29 = v25;
    }

    if (v28 > dayCount)
    {
      v30 = dayCount + ~v29;
    }

    else
    {
      v30 = v26;
    }

    if (v28 > dayCount)
    {
      v31 = v29;
    }

    else
    {
      v31 = v25;
    }

    v24 = [NSValue valueWithRange:v31, v30];
    [qword_100251928 setObject:v24 forKey:v23];
  }

  selfCopy = self;
  rangeValue = [v24 rangeValue];
  v35 = v34;
  v36 = v34 > 1 || [v13 compare:selfCopy->_startDate] == -1 || objc_msgSend(v17, "compare:", selfCopy->_endDate) == 1;
  timeZone = v39;
  *dayCopy2 = v36;

LABEL_28:
  v37 = rangeValue;
  v38 = v35;
  result.length = v38;
  result.location = v37;
  return result;
}

- (void)setOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  objc_storeStrong(&self->_allOccurrences, occurrences);
  allOccurrencesSortedForLinearNavigation = self->_allOccurrencesSortedForLinearNavigation;
  self->_allOccurrencesSortedForLinearNavigation = 0;

  if ([(MonthWeekOccurrencesView *)self animating])
  {
    self->_needsRelayout = 1;
  }

  else
  {
    [(MonthWeekOccurrencesView *)self layoutOccurrences];
  }
}

- (BOOL)layoutOccurrencesIfNeeded
{
  layoutOccurrencesNeeded = self->_layoutOccurrencesNeeded;
  if (layoutOccurrencesNeeded)
  {
    [(MonthWeekOccurrencesView *)self layoutOccurrences];
  }

  return layoutOccurrencesNeeded;
}

- (void)layoutOccurrences
{
  os_unfair_lock_lock(&self->_drawLock);
  self->_inLayoutOccurrences = 1;
  [(MonthWeekOccurrencesView *)self layoutIfNeeded];
  dayCount = [(MonthWeekOccurrencesView *)self dayCount];
  layedOutRows = self->_layedOutRows;
  v91 = dayCount;
  if (layedOutRows)
  {
    [(NSMutableArray *)layedOutRows removeAllObjects];
    [(NSMutableArray *)self->_allMonthViews removeAllObjects];
  }

  else
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_allOccurrences, "count")}];
    allMonthViews = self->_allMonthViews;
    self->_allMonthViews = v5;

    v7 = [[NSMutableArray alloc] initWithCapacity:3];
    v8 = self->_layedOutRows;
    self->_layedOutRows = v7;
  }

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = 7;
  do
  {
    v13 = [NSNumber numberWithInteger:0];
    [(NSArray *)v9 addObject:v13];

    v14 = +[UIColor clearColor];
    [(NSArray *)v10 addObject:v14];

    [(NSArray *)v11 addObject:&stru_1002133B8];
    --v12;
  }

  while (v12);
  v101 = v10;
  v102 = v9;
  v100 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_allOccurrences count]];
  v97 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_allOccurrences count]];
  [(NSArray *)self->_allOccurrences sortedArrayUsingComparator:&stru_10020F7E8];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v114 = 0u;
  v95 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
  if (v95)
  {
    v94 = *v112;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    do
    {
      for (i = 0; i != v95; i = i + 1)
      {
        if (*v112 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v111 + 1) + 8 * i);
        buf[0] = 0;
        v20 = [(MonthWeekOccurrencesView *)self _dayRangeForOccurrence:v19 useProposedTime:0 isMultiDay:buf];
        v22 = v21;
        if (v21)
        {
          if ([v19 participationStatus] != 3 || (objc_msgSend(v19, "eventStore"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "showDeclinedEvents"), v23, v24))
          {
            v25 = [MonthViewOccurrence alloc];
            isCompact = [(MonthWeekOccurrencesView *)self isCompact];
            isLargeCompact = [(MonthWeekOccurrencesView *)self isLargeCompact];
            LOBYTE(v90) = buf[0];
            v28 = [(MonthViewOccurrence *)v25 initWithFrame:v19 occurrence:v20 forDayRange:v22 isProposedTime:0 isCompact:isCompact isLargeCompact:isLargeCompact isMultiDay:CGRectNull.origin.x, y, width, height, v90];
            [(MonthViewOccurrence *)v28 setSelected:[(NSMutableArray *)self->_selectedOccurrences containsObject:v19]];
            if ([(MonthViewOccurrence *)v28 isSingleDay])
            {
              v29 = v97;
            }

            else
            {
              v29 = v100;
            }

            [v29 addObject:v28];
            [(NSMutableArray *)self->_allMonthViews addObject:v28];
          }
        }

        v30 = [(MonthWeekOccurrencesView *)self _dayTypeForOccurrence:v19];
        if (v30)
        {
          firstDayIndex = self->_firstDayIndex;
          v32 = &v20[firstDayIndex];
          v33 = &v20[v22];
          if (&v20[firstDayIndex] < &v20[v22 + firstDayIndex])
          {
            v34 = v30;
            do
            {
              if (v32 < [(NSArray *)v102 count])
              {
                v35 = [NSNumber numberWithInteger:v34];
                [(NSArray *)v102 replaceObjectAtIndex:v32 withObject:v35];

                calendar = [v19 calendar];
                v37 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [calendar CGColor]);
                [(NSArray *)v10 replaceObjectAtIndex:v32 withObject:v37];

                calendar2 = [v19 calendar];
                locale = [calendar2 locale];
                v40 = locale;
                if (locale)
                {
                  v41 = locale;
                }

                else
                {
                  v41 = &stru_1002133B8;
                }

                [(NSArray *)v11 replaceObjectAtIndex:v32 withObject:v41];
              }

              ++v32;
            }

            while (v32 < &v33[self->_firstDayIndex]);
          }
        }

        v42 = [(MonthWeekOccurrencesView *)self _dayRangeForOccurrence:v19 useProposedTime:1 isMultiDay:buf];
        if (v43)
        {
          v44 = v42;
          v45 = v43;
          v46 = [MonthViewOccurrence alloc];
          isCompact2 = [(MonthWeekOccurrencesView *)self isCompact];
          isLargeCompact2 = [(MonthWeekOccurrencesView *)self isLargeCompact];
          LOBYTE(v90) = buf[0];
          v49 = [(MonthViewOccurrence *)v46 initWithFrame:v19 occurrence:v44 forDayRange:v45 isProposedTime:1 isCompact:isCompact2 isLargeCompact:isLargeCompact2 isMultiDay:CGRectNull.origin.x, y, width, height, v90];
          if ([(MonthViewOccurrence *)v49 isSingleDay])
          {
            v50 = v97;
          }

          else
          {
            v50 = v100;
          }

          [v50 addObject:v49];
        }
      }

      v95 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
    }

    while (v95);
  }

  v51 = v91;
  v52 = [[NSMutableArray alloc] initWithCapacity:v91];
  singleDayEventBuckets = self->_singleDayEventBuckets;
  self->_singleDayEventBuckets = v52;

  if (v91)
  {
    do
    {
      v54 = objc_alloc_init(NSMutableArray);
      [(NSMutableArray *)self->_singleDayEventBuckets addObject:v54];

      --v51;
    }

    while (v51);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v55 = v97;
  v56 = [v55 countByEnumeratingWithState:&v107 objects:v124 count:16];
  v96 = v55;
  v92 = v11;
  if (v56)
  {
    v57 = v56;
    v58 = *v108;
    do
    {
      v59 = 0;
      v98 = v57;
      do
      {
        if (*v108 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v107 + 1) + 8 * v59);
        startRange = [v60 startRange];
        if (startRange >= [(NSMutableArray *)self->_singleDayEventBuckets count])
        {
          v63 = kCalUILogHandle;
          if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
          {
            v64 = v63;
            occurrence = [v60 occurrence];
            [occurrence title];
            v67 = v66 = v58;
            occurrence2 = [v60 occurrence];
            startDate = [occurrence2 startDate];
            v70 = [(NSMutableArray *)self->_singleDayEventBuckets count];
            *buf = 138413058;
            v117 = v67;
            v118 = 2112;
            v119 = startDate;
            v120 = 2048;
            v121 = startRange;
            v122 = 2048;
            v123 = v70;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Occurrence %@ on %@ is out of bounds for the bucket. framePosition is %lu but the bucket is %lu large.", buf, 0x2Au);

            v55 = v96;
            v58 = v66;

            v57 = v98;
          }
        }

        else
        {
          v62 = [(NSMutableArray *)self->_singleDayEventBuckets objectAtIndex:startRange];
          [v62 addObject:v60];
        }

        v59 = v59 + 1;
      }

      while (v57 != v59);
      v57 = [v55 countByEnumeratingWithState:&v107 objects:v124 count:16];
    }

    while (v57);
  }

  for (j = v100; [j count]; j = k)
  {
    v72 = objc_alloc_init(_CalendarEventsRow);
    v99 = [v100 objectAtIndex:0];
    [(_CalendarEventsRow *)v72 addOccurrenceBlock:?];
    [(NSMutableArray *)self->_layedOutRows addObject:v72];
    [v100 removeObjectAtIndex:0];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v73 = v100;
    for (k = v73; ; v73 = k)
    {
      v75 = [v73 countByEnumeratingWithState:&v103 objects:v115 count:16];
      if (!v75)
      {
        break;
      }

      v76 = 0;
      v77 = *v104;
      v78 = -1;
      do
      {
        for (m = 0; m != v75; m = m + 1)
        {
          if (*v104 != v77)
          {
            objc_enumerationMutation(k);
          }

          v80 = *(*(&v103 + 1) + 8 * m);
          v81 = [(_CalendarEventsRow *)v72 spaceGapFor:v80];
          if (v81 != -1 && v81 < v78)
          {
            v83 = v81;
            v84 = v80;

            v76 = v84;
            v78 = v83;
          }
        }

        v75 = [k countByEnumeratingWithState:&v103 objects:v115 count:16];
      }

      while (v75);

      if (!v76)
      {
        goto LABEL_65;
      }

      [(_CalendarEventsRow *)v72 addOccurrenceBlock:v76];
      [k removeObject:v76];

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
    }

LABEL_65:
  }

  self->_layoutOccurrencesNeeded = 0;
  [(MonthWeekOccurrencesView *)self _updateOccurrencesBounds];
  dayTypes = self->_dayTypes;
  self->_dayTypes = v102;
  v86 = v102;

  badgeColors = self->_badgeColors;
  self->_badgeColors = v101;
  v88 = v101;

  badgeLocales = self->_badgeLocales;
  self->_badgeLocales = v92;

  self->_inLayoutOccurrences = 0;
  os_unfair_lock_unlock(&self->_drawLock);
  [(MonthWeekOccurrencesView *)self setNeedsDisplay];
}

- (id)annotatedEntities
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_allOccurrences count]];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_allMonthViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        occurrence = [v9 occurrence];
        if (([occurrence isBirthday] & 1) == 0)
        {
          [v9 occFrame];
          v15 = [[CUIKViewEntityAnnotation alloc] initWithEvent:occurrence rect:objc_msgSend(v9 state:{"selected"), v11, v12, v13, v14}];
          [v3 addObject:v15];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (int64_t)_dayTypeForOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if (_os_feature_enabled_impl())
  {
    specialDayType = [occurrenceCopy specialDayType];
    if ((specialDayType & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v5 = specialDayType;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasOccurrences
{
  os_unfair_lock_lock(&self->_drawLock);
  v3 = [(NSMutableArray *)self->_allMonthViews count]!= 0;
  os_unfair_lock_unlock(&self->_drawLock);
  return v3;
}

- (id)firstNonAllDayEvent
{
  if ([(MonthWeekOccurrencesView *)self dayCount])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(NSMutableArray *)self->_singleDayEventBuckets objectAtIndexedSubscript:v3];
      firstObject = [v4 firstObject];
      if (firstObject)
      {
        break;
      }

      if (++v3 >= [(MonthWeekOccurrencesView *)self dayCount])
      {
        goto LABEL_5;
      }
    }

    v7 = firstObject;
    occurrence = [firstObject occurrence];
  }

  else
  {
LABEL_5:
    occurrence = 0;
  }

  return occurrence;
}

- (id)_occurrenceViewForEventOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_allMonthViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        occurrence = [v9 occurrence];
        v11 = [occurrence isEqual:occurrenceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (EKEvent)selectedOccurrence
{
  if ([(NSMutableArray *)self->_selectedOccurrences count]== 1)
  {
    firstObject = [(NSMutableArray *)self->_selectedOccurrences firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)setSelectedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = occurrenceCopy;
  if (occurrenceCopy)
  {
    v7 = occurrenceCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(MonthWeekOccurrencesView *)self setSelectedOccurrences:v6];
  }

  else
  {
    [(MonthWeekOccurrencesView *)self setSelectedOccurrences:&__NSArray0__struct];
  }
}

- (void)setSelectedOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  selectedOccurrences = [(MonthWeekOccurrencesView *)self selectedOccurrences];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [selectedOccurrences countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(selectedOccurrences);
        }

        [(MonthWeekOccurrencesView *)self deselectOccurrence:*(*(&v19 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [selectedOccurrences countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = occurrencesCopy;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(MonthWeekOccurrencesView *)self selectOccurrence:*(*(&v15 + 1) + 8 * v14), v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)selectOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  if (([(NSMutableArray *)self->_selectedOccurrences containsObject:?]& 1) == 0)
  {
    selectedOccurrences = self->_selectedOccurrences;
    if (!selectedOccurrences)
    {
      v5 = +[NSMutableArray array];
      v6 = self->_selectedOccurrences;
      self->_selectedOccurrences = v5;

      selectedOccurrences = self->_selectedOccurrences;
    }

    [(NSMutableArray *)selectedOccurrences addObject:occurrenceCopy];
    v7 = [(MonthWeekOccurrencesView *)self _occurrenceViewForEventOccurrence:occurrenceCopy];
    [v7 setSelected:1];
    [(MonthWeekOccurrencesView *)self setNeedsDisplay];
    [(UIPointerInteraction *)self->_interaction invalidate];
  }
}

- (void)deselectOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  v5 = occurrenceCopy;
  if (occurrenceCopy)
  {
    v7 = occurrenceCopy;
    occurrenceCopy = [(NSMutableArray *)self->_selectedOccurrences containsObject:occurrenceCopy];
    v5 = v7;
    if (occurrenceCopy)
    {
      v6 = [(MonthWeekOccurrencesView *)self _occurrenceViewForEventOccurrence:v7];
      [v6 setSelected:0];
      [(NSMutableArray *)self->_selectedOccurrences removeObject:v7];
      [(MonthWeekOccurrencesView *)self setNeedsDisplay];
      [(UIPointerInteraction *)self->_interaction invalidate];

      v5 = v7;
    }
  }

  _objc_release_x1(occurrenceCopy, v5);
}

+ (double)maxNarrowOccurrenceHeight
{
  +[MonthViewOccurrence occurrenceHeight];
  v3 = v2;
  +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
  return v4 * 3.0 + v3 * 3.0;
}

+ (double)minNarrowOccurrenceHeight
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:6.0];
  v3 = v2;
  +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
  return v4 * 3.0 + v3 * 3.0;
}

- (BOOL)isNarrow
{
  [(MonthWeekOccurrencesView *)self frame];
  v3 = ceil(v2);
  +[MonthWeekOccurrencesView maxNarrowOccurrenceHeight];
  return v3 < v4;
}

- (double)_occurrenceHeight
{
  if ([(MonthWeekOccurrencesView *)self isNarrow]&& [(MonthWeekOccurrencesView *)self isCompact])
  {
    delegate = [(MonthWeekOccurrencesView *)self delegate];
    [delegate monthWeekScale];
    v5 = v4;

    +[CompactMonthWeekView narrowScale];
    if (v5 <= v6)
    {
      v12 = 6.0;
    }

    else
    {
      +[MonthWeekOccurrencesView minNarrowOccurrenceHeight];
      v8 = v7;
      [(MonthWeekOccurrencesView *)self frame];
      v10 = v9 - v8;
      +[MonthWeekOccurrencesView maxNarrowOccurrenceHeight];
      v12 = 6.0 * (v10 / (v11 - v8)) + 6.0;
    }

    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v12];
  }

  else
  {

    +[MonthViewOccurrence occurrenceHeight];
  }

  return result;
}

- (void)show:(BOOL)show occurrenceView:(id)view atRow:(double)row numRows:(double)rows drawTimeString:(BOOL)string
{
  stringCopy = string;
  showCopy = show;
  viewCopy = view;
  v13 = viewCopy;
  if (showCopy)
  {
    if ((-[MonthWeekOccurrencesView drawWithViews](self, "drawWithViews") || -[MonthWeekOccurrencesView animating](self, "animating")) && ([v13 frame], v14 != 0.0))
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10005CB68;
      v30[3] = &unk_10020F810;
      v30[4] = self;
      v31 = v13;
      rowCopy = row;
      rowsCopy = rows;
      v34 = stringCopy;
      [(MonthWeekOccurrencesView *)self animateBlock:v30];
    }

    else
    {
      [(MonthWeekOccurrencesView *)self _layoutSingleOccurrence:v13 index:stringCopy numRows:row drawTimeString:rows];
      [v13 setHidden:0];
    }
  }

  else
  {
    if (([viewCopy hidden] & 1) == 0 && (objc_msgSend(v13, "alpha"), v15 > 0.0) && (-[MonthWeekOccurrencesView drawWithViews](self, "drawWithViews") || -[MonthWeekOccurrencesView animating](self, "animating")))
    {
      if (![(MonthWeekOccurrencesView *)self animating])
      {
        [v13 setHidden:0];
      }

      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10005CBC8;
      v24 = &unk_10020F810;
      selfCopy = self;
      v26 = v13;
      rowCopy2 = row;
      rowsCopy2 = rows;
      v29 = stringCopy;
      [(MonthWeekOccurrencesView *)self animateBlock:&v21];
    }

    else
    {
      [v13 setHidden:1];
    }

    startRange = [v13 startRange];
    v17 = [v13 length];
    if (startRange < (startRange + v17))
    {
      v18 = v17;
      v19 = &self->_moreEventsViews[startRange];
      do
      {
        v20 = *v19++;
        [v20 setNumberOfEvents:{objc_msgSend(v20, "numberOfEvents") + 1}];
        --v18;
      }

      while (v18);
    }
  }
}

- (void)_updateOccurrencesBounds
{
  [(MonthWeekOccurrencesView *)self frame];
  if (!CGRectIsEmpty(v214) && ![(MonthWeekOccurrencesView *)self layoutOccurrencesIfNeeded])
  {
    dayCount = [(MonthWeekOccurrencesView *)self dayCount];
    v4 = [NSMutableArray arrayWithCapacity:dayCount];
    p_secondOccurrencesForEachDay = &self->_secondOccurrencesForEachDay;
    secondOccurrencesForEachDay = self->_secondOccurrencesForEachDay;
    self->_secondOccurrencesForEachDay = v4;

    v7 = [NSMutableArray arrayWithCapacity:dayCount];
    selfCopy = self;
    p_thirdOccurrencesForEachDay = &self->_thirdOccurrencesForEachDay;
    thirdOccurrencesForEachDay = self->_thirdOccurrencesForEachDay;
    self->_thirdOccurrencesForEachDay = v7;

    if (dayCount)
    {
      v10 = dayCount;
      do
      {
        v11 = *p_secondOccurrencesForEachDay;
        v12 = +[NSNull null];
        [v11 addObject:v12];

        v13 = *p_thirdOccurrencesForEachDay;
        v14 = +[NSNull null];
        [(NSMutableArray *)v13 addObject:v14];

        --v10;
      }

      while (v10);
    }

    v15 = ceil(CGRectGetHeight(selfCopy->_dayFrames[0]));
    +[MonthWeekOccurrencesView maxNarrowOccurrenceHeight];
    if (v15 >= v16)
    {
      +[MonthViewOccurrence verticalSpaceBetweenOccurrences];
      v19 = v18;
      [(MonthWeekOccurrencesView *)selfCopy _occurrenceHeight];
      v17 = vcvtmd_u64_f64(v15 / (v19 + v20));
      if (v17 <= 3)
      {
        v17 = 3;
      }
    }

    else
    {
      v17 = 3;
    }

    v21 = selfCopy;
    v22 = 0;
    selfCopy->_numberOfVisibleRows = v17;
    moreEventsViews = v21->_moreEventsViews;
    do
    {
      [(_MoreEventsView *)moreEventsViews[v22++] reset];
    }

    while (v22 != 7);
    v24 = selfCopy;
    if (selfCopy->_numberOfVisibleRows)
    {
      traitCollection = [(MonthWeekOccurrencesView *)selfCopy traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v178 = 264;
      v158 = moreEventsViews;
      v176 = p_thirdOccurrencesForEachDay;
      if (preferredContentSizeCategory >= UIContentSizeCategoryAccessibilityMedium)
      {
        v175 = 0;
      }

      else
      {
        EKUICurrentWindowWidthWithViewHierarchy();
        v28 = v27;
        EKUIWidthForWindowSizeParadigm();
        v175 = v28 > v29;
      }

      v157[1] = v157;
      __chkstk_darwin(v30);
      v177 = v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v177, v31);
      v162 = dayCount;
      if (dayCount)
      {
        v33 = 0;
        do
        {
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
          v34 = v24->_layedOutRows;
          v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v205 objects:v213 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v206;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v206 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                if ([*(*(&v205 + 1) + 8 * i) isFilledForDay:v33])
                {
                  ++*&v177[8 * v33];
                }
              }

              v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v205 objects:v213 count:16];
            }

            while (v36);
          }

          v24 = selfCopy;
          v39 = [(NSMutableArray *)selfCopy->_singleDayEventBuckets objectAtIndexedSubscript:v33];
          v40 = [v39 count];
          *&v177[8 * v33] += v40;

          ++v33;
        }

        while (v33 != v162);
      }

      v41 = v24;
      v42 = v162;
      __chkstk_darwin(v32);
      v44 = v157 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v44, v43);
      v45 = 248;
      v46 = [(NSMutableArray *)v41->_layedOutRows count];
      v168 = v44;
      if (v46)
      {
        v47 = 0;
        v48 = v44;
        v169 = 248;
        do
        {
          v170 = v48;
          v49 = v41;
          v50 = [*(&v41->super.super.super.isa + v45) objectAtIndexedSubscript:v47];
          v201 = 0u;
          v202 = 0u;
          v203 = 0u;
          v204 = 0u;
          v171 = v50;
          occurrenceBlocks = [v50 occurrenceBlocks];
          v174 = [occurrenceBlocks countByEnumeratingWithState:&v201 objects:v212 count:16];
          if (v174)
          {
            v173 = *v202;
            do
            {
              for (j = 0; j != v174; ++j)
              {
                if (*v202 != v173)
                {
                  objc_enumerationMutation(occurrenceBlocks);
                }

                v52 = *(*(&v201 + 1) + 8 * j);
                v53 = v178;
                v54 = v49;
                v55 = v47 < *(&v49->super.super.super.isa + v178);
                startRange = [v52 startRange];
                v57 = [v52 length];
                if (startRange < (startRange + v57))
                {
                  v58 = v57;
                  v59 = *(&v54->super.super.super.isa + v53) - 1;
                  do
                  {
                    if (v55 && v47 == v59)
                    {
                      v55 = *&v177[8 * startRange] <= *(&selfCopy->super.super.super.isa + v178);
                    }

                    v60 = p_secondOccurrencesForEachDay;
                    if (v47 == 1 || v47 == 2 && (v60 = v176, v55))
                    {
                      [*v60 setObject:v52 atIndexedSubscript:startRange];
                    }

                    startRange = startRange + 1;
                    --v58;
                  }

                  while (v58);
                }

                v49 = selfCopy;
                [(MonthWeekOccurrencesView *)selfCopy show:v55 occurrenceView:v52 atRow:v175 numRows:v47 drawTimeString:1.0];
              }

              v174 = [occurrenceBlocks countByEnumeratingWithState:&v201 objects:v212 count:16];
            }

            while (v174);
          }

          v42 = v162;
          v44 = v168;
          v61 = v170;
          if (v162)
          {
            v62 = 0;
            v63 = v170;
            do
            {
              if ([v171 isFilledForDay:v62] && v47 <= 0x13)
              {
                *v63 = 1;
              }

              ++v62;
              v63 += 20;
            }

            while (v42 != v62);
          }

          ++v47;
          v41 = selfCopy;
          v45 = v169;
          v48 = v61 + 1;
        }

        while (v47 < [*(&selfCopy->super.super.super.isa + v169) count]);
      }

      v64 = [CalPreferences alloc];
      v65 = [v64 initWithDomain:kPreferenceDomain];
      v161 = [v65 getBooleanPreference:kCompactMonthEventUseAllSpace defaultValue:1];
      v157[0] = v65;
      v160 = [v65 getBooleanPreference:kCompactMonthEventIntegerBased defaultValue:0];
      if (v160)
      {
        v66 = 2.0;
      }

      else
      {
        v66 = 2.5;
      }

      v67 = v178;
      if (v42)
      {
        v68 = 0;
        v159 = 256;
        v166 = v188;
        v164 = v44;
        while (1)
        {
          v69 = [*(&v41->super.super.super.isa + v159) objectAtIndexedSubscript:v68];
          v70 = *(&v41->super.super.super.isa + v67);
          v170 = v69;
          v171 = v68;
          v71 = *&v177[8 * v68];
          v125 = v70 >= v71;
          v72 = v70 - v71;
          if (!v125)
          {
            v72 = 0;
          }

          v173 = v72;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v200 = 0u;
          v73 = [v69 countByEnumeratingWithState:&v197 objects:v211 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = 0;
            v76 = *v198;
            do
            {
              for (k = 0; k != v74; k = k + 1)
              {
                if (*v198 != v76)
                {
                  objc_enumerationMutation(v170);
                }

                v78 = *(*(&v197 + 1) + 8 * k);
                if ([v78 isSingleDay] && (objc_msgSend(v78, "isAllDay") & 1) == 0 && (objc_msgSend(v78, "isMultiDay") & 1) == 0)
                {
                  occurrence = [v78 occurrence];
                  v80 = ~[occurrence isReminderIntegrationEvent];

                  v41 = selfCopy;
                  v75 += v80 & 1;
                }
              }

              v74 = [v170 countByEnumeratingWithState:&v197 objects:v211 count:16];
            }

            while (v74);
          }

          else
          {
            v75 = 0;
          }

          v81 = v161;
          v82 = v75;
          if ((v161 & 1) != 0 || (v66 + -1.0) * v75 <= v173)
          {
            LODWORD(occurrenceBlocks) = [(MonthWeekOccurrencesView *)v41 isCompact];
          }

          else
          {
            LODWORD(occurrenceBlocks) = 0;
          }

          v83 = v173 - v75;
          if (v173 < v75)
          {
            v83 = 0;
          }

          if (v83 >= v75)
          {
            v84 = v83;
          }

          else
          {
            v84 = 0;
          }

          v85 = *&v177[8 * v171];
          if (!v81)
          {
            v83 = v84;
          }

          v165 = v83;
          v86 = *(&v41->super.super.super.isa + v178);
          v87 = -2;
          if (v85 <= v86)
          {
            v87 = -1;
          }

          v174 = (v87 + v86);
          if (v160)
          {
            v195 = 0u;
            v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            v167 = v170;
            v88 = [v167 countByEnumeratingWithState:&v193 objects:v210 count:16];
            if (!v88)
            {
              goto LABEL_175;
            }

            v89 = v88;
            v90 = 0;
            v169 = *v194;
            v163 = v174 - 1;
            while (1)
            {
              v91 = 0;
              v92 = v164;
              do
              {
                if (*v194 != v169)
                {
                  objc_enumerationMutation(v167);
                }

                v93 = *(*(&v193 + 1) + 8 * v91);
                if (v90 > 0x13)
                {
                  v94 = selfCopy;
                }

                else
                {
                  v94 = selfCopy;
                  do
                  {
                    if (v92[v90] != 1)
                    {
                      break;
                    }

                    ++v90;
                  }

                  while (v90 != 20);
                }

                v95 = ((v90 <= v174) & occurrenceBlocks) != 1 || v173 == 0;
                if (v95)
                {
                  v96 = 1;
                }

                else
                {
                  isNarrow = [(MonthWeekOccurrencesView *)v94 isNarrow];
                  if (isNarrow & 1) != 0 || ![v93 isSingleDay] || (objc_msgSend(v93, "isAllDay") & 1) != 0 || (objc_msgSend(v93, "isMultiDay"))
                  {
                    goto LABEL_117;
                  }

                  occurrence2 = [v93 occurrence];
                  if (([occurrence2 isReminderIntegrationEvent] & 1) != 0 || v90 >= v174)
                  {

LABEL_117:
                    v96 = 1;
LABEL_118:
                    v94 = selfCopy;
                    goto LABEL_119;
                  }

                  v99 = v44[20 * v171 + 1 + v90];

                  if (v99)
                  {
                    goto LABEL_117;
                  }

                  if (!v165)
                  {
                    v165 = 0;
                    v96 = 2;
                    --v173;
                    goto LABEL_118;
                  }

                  v94 = selfCopy;
                  if (v90 >= v163 || (v44[20 * v171 + 2 + v90] & 1) != 0)
                  {
                    v96 = 2;
                    --v173;
                  }

                  else
                  {
                    v173 -= 2;
                    --v165;
                    v96 = 3;
                  }
                }

LABEL_119:
                v100 = v174;
                [(MonthWeekOccurrencesView *)v94 show:v90 <= v174 occurrenceView:v93 atRow:v175 numRows:v90 drawTimeString:v96];
                if (v90 - 1 < v100)
                {
                  v101 = [*p_secondOccurrencesForEachDay objectAtIndexedSubscript:v171];
                  v102 = +[NSNull null];

                  v103 = p_secondOccurrencesForEachDay;
                  v95 = v101 == v102;
                  v92 = v164;
                  if (v95 || (v104 = v176, [*v176 objectAtIndexedSubscript:v171], v105 = objc_claimAutoreleasedReturnValue(), +[NSNull null](NSNull, "null"), v106 = objc_claimAutoreleasedReturnValue(), v106, v105, v103 = v104, v95 = v105 == v106, v92 = v164, v95))
                  {
                    [*v103 setObject:v93 atIndexedSubscript:v171];
                  }
                }

                v90 += v96;
                v91 = v91 + 1;
                v44 = v168;
              }

              while (v91 != v89);
              v107 = [v167 countByEnumeratingWithState:&v193 objects:v210 count:16];
              v89 = v107;
              if (!v107)
              {
                goto LABEL_175;
              }
            }
          }

          if (v81)
          {
            v82 = (v173 / 1.5);
          }

          v191 = 0u;
          v192 = 0u;
          v190 = 0u;
          v189 = 0u;
          v163 = v170;
          v169 = [v163 countByEnumeratingWithState:&v189 objects:v209 count:16];
          if (v169)
          {
            break;
          }

LABEL_175:
          v41 = selfCopy;
          v141 = v170;

          v68 = v171 + 1;
          v164 += 20;
          v67 = v178;
          if (v171 + 1 == v162)
          {
            goto LABEL_176;
          }
        }

        v167 = *v190;
        v108 = 0.0;
LABEL_134:
        v109 = 0;
        v110 = v171;
        while (1)
        {
          if (*v190 != v167)
          {
            objc_enumerationMutation(v163);
          }

          v111 = *(*(&v189 + 1) + 8 * v109);
          v112 = ceil(v108);
          if (v82)
          {
            v113 = occurrenceBlocks;
          }

          else
          {
            v113 = 0;
          }

          if (v113 != 1 || -[MonthWeekOccurrencesView isNarrow](selfCopy, "isNarrow") || ![v111 isSingleDay] || (objc_msgSend(v111, "isAllDay") & 1) != 0 || (objc_msgSend(v111, "isMultiDay") & 1) != 0 || (objc_msgSend(v111, "occurrence"), v114 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend(v114, "isReminderIntegrationEvent"), v114, (v115 & 1) != 0))
          {
            v116 = 0;
            v117 = v112;
          }

          else
          {
            v117 = ceil(v66 + v108);
            v116 = 1;
          }

          v173 = v111;
          v118 = floor(v108);
          v187[0] = _NSConcreteStackBlock;
          v187[1] = 3221225472;
          v188[0] = sub_10005DC54;
          v188[1] = &unk_10020F830;
          v188[2] = v110;
          v119 = objc_retainBlock(v187);
          v120 = v117;
          if (v117 > 0x13)
          {
            v122 = v108;
          }

          else
          {
            v121 = v118;
            v122 = v108;
            do
            {
              if (!(v119[2])(v119, v121, v120, v44))
              {
                break;
              }

              v122 = v122 + 1.0;
              v121 = floor(v122);
              v123 = ceil(v66 + v122);
              v124 = ceil(v122);
              if (!v116)
              {
                v123 = v124;
              }

              v120 = v123;
            }

            while (v123 < 0x14);
          }

          v125 = v174 >= v120;
          v126 = v174 >= v120;
          if (v116)
          {
            v127 = v173;
            if (v125)
            {
              --v82;
              [(MonthWeekOccurrencesView *)selfCopy show:1 occurrenceView:v173 atRow:v175 numRows:v122 drawTimeString:v66];
              v128 = v66;
              v129 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
              if (v122 > 0.0)
              {
                goto LABEL_167;
              }

              goto LABEL_171;
            }

            v131 = v112;
            v129 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
            if (v112 <= 0x13)
            {
              do
              {
                if (!(v119[2])(v119, v118, v131, v44))
                {
                  break;
                }

                v108 = v108 + 1.0;
                v118 = floor(v108);
                v131 = vcvtpd_u64_f64(v108);
              }

              while (v131 < 0x14);
            }

            v126 = v174 >= v131;
            v122 = v108;
            v130 = selfCopy;
          }

          else
          {
            v130 = selfCopy;
            v129 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
          }

          v127 = v173;
          v128 = 1.0;
          [(MonthWeekOccurrencesView *)v130 show:v126 occurrenceView:v173 atRow:v175 numRows:v122 drawTimeString:1.0];
          if (v122 > 0.0 && v126)
          {
LABEL_167:
            v165 = v82;
            v132 = [*p_secondOccurrencesForEachDay objectAtIndexedSubscript:v110];
            [v129[267] null];
            v133 = v129;
            v135 = v134 = v110;

            v136 = p_secondOccurrencesForEachDay;
            if (v132 == v135 || (v137 = v176, [*v176 objectAtIndexedSubscript:v134], v138 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v133[267], "null"), v139 = objc_claimAutoreleasedReturnValue(), v139, v138, v136 = v137, v127 = v173, v138 == v139))
            {
              [*v136 setObject:v127 atIndexedSubscript:v134];
            }

            v110 = v134;
            v82 = v165;
          }

LABEL_171:
          v108 = v128 + v122;

          if (++v109 == v169)
          {
            v140 = [v163 countByEnumeratingWithState:&v189 objects:v209 count:16];
            v169 = v140;
            if (!v140)
            {
              goto LABEL_175;
            }

            goto LABEL_134;
          }
        }
      }

LABEL_176:
      IsLeftToRight = CalInterfaceIsLeftToRight();
      v143 = v158;
      if (IsLeftToRight)
      {
        CalRoundToScreenScale();
      }

      if ([(MonthWeekOccurrencesView *)v41 isNarrow])
      {
        v144 = 6.0;
      }

      else
      {
        +[MonthViewOccurrence occurrenceHeight];
      }

      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v144];
      v145 = 0;
      v147 = v146 + 1.0;
      do
      {
        v148 = v143[v145];
        [(MonthWeekOccurrencesView *)v41 _frameForStartColumn:v145 endColumn:v145 dayRow:0 occurrenceRow:(*(&v41->super.super.super.isa + v67) - 1) numRows:1.0];
        v150 = v149;
        v152 = v151;
        v154 = v153;
        if ([(_MoreEventsView *)v143[v145] numberOfEvents]<= 0)
        {
          v155 = 0.0;
        }

        else
        {
          v155 = 1.0;
        }

        if ([(MonthWeekOccurrencesView *)v41 drawWithViews]&& ([(_MoreEventsView *)v148 frame], v156 > 0.0))
        {
          v180[0] = _NSConcreteStackBlock;
          v180[1] = 3221225472;
          v180[2] = sub_10005DCB0;
          v180[3] = &unk_10020F1A0;
          v181 = v148;
          v182 = v155;
          v183 = v150;
          v184 = v152;
          v185 = v154;
          v186 = v147;
          [(MonthWeekOccurrencesView *)v41 animateBlock:v180];
        }

        else
        {
          [(_MoreEventsView *)v148 setFrame:v150, v152, v154, v147];
          [(_MoreEventsView *)v148 setAlpha:v155];
          [(_MoreEventsView *)v148 update];
        }

        ++v145;
      }

      while (v145 != 7);
    }
  }
}

- (void)setNeedsDisplay
{
  layer = [(MonthWeekOccurrencesView *)self layer];
  [layer setNeedsDisplay];

  window = [(MonthWeekOccurrencesView *)self window];
  if (window)
  {
    v5 = window;
    _isBackgroundScene = [(MonthWeekOccurrencesView *)self _isBackgroundScene];

    if ((_isBackgroundScene & 1) == 0)
    {
      if ([(MonthWeekOccurrencesView *)self _scheduleRenderIfNeeded])
      {
        self->_renderPending = 1;
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_10005DDE4;
        v7[3] = &unk_10020EB00;
        v7[4] = self;
        [CATransaction addCommitHandler:v7 forPhase:2];
      }
    }
  }
}

- (BOOL)hasDrawnBefore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasDrawnBefore = selfCopy->_hasDrawnBefore;
  objc_sync_exit(selfCopy);

  return hasDrawnBefore;
}

- (void)setHasDrawnBefore:(BOOL)before
{
  beforeCopy = before;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_hasDrawnBefore != beforeCopy && !beforeCopy)
  {
    layer = [(MonthWeekOccurrencesView *)obj layer];
    [layer setContents:0];
  }

  obj->_hasDrawnBefore = beforeCopy;
  objc_sync_exit(obj);
}

- (void)renderLayer
{
  traitCollection = [(MonthWeekOccurrencesView *)self traitCollection];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005DF6C;
  v4[3] = &unk_10020EB00;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];
}

- (BOOL)_isBackgroundScene
{
  delegate = [(MonthWeekOccurrencesView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(MonthWeekOccurrencesView *)self delegate];
  isBackgroundScene = [delegate2 isBackgroundScene];

  return isBackgroundScene;
}

- (BOOL)_scheduleRenderIfNeeded
{
  if ([(MonthWeekOccurrencesView *)self drawWithViews]|| [(MonthWeekOccurrencesView *)self animating])
  {
    return 0;
  }

  v4 = +[_BackgroundViewRenderManager sharedManager];
  [v4 addViewToQueue:self];

  return 1;
}

- (void)displayLayer:(id)layer
{
  if ([(MonthWeekOccurrencesView *)self _isBackgroundScene])
  {
    [(MonthWeekOccurrencesView *)self renderLayer];
    delegate = [(MonthWeekOccurrencesView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(MonthWeekOccurrencesView *)self delegate];
      [delegate2 didCompleteMonthWeekViewBackgroundRendering];
    }
  }

  else if (!self->_renderPending)
  {

    [(MonthWeekOccurrencesView *)self _scheduleRenderIfNeeded];
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v4 = +[_BackgroundViewRenderManager sharedManager];
  [v4 removeViewFromQueue:self];
}

- (int64_t)_compareEventsForLinearNavigation:(id)navigation event2:(id)event2
{
  navigationCopy = navigation;
  event2Copy = event2;
  v7 = [navigationCopy compareStartDateIncludingTravelWithEvent:event2Copy];
  if (v7)
  {
    v8 = v7;
  }

  else if (![navigationCopy isAllDay] || ((objc_msgSend(navigationCopy, "duration"), v10 = v9, objc_msgSend(event2Copy, "duration"), v12 = v10 == v11, v10 > v11) ? (v8 = -1) : (v8 = 1), v12))
  {
    calendar = [navigationCopy calendar];
    calendar2 = [event2Copy calendar];
    v8 = CUIKCompareEKCalendars();

    if (!v8)
    {
      title = [navigationCopy title];
      title2 = [event2Copy title];
      v8 = [title compare:title2 options:129];
    }
  }

  return v8;
}

- (void)_populatedSortedArrayForLinearNavigation
{
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005E640;
  v27[3] = &unk_10020F880;
  v27[4] = self;
  v3 = objc_retainBlock(v27);
  v4 = [(NSArray *)self->_allOccurrences sortedArrayUsingComparator:v3];
  v5 = +[NSMutableArray array];
  date = [(EKCalendarDate *)self->_startDate date];
  [date timeIntervalSinceReferenceDate];
  v8 = v7;

  date2 = [(EKCalendarDate *)self->_endDate date];
  [date2 timeIntervalSinceReferenceDate];
  v11 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        startDate = [v17 startDate];
        [startDate timeIntervalSinceReferenceDate];
        v20 = v19;

        if (v8 <= v20 && v11 >= v20)
        {
          [(NSArray *)v5 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v14);
  }

  allOccurrencesSortedForLinearNavigation = self->_allOccurrencesSortedForLinearNavigation;
  self->_allOccurrencesSortedForLinearNavigation = v5;
}

- (id)_searchForNextEventInForwardDirection:(BOOL)direction shouldMoveNext:(BOOL *)next
{
  directionCopy = direction;
  *next = 0;
  if ([(NSMutableArray *)self->_selectedOccurrences count]> 1)
  {
    v7 = 0;
    goto LABEL_34;
  }

  if (![(NSArray *)self->_allOccurrences count])
  {
    goto LABEL_13;
  }

  allOccurrencesSortedForLinearNavigation = self->_allOccurrencesSortedForLinearNavigation;
  if (!allOccurrencesSortedForLinearNavigation)
  {
    [(MonthWeekOccurrencesView *)self _populatedSortedArrayForLinearNavigation];
    allOccurrencesSortedForLinearNavigation = self->_allOccurrencesSortedForLinearNavigation;
  }

  if (![(NSArray *)allOccurrencesSortedForLinearNavigation count])
  {
LABEL_13:
    v7 = 0;
    *next = 1;
    goto LABEL_34;
  }

  firstObject = [(NSMutableArray *)self->_selectedOccurrences firstObject];
  if (!firstObject)
  {
    if (directionCopy)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v12 = [(NSArray *)self->_allOccurrencesSortedForLinearNavigation count]- 1;
    goto LABEL_26;
  }

  v10 = [(NSArray *)self->_allOccurrencesSortedForLinearNavigation indexOfObject:firstObject];
  v11 = v10;
  if (!directionCopy)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    v12 = v10 - 1;
LABEL_26:
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if (v10 != [(NSArray *)self->_allOccurrencesSortedForLinearNavigation count]- 1)
  {
    v12 = v11 + 1;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (directionCopy)
      {
LABEL_20:
        while (v12 < [(NSArray *)self->_allOccurrencesSortedForLinearNavigation count])
        {
          v7 = [(NSArray *)self->_allOccurrencesSortedForLinearNavigation objectAtIndexedSubscript:v12];
          v13 = [(MonthWeekOccurrencesView *)self _occurrenceViewForEventOccurrence:v7];
          v14 = v13;
          if (v13)
          {
            [v13 frame];
            if (!CGRectIsNull(v19))
            {
              [v14 frame];
              if (!CGRectIsEmpty(v20))
              {

                goto LABEL_33;
              }
            }
          }

          ++v12;
        }

        goto LABEL_24;
      }

LABEL_29:
      while (1)
      {
        v7 = [(NSArray *)self->_allOccurrencesSortedForLinearNavigation objectAtIndexedSubscript:v12];
        v15 = [(MonthWeekOccurrencesView *)self _occurrenceViewForEventOccurrence:v7];
        v16 = v15;
        if (v15)
        {
          [v15 frame];
          if (!CGRectIsNull(v21))
          {
            [v16 frame];
            if (!CGRectIsEmpty(v22))
            {
              break;
            }
          }
        }

        --v12;
      }

      goto LABEL_33;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_33;
  }

LABEL_24:
  v7 = 0;
  *next = 1;
LABEL_33:

LABEL_34:

  return v7;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  [interactionCopy locationInView:self];
  v6 = [(MonthWeekOccurrencesView *)self occurrenceAtPoint:?];
  if (v6 && [interactionCopy menuAppearance] != 1)
  {
    delegate = [(MonthWeekOccurrencesView *)self delegate];
    [delegate monthWeekOccurrencesView:self selectedEvent:v6 source:2];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005E994;
    v10[3] = &unk_10020EC40;
    v10[4] = self;
    v7 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MonthWeekViewOccurrencesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupEntityProvider
{
  swift_unknownObjectWeakInit();
  sub_10016B740();
  selfCopy = self;
  UIView.setEntityProvider<A>(_:)();

  sub_10016B794(v4);
}

@end