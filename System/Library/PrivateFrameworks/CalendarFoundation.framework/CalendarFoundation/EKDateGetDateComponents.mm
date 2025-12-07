@interface EKDateGetDateComponents
@end

@implementation EKDateGetDateComponents

void **__EKDateGetDateComponents_block_invoke(void **result)
{
  if (result[4])
  {
    v1 = result;
    v2 = _EKSharedGregorianCalendarForTimeZone(result[5]);
    v3 = [v2 components:v1[7] fromDate:v1[4]];
    v4 = *(v1[6] + 1);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = v1[5];
    v7 = *(*(v1[6] + 1) + 40);

    return [v7 setTimeZone:v6];
  }

  return result;
}

@end