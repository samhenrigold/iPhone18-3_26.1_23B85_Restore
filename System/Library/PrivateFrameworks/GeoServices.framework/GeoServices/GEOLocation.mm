@interface GEOLocation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)hasAccurateCourse;
- (BOOL)isMatchedLocation;
- (GEOCoarseLocationMetadata)coarseMetadata;
- (GEOLatLng)latLng;
- (GEOLatLng)rawCoordinate;
- (GEOLocation)init;
- (double)rawCourse;
- (id)description;
- (int)referenceFrame;
- (unint64_t)hash;
- (void)_readCoarseMetadata;
- (void)_readLatLng;
- (void)_readRawCoordinate;
@end

@implementation GEOLocation

- (GEOLocation)init
{
  v6.receiver = self;
  v6.super_class = GEOLocation;
  v2 = [(GEOLocation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOLatLng)latLng
{
  [(GEOLocation *)self _readLatLng];
  latLng = self->_latLng;

  return latLng;
}

- (void)_readLatLng
{
  if (self)
  {
    os_unfair_lock_lock((self + 136));
    if ((*(self + 182) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocationReadSpecified(self, *(self + 8), &_readLatLng_tags_138660);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 136));
  }
}

- (GEOLatLng)rawCoordinate
{
  [(GEOLocation *)self _readRawCoordinate];
  rawCoordinate = self->_rawCoordinate;

  return rawCoordinate;
}

- (void)_readRawCoordinate
{
  if (self)
  {
    os_unfair_lock_lock((self + 136));
    if ((*(self + 183) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocationReadSpecified(self, *(self + 8), &_readRawCoordinate_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 136));
  }
}

- (int)referenceFrame
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  if ((*&flags & 0x8000) != 0)
  {
    return self->_referenceFrame;
  }

  else
  {
    return 0;
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latLng = [(GEOLocation *)self latLng];
  [latLng coordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)rawCourse
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  result = -1.0;
  if ((*&flags & 0x10) != 0)
  {
    return self->_rawCourse;
  }

  return result;
}

- (BOOL)isMatchedLocation
{
  os_unfair_lock_lock_with_options();
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_readerLock);
  return (*&flags & 0x80000) != 0 && self->_isMatchedLocation;
}

- (BOOL)hasAccurateCourse
{
  hasCourse = [(GEOLocation *)self hasCourse];
  if (hasCourse)
  {
    hasCourse = [(GEOLocation *)self hasCourseAccuracy];
    if (hasCourse)
    {
      [(GEOLocation *)self course];
      if (v4 >= 0.0 && ([(GEOLocation *)self courseAccuracy], v5 >= 0.0))
      {
        [(GEOLocation *)self courseAccuracy];
        LOBYTE(hasCourse) = v6 < 180.0;
      }

      else
      {
        LOBYTE(hasCourse) = 0;
      }
    }
  }

  return hasCourse;
}

- (GEOCoarseLocationMetadata)coarseMetadata
{
  [(GEOLocation *)self _readCoarseMetadata];
  coarseMetadata = self->_coarseMetadata;

  return coarseMetadata;
}

- (void)_readCoarseMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 136));
    if ((*(self + 182) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLocationReadSpecified(self, *(self + 8), &_readCoarseMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 136));
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = GEOLocation;
  v4 = [(GEOLocation *)&v8 description];
  dictionaryRepresentation = [(GEOLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (unint64_t)hash
{
  [(GEOLocation *)self readAll:1];
  v69 = [(GEOLatLng *)self->_latLng hash];
  flags = self->_flags;
  if ((*&flags & 0x40000) != 0)
  {
    v68 = 2654435761 * self->_type;
    if ((*&flags & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v68 = 0;
  if ((*&flags & 0x80) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v3.i64 = floor(timestamp + 0.5);
  v7 = (timestamp - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
  v9 = 2654435761u * *v3.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((*&flags & 0x400) != 0)
  {
    v66 = 2654435761 * self->_altitude;
    if ((*&flags & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v66 = 0;
  if ((*&flags & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  horizontalAccuracy = self->_horizontalAccuracy;
  if (horizontalAccuracy < 0.0)
  {
    horizontalAccuracy = -horizontalAccuracy;
  }

  *v3.i64 = floor(horizontalAccuracy + 0.5);
  v11 = (horizontalAccuracy - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v12), v4, v3);
  v13 = 2654435761u * *v3.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_17:
  if ((*&flags & 0x200) != 0)
  {
    verticalAccuracy = self->_verticalAccuracy;
    if (verticalAccuracy < 0.0)
    {
      verticalAccuracy = -verticalAccuracy;
    }

    *v3.i64 = floor(verticalAccuracy + 0.5);
    v16 = (verticalAccuracy - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v17), v4, v3);
    v14 = 2654435761u * *v3.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&flags & 0x40) != 0)
  {
    speed = self->_speed;
    if (speed < 0.0)
    {
      speed = -speed;
    }

    *v3.i64 = floor(speed + 0.5);
    v20 = (speed - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v21), v4, v3);
    v18 = 2654435761u * *v3.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&flags & 4) != 0)
  {
    heading = self->_heading;
    if (heading < 0.0)
    {
      heading = -heading;
    }

    *v3.i64 = floor(heading + 0.5);
    v24 = (heading - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v25), v4, v3);
    v22 = 2654435761u * *v3.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&flags & 2) != 0)
  {
    course = self->_course;
    if (course < 0.0)
    {
      course = -course;
    }

    *v3.i64 = floor(course + 0.5);
    v28 = (course - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v29), v4, v3);
    v26 = 2654435761u * *v3.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if (*&flags)
  {
    courseAccuracy = self->_courseAccuracy;
    if (courseAccuracy < 0.0)
    {
      courseAccuracy = -courseAccuracy;
    }

    *v3.i64 = floor(courseAccuracy + 0.5);
    v32 = (courseAccuracy - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v30 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v4, v3).i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  v67 = v9;
  v64 = v14;
  v65 = v13;
  v62 = v22;
  v63 = v18;
  v61 = v26;
  if ((*&flags & 0x2000) != 0)
  {
    v60 = 2654435761 * self->_levelOrdinal;
  }

  else
  {
    v60 = 0;
  }

  v59 = [(GEOCoarseLocationMetadata *)self->_coarseMetadata hash];
  v36 = self->_flags;
  if ((*&v36 & 0x800) != 0)
  {
    v37 = 2654435761 * self->_courseType;
    if ((*&v36 & 0x20) != 0)
    {
      goto LABEL_66;
    }

LABEL_71:
    v41 = 0;
    goto LABEL_72;
  }

  v37 = 0;
  if ((*&v36 & 0x20) == 0)
  {
    goto LABEL_71;
  }

LABEL_66:
  speedAccuracy = self->_speedAccuracy;
  if (speedAccuracy < 0.0)
  {
    speedAccuracy = -speedAccuracy;
  }

  *v34.i64 = floor(speedAccuracy + 0.5);
  v39 = (speedAccuracy - *v34.i64) * 1.84467441e19;
  *v35.i64 = *v34.i64 - trunc(*v34.i64 * 5.42101086e-20) * 1.84467441e19;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v41 = 2654435761u * *vbslq_s8(vnegq_f64(v40), v35, v34).i64;
  if (v39 >= 0.0)
  {
    if (v39 > 0.0)
    {
      v41 += v39;
    }
  }

  else
  {
    v41 -= fabs(v39);
  }

LABEL_72:
  if ((*&v36 & 0x80000) != 0)
  {
    v42 = 2654435761 * self->_isMatchedLocation;
    if ((*&v36 & 0x100000) != 0)
    {
LABEL_74:
      v43 = 2654435761 * self->_isShifted;
      if ((*&v36 & 0x100) != 0)
      {
        goto LABEL_75;
      }

LABEL_79:
      v44 = 0;
      if ((*&v36 & 0x8000) != 0)
      {
        goto LABEL_76;
      }

      goto LABEL_80;
    }
  }

  else
  {
    v42 = 0;
    if ((*&v36 & 0x100000) != 0)
    {
      goto LABEL_74;
    }
  }

  v43 = 0;
  if ((*&v36 & 0x100) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  v44 = 2654435761u * self->_transitID;
  if ((*&v36 & 0x8000) != 0)
  {
LABEL_76:
    v45 = 2654435761 * self->_referenceFrame;
    goto LABEL_81;
  }

LABEL_80:
  v45 = 0;
LABEL_81:
  v46 = [(GEOLatLng *)self->_rawCoordinate hash];
  v49 = self->_flags;
  if ((*&v49 & 0x10) != 0)
  {
    rawCourse = self->_rawCourse;
    if (rawCourse < 0.0)
    {
      rawCourse = -rawCourse;
    }

    *v47.i64 = floor(rawCourse + 0.5);
    v52 = (rawCourse - *v47.i64) * 1.84467441e19;
    *v48.i64 = *v47.i64 - trunc(*v47.i64 * 5.42101086e-20) * 1.84467441e19;
    v53.f64[0] = NAN;
    v53.f64[1] = NAN;
    v50 = 2654435761u * *vbslq_s8(vnegq_f64(v53), v48, v47).i64;
    if (v52 >= 0.0)
    {
      if (v52 > 0.0)
      {
        v50 += v52;
      }
    }

    else
    {
      v50 -= fabs(v52);
    }
  }

  else
  {
    v50 = 0;
  }

  if ((*&v49 & 0x4000) != 0)
  {
    v54 = 2654435761 * self->_matchQuality;
    if ((*&v49 & 0x1000) != 0)
    {
LABEL_93:
      v55 = 2654435761 * self->_formOfWay;
      if ((*&v49 & 0x10000) != 0)
      {
        goto LABEL_94;
      }

LABEL_98:
      v56 = 0;
      if ((*&v49 & 0x20000) != 0)
      {
        goto LABEL_95;
      }

LABEL_99:
      v57 = 0;
      return v68 ^ v69 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v30 ^ v60 ^ v59 ^ v37 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v50 ^ v54 ^ v55 ^ v56 ^ v57;
    }
  }

  else
  {
    v54 = 0;
    if ((*&v49 & 0x1000) != 0)
    {
      goto LABEL_93;
    }
  }

  v55 = 0;
  if ((*&v49 & 0x10000) == 0)
  {
    goto LABEL_98;
  }

LABEL_94:
  v56 = 2654435761 * self->_roadClass;
  if ((*&v49 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

LABEL_95:
  v57 = 2654435761 * self->_transportType;
  return v68 ^ v69 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v30 ^ v60 ^ v59 ^ v37 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v50 ^ v54 ^ v55 ^ v56 ^ v57;
}

@end