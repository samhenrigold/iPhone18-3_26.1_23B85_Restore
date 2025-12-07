@interface SABeaconGroupVerifier
+ (id)verifyBeaconGroupsWithBeaconGroups:(id)groups deviceUUIDtoDeviceMap:(id)map deviceToSafeLocationMap:(id)locationMap;
+ (int)beaconGroupSizeForDevice:(id)device;
@end

@implementation SABeaconGroupVerifier

+ (id)verifyBeaconGroupsWithBeaconGroups:(id)groups deviceUUIDtoDeviceMap:(id)map deviceToSafeLocationMap:(id)locationMap
{
  v158 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  mapCopy = map;
  locationMapCopy = locationMap;
  v10 = objc_opt_new();
  [v10 setBeaconGroupComplete:1];
  [v10 setBeaconGroupSafeLocationsMatch:1];
  v89 = mapCopy;
  v11 = [mapCopy mutableCopy];
  [v10 setDeviceUUIDtoDeviceMap:v11];

  v88 = locationMapCopy;
  v12 = [locationMapCopy mutableCopy];
  [v10 setDeviceToSafeLocationMap:v12];

  v91 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v102 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = groupsCopy;
  v93 = [obj countByEnumeratingWithState:&v133 objects:v157 count:16];
  if (v93)
  {
    v92 = *v134;
    do
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v134 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v133 + 1) + 8 * i);
        v15 = [obj objectForKeyedSubscript:v14];
        v16 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [v15 count];
          v19 = [v15 description];
          if ([v10 beaconGroupComplete])
          {
            v20 = "YES";
          }

          else
          {
            v20 = "NO";
          }

          beaconGroupSafeLocationsMatch = [v10 beaconGroupSafeLocationsMatch];
          *buf = 68290307;
          if (beaconGroupSafeLocationsMatch)
          {
            v22 = "YES";
          }

          else
          {
            v22 = "NO";
          }

          v144 = 0;
          v145 = 2082;
          v146 = "";
          v147 = 2113;
          v148 = v14;
          v149 = 2050;
          v150 = v18;
          v151 = 2113;
          v152 = v19;
          v153 = 2082;
          v154 = v20;
          v155 = 2082;
          v156 = v22;
          _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #beaconMonitoring for group, groupIdentifier:%{private}@, beaconGroup.count:%{public}lu, beacons:%{private}@, beaconGroupCompletePartialResult:%{public}s, safeLocationsMatchPartialResult:%{public}s}", buf, 0x44u);
        }

        anyObject = [v15 anyObject];
        v107 = anyObject;
        if (anyObject)
        {
          deviceUUIDtoDeviceMap = [v10 deviceUUIDtoDeviceMap];
          v25 = [deviceUUIDtoDeviceMap objectForKeyedSubscript:anyObject];

          v26 = [self beaconGroupSizeForDevice:v25];
          if ([v15 count] != v26)
          {
            v27 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
            {
              v28 = v26;
              v29 = MEMORY[0x277CCABB0];
              v30 = v27;
              v31 = [v29 numberWithInteger:{objc_msgSend(v25, "deviceType")}];
              v32 = [v15 count];
              *buf = 68290307;
              v144 = 0;
              v145 = 2082;
              v146 = "";
              v147 = 2113;
              v148 = v14;
              v149 = 2113;
              v150 = v107;
              v151 = 2114;
              v152 = v31;
              v153 = 2050;
              v154 = v28;
              anyObject = v107;
              v155 = 2050;
              v156 = v32;
              _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring incorrect beacon group size, groupIdentifier:%{private}@, beaconIdentifier:%{private}@, deviceType:%{public}@, expectedBeaconGroupSize:%{public}lu, beaconGroup.count:%{public}lu}", buf, 0x44u);
            }

            [v91 addObject:v14];
          }

          v94 = v25;
          v104 = v14;
          v97 = i;
          deviceToSafeLocationMap = [v10 deviceToSafeLocationMap];
          v34 = [deviceToSafeLocationMap objectForKeyedSubscript:anyObject];

          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v95 = v15;
          v35 = v15;
          v36 = [v35 countByEnumeratingWithState:&v129 objects:v142 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v130;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v130 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v129 + 1) + 8 * j);
                if (v40 != anyObject)
                {
                  deviceToSafeLocationMap2 = [v10 deviceToSafeLocationMap];
                  v42 = [deviceToSafeLocationMap2 objectForKeyedSubscript:v40];
                  v43 = [v34 isEqualToSet:v42];

                  anyObject = v107;
                  if ((v43 & 1) == 0)
                  {
                    v44 = TASALog;
                    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
                    {
                      v45 = v44;
                      deviceToSafeLocationMap3 = [v10 deviceToSafeLocationMap];
                      v47 = [deviceToSafeLocationMap3 objectForKeyedSubscript:v40];
                      *buf = 68290051;
                      v144 = 0;
                      v145 = 2082;
                      v146 = "";
                      v147 = 2113;
                      v148 = v104;
                      v149 = 2113;
                      v150 = v40;
                      v151 = 2114;
                      v152 = v34;
                      v153 = 2114;
                      v154 = v47;
                      _os_log_impl(&dword_2656EA000, v45, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring safe location mismatch, groupIdentifier:%{private}@, beaconIdentifier:%{private}@, safelocationsBaseline:%{public}@, safelocationsCompared:%{public}@}", buf, 0x3Au);

                      anyObject = v107;
                    }

                    [v102 addObject:v104];
                  }
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v129 objects:v142 count:16];
            }

            while (v37);
          }

          v15 = v95;
          i = v97;
        }

        else
        {
          [v91 addObject:v14];
          [v102 addObject:v14];
          v48 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            v49 = v48;
            if ([v10 beaconGroupComplete])
            {
              v50 = "YES";
            }

            else
            {
              v50 = "NO";
            }

            beaconGroupSafeLocationsMatch2 = [v10 beaconGroupSafeLocationsMatch];
            *buf = 68289795;
            if (beaconGroupSafeLocationsMatch2)
            {
              v52 = "YES";
            }

            else
            {
              v52 = "NO";
            }

            v144 = 0;
            v145 = 2082;
            v146 = "";
            v147 = 2113;
            v148 = v14;
            v149 = 2082;
            v150 = v50;
            anyObject = 0;
            v151 = 2082;
            v152 = v52;
            _os_log_impl(&dword_2656EA000, v49, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #beaconMonitoring beacon group is empty, groupIdentifier:%{private}@, beaconGroupComplete:%{public}s, safeLocationsMatch:%{public}s}", buf, 0x30u);
          }
        }
      }

      v93 = [obj countByEnumeratingWithState:&v133 objects:v157 count:16];
    }

    while (v93);
  }

  if ([v91 count])
  {
    [v10 setBeaconGroupComplete:0];
  }

  if ([v102 count])
  {
    [v10 setBeaconGroupSafeLocationsMatch:0];
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v96 = v91;
  v100 = [v96 countByEnumeratingWithState:&v125 objects:v141 count:16];
  if (v100)
  {
    v98 = *v126;
    do
    {
      v53 = 0;
      do
      {
        if (*v126 != v98)
        {
          objc_enumerationMutation(v96);
        }

        v105 = v53;
        v54 = *(*(&v125 + 1) + 8 * v53);
        v55 = [obj objectForKeyedSubscript:v54];
        v56 = v55;
        if (v55)
        {
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v57 = [v55 countByEnumeratingWithState:&v121 objects:v140 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v122;
            do
            {
              for (k = 0; k != v58; ++k)
              {
                if (*v122 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v121 + 1) + 8 * k);
                v62 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 68289539;
                  v144 = 0;
                  v145 = 2082;
                  v146 = "";
                  v147 = 2113;
                  v148 = v54;
                  v149 = 2113;
                  v150 = v61;
                  _os_log_impl(&dword_2656EA000, v62, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #beaconMonitoring suspending device due to incomplete beacon group, groupIdentifier:%{private}@, beaconIdentifier:%{private}@}", buf, 0x26u);
                }

                deviceToSafeLocationMap4 = [v10 deviceToSafeLocationMap];
                [deviceToSafeLocationMap4 removeObjectForKey:v61];

                deviceUUIDtoDeviceMap2 = [v10 deviceUUIDtoDeviceMap];
                [deviceUUIDtoDeviceMap2 removeObjectForKey:v61];
              }

              v58 = [v56 countByEnumeratingWithState:&v121 objects:v140 count:16];
            }

            while (v58);
          }
        }

        else
        {
          v65 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289283;
            v144 = 0;
            v145 = 2082;
            v146 = "";
            v147 = 2113;
            v148 = v54;
            _os_log_impl(&dword_2656EA000, v65, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring incomplete beacon group not found, groupIdentifier:%{private}@}", buf, 0x1Cu);
          }
        }

        v53 = v105 + 1;
      }

      while (v105 + 1 != v100);
      v100 = [v96 countByEnumeratingWithState:&v125 objects:v141 count:16];
    }

    while (v100);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v101 = v102;
  v106 = [v101 countByEnumeratingWithState:&v117 objects:v139 count:16];
  if (v106)
  {
    v103 = *v118;
    do
    {
      for (m = 0; m != v106; ++m)
      {
        if (*v118 != v103)
        {
          objc_enumerationMutation(v101);
        }

        v67 = *(*(&v117 + 1) + 8 * m);
        v68 = [obj objectForKeyedSubscript:v67];
        if (v68)
        {
          v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v108 = v68;
          v70 = v68;
          v71 = [v70 countByEnumeratingWithState:&v113 objects:v138 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v114;
            do
            {
              for (n = 0; n != v72; ++n)
              {
                if (*v114 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = *(*(&v113 + 1) + 8 * n);
                deviceToSafeLocationMap5 = [v10 deviceToSafeLocationMap];
                v77 = [deviceToSafeLocationMap5 objectForKeyedSubscript:v75];
                [v69 unionSet:v77];
              }

              v72 = [v70 countByEnumeratingWithState:&v113 objects:v138 count:16];
            }

            while (v72);
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v78 = v70;
          v79 = [v78 countByEnumeratingWithState:&v109 objects:v137 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v110;
            do
            {
              for (ii = 0; ii != v80; ++ii)
              {
                if (*v110 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v83 = *(*(&v109 + 1) + 8 * ii);
                v84 = [v69 copy];
                deviceToSafeLocationMap6 = [v10 deviceToSafeLocationMap];
                [deviceToSafeLocationMap6 setObject:v84 forKeyedSubscript:v83];
              }

              v80 = [v78 countByEnumeratingWithState:&v109 objects:v137 count:16];
            }

            while (v80);
          }

          v68 = v108;
        }

        else
        {
          v86 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289283;
            v144 = 0;
            v145 = 2082;
            v146 = "";
            v147 = 2113;
            v148 = v67;
            _os_log_impl(&dword_2656EA000, v86, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #beaconMonitoring mismatched safe location beacon group not found, groupIdentifier:%{private}@}", buf, 0x1Cu);
          }
        }
      }

      v106 = [v101 countByEnumeratingWithState:&v117 objects:v139 count:16];
    }

    while (v106);
  }

  return v10;
}

+ (int)beaconGroupSizeForDevice:(id)device
{
  deviceCopy = device;
  deviceType = [deviceCopy deviceType];
  if ((deviceType - 1) < 2)
  {
    v5 = 1;
  }

  else if (deviceType == 16)
  {
    v5 = 1;
    if ([deviceCopy productId] != 8202)
    {
      if ([deviceCopy productId] == 8223)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else if (deviceType == 4)
  {
    if ([deviceCopy isAppleAudioAccessory])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end