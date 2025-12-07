@interface CWFKnownNetworkPreparer
- (BOOL)profilesContainsHomeProfile:(id)profile;
- (CWFKnownNetworkPreparer)initWithNetworkProfiles:(id)profiles;
- (id)_filterForPrimaryHomeNetworkProfile:(id)profile;
- (id)_filterProfilesForHomeNetworksExceedingMaximumDistance:(id)distance;
- (id)_homeNetworkComparator;
- (id)_localNetworkFilter;
- (id)_removeProfilesAtSimilarLocations:(id)locations;
- (id)_similarLocationComparator;
- (id)localNetworkPromptProfiles;
- (id)prepareLocalNetworkProfilesForPresentation:(id)presentation;
@end

@implementation CWFKnownNetworkPreparer

- (CWFKnownNetworkPreparer)initWithNetworkProfiles:(id)profiles
{
  profilesCopy = profiles;
  if (profilesCopy)
  {
    v5 = objc_alloc_init(CWFKnownNetworkPreparer);
    [(CWFKnownNetworkPreparer *)v5 setProfiles:profilesCopy];
    [(CWFKnownNetworkPreparer *)v5 setMaxResults:4];
  }

  else
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10[0] = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 1, "[corewifi] Empty profile list", v10, 2);
    }

    v5 = 0;
  }

  return v5;
}

- (id)localNetworkPromptProfiles
{
  v56 = *MEMORY[0x1E69E9840];
  profiles = [(CWFKnownNetworkPreparer *)self profiles];
  _localNetworkFilter = [(CWFKnownNetworkPreparer *)self _localNetworkFilter];
  v5 = [profiles filteredArrayUsingPredicate:_localNetworkFilter];

  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v54 = 138412290;
    v55 = v5;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 1, "[corewifi] filtered profiles = '%@'", &v54, 12);
  }

  _lastJoinedComparator = [(CWFKnownNetworkPreparer *)self _lastJoinedComparator];
  v10 = [v5 sortedArrayUsingComparator:_lastJoinedComparator];

  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v54 = 138412290;
    v55 = v10;
    LODWORD(v43) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 1, "[corewifi] sorted profiles = '%@'", &v54, v43);
  }

  profiles2 = [(CWFKnownNetworkPreparer *)self profiles];
  v15 = [(CWFKnownNetworkPreparer *)self _filterForPrimaryHomeNetworkProfile:profiles2];

  v48 = v5;
  v46 = v15;
  if (v15)
  {
    if (([v10 containsObject:v15] & 1) == 0)
    {
      v16 = [v10 mutableCopy];
      [v16 addObject:v15];

      v10 = v16;
    }

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v54 = 138412290;
      v55 = v15;
      LODWORD(v43) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 1, "[corewifi] primary home network profile = '%@'", &v54, v43);
    }
  }

  selfCopy = self;
  [(CWFKnownNetworkPreparer *)self _removeProfilesAtSimilarLocations:v10];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = v52 = 0u;
  v45 = v10;
  v20 = [v44 differenceFromArray:v10];
  v21 = [v20 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v50;
    v24 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v49 + 1) + 8 * i);
        v27 = CWFGetOSLog();
        if (v27)
        {
          v28 = CWFGetOSLog();
        }

        else
        {
          v29 = v24;
          v28 = v24;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          object = [v26 object];
          v54 = 138412290;
          v55 = object;
          LODWORD(v43) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 1, "[corewifi] removed profile in similar location = '%@'", &v54, v43);
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v22);
  }

  v31 = v44;
  v32 = [v31 mutableCopy];
  v33 = [MEMORY[0x1E695DFA8] set];
  for (j = [v33 count]; j < -[CWFKnownNetworkPreparer maxResults](selfCopy, "maxResults") && objc_msgSend(v32, "count"); j = objc_msgSend(v33, "count"))
  {
    firstObject = [v32 firstObject];
    [v33 addObject:firstObject];

    [v32 removeObjectAtIndex:0];
  }

  allObjects = [v33 allObjects];
  v37 = CWFGetOSLog();
  if (v37)
  {
    v38 = CWFGetOSLog();
  }

  else
  {
    v38 = MEMORY[0x1E69E9C10];
    v39 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v54 = 138412290;
    v55 = allObjects;
    LODWORD(v43) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v38, 1, "[corewifi] return profiles = '%@'", &v54, v43);
  }

  if ([allObjects count])
  {
    v40 = allObjects;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  return v40;
}

- (id)prepareLocalNetworkProfilesForPresentation:(id)presentation
{
  v91 = *MEMORY[0x1E69E9840];
  presentationCopy = presentation;
  v5 = presentationCopy;
  if (presentationCopy && [presentationCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    _presentationSortComparator = [(CWFKnownNetworkPreparer *)self _presentationSortComparator];
    v76 = v5;
    v7 = [v5 sortedArrayUsingComparator:_presentationSortComparator];

    v8 = [(CWFKnownNetworkPreparer *)self _filterProfilesForHomeNetworksExceedingMaximumDistance:v7];
    v74 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v86 = 138412290;
        v87 = v9;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 1, "[corewifi] filtered home profiles='%@'", &v86, 12);
      }

      v14 = [v7 mutableCopy];
      [v14 removeObjectsInArray:v9];
      if ([v14 count] >= 3)
      {
        v15 = [v14 count] - 2;
        v16 = CWFGetOSLog();
        if (v16)
        {
          v17 = CWFGetOSLog();
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v18 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v92.location = 2;
          v92.length = v15;
          v19 = NSStringFromRange(v92);
          v86 = 138412290;
          v87 = v19;
          LODWORD(v73) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 1, "[corewifi] results exceed maximum removing at range='%@'", &v86, v73);
        }

        [v14 removeObjectsInRange:{2, v15}];
      }

      v12 = v14;

      v20 = CWFGetOSLog();
      if (v20)
      {
        v21 = CWFGetOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v86 = 138412290;
        v87 = v12;
        LODWORD(v73) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 1, "[corewifi] remaining profiles='%@'", &v86, v73);
      }
    }

    else
    {
      v12 = v7;
    }

    firstObject = [v12 firstObject];
    _location = [firstObject _location];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v12;
    v24 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v81;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v81 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v80 + 1) + 8 * i);
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          networkName = [v28 networkName];

          if (networkName)
          {
            networkName2 = [v28 networkName];
            [dictionary2 setObject:networkName2 forKey:@"mapLabelCalloutTitleKey"];

            discoveredDevices = [v28 discoveredDevices];

            if (discoveredDevices)
            {
              discoveredDevices2 = [v28 discoveredDevices];
              v34 = [discoveredDevices2 objectForKeyedSubscript:@"DevicesCount"];

              if (v34)
              {
                [dictionary2 setObject:v34 forKey:@"mapLabelCalloutDeviceCountKey"];
              }

              else
              {
                v38 = CWFGetOSLog();
                if (v38)
                {
                  v39 = CWFGetOSLog();
                }

                else
                {
                  v39 = MEMORY[0x1E69E9C10];
                  v42 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v86 = 138412290;
                  v87 = v28;
                  LODWORD(v73) = 12;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v39, 1, "[corewifi] profile='%@' does not contain device count", &v86, v73);
                }
              }

              discoveredDevices3 = [v28 discoveredDevices];
              v44 = [discoveredDevices3 objectForKeyedSubscript:@"DevicesNames"];

              if (v44 && [v28 _shouldDisplayDeviceNames])
              {
                _shuffled = [v44 _shuffled];
                _removeBackslashAndSpaceCharacter = [v44 _removeBackslashAndSpaceCharacter];

                [dictionary2 setObject:_removeBackslashAndSpaceCharacter forKey:@"mapLabelCalloutDeviceNamesKey"];
              }

              else
              {
                v47 = CWFGetOSLog();
                if (v47)
                {
                  _removeBackslashAndSpaceCharacter = CWFGetOSLog();
                }

                else
                {
                  _removeBackslashAndSpaceCharacter = MEMORY[0x1E69E9C10];
                  v48 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(_removeBackslashAndSpaceCharacter, OS_LOG_TYPE_INFO))
                {
                  v86 = 138412290;
                  v87 = v28;
                  LODWORD(v73) = 12;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, _removeBackslashAndSpaceCharacter, 1, "[corewifi] profile='%@' does not contain device names", &v86, v73);
                }
              }
            }

            else
            {
              v37 = CWFGetOSLog();
              if (v37)
              {
                v34 = CWFGetOSLog();
              }

              else
              {
                v34 = MEMORY[0x1E69E9C10];
                v41 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v86 = 138412290;
                v87 = v28;
                LODWORD(v73) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 1, "[corewifi] profile='%@' does not contain discovered devices", &v86, v73);
              }
            }

            _location2 = [v28 _location];
            if (_location2)
            {
              v36 = _location2;
              [_location distanceFromLocation:_location2];
              if (v50 >= 4000000.0)
              {
                v59 = v50;
                v60 = CWFGetOSLog();
                if (v60)
                {
                  v61 = CWFGetOSLog();
                }

                else
                {
                  v61 = MEMORY[0x1E69E9C10];
                  v63 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  v86 = 138412546;
                  v87 = v28;
                  v88 = 2048;
                  v89 = v59;
                  LODWORD(v73) = 22;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v61, 1, "[corewifi] profile='%@' distance exceeds max distance from primary callout (distance=%f)", &v86, v73);
                }
              }

              else
              {
                v84[0] = @"mapLabelCalloutLatKey";
                v51 = MEMORY[0x1E696AD98];
                [v36 coordinate];
                v52 = [v51 numberWithDouble:?];
                v84[1] = @"mapLabelCalloutLngKey";
                v85[0] = v52;
                v53 = MEMORY[0x1E696AD98];
                [v36 coordinate];
                v55 = [v53 numberWithDouble:v54];
                v85[1] = v55;
                v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];

                [dictionary2 setObject:v56 forKey:@"mapLabelCalloutLocationKey"];
                [array addObject:dictionary2];
              }
            }

            else
            {
              v57 = CWFGetOSLog();
              if (v57)
              {
                v58 = CWFGetOSLog();
              }

              else
              {
                v58 = MEMORY[0x1E69E9C10];
                v62 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v86 = 138412290;
                v87 = v28;
                LODWORD(v73) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v58, 1, "[corewifi] profile='%@' does not have a location, skipping for presentation", &v86, v73);
              }

              v36 = 0;
            }
          }

          else
          {
            v35 = CWFGetOSLog();
            if (v35)
            {
              v36 = CWFGetOSLog();
            }

            else
            {
              v36 = MEMORY[0x1E69E9C10];
              v40 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v86 = 138412290;
              v87 = v28;
              LODWORD(v73) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v36, 1, "[corewifi] profile='%@' does not have a networkName, skipping for presentation", &v86, v73);
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v25);
    }

    v64 = obj;

    v65 = dictionary;
    v66 = array;
    [dictionary setObject:array forKey:@"mapLabelArrayForCalloutsKey"];
    v5 = v76;
    v67 = v74;
  }

  else
  {
    v70 = CWFGetOSLog();
    if (v70)
    {
      v71 = CWFGetOSLog();
    }

    else
    {
      v71 = MEMORY[0x1E69E9C10];
      v72 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      LOWORD(v86) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v71, 1, "[corewifi] Empty profile list", &v86, 2);
    }

    _location = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
  }

  v68 = v65;

  return v65;
}

- (id)_filterProfilesForHomeNetworksExceedingMaximumDistance:(id)distance
{
  v50 = *MEMORY[0x1E69E9840];
  distanceCopy = distance;
  array = [MEMORY[0x1E695DF70] array];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1E0C5CB14;
  v40[3] = &unk_1E86E7250;
  v5 = array;
  v41 = v5;
  [distanceCopy enumerateObjectsUsingBlock:v40];
  if ([v5 count])
  {
    v27 = distanceCopy;
    v31 = [distanceCopy mutableCopy];
    [v31 removeObjectsInArray:v5];
    array2 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v30 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v10 = v31;
          v11 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v33;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v33 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v32 + 1) + 8 * j);
                _location = [v9 _location];
                _location2 = [v15 _location];
                [_location distanceFromLocation:_location2];
                v19 = v18;

                if (v19 >= 4000000.0)
                {
                  v20 = CWFGetOSLog();
                  if (v20)
                  {
                    v21 = CWFGetOSLog();
                  }

                  else
                  {
                    v21 = MEMORY[0x1E69E9C10];
                    v22 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    v42 = 138412802;
                    v43 = v9;
                    v44 = 2112;
                    v45 = v15;
                    v46 = 2048;
                    v47 = v19;
                    LODWORD(v25) = 32;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 1, "[corewifi] home profile='%@' distance exceeds max distance to non-home profile='%@' (distance=%f)", &v42, v25);
                  }

                  [array2 addObject:v9];
                  goto LABEL_22;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:
        }

        v7 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v7);
    }

    if ([array2 count])
    {
      v23 = array2;
    }

    else
    {
      v23 = 0;
    }

    v5 = v26;
    distanceCopy = v27;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)profilesContainsHomeProfile:(id)profile
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  profileCopy = profile;
  v4 = [profileCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(profileCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) _isHomeNetwork])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [profileCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_filterForPrimaryHomeNetworkProfile:(id)profile
{
  profiles = [(CWFKnownNetworkPreparer *)self profiles];
  _homeNetworkFilter = [(CWFKnownNetworkPreparer *)self _homeNetworkFilter];
  v6 = [profiles filteredArrayUsingPredicate:_homeNetworkFilter];

  if ([v6 count])
  {
    _networkProfileUsageComparator = [(CWFKnownNetworkPreparer *)self _networkProfileUsageComparator];
    v8 = [v6 sortedArrayUsingComparator:_networkProfileUsageComparator];

    firstObject = [v8 firstObject];
  }

  else
  {
    v8 = 0;
    firstObject = 0;
  }

  v10 = firstObject;

  return firstObject;
}

- (id)_removeProfilesAtSimilarLocations:(id)locations
{
  v59 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  if (!qword_1ED7E3880)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1E0C5DF88;
    v53[3] = &unk_1E86E55D8;
    v53[4] = 0;
    v57 = xmmword_1E86E72E0;
    v58 = 0;
    qword_1ED7E3880 = _sl_dlopen();
  }

  if (qword_1ED7E3880)
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v35 = locationsCopy;
    v6 = locationsCopy;
    v7 = [v6 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v50;
      v37 = v6;
      selfCopy = self;
      v36 = *v50;
      do
      {
        v10 = 0;
        v39 = v8;
        do
        {
          if (*v50 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v49 + 1) + 8 * v10);
          if (([array containsObject:v11] & 1) == 0)
          {
            array2 = [MEMORY[0x1E695DF70] array];
            _location = [v11 _location];
            if (_location)
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v14 = v6;
              v15 = [v14 countByEnumeratingWithState:&v45 objects:v55 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v46;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v46 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v45 + 1) + 8 * i);
                    if (([v19 isEqual:v11] & 1) == 0 && (objc_msgSend(array, "containsObject:", v19) & 1) == 0)
                    {
                      [v19 _location];
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v45 objects:v55 count:16];
                }

                while (v16);
              }

              [dictionary setObject:array2 forKey:v11];
              v6 = v37;
              self = selfCopy;
              v9 = v36;
              v8 = v39;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v8);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    allKeys = [dictionary allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(allKeys);
          }

          v26 = *(*(&v41 + 1) + 8 * j);
          v27 = [MEMORY[0x1E695DF70] arrayWithObject:v26];
          v28 = [dictionary objectForKeyedSubscript:v26];
          [v27 addObjectsFromArray:v28];

          _similarLocationComparator = [(CWFKnownNetworkPreparer *)self _similarLocationComparator];
          [v27 sortUsingComparator:_similarLocationComparator];

          firstObject = [v27 firstObject];
          [array3 addObject:firstObject];
        }

        v23 = [allKeys countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v23);
    }

    locationsCopy = v35;
  }

  else
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      v32 = CWFGetOSLog();
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v53[0]) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 16, "[corewifi] CoreLocation not available", v53, 2);
    }

    array3 = locationsCopy;
  }

  return array3;
}

- (id)_localNetworkFilter
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [v2 _dateByAddingDays:-2];

  v4 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C5D31C;
  v8[3] = &unk_1E86E7298;
  v9 = v3;
  v5 = v3;
  v6 = [v4 predicateWithBlock:v8];

  return v6;
}

- (id)_similarLocationComparator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C5D4AC;
  v4[3] = &unk_1E86E72C0;
  v4[4] = self;
  v2 = MEMORY[0x1E12EA400](v4, a2);

  return v2;
}

- (id)_homeNetworkComparator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C5D90C;
  v4[3] = &unk_1E86E72C0;
  v4[4] = self;
  v2 = MEMORY[0x1E12EA400](v4, a2);

  return v2;
}

@end