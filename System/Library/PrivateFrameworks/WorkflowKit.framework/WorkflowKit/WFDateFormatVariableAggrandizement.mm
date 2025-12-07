@interface WFDateFormatVariableAggrandizement
- (BOOL)includesTimeForISO8601;
- (NSString)customDateFormat;
- (NSString)dateStyle;
- (NSString)relativeDateStyle;
- (NSString)timeStyle;
- (WFDateFormatVariableAggrandizement)initWithDateStyle:(id)style timeStyle:(id)timeStyle relativeDateStyle:(id)dateStyle customDateFormat:(id)format includesTimeForISO8601:(BOOL)o8601;
- (id)processedContentClasses:(id)classes;
- (void)applyToContentCollection:(id)collection completionHandler:(id)handler;
@end

@implementation WFDateFormatVariableAggrandizement

- (void)applyToContentCollection:(id)collection completionHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke;
  v4[3] = &unk_1E837D860;
  v4[4] = self;
  [collection transformItemsUsingBlock:v4 completionHandler:handler];
}

void __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2;
  v8[3] = &unk_1E837D838;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:objc_opt_class()];
}

void __81__WFDateFormatVariableAggrandizement_applyToContentCollection_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  v7 = [v17 date];
  if (v7)
  {
    v8 = v7;
LABEL_4:
    v10 = [*(a1 + 32) dateStyle];
    v11 = [*(a1 + 32) timeStyle];
    v12 = [*(a1 + 32) relativeDateStyle];
    v13 = [*(a1 + 32) customDateFormat];
    v14 = [*(a1 + 32) includesTimeForISO8601];
    v15 = [v17 timeZone];
    v16 = [v8 wf_formattedStringWithDateStyle:v10 timeStyle:v11 relativeDateStyle:v12 customDateFormat:v13 includeTimeForISO8601:v14 timeZone:v15 locale:0];

    (*(*(a1 + 40) + 16))();
    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v9 dateFromComponents:v17];

  if (v8)
  {
    goto LABEL_4;
  }

  (*(*(a1 + 40) + 16))();
LABEL_5:
}

- (id)processedContentClasses:(id)classes
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = objc_opt_class();

  return [v3 orderedSetWithObject:v4];
}

- (BOOL)includesTimeForISO8601
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"WFISO8601IncludeTime"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)customDateFormat
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"WFDateFormat"];

  return v3;
}

- (NSString)relativeDateStyle
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"WFRelativeDateFormatStyle"];

  return v3;
}

- (NSString)timeStyle
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"WFTimeFormatStyle"];

  return v3;
}

- (NSString)dateStyle
{
  dictionary = [(WFVariableAggrandizement *)self dictionary];
  v3 = [dictionary objectForKey:@"WFDateFormatStyle"];

  return v3;
}

- (WFDateFormatVariableAggrandizement)initWithDateStyle:(id)style timeStyle:(id)timeStyle relativeDateStyle:(id)dateStyle customDateFormat:(id)format includesTimeForISO8601:(BOOL)o8601
{
  o8601Copy = o8601;
  formatCopy = format;
  dateStyleCopy = dateStyle;
  timeStyleCopy = timeStyle;
  styleCopy = style;
  v16 = objc_opt_new();
  [v16 setValue:styleCopy forKey:@"WFDateFormatStyle"];

  [v16 setValue:timeStyleCopy forKey:@"WFTimeFormatStyle"];
  [v16 setValue:dateStyleCopy forKey:@"WFRelativeDateFormatStyle"];

  [v16 setValue:formatCopy forKey:@"WFDateFormat"];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:o8601Copy];
  [v16 setValue:v17 forKey:@"WFISO8601IncludeTime"];

  v18 = [(WFVariableAggrandizement *)self initWithDictionary:v16];
  return v18;
}

@end