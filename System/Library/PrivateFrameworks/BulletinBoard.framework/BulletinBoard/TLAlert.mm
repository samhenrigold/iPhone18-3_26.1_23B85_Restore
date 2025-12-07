@interface TLAlert
@end

@implementation TLAlert

void __62__TLAlert_BulletinBoard__bb_toneLibraryAlertTypeForSectionID___block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.mobilemail";
  v2[1] = @"com.apple.MobileSMS";
  v3[0] = &unk_28542E800;
  v3[1] = &unk_28542E818;
  v2[2] = @"com.apple.mobilephone";
  v2[3] = @"com.apple.facetime";
  v3[2] = &unk_28542E830;
  v3[3] = &unk_28542E830;
  v2[4] = @"com.apple.mobilecal";
  v2[5] = @"com.apple.reminders";
  v3[4] = &unk_28542E848;
  v3[5] = &unk_28542E860;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = bb_toneLibraryAlertTypeForSectionID____sectionIDToAlertType;
  bb_toneLibraryAlertTypeForSectionID____sectionIDToAlertType = v0;
}

@end