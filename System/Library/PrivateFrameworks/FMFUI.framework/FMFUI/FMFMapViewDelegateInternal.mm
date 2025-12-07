@interface FMFMapViewDelegateInternal
- ($7A2C3A43EE5A76686BB0A44688CCB5FC)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)coordinate andRadius:(double)radius;
- (BOOL)canSelectAnnotation:(id)annotation;
- (CLLocationCoordinate2D)lastUserLocationCoordinate;
- (FMFMapViewDelegateInternal)initWithDelegate:(id)delegate mapView:(id)view;
- (FMFMapViewDelegateInternalDelegate)delegate;
- (UIEdgeInsets)edgeInsetsWithMinApplied:(UIEdgeInsets)applied;
- (id)accuracyCircleForLocation:(id)location;
- (id)fmfOverlayColor;
- (id)fmfOverlayColorSatellite;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_moveCenterByOffset:(CGPoint)offset from:(CLLocationCoordinate2D)from mapView:(id)view;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)selectAnnotation:(id)annotation;
- (void)slideAnnotation:(id)annotation intoViewIfNeededForMapView:(id)view;
- (void)zoomToFitAnnotationsForMapView:(id)view includeMe:(BOOL)me duration:(double)duration;
- (void)zoomToFitLocation:(id)location forMapView:(id)view;
@end

@implementation FMFMapViewDelegateInternal

- (FMFMapViewDelegateInternal)initWithDelegate:(id)delegate mapView:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v8 = objc_alloc_init(objc_opt_class());

  [(FMFMapViewDelegateInternal *)v8 setDelegate:delegateCopy];
  [(FMFMapViewDelegateInternal *)v8 setMapView:viewCopy];
  objc_initWeak(&location, v8);
  v9 = objc_alloc_init(FMFWildcardGestureRecognizer);
  [(FMFMapViewDelegateInternal *)v8 setGr:v9];

  [(FMFWildcardGestureRecognizer *)v8->_gr setDelegate:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke;
  v13[3] = &unk_278FE2B78;
  objc_copyWeak(&v14, &location);
  [(FMFWildcardGestureRecognizer *)v8->_gr setTouchesBeganCallback:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke_2;
  v11[3] = &unk_278FE2B78;
  objc_copyWeak(&v12, &location);
  [(FMFWildcardGestureRecognizer *)v8->_gr setTouchesEndedCallback:v11];
  [viewCopy addGestureRecognizer:v8->_gr];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRespondingToUserTouch:1];
}

void __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelector:sel_endTouches withObject:0 afterDelay:0.5];
}

- (BOOL)canSelectAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(FMFMapViewDelegateInternal *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate canSelectAnnotation:annotationCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)selectAnnotation:(id)annotation
{
  annotationCopy = annotation;
  mapView = [(FMFMapViewDelegateInternal *)self mapView];
  [mapView selectAnnotation:annotationCopy animated:1];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:@"fmfAnnotation"];
    delegate = [(FMFMapViewDelegateInternal *)self delegate];
    _internalAnnotationTintColor = [delegate _internalAnnotationTintColor];
    if (_internalAnnotationTintColor)
    {
      [annotationCopy setTintColor:_internalAnnotationTintColor];
    }

    else
    {
      fmfOrangeColor = [MEMORY[0x277D75348] fmfOrangeColor];
      [annotationCopy setTintColor:fmfOrangeColor];
    }

    handle = [annotationCopy handle];
    v13 = [delegate annotationImageForAnnotation:annotationCopy andHandle:handle];
    [annotationCopy setSmallAnnotationIcon:v13];
    [annotationCopy setLargeAnnotationIcon:v13];

    if (!v8)
    {
      v14 = [FMFAnnotationView alloc];
      tintColor = [annotationCopy tintColor];
      v8 = [(FMFAnnotationView *)v14 initWithAnnotation:annotationCopy reuseIdentifier:@"fmfAnnotation" tintColor:tintColor];
    }

    handle2 = [annotationCopy handle];
    cachedPrettyName = [handle2 cachedPrettyName];

    v18 = MEMORY[0x277CCACA8];
    locationShortAddressWithAgeIncludeLocating = [annotationCopy locationShortAddressWithAgeIncludeLocating];
    v20 = [v18 stringWithFormat:@"%@, %@", cachedPrettyName, locationShortAddressWithAgeIncludeLocating];
    [(FMFAnnotationView *)v8 setAccessibilityLabel:v20];

    [(FMAnnotationView *)v8 setShouldPreventLargeAnnotationState:[(FMFMapViewDelegateInternal *)self canSelectAnnotation:annotationCopy]^ 1];
    if (!cachedPrettyName)
    {
      handle3 = [annotationCopy handle];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__FMFMapViewDelegateInternal_mapView_viewForAnnotation___block_invoke;
      v23[3] = &unk_278FE2B50;
      v24 = viewCopy;
      v25 = annotationCopy;
      [handle3 prettyNameWithCompletion:v23];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __56__FMFMapViewDelegateInternal_mapView_viewForAnnotation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) annotations];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) removeAnnotation:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 addAnnotation:v5];
  }
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  annotation = [annotationViewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    annotation2 = [annotationViewCopy annotation];
    delegate = [(FMFMapViewDelegateInternal *)self delegate];
    [delegate didSelectLocation:annotation2];
    if (![(FMFMapViewDelegateInternal *)self isMapCenteringDisabled])
    {
      annotation3 = [annotationViewCopy annotation];
      [(FMFMapViewDelegateInternal *)self slideAnnotation:annotation3 intoViewIfNeededForMapView:viewCopy];
    }
  }
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  annotation = [annotationViewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    annotation2 = [annotationViewCopy annotation];
    selectedAnnotationView = [(FMFMapViewDelegateInternal *)self selectedAnnotationView];
    annotation3 = [selectedAnnotationView annotation];
    annotation4 = [annotationViewCopy annotation];
    v13 = [annotation3 isEqual:annotation4];

    if (v13)
    {
      [(FMFMapViewDelegateInternal *)self setSelectedAnnotationView:0];
    }

    delegate = [(FMFMapViewDelegateInternal *)self delegate];
    if (([delegate alwaysShowAccuracy] & 1) == 0)
    {
      overlays = [viewCopy overlays];
      [viewCopy removeOverlays:overlays];
    }

    [delegate didDeselectLocation:annotation2];
  }
}

- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if ([(FMFMapViewDelegateInternal *)self respondingToUserTouch])
  {
    [viewCopy centerCoordinate];
    beforeCoordinate = v6;
    *algn_27EF4E968 = v7;
    [viewCopy region];
    beforeSpan = v8;
    *algn_27EF4E978 = v9;
  }

  delegate = [(FMFMapViewDelegateInternal *)self delegate];
  [delegate regionWillChangeAnimated:animatedCopy];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if ([(FMFMapViewDelegateInternal *)self respondingToUserTouch])
  {
    [viewCopy centerCoordinate];
    v7 = v6;
    v9 = v8;
    [viewCopy convertCoordinate:0 toPointToView:{*&beforeCoordinate, *algn_27EF4E968}];
    v11 = v10;
    v13 = v12;
    [viewCopy convertCoordinate:0 toPointToView:{v7, v9}];
    v15 = v14;
    v17 = v16;
    [viewCopy region];
    if (vabdd_f64(v18, *&beforeSpan) > 0.0001 || sqrt((v17 - v13) * (v17 - v13) + (v15 - v11) * (v15 - v11)) > 20.0)
    {
      delegate = [(FMFMapViewDelegateInternal *)self delegate];
      [delegate setShouldZoomToFitNewLocations:0];
    }

    [(FMFMapViewDelegateInternal *)self setRespondingToUserTouch:0];
  }

  delegate2 = [(FMFMapViewDelegateInternal *)self delegate];
  [delegate2 regionDidChangeAnimated:animatedCopy];
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  locationCopy = location;
  [locationCopy coordinate];
  if (vabdd_f64(v5, self->_lastUserLocationCoordinate.latitude) >= 0.0001 || ([locationCopy coordinate], vabdd_f64(v6, self->_lastUserLocationCoordinate.longitude) >= 0.0001))
  {
    [locationCopy coordinate];
    [(FMFMapViewDelegateInternal *)self setLastUserLocationCoordinate:?];
    delegate = [(FMFMapViewDelegateInternal *)self delegate];
    if ([delegate shouldZoomToFitMeAndLocations])
    {
      [delegate reZoomToFit];
    }

    [delegate didUpdateUserLocation:locationCopy];
  }
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  v4 = [(FMFMapViewDelegateInternal *)self delegate:map];
  [v4 mapViewDidFinishRenderingMap];
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  v6 = MEMORY[0x277CD4DA8];
  overlayCopy = overlay;
  viewCopy = view;
  v9 = [[v6 alloc] initWithCircle:overlayCopy];

  mapType = [viewCopy mapType];
  if (mapType)
  {
    [(FMFMapViewDelegateInternal *)self fmfOverlayColorSatellite];
  }

  else
  {
    [(FMFMapViewDelegateInternal *)self fmfOverlayColor];
  }
  v11 = ;
  [v9 setFillColor:v11];

  return v9;
}

- (id)fmfOverlayColor
{
  delegate = [(FMFMapViewDelegateInternal *)self delegate];
  _internalAnnotationTintColor = [delegate _internalAnnotationTintColor];
  v4 = [_internalAnnotationTintColor colorWithAlphaComponent:0.100000001];

  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.156862751 blue:0.0 alpha:0.0799999982];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)fmfOverlayColorSatellite
{
  delegate = [(FMFMapViewDelegateInternal *)self delegate];
  _internalAnnotationTintColor = [delegate _internalAnnotationTintColor];
  v4 = [_internalAnnotationTintColor colorWithAlphaComponent:0.200000003];

  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.156862751 blue:0.0 alpha:0.200000003];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)accuracyCircleForLocation:(id)location
{
  v3 = MEMORY[0x277CD4DA0];
  locationCopy = location;
  location = [locationCopy location];
  [location coordinate];
  v7 = v6;
  v9 = v8;
  location2 = [locationCopy location];

  [location2 horizontalAccuracy];
  v12 = [v3 circleWithCenterCoordinate:v7 radius:{v9, v11}];

  return v12;
}

- (void)slideAnnotation:(id)annotation intoViewIfNeededForMapView:(id)view
{
  annotationCopy = annotation;
  viewCopy = view;
  [annotationCopy coordinate];
  [viewCopy convertCoordinate:viewCopy toPointToView:?];
  v8 = v7;
  v10 = 170.0 - v9;
  if (v7 < 52.0)
  {
    v11 = 52.0;
LABEL_3:
    v12 = v11 - v8;
    goto LABEL_4;
  }

  [viewCopy frame];
  v16 = v15 + -52.0;
  if (v10 <= 0.0 && v8 <= v16)
  {
    goto LABEL_11;
  }

  v12 = 0.0;
  if (v8 > v16)
  {
    [viewCopy frame];
    v11 = v18 + -52.0;
    goto LABEL_3;
  }

LABEL_4:
  [annotationCopy coordinate];
  [(FMFMapViewDelegateInternal *)self _moveCenterByOffset:viewCopy from:v12 mapView:fmax(v10, 0.0), v13, v14];
LABEL_11:
}

- (void)_moveCenterByOffset:(CGPoint)offset from:(CLLocationCoordinate2D)from mapView:(id)view
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  [viewCopy centerCoordinate];
  [viewCopy convertCoordinate:viewCopy toPointToView:?];
  [viewCopy convertPoint:viewCopy toCoordinateFromView:{v7 - x, v8 - y}];
  latitude = v13.latitude;
  longitude = v13.longitude;
  if (CLLocationCoordinate2DIsValid(v13))
  {
    [viewCopy setCenterCoordinate:1 animated:{latitude, longitude}];
  }
}

- (void)zoomToFitLocation:(id)location forMapView:(id)view
{
  v52 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [location coordinate];
  v8 = v7;
  v10 = v9;
  v11 = [(FMFMapViewDelegateInternal *)self regionIsValid:?];
  if (v11)
  {
    [FMFMapUtilities mapRectForCoordinateRegion:v8, v10, 0.003, 0.003];
    v46 = v13;
    v47 = v12;
    v44 = v15;
    v45 = v14;
    delegate = [(FMFMapViewDelegateInternal *)self delegate];
    [delegate edgeInsets];
    [(FMFMapViewDelegateInternal *)self edgeInsetsWithMinApplied:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    mapView = [(FMFMapViewDelegateInternal *)self mapView];
    [mapView bounds];
    v27 = v26;
    v29 = v28;

    mapView2 = [(FMFMapViewDelegateInternal *)self mapView];
    [mapView2 mapRectThatFits:v47 edgePadding:{v46, v45, v44, v18, v20, v22, v24}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v32 forViewSize:{v34, v36, v38, v27, v29}];
    v40 = LogCategory_Daemon(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v39 debugDescription];
      *buf = 138412290;
      v51 = v41;
      _os_log_impl(&dword_24A4E3000, v40, OS_LOG_TYPE_DEFAULT, "FMMapViewDelegateInternal: camera updated %@", buf, 0xCu);
    }

    if ([FMFMapUtilities doNotAnimateToNewLocation:viewCopy forMapView:v8, v10])
    {
      mapView3 = [(FMFMapViewDelegateInternal *)self mapView];
      [mapView3 setCamera:v39 animated:0];
    }

    else
    {
      v43 = MEMORY[0x277D75D18];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __59__FMFMapViewDelegateInternal_zoomToFitLocation_forMapView___block_invoke;
      v48[3] = &unk_278FE2A10;
      v48[4] = self;
      v49 = v39;
      [v43 animateWithDuration:v48 animations:0.200000003];
    }
  }

  else
  {
    delegate = LogCategory_Daemon(v11);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A4E3000, delegate, OS_LOG_TYPE_DEFAULT, "Not zooming due to invalid region (0,0).", buf, 2u);
    }
  }
}

void __59__FMFMapViewDelegateInternal_zoomToFitLocation_forMapView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setCamera:*(a1 + 40) animated:1];
}

- (void)zoomToFitAnnotationsForMapView:(id)view includeMe:(BOOL)me duration:(double)duration
{
  v109 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  userTrackingMode = [viewCopy userTrackingMode];
  if (userTrackingMode != 2)
  {
    v10 = LogCategory_Daemon(userTrackingMode);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A4E3000, v10, OS_LOG_TYPE_DEFAULT, "zoomToFitAnnotationsForMapView", buf, 2u);
    }

    delegate = [(FMFMapViewDelegateInternal *)self delegate];
    if (![delegate viewWillAppearCalled])
    {
      goto LABEL_46;
    }

    annotations = [viewCopy annotations];
    if (me)
    {
      mapView = [(FMFMapViewDelegateInternal *)self mapView];
      selectedAnnotations = [mapView selectedAnnotations];
      v15 = [selectedAnnotations count];

      if (!v15)
      {
        goto LABEL_29;
      }

      mapView2 = [(FMFMapViewDelegateInternal *)self mapView];
      selectedAnnotations2 = [mapView2 selectedAnnotations];
      array = [selectedAnnotations2 mutableCopy];

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      mapView3 = [(FMFMapViewDelegateInternal *)self mapView];
      annotations2 = [mapView3 annotations];

      v21 = [annotations2 countByEnumeratingWithState:&v97 objects:v107 count:16];
      if (v21)
      {
        v22 = v21;
        v91 = annotations;
        v93 = delegate;
        v23 = *v98;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v98 != v23)
            {
              objc_enumerationMutation(annotations2);
            }

            v25 = *(*(&v97 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [array addObject:v25];
              goto LABEL_27;
            }
          }

          v22 = [annotations2 countByEnumeratingWithState:&v97 objects:v107 count:16];
          if (v22)
          {
            continue;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      annotations2 = annotations;
      v26 = [annotations2 countByEnumeratingWithState:&v101 objects:v108 count:16];
      if (v26)
      {
        v27 = v26;
        v91 = annotations;
        v93 = delegate;
        v28 = *v102;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v102 != v28)
            {
              objc_enumerationMutation(annotations2);
            }

            v30 = *(*(&v101 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [array addObject:v30];
            }
          }

          v27 = [annotations2 countByEnumeratingWithState:&v101 objects:v108 count:16];
        }

        while (v27);
LABEL_27:
        annotations = v91;
        delegate = v93;
      }
    }

    annotations = array;
LABEL_29:
    [FMFMapUtilities regionForAnnotations:annotations];
    latitude = v31;
    longitude = v33;
    latitudeDelta = v35;
    longitudeDelta = v37;
    firstObject = [annotations firstObject];
    if ([delegate alwaysShowAccuracy] && !me)
    {
      [firstObject coordinate];
      v41 = v40;
      v43 = v42;
      location = [firstObject location];
      [location horizontalAccuracy];
      [(FMFMapViewDelegateInternal *)self mapRectMakeWithRadialDistanceForCoordinate:v41 andRadius:v43, v45];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v110.origin.x = v47;
      v110.origin.y = v49;
      v110.size.width = v51;
      v110.size.height = v53;
      v111 = MKCoordinateRegionForMapRect(v110);
      latitude = v111.center.latitude;
      longitude = v111.center.longitude;
      latitudeDelta = v111.span.latitudeDelta;
      longitudeDelta = v111.span.longitudeDelta;
    }

    if (latitudeDelta < 0.003)
    {
      latitudeDelta = 0.003;
    }

    if (longitudeDelta < 0.003)
    {
      longitudeDelta = 0.003;
    }

    longitudeDelta = [(FMFMapViewDelegateInternal *)self regionIsValid:latitude, longitude, latitudeDelta, longitudeDelta];
    if (longitudeDelta)
    {
      durationCopy = duration;
      v88 = longitude;
      v89 = latitude;
      [FMFMapUtilities mapRectForCoordinateRegion:latitude, longitude, latitudeDelta, longitudeDelta];
      v90 = v56;
      v92 = v55;
      v58 = v57;
      v60 = v59;
      [delegate edgeInsets];
      [(FMFMapViewDelegateInternal *)self edgeInsetsWithMinApplied:?];
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      mapView4 = [(FMFMapViewDelegateInternal *)self mapView];
      [mapView4 bounds];
      v71 = v70;
      v73 = v72;

      mapView5 = [(FMFMapViewDelegateInternal *)self mapView];
      [mapView5 mapRectThatFits:v92 edgePadding:{v90, v58, v60, v62, v64, v66, v68}];
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;

      v83 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v76 forViewSize:{v78, v80, v82, v71, v73}];
      v84 = LogCategory_Daemon(v83);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = [v83 debugDescription];
        *buf = 138412290;
        v106 = v85;
        _os_log_impl(&dword_24A4E3000, v84, OS_LOG_TYPE_DEFAULT, "FMFMapViewDelegateInternal: zoomToFitAnnotationsForMapView new camera %@", buf, 0xCu);
      }

      if (durationCopy <= 0.0 || [FMFMapUtilities doNotAnimateToNewLocation:viewCopy forMapView:v89, v88])
      {
        mapView6 = [(FMFMapViewDelegateInternal *)self mapView];
        [mapView6 setCamera:v83 animated:0];
      }

      else
      {
        v87 = MEMORY[0x277D75D18];
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __80__FMFMapViewDelegateInternal_zoomToFitAnnotationsForMapView_includeMe_duration___block_invoke;
        v95[3] = &unk_278FE2A10;
        v95[4] = self;
        v83 = v83;
        v96 = v83;
        [v87 animateWithDuration:196614 delay:v95 options:&__block_literal_global_1 animations:durationCopy completion:0.0];
      }
    }

    else
    {
      v83 = LogCategory_Daemon(longitudeDelta);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A4E3000, v83, OS_LOG_TYPE_DEFAULT, "Not zooming due to invalid region (0,0).", buf, 2u);
      }
    }

LABEL_46:
  }
}

void __80__FMFMapViewDelegateInternal_zoomToFitAnnotationsForMapView_includeMe_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setCamera:*(a1 + 40) animated:1];
}

- ($7A2C3A43EE5A76686BB0A44688CCB5FC)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)coordinate andRadius:(double)radius
{
  latitude = coordinate.latitude;
  v6 = MKMapPointForCoordinate(coordinate);
  v7 = MEMORY[0x24C2193E0](latitude) * radius;
  v8 = v6.x - v7;
  v9 = v6.y - v7;
  v10 = v7 + v7;
  v11 = v10;
  result.var1.var1 = v11;
  result.var1.var0 = v10;
  result.var0.var1 = v9;
  result.var0.var0 = v8;
  return result;
}

- (UIEdgeInsets)edgeInsetsWithMinApplied:(UIEdgeInsets)applied
{
  right = applied.right;
  bottom = applied.bottom;
  left = applied.left;
  top = applied.top;
  v22 = *MEMORY[0x277D85DE8];
  v7 = LogCategory_Daemon(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218752;
    v15 = top;
    v16 = 2048;
    v17 = left;
    v18 = 2048;
    v19 = right;
    v20 = 2048;
    v21 = bottom;
    _os_log_impl(&dword_24A4E3000, v7, OS_LOG_TYPE_DEFAULT, "FMMapViewDelegateInternal: before top: %f, left: %f, right: %f, bottom: %f", &v14, 0x2Au);
  }

  if (top < 48.0)
  {
    top = 48.0;
  }

  if (left < 38.0)
  {
    left = 38.0;
  }

  if (right < 38.0)
  {
    right = 38.0;
  }

  if (bottom < 48.0)
  {
    bottom = 48.0;
  }

  v9 = LogCategory_Daemon(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218752;
    v15 = top;
    v16 = 2048;
    v17 = left;
    v18 = 2048;
    v19 = right;
    v20 = 2048;
    v21 = bottom;
    _os_log_impl(&dword_24A4E3000, v9, OS_LOG_TYPE_DEFAULT, "FMMapViewDelegateInternal: after top: %f, left: %f, right: %f, bottom: %f", &v14, 0x2Au);
  }

  v10 = top;
  v11 = left;
  v12 = bottom;
  v13 = right;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (FMFMapViewDelegateInternalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLLocationCoordinate2D)lastUserLocationCoordinate
{
  latitude = self->_lastUserLocationCoordinate.latitude;
  longitude = self->_lastUserLocationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end