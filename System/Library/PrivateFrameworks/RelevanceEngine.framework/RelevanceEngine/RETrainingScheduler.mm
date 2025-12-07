@interface RETrainingScheduler
+ (RETrainingScheduler)schedulerWithBehavior:(unint64_t)behavior;
@end

@implementation RETrainingScheduler

+ (RETrainingScheduler)schedulerWithBehavior:(unint64_t)behavior
{
  if (behavior > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

@end