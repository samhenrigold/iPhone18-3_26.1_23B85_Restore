@interface EKExpandedReminderDateView
+ (id)exampleHeader;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (EKExpandedReminderDateView)initWithFrame:(CGRect)frame;
- (void)setBlurFilterRadius:(double)radius;
- (void)setupWithDate:(id)date;
@end

@implementation EKExpandedReminderDateView

+ (id)exampleHeader
{
  v2 = [EKExpandedReminderDateView alloc];
  v3 = [(EKExpandedReminderDateView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = [MEMORY[0x1E695DF00] now];
  [(EKExpandedReminderDateView *)v3 setupWithDate:v4];

  return v3;
}

- (EKExpandedReminderDateView)initWithFrame:(CGRect)frame
{
  v88[9] = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = EKExpandedReminderDateView;
  v3 = [(EKExpandedReminderDateView *)&v85 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKExpandedReminderDateView *)v3 setBackgroundColor:clearColor];

    v5 = [EKExpandedReminderDayCircleView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(EKExpandedReminderDayCircleView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(EKExpandedReminderDateView *)v3 setDateNumberView:v10];

    dateNumberView = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [dateNumberView setTranslatesAutoresizingMaskIntoConstraints:0];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    dateNumberView2 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [dateNumberView2 setBackgroundColor:clearColor2];

    dateNumberView3 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [(EKExpandedReminderDateView *)v3 addSubview:dateNumberView3];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 62.0, 62.0}];
    [(EKExpandedReminderDateView *)v3 setDateLabel:v15];

    dateLabel = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel setTextAlignment:1];

    dateLabel2 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel2 setNumberOfLines:1];

    v18 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:34.0];
    dateLabel3 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel3 setFont:v18];

    v21 = CalendarAppCircleTextColor(v20);
    dateLabel4 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel4 setTextColor:v21];

    dateNumberView4 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    dateLabel5 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateNumberView4 addSubview:dateLabel5];

    v25 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [(EKExpandedReminderDateView *)v3 setWeekdayLabel:v25];

    v26 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8]];
    v80 = [v26 fontDescriptorWithSymbolicTraits:2];

    v79 = [MEMORY[0x1E69DB878] fontWithDescriptor:v80 size:26.0];
    weekdayLabel = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel setFont:v79];

    weekdayLabel2 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel2 setNumberOfLines:1];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    weekdayLabel3 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel3 setTextColor:labelColor];

    weekdayLabel4 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    weekdayLabel5 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [(EKExpandedReminderDateView *)v3 addSubview:weekdayLabel5];

    v33 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [(EKExpandedReminderDateView *)v3 setMonthYearLabel:v33];

    v34 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v78 = [v34 fontDescriptorWithSymbolicTraits:2];

    v77 = [MEMORY[0x1E69DB878] fontWithDescriptor:v78 size:15.0];
    monthYearLabel = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel setFont:v77];

    monthYearLabel2 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel2 setNumberOfLines:1];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    monthYearLabel3 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel3 setTextColor:secondaryLabelColor];

    monthYearLabel4 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    monthYearLabel5 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [(EKExpandedReminderDateView *)v3 addSubview:monthYearLabel5];

    topAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView topAnchor];
    topAnchor2 = [(EKExpandedReminderDateView *)v3 topAnchor];
    v81 = [topAnchor constraintEqualToAnchor:topAnchor2];

    LODWORD(v43) = 1132068864;
    [v81 setPriority:v43];
    v62 = MEMORY[0x1E696ACD8];
    v88[0] = v81;
    centerXAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView centerXAnchor];
    centerXAnchor2 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v74 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v88[1] = v74;
    widthAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView widthAnchor];
    v72 = [widthAnchor constraintEqualToConstant:62.0];
    v88[2] = v72;
    heightAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView heightAnchor];
    v70 = [heightAnchor constraintEqualToConstant:62.0];
    v88[3] = v70;
    firstBaselineAnchor = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    bottomAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView bottomAnchor];
    v67 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:32.0];
    v88[4] = v67;
    centerXAnchor3 = [(UILabel *)v3->_weekdayLabel centerXAnchor];
    centerXAnchor4 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v64 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v88[5] = v64;
    firstBaselineAnchor2 = [(UILabel *)v3->_monthYearLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    v45 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:26.0];
    v88[6] = v45;
    centerXAnchor5 = [(UILabel *)v3->_monthYearLabel centerXAnchor];
    centerXAnchor6 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v48 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v88[7] = v48;
    bottomAnchor2 = [(UILabel *)v3->_monthYearLabel bottomAnchor];
    bottomAnchor3 = [(EKExpandedReminderDateView *)v3 bottomAnchor];
    v51 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v88[8] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:9];
    [v62 activateConstraints:v52];

    v53 = objc_alloc(MEMORY[0x1E6979378]);
    v54 = [v53 initWithType:*MEMORY[0x1E6979928]];
    [(EKExpandedReminderDateView *)v3 setBlurFilter:v54];

    blurFilter = [(EKExpandedReminderDateView *)v3 blurFilter];
    [blurFilter setValue:0 forKey:*MEMORY[0x1E6979BA8]];

    blurFilter2 = [(EKExpandedReminderDateView *)v3 blurFilter];
    v87 = blurFilter2;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
    layer = [(EKExpandedReminderDateView *)v3 layer];
    [layer setFilters:v57];

    objc_initWeak(&location, v3);
    v86 = objc_opt_class();
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __44__EKExpandedReminderDateView_initWithFrame___block_invoke;
    v82[3] = &unk_1E843EBE8;
    objc_copyWeak(&v83, &location);
    v60 = [(EKExpandedReminderDateView *)v3 registerForTraitChanges:v59 withHandler:v82];

    objc_destroyWeak(&v83);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __44__EKExpandedReminderDateView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dateNumberView];
  [v1 setNeedsDisplay];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKExpandedReminderDateView;
    v5 = [(EKExpandedReminderDateView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setBlurFilterRadius:(double)radius
{
  layer = [(EKExpandedReminderDateView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)setupWithDate:(id)date
{
  dateCopy = date;
  v4 = [MEMORY[0x1E695DF00] now];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [dateCopy isSameDayAsDate:v4 inCalendar:currentCalendar];

  if (v6)
  {
    v7 = CalendarAppTintColor();
    dateNumberView = [(EKExpandedReminderDateView *)self dateNumberView];
    [dateNumberView setCircleColor:v7];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    dateLabel = [(EKExpandedReminderDateView *)self dateLabel];
    [dateLabel setTextColor:whiteColor];
  }

  v11 = objc_alloc(MEMORY[0x1E69930C8]);
  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v13 = [v11 initWithDate:dateCopy timeZone:calendarTimeZone];

  [v13 day];
  v14 = CUIKLocalizedStringForInteger();
  dateLabel2 = [(EKExpandedReminderDateView *)self dateLabel];
  [dateLabel2 setText:v14];

  v16 = CUIKLongStringForWeekday();
  weekdayLabel = [(EKExpandedReminderDateView *)self weekdayLabel];
  [weekdayLabel setText:v16];

  v18 = CUIKStringForMonthYear();
  localizedUppercaseString = [v18 localizedUppercaseString];
  monthYearLabel = [(EKExpandedReminderDateView *)self monthYearLabel];
  [monthYearLabel setText:localizedUppercaseString];
}

@end