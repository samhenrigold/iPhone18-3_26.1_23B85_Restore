@interface CLBarometerCalibrationSourceLocation
- (CLBarometerCalibrationSourceLocation)initWithUniverse:(id)universe delegate:(id)delegate;
- (void)copyLocationFields:(shared_ptr<CLBarometerCalibration_Types:(NotificationData *)fields :CLBarometerCalibrationLocationData>)a3 fromData:;
- (void)disableSource;
- (void)enableSource;
- (void)onLocationNotification:(int)notification data:(NotificationData *)data;
- (void)updateAltitudeStateWithLocationData:(shared_ptr<CLBarometerCalibration_Types:(double)data :(double)a5 CLBarometerCalibrationLocationData>)a3 sampleAltitude:sampleVerticalUncertainty:;
@end

@implementation CLBarometerCalibrationSourceLocation

- (CLBarometerCalibrationSourceLocation)initWithUniverse:(id)universe delegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CLBarometerCalibrationSourceLocation;
  if ([(CLBarometerCalibrationSource *)&v5 initWithUniverse:universe delegate:delegate])
  {
    sub_100678564();
  }

  return 0;
}

- (void)enableSource
{
  if (!self->super._sourceEnabled)
  {
    ptr = self->fLocationControllerClient.__ptr_;
    if (ptr)
    {
      [*(ptr + 2) register:*(ptr + 1) forNotification:4 registrationInfo:0];
    }

    self->super._sourceEnabled = 1;
  }
}

- (void)disableSource
{
  if (self->super._sourceEnabled)
  {
    ptr = self->fLocationControllerClient.__ptr_;
    if (ptr)
    {
      [*(ptr + 2) unregister:*(ptr + 1) forNotification:4];
    }

    self->super._sourceEnabled = 0;
  }
}

- (void)onLocationNotification:(int)notification data:(NotificationData *)data
{
  sub_100022008(v7, data);
  v5 = [CLBarometerCalibrationSourceAggregator isLocationUsefulForCalibration:v7];

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    sub_100008080(v9);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (notification == 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    sub_100219554();
  }
}

- (void)copyLocationFields:(shared_ptr<CLBarometerCalibration_Types:(NotificationData *)fields :CLBarometerCalibrationLocationData>)a3 fromData:
{
  v4 = *a3.var0;
  *v4 = *(a3.var1 + 76);
  *(v4 + 8) = *(a3.var1 + 4);
  *(v4 + 80) = *(a3.var1 + 44);
  *(v4 + 24) = vextq_s8(*(a3.var1 + 20), *(a3.var1 + 20), 8uLL);
  *(v4 + 40) = *(a3.var1 + 36);
  *(v4 + 112) = *(a3.var1 + 44);
  *(v4 + 48) = *(a3.var1 + 536);
  v5 = *(a3.var1 + 24);
  *(v4 + 96) = *(a3.var1 + 35);
  *(v4 + 100) = v5;
  *(v4 + 104) = *(a3.var1 + 54);
  *(v4 + 64) = *(a3.var1 + 520);
  *(v4 + 156) = *(a3.var1 + 736);
  *(v4 + 136) = *(a3.var1 + 744);
  *(v4 + 152) = *(a3.var1 + 62);
}

- (void)updateAltitudeStateWithLocationData:(shared_ptr<CLBarometerCalibration_Types:(double)data :(double)a5 CLBarometerCalibrationLocationData>)a3 sampleAltitude:sampleVerticalUncertainty:
{
  var0 = a3.var0;
  if (*(*a3.var0 + 100) != 1 || (v9 = **a3.var0, [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeTime], vabdd_f64(v9, v10) >= 5.0))
  {
    self->_currentUnderDEM = 0;
    goto LABEL_12;
  }

  isInOutdoorWorkout = [(CLBarometerCalibrationSourceClient *)self->super._delegate isInOutdoorWorkout];
  v12 = *var0;
  if (isInOutdoorWorkout)
  {
    *(v12 + 65) |= 2u;
  }

  if (*(v12 + 7) > 0.0)
  {
    if (*(v12 + 26) == 2)
    {
      *(v12 + 65) |= 4u;
    }

    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeAccuracy];
    v14 = *(*var0 + 48);
    v15 = v13 + 20.0 + *(*var0 + 56);
    currentUnderDEM = self->_currentUnderDEM;
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
    v18 = v14 - v17;
    if (currentUnderDEM)
    {
      if (v18 < v15 + -3.0)
      {
        v19 = 0;
LABEL_23:
        self->_currentUnderDEM = v19;
      }
    }

    else if (v18 > v15)
    {
      v19 = 1;
      goto LABEL_23;
    }

    if (qword_1025D4410 != -1)
    {
      sub_10193B13C();
    }

    v31 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
    {
      v32 = self->_currentUnderDEM;
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
      v34 = v33;
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeAccuracy];
      v35 = *(*var0 + 48);
      v36 = *(*var0 + 56);
      v37 = *(*var0 + 130);
      *buf = 67110656;
      *v75 = v32;
      *&v75[4] = 2048;
      *&v75[6] = v34;
      v76 = 2048;
      *v77 = v38;
      *&v77[8] = 2048;
      *&v77[10] = v35;
      *&v77[18] = 2048;
      *&v77[20] = v36;
      *&v77[28] = 2048;
      *&v77[30] = v15;
      *&v77[38] = 1024;
      *&v77[40] = v37;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#altimeter,DEM state,underDEM,%d,altitude,%f,vertUnc,%f,demAltitude,%f,demVertUnc,%f,threshold,%f,altitudeState,%d", buf, 0x40u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_10193AFE8();
      }

      v39 = qword_1025D4418;
      v40 = self->_currentUnderDEM;
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
      v42 = v41;
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeAccuracy];
      v43 = *(*var0 + 48);
      v44 = *(*var0 + 56);
      v45 = *(*var0 + 130);
      *v63 = 67110656;
      *&v63[4] = v40;
      *&v63[8] = 2048;
      *&v63[10] = v42;
      *&v63[18] = 2048;
      *&v63[20] = v46;
      *&v63[28] = 2048;
      *&v63[30] = v43;
      *&v65[4] = v44;
      *&v65[12] = 2048;
      *&v65[14] = v15;
      *&v65[22] = 1024;
      *&v65[24] = v45;
      LODWORD(v62) = 64;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v39, 1, "#altimeter,DEM state,underDEM,%d,altitude,%f,vertUnc,%f,demAltitude,%f,demVertUnc,%f,threshold,%f,altitudeState,%d", v63, v62, *v63, *&v63[8], *&v63[16], *&v63[24], v43 >> 16);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationSourceLocation updateAltitudeStateWithLocationData:sampleAltitude:sampleVerticalUncertainty:]", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }
  }

LABEL_12:
  if (self->_currentUnderDEM)
  {
    *(*var0 + 130) |= 1u;
  }

  if (qword_1025D4410 != -1)
  {
    sub_10193AFE8();
  }

  v20 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v21 = **var0;
    v22 = *(*var0 + 130);
    v23 = *(*var0 + 100);
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
    v25 = v24;
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeTime];
    v27 = *(*var0 + 136);
    v26 = *(*var0 + 144);
    v28 = *(*var0 + 156);
    v29 = *(*var0 + 152);
    *buf = 134220545;
    *v75 = v21;
    *&v75[8] = 1024;
    *&v75[10] = v22;
    v76 = 1024;
    *v77 = v23;
    *&v77[4] = 2048;
    *&v77[6] = data;
    *&v77[14] = 2048;
    *&v77[16] = a5;
    *&v77[24] = 2048;
    *&v77[26] = v25;
    *&v77[34] = 2048;
    *&v77[36] = v30;
    v78 = 2049;
    v79 = v26;
    v80 = 2049;
    v81 = v27;
    v82 = 1025;
    v83 = v28;
    v84 = 1025;
    v85 = v29;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#altimeter,location altitude information,timestamp,%f,state,%u,type,%d,altitude,%f,vertUnc,%f,lastAltitude,%.3lf,lastAltitudeTimestamp,%.3lf,outdoorConfidence,%{private}.3lf,indoorConfidence,%{private}.3lf,outdoorState,%{private}u,mapMatchType,%{private}u", buf, 0x60u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_10193AFE8();
    }

    v49 = qword_1025D4418;
    v50 = **var0;
    v51 = *(*var0 + 130);
    v52 = *(*var0 + 100);
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
    v54 = v53;
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeTime];
    v56 = *(*var0 + 136);
    v55 = *(*var0 + 144);
    v57 = *(*var0 + 156);
    v58 = *(*var0 + 152);
    *v63 = 134220545;
    *&v63[4] = v50;
    *&v63[12] = 1024;
    *&v63[14] = v51;
    *&v63[18] = 1024;
    *&v63[20] = v52;
    *&v63[24] = 2048;
    *&v63[26] = data;
    v64 = 2048;
    *v65 = a5;
    *&v65[8] = 2048;
    *&v65[10] = v54;
    *&v65[18] = 2048;
    *&v65[20] = v59;
    v66 = 2049;
    v67 = v55;
    v68 = 2049;
    v69 = v56;
    v70 = 1025;
    v71 = v57;
    v72 = 1025;
    v73 = v58;
    LODWORD(v62) = 96;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "#altimeter,location altitude information,timestamp,%f,state,%u,type,%d,altitude,%f,vertUnc,%f,lastAltitude,%.3lf,lastAltitudeTimestamp,%.3lf,outdoorConfidence,%{private}.3lf,indoorConfidence,%{private}.3lf,outdoorState,%{private}u,mapMatchType,%{private}u", v63, *&v62);
    v61 = v60;
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationSourceLocation updateAltitudeStateWithLocationData:sampleAltitude:sampleVerticalUncertainty:]", "%s\n", v60);
    if (v61 != buf)
    {
      free(v61);
    }
  }
}

@end