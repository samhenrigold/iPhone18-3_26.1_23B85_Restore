@interface WiFiScanResultsPreparer
+ (BOOL)wifiNetworkShouldBeProminentlyDisplayed:(__WiFiNetwork *)displayed;
- (WiFiScanResultsPreparer)initWithManager:(__WiFiDeviceManager *)manager availabilityEngine:(id)engine scanResults:(id)results disableProminentFiltering:(BOOL)filtering blacklistedSSIDs:(id)ds;
- (id)topRecommendableNetwork;
- (void)_prepareScanResults:(id)results;
- (void)dealloc;
@end

@implementation WiFiScanResultsPreparer

- (WiFiScanResultsPreparer)initWithManager:(__WiFiDeviceManager *)manager availabilityEngine:(id)engine scanResults:(id)results disableProminentFiltering:(BOOL)filtering blacklistedSSIDs:(id)ds
{
  v15.receiver = self;
  v15.super_class = WiFiScanResultsPreparer;
  v12 = [(WiFiScanResultsPreparer *)&v15 init];
  v13 = v12;
  if (!manager || !v12)
  {
    if (!v12)
    {
      return v13;
    }

LABEL_7:
    CFRelease(v13);
    return 0;
  }

  v12->_manager = manager;
  CFRetain(manager);
  if (!engine)
  {
    goto LABEL_7;
  }

  v13->_engine = engine;
  v13->_disableProminentFiltering = filtering;
  v13->_blacklistedSSIDs = ds;
  [(WiFiScanResultsPreparer *)v13 _prepareScanResults:results];
  return v13;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  v4.receiver = self;
  v4.super_class = WiFiScanResultsPreparer;
  [(WiFiScanResultsPreparer *)&v4 dealloc];
}

- (void)_prepareScanResults:(id)results
{
  v5 = objc_autoreleasePoolPush();
  v6 = os_transaction_create();
  if (results && [results count])
  {
    v7 = [results mutableCopy];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Find recommendations for %lu networks (disableProminentFiltering: %d)", "-[WiFiScanResultsPreparer _prepareScanResults:]", objc_msgSend(v7, "count"), -[WiFiScanResultsPreparer disableProminentFiltering](self, "disableProminentFiltering")}];
    }

    objc_autoreleasePoolPop(v8);
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v17 = sub_10000DBA0(v9, v10, v11, v12, v13, v14, v15, v16, v45, v47, v49, v51, v6, v5, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, key, v77, v79, v81, v83, v85, v87, v89, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1));
    if (v17)
    {
      v25 = v17;
      v26 = *v96;
      keya = @"WiFiNetworkAttributeIsKnown";
      v82 = @"WiFiNetworkAttributeIsPublic";
      v90 = @"WiFiNetworkAttributeIsTCPGood";
      v86 = @"WiFiNetworkAttributeIsPotentiallyCaptive";
      v88 = @"WiFiNetworkAttributeIsSuspicious";
      v60 = @"WiFiNetworkAttributePopularityScore";
      v62 = @"WiFiNetworkAttributeIsNotRecommendable";
      v58 = @"WiFiNetworkAttributeLowPopularity";
      v56 = @"WiFiNetworkAttributeHighPopularity";
      v70 = @"WiFiNetworkAttributeProminentDisplay";
      v72 = @"WiFiNetworkAttributeSource";
      v66 = v7;
      selfCopy = self;
      v64 = *v96;
      do
      {
        v27 = 0;
        v74 = v25;
        do
        {
          if (*v96 != v26)
          {
            objc_enumerationMutation(v7);
          }

          v78 = v27;
          v28 = *(*(&v95 + 1) + 8 * v27);
          if (v28)
          {
            if (sub_1000BFB18([(WiFiScanResultsPreparer *)self manager], v28))
            {
              sub_10000AD34(v28, keya, kCFBooleanTrue);
            }

            v17 = sub_10001CBF8(v28);
            if (!v17)
            {
              v17 = [[WiFiScanObserverNetwork alloc] initWithWiFiNetworkRef:v28];
              if (v17)
              {
                v80 = v17;
                v29 = [(WiFiAvailabilityEngine *)[(WiFiScanResultsPreparer *)self engine] findRecommendationForScannedNetwork:v17];
                if (v29)
                {
                  v30 = v29;
                  v31 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [v30 scannedNetwork];
                    [v30 network];
                    [sub_100024F84() WFLog:? message:?];
                  }

                  objc_autoreleasePoolPop(v31);
                  if ([v30 unwantedNetworkName])
                  {
                    v32 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: %@ contains unwantedNetworkName", "-[WiFiScanResultsPreparer _prepareScanResults:]", objc_msgSend(v80, "SSID")}];
                    }

                    objc_autoreleasePoolPop(v32);
                  }

                  if ([objc_msgSend(v30 "network")])
                  {
                    v93 = 0u;
                    v94 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v33 = [objc_msgSend(v30 "network")];
                    v34 = [v33 countByEnumeratingWithState:&v91 objects:v99 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v92;
                      v84 = v28;
LABEL_25:
                      v37 = 0;
                      while (2)
                      {
                        if (*v92 != v36)
                        {
                          objc_enumerationMutation(v33);
                        }

                        switch([*(*(&v91 + 1) + 8 * v37) intValue])
                        {
                          case 1u:
                            v38 = v28;
                            v39 = v86;
                            goto LABEL_39;
                          case 2u:
                            v38 = v28;
                            v39 = v88;
                            goto LABEL_39;
                          case 4u:
                            v38 = v28;
                            v39 = v90;
                            goto LABEL_39;
                          case 5u:
                            v38 = v28;
                            v39 = @"WiFiNetworkAttributeIsPotentiallyMoving";
                            goto LABEL_39;
                          case 6u:
                            if ([v30 unwantedNetworkName])
                            {
                              v40 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:3 message:{"%s: %@ contains unwantedNetworkName, discarding public flag", "-[WiFiScanResultsPreparer _prepareScanResults:]", objc_msgSend(v80, "SSID")}];
                              }

                              objc_autoreleasePoolPop(v40);
                              v28 = v84;
                            }

                            else
                            {
                              v38 = v28;
                              v39 = v82;
LABEL_39:
                              sub_10000AD34(v38, v39, kCFBooleanTrue);
                            }

LABEL_40:
                            if (v35 != ++v37)
                            {
                              continue;
                            }

                            v35 = [v33 countByEnumeratingWithState:&v91 objects:v99 count:16];
                            if (!v35)
                            {
                              goto LABEL_42;
                            }

                            goto LABEL_25;
                          case 7u:
                            v38 = v28;
                            v39 = @"WiFiNetworkAttributeIsLowQuality";
                            goto LABEL_39;
                          default:
                            goto LABEL_40;
                        }
                      }
                    }
                  }

LABEL_42:
                  self = selfCopy;
                  if ([objc_msgSend(v30 "network")] == 1 || objc_msgSend(objc_msgSend(v30, "network"), "type") == 2 || objc_msgSend(objc_msgSend(v30, "network"), "type") == 3)
                  {
                    v41 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [v80 SSID];
                      [objc_msgSend(v30 "network")];
                      [sub_100024F84() WFLog:? message:?];
                    }

                    objc_autoreleasePoolPop(v41);
                    sub_10000AD34(v28, v62, kCFBooleanTrue);
                  }

                  v42 = [objc_msgSend(v30 "network")];
                  if (v42)
                  {
                    v43 = v42;
                    sub_10000C614(v28, v60, [v42 score]);
                    if ([v43 score] <= 0x3E7)
                    {
                      v44 = v58;
                    }

                    else
                    {
                      v44 = v56;
                    }

                    sub_10000AD34(v28, v44, kCFBooleanTrue);
                  }

                  sub_10000C614(v28, v72, [objc_msgSend(v30 "network")]);
                  v26 = v64;
                  v7 = v66;
LABEL_54:
                  if ([(WiFiScanResultsPreparer *)self disableProminentFiltering]|| sub_100034EEC(v28, v72) == 3 || sub_100034EEC(v28, v72) == 1 || [WiFiScanResultsPreparer wifiNetworkShouldBeProminentlyDisplayed:v28])
                  {
                    sub_10000AD34(v28, v70, kCFBooleanTrue);
                    [(WiFiScanResultsPreparer *)self setProminentScanResultsCount:[(WiFiScanResultsPreparer *)self prominentScanResultsCount]+ 1];
                  }
                }

                else if (!sub_10001CBF8(v28))
                {
                  goto LABEL_54;
                }

                v25 = v74;
              }
            }
          }

          v27 = v78 + 1;
        }

        while ((v78 + 1) != v25);
        v17 = sub_10000DBA0(v17, v18, v19, v20, v21, v22, v23, v24, v46, v48, v50, v52, v53, v54, v56, v58, v60, v62, v64, v66, selfCopy, v70, v72, v74, keya, v78, v80, v82, v84, v86, v88, v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1));
        v25 = v17;
      }

      while (v17);
    }

    [(WiFiScanResultsPreparer *)self setPreparedScanResults:v7];
    v6 = v53;
    v5 = v54;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
  }

  objc_autoreleasePoolPop(v5);
}

+ (BOOL)wifiNetworkShouldBeProminentlyDisplayed:(__WiFiNetwork *)displayed
{
  if (sub_10000A540(displayed, @"WiFiNetworkAttributeIsKnown") || sub_10000A540(displayed, @"WiFiNetworkAttributeIsPublic"))
  {
    goto LABEL_9;
  }

  if (sub_10000A540(displayed, @"WiFiNetworkAttributeLowPopularity") || sub_10000A540(displayed, @"WiFiNetworkAttributeIsSuspicious"))
  {
    goto LABEL_12;
  }

  if (sub_10000A540(displayed, @"WiFiNetworkAttributeHighQuality"))
  {
LABEL_9:
    LOBYTE(v4) = 1;
    return v4;
  }

  if (sub_1001776A8(displayed) == 1)
  {
LABEL_12:
    LOBYTE(v4) = 0;
    return v4;
  }

  LODWORD(v4) = sub_10009F418(displayed);
  if (v4)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    v4 = sub_10000A540(displayed, @"WiFiNetworkAttributeLowPopularity");
    if (v4)
    {
      goto LABEL_9;
    }
  }

  return v4;
}

- (id)topRecommendableNetwork
{
  if (![(WiFiScanResultsPreparer *)self prominentScanResultsCount])
  {
    return 0;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  preparedScanResults = [(WiFiScanResultsPreparer *)self preparedScanResults];
  v4 = [(NSArray *)preparedScanResults countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (!v4)
  {
    goto LABEL_68;
  }

  v5 = v4;
  v72 = 0;
  selfCopy = self;
  v77 = 0;
  v79 = 0;
  v6 = *v91;
  do
  {
    v7 = 0;
    do
    {
      if (*v91 != v6)
      {
        objc_enumerationMutation(preparedScanResults);
      }

      v8 = *(*(&v90 + 1) + 8 * v7);
      if (v8)
      {
        v9 = sub_1000083F0();
        if (sub_1000333E8(v9, v10) >= -75 && !sub_1001772D4(v8))
        {
          if (sub_10000A540(v8, @"WiFiNetworkAttributeProminentDisplay"))
          {
            if (!sub_10000A540(v8, @"WiFiNetworkAttributeIsKnown") && !sub_10000A540(v8, @"WiFiNetworkAttributeIsNotRecommendable"))
            {
              v11 = sub_100034EEC(v8, @"WiFiNetworkAttributeSource");
              if (v11)
              {
                v12 = v11;
                v13 = sub_10000A878(v8);
                if (v13 && (v14 = v13, [(NSArray *)[(WiFiScanResultsPreparer *)selfCopy blacklistedSSIDs] containsObject:v13]))
                {
                  v15 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: skipping %@ as it's blacklisted from recommendation", "-[WiFiScanResultsPreparer topRecommendableNetwork]", v14}];
                  }

                  objc_autoreleasePoolPop(v15);
                }

                else if (v12 == 3)
                {
                  if (!v79 || sub_100034EEC(v8, @"WiFiNetworkAttributeSource") != 3 || (v16 = sub_100034EEC(v79, @"RSSI"), v17 = sub_1000083F0(), v16 <= sub_100034EEC(v17, v18)))
                  {
                    v19 = 3;
LABEL_26:
                    v77 = v19;
LABEL_27:
                    v79 = v8;
                  }
                }

                else if (v77 == 3)
                {
                  v77 = 3;
                }

                else if (v12 == 1)
                {
                  if (!v79 || sub_100034EEC(v8, @"WiFiNetworkAttributeSource") != 1 || (v20 = sub_100034EEC(v79, @"RSSI"), v21 = sub_1000083F0(), v20 <= sub_100034EEC(v21, v22)))
                  {
                    v19 = 1;
                    goto LABEL_26;
                  }
                }

                else if (v77 == 1)
                {
                  v77 = 1;
                }

                else if (!sub_10009F418(v8))
                {
                  v23 = sub_100034EEC(v8, @"WiFiNetworkAttributePopularityScore");
                  if (v23 >= v72)
                  {
                    if ((v24 = v23, !v79) || !v72 || v23 != v72 || ((v69 = v23, sub_10009F418(v79)) || sub_10009F418(v8) || (v67 = sub_100034EEC(v79, @"RSSI"), v25 = sub_1000083F0(), v67 <= sub_100034EEC(v25, v26))) && ((v27 = sub_10009F418(v79), v24 = v69, v27) || (v28 = sub_10009F418(v8), v24 = v69, !v28)))
                    {
                      v77 = v12;
                      v72 = v24;
                      goto LABEL_27;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v7 = v7 + 1;
    }

    while (v5 != v7);
    v29 = [(NSArray *)preparedScanResults countByEnumeratingWithState:&v90 objects:v94 count:16];
    v5 = v29;
  }

  while (v29);
  if (!v79)
  {
LABEL_68:
    v55 = objc_autoreleasePoolPush();
    v56 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_71:
      objc_autoreleasePoolPop(v55);
      return 0;
    }

    v57 = "%s: no prominent network found";
LABEL_70:
    [v56 WFLog:3 message:{v57, "-[WiFiScanResultsPreparer topRecommendableNetwork]", v63, v65}];
    goto LABEL_71;
  }

  if (sub_100034EEC(v79, @"WiFiNetworkAttributeSource") != 2)
  {
    goto LABEL_55;
  }

  if (sub_10009F418(v79))
  {
    v55 = objc_autoreleasePoolPush();
    v60 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_71;
    }

    v63 = sub_10000A878(v79);
    v65 = v72;
    v57 = "%s: prominent network (%@) is not open (score %ld)";
    goto LABEL_89;
  }

  if (!v72)
  {
    v55 = objc_autoreleasePoolPush();
    v60 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_71;
    }

    v63 = sub_10000A878(v79);
    v65 = 0;
    v57 = "%s: prominent network (%@) has no popularity score (score %ld)";
LABEL_89:
    v56 = v60;
    goto LABEL_70;
  }

LABEL_55:
  v30 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: found prominent open network (%@) with highest popularity score %ld", "-[WiFiScanResultsPreparer topRecommendableNetwork]", sub_10000A878(v79), v72}];
  }

  objc_autoreleasePoolPop(v30);
  v31 = [[WiFiScanObserverNetwork alloc] initWithWiFiNetworkRef:v79];
  if (!v31)
  {
    return 0;
  }

  v32 = v31;
  v33 = [(WiFiAvailabilityEngine *)[(WiFiScanResultsPreparer *)selfCopy engine] findRecommendationsForScannedNetwork:v31];
  v34 = [v33 count];
  if (v34 < 2)
  {
    anyObject = [v33 anyObject];
    if (anyObject)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v42 = sub_1000F8F14(v34, v35, v36, v37, v38, v39, v40, v41, v61, v63, v65, v67, v69, @"WiFiNetworkAttributePopularityScore", v72, selfCopy, @"WiFiNetworkAttributeSource", v77, v79, @"WiFiNetworkAttributeIsNotRecommendable", 0, 0, 0, 0, 0, 0, 0, 0, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1));
    if (!v42)
    {
LABEL_80:
      v58 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: found matches (%lu) in availability engine but SSIDs didn't match with %@", "-[WiFiScanResultsPreparer topRecommendableNetwork]", objc_msgSend(v33, "count"), -[WiFiScanObserverNetwork SSID](v32, "SSID")}];
      }

      goto LABEL_82;
    }

    v43 = v42;
    v44 = *v84;
LABEL_61:
    v45 = 0;
    while (1)
    {
      if (*v84 != v44)
      {
        objc_enumerationMutation(v33);
      }

      anyObject = *(v83 + 8 * v45);
      v47 = [objc_msgSend(anyObject "SSID")];
      if (v47)
      {
        break;
      }

      if (v43 == ++v45)
      {
        v43 = sub_1000F8F14(v47, v48, v49, v50, v51, v52, v53, v54, v62, v64, v66, v68, v70, v71, v73, v75, v76, v78, v80, key, v82, v83, v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1));
        if (v43)
        {
          goto LABEL_61;
        }

        goto LABEL_80;
      }
    }

    if (!anyObject)
    {
      goto LABEL_80;
    }

LABEL_76:
    if ([objc_msgSend(anyObject "network")] == 2 && objc_msgSend(anyObject, "unwantedNetworkName"))
    {
      v58 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: recommendation (%@) found but network name (%@) is considered unwanted", "-[WiFiScanResultsPreparer topRecommendableNetwork]", anyObject, objc_msgSend(anyObject, "SSID")}];
      }

LABEL_82:
      objc_autoreleasePoolPop(v58);
      anyObject = 0;
    }
  }

  return anyObject;
}

@end