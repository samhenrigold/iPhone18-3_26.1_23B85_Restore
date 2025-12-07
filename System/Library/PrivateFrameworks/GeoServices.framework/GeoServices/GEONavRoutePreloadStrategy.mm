@interface GEONavRoutePreloadStrategy
- (void)_cancelRequestsBehindCurrentPosition;
- (void)_performNextRequests;
@end

@implementation GEONavRoutePreloadStrategy

- (void)_cancelRequestsBehindCurrentPosition
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_steps;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = 0;
  v6 = *v12;
  do
  {
    v7 = 0;
    do
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      v9 = *(v8 + 24);
      currentRoutePosition = self->_currentRoutePosition;
      if (v9 < currentRoutePosition && (*(v8 + 76) & 2) != 0)
      {
        [(GEONavRoutePreloadStrategy *)self _cancelStep:v11];
        ++v5;
      }

      else if (v9 > currentRoutePosition)
      {
        goto LABEL_13;
      }

      ++v7;
    }

    while (v4 != v7);
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  }

  while (v4);
LABEL_13:

  if (v5)
  {
    v3 = GEOGetRoutePreloaderLog();
    if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v5;
      _os_log_impl(&dword_18660C000, &v3->super.super, OS_LOG_TYPE_INFO, "[NavStrategy] Canceled %lu steps because they are behind the current position", buf, 0xCu);
    }

LABEL_16:
  }
}

- (void)_performNextRequests
{
  v72 = *MEMORY[0x1E69E9840];
  if (!self->_enabled || self->_finished || self->_currentLoadingSteps > 1 || ![(NSMutableArray *)self->_steps count]|| self->_geodCrashTimer)
  {
    return;
  }

  v3 = vcvtad_u64_f64(self->_currentRoutePosition);
  if ([(GEOComposedRoute *)self->_route pointCount]<= v3)
  {
    pointCount = [(GEOComposedRoute *)self->_route pointCount];
  }

  else
  {
    pointCount = vcvtad_u64_f64(self->_currentRoutePosition);
  }

  [(GEOComposedRoute *)self->_route distanceFromPointIndex:0 toPointIndex:pointCount];
  v6 = v5;
  downloadState = self->_downloadState;
  WeakRetained = objc_loadWeakRetained(&self->_preloader);
  networkQuality = [WeakRetained networkQuality];
  stepSizeInMeters = self->_stepSizeInMeters;
  v11 = &_downloadTruthTable;
  v12 = 7;
  v13 = v6 / 1000.0;
  while (*v11 != networkQuality)
  {
    v11 += 5;
    if (!--v12)
    {
      v14 = 0.0;
      goto LABEL_20;
    }
  }

  v15 = 16;
  if (v13 > 10.0)
  {
    v15 = 32;
  }

  v16 = 8;
  if (v13 > 10.0)
  {
    v16 = 24;
  }

  if (downloadState)
  {
    v15 = v16;
  }

  v14 = *(v11 + v15) * 1000.0;
LABEL_20:

  v17 = self->_downloadState;
  v18 = objc_loadWeakRetained(&self->_preloader);
  networkQuality2 = [v18 networkQuality];
  v60 = (v14 / stepSizeInMeters);
  v20 = 5;
  if (networkQuality2 != 7)
  {
    v20 = networkQuality2;
  }

  if (networkQuality2 == 6)
  {
    v20 = 4;
  }

  v21 = self->_stepSizeInMeters;
  v22 = &_downloadTruthTable;
  v23 = 7;
  while (*v22 != v20)
  {
    v22 += 5;
    if (!--v23)
    {
      v24 = 0.0;
      goto LABEL_35;
    }
  }

  v25 = 16;
  if (v13 > 10.0)
  {
    v25 = 32;
  }

  v26 = 8;
  if (v13 > 10.0)
  {
    v26 = 24;
  }

  if (v17)
  {
    v25 = v26;
  }

  v24 = *(v22 + v25) * 1000.0;
LABEL_35:

  if (!v60)
  {
    return;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v27 = self->_steps;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v28)
  {
    v29 = 0;
    v30 = *v62;
    v31 = -1;
    v32 = -1;
LABEL_38:
    v33 = 0;
    v34 = v29;
    v29 += v28;
    while (1)
    {
      if (*v62 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v35 = *(*(&v61 + 1) + 8 * v33);
      if (v35[3] >= self->_currentRoutePosition)
      {
        if (v32 < 0)
        {
          v32 = v34;
        }

        if (v31 < 0 && [*(*(&v61 + 1) + 8 * v33) hasError])
        {
          v31 = v34;
        }

        if ([v35 okToLoad])
        {
          break;
        }
      }

      ++v34;
      if (v28 == ++v33)
      {
        v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v28)
        {
          goto LABEL_38;
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
    v31 = -1;
    v32 = -1;
LABEL_52:
    v34 = -1;
  }

  v58 = (v24 / v21);
  v59 = v32 & ~(v32 >> 63);
  if (!self->_useCellularCoverage || (Double = GEOConfigGetDouble(143, &GeoServicesConfig_RoutePreloaderAvailableCellularCoverageMinDistance_Metadata), v37 = self->_stepSizeInMeters, v38 = GEOConfigGetDouble(144, &GeoServicesConfig_RoutePreloaderMaxCellularUnavailableDistance_Metadata), v39 = self->_stepSizeInMeters, v55 = [(NSMutableArray *)self->_steps count], v41 = v55 - v59, v55 - v59 < 1))
  {
    v44 = v60;
    goto LABEL_85;
  }

  v42 = 0;
  v56 = vcvtpd_u64_f64(v38 / v39);
  v57 = vcvtpd_u64_f64(Double / v37);
  v43 = v41 & ~(v41 >> 63);
  *&v40 = 134349568;
  v54 = v40;
  v44 = v60;
  while (1)
  {
    v45 = v59 + v42;
    v46 = [(NSMutableArray *)self->_steps objectAtIndexedSubscript:v59 + v42, v54];
    if (v46[18] == 2)
    {
      break;
    }

LABEL_81:

    if (v42 < v44 && v41 > ++v42)
    {
      continue;
    }

    goto LABEL_85;
  }

  if ((v44 - v60) <= v56)
  {
    v47 = v57 + v42;
    if (v57 + v42 <= v44)
    {
      if (v45 >= v34)
      {
        v52 = GEOGetRoutePreloaderLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349312;
          v66 = v42;
          v67 = 2050;
          v68 = v55;
          _os_log_impl(&dword_18660C000, v52, OS_LOG_TYPE_DEBUG, "[NavStrategy] Batch %{public}llu / %{public}llu has estimated unavailable cellular coverage, but it is already contained within the range we intended to load", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v45 >= v34)
      {
        v48 = GEOGetRoutePreloaderLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = v54;
          v66 = v42;
          v67 = 2050;
          v68 = v55;
          v69 = 2048;
          v70 = v57;
          _os_log_impl(&dword_18660C000, v48, OS_LOG_TYPE_DEBUG, "[NavStrategy] Batch %{public}llu / %{public}llu has estimated unavailable cellular coverage. Will load until %lu subsequent batches have cellular coverage", buf, 0x20u);
        }
      }

      if (v44 <= v47)
      {
        v49 = v57 + v42;
      }

      else
      {
        v49 = v44;
      }

      if (v43 >= v49)
      {
        v44 = v49;
      }

      else
      {
        v44 = v41 & ~(v41 >> 63);
      }

      v50 = v58;
      if (v58 <= v47)
      {
        v51 = v57 + v42;
      }

      else
      {
        v51 = v58;
      }

      if (v43 < v51)
      {
        v51 = v41 & ~(v41 >> 63);
      }

      if (v42 <= v58)
      {
        v50 = v51;
      }

      v58 = v50;
    }

    goto LABEL_81;
  }

  if (v45 >= v34)
  {
    v53 = GEOGetRoutePreloaderLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v66 = v42;
      v67 = 2050;
      v68 = v55;
      _os_log_impl(&dword_18660C000, v53, OS_LOG_TYPE_DEBUG, "[NavStrategy] Batch %{public}llu / %{public}llu has estimated unavailable cellular coverage, but we have exceeded our allowable extension range", buf, 0x16u);
    }
  }

LABEL_85:
  [(GEONavRoutePreloadStrategy *)self _performTileRequestsWithCurrentRoutePositionStepIndex:v59 firstErrorStepIndex:v31 firstLoadStepIndex:v34 loadStepsAhead:v44 loadStepsAheadIfNoWiFi:v58];
}

@end