@interface MCGizmoUtilities
+ (id)MCFirstPartyCompanionToWatchAppBundleIDs;
+ (void)watchAppBundleIDsForBundleIDs:(id)ds completion:(id)completion;
@end

@implementation MCGizmoUtilities

+ (id)MCFirstPartyCompanionToWatchAppBundleIDs
{
  if (MCFirstPartyCompanionToWatchAppBundleIDs_onceToken != -1)
  {
    +[MCGizmoUtilities MCFirstPartyCompanionToWatchAppBundleIDs];
  }

  v3 = MCFirstPartyCompanionToWatchAppBundleIDs_watchBundleIDs;

  return v3;
}

void __60__MCGizmoUtilities_MCFirstPartyCompanionToWatchAppBundleIDs__block_invoke()
{
  v49[23] = *MEMORY[0x1E69E9840];
  v48[0] = @"com.apple.AppStore";
  v47 = @"com.apple.AppStore";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v49[0] = v24;
  v48[1] = @"com.apple.mobilecal";
  v46 = @"com.apple.NanoCalendar";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v49[1] = v23;
  v48[2] = @"com.apple.camera";
  v45 = @"com.apple.NanoCamera";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v49[2] = v22;
  v48[3] = @"com.apple.mobiletimer";
  v44[0] = @"com.apple.NanoStopwatch";
  v44[1] = @"com.apple.private.NanoTimer";
  v44[2] = @"com.apple.NanoWorldClock";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v49[3] = v21;
  v48[4] = @"com.apple.Fitness";
  v43[0] = @"com.apple.ActivityMonitorApp";
  v43[1] = @"com.apple.SessionTrackerApp";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v49[4] = v20;
  v48[5] = @"com.apple.Home";
  v42 = @"com.apple.NanoHome";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v49[5] = v19;
  v48[6] = @"com.apple.iBooks";
  v41 = @"com.apple.NanoBooks";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v49[6] = v18;
  v48[7] = @"com.apple.mobilemail";
  v40 = @"com.apple.NanoMail";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v49[7] = v17;
  v48[8] = @"com.apple.Maps";
  v39 = @"com.apple.NanoMaps";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v49[8] = v16;
  v48[9] = @"com.apple.Music";
  v38[0] = @"com.apple.NanoMusic";
  v38[1] = @"com.apple.NanoRadio";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v49[9] = v15;
  v48[10] = @"com.apple.news";
  v37 = @"com.apple.nanonews";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v49[10] = v14;
  v48[11] = @"com.apple.Passbook";
  v36 = @"com.apple.NanoPassbook";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v49[11] = v13;
  v48[12] = @"com.apple.MobileAddressBook";
  v35 = @"com.apple.NanoPeople";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v49[12] = v12;
  v48[13] = @"com.apple.mobilephone";
  v34 = @"com.apple.NanoPhone";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v49[13] = v0;
  v48[14] = @"com.apple.mobileslideshow";
  v33 = @"com.apple.NanoPhotos";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v49[14] = v1;
  v48[15] = @"com.apple.podcasts";
  v32 = @"com.apple.podcasts";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v49[15] = v2;
  v48[16] = @"com.apple.Preferences";
  v31 = @"com.apple.NanoSettings";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v49[16] = v3;
  v48[17] = @"com.apple.reminders";
  v30 = @"com.apple.NanoReminders";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v49[17] = v4;
  v48[18] = @"com.apple.Remote";
  v29 = @"com.apple.NanoRemote";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v49[18] = v5;
  v48[19] = @"com.apple.stocks";
  v28 = @"com.apple.stocks.watchapp";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v49[19] = v6;
  v48[20] = @"com.apple.VoiceMemos";
  v27 = @"com.apple.VoiceMemos";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v49[20] = v7;
  v48[21] = @"com.apple.weather";
  v26 = @"com.apple.weather.watchapp";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v49[21] = v8;
  v48[22] = @"com.apple.Health";
  v25[0] = @"com.apple.NanoMenstrualCycles";
  v25[1] = @"com.apple.NanoHeartRhythm";
  v25[2] = @"com.apple.NanoOxygenSaturation.watchkitapp";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v49[22] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:23];
  v11 = MCFirstPartyCompanionToWatchAppBundleIDs_watchBundleIDs;
  MCFirstPartyCompanionToWatchAppBundleIDs_watchBundleIDs = v10;
}

+ (void)watchAppBundleIDsForBundleIDs:(id)ds completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v6 = objc_opt_new();
  v7 = +[MCGizmoUtilities MCFirstPartyCompanionToWatchAppBundleIDs];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v12);
        v15 = [v7 objectForKey:v14];
        [v6 addObjectsFromArray:v15];
        v16 = objc_alloc(MEMORY[0x1E69635F8]);
        v22 = v13;
        v17 = [v16 initWithBundleIdentifier:v14 allowPlaceholder:1 error:&v22];
        v10 = v22;

        counterpartIdentifiers = [v17 counterpartIdentifiers];

        if (counterpartIdentifiers)
        {
          counterpartIdentifiers2 = [v17 counterpartIdentifiers];
          [v6 addObjectsFromArray:counterpartIdentifiers2];
        }

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  completionCopy[2](completionCopy, v6, v10);
}

@end