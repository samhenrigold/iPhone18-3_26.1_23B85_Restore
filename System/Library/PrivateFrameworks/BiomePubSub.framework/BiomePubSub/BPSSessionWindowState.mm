@interface BPSSessionWindowState
- (BPSSessionWindowState)initWithCoder:(id)coder;
- (BPSSessionWindowState)initWithDateInterval:(id)interval identifier:(id)identifier aggregate:(id)aggregate completed:(BOOL)completed;
- (id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BPSSessionWindowState

- (BPSSessionWindowState)initWithDateInterval:(id)interval identifier:(id)identifier aggregate:(id)aggregate completed:(BOOL)completed
{
  completedCopy = completed;
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = BPSSessionWindowState;
  v12 = [(BPSWindowState *)&v15 initWithIdentifier:identifier aggregate:aggregate completed:completedCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateInterval, interval);
  }

  return v13;
}

- (id)metadata
{
  v2 = [[BPSTimeWindowMetadata alloc] initWithDateInterval:self->_dateInterval];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BPSSessionWindowState;
  coderCopy = coder;
  [(BPSWindowState *)&v6 encodeWithCoder:coderCopy];
  v5 = [(BPSSessionWindowState *)self dateInterval:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"dateInterval"];
}

- (BPSSessionWindowState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  if (v5 && (v9.receiver = self, v9.super_class = BPSSessionWindowState, v6 = [(BPSWindowState *)&v9 initWithCoder:coderCopy], (self = v6) != 0))
  {
    [(BPSSessionWindowState *)v6 setDateInterval:v5];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end