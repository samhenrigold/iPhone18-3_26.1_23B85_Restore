@interface TLAlert
@end

@implementation TLAlert

void __71__TLAlert_UserNotificationsCore__unc_toneLibraryAlertTypeForSectionID___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.mobilemail";
  v2[1] = @"com.apple.MobileSMS";
  v3[0] = &unk_1F56635A8;
  v3[1] = &unk_1F56635C0;
  v2[2] = @"com.apple.mobilephone";
  v2[3] = @"com.apple.facetime";
  v3[2] = &unk_1F56635D8;
  v3[3] = &unk_1F56635D8;
  v2[4] = @"com.apple.mobilecal";
  v2[5] = @"com.apple.reminders";
  v3[4] = &unk_1F56635F0;
  v3[5] = &unk_1F5663608;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = unc_toneLibraryAlertTypeForSectionID____sectionIDToAlertType;
  unc_toneLibraryAlertTypeForSectionID____sectionIDToAlertType = v0;
}

@end