@interface ATXSuggestedPagesHeuristicsAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesHeuristicsAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment
{
  v38[3] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v6 = 0;
  if (type <= 6)
  {
    switch(type)
    {
      case 4:
        v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Home" predictionSource:@"Heuristic"];
        v37[0] = v7;
        v15 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.weather" predictionSource:@"Heuristic"];
        v37[1] = v15;
        v16 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobiletimer" predictionSource:@"Heuristic"];
        v37[2] = v16;
        v17 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.iBooks" predictionSource:@"Heuristic"];
        v37[3] = v17;
        v18 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobilenotes" predictionSource:@"Heuristic"];
        v37[4] = v18;
        v19 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Preferences" predictionSource:@"Heuristic"];
        v37[5] = v19;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];

        break;
      case 5:
        v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Maps" predictionSource:@"Heuristic"];
        v34 = v7;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        goto LABEL_19;
      case 6:
        v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Fitness" predictionSource:@"Heuristic"];
        v35[0] = v7;
        v15 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Health" predictionSource:@"Heuristic"];
        v35[1] = v15;
        v16 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Music" predictionSource:@"Heuristic"];
        v35[2] = v16;
        v17 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.podcasts" predictionSource:@"Heuristic"];
        v35[3] = v17;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
        break;
      default:
        goto LABEL_20;
    }
  }

  else
  {
    if (type <= 8)
    {
      if (type == 7)
      {
        v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobilecal" predictionSource:@"Heuristic"];
        v32[0] = v7;
        v31 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobilenotes" predictionSource:@"Heuristic"];
        v32[1] = v31;
        v30 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.reminders" predictionSource:@"Heuristic"];
        v32[2] = v30;
        v29 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.shortcuts" predictionSource:@"Heuristic"];
        v32[3] = v29;
        v20 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.MobileAddressBook" predictionSource:@"Heuristic"];
        v32[4] = v20;
        v21 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.stocks" predictionSource:@"Heuristic"];
        v32[5] = v21;
        v22 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.DocumentsApp" predictionSource:@"Heuristic"];
        v32[6] = v22;
        v23 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobilemail" predictionSource:@"Heuristic"];
        v32[7] = v23;
        v24 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Numbers" predictionSource:@"Heuristic"];
        v32[8] = v24;
        v25 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Pages" predictionSource:@"Heuristic"];
        v32[9] = v25;
        v26 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Keynote" predictionSource:@"Heuristic"];
        v32[10] = v26;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:11];
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.weather" predictionSource:@"Heuristic"];
        v33[0] = v7;
        v31 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.iBooks" predictionSource:@"Heuristic"];
        v33[1] = v31;
        v30 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.tv" predictionSource:@"Heuristic"];
        v33[2] = v30;
        v29 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Music" predictionSource:@"Heuristic"];
        v33[3] = v29;
        v28 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.podcasts" predictionSource:@"Heuristic"];
        v33[4] = v28;
        v8 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.news" predictionSource:@"Heuristic"];
        v33[5] = v8;
        v9 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.facetime" predictionSource:@"Heuristic"];
        v33[6] = v9;
        v10 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobileslideshow" predictionSource:@"Heuristic"];
        v33[7] = v10;
        v11 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.camera" predictionSource:@"Heuristic"];
        v33[8] = v11;
        v12 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobilegarageband" predictionSource:@"Heuristic"];
        v33[9] = v12;
        v13 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.iMovie" predictionSource:@"Heuristic"];
        v33[10] = v13;
        v14 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.clips" predictionSource:@"Heuristic"];
        v33[11] = v14;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:12];
      }

      goto LABEL_19;
    }

    if (type == 9)
    {
      v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.iBooks" predictionSource:@"Heuristic"];
      v36[0] = v7;
      v15 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.news" predictionSource:@"Heuristic"];
      v36[1] = v15;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      goto LABEL_18;
    }

    if (type != 11)
    {
      goto LABEL_20;
    }

    v7 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.Music" predictionSource:@"Heuristic"];
    v38[0] = v7;
    v15 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.podcasts" predictionSource:@"Heuristic"];
    v38[1] = v15;
    v16 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:@"com.apple.mobilenotes" predictionSource:@"Heuristic"];
    v38[2] = v16;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  }

LABEL_18:
LABEL_19:

LABEL_20:

  return v6;
}

@end