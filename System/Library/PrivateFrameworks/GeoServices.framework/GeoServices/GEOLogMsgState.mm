@interface GEOLogMsgState
- (GEOLogMsgState)init;
- (GEOLogMsgStateApplicationIdentifier)applicationIdentifier;
- (GEOLogMsgStateCarPlay)carPlay;
- (GEOLogMsgStateDeviceConnection)deviceConnection;
- (GEOLogMsgStateDeviceIdentifier)deviceIdentifier;
- (GEOLogMsgStateDeviceLocale)deviceLocale;
- (GEOLogMsgStateDeviceSettings)deviceSettings;
- (GEOLogMsgStateExperiments)experiments;
- (GEOLogMsgStateLookAroundView)lookAroundView;
- (GEOLogMsgStateMapSettings)mapSettings;
- (GEOLogMsgStateMapUI)mapUi;
- (GEOLogMsgStateMapUIShown)mapUiShown;
- (GEOLogMsgStateMapView)mapView;
- (GEOLogMsgStateMapViewLocation)mapViewLocation;
- (GEOLogMsgStateMarket)market;
- (GEOLogMsgStateOffline)offline;
- (GEOLogMsgStatePlaceRequest)placeRequest;
- (GEOLogMsgStateTileSet)tileSet;
- (GEOLogMsgStateUser)user;
- (GEOLogMsgStateUserSession)userSession;
- (void)_readApplicationIdentifier;
- (void)_readCarPlay;
- (void)_readDeviceConnection;
- (void)_readDeviceIdentifier;
- (void)_readDeviceLocale;
- (void)_readDeviceSettings;
- (void)_readExperiments;
- (void)_readLookAroundView;
- (void)_readMapSettings;
- (void)_readMapUi;
- (void)_readMapUiShown;
- (void)_readMapView;
- (void)_readMapViewLocation;
- (void)_readMarket;
- (void)_readOffline;
- (void)_readPlaceRequest;
- (void)_readSearchResults;
- (void)_readTileSet;
- (void)_readUser;
- (void)_readUserSession;
@end

@implementation GEOLogMsgState

- (GEOLogMsgStateDeviceIdentifier)deviceIdentifier
{
  [(GEOLogMsgState *)self _readDeviceIdentifier];
  deviceIdentifier = self->_deviceIdentifier;

  return deviceIdentifier;
}

- (void)_readDeviceIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 505) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readDeviceIdentifier_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateApplicationIdentifier)applicationIdentifier
{
  [(GEOLogMsgState *)self _readApplicationIdentifier];
  applicationIdentifier = self->_applicationIdentifier;

  return applicationIdentifier;
}

- (void)_readApplicationIdentifier
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 504) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readApplicationIdentifier_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgState)init
{
  v6.receiver = self;
  v6.super_class = GEOLogMsgState;
  v2 = [(GEOLogMsgState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (GEOLogMsgStateUserSession)userSession
{
  [(GEOLogMsgState *)self _readUserSession];
  userSession = self->_userSession;

  return userSession;
}

- (GEOLogMsgStatePlaceRequest)placeRequest
{
  [(GEOLogMsgState *)self _readPlaceRequest];
  placeRequest = self->_placeRequest;

  return placeRequest;
}

- (GEOLogMsgStateLookAroundView)lookAroundView
{
  [(GEOLogMsgState *)self _readLookAroundView];
  lookAroundView = self->_lookAroundView;

  return lookAroundView;
}

- (void)_readUserSession
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 511) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readUserSession_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateUser)user
{
  [(GEOLogMsgState *)self _readUser];
  user = self->_user;

  return user;
}

- (void)_readUser
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 511) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readUser_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (void)_readPlaceRequest
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 509) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readPlaceRequest_tags_191347);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (void)_readLookAroundView
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 506) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readLookAroundView_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (void)_readMapSettings
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 507) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readMapSettings_tags_5881);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (void)_readSearchResults
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 510) & 2) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readSearchResults_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateCarPlay)carPlay
{
  [(GEOLogMsgState *)self _readCarPlay];
  carPlay = self->_carPlay;

  return carPlay;
}

- (void)_readCarPlay
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 505) & 1) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readCarPlay_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateExperiments)experiments
{
  [(GEOLogMsgState *)self _readExperiments];
  experiments = self->_experiments;

  return experiments;
}

- (void)_readExperiments
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 506) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readExperiments_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateDeviceSettings)deviceSettings
{
  [(GEOLogMsgState *)self _readDeviceSettings];
  deviceSettings = self->_deviceSettings;

  return deviceSettings;
}

- (void)_readDeviceSettings
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 505) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readDeviceSettings_tags_5880);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateDeviceConnection)deviceConnection
{
  [(GEOLogMsgState *)self _readDeviceConnection];
  deviceConnection = self->_deviceConnection;

  return deviceConnection;
}

- (void)_readDeviceLocale
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 505) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readDeviceLocale_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateMapUIShown)mapUiShown
{
  [(GEOLogMsgState *)self _readMapUiShown];
  mapUiShown = self->_mapUiShown;

  return mapUiShown;
}

- (void)_readMapUiShown
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 507) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readMapUiShown_tags_5882);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (void)_readMapView
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 507) & 0x20) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readMapView_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateMapView)mapView
{
  [(GEOLogMsgState *)self _readMapView];
  mapView = self->_mapView;

  return mapView;
}

- (void)_readDeviceConnection
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 505) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readDeviceConnection_tags_5879);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateDeviceLocale)deviceLocale
{
  [(GEOLogMsgState *)self _readDeviceLocale];
  deviceLocale = self->_deviceLocale;

  return deviceLocale;
}

- (void)_readMarket
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 508) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readMarket_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateMarket)market
{
  [(GEOLogMsgState *)self _readMarket];
  market = self->_market;

  return market;
}

- (GEOLogMsgStateOffline)offline
{
  [(GEOLogMsgState *)self _readOffline];
  offline = self->_offline;

  return offline;
}

- (void)_readOffline
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 508) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readOffline_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateMapSettings)mapSettings
{
  [(GEOLogMsgState *)self _readMapSettings];
  mapSettings = self->_mapSettings;

  return mapSettings;
}

- (GEOLogMsgStateTileSet)tileSet
{
  [(GEOLogMsgState *)self _readTileSet];
  tileSet = self->_tileSet;

  return tileSet;
}

- (void)_readTileSet
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 510) & 0x40) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readTileSet_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (void)_readMapViewLocation
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 507) & 0x10) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readMapViewLocation_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

- (GEOLogMsgStateMapViewLocation)mapViewLocation
{
  [(GEOLogMsgState *)self _readMapViewLocation];
  mapViewLocation = self->_mapViewLocation;

  return mapViewLocation;
}

- (GEOLogMsgStateMapUI)mapUi
{
  [(GEOLogMsgState *)self _readMapUi];
  mapUi = self->_mapUi;

  return mapUi;
}

- (void)_readMapUi
{
  if (self)
  {
    os_unfair_lock_lock((self + 496));
    if ((*(self + 507) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateReadSpecified(self, *(self + 8), &_readMapUi_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 496));
  }
}

@end