@interface CLSimulationManager
- (CLSimulationManager)init;
- (CLSimulationXPCServerInterface)daemonProxy;
- (id)availableScenarios;
- (id)scenariosPath;
- (void)appendSimulatedLocation:(id)location;
- (void)clearSimulatedCells;
- (void)clearSimulatedLocations;
- (void)flush;
- (void)getFencesForBundleID:(id)d withHandler:(id)handler;
- (void)loadScenarioFromURL:(id)l;
- (void)selectScenario:(id)scenario;
- (void)setLocationDeliveryBehavior:(unsigned __int8)behavior;
- (void)setLocationDistance:(double)distance;
- (void)setLocationInterval:(double)interval;
- (void)setLocationRepeatBehavior:(unsigned __int8)behavior;
- (void)setLocationSpeed:(double)speed;
- (void)setSimulatedCell:(id)cell;
- (void)setSimulatedCellRegistrationStatus:(BOOL)status;
- (void)setSimulatedWifiPower:(BOOL)power;
- (void)setWifiScanResults:(id)results;
- (void)simulateBeaconWithProximityUUID:(id)d major:(int64_t)major minor:(int64_t)minor eventType:(unsigned __int8)type;
- (void)simulateFenceWithBundleID:(id)d andFenceID:(id)iD eventType:(unsigned __int8)type atLocation:(id)location;
- (void)simulateSignificantLocationChange:(id)change;
- (void)simulateVisit:(id)visit;
- (void)startCellSimulation;
- (void)startLocationSimulation;
- (void)startWifiSimulation;
- (void)stopCellSimulation;
- (void)stopLocationSimulation;
- (void)stopWifiSimulation;
@end

@implementation CLSimulationManager

- (CLSimulationManager)init
{
  v8.receiver = self;
  v8.super_class = CLSimulationManager;
  result = [(CLSimulationManager *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_locationDistance = _Q0;
    result->_locationSpeed = -1.0;
    *&result->_locationRepeatBehavior = 0;
  }

  return result;
}

- (id)scenariosPath
{
  v2 = MEMORY[0x1E696AEC0];
  sub_19B953A04(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = objc_msgSend_stringWithUTF8String_(v2, v3, &__p, v4);
  }

  else
  {
    v5 = objc_msgSend_stringWithUTF8String_(v2, v3, __p.__r_.__value_.__l.__data_, v4);
  }

  v8 = objc_msgSend_stringByAppendingPathComponent_(v5, v6, @"SimulationScenarios", v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

- (id)availableScenarios
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2, v3);
  v9 = objc_msgSend_scenariosPath(self, v6, v7, v8);
  v11 = objc_msgSend_contentsOfDirectoryAtPath_error_(v5, v10, v9, 0);
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v29, v33, 16);
    if (v18)
    {
      v22 = v18;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v15);
          }

          v25 = objc_msgSend_stringByDeletingPathExtension(*(*(&v29 + 1) + 8 * i), v19, v20, v21);
          objc_msgSend_addObject_(v16, v26, v25, v27);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v19, &v29, v33, 16);
      }

      while (v22);
    }
  }

  else
  {
    NSLog(&cfstr_CouldnTGetList.isa);
    return 0;
  }

  return v16;
}

- (void)selectScenario:(id)scenario
{
  v6 = objc_msgSend_scenariosPath(self, a2, scenario, v3);
  v9 = objc_msgSend_stringByAppendingPathExtension_(scenario, v7, @"plist", v8);
  v12 = objc_msgSend_stringByAppendingPathComponent_(v6, v10, v9, v11);
  v15 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v13, v12, v14);

  MEMORY[0x1EEE66B58](self, sel_loadScenarioFromURL_, v15, v16);
}

- (void)loadScenarioFromURL:(id)l
{
  if (objc_msgSend_isFileURL(l, a2, l, v3))
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7, v8);
    v13 = objc_msgSend_path(l, v10, v11, v12);
    if (objc_msgSend_fileExistsAtPath_(v9, v14, v13, v15))
    {
      v19 = objc_msgSend_pathExtension(l, v16, v17, v18);
      if (objc_msgSend_isEqualToString_(v19, v20, @"plist", v21))
      {
        v25 = objc_msgSend_daemonProxy(self, v22, v23, v24);

        MEMORY[0x1EEE66B58](v25, sel_setSimulationScenario_, l, v26);
      }

      else
      {
        NSLog(&cfstr_SelectedLocati_1.isa);
      }
    }

    else
    {
      NSLog(&cfstr_SelectedLocati_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_SelectedLocati.isa);
  }
}

- (void)setLocationDeliveryBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  self->_locationDeliveryBehavior = behavior;
  v5 = objc_msgSend_daemonProxy(self, a2, behavior, v3);

  MEMORY[0x1EEE66B58](v5, sel_setLocationDeliveryBehavior_, behaviorCopy, v6);
}

- (void)setLocationDistance:(double)distance
{
  self->_locationDistance = distance;
  v5 = objc_msgSend_daemonProxy(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](v5, sel_setIntermediateLocationDistance_, v6, v7);
}

- (void)setLocationInterval:(double)interval
{
  self->_locationInterval = interval;
  v5 = objc_msgSend_daemonProxy(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](v5, sel_setLocationInterval_, v6, v7);
}

- (void)setLocationSpeed:(double)speed
{
  self->_locationSpeed = speed;
  v5 = objc_msgSend_daemonProxy(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](v5, sel_setLocationTravellingSpeed_, v6, v7);
}

- (void)setLocationRepeatBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  self->_locationRepeatBehavior = behavior;
  v5 = objc_msgSend_daemonProxy(self, a2, behavior, v3);

  MEMORY[0x1EEE66B58](v5, sel_setLocationRepeatBehavior_, behaviorCopy, v6);
}

- (void)clearSimulatedLocations
{
  v4 = objc_msgSend_daemonProxy(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_clearSimulatedLocations, v5, v6);
}

- (void)appendSimulatedLocation:(id)location
{
  if (location)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      memset(v30, 0, 28);
      v28 = 0u;
      v26 = 0u;
      memset(v27, 0, sizeof(v27));
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      objc_msgSend_clientLocation(location, v5, v6, v7);
      LODWORD(v28) = 1;
      if (*(v27 + 12) <= 0.0)
      {
        *(v27 + 12) = CFAbsoluteTimeGetCurrent();
      }

      if (*(&v27[1] + 1) == 0.0)
      {
        *(&v27[1] + 1) = 0xBFF0000000000000;
      }

      if (*(&v24 + 4) == 0.0)
      {
        *(&v24 + 4) = 0x4014000000000000;
      }

      v8 = objc_alloc(MEMORY[0x1E6985C40]);
      v21[6] = v28;
      v21[7] = v29;
      v22[0] = v30[0];
      *(v22 + 12) = *(v30 + 12);
      v21[2] = v25;
      v21[3] = v26;
      v21[4] = v27[0];
      v21[5] = v27[1];
      v21[0] = v23;
      v21[1] = v24;
      v11 = objc_msgSend_initWithClientLocation_(v8, v9, v21, v10);
      v15 = objc_msgSend_daemonProxy(self, v12, v13, v14);
      v18 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v16, v11, v17);
      objc_msgSend_appendSimulatedLocations_(v15, v19, v18, v20);
    }

    else
    {
      NSLog(&cfstr_ClsimulationOb.isa);
    }
  }
}

- (void)startLocationSimulation
{
  v4 = objc_msgSend_daemonProxy(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_startLocationSimulation, v5, v6);
}

- (void)stopLocationSimulation
{
  v4 = objc_msgSend_daemonProxy(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_stopLocationSimulation, v5, v6);
}

- (void)simulateVisit:(id)visit
{
  v5 = objc_msgSend_daemonProxy(self, a2, visit, v3);

  MEMORY[0x1EEE66B58](v5, sel_simulateVisit_, visit, v6);
}

- (void)simulateSignificantLocationChange:(id)change
{
  v5 = objc_msgSend_daemonProxy(self, a2, change, v3);

  MEMORY[0x1EEE66B58](v5, sel_simulateSignificantLocationChange_, change, v6);
}

- (void)getFencesForBundleID:(id)d withHandler:(id)handler
{
  v6 = objc_msgSend_daemonProxy(self, a2, d, handler);

  MEMORY[0x1EEE66B58](v6, sel_getFencesForBundleID_withReply_, d, handler);
}

- (void)simulateFenceWithBundleID:(id)d andFenceID:(id)iD eventType:(unsigned __int8)type atLocation:(id)location
{
  v8 = objc_msgSend_daemonProxy(self, a2, d, iD);

  MEMORY[0x1EEE66B58](v8, sel_simulateFenceWithBundleID_andFenceID_eventType_atLocation_, d, iD);
}

- (void)simulateBeaconWithProximityUUID:(id)d major:(int64_t)major minor:(int64_t)minor eventType:(unsigned __int8)type
{
  v8 = objc_msgSend_daemonProxy(self, a2, d, major);

  MEMORY[0x1EEE66B58](v8, sel_simulateBeaconWithProximityUUID_major_minor_eventType_, d, major);
}

- (void)clearSimulatedCells
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v5, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager clearSimulatedCells]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

- (void)setSimulatedCell:(id)cell
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v6[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v6, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setSimulatedCell:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

- (void)startCellSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v5, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager startCellSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

- (void)stopCellSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v5, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager stopCellSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

- (void)setSimulatedCellRegistrationStatus:(BOOL)status
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v6[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v6, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setSimulatedCellRegistrationStatus:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

- (void)setWifiScanResults:(id)results
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v6[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v6, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setWifiScanResults:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

- (void)startWifiSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v5, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager startWifiSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

- (void)stopWifiSimulation
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v5, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager stopWifiSimulation]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

- (void)setSimulatedWifiPower:(BOOL)power
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v6[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v6, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager setSimulatedWifiPower:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

- (void)flush
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
  }

  v2 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "this SPI is obsolete and will be removed in the future", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DA08);
    }

    v5[0] = 0;
    v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "this SPI is obsolete and will be removed in the future", v5, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLSimulationManager flush]", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }
}

- (CLSimulationXPCServerInterface)daemonProxy
{
  v58 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v3 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v56 = 2082;
    *&v56[2] = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:getDaemonProxy called}", buf, 0x12u);
  }

  if (!objc_msgSend_connection(self, v4, v5, v6))
  {
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v10 = qword_1EAFE46F0;
    if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v56 = 2082;
      *&v56[2] = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:no existing connection, trying to get one}", buf, 0x12u);
    }

    v11 = objc_alloc(MEMORY[0x1E696B0B8]);
    v13 = objc_msgSend_initWithMachServiceName_options_(v11, v12, @"com.apple.locationd.simulation", 4096);
    objc_msgSend_setConnection_(self, v14, v13, v15);
    v19 = objc_msgSend_connection(self, v16, v17, v18);
    v22 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v20, &unk_1F0EAC988, v21);
    objc_msgSend_setRemoteObjectInterface_(v19, v23, v22, v24);
    v28 = objc_msgSend_connection(self, v25, v26, v27);
    objc_msgSend_setInterruptionHandler_(v28, v29, &unk_1F0E6D9C8, v30);
    *buf = 0;
    *v56 = buf;
    *&v56[8] = 0x3052000000;
    *&v56[16] = sub_19B98C5C4;
    *&v56[24] = sub_19B98C5D4;
    selfCopy = self;
    v34 = objc_msgSend_connection(self, v31, v32, v33);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = sub_19B98C5E0;
    v54[3] = &unk_1E753CDF8;
    v54[4] = buf;
    objc_msgSend_setInvalidationHandler_(v34, v35, v54, v36);
    v40 = objc_msgSend_connection(self, v37, v38, v39);
    objc_msgSend_resume(v40, v41, v42, v43);
    _Block_object_dispose(buf, 8);
  }

  v44 = objc_msgSend_connection(self, v7, v8, v9);
  v47 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v44, v45, &unk_1F0E6D9E8, v46);
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v48 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    v52 = objc_msgSend_connection(self, v49, v50, v51);
    *buf = 68289538;
    *&buf[4] = 0;
    *v56 = 2082;
    *&v56[2] = "";
    *&v56[10] = 2114;
    *&v56[12] = v47;
    *&v56[20] = 2114;
    *&v56[22] = v52;
    _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Do we have a proxy?, proxy:%{public, location:escape_only}@, connection:%{public, location:escape_only}@}", buf, 0x26u);
  }

  return v47;
}

@end