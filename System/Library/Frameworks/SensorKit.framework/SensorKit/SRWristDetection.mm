@interface SRWristDetection
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSDate)offWristDate;
- (NSDate)onWristDate;
- (NSString)description;
- (SRWristDetection)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRWristDetection)initWithCFOnWristDate:(double)date CFOffWristDate:(double)wristDate onWrist:(BOOL)wrist wristLocation:(int64_t)location crownOrientation:(int64_t)orientation;
- (SRWristDetection)initWithCoder:(id)coder;
- (SRWristDetection)initWithOnWristDate:(id)date offWristDate:(id)wristDate onWrist:(BOOL)wrist wristLocation:(int64_t)location crownOrientation:(int64_t)orientation;
- (id)binarySampleRepresentation;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRWristDetection

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogWristDetection = os_log_create("com.apple.SensorKit", "SRLogWristDetection");
  }
}

- (SRWristDetection)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeBoolForKey:@"onWrist"];
  v7 = [coder decodeIntegerForKey:@"wristLocation"];
  v8 = [coder decodeIntegerForKey:@"crownOrientation"];
  if ([coder containsValueForKey:@"onWristDate"])
  {
    [coder decodeDoubleForKey:@"onWristDate"];
    v10 = v9;
  }

  else
  {
    v10 = NAN;
  }

  if ([coder containsValueForKey:@"offWristDate"])
  {
    [coder decodeDoubleForKey:@"offWristDate"];
    v12 = v11;
  }

  else
  {
    v12 = NAN;
  }

  return [(SRWristDetection *)self initWithCFOnWristDate:v6 CFOffWristDate:v7 onWrist:v8 wristLocation:v10 crownOrientation:v12];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeBool:-[SRWristDetection onWrist](self forKey:{"onWrist"), @"onWrist"}];
  [coder encodeInteger:-[SRWristDetection wristLocation](self forKey:{"wristLocation"), @"wristLocation"}];
  [coder encodeInteger:-[SRWristDetection crownOrientation](self forKey:{"crownOrientation"), @"crownOrientation"}];
  [(SRWristDetection *)self cfOnWristDate];
  [(SRWristDetection *)self cfOnWristDate];
  [coder encodeDouble:@"onWristDate" forKey:?];
  [(SRWristDetection *)self cfOffWristDate];
  [(SRWristDetection *)self cfOffWristDate];

  [coder encodeDouble:@"offWristDate" forKey:?];
}

- (SRWristDetection)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v22 = *MEMORY[0x1E69E9840];
  if (![representation length])
  {

    v9 = SRLogWristDetection;
    if (!os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v15 = "Failed to unarchive data because binary data length is zero";
    v16 = v9;
    v17 = 2;
LABEL_19:
    _os_log_error_impl(&dword_1C914D000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    return 0;
  }

  if ([representation length] != 1)
  {
    v19.receiver = self;
    v19.super_class = SRWristDetection;
    result = [(SRWristDetection *)&v19 init];
    if (!result)
    {
      return result;
    }

    v11 = result;
    v18 = 0;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v18];
    if (v12)
    {
      v13 = v12;

      return v13;
    }

    v14 = SRLogWristDetection;
    if (!os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 138543362;
    v21 = v18;
    v15 = "Failed to unarchive data because %{public}@";
    v16 = v14;
    v17 = 12;
    goto LABEL_19;
  }

  v7 = *[representation bytes];
  if (v7 >= 8)
  {
    v8 = SRLogWristDetection;
    if (os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v21) = v7;
      _os_log_impl(&dword_1C914D000, v8, OS_LOG_TYPE_DEFAULT, "Old value reading. Expecting only 3 bits for on wrist detection but got %{public}d", buf, 8u);
    }

    return 0;
  }

  return [(SRWristDetection *)self initWithCFOnWristDate:v7 & 1 CFOffWristDate:(v7 >> 1) & 1 onWrist:v7 >> 2 wristLocation:NAN crownOrientation:NAN];
}

- (id)binarySampleRepresentation
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v6)
  {
    v4 = SRLogWristDetection;
    if (os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (SRWristDetection)initWithOnWristDate:(id)date offWristDate:(id)wristDate onWrist:(BOOL)wrist wristLocation:(int64_t)location crownOrientation:(int64_t)orientation
{
  wristCopy = wrist;
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v13 = v12;
    if (wristDate)
    {
LABEL_3:
      [wristDate timeIntervalSinceReferenceDate];
      v15 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = NAN;
    if (wristDate)
    {
      goto LABEL_3;
    }
  }

  v15 = NAN;
LABEL_6:

  return [(SRWristDetection *)self initWithCFOnWristDate:wristCopy CFOffWristDate:location onWrist:orientation wristLocation:v13 crownOrientation:v15];
}

- (SRWristDetection)initWithCFOnWristDate:(double)date CFOffWristDate:(double)wristDate onWrist:(BOOL)wrist wristLocation:(int64_t)location crownOrientation:(int64_t)orientation
{
  v13.receiver = self;
  v13.super_class = SRWristDetection;
  result = [(SRWristDetection *)&v13 init];
  if (result)
  {
    result->_cfOnWristDate = date;
    result->_cfOffWristDate = wristDate;
    result->_onWrist = wrist;
    result->_wristLocation = location;
    result->_crownOrientation = orientation;
  }

  return result;
}

- (NSDate)onWristDate
{
  [(SRWristDetection *)self cfOnWristDate];
  v3 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOnWristDate];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

- (NSDate)offWristDate
{
  [(SRWristDetection *)self cfOffWristDate];
  v3 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOffWristDate];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

- (id)sr_dictionaryRepresentation
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6[0] = @"onWrist";
  v7[0] = [MEMORY[0x1E696AD98] numberWithBool:{-[SRWristDetection onWrist](self, "onWrist")}];
  v6[1] = @"wristLocation";
  v7[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRWristDetection wristLocation](self, "wristLocation")}];
  v6[2] = @"crownOrientation";
  v7[2] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRWristDetection crownOrientation](self, "crownOrientation")}];
  v6[3] = @"onWristDate";
  [(SRWristDetection *)self cfOnWristDate];
  v3 = MEMORY[0x1E696AD98];
  [(SRWristDetection *)self cfOnWristDate];
  v7[3] = [v3 numberWithDouble:?];
  v6[4] = @"offWristDate";
  [(SRWristDetection *)self cfOffWristDate];
  v4 = MEMORY[0x1E696AD98];
  [(SRWristDetection *)self cfOffWristDate];
  v7[4] = [v4 numberWithDouble:?];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  onWrist = [(SRWristDetection *)self onWrist];
  if (onWrist != [equal onWrist])
  {
    return 0;
  }

  wristLocation = [(SRWristDetection *)self wristLocation];
  if (wristLocation != [equal wristLocation])
  {
    return 0;
  }

  crownOrientation = [(SRWristDetection *)self crownOrientation];
  if (crownOrientation != [equal crownOrientation])
  {
    return 0;
  }

  [(SRWristDetection *)self cfOnWristDate];
  v9 = v8;
  [equal cfOnWristDate];
  if (v9 != v10)
  {
    return 0;
  }

  [(SRWristDetection *)self cfOffWristDate];
  v12 = v11;
  [equal cfOffWristDate];
  return v12 == v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
  [(SRWristDetection *)self cfOnWristDate];
  v4 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOnWristDate];
  v5 = [v3 stringFromDate:{objc_msgSend(v4, "dateWithTimeIntervalSinceReferenceDate:")}];
  [(SRWristDetection *)self cfOffWristDate];
  v6 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOffWristDate];
  v7 = [v3 stringFromDate:{objc_msgSend(v6, "dateWithTimeIntervalSinceReferenceDate:")}];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(SRWristDetection *)self cfOnWristDate];
  v12 = v11;
  [(SRWristDetection *)self cfOffWristDate];
  return [v8 stringWithFormat:@"%@ {\n\tonWristDate: %@  (%f)\n\toffWristDate: %@ (%f)\n\tonWrist: %d\n\twristLocation: %d\n\tcrownOrientation: %d\n}", v10, v5, v12, v7, v13, -[SRWristDetection onWrist](self, "onWrist"), -[SRWristDetection wristLocation](self, "wristLocation"), -[SRWristDetection crownOrientation](self, "crownOrientation")];
}

@end