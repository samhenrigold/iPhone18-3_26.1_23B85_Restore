@interface FilterActions
+ (id)initForSymptom:(unsigned int)symptom trigger:(unsigned int)trigger triggering:(id)triggering finally:(id)finally after:(id)after;
- (void)initForSymptom:(unsigned int)symptom trigger:(unsigned int)trigger triggering:(id)triggering finally:(id)finally after:(id)after;
@end

@implementation FilterActions

- (void)initForSymptom:(unsigned int)symptom trigger:(unsigned int)trigger triggering:(id)triggering finally:(id)finally after:(id)after
{
  v9 = *&symptom;
  self->_triggerSymptomId = trigger;
  afterCopy = after;
  finallyCopy = finally;
  v13 = [Filter initForSymptom:v9 withParams:triggering];
  initialFilter = self->_initialFilter;
  self->_initialFilter = v13;

  v15 = [Filter initForSymptom:v9 withParams:finallyCopy];

  finalFilter = self->_finalFilter;
  self->_finalFilter = v15;

  integerValue = [afterCopy integerValue];
  self->_delayValue = integerValue;
}

+ (id)initForSymptom:(unsigned int)symptom trigger:(unsigned int)trigger triggering:(id)triggering finally:(id)finally after:(id)after
{
  v9 = *&trigger;
  v10 = *&symptom;
  triggeringCopy = triggering;
  finallyCopy = finally;
  afterCopy = after;
  v14 = objc_alloc_init(FilterActions);
  v15 = v14;
  if (v14)
  {
    [(FilterActions *)v14 initForSymptom:v10 trigger:v9 triggering:triggeringCopy finally:finallyCopy after:afterCopy];
  }

  return v15;
}

@end