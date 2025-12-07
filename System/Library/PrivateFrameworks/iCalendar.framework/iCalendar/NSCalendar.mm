@interface NSCalendar
@end

@implementation NSCalendar

void __52__NSCalendar_VCSUtilities__VCS_gregorianGMTCalendar__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], a2, @"GMT");
  v3 = [v2 VCS_gregorianLocalCalendar:v5];
  v4 = VCS_gregorianGMTCalendar_gregorianGMTCalendar;
  VCS_gregorianGMTCalendar_gregorianGMTCalendar = v3;
}

@end