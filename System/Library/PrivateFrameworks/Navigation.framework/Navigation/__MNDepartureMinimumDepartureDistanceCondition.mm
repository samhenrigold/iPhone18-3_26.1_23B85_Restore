@interface __MNDepartureMinimumDepartureDistanceCondition
- (__MNDepartureMinimumDepartureDistanceCondition)initWithUpdater:(id)updater arrivalPoints:(id)points distanceThreshold:(double)threshold;
- (double)scoreForLocation:(id)location;
@end

@implementation __MNDepartureMinimumDepartureDistanceCondition

- (double)scoreForLocation:(id)location
{
  v68 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  WeakRetained = objc_loadWeakRetained(&self->_updater);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_updater);
    arrivalLeg = [v6 arrivalLeg];

    [locationCopy coordinate];
    v9 = v8;
    v11 = v10;
    v12 = objc_loadWeakRetained(&self->_updater);
    route = [v12 route];
    [route pointAt:{objc_msgSend(arrivalLeg, "endPointIndex")}];
    v15 = v14;
    v17 = v16;

    arrivalPoints = self->_arrivalPoints;
    if (arrivalPoints)
    {
      threshold = self->_threshold;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v19 = arrivalPoints;
      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v58;
        v23 = 0.0;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v58 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v57 + 1) + 8 * i);
            point = [v25 point];
            [point lat];
            v28 = v27;
            point2 = [v25 point];
            [point2 lng];
            v31 = v30;

            v69.var0 = v9;
            v69.var1 = v11;
            v69.var2 = v28;
            v73.var0 = v31;
            v36 = GEOCalculateDistance(v32, v33, v69, v73);
            if (v36 > v23)
            {
              v39 = v36;
              v70.var0 = v15;
              v70.var1 = v17;
              v70.var2 = v28;
              v40 = v31;
              threshold = self->_threshold + GEOCalculateDistance(v34, v35, v70, *(&v37 - 1));
              v23 = v39;
            }
          }

          v21 = [(NSArray *)v19 countByEnumeratingWithState:&v57 objects:v67 count:16];
        }

        while (v21);
      }

      else
      {
        v23 = 0.0;
      }

      v51 = threshold;
    }

    else
    {
      destination = [arrivalLeg destination];
      [destination coordinate];
      v44 = v43;
      v46 = v45;

      v71.var0 = v9;
      v71.var1 = v11;
      v71.var2 = v44;
      v74.var0 = v46;
      v23 = GEOCalculateDistance(v47, v48, v71, v74);
      v72.var0 = v15;
      v72.var1 = v17;
      v72.var2 = v44;
      v75.var0 = v46;
      v51 = self->_threshold + GEOCalculateDistance(v49, v50, v72, v75);
    }

    if (v23 >= v51)
    {
      v52 = MNGetMNDepartureUpdaterLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = objc_loadWeakRetained(&self->_updater);
        arrivalWaypointLegIndex = [v53 arrivalWaypointLegIndex];
        *buf = 67109632;
        v62 = arrivalWaypointLegIndex;
        v63 = 2048;
        v64 = v23;
        v65 = 2048;
        v66 = v51;
        _os_log_impl(&dword_1D311E000, v52, OS_LOG_TYPE_DEFAULT, "Minimum deviation from intermediary waypoint detected. Leg: %d. Distance (%0.1fm) > Required distance (%0.1fm).", buf, 0x1Cu);
      }

      v41 = 1.0;
    }

    else
    {
      v41 = v23 / v51;
    }
  }

  else
  {
    v41 = -1.0;
  }

  return v41;
}

- (__MNDepartureMinimumDepartureDistanceCondition)initWithUpdater:(id)updater arrivalPoints:(id)points distanceThreshold:(double)threshold
{
  updaterCopy = updater;
  pointsCopy = points;
  v14.receiver = self;
  v14.super_class = __MNDepartureMinimumDepartureDistanceCondition;
  v10 = [(__MNDepartureMinimumDepartureDistanceCondition *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_updater, updaterCopy);
    objc_storeStrong(&v11->_arrivalPoints, points);
    v11->_threshold = threshold;
    v12 = v11;
  }

  return v11;
}

@end