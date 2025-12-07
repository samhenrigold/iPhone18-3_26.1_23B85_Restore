@interface NSString(SensorKitUI)
+ (void)srui_localizedStringForCode:()SensorKitUI;
- (NSComparisonResult)sr_localizedServiceCompare:()SensorKitUI;
@end

@implementation NSString(SensorKitUI)

- (NSComparisonResult)sr_localizedServiceCompare:()SensorKitUI
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSString *)[[SRAuthorizationGroup authorizationGroupWithServiceName:?]] localizedStandardCompare:[[SRAuthorizationGroup authorizationGroupWithServiceName:?]]];
  objc_autoreleasePoolPop(v5);
  return v6;
}

+ (void)srui_localizedStringForCode:()SensorKitUI
{
  v11 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 1:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"allowAccess";
      v5 = @"Allow Collection & Sharing";
      goto LABEL_103;
    case 2:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"dontAllowAccess";
      v5 = @"Don’t Allow Collection & Sharing";
      goto LABEL_103;
    case 3:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleted";
      v5 = @"Deleted";
      goto LABEL_103;
    case 4:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"released";
      v5 = @"Shared";
      goto LABEL_103;
    case 5:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"arrayIndex";
      v5 = @"Item %ld";
      goto LABEL_103;
    case 6:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"collectedTitle";
      v5 = @"What is collected:";
      goto LABEL_103;
    case 7:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"notCollectedTitle";
      v5 = @"What is not collected:";
      goto LABEL_103;
    case 8:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"sampleDataTitle";
      v5 = @"Example data sample";
      goto LABEL_103;
    case 9:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"ExampleDataClarification";
      v5 = @"Example represents a single data point.";
      goto LABEL_103;
    case 10:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"appsAndStudies";
      v5 = @"apps and studies with access";
      goto LABEL_103;
    case 11:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"collectedData";
      v5 = @"Collected Data";
      goto LABEL_103;
    case 12:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"dataSources";
      v5 = @"Data Sources";
      goto LABEL_103;
    case 13:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"appsAndStudiesFooter";
      v5 = @"These apps and studies have access to all shared data from this data source. You can always revoke access.";
      goto LABEL_103;
    case 14:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"appsAndStudiesFooterIfListEmpty";
      v5 = @"Currently, no Sensor & Usage Data is being collected. No app or study has access to Research Sensor & Usage Data.";
      goto LABEL_103;
    case 15:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"appsWritingDataFooter";
      v5 = @"These apps can contribute %@ that can then be shared with research apps and studies you approve.";
      goto LABEL_103;
    case 16:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteAllFooter";
      v5 = @"This deletes any data that has been collected and is currently stored on your device. This does not delete data you’ve shared with an app or study.";
      goto LABEL_103;
    case 17:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"downloadAllFooter";
      v5 = @"Once data has been shared to authorized studies it cannot be retrieved or deleted. Data that is more than 7 days old is deleted from your devices.";
      goto LABEL_103;
    case 18:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"sharedDaysFooter";
      v5 = @"Once data has been released to authorized apps it cannot be un-shared or deleted.";
      goto LABEL_103;
    case 19:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"sharedDays";
      v5 = @"All Shared Days";
      goto LABEL_103;
    case 20:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteUnreleased";
      v5 = @"Delete Unshared Data";
      goto LABEL_103;
    case 21:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"downloadAllTitle";
      v5 = @"Export All Currently Collected Data";
      goto LABEL_103;
    case 22:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteAllAlertTitle";
      v5 = @"Please confirm that you want to delete all collected data.";
      goto LABEL_103;
    case 23:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteAllUnreleasedAlertTitle";
      v5 = @"Please confirm that you want to delete all unshared data.";
      goto LABEL_103;
    case 24:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteAllAlertActionButton";
      v5 = @"Delete All Collected Data";
      goto LABEL_103;
    case 25:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteAllUnreleasedAlertActionButton";
      v5 = @"Delete All Unshared Data";
      goto LABEL_103;
    case 26:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"cancel";
      v5 = @"Cancel";
      goto LABEL_103;
    case 27:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"exportResearchData";
      v5 = @"Exporting Sensor & Usage Data";
      goto LABEL_103;
    case 28:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"preparing";
      v5 = @"This may take some time.";
      goto LABEL_103;
    case 29:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"exportError";
      v5 = @"Could not export data.";
      goto LABEL_103;
    case 30:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"OK";
      v5 = @"OK";
      goto LABEL_103;
    case 31:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"studyPurpose";
      v5 = @"Study Purpose";
      goto LABEL_103;
    case 32:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"contributeHeader";
      v5 = @"Data this app can contribute";
      goto LABEL_103;
    case 33:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"researchDataForStudy";
      v5 = @"Sensor & Usage Data for study";
      goto LABEL_103;
    case 34:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"viewAppPrivacyPolicy";
      v5 = @"View App Privacy Policy";
      goto LABEL_103;
    case 35:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"viewStudyPrivacyPolicy";
      v5 = @"View Study Privacy Policy";
      goto LABEL_103;
    case 36:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"appUsageTitle";
      v5 = @"How the study will use this data:";
      goto LABEL_103;
    case 37:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"requiredAuthStudyAlertTitle";
      v5 = @"%@ Is Required For this Study.";
      goto LABEL_103;
    case 38:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"requiredAuthAppAlertTitle";
      v5 = @"%@ Requires %@ For Their Study.";
      goto LABEL_103;
    case 39:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"dontEnrollInStudy";
      v5 = @"Don’t Enroll in Study";
      goto LABEL_103;
    case 40:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"change";
      v5 = @"Change Choice";
      goto LABEL_103;
    case 41:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"turnOff";
      v5 = @"Turn Off";
      goto LABEL_103;
    case 42:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"platformPhone";
      v5 = @"iPhone";
      goto LABEL_103;
    case 43:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"platformWatch";
      v5 = @"Apple Watch";
      goto LABEL_103;
    case 44:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"platformAddJointCharacter";
      v5 = @" & ";
      goto LABEL_103;
    case 45:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"platformOnlyFormatter";
      v5 = @"%@ Only";
      goto LABEL_103;
    case 46:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authProgressFormatter";
      v5 = @"%d of %lu";
      goto LABEL_103;
    case 47:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"back";
      v5 = @"Back";
      goto LABEL_103;
    case 48:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authConfirmationTitle";
      v5 = @"Authorization Review";
      goto LABEL_103;
    case 49:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authConfirmationListTitle";
      v5 = @"You’ve given “%@” access to:";
      goto LABEL_103;
    case 50:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authConfirmationDeniedListTitle";
      v5 = @"You’ve denied “%@” access to:";
      goto LABEL_103;
    case 51:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authConfirmationDetailTitle";
      v5 = @"Data Collection and Access";
      goto LABEL_103;
    case 52:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authConfirmationDetail_app";
      v5 = @"You can turn off access to this data at any time in Privacy settings or by deleting %@.";
      goto LABEL_103;
    case 53:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"authConfirmationDetail_study";
      v5 = @"You can turn off access to this data at any time in Privacy settings or by withdrawing from the %@.";
      goto LABEL_103;
    case 54:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"privacyTitle";
      v5 = @"Sensor & Usage Data and Your Privacy";
      goto LABEL_103;
    case 55:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"turnOnTitle";
      v5 = @"Turn On Sensor & Usage Data?";
      goto LABEL_103;
    case 56:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"privacyDetailText";
      v5 = @"Privacy is a fundamental human right. And it’s critically important when you’re taking part in research. To protect your privacy, the following apply to all studies that use Sensor & Usage data.";
      goto LABEL_103;
    case 57:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"turnOnDetailText";
      v5 = @"Turning on Sensor & Usage Data enables research mode on your devices. This allows iPhone to collect and share data with apps and studies you authorize.";
      goto LABEL_103;
    case 58:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"next";
      v5 = @"Next";
      goto LABEL_103;
    case 59:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"welcomeDetailText";
      v5 = @"This sensitive data can help apps and studies further their research. Your device can collect this data on behalf of apps and studies you authorize while still protecting your privacy.";
      goto LABEL_103;
    case 60:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"privacyBullet1";
      v5 = @"Your data will not be sold.";
      goto LABEL_103;
    case 61:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"privacyBullet2";
      v5 = @"You decide which studies you join and control the data you share.";
      goto LABEL_103;
    case 62:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"privacyBullet3";
      v5 = @"You can stop sharing data at any time.";
      goto LABEL_103;
    case 63:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"privacyBullet4";
      v5 = @"Studies must tell you how your data supports their research.";
      goto LABEL_103;
    case 64:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"firstRunLearnMore";
      v5 = @"Learn more about Sensor & Usage Data and Privacy";
      goto LABEL_103;
    case 65:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"turnOnButtonTitle";
      v5 = @"Turn On";
      goto LABEL_103;
    case 66:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"dontTurnOnButtonTitle";
      v5 = @"Don’t Turn On";
      goto LABEL_103;
    case 67:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"openInSettings";
      v5 = @"Open Settings";
      goto LABEL_103;
    case 68:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"followUpTitle";
      goto LABEL_28;
    case 69:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"followUpInfoText";
      v5 = @"Enabling Sensor & Usage Data allows your device to securely collect sensitive data apps and studies need for research.";
      goto LABEL_103;
    case 70:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"followUpActionLabelTitle";
LABEL_28:
      v5 = @"Enable Sensor & Usage Data";
      goto LABEL_103;
    case 71:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"dataRequestTitle";
      v5 = @"Research Sensor & Usage Data Request";
      goto LABEL_103;
    case 72:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"reviewRequest";
      v5 = @"Review Request";
      goto LABEL_103;
    case 73:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"sensorKitDetail";
      v5 = @"The %@ would like to collect and share Sensor & Usage Data from your devices as part of a study.";
      goto LABEL_103;
    case 74:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"doubleQuoteFormatter";
      v5 = @"“%@”";
      goto LABEL_103;
    case 75:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"learnMoreAboutResearchData";
      v5 = @"Learn more about research data…";
      goto LABEL_103;
    case 76:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"studyUsageDescriptionHeader";
      v5 = @"Study Research Purpose";
      goto LABEL_103;
    case 77:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"appUsageDescriptionHeader";
      v5 = @"App Research Purpose";
      goto LABEL_103;
    case 78:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"requestedDataTitle";
      v5 = @"Requested Data";
      goto LABEL_103;
    case 79:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"aboutSensorKit";
      v5 = @"About Sensor & Usage Data";
      goto LABEL_103;
    case 80:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"enableSKTitle";
      v5 = @"Enable Research Sensor & Usage Data";
      goto LABEL_103;
    case 81:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"enableSKDetailText";
      v5 = @"Your devices are not currently collecting any research data.\n\nIn order to share research data with “%@”, you need to turn on Sensor & Usage Data collection in Settings.";
      goto LABEL_103;
    case 82:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"done";
      v5 = @"Done";
      goto LABEL_103;
    case 83:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"disableSensorKitAlertTitle";
      v5 = @"Data Is Required For this Study";
      goto LABEL_103;
    case 84:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"disableSensorKitAlertTitleMultipleStudies";
      v5 = @"Data Is Required For Your Studies";
      goto LABEL_103;
    case 85:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"disableSensorKitAlertDetail";
      v5 = @"Turning off all data will end your contributions to this study.";
      goto LABEL_103;
    case 86:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"disableSensorKitAlertDetailMultipleStudies";
      v5 = @"Turning off all data will end your contributions to multiple studies.";
      goto LABEL_103;
    case 87:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"continue";
      v5 = @"Continue";
      goto LABEL_103;
    case 88:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"migrationTitle";
      v5 = @"“%@” is Now Using Research and Usage Data";
      goto LABEL_103;
    case 89:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"migrationDetail";
      v5 = @"Your study data can now be managed in the Privacy section of the Settings app.";
      goto LABEL_103;
    case 90:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"whenSharedTitleLabel";
      v5 = @"When is it shared:";
      goto LABEL_103;
    case 91:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"downloadAllFooterFaceMetrics";
      v5 = @"Once data has been shared to authorized studies it cannot be retrieved or deleted. Data that is more than 14 days old is deleted from your devices.";
      goto LABEL_103;
    case 92:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"deleteAllFooterLongTermDatastore";
      v5 = @"Collected data is stored in Motion & Fitness. You can manage this data in Motion & Fitness privacy settings.";
      goto LABEL_103;
    case 93:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"exportAllFooterLongTerm";
      v5 = @"Once data has been shared to authorized studies it cannot be retrieved or deleted.";
      goto LABEL_103;
    case 94:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"whatIsSharedTitleLabel";
      v5 = @"What is shared:";
      goto LABEL_103;
    case 95:
      skui_bundle = [MEMORY[0x277CCA8D8] skui_bundle];
      v4 = @"showMotionFitnessTitleLabel";
      v5 = @"Show Motion & Fitness Privacy";
LABEL_103:

      result = [skui_bundle localizedStringForKey:v4 value:v5 table:0];
      break;
    default:
      if (qword_28001A2D8 != -1)
      {
        dispatch_once(&qword_28001A2D8, &__block_literal_global_1);
      }

      v7 = _MergedGlobals_7;
      if (os_log_type_enabled(_MergedGlobals_7, OS_LOG_TYPE_FAULT))
      {
        v9 = 134349056;
        v10 = a3;
        _os_log_fault_impl(&dword_265602000, v7, OS_LOG_TYPE_FAULT, "Failed to find a localized string for code %{public}ld", &v9, 0xCu);
      }

      result = 0;
      break;
  }

  return result;
}

@end