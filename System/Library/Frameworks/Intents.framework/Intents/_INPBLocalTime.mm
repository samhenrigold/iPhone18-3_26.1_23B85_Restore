@interface _INPBLocalTime
- (BOOL)isEqual:(id)equal;
- (_INPBLocalTime)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasMillisOfSecond:(BOOL)second;
- (void)setHasMinuteOfHour:(BOOL)hour;
- (void)setHasSecondOfMinute:(BOOL)minute;
- (void)writeTo:(id)to;
@end

@implementation _INPBLocalTime

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime hourOfDay](self, "hourOfDay")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hourOfDay"];
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime millisOfSecond](self, "millisOfSecond")}];
    [dictionary setObject:v5 forKeyedSubscript:@"millisOfSecond"];
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime minuteOfHour](self, "minuteOfHour")}];
    [dictionary setObject:v6 forKeyedSubscript:@"minuteOfHour"];
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBLocalTime secondOfMinute](self, "secondOfMinute")}];
    [dictionary setObject:v7 forKeyedSubscript:@"secondOfMinute"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    v3 = 2654435761 * self->_hourOfDay;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    v4 = 2654435761 * self->_millisOfSecond;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    v5 = 2654435761 * self->_minuteOfHour;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    v6 = 2654435761 * self->_secondOfMinute;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasHourOfDay = [(_INPBLocalTime *)self hasHourOfDay];
    if (hasHourOfDay == [equalCopy hasHourOfDay])
    {
      if (!-[_INPBLocalTime hasHourOfDay](self, "hasHourOfDay") || ![equalCopy hasHourOfDay] || (hourOfDay = self->_hourOfDay, hourOfDay == objc_msgSend(equalCopy, "hourOfDay")))
      {
        hasMillisOfSecond = [(_INPBLocalTime *)self hasMillisOfSecond];
        if (hasMillisOfSecond == [equalCopy hasMillisOfSecond])
        {
          if (!-[_INPBLocalTime hasMillisOfSecond](self, "hasMillisOfSecond") || ![equalCopy hasMillisOfSecond] || (millisOfSecond = self->_millisOfSecond, millisOfSecond == objc_msgSend(equalCopy, "millisOfSecond")))
          {
            hasMinuteOfHour = [(_INPBLocalTime *)self hasMinuteOfHour];
            if (hasMinuteOfHour == [equalCopy hasMinuteOfHour])
            {
              if (!-[_INPBLocalTime hasMinuteOfHour](self, "hasMinuteOfHour") || ![equalCopy hasMinuteOfHour] || (minuteOfHour = self->_minuteOfHour, minuteOfHour == objc_msgSend(equalCopy, "minuteOfHour")))
              {
                hasSecondOfMinute = [(_INPBLocalTime *)self hasSecondOfMinute];
                if (hasSecondOfMinute == [equalCopy hasSecondOfMinute])
                {
                  if (!-[_INPBLocalTime hasSecondOfMinute](self, "hasSecondOfMinute") || ![equalCopy hasSecondOfMinute] || (secondOfMinute = self->_secondOfMinute, secondOfMinute == objc_msgSend(equalCopy, "secondOfMinute")))
                  {
                    v12 = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBLocalTime allocWithZone:?]];
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    [(_INPBLocalTime *)v4 setHourOfDay:[(_INPBLocalTime *)self hourOfDay]];
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    [(_INPBLocalTime *)v4 setMillisOfSecond:[(_INPBLocalTime *)self millisOfSecond]];
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    [(_INPBLocalTime *)v4 setMinuteOfHour:[(_INPBLocalTime *)self minuteOfHour]];
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    [(_INPBLocalTime *)v4 setSecondOfMinute:[(_INPBLocalTime *)self secondOfMinute]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBLocalTime *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBLocalTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBLocalTime *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBLocalTime *)self hasHourOfDay])
  {
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalTime *)self hasMillisOfSecond])
  {
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalTime *)self hasMinuteOfHour])
  {
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBLocalTime *)self hasSecondOfMinute])
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)setHasSecondOfMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMinuteOfHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMillisOfSecond:(BOOL)second
{
  if (second)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end