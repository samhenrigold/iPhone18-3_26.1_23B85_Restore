@interface IMRemindersIntegration
+ (void)notifyInteractionWithPeople:(id)people;
@end

@implementation IMRemindersIntegration

+ (void)notifyInteractionWithPeople:(id)people
{
  peopleCopy = people;
  if (!qword_1EB2EA1C8)
  {
    qword_1EB2EA1C8 = MEMORY[0x1AC56C550](@"REMStore", @"ReminderKit");
  }

  if (objc_opt_respondsToSelector())
  {
    [qword_1EB2EA1C8 notifyOfInteractionWithPeople:peopleCopy];
  }
}

@end