@interface KNAppPropertiesProvider
- (NSArray)powerPointDocumentTypes;
- (id)appChartPropertyOverrides;
- (id)applicationDisplayName;
- (id)documentTypeDisplayName;
- (id)documentTypeDisplayNameForSharingInvitation;
- (id)templateTypeDisplayName;
@end

@implementation KNAppPropertiesProvider

- (id)applicationDisplayName
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v5 = v4;
  if (v4)
  {
    applicationName = v4;
  }

  else
  {
    applicationName = [(KNAppPropertiesProvider *)self applicationName];
  }

  v7 = applicationName;

  return v7;
}

- (id)documentTypeDisplayName
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Presentation" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (id)documentTypeDisplayNameForSharingInvitation
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"presentation" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (id)templateTypeDisplayName
{
  v2 = sub_275DC204C(self);
  v3 = [v2 localizedStringForKey:@"Theme" value:&stru_2884D8E20 table:@"Keynote"];

  return v3;
}

- (NSArray)powerPointDocumentTypes
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.microsoft.powerpoint.ppt";
  v4[1] = @"org.openxmlformats.presentationml.presentation";
  v4[2] = @"org.openxmlformats.presentationml.presentation.macroenabled";
  v4[3] = @"com.microsoft.powerpoint.pps";
  v4[4] = @"org.openxmlformats.presentationml.slideshow";
  v4[5] = @"org.openxmlformats.presentationml.slideshow.macroenabled";
  v4[6] = @"com.microsoft.powerpoint.pot";
  v4[7] = @"org.openxmlformats.presentationml.template";
  v4[8] = @"org.openxmlformats.presentationml.template.macroenabled";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];

  return v2;
}

- (id)appChartPropertyOverrides
{
  if (qword_280A3BFD0 != -1)
  {
    sub_275E5A42C();
  }

  v3 = qword_280A3BFC8;

  return v3;
}

@end