@interface EventGeoTag
+ (BOOL)processGeoTagEventAt:(id)at bssid:(id)bssid ssid:(id)ssid lat:(double)lat lon:(double)lon withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing;
@end

@implementation EventGeoTag

+ (BOOL)processGeoTagEventAt:(id)at bssid:(id)bssid ssid:(id)ssid lat:(double)lat lon:(double)lon withPersistentContainer:(id)container andRunPostprocessing:(id)postprocessing
{
  v83 = *MEMORY[0x1E69E9840];
  atCopy = at;
  bssidCopy = bssid;
  ssidCopy = ssid;
  containerCopy = container;
  postprocessingCopy = postprocessing;
  v69 = [MEMORY[0x1E695DFA8] set];
  v20 = [UniqueMO getOrCreateBSS:bssidCopy andNetwork:ssidCopy withHasUpdatedNetwork:0 on:containerCopy];
  v21 = v20;
  if (!v20)
  {
    network2 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(network2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v76 = "+[EventGeoTag processGeoTagEventAt:bssid:ssid:lat:lon:withPersistentContainer:andRunPostprocessing:]";
      v77 = 1024;
      v78 = 44;
      v79 = 2112;
      v80 = ssidCopy;
      v81 = 2112;
      v82 = bssidCopy;
      _os_log_impl(&dword_1C8460000, network2, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssMO nil for %@[%@]", buf, 0x26u);
    }

    v67 = 0;
    v50 = 0;
    v68 = 0;
    goto LABEL_50;
  }

  geoTags = [v20 geoTags];
  v67 = geoTags;
  if (geoTags)
  {
    v23 = geoTags;
    v62 = v21;
    v63 = postprocessingCopy;
    v64 = containerCopy;
    v65 = ssidCopy;
    v24 = objc_alloc(MEMORY[0x1E6985C38]);
    v25 = CLLocationCoordinate2DMake(lat, lon);
    v66 = atCopy;
    v26 = [v24 initWithCoordinate:atCopy altitude:v25.latitude horizontalAccuracy:v25.longitude verticalAccuracy:-1.0 timestamp:{-1.0, -1.0}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v27 = v23;
    v28 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v68 = 0;
      v31 = *v71;
      v32 = 0.0;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v70 + 1) + 8 * i);
          date = [v34 date];
          [date timeIntervalSinceNow];
          v37 = v36;

          if (v37 >= -31104000.0)
          {
            if (v37 < 0.0)
            {
              v39 = v34;

              v68 = v39;
            }

            v40 = objc_alloc(MEMORY[0x1E6985C38]);
            [v34 latitude];
            v42 = v41;
            [v34 longitude];
            v44 = CLLocationCoordinate2DMake(v42, v43);
            date2 = [v34 date];
            v46 = [v40 initWithCoordinate:date2 altitude:v44.latitude horizontalAccuracy:v44.longitude verticalAccuracy:-1.0 timestamp:{-1.0, -1.0}];

            [v46 distanceFromLocation:v26];
            if (v47 <= 300.0)
            {
              v48 = v47;
              if (!v30 || v47 < v32)
              {
                v49 = v34;

                v32 = v48;
                v30 = v49;
              }
            }
          }

          else
          {
            v38 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v76 = "+[EventGeoTag processGeoTagEventAt:bssid:ssid:lat:lon:withPersistentContainer:andRunPostprocessing:]";
              v77 = 1024;
              v78 = 58;
              v79 = 2112;
              v80 = v34;
              _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:Expired geotag %@", buf, 0x1Cu);
            }

            [v69 addObject:v34];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
      v68 = 0;
    }

    if ([v27 count] >= 5 && v68 && (objc_msgSend(v69, "addObject:", v68), v30 == v68))
    {

      atCopy = v66;
      containerCopy = v64;
      ssidCopy = v65;
      v21 = v62;
      postprocessingCopy = v63;
    }

    else
    {

      ssidCopy = v65;
      postprocessingCopy = v63;
      containerCopy = v64;
      v21 = v62;
      if (v30)
      {
        v50 = v30;
        v51 = v50;
        atCopy = v66;
        goto LABEL_33;
      }

      atCopy = v66;
    }
  }

  else
  {
    v68 = 0;
  }

  v52 = +[GeoTagMO entity];
  v51 = [containerCopy newDatedEventObjectFor:v52 withDate:atCopy];

  if (!v51)
  {
    network2 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(network2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v76 = "+[EventGeoTag processGeoTagEventAt:bssid:ssid:lat:lon:withPersistentContainer:andRunPostprocessing:]";
      v77 = 1024;
      v78 = 93;
      _os_log_impl(&dword_1C8460000, network2, OS_LOG_TYPE_ERROR, "%{public}s::%d:geotagMO nil", buf, 0x12u);
    }

    v50 = 0;
LABEL_50:
    v51 = 0;
LABEL_42:

    goto LABEL_43;
  }

  [v51 setTaggedCount:0];
  v50 = 0;
LABEL_33:
  if ([v51 taggedCount])
  {
    [v51 latitude];
    [v51 setLatitude:{(lat + v53 * objc_msgSend(v51, "taggedCount")) / (objc_msgSend(v51, "taggedCount") + 1)}];
    [v51 longitude];
    v55 = lon + v54 * [v51 taggedCount];
    lon = v55 / ([v51 taggedCount] + 1);
  }

  else
  {
    [v51 setLatitude:lat];
  }

  [v51 setLongitude:lon];
  [v51 setTaggedCount:{objc_msgSend(v51, "taggedCount") + 1}];
  [v51 setDate:atCopy];
  [v21 removeGeoTags:v69];
  [v21 addGeoTagsObject:v51];
  v56 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    bssid = [v21 bssid];
    *buf = 136446722;
    v76 = "+[EventGeoTag processGeoTagEventAt:bssid:ssid:lat:lon:withPersistentContainer:andRunPostprocessing:]";
    v77 = 1024;
    v78 = 109;
    v79 = 2112;
    v80 = bssid;
    _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Added Geotag to BSS[%@]", buf, 0x1Cu);
  }

  if (postprocessingCopy)
  {
    v58 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      network = [v21 network];
      *buf = 136446722;
      v76 = "+[EventGeoTag processGeoTagEventAt:bssid:ssid:lat:lon:withPersistentContainer:andRunPostprocessing:]";
      v77 = 1024;
      v78 = 113;
      v79 = 2112;
      v80 = network;
      _os_log_impl(&dword_1C8460000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Immediate Postprocessing of classifyTraitsForNetwork:%@", buf, 0x1Cu);
    }

    network2 = [v21 network];
    [postprocessingCopy classifyTraitsForNetwork:network2 withReason:@"immediate processing of GeoTag Record"];
    goto LABEL_42;
  }

LABEL_43:

  return 0;
}

@end