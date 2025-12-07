@interface VCReportingHistogram
+ (const)bucketWithType:(int)type count:(unsigned int *)count;
+ (id)rangesDescription:(int)description;
- (VCReportingHistogram)initWithType:(int)type bucketValues:(id)values;
@end

@implementation VCReportingHistogram

- (VCReportingHistogram)initWithType:(int)type bucketValues:(id)values
{
  v5.receiver = self;
  v5.super_class = VCReportingHistogram;
  return [(VCHistogram *)&v5 initWithRanges:[VCReportingHistogram bucketValues:"bucketWithType:count:" bucketWithType:&self->super._bucketCount count:?], values];
}

+ (const)bucketWithType:(int)type count:(unsigned int *)count
{
  if (type > 0x65)
  {
    result = 0;
    v5 = 0;
    if (!count)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = *(&off_278BD48D8 + type);
  v5 = dword_23D59A584[type];
  if (count)
  {
LABEL_5:
    *count = v5;
  }

  return result;
}

+ (id)rangesDescription:(int)description
{
  v8 = -1431655766;
  v3 = [VCReportingHistogram bucketWithType:*&description count:&v8];
  if (!v8)
  {
    return &stru_284F80940;
  }

  v4 = v3;
  v5 = 0;
  result = &stru_284F80940;
  do
  {
    if (v5)
    {
      v7 = ",";
    }

    else
    {
      v7 = "";
    }

    result = [result stringByAppendingFormat:@"%s%u", v7, v4[v5++]];
  }

  while (v5 < v8);
  return result;
}

@end