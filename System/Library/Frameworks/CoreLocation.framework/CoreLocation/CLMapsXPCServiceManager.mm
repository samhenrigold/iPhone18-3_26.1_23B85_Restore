@interface CLMapsXPCServiceManager
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (void)cancelRoadDataRequest;
- (void)clearMemoryAndExitHelperProcessCleanly;
- (void)collectMapDataOfType:(int64_t)type aroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles callSynchronously:(BOOL)self0 WithReply:(id)self1;
- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9;
- (void)createConnection;
- (void)dealloc;
- (void)onTimerFire:(id)fire;
- (void)releaseMapHelperServiceOSTransaction;
- (void)stopConstructRouteFromLocation;
- (void)updateTimer;
@end

@implementation CLMapsXPCServiceManager

+ (id)sharedInstance
{
  v9 = *MEMORY[0x1E69E9840];
  if (!qword_1ED519168)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B934A5C;
    block[3] = &unk_1E753CC90;
    block[4] = self;
    if (qword_1ED519170 != -1)
    {
      dispatch_once(&qword_1ED519170, block);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,XPCManager allocate", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v6 = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,XPCManager allocate", &v6, 2);
      sub_19B885924("Generic", 1, 0, 2, "+[CLMapsXPCServiceManager sharedInstance]", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  return qword_1ED519168;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_sharedInstance(self, a2, zone, v3);

  return v4;
}

- (void)createConnection
{
  v44 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection)
  {

    self->_connection = 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  v7 = objc_msgSend_initWithServiceName_(v4, v5, @"com.apple.corelocation.maphelperservice", v6);
  self->_connection = v7;
  if (v7)
  {
    self->fInactivityTimer = 0;
    self->fTimerUpdateMachContTime = -1.0;
    v10 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v8, &unk_1F0E9D0B0, v9);
    objc_msgSend_setRemoteObjectInterface_(self->_connection, v11, v10, v12);
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v13, v18, v14, v19, v15, v16, v17, 0);
    v24 = objc_msgSend_remoteObjectInterface(self->_connection, v21, v22, v23);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v24, v25, v20, sel_fetchGEORoadDataAroundCoordinate_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_withReply_, 0, 1);
    v29 = objc_msgSend_remoteObjectInterface(self->_connection, v26, v27, v28);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v29, v30, v20, sel_fetchGEOBuildingDataAroundCoordinate_inRadius_tileSetStyle_allowNetwork_preferCachedTiles_clearTiles_withReply_, 0, 1);
    v34 = objc_msgSend_remoteObjectInterface(self->_connection, v31, v32, v33);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v34, v35, v20, sel_constructRouteFromLocation_roadID_clRoadID_projection_toLocation_toRoadID_toCLRoadID_toProjection_maxRouteLength_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery_withReply_, 0, 1);
    objc_msgSend_resume(self->_connection, v36, v37, v38);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v39 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,createConnection", buf, 2u);
  }

  v40 = sub_19B87DD40();
  if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v42[0] = 0;
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,createConnection", v42, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager createConnection]", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,dealloc", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v22[0] = 0;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,dealloc", v22, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager dealloc]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  objc_msgSend_releaseMapHelperServiceOSTransaction(self, v5, v6, v7);
  v12 = objc_msgSend_connection(self, v9, v10, v11);
  objc_msgSend_invalidate(v12, v13, v14, v15);

  objc_msgSend_setConnection_(self, v19, 0, v20);
  v21.receiver = self;
  v21.super_class = CLMapsXPCServiceManager;
  [(CLMapsXPCServiceManager *)&v21 dealloc];
}

- (void)collectMapDataOfType:(int64_t)type aroundCoordinate:(CLLocationCoordinate2D)coordinate inRadius:(double)radius allowNetwork:(BOOL)network preferCachedTiles:(BOOL)tiles isPedestrianOrCycling:(BOOL)cycling clearTiles:(BOOL)clearTiles callSynchronously:(BOOL)self0 WithReply:(id)self1
{
  synchronouslyCopy = synchronously;
  clearTilesCopy = clearTiles;
  cyclingCopy = cycling;
  tilesCopy = tiles;
  networkCopy = network;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  objc_msgSend_updateTimer(self, a2, type, network);
  connection = self->_connection;
  if (synchronouslyCopy)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_19B935280;
    v38[3] = &unk_1E753CF88;
    v38[4] = reply;
    v24 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(connection, v21, v38, v22);
  }

  else
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_19B9354D8;
    v37[3] = &unk_1E753CF88;
    v37[4] = reply;
    v24 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, v21, v37, v22);
  }

  v25 = v24;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v26 = mach_continuous_time();
  v36[3] = sub_19B994BF4(v26);
  if (type == 2)
  {
    v29 = &v31;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v28 = 1;
    v30 = sub_19B935D08;
    goto LABEL_10;
  }

  if (type == 1)
  {
    v28 = 0;
    v29 = v33;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v30 = sub_19B935A1C;
LABEL_10:
    *(v29 + 2) = v30;
    *(v29 + 3) = &unk_1E753DC68;
    v29[6] = latitude;
    v29[7] = longitude;
    v29[8] = radius;
    *(v29 + 72) = synchronouslyCopy;
    *(v29 + 4) = reply;
    *(v29 + 5) = v36;
    objc_msgSend_fetchGEOBuildingDataAroundCoordinate_inRadius_tileSetStyle_allowNetwork_preferCachedTiles_clearTiles_withReply_(v25, v27, v28, networkCopy, tilesCopy, clearTilesCopy, latitude, longitude, radius, v31, v32);
    goto LABEL_12;
  }

  if (type)
  {
    (*(reply + 2))(reply, 0);
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_19B935730;
    v34[3] = &unk_1E753DC68;
    *&v34[6] = latitude;
    *&v34[7] = longitude;
    *&v34[8] = radius;
    v35 = synchronouslyCopy;
    v34[4] = reply;
    v34[5] = v36;
    objc_msgSend_fetchGEORoadDataAroundCoordinate_inRadius_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_withReply_(v25, v27, networkCopy, tilesCopy, cyclingCopy, clearTilesCopy, v34, latitude, longitude, radius);
  }

LABEL_12:
  _Block_object_dispose(v36, 8);
}

- (void)clearMemoryAndExitHelperProcessCleanly
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED519168)
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3052000000;
    v16 = sub_19B936274;
    v17 = sub_19B936284;
    v18 = 0;
    connection = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B936290;
    v11[3] = &unk_1E753DC90;
    v11[4] = buf;
    v4 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, a2, v11, v2);
    if (!*(v14 + 5))
    {
      objc_msgSend_clearMemoryAndExitCleanly(v4, v5, v6, v7);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v8 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,clearMemoryAndExitHelperProcessCleanly,sharedInstance is nil", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v12[0] = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,clearMemoryAndExitHelperProcessCleanly,sharedInstance is nil", v12, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager clearMemoryAndExitHelperProcessCleanly]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

- (void)updateTimer
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->fTimerUpdateMachContTime <= 0.0 || (v3 = mach_continuous_time(), vabdd_f64(sub_19B994BF4(v3), self->fTimerUpdateMachContTime) >= 60.0))
  {
    v4 = mach_continuous_time();
    self->fTimerUpdateMachContTime = sub_19B994BF4(v4);
    fInactivityTimer = self->fInactivityTimer;
    if (fInactivityTimer)
    {
      objc_msgSend_invalidate(fInactivityTimer, v5, v6, v7);
      self->fInactivityTimer = 0;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v9 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      fTimerUpdateMachContTime = self->fTimerUpdateMachContTime;
      *buf = 134349056;
      v18 = fTimerUpdateMachContTime;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,Inactivity timer updated in XPC manager,updateTime,%{public}.2lf", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v12 = self->fTimerUpdateMachContTime;
      v15 = 134349056;
      v16 = v12;
      v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,Inactivity timer updated in XPC manager,updateTime,%{public}.2lf", &v15, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager updateTimer]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B936740;
    block[3] = &unk_1E753CC90;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)onTimerFire:(id)fire
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,onTimerFire", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v10[0] = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,onTimerFire", v10, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager onTimerFire:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  objc_msgSend_releaseMapHelperServiceOSTransaction(self, v6, v7, v8);
}

- (void)releaseMapHelperServiceOSTransaction
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
  }

  v3 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
  {
    fTimerUpdateMachContTime = self->fTimerUpdateMachContTime;
    LODWORD(buf) = 134349056;
    *(&buf + 4) = fTimerUpdateMachContTime;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,releaseMapHelperServiceOSTransaction,lastTimerUpdateTime,%{public}.2lf", &buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v9 = self->fTimerUpdateMachContTime;
    v21 = 134349056;
    v22 = v9;
    v10 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,releaseMapHelperServiceOSTransaction,lastTimerUpdateTime,%{public}.2lf", &v21, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager releaseMapHelperServiceOSTransaction]", "CoreLocation: %s\n", v10);
    if (v10 != &buf)
    {
      free(v10);
    }
  }

  fInactivityTimer = self->fInactivityTimer;
  if (fInactivityTimer)
  {
    objc_msgSend_invalidate(fInactivityTimer, v6, v7, v8);
    self->fInactivityTimer = 0;
    self->fTimerUpdateMachContTime = -1.0;
  }

  if (qword_1ED519168)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3052000000;
    v25 = sub_19B936274;
    v26 = sub_19B936284;
    v27 = 0;
    connection = self->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_19B936D48;
    v20[3] = &unk_1E753DC90;
    v20[4] = &buf;
    v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, v6, v20, v8);
    if (!*(*(&buf + 1) + 40))
    {
      objc_msgSend_releaseOSTransaction(v13, v14, v15, v16);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v17 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,clearMemoryAndExitHelperProcessCleanly,sharedInstance is nil", &buf, 2u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      LOWORD(v21) = 0;
      v19 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,clearMemoryAndExitHelperProcessCleanly,sharedInstance is nil", &v21, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager releaseMapHelperServiceOSTransaction]", "CoreLocation: %s\n", v19);
      if (v19 != &buf)
      {
        free(v19);
      }
    }
  }
}

- (void)cancelRoadDataRequest
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED519168)
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3052000000;
    v16 = sub_19B936274;
    v17 = sub_19B936284;
    v18 = 0;
    connection = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B93720C;
    v11[3] = &unk_1E753DC90;
    v11[4] = buf;
    v4 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, a2, v11, v2);
    if (!*(v14 + 5))
    {
      objc_msgSend_cancelRoadDataRequest(v4, v5, v6, v7);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v8 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,cancelRoadDataRequest,sharedInstance is nil", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v12[0] = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,cancelRoadDataRequest,sharedInstance is nil", v12, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager cancelRoadDataRequest]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

- (void)constructRouteFromLocation:(CLLocationCoordinate2D)location roadID:(unint64_t)d clRoadID:(unint64_t)iD projection:(double)projection toLocation:(CLLocationCoordinate2D)toLocation toRoadID:(unint64_t)roadID toCLRoadID:(unint64_t)lRoadID toProjection:(double)self0 maxRouteLength:(double)self1 allowNetwork:(BOOL)self2 preferCachedTiles:(BOOL)self3 isPedestrianOrCycling:(BOOL)self4 clearTiles:(BOOL)self5 iOSTime:(double)self6 familiarityData:(id)self7 useMapsAPIForIntersectionQuery:(BOOL)self8 withReply:(id)self9
{
  networkCopy = network;
  tilesCopy = tiles;
  longitude = toLocation.longitude;
  latitude = toLocation.latitude;
  v27 = location.longitude;
  v28 = location.latitude;
  objc_msgSend_updateTimer(self, a2, d, iD);
  connection = self->_connection;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_19B937634;
  v45[3] = &unk_1E753CF88;
  v45[4] = reply;
  v33 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(connection, v31, v45, v32);
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v34 = mach_continuous_time();
  v44[3] = sub_19B994BF4(v34);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_19B93788C;
  v42[3] = &unk_1E753DCB8;
  queryCopy = query;
  v42[4] = reply;
  v42[5] = v44;
  HIBYTE(v36) = clearTiles;
  LOBYTE(v36) = cycling;
  objc_msgSend_constructRouteFromLocation_roadID_clRoadID_projection_toLocation_toRoadID_toCLRoadID_toProjection_maxRouteLength_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery_withReply_(v33, v35, d, iD, roadID, lRoadID, networkCopy, tilesCopy, v28, v27, projection, latitude, longitude, toProjection, length, time, v36, data, query, v42);
  _Block_object_dispose(v44, 8);
}

- (void)stopConstructRouteFromLocation
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED519168)
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3052000000;
    v16 = sub_19B936274;
    v17 = sub_19B936284;
    v18 = 0;
    connection = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B937DA0;
    v11[3] = &unk_1E753DC90;
    v11[4] = buf;
    v4 = objc_msgSend_remoteObjectProxyWithErrorHandler_(connection, a2, v11, v2);
    if (!*(v14 + 5))
    {
      objc_msgSend_stopConstructRouteFromLocation(v4, v5, v6, v7);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
    }

    v8 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLMM,CLTSP,MapHelperService,stopConstructRouteFromLocation,sharedInstance is nil", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6C518);
      }

      v12[0] = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLMM,CLTSP,MapHelperService,stopConstructRouteFromLocation,sharedInstance is nil", v12, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLMapsXPCServiceManager stopConstructRouteFromLocation]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }
}

@end