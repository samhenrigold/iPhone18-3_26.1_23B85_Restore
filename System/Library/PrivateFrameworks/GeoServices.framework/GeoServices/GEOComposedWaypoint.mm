@interface GEOComposedWaypoint
- (GEOComposedWaypoint)init;
- (GEOLatLng)latLng;
- (GEOMapItemStorage)mapItemStorage;
- (GEOWaypointTyped)waypoint;
- (NSData)uniqueWaypointID;
- (NSString)findMyHandleID;
- (id)name;
- (id)styleAttributes;
- (id)timezone;
- (id)uniqueID;
- (int)waypointCategory;
- (void)_readFindMyHandleID;
- (void)_readLatLng;
- (void)_readMapItemStorage;
- (void)_readUniqueWaypointID;
- (void)_readWaypoint;
@end

@implementation GEOComposedWaypoint

- (GEOMapItemStorage)mapItemStorage
{
  [(GEOComposedWaypoint *)self _readMapItemStorage];
  mapItemStorage = self->_mapItemStorage;

  return mapItemStorage;
}

- (void)_readMapItemStorage
{
  if (self)
  {
    os_unfair_lock_lock((self + 96));
    if ((*(self + 108) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOComposedWaypointReadSpecified(self, *(self + 8), &_readMapItemStorage_tags_53381);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 96));
  }
}

- (NSData)uniqueWaypointID
{
  [(GEOComposedWaypoint *)self _readUniqueWaypointID];
  uniqueWaypointID = self->_uniqueWaypointID;

  return uniqueWaypointID;
}

- (id)uniqueID
{
  uniqueWaypointID = [(GEOComposedWaypoint *)self uniqueWaypointID];

  if (!uniqueWaypointID)
  {
    _geo_dataForUUID = [MEMORY[0x1E696AFB0] _geo_dataForUUID];
    [(GEOComposedWaypoint *)self setUniqueWaypointID:_geo_dataForUUID];
  }

  v5 = MEMORY[0x1E696AFB0];
  uniqueWaypointID2 = [(GEOComposedWaypoint *)self uniqueWaypointID];
  v7 = [v5 _geo_uuidForData:uniqueWaypointID2];

  return v7;
}

- (void)_readUniqueWaypointID
{
  if (self)
  {
    os_unfair_lock_lock((self + 96));
    if ((*(self + 108) & 0x400) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOComposedWaypointReadSpecified(self, *(self + 8), &_readUniqueWaypointID_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 96));
  }
}

- (id)timezone
{
  geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
  timezone = [geoMapItem timezone];

  return timezone;
}

- (NSString)findMyHandleID
{
  [(GEOComposedWaypoint *)self _readFindMyHandleID];
  findMyHandleID = self->_findMyHandleID;

  return findMyHandleID;
}

- (void)_readFindMyHandleID
{
  if (self)
  {
    os_unfair_lock_lock((self + 96));
    if ((*(self + 108) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOComposedWaypointReadSpecified(self, *(self + 8), &_readFindMyHandleID_tags_53448);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 96));
  }
}

- (int)waypointCategory
{
  findMyHandleID = [(GEOComposedWaypoint *)self findMyHandleID];

  if (!findMyHandleID)
  {
    geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
    v6 = geoMapItem;
    if (!geoMapItem)
    {
      v4 = 8;
      goto LABEL_27;
    }

    contactName = [geoMapItem contactName];
    contactAddressType = [v6 contactAddressType];
    switch(contactAddressType)
    {
      case 3:
        if ([v6 contactIsMe])
        {
          v4 = 10;
          goto LABEL_26;
        }

        if ([contactName length])
        {
          v4 = 11;
          goto LABEL_26;
        }

        break;
      case 2:
        if ([v6 contactIsMe])
        {
          v4 = 1;
          goto LABEL_26;
        }

        if ([contactName length])
        {
          v4 = 3;
          goto LABEL_26;
        }

        break;
      case 1:
        if ([v6 contactIsMe])
        {
          v4 = 2;
LABEL_26:

LABEL_27:
          return v4;
        }

        if ([contactName length])
        {
          v4 = 4;
          goto LABEL_26;
        }

        break;
    }

    if ([contactName length])
    {
      v4 = 5;
    }

    else if ([v6 _muid])
    {
      v4 = 6;
    }

    else
    {
      addressObject = [v6 addressObject];

      if (addressObject)
      {
        v4 = 7;
      }

      else
      {
        v4 = 0;
      }
    }

    goto LABEL_26;
  }

  return 12;
}

- (GEOComposedWaypoint)init
{
  v6.receiver = self;
  v6.super_class = GEOComposedWaypoint;
  v2 = [(GEOComposedWaypoint *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readWaypoint
{
  if (self)
  {
    os_unfair_lock_lock((self + 96));
    if ((*(self + 108) & 0x800) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOComposedWaypointReadSpecified(self, *(self + 8), &_readWaypoint_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 96));
  }
}

- (GEOWaypointTyped)waypoint
{
  [(GEOComposedWaypoint *)self _readWaypoint];
  waypoint = self->_waypoint;

  return waypoint;
}

- (void)_readLatLng
{
  if (self)
  {
    os_unfair_lock_lock((self + 96));
    if ((*(self + 108) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOComposedWaypointReadSpecified(self, *(self + 8), &_readLatLng_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 96));
  }
}

- (GEOLatLng)latLng
{
  [(GEOComposedWaypoint *)self _readLatLng];
  latLng = self->_latLng;

  return latLng;
}

- (id)name
{
  geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
  name = [geoMapItem name];

  return name;
}

- (id)styleAttributes
{
  v3 = objc_getAssociatedObject(self, &_geowaypoint_styleAttributesKey);
  if (!v3)
  {
    if ((-[GEOComposedWaypoint styleAttributesData](self, "styleAttributesData"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && (v5 = MEMORY[0x1E696ACD0], v6 = objc_opt_class(), -[GEOComposedWaypoint styleAttributesData](self, "styleAttributesData"), v7 = objc_claimAutoreleasedReturnValue(), [v5 unarchivedObjectOfClass:v6 fromData:v7 error:0], v3 = objc_claimAutoreleasedReturnValue(), v7, v3) || (-[GEOComposedWaypoint mapItemStorage](self, "mapItemStorage"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_styleAttributes"), v3 = objc_claimAutoreleasedReturnValue(), v8, v3))
    {
      objc_setAssociatedObject(self, &_geowaypoint_styleAttributesKey, v3, 1);
    }
  }

  return v3;
}

@end