@interface EKMapsUtilities
+ (id)_locationStringForStructuredLocation:(id)location withTitle:(id)title;
+ (id)mapsURLForFallbackLocationTitle:(id)title structuredLocation:(id)location hasMapItemLaunchOptionFromTimeToLeaveNotification:(BOOL)notification;
+ (id)mapsURLForLocation:(id)location onEvent:(id)event hasMapItemLaunchOptionFromTimeToLeaveNotification:(BOOL)notification;
+ (void)geocodeEventIfNeeded:(id)needed;
@end

@implementation EKMapsUtilities

+ (id)mapsURLForLocation:(id)location onEvent:(id)event hasMapItemLaunchOptionFromTimeToLeaveNotification:(BOOL)notification
{
  notificationCopy = notification;
  locationCopy = location;
  eventCopy = event;
  v10 = eventCopy;
  if (eventCopy)
  {
    preferredLocation = [eventCopy preferredLocation];
    v12 = [self mapsURLForFallbackLocationTitle:locationCopy structuredLocation:preferredLocation hasMapItemLaunchOptionFromTimeToLeaveNotification:notificationCopy];
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKMapsUtilities mapsURLForLocation:v13 onEvent:v14 hasMapItemLaunchOptionFromTimeToLeaveNotification:v15];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)mapsURLForFallbackLocationTitle:(id)title structuredLocation:(id)location hasMapItemLaunchOptionFromTimeToLeaveNotification:(BOOL)notification
{
  notificationCopy = notification;
  v38[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  locationCopy = location;
  if (locationCopy)
  {
    v9 = EKWeakLinkClass();
    mapKitHandle = [locationCopy mapKitHandle];
    if (mapKitHandle)
    {
    }

    else
    {
      geoLocation = [locationCopy geoLocation];

      if (!geoLocation)
      {
        v17 = 0;
LABEL_14:
        mapKitHandle2 = [locationCopy mapKitHandle];

        if (mapKitHandle2)
        {
          mapKitHandle3 = [locationCopy mapKitHandle];
          v36 = mapKitHandle3;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          v12 = [v9 _urlForMapItemHandles:v23 options:v17];

          v24 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
          {
            v32 = 138412546;
            v33 = v12;
            v34 = 2112;
            v35 = locationCopy;
            _os_log_impl(&dword_1A805E000, v24, OS_LOG_TYPE_INFO, "MapKit handle found.  Generated URL [%@] for location [%@].", &v32, 0x16u);
          }
        }

        else
        {
          geoLocation2 = [locationCopy geoLocation];

          if (geoLocation2)
          {
            v26 = [objc_opt_class() _locationStringForStructuredLocation:locationCopy withTitle:titleCopy];
            geoLocation3 = [locationCopy geoLocation];
            address = [locationCopy address];
            v12 = [v9 _urlForLocation:geoLocation3 address:address label:v26 options:v17];

            v29 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
            {
              v32 = 138412546;
              v33 = v12;
              v34 = 2112;
              v35 = locationCopy;
              _os_log_impl(&dword_1A805E000, v29, OS_LOG_TYPE_INFO, "Geolocation found.  Generated URL [%@] for location [%@].", &v32, 0x16u);
            }
          }

          else
          {
            v30 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
            {
              v32 = 138412290;
              v33 = locationCopy;
              _os_log_impl(&dword_1A805E000, v30, OS_LOG_TYPE_INFO, "No map kit handle or geolocation found.  Will not generate URL for location: [%@]", &v32, 0xCu);
            }

            v12 = 0;
          }
        }

        goto LABEL_26;
      }
    }

    v14 = EKWeakLinkStringConstant();
    v15 = v14;
    if (v14)
    {
      v37 = v14;
      v16 = [MEMORY[0x1E696AD98] numberWithBool:notificationCopy];
      v38[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    }

    else
    {
      v18 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
      {
        [EKMapsUtilities mapsURLForFallbackLocationTitle:v18 structuredLocation:v19 hasMapItemLaunchOptionFromTimeToLeaveNotification:v20];
      }

      v17 = 0;
    }

    goto LABEL_14;
  }

  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
  {
    v32 = 138412290;
    v33 = 0;
    _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, "No structured location found.  Will not generate URL for event: [%@]", &v32, 0xCu);
  }

  v12 = 0;
LABEL_26:

  return v12;
}

+ (id)_locationStringForStructuredLocation:(id)location withTitle:(id)title
{
  locationCopy = location;
  titleCopy = title;
  if (!locationCopy)
  {
    v9 = 0;
    goto LABEL_11;
  }

  address = [locationCopy address];
  if (titleCopy)
  {
    title = titleCopy;
  }

  else
  {
    title = [locationCopy title];
    if (!title)
    {
      goto LABEL_8;
    }
  }

  if (([address hasPrefix:title] & 1) != 0 || !objc_msgSend(address, "CalContainsSubstring:", title))
  {
    v10 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:title address:address];
    goto LABEL_10;
  }

LABEL_8:
  v10 = address;
LABEL_10:
  v9 = v10;

LABEL_11:

  return v9;
}

+ (void)geocodeEventIfNeeded:(id)needed
{
  v62 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (+[EKFeatureSet isTravelAdvisorySupported])
  {
    locationWithoutPrediction = [neededCopy locationWithoutPrediction];
    v5 = [locationWithoutPrediction length];

    if (v5)
    {
      structuredLocationWithoutPrediction = [neededCopy structuredLocationWithoutPrediction];
      geoLocation = [structuredLocationWithoutPrediction geoLocation];
      if (geoLocation)
      {
        v8 = geoLocation;
        mapKitHandle = [structuredLocationWithoutPrediction mapKitHandle];

        if (!mapKitHandle)
        {
          v11 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v61 = neededCopy;
            v12 = "Event has geoLocation but no mapKitHandle.  Will not attempt geocode for event: [%@]";
            goto LABEL_18;
          }

          goto LABEL_36;
        }
      }

      suggestionInfo = [neededCopy suggestionInfo];

      if (suggestionInfo)
      {
        v11 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = neededCopy;
          v12 = "Event is a suggested event.  Will not attempt geocode for event: [%@]";
LABEL_18:
          _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      if ([neededCopy _hasChangesForKey:*MEMORY[0x1E69926D8]])
      {
        v11 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v61 = neededCopy;
          v12 = "Event has unsaved location changes.  Will not attempt geocode for event: [%@]";
          goto LABEL_18;
        }

LABEL_36:

        goto LABEL_37;
      }

      if (geocodeEventIfNeeded__onceToken != -1)
      {
        +[EKMapsUtilities geocodeEventIfNeeded:];
      }

      v15 = MEMORY[0x1E696AD98];
      objectID = [neededCopy objectID];
      v17 = [v15 numberWithInt:{objc_msgSend(objectID, "rowID")}];

      v18 = [geocodeEventIfNeeded__s_lastGeocodedStringForEvent objectForKeyedSubscript:v17];
      locationWithoutPrediction2 = [neededCopy locationWithoutPrediction];
      v20 = [locationWithoutPrediction2 isEqualToString:v18];

      if (v20)
      {
        v21 = [geocodeEventIfNeeded__s_lastGeocodeDateForEvent objectForKeyedSubscript:v17];
        if (v21)
        {
          v22 = objc_opt_new();
          [v22 timeIntervalSinceDate:v21];
          v24 = v23;

          if (v24 < 86400.0)
          {
            v25 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v61 = neededCopy;
              _os_log_impl(&dword_1A805E000, v25, OS_LOG_TYPE_INFO, "Event location hasn't changed since we geocoded 24 hours ago.  Will not attempt geocode for event: [%@]", buf, 0xCu);
            }

            goto LABEL_35;
          }
        }
      }

      v48 = v18;
      v26 = objc_opt_new();
      [geocodeEventIfNeeded__s_lastGeocodeDateForEvent setObject:v26 forKeyedSubscript:v17];

      locationWithoutPrediction3 = [neededCopy locationWithoutPrediction];
      v49 = v17;
      [geocodeEventIfNeeded__s_lastGeocodedStringForEvent setObject:locationWithoutPrediction3 forKeyedSubscript:v17];

      eventStore = [geocodeEventIfNeeded__storeForSavingProvider eventStore];
      objectID2 = [neededCopy objectID];
      startDate = [neededCopy startDate];
      v31 = [eventStore eventForObjectID:objectID2 occurrenceDate:startDate checkValid:0];

      locationWithoutPrediction4 = [v31 locationWithoutPrediction];
      clientLocation = [v31 clientLocation];
      mapKitHandle2 = [clientLocation mapKitHandle];
      if (mapKitHandle2)
      {
        [v31 clientLocation];
      }

      else
      {
        [v31 structuredLocationWithoutPrediction];
      }
      v35 = ;
      mapKitHandle3 = [v35 mapKitHandle];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_23;
      aBlock[3] = &unk_1E7800548;
      v37 = v31;
      v55 = v37;
      v38 = locationWithoutPrediction4;
      v56 = v38;
      v39 = mapKitHandle3;
      v57 = v39;
      v58 = v49;
      v21 = eventStore;
      v59 = v21;
      v40 = _Block_copy(aBlock);
      if (v39)
      {
        v41 = v38;
        v42 = EKWeakLinkClass();
        v43 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = neededCopy;
          _os_log_impl(&dword_1A805E000, v43, OS_LOG_TYPE_DEFAULT, "Starting geocode of mapHandle for event: [%@]", buf, 0xCu);
        }

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_29;
        v50[3] = &unk_1E7800570;
        v51 = v40;
        [v42 _mapItemFromHandle:v39 completionHandler:v50];

        v38 = v41;
        goto LABEL_34;
      }

      if ([v37 locationIsAConferenceRoom])
      {
        v44 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v45 = "The event has a location that is a conference room.  Will not attempt to geocode its location string.";
LABEL_47:
          _os_log_impl(&dword_1A805E000, v44, OS_LOG_TYPE_INFO, v45, buf, 2u);
        }
      }

      else
      {
        automaticLocationGeocodingAllowed = [v37 automaticLocationGeocodingAllowed];
        v44 = EKLogHandle;
        if (automaticLocationGeocodingAllowed)
        {
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = neededCopy;
            _os_log_impl(&dword_1A805E000, v44, OS_LOG_TYPE_DEFAULT, "Starting geocode of location string for event: [%@]", buf, 0xCu);
          }

          v47 = MEMORY[0x1E6992FB8];
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_27;
          v52[3] = &unk_1E7800570;
          v53 = v40;
          [v47 geocodeLocationString:v38 withCompletionBlock:v52];

          goto LABEL_34;
        }

        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v45 = "Automatic location geocoding is disallowed.  Will not attempt to geocode this event's location string.";
          goto LABEL_47;
        }
      }

LABEL_34:

      v18 = v48;
      v17 = v49;
LABEL_35:

      goto LABEL_36;
    }

    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = neededCopy;
      v14 = "Event has no location.  Will not attempt geocode for event: [%@]";
      goto LABEL_12;
    }
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = neededCopy;
      v14 = "Travel advisory not supported.  Will not attempt geocode for event: [%@]";
LABEL_12:
      _os_log_impl(&dword_1A805E000, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
    }
  }

LABEL_37:
}

uint64_t __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = geocodeEventIfNeeded__s_lastGeocodeDateForEvent;
  geocodeEventIfNeeded__s_lastGeocodeDateForEvent = v2;

  v4 = objc_opt_new();
  v5 = geocodeEventIfNeeded__s_lastGeocodedStringForEvent;
  geocodeEventIfNeeded__s_lastGeocodedStringForEvent = v4;

  v6 = [[EKEphemeralCacheEventStoreProvider alloc] initWithCreationBlock:&__block_literal_global_20_0];
  v7 = geocodeEventIfNeeded__storeForSavingProvider;
  geocodeEventIfNeeded__storeForSavingProvider = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

id __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();

  return v2;
}

void __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_23(id *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = dispatch_get_global_queue(9, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24;
  v12[3] = &unk_1E7800520;
  v13 = a1[4];
  v20 = a4;
  v14 = a1[5];
  v15 = a1[6];
  v16 = v8;
  v17 = a1[7];
  v18 = v7;
  v19 = a1[8];
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24(uint64_t a1)
{
  [*(a1 + 32) refreshIfRefreshableAndNotify:1];
  v2 = *(a1 + 32);
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 40);
    v4 = [v2 locationWithoutPrediction];
    LOBYTE(v3) = [v3 isEqualToString:v4];

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:
    v21 = EKLogHandle;
    if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v28 = 0;
    v22 = "Geocoding finished but the event location changed. Not saving results of geocode.";
    v23 = v28;
    goto LABEL_18;
  }

  v7 = *(a1 + 48);
  v8 = [v2 clientLocation];
  v9 = [v8 mapKitHandle];
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = [v10 clientLocation];
    v12 = [v11 mapKitHandle];
    v13 = [v7 isEqualToData:v12];
  }

  else
  {
    v9 = [v10 structuredLocationWithoutPrediction];
    v11 = [v9 mapKitHandle];
    v13 = [v7 isEqualToData:v11];
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (*(a1 + 56))
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24_cold_1(a1 + 56, v5, v6);
    }

    [geocodeEventIfNeeded__s_lastGeocodeDateForEvent removeObjectForKey:*(a1 + 64)];
    [geocodeEventIfNeeded__s_lastGeocodedStringForEvent removeObjectForKey:*(a1 + 64)];
    return;
  }

  v14 = *(a1 + 72);
  if (!v14)
  {
    v21 = EKLogHandle;
    if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v25 = 0;
    v22 = "Geocoding finished but the location string was not geocodable.";
    v23 = &v25;
LABEL_18:
    _os_log_impl(&dword_1A805E000, v21, OS_LOG_TYPE_DEFAULT, v22, v23, 2u);
    return;
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  v27 = 0;
  v17 = [v15 updateWithGeocodedMapItemAndSaveWithCommit:v14 eventStore:v16 error:&v27];
  v18 = v27;
  v19 = v18;
  v20 = EKLogHandle;
  if (!v17 || v18)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24_cold_2(v19, v20, v24);
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v20, OS_LOG_TYPE_DEFAULT, "Geocoding finished and event was updated.", buf, 2u);
  }
}

@end