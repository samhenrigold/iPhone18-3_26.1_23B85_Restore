@interface MTRDiagnosticLogsDownloader
- (MTRDiagnosticLogsDownloader)init;
- (void)_abortDownloadsForController:(id)controller nodeID:(id)d;
- (void)dealloc;
- (void)downloadLogFromNodeWithID:(id)d controller:(id)controller type:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)handleBDXTransferSessionBeginForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d completion:(id)completion abortHandler:(id)handler;
- (void)handleBDXTransferSessionDataForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d data:(id)data completion:(id)completion;
- (void)handleBDXTransferSessionEndForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d error:(id)error;
@end

@implementation MTRDiagnosticLogsDownloader

- (MTRDiagnosticLogsDownloader)init
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 493);
  v7.receiver = self;
  v7.super_class = MTRDiagnosticLogsDownloader;
  v3 = [(MTRDiagnosticLogsDownloader *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MTRDownloads);
    downloads = v3->_downloads;
    v3->_downloads = v4;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  bridge = self->_bridge;
  if (bridge)
  {
    (*(bridge->var0 + 1))(bridge, a2);
    self->_bridge = 0;
  }

  downloads = self->_downloads;
  self->_downloads = 0;

  v5.receiver = self;
  v5.super_class = MTRDiagnosticLogsDownloader;
  [(MTRDiagnosticLogsDownloader *)&v5 dealloc];
}

- (void)downloadLogFromNodeWithID:(id)d controller:(id)controller type:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  queueCopy = queue;
  completionCopy = completion;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 527);
  [(MTRDiagnosticLogsDownloader *)self _abortDownloadsForController:controllerCopy nodeID:dCopy];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_238EAD7BC;
  v41[3] = &unk_278A72B60;
  v17 = controllerCopy;
  v42 = v17;
  selfCopy = self;
  v35 = MEMORY[0x23EE78590](v41);
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:objc_msgSend_fabricIndex(v17)];
  v18 = [MTRDownloads add:"add:fabricIndex:nodeID:timeout:queue:completion:done:" fabricIndex:type nodeID:timeout timeout:? queue:? completion:? done:?];
  v19 = v18;
  if (v18)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_238EAD908;
    v37[3] = &unk_278A72BB0;
    v20 = v18;
    v38 = v20;
    v31 = MEMORY[0x23EE78590](v37);
    v33 = [MTRDevice deviceWithNodeID:dCopy controller:v17];
    v32 = [(MTRGenericCluster *)[MTRClusterDiagnosticLogs alloc] initWithDevice:v33 endpointID:&unk_284C3E570 queue:queueCopy];
    v21 = objc_alloc_init(MTRDiagnosticLogsClusterRetrieveLogsRequestParams);
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setIntent:v22];

    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setRequestedProtocol:&unk_284C3E558];
    fileDesignator = [v20 fileDesignator];
    [(MTRDiagnosticLogsClusterRetrieveLogsRequestParams *)v21 setTransferFileDesignator:fileDesignator];

    [(MTRClusterDiagnosticLogs *)v32 retrieveLogsRequestWithParams:v21 expectedValues:0 expectedValueInterval:0 completion:v31];
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      compressedFabricID = [v17 compressedFabricID];
      unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
      unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
      unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
      *buf = 138413058;
      v45 = v20;
      v46 = 2048;
      v47 = unsignedLongLongValue;
      v48 = 2048;
      v49 = unsignedLongLongValue2;
      v50 = 2048;
      v51 = unsignedLongLongValue3;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "%@ Started log download attempt for node %016llX-%016llX (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      compressedFabricID2 = [v17 compressedFabricID];
      sub_2393D5320(0, 2, "%@ Started log download attempt for node %016llX-%016llX (%llu)", v20, [compressedFabricID2 unsignedLongLongValue], objc_msgSend(dCopy, "unsignedLongLongValue"), objc_msgSend(dCopy, "unsignedLongLongValue"));
    }

    v30 = &v38;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EAD87C;
    block[3] = &unk_278A72B88;
    v30 = &v40;
    v40 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

- (void)_abortDownloadsForController:(id)controller nodeID:(id)d
{
  controllerCopy = controller;
  dCopy = d;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 570);
  [(MTRDownloads *)self->_downloads abortDownloadsForController:controllerCopy nodeID:dCopy];
}

- (void)handleBDXTransferSessionBeginForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d completion:(id)completion abortHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  designatorCopy = designator;
  indexCopy = index;
  dCopy = d;
  completionCopy = completion;
  handlerCopy = handler;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 581);
  v16 = [(MTRDownloads *)self->_downloads get:designatorCopy fabricIndex:indexCopy nodeID:dCopy];
  v17 = +[MTRDeviceControllerFactory sharedInstance];
  v18 = sub_23952B954(v17, [indexCopy unsignedCharValue]);

  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    compressedFabricID = [v18 compressedFabricID];
    *buf = 138413314;
    v25 = v16;
    v26 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v28 = 2048;
    unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
    v30 = 2048;
    unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
    v32 = 2112;
    v33 = designatorCopy;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session Begin for log download: %016llX-%016llX (%llu), %@", buf, 0x34u);
  }

  if (sub_2393D5398(2u))
  {
    compressedFabricID2 = [v18 compressedFabricID];
    sub_2393D5320(0, 2, "%@ BDX Transfer Session Begin for log download: %016llX-%016llX (%llu), %@", v16, [compressedFabricID2 unsignedLongLongValue], objc_msgSend(dCopy, "unsignedLongLongValue"), objc_msgSend(dCopy, "unsignedLongLongValue"), designatorCopy);
  }

  if (v16)
  {
    [v16 setAbortHandler:handlerCopy];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v22 = sub_23921C1E4(MTRError, 0x24F000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    (completionCopy)[2](completionCopy, v22);
  }
}

- (void)handleBDXTransferSessionDataForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d data:(id)data completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  designatorCopy = designator;
  indexCopy = index;
  dCopy = d;
  dataCopy = data;
  completionCopy = completion;
  v25 = designatorCopy;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 603);
  v17 = designatorCopy;
  v18 = [(MTRDownloads *)self->_downloads get:designatorCopy fabricIndex:indexCopy nodeID:dCopy];
  v19 = +[MTRDeviceControllerFactory sharedInstance];
  v20 = sub_23952B954(v19, [indexCopy unsignedCharValue]);

  v21 = sub_2393D9044(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    compressedFabricID = [v20 compressedFabricID];
    *buf = 138413570;
    v28 = v18;
    v29 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v31 = 2048;
    unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
    v33 = 2048;
    unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
    v35 = 2112;
    v17 = v25;
    v36 = v25;
    v37 = 2112;
    v38 = dataCopy;
    _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session Data for log download: %016llX-%016llX (%llu), %@: %@", buf, 0x3Eu);
  }

  if (sub_2393D5398(2u))
  {
    compressedFabricID2 = [v20 compressedFabricID];
    sub_2393D5320(0, 2, "%@ BDX Transfer Session Data for log download: %016llX-%016llX (%llu), %@: %@", v18, [compressedFabricID2 unsignedLongLongValue], objc_msgSend(dCopy, "unsignedLongLongValue"), objc_msgSend(dCopy, "unsignedLongLongValue"), v25, dataCopy);

    v17 = v25;
  }

  if (v18)
  {
    v26 = 0;
    [v18 writeToFile:dataCopy error:&v26];
    v24 = v26;
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v24 = sub_23921C1E4(MTRError, 0x265000000D8, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    (completionCopy)[2](completionCopy, v24);
  }
}

- (void)handleBDXTransferSessionEndForFileDesignator:(id)designator fabricIndex:(id)index nodeID:(id)d error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  designatorCopy = designator;
  indexCopy = index;
  dCopy = d;
  errorCopy = error;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 627);
  v14 = [(MTRDownloads *)self->_downloads get:designatorCopy fabricIndex:indexCopy nodeID:dCopy];
  v15 = +[MTRDeviceControllerFactory sharedInstance];
  v16 = sub_23952B954(v15, [indexCopy unsignedCharValue]);

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    compressedFabricID = [v16 compressedFabricID];
    *buf = 138413570;
    v21 = v14;
    v22 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v24 = 2048;
    unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
    v26 = 2048;
    unsignedLongLongValue3 = [dCopy unsignedLongLongValue];
    v28 = 2112;
    v29 = designatorCopy;
    v30 = 2112;
    v31 = errorCopy;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ BDX Transfer Session End for log download: %016llX-%016llX (%llu), %@: %@", buf, 0x3Eu);
  }

  if (sub_2393D5398(2u))
  {
    compressedFabricID2 = [v16 compressedFabricID];
    sub_2393D5320(0, 2, "%@ BDX Transfer Session End for log download: %016llX-%016llX (%llu), %@: %@", v14, [compressedFabricID2 unsignedLongLongValue], objc_msgSend(dCopy, "unsignedLongLongValue"), objc_msgSend(dCopy, "unsignedLongLongValue"), designatorCopy, errorCopy);
  }

  if (v14)
  {
    if (errorCopy)
    {
      [v14 failure:errorCopy];
    }

    else
    {
      [v14 success];
    }
  }
}

@end