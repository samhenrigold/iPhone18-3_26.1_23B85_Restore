uint64_t sub_24B7E667C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_assetID(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_assetID(*(a1 + 32), v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v12, v11, v13, v14);

  return isEqualToString;
}

void sub_24B7E7E8C(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = FlexLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Posting kFlexReachabilityChangedNotification for %@", &v12, 0xCu);
  }

  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6, v7, v8);
  objc_msgSend_postNotificationName_object_(v9, v10, @"kFlexNetworkReachabilityChangedNotification", v3, v11);
}

void sub_24B7E8764(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v6 = objc_msgSend_library(WeakRetained, v2, v3, v4, v5);
    objc_msgSend__updateFromCloud(v6, v7, v8, v9, v10);

    WeakRetained = v11;
  }
}

void sub_24B7EA58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24B7EA5D4(void *a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_values(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_objectForKey_(v8, v9, @"SegmentType", v10, v11);

  if (v12 && (objc_msgSend_isEqualToString_(v12, v13, @"SILENCE", v14, v15) & 1) == 0)
  {
    v20 = objc_msgSend_values(v3, v16, v17, v18, v19);
    v24 = objc_msgSend_objectForKey_(v20, v21, @"PeakValue", v22, v23);

    if (v24)
    {
      objc_msgSend_doubleValue(v24, v25, v26, v27, v28);
      v34 = *(a1[4] + 8);
      if (v33 > *(v34 + 24))
      {
        *(v34 + 24) = v33;
      }
    }

    else
    {
      ++*(*(a1[5] + 8) + 24);
      v35 = FlexLogForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_24B7EA8F4(v3, v35, v36, v37, v38);
      }
    }

    v39 = objc_msgSend_values(v3, v29, v30, v31, v32);
    v43 = objc_msgSend_objectForKey_(v39, v40, @"Loudness", v41, v42);

    if (v43)
    {
      objc_msgSend_doubleValue(v43, v44, v45, v46, v47);
      if (v52 >= -70.0)
      {
        v53 = v52;
      }

      else
      {
        v53 = -70.0;
      }

      if (v3)
      {
        objc_msgSend_timeRange(v3, v48, v49, v50, v51);
      }

      else
      {
        memset(v59, 0, sizeof(v59));
      }

      time = *&v59[1];
      Seconds = CMTimeGetSeconds(&time);
      if (Seconds > 0.0)
      {
        *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + v53 * Seconds;
        *(*(a1[7] + 8) + 24) = Seconds + *(*(a1[7] + 8) + 24);
      }
    }

    else
    {
      ++*(*(a1[8] + 8) + 24);
      v54 = FlexLogForCategory(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        sub_24B7EA9AC(v3, v54, v55, v56, v57);
      }
    }
  }
}

void sub_24B7EA8D4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_debug_impl(a1, v10, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_24B7EA8F4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v18 = objc_msgSend_stringWithFormat_(v5, v7, @"Missing peak value for segment item: %@", v8, v9, v6);
  sub_24B7EA8D4(&dword_24B7E5000, v10, v11, "%@", v12, v13, v14, v15, v16, v17);
}

void sub_24B7EA9AC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v18 = objc_msgSend_stringWithFormat_(v5, v7, @"Missing loudness value for segment item: %@", v8, v9, v6);
  sub_24B7EA8D4(&dword_24B7E5000, v10, v11, "%@", v12, v13, v14, v15, v16, v17);
}

uint64_t sub_24B7EAB20(uint64_t a1)
{
  v2 = [FMSongLibrary alloc];
  qword_27F060D28 = objc_msgSend_initWithOptions_(v2, v3, *(a1 + 32), v4, v5);

  return MEMORY[0x2821F96F8]();
}

void sub_24B7EB960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24B7EB984(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (!a3)
    {
      objc_msgSend_setContactedCloud_(WeakRetained, v7, 1, v9, v10);
      objc_msgSend__notifySongsChanged_(*(a1 + 32), v17, v5, v18, v19);
      goto LABEL_8;
    }

    v12 = objc_msgSend_cloudManager(WeakRetained, v7, v8, v9, v10);
    objc_msgSend_retryFetchAllSongs(v12, v13, v14, v15, v16);
  }

  else
  {
    v12 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_24B7E5000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to handle success or error from fetchAllSongsWithCompletion: but self is nil.", v20, 2u);
    }
  }

LABEL_8:
}

uint64_t sub_24B7EC100(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_27F060D48 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, @"songName", a4, a5, @"artistName", @"songVersion", @"artVersion", @"compatibilityVersion", @"recordID", @"mood", @"moodAlt", @"pace", @"arousal", @"valence", @"visualTempo", @"genreStrings", @"regionStrings", @"format", @"style", @"audioEncoderPresetName", @"hidden", @"recalled", 0);

  return MEMORY[0x2821F96F8]();
}

BOOL sub_24B7EE4E8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_msgSend_doubleValue(v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_doubleValue(*(a1 + 32), v13, v14, v15, v16);
  if (v12 > v21)
  {
    *a4 = 1;
  }

  objc_msgSend_doubleValue(v6, v17, v18, v19, v20);
  v23 = v22;
  objc_msgSend_doubleValue(*(a1 + 40), v24, v25, v26, v27);
  if (v23 >= v32)
  {
    objc_msgSend_doubleValue(v6, v28, v29, v30, v31);
    v35 = v34;
    objc_msgSend_doubleValue(*(a1 + 32), v36, v37, v38, v39);
    v33 = v35 < v40;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void sub_24B7EF864(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCABB0];
  v7 = objc_msgSend_count(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, v7, v9, v10);
  v12 = 138412290;
  v13 = v11;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "Found %@ number of loop points in rendition.", &v12, 0xCu);
}

void sub_24B7EFC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B7EFCA8(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    v10 = objc_msgSend_allDurations(*(a1 + 32), v5, v6, v7, v8);
    v14 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, a3 - 1, v12, v13);

    if (v9)
    {
      objc_msgSend_CMTimeValue(v9, v15, v16, v17, v18);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    if (v14)
    {
      objc_msgSend_CMTimeValue(v14, v19, v20, v21, v22);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    *(*(*(a1 + 40) + 8) + 24) = Seconds - CMTimeGetSeconds(&time) + *(*(*(a1 + 40) + 8) + 24);
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void sub_24B7F2230(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_postNotificationName_object_userInfo_(v7, v6, @"FMSongAssetsChanged", *(a1 + 32), 0);
}

void sub_24B7F24C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_postNotificationName_object_userInfo_(v7, v6, @"FMSongAssetDownloadProgressChanged", *(a1 + 32), *(a1 + 40));
}

void sub_24B7F35F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[43] = *MEMORY[0x277D85DE8];
  v7[0] = @"Mood_Ethereal";
  v7[1] = @"Mood_Sentimental";
  v7[2] = @"Mood_Chill";
  v7[3] = @"Mood_Gentle";
  v7[4] = @"Mood_Happy";
  v7[5] = @"Mood_Uplifting";
  v7[6] = @"Mood_Party";
  v7[7] = @"Mood_Action";
  v7[8] = @"Mood_Epic";
  v7[9] = @"Mood_Neutral";
  v7[10] = @"SongPace_Slow";
  v7[11] = @"SongPace_Medium";
  v7[12] = @"SongPace_Fast";
  v7[13] = @"MoodAlt_Sentimental";
  v7[14] = @"MoodAlt_Playful";
  v7[15] = @"MoodAlt_Action";
  v7[16] = @"MoodAlt_Event";
  v7[17] = @"MoodAlt_Chill";
  v7[18] = @"MoodAlt_Retro";
  v7[19] = @"MoodAlt_Pop";
  v7[20] = @"Genre_Blues";
  v7[21] = @"Genre_Classical";
  v7[22] = @"Genre_Country";
  v7[23] = @"Genre_Dance";
  v7[24] = @"Genre_Electronic";
  v7[25] = @"Genre_HipHopRap";
  v7[26] = @"Genre_Holiday";
  v7[27] = @"Genre_Indie";
  v7[28] = @"Genre_Jazz";
  v7[29] = @"Genre_KidsFamily";
  v7[30] = @"Genre_Latin";
  v7[31] = @"Genre_Lounge";
  v7[32] = @"Genre_Metal";
  v7[33] = @"Genre_Pop";
  v7[34] = @"Genre_R&B";
  v7[35] = @"Genre_Reggae";
  v7[36] = @"Genre_Rock";
  v7[37] = @"Genre_SingerSongwriter";
  v7[38] = @"Genre_SoulFunk";
  v7[39] = @"Genre_StageScreen";
  v7[40] = @"Genre_World";
  v7[41] = @"Genre_Alternative";
  v7[42] = @"Genre_Downtempo";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 43, a5);
  v6 = qword_27F060D50;
  qword_27F060D50 = v5;
}

void sub_24B7F43A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B7F43D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B7F43E8(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_hasPrefix_(v11, v3, @"Mood_", v4, v5))
  {
    objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v11, v11, v7, v8);
  }

  else if (objc_msgSend_hasPrefix_(v11, v6, @"SongPace_", v7, v8))
  {
    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v11, v11, v9, v10);
  }
}

void sub_24B7F4570(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_24B7F4600(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_uid(a2, a2, a3, a4, a5);
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_24B7E5000, a3, OS_LOG_TYPE_ERROR, "ERROR: client provide uid %@ does not match expected UID %@", &v8, 0x16u);
}

void _FMLogMessage(const char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v13 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x400uLL, a3, va);
  v10 = strlen(__str);
  if (v10 <= 0x3FE)
  {
    snprintf(&__str[v10], 1024 - v10, " (file: %s, line: %u)", a1, a2);
  }

  v11 = FlexLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_24B7F47A4(__str, v11);
  }
}

void sub_24B7F47A4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "%s", &v2, 0xCu);
}

id FlexLogForCategory(unint64_t a1)
{
  if (a1 >= 4)
  {
    sub_24B7F4938();
  }

  if (qword_28151B350 != -1)
  {
    sub_24B7F4924();
  }

  v2 = qword_28151B358[a1];

  return v2;
}

uint64_t sub_24B7F487C()
{
  v0 = os_log_create("com.apple.FlexMusicKit", "FlexMusicKit");
  v1 = qword_28151B358[0];
  qword_28151B358[0] = v0;

  v2 = os_log_create("com.apple.FlexMusicKit", "FlexMusicSequencer");
  v3 = qword_28151B360;
  qword_28151B360 = v2;

  v4 = os_log_create("com.apple.FlexMusicKit", "FlexMusicCloud");
  v5 = qword_28151B368;
  qword_28151B368 = v4;

  qword_28151B370 = os_log_create("com.apple.FlexMusicKit", "FlexMusicDatabase");

  return MEMORY[0x2821F96F8]();
}

id FlexDynamicCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_24B7F591C(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v33, v37, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v34;
    v15 = MEMORY[0x277CC0898];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        memset(&v32, 0, sizeof(v32));
        if (v17)
        {
          v18 = *(a1 + 32);
          objc_msgSend_doubleValue(v17, v9, v10, v11, v12);
          CMTimeMakeWithSeconds(&lhs, v19, v18);
        }

        else
        {
          lhs = *v15;
        }

        v30 = *(a1 + 36);
        CMTimeAdd(&v32, &lhs, &v30);
        v20 = MEMORY[0x277CCABB0];
        lhs = v32;
        Seconds = CMTimeGetSeconds(&lhs);
        v26 = objc_msgSend_numberWithDouble_(v20, v22, v23, v24, v25, Seconds);
        objc_msgSend_addObject_(v5, v27, v26, v28, v29);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v33, v37, 16);
    }

    while (v13);
  }
}

void sub_24B7F7120(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = FlexLogForCategory(3uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_24B7E5000, v11, OS_LOG_TYPE_DEFAULT, "Failed to load local song local database %@, error %@", &v15, 0x16u);
    }
  }

  else
  {
    v12 = objc_msgSend_newBackgroundContext(*(*(a1 + 32) + 16), v6, v7, v8, v9);
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;
  }
}

void sub_24B7F7488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B7F74BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B7F74D4(uint64_t a1)
{
  v108 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = objc_msgSend_uid(*(a1 + 32), v3, v4, v5, v6);
  v93 = objc_msgSend_initWithUUIDString_(v2, v8, v7, v9, v10);

  if (v93)
  {
    v15 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v11, @"LocalSongs", v13, v14);
    v19 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v16, @"uuid == %@", v17, v18, v93);
    objc_msgSend_setPredicate_(v15, v20, v19, v21, v22);

    v23 = objc_loadWeakRetained(&to);
    v99 = 0;
    v92 = objc_msgSend_executeFetchRequest_error_(v23, v24, v15, &v99, v25);
    v26 = v99;

    if (objc_msgSend_count(v92, v27, v28, v29, v30) || v26)
    {
      if (v26)
      {
        v66 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_24B7F8C0C();
        }

        v67 = *(*(a1 + 40) + 8);
        v68 = v26;
        v35 = *(v67 + 40);
        *(v67 + 40) = v68;
      }

      else
      {
        v35 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_24B7F8C74();
        }
      }
    }

    else
    {
      v31 = MEMORY[0x277CBE408];
      v32 = objc_loadWeakRetained(&to);
      v35 = objc_msgSend_insertNewObjectForEntityForName_inManagedObjectContext_(v31, v33, @"LocalSongs", v32, v34);

      objc_msgSend_setUuid_(v35, v36, v93, v37, v38);
      objc_msgSend_songData(*(a1 + 32), v39, v40, v41, v42);
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v43 = v96 = 0u;
      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v95, v107, 16);
      if (v48)
      {
        v49 = *v96;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v96 != v49)
            {
              objc_enumerationMutation(v43);
            }

            v51 = *(*(&v95 + 1) + 8 * i);
            v52 = objc_msgSend_objectForKeyedSubscript_(v43, v45, v51, v46, v47);
            objc_msgSend_setValue_forKey_(v35, v53, v52, v51, v54);
          }

          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v45, &v95, v107, 16);
        }

        while (v48);
      }
    }

    v65 = v92;
  }

  else
  {
    v55 = MEMORY[0x277CCACA8];
    v56 = objc_msgSend_uid(*(a1 + 32), v11, v12, v13, v14);
    v15 = objc_msgSend_stringWithFormat_(v55, v57, @"'%@' is an invalid UUID. Record not saved to local database", v58, v59, v56);

    v60 = MEMORY[0x277CCA9B8];
    v105 = *MEMORY[0x277CCA068];
    v106 = v15;
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, &v106, &v105, 1);
    v63 = objc_msgSend_errorWithDomain_code_userInfo_(v60, v62, @"com.apple.FlexMusicKit.DatabaseError", 0, v26);
    v64 = *(*(a1 + 40) + 8);
    v65 = *(v64 + 40);
    *(v64 + 40) = v63;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v69 = objc_loadWeakRetained(&to);
    hasChanges = objc_msgSend_hasChanges(v69, v70, v71, v72, v73);

    if (hasChanges)
    {
      v75 = objc_loadWeakRetained(&to);
      v76 = *(*(a1 + 40) + 8);
      obj = *(v76 + 40);
      v80 = objc_msgSend_save_(v75, v77, &obj, v78, v79);
      objc_storeStrong((v76 + 40), obj);

      if (!v80)
      {
        v81 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v86 = objc_msgSend_localizedDescription(*(*(*(a1 + 40) + 8) + 40), v82, v83, v84, v85);
          v91 = objc_msgSend_localizedRecoverySuggestion(*(*(*(a1 + 40) + 8) + 40), v87, v88, v89, v90);
          *buf = 138412546;
          v102 = v86;
          v103 = 2112;
          v104 = v91;
          _os_log_impl(&dword_24B7E5000, v81, OS_LOG_TYPE_DEFAULT, "Error updating database\n%@\n%@", buf, 0x16u);
        }

        goto LABEL_28;
      }
    }

    else if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_28;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_28:

  objc_destroyWeak(&to);
}

void sub_24B7F7B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B7F7B74(uint64_t a1)
{
  v97 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = objc_msgSend_uid(*(a1 + 32), v3, v4, v5, v6);
  v84 = objc_msgSend_initWithUUIDString_(v2, v8, v7, v9, v10);

  if (v84)
  {
    v14 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v11, @"LocalSongs", v12, v13);
    v18 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v15, @"uuid == %@", v16, v17, v84);
    objc_msgSend_setPredicate_(v14, v19, v18, v20, v21);
    v83 = v14;

    v22 = objc_loadWeakRetained(&to);
    v90 = 0;
    v82 = objc_msgSend_executeFetchRequest_error_(v22, v23, v14, &v90, v24);
    v25 = v90;

    if (v25)
    {
      v30 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8C0C();
      }

      v31 = *(*(a1 + 40) + 8);
      v32 = v25;
      v33 = *(v31 + 40);
      *(v31 + 40) = v32;
    }

    else if (objc_msgSend_count(v82, v26, v27, v28, v29))
    {
      v33 = objc_msgSend_firstObject(v82, v34, v35, v36, v37);
      v42 = objc_msgSend_songData(*(a1 + 32), v38, v39, v40, v41);
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v47 = objc_msgSend_allKeys(v42, v43, v44, v45, v46);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v86, v96, 16);
      if (v52)
      {
        v53 = *v87;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v87 != v53)
            {
              objc_enumerationMutation(v47);
            }

            v55 = *(*(&v86 + 1) + 8 * i);
            v56 = objc_msgSend_objectForKeyedSubscript_(v42, v49, v55, v50, v51);
            objc_msgSend_setValue_forKey_(v33, v57, v56, v55, v58);
          }

          v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v86, v96, 16);
        }

        while (v52);
      }
    }

    else
    {
      v33 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8CDC();
      }
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v59 = objc_loadWeakRetained(&to);
    hasChanges = objc_msgSend_hasChanges(v59, v60, v61, v62, v63);

    if (hasChanges)
    {
      v65 = objc_loadWeakRetained(&to);
      v66 = *(*(a1 + 40) + 8);
      obj = *(v66 + 40);
      v70 = objc_msgSend_save_(v65, v67, &obj, v68, v69);
      objc_storeStrong((v66 + 40), obj);

      if (!v70)
      {
        v71 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v76 = objc_msgSend_localizedDescription(*(*(*(a1 + 40) + 8) + 40), v72, v73, v74, v75);
          v81 = objc_msgSend_localizedRecoverySuggestion(*(*(*(a1 + 40) + 8) + 40), v77, v78, v79, v80);
          *buf = 138412546;
          v93 = v76;
          v94 = 2112;
          v95 = v81;
          _os_log_impl(&dword_24B7E5000, v71, OS_LOG_TYPE_DEFAULT, "Error updating database\n%@\n%@", buf, 0x16u);
        }

        goto LABEL_26;
      }
    }

    else if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_26;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_26:

  objc_destroyWeak(&to);
}

void sub_24B7F8148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24B7F817C(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, (a1 + 64));
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = objc_msgSend_initWithUUIDString_(v2, v3, *(a1 + 32), v4, v5);
  if (v9)
  {
    v10 = objc_msgSend_fetchRequestWithEntityName_(MEMORY[0x277CBE428], v6, @"LocalSongs", v7, v8);
    v14 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v11, @"uuid == %@", v12, v13, v9);
    objc_msgSend_setPredicate_(v10, v15, v14, v16, v17);

    v18 = objc_loadWeakRetained(&to);
    v70 = 0;
    v21 = objc_msgSend_executeFetchRequest_error_(v18, v19, v10, &v70, v20);
    v22 = v70;

    if (v22)
    {
      v27 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8C0C();
      }

      v28 = *(*(a1 + 48) + 8);
      v29 = v22;
      v30 = *(v28 + 40);
      *(v28 + 40) = v29;
    }

    else if (objc_msgSend_count(v21, v23, v24, v25, v26))
    {
      v30 = objc_msgSend_firstObject(v21, v31, v32, v33, v34);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v35 = *(a1 + 40);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v66, v76, 16);
      if (v39)
      {
        v40 = *v67;
        do
        {
          v41 = 0;
          do
          {
            if (*v67 != v40)
            {
              objc_enumerationMutation(v35);
            }

            objc_msgSend_setValue_forKey_(v30, v37, 0, *(*(&v66 + 1) + 8 * v41++), v38);
          }

          while (v39 != v41);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v66, v76, 16);
        }

        while (v39);
      }
    }

    else
    {
      v30 = FlexLogForCategory(3uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8CDC();
      }
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v42 = objc_loadWeakRetained(&to);
    hasChanges = objc_msgSend_hasChanges(v42, v43, v44, v45, v46);

    if (hasChanges)
    {
      v48 = objc_loadWeakRetained(&to);
      v49 = *(*(a1 + 48) + 8);
      obj = *(v49 + 40);
      v53 = objc_msgSend_save_(v48, v50, &obj, v51, v52);
      objc_storeStrong((v49 + 40), obj);

      if (!v53)
      {
        v54 = FlexLogForCategory(3uLL);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v59 = objc_msgSend_localizedDescription(*(*(*(a1 + 48) + 8) + 40), v55, v56, v57, v58);
          v64 = objc_msgSend_localizedRecoverySuggestion(*(*(*(a1 + 48) + 8) + 40), v60, v61, v62, v63);
          *buf = 138412546;
          v73 = v59;
          v74 = 2112;
          v75 = v64;
          _os_log_impl(&dword_24B7E5000, v54, OS_LOG_TYPE_DEFAULT, "Error updating database\n%@\n%@", buf, 0x16u);
        }

        goto LABEL_26;
      }
    }

    else if (*(*(*(a1 + 48) + 8) + 40))
    {
      goto LABEL_26;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_26:

  objc_destroyWeak(&to);
}

void sub_24B7F8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B7F868C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 24);
  v46 = 0;
  v8 = objc_msgSend_executeFetchRequest_error_(v7, a2, v6, &v46, a5);
  v9 = v46;
  if (objc_msgSend_count(v8, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_firstObject(v8, v14, v15, v16, v17);
    v23 = objc_msgSend_date(v18, v19, v20, v21, v22);
    v24 = *(*(a1 + 48) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

  else if (v8)
  {
    if (!objc_msgSend_count(v8, v14, v15, v16, v17))
    {
      v30 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v26, v27, v28, v29);
      v31 = *(*(a1 + 48) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      objc_msgSend__insertFirstCloudCheckDate_andSave_(*(a1 + 32), v33, *(*(*(a1 + 48) + 8) + 40), 1, v34);
    }
  }

  else
  {
    v35 = FlexLogForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F8D44(v9, v35, v36, v37, v38);
    }

    v43 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v39, v40, v41, v42);
    v44 = *(*(a1 + 48) + 8);
    v45 = *(v44 + 40);
    *(v44 + 40) = v43;
  }
}

void sub_24B7F88A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 24);
  v40 = 0;
  v8 = objc_msgSend_executeFetchRequest_error_(v7, a2, v6, &v40, a5);
  v9 = v40;
  if (objc_msgSend_count(v8, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_firstObject(v8, v14, v15, v16, v17);
    objc_msgSend_setDate_(v18, v19, *(a1 + 48), v20, v21);
LABEL_3:

    goto LABEL_6;
  }

  if (!v8)
  {
    v18 = FlexLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_24B7F8D44(v9, v18, v36, v37, v38);
    }

    goto LABEL_3;
  }

  objc_msgSend__insertFirstCloudCheckDate_andSave_(*(a1 + 32), v14, *(a1 + 48), 0, v17);
LABEL_6:
  if (objc_msgSend_hasChanges(*(*(a1 + 32) + 24), v22, v23, v24, v25))
  {
    v29 = *(*(a1 + 32) + 24);
    v39 = 0;
    v30 = objc_msgSend_save_(v29, v26, &v39, v27, v28);
    v31 = v39;
    if ((v30 & 1) == 0)
    {
      v32 = FlexLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_24B7F8DC8(v31, v32, v33, v34, v35);
      }
    }
  }
}

void sub_24B7F8B08(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_24B7F8B4C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_24B7F8B6C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_24B7F8B88(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4, a5);
  sub_24B7F8B40();
  sub_24B7F8B08(&dword_24B7E5000, v6, v7, "Error fetching song records:\n%@", v8, v9, v10, v11);
}

void sub_24B7F8D44(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4, a5);
  sub_24B7F8B40();
  sub_24B7F8B08(&dword_24B7E5000, v6, v7, "Failed to execute date fetch request\n%@", v8, v9, v10, v11);
}

void sub_24B7F8DC8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_localizedDescription(a1, a2, a3, a4, a5);
  sub_24B7F8B40();
  sub_24B7F8B08(&dword_24B7E5000, v6, v7, "Error saving last cloud check date to database.\n%@", v8, v9, v10, v11);
}

BOOL sub_24B7F937C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_attributes(a1, v5, v6, v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_objectForKeyedSubscript_(v9, v11, @"uuid", v12, v13);
  v15 = FlexDynamicCast(v10, v14);

  v16 = objc_opt_class();
  v20 = objc_msgSend_objectForKeyedSubscript_(v9, v17, @"FMAssetType", v18, v19);
  v21 = FlexDynamicCast(v16, v20);

  if (objc_msgSend_isEqualToString_(v21, v22, @"SongBundle", v23, v24))
  {
    v28 = FMSongBundleAssetID;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v21, v25, @"Artwork", v26, v27))
    {
LABEL_10:
      v77 = 0;
      goto LABEL_15;
    }

    v28 = FMSongArtworkAssetID;
  }

  v29 = *v28;
  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v31 = objc_opt_class();
  v35 = objc_msgSend_objectForKeyedSubscript_(v9, v32, @"_ContentVersion", v33, v34);
  v36 = FlexDynamicCast(v31, v35);
  v41 = objc_msgSend_integerValue(v36, v37, v38, v39, v40);

  v42 = objc_opt_class();
  v46 = objc_msgSend_objectForKeyedSubscript_(v9, v43, @"_CompatibilityVersion", v44, v45);
  v47 = FlexDynamicCast(v42, v46);
  v52 = objc_msgSend_integerValue(v47, v48, v49, v50, v51);

  v57 = objc_msgSend_songUID(v4, v53, v54, v55, v56);
  if (objc_msgSend_isEqualToString_(v57, v58, v15, v59, v60))
  {
    v65 = objc_msgSend_assetID(v4, v61, v62, v63, v64);
    v77 = objc_msgSend_isEqualToString_(v65, v66, v30, v67, v68) && objc_msgSend_contentVersion(v4, v69, v70, v71, v72) == v41 && objc_msgSend_compatibilityVersion(v4, v73, v74, v75, v76) == v52;
  }

  else
  {
    v77 = 0;
  }

LABEL_15:
  return v77;
}

void sub_24B7F9C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B7F9CB8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained[28] == a2 || WeakRetained[29] == a2)
  {
    v7 = WeakRetained;
    objc_msgSend_fetchAllSongsWithCompletion_(WeakRetained, v4, &unk_285EA04B0, v5, v6);
    WeakRetained = v7;
  }
}

void sub_24B7FA5FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_24B7FA618(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = objc_msgSend_attributes(v3, v4, v5, v6, v7);
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"_CompatibilityVersion", v11, v12);
    v18 = objc_msgSend_integerValue(v13, v14, v15, v16, v17);

    if (objc_msgSend_isEqualToString_(WeakRetained[5], v19, @"Ph", v20, v21))
    {
      v25 = (v18 - 1) >= 2;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = objc_msgSend_objectForKeyedSubscript_(v9, v22, @"uuid", v23, v24);
      v30 = objc_msgSend_objectForKey_(*(a1 + 32), v27, v26, v28, v29);
      v35 = v30;
      if (v30)
      {
        v36 = objc_msgSend_attributes(v30, v31, v32, v33, v34);
        v37 = MEMORY[0x277CBEB98];
        v41 = objc_msgSend_objectForKeyedSubscript_(v36, v38, @"clientIDs", v39, v40);
        v45 = objc_msgSend_setWithArray_(v37, v42, v41, v43, v44);

        v49 = objc_msgSend_containsObject_(v45, v46, WeakRetained[5], v47, v48);
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

uint64_t sub_24B7FA7D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  qword_27F060D60 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], a2, @"%K <= %d", a4, a5, @"_CompatibilityVersion", 3);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_24B7FAC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_stringByDeletingPathExtension(v3, v4, v5, v6, v7);
  if (objc_msgSend_containsString_(v8, v9, *(a1 + 32), v10, v11))
  {
    v16 = objc_msgSend_pathExtension(v3, v12, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v16, v17, @"smsbundle", v18, v19);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_24B7FAFEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_stringByDeletingPathExtension(v3, v4, v5, v6, v7);
  if (objc_msgSend_containsString_(v8, v9, *(a1 + 32), v10, v11))
  {
    v16 = objc_msgSend_pathExtension(v3, v12, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v16, v17, @"jpg", v18, v19);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

void sub_24B7FB4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B7FB508(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = objc_msgSend_allObjects(a1[4], v2, v3, v4, v5);
    v12 = objc_msgSend_arrayWithArray_(v7, v9, v8, v10, v11);

    v13 = MEMORY[0x277CCAC30];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_24B7FB71C;
    v35[3] = &unk_27900EF90;
    v36 = a1[5];
    v37 = a1[6];
    v17 = objc_msgSend_predicateWithBlock_(v13, v14, v35, v15, v16);
    objc_msgSend_filterUsingPredicate_(v12, v18, v17, v19, v20);

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = v12;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v31, v39, 16);
    if (v23)
    {
      v28 = v23;
      v29 = *v32;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v21);
          }

          objc_msgSend_purgeSync(*(*(&v31 + 1) + 8 * i), v24, v25, v26, v27, v31);
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v31, v39, 16);
      }

      while (v28);
    }
  }

  else
  {
    v21 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v21, OS_LOG_TYPE_DEFAULT, "StrongSelf is nil in _newestContentSetFromAssets. Returning...", buf, 2u);
    }
  }
}

uint64_t sub_24B7FB71C(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = objc_msgSend_attributes(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"uuid", v10, v11);
  if (objc_msgSend_containsObject_(*(a1 + 32), v13, v3, v14, v15))
  {
LABEL_15:
    if ((objc_msgSend_containsObject_(*(a1 + 40), v16, v12, v17, v18) & 1) == 0)
    {
      isPresent = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v93 = a1;
    v94 = v8;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v19 = *(a1 + 32);
    v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v101, v105, 16);
    if (v100)
    {
      v25 = *v102;
      v98 = *v102;
      do
      {
        for (i = 0; i != v100; ++i)
        {
          if (*v102 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v101 + 1) + 8 * i);
          v28 = objc_msgSend_attributes(v27, v21, v22, v23, v24);
          v32 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"uuid", v30, v31);
          isEqualToString = objc_msgSend_isEqualToString_(v32, v33, v12, v34, v35);

          if (isEqualToString)
          {
            v99 = objc_msgSend_attributes(v27, v21, v22, v23, v24);
            v40 = objc_msgSend_objectForKeyedSubscript_(v99, v37, @"_ContentVersion", v38, v39);
            v45 = objc_msgSend_integerValue(v40, v41, v42, v43, v44);
            v50 = objc_msgSend_attributes(v3, v46, v47, v48, v49);
            v54 = objc_msgSend_objectForKeyedSubscript_(v50, v51, @"_ContentVersion", v52, v53);
            if (v45 == objc_msgSend_integerValue(v54, v55, v56, v57, v58))
            {
              v96 = objc_msgSend_attributes(v27, v59, v60, v61, v62);
              v66 = objc_msgSend_objectForKeyedSubscript_(v96, v63, @"_CompatibilityVersion", v64, v65);
              v97 = objc_msgSend_integerValue(v66, v67, v68, v69, v70);
              objc_msgSend_attributes(v3, v71, v72, v73, v74);
              v76 = v75 = v3;
              objc_msgSend_objectForKeyedSubscript_(v76, v77, @"_CompatibilityVersion", v78, v79);
              v80 = v19;
              v82 = v81 = v12;
              v95 = objc_msgSend_integerValue(v82, v83, v84, v85, v86);

              v12 = v81;
              v19 = v80;

              v3 = v75;
              v25 = v98;
              if (v97 == v95)
              {

                a1 = v93;
                v8 = v94;
                goto LABEL_15;
              }
            }

            else
            {

              v25 = v98;
            }
          }
        }

        v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v101, v105, 16);
      }

      while (v100);
    }

    v8 = v94;
  }

  isPresent = objc_msgSend_isPresent(v3, v87, v88, v89, v90);
LABEL_18:

  return isPresent;
}

void sub_24B7FBB30(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = FlexLogForCategory(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend__mobileAssetDownloadResultStringValue_(*(a1 + 32), v5, a2, v6, v7);
    *buf = 138412290;
    v94 = v8;
    _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Completed catalog download with MADownloadResult: %@", buf, 0xCu);
  }

  v12 = objc_msgSend__responseForDownloadResult_(*(a1 + 32), v9, a2, v10, v11);
  v16 = v12;
  if (v12 > 1)
  {
    if (v12 == 3)
    {
      goto LABEL_19;
    }

    if (v12 != 2)
    {
      return;
    }

LABEL_9:
    v17 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(*(a1 + 32), v13, @"SongBundle", 0, v15);
    v22 = objc_msgSend_set(MEMORY[0x277CBEB58], v18, v19, v20, v21);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v23 = v17;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v86, v92, 16);
    if (v25)
    {
      v30 = v25;
      v31 = *v87;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v87 != v31)
          {
            objc_enumerationMutation(v23);
          }

          v33 = *(*(&v86 + 1) + 8 * i);
          v34 = objc_msgSend_attributes(v33, v26, v27, v28, v29);
          v38 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"uuid", v36, v37);

          if (v38)
          {
            v43 = objc_msgSend_attributes(v33, v39, v40, v41, v42);
            v47 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"uuid", v45, v46);
            objc_msgSend_addObject_(v22, v48, v47, v49, v50);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v86, v92, 16);
      }

      while (v30);
    }

    v54 = objc_msgSend__metadataMappingForUUIDSet_(*(a1 + 32), v51, v22, v52, v53);
    v57 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(*(a1 + 32), v55, v23, v54, v56);
    v60 = objc_msgSend__processResults_metadataMapping_(*(a1 + 32), v58, v57, v54, v59);
    v61 = *(a1 + 40);
    v66 = objc_msgSend_cloudManagedSongs(*(a1 + 32), v62, v63, v64, v65);
    (*(v61 + 16))(v61, v66, 0);

    v69 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(*(a1 + 32), v67, @"Artwork", 0, v68);
    v72 = objc_msgSend__newestContentSetFromAssets_metadataMapping_(*(a1 + 32), v70, v69, v54, v71);
    v75 = objc_msgSend_filterByClientIDForAssets_forMetadataMapping_(*(a1 + 32), v73, v72, v54, v74);

    v78 = objc_msgSend__processResults_metadataMapping_(*(a1 + 32), v76, v75, v54, v77);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

  if (v12 == 1)
  {
LABEL_19:
    v23 = objc_msgSend__mobileAssetDownloadResultStringValue_(*(a1 + 32), v13, a2, v14, v15);
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"An error occurred while downloading the Mobile Assets catalog: %@", v80, v81, v23);
    v82 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v94 = v22;
      _os_log_impl(&dword_24B7E5000, v82, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v83 = *MEMORY[0x277CCA470];
    v90[0] = *MEMORY[0x277CCA450];
    v90[1] = v83;
    v91[0] = v22;
    v91[1] = v23;
    v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, v91, v90, 2);
    v75 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v85, @"com.apple.FlexMusicKit", v16, v54);
    (*(*(a1 + 40) + 16))();
LABEL_22:
  }
}

uint64_t sub_24B7FDADC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_attributes(a2, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"_ContentVersion", v11, v12);
  v18 = objc_msgSend_attributes(v4, v14, v15, v16, v17);

  v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"_ContentVersion", v20, v21);
  v26 = objc_msgSend_compare_(v13, v23, v22, v24, v25);

  return v26;
}

void sub_24B7FE338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend__runNextAsyncAssetDownloadAndPurge(WeakRetained, v2, v3, v4, v5);
  }

  else
  {
    v7 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_24B7E5000, v7, OS_LOG_TYPE_DEFAULT, "FlexMobileAssetManagerV2 is nil from _dispatchNextAsyncAssetDownloadAndPurge:", v8, 2u);
    }
  }
}

void sub_24B7FED34(uint64_t a1)
{
  v71[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    v17 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v69) = 0;
      _os_log_impl(&dword_24B7E5000, v17, OS_LOG_TYPE_DEFAULT, "FlexMobileAssetManagerV2 is nil from _dispatchNextAsyncAssetDownloadAndPurge:", &v69, 2u);
    }

    goto LABEL_18;
  }

  v7 = objc_msgSend_assetID(*(a1 + 32), v2, v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"FMSongBundleAssetID", v9, v10);

  if (isEqualToString)
  {
    v16 = FlexMobileAssetPropertySongBundle;
  }

  else
  {
    v18 = objc_msgSend_assetID(*(a1 + 32), v12, v13, v14, v15);
    v22 = objc_msgSend_isEqualToString_(v18, v19, @"FMSongArtworkAssetID", v20, v21);

    if (!v22)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v16 = FlexMobileAssetPropertyArtwork;
  }

  v17 = *v16;
  if (!v17 || (v27 = *(a1 + 40), objc_msgSend_uid(*(a1 + 48), v23, v24, v25, v26), v28 = objc_claimAutoreleasedReturnValue(), v71[0] = v28, objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v29, v71, 1, v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend__mobileAssetsForAssetType_andUIDs_(v27, v32, v17, v31, v33), v34 = objc_claimAutoreleasedReturnValue(), v31, v28, objc_msgSend_assetWithNewestContentVersionInAssets_preferInstalled_(FlexMobileAssetManagerV2, v35, v34, 0, v36), v37 = objc_claimAutoreleasedReturnValue(), v34, !v37))
  {
LABEL_15:
    v37 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 56);
      v69 = 138412290;
      v70 = v47;
      _os_log_impl(&dword_24B7E5000, v37, OS_LOG_TYPE_DEFAULT, "Not downloading %@ because no mobile asset exists.", &v69, 0xCu);
    }

    goto LABEL_17;
  }

  if (objc_msgSend_isPresent(v37, v38, v39, v40, v41))
  {
    v45 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 56);
      v69 = 138412290;
      v70 = v46;
      _os_log_impl(&dword_24B7E5000, v45, OS_LOG_TYPE_DEFAULT, "Not downloading %@ because mobile asset is alredy installed.", &v69, 0xCu);
    }

LABEL_17:
    goto LABEL_18;
  }

  if ((objc_msgSend__isDownloadingAsset_(*(a1 + 40), v42, *(a1 + 32), v43, v44) & 1) == 0)
  {
    v48 = WeakRetained[7];
    objc_sync_enter(v48);
    objc_msgSend_addObject_(WeakRetained[9], v49, v37, v50, v51);
    objc_msgSend_setObject_forKey_(WeakRetained[11], v52, *(a1 + 64), v37, v53);
    if (objc_msgSend_containsObject_(WeakRetained[12], v54, v37, v55, v56))
    {
      objc_msgSend_removeObject_(WeakRetained[12], v57, v37, v58, v59);
    }

    if (objc_msgSend_containsObject_(WeakRetained[13], v57, v37, v58, v59))
    {
      objc_msgSend_removeObject_(WeakRetained[13], v60, v37, v61, v62);
    }

    objc_sync_exit(v48);

    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 48), v63, *(a1 + 32), 0, v64, 0.01);
    objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(WeakRetained, v65, v66, v67, v68);
  }

LABEL_18:
}

void sub_24B7FF5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B7FF620(uint64_t a1, void *a2)
{
  v19 = a2;
  if (objc_msgSend_totalExpected(v19, v3, v4, v5, v6) < 1)
  {
    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 32), v7, *(a1 + 40), 0, v10, 0.01);
  }

  else
  {
    v11 = objc_msgSend_totalWritten(v19, v7, v8, v9, v10);
    v16 = v11 / objc_msgSend_totalExpected(v19, v12, v13, v14, v15);
    objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 32), v17, *(a1 + 40), 0, v18, v16);
  }
}

void sub_24B7FF6AC(uint64_t a1, uint64_t a2)
{
  v117 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = FlexLogForCategory(2uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v6)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = objc_msgSend__mobileAssetDownloadResultStringValue_(*(a1 + 48), v7, a2, v8, v9);
      *buf = 138412802;
      v112 = v11;
      v113 = 2112;
      v114 = v10;
      v115 = 2112;
      v116 = v12;
      _os_log_impl(&dword_24B7E5000, v5, OS_LOG_TYPE_DEFAULT, "Ending download task for UID: %@ assetID: %@. MADownloadResult: %@", buf, 0x20u);
    }

    v16 = objc_msgSend__responseForDownloadResult_(WeakRetained, v13, a2, v14, v15);
    v17 = v16;
    v18 = 0;
    if (v16 > 1)
    {
      if (v16 == 3)
      {
        goto LABEL_15;
      }

      if (v16 != 2)
      {
LABEL_31:
        v95 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = *(a1 + 32);
          v97 = *(a1 + 40);
          *buf = 138412546;
          v112 = v96;
          v113 = 2112;
          v114 = v97;
          _os_log_impl(&dword_24B7E5000, v95, OS_LOG_TYPE_DEFAULT, "Completed processing of %@ %@", buf, 0x16u);
        }

        if ((v18 & 1) == 0)
        {
          v102 = WeakRetained[7];
          objc_sync_enter(v102);
          objc_msgSend_removeObject_(WeakRetained[10], v103, *(a1 + 56), v104, v105);
          objc_msgSend_removeObjectForKey_(WeakRetained[11], v106, *(a1 + 56), v107, v108);
          objc_sync_exit(v102);
        }

        objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(WeakRetained, v98, v99, v100, v101);
        goto LABEL_36;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_31;
      }

LABEL_15:
      v50 = WeakRetained[7];
      objc_sync_enter(v50);
      if (objc_msgSend_containsObject_(WeakRetained[10], v51, *(a1 + 56), v52, v53))
      {
        v54 = FlexLogForCategory(2uLL);
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v55 = *(a1 + 32);
        v56 = *(a1 + 40);
        *buf = 138412802;
        v112 = v55;
        v113 = 2112;
        v114 = v56;
        v115 = 2048;
        v116 = v17;
        v57 = "Asset download failed when attempting to download asset %@ %@ - %lu";
        v58 = v54;
        v59 = 32;
      }

      else
      {
        v54 = FlexLogForCategory(2uLL);
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v60 = *(a1 + 32);
        v61 = *(a1 + 40);
        *buf = 138412546;
        v112 = v60;
        v113 = 2112;
        v114 = v61;
        v57 = "Asset download canceled %@ %@";
        v58 = v54;
        v59 = 22;
      }

      _os_log_impl(&dword_24B7E5000, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
LABEL_21:

      objc_msgSend_removeObjectForKey_(WeakRetained[11], v62, *(a1 + 56), v63, v64);
      objc_sync_exit(v50);

      if (a2 == 10)
      {
        if (objc_msgSend_containsObject_(WeakRetained[13], v65, *(a1 + 56), v66, v67))
        {
          goto LABEL_23;
        }
      }

      else if (a2 == 48)
      {
LABEL_23:
        objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v65, *(a1 + 72), 0, v67, 0.0);
LABEL_30:
        v18 = 0;
        goto LABEL_31;
      }

      v85 = *MEMORY[0x277CCA470];
      v109[0] = *MEMORY[0x277CCA450];
      v109[1] = v85;
      v110[0] = @"Download operation was unsuccessful.";
      v86 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v65, @"MobileAsset error %li", v66, v67, a2);
      v110[1] = v86;
      v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v87, v110, v109, 2);

      v90 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v89, @"com.apple.FlexMusicKit", a2, v88);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v91, *(a1 + 72), v90, v92, -1.0);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v93, *(a1 + 72), 0, v94, 0.0);

      goto LABEL_30;
    }

    v19 = WeakRetained[7];
    objc_sync_enter(v19);
    v23 = objc_msgSend_containsObject_(WeakRetained[10], v20, *(a1 + 56), v21, v22);
    objc_sync_exit(v19);

    if (v23)
    {
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v24, *(a1 + 72), 0, v25, 1.0);
      objc_msgSend_refreshState(*(a1 + 56), v26, v27, v28, v29);
      v30 = WeakRetained[7];
      objc_sync_enter(v30);
      objc_msgSend_removeObject_(WeakRetained[10], v31, *(a1 + 56), v32, v33);
      objc_msgSend_removeObjectForKey_(WeakRetained[11], v34, *(a1 + 56), v35, v36);
      objc_sync_exit(v30);

      v40 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v37, *(a1 + 32), v38, v39);
      v44 = objc_msgSend__metadataMappingForUUIDSet_(WeakRetained, v41, v40, v42, v43);

      v48 = objc_msgSend_objectForKey_(v44, v45, *(a1 + 32), v46, v47);
      objc_msgSend__updateExistingSong_usingAsset_metadataAsset_(WeakRetained, v49, *(a1 + 64), *(a1 + 56), v48);
    }

    else
    {
      v68 = FlexLogForCategory(2uLL);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(a1 + 32);
        v70 = *(a1 + 40);
        *buf = 138412546;
        v112 = v69;
        v113 = 2112;
        v114 = v70;
        _os_log_impl(&dword_24B7E5000, v68, OS_LOG_TYPE_DEFAULT, "Cancel request after downloading, purging %@ %@", buf, 0x16u);
      }

      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v71, *(a1 + 72), 0, v72, -1.0);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 64), v73, *(a1 + 72), 0, v74, 0.0);
      v75 = WeakRetained[7];
      objc_sync_enter(v75);
      objc_msgSend_addObject_(WeakRetained[12], v76, *(a1 + 56), v77, v78);
      objc_msgSend_removeObject_(WeakRetained[10], v79, *(a1 + 56), v80, v81);
      objc_msgSend_removeObjectForKey_(WeakRetained[11], v82, *(a1 + 56), v83, v84);
      objc_sync_exit(v75);
    }

    v18 = 1;
    goto LABEL_31;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_24B7E5000, v5, OS_LOG_TYPE_DEFAULT, "attempted to download but no cloud manager", buf, 2u);
  }

LABEL_36:
}

void sub_24B8001F0(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = FlexLogForCategory(2uLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = objc_msgSend__mobileAssetCancelDownloadResultStringValue_(*(a1 + 48), v6, a2, v7, v8);
      *buf = 138412802;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Cancel download failed for mobile asset with songUID: %@ assetID: %@ MACancelDownloadResult: %@", buf, 0x20u);
    }

    if (a2 != 3)
    {
      v15 = *MEMORY[0x277CCA470];
      v29[0] = *MEMORY[0x277CCA450];
      v29[1] = v15;
      v30[0] = @"Cancel operation was unsuccessful.";
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"MobileAsset error %li", v13, v14, a2);
      v30[1] = v16;
      v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v30, v29, 2);

      v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v19, @"com.apple.FlexMusicKit", a2, v18);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v21, *(a1 + 64), v20, v22, -1.0);
      objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v23, *(a1 + 64), 0, v24, 0.0);

      return;
    }
  }

  else
  {
    if (v5)
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      *buf = 138412546;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "Cancel download success for mobile asset with songUID: %@ assetID: %@ ", buf, 0x16u);
    }
  }

  objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v12, *(a1 + 64), 0, v14, -1.0);
  objc_msgSend_updateAsset_downloadProgress_error_(*(a1 + 56), v27, *(a1 + 64), 0, v28, 0.0);
}

void sub_24B8007B8(uint64_t a1)
{
  v247[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[7];
    objc_sync_enter(v4);
    if (objc_msgSend_containsObject_(*(v3 + 104), v5, *(a1 + 32), v6, v7))
    {
      objc_sync_exit(v4);

      if (!objc_msgSend_isPresent(*(a1 + 32), v12, v13, v14, v15))
      {
LABEL_54:
        v211 = *(v3 + 56);
        objc_sync_enter(v211);
        objc_msgSend_removeObject_(*(v3 + 104), v212, *(a1 + 32), v213, v214);
        objc_sync_exit(v211);

        v215 = *(v3 + 144);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_24B801048;
        block[3] = &unk_27900E970;
        block[4] = v3;
        dispatch_async(v215, block);
        goto LABEL_55;
      }

      v19 = (a1 + 48);
      v225 = objc_msgSend_existingAssetWithID_(*(a1 + 40), v16, *(a1 + 48), v17, v18);
      if (objc_msgSend_isEqualToString_(*(a1 + 48), v20, @"FMSongBundleAssetID", v21, v22))
      {
        objc_msgSend_existingAssetWithID_(*(a1 + 40), v23, @"FMSongArtworkAssetID", v24, v25);
      }

      else
      {
        objc_msgSend_existingAssetWithID_(*(a1 + 40), v23, @"FMSongBundleAssetID", v24, v25);
      }
      v224 = ;
      v26 = [FlexMobileAssetV2SongAsset alloc];
      v27 = *v19;
      v32 = objc_msgSend_contentVersion(v225, v28, v29, v30, v31);
      v37 = objc_msgSend_compatibilityVersion(v225, v33, v34, v35, v36);
      v223 = objc_msgSend_initWithAssetID_localURL_cloudManager_contentVersion_compatibilityVersion_(v26, v38, v27, 0, v3, v32, v37);
      if (objc_msgSend_isEqualToString_(*v19, v39, @"FMSongBundleAssetID", v40, v41))
      {
        v217 = [FlexSongProxy alloc];
        v222 = objc_msgSend_uid(*(a1 + 40), v45, v46, v47, v48);
        v221 = objc_msgSend_songName(*(a1 + 40), v49, v50, v51, v52);
        v220 = objc_msgSend_artistName(*(a1 + 40), v53, v54, v55, v56);
        v219 = objc_msgSend_tagIDs(*(a1 + 40), v57, v58, v59, v60);
        v218 = objc_msgSend_keywords(*(a1 + 40), v61, v62, v63, v64);
        v69 = objc_msgSend_weightedKeywords(*(a1 + 40), v65, v66, v67, v68);
        v74 = objc_msgSend_hidden(*(a1 + 40), v70, v71, v72, v73);
        v81 = objc_msgSend_recalled(*(a1 + 40), v75, v76, v77, v78);
        if (v224)
        {
          v247[0] = v224;
          v247[1] = v223;
          v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, v247, 2, v80);
        }

        else
        {
          v246 = v223;
          v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v79, &v246, 1, v80);
        }

        v97 = v82;
        v98 = objc_msgSend_audioEncoderPresetName(*(a1 + 40), v83, v84, v85, v86);
        v103 = objc_msgSend_metadataVersion(*(a1 + 40), v99, v100, v101, v102);
        v108 = objc_msgSend_songFormat(*(a1 + 40), v104, v105, v106, v107);
        HIBYTE(v216) = v81;
        LOBYTE(v216) = v74;
        v110 = objc_msgSend_initWithUID_songName_artistName_tagIDs_keywords_weightedKeywords_hidden_recalled_assets_audioEncoderPresetName_metadataVersion_songFormat_(v217, v109, v222, v221, v220, v219, v218, v69, v216, v97, v98, v103, v108);

        objc_msgSend_updateBackend_(*(a1 + 40), v111, v110, v112, v113);
        v118 = objc_msgSend_uid(*(a1 + 40), v114, v115, v116, v117);
        objc_msgSend__loadBundledSongForSongID_(v3, v119, v118, v120, v121);
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(*(a1 + 48), v42, @"FMSongArtworkAssetID", v43, v44))
        {
          goto LABEL_22;
        }

        v92 = *(a1 + 40);
        if (v224)
        {
          v245[0] = v224;
          v245[1] = v223;
          v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v88, v245, 2, v91);
        }

        else
        {
          v244 = v223;
          v93 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v88, &v244, 1, v91);
        }

        v122 = v93;
        objc_msgSend_updateAssets_(v92, v94, v93, v95, v96);

        v110 = objc_msgSend_uid(*(a1 + 40), v123, v124, v125, v126);
        objc_msgSend__loadBundledArtworkForSongID_(v3, v127, v110, v128, v129);
      }

LABEL_22:
      v134 = objc_msgSend_purgeSync(*(a1 + 32), v88, v89, v90, v91);
      if (v134)
      {
        v135 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v140 = objc_msgSend_uid(*(a1 + 40), v136, v137, v138, v139);
          v141 = *(a1 + 48);
          v145 = objc_msgSend__mobileAssetPurgeResultStringValue_(v3, v142, v134, v143, v144);
          *buf = 138412802;
          v239 = v140;
          v240 = 2112;
          v241 = v141;
          v242 = 2112;
          v243 = v145;
          _os_log_impl(&dword_24B7E5000, v135, OS_LOG_TYPE_DEFAULT, "purge failed for %@ %@ error: %@", buf, 0x20u);
        }
      }

      v150 = objc_msgSend_state(*(a1 + 32), v130, v131, v132, v133);
      v151 = *(a1 + 32);
      if (v150 == 3)
      {
        v152 = objc_msgSend_attributes(v151, v146, v147, v148, v149);
        v156 = objc_msgSend_objectForKeyedSubscript_(v152, v153, @"FMAssetType", v154, v155);
        v237 = *(a1 + 56);
        v159 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v157, &v237, 1, v158);
        v162 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(v3, v160, v156, v159, v161);

        v167 = objc_msgSend_set(MEMORY[0x277CBEB58], v163, v164, v165, v166);
        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v168 = v162;
        v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v231, v236, 16);
        if (v174)
        {
          v175 = *v232;
          do
          {
            for (i = 0; i != v174; ++i)
            {
              if (*v232 != v175)
              {
                objc_enumerationMutation(v168);
              }

              v177 = objc_msgSend_attributes(*(*(&v231 + 1) + 8 * i), v170, v171, v172, v173);
              v181 = objc_msgSend_objectForKeyedSubscript_(v177, v178, @"uuid", v179, v180);

              if (v181)
              {
                objc_msgSend_addObject_(v167, v182, v181, v183, v184);
              }
            }

            v174 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v170, &v231, v236, 16);
          }

          while (v174);
        }

        v188 = objc_msgSend__metadataMappingForUUIDSet_(v3, v185, v167, v186, v187);
        v192 = objc_msgSend_objectForKey_(v188, v189, *(a1 + 56), v190, v191);
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v193 = v168;
        v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v193, v194, &v227, v235, 16);
        if (v199)
        {
          v200 = *v228;
          while (2)
          {
            for (j = 0; j != v199; j = j + 1)
            {
              if (*v228 != v200)
              {
                objc_enumerationMutation(v193);
              }

              v202 = *(*(&v227 + 1) + 8 * j);
              if (objc_msgSend_state(v202, v195, v196, v197, v198) != 3)
              {
                v199 = v202;
                goto LABEL_49;
              }
            }

            v199 = objc_msgSend_countByEnumeratingWithState_objects_count_(v193, v195, &v227, v235, 16);
            if (v199)
            {
              continue;
            }

            break;
          }
        }

LABEL_49:

        v209 = *(a1 + 64);
        objc_sync_enter(v209);
        if (v199)
        {
          objc_msgSend__updateExistingSong_usingAsset_metadataAsset_forceUpdate_(v3, v210, *(a1 + 40), v199, v192, 1);
        }

        objc_sync_exit(v209);
      }

      else
      {
        if (objc_msgSend_refreshState(v151, v146, v147, v148, v149))
        {
LABEL_53:

          goto LABEL_54;
        }

        v193 = FlexLogForCategory(2uLL);
        if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
        {
          v207 = objc_msgSend_uid(*(a1 + 40), v203, v204, v205, v206);
          v208 = *(a1 + 48);
          *buf = 138412546;
          v239 = v207;
          v240 = 2112;
          v241 = v208;
          _os_log_impl(&dword_24B7E5000, v193, OS_LOG_TYPE_DEFAULT, "refreshState failed for %@ %@", buf, 0x16u);
        }
      }

      goto LABEL_53;
    }

    objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(v3, v8, v9, v10, v11);
    objc_sync_exit(v4);
  }

  else
  {
    v87 = FlexLogForCategory(2uLL);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24B7E5000, v87, OS_LOG_TYPE_DEFAULT, "attempted to purge but no cloud manager", buf, 2u);
    }
  }

LABEL_55:
}

void sub_24B801294(uint64_t a1)
{
  v67[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v7 = objc_msgSend_songUID(*(a1 + 40), v2, v3, v4, v5);

      if (v7)
      {
        v8 = *(a1 + 48);
        v9 = *(a1 + 32);
        v10 = objc_msgSend_songUID(*(a1 + 40), v2, v3, v4, v5);
        v67[0] = v10;
        v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v67, 1, v12);
        v16 = objc_msgSend__mobileAssetsForAssetType_andUIDs_(v8, v14, v9, v13, v15);

        v7 = objc_msgSend_assetWithNewestContentVersionInAssets_preferInstalled_(FlexMobileAssetManagerV2, v17, v16, 1, v18);
        if (!v7)
        {
          v19 = FlexLogForCategory(2uLL);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v24 = objc_msgSend_songUID(*(a1 + 40), v20, v21, v22, v23);
            v29 = objc_msgSend_assetID(*(a1 + 40), v25, v26, v27, v28);
            v63 = 138412546;
            v64 = v24;
            v65 = 2112;
            v66 = v29;
            _os_log_impl(&dword_24B7E5000, v19, OS_LOG_TYPE_DEFAULT, "cannot purge due to nil mobileAsset %@ %@", &v63, 0x16u);
          }
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v30 = *(a1 + 48);
    v31 = objc_msgSend_songUID(*(a1 + 40), v2, v3, v4, v5);
    v35 = objc_msgSend__existingSongForUID_(v30, v32, v31, v33, v34);

    v36 = WeakRetained[7];
    objc_sync_enter(v36);
    if (!v7)
    {
      goto LABEL_15;
    }

    if (objc_msgSend__isDownloadingAsset_(*(a1 + 48), v37, *(a1 + 40), v38, v39))
    {
      objc_msgSend_removeObject_(WeakRetained[9], v40, v7, v41, v42);
      objc_msgSend_removeObject_(WeakRetained[10], v43, v7, v44, v45);
      objc_msgSend_updateAsset_downloadProgress_error_(v35, v46, *(a1 + 40), 0, v47, 0.0);
    }

    if (objc_msgSend_containsObject_(WeakRetained[13], v40, v7, v41, v42))
    {
      objc_sync_exit(v36);
    }

    else
    {
LABEL_15:
      objc_sync_exit(v36);

      if (objc_msgSend_assetStatus(*(a1 + 40), v48, v49, v50, v51) == 2)
      {
        objc_msgSend_cancelDownloadOfAsset_(*(a1 + 48), v52, *(a1 + 40), v53, v54);
      }

      v55 = WeakRetained[7];
      objc_sync_enter(v55);
      if (v7)
      {
        objc_msgSend_addObject_(WeakRetained[12], v56, v7, v57, v58);
      }

      objc_sync_exit(v55);

      objc_msgSend__dispatchNextAsyncAssetDownloadAndPurge(*(a1 + 48), v59, v60, v61, v62);
    }
  }
}

uint64_t sub_24B803A0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_sampleCount(v4, v6, v7, v8, v9);
  if (v10 >= objc_msgSend_sampleCount(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_sampleCount(v4, v15, v16, v17, v18);
    v19 = v20 > objc_msgSend_sampleCount(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_24B804228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_24B80425C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_type(v5, v6, v7, v8, v9) == 2;

  return v10;
}

uint64_t sub_24B80429C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_24B8042B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v4, v5, v6, v7);
  v13 = objc_msgSend_name(v3, v9, v10, v11, v12);
  if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(v8, v14, v13, v15, v16))
  {
    v21 = 0;
  }

  else
  {
    v21 = objc_msgSend_barsUsed(*(*(*(a1 + 32) + 8) + 40), v17, v18, v19, v20) - 1;
  }

  v26 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v22, v23, v24, v25);
  v28 = objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v27, v26, v3, v21, 1);

  return v28;
}

void sub_24B804614()
{
  v10 = objc_opt_new();
  for (i = 0; i != 100; ++i)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v0, @"%ld", v1, v2, i);
    objc_msgSend_addObject_(v10, v5, v4, v6, v7);
  }

  v8 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v0, v10, v1, v2);
  v9 = qword_28151B378;
  qword_28151B378 = v8;
}

uint64_t sub_24B80557C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_type(v6, v7, v8, v9, v10) == 3;
  v16 = objc_msgSend_nameIndex(v6, v12, v13, v14, v15);
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%lu", v18, v19, *(a1 + 32));
  isEqualToString = objc_msgSend_isEqualToString_(v16, v21, v20, v22, v23);

  return v11 & isEqualToString;
}

uint64_t sub_24B805624(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(v3, v4, v5, v6, v7);
  v12 = objc_msgSend_indexOfObject_(*(a1 + 32), v9, v3, v10, v11);
  if (v12 >= objc_msgSend_count(*(a1 + 32), v13, v14, v15, v16) - 1)
  {
    v50 = 0;
    v31 = 0;
    objc_msgSend_name(0, v17, v18, v19, v20);
  }

  else
  {
    v21 = v12 + 1;
    v22 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v17, v12 + 1, v19, v20);
    v31 = objc_msgSend_segment(v22, v23, v24, v25, v26);
    while (1)
    {
      if (v21 >= objc_msgSend_count(*(a1 + 32), v27, v28, v29, v30))
      {
        v50 = 0;
        goto LABEL_9;
      }

      v35 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v32, v21, v33, v34);
      v40 = objc_msgSend_segment(v35, v36, v37, v38, v39);
      v45 = objc_msgSend_type(v40, v41, v42, v43, v44);

      if (v45 == 2)
      {
        break;
      }

      ++v21;
    }

    v50 = objc_msgSend_segment(v35, v46, v47, v48, v49);

LABEL_9:
    objc_msgSend_name(v50, v51, v52, v53, v54);
  }
  v55 = ;
  v58 = objc_msgSend_transitionToSegmentNamed_fromBarIndex_(v8, v56, v55, 0, v57);

  if (v58 && v31 && (objc_msgSend_transitionSegmentName(v58, v59, v60, v61, v62), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v31, v64, v65, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend_isEqualToString_(v63, v69, v68, v70, v71), v68, v63, (v72 & 1) != 0))
  {
    isEqualToString = 0;
  }

  else
  {
    v74 = objc_msgSend_name(v8, v59, v60, v61, v62);
    v79 = objc_msgSend_namePrefix(v8, v75, v76, v77, v78);
    v82 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v74, v80, v79, &stru_285EA09B0, v81);

    v87 = objc_msgSend_nameStem(v8, v83, v84, v85, v86);
    v90 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v82, v88, v87, &stru_285EA09B0, v89);

    if (objc_msgSend_isEqualToString_(v90, v91, *(a1 + 40), v92, v93))
    {
      v98 = objc_msgSend_transitionSegmentName(v58, v94, v95, v96, v97);
      v103 = objc_msgSend_segment(*(a1 + 48), v99, v100, v101, v102);
      v108 = objc_msgSend_name(v103, v104, v105, v106, v107);
      isEqualToString = objc_msgSend_isEqualToString_(v98, v109, v108, v110, v111);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

uint64_t sub_24B805E38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_name(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_name(*(a1 + 32), v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v17, v16, v18, v19);

  return isEqualToString;
}

uint64_t sub_24B807E08(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_priority(v4, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_priority(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_priority(v4, v15, v16, v17, v18);
    v19 = v20 < objc_msgSend_priority(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

uint64_t sub_24B807E94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_name(*(a1 + 32), v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v12, v11, v13, v14);

  return isEqualToString;
}

uint64_t sub_24B8080E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_sampleCount(v4, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_sampleCount(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_sampleCount(v4, v15, v16, v17, v18);
    v19 = v20 < objc_msgSend_sampleCount(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_24B808600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B808634(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v4, v5, v6, v7);
  v13 = objc_msgSend_name(v3, v9, v10, v11, v12);
  if (objc_msgSend_linkedPerBarTransitionsToSegmentNamed_(v8, v14, v13, v15, v16))
  {
    v21 = 0;
  }

  else
  {
    v21 = objc_msgSend_barsUsed(*(*(*(a1 + 32) + 8) + 40), v17, v18, v19, v20) - 1;
  }

  v26 = objc_msgSend_segment(*(*(*(a1 + 32) + 8) + 40), v22, v23, v24, v25);
  v28 = objc_msgSend_canTransitionFromSegment_toSegment_fromBarIndex_checkIfPrevented_(FlexSegment, v27, v26, v3, v21, 1);

  return v28;
}

BOOL sub_24B8094F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);
  v11 = v10 == 0;

  return v11;
}

BOOL sub_24B809538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);
  v11 = v10 == 0;

  return v11;
}

BOOL sub_24B809580(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_segment(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_name(v5, v6, v7, v8, v9);
  v11 = v10 == 0;

  return v11;
}

uint64_t sub_24B80A7A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_segment(*(a1 + 32), v7, v8, v9, v10);
  v16 = objc_msgSend_name(v11, v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v17, v16, v18, v19);

  return isEqualToString;
}

void sub_24B80A90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B80A924(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = a2;
  v11 = objc_msgSend_segment(v23, v7, v8, v9, v10);
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_segment(v23, v12, v13, v14, v15);
    v22 = objc_msgSend_type(v17, v18, v19, v20, v21);

    if (v22 == 4)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

uint64_t sub_24B80B550(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_segment(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_nameIndex(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_nameIndex(*(a1 + 32), v14, v15, v16, v17);
  if (objc_msgSend_isEqualToString_(v13, v19, v18, v20, v21))
  {
    v26 = objc_msgSend_segment(v3, v22, v23, v24, v25);
    v31 = objc_msgSend_nameSuffix(v26, v27, v28, v29, v30);
    v35 = objc_msgSend_isEqualToString_(v31, v32, @"a", v33, v34) ^ 1;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

uint64_t sub_24B80B93C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_priority(v4, v6, v7, v8, v9);
  if (v10 <= objc_msgSend_priority(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_priority(v4, v15, v16, v17, v18);
    v19 = v20 < objc_msgSend_priority(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

BOOL sub_24B80B9C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4, a5);
  v11 = objc_msgSend_name(*(a1 + 32), v7, v8, v9, v10);
  v12 = v6 == v11;

  return v12;
}

void sub_24B80E570(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_24B7E5000, log, OS_LOG_TYPE_DEBUG, "expected silence or outro at end. Algorithm bug?", buf, 2u);
}

void sub_24B80E5B0(void *a1, char *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_lastPathComponent(a1, a2, a3, a4, a5);
  v12 = 138412546;
  v13 = v7;
  v14 = 2048;
  v15 = objc_msgSend_sampleCount(a2, v8, v9, v10, v11);
  _os_log_debug_impl(&dword_24B7E5000, a3, OS_LOG_TYPE_DEBUG, "%@: kExtAudioFileProperty_FileLengthFrames is 1 sample longer than segment.sampleCount %lld", &v12, 0x16u);
}

void sub_24B80E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B80E9E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B80E9FC(void *a1, void *a2, char *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a1[6];
  v56 = v7;
  if (v8 == objc_msgSend_sampleTime(v7, v9, v10, v11, v12))
  {
    goto LABEL_2;
  }

  v18 = a1[6];
  if (v18 > objc_msgSend_sampleTime(v56, v13, v14, v15, v16))
  {
    if (objc_msgSend_count(*(*(a1[5] + 8) + 40), v19, v20, v21, v22) - 1 > a3)
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1[5] + 8) + 40), v13, (a3 + 1), v15, v16);
      objc_msgSend_value(v56, v24, v25, v26, v27);
      v29 = v28;
      objc_msgSend_value(v23, v30, v31, v32, v33);
      v35 = v34;
      objc_msgSend_value(v56, v36, v37, v38, v39);
      v41 = a1[6];
      v46 = (v35 - v40) * (v41 - objc_msgSend_sampleTime(v56, v42, v43, v44, v45));
      v51 = objc_msgSend_sampleTime(v23, v47, v48, v49, v50);
      *(*(a1[4] + 8) + 24) = v29 + (v46 / (v51 - objc_msgSend_sampleTime(v56, v52, v53, v54, v55)));

      goto LABEL_3;
    }

LABEL_2:
    objc_msgSend_value(v56, v13, v14, v15, v16);
    *(*(a1[4] + 8) + 24) = v17;
LABEL_3:
    *a4 = 1;
  }
}

void sub_24B80ECD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24B80ECF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v35 = a2;
  v11 = objc_msgSend_sampleTime(*(a1 + 32), v7, v8, v9, v10);
  v20 = objc_msgSend_sampleTime(v35, v12, v13, v14, v15);
  v21 = *(a1 + 32);
  if (v11 == v20)
  {
    objc_msgSend_value(v21, v16, v17, v18, v19);
    objc_msgSend_setValue_(v35, v22, v23, v24, v25);
    *a4 = 1;
  }

  else
  {
    v26 = objc_msgSend_sampleTime(v21, v16, v17, v18, v19);
    if (v26 > objc_msgSend_sampleTime(v35, v27, v28, v29, v30))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v34 = WeakRetained;
      if (WeakRetained)
      {
        objc_msgSend_insertObject_atIndex_(WeakRetained[1], v32, *(a1 + 32), a3 + 1, v33);
      }

      *a4 = 1;
    }
  }
}

void sub_24B80EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_24B80EEB4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (objc_msgSend_sampleTime(v6, v7, v8, v9, v10) <= *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  v15 = objc_msgSend_sampleTime(v6, v11, v12, v13, v14);

  *(*(*(a1 + 32) + 8) + 24) = v15;
}

void sub_24B80F0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24B80F0E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v39 = v5;
    objc_msgSend_value(v5, v6, v7, v8, v9);
    if (v14 == *(*(*(a1 + 40) + 8) + 24))
    {
      v15 = objc_msgSend_volumeKeyFrames(*(a1 + 32), v10, v11, v12, v13);
      v19 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, a3 - 1, v17, v18);

      objc_msgSend_value(v19, v20, v21, v22, v23);
      v25 = v24;
      objc_msgSend_value(v39, v26, v27, v28, v29);
      if (v25 == v33)
      {
        v34 = *(*(*(a1 + 48) + 8) + 40);
        if (!v34)
        {
          v35 = objc_opt_new();
          v36 = *(*(a1 + 48) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = v35;

          v34 = *(*(*(a1 + 48) + 8) + 40);
        }

        objc_msgSend_addObject_(v34, v30, v39, v31, v32);

        goto LABEL_9;
      }
    }

    objc_msgSend_value(v39, v10, v11, v12, v13);
    *(*(*(a1 + 40) + 8) + 24) = v38;
LABEL_9:
    v5 = v39;
  }
}

void sub_24B811580(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch genre:\n%@", &v2, 0xCu);
}

void sub_24B8115F8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch region:\n%@", &v2, 0xCu);
}

uint64_t sub_24B812D9C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_position(v4, v6, v7, v8, v9);
  if (v10 >= objc_msgSend_position(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_position(v4, v15, v16, v17, v18);
    v19 = v20 > objc_msgSend_position(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_24B8141C8(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_type(v10, v3, v4, v5, v6) == *(a1 + 40))
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v10, v8, v9);
  }
}

uint64_t sub_24B814358(uint64_t a1, void *a2)
{
  v27 = a2;
  if (objc_msgSend_type(v27, v3, v4, v5, v6) == *(a1 + 56))
  {
    v10 = objc_msgSend_nameIndex(v27, v27, v7, v8, v9);
    if (!objc_msgSend_isEqualToString_(v10, v11, *(a1 + 32), v12, v13))
    {

      goto LABEL_9;
    }

    if (*(a1 + 40))
    {
      v18 = objc_msgSend_nameSuffix(v27, v14, v15, v16, v17);
      isEqualToString = objc_msgSend_isEqualToString_(v18, v19, *(a1 + 40), v20, v21);

      v25 = v27;
      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_msgSend_addObject_(*(a1 + 48), v25, v27, v23, v24);
  }

LABEL_9:

  return MEMORY[0x2821F96F8]();
}

void sub_24B81454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B814564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B81457C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v11 = objc_msgSend_name(v16, v7, v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *(a1 + 32), v13, v14);

  if (isEqualToString)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_24B814A04(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_name(a1, a2, a3, a4, a5);
  v7 = 138412290;
  v8 = v6;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "Relinking transitions for segment %@ because it is not Sliceable", &v7, 0xCu);
}

void sub_24B814A9C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24B7E5000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_24B815B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose((v34 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24B815BE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B815BF8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v11 = objc_msgSend_values(v6, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(v11, v12, @"SectionType", v13, v14);

  if (objc_msgSend_isEqualToString_(v15, v16, @"OUTRO", v17, v18))
  {
    if (v6)
    {
      objc_msgSend_timeRange(v6, v19, v20, v21, v22);
      v23 = *(a1[4] + 8);
      *(v23 + 32) = v38[2];
      *(v23 + 48) = v39;
      objc_msgSend_timeRange(v6, v24, v25, v26, v27);
    }

    else
    {
      v28 = *(a1[4] + 8);
      v28[4] = 0;
      v28[5] = 0;
      v28[6] = 0;
      v37 = 0u;
      memset(v38, 0, 32);
    }

    v29 = *(a1[5] + 8);
    *(v29 + 48) = *(&v38[1] + 1);
    *(v29 + 32) = *(v38 + 8);
    v30 = objc_msgSend_values(v6, v19, v20, v21, v22, v37, *&v38[0]);
    v34 = objc_msgSend_objectForKey_(v30, v31, @"OutroEarlyFade", v32, v33);
    v35 = *(a1[6] + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    *a4 = 1;
  }
}