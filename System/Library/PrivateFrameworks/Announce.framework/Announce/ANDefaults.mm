@interface ANDefaults
+ (id)sharedInstance;
- (ANDefaults)init;
- (BOOL)BOOLForDefault:(id)default;
- (id)numberForDefault:(id)default;
- (id)objectForDefault:(id)default;
@end

@implementation ANDefaults

- (ANDefaults)init
{
  v66[56] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = ANDefaults;
  v2 = [(ANDefaults *)&v64 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.announce"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v65[0] = @"announce_enabled";
    v63 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Announce Enabled for the Local Device (Only valid when HPSFeatureStatus.isLocalSettingsEnabled == true)"];
    v66[0] = v63;
    v65[1] = @"announcement_receipt_expiration";
    v62 = [ANDefaultsItem itemWithValue:&unk_2836E1E88 userInfo:@"[Int] Announcement Receipt Expiration in Seconds"];
    v66[1] = v62;
    v65[2] = @"ids_server_message_timeout";
    v61 = [ANDefaultsItem itemWithValue:&unk_2836E1DB0 userInfo:@"[Int] IDS Server Message Timeout in Seconds"];
    v66[2] = v61;
    v65[3] = @"announcement_user_notification_expiration";
    v60 = [ANDefaultsItem itemWithValue:&unk_2836E1E98 userInfo:@"[Int] Announcement User Notification Expiration in Seconds"];
    v66[3] = v60;
    v65[4] = @"allow_announcement_to_accessory_physically_in_target_home";
    v59 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Allow Announcements to Accessory if the Accessory is physically located in the target home"];
    v66[4] = v59;
    v65[5] = @"relay_announcements_through_resident";
    v58 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Relay Announcements through a Resident HomePod"];
    v66[5] = v58;
    v65[6] = @"send_transaction_active_memory_timeout";
    v57 = [ANDefaultsItem itemWithValue:&unk_2836E1EA8 userInfo:@"[Double] How long (in seconds) to stay in active memory when sending an announcement"];
    v66[6] = v57;
    v65[7] = @"use_rapport";
    v56 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Use Rapport (when available) in addition to IDS"];
    v66[7] = v56;
    v65[8] = @"rapport_scan_timeout";
    v55 = [ANDefaultsItem itemWithValue:&unk_2836E1EB8 userInfo:@"[Double] How long to wait after starting a scan before checking active devices"];
    v66[8] = v55;
    v65[9] = @"rapport_scan_duration";
    v54 = [ANDefaultsItem itemWithValue:&unk_2836E1EC8 userInfo:@"[Double] How long to continue scanning before deactivating the link client"];
    v66[9] = v54;
    v65[10] = @"rapport_scan_interval";
    v53 = [ANDefaultsItem itemWithValue:&unk_2836E1EA8 userInfo:@"[Double] How often to scan for devices"];
    v66[10] = v53;
    v65[11] = @"rapport_send_message_timeout";
    v52 = [ANDefaultsItem itemWithValue:&unk_2836E1ED8 userInfo:@"[Double] Send Message Timeout"];
    v66[11] = v52;
    v65[12] = @"rapport_send_home_location_status_request_timeout";
    v51 = [ANDefaultsItem itemWithValue:&unk_2836E1EE8 userInfo:@"[Double] Send Home Location Status Request Timeout in seconds"];
    v66[12] = v51;
    v65[13] = @"announcement_deadline";
    v50 = [ANDefaultsItem itemWithValue:&unk_2836E1EF8 userInfo:@"[Double] Announcement deadline"];
    v66[13] = v50;
    v65[14] = @"announcement_playback_minimum_delay";
    v49 = [ANDefaultsItem itemWithValue:&unk_2836E1EE8 userInfo:@"[Double] Minimum Delay Before Playing an Announcement in seconds"];
    v66[14] = v49;
    v65[15] = @"silence_between_tracks_ms";
    v48 = [ANDefaultsItem itemWithValue:&unk_2836E1DE0 userInfo:@"[Int] Silence to insert between each track in milliseconds"];
    v66[15] = v48;
    v65[16] = @"previous_goes_to_previous_ms";
    v47 = [ANDefaultsItem itemWithValue:&unk_2836E1DF8 userInfo:@"[Int] Amount of time into a track where previous goes back to beginning in milliseconds"];
    v66[16] = v47;
    v65[17] = @"start_tone_trim";
    v46 = [ANDefaultsItem itemWithValue:&unk_2836E1F08 userInfo:@"[Double] Amount to trim off the start tone tail in seconds"];
    v66[17] = v46;
    v65[18] = @"transition_tone_trim";
    v45 = [ANDefaultsItem itemWithValue:&unk_2836E1F18 userInfo:@"[Double] Amount to trim off the transition tone tail in seconds"];
    v66[18] = v45;
    v65[19] = @"force_allow_announce_for_all_users";
    v44 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Access Allowed to be true for any HMUser"];
    v66[19] = v44;
    v65[20] = @"force_allow_announce_for_all_accessories";
    v43 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Access Allowed to be true for all Accessories"];
    v66[20] = v43;
    v65[21] = @"force_supports_announce_for_all_accessories";
    v42 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Supported to be true for all Accessories"];
    v66[21] = v42;
    v65[22] = @"force_allow_announce_notifications_for_all_users";
    v41 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Forces Announce Notifications for any HMUser"];
    v66[22] = v41;
    v65[23] = @"force_send_failures";
    v40 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Force Announcement Send Failures"];
    v66[23] = v40;
    v65[24] = @"force_delivery_failures";
    v39 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Force Announcement Delivery Failures"];
    v66[24] = v39;
    v65[25] = @"audio_session_wait_for_call_end_timeout";
    v38 = [ANDefaultsItem itemWithValue:&unk_2836E1F28 userInfo:@"[Double] Audio Session Wait For Call End Timeout in Seconds"];
    v66[25] = v38;
    v65[26] = @"audio_session_activation_retry_delay";
    v37 = [ANDefaultsItem itemWithValue:&unk_2836E1F28 userInfo:@"[Double] Audio Session Activation Retry Delay in Seconds"];
    v66[26] = v37;
    v65[27] = @"audio_session_deactivation_timeout";
    v36 = [ANDefaultsItem itemWithValue:&unk_2836E1E10 userInfo:@"[Int] Audio Session Deactivation Timeout in Seconds"];
    v66[27] = v36;
    v65[28] = @"audio_session_resume_after_interruption_delay";
    v35 = [ANDefaultsItem itemWithValue:&unk_2836E1F38 userInfo:@"[Double] Audio Session Resume after Interruption Delay in Seconds"];
    v66[28] = v35;
    v65[29] = @"resume_playback_after_interruption_timeout";
    v34 = [ANDefaultsItem itemWithValue:&unk_2836E1EA8 userInfo:@"[Double] Playback Audio Session Interruption Resume Timeout in Seconds"];
    v66[29] = v34;
    v65[30] = @"normalize_audio";
    v33 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Normalize Audio in Announcement before sending"];
    v66[30] = v33;
    v65[31] = @"send_analytics";
    v32 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Fire events to CoreAnalytics"];
    v66[31] = v32;
    v65[32] = @"use_coordinated_alerts";
    v31 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Scan devices to find the best one to prominently alert an Announcement Notification"];
    v66[32] = v31;
    v65[33] = @"announcement_entry_age_limit";
    v30 = [ANDefaultsItem itemWithValue:&unk_2836E1E28 userInfo:@"[Int] An announcement's age in seconds that is considered too old for it to be accepted"];
    v66[33] = v30;
    v65[34] = @"announcement_storage_age_limit";
    v29 = [ANDefaultsItem itemWithValue:&unk_2836E1E40 userInfo:@"[Int] An announcement's age in seconds that is considered too old for it to be kept around"];
    v66[34] = v29;
    v65[35] = @"siri_interruption_stops_playback";
    v28 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Siri should explicitly stop playback. When false, playback will be stopped by audio session interruption."];
    v66[35] = v28;
    v65[36] = @"playback_status_returns_immediately";
    v27 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Return playback status immediately after starting playback"];
    v66[36] = v27;
    v65[37] = @"analytics_daily_background_activity";
    v26 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Start a 24 hour interval to run a background task for collecting daily metrics"];
    v66[37] = v26;
    v65[38] = @"analytics_daily_background_activity_ts";
    v25 = [ANDefaultsItem itemWithValue:&unk_2836E1F48 userInfo:@"[Double] A timestamp of when the activity was last triggered"];
    v66[38] = v25;
    v65[39] = @"daily_home_announcements_count";
    v24 = [ANDefaultsItem itemWithValue:MEMORY[0x277CBEC10] userInfo:@"[NSDictionary] A dictionary of the number of announcements sent/received per home per location group"];
    v66[39] = v24;
    v65[40] = @"use_original_audio_file_on_process_failure";
    v23 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Use Original Audio Files if Audio Processing Fails or produces a bad output"];
    v66[40] = v23;
    v65[41] = @"keep_sent_audio_files";
    v22 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Keep Sent Audio Files"];
    v66[41] = v22;
    v65[42] = @"keep_received_audio_files";
    v21 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Keep Received Audio Files"];
    v66[42] = v21;
    v65[43] = @"play_sound_on_critical_failure";
    v20 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Play a Sound when a critical failure occurs. Useful on HomePod, which does not contain a display"];
    v66[43] = v20;
    v65[44] = @"audio_accessory_db_boost";
    v19 = [ANDefaultsItem itemWithValue:&unk_2836E1F58 userInfo:@"[Float] Playback dB Boost for Audio Accessories"];
    v66[44] = v19;
    v65[45] = @"transcription_timeout";
    v18 = [ANDefaultsItem itemWithValue:&unk_2836E1F68 userInfo:@"[Double] On-device transcription wait timeout in seconds"];
    v66[45] = v18;
    v65[46] = @"user_notification_include_transcription";
    v17 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Include transcription in User Notification Body"];
    v66[46] = v17;
    v65[47] = @"user_notification_unified_banner";
    v5 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Post a single user notification for all announcements for each Home"];
    v66[47] = v5;
    v65[48] = @"user_notification_include_recipients";
    v6 = [ANDefaultsItem itemWithValue:&unk_2836E1DC8 userInfo:@"[BOOL] Include recipients in communication user notificaitons"];
    v66[48] = v6;
    v65[49] = @"enable_save_announcement_meta_data";
    v7 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Enable Save Announcement Meta Data in User Defaults"];
    v66[49] = v7;
    v65[50] = @"check_residents_for_ids";
    v8 = [ANDefaultsItem itemWithValue:&unk_2836E1D98 userInfo:@"[BOOL] Perform Resident-level checks when sending over IDS"];
    v66[50] = v8;
    v65[51] = @"track_player_playback_timeout";
    v9 = [ANDefaultsItem itemWithValue:&unk_2836E1F78 userInfo:@"[Double] Track Player Playback Timeout Value in seconds"];
    v66[51] = v9;
    v65[52] = @"accessory_settings_refresh_interval";
    v10 = [ANDefaultsItem itemWithValue:&unk_2836E1F88 userInfo:@"[Double] Accessory settings refresh interval in seconds"];
    v66[52] = v10;
    v65[53] = @"accessory_settings_update_timeout";
    v11 = [ANDefaultsItem itemWithValue:&unk_2836E1E58 userInfo:@"[Double] Accessory setting update timeout in seconds"];
    v66[53] = v11;
    v65[54] = @"disable_homekit_caching";
    v12 = [ANDefaultsItem itemWithValue:MEMORY[0x277CBEC28] userInfo:@"[BOOL] Disable HomeKit Caching"];
    v66[54] = v12;
    v65[55] = @"homekit_refresh_timeout";
    v13 = [ANDefaultsItem itemWithValue:&unk_2836E1F28 userInfo:@"[Double] Duration to wait for HomeKit refresh in seconds"];
    v66[55] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:56];
    defaultsItems = v2->_defaultsItems;
    v2->_defaultsItems = v14;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ANDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedDefaults;

  return v2;
}

uint64_t __28__ANDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedDefaults = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)objectForDefault:(id)default
{
  defaultCopy = default;
  defaultValue = [(NSUserDefaults *)self->_defaults objectForKey:defaultCopy];
  if (!defaultValue)
  {
    v6 = [(NSDictionary *)self->_defaultsItems objectForKeyedSubscript:defaultCopy];
    defaultValue = [v6 defaultValue];
  }

  return defaultValue;
}

- (id)numberForDefault:(id)default
{
  defaultCopy = default;
  defaultValue = [(NSUserDefaults *)self->_defaults objectForKey:defaultCopy];
  if (!defaultValue)
  {
    v6 = [(NSDictionary *)self->_defaultsItems objectForKeyedSubscript:defaultCopy];
    defaultValue = [v6 defaultValue];
  }

  return defaultValue;
}

- (BOOL)BOOLForDefault:(id)default
{
  defaultCopy = default;
  defaultValue = [(NSUserDefaults *)self->_defaults objectForKey:defaultCopy];
  if (!defaultValue)
  {
    v6 = [(NSDictionary *)self->_defaultsItems objectForKeyedSubscript:defaultCopy];
    defaultValue = [v6 defaultValue];
  }

  bOOLValue = [defaultValue BOOLValue];

  return bOOLValue;
}

@end