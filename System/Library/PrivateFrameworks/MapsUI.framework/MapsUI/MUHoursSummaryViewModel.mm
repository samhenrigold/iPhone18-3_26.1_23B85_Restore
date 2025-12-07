@interface MUHoursSummaryViewModel
+ (id)viewModelForBusinessConfiguration:(id)configuration showHoursAndOpenState:(BOOL)state;
- (MUHoursSummaryViewModel)init;
- (id)buildDefaultPlacecardHoursString;
@end

@implementation MUHoursSummaryViewModel

- (id)buildDefaultPlacecardHoursString
{
  v2 = [[MUPlaceHoursFormatter alloc] initWithHoursString:self->_hoursText AMPMSymbols:self->_AMPMSymbols];
  buildDefaultPlacecardHoursString = [(MUPlaceHoursFormatter *)v2 buildDefaultPlacecardHoursString];

  return buildDefaultPlacecardHoursString;
}

- (MUHoursSummaryViewModel)init
{
  v6.receiver = self;
  v6.super_class = MUHoursSummaryViewModel;
  v2 = [(MUHoursSummaryViewModel *)&v6 init];
  if (v2)
  {
    v3 = +[MUInfoCardStyle textColor];
    openStateColor = v2->_openStateColor;
    v2->_openStateColor = v3;
  }

  return v2;
}

+ (id)viewModelForBusinessConfiguration:(id)configuration showHoursAndOpenState:(BOOL)state
{
  stateCopy = state;
  v5 = MEMORY[0x1E696F468];
  configurationCopy = configuration;
  v7 = [v5 alloc];
  businessHours = [configurationCopy businessHours];
  firstObject = [businessHours firstObject];
  placeTimeZone = [configurationCopy placeTimeZone];
  v11 = [v7 initWithBusinessHours:firstObject timeZone:placeTimeZone localizedHoursStringOptions:272];

  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  [v11 updateHoursLabelColorWithDefaultLabelColor:systemGreenColor];

  v13 = objc_alloc_init(MUHoursSummaryViewModel);
  hoursName = [configurationCopy hoursName];
  [(MUHoursSummaryViewModel *)v13 setTitleText:hoursName];

  aMPMSymbols = [v11 AMPMSymbols];
  [(MUHoursSummaryViewModel *)v13 setAMPMSymbols:aMPMSymbols];

  isServiceHours = [configurationCopy isServiceHours];
  [(MUHoursSummaryViewModel *)v13 setServiceHours:isServiceHours];
  [(MUHoursSummaryViewModel *)v13 setHideChevron:1];
  localizedOpenState = [v11 localizedOpenState];
  [(MUHoursSummaryViewModel *)v13 setOpenStateText:localizedOpenState];

  hoursStateLabelColor = [v11 hoursStateLabelColor];
  [(MUHoursSummaryViewModel *)v13 setOpenStateColor:hoursStateLabelColor];

  -[MUHoursSummaryViewModel setOpeningHoursOptions:](v13, "setOpeningHoursOptions:", [v11 geoMapItemOpeningHourOptions]);
  v19 = ([v11 geoMapItemOpeningHourOptions] & 0x198) != 0;
  [(MUHoursSummaryViewModel *)v13 setShowHoursAndOpenState:stateCopy];
  [(MUHoursSummaryViewModel *)v13 setShowHoursInSummary:v19];
  localizedOperatingHours = [v11 localizedOperatingHours];
  [(MUHoursSummaryViewModel *)v13 setHoursText:localizedOperatingHours];

  [(MUHoursSummaryViewModel *)v13 setShowHoursAndOpenState:stateCopy];

  return v13;
}

@end