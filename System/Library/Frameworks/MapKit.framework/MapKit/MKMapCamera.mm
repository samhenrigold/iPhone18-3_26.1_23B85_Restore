@interface MKMapCamera
+ (CLLocationCoordinate2D)_adjustCoordinateForPitch:(CLLocationCoordinate2D)pitch heading:(double)heading pitch:(double)a5 minimumPitchRequiredForAdjustment:(double)adjustment tolerance:(double)tolerance;
+ (MKMapCamera)camera;
+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromDistance:(CLLocationDistance)distance pitch:(CGFloat)pitch heading:(CLLocationDirection)heading;
+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromEyeCoordinate:(CLLocationCoordinate2D)eyeCoordinate eyeAltitude:(CLLocationDistance)eyeAltitude;
+ (MKMapCamera)cameraLookingAtMapItem:(MKMapItem *)mapItem forViewSize:(CGSize)viewSize allowPitch:(BOOL)allowPitch;
+ (id)_cameraLookingAtGEOMapRect:(id *)rect aspectRatio:(float)ratio;
+ (id)_cameraLookingAtMapRect:(id)rect forViewSize:(CGSize)size;
+ (id)_cameraLookingAtScene:(id)scene;
+ (unint64_t)_sizeCategoryForViewSize:(CGSize)size;
- ($9433BFB5400FDC760880D1BFD6845728)_enclosingGEOMapRectForAspectRatio:(float)ratio;
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CGFloat)pitch;
- (CLLocationCoordinate2D)centerCoordinate;
- (CLLocationDirection)heading;
- (CLLocationDistance)altitude;
- (CLLocationDistance)centerCoordinateDistance;
- (MKMapCamera)initWithCoder:(id)coder;
- (id)_mapView;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setPrecisePitch:(double)pitch;
- (void)_updateState;
- (void)encodeWithCoder:(id)coder;
- (void)setAltitude:(CLLocationDistance)altitude;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate;
- (void)setCenterCoordinateDistance:(CLLocationDistance)centerCoordinateDistance;
- (void)setHeading:(CLLocationDirection)heading;
@end

@implementation MKMapCamera

- (void)_updateState
{
  self->_needsStateUpdate = 0;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_mapView);
    v10 = v4[83];

    [v10 centerCoordinate];
    if (fabs(v6) <= 180.0 && fabs(v5) <= 90.0)
    {
      self->_centerCoordinate.latitude = v5;
      self->_centerCoordinate.longitude = v6;
      [v10 presentationYaw];
      if (v7 < 0.0 || v7 >= 360.0)
      {
        v7 = fmod(v7, 360.0);
        if (v7 < 0.0)
        {
          v7 = v7 + 360.0;
        }
      }

      self->_heading = v7;
      [v10 pitch];
      self->_pitch = v8;
      [v10 altitude];
      self->_altitude = v9;
    }
  }
}

- (CLLocationCoordinate2D)centerCoordinate
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  latitude = self->_centerCoordinate.latitude;
  longitude = self->_centerCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)_validate
{
  [(MKMapCamera *)self centerCoordinate];
  v4 = fabs(v3) <= 180.0;
  v6 = fabs(v5) <= 90.0 && v4;
  if (!v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    [(MKMapCamera *)self centerCoordinate];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v8, v9];
    v11 = [v7 stringWithFormat:@"Invalid camera centerCoordinate %@", v10];

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0];
    [v12 raise];
  }

  return v6;
}

- (CLLocationDirection)heading
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  return self->_heading;
}

- (CGFloat)pitch
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  return self->_pitch;
}

- (CLLocationDistance)altitude
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  return self->_altitude;
}

+ (MKMapCamera)camera
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&self->_centerCoordinate.latitude, *&self->_centerCoordinate.longitude];
  v7 = [v3 stringWithFormat:@"<%@ %p centerCoordinate:%@ altitude:%.0fm heading:%.0f˚ pitch:%.0f˚>", v5, self, v6, *&self->_altitude, *&self->_heading, *&self->_pitch];

  return v7;
}

- (void)setCenterCoordinateDistance:(CLLocationDistance)centerCoordinateDistance
{
  self->_pitchAdjustsAltitude = 1;
  v4 = cos(self->_pitch * 0.0174532925) * centerCoordinateDistance;
  if (vabdd_f64(self->_altitude, v4) >= 0.00000011920929)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self willChangeValueForKey:@"centerCoordinateDistance"];
    self->_altitude = v4;
    [(MKMapCamera *)self didChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self didChangeValueForKey:@"centerCoordinateDistance"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (CLLocationDistance)centerCoordinateDistance
{
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  altitude = self->_altitude;
  return altitude / cos(self->_pitch * 0.0174532925);
}

- (void)setAltitude:(CLLocationDistance)altitude
{
  self->_pitchAdjustsAltitude = 0;
  if (vabdd_f64(self->_altitude, altitude) >= 0.00000011920929)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self willChangeValueForKey:@"centerCoordinateDistance"];
    self->_altitude = altitude;
    [(MKMapCamera *)self didChangeValueForKey:@"altitude"];
    [(MKMapCamera *)self didChangeValueForKey:@"centerCoordinateDistance"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (void)_setPrecisePitch:(double)pitch
{
  if (vabdd_f64(self->_pitch, pitch) >= 0.00000011920929)
  {
    if (self->_pitchAdjustsAltitude)
    {
      [(MKMapCamera *)self willChangeValueForKey:@"altitude"];
      [(MKMapCamera *)self centerCoordinateDistance];
      self->_altitude = cos(pitch * 0.0174532925) * v5;
      [(MKMapCamera *)self didChangeValueForKey:@"altitude"];
    }

    [(MKMapCamera *)self willChangeValueForKey:@"pitch"];
    self->_pitch = pitch;
    [(MKMapCamera *)self didChangeValueForKey:@"pitch"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (void)setHeading:(CLLocationDirection)heading
{
  if (vabdd_f64(self->_heading, heading) >= 0.00000011920929)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"heading"];
    self->_heading = heading;
    [(MKMapCamera *)self didChangeValueForKey:@"heading"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
{
  longitude = centerCoordinate.longitude;
  latitude = centerCoordinate.latitude;
  if (vabdd_f64(self->_centerCoordinate.latitude, centerCoordinate.latitude) >= 0.00000000999999994 || vabdd_f64(self->_centerCoordinate.longitude, centerCoordinate.longitude) >= 0.00000000999999994)
  {
    [(MKMapCamera *)self willChangeValueForKey:@"centerCoordinate"];
    self->_centerCoordinate.latitude = latitude;
    self->_centerCoordinate.longitude = longitude;
    [(MKMapCamera *)self didChangeValueForKey:@"centerCoordinate"];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _updateFromCamera:self];
  }
}

- (id)_mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = self->_centerCoordinate.latitude == v5[1] && self->_centerCoordinate.longitude == v5[2] && self->_heading == v5[3] && self->_pitch == v5[4] && self->_altitude == v5[5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(MKMapCamera *)self centerCoordinate];
  [v4 setCenterCoordinate:?];
  [(MKMapCamera *)self heading];
  [v4 setHeading:?];
  [(MKMapCamera *)self pitch];
  [v4 setPitch:?];
  [(MKMapCamera *)self altitude];
  [v4 setAltitude:?];
  v4[56] = self->_pitchAdjustsAltitude;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_needsStateUpdate)
  {
    [(MKMapCamera *)self _updateState];
  }

  [coderCopy encodeDouble:@"centerCoordinate.latitude" forKey:self->_centerCoordinate.latitude];
  [coderCopy encodeDouble:@"centerCoordinate.longitude" forKey:self->_centerCoordinate.longitude];
  [coderCopy encodeDouble:@"heading" forKey:self->_heading];
  [coderCopy encodeDouble:@"pitch" forKey:self->_pitch];
  [coderCopy encodeDouble:@"altitude" forKey:self->_altitude];
  [coderCopy encodeBool:self->_pitchAdjustsAltitude forKey:@"pitchAdjustsAltitude"];
}

- (MKMapCamera)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MKMapCamera;
  v5 = [(MKMapCamera *)&v12 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"centerCoordinate.latitude"];
    v5->_centerCoordinate.latitude = v6;
    [coderCopy decodeDoubleForKey:@"centerCoordinate.longitude"];
    v5->_centerCoordinate.longitude = v7;
    [coderCopy decodeDoubleForKey:@"heading"];
    v5->_heading = v8;
    [coderCopy decodeDoubleForKey:@"pitch"];
    v5->_pitch = v9;
    [coderCopy decodeDoubleForKey:@"altitude"];
    v5->_altitude = v10;
    v5->_pitchAdjustsAltitude = [coderCopy decodeBoolForKey:@"pitchAdjustsAltitude"];
  }

  return v5;
}

- ($9433BFB5400FDC760880D1BFD6845728)_enclosingGEOMapRectForAspectRatio:(float)ratio
{
  [(MKMapCamera *)self centerCoordinate];
  [(MKMapCamera *)self heading];
  [(MKMapCamera *)self pitch];
  [(MKMapCamera *)self altitude];
  GEOMapRectEnclosingCameraProperties();
  result.var1.var1 = v7;
  result.var1.var0 = v6;
  result.var0.var1 = v5;
  result.var0.var0 = v4;
  return result;
}

+ (id)_cameraLookingAtScene:(id)scene
{
  sceneCopy = scene;
  _mapItem = [sceneCopy _mapItem];
  _geoMapItem = [_mapItem _geoMapItem];
  _storefrontPresentationInfo = [_geoMapItem _storefrontPresentationInfo];

  LOBYTE(_mapItem) = [sceneCopy _wantsCloseUpView];
  if (_mapItem)
  {
    closeUpView = [_storefrontPresentationInfo closeUpView];
  }

  else
  {
    standOffView = [_storefrontPresentationInfo standOffView];
    v9 = standOffView;
    if (standOffView)
    {
      closeUpView2 = standOffView;
    }

    else
    {
      closeUpView2 = [_storefrontPresentationInfo closeUpView];
    }

    closeUpView = closeUpView2;
  }

  VKCameraPropertiesForStoreFrontView();
  camera = [objc_opt_class() camera];
  [camera setCenterCoordinate:{0.0, 0.0}];
  [camera setAltitude:0.0];
  [camera setHeading:0.0];
  [camera setPitch:0.0];

  return camera;
}

+ (id)_cameraLookingAtMapRect:(id)rect forViewSize:(CGSize)size
{
  rectCopy = rect;
  v4 = size.width / size.height;
  *&v4 = size.width / size.height;
  v5 = [self _cameraLookingAtGEOMapRect:&rectCopy aspectRatio:v4];

  return v5;
}

+ (id)_cameraLookingAtGEOMapRect:(id *)rect aspectRatio:(float)ratio
{
  VKCameraPropertiesForRect();
  camera = [self camera];
  [camera setCenterCoordinate:{0.0, 0.0}];
  [camera setAltitude:0.0];

  return camera;
}

+ (unint64_t)_sizeCategoryForViewSize:(CGSize)size
{
  if (size.width < 200.0)
  {
    return 0;
  }

  if (size.width > 428.0)
  {
    return 2;
  }

  if (size.width >= size.height)
  {
    return 1;
  }

  if (size.width <= 300.0)
  {
    return 1;
  }

  return 2;
}

+ (CLLocationCoordinate2D)_adjustCoordinateForPitch:(CLLocationCoordinate2D)pitch heading:(double)heading pitch:(double)a5 minimumPitchRequiredForAdjustment:(double)adjustment tolerance:(double)tolerance
{
  longitude = pitch.longitude;
  latitude = pitch.latitude;
  v9 = a5 / adjustment / -tolerance;
  v10 = __sincos_stret((360.0 - heading) * 3.14159265 / 180.0);

  v13 = CLLocationCoordinate2DMake(latitude - v9 * v10.__cosval, longitude + v9 * v10.__sinval);
  v12 = v13.longitude;
  v11 = v13.latitude;
  result.longitude = v12;
  result.latitude = v11;
  return result;
}

+ (MKMapCamera)cameraLookingAtMapItem:(MKMapItem *)mapItem forViewSize:(CGSize)viewSize allowPitch:(BOOL)allowPitch
{
  v5 = allowPitch;
  height = viewSize.height;
  width = viewSize.width;
  v236 = *MEMORY[0x1E69E9840];
  v9 = mapItem;
  _viewportFrame = [(MKMapItem *)v9 _viewportFrame];

  if (_viewportFrame)
  {
    _viewportFrame2 = [(MKMapItem *)v9 _viewportFrame];
    [_viewportFrame2 latitude];
    v13 = v12;
    [_viewportFrame2 longitude];
    v17 = CLLocationCoordinate2DMake(v13, v14);
    longitude = v17.longitude;
    latitude = v17.latitude;
    if (!v5)
    {
      [(MKMapItem *)v9 _coordinate];
    }

    v18 = MKTilePointForCoordinate(latitude, longitude, 21.0);
    v20 = v19;
    [_viewportFrame2 distance];
    v22 = v21;
    v23 = +[MKSystemController sharedInstance];
    [v23 screenSize];
    v25 = v24;
    v27 = v26;

    v28 = exp2(21.0 - v22);
    v29 = [MKMapCamera _cameraLookingAtMapRect:(v18 - v25 / (1.0 / v28) * 0.5) forViewSize:(v20 - v27 / (1.0 / v28) * 0.5), (v25 / (1.0 / v28)), (v27 / (1.0 / v28)), v25, v27];
    [_viewportFrame2 heading];
    [v29 setHeading:v30];
    v31 = 0.0;
    if (v5)
    {
      [_viewportFrame2 pitch];
      v31 = v32;
    }

    [v29 setPitch:v31];
    if (width == v25 && height == v27)
    {
      v225 = v29;
LABEL_100:

      goto LABEL_101;
    }

    v58 = [v29 copy];
    [v58 setHeading:0.0];
    [v58 setPitch:0.0];
    v59 = width / height;
    *&v60 = width / height;
    [v58 enclosingMapRectForAspectRatio:v60];
    v62 = log2(width / v61) + 21.0;
    if (v62 >= 0.0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0.0;
    }

    [(MKMapItem *)v9 _coordinate];
    v65 = v64;
    v67 = v66;
    v68 = [self _sizeCategoryForViewSize:{width, height}];
    switch(v68)
    {
      case 2:
        [_viewportFrame2 distance];
        v63 = v87;
        break;
      case 1:
        v69 = 80.0 / width + -0.300000012;
        v70 = v59 / 1.75;
        goto LABEL_27;
      case 0:
        v69 = 30.0 / width + 1.29999995;
        v70 = v59 * 0.125;
LABEL_27:
        v84 = v69 + v70;
        [_viewportFrame2 distance];
        v63 = v85 - v84;
        *&v86 = 40.0;
        goto LABEL_30;
    }

    *&v86 = 1.79769313e308;
LABEL_30:
    v88 = *&v86;
    [_viewportFrame2 pitch];
    if (v88 < v89 && v5)
    {
      [_viewportFrame2 heading];
      v91 = v90;
      [_viewportFrame2 pitch];
      [self _adjustCoordinateForPitch:v65 heading:v67 pitch:v91 minimumPitchRequiredForAdjustment:v92 tolerance:{v88, 5000.0}];
      v65 = v93;
      v67 = v94;
    }

    v95 = MKTilePointForCoordinate(v65, v67, 21.0);
    v97 = v96;
    v98 = 1.0 / exp2(21.0 - fmax(v63, 15.0));
    v218 = width;
    v99 = width / v98;
    v225 = height;
    v100 = height / v98;
    v101 = v95 - v99 * 0.5;
    v102 = v97 - v100 * 0.5;
    if ([_viewportFrame2 hasViewTargetBounds])
    {
      v216 = v67;
      [_viewportFrame2 minViewTargetBounds];
      v104 = v103;
      [_viewportFrame2 maxViewTargetBounds];
      v106 = v104 - v105;
      GEOCalculateDistance();
      v108 = sqrt(v106 * v106 + v107 * v107);
      [_viewportFrame2 maxViewTargetBounds];
      v110 = v109;
      if (v108 <= v109)
      {
        v111 = v109;
      }

      else
      {
        v111 = v108;
      }

      v112 = 0.699999988;
      if (v108 < v109)
      {
        v112 = 0.5;
      }

      MKMapRectMakeWithRadialDistance(v17.latitude, v17.longitude, v112 * (v111 * 0.5));
      if (v114 <= v99)
      {
        v67 = v216;
      }

      else
      {
        if (v113 > v100)
        {
          v115 = dbl_1A30F71A0[v108 < v110];
          v99 = v99 * v115;
          v100 = v100 * v115;
        }

        v67 = v216;
      }
    }

    v225 = [MKMapCamera _cameraLookingAtMapRect:v101 forViewSize:v102, v99, v100, v218, v225];
    [_viewportFrame2 heading];
    [v225 setHeading:v199];
    [v225 setCenterCoordinate:{v65, v67}];
    v200 = 0.0;
    if (v5)
    {
      [_viewportFrame2 pitch];
      v200 = v201;
    }

    [v225 setPitch:v200];

    goto LABEL_100;
  }

  [(MKMapItem *)v9 _coordinate];
  v35 = v34;
  v37 = v36;
  if (fabs(v36) > 180.0 || fabs(v34) > 90.0)
  {
    v225 = +[MKMapCamera camera];
    goto LABEL_101;
  }

  v38 = [self _sizeCategoryForViewSize:{width, height}];
  v39 = 0.0;
  v222 = 0.0;
  v40 = 0.0;
  if (v38 <= 2)
  {
    v39 = dbl_1A30F7780[v38];
    v40 = dbl_1A30F7798[v38];
  }

  v213 = v39;
  v41 = MKTilePointForCoordinate(v35, v37, 21.0);
  v43 = v42;
  v212 = v40;
  v44 = 1.0 / exp2(21.0 - v40);
  placemark = [(MKMapItem *)v9 placemark];
  v46 = objc_msgSend_region(placemark);

  objc_opt_class();
  v214 = v41;
  v215 = v43;
  if (objc_opt_isKindOfClass())
  {
    v47 = v46;
    [v47 center];
    v49 = v48;
    v51 = v50;
    [v47 radius];
    v53 = v52;

    v54 = MKMapRectMakeWithRadialDistance(v49, v51, v53);
    rect = v55;
    v221 = v56;
    v222 = v57;
  }

  else
  {
    v54 = INFINITY;
    v221 = 0.0;
    rect = INFINITY;
  }

  v71 = width / v44;
  v224 = height;
  v72 = height / v44;
  _geoMapItem = [(MKMapItem *)v9 _geoMapItem];
  displayMapRegionOrNil = [_geoMapItem displayMapRegionOrNil];

  if (displayMapRegionOrNil)
  {
    v75 = displayMapRegionOrNil;
    GEOMapRectForMapRegion();
    MKCoordinateRegionForMapRect(v238);

    v71 = width / v44;
    v72 = height / v44;
    GEOMapRectForCoordinateRegion();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
  }

  else
  {
    v81 = 0.0;
    v77 = INFINITY;
    v79 = INFINITY;
    v83 = 0.0;
  }

  v116 = v71 * 0.5;
  v117 = v72 * 0.5;
  v118 = v77 == INFINITY;
  if (v79 != INFINITY)
  {
    v118 = 0;
  }

  v119 = rect;
  if (v54 == INFINITY && rect == INFINITY)
  {
    v219 = v83;
    v223 = v81;
    v121 = v214;
    v120 = v215;
    if (v118)
    {
      v221 = 0.0;
      v222 = 0.0;
      v54 = INFINITY;
      v122 = INFINITY;
      goto LABEL_72;
    }

    v210 = v72 * 0.5;
    v211 = v71 * 0.5;
    v156 = MKGetMKMapCameraLog();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
    {
      v157 = MEMORY[0x1E696AEC0];
      v158 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v77, *&v79];
      v159 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v223, *&v219];
      [v157 stringWithFormat:@"{%@, %@}", v158, v159];
      v160 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      *buf = 138477827;
      v231 = v160;
      _os_log_impl(&dword_1A2EA0000, v156, OS_LOG_TYPE_INFO, "Only display framing data is present - display:%{private}@", buf, 0xCu);
    }

    v54 = v77;
    v122 = v79;
    v221 = v223;
    v222 = v219;
  }

  else
  {
    v210 = v72 * 0.5;
    v211 = v71 * 0.5;
    if (v118)
    {
      v123 = MKGetMKMapCameraLog();
      v121 = v214;
      v120 = v215;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        v124 = MEMORY[0x1E696AEC0];
        v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v54, *&rect];
        v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v221, *&v222];
        [v124 stringWithFormat:@"{%@, %@}", v125, v126];
        v127 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

        *buf = 138477827;
        v231 = v127;
        _os_log_impl(&dword_1A2EA0000, v123, OS_LOG_TYPE_INFO, "Only placemark framing data is present - placemark:%{private}@", buf, 0xCu);
      }

      v122 = rect;
    }

    else
    {
      v208 = v72;
      v209 = v71;
      v220 = width;
      v228 = 0.0;
      v229 = 0.0;
      v226 = 0.0;
      v227 = 0.0;
      v128 = v54;
      v129 = v221;
      v130 = v222;
      v239 = MKCoordinateRegionForMapRect(*(&v119 - 1));
      __61__MKMapCamera_cameraLookingAtMapItem_forViewSize_allowPitch___block_invoke(&v229, &v228, v239.center.latitude, v239.center.longitude, v239.span.latitudeDelta, v239.span.longitudeDelta);
      v131 = displayMapRegionOrNil;
      GEOMapRectForMapRegion();
      v241 = MKCoordinateRegionForMapRect(v240);
      v132 = v241.center.latitude;
      v133 = v83;
      v134 = v54;
      v135 = v241.center.longitude;
      v207 = v77;
      v136 = v79;
      v137 = v81;
      latitudeDelta = v241.span.latitudeDelta;
      longitudeDelta = v241.span.longitudeDelta;

      v140 = v132;
      v141 = v221;
      v142 = v135;
      v54 = v134;
      __61__MKMapCamera_cameraLookingAtMapItem_forViewSize_allowPitch___block_invoke(&v227, &v226, v140, v142, latitudeDelta, longitudeDelta);
      v143 = v226 < v228 || v227 < v229;
      v144 = MKGetMKMapCameraLog();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
      {
        *&v145 = COERCE_DOUBLE(@"placemark");
        if (v143)
        {
          *&v145 = COERCE_DOUBLE(@"display");
        }

        v203 = v145;
        v146 = MEMORY[0x1E696AEC0];
        v206 = v46;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v207, *&v136];
        v147 = v205 = displayMapRegionOrNil;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v137, *&v133];
        v148 = v204 = v143;
        v148 = [v146 stringWithFormat:@"{%@, %@}", v147, v148];

        v150 = MEMORY[0x1E696AEC0];
        v151 = v148;
        v152 = [v150 stringWithFormat:@"{%.1f, %.1f}", *&v134, *&rect];
        v153 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v221, *&v222];
        v153 = [v150 stringWithFormat:@"{%@, %@}", v152, v153];

        v46 = v206;
        displayMapRegionOrNil = v205;
        *buf = 138543875;
        v231 = *&v203;
        v232 = 2113;
        v233 = v148;
        v234 = 2113;
        v235 = v153;
        _os_log_impl(&dword_1A2EA0000, v144, OS_LOG_TYPE_INFO, "Will prefer %{public}@ framing data - display:%{private}@ placemark:%{private}@", buf, 0x20u);

        v143 = v204;
      }

      if (v143)
      {
        v54 = v207;
      }

      v122 = rect;
      width = v220;
      if (v143)
      {
        v122 = v136;
        v141 = v137;
      }

      v155 = v222;
      if (v143)
      {
        v155 = v133;
      }

      v221 = v141;
      v222 = v155;
      v121 = v214;
      v120 = v215;
      v72 = v208;
      v71 = v209;
    }
  }

  v117 = v210;
  v116 = v211;
LABEL_72:
  v161 = v121 - v116;
  v162 = v120 - v117;
  if (v54 == INFINITY && v122 == INFINITY)
  {
    v163 = MKGetMKMapCameraLog();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
    {
      v164 = MEMORY[0x1E696AEC0];
      v165 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v161, *&v162];
      v166 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v71, *&v72];
      v166 = [v164 stringWithFormat:@"{%@, %@}", v165, v166];

      *buf = 134349315;
      v231 = v212;
      v232 = 2113;
      v233 = v166;
      _os_log_impl(&dword_1A2EA0000, v163, OS_LOG_TYPE_INFO, "No framing data is present - zoomLevel:%{public}f zoom:%{private}@", buf, 0x16u);
    }

    v168 = v72;

    v169 = v213;
  }

  else
  {
    v242.origin.x = v161;
    v242.origin.y = v120 - v117;
    v242.size.width = v71;
    v242.size.height = v72;
    v170 = v54;
    v171 = v54;
    v172 = v122;
    v173 = v221;
    v174 = v222;
    v175 = MKMapRectContainsRect(v242, *(&v122 - 1));
    v176 = MKGetMKMapCameraLog();
    v177 = os_log_type_enabled(v176, OS_LOG_TYPE_INFO);
    if (v175)
    {
      if (v177)
      {
        v178 = MEMORY[0x1E696AEC0];
        v179 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v161, *&v162];
        v180 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v71, *&v72];
        v180 = [v178 stringWithFormat:@"{%@, %@}", v179, v180];

        *buf = 134349315;
        v231 = v212;
        v232 = 2113;
        v233 = v180;
        _os_log_impl(&dword_1A2EA0000, v176, OS_LOG_TYPE_INFO, "Framing data rect fits within zoom level rect - zoomLevel:%{public}f zoom:%{private}@", buf, 0x16u);
      }

      v168 = v72;
    }

    else
    {
      if (v177)
      {
        v182 = MEMORY[0x1E696AEC0];
        v183 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v161, *&v162];
        v184 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&v71, *&v72];
        v184 = [v182 stringWithFormat:@"{%@, %@}", v183, v184];

        *buf = 134349315;
        v231 = v212;
        v232 = 2113;
        v233 = v184;
        _os_log_impl(&dword_1A2EA0000, v176, OS_LOG_TYPE_INFO, "Framing data rect is too large to fit in zoom level rect - zoomLevel:%{public}f zoom:%{private}@", buf, 0x16u);
      }

      v161 = v170;
      v162 = v172;
      v71 = v221;
      v168 = v222;
    }

    v169 = v213;
    v120 = v215;
  }

  v225 = [self _cameraLookingAtMapRect:v161 forViewSize:{v162, v71, v168, width, v224}];
  if (v169 > 0.0 && v5)
  {
    v186 = [self _cameraLookingAtMapRect:v214 - width / 0.14358737 * 0.5 forViewSize:{v120 - v224 / 0.14358737 * 0.5, width / 0.14358737, v224 / 0.14358737, width, v224}];
    [v225 centerCoordinateDistance];
    v188 = v187;
    [v186 centerCoordinateDistance];
    v190 = v189;
    v191 = MKGetMKMapCameraLog();
    v192 = os_log_type_enabled(v191, OS_LOG_TYPE_INFO);
    if (v188 <= v190)
    {
      if (v192)
      {
        [v225 centerCoordinateDistance];
        v197 = v196;
        [v186 centerCoordinateDistance];
        *buf = 134349568;
        v231 = v169;
        v232 = 2050;
        v233 = v197;
        v234 = 2050;
        v235 = v198;
        _os_log_impl(&dword_1A2EA0000, v191, OS_LOG_TYPE_INFO, "Pitching the camera %{public}f degrees - camera:%{public}f max:%{public}f", buf, 0x20u);
      }

      [v225 setPitch:v169];
    }

    else
    {
      if (v192)
      {
        [v225 centerCoordinateDistance];
        v194 = v193;
        [v186 centerCoordinateDistance];
        *buf = 134349312;
        v231 = v194;
        v232 = 2050;
        v233 = v195;
        _os_log_impl(&dword_1A2EA0000, v191, OS_LOG_TYPE_INFO, "Not pitching the camera - camera:%{public}f max:%{public}f", buf, 0x16u);
      }
    }
  }

LABEL_101:

  return v225;
}

void __61__MKMapCamera_cameraLookingAtMapItem_forViewSize_allowPitch___block_invoke(double *a1, double *a2, double a3, double a4, double a5, double a6)
{
  v11.latitude = 0.0;
  v11.longitude = 0.0;
  v10.latitude = 0.0;
  v10.longitude = 0.0;
  MKCoordinatesForRegion(&v11, &v10, a3, a4, a5, a6);
  GEOCalculateDistance();
  *a2 = v8;
  GEOCalculateDistance();
  *a1 = v9;
}

+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromDistance:(CLLocationDistance)distance pitch:(CGFloat)pitch heading:(CLLocationDirection)heading
{
  longitude = centerCoordinate.longitude;
  latitude = centerCoordinate.latitude;
  camera = [objc_opt_class() camera];
  [camera setCenterCoordinate:{latitude, longitude}];
  [camera setHeading:heading];
  [camera _setPrecisePitch:pitch];
  [camera setAltitude:(cos(pitch * 0.0174532925) * distance)];

  return camera;
}

+ (MKMapCamera)cameraLookingAtCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate fromEyeCoordinate:(CLLocationCoordinate2D)eyeCoordinate eyeAltitude:(CLLocationDistance)eyeAltitude
{
  longitude = eyeCoordinate.longitude;
  latitude = eyeCoordinate.latitude;
  v8 = centerCoordinate.longitude;
  v9 = centerCoordinate.latitude;
  camera = [objc_opt_class() camera];
  [camera setCenterCoordinate:{v9, v8}];
  MKDirectionBetween(latitude, longitude, v9, v8);
  [camera setHeading:?];
  CLLocationCoordinate2DGetDistanceFrom();
  v12 = v11;
  if (eyeAltitude < 50.0)
  {
    eyeAltitude = 50.0;
  }

  while (atan2(v12, eyeAltitude) * 57.2957795 > 85.0)
  {
    eyeAltitude = eyeAltitude + eyeAltitude;
  }

  [camera _setPrecisePitch:?];
  [camera setAltitude:eyeAltitude];

  return camera;
}

@end