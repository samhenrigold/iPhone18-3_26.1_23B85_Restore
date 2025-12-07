@interface GEOMapRegion
- (BOOL)hasRectangleVertices;
- (GEOMapRegion)init;
- (NSMutableArray)vertexs;
- (NSString)providingVendor;
- (id)coordinates;
- (unint64_t)hash;
- (unint64_t)vertexsCount;
- (void)_readProvidingVendor;
- (void)_readVertexs;
@end

@implementation GEOMapRegion

- (void)_readVertexs
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapRegionReadSpecified(self, *(self + 8), &_readVertexs_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (BOOL)hasRectangleVertices
{
  if (![(GEOMapRegion *)self hasNorthLat]|| ![(GEOMapRegion *)self hasSouthLat]|| ![(GEOMapRegion *)self hasEastLng])
  {
    return 0;
  }

  return [(GEOMapRegion *)self hasWestLng];
}

- (NSMutableArray)vertexs
{
  [(GEOMapRegion *)self _readVertexs];
  vertexs = self->_vertexs;

  return vertexs;
}

- (GEOMapRegion)init
{
  v6.receiver = self;
  v6.super_class = GEOMapRegion;
  v2 = [(GEOMapRegion *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (id)coordinates
{
  if ([(GEOMapRegion *)self vertexsCount])
  {
    vertexs = [(GEOMapRegion *)self vertexs];
  }

  else if ([(GEOMapRegion *)self hasRectangleVertices])
  {
    vertexs = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    v4 = [GEOLatLng alloc];
    [(GEOMapRegion *)self northLat];
    v6 = v5;
    [(GEOMapRegion *)self eastLng];
    v8 = [(GEOLatLng *)v4 initWithLatitude:v6 longitude:v7];
    [vertexs addObject:v8];

    v9 = [GEOLatLng alloc];
    [(GEOMapRegion *)self northLat];
    v11 = v10;
    [(GEOMapRegion *)self westLng];
    v13 = [(GEOLatLng *)v9 initWithLatitude:v11 longitude:v12];
    [vertexs addObject:v13];

    v14 = [GEOLatLng alloc];
    [(GEOMapRegion *)self southLat];
    v16 = v15;
    [(GEOMapRegion *)self westLng];
    v18 = [(GEOLatLng *)v14 initWithLatitude:v16 longitude:v17];
    [vertexs addObject:v18];

    v19 = [GEOLatLng alloc];
    [(GEOMapRegion *)self southLat];
    v21 = v20;
    [(GEOMapRegion *)self eastLng];
    v23 = [(GEOLatLng *)v19 initWithLatitude:v21 longitude:v22];
    [vertexs addObject:v23];
  }

  else
  {
    vertexs = 0;
  }

  return vertexs;
}

- (unint64_t)vertexsCount
{
  [(GEOMapRegion *)self _readVertexs];
  vertexs = self->_vertexs;

  return [(NSMutableArray *)vertexs count];
}

- (NSString)providingVendor
{
  [(GEOMapRegion *)self _readProvidingVendor];
  providingVendor = self->_providingVendor;

  return providingVendor;
}

- (void)_readProvidingVendor
{
  if (self)
  {
    os_unfair_lock_lock((self + 80));
    if ((*(self + 92) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOMapRegionReadSpecified(self, *(self + 8), &_readProvidingVendor_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 80));
  }
}

- (unint64_t)hash
{
  [(GEOMapRegion *)self readAll:1];
  flags = self->_flags;
  if ((flags & 4) != 0)
  {
    southLat = self->_southLat;
    if (southLat < 0.0)
    {
      southLat = -southLat;
    }

    *v3.i64 = floor(southLat + 0.5);
    v8 = (southLat - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((flags & 8) != 0)
  {
    westLng = self->_westLng;
    if (westLng < 0.0)
    {
      westLng = -westLng;
    }

    *v3.i64 = floor(westLng + 0.5);
    v12 = (westLng - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((flags & 2) != 0)
  {
    northLat = self->_northLat;
    if (northLat < 0.0)
    {
      northLat = -northLat;
    }

    *v3.i64 = floor(northLat + 0.5);
    v16 = (northLat - *v3.i64) * 1.84467441e19;
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

  if (flags)
  {
    eastLng = self->_eastLng;
    if (eastLng < 0.0)
    {
      eastLng = -eastLng;
    }

    *v3.i64 = floor(eastLng + 0.5);
    v20 = (eastLng - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v4, v3).i64;
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

  v22 = [(NSMutableArray *)self->_vertexs hash];
  v23 = self->_flags;
  if ((v23 & 0x10) != 0)
  {
    v24 = 2654435761 * self->_mapRegionSourceType;
    if ((v23 & 0x20) != 0)
    {
      goto LABEL_35;
    }

LABEL_37:
    v25 = 0;
    return v10 ^ v6 ^ v14 ^ v18 ^ v24 ^ v25 ^ v22 ^ [(NSString *)self->_providingVendor hash];
  }

  v24 = 0;
  if ((v23 & 0x20) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  v25 = 2654435761 * self->_isManuallyEntered;
  return v10 ^ v6 ^ v14 ^ v18 ^ v24 ^ v25 ^ v22 ^ [(NSString *)self->_providingVendor hash];
}

@end