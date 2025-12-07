@interface CLContextManagerAbsoluteAltimeter
- (void)calculateAndSendAltitudeFromBaro;
- (void)calculateAndSendAltitudeFromLocation;
@end

@implementation CLContextManagerAbsoluteAltimeter

- (void)calculateAndSendAltitudeFromBaro
{
  Current = CFAbsoluteTimeGetCurrent();
  copyCurrentBias = [(CLBarometerCalibrationContextClient *)self->super.super._delegate copyCurrentBias];
  [copyCurrentBias timestamp];
  if (vabdd_f64(Current, v5) > 1800.0)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101A72D40();
    }

    v6 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      [copyCurrentBias timestamp];
      *buf = 134217984;
      v135 = vabdd_f64(Current, v7);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "bias age is %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A73388(copyCurrentBias, Current);
    }

    [(CLContextManagerAbsoluteAltimeter *)self turnOnLocationPowerAssertion:Current];
  }

  v121 = 0.0;
  v122 = 0.0;
  v120 = 0.0;
  [(CLContextManagerAbsoluteAltimeter *)self filteredElevation:&v122 absAltUncertainty:&v121 withTimestamp:&v120];
  v8 = v122;
  if (v122 != 1.79769313e308)
  {
    v19 = 0.0;
    v20 = v122;
    if (!self->_useAOPAltimeter)
    {
      [copyCurrentBias biasInMeters];
      v22 = v21;
      [copyCurrentBias weatherEstimateInMeter];
      v19 = v22 - v23;
      v20 = v122;
    }

    v122 = v19 + v20;
    goto LABEL_18;
  }

  fDataBuffers = self->super.super.fDataBuffers;
  v10 = fDataBuffers[11];
  if (v10)
  {
    v11 = (*(fDataBuffers[7] + (((v10 + fDataBuffers[10] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v10 + *(fDataBuffers + 80) - 1));
    v13 = *v11;
    v12 = v11[1];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v13[1] * 1000.0;
    v15 = sub_1000A6C00(v14, 101320.0);
    [copyCurrentBias biasInMeters];
    v17 = v16;
    [copyCurrentBias weatherEstimateInMeter];
    v122 = v17 + v15 - v18;
    v120 = *v13;
    if (v12)
    {
      sub_100008080(v12);
    }

LABEL_18:
    v24 = objc_opt_new();
    [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:v121];
    v119 = v25;
    if ([(CLBarometerCalibrationContextClient *)self->super.super._delegate inOutdoorWorkout])
    {
      [(CLContextManagerAbsoluteAltimeter *)self chooseUncertaintyDuringWorkout:&v119 withAltitude:v122 atTime:v120];
    }

    isInVisit = [(CLBarometerCalibrationContextClient *)self->super.super._delegate isInVisit];
    if (v119 > 25.0)
    {
      v27 = isInVisit;
    }

    else
    {
      v27 = 0;
    }

    if ((v27 & 1) != 0 || v119 == 500.0)
    {
      self->_uncalibratedState = 1;
      if (qword_1025D4410 != -1)
      {
        sub_101A72B28();
      }

      v30 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v135 = v122;
        v136 = 2048;
        v137 = v119;
        v138 = 2048;
        v139 = v120;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "switch to wet behavior due to large uncertainty,alt2,%f,alt2Unc,%f,timestamp,%f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v123 = 134218496;
        v124 = v122;
        v125 = 2048;
        v126 = v119;
        v127 = 2048;
        v128 = v120;
        LODWORD(v118) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 2, "switch to wet behavior due to large uncertainty,alt2,%f,alt2Unc,%f,timestamp,%f", COERCE_DOUBLE(&v123), v118, v119);
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    else
    {
      self->_uncalibratedState = 0;
      [v24 setTimestamp:v120];
      [v24 setAltitude:v122];
      [v24 setAccuracy:v119];
      [v24 setPrecision:0.5];
      [copyCurrentBias timestamp];
      if (v28 == 1.79769313e308)
      {
        statusInfo = 1;
      }

      else
      {
        statusInfo = [copyCurrentBias statusInfo];
      }

      [v24 setStatusInfo:statusInfo];
      lastAltitudeSentTimestamp = self->_lastAltitudeSentTimestamp;
      timestamp = [v24 timestamp];
      if (lastAltitudeSentTimestamp != v45)
      {
        sub_10001A3E8(timestamp, v44);
        if (((v8 == 1.79769313e308) & sub_10001CF3C()) == 0)
        {
          [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v24];
        }

        [v24 timestamp];
        self->_lastAltitudeSentTimestamp = v46;
        self->_currentStatusInfo = [v24 statusInfo];
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v47 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
        {
          [v24 altitude];
          v49 = v48;
          [v24 altitude];
          v51 = v50;
          [copyCurrentBias weatherEstimateInMeter];
          v53 = v52;
          [copyCurrentBias weatherEstimateInMeter];
          v54 = self->_lastAltitudeSentTimestamp;
          *buf = 134218752;
          v135 = v49;
          v136 = 2048;
          v137 = v51 + v53;
          v138 = 2048;
          v139 = v55;
          v140 = 2048;
          *v141 = v54;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "absolute altitude corrected %f, absolute altitude before correction %f, weather %f, timestamp %f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v77 = qword_1025D4418;
          [v24 altitude];
          v79 = v78;
          [v24 altitude];
          v81 = v80;
          [copyCurrentBias weatherEstimateInMeter];
          v83 = v82;
          [copyCurrentBias weatherEstimateInMeter];
          v84 = self->_lastAltitudeSentTimestamp;
          v123 = 134218752;
          v124 = v79;
          v125 = 2048;
          v126 = v81 + v83;
          v127 = 2048;
          v128 = v85;
          v129 = 2048;
          *v130 = v84;
          LODWORD(v118) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v77, 1, "absolute altitude corrected %f, absolute altitude before correction %f, weather %f, timestamp %f", COERCE_DOUBLE(&v123), v118, v119, v120);
          v87 = v86;
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v86);
          if (v87 != buf)
          {
            free(v87);
          }
        }

        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v56 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
        {
          [v24 altitude];
          v58 = v57;
          [v24 accuracy];
          v60 = v59;
          [v24 precision];
          v62 = v61;
          currentStatusInfo = self->_currentStatusInfo;
          v64 = self->_lastAltitudeSentTimestamp;
          [copyCurrentBias uncertaintyInMeters];
          *buf = 134219520;
          v135 = v58;
          v136 = 2048;
          v137 = v60;
          v138 = 2048;
          v139 = v62;
          v140 = 1024;
          *v141 = currentStatusInfo;
          *&v141[4] = 1024;
          *&v141[6] = 0;
          *v142 = 2048;
          *&v142[2] = v64;
          v143 = 2048;
          v144 = v65;
          _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp, %f, bias uncertainty, %f", buf, 0x40u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v88 = qword_1025D4418;
          [v24 altitude];
          v90 = v89;
          [v24 accuracy];
          v92 = v91;
          [v24 precision];
          v94 = v93;
          v95 = self->_currentStatusInfo;
          v96 = self->_lastAltitudeSentTimestamp;
          [copyCurrentBias uncertaintyInMeters];
          v123 = 134219520;
          v124 = v90;
          v125 = 2048;
          v126 = v92;
          v127 = 2048;
          v128 = v94;
          v129 = 1024;
          *v130 = v95;
          *&v130[4] = 1024;
          *&v130[6] = 0;
          *v131 = 2048;
          *&v131[2] = v96;
          v132 = 2048;
          v133 = v97;
          LODWORD(v118) = 64;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v88, 1, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp, %f, bias uncertainty, %f", COERCE_DOUBLE(&v123), v118, v119, LODWORD(v120), LODWORD(v121), v122);
          v99 = v98;
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v98);
          if (v99 != buf)
          {
            free(v99);
          }
        }

        if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v66 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [v24 altitude];
            v68 = v67;
            [v24 accuracy];
            v70 = v69;
            [v24 precision];
            v72 = v71;
            v73 = self->_currentStatusInfo;
            v74 = self->_lastAltitudeSentTimestamp;
            [copyCurrentBias uncertaintyInMeters];
            *buf = 134219520;
            v135 = v68;
            v136 = 2048;
            v137 = v70;
            v138 = 2048;
            v139 = v72;
            v140 = 1024;
            *v141 = v73;
            *&v141[4] = 1024;
            *&v141[6] = 0;
            *v142 = 2048;
            *&v142[2] = v74;
            v143 = 2048;
            v144 = v75;
            _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp, %f, bias uncertainty, %f", buf, 0x40u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101A72B28();
            }

            v106 = qword_1025D4418;
            [v24 altitude];
            v108 = v107;
            [v24 accuracy];
            v110 = v109;
            [v24 precision];
            v112 = v111;
            v113 = self->_currentStatusInfo;
            v114 = self->_lastAltitudeSentTimestamp;
            [copyCurrentBias uncertaintyInMeters];
            v123 = 134219520;
            v124 = v108;
            v125 = 2048;
            v126 = v110;
            v127 = 2048;
            v128 = v112;
            v129 = 1024;
            *v130 = v113;
            *&v130[4] = 1024;
            *&v130[6] = 0;
            *v131 = 2048;
            *&v131[2] = v114;
            v132 = 2048;
            v133 = v115;
            LODWORD(v118) = 64;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v106, 0, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp, %f, bias uncertainty, %f", COERCE_DOUBLE(&v123), v118, v119, LODWORD(v120), LODWORD(v121), v122);
            v117 = v116;
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v116);
            if (v117 != buf)
            {
              free(v117);
            }
          }

          self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    return;
  }

  v33 = fDataBuffers[35];
  if (v33)
  {
    v34 = *(fDataBuffers[31] + (((v33 + fDataBuffers[34] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v33 + *(fDataBuffers + 272) - 1);
    v35 = *v34;
    v36 = *(v34 + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101A72B28();
    }

    v37 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v38 = *v35;
      v39 = v35[1];
      v40 = *(v35 + 2);
      v41 = *(v35 + 3);
      *buf = 134219008;
      v135 = Current;
      v136 = 2048;
      v137 = v38;
      v138 = 2048;
      v139 = v39;
      v140 = 2048;
      *v141 = v40;
      *&v141[8] = 2048;
      *v142 = v41;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "#altimeter,KF pressure data unusable and no pressure data available,now,%.3lf,fTimestamp,%.3lf,fKFElevation,%.1lf,fKFPressure,%.1lf,fAbsAltUncertainty,%.1lf", buf, 0x34u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A73054(buf);
      v100 = *v35;
      v101 = v35[1];
      v102 = *(v35 + 2);
      v103 = *(v35 + 3);
      v123 = 134219008;
      v124 = Current;
      v125 = 2048;
      v126 = v100;
      v127 = 2048;
      v128 = v101;
      v129 = 2048;
      *v130 = v102;
      *&v130[8] = 2048;
      *v131 = v103;
      LODWORD(v118) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 16, "#altimeter,KF pressure data unusable and no pressure data available,now,%.3lf,fTimestamp,%.3lf,fKFElevation,%.1lf,fKFPressure,%.1lf,fAbsAltUncertainty,%.1lf", COERCE_DOUBLE(&v123), v118, v119, v120, v121);
      v105 = v104;
      sub_100152C7C("Generic", 1, 0, 0, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromBaro]", "%s\n", v104);
      if (v105 != buf)
      {
        free(v105);
      }
    }

    if (v36)
    {
      sub_100008080(v36);
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101A72B28();
    }

    v76 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v135 = Current;
      _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_FAULT, "#altimeter,KF pressure data and pressure data are unavailable,now,%.3lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A734A8();
    }
  }
}

- (void)calculateAndSendAltitudeFromLocation
{
  fDataBuffers = self->super.super.fDataBuffers;
  v4 = fDataBuffers[5] + fDataBuffers[4] - 1;
  v5 = *(*(fDataBuffers[1] + ((v4 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v4);
  v171 = v5;
  v6 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    v174 = v5;
    atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v174 = v5;
  }

  v172 = -1.0;
  v173 = 1.79769313e308;
  [CLBarometerCalibrationBiasEstimator getLocationSampleAltitudeAndUncertainty:&v174 andRefAltitude:&v173 andRefUncertainty:&v172];
  inOutdoorWorkout = [(CLBarometerCalibrationContextClient *)self->super.super._delegate inOutdoorWorkout];
  v8 = *(v171 + 100);
  if (!inOutdoorWorkout)
  {
    if (v8 == 1)
    {
      if (*(v171 + 56) <= 0.0 || vabdd_f64(*(v171 + 24), *(v171 + 48)) > 10.0)
      {
        goto LABEL_84;
      }

      v13 = objc_opt_new();
      [v13 setTimestamp:*v171];
      [v13 setAltitude:*(v171 + 48)];
      [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:vabdd_f64(*(v171 + 24), *(v171 + 48))];
      [v13 setAccuracy:?];
      [v13 setPrecision:5.0];
      [v13 setStatusInfo:2];
      lastAltitudeSentTimestamp = self->_lastAltitudeSentTimestamp;
      [v13 timestamp];
      if (lastAltitudeSentTimestamp != v34)
      {
        [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v13];
        [v13 timestamp];
        self->_lastAltitudeSentTimestamp = v35;
        self->_currentStatusInfo = 2;
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v36 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
        {
          [v13 altitude];
          v38 = v37;
          [v13 accuracy];
          v40 = v39;
          [v13 precision];
          currentStatusInfo = self->_currentStatusInfo;
          v42 = self->_lastAltitudeSentTimestamp;
          *buf = 134219264;
          v188 = v38;
          v189 = 2048;
          v190 = v40;
          v191 = 2048;
          v192 = v43;
          v193 = 1024;
          v194 = currentStatusInfo;
          v195 = 1024;
          v196 = 2;
          v197 = 2048;
          v198 = v42;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A73054(buf);
          v130 = qword_1025D4418;
          [v13 altitude];
          v132 = v131;
          [v13 accuracy];
          v134 = v133;
          [v13 precision];
          v135 = self->_currentStatusInfo;
          v136 = self->_lastAltitudeSentTimestamp;
          v175 = 134219264;
          v176 = v132;
          v177 = 2048;
          v178 = v134;
          v179 = 2048;
          v180 = v137;
          v181 = 1024;
          v182 = v135;
          v183 = 1024;
          v184 = 2;
          v185 = 2048;
          v186 = v136;
          LODWORD(v170) = 54;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v130, 1, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
          v139 = v138;
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v138);
          if (v139 != buf)
          {
            free(v139);
          }
        }

        if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v44 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [v13 altitude];
            v46 = v45;
            [v13 accuracy];
            v48 = v47;
            [v13 precision];
            v49 = self->_currentStatusInfo;
            v50 = self->_lastAltitudeSentTimestamp;
            *buf = 134219264;
            v188 = v46;
            v189 = 2048;
            v190 = v48;
            v191 = 2048;
            v192 = v51;
            v193 = 1024;
            v194 = v49;
            v195 = 1024;
            v196 = 2;
            v197 = 2048;
            v198 = v50;
            _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A73054(buf);
            v160 = qword_1025D4418;
            [v13 altitude];
            v162 = v161;
            [v13 accuracy];
            v164 = v163;
            [v13 precision];
            v165 = self->_currentStatusInfo;
            v166 = self->_lastAltitudeSentTimestamp;
            v175 = 134219264;
            v176 = v162;
            v177 = 2048;
            v178 = v164;
            v179 = 2048;
            v180 = v167;
            v181 = 1024;
            v182 = v165;
            v183 = 1024;
            v184 = 2;
            v185 = 2048;
            v186 = v166;
            LODWORD(v170) = 54;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v160, 0, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
            v169 = v168;
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v168);
            if (v169 != buf)
            {
              free(v169);
            }
          }

          self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    else
    {
      if (v8 != 11 && v8 != 4)
      {
        goto LABEL_84;
      }

      if (*(v171 + 56) > 0.0 && v172 > 0.0 && vabdd_f64(v173, *(v171 + 48)) <= 10.0)
      {
        v13 = objc_opt_new();
        [v13 setTimestamp:*v171];
        [v13 setAltitude:*(v171 + 48)];
        [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:vabdd_f64(*(v171 + 24), *(v171 + 48))];
        [v13 setAccuracy:?];
        [v13 setPrecision:5.0];
        [v13 setStatusInfo:2];
        v71 = self->_lastAltitudeSentTimestamp;
        [v13 timestamp];
        if (v71 != v72)
        {
          [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v13];
          [v13 timestamp];
          self->_lastAltitudeSentTimestamp = v73;
          self->_currentStatusInfo = 2;
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v74 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
          {
            [v13 altitude];
            v76 = v75;
            [v13 accuracy];
            v78 = v77;
            [v13 precision];
            v79 = self->_currentStatusInfo;
            v80 = self->_lastAltitudeSentTimestamp;
            *buf = 134219264;
            v188 = v76;
            v189 = 2048;
            v190 = v78;
            v191 = 2048;
            v192 = v81;
            v193 = 1024;
            v194 = v79;
            v195 = 1024;
            v196 = 3;
            v197 = 2048;
            v198 = v80;
            _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A73054(buf);
            v110 = qword_1025D4418;
            [v13 altitude];
            v112 = v111;
            [v13 accuracy];
            v114 = v113;
            [v13 precision];
            v115 = self->_currentStatusInfo;
            v116 = self->_lastAltitudeSentTimestamp;
            v175 = 134219264;
            v176 = v112;
            v177 = 2048;
            v178 = v114;
            v179 = 2048;
            v180 = v117;
            v181 = 1024;
            v182 = v115;
            v183 = 1024;
            v184 = 3;
            v185 = 2048;
            v186 = v116;
            LODWORD(v170) = 54;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v110, 1, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
            v119 = v118;
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v118);
            if (v119 != buf)
            {
              free(v119);
            }
          }

          if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
          {
            if (qword_1025D4410 != -1)
            {
              sub_101A72B28();
            }

            v82 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
            {
              [v13 altitude];
              v84 = v83;
              [v13 accuracy];
              v86 = v85;
              [v13 precision];
              v87 = self->_currentStatusInfo;
              v88 = self->_lastAltitudeSentTimestamp;
              *buf = 134219264;
              v188 = v84;
              v189 = 2048;
              v190 = v86;
              v191 = 2048;
              v192 = v89;
              v193 = 1024;
              v194 = v87;
              v195 = 1024;
              v196 = 3;
              v197 = 2048;
              v198 = v88;
              _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A73054(buf);
              v150 = qword_1025D4418;
              [v13 altitude];
              v152 = v151;
              [v13 accuracy];
              v154 = v153;
              [v13 precision];
              v155 = self->_currentStatusInfo;
              v156 = self->_lastAltitudeSentTimestamp;
              v175 = 134219264;
              v176 = v152;
              v177 = 2048;
              v178 = v154;
              v179 = 2048;
              v180 = v157;
              v181 = 1024;
              v182 = v155;
              v183 = 1024;
              v184 = 3;
              v185 = 2048;
              v186 = v156;
              LODWORD(v170) = 54;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v150, 0, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
              v159 = v158;
              sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v158);
              if (v159 != buf)
              {
                free(v159);
              }
            }

            self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
          }
        }
      }

      else
      {
        if (v172 <= 0.0)
        {
          goto LABEL_84;
        }

        v13 = objc_opt_new();
        [v13 setTimestamp:*v171];
        [v13 setAltitude:*(v171 + 24)];
        [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:*(v171 + 40)];
        [v13 setAccuracy:?];
        [v13 setPrecision:5.0];
        [v13 setStatusInfo:2];
        v14 = self->_lastAltitudeSentTimestamp;
        [v13 timestamp];
        if (v14 != v15)
        {
          [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v13];
          [v13 timestamp];
          self->_lastAltitudeSentTimestamp = v16;
          self->_currentStatusInfo = 2;
          if (qword_1025D4410 != -1)
          {
            sub_101A72B28();
          }

          v17 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
          {
            [v13 altitude];
            v19 = v18;
            [v13 accuracy];
            v21 = v20;
            [v13 precision];
            v22 = self->_currentStatusInfo;
            v23 = self->_lastAltitudeSentTimestamp;
            *buf = 134219264;
            v188 = v19;
            v189 = 2048;
            v190 = v21;
            v191 = 2048;
            v192 = v24;
            v193 = 1024;
            v194 = v22;
            v195 = 1024;
            v196 = 4;
            v197 = 2048;
            v198 = v23;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A73054(buf);
            v90 = qword_1025D4418;
            [v13 altitude];
            v92 = v91;
            [v13 accuracy];
            v94 = v93;
            [v13 precision];
            v95 = self->_currentStatusInfo;
            v96 = self->_lastAltitudeSentTimestamp;
            v175 = 134219264;
            v176 = v92;
            v177 = 2048;
            v178 = v94;
            v179 = 2048;
            v180 = v97;
            v181 = 1024;
            v182 = v95;
            v183 = 1024;
            v184 = 4;
            v185 = 2048;
            v186 = v96;
            LODWORD(v170) = 54;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v90, 1, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
            v99 = v98;
            sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v98);
            if (v99 != buf)
            {
              free(v99);
            }
          }

          if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
          {
            if (qword_1025D4410 != -1)
            {
              sub_101A72B28();
            }

            v25 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
            {
              [v13 altitude];
              v27 = v26;
              [v13 accuracy];
              v29 = v28;
              [v13 precision];
              v30 = self->_currentStatusInfo;
              v31 = self->_lastAltitudeSentTimestamp;
              *buf = 134219264;
              v188 = v27;
              v189 = 2048;
              v190 = v29;
              v191 = 2048;
              v192 = v32;
              v193 = 1024;
              v194 = v30;
              v195 = 1024;
              v196 = 4;
              v197 = 2048;
              v198 = v31;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A73054(buf);
              v120 = qword_1025D4418;
              [v13 altitude];
              v122 = v121;
              [v13 accuracy];
              v124 = v123;
              [v13 precision];
              v125 = self->_currentStatusInfo;
              v126 = self->_lastAltitudeSentTimestamp;
              v175 = 134219264;
              v176 = v122;
              v177 = 2048;
              v178 = v124;
              v179 = 2048;
              v180 = v127;
              v181 = 1024;
              v182 = v125;
              v183 = 1024;
              v184 = 4;
              v185 = 2048;
              v186 = v126;
              LODWORD(v170) = 54;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v120, 0, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
              v129 = v128;
              sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v128);
              if (v129 != buf)
              {
                free(v129);
              }
            }

            self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
          }
        }
      }
    }

LABEL_83:

    goto LABEL_84;
  }

  if (v8 == 1 && *(v171 + 56) > 0.0 && v172 > 0.0 && vabdd_f64(v173, *(v171 + 48)) <= 10.0)
  {
    v13 = objc_opt_new();
    [v13 setTimestamp:*v171];
    [v13 setAltitude:*(v171 + 48)];
    [(CLContextManagerAbsoluteAltimeter *)self capAccuracy:vabdd_f64(*(v171 + 24), *(v171 + 48))];
    [v13 setAccuracy:?];
    [v13 setPrecision:5.0];
    [v13 setStatusInfo:2];
    v52 = self->_lastAltitudeSentTimestamp;
    [v13 timestamp];
    if (v52 != v53)
    {
      [(CLBarometerCalibrationContextClient *)self->super.super._delegate absoluteAltitudeUpdate:v13];
      [v13 timestamp];
      self->_lastAltitudeSentTimestamp = v54;
      self->_currentStatusInfo = 2;
      if (qword_1025D4410 != -1)
      {
        sub_101A72B28();
      }

      v55 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
      {
        [v13 altitude];
        v57 = v56;
        [v13 accuracy];
        v59 = v58;
        [v13 precision];
        v60 = self->_currentStatusInfo;
        v61 = self->_lastAltitudeSentTimestamp;
        *buf = 134219264;
        v188 = v57;
        v189 = 2048;
        v190 = v59;
        v191 = 2048;
        v192 = v62;
        v193 = 1024;
        v194 = v60;
        v195 = 1024;
        v196 = 1;
        v197 = 2048;
        v198 = v61;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_INFO, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A73054(buf);
        v100 = qword_1025D4418;
        [v13 altitude];
        v102 = v101;
        [v13 accuracy];
        v104 = v103;
        [v13 precision];
        v105 = self->_currentStatusInfo;
        v106 = self->_lastAltitudeSentTimestamp;
        v175 = 134219264;
        v176 = v102;
        v177 = 2048;
        v178 = v104;
        v179 = 2048;
        v180 = v107;
        v181 = 1024;
        v182 = v105;
        v183 = 1024;
        v184 = 1;
        v185 = 2048;
        v186 = v106;
        LODWORD(v170) = 54;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v100, 1, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
        v109 = v108;
        sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v108);
        if (v109 != buf)
        {
          free(v109);
        }
      }

      if (vabdd_f64(self->_lastDefaultLevelLogTimestamp, CFAbsoluteTimeGetCurrent()) > 30.0)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101A72B28();
        }

        v63 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          [v13 altitude];
          v65 = v64;
          [v13 accuracy];
          v67 = v66;
          [v13 precision];
          v68 = self->_currentStatusInfo;
          v69 = self->_lastAltitudeSentTimestamp;
          *buf = 134219264;
          v188 = v65;
          v189 = 2048;
          v190 = v67;
          v191 = 2048;
          v192 = v70;
          v193 = 1024;
          v194 = v68;
          v195 = 1024;
          v196 = 1;
          v197 = 2048;
          v198 = v69;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", buf, 0x36u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A73054(buf);
          v140 = qword_1025D4418;
          [v13 altitude];
          v142 = v141;
          [v13 accuracy];
          v144 = v143;
          [v13 precision];
          v145 = self->_currentStatusInfo;
          v146 = self->_lastAltitudeSentTimestamp;
          v175 = 134219264;
          v176 = v142;
          v177 = 2048;
          v178 = v144;
          v179 = 2048;
          v180 = v147;
          v181 = 1024;
          v182 = v145;
          v183 = 1024;
          v184 = 1;
          v185 = 2048;
          v186 = v146;
          LODWORD(v170) = 54;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v140, 0, "absolute altitude sent to clients %f, accuracy %f, precision %f, status %d, altitude source %d, timestamp %f", COERCE_DOUBLE(&v175), v170, *&v171, DWORD2(v171), LODWORD(v172), v173);
          v149 = v148;
          sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v148);
          if (v149 != buf)
          {
            free(v149);
          }
        }

        self->_lastDefaultLevelLogTimestamp = CFAbsoluteTimeGetCurrent();
      }
    }

    goto LABEL_83;
  }

  if (qword_1025D4410 != -1)
  {
    sub_101A72B28();
  }

  v9 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "GPS too far from DEM, not updating altitude", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A73054(buf);
    LOWORD(v175) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4418, 1, "GPS too far from DEM, not updating altitude", &v175, 2);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "[CLContextManagerAbsoluteAltimeter calculateAndSendAltitudeFromLocation]", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_84:
  if (*(&v174 + 1))
  {
    sub_100008080(*(&v174 + 1));
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

@end