@interface TVPMediaItemRollInfo
- (TVPMediaItemRollInfo)initWithType:(unint64_t)type start:(double)start duration:(double)duration;
- (id)_typeDescription;
- (id)description;
@end

@implementation TVPMediaItemRollInfo

- (TVPMediaItemRollInfo)initWithType:(unint64_t)type start:(double)start duration:(double)duration
{
  v9.receiver = self;
  v9.super_class = TVPMediaItemRollInfo;
  result = [(TVPMediaItemRollInfo *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_start = start;
    result->_duration = duration;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  _typeDescription = [(TVPMediaItemRollInfo *)self _typeDescription];
  v5 = _typeDescription;
  if (self->_skippable)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v3 stringWithFormat:@"type - %@, start - %f, duration - %f, adamID - %@, skippable - %@", _typeDescription, *&self->_start, *&self->_duration, self->_adamID, v6];

  return v7;
}

- (id)_typeDescription
{
  type = [(TVPMediaItemRollInfo *)self type];
  if (type - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279D7D3C0[type - 1];
  }
}

@end