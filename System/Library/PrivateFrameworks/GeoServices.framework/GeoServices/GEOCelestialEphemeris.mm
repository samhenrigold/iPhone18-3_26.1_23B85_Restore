@interface GEOCelestialEphemeris
- (GEOEquatorialCelestialBodyData)equatorialCoord;
- (GEOHorizontalCelestialBodyData)horizontalCoord;
- (double)librationPositionAngle;
- (double)radiusVector;
- (double)topocentricParallacticAngle;
@end

@implementation GEOCelestialEphemeris

- (GEOHorizontalCelestialBodyData)horizontalCoord
{
  horizontalCoord = self->_horizontalCoord;
  if (!horizontalCoord)
  {
    v4 = [[GEOHorizontalCelestialBodyData alloc] initWithLocation:self->_body julianDay:self->_highPrecision body:self->_coordinate.latitude useHighPrecision:self->_coordinate.longitude, self->_julianDay];
    v5 = self->_horizontalCoord;
    self->_horizontalCoord = v4;

    horizontalCoord = self->_horizontalCoord;
  }

  return horizontalCoord;
}

- (double)librationPositionAngle
{
  if (self->_body != 4)
  {
    return 0.0;
  }

  librationPositionAngle = self->_librationPositionAngle;
  if (!librationPositionAngle)
  {
    v5 = CAADynamicalTime::UTC2TT(0, self->_julianDay);
    v88 = self->_coordinate.longitude * 0.0174532925;
    v6 = __sincos_stret(self->_coordinate.latitude * 0.0174532925);
    CAAMoon::EclipticLongitude(v7, v5);
    v9 = v8;
    v86 = v8;
    v84 = CAAMoon::EclipticLatitude(v10, v5);
    v80 = v9 * 0.0174532925;
    v11 = __sincos_stret(v84 * 0.0174532925);
    v91 = CAANutation::NutationInLongitude(v12, v5) / 3600.0 * 0.0174532925;
    v13 = v5 + -2451545.0;
    v83 = v5;
    v14 = (v5 + -2451545.0) / 36525.0;
    v15 = v14 * (v14 * v14);
    v16 = v14 * v15;
    v78 = v14 * v15;
    v17 = fmod(v14 * 483202.018 + 93.272095 + v14 * v14 * -0.0036539 + v15 / -3526000.0 + v14 * v15 / 863310000.0, 360.0);
    if (v17 < 0.0)
    {
      v17 = v17 + 360.0;
    }

    v89 = v17 * 0.0174532925;
    v19 = fmod(v14 * -1934.13629 + 125.044548 + v14 * v14 * 0.0020754 + v14 * (v14 * v14) / 467441.0 + v16 / -60616000.0, 360.0);
    if (v19 < 0.0)
    {
      v19 = v19 + 360.0;
    }

    v20 = v19 * 0.0174532925;
    v82 = v19 * 0.0174532925;
    v21 = v13 / 3652500.0;
    v22 = v21 * (v21 * v21);
    v23 = v13 / 3652500.0 * v22;
    v24 = v13 / 3652500.0 * v23;
    v25 = v13 / 3652500.0 * v24;
    v26 = v13 / 3652500.0 * v25;
    v81 = v13 / 3652500.0 * -1.30025833 + 23.4392911 + v21 * v21 * -0.000430555556 + v22 * 0.555347222 + v23 * -0.0142722222 + v24 * -0.0693527778 + v25 * -0.0108472222 + v26 * 0.00197777778 + v13 / 3652500.0 * v26 * 0.00774166667 + v13 / 3652500.0 * (v13 / 3652500.0 * v26) * 0.00160833333 + v13 / 3652500.0 * (v13 / 3652500.0 * (v13 / 3652500.0 * v26)) * 0.000680555556 + CAANutation::NutationInObliquity(v18, v5) / 3600.0;
    v27 = __sincos_stret(v80 - v91 - v20);
    v28 = atan2(v11.__sinval * -0.026917056 + v11.__cosval * v27.__sinval * 0.99963767, v11.__cosval * v27.__cosval);
    v29 = __sincos_stret(v28);
    v30 = v89 + v89;
    v79 = asin(v11.__sinval * -0.99963767 + v11.__cosval * v27.__sinval * -0.026917056);
    v77 = v14 * (v14 * v14);
    v31 = fmod(v14 * 477198.868 + 134.963396 + v14 * v14 * 0.0087414 + v77 / 69699.0 + v78 / -14712000.0, 360.0);
    if (v31 < 0.0)
    {
      v31 = v31 + 360.0;
    }

    v32 = v31 * 0.0174532925;
    v33 = fmod(v14 * 445267.111 + 297.850192 + v14 * v14 * -0.0018819 + v77 / 545868.0 + v78 / -113065000.0, 360.0);
    if (v33 < 0.0)
    {
      v33 = v33 + 360.0;
    }

    v34 = v33 * 0.0174532925 + v33 * 0.0174532925;
    v35 = __sincos_stret(v32);
    v36 = __sincos_stret(v89);
    v37 = __sincos_stret(v32 - v30);
    v38 = __sincos_stret(v30);
    v39 = __sincos_stret(v30 - v34);
    v40 = __sincos_stret(v32 - v34);
    v41 = __sincos_stret(v89 + v32);
    v42 = v30 + v32;
    v43 = __sincos_stret(v42);
    v44 = __sincos_stret(v32 - v89);
    v45 = __sincos_stret(v42 - v34);
    v46 = v36.__sinval * -0.02245 + v35.__cosval * -0.02752 + v37.__cosval * 0.00684 + v38.__cosval * -0.00293 + v39.__cosval * -0.00085 + v40.__cosval * -0.00054 + v41.__sinval * -0.0002 + v43.__cosval * -0.0002 + v44.__cosval * -0.0002 + v45.__cosval * 0.00014;
    v47 = v36.__cosval * 0.02244 + v35.__sinval * -0.02816 + v37.__sinval * -0.00682 + v38.__sinval * -0.00279 + v39.__sinval * -0.00083 + v40.__sinval * 0.00069 + v41.__cosval * 0.0004 + sin(v32 + v32) * -0.00025 + v43.__sinval * -0.00023 + v44.__cosval * 0.0002 + v44.__sinval * 0.00019 + v45.__sinval * 0.00013;
    v48 = v47 + cos(v32 + v89 * -3.0) * -0.0001;
    v90 = v79 * 57.2957795 + v48 * v29.__cosval - v46 * v29.__sinval;
    v49 = v82 + v91 + v48 * 0.0174532925 / 0.026917056;
    v50 = __sincos_stret(v46 * 0.0174532925 + 0.0269203074);
    v51 = __sincos_stret(v49);
    v52 = __sincos_stret(v81 * 0.0174532925);
    v53 = v50.__sinval * v51.__cosval * v52.__cosval - v50.__cosval * v52.__sinval;
    v54 = atan2(v50.__sinval * v51.__sinval, v53);
    v56 = CAACoordinateTransformation::Ecliptic2Equatorial(v55, v86, v84, v81);
    v58 = v57;
    v59 = v56 * 0.261799388;
    v60 = sqrt(v53 * v53 + v50.__sinval * v51.__sinval * (v50.__sinval * v51.__sinval)) * cos(v56 * 0.261799388 - v54);
    v92 = cos(v90 * 0.0174532925);
    v87 = asin(v60 / v92) * 57.2957795;
    v62 = CAAMoon::RadiusVector(v61, v83);
    v85 = asin(6378.14 / v62) * 57.2957795;
    v63 = __sincos_stret(v58 * 0.0174532925);
    CAASidereal::ApparentGreenwichSiderealTime(v64, v83);
    v66 = __sincos_stret(v65 * 0.261799388 + v88 - v59);
    v67 = atan2(v6.__cosval * v66.__sinval, -(v63.__sinval * v6.__cosval) * v66.__cosval + v63.__cosval * v6.__sinval);
    v68 = acos(v6.__cosval * v63.__cosval * v66.__cosval + v63.__sinval * v6.__sinval);
    v69 = sin(v68);
    v70 = v85 * (v69 + sin(v68 + v68) * 0.0084);
    v71 = __sincos_stret(v67 + v87 * -0.0174532925);
    v72 = sin((v90 + v71.__cosval * v70) * -0.0174532925);
    v73 = sin(v67);
    v74 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:(v87 + tan(v58 * 0.0174532925) * -(v70 * v73) + v71.__sinval * v70 / v92 * v72)];
    v75 = self->_librationPositionAngle;
    self->_librationPositionAngle = v74;

    librationPositionAngle = self->_librationPositionAngle;
  }

  [(NSNumber *)librationPositionAngle doubleValue];
  return result;
}

- (double)topocentricParallacticAngle
{
  if (self->_body != 4)
  {
    return 0.0;
  }

  topocentricParallacticAngle = self->_topocentricParallacticAngle;
  if (!topocentricParallacticAngle)
  {
    v4 = CAADynamicalTime::UTC2TT(0, self->_julianDay);
    [(GEOCelestialEphemeris *)self radiusVector];
    v6 = v5;
    equatorialCoord = [(GEOCelestialEphemeris *)self equatorialCoord];
    [equatorialCoord rightAscension];
    v9 = v8;
    [equatorialCoord declination];
    v11 = v10;
    latitude = self->_coordinate.latitude;
    longitude = self->_coordinate.longitude;
    julianDay = self->_julianDay;
    [equatorialCoord declination];
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x1E696AD98]);
    CAASidereal::ApparentGreenwichSiderealTime(v17, julianDay);
    v19 = v18 + longitude / 15.0;
    v21 = CAAParallax::Equatorial2Topocentric(v20, v9, v11, v6 / 149597871.0, -longitude, latitude, 0.0, v4);
    v22 = __sincos_stret((v19 - v21) * 0.261799388);
    v23 = tan(latitude * 0.0174532925);
    v24 = __sincos_stret(v16 * 0.0174532925);
    v25 = [(CAASidereal *)v17 initWithDouble:(atan2(v22.__sinval, v23 * v24.__cosval - v24.__sinval * v22.__cosval) * 57.2957795)];
    v26 = self->_topocentricParallacticAngle;
    self->_topocentricParallacticAngle = v25;

    topocentricParallacticAngle = self->_topocentricParallacticAngle;
  }

  [(NSNumber *)topocentricParallacticAngle doubleValue];
  return result;
}

- (GEOEquatorialCelestialBodyData)equatorialCoord
{
  equatorialCoord = self->_equatorialCoord;
  if (!equatorialCoord)
  {
    v4 = [[GEOEquatorialCelestialBodyData alloc] initWithJulianDay:self->_body body:self->_highPrecision useHighPrecision:self->_julianDay];
    v5 = self->_equatorialCoord;
    self->_equatorialCoord = v4;

    equatorialCoord = self->_equatorialCoord;
  }

  return equatorialCoord;
}

- (double)radiusVector
{
  radiusVector = self->_radiusVector;
  if (!radiusVector)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:{_GEORadiusVector(self->_body, self->_julianDay, v2)}];
    v6 = self->_radiusVector;
    self->_radiusVector = v5;

    radiusVector = self->_radiusVector;
  }

  [(NSNumber *)radiusVector doubleValue];
  return result;
}

@end