@interface GEOLocalTime
- (unint64_t)hash;
@end

@implementation GEOLocalTime

- (unint64_t)hash
{
  [(GEOLocalTime *)self readAll:1];
  if (*&self->_flags)
  {
    v5 = 2654435761u * self->_timeRoundedToHour;
    if ((*&self->_flags & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = 0;
    return v10 ^ v5 ^ [(NSString *)self->_humanReadable hash];
  }

  v5 = 0;
  if ((*&self->_flags & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  timezoneOffsetFromGmtInHours = self->_timezoneOffsetFromGmtInHours;
  if (timezoneOffsetFromGmtInHours >= 0.0)
  {
    v7 = timezoneOffsetFromGmtInHours;
  }

  else
  {
    v7 = -timezoneOffsetFromGmtInHours;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v4, v3).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v10 ^ v5 ^ [(NSString *)self->_humanReadable hash];
}

@end