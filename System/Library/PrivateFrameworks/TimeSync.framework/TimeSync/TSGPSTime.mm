@interface TSGPSTime
- (BOOL)isEqual:(id)equal;
- (TSGPSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSGPSTime

- (TSGPSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch
{
  v5.receiver = self;
  v5.super_class = TSGPSTime;
  result = [(TSGPSTime *)&v5 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = epoch;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  *(result + 1) = self->_nanosecondsSinceEpoch;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (([equalCopy isMemberOfClass:?] & 1) != 0 || (objc_opt_class(), -[TSGPSTime isMemberOfClass:](self, "isMemberOfClass:")))
  {
    nanosecondsSinceEpoch = [(TSGPSTime *)self nanosecondsSinceEpoch];
    v6 = nanosecondsSinceEpoch == [equalCopy nanosecondsSinceEpoch];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  extendedWeek = [(TSGPSTime *)self extendedWeek];
  [(TSGPSTime *)self seconds];
  return [v3 stringWithFormat:extendedWeek, v5];
}

@end