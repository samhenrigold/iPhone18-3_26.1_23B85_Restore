@interface MSDMapViewController
- (MSDMapViewController)initWithDelegate:(id)delegate;
- (id)_getAnnotationWithStoreInfo:(id)info;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_recenter:(id)_recenter;
- (void)_recenterToCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_removeAllStoreAnnotations;
- (void)_zoomToAnnotation;
- (void)_zoomToCoordinate:(CLLocationCoordinate2D)coordinate withRadius:(double)radius allowZoomOut:(BOOL)out;
- (void)annotateStores:(id)stores;
- (void)deselectAnnotation;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)stopUpdatingUserLocation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)zoomToStore:(id)store;
@end

@implementation MSDMapViewController

- (MSDMapViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = MSDMapViewController;
  v5 = [(MSDMapViewController *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D75220] buttonWithType:1];
    [(MSDMapViewController *)v5 setRecenterButton:v6];

    recenterButton = [(MSDMapViewController *)v5 recenterButton];
    [recenterButton setHidden:1];

    [(MSDMapViewController *)v5 setUserLocation:0];
    [(MSDMapViewController *)v5 setDelegate:delegateCopy];
    v8 = objc_opt_new();
    [(MSDMapViewController *)v5 setMapView:v8];

    mapView = [(MSDMapViewController *)v5 mapView];
    [mapView setDelegate:v5];

    mapView2 = [(MSDMapViewController *)v5 mapView];
    [mapView2 setShowsUserLocation:1];

    mapView3 = [(MSDMapViewController *)v5 mapView];
    [mapView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    mapView4 = [(MSDMapViewController *)v5 mapView];
    [mapView4 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"StoreAnnotation"];

    mapView5 = [(MSDMapViewController *)v5 mapView];
    [mapView5 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"StoreClusterAnnotation"];
  }

  return v5;
}

- (void)viewDidLoad
{
  v38[2] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = MSDMapViewController;
  [(MSDMapViewController *)&v37 viewDidLoad];
  view = [(MSDMapViewController *)self view];
  mapView = [(MSDMapViewController *)self mapView];
  [view addSubview:mapView];

  v36 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  recenterButton = [(MSDMapViewController *)self recenterButton];
  [recenterButton setImage:v36 forState:0];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  recenterButton2 = [(MSDMapViewController *)self recenterButton];
  [recenterButton2 setTintColor:systemBlueColor];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  recenterButton3 = [(MSDMapViewController *)self recenterButton];
  [recenterButton3 setBackgroundColor:whiteColor];

  recenterButton4 = [(MSDMapViewController *)self recenterButton];
  layer = [recenterButton4 layer];
  [layer setCornerRadius:10.0];

  recenterButton5 = [(MSDMapViewController *)self recenterButton];
  layer2 = [recenterButton5 layer];
  [layer2 setBorderWidth:1.0];

  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  cGColor = [systemBlueColor2 CGColor];
  recenterButton6 = [(MSDMapViewController *)self recenterButton];
  layer3 = [recenterButton6 layer];
  [layer3 setBorderColor:cGColor];

  recenterButton7 = [(MSDMapViewController *)self recenterButton];
  [recenterButton7 setContentEdgeInsets:{5.0, 5.0, 5.0, 5.0}];

  recenterButton8 = [(MSDMapViewController *)self recenterButton];
  [recenterButton8 addTarget:self action:sel__recenter_ forControlEvents:64];

  recenterButton9 = [(MSDMapViewController *)self recenterButton];
  [recenterButton9 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(MSDMapViewController *)self view];
  recenterButton10 = [(MSDMapViewController *)self recenterButton];
  [view2 addSubview:recenterButton10];

  recenterButton11 = [(MSDMapViewController *)self recenterButton];
  trailingAnchor = [recenterButton11 trailingAnchor];
  view3 = [(MSDMapViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v38[0] = v25;
  recenterButton12 = [(MSDMapViewController *)self recenterButton];
  topAnchor = [recenterButton12 topAnchor];
  view4 = [(MSDMapViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v38[1] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v32];
}

- (void)viewDidLayoutSubviews
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MSDMapViewController;
  [(MSDMapViewController *)&v24 viewDidLayoutSubviews];
  mapView = [(MSDMapViewController *)self mapView];
  topAnchor = [mapView topAnchor];
  view = [(MSDMapViewController *)self view];
  topAnchor2 = [view topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v19;
  mapView2 = [(MSDMapViewController *)self mapView];
  bottomAnchor = [mapView2 bottomAnchor];
  view2 = [(MSDMapViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[1] = v14;
  mapView3 = [(MSDMapViewController *)self mapView];
  leftAnchor = [mapView3 leftAnchor];
  view3 = [(MSDMapViewController *)self view];
  leftAnchor2 = [view3 leftAnchor];
  v6 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v25[2] = v6;
  mapView4 = [(MSDMapViewController *)self mapView];
  rightAnchor = [mapView4 rightAnchor];
  view4 = [(MSDMapViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v12];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MSDMapViewController;
  [(MSDMapViewController *)&v4 viewWillDisappear:disappear];
  [(MSDMapViewController *)self stopUpdatingUserLocation];
}

- (void)zoomToStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = defaultLogHandle(storeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = storeCopy;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Zooming to store %{public}@...", &v17, 0xCu);
  }

  v6 = [(MSDMapViewController *)self _getAnnotationWithStoreInfo:storeCopy];
  mapView = [(MSDMapViewController *)self mapView];
  selectedAnnotations = [mapView selectedAnnotations];
  v9 = [selectedAnnotations count];

  if (v9 == 1)
  {
    mapView2 = [(MSDMapViewController *)self mapView];
    selectedAnnotations2 = [mapView2 selectedAnnotations];
    firstObject = [selectedAnnotations2 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memberAnnotations = [firstObject memberAnnotations];
      firstObject2 = [memberAnnotations firstObject];

      firstObject = firstObject2;
    }

    if ([v6 isSameLocation:firstObject])
    {
      [MSDMapViewController zoomToStore:v6];
      goto LABEL_13;
    }
  }

  if (v6)
  {
    firstObject = [(MSDMapViewController *)self mapView];
    [firstObject selectAnnotation:v6 animated:1];
  }

  else
  {
    v16 = defaultLogHandle(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MSDMapViewController *)storeCopy zoomToStore:v16];
    }

    firstObject = [storeCopy storeLocation];
    [firstObject coordinate];
    [MSDMapViewController _zoomToCoordinate:"_zoomToCoordinate:withRadius:allowZoomOut:" withRadius:0 allowZoomOut:?];
  }

LABEL_13:
}

- (void)deselectAnnotation
{
  v19 = *MEMORY[0x277D85DE8];
  mapView = [(MSDMapViewController *)self mapView];
  selectedAnnotations = [mapView selectedAnnotations];
  v5 = [selectedAnnotations count];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    mapView2 = [(MSDMapViewController *)self mapView];
    selectedAnnotations2 = [mapView2 selectedAnnotations];

    v8 = [selectedAnnotations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(selectedAnnotations2);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          mapView3 = [(MSDMapViewController *)self mapView];
          [mapView3 deselectAnnotation:v12 animated:1];

          ++v11;
        }

        while (v9 != v11);
        v9 = [selectedAnnotations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)annotateStores:(id)stores
{
  v19 = *MEMORY[0x277D85DE8];
  storesCopy = stores;
  v5 = storesCopy;
  if (storesCopy && [storesCopy count])
  {
    [(MSDMapViewController *)self _removeAllStoreAnnotations];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          mapView = [(MSDMapViewController *)self mapView];
          v13 = [[MSDMapAnnotation alloc] initWithStoreInfo:v11];
          [mapView addAnnotation:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(MSDMapViewController *)self _zoomToAnnotation];
  }
}

- (void)stopUpdatingUserLocation
{
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "Stopping User Location Update...", v5, 2u);
  }

  mapView = [(MSDMapViewController *)self mapView];
  [mapView setShowsUserLocation:0];
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userLocation = [(MSDMapViewController *)selfCopy userLocation];

  if (!userLocation)
  {
    recenterButton = [(MSDMapViewController *)selfCopy recenterButton];
    [recenterButton setHidden:0];

    location = [locationCopy location];
    [location coordinate];
    [MSDMapViewController _zoomToCoordinate:selfCopy withRadius:"_zoomToCoordinate:withRadius:allowZoomOut:" allowZoomOut:0];
  }

  location2 = [locationCopy location];
  [(MSDMapViewController *)selfCopy setUserLocation:location2];

  delegate = [(MSDMapViewController *)selfCopy delegate];
  userLocation2 = [(MSDMapViewController *)selfCopy userLocation];
  [delegate userLocationDidChange:userLocation2];

  objc_sync_exit(selfCopy);
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  v24 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = annotationCopy;
    mapView = [(MSDMapViewController *)self mapView];
    v8 = [mapView dequeueReusableAnnotationViewWithIdentifier:@"StoreClusterAnnotation" forAnnotation:v6];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v8 setGlyphTintColor:whiteColor];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [v8 setMarkerTintColor:systemRedColor];
LABEL_8:

    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    systemRedColor = annotationCopy;
    mapView2 = [(MSDMapViewController *)self mapView];
    v8 = [mapView2 dequeueReusableAnnotationViewWithIdentifier:@"StoreAnnotation"];

    [v8 setClusteringIdentifier:*MEMORY[0x277CD4BC8]];
    storeInfo = [systemRedColor storeInfo];
    isHQ = [storeInfo isHQ];

    if (isHQ)
    {
      v15 = @"building.2.fill";
    }

    else
    {
      v15 = @"mappin";
    }

    v16 = [MEMORY[0x277D755B8] systemImageNamed:v15];
    [v8 setGlyphImage:v16];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [v8 setGlyphTintColor:whiteColor2];

    systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
    [v8 setMarkerTintColor:systemRedColor2];

    goto LABEL_8;
  }

  v19 = defaultLogHandle(isKindOfClass);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = objc_opt_class();
    v20 = v23;
    _os_log_impl(&dword_259BCA000, v19, OS_LOG_TYPE_DEFAULT, "Unrecognized annotation class: %{public}@, ignoring...", &v22, 0xCu);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  v40[1] = *MEMORY[0x277D85DE8];
  annotationViewCopy = annotationView;
  annotation = [annotationViewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  annotation2 = [annotationViewCopy annotation];
  if (isKindOfClass)
  {
    v9 = objc_alloc(MEMORY[0x277CD4DB0]);
    v40[0] = annotation2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    annotation3 = [v9 initWithMemberAnnotations:v10];

    if (!annotation3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
      goto LABEL_23;
    }

    annotation3 = [annotationViewCopy annotation];
    if (!annotation3)
    {
      goto LABEL_23;
    }
  }

  if (([annotation3 isSameCoordinate] & 1) != 0 || objc_msgSend(annotation3, "isInCloseProximity"))
  {
    mapView = objc_opt_new();
    memberAnnotations = [annotation3 memberAnnotations];
    firstObject = [memberAnnotations firstObject];

    storeInfo = [firstObject storeInfo];
    storeLocation = [storeInfo storeLocation];
    [storeLocation coordinate];
    v19 = v18;
    v21 = v20;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    memberAnnotations2 = [annotation3 memberAnnotations];
    v23 = [memberAnnotations2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(memberAnnotations2);
          }

          storeInfo2 = [*(*(&v31 + 1) + 8 * v26) storeInfo];
          [mapView addObject:storeInfo2];

          ++v26;
        }

        while (v24 != v26);
        v24 = [memberAnnotations2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v24);
    }

    v29 = defaultLogHandle(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[MSDMapViewController mapView:didSelectAnnotationView:]";
      v37 = 2112;
      v38 = mapView;
      _os_log_impl(&dword_259BCA000, v29, OS_LOG_TYPE_DEFAULT, "%s - stores %@ selected", buf, 0x16u);
    }

    if ([annotation3 isSameCoordinate])
    {
      [(MSDMapViewController *)self _zoomToCoordinate:0 withRadius:v19 allowZoomOut:v21, 300.0];
    }

    else
    {
      [(MSDMapViewController *)self _recenterToCoordinate:v19, v21];
    }

    delegate = [(MSDMapViewController *)self delegate];
    [delegate didSelectStores:mapView forViewController:self];
  }

  else
  {
    mapView = [(MSDMapViewController *)self mapView];
    firstObject = [annotation3 memberAnnotations];
    [mapView showAnnotations:firstObject animated:1];
  }

LABEL_23:
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  v36 = *MEMORY[0x277D85DE8];
  annotationViewCopy = annotationView;
  annotation = [annotationViewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  annotation2 = [annotationViewCopy annotation];
  v9 = annotation2;
  if (isKindOfClass)
  {
    v10 = defaultLogHandle(annotation2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      storeInfo = [v9 storeInfo];
      v31 = storeInfo;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      *buf = 136315394;
      v33 = "[MSDMapViewController mapView:didDeselectAnnotationView:]";
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_259BCA000, v10, OS_LOG_TYPE_DEFAULT, "%s - stores %{public}@ de-selected", buf, 0x16u);
    }

    delegate = [(MSDMapViewController *)self delegate];
    storeInfo2 = [v9 storeInfo];
    v30 = storeInfo2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [delegate didDeselectStores:v15 forViewController:self];

    goto LABEL_18;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v9 = objc_opt_new();
    delegate = [annotationViewCopy annotation];
    if (([delegate isSameCoordinate] & 1) == 0 && !objc_msgSend(delegate, "isInCloseProximity"))
    {
      goto LABEL_19;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memberAnnotations = [delegate memberAnnotations];
    v18 = [memberAnnotations countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(memberAnnotations);
          }

          storeInfo3 = [*(*(&v25 + 1) + 8 * v21) storeInfo];
          [v9 addObject:storeInfo3];

          ++v21;
        }

        while (v19 != v21);
        v19 = [memberAnnotations countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v24 = defaultLogHandle(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[MSDMapViewController mapView:didDeselectAnnotationView:]";
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_259BCA000, v24, OS_LOG_TYPE_DEFAULT, "%s - stores %@ de-selected", buf, 0x16u);
    }

    storeInfo2 = [(MSDMapViewController *)self delegate];
    [storeInfo2 didDeselectStores:v9 forViewController:self];
LABEL_18:

LABEL_19:
  }
}

- (void)_zoomToAnnotation
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(MSDMapViewController *)self deselectAnnotation];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mapView = [(MSDMapViewController *)self mapView];
  annotations = [mapView annotations];

  v6 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(annotations);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          storeInfo = [v10 storeInfo];
          if ([storeInfo isNearby])
          {
            [v3 addObject:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [annotations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  mapView2 = [(MSDMapViewController *)self mapView];
  [mapView2 showAnnotations:v3 animated:1];
}

- (void)_recenter:(id)_recenter
{
  userLocation = [(MSDMapViewController *)self userLocation];

  if (userLocation)
  {
    v6 = defaultLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "Recentering to current user location...", v8, 2u);
    }

    userLocation2 = [(MSDMapViewController *)self userLocation];
    [userLocation2 coordinate];
    [MSDMapViewController _zoomToCoordinate:"_zoomToCoordinate:withRadius:allowZoomOut:" withRadius:1 allowZoomOut:?];

    [(MSDMapViewController *)self deselectAnnotation];
  }
}

- (void)_zoomToCoordinate:(CLLocationCoordinate2D)coordinate withRadius:(double)radius allowZoomOut:(BOOL)out
{
  v7 = MEMORY[0x259CB0C70](self, a2, coordinate, *&coordinate.longitude, radius + radius, radius + radius);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (!out)
  {
    mapView = [(MSDMapViewController *)self mapView];
    [mapView region];
    v16 = v15;
    v18 = v17;

    if (v16 < v11)
    {
      v11 = v16;
    }

    if (v18 < v13)
    {
      v13 = v18;
    }
  }

  mapView2 = [(MSDMapViewController *)self mapView];
  [mapView2 setRegion:1 animated:{v7, v9, v11, v13}];
}

- (void)_recenterToCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = [(MSDMapViewController *)self mapView];
  [mapView region];
  v8 = v7;
  v10 = v9;

  mapView2 = [(MSDMapViewController *)self mapView];
  [mapView2 setRegion:1 animated:{latitude, longitude, v8, v10}];
}

- (id)_getAnnotationWithStoreInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mapView = [(MSDMapViewController *)self mapView];
  annotations = [mapView annotations];

  v6 = [annotations countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(annotations);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          storeInfo = [v11 storeInfo];
          appleID = [storeInfo appleID];
          appleID2 = [infoCopy appleID];
          v15 = [appleID isEqual:appleID2];

          if (v15)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [annotations countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)_removeAllStoreAnnotations
{
  mapView = [(MSDMapViewController *)self mapView];
  mapView2 = [(MSDMapViewController *)self mapView];
  annotations = [mapView2 annotations];
  [mapView removeAnnotations:annotations];
}

- (void)zoomToStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_259BCA000, a2, OS_LOG_TYPE_ERROR, "Unable to find annotation for store: %{public}@", &v2, 0xCu);
}

- (void)zoomToStore:(void *)a1 .cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 storeInfo];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Store %{public}@ have coordinate already zoomed, skipping", &v4, 0xCu);
  }
}

@end