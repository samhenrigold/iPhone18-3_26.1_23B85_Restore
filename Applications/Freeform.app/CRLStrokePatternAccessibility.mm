@interface CRLStrokePatternAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)_crlaxLocalizedDescriptionForPattern:(id)pattern omittingStroke:(BOOL)stroke;
- (id)_crlaxStrokePatternName;
- (id)_crlaxStyleInfoDescription:(BOOL)description;
- (int64_t)_crlaxStrokePattern;
@end

@implementation CRLStrokePatternAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)_crlaxStyleInfoDescription:(BOOL)description
{
  descriptionCopy = description;
  if ([(CRLStrokePatternAccessibility *)self crlaxIsDefaultStroke])
  {
    v5 = +[NSBundle mainBundle];
    _crlaxStrokePatternName = v5;
    if (descriptionCopy)
    {
      v7 = @"Default";
    }

    else
    {
      v7 = @"Default stroke";
    }

    v8 = [v5 localizedStringForKey:v7 value:0 table:0];
    goto LABEL_8;
  }

  _crlaxStrokePatternName = [(CRLStrokePatternAccessibility *)self _crlaxStrokePatternName];
  if (_crlaxStrokePatternName)
  {
    v8 = [(CRLStrokePatternAccessibility *)self _crlaxLocalizedDescriptionForPattern:_crlaxStrokePatternName omittingStroke:descriptionCopy];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_crlaxStrokePatternName
{
  v3 = +[CRLStrokePattern solidPattern];
  v4 = [(CRLStrokePatternAccessibility *)self isEqual:v3];

  if (v4)
  {
    return @"solidPattern";
  }

  v6 = +[CRLStrokePattern emptyPattern];
  v7 = [(CRLStrokePatternAccessibility *)self isEqual:v6];

  if (v7)
  {
    return @"emptyPattern";
  }

  v8 = +[CRLStrokePattern shortDashPattern];
  v9 = [(CRLStrokePatternAccessibility *)self isEqual:v8];

  if (v9)
  {
    return @"shortDashPattern";
  }

  v10 = +[CRLStrokePattern mediumDashPattern];
  v11 = [(CRLStrokePatternAccessibility *)self isEqual:v10];

  if (v11)
  {
    return @"mediumDashPattern";
  }

  v12 = +[CRLStrokePattern longDashPattern];
  v13 = [(CRLStrokePatternAccessibility *)self isEqual:v12];

  if (v13)
  {
    return @"longDashPattern";
  }

  v14 = +[CRLStrokePattern roundDashPattern];
  v15 = [(CRLStrokePatternAccessibility *)self isEqual:v14];

  if (v15)
  {
    return @"roundDashPattern";
  }

  else
  {
    return 0;
  }
}

- (id)_crlaxLocalizedDescriptionForPattern:(id)pattern omittingStroke:(BOOL)stroke
{
  strokeCopy = stroke;
  patternCopy = pattern;
  if (qword_101A353B0)
  {
    v6 = 1;
  }

  else
  {
    v6 = !strokeCopy;
  }

  if (!v6)
  {
    v47[0] = @"solidPattern";
    v43 = +[NSBundle mainBundle];
    v41 = [v43 localizedStringForKey:@"Solid" value:0 table:0];
    v48[0] = v41;
    v47[1] = @"emptyPattern";
    v39 = +[NSBundle mainBundle];
    v37 = [v39 localizedStringForKey:@"Empty" value:0 table:0];
    v48[1] = v37;
    v47[2] = @"shortDashPattern";
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Short dash" value:0 table:0];
    v48[2] = v8;
    v47[3] = @"mediumDashPattern";
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Medium dash" value:0 table:0];
    v48[3] = v10;
    v47[4] = @"longDashPattern";
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Long dash" value:0 table:0];
    v48[4] = v12;
    v47[5] = @"roundDashPattern";
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Rounded dash" value:0 table:0];
    v48[5] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:6];
    v16 = qword_101A353B0;
    qword_101A353B0 = v15;
  }

  if (!qword_101A353A8 && !strokeCopy)
  {
    v45[0] = @"solidPattern";
    v44 = +[NSBundle mainBundle];
    v42 = [v44 localizedStringForKey:@"Solid stroke" value:0 table:0];
    v46[0] = v42;
    v45[1] = @"emptyPattern";
    v40 = +[NSBundle mainBundle];
    v38 = [v40 localizedStringForKey:@"Empty stroke" value:0 table:0];
    v46[1] = v38;
    v45[2] = @"shortDashPattern";
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Short dash stroke" value:0 table:0];
    v46[2] = v18;
    v45[3] = @"mediumDashPattern";
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Medium dash stroke" value:0 table:0];
    v46[3] = v20;
    v45[4] = @"longDashPattern";
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Long dash stroke" value:0 table:0];
    v46[4] = v22;
    v45[5] = @"roundDashPattern";
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Rounded dash stroke" value:0 table:0];
    v46[5] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:6];
    v26 = qword_101A353A8;
    qword_101A353A8 = v25;
  }

  v27 = &qword_101A353B0;
  if (!strokeCopy)
  {
    v27 = &qword_101A353A8;
  }

  v28 = [*v27 objectForKeyedSubscript:patternCopy];
  if (CRLAccessibilityShouldPerformValidationChecks(v28, v29))
  {
    if (![v28 length])
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(0);
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unrecognized pattern %@, could not get localization key", v31, v32, v33, v34, v35, patternCopy))
      {
        abort();
      }
    }
  }

  return v28;
}

- (int64_t)_crlaxStrokePattern
{
  crlaxTarget = [(CRLStrokePatternAccessibility *)self crlaxTarget];
  patternType = [crlaxTarget patternType];

  return patternType;
}

@end