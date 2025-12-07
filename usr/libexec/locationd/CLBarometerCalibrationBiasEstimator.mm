@interface CLBarometerCalibrationBiasEstimator
+ (void)getLocationSampleAltitudeAndUncertainty:(void *)uncertainty andRefAltitude:(double *)altitude andRefUncertainty:(double *)refUncertainty;
- (BOOL)getLastPressureSample:(double *)sample;
- (BOOL)isIHAAuthorized;
- (BOOL)updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:(double)time andEndTime:(double)endTime andNextTrackStartTime:(double)startTime;
- (BiasEstimatorLocation)centroidOfLocationVector:(const void *)vector;
- (CLBarometerCalibrationBiasEstimator)initWithUniverse:(id)universe delegate:(id)delegate buffers:(void *)buffers contextManager:(id)manager;
- (CLBarometerCalibrationPressureData)getClosestEntryToRefTime:(double)time inPressureQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)std :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>;
- (double)crossEntropyOfreference:(ReferencePairedWithPressure *)ofreference;
- (id).cxx_construct;
- (id)copyCurrentBias;
- (int)selectReferenceWithReference:(void *)reference withBaroElevation:(double)elevation betweenStartTime:(double)time andEndTime:(double)endTime;
- (void)computeMeanSeaLevelPressureWithRebasingLocationData:(id)data referenceMap:(void *)map andLocationType:(int)type;
- (void)cumulateReference:(void *)reference andRefAltitude:(double)altitude andRefVariance:(double)variance andBaroElevation:(double)elevation andType:(int)type;
- (void)dealloc;
- (void)rebaseSignificantElevationWithEndTime:(double)time;
- (void)retrieveBiasInfo;
- (void)saveBiasInfo;
- (void)sendRebaseAnalyticsWithAltitudeError:(double)error andUncertainty:(double)uncertainty andRefUncertainty:(double)refUncertainty andDemAvailable:(BOOL)available andWorkout:(BOOL)workout andReferenceSource:(int)source andCorrection:(double)correction andDistance:(double)self0;
- (void)sendVisitExitAnalyticsWithDuration:(double)duration andRebaseEvent:(void *)event andUncertaintyAtEntry:(double)entry;
- (void)sendVisitExitWifiImprovementAnalyticsEventWithDuration:(double)duration uncertaintyAtVisitEntry:(double)entry uncertaintyAtVisitExit:(double)exit timeDiffBtwArrivalAndLastRebase:(double)rebase;
- (void)updateBiasUncertaintyWithAbsSigElevation:(double)elevation withCompanion:(BOOL)companion;
- (void)updateBiasUncertaintyWithPressure:(double)pressure andTime:(double)time andLat:(double)lat andLon:(double)lon;
- (void)updateElevationBiasBetweenStartTime:(double)time andEndTime:(double)endTime andNextTrackStartTime:(double)startTime;
- (void)updateEstimatedWeatherWithCumulativeAscendingDelta:(unsigned int)delta andDescendingDelta:(unsigned int)descendingDelta andIosTimestamp:(double)timestamp;
- (void)updateHistoricalMslpArray:(id)array;
- (void)updateLoiInfo:(const void *)info;
- (void)updatePressureUncertaintyWithPressure:(double)pressure andTime:(double)time andLat:(double)lat andLon:(double)lon;
- (void)updateVisitState:(BOOL)state arrivalTime:(double)time departureTime:(double)departureTime;
@end

@implementation CLBarometerCalibrationBiasEstimator

- (void)saveBiasInfo
{
  if (self->_biasTimestamp != 1.79769313e308)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(CLBarometerCalibrationBiasEstimator *)self getAbsoluteAltitudeUncertainty];
    v40 = v3;
    v8 = sub_10085BD8C(self->_fSignificantElevationEstimatorRebase.__ptr_, v3, v4, v5);
    if (v8 == 1.79769313e308)
    {
      v8 = -800.0;
    }

    v39 = v8;
    v9 = sub_1000206B4(v6, v7);
    v10 = sub_100116D68(v9, "CLBarometerCalibration_Timestamp", &Current);
    v12 = sub_1000206B4(v10, v11);
    v13 = sub_100116D68(v12, "CLBarometerCalibratio_Bias", &self->_bias);
    v15 = sub_1000206B4(v13, v14);
    v16 = sub_100116D68(v15, "CLBarometerCalibration_Uncertainty", &v40);
    v18 = sub_1000206B4(v16, v17);
    v19 = sub_100116D68(v18, "CLBarometerCalibration_Weather", &self->_weatherEstimateInMeter);
    v21 = sub_1000206B4(v19, v20);
    v22 = sub_100116D68(v21, "CLBarometerCalibration_SignificantElevation", &v39);
    v24 = sub_1000206B4(v22, v23);
    v25 = sub_100116D68(v24, "CLBarometerCalibration_BiasPressure", &self->_biasPressure);
    v27 = *sub_1000206B4(v25, v26);
    (*(v27 + 944))();
    self->_lastTimestampSavedRecovery = Current;
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v28 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      weatherEstimateInMeter = self->_weatherEstimateInMeter;
      bias = self->_bias;
      biasPressure = self->_biasPressure;
      *buf = 134219264;
      v55 = Current;
      v56 = 2048;
      v57 = bias;
      v58 = 2048;
      v59 = v40;
      v60 = 2048;
      v61 = weatherEstimateInMeter;
      v62 = 2048;
      v63 = v39;
      v64 = 2048;
      v65 = biasPressure;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "saving rebase info to cache, timestamp %f, bias, %f, uncertainty, %f, weather estimate, %f, sig elevation, %f, pressure, %f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v32 = self->_weatherEstimateInMeter;
      v33 = self->_bias;
      v34 = self->_biasPressure;
      v42 = 134219264;
      v43 = Current;
      v44 = 2048;
      v45 = v33;
      v46 = 2048;
      v47 = v40;
      v48 = 2048;
      v49 = v32;
      v50 = 2048;
      v51 = v39;
      v52 = 2048;
      v53 = v34;
      LODWORD(v37) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "saving rebase info to cache, timestamp %f, bias, %f, uncertainty, %f, weather estimate, %f, sig elevation, %f, pressure, %f", COERCE_DOUBLE(&v42), v37, v38, v39, v40, Current);
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator saveBiasInfo]", "%s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }
}

- (id)copyCurrentBias
{
  v3 = objc_opt_new();
  [v3 setTimestamp:self->_biasTimestamp];
  [v3 setBiasInMeters:self->_bias];
  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator getMeanSeaLevelArrayCount])
  {
    [(CLBarometerCalibrationBiasEstimator *)self getAbsoluteAltitudeUncertainty];
  }

  else
  {
    v4 = 500.0;
  }

  [v3 setUncertaintyInMeters:v4];
  [v3 setEstimatedMeanSeaLevelPressure:self->_estimatedMeanSeaLevelPressure];
  [v3 setEstimatedUncertainty:self->_estimatedAbsoluteAltitudeUncertainty];
  [v3 setWeatherEstimateInMeter:*(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83)];
  [v3 setPreviousCumulativeDeltaIOSTime:self->_previousCumulativeDeltaIOSTime];
  [v3 setStatusInfo:0];
  return v3;
}

- (CLBarometerCalibrationBiasEstimator)initWithUniverse:(id)universe delegate:(id)delegate buffers:(void *)buffers contextManager:(id)manager
{
  v11.receiver = self;
  v11.super_class = CLBarometerCalibrationBiasEstimator;
  v9 = [(CLBarometerCalibrationBiasEstimator *)&v11 init];
  if (v9)
  {
    v9->_delegate = delegate;
    v9->_universe = universe;
    v9->_dataBuffers = buffers;
    *&v9->_biasPressure = xmmword_101C88A60;
    *&v9->_biasUncertaintyTimestamp = xmmword_101C88A70;
    v9->_estimatedMeanSeaLevelPressure = 101325.0;
    *&v9->_weatherEstimateInMeter = xmmword_101C88A80;
    *&v9->_previousBiasTimestamp = xmmword_101C88A50;
    v9->_pressureUncertainty = 0.0;
    v9->_distanceTraveled = 0.0;
    *&v9->_distanceSinceLastRebase = xmmword_101C88A90;
    *&v9->_offSetAscendedDelta = 0;
    v9->_previousCumulativeDeltaIOSTime = 1.79769313e308;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  self->_delegate = 0;
  self->_universe = 0;
  self->_meanSeaLevelPressureEstimator = 0;
  self->_queriedMeanSeaLevelPressureData = 0;
  v3.receiver = self;
  v3.super_class = CLBarometerCalibrationBiasEstimator;
  [(CLBarometerCalibrationBiasEstimator *)&v3 dealloc];
}

- (CLBarometerCalibrationPressureData)getClosestEntryToRefTime:(double)time inPressureQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)std :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>
{
  begin = std->__map_.__begin_;
  if (std->__map_.__end_ != begin)
  {
    start = std->__start_;
    v6 = &begin[start >> 8];
    v7 = *v6 + 16 * start;
    v8 = *(begin + (((std->__size_ + start) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (LOBYTE(std->__size_) + start);
    if (v7 != v8)
    {
      v10 = 1.79769313e308;
      *&v11 = 1.79769313e308;
      v12 = 1.79769313e308;
      while (1)
      {
        v14 = *v7;
        v13 = *(v7 + 1);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = vabdd_f64(time, *v14);
        if (v15 < v10 && v15 <= 5.0)
        {
          break;
        }

        if (v15 <= v10)
        {
          goto LABEL_14;
        }

        v17 = 0;
        if (v13)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v17)
        {
          v7 += 16;
          if (v7 - *v6 == 4096)
          {
            v18 = v6[1];
            ++v6;
            v7 = v18;
          }

          if (v7 != v8)
          {
            continue;
          }
        }

        if (v10 != 1.79769313e308)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      v11 = *(v14 + 8);
      v12 = *v14;
      v10 = v15;
LABEL_14:
      v17 = 1;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_100008080(v13);
      goto LABEL_16;
    }
  }

  *&v11 = 1.79769313e308;
LABEL_23:
  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v19 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "pressure too far from reference data", v24, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190948C();
  }

  v12 = 1.79769313e308;
LABEL_30:
  v20 = 1.79769313e308;
  v21 = v12;
  v22 = *&v11;
  v23 = 1.79769313e308;
  result.var3 = v23;
  result.var2 = v20;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (void)updateEstimatedWeatherWithCumulativeAscendingDelta:(unsigned int)delta andDescendingDelta:(unsigned int)descendingDelta andIosTimestamp:(double)timestamp
{
  Current = CFAbsoluteTimeGetCurrent();
  previousCumulativeDeltaIOSTime = self->_previousCumulativeDeltaIOSTime;
  if (previousCumulativeDeltaIOSTime == 1.79769313e308)
  {
    self->_offSetAscendedDelta = delta;
    self->_offSetDescendedDelta = descendingDelta;
    previousCumulativeDeltaIOSTime = timestamp;
    self->_previousCumulativeDeltaIOSTime = timestamp;
  }

  if (vabdd_f64(timestamp, previousCumulativeDeltaIOSTime) > 18.0)
  {
    sub_10085BC68(self->_fSignificantElevationEstimatorRebase.__ptr_);
  }

  sub_1000A589C(self->_fSignificantElevationEstimatorRebase.__ptr_, delta - self->_offSetAscendedDelta, descendingDelta - self->_offSetDescendedDelta, 1000, [(CLBarometerCalibrationContextClient *)self->_delegate isInVisit], timestamp);
  self->_weatherEstimateInMeter = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83);
  self->_previousCumulativeDeltaIOSTime = timestamp;
  v28 = 0.0;
  if ([(CLBarometerCalibrationBiasEstimator *)self getLastPressureSample:&v28])
  {
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator minPressure];
    if (v11 == 1.79769313e308 || ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator maxPressure], v12 == 1.79769313e308))
    {
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setMinPressure:v28];
      v13 = v28;
LABEL_9:
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setMaxPressure:v13];
      goto LABEL_10;
    }

    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator minPressure];
    if (v18 > v28)
    {
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setMinPressure:?];
    }

    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator maxPressure];
    v20 = v19;
    v13 = v28;
    if (v20 < v28)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  if (vabdd_f64(Current, timestamp) < 10.0 && vabdd_f64(Current, self->_lastTimestampSavedRecovery) > 180.0)
  {
    [(CLBarometerCalibrationBiasEstimator *)self saveBiasInfo];
  }

  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v14 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    weatherEstimateInMeter = self->_weatherEstimateInMeter;
    v16 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83);
    v17 = self->_previousCumulativeDeltaIOSTime;
    *buf = 134219008;
    v40 = weatherEstimateInMeter;
    v41 = 2048;
    v42 = v16;
    v43 = 2048;
    v44 = v17;
    v45 = 2048;
    deltaCopy = delta;
    v47 = 2048;
    descendingDeltaCopy = descendingDelta;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "weatherEstimateWithRebase is %f weatherEstimateFromSigElevation is %f timestamp is %f cumulativeAscendingDelta is %f cumulativeDescendingDelta is %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v21 = self->_weatherEstimateInMeter;
    v22 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83);
    v23 = self->_previousCumulativeDeltaIOSTime;
    v29 = 134219008;
    v30 = v21;
    v31 = 2048;
    v32 = v22;
    v33 = 2048;
    v34 = v23;
    v35 = 2048;
    deltaCopy2 = delta;
    v37 = 2048;
    descendingDeltaCopy2 = descendingDelta;
    LODWORD(v26) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "weatherEstimateWithRebase is %f weatherEstimateFromSigElevation is %f timestamp is %f cumulativeAscendingDelta is %f cumulativeDescendingDelta is %f", COERCE_DOUBLE(&v29), v26, v27, v28);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateEstimatedWeatherWithCumulativeAscendingDelta:andDescendingDelta:andIosTimestamp:]", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }
}

- (double)crossEntropyOfreference:(ReferencePairedWithPressure *)ofreference
{
  v4 = ofreference->var0.var0 - ofreference->var1.var0;
  p_inVisitStatus = &self->_inVisitStatus;
  v6 = 1.0;
  if (!self->_inVisitStatus)
  {
    v6 = v4 * v4 / (v4 * v4 + *&qword_102658AC0);
  }

  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v7 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *p_inVisitStatus;
    v13 = 136315906;
    v14 = "crossEntropyWeighting";
    v15 = 2048;
    v16 = v6;
    v17 = 2080;
    v18 = "inVisitStatus";
    v19 = 1024;
    v20 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "cross entropy weighting,%s,%f,%s,%d", &v13, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101909578(p_inVisitStatus, v6);
  }

  var1 = ofreference->var0.var1;
  v10 = log(var1 * 17.0794684);
  v11 = ofreference->var1.var1;
  return v10 + v6 * ((v4 * v4 + var1) / v11 + log(v11 / var1) + -1.0);
}

+ (void)getLocationSampleAltitudeAndUncertainty:(void *)uncertainty andRefAltitude:(double *)altitude andRefUncertainty:(double *)refUncertainty
{
  v5 = *uncertainty;
  v6 = 24;
  if (*(*uncertainty + 120) > 0.0)
  {
    v6 = 112;
  }

  *altitude = *(v5 + v6);
  v7 = 40;
  if (*(v5 + 120) > 0.0)
  {
    v7 = 120;
  }

  *refUncertainty = *(v5 + v7);
}

- (void)cumulateReference:(void *)reference andRefAltitude:(double)altitude andRefVariance:(double)variance andBaroElevation:(double)elevation andType:(int)type
{
  typeCopy = type;
  if (variance <= 9.0 || type != 4)
  {
    v12 = reference + 8;
    v13 = *(reference + 1);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = reference + 8;
    do
    {
      if (*(v13 + 8) >= type)
      {
        v14 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < type)];
    }

    while (v13);
    if (v14 == v12 || *(v14 + 8) > type)
    {
LABEL_12:
      v14 = reference + 8;
    }

    if (variance > 0.0 && v14 == v12)
    {
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      sub_1006BAC64(reference, &typeCopy, &typeCopy, v20);
    }

    if (variance > 0.0)
    {
      v16 = sub_1003DD9F8(reference, &typeCopy);
      *v16 = *v16 + altitude;
      v17 = sub_1003DD9F8(reference, &typeCopy);
      *(v17 + 1) = *(v17 + 1) + variance;
      v18 = sub_1003DD9F8(reference, &typeCopy);
      *(v18 + 2) = *(v18 + 2) + elevation;
      v19 = sub_1003DD9F8(reference, &typeCopy);
      ++*(v19 + 8);
    }
  }
}

- (BiasEstimatorLocation)centroidOfLocationVector:(const void *)vector
{
  v3 = *vector;
  v4 = *(vector + 1);
  if (*vector == v4)
  {
    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    if (*v3 != 1.79769313e308)
    {
      v8 = v3[1];
      if (v8 != 1.79769313e308)
      {
        v6 = v6 + *v3;
        v7 = v7 + v8;
        ++v5;
      }
    }

    v3 += 2;
  }

  while (v3 != v4);
  if (!v5)
  {
LABEL_14:
    v10 = 1.79769313e308;
    v11 = 1.79769313e308;
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v9 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134545921;
      v21 = v6 / v5;
      v22 = 2053;
      v23 = v7 / v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "new centroid: latitude %{sensitive}f, longitude %{sensitive}f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v10 = v6 / v5;
      v11 = v7 / v5;
      v16 = 134545921;
      v17 = v10;
      v18 = 2053;
      v19 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "new centroid: latitude %{sensitive}f, longitude %{sensitive}f", &v16, 22);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator centroidOfLocationVector:]", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    else
    {
      v10 = v6 / v5;
      v11 = v7 / v5;
    }
  }

  v12 = v10;
  v13 = v11;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (void)updatePressureUncertaintyWithPressure:(double)pressure andTime:(double)time andLat:(double)lat andLon:(double)lon
{
  if (lat != 1.79769313e308 && lon != 1.79769313e308)
  {
    latitude = self->_biasLocation.latitude;
    if (latitude != 1.79769313e308)
    {
      v13 = fabs(sub_100117154(latitude, self->_biasLocation.longitude, lat, lon));
      self->_distanceTraveled = v13;
      p_distanceTraveled = &self->_distanceTraveled;
      self->_pressureUncertainty = self->_pressureUncertainty + v13 * 0.00200000009;
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v15 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        v16 = *p_distanceTraveled;
        v17 = *p_distanceTraveled * 0.00200000009;
        pressureUncertainty = self->_pressureUncertainty;
        *buf = 134218496;
        *v56 = v16;
        *&v56[8] = 2048;
        *&v56[10] = v17;
        *&v56[18] = 2048;
        *&v56[20] = pressureUncertainty;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "updated pressure uncertainty due to distance %f by %f uncertainty now is %f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019096B8(&self->_distanceTraveled, &self->_pressureUncertainty);
      }
    }

    self->_biasLocation.latitude = lat;
    self->_biasLocation.longitude = lon;
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v19 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134545921;
      *v56 = lat;
      *&v56[8] = 2053;
      *&v56[10] = lon;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "updated bias location latitude %{sensitive}f longitude %{sensitive}f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019097E0();
    }
  }

  if (self->_biasUncertaintyTimestamp < time)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (vabdd_f64(Current, time) < 10.0)
    {
      self->_inVisitStatus = [(CLBarometerCalibrationContextClient *)self->_delegate isInVisit];
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v21 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        inVisitStatus = self->_inVisitStatus;
        *buf = 67109632;
        *v56 = inVisitStatus;
        *&v56[4] = 2048;
        *&v56[6] = time;
        *&v56[14] = 2048;
        *&v56[16] = Current;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "updated visit status for bias estimator, %d, step count timestamp, %f, current time, %f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v47 = self->_inVisitStatus;
        *v51 = 67109632;
        *&v51[4] = v47;
        *&v51[8] = 2048;
        *&v51[10] = time;
        *&v51[18] = 2048;
        *&v51[20] = Current;
        LODWORD(v50) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "updated visit status for bias estimator, %d, step count timestamp, %f, current time, %f", v51, v50, *v51);
        v49 = v48;
        sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updatePressureUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v48);
        if (v49 != buf)
        {
          free(v49);
        }
      }
    }

    if (*(self->_fSignificantElevationEstimatorRebase.__ptr_ + 156))
    {
      v23 = 0.0277777778;
    }

    else if (self->_inVisitStatus)
    {
      v23 = 0.00138888889;
    }

    else
    {
      v23 = 0.0277777778;
    }

    pressureCopy = pressure;
    v25 = sub_1000A6C00(pressureCopy, 101320.0) < 3000.0;
    v26 = 0.05;
    if (v25)
    {
      v26 = v23;
    }

    if (time - self->_biasUncertaintyTimestamp <= 60.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0.0;
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v28 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 156);
      v30 = self->_inVisitStatus;
      v31 = sub_1000A6C00(pressureCopy, 101320.0);
      *buf = 134218752;
      *v56 = v27;
      *&v56[8] = 1024;
      *&v56[10] = v29;
      *&v56[14] = 1024;
      *&v56[16] = v30;
      *&v56[20] = 2048;
      *&v56[22] = v31;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "updated weather drift due to time, %f, sig elev state, %d, inVisit, %d, altitude %f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v36 = qword_1025D4418;
      v37 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 156);
      v38 = self->_inVisitStatus;
      v39 = sub_1000A6C00(pressureCopy, 101320.0);
      *v51 = 134218752;
      *&v51[4] = v27;
      *&v51[12] = 1024;
      *&v51[14] = v37;
      *&v51[18] = 1024;
      *&v51[20] = v38;
      *&v51[24] = 2048;
      *&v51[26] = v39;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v36, 2, "updated weather drift due to time, %f, sig elev state, %d, inVisit, %d, altitude %f", COERCE_DOUBLE(v51), 34);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updatePressureUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    self->_pressureUncertainty = self->_pressureUncertainty + v27 * (time - self->_biasUncertaintyTimestamp);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v32 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      biasTimestamp = self->_biasTimestamp;
      biasUncertaintyTimestamp = self->_biasUncertaintyTimestamp;
      v35 = self->_pressureUncertainty;
      *buf = 134219008;
      *v56 = time;
      *&v56[8] = 2048;
      *&v56[10] = biasTimestamp;
      *&v56[18] = 2048;
      *&v56[20] = biasUncertaintyTimestamp;
      *&v56[28] = 2048;
      v57 = v27 * (time - biasUncertaintyTimestamp);
      v58 = 2048;
      v59 = v35;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "updated pressure uncertainty due to time: timestamp %f _biasTimestamp %f _biasUncertaintyTimestamp %f by %f uncertainty now is %f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v42 = self->_biasTimestamp;
      v43 = self->_biasUncertaintyTimestamp;
      v44 = self->_pressureUncertainty;
      *v51 = 134219008;
      *&v51[4] = time;
      *&v51[12] = 2048;
      *&v51[14] = v42;
      *&v51[22] = 2048;
      *&v51[24] = v43;
      *&v51[32] = 2048;
      v52 = v27 * (time - v43);
      v53 = 2048;
      v54 = v44;
      LODWORD(v50) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "updated pressure uncertainty due to time: timestamp %f _biasTimestamp %f _biasUncertaintyTimestamp %f by %f uncertainty now is %f", COERCE_DOUBLE(v51), v50);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updatePressureUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    self->_biasUncertaintyTimestamp = time;
  }
}

- (void)updateBiasUncertaintyWithPressure:(double)pressure andTime:(double)time andLat:(double)lat andLon:(double)lon
{
  if (self->_biasUncertaintyTimestamp == 1.79769313e308)
  {
    dataBuffers = self->_dataBuffers;
    if (!dataBuffers[11])
    {
      return;
    }

    v12 = *(dataBuffers[7] + ((dataBuffers[10] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * dataBuffers[10];
    v14 = *v12;
    v13 = *(v12 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      self->_biasUncertaintyTimestamp = *v14;
      self->_biasPressure = v14[1] * 1000.0;
      sub_100008080(v13);
    }

    else
    {
      self->_biasUncertaintyTimestamp = *v14;
      self->_biasPressure = v14[1] * 1000.0;
    }
  }

  [(CLBarometerCalibrationBiasEstimator *)self updatePressureUncertaintyWithPressure:pressure andTime:time andLat:lat andLon:lon];
  pressureCopy = pressure;
  v16 = sub_1000A6C38(pressureCopy, 0.0065, 288.15);
  v17 = fabs(self->_pressureUncertainty);
  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v18 = v17 * v16;
  v19 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    pressureCopy2 = pressure;
    v21 = sub_1000A6C38(pressureCopy2, 0.0065, 288.15);
    v22 = fabs(self->_pressureUncertainty);
    *buf = 134218752;
    v68 = v18;
    v69 = 2048;
    v70 = v21;
    v71 = 2048;
    v72 = v22;
    v73 = 2048;
    pressureCopy3 = pressure;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "term1 %f, dElevationdPresure(pmeas) %f std::abs(_pressureUncertainty) %f pmeas %f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v41 = qword_1025D4418;
    pressureCopy4 = pressure;
    v43 = sub_1000A6C38(pressureCopy4, 0.0065, 288.15);
    v44 = fabs(self->_pressureUncertainty);
    v59 = 134218752;
    v60 = v18;
    v61 = 2048;
    v62 = v43;
    v63 = 2048;
    v64 = v44;
    v65 = 2048;
    pressureCopy5 = pressure;
    LODWORD(v58) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "term1 %f, dElevationdPresure(pmeas) %f std::abs(_pressureUncertainty) %f pmeas %f", COERCE_DOUBLE(&v59), v58);
    v46 = v45;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v45);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  biasPressure = self->_biasPressure;
  v24 = sub_1000A6C9C(biasPressure);
  v25 = vabdd_f64(pressure, self->_biasPressure);
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v26 = v25 * v24;
  v27 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v28 = self->_biasPressure;
    v29 = sub_1000A6C9C(v28);
    v30 = vabdd_f64(pressure, self->_biasPressure);
    *buf = 134218496;
    v68 = v26;
    v69 = 2048;
    v70 = v29;
    v71 = 2048;
    v72 = v30;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "term2 %f, slopeDiffDElevationDPressure(pbias) %f std::abs(pressure - _biasPressure) %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v47 = qword_1025D4418;
    v48 = self->_biasPressure;
    v49 = sub_1000A6C9C(v48);
    v50 = vabdd_f64(pressure, self->_biasPressure);
    v59 = 134218496;
    v60 = v26;
    v61 = 2048;
    v62 = v49;
    v63 = 2048;
    v64 = v50;
    LODWORD(v58) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v47, 2, "term2 %f, slopeDiffDElevationDPressure(pbias) %f std::abs(pressure - _biasPressure) %f", COERCE_DOUBLE(&v59), v58);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  pressureCopy6 = pressure;
  v32 = sub_1000A6C9C(pressureCopy6);
  v33 = fabs(self->_pressureUncertainty);
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v34 = v33 * v32;
  v35 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v36 = sub_1000A6C9C(pressureCopy);
    v37 = fabs(self->_pressureUncertainty);
    *buf = 134218496;
    v68 = v34;
    v69 = 2048;
    v70 = v36;
    v71 = 2048;
    v72 = v37;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "term3 %f, slopeDiffDElevationDPressure(pmeas) %f std::abs(_pressureUncertainty %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v53 = qword_1025D4418;
    v54 = sub_1000A6C9C(pressureCopy);
    v55 = fabs(self->_pressureUncertainty);
    v59 = 134218496;
    v60 = v34;
    v61 = 2048;
    v62 = v54;
    v63 = 2048;
    v64 = v55;
    LODWORD(v58) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v53, 2, "term3 %f, slopeDiffDElevationDPressure(pmeas) %f std::abs(_pressureUncertainty %f", COERCE_DOUBLE(&v59), v58);
    v57 = v56;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v56);
    if (v57 != buf)
    {
      free(v57);
    }
  }

  self->_biasUncertainty = fabs(v34) + fabs(v26) + fabs(v18) + self->_biasUncertaintyAtRebase;
  p_biasUncertainty = &self->_biasUncertainty;
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v39 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v40 = *p_biasUncertainty;
    *buf = 134217984;
    v68 = v40;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "total bias uncertainty %f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019098DC(p_biasUncertainty);
  }
}

- (BOOL)updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:(double)time andEndTime:(double)endTime andNextTrackStartTime:(double)startTime
{
  dataBuffers = self->_dataBuffers;
  v8 = dataBuffers[1];
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  selfCopy = self;
  if (dataBuffers[2] == v8)
  {
    selfCopy2 = self;
    v151 = 0.0;
    v152 = 0.0;
    LODWORD(v14) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v18 = 0;
    v147 = 0.0;
    v148 = 0.0;
    v146 = 0.0;
    v150 = 0.0;
    goto LABEL_65;
  }

  v10 = dataBuffers[4];
  v11 = (v8 + 8 * (v10 >> 8));
  v12 = (*v11 + 16 * v10);
  *&v157 = *(v8 + (((dataBuffers[5] + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 40) + v10);
  if (v12 == *&v157)
  {
    v151 = 0.0;
    v152 = 0.0;
    LODWORD(v14) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v18 = 0;
    v147 = 0.0;
    v148 = 0.0;
    v146 = 0.0;
    v150 = 0.0;
    goto LABEL_64;
  }

  v149 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v152 = 0.0;
  *&v19 = 134219264;
  v153 = v19;
  v150 = 0.0;
  v151 = 0.0;
  v147 = 0.0;
  v148 = 0.0;
  v146 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v155 = self->_dataBuffers;
  do
  {
    v22 = *v12;
    v23 = **v12;
    if (v23 < time || v23 >= endTime)
    {
      goto LABEL_39;
    }

    v25 = v12[1];
    v158 = *v12;
    v159 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v22 + 25) == 1)
    {
      v16 = v16 + ((*(v22 + 65) >> 1) & 1);
    }

    v26 = dataBuffers[7];
    v156 = v11;
    if (dataBuffers[8] != v26)
    {
      v27 = dataBuffers;
      v28 = v16;
      v29 = v15;
      v30 = v14;
      v31 = v27[10];
      v32 = (v26 + 8 * (v31 >> 8));
      v33 = *v32 + 16 * v31;
      v34 = *(v26 + (((v27[11] + v31) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v27 + 88) + v31);
      if (v33 == v34)
      {
        v14 = v30;
      }

      else
      {
        v35 = 1.79769313e308;
        do
        {
          v36 = *v33;
          v37 = vabdd_f64(**v12, **v33);
          if (v37 < v35 && v37 <= 5.0)
          {
            v39 = *(v33 + 8);
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v18)
            {
              sub_100008080(v18);
            }

            v18 = v39;
            v17 = v36;
            v35 = v37;
          }

          v33 += 16;
          if (v33 - *v32 == 4096)
          {
            v40 = v32[1];
            ++v32;
            v33 = v40;
          }
        }

        while (v33 != v34);
        v14 = v30;
        if (v35 != 1.79769313e308)
        {
          v48 = v17[1] * 1000.0;
          v11 = v156;
          v49 = sub_1000A6C00(v48, 101320.0);
          *buf = 0x7FEFFFFFFFFFFFFFLL;
          *v160 = 0xBFF0000000000000;
          [CLBarometerCalibrationBiasEstimator getLocationSampleAltitudeAndUncertainty:&v158 andRefAltitude:buf andRefUncertainty:v160];
          v16 = v28;
          v50 = v158[1];
          dataBuffers = v155;
          if (v50 != 1.79769313e308)
          {
            v51 = v158[2];
            v52 = v51 == 1.79769313e308;
            v53 = v20 + v50;
            v54 = v21 + v51;
            if (!v52)
            {
              v21 = v54;
              v20 = v53;
            }

            v55 = v149;
            if (!v52)
            {
              v55 = v149 + 1;
            }

            v149 = v55;
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v15 = v29;
          if (*(v158 + 25) == 1)
          {
            v56 = v158[7];
            if (v56 > 0.0)
            {
              v14 = (v14 + 1);
              v151 = v151 + v158[6];
              v152 = v152 + v49;
              v147 = v147 + *buf;
              v148 = v148 + v56;
              v146 = v146 + *v160;
              v150 = v150 + v17[1] * 1000.0;
              v15 = v29 + (*(v158 + 65) & 1);
            }
          }

          goto LABEL_37;
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v15 = v29;
      v16 = v28;
      dataBuffers = v155;
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v41 = p_info[131];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = dataBuffers[7];
      v43 = dataBuffers[10];
      v44 = **v12;
      v45 = **(*(v42 + ((v43 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v43);
      v46 = **(*(v42 + (((v43 + dataBuffers[11] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v43 + *(dataBuffers + 88) - 1));
      *buf = v153;
      *&buf[4] = v44;
      v192 = 2048;
      *v193 = v45;
      *&v193[8] = 2048;
      *&v193[10] = v46;
      *&v193[18] = 2048;
      *&v193[20] = time;
      *&v193[28] = 2048;
      *&v193[30] = endTime;
      *&v193[38] = 2048;
      *&v193[40] = startTime;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "pressure too far from reference data,locationTime,%f,firstPsTime,%f,lastPsTime,%f,startTime,%f,endTime,%f,nextTrackStartTime,%f", buf, 0x3Eu);
    }

    v11 = v156;
    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v57 = p_info[131];
      v58 = dataBuffers[7];
      v59 = dataBuffers[10];
      v60 = **v12;
      v61 = **(*(v58 + ((v59 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v59);
      v62 = **(*(v58 + (((v59 + dataBuffers[11] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v59 + *(dataBuffers + 88) - 1));
      *v160 = v153;
      *&v160[4] = v60;
      v161 = 2048;
      *v162 = v61;
      *&v162[8] = 2048;
      *&v162[10] = v62;
      *&v162[18] = 2048;
      *&v162[20] = time;
      *&v162[28] = 2048;
      *&v162[30] = endTime;
      *&v162[38] = 2048;
      *&v162[40] = startTime;
      LODWORD(v143) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v57, 2, "pressure too far from reference data,locationTime,%f,firstPsTime,%f,lastPsTime,%f,startTime,%f,endTime,%f,nextTrackStartTime,%f", COERCE_DOUBLE(v160), v143, *&selfCopy, v146, v147, v148);
      v64 = v63;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v63);
      if (v64 != buf)
      {
        free(v64);
      }

      v11 = v156;
    }

LABEL_37:
    if (v159)
    {
      sub_100008080(v159);
    }

LABEL_39:
    v12 += 2;
    if ((v12 - *v11) == 4096)
    {
      v47 = *(v11 + 1);
      v11 += 8;
      v12 = v47;
    }
  }

  while (v12 != *&v157);
  if (!v149)
  {
LABEL_64:
    selfCopy2 = selfCopy;
    goto LABEL_65;
  }

  selfCopy2 = selfCopy;
  [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator setCurrentLatitude:v20 / v149];
  [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator setCurrentLongitude:v21 / v149];
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v66 = p_info[131];
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator currentLatitude];
    v68 = v67;
    [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator currentLongitude];
    *buf = 134545921;
    *&buf[4] = v68;
    v192 = 2053;
    *v193 = v69;
    _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure location,lat,%{sensitive}f,lon,%{sensitive}f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    v137 = p_info[131];
    [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator currentLatitude];
    v139 = v138;
    [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator currentLongitude];
    *v160 = 134545921;
    *&v160[4] = v139;
    v161 = 2053;
    *v162 = v140;
    LODWORD(v143) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v137, 0, "update mean sea level pressure location,lat,%{sensitive}f,lon,%{sensitive}f", v160, *&v143);
    v142 = v141;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v141);
    if (v142 != buf)
    {
      free(v142);
    }

    selfCopy2 = selfCopy;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  [(CLMeanSeaLevelPressureEstimator *)selfCopy2->_meanSeaLevelPressureEstimator refreshHistoricalMeanSeaLevelPressureWithStartTime:endTime + -10800.0 andEndTime:endTime];
LABEL_65:
  selfCopy2->_inOutdoorWorkoutStatus = v16 > 119;
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v70 = p_info[131];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    inOutdoorWorkoutStatus = selfCopy2->_inOutdoorWorkoutStatus;
    *buf = 136316930;
    *&buf[4] = "inOutdoorWorkoutPoint";
    v192 = 1024;
    *v193 = v16;
    *&v193[4] = 2080;
    *&v193[6] = "inOutdoorWorkoutStatus";
    *&v193[14] = 1024;
    *&v193[16] = inOutdoorWorkoutStatus;
    *&v193[20] = 2080;
    *&v193[22] = "trackStartTime";
    *&v193[30] = 2048;
    *&v193[32] = time;
    *&v193[40] = 2080;
    *&v193[42] = "trackEndTime";
    *&v193[50] = 2048;
    *&v193[52] = endTime;
    _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "in outdoor workout info,%s,%u,%s,%d,%s,%f,%s,%f", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    v114 = p_info[131];
    v115 = selfCopy2->_inOutdoorWorkoutStatus;
    *v160 = 136316930;
    *&v160[4] = "inOutdoorWorkoutPoint";
    v161 = 1024;
    *v162 = v16;
    *&v162[4] = 2080;
    *&v162[6] = "inOutdoorWorkoutStatus";
    *&v162[14] = 1024;
    *&v162[16] = v115;
    *&v162[20] = 2080;
    *&v162[22] = "trackStartTime";
    *&v162[30] = 2048;
    *&v162[32] = time;
    *&v162[40] = 2080;
    *&v162[42] = "trackEndTime";
    *&v162[50] = 2048;
    *&v162[52] = endTime;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v114, 0, "in outdoor workout info,%s,%u,%s,%d,%s,%f,%s,%f", v160, 74, selfCopy, LODWORD(v146), *&v147, v148, v149, v150);
    v117 = v116;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v116);
    if (v117 != buf)
    {
      free(v117);
    }

    selfCopy2 = selfCopy;
    if (!v14)
    {
      goto LABEL_84;
    }

LABEL_71:
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v72 = p_info[131];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "GPSBasedDEMPoints";
      v192 = 1024;
      *v193 = v14;
      *&v193[4] = 2080;
      *&v193[6] = "underDEMPoints";
      *&v193[14] = 1024;
      *&v193[16] = v15;
      _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEFAULT, "under Dem or latched high data points check,%s,%d,%s,%d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v118 = p_info[131];
      *v160 = 136315906;
      *&v160[4] = "GPSBasedDEMPoints";
      v161 = 1024;
      *v162 = v14;
      *&v162[4] = 2080;
      *&v162[6] = "underDEMPoints";
      *&v162[14] = 1024;
      *&v162[16] = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v118, 0, "under Dem or latched high data points check,%s,%d,%s,%d", v160, 34, selfCopy, LODWORD(v146));
      v120 = v119;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v119);
      if (v120 != buf)
      {
        free(v120);
      }

      selfCopy2 = selfCopy;
    }

    v73 = objc_opt_new();
    [v73 setTimestamp:endTime];
    if (v14 == v15)
    {
      v74 = v152 / v15;
      v75 = v151 / v15;
      v76 = v148 / v15;
      bias = selfCopy2->_bias;
      weatherEstimateInMeter = selfCopy2->_weatherEstimateInMeter;
      selfCopy2->_biasUncertaintyAtRebase = v76;
      v79 = v150 / v15;
      selfCopy2->_bias = v75 - v74;
      selfCopy2->_biasPressure = v79;
      v80 = v75;
      v81 = v79;
      v82 = sub_1012C280C(v80, v81);
      selfCopy2->_estimatedAbsoluteAltitudeUncertainty = v76;
      selfCopy2->_estimatedMeanSeaLevelPressure = v82;
      biasPressure = selfCopy2->_biasPressure;
      v84 = v75;
      [v73 setUncertainty:{v76 * sub_1012C28A0(v84, biasPressure)}];
      [v73 setMeanSeaLevelPressure:selfCopy2->_estimatedMeanSeaLevelPressure];
      v85 = v74 + bias - weatherEstimateInMeter - v75;
      v86 = 4294967294;
    }

    else
    {
      v74 = v152 / v14;
      v87 = v147 / v14;
      v88 = v146 / v14;
      v89 = v74 + selfCopy2->_bias - selfCopy2->_weatherEstimateInMeter;
      if (v89 <= v151 / v14 + 100.0 || v89 <= v88 + v87)
      {

        goto LABEL_84;
      }

      selfCopy2->_biasUncertaintyAtRebase = v88;
      v93 = v150 / v14;
      selfCopy2->_bias = v87 - v74;
      selfCopy2->_biasPressure = v93;
      v94 = v87;
      v95 = v93;
      v96 = sub_1012C280C(v94, v95);
      selfCopy2->_estimatedAbsoluteAltitudeUncertainty = v88;
      selfCopy2->_estimatedMeanSeaLevelPressure = v96;
      v97 = selfCopy2->_biasPressure;
      v98 = v87;
      [v73 setUncertainty:{v88 * sub_1012C28A0(v98, v97)}];
      [v73 setMeanSeaLevelPressure:selfCopy2->_estimatedMeanSeaLevelPressure];
      v85 = v89 - v87;
      v86 = 4294967293;
    }

    selfCopy2->_forceCalibrate = 1;
    [(CLBarometerCalibrationBiasEstimator *)selfCopy2 updateHistoricalMslpArray:v73];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v99 = p_info[131];
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      [v73 meanSeaLevelPressure];
      v101 = v100;
      [v73 uncertainty];
      v103 = v102;
      [v73 timestamp];
      *buf = 136317954;
      *&buf[4] = "type";
      v192 = 1024;
      *v193 = v86;
      *&v193[4] = 2080;
      *&v193[6] = "meanSeaLevelPressure";
      *&v193[14] = 2048;
      *&v193[16] = v101;
      *&v193[24] = 2080;
      *&v193[26] = "uncertainty";
      *&v193[34] = 2048;
      *&v193[36] = v103;
      *&v193[44] = 2080;
      *&v193[46] = "timestamp";
      *&v193[54] = 2048;
      *&v193[56] = v104;
      v194 = 2080;
      v195 = "startAt";
      v196 = 2048;
      timeCopy = time;
      v198 = 2080;
      v199 = "endAt";
      v200 = 2048;
      endTimeCopy = endTime;
      _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x76u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v121 = p_info[131];
      [v73 meanSeaLevelPressure];
      v123 = v122;
      [v73 uncertainty];
      v125 = v124;
      [v73 timestamp];
      *v160 = 136317954;
      *&v160[4] = "type";
      v161 = 1024;
      *v162 = v86;
      *&v162[4] = 2080;
      *&v162[6] = "meanSeaLevelPressure";
      *&v162[14] = 2048;
      *&v162[16] = v123;
      *&v162[24] = 2080;
      *&v162[26] = "uncertainty";
      *&v162[34] = 2048;
      *&v162[36] = v125;
      *&v162[44] = 2080;
      *&v162[46] = "timestamp";
      *&v162[54] = 2048;
      *&v162[56] = v126;
      v163 = 2080;
      v164 = "startAt";
      v165 = 2048;
      timeCopy2 = time;
      v167 = 2080;
      v168 = "endAt";
      v169 = 2048;
      endTimeCopy2 = endTime;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v121, 0, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", v160, 118, selfCopy, v146, *&v147, v148, v149, v150, *&v151, v152, v153, *(&v153 + 1));
      v128 = v127;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v127);
      if (v128 != buf)
      {
        free(v128);
      }

      selfCopy2 = selfCopy;
    }

    selfCopy2->_biasTimestamp = endTime;
    selfCopy2->_pressureUncertainty = 0.0;
    selfCopy2->_distanceTraveled = 0.0;
    selfCopy2->_biasLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    sub_10085C118(selfCopy2->_fSignificantElevationEstimatorRebase.__ptr_);
    [(CLBarometerCalibrationBiasEstimator *)selfCopy2 rebaseSignificantElevationWithEndTime:endTime];
    [(CLBarometerCalibrationBiasEstimator *)selfCopy2 updateBiasUncertaintyWithAbsSigElevation:0 withCompanion:sub_10085BD8C(selfCopy2->_fSignificantElevationEstimatorRebase.__ptr_, v105, v106, v107)];
    [(CLBarometerCalibrationBiasEstimator *)selfCopy2 sendRebaseAnalyticsWithAltitudeError:1 andUncertainty:selfCopy2->_inOutdoorWorkoutStatus andRefUncertainty:v86 andDemAvailable:v85 andWorkout:selfCopy2->_biasUncertainty andReferenceSource:selfCopy2->_biasUncertaintyAtRebase andCorrection:v85 andDistance:selfCopy2->_distanceSinceLastRebase];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v108 = p_info[131];
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      v109 = selfCopy2->_bias;
      biasUncertaintyAtRebase = selfCopy2->_biasUncertaintyAtRebase;
      biasUncertainty = selfCopy2->_biasUncertainty;
      v112 = selfCopy2->_weatherEstimateInMeter;
      v113 = selfCopy2->_inOutdoorWorkoutStatus;
      *buf = 136320514;
      *&buf[4] = "type";
      v192 = 1024;
      *v193 = v86;
      *&v193[4] = 2080;
      *&v193[6] = "newBias";
      *&v193[14] = 2048;
      *&v193[16] = v109;
      *&v193[24] = 2080;
      *&v193[26] = "newBiasUncertainty";
      *&v193[34] = 2048;
      *&v193[36] = biasUncertaintyAtRebase;
      *&v193[44] = 2080;
      *&v193[46] = "oldBaroAltitude";
      *&v193[54] = 2048;
      *&v193[56] = v74;
      v194 = 2080;
      v195 = "oldRefAltitude";
      v196 = 2048;
      timeCopy = v74 + v109;
      v198 = 2080;
      v199 = "oldBaroUncertainty";
      v200 = 2048;
      endTimeCopy = biasUncertainty;
      v202 = 2080;
      v203 = "oldRefUncertainty";
      v204 = 2048;
      v205 = biasUncertaintyAtRebase;
      v206 = 2080;
      v207 = "weatherEstimateInMeter";
      v208 = 2048;
      v209 = v112;
      v210 = 2080;
      v211 = "inOutdoorWorkout";
      v212 = 1024;
      v213 = v113;
      v214 = 2080;
      v215 = "calculatedFromTrackStartAt";
      v216 = 2048;
      timeCopy3 = time;
      v218 = 2080;
      v219 = "endAt";
      v220 = 2048;
      endTimeCopy3 = endTime;
      _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%d,%s,%f,%s,%f", buf, 0xD6u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v129 = p_info[131];
      v130 = selfCopy2->_bias;
      v131 = selfCopy2->_biasUncertaintyAtRebase;
      v132 = selfCopy2->_biasUncertainty;
      v133 = selfCopy2->_weatherEstimateInMeter;
      v134 = selfCopy2->_inOutdoorWorkoutStatus;
      *v160 = 136320514;
      *&v160[4] = "type";
      v161 = 1024;
      *v162 = v86;
      *&v162[4] = 2080;
      *&v162[6] = "newBias";
      *&v162[14] = 2048;
      *&v162[16] = v130;
      *&v162[24] = 2080;
      *&v162[26] = "newBiasUncertainty";
      *&v162[34] = 2048;
      *&v162[36] = v131;
      *&v162[44] = 2080;
      *&v162[46] = "oldBaroAltitude";
      *&v162[54] = 2048;
      *&v162[56] = v74;
      v163 = 2080;
      v164 = "oldRefAltitude";
      v165 = 2048;
      timeCopy2 = v74 + v130;
      v167 = 2080;
      v168 = "oldBaroUncertainty";
      v169 = 2048;
      endTimeCopy2 = v132;
      v171 = 2080;
      v172 = "oldRefUncertainty";
      v173 = 2048;
      v174 = v131;
      v175 = 2080;
      v176 = "weatherEstimateInMeter";
      v177 = 2048;
      v178 = v133;
      v179 = 2080;
      v180 = "inOutdoorWorkout";
      v181 = 1024;
      v182 = v134;
      v183 = 2080;
      v184 = "calculatedFromTrackStartAt";
      v185 = 2048;
      timeCopy4 = time;
      v187 = 2080;
      v188 = "endAt";
      v189 = 2048;
      endTimeCopy4 = endTime;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v129, 0, "pressure height rebase to,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%d,%s,%f,%s,%f", v160, 214, selfCopy, v146, *&v147, v148, v149, v150, *&v151, v152, v153, *(&v153 + 1), v154, *&v155, v156, v157, v158, v159);
      v136 = v135;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v135);
      if (v136 != buf)
      {
        free(v136);
      }

      selfCopy2 = v145;
    }

    selfCopy2->_forceCalibrate = 0;
    v91 = 1;
    if (v18)
    {
LABEL_85:
      sub_100008080(v18);
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_71;
    }

LABEL_84:
    v91 = 0;
    if (v18)
    {
      goto LABEL_85;
    }
  }

  return v91;
}

- (void)updateElevationBiasBetweenStartTime:(double)time andEndTime:(double)endTime andNextTrackStartTime:(double)startTime
{
  if (endTime - time > 1800.0)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v7 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = time;
      *&buf[12] = 2048;
      *&buf[14] = endTime;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "track is too old, don't rebase,startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101909B1C();
    }

    return;
  }

  selfCopy = self;
  dataBuffers = self->_dataBuffers;
  v319 = 0.0;
  if (![(CLBarometerCalibrationBiasEstimator *)self getLastPressureSample:&v319])
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v73 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = time;
      *&buf[12] = 2048;
      *&buf[14] = endTime;
      _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "filtered pressure queue is empty,startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101909A18();
    }

    return;
  }

  [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator setNumberOfTrackEndedBtwRefresh:[(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator numberOfTrackEndedBtwRefresh]+ 1];
  if ([(CLBarometerCalibrationBiasEstimator *)selfCopy updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:time andEndTime:endTime andNextTrackStartTime:startTime])
  {
    return;
  }

  __src = 0;
  v317 = 0;
  v318 = 0;
  v12 = dataBuffers[25];
  v303 = *&selfCopy;
  v13 = dataBuffers;
  if (dataBuffers[26] == v12 || (v14 = dataBuffers[28], v15 = (v12 + 8 * (v14 >> 8)), v16 = *v15 + 16 * v14, v17 = *(v12 + (((dataBuffers[29] + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 232) + v14), v16 == v17))
  {
    v18 = 0;
    v306 = 0;
    goto LABEL_81;
  }

  LODWORD(v302) = 0;
  v18 = 0;
  v306 = 0;
  v299 = 0.0;
  *&v11 = 134218240;
  v295 = v11;
  v294 = 1000.0;
  HIDWORD(v293) = 1204151936;
  *&v11 = 134219008;
  v292 = v11;
  *&v11 = 136319490;
  v291 = v11;
  v300 = 0.0;
  v297 = 0.0;
  v298 = 0.0;
  v296 = 0.0;
  v304 = v17;
  do
  {
    v19 = *v16;
    v20 = **v16;
    if (v20 < time || v20 >= endTime)
    {
      goto LABEL_63;
    }

    v22 = *(v16 + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v23 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v25 = *v19;
      v24 = *(v19 + 1);
      *buf = v295;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "companion data found,altitude,%f,timestamp,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v63 = *v19;
      v62 = *(v19 + 1);
      v320 = v295;
      *v321 = v62;
      *&v321[8] = 2048;
      *&v321[10] = v63;
      LODWORD(v290) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "companion data found,altitude,%f,timestamp,%f", COERCE_DOUBLE(&v320), v290);
      v65 = v64;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v64);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    v26 = dataBuffers[7];
    if (dataBuffers[8] == v26)
    {
      goto LABEL_55;
    }

    v27 = dataBuffers[10];
    v28 = (v26 + 8 * (v27 >> 8));
    v29 = *v28 + 16 * v27;
    v30 = *(v26 + (((dataBuffers[11] + v27) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 88) + v27);
    if (v29 == v30)
    {
      goto LABEL_54;
    }

    v31 = 1.79769313e308;
    do
    {
      v32 = *v29;
      v33 = vabdd_f64(*v19, **v29);
      if (v33 < v31 && v33 <= 5.0)
      {
        v35 = *(v29 + 8);
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v306)
        {
          sub_100008080(v306);
        }

        v306 = v35;
        v18 = v32;
        v31 = v33;
      }

      v29 += 16;
      dataBuffers = v13;
      if (v29 - *v28 == 4096)
      {
        v36 = v28[1];
        ++v28;
        v29 = v36;
      }
    }

    while (v29 != v30);
    if (v31 == 1.79769313e308)
    {
LABEL_54:
      *&selfCopy = v303;
LABEL_55:
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v60 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEFAULT, "pressure too far from companion data", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019099D4(buf);
        LOWORD(v320) = 0;
        LODWORD(v290) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "pressure too far from companion data", &v320, *&v290);
        v67 = v66;
        sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v66);
        if (v67 != buf)
        {
          free(v67);
        }
      }

      goto LABEL_60;
    }

    v37 = v19[1];
    v38 = v18[1];
    v39 = v38 * v294;
    *&selfCopy = v303;
    v40 = sub_1000A6C00(v39, *(&v293 + 1));
    v41 = v19[1];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v42 = v40;
    v43 = v41 - v42;
    v44 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v45 = *v19;
      v46 = *(v19 + 1);
      v47 = *v18;
      *buf = v292;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = v45;
      *&buf[22] = 2048;
      *&buf[24] = v46;
      *&buf[32] = 2048;
      *&buf[34] = v47;
      *&buf[42] = 2048;
      *&buf[44] = v42;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "individual bias calculated: %f, companion timestamp %f,  companion altitude %f, pressure timestamp %f, pressure altitude %f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v68 = *v19;
      v69 = *(v19 + 1);
      v70 = *v18;
      v320 = v292;
      *v321 = v43;
      *&v321[8] = 2048;
      *&v321[10] = v68;
      *&v321[18] = 2048;
      *&v321[20] = v69;
      *&v321[28] = 2048;
      *&v321[30] = v70;
      *&v321[38] = 2048;
      *&v321[40] = v42;
      LODWORD(v290) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "individual bias calculated: %f, companion timestamp %f,  companion altitude %f, pressure timestamp %f, pressure altitude %f", COERCE_DOUBLE(&v320), v290, *&v291, *(&v291 + 1), *&v292);
      v72 = v71;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v71);
      if (v72 != buf)
      {
        free(v72);
      }

      *&selfCopy = v303;
      dataBuffers = v13;
    }

    v48 = v19[2];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v49 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *v18;
      v51 = *v19;
      v52 = v19[1];
      v53 = v19[2];
      *buf = v291;
      *&buf[4] = "type";
      *&buf[12] = 1024;
      *&buf[14] = -1;
      *&buf[18] = 2080;
      *&buf[20] = "locTime";
      *&buf[28] = 2048;
      *&buf[30] = v51;
      *&buf[38] = 2080;
      *&buf[40] = "pressureTime";
      *&buf[48] = 2048;
      *&buf[50] = v50;
      *&buf[58] = 2080;
      *&buf[60] = "locationAlt";
      v341 = 2048;
      v342 = v52;
      v343 = 2080;
      *v344 = "pressureAlt";
      *&v344[8] = 2048;
      *&v344[10] = v42;
      *&v344[18] = 2080;
      *&v344[20] = "locVerticalUnc";
      v345 = 2048;
      endTimeCopy3 = v53;
      v347 = 2080;
      v348 = "locHorizontalUnc";
      v349 = 2048;
      v350 = 0;
      v351 = 2080;
      v352 = "demAlt";
      v353 = 2048;
      v354 = 0;
      v355 = 2080;
      v356 = "demVerticalUnc";
      v357 = 2048;
      v358 = 0;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "individual location data,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0xB2u);
    }

    LODWORD(v302) = v302 + 1;
    v300 = v300 + v42;
    v298 = v298 + v37;
    v299 = v299 + v43;
    v296 = v296 + v38 * v294;
    v297 = v297 + v48;
    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v54 = *v18;
      v55 = *v19;
      v56 = v19[1];
      v57 = v19[2];
      v320 = v291;
      *v321 = "type";
      *&v321[8] = 1024;
      *&v321[10] = -1;
      *&v321[14] = 2080;
      *&v321[16] = "locTime";
      *&v321[24] = 2048;
      *&v321[26] = v55;
      *&v321[34] = 2080;
      *&v321[36] = "pressureTime";
      *&v321[44] = 2048;
      *&v321[46] = v54;
      *&v321[54] = 2080;
      *&v321[56] = "locationAlt";
      v322 = 2048;
      v323 = v56;
      v324 = 2080;
      *v325 = "pressureAlt";
      *&v325[8] = 2048;
      *&v325[10] = v42;
      *&v325[18] = 2080;
      *&v325[20] = "locVerticalUnc";
      v326 = 2048;
      endTimeCopy4 = v57;
      v328 = 2080;
      v329 = "locHorizontalUnc";
      v330 = 2048;
      v331 = 0;
      v332 = 2080;
      v333 = "demAlt";
      v334 = 2048;
      v335 = 0;
      v336 = 2080;
      v337 = "demVerticalUnc";
      v338 = 2048;
      v339 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "individual location data,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v320, 178, v291, *(&v291 + 1), v292, *(&v292 + 1), v293, v294, v295, *(&v295 + 1), *&v296, v297, *&v298, v299, *&v300, v301, v302, v303);
      v59 = v58;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v58);
      if (v59 != buf)
      {
        free(v59);
      }

      *&selfCopy = v303;
      dataBuffers = v13;
    }

LABEL_60:
    if (v22)
    {
      sub_100008080(v22);
    }

    v17 = v304;
LABEL_63:
    v16 += 16;
    if (v16 - *v15 == 4096)
    {
      v61 = v15[1];
      ++v15;
      v16 = v61;
    }
  }

  while (v16 != v17);
  if (v302)
  {
    v154 = objc_opt_new();
    v155 = v302;
    selfCopy->_biasTimestamp = endTime;
    v156 = v296 / v302;
    selfCopy->_bias = v299 / v302;
    selfCopy->_biasPressure = v156;
    selfCopy->_biasUncertaintyAtRebase = v297 / v302;
    v157 = v298 / v302;
    v158 = v157;
    *&v156 = v156;
    v159 = sub_1012C280C(v158, *&v156);
    selfCopy->_estimatedAbsoluteAltitudeUncertainty = selfCopy->_biasUncertaintyAtRebase;
    selfCopy->_estimatedMeanSeaLevelPressure = v159;
    biasPressure = selfCopy->_biasPressure;
    v161 = v157;
    [v154 setUncertainty:{selfCopy->_biasUncertaintyAtRebase * sub_1012C28A0(v161, biasPressure)}];
    [v154 setMeanSeaLevelPressure:selfCopy->_estimatedMeanSeaLevelPressure];
    [v154 setTimestamp:endTime];
    selfCopy->_companionRebase = 1;
    [(CLBarometerCalibrationBiasEstimator *)selfCopy updateHistoricalMslpArray:v154];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v162 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      [v154 meanSeaLevelPressure];
      v164 = v163;
      [v154 uncertainty];
      v166 = v165;
      [v154 timestamp];
      *buf = 136317954;
      *&buf[4] = "type";
      *&buf[12] = 1024;
      *&buf[14] = -1;
      *&buf[18] = 2080;
      *&buf[20] = "meanSeaLevelPressure";
      *&buf[28] = 2048;
      *&buf[30] = v164;
      *&buf[38] = 2080;
      *&buf[40] = "uncertainty";
      *&buf[48] = 2048;
      *&buf[50] = v166;
      *&buf[58] = 2080;
      *&buf[60] = "timestamp";
      v341 = 2048;
      v342 = v167;
      v343 = 2080;
      *v344 = "startAt";
      *&v344[8] = 2048;
      *&v344[10] = time;
      *&v344[18] = 2080;
      *&v344[20] = "endAt";
      v345 = 2048;
      endTimeCopy3 = endTime;
      _os_log_impl(dword_100000000, v162, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x76u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v270 = qword_1025D4418;
      [v154 meanSeaLevelPressure];
      v272 = v271;
      [v154 uncertainty];
      v274 = v273;
      [v154 timestamp];
      v320 = 136317954;
      *v321 = "type";
      *&v321[8] = 1024;
      *&v321[10] = -1;
      *&v321[14] = 2080;
      *&v321[16] = "meanSeaLevelPressure";
      *&v321[24] = 2048;
      *&v321[26] = v272;
      *&v321[34] = 2080;
      *&v321[36] = "uncertainty";
      *&v321[44] = 2048;
      *&v321[46] = v274;
      *&v321[54] = 2080;
      *&v321[56] = "timestamp";
      v322 = 2048;
      v323 = v275;
      v324 = 2080;
      *v325 = "startAt";
      *&v325[8] = 2048;
      *&v325[10] = time;
      *&v325[18] = 2080;
      *&v325[20] = "endAt";
      v326 = 2048;
      endTimeCopy4 = endTime;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v270, 0, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v320, 118, v291, *(&v291 + 1), v292, *(&v292 + 1), v293, v294, v295, *(&v295 + 1), *&v296, v297);
      v277 = v276;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v276);
      if (v277 != buf)
      {
        free(v277);
      }

      *&selfCopy = v303;
    }

    selfCopy->_pressureUncertainty = 0.0;
    selfCopy->_distanceTraveled = 0.0;
    selfCopy->_biasLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    sub_10085C118(selfCopy->_fSignificantElevationEstimatorRebase.__ptr_);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v168 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      bias = selfCopy->_bias;
      biasUncertaintyAtRebase = selfCopy->_biasUncertaintyAtRebase;
      biasUncertainty = selfCopy->_biasUncertainty;
      weatherEstimateInMeter = selfCopy->_weatherEstimateInMeter;
      inOutdoorWorkoutStatus = selfCopy->_inOutdoorWorkoutStatus;
      *buf = 67111680;
      *&buf[4] = -1;
      *&buf[8] = 2048;
      *&buf[10] = bias;
      *&buf[18] = 2048;
      *&buf[20] = biasUncertaintyAtRebase;
      *&buf[28] = 2048;
      *&buf[30] = v300 / v155;
      *&buf[38] = 2048;
      *&buf[40] = v298 / v302;
      *&buf[48] = 2048;
      *&buf[50] = biasUncertainty;
      *&buf[58] = 2048;
      *&buf[60] = biasUncertaintyAtRebase;
      v341 = 2048;
      v342 = weatherEstimateInMeter;
      v343 = 1024;
      *v344 = inOutdoorWorkoutStatus;
      *&v344[4] = 2048;
      *&v344[6] = time;
      *&v344[14] = 2048;
      *&v344[16] = endTime;
      _os_log_impl(dword_100000000, v168, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", buf, 0x68u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v278 = selfCopy->_bias;
      v279 = selfCopy->_biasUncertaintyAtRebase;
      v280 = selfCopy->_biasUncertainty;
      v281 = selfCopy->_weatherEstimateInMeter;
      v282 = selfCopy->_inOutdoorWorkoutStatus;
      v320 = 67111680;
      *v321 = -1;
      *&v321[4] = 2048;
      *&v321[6] = v278;
      *&v321[14] = 2048;
      *&v321[16] = v279;
      *&v321[24] = 2048;
      *&v321[26] = v300 / v155;
      *&v321[34] = 2048;
      *&v321[36] = v298 / v302;
      *&v321[44] = 2048;
      *&v321[46] = v280;
      *&v321[54] = 2048;
      *&v321[56] = v279;
      v322 = 2048;
      v323 = v281;
      v324 = 1024;
      *v325 = v282;
      *&v325[4] = 2048;
      *&v325[6] = time;
      *&v325[14] = 2048;
      *&v325[16] = endTime;
      LODWORD(v290) = 104;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", &v320, v290, *&v291, *(&v291 + 1), *&v292, *(&v292 + 1), *&v293, v294, v295, *(&v295 + 1), v296);
      v284 = v283;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v283);
      if (v284 != buf)
      {
        free(v284);
      }

      *&selfCopy = v303;
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v174 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v175 = selfCopy->_bias;
      v176 = selfCopy->_biasPressure;
      biasTimestamp = selfCopy->_biasTimestamp;
      *buf = v292;
      *&buf[4] = v175;
      *&buf[12] = 2048;
      *&buf[14] = v300 / v155;
      *&buf[22] = 2048;
      *&buf[24] = v298 / v302;
      *&buf[32] = 2048;
      *&buf[34] = v176;
      *&buf[42] = 2048;
      *&buf[44] = biasTimestamp;
      _os_log_impl(dword_100000000, v174, OS_LOG_TYPE_DEFAULT, "new bias calculated from companion is %f, average baroAlt %f, average companion alt %f, average pressure %f, timestamp %f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v285 = selfCopy->_bias;
      v286 = selfCopy->_biasPressure;
      v287 = selfCopy->_biasTimestamp;
      v320 = v292;
      *v321 = v285;
      *&v321[8] = 2048;
      *&v321[10] = v300 / v155;
      *&v321[18] = 2048;
      *&v321[20] = v298 / v302;
      *&v321[28] = 2048;
      *&v321[30] = v286;
      *&v321[38] = 2048;
      *&v321[40] = v287;
      LODWORD(v290) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "new bias calculated from companion is %f, average baroAlt %f, average companion alt %f, average pressure %f, timestamp %f", COERCE_DOUBLE(&v320), v290, *&v291, *(&v291 + 1), *&v292);
      v289 = v288;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v288);
      if (v289 != buf)
      {
        free(v289);
      }

      *&selfCopy = v303;
    }

    [(CLBarometerCalibrationBiasEstimator *)selfCopy rebaseSignificantElevationWithEndTime:endTime];
    [(CLBarometerCalibrationBiasEstimator *)selfCopy updateBiasUncertaintyWithAbsSigElevation:1 withCompanion:sub_10085BD8C(selfCopy->_fSignificantElevationEstimatorRebase.__ptr_, v178, v179, v180)];
    latestAbsoluteAltitude = [(CLBarometerCalibrationContextClient *)selfCopy->_delegate latestAbsoluteAltitude];
    v182 = latestAbsoluteAltitude;
    if (latestAbsoluteAltitude)
    {
      [latestAbsoluteAltitude timestamp];
      if (v183 != 1.79769313e308)
      {
        [v182 altitude];
        v185 = v184;
        v186 = selfCopy->_biasUncertainty;
        v187 = selfCopy->_biasUncertaintyAtRebase;
        v188 = selfCopy->_inOutdoorWorkoutStatus;
        [v182 altitude];
        [(CLBarometerCalibrationBiasEstimator *)selfCopy sendRebaseAnalyticsWithAltitudeError:0 andUncertainty:v188 andRefUncertainty:0xFFFFFFFFLL andDemAvailable:v185 - v157 andWorkout:v186 andReferenceSource:v187 andCorrection:v189 - v157 andDistance:selfCopy->_distanceSinceLastRebase];
      }
    }

    selfCopy->_companionRebase = 0;
    goto LABEL_217;
  }

LABEL_81:
  v314 = 0;
  v315 = 0;
  v312[1] = 0;
  v313 = &v314;
  v311 = v312;
  v312[0] = 0;

  selfCopy->_queriedMeanSeaLevelPressureData = [(CLMeanSeaLevelPressureEstimator *)selfCopy->_meanSeaLevelPressureEstimator getEstimatedMeanSeaLevelPressure];
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v75 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
    v77 = v76;
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData uncertainty];
    v79 = v78;
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData timestamp];
    *buf = 136316418;
    *&buf[4] = "meanSeaLevelPressure";
    *&buf[12] = 2048;
    *&buf[14] = v77;
    *&buf[22] = 2080;
    *&buf[24] = "uncertainty";
    *&buf[32] = 2048;
    *&buf[34] = v79;
    *&buf[42] = 2080;
    *&buf[44] = "timestamp";
    *&buf[52] = 2048;
    *&buf[54] = v80;
    _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEFAULT, "query mean sea level pressure,%s,%f,%s,%f,%s,%f", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    v244 = qword_1025D4418;
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
    v246 = v245;
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData uncertainty];
    v248 = v247;
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData timestamp];
    v320 = 136316418;
    *v321 = "meanSeaLevelPressure";
    *&v321[8] = 2048;
    *&v321[10] = v246;
    *&v321[18] = 2080;
    *&v321[20] = "uncertainty";
    *&v321[28] = 2048;
    *&v321[30] = v248;
    *&v321[38] = 2080;
    *&v321[40] = "timestamp";
    *&v321[48] = 2048;
    *&v321[50] = v249;
    LODWORD(v290) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v244, 0, "query mean sea level pressure,%s,%f,%s,%f,%s,%f", &v320, v290, v291, *(&v291 + 1), v292, *(&v292 + 1));
    v251 = v250;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v250);
    if (v251 != buf)
    {
      free(v251);
    }

    *&selfCopy = v303;
    dataBuffers = v13;
  }

  v81 = dataBuffers[1];
  if (dataBuffers[2] != v81)
  {
    v82 = dataBuffers[4];
    v83 = (v81 + 8 * (v82 >> 8));
    v84 = (*v83 + 16 * v82);
    v85 = *(v81 + (((dataBuffers[5] + v82) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 40) + v82);
    if (v84 != v85)
    {
      v305 = 0;
      while (1)
      {
        v86 = **v84;
        if (v86 >= time && v86 < endTime)
        {
          break;
        }

LABEL_131:
        v84 += 2;
        if ((v84 - *v83) == 4096)
        {
          v109 = v83[1];
          ++v83;
          v84 = v109;
        }

        if (v84 == v85)
        {
          goto LABEL_156;
        }
      }

      v88 = v84[1];
      v309 = *v84;
      v310 = v88;
      if (v88)
      {
        atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v307 = -1.0;
      v308 = 1.79769313e308;
      [CLBarometerCalibrationBiasEstimator getLocationSampleAltitudeAndUncertainty:&v309 andRefAltitude:&v308 andRefUncertainty:&v307];
      if (v307 <= 0.0 && v309[7] <= 0.0)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v100 = p_info[131];
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          v101 = *v309;
          v102 = *(v309 + 6);
          *buf = 134218496;
          *&buf[4] = v101;
          *&buf[12] = 2048;
          *&buf[14] = v308;
          *&buf[22] = 2048;
          *&buf[24] = v102;
          _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_INFO, "individual bias error: reference Uncertainty < 0 and no DEMS, location timestamp %f, location altitude %f, location DEMS %f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019099D4(buf);
          v103 = p_info[131];
          v104 = *v309;
          v105 = *(v309 + 6);
          v320 = 134218496;
          *v321 = v104;
          *&v321[8] = 2048;
          *&v321[10] = v308;
          *&v321[18] = 2048;
          *&v321[20] = v105;
          LODWORD(v290) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v103, 1, "individual bias error: reference Uncertainty < 0 and no DEMS, location timestamp %f, location altitude %f, location DEMS %f", COERCE_DOUBLE(&v320), v290, *&v291);
          v107 = v106;
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v106);
          if (v107 != buf)
          {
            free(v107);
          }

          *&selfCopy = v303;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          dataBuffers = v13;
        }
      }

      else
      {
        v89 = dataBuffers[7];
        if (dataBuffers[8] == v89)
        {
          goto LABEL_124;
        }

        v90 = dataBuffers[10];
        v91 = (v89 + 8 * (v90 >> 8));
        v92 = *v91 + 16 * v90;
        v93 = *(v89 + (((dataBuffers[11] + v90) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 88) + v90);
        if (v92 == v93)
        {
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
LABEL_124:
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v108 = p_info[131];
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_DEFAULT, "pressure too far from reference data", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019099D4(buf);
            v132 = p_info[131];
            LOWORD(v320) = 0;
            LODWORD(v290) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v132, 0, "pressure too far from reference data", &v320, *&v290);
            v134 = v133;
            sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v133);
            if (v134 != buf)
            {
              free(v134);
            }
          }
        }

        else
        {
          v94 = 1.79769313e308;
          do
          {
            v95 = *v92;
            v96 = vabdd_f64(**v84, **v92);
            if (v96 < v94 && v96 <= 5.0)
            {
              v98 = *(v92 + 8);
              if (v98)
              {
                atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v306)
              {
                sub_100008080(v306);
              }

              v306 = v98;
              v18 = v95;
              v94 = v96;
              dataBuffers = v13;
            }

            v92 += 16;
            if (v92 - *v91 == 4096)
            {
              v99 = v91[1];
              ++v91;
              v92 = v99;
            }
          }

          while (v92 != v93);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v94 == 1.79769313e308)
          {
            *&selfCopy = v303;
            goto LABEL_124;
          }

          v110 = v317;
          if (v317 >= v318)
          {
            v112 = __src;
            v113 = v317 - __src;
            v114 = (v317 - __src) >> 4;
            v115 = v114 + 1;
            if ((v114 + 1) >> 60)
            {
              sub_10028C64C();
            }

            v116 = v318 - __src;
            if ((v318 - __src) >> 3 > v115)
            {
              v115 = v116 >> 3;
            }

            v117 = v116 >= 0x7FFFFFFFFFFFFFF0;
            v118 = 0xFFFFFFFFFFFFFFFLL;
            if (!v117)
            {
              v118 = v115;
            }

            if (v118)
            {
              sub_1003E5FE8(&__src, v118);
            }

            v119 = (16 * v114);
            v120 = &v119[-((v317 - __src) >> 4)];
            *v119 = *(v309 + 1);
            v111 = (v119 + 1);
            memcpy(v120, v112, v113);
            v121 = __src;
            __src = v120;
            v317 = v111;
            v318 = 0;
            if (v121)
            {
              operator delete(v121);
            }

            dataBuffers = v13;
          }

          else
          {
            *v317 = *(v309 + 1);
            v111 = v110 + 16;
          }

          v317 = v111;
          v122 = v18[1] * 1000.0;
          v123 = sub_1000A6C00(v122, 101320.0);
          v124 = v18[1];
          *&selfCopy = v303;
          [*(*&v303 + 152) meanSeaLevelPressure];
          v125 = v124 * 1000.0;
          v127 = v126;
          v128 = sub_1000A6C00(v125, v127);
          v129 = v309;
          v130 = v309[7];
          v305 = v130 > 0.0;
          if (*(*&v303 + 217) != 1 || (*(v309 + 65) & 2) != 0)
          {
            v131 = v123;
            if ((*(v309 + 25) & 0x80000000) == 0)
            {
              [*&v303 cumulateReference:&v313 andRefAltitude:v308 andRefVariance:v307 andBaroElevation:v131 andType:?];
              [*&v303 cumulateReference:&v311 andRefAltitude:*(v309 + 25) andRefVariance:v308 andBaroElevation:v307 andType:v128];
              v129 = v309;
              v130 = v309[7];
            }

            if (v130 > 0.0)
            {
              [*&v303 cumulateReference:&v313 andRefAltitude:14 andRefVariance:v129[6] andBaroElevation:? andType:?];
              [*&v303 cumulateReference:&v311 andRefAltitude:14 andRefVariance:v309[6] andBaroElevation:v309[7] andType:v128];
            }
          }
        }
      }

      if (v310)
      {
        sub_100008080(v310);
      }

      goto LABEL_131;
    }
  }

  v305 = 0;
LABEL_156:
  if (v315)
  {
    [(CLBarometerCalibrationBiasEstimator *)selfCopy centroidOfLocationVector:&__src];
    v137 = v136;
    v138 = v135;
    if (v136 != 1.79769313e308)
    {
      latitude = selfCopy->_biasLocation.latitude;
      if (latitude != 1.79769313e308)
      {
        selfCopy->_distanceSinceLastRebase = fabs(sub_100117154(latitude, selfCopy->_biasLocation.longitude, v137, v135));
      }
    }

    [(CLBarometerCalibrationBiasEstimator *)selfCopy updateBiasUncertaintyWithPressure:v319 andTime:0.0 andLat:v137 andLon:v138];
    [(CLBarometerCalibrationBiasEstimator *)selfCopy getAbsoluteAltitudeUncertainty];
    v141 = v140;
    v142 = v313;
    if (v313 == &v314)
    {
      v144 = 0;
    }

    else
    {
      v143 = log(v140 * (v140 * 17.0794684));
      v144 = 0;
      do
      {
        v145 = *(v142 + 18);
        v146 = v142[6] * v142[6] / v145 / v145;
        v142[5] = v142[5] / v145;
        v142[6] = v146;
        v147 = v142[7] / v145;
        v142[7] = v147;
        v148 = v147 + selfCopy->_bias;
        v142[7] = v148;
        v142[7] = v148 - selfCopy->_weatherEstimateInMeter;
        v142[8] = v141 * v141;
        v149 = *(v142 + 7);
        *buf = *(v142 + 5);
        *&buf[16] = v149;
        *&buf[32] = v142[9];
        [(CLBarometerCalibrationBiasEstimator *)selfCopy crossEntropyOfreference:buf];
        if (v143 >= v150)
        {
          v144 = *(v142 + 8);
          v143 = v150;
        }

        v151 = *(v142 + 1);
        if (v151)
        {
          do
          {
            v152 = v151;
            v151 = *v151;
          }

          while (v151);
        }

        else
        {
          do
          {
            v152 = *(v142 + 2);
            v153 = *v152 == v142;
            v142 = v152;
          }

          while (!v153);
        }

        v142 = v152;
      }

      while (v152 != &v314);
    }

    v190 = v314;
    if (!v314)
    {
      goto LABEL_199;
    }

    v191 = &v314;
    do
    {
      if (*(v190 + 8) >= v144)
      {
        v191 = v190;
      }

      v190 = *&v190[*(v190 + 8) < v144];
    }

    while (v190);
    if (v191 != &v314 && v144 >= *(v191 + 8))
    {
      v218 = selfCopy->_bias;
      v219 = v191[7] + selfCopy->_weatherEstimateInMeter - v218;
      selfCopy->_biasPressure = sub_1012C27C8(v219, 101320.0);
      v220 = selfCopy->_bias + v191[8] * (v191[5] - v191[7]) / (v191[8] + v191[6]);
      selfCopy->_bias = v220 - selfCopy->_weatherEstimateInMeter;
      selfCopy->_biasUncertaintyAtRebase = sqrt(v191[8] * v191[6] / (v191[8] + v191[6]));
      selfCopy->_pressureUncertainty = 0.0;
      selfCopy->_distanceTraveled = 0.0;
      selfCopy->_biasTimestamp = endTime;
      sub_10085C118(selfCopy->_fSignificantElevationEstimatorRebase.__ptr_);
      [(CLBarometerCalibrationBiasEstimator *)selfCopy rebaseSignificantElevationWithEndTime:endTime];
      [(CLBarometerCalibrationBiasEstimator *)selfCopy updateBiasUncertaintyWithAbsSigElevation:0 withCompanion:sub_10085BD8C(selfCopy->_fSignificantElevationEstimatorRebase.__ptr_, v221, v222, v223)];
      [(CLBarometerCalibrationBiasEstimator *)selfCopy sendRebaseAnalyticsWithAltitudeError:v305 andUncertainty:selfCopy->_inOutdoorWorkoutStatus andRefUncertainty:v144 andDemAvailable:v191[5] - v191[7] andWorkout:sqrt(v191[8]) andReferenceSource:sqrt(v191[6]) andCorrection:v220 - v218 andDistance:selfCopy->_distanceSinceLastRebase];
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v224 = p_info[131];
      if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
      {
        v225 = selfCopy->_bias;
        v226 = selfCopy->_biasUncertaintyAtRebase;
        v227 = *(v191 + 7);
        v228 = *(v191 + 5);
        v229 = sqrt(v191[8]);
        v230 = v191[6];
        v231 = selfCopy->_weatherEstimateInMeter;
        v232 = selfCopy->_inOutdoorWorkoutStatus;
        *buf = 67111680;
        *&buf[4] = v144;
        *&buf[8] = 2048;
        *&buf[10] = v225;
        *&buf[18] = 2048;
        *&buf[20] = v226;
        *&buf[28] = 2048;
        *&buf[30] = v227;
        *&buf[38] = 2048;
        *&buf[40] = v228;
        *&buf[48] = 2048;
        *&buf[50] = v229;
        *&buf[58] = 2048;
        *&buf[60] = sqrt(v230);
        v341 = 2048;
        v342 = v231;
        v343 = 1024;
        *v344 = v232;
        *&v344[4] = 2048;
        *&v344[6] = time;
        *&v344[14] = 2048;
        *&v344[16] = endTime;
        _os_log_impl(dword_100000000, v224, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_204;
      }

      sub_1019099D4(buf);
      v233 = p_info[131];
      v234 = selfCopy->_bias;
      v235 = selfCopy->_biasUncertaintyAtRebase;
      v236 = *(v191 + 7);
      v237 = *(v191 + 5);
      v238 = sqrt(v191[8]);
      v239 = v191[6];
      v240 = selfCopy->_weatherEstimateInMeter;
      v241 = selfCopy->_inOutdoorWorkoutStatus;
      v320 = 67111680;
      *v321 = v144;
      *&v321[4] = 2048;
      *&v321[6] = v234;
      *&v321[14] = 2048;
      *&v321[16] = v235;
      *&v321[24] = 2048;
      *&v321[26] = v236;
      *&v321[34] = 2048;
      *&v321[36] = v237;
      *&v321[44] = 2048;
      *&v321[46] = v238;
      *&v321[54] = 2048;
      *&v321[56] = sqrt(v239);
      v322 = 2048;
      v323 = v240;
      v324 = 1024;
      *v325 = v241;
      *&v325[4] = 2048;
      *&v325[6] = time;
      *&v325[14] = 2048;
      *&v325[16] = endTime;
      LODWORD(v290) = 104;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v233, 0, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", &v320, v290, *&v291, *(&v291 + 1), *&v292, *(&v292 + 1), *&v293, v294, v295, *(&v295 + 1), v296);
      v243 = v242;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v242);
    }

    else
    {
LABEL_199:
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v192 = p_info[131];
      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
      {
        v193 = selfCopy->_bias;
        v194 = selfCopy->_weatherEstimateInMeter;
        v195 = selfCopy->_inOutdoorWorkoutStatus;
        *buf = 67111680;
        *&buf[4] = v144;
        *&buf[8] = 2048;
        *&buf[10] = v193;
        *&buf[18] = 2048;
        *&buf[20] = v141;
        *&buf[28] = 2048;
        *&buf[30] = 0xBFF0000000000000;
        *&buf[38] = 2048;
        *&buf[40] = 0xBFF0000000000000;
        *&buf[48] = 2048;
        *&buf[50] = 0xBFF0000000000000;
        *&buf[58] = 2048;
        *&buf[60] = 0xBFF0000000000000;
        v341 = 2048;
        v342 = v194;
        v343 = 1024;
        *v344 = v195;
        *&v344[4] = 2048;
        *&v344[6] = time;
        *&v344[14] = 2048;
        *&v344[16] = endTime;
        _os_log_impl(dword_100000000, v192, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_204;
      }

      sub_1019099D4(buf);
      v265 = p_info[131];
      v266 = selfCopy->_bias;
      v267 = selfCopy->_weatherEstimateInMeter;
      v268 = selfCopy->_inOutdoorWorkoutStatus;
      v320 = 67111680;
      *v321 = v144;
      *&v321[4] = 2048;
      *&v321[6] = v266;
      *&v321[14] = 2048;
      *&v321[16] = v141;
      *&v321[24] = 2048;
      *&v321[26] = 0xBFF0000000000000;
      *&v321[34] = 2048;
      *&v321[36] = 0xBFF0000000000000;
      *&v321[44] = 2048;
      *&v321[46] = 0xBFF0000000000000;
      *&v321[54] = 2048;
      *&v321[56] = 0xBFF0000000000000;
      v322 = 2048;
      v323 = v267;
      v324 = 1024;
      *v325 = v268;
      *&v325[4] = 2048;
      *&v325[6] = time;
      *&v325[14] = 2048;
      *&v325[16] = endTime;
      LODWORD(v290) = 104;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v265, 0, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", &v320, v290, *&v291, *(&v291 + 1), *&v292, *(&v292 + 1), *&v293, v294, v295, *(&v295 + 1), v296);
      v243 = v269;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v269);
    }

    if (v243 != buf)
    {
      free(v243);
    }

    *&selfCopy = v303;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

LABEL_204:
  v196 = v319;
  [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
  v197 = v196;
  v199 = v198;
  v200 = sub_1000A6C00(v197, v199);
  [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
  selfCopy->_estimatedMeanSeaLevelPressure = v201;
  v202 = v319;
  v203 = v201;
  sub_1012C2850(v202, v203);
  v205 = v204;
  [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData uncertainty];
  selfCopy->_estimatedAbsoluteAltitudeUncertainty = v206 * v205;
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v207 = p_info[131];
  if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
  {
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData uncertainty];
    estimatedAbsoluteAltitudeUncertainty = selfCopy->_estimatedAbsoluteAltitudeUncertainty;
    *buf = 136315906;
    *&buf[4] = "estimatedMslpUncertainty";
    *&buf[12] = 2048;
    *&buf[14] = v209;
    *&buf[22] = 2080;
    *&buf[24] = "estimatedAbsoluteAltitudeUncertainty";
    *&buf[32] = 2048;
    *&buf[34] = estimatedAbsoluteAltitudeUncertainty;
    _os_log_impl(dword_100000000, v207, OS_LOG_TYPE_DEFAULT, "mslp uncertainty to altitude uncertainty,%s,%f,%s,%f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    v252 = p_info[131];
    [(CLMeanSeaLevelPressureData *)selfCopy->_queriedMeanSeaLevelPressureData uncertainty];
    v253 = *(*&v303 + 120);
    v320 = 136315906;
    *v321 = "estimatedMslpUncertainty";
    *&v321[8] = 2048;
    *&v321[10] = v254;
    *&v321[18] = 2080;
    *&v321[20] = "estimatedAbsoluteAltitudeUncertainty";
    *&v321[28] = 2048;
    *&v321[30] = v253;
    LODWORD(v290) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v252, 0, "mslp uncertainty to altitude uncertainty,%s,%f,%s,%f", &v320, v290, v291, *(&v291 + 1));
    v256 = v255;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v255);
    if (v256 != buf)
    {
      free(v256);
    }

    *&selfCopy = v303;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v210 = [(CLBarometerCalibrationBiasEstimator *)selfCopy selectReferenceWithReference:&v311 withBaroElevation:v200 betweenStartTime:time andEndTime:endTime];
  v211 = objc_opt_new();
  [v211 setTimestamp:endTime];
  [(CLBarometerCalibrationBiasEstimator *)selfCopy computeMeanSeaLevelPressureWithRebasingLocationData:v211 referenceMap:&v311 andLocationType:v210];
  if (v210)
  {
    [(CLBarometerCalibrationBiasEstimator *)selfCopy updateHistoricalMslpArray:v211];
  }

  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v212 = p_info[131];
  if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
  {
    [v211 meanSeaLevelPressure];
    v214 = v213;
    [v211 uncertainty];
    v216 = v215;
    [v211 timestamp];
    *buf = 136317954;
    *&buf[4] = "type";
    *&buf[12] = 1024;
    *&buf[14] = v210;
    *&buf[18] = 2080;
    *&buf[20] = "meanSeaLevelPressure";
    *&buf[28] = 2048;
    *&buf[30] = v214;
    *&buf[38] = 2080;
    *&buf[40] = "uncertainty";
    *&buf[48] = 2048;
    *&buf[50] = v216;
    *&buf[58] = 2080;
    *&buf[60] = "timestamp";
    v341 = 2048;
    v342 = v217;
    v343 = 2080;
    *v344 = "startAt";
    *&v344[8] = 2048;
    *&v344[10] = time;
    *&v344[18] = 2080;
    *&v344[20] = "endAt";
    v345 = 2048;
    endTimeCopy3 = endTime;
    _os_log_impl(dword_100000000, v212, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x76u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    v257 = p_info[131];
    [v211 meanSeaLevelPressure];
    v259 = v258;
    [v211 uncertainty];
    v261 = v260;
    [v211 timestamp];
    v320 = 136317954;
    *v321 = "type";
    *&v321[8] = 1024;
    *&v321[10] = v210;
    *&v321[14] = 2080;
    *&v321[16] = "meanSeaLevelPressure";
    *&v321[24] = 2048;
    *&v321[26] = v259;
    *&v321[34] = 2080;
    *&v321[36] = "uncertainty";
    *&v321[44] = 2048;
    *&v321[46] = v261;
    *&v321[54] = 2080;
    *&v321[56] = "timestamp";
    v322 = 2048;
    v323 = v262;
    v324 = 2080;
    *v325 = "startAt";
    *&v325[8] = 2048;
    *&v325[10] = time;
    *&v325[18] = 2080;
    *&v325[20] = "endAt";
    v326 = 2048;
    endTimeCopy4 = endTime;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v257, 0, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v320, 118, v291, *(&v291 + 1), v292, *(&v292 + 1), v293, v294, v295, *(&v295 + 1), *&v296, v297);
    v264 = v263;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v263);
    if (v264 != buf)
    {
      free(v264);
    }
  }

  sub_1003C93BC(&v311, v312[0]);
  sub_1003C93BC(&v313, v314);
LABEL_217:
  if (v306)
  {
    sub_100008080(v306);
  }

  if (__src)
  {
    v317 = __src;
    operator delete(__src);
  }
}

- (void)updateHistoricalMslpArray:(id)array
{
  v5 = self->_inOutdoorWorkoutStatus || self->_companionRebase || self->_loiRebase || self->_forceCalibrate;
  if (self->_forceCalibrate)
  {
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator cleanHistoricalMslpArrayForForceRebase:array];
  }

  if (v5 || ![(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus])
  {
    if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator updateHistoricalMslpArray:array from:0])
    {
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v7 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [array timestamp];
        v9 = v8;
        [array meanSeaLevelPressure];
        v11 = v10;
        [array uncertainty];
        v13 = v12;
        [array pressureMeasurement];
        v15 = 134218752;
        v16 = v9;
        v17 = 2048;
        v18 = v11;
        v19 = 2048;
        v20 = v13;
        v21 = 2048;
        v22 = v14;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "mslp from ap,timestamp,%f,mslp,%f,uncertainty,%f,pressureMeasurement,%f", &v15, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909C20(array);
      }

      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setNumberOfRebaseBtwRefresh:[(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator numberOfRebaseBtwRefresh]+ 1];
      self->_lastRebaseTimestamp = CFAbsoluteTimeGetCurrent();
    }
  }

  else
  {
    meanSeaLevelPressureEstimator = self->_meanSeaLevelPressureEstimator;

    [(CLMeanSeaLevelPressureEstimator *)meanSeaLevelPressureEstimator updateInVisitRebasedMslp:array];
  }
}

- (void)computeMeanSeaLevelPressureWithRebasingLocationData:(id)data referenceMap:(void *)map andLocationType:(int)type
{
  if (!type)
  {
    [data setMeanSeaLevelPressure:{data, map, 1.0}];
    v11 = -1.0;
LABEL_12:

    [data setUncertainty:v11];
    return;
  }

  v8 = *(map + 1);
  v6 = map + 8;
  v7 = v8;
  if (v8)
  {
    v10 = v6;
    do
    {
      if (*(v7 + 8) >= type)
      {
        v10 = v7;
      }

      v7 = *&v7[*(v7 + 8) < type];
    }

    while (v7);
    if (v10 != v6 && *(v10 + 8) <= type)
    {
      v12 = v10[7];
      v13 = v10[8];
      v14 = v10[5];
      v15 = v10[6];
      v16 = (v12 * v15 + v13 * v14) / (v13 + v15);
      v17 = v12;
      [(CLMeanSeaLevelPressureData *)self->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
      v19 = v18;
      v20 = sub_1012C27C8(v17, v19);
      self->_estimatedAbsoluteAltitudeUncertainty = sqrt(v13 * v15 / (v13 + v15));
      v21 = v16;
      self->_estimatedMeanSeaLevelPressure = sub_1012C280C(v21, v20);
      *&v13 = v14;
      [data setMeanSeaLevelPressure:{sub_1012C280C(*&v13, v20)}];
      v22 = v14;
      v11 = sqrt(v15) * sub_1012C28A0(v22, v20);
      goto LABEL_12;
    }
  }
}

- (int)selectReferenceWithReference:(void *)reference withBaroElevation:(double)elevation betweenStartTime:(double)time andEndTime:(double)endTime
{
  HIDWORD(v66) = 0;
  self->_loiRebase = 0;
  referenceCopy = reference;
  if (*(reference + 2))
  {
    v10 = log(self->_estimatedAbsoluteAltitudeUncertainty * (self->_estimatedAbsoluteAltitudeUncertainty * 17.0794684));
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v11 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      estimatedAbsoluteAltitudeUncertainty = self->_estimatedAbsoluteAltitudeUncertainty;
      *buf = 136318978;
      *&buf[4] = "type";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2080;
      *&buf[20] = "crossEntropy";
      *&buf[28] = 2048;
      *&buf[30] = v10;
      *&buf[38] = 2080;
      v100 = "fromBaroAlt";
      v101 = 2048;
      v102 = 0xBFF0000000000000;
      v103 = 2080;
      v104 = "fromRefAlt";
      v105 = 2048;
      v106 = 0xBFF0000000000000;
      v107 = 2080;
      v108 = "baroUncertainty";
      v109 = 2048;
      v110 = estimatedAbsoluteAltitudeUncertainty;
      v111 = 2080;
      v112 = "refUncertainty";
      v113 = 2048;
      v114 = -1.0;
      v115 = 2080;
      v116 = "trackStartTime";
      v117 = 2048;
      timeCopy5 = time;
      v119 = 2080;
      v120 = "trackEndTime";
      v121 = 2048;
      endTimeCopy5 = endTime;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x9Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v54 = self->_estimatedAbsoluteAltitudeUncertainty;
      v67 = 136318978;
      v68 = "type";
      v69 = 1024;
      v70 = 0;
      v71 = 2080;
      v72 = "crossEntropy";
      v73 = 2048;
      v74 = v10;
      v75 = 2080;
      v76 = "fromBaroAlt";
      v77 = 2048;
      v78 = 0xBFF0000000000000;
      v79 = 2080;
      v80 = "fromRefAlt";
      v81 = 2048;
      v82 = 0xBFF0000000000000;
      v83 = 2080;
      v84 = "baroUncertainty";
      v85 = 2048;
      v86 = v54;
      v87 = 2080;
      v88 = "refUncertainty";
      v89 = 2048;
      v90 = -1.0;
      v91 = 2080;
      v92 = "trackStartTime";
      v93 = 2048;
      timeCopy6 = time;
      v95 = 2080;
      v96 = "trackEndTime";
      v97 = 2048;
      endTimeCopy6 = endTime;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v67, 158, v57, v60, v61, *&referenceCopy, *&v63.var0, v63.var1, v64, *(&v64 + 1), v65, v66);
      v56 = v55;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator selectReferenceWithReference:withBaroElevation:betweenStartTime:andEndTime:]", "%s\n", v55);
      if (v56 != buf)
      {
        free(v56);
      }
    }

    v14 = referenceCopy + 1;
    v15 = *referenceCopy;
    if (*referenceCopy != referenceCopy + 1)
    {
      *&v13 = 136318978;
      v58 = v13;
      do
      {
        v16 = *(v15 + 18);
        v17 = *(v15 + 6) * *(v15 + 6) / v16 / v16;
        *(v15 + 5) = *(v15 + 5) / v16;
        *(v15 + 6) = v17;
        *(v15 + 7) = *(v15 + 7) / v16;
        *(v15 + 8) = self->_estimatedAbsoluteAltitudeUncertainty * self->_estimatedAbsoluteAltitudeUncertainty;
        v18 = *(v15 + 7);
        *buf = *(v15 + 5);
        *&buf[16] = v18;
        *&buf[32] = v15[9];
        [(CLBarometerCalibrationBiasEstimator *)self crossEntropyOfreference:buf];
        v20 = v19;
        if (v10 >= v19)
        {
          HIDWORD(v66) = *(v15 + 8);
          v10 = v19;
        }

        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v21 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v15 + 8);
          v23 = v15[7];
          v24 = v15[5];
          v25 = sqrt(*(v15 + 8));
          v26 = *(v15 + 6);
          *buf = v58;
          *&buf[4] = "type";
          *&buf[12] = 1024;
          *&buf[14] = v22;
          *&buf[18] = 2080;
          *&buf[20] = "crossEntropy";
          *&buf[28] = 2048;
          *&buf[30] = v20;
          *&buf[38] = 2080;
          v100 = "fromBaroAlt";
          v101 = 2048;
          v102 = v23;
          v103 = 2080;
          v104 = "fromRefAlt";
          v105 = 2048;
          v106 = v24;
          v107 = 2080;
          v108 = "baroUncertainty";
          v109 = 2048;
          v110 = v25;
          v111 = 2080;
          v112 = "refUncertainty";
          v113 = 2048;
          v114 = sqrt(v26);
          v115 = 2080;
          v116 = "trackStartTime";
          v117 = 2048;
          timeCopy5 = time;
          v119 = 2080;
          v120 = "trackEndTime";
          v121 = 2048;
          endTimeCopy5 = endTime;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x9Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v30 = *(v15 + 8);
          v31 = v15[7];
          v32 = v15[5];
          v33 = sqrt(*(v15 + 8));
          v34 = *(v15 + 6);
          v67 = v58;
          v68 = "type";
          v69 = 1024;
          v70 = v30;
          v71 = 2080;
          v72 = "crossEntropy";
          v73 = 2048;
          v74 = v20;
          v75 = 2080;
          v76 = "fromBaroAlt";
          v77 = 2048;
          v78 = v31;
          v79 = 2080;
          v80 = "fromRefAlt";
          v81 = 2048;
          v82 = v32;
          v83 = 2080;
          v84 = "baroUncertainty";
          v85 = 2048;
          v86 = v33;
          v87 = 2080;
          v88 = "refUncertainty";
          v89 = 2048;
          v90 = sqrt(v34);
          v91 = 2080;
          v92 = "trackStartTime";
          v93 = 2048;
          timeCopy6 = time;
          v95 = 2080;
          v96 = "trackEndTime";
          v97 = 2048;
          endTimeCopy6 = endTime;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v67, 158, v58, *(&v58 + 1), v61, *&referenceCopy, *&v63.var0, v63.var1, v64, *(&v64 + 1), v65, v66);
          v36 = v35;
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator selectReferenceWithReference:withBaroElevation:betweenStartTime:andEndTime:]", "%s\n", v35);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        v27 = v15[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v15[2];
            v29 = *v28 == v15;
            v15 = v28;
          }

          while (!v29);
        }

        v15 = v28;
      }

      while (v28 != v14);
    }
  }

  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus])
  {
    begin = self->_loiVisitAltitudes.__begin_;
    end = self->_loiVisitAltitudes.__end_;
    if (end != begin)
    {
      v39 = log(self->_estimatedAbsoluteAltitudeUncertainty * (self->_estimatedAbsoluteAltitudeUncertainty * 17.0794684));
      v40 = (referenceCopy + 1);
      *&v41 = 136318978;
      v59 = v41;
      do
      {
        v63 = *begin;
        v42 = self->_estimatedAbsoluteAltitudeUncertainty * self->_estimatedAbsoluteAltitudeUncertainty;
        *&v64 = elevation;
        *(&v64 + 1) = v42;
        LODWORD(v65) = 1;
        *buf = v63;
        *&buf[16] = v64;
        *&buf[32] = v65;
        [(CLBarometerCalibrationBiasEstimator *)self crossEntropyOfreference:buf];
        v44 = v43;
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v45 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v59;
          *&buf[4] = "type";
          *&buf[12] = 1024;
          *&buf[14] = 13;
          *&buf[18] = 2080;
          *&buf[20] = "crossEntropy";
          *&buf[28] = 2048;
          *&buf[30] = v44;
          *&buf[38] = 2080;
          v100 = "fromBaroAlt";
          v101 = 2048;
          v102 = v64;
          v103 = 2080;
          v104 = "fromRefAlt";
          v105 = 2048;
          v106 = *&v63.var0;
          v107 = 2080;
          v108 = "baroUncertainty";
          v109 = 2048;
          v110 = sqrt(*(&v64 + 1));
          v111 = 2080;
          v112 = "refUncertainty";
          v113 = 2048;
          v114 = sqrt(v63.var1);
          v115 = 2080;
          v116 = "trackStartTime";
          v117 = 2048;
          timeCopy5 = time;
          v119 = 2080;
          v120 = "trackEndTime";
          v121 = 2048;
          endTimeCopy5 = endTime;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x9Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v67 = v59;
          v68 = "type";
          v69 = 1024;
          v70 = 13;
          v71 = 2080;
          v72 = "crossEntropy";
          v73 = 2048;
          v74 = v44;
          v75 = 2080;
          v76 = "fromBaroAlt";
          v77 = 2048;
          v78 = v64;
          v79 = 2080;
          v80 = "fromRefAlt";
          v81 = 2048;
          v82 = *&v63.var0;
          v83 = 2080;
          v84 = "baroUncertainty";
          v85 = 2048;
          v86 = sqrt(*(&v64 + 1));
          v87 = 2080;
          v88 = "refUncertainty";
          v89 = 2048;
          v90 = sqrt(v63.var1);
          v91 = 2080;
          v92 = "trackStartTime";
          v93 = 2048;
          timeCopy6 = time;
          v95 = 2080;
          v96 = "trackEndTime";
          v97 = 2048;
          endTimeCopy6 = endTime;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", &v67, 158, v59, *(&v59 + 1), v61, *&referenceCopy, *&v63.var0, v63.var1, v64, *(&v64 + 1), v65, v66);
          v52 = v51;
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator selectReferenceWithReference:withBaroElevation:betweenStartTime:andEndTime:]", "%s\n", v51);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        if (v39 >= v44)
        {
          HIDWORD(v66) = 13;
          v46 = *v40;
          if (!*v40)
          {
            goto LABEL_43;
          }

          v47 = v40;
          do
          {
            if (v46[8] >= 13)
            {
              v47 = v46;
            }

            v46 = *&v46[2 * (v46[8] < 13)];
          }

          while (v46);
          if (v47 != v40 && v47[8] < 14)
          {
            v48 = sub_1003DD9F8(referenceCopy, &v66 + 1);
            v49 = v65;
            v50 = v64;
            *v48 = v63;
            *(v48 + 1) = v50;
            *(v48 + 8) = v49;
          }

          else
          {
LABEL_43:
            sub_1006BAC64(referenceCopy, &v66 + 1, &v66 + 1, &v63);
          }

          self->_loiRebase = 1;
          v39 = v44;
        }

        ++begin;
      }

      while (begin != end);
    }
  }

  return HIDWORD(v66);
}

- (void)updateBiasUncertaintyWithAbsSigElevation:(double)elevation withCompanion:(BOOL)companion
{
  companionCopy = companion;
  dataBuffers = self->_dataBuffers;
  v8 = dataBuffers[11] + dataBuffers[10] - 1;
  v9 = (*(dataBuffers[7] + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8);
  v10 = *v9;
  v11 = v9[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(v10 + 8) * 1000.0;
  v13 = sub_1000A6C00(v12, 101320.0);
  if (elevation != 1.79769313e308)
  {
    bias = self->_bias;
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v15 = bias + v13;
    v16 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      biasUncertaintyAtRebase = self->_biasUncertaintyAtRebase;
      *buf = 136316418;
      v35 = "takeMaxForPhone";
      v36 = 1024;
      v37 = companionCopy;
      v38 = 2080;
      v39 = "bayesianInferenceResult";
      v40 = 2048;
      v41 = biasUncertaintyAtRebase;
      v42 = 2080;
      v43 = "diffOfAbsSigElevationAndAbsAltitude";
      v44 = 2048;
      v45 = vabdd_f64(elevation, v15);
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "re-initialize bias uncertainty with,%s,%d,%s,%f,%s,%f", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v19 = self->_biasUncertaintyAtRebase;
      v22 = 136316418;
      v23 = "takeMaxForPhone";
      v24 = 1024;
      v25 = companionCopy;
      v26 = 2080;
      v27 = "bayesianInferenceResult";
      v28 = 2048;
      v29 = v19;
      v30 = 2080;
      v31 = "diffOfAbsSigElevationAndAbsAltitude";
      v32 = 2048;
      v33 = vabdd_f64(elevation, v15);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "re-initialize bias uncertainty with,%s,%d,%s,%f,%s,%f", &v22, 58);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithAbsSigElevation:withCompanion:]", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    v18 = vabdd_f64(elevation, v15);
    if (companionCopy)
    {
      if (self->_biasUncertaintyAtRebase >= v18)
      {
        v18 = self->_biasUncertaintyAtRebase;
      }
    }

    else
    {
      v18 = v18 + self->_biasUncertaintyAtRebase;
    }

    self->_biasUncertaintyAtRebase = v18;
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

- (void)rebaseSignificantElevationWithEndTime:(double)time
{
  if (([(CLBarometerCalibrationContextClient *)self->_delegate isInVisit]& 1) == 0)
  {
    v10 = 0.0;
    if ([(CLBarometerCalibrationBiasEstimator *)self getLastPressureSample:&v10])
    {
      v5 = v10;
      v6 = sub_1000A6C00(v5, 101320.0);
      sub_10085BDCC(self->_fSignificantElevationEstimatorRebase.__ptr_, self->_bias + v6, self->_bias, v7, v8);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v9 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "endTrackTime";
        v13 = 2048;
        timeCopy = time;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "significant elevation rebase: %s,%f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909D8C();
      }
    }
  }
}

- (BOOL)getLastPressureSample:(double *)sample
{
  dataBuffers = self->_dataBuffers;
  v4 = dataBuffers[11];
  if (v4)
  {
    v5 = (*(dataBuffers[7] + (((v4 + dataBuffers[10] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(dataBuffers + 80) - 1));
    v7 = *v5;
    v6 = v5[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *sample = *(v7 + 8) * 1000.0;
      sub_100008080(v6);
    }

    else
    {
      *sample = *(v7 + 8) * 1000.0;
    }
  }

  return v4 != 0;
}

- (void)updateLoiInfo:(const void *)info
{
  Current = CFAbsoluteTimeGetCurrent();
  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus])
  {
    v6 = *info;
    v7 = *(info + 1);
    if (v7 == *info)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v21 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = Current;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "receive visit in bias estimator with no loi,timestamp,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909E94(Current);
      }
    }

    else
    {
      p_loiVisitAltitudes = &self->_loiVisitAltitudes;
      if (self->_enableLoiRebase && p_loiVisitAltitudes != info)
      {
        sub_1006BA434(p_loiVisitAltitudes, v6, v7, &v7[-*info] >> 4);
        v6 = *info;
        v7 = *(info + 1);
      }

      if (v7 != v6)
      {
        v10 = 0;
        v11 = 0;
        v23 = 134218496;
        do
        {
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v12 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (*info + v10);
            v15 = *v13;
            v14 = v13[1];
            *buf = v23;
            v31 = Current;
            v32 = 2048;
            v33 = v15;
            v34 = 2048;
            v35 = v14;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "receive visit loi in bias estimator,timestamp,%f,loiAltitude,%f,loiVerticalVariance,%f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101909358();
            }

            v16 = (*info + v10);
            v18 = *v16;
            v17 = v16[1];
            v24 = v23;
            v25 = Current;
            v26 = 2048;
            v27 = v18;
            v28 = 2048;
            v29 = v17;
            LODWORD(v22) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "receive visit loi in bias estimator,timestamp,%f,loiAltitude,%f,loiVerticalVariance,%f", COERCE_DOUBLE(&v24), v22, *&v23);
            v20 = v19;
            sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateLoiInfo:]", "%s\n", v19);
            if (v20 != buf)
            {
              free(v20);
            }
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < (*(info + 1) - *info) >> 4);
      }
    }
  }
}

- (void)sendVisitExitWifiImprovementAnalyticsEventWithDuration:(double)duration uncertaintyAtVisitEntry:(double)entry uncertaintyAtVisitExit:(double)exit timeDiffBtwArrivalAndLastRebase:(double)rebase
{
  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v10 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    durationCopy = duration;
    v26 = 2048;
    entryCopy = entry;
    v28 = 2048;
    exitCopy = exit;
    v30 = 2048;
    rebaseCopy = rebase;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "sent visit exit information to CoreAnalytics,visitDuration,%f,arrivalUncertainty,%f,exitUncertainty,%f,timeDiffBtwArrivalAndLastRebase,%f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v16 = 134218752;
    durationCopy2 = duration;
    v18 = 2048;
    entryCopy2 = entry;
    v20 = 2048;
    exitCopy2 = exit;
    v22 = 2048;
    rebaseCopy2 = rebase;
    LODWORD(v13) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "sent visit exit information to CoreAnalytics,visitDuration,%f,arrivalUncertainty,%f,exitUncertainty,%f,timeDiffBtwArrivalAndLastRebase,%f", COERCE_DOUBLE(&v16), v13, v14, v15);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator sendVisitExitWifiImprovementAnalyticsEventWithDuration:uncertaintyAtVisitEntry:uncertaintyAtVisitExit:timeDiffBtwArrivalAndLastRebase:]", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  AnalyticsSendEventLazy();
}

- (void)updateVisitState:(BOOL)state arrivalTime:(double)time departureTime:(double)departureTime
{
  stateCopy = state;
  Current = CFAbsoluteTimeGetCurrent();
  p_meanSeaLevelPressureEstimator = &self->_meanSeaLevelPressureEstimator;
  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus]!= stateCopy)
  {
    v11 = *p_meanSeaLevelPressureEstimator;
    if (stateCopy)
    {
      [v11 setCumulativeStartTime:1.79769313e308];
    }

    else
    {
      [v11 setFirstRefreshAfterVisit:1];
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator resetInVisitRebasedMslp];
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setExitVisitTimestamp:departureTime];
      self->_loiVisitAltitudes.__end_ = self->_loiVisitAltitudes.__begin_;
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v12 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [*p_meanSeaLevelPressureEstimator exitVisitTimestamp];
        *buf = 134217984;
        *v42 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "received exit visit,timestamp,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909F98(&self->_meanSeaLevelPressureEstimator);
      }
    }

    [*p_meanSeaLevelPressureEstimator setInVisitStatus:stateCopy];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v14 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v42 = stateCopy;
      *&v42[4] = 2048;
      *&v42[6] = Current;
      *&v42[14] = 2048;
      *&v42[16] = time;
      *&v42[24] = 2048;
      *&v42[26] = departureTime;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "visit state changed,visitState,%d,timestamp,%f,arrival,%f,departure,%f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      *&v40[4] = 2048;
      *&v40[6] = Current;
      *&v40[14] = 2048;
      *&v40[16] = time;
      *&v40[24] = 2048;
      *&v40[26] = departureTime;
      LODWORD(v38) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "visit state changed,visitState,%d,timestamp,%f,arrival,%f,departure,%f", &v39, v38, COERCE_DOUBLE(__PAIR64__(stateCopy, 67109888)), *&v40[4]);
      v37 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateVisitState:arrivalTime:departureTime:]", "%s\n", v36);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    [*p_meanSeaLevelPressureEstimator saveInVisitStateToPlist];
  }

  latestAbsoluteAltitude = [(CLBarometerCalibrationContextClient *)self->_delegate latestAbsoluteAltitude];
  v16 = latestAbsoluteAltitude;
  if (stateCopy)
  {
    self->_lastVisitEntryTime = Current;
    if (latestAbsoluteAltitude)
    {
      [latestAbsoluteAltitude timestamp];
      if (v17 != 1.79769313e308 && self->_lastRebaseTimestamp != 1.79769313e308)
      {
        [v16 accuracy];
        self->_uncertaintyAtVisitEntry = v18;
        self->_timeDiffBtwVisitEntryAndLastRebase = Current - self->_lastRebaseTimestamp;
        self->_visitArrivalTimestamp = Current;
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v19 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          uncertaintyAtVisitEntry = self->_uncertaintyAtVisitEntry;
          timeDiffBtwVisitEntryAndLastRebase = self->_timeDiffBtwVisitEntryAndLastRebase;
          visitArrivalTimestamp = self->_visitArrivalTimestamp;
          *buf = 134218496;
          *v42 = uncertaintyAtVisitEntry;
          *&v42[8] = 2048;
          *&v42[10] = visitArrivalTimestamp;
          *&v42[18] = 2048;
          *&v42[20] = timeDiffBtwVisitEntryAndLastRebase;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "record coreAnalytics event data,uncertaintyAtVisitEntry,%f,visitArrivalTimestamp,%f,timeDiffBtwVisitEntryAndLastRebase,%f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v23 = self->_uncertaintyAtVisitEntry;
          v25 = self->_timeDiffBtwVisitEntryAndLastRebase;
          v24 = self->_visitArrivalTimestamp;
          v39 = 134218496;
          *v40 = v23;
          *&v40[8] = 2048;
          *&v40[10] = v24;
          *&v40[18] = 2048;
          *&v40[20] = v25;
          LODWORD(v38) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "record coreAnalytics event data,uncertaintyAtVisitEntry,%f,visitArrivalTimestamp,%f,timeDiffBtwVisitEntryAndLastRebase,%f", COERCE_DOUBLE(&v39), v38);
          v27 = v26;
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateVisitState:arrivalTime:departureTime:]", "%s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }
    }
  }

  else
  {
    if (!latestAbsoluteAltitude || ([latestAbsoluteAltitude timestamp], v28 == 1.79769313e308) || (v29 = self->_visitArrivalTimestamp, v29 == 1.79769313e308))
    {
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v32 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_visitArrivalTimestamp;
        *buf = 134217984;
        *v42 = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "fail to send visit exit event to CA,visitArrivalTimestamp,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190A18C(self);
      }
    }

    else
    {
      v30 = Current - v29;
      if (Current - v29 >= 0.0)
      {
        v34 = self->_uncertaintyAtVisitEntry;
        [v16 accuracy];
        [(CLBarometerCalibrationBiasEstimator *)self sendVisitExitWifiImprovementAnalyticsEventWithDuration:v30 / 60.0 uncertaintyAtVisitEntry:v34 uncertaintyAtVisitExit:v35 timeDiffBtwArrivalAndLastRebase:self->_timeDiffBtwVisitEntryAndLastRebase / 60.0];
      }

      else
      {
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v31 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "visit exit timestamp is earlier than visit entry timestamp.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190A0A0();
        }
      }

      if (time > 0.0)
      {
        [(CLBarometerCalibrationBiasEstimator *)self sendVisitExitAnalyticsWithDuration:&self->_firstRebaseEventInVisit andRebaseEvent:(departureTime - time) / 60.0 andUncertaintyAtEntry:self->_uncertaintyAtVisitEntry];
      }
    }

    self->_visitArrivalTimestamp = 1.79769313e308;
  }
}

- (void)sendRebaseAnalyticsWithAltitudeError:(double)error andUncertainty:(double)uncertainty andRefUncertainty:(double)refUncertainty andDemAvailable:(BOOL)available andWorkout:(BOOL)workout andReferenceSource:(int)source andCorrection:(double)correction andDistance:(double)self0
{
  errorCopy = error;
  v19 = fabsf(errorCopy);
  v70 = 0;
  v71 = 0;
  v69 = 0;
  sub_10038EB38(&v69, qword_102658AE0, qword_102658AE8, (qword_102658AE8 - qword_102658AE0) >> 2);
  sub_1003F6558(&v69, &v72, v19);
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v66 = 0;
  v67 = 0;
  v65 = 0;
  sub_10038EB38(&v65, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  refUncertaintyCopy = refUncertainty;
  sub_1003F6558(&v65, &v68, refUncertaintyCopy);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  v63 = 0;
  __p = 0;
  v62 = 0;
  sub_10038EB38(&__p, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  uncertaintyCopy = uncertainty;
  sub_1003F6558(&__p, &v64, uncertaintyCopy);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v59 = 0;
  v57 = 0;
  v58 = 0;
  sub_10038EB38(&v57, qword_102658AE0, qword_102658AE8, (qword_102658AE8 - qword_102658AE0) >> 2);
  correctionCopy = correction;
  sub_1003F6558(&v57, &v60, fabsf(correctionCopy));
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (self->_previousBiasTimestamp == 1.79769313e308)
  {
    v23 = CFAbsoluteTimeGetCurrent() - self->_locationdStartTime;
    v24 = fabsf(v23);
  }

  else
  {
    v24 = -1.0;
  }

  v55 = 0;
  v53 = 0;
  v54 = 0;
  sub_10038EB38(&v53, qword_102658AF8, qword_102658B00, (qword_102658B00 - qword_102658AF8) >> 2);
  sub_1003F6558(&v53, &__src, v24);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  v25 = -1.0;
  if (self->_previousBiasTimestamp != 1.79769313e308)
  {
    v26 = CFAbsoluteTimeGetCurrent() - self->_previousBiasTimestamp;
    v25 = fabsf(v26);
  }

  v51 = 0;
  v49 = 0;
  v50 = 0;
  sub_10038EB38(&v49, qword_102658B10, qword_102658B18, (qword_102658B18 - qword_102658B10) >> 2);
  sub_1003F6558(&v49, &v52, v25);
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (self->_lastVisitEntryTime == 1.79769313e308)
  {
    v27 = -1.0;
  }

  else
  {
    v27 = vabdd_f64(CFAbsoluteTimeGetCurrent(), self->_lastVisitEntryTime) / 60.0;
  }

  v47 = 0;
  v45 = 0;
  v46 = 0;
  sub_10038EB38(&v45, qword_102658B28, qword_102658B30, (qword_102658B30 - qword_102658B28) >> 2);
  sub_1003F6558(&v45, &v48, v27);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_10038EB38(&v41, qword_102658B40, qword_102658B48, (qword_102658B48 - qword_102658B40) >> 2);
  distanceCopy = distance;
  sub_1003F6558(&v41, &v44, distanceCopy);
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  *&v31 = vcvt_f32_f64(self->_biasLocation);
  BYTE8(v31) = [(CLBarometerCalibrationContextClient *)self->_delegate isInVisit];
  BYTE9(v31) = available;
  v29 = self->_lastForcedGpsTime != 1.79769313e308 && CFAbsoluteTimeGetCurrent() - self->_lastForcedGpsTime < 546.0;
  BYTE10(v31) = v29;
  HIDWORD(v31) = source;
  LOBYTE(v32) = workout;
  HIBYTE(v32) = self->_previousBiasTimestamp == 1.79769313e308;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v33, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v72;
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v34, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = __src;
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v35, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v68;
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v36, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v64;
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v37, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v48;
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v38, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v52;
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v39, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v60;
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v40, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v44;
  }

  if (self->_lastVisitEntryTime != 1.79769313e308)
  {
    *&self->_firstRebaseEventInVisit.latitude = v31;
    *&self->_firstRebaseEventInVisit.inOutdoorWorkout = v32;
    std::string::operator=(&self->_firstRebaseEventInVisit.altitudeError_binned, &v33);
    std::string::operator=(&self->_firstRebaseEventInVisit.var0, &v34);
    std::string::operator=(&self->_anon_158[16], &v35);
    std::string::operator=(&self->_anon_158[40], &v36);
    std::string::operator=(&self->_anon_158[64], &v37);
    std::string::operator=(&self->_anon_158[88], &v38);
    std::string::operator=(&self->_anon_158[112], &v39);
    std::string::operator=(&self->_anon_158[136], &v40);
  }

  sub_1006BA560(v30, &v31);
  AnalyticsSendEventLazy();
  self->_previousBiasTimestamp = self->_biasTimestamp;
  self->_lastVisitEntryTime = 1.79769313e308;
  self->_distanceSinceLastRebase = -1.0;
  sub_1006BA784(v30);
  sub_1006BA784(&v31);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

- (void)sendVisitExitAnalyticsWithDuration:(double)duration andRebaseEvent:(void *)event andUncertaintyAtEntry:(double)entry
{
  durationCopy = duration;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  sub_10038EB38(&v54, qword_102658B58, qword_102658B60, (qword_102658B60 - qword_102658B58) >> 2);
  sub_1003F6558(&v54, &v57, durationCopy);
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  v50 = 0;
  v51 = 0;
  v49 = 0;
  sub_10038EB38(&v49, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  entryCopy = entry;
  sub_1003F6558(&v49, &v52, entryCopy);
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  rebaseSource = self->_firstRebaseEventInVisit.rebaseSource;
  if (SHIBYTE(v53) < 0)
  {
    sub_100007244(&v35, v52, *(&v52 + 1));
  }

  else
  {
    v35 = v52;
    v36 = v53;
  }

  if (self->_anon_158[63] < 0)
  {
    sub_100007244(&v37, *&self->_anon_158[40], *&self->_anon_158[48]);
  }

  else
  {
    v37 = *&self->_anon_158[40];
    v38 = *&self->_anon_158[56];
  }

  if (SHIBYTE(v58) < 0)
  {
    sub_100007244(&v39, v57, *(&v57 + 1));
  }

  else
  {
    v39 = v57;
    v40 = v58;
  }

  if (self->_anon_158[87] < 0)
  {
    sub_100007244(&v41, *&self->_anon_158[64], *&self->_anon_158[72]);
  }

  else
  {
    v41 = *&self->_anon_158[64];
    v42 = *&self->_anon_158[80];
  }

  if (*(&self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l + 23) < 0)
  {
    sub_100007244(&v43, self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l.__data_, self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l.__size_);
  }

  else
  {
    v43 = *self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__s.__data_;
    v44 = *(&self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l + 2);
  }

  if (self->_anon_158[39] < 0)
  {
    sub_100007244(&v45, *&self->_anon_158[16], *&self->_anon_158[24]);
  }

  else
  {
    v45 = *&self->_anon_158[16];
    v46 = *&self->_anon_158[32];
  }

  if (self->_anon_158[135] < 0)
  {
    sub_100007244(&v47, *&self->_anon_158[112], *&self->_anon_158[120]);
  }

  else
  {
    v47 = *&self->_anon_158[112];
    v48 = *&self->_anon_158[128];
  }

  v18[3] = _NSConcreteStackBlock;
  v18[4] = 3321888768;
  v18[5] = sub_1006B9BE0;
  v18[6] = &unk_10246B050;
  sub_1006BA828(&v19, &rebaseSource);
  AnalyticsSendEventLazy();
  *(&v9 + 7) = 0;
  *&v9 = 0;
  HIDWORD(v9) = -10;
  v10 = 0;
  sub_10000EC00(v11, "NULL");
  sub_10000EC00(v12, "NULL");
  sub_10000EC00(v13, "NULL");
  sub_10000EC00(v14, "NULL");
  sub_10000EC00(v15, "NULL");
  sub_10000EC00(v16, "NULL");
  sub_10000EC00(v17, "NULL");
  sub_10000EC00(v18, "NULL");
  sub_1006B9D9C(&self->_firstRebaseEventInVisit, &v9);
  sub_1006BA784(&v9);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }
}

- (void)retrieveBiasInfo
{
  Current = CFAbsoluteTimeGetCurrent();
  v40 = 1.79769313e308;
  v41 = 1.79769313e308;
  v38 = 0.0;
  v39 = 1.79769313e308;
  v36 = 101325.0;
  v37 = -800.0;
  v6 = *sub_1000206B4(v4, v5);
  v7 = (*(v6 + 936))();
  v9 = sub_1000206B4(v7, v8);
  v10 = sub_1000B9370(v9, "CLBarometerCalibration_Timestamp", &v41);
  v12 = sub_1000206B4(v10, v11);
  v13 = sub_1000B9370(v12, "CLBarometerCalibratio_Bias", &v40);
  v15 = sub_1000206B4(v13, v14);
  v16 = sub_1000B9370(v15, "CLBarometerCalibration_Uncertainty", &v39);
  v18 = sub_1000206B4(v16, v17);
  v19 = sub_1000B9370(v18, "CLBarometerCalibration_Weather", &v38);
  v21 = sub_1000206B4(v19, v20);
  v22 = sub_1000B9370(v21, "CLBarometerCalibration_SignificantElevation", &v37);
  v24 = sub_1000206B4(v22, v23);
  sub_1000B9370(v24, "CLBarometerCalibration_BiasPressure", &v36);
  v25 = v41;
  if (v41 == 1.79769313e308 || Current - v41 >= self->_maxBiasAgeFromRecovery || (v26 = v40, v40 == 1.79769313e308))
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v34 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "state is too old to be recovered", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A28C();
    }
  }

  else
  {
    self->_biasTimestamp = v41;
    v27 = v36;
    self->_bias = v26;
    self->_biasPressure = v27;
    v28 = v39;
    self->_biasUncertaintyTimestamp = v25;
    self->_biasUncertaintyAtRebase = v28;
    self->_biasUncertainty = v28;
    sub_10085C5E0(self->_fSignificantElevationEstimatorRebase.__ptr_, v38);
    if (v37 != -800.0)
    {
      sub_10085C5EC(self->_fSignificantElevationEstimatorRebase.__ptr_, v37);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v29 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      biasPressure = self->_biasPressure;
      *buf = 134219264;
      v55 = v41;
      v56 = 2048;
      v57 = v40;
      v58 = 2048;
      v59 = v39;
      v60 = 2048;
      v61 = v38;
      v62 = 2048;
      v63 = v37;
      v64 = 2048;
      v65 = biasPressure;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "recovering from locationd crash, timestamp %f, bias, %f, uncertainty, %f, weather, %f, sig elev, %f, pressure, %f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v31 = self->_biasPressure;
      v42 = 134219264;
      v43 = v41;
      v44 = 2048;
      v45 = v40;
      v46 = 2048;
      v47 = v39;
      v48 = 2048;
      v49 = v38;
      v50 = 2048;
      v51 = v37;
      v52 = 2048;
      v53 = v31;
      LODWORD(v35) = 62;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 0, "recovering from locationd crash, timestamp %f, bias, %f, uncertainty, %f, weather, %f, sig elev, %f, pressure, %f", COERCE_DOUBLE(&v42), v35, v36, v37, v38, v39);
      v33 = v32;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator retrieveBiasInfo]", "%s\n", v32);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }
}

- (BOOL)isIHAAuthorized
{
  v2 = objc_opt_class();
  if (v2)
  {
    v3 = +[MCProfileConnection sharedConnection];

    LOBYTE(v2) = [v3 isHealthDataSubmissionAllowed];
  }

  return v2;
}

- (id).cxx_construct
{
  self->_fSignificantElevationEstimatorRebase.__ptr_ = 0;
  self->_biasLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->_loiVisitAltitudes.__end_ = 0;
  self->_loiVisitAltitudes.__cap_ = 0;
  self->_loiVisitAltitudes.__begin_ = 0;
  sub_1006BAAA4(&self->_firstRebaseEventInVisit);
  return self;
}

@end