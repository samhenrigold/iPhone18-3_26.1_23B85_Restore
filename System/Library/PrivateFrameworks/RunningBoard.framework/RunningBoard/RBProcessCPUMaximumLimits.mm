@interface RBProcessCPUMaximumLimits
- (BOOL)isEqual:(id)equal;
- (RBProcessCPUMaximumLimits)initWithPercentage:(unint64_t)percentage duration:(unint64_t)duration violationPolicy:(unint64_t)policy;
- (id)description;
- (id)unionLimit:(id)limit;
- (unint64_t)hash;
@end

@implementation RBProcessCPUMaximumLimits

- (RBProcessCPUMaximumLimits)initWithPercentage:(unint64_t)percentage duration:(unint64_t)duration violationPolicy:(unint64_t)policy
{
  v9.receiver = self;
  v9.super_class = RBProcessCPUMaximumLimits;
  result = [(RBProcessCPUMaximumLimits *)&v9 init];
  if (result)
  {
    result->_percentage = percentage;
    result->_duration = duration;
    result->_violationPolicy = policy;
  }

  return result;
}

- (id)unionLimit:(id)limit
{
  limitCopy = limit;
  v5 = limitCopy;
  if (limitCopy && limitCopy != self && ((percentage = self->_percentage, duration = self->_duration, v8 = [(RBProcessCPUMaximumLimits *)limitCopy duration], v9 = [(RBProcessCPUMaximumLimits *)v5 percentage], v10 = v9 * v8, v11 = percentage * duration, violationPolicy = self->_violationPolicy, v13 = [(RBProcessCPUMaximumLimits *)v5 violationPolicy], v13 > violationPolicy) || v10 < v11))
  {
    if (v13 <= violationPolicy)
    {
      v15 = violationPolicy;
    }

    else
    {
      v15 = v13;
    }

    if (v10 >= v11)
    {
      v9 = percentage;
      v8 = duration;
    }

    selfCopy = [[RBProcessCPUMaximumLimits alloc] initWithPercentage:v9 duration:v8 violationPolicy:v15];
  }

  else
  {
    selfCopy = self;
  }

  v16 = selfCopy;

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v7 = 1;
  if (self != equalCopy)
  {
    if (!equalCopy || (v6 = objc_opt_class(), v6 == objc_opt_class()) && (self->_percentage != v5->_percentage || self->_duration != v5->_duration || self->_violationPolicy != v5->_violationPolicy))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = 0xBF58476D1CE4E5B9 * (self->_percentage ^ (self->_percentage >> 30));
  v3 = 0xBF58476D1CE4E5B9 * (self->_duration ^ (self->_duration >> 30));
  v4 = self->_violationPolicy ^ (self->_violationPolicy >> 30);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v4) ^ ((0xBF58476D1CE4E5B9 * v4) >> 27));
  return (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ (((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ v5) >> 31) ^ (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  percentage = self->_percentage;
  duration = self->_duration;
  v7 = NSStringFromRBSCPUMaximumUsageViolationPolicy();
  v8 = [v3 initWithFormat:@"<%@| percentage:%lu duration:%lu violationPolicy:%@>", v4, percentage, duration, v7];

  return v8;
}

@end