@interface RecordingManager
+ (id)movSummaryItem:(float)item appName:(id)name;
+ (void)copyBuffer:(__CVBuffer *)buffer dst:(__CVBuffer *)dst;
- (RecordingManager)initWithFileURL:(id)l expectedFrameRate:(double)rate colorStreamId:(id)id depthStreamId:(id)streamId appName:(id)name;
- (RecordingManagerDelegate)delegate;
- (uint64_t)process:(__n128)process depthFrame:(__n128)frame faceObject:(__n128)object timestamp:(double)timestamp intrinsics:(uint64_t)intrinsics calibration:(uint64_t)calibration exposureTime:(__CVBuffer *)time;
- (void)didFinishRecording;
- (void)isReadyToRecord;
- (void)stopRecording;
@end

@implementation RecordingManager

+ (id)movSummaryItem:(float)item appName:(id)name
{
  v17[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16[0] = @"frameRate";
  *&v6 = item;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v17[0] = v7;
  v16[1] = @"depthFrameRate";
  *&v8 = item;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v17[1] = v9;
  v16[2] = @"machTimeSince1970";
  v10 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v13 = [v10 numberWithDouble:v12 - CACurrentMediaTime()];
  v17[2] = v13;
  v17[3] = MEMORY[0x277CBEC38];
  v16[3] = @"hasVisageMetadataFaceObject";
  v16[4] = @"RecorderApp";
  v17[4] = nameCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  return v14;
}

- (RecordingManager)initWithFileURL:(id)l expectedFrameRate:(double)rate colorStreamId:(id)id depthStreamId:(id)streamId appName:(id)name
{
  v53[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  idCopy = id;
  streamIdCopy = streamId;
  nameCopy = name;
  v49.receiver = self;
  v49.super_class = RecordingManager;
  v16 = [(RecordingManager *)&v49 init];
  if (v16 && (v17 = [idCopy copy], colorStreamID = v16->_colorStreamID, v16->_colorStreamID = v17, colorStreamID, v19 = objc_msgSend(streamIdCopy, "copy"), depthStreamID = v16->_depthStreamID, v16->_depthStreamID = v19, depthStreamID, v21 = objc_alloc(MEMORY[0x277CECD80]), v22 = rate, *&v23 = v22, +[RecordingManager movSummaryItem:appName:](RecordingManager, "movSummaryItem:appName:", nameCopy, v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = MEMORY[0x277D85CD0], v26 = MEMORY[0x277D85CD0], v27 = objc_msgSend(v21, "initWithFileURL:expectedFrameRate:fileSummary:callbackQueue:", lCopy, v24, v25, rate), writerInterface = v16->_writerInterface, v16->_writerInterface = v27, writerInterface, MEMORY[0x277D85CD0], v24, (v29 = v16->_writerInterface) != 0))
  {
    [(MOVWriterInterface *)v29 setInterface_delegate:v16];
    [(MOVWriterInterface *)v16->_writerInterface registerCVACameraCalibrationData];
    v52 = *MEMORY[0x277D256F8];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*MEMORY[0x277D256A0]];
    v53[0] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];

    v32 = objc_alloc(MEMORY[0x277CECD88]);
    LODWORD(v33) = 1273291200;
    *&v34 = rate;
    v35 = [v32 initWithLossless:0 bitrate:0 forceH264:v31 expectedFPS:v33 extraConfigs:v34];
    [(MOVWriterInterface *)v16->_writerInterface registerStreamID:v16->_colorStreamID withConfigObject:v35];

    v36 = *MEMORY[0x277D256E0];
    v50[0] = *MEMORY[0x277D256E8];
    v50[1] = v36;
    v51[0] = &unk_2862DF300;
    v51[1] = &unk_2862DF318;
    v50[2] = *MEMORY[0x277D256D0];
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
    v51[2] = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];

    v39 = objc_alloc(MEMORY[0x277CECD88]);
    *&v40 = rate;
    v41 = [v39 initWithLossless:1 bitrate:0 forceH264:v38 expectedFPS:0.0 extraConfigs:v40];
    [(MOVWriterInterface *)v16->_writerInterface registerStreamID:v16->_depthStreamID withConfigObject:v41];

    v42 = MGCopyAnswer();
    [(MOVWriterInterface *)v16->_writerInterface setSerialNumber:v42];

    makeDeviceString = [MEMORY[0x277CECD80] makeDeviceString];
    [(MOVWriterInterface *)v16->_writerInterface setDeviceString:makeDeviceString];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    name = [currentDevice name];
    [(MOVWriterInterface *)v16->_writerInterface setDeviceName:name];

    v46 = MGCopyAnswer();
    [(MOVWriterInterface *)v16->_writerInterface setOsBuildVersion:v46];

    v47 = v16;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

+ (void)copyBuffer:(__CVBuffer *)buffer dst:(__CVBuffer *)dst
{
  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  CVPixelBufferLockBaseAddress(dst, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(buffer);
  if (PlaneCount <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = PlaneCount;
  }

  v8 = CVPixelBufferGetPlaneCount(dst);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v7 != v9)
  {
    +[RecordingManager copyBuffer:dst:];
  }

  for (i = 0; i != v7; ++i)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, i);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, i);
    v13 = CVPixelBufferGetBaseAddressOfPlane(dst, i);
    v14 = CVPixelBufferGetBytesPerRowOfPlane(dst, i);
    v15 = v14;
    if (v14 >= BytesPerRowOfPlane)
    {
      v16 = BytesPerRowOfPlane;
    }

    else
    {
      v16 = v14;
    }

    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, i);
    if (HeightOfPlane >= 1)
    {
      v18 = HeightOfPlane;
      do
      {
        memcpy(v13, BaseAddressOfPlane, v16);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v13 += v15;
        --v18;
      }

      while (v18);
    }
  }

  CVPixelBufferUnlockBaseAddress(dst, 0);
  CVPixelBufferUnlockBaseAddress(buffer, 0);
  v19 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);

  CVBufferSetAttachments(dst, v19, kCVAttachmentMode_ShouldPropagate);
}

- (uint64_t)process:(__n128)process depthFrame:(__n128)frame faceObject:(__n128)object timestamp:(double)timestamp intrinsics:(uint64_t)intrinsics calibration:(uint64_t)calibration exposureTime:(__CVBuffer *)time
{
  v59[12] = *MEMORY[0x277D85DE8];
  v55[0] = process;
  v55[1] = frame;
  v55[2] = object;
  v15 = a10;
  v47 = a11;
  v48 = [objc_alloc(MEMORY[0x277CECD78]) initWithAVCameraCalibrationData:v47 timestamp:*(self + 16) streamID:a2];
  [*(self + 8) processCVACameraCalibrationData:?];
  memset(&v54, 0, sizeof(v54));
  CMTimeMakeWithSeconds(&v54, a2, 10000000);
  v51 = objc_opt_new();
  if (v15)
  {
    v58[0] = @"faceID";
    v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "faceID")}];
    v59[0] = v46;
    v58[1] = @"hasRollAngle";
    v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "hasRollAngle")}];
    v59[1] = v45;
    v58[2] = @"rollAngle";
    v16 = MEMORY[0x277CCABB0];
    [v15 rollAngle];
    v44 = [v16 numberWithDouble:?];
    v59[2] = v44;
    v58[3] = @"hasYawAngle";
    v43 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "hasYawAngle")}];
    v59[3] = v43;
    v58[4] = @"yawAngle";
    v17 = MEMORY[0x277CCABB0];
    [v15 yawAngle];
    v42 = [v17 numberWithDouble:?];
    v59[4] = v42;
    v58[5] = @"time";
    v18 = MEMORY[0x277CCABB0];
    objc_msgSend_time(v15);
    v19 = [v18 numberWithDouble:CMTimeGetSeconds(&time)];
    v59[5] = v19;
    v58[6] = @"duration";
    v20 = MEMORY[0x277CCABB0];
    objc_msgSend_duration(v15);
    v21 = [v20 numberWithDouble:CMTimeGetSeconds(&time)];
    v59[6] = v21;
    v58[7] = @"rectX";
    v22 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v23 = [v22 numberWithDouble:?];
    v59[7] = v23;
    v58[8] = @"rectY";
    v24 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v26 = [v24 numberWithDouble:v25];
    v59[8] = v26;
    v58[9] = @"rectWidth";
    v27 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v29 = [v27 numberWithDouble:v28];
    v59[9] = v29;
    v58[10] = @"rectHeight";
    v30 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v32 = [v30 numberWithDouble:v31];
    v59[10] = v32;
    v58[11] = @"timestamp";
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    v59[11] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:12];

    [v51 setObject:v34 forKeyedSubscript:@"VisageMetadataFaceObject"];
  }

  [*(self + 8) addFrameMetadata:v51 streamID:*(self + 16)];
  time = v54;
  v35 = [*(self + 8) processPixelBuffer:calibration withTimeStamp:&time intrinsics:v55 exposureTime:*(self + 16) streamID:timestamp];
  pixelBufferOut = 0;
  v56 = *MEMORY[0x277CC4DE8];
  v57 = MEMORY[0x277CBEC10];
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  Width = CVPixelBufferGetWidth(time);
  Height = CVPixelBufferGetHeight(time);
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303066u, v36, &pixelBufferOut))
  {
    NSLog(&cfstr_HrtfappRecordi.isa);
    v39 = 0;
  }

  else
  {
    [RecordingManager copyBuffer:time dst:pixelBufferOut];
    v40 = *(self + 8);
    time = v54;
    v39 = [v40 processPixelBuffer:pixelBufferOut withTimeStamp:&time intrinsics:0 exposureTime:*(self + 24) streamID:-1.0];
    CVPixelBufferRelease(pixelBufferOut);
  }

  return v35 & v39;
}

- (void)stopRecording
{
  writerInterface = self->_writerInterface;
  v6 = 0;
  [(MOVWriterInterface *)writerInterface finishWriting:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    localizedDescription = [v3 localizedDescription];
    NSLog(&cfstr_HrtfappRecordi_0.isa, localizedDescription);
  }
}

- (void)isReadyToRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 isReadyToRecord];
  }
}

- (void)didFinishRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 didFinishRecording];
  }
}

- (RecordingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end