@interface GEOGeographicMetadataRequester
- (GEOLocation)location;
- (void)_fetch;
@end

@implementation GEOGeographicMetadataRequester

- (void)_fetch
{
  if (self->_processBlock)
  {
    type = self->_type;
    if (type <= 1)
    {
      switch(type)
      {
        case -1:
          BOOL = GEOConfigGetBOOL(437, &GeoServicesConfig_TimezonePolygonAssetIsShiftedInChina_Metadata);
          location = [(GEOGeographicMetadataRequester *)self location];
          if (!BOOL)
          {
            goto LABEL_23;
          }

LABEL_20:
          if ([location referenceFrame] != 2)
          {
            [location coordinate];
            if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:?])
            {
              v9 = objc_alloc_init(GEOLocationShifter);
              latLng = [location latLng];
              [location horizontalAccuracy];
              v12 = v11;
              v14[0] = MEMORY[0x1E69E9820];
              v14[1] = 3221225472;
              v14[2] = __40__GEOGeographicMetadataRequester__fetch__block_invoke;
              v14[3] = &unk_1E7055278;
              location = location;
              v15 = location;
              selfCopy = self;
              v13[0] = MEMORY[0x1E69E9820];
              v13[1] = 3221225472;
              v13[2] = __40__GEOGeographicMetadataRequester__fetch__block_invoke_3;
              v13[3] = &unk_1E706FE80;
              v13[4] = self;
              [(GEOLocationShifter *)v9 shiftLatLng:latLng accuracy:v14 withCompletionHandler:0 mustGoToNetworkCallback:v13 errorHandler:self->_workQueue callbackQueue:v12];

LABEL_24:
              return;
            }
          }

LABEL_23:
          [(GEOGeographicMetadataFetcher *)self->_fetcher fetchMetadataForLocation:location responseQueue:self->_workQueue block:self->_processBlock];
          goto LABEL_24;
        case 0:
          v4 = &GeoServicesConfig_TerritoryRegulatoryAssetIsShiftedInChina_Metadata;
          v5 = 436;
          goto LABEL_19;
        case 1:
          v4 = &GeoServicesConfig_SmartInterfaceSelectionIsShiftedInChina_Metadata;
          v5 = 439;
          goto LABEL_19;
      }
    }

    else
    {
      if (type <= 3)
      {
        if (type == 2)
        {
          v4 = &GeoServicesConfig_SmartDataModeIsShiftedInChina_Metadata;
          v5 = 440;
        }

        else
        {
          v4 = &GeoServicesConfig_CellPerfScoreIsShiftedInChina_Metadata;
          v5 = 442;
        }

LABEL_19:
        v8 = GEOConfigGetBOOL(v5, v4);
        location = [(GEOGeographicMetadataRequester *)self location];
        if ((v8 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      if (type == 4)
      {
        v4 = &GeoServicesConfig_CellCoverageIsShiftedInChina_Metadata;
        v5 = 444;
        goto LABEL_19;
      }

      if (type == 5)
      {
        v4 = &GeoServicesConfig_BluePOIAOIIsShiftedInChina_Metadata;
        v5 = 447;
        goto LABEL_19;
      }
    }

    location = [(GEOGeographicMetadataRequester *)self location];
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _processBlock != ((void*)0)", buf, 2u);
  }
}

- (GEOLocation)location
{
  v5 = self->_isolater;
  _geo_isolate_lock_data();
  v3 = [(GEOLocation *)self->_location copy];
  _geo_isolate_unlock();

  return v3;
}

@end