@interface SBProductivityGestureEducationItem
- (BOOL)isValidWithActivationForType:(int64_t)type;
- (SBProductivityGestureEducationItem)initWithCoder:(id)coder;
- (SBProductivityGestureEducationItem)initWithType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)contentDidAppear;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBProductivityGestureEducationItem

- (SBProductivityGestureEducationItem)initWithType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = SBProductivityGestureEducationItem;
  v4 = [(SBProductivityGestureEducationItem *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activationHistoryMap = v5->_activationHistoryMap;
    v5->_activationHistoryMap = dictionary;
  }

  return v5;
}

- (void)contentDidAppear
{
  date = [MEMORY[0x277CBEAA8] date];
  displayDate = self->_displayDate;
  self->_displayDate = date;

  [(SBProductivityGestureEducationItem *)self resetActivations];
}

- (BOOL)isValidWithActivationForType:(int64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  if (!self->_displayDate)
  {
LABEL_4:
    date = [MEMORY[0x277CBEAA8] date];
    activationHistoryMap = self->_activationHistoryMap;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v12 = [(NSMutableDictionary *)activationHistoryMap objectForKeyedSubscript:v11];

    self->_lastActivatedEducationType = type;
    if (!v12)
    {
      v12 = objc_alloc_init(SBProductivityGestureEducationActivationHistory);
      v13 = self->_activationHistoryMap;
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:type];
      [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
    }

    date2 = [(SBProductivityGestureEducationActivationHistory *)v12 date];
    if (date2)
    {
      [date timeIntervalSinceDate:date2];
      v17 = v16;
      _policyInterval = [(SBProductivityGestureEducationItem *)self _policyInterval];
      if (v17 < v19)
      {
        v20 = [(SBProductivityGestureEducationActivationHistory *)v12 count]+ 1;
        v21 = v12;
LABEL_13:
        [(SBProductivityGestureEducationActivationHistory *)v21 setCount:v20];
        v25 = [(SBProductivityGestureEducationActivationHistory *)v12 count];
        v26 = v25 >= [(SBProductivityGestureEducationItem *)self _policyCount];

        goto LABEL_17;
      }

      v22 = SBLogSystemGesture(_policyInterval);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = _SBFLoggingMethodProem();
        [(SBProductivityGestureEducationItem *)self _policyInterval];
        v29 = 138543874;
        v30 = v23;
        v31 = 2048;
        v32 = v24;
        v33 = 2048;
        typeCopy2 = type;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "%{public}@ subsequent gesture activation happened past the require policy time of %f seconds for type %ld", &v29, 0x20u);
      }
    }

    [(SBProductivityGestureEducationActivationHistory *)v12 setDate:date];
    v21 = v12;
    v20 = 1;
    goto LABEL_13;
  }

  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  date = [autoupdatingCurrentCalendar dateByAddingUnit:16 value:1 toDate:self->_displayDate options:0];

  date3 = [MEMORY[0x277CBEAA8] date];
  v8 = [date3 compare:date];

  if (v8 != -1)
  {

    goto LABEL_4;
  }

  v12 = SBLogSystemGesture(v9);
  if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_INFO))
  {
    v27 = _SBFLoggingMethodProem();
    v29 = 138543874;
    v30 = v27;
    v31 = 2048;
    v32 = 1;
    v33 = 2048;
    typeCopy2 = type;
    _os_log_impl(&dword_21ED4E000, &v12->super, OS_LOG_TYPE_INFO, "%{public}@ gated by the %ld day per education pill type %ld", &v29, 0x20u);
  }

  v26 = 0;
LABEL_17:

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SBProductivityGestureEducationItem alloc] initWithType:self->_type];
  objc_storeStrong(&v4->_displayDate, self->_displayDate);
  objc_storeStrong(&v4->_activationHistoryMap, self->_activationHistoryMap);
  v4->_lastActivatedEducationType = self->_lastActivatedEducationType;
  return v4;
}

- (SBProductivityGestureEducationItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayDate"];

  displayDate = self->_displayDate;
  self->_displayDate = v6;

  return [(SBProductivityGestureEducationItem *)self initWithType:v5];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_displayDate forKey:@"displayDate"];
}

@end