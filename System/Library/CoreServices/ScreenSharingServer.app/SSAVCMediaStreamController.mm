@interface SSAVCMediaStreamController
- (BOOL)createAVCVideoStreamWithIDSSession:(id)session supports60FPS:(BOOL)s audioToken:(int64_t)token answerNegotiator:(id)negotiator videoEncryptionKeyViewerToServer:(id)server videoEncryptionKeyServerToViewer:(id)viewer AVCVideoStream:(id *)stream AVCScreenCapture:(id *)self0 avcClientName:(id)self1 mediaStreamSessionUUID:(id)self2;
- (SSAVCMediaStreamController)initWithIDSSession:(id)session avcClientName:(id)name audioEncryptionKeyViewerToServer:(id)server audioEncryptionKeyServerToViewer:(id)viewer video1EncryptionKeyViewerToServer:(id)toServer video1EncryptionKeyServerToViewer:(id)toViewer audioOffer:(id)offer videoOffer:(id)self0 sessionID:(id)self1 supports60FPS:(BOOL)self2 mediaStreamSessionUUID:(id)self3 delegate:(id)self4;
- (SSAVCMediaStreamControllerDelegate)delegate;
- (id)audioAnswer;
- (id)createAVCAudioStreamWithIDSDestination:(id)destination audioConfig:(id)config avcClientName:(id)name mediaStreamSessionUUID:(id)d;
- (id)videoAnswer;
- (void)logUnexpectedVideoConfigInfo:(id)info;
- (void)pause;
- (void)resume;
- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error;
- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error;
- (void)serverDidDisconnect:(id)disconnect;
- (void)start;
- (void)stop;
- (void)stream:(id)stream didGetLastDecodedFrame:(id)frame;
- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error;
- (void)stream:(id)stream didReceiveDTMFEventWithDigit:(char)digit;
- (void)stream:(id)stream didReceiveRTCPPackets:(id)packets;
- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)stream:(id)stream didStartSynchronizer:(BOOL)synchronizer error:(id)error;
- (void)stream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error;
- (void)stream:(id)stream downlinkQualityDidChange:(id)change;
- (void)stream:(id)stream updateInputFrequencyLevel:(id)level;
- (void)stream:(id)stream updateOutputFrequencyLevel:(id)level;
- (void)stream:(id)stream uplinkQualityDidChange:(id)change;
- (void)streamDidInterruptionBegin:(id)begin;
- (void)streamDidInterruptionEnd:(id)end;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
@end

@implementation SSAVCMediaStreamController

- (SSAVCMediaStreamController)initWithIDSSession:(id)session avcClientName:(id)name audioEncryptionKeyViewerToServer:(id)server audioEncryptionKeyServerToViewer:(id)viewer video1EncryptionKeyViewerToServer:(id)toServer video1EncryptionKeyServerToViewer:(id)toViewer audioOffer:(id)offer videoOffer:(id)self0 sessionID:(id)self1 supports60FPS:(BOOL)self2 mediaStreamSessionUUID:(id)self3 delegate:(id)self4
{
  sessionCopy = session;
  nameCopy = name;
  serverCopy = server;
  viewerCopy = viewer;
  toServerCopy = toServer;
  toViewerCopy = toViewer;
  v22 = serverCopy;
  offerCopy = offer;
  iDCopy = iD;
  delegateCopy = delegate;
  videoOfferCopy = videoOffer;
  v25 = sub_1000423E0();
  v116 = viewerCopy;
  if (v25)
  {
    v26 = sub_100042E68(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 48;
      v135 = 2048;
      v136 = COERCE_DOUBLE([serverCopy length]);
      v137 = 2048;
      v138 = [viewerCopy length];
      v139 = 2048;
      v140 = [toServerCopy length];
      v141 = 2048;
      v142 = [toViewerCopy length];
      v143 = 2048;
      v144 = iDCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] audioKeyViewerToServer length %lu audioKeyServerToViewer length %lu video1KeyViewerToServer length %lu video1KeyServerToViewer %lu mediaStreamSessionUUID %p", buf, 0x44u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 48, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "audioKeyViewerToServer length %lu audioKeyServerToViewer length %lu video1KeyViewerToServer length %lu video1KeyServerToViewer %lu mediaStreamSessionUUID %p", [serverCopy length], objc_msgSend(viewerCopy, "length"), objc_msgSend(toServerCopy, "length"), objc_msgSend(toViewerCopy, "length"), iDCopy);
  v27 = AVCMediaStreamNegotiatorTransportProtocolType;
  v129 = AVCMediaStreamNegotiatorTransportProtocolType;
  v130 = &off_10006B1C0;
  v115 = [NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  v28 = +[UIScreen mainScreen];
  [v28 scale];
  v30 = v29;

  v31 = sub_1000423E0();
  if (v31)
  {
    v32 = sub_100042E68(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 56;
      v135 = 2048;
      v136 = v30;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] actual display scale factor %f", buf, 0x1Cu);
    }
  }

  v117 = iDCopy;
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 56, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "actual display scale factor %f", v30);
  v121 = [NSNumber numberWithDouble:1.0];
  v33 = +[UIScreen mainScreen];
  [v33 nativeBounds];
  v35 = v34;

  v36 = sub_1000423E0();
  if (v36)
  {
    v37 = sub_100042E68(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 62;
      v135 = 1024;
      LODWORD(v136) = v35;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] actual pointWidth %u", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 62, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "actual pointWidth %u", v35);
  v120 = [NSNumber numberWithUnsignedInt:v35 >> 1];
  v38 = +[UIScreen mainScreen];
  [v38 nativeBounds];
  v40 = v39;

  v41 = sub_1000423E0();
  if (v41)
  {
    v42 = sub_100042E68(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 66;
      v135 = 1024;
      LODWORD(v136) = v40;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] actual pointHeight %u", buf, 0x18u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 66, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "actual pointHeight %u", v40);
  v112 = [NSNumber numberWithUnsignedInt:v40 >> 1];
  v43 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v120, AVCMediaStreamNegotiatorVideoWidth, v112, AVCMediaStreamNegotiatorVideoHeight, v121, AVCMediaStreamNegotiatorVideoResolution, &off_10006B1C0, v27, 0];
  v44 = sub_1000423E0();
  v45 = offerCopy;
  if (v44)
  {
    v46 = sub_100042E68(v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v43 description];
      uTF8String = [v47 UTF8String];
      *buf = 136315650;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 76;
      v135 = 2080;
      v136 = *&uTF8String;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%s:%d] video options %s", buf, 0x1Cu);
    }
  }

  v49 = [v43 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 76, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "video options %s", [v49 UTF8String]);

  v128 = 0;
  v50 = [[AVCMediaStreamNegotiator alloc] initWithOffer:videoOfferCopy options:v43 error:&v128];

  v51 = v128;
  [(SSAVCMediaStreamController *)self setVideoAnswerNegotiator:v50];

  videoAnswerNegotiator = [(SSAVCMediaStreamController *)self videoAnswerNegotiator];

  if (!videoAnswerNegotiator)
  {
    v73 = sub_1000423E0();
    if (v73)
    {
      v74 = sub_100042E68(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = [v51 description];
        uTF8String2 = [v75 UTF8String];
        *buf = 136315650;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 81;
        v135 = 2080;
        v136 = *&uTF8String2;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "[%s:%d] unable to create video1 answer negotiator: %s", buf, 0x1Cu);
      }
    }

    v77 = [v51 description];
    [v77 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 81, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to create video1 answer negotiator: %s");
    goto LABEL_46;
  }

  v53 = [offerCopy length];
  v54 = sub_1000423E0();
  if (!v53)
  {
    if (v54)
    {
      v80 = sub_100042E68(v54);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 123;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%s:%d] no audio offer", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 123, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "no audio offer");
    v61 = 0;
    goto LABEL_53;
  }

  if (v54)
  {
    v55 = sub_100042E68(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [offerCopy length];
      *buf = 136315650;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 87;
      v135 = 2048;
      v136 = *&v56;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio offer length %lu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 87, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "audio offer length %lu", [offerCopy length]);
  v127 = v51;
  v57 = [[AVCMediaStreamNegotiator alloc] initWithOffer:offerCopy options:v115 error:&v127];
  v58 = v127;

  [(SSAVCMediaStreamController *)self setAudioAnswerNegotiator:v57];
  audioAnswerNegotiator = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];

  if (!audioAnswerNegotiator)
  {
    v100 = sub_1000423E0();
    if (v100)
    {
      v101 = sub_100042E68(v100);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        v102 = [v58 description];
        uTF8String3 = [v102 UTF8String];
        *buf = 136315650;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 91;
        v135 = 2080;
        v136 = *&uTF8String3;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "[%s:%d] unable to create audio negotiator: %s", buf, 0x1Cu);
      }
    }

    v104 = [v58 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 91, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to create audio negotiator: %s", [v104 UTF8String]);

    v61 = 0;
    v78 = 0;
    v79 = 0;
    v51 = v58;
    goto LABEL_77;
  }

  audioAnswerNegotiator2 = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];
  v126 = v58;
  v61 = [audioAnswerNegotiator2 generateMediaStreamConfigurationWithError:&v126];
  v51 = v126;

  if (!v61)
  {
    v108 = sub_1000423E0();
    if (v108)
    {
      v109 = sub_100042E68(v108);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v110 = [v51 description];
        uTF8String4 = [v110 UTF8String];
        *buf = 136315650;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 98;
        v135 = 2080;
        v136 = *&uTF8String4;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "[%s:%d] unable to create audio config:  %s", buf, 0x1Cu);
      }
    }

    v77 = [v51 description];
    [v77 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 98, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to create audio config:  %s");
LABEL_46:

    v61 = 0;
LABEL_47:
    v78 = 0;
    v79 = 0;
    goto LABEL_77;
  }

  [v61 setSRTPCipherSuite:5];
  [v61 setSRTCPCipherSuite:5];
  [v61 setSendMediaKey:v116];
  [v61 setReceiveMediaKey:v22];
  if ([v61 direction] != 1)
  {
    v62 = sub_1000423E0();
    if (v62)
    {
      v63 = sub_100042E68(v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        direction = [v61 direction];
        *buf = 136315650;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 109;
        v135 = 2048;
        v136 = *&direction;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio direction set to %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 109, "-[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 5, 0, "audio direction set to %ld", [v61 direction]);
  }

  destination = [sessionCopy destination];
  v66 = [(SSAVCMediaStreamController *)self createAVCAudioStreamWithIDSDestination:destination audioConfig:v61 avcClientName:nameCopy mediaStreamSessionUUID:v117];
  [(SSAVCMediaStreamController *)self setAudioStream:v66];

  audioStream = [(SSAVCMediaStreamController *)self audioStream];

  if (!audioStream)
  {
    goto LABEL_47;
  }

  audioStream2 = [(SSAVCMediaStreamController *)self audioStream];
  [audioStream2 setDelegate:self];

  v69 = sub_1000423E0();
  if (v69)
  {
    v70 = sub_100042E68(v69);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      audioStream3 = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315650;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 120;
      v135 = 2048;
      v136 = *&audioStream3;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%s:%d] AVCAudioStream %p", buf, 0x1Cu);
    }
  }

  audioStream4 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 120, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "AVCAudioStream %p", audioStream4);

LABEL_53:
  v81 = v22;
  v82 = sub_1000423E0();
  if (v82)
  {
    v83 = sub_100042E68(v82);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 126;
      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "[%s:%d] configure video stream", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 126, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "configure video stream");
  audioStream5 = [(SSAVCMediaStreamController *)self audioStream];
  streamToken = [audioStream5 streamToken];
  videoAnswerNegotiator2 = [(SSAVCMediaStreamController *)self videoAnswerNegotiator];
  v124 = 0;
  v125 = 0;
  v87 = [(SSAVCMediaStreamController *)self createAVCVideoStreamWithIDSSession:sessionCopy supports60FPS:s audioToken:streamToken answerNegotiator:videoAnswerNegotiator2 videoEncryptionKeyViewerToServer:toServerCopy videoEncryptionKeyServerToViewer:toViewerCopy AVCVideoStream:&v125 AVCScreenCapture:&v124 avcClientName:nameCopy mediaStreamSessionUUID:v117];
  v79 = v125;
  v78 = v124;

  if (v87)
  {
    [(SSAVCMediaStreamController *)self setVideoStream:v79];
    videoStream = [(SSAVCMediaStreamController *)self videoStream];
    [videoStream setDelegate:self];

    [(SSAVCMediaStreamController *)self setScreenCapture:v78];
    [(SSAVCMediaStreamController *)self setDelegate:delegateCopy];
    v89 = sub_1000423E0();
    v22 = v81;
    if (v89)
    {
      v90 = sub_100042E68(v89);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        videoStream2 = [(SSAVCMediaStreamController *)self videoStream];
        screenCapture = [(SSAVCMediaStreamController *)self screenCapture];
        *buf = 136315906;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 142;
        v135 = 2048;
        v136 = *&videoStream2;
        v137 = 2048;
        v138 = screenCapture;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "[%s:%d] VideoStream %p screencapture %p ", buf, 0x26u);

        v22 = v81;
      }
    }

    videoStream3 = [(SSAVCMediaStreamController *)self videoStream];
    screenCapture2 = [(SSAVCMediaStreamController *)self screenCapture];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 142, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "VideoStream %p screencapture %p ", videoStream3, screenCapture2);

    v95 = sub_1000423E0();
    v45 = offerCopy;
    if (v95)
    {
      v96 = sub_100042E68(v95);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
        v133 = 1024;
        v134 = 149;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%s:%d] success", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 149, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 7, 0, "success");
    selfCopy = self;
    goto LABEL_82;
  }

  v98 = sub_1000423E0();
  v22 = v81;
  v45 = offerCopy;
  if (v98)
  {
    v99 = sub_100042E68(v98);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 146;
      _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%s:%d] unable to start screen capture", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 146, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "unable to start screen capture");
LABEL_77:
  v105 = sub_1000423E0();
  if (v105)
  {
    v106 = sub_100042E68(v105);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v132 = "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]";
      v133 = 1024;
      v134 = 153;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "[%s:%d] stream creation failed", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 153, "[SSAVCMediaStreamController initWithIDSSession:avcClientName:audioEncryptionKeyViewerToServer:audioEncryptionKeyServerToViewer:video1EncryptionKeyViewerToServer:video1EncryptionKeyServerToViewer:audioOffer:videoOffer:sessionID:supports60FPS:mediaStreamSessionUUID:delegate:]", 3, 0, "stream creation failed");
  selfCopy = 0;
LABEL_82:

  return selfCopy;
}

- (void)start
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      videoStream = [(SSAVCMediaStreamController *)self videoStream];
      audioStream = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v13 = "[SSAVCMediaStreamController start]";
      v14 = 1024;
      v15 = 159;
      v16 = 2048;
      v17 = videoStream;
      v18 = 2048;
      v19 = audioStream;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] start video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  videoStream2 = [(SSAVCMediaStreamController *)self videoStream];
  audioStream2 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 159, "[SSAVCMediaStreamController start]", 7, 0, "start video sending using video stream %p audio stream %p", videoStream2, audioStream2);

  screenCapture = [(SSAVCMediaStreamController *)self screenCapture];
  [screenCapture startCapture];

  videoStream3 = [(SSAVCMediaStreamController *)self videoStream];
  [videoStream3 start];

  audioStream3 = [(SSAVCMediaStreamController *)self audioStream];
  [audioStream3 start];
}

- (void)stop
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      videoStream = [(SSAVCMediaStreamController *)self videoStream];
      audioStream = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v15 = "[SSAVCMediaStreamController stop]";
      v16 = 1024;
      v17 = 167;
      v18 = 2048;
      v19 = videoStream;
      v20 = 2048;
      v21 = audioStream;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  videoStream2 = [(SSAVCMediaStreamController *)self videoStream];
  audioStream2 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 167, "[SSAVCMediaStreamController stop]", 7, 0, "stop video sending using video stream %p audio stream %p", videoStream2, audioStream2);

  screenCapture = [(SSAVCMediaStreamController *)self screenCapture];
  [screenCapture stopCapture];

  [(SSAVCMediaStreamController *)self setScreenCapture:0];
  videoStream3 = [(SSAVCMediaStreamController *)self videoStream];
  [videoStream3 stop];

  videoStream4 = [(SSAVCMediaStreamController *)self videoStream];
  [videoStream4 setDelegate:0];

  [(SSAVCMediaStreamController *)self setVideoStream:0];
  audioStream3 = [(SSAVCMediaStreamController *)self audioStream];
  [audioStream3 stop];

  audioStream4 = [(SSAVCMediaStreamController *)self audioStream];
  [audioStream4 setDelegate:0];

  [(SSAVCMediaStreamController *)self setAudioStream:0];
}

- (void)pause
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      videoStream = [(SSAVCMediaStreamController *)self videoStream];
      audioStream = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v12 = "[SSAVCMediaStreamController pause]";
      v13 = 1024;
      v14 = 180;
      v15 = 2048;
      v16 = videoStream;
      v17 = 2048;
      v18 = audioStream;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] pause video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  videoStream2 = [(SSAVCMediaStreamController *)self videoStream];
  audioStream2 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 180, "[SSAVCMediaStreamController pause]", 7, 0, "pause video sending using video stream %p audio stream %p", videoStream2, audioStream2);

  videoStream3 = [(SSAVCMediaStreamController *)self videoStream];
  [videoStream3 pause];

  audioStream3 = [(SSAVCMediaStreamController *)self audioStream];
  [audioStream3 pause];
}

- (void)resume
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      videoStream = [(SSAVCMediaStreamController *)self videoStream];
      audioStream = [(SSAVCMediaStreamController *)self audioStream];
      *buf = 136315906;
      v12 = "[SSAVCMediaStreamController resume]";
      v13 = 1024;
      v14 = 187;
      v15 = 2048;
      v16 = videoStream;
      v17 = 2048;
      v18 = audioStream;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] resume video sending using video stream %p audio stream %p", buf, 0x26u);
    }
  }

  videoStream2 = [(SSAVCMediaStreamController *)self videoStream];
  audioStream2 = [(SSAVCMediaStreamController *)self audioStream];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 187, "[SSAVCMediaStreamController resume]", 7, 0, "resume video sending using video stream %p audio stream %p", videoStream2, audioStream2);

  videoStream3 = [(SSAVCMediaStreamController *)self videoStream];
  [videoStream3 resume];

  audioStream3 = [(SSAVCMediaStreamController *)self audioStream];
  [audioStream3 resume];
}

- (id)audioAnswer
{
  audioAnswerNegotiator = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];
  answer = [audioAnswerNegotiator answer];

  if (!answer)
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "[SSAVCMediaStreamController audioAnswer]";
        v9 = 1024;
        v10 = 197;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] unable to generate audio answer", &v7, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 197, "[SSAVCMediaStreamController audioAnswer]", 3, 0, "unable to generate audio answer");
  }

  return answer;
}

- (id)videoAnswer
{
  videoAnswerNegotiator = [(SSAVCMediaStreamController *)self videoAnswerNegotiator];
  answer = [videoAnswerNegotiator answer];

  if (!answer)
  {
    v4 = sub_1000423E0();
    if (v4)
    {
      v5 = sub_100042E68(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "[SSAVCMediaStreamController videoAnswer]";
        v9 = 1024;
        v10 = 205;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%s:%d] unable to generate video answer", &v7, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 205, "[SSAVCMediaStreamController videoAnswer]", 3, 0, "unable to generate video answer");
  }

  return answer;
}

- (BOOL)createAVCVideoStreamWithIDSSession:(id)session supports60FPS:(BOOL)s audioToken:(int64_t)token answerNegotiator:(id)negotiator videoEncryptionKeyViewerToServer:(id)server videoEncryptionKeyServerToViewer:(id)viewer AVCVideoStream:(id *)stream AVCScreenCapture:(id *)self0 avcClientName:(id)self1 mediaStreamSessionUUID:(id)self2
{
  sCopy = s;
  sessionCopy = session;
  negotiatorCopy = negotiator;
  serverCopy = server;
  viewerCopy = viewer;
  nameCopy = name;
  dCopy = d;
  *stream = 0;
  *capture = 0;
  v18 = sub_1000423E0();
  if (v18)
  {
    v19 = sub_100042E68(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      destination = [sessionCopy destination];
      *buf = 136315650;
      v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
      v89 = 1024;
      v90 = 226;
      v91 = 2080;
      *v92 = [destination UTF8String];
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] createAVCVideoStreamWithIDSDestination %s", buf, 0x1Cu);
    }
  }

  v21 = sessionCopy;
  destination2 = [sessionCopy destination];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 226, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 7, 0, "createAVCVideoStreamWithIDSDestination %s", [destination2 UTF8String]);

  v86 = 0;
  v23 = [negotiatorCopy generateMediaStreamConfigurationWithError:&v86];
  v24 = v86;
  if (v23)
  {
    v78 = nameCopy;
    [v23 setSRTPCipherSuite:5];
    [v23 setSRTCPCipherSuite:5];
    [v23 setSendMediaKey:viewerCopy];
    [v23 setReceiveMediaKey:serverCopy];
    v25 = objc_alloc_init(AVCScreenCaptureConfiguration);
    [v25 setShouldRunInProcess:0];
    [v25 setIsCursorCaptured:1];
    [v25 setIsWindowed:0];
    [v25 setScreenCaptureDisplayID:0];
    v26 = [[AVCScreenCapture alloc] initWithDelegate:self withConfig:v25];
    v27 = v26;
    if (!v26)
    {
      v50 = sub_1000423E0();
      if (v50)
      {
        v51 = sub_100042E68(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v89 = 1024;
          v90 = 247;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "[%s:%d] unable to get AVCScreenCapture", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 247, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to get AVCScreenCapture");
      v45 = 0;
      goto LABEL_53;
    }

    v28 = v26;
    v75 = v27;
    *capture = v27;
    v85 = v24;
    v29 = [negotiatorCopy generateMediaStreamInitOptionsWithError:&v85];
    v30 = v85;

    if (!v29)
    {
      v52 = sub_1000423E0();
      if (v52)
      {
        v53 = sub_100042E68(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = [v30 description];
          uTF8String = [v54 UTF8String];
          *buf = 136315906;
          v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v89 = 1024;
          v90 = 255;
          v91 = 2048;
          *v92 = 0;
          *&v92[8] = 2080;
          *&v92[10] = uTF8String;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "[%s:%d] error from create media stream init options (%p):  %s", buf, 0x26u);
        }
      }

      v56 = [v30 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 255, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "error from create media stream init options (%p):  %s", 0, [v56 UTF8String]);
      v45 = 0;
      goto LABEL_52;
    }

    v74 = v29;
    v31 = [v29 mutableCopy];
    [v31 setObject:v78 forKeyedSubscript:kAVCMediaStreamOptionClientName];
    [v31 setObject:dCopy forKeyedSubscript:kAVCMediaStreamOptionClientSessionID];
    v32 = [AVCVideoStream alloc];
    destination3 = [sessionCopy destination];
    v84 = v30;
    v73 = v31;
    v34 = [v32 initWithIDSDestination:destination3 options:v31 error:&v84];
    v35 = v84;

    v36 = v34;
    if (v34)
    {
      v37 = v34;
      *stream = v34;
      video = [v23 video];
      [video setCaptureSource:1];
      [video setCaptureSourceID:{objc_msgSend(v75, "captureSourceID")}];
      [video setSynchronizationSourceStreamToken:token];
      if (sCopy)
      {
        v39 = 60;
      }

      else
      {
        v39 = 30;
      }

      [video setFramerate:v39];
      v40 = sub_1000423E0();
      v21 = sessionCopy;
      if (v40)
      {
        v41 = sub_100042E68(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          framerate = [video framerate];
          *buf = 136315906;
          v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v89 = 1024;
          v90 = 285;
          v91 = 1024;
          *v92 = sCopy;
          *&v92[4] = 2048;
          *&v92[6] = framerate;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%s:%d] encoder support 60FPS %d videoConfig.framerate %lu", buf, 0x22u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 285, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 7, 0, "encoder support 60FPS %d videoConfig.framerate %lu", sCopy, [video framerate]);
      [(SSAVCMediaStreamController *)self logUnexpectedVideoConfigInfo:v23];
      if ([video isValidForDirection:1])
      {
        if ([v23 isValidVideoConfig])
        {
          v83 = v35;
          v43 = [v34 configure:v23 error:&v83];
          v44 = v83;

          if (v43)
          {
            v45 = 1;
          }

          else
          {
            v66 = sub_1000423E0();
            if (v66)
            {
              v67 = sub_100042E68(v66);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = [v44 description];
                uTF8String2 = [v68 UTF8String];
                *buf = 136315650;
                v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
                v89 = 1024;
                v90 = 303;
                v91 = 2080;
                *v92 = uTF8String2;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "[%s:%d] unable to configure stream:  %s", buf, 0x1Cu);
              }
            }

            v70 = [v44 description];
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 303, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to configure stream:  %s", [v70 UTF8String]);

            v45 = 0;
          }

          v35 = v44;
          v21 = sessionCopy;
          v56 = v73;
          goto LABEL_51;
        }

        v63 = sub_1000423E0();
        v56 = v73;
        if (v63)
        {
          v64 = sub_100042E68(v63);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
            v89 = 1024;
            v90 = 297;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%s:%d] negotiator video config invalid", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 297, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "negotiator video config invalid", v71, v72);
      }

      else
      {
        v61 = sub_1000423E0();
        v56 = v73;
        if (v61)
        {
          v62 = sub_100042E68(v61);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
            v89 = 1024;
            v90 = 291;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%s:%d] video config not valid for direction", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 291, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "video config not valid for direction", v71, v72);
      }
    }

    else
    {
      v57 = sub_1000423E0();
      v21 = sessionCopy;
      v56 = v73;
      if (v57)
      {
        v58 = sub_100042E68(v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = [v35 description];
          uTF8String3 = [v59 UTF8String];
          *buf = 136315906;
          v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
          v89 = 1024;
          v90 = 268;
          v91 = 2048;
          *v92 = 0;
          *&v92[8] = 2080;
          *&v92[10] = uTF8String3;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[%s:%d] error from initWithIDSDestination (%p):  %s", buf, 0x26u);

          v21 = sessionCopy;
        }
      }

      video = [v35 description];
      [video UTF8String];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 268, "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "error from initWithIDSDestination (%p):  %s", 0);
    }

    v45 = 0;
LABEL_51:

    v30 = v35;
    v29 = v74;
LABEL_52:

    v24 = v30;
    v27 = v75;
LABEL_53:

    nameCopy = v78;
    goto LABEL_54;
  }

  v46 = sub_1000423E0();
  if (v46)
  {
    v47 = sub_100042E68(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [v24 description];
      uTF8String4 = [v48 UTF8String];
      *buf = 136315906;
      v88 = "[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]";
      v89 = 1024;
      v90 = 230;
      v91 = 2048;
      *v92 = 0;
      *&v92[8] = 2080;
      *&v92[10] = uTF8String4;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[%s:%d] error from unable to create video config (%p):  %s", buf, 0x26u);
    }
  }

  v25 = [v24 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 230, "-[SSAVCMediaStreamController createAVCVideoStreamWithIDSSession:supports60FPS:audioToken:answerNegotiator:videoEncryptionKeyViewerToServer:videoEncryptionKeyServerToViewer:AVCVideoStream:AVCScreenCapture:avcClientName:mediaStreamSessionUUID:]", 3, 0, "error from unable to create video config (%p):  %s", 0, [v25 UTF8String]);
  v45 = 0;
LABEL_54:

  return v45;
}

- (id)createAVCAudioStreamWithIDSDestination:(id)destination audioConfig:(id)config avcClientName:(id)name mediaStreamSessionUUID:(id)d
{
  destinationCopy = destination;
  configCopy = config;
  nameCopy = name;
  dCopy = d;
  v14 = sub_1000423E0();
  if (v14)
  {
    v15 = sub_100042E68(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
      v68 = 1024;
      v69 = 319;
      v70 = 2080;
      uTF8String = [destinationCopy UTF8String];
      v72 = 2080;
      uTF8String2 = [nameCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] createAVCAudioStreamWithIDSDestination %s avcClientName %s", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 319, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "createAVCAudioStreamWithIDSDestination %s avcClientName %s", [destinationCopy UTF8String], objc_msgSend(nameCopy, "UTF8String"));
  audioAnswerNegotiator = [(SSAVCMediaStreamController *)self audioAnswerNegotiator];
  v65 = 0;
  v17 = [audioAnswerNegotiator generateMediaStreamInitOptionsWithError:&v65];
  v18 = v65;

  v19 = sub_1000423E0();
  if (v17)
  {
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v17 description];
        uTF8String3 = [v21 UTF8String];
        *buf = 136315650;
        v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v68 = 1024;
        v69 = 326;
        v70 = 2080;
        uTF8String = uTF8String3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] audioCallIDDict %s", buf, 0x1Cu);
      }
    }

    v23 = [v17 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 326, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "audioCallIDDict %s", [v23 UTF8String]);

    v24 = [v17 objectForKeyedSubscript:kAVCMediaStreamOptionCallID];
    v25 = sub_1000423E0();
    if (v25)
    {
      v26 = sub_100042E68(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String4 = [v24 UTF8String];
        *buf = 136315906;
        v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v68 = 1024;
        v69 = 328;
        v70 = 2048;
        uTF8String = v24;
        v72 = 2080;
        uTF8String2 = uTF8String4;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] audioCallID %p %s", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 328, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "audioCallID %p %s", v24, [v24 UTF8String]);
    v28 = sub_1000423E0();
    if (v28)
    {
      v29 = sub_100042E68(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        [dCopy description];
        v31 = v30 = nameCopy;
        uTF8String5 = [v31 UTF8String];
        *buf = 136315650;
        v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v68 = 1024;
        v69 = 329;
        v70 = 2080;
        uTF8String = uTF8String5;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] mediaStreamSessionID %s", buf, 0x1Cu);

        nameCopy = v30;
      }
    }

    v33 = [dCopy description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 329, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "mediaStreamSessionID %s", [v33 UTF8String]);

    v34 = sub_1000423E0();
    if (v34)
    {
      v35 = sub_100042E68(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v68 = 1024;
        v69 = 331;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to create audio stream", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 331, "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "going to create audio stream");
    v36 = [v17 mutableCopy];
    v61 = nameCopy;
    [v36 setObject:nameCopy forKeyedSubscript:kAVCMediaStreamOptionClientName];
    [v36 setObject:dCopy forKeyedSubscript:kAVCMediaStreamOptionClientSessionID];
    v64 = v18;
    v62 = destinationCopy;
    v37 = [[AVCAudioStream alloc] initWithIDSDestination:destinationCopy options:v36 error:&v64];
    v38 = v64;

    v39 = sub_1000423E0();
    if (v39)
    {
      v40 = sub_100042E68(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
        v68 = 1024;
        v69 = 339;
        v70 = 2048;
        uTF8String = v37;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%s:%d] created audio stream %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 339, "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 7, 0, "created audio stream %p", v37);
    if (v37)
    {
      v41 = dCopy;
      v63 = v38;
      v42 = configCopy;
      v43 = [v37 configure:configCopy error:&v63];
      v18 = v63;

      if (v43)
      {
        configCopy = v42;
        destinationCopy = v62;
        dCopy = v41;
LABEL_45:
        v47 = v37;

        v48 = v47;
        nameCopy = v61;
        goto LABEL_46;
      }

      v56 = sub_1000423E0();
      configCopy = v42;
      if (v56)
      {
        v57 = sub_100042E68(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = [v18 description];
          uTF8String6 = [v58 UTF8String];
          *buf = 136315650;
          v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
          v68 = 1024;
          v69 = 348;
          v70 = 2080;
          uTF8String = uTF8String6;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "[%s:%d] unable to configure audio stream:  %s", buf, 0x1Cu);

          configCopy = v42;
        }
      }

      v55 = [v18 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 348, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to configure audio stream:  %s", [v55 UTF8String]);
      destinationCopy = v62;
      dCopy = v41;
    }

    else
    {
      v49 = sub_1000423E0();
      if (v49)
      {
        v50 = sub_100042E68(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [v38 description];
          v51 = dCopy;
          v53 = v52 = configCopy;
          uTF8String7 = [v53 UTF8String];
          *buf = 136315650;
          v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
          v68 = 1024;
          v69 = 342;
          v70 = 2080;
          uTF8String = uTF8String7;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "[%s:%d] unable to get audio stream:  %s", buf, 0x1Cu);

          configCopy = v52;
          dCopy = v51;
        }
      }

      v55 = [v38 description];
      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 342, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to get audio stream:  %s", [v55 UTF8String]);
      v18 = v38;
      destinationCopy = v62;
    }

    goto LABEL_45;
  }

  if (v19)
  {
    v44 = sub_100042E68(v19);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v18 description];
      uTF8String8 = [v45 UTF8String];
      *buf = 136315650;
      v67 = "[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]";
      v68 = 1024;
      v69 = 323;
      v70 = 2080;
      uTF8String = uTF8String8;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%s:%d] unable to generate media stream init options for audio stream: %s", buf, 0x1Cu);
    }
  }

  v47 = [v18 description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 323, "-[SSAVCMediaStreamController createAVCAudioStreamWithIDSDestination:audioConfig:avcClientName:mediaStreamSessionUUID:]", 3, 0, "unable to generate media stream init options for audio stream: %s", [v47 UTF8String]);
  v48 = 0;
LABEL_46:

  return v48;
}

- (void)logUnexpectedVideoConfigInfo:(id)info
{
  infoCopy = info;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
      v85 = 1024;
      v86 = 359;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] check video config", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 359, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 7, 0, "check video config");
  if ([infoCopy direction] != 1)
  {
    v6 = sub_1000423E0();
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        direction = [infoCopy direction];
        *buf = 136315906;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 361;
        v87 = 2048;
        v88 = direction;
        v89 = 2048;
        v90 = 1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] config direction = %ld expect %ld", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 361, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config direction = %ld expect %ld", [infoCopy direction], 1);
  }

  if (([infoCopy isRateAdaptationEnabled] & 1) == 0)
  {
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 363;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rateAdaptationEnabled is false", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 363, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rateAdaptationEnabled is false");
  }

  if (([infoCopy isRTCPEnabled] & 1) == 0)
  {
    v11 = sub_1000423E0();
    if (v11)
    {
      v12 = sub_100042E68(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 365;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rtcpEnabled is false", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 365, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rtcpEnabled is false");
  }

  if ([infoCopy rxPayloadType] != 100 || (v13 = objc_msgSend(infoCopy, "rxPayloadType"), v13 != objc_msgSend(infoCopy, "txPayloadType")))
  {
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        rxPayloadType = [infoCopy rxPayloadType];
        txPayloadType = [infoCopy txPayloadType];
        *buf = 136315906;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 367;
        v87 = 2048;
        v88 = rxPayloadType;
        v89 = 2048;
        v90 = txPayloadType;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rxPayloadType = %lu config.txPayloadType = %lu", buf, 0x26u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 367, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rxPayloadType = %lu config.txPayloadType = %lu", [infoCopy rxPayloadType], objc_msgSend(infoCopy, "txPayloadType"));
  }

  if ([infoCopy remoteSSRC] != -1091576147)
  {
    v18 = sub_1000423E0();
    if (v18)
    {
      v19 = sub_100042E68(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        remoteSSRC = [infoCopy remoteSSRC];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 369;
        v87 = 1024;
        LODWORD(v88) = remoteSSRC;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%s:%d] config.remoteSSRC = %x", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 369, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config.remoteSSRC = %x", [infoCopy remoteSSRC]);
  }

  if ([infoCopy localSSRC] != -559038737)
  {
    v21 = sub_1000423E0();
    if (v21)
    {
      v22 = sub_100042E68(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        localSSRC = [infoCopy localSSRC];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 371;
        v87 = 1024;
        LODWORD(v88) = localSSRC;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%s:%d] config.localSSRC = %x", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 371, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config.localSSRC = %x", [infoCopy localSSRC]);
  }

  [infoCopy rtcpSendInterval];
  if (v24 != 1.0)
  {
    v25 = sub_1000423E0();
    if (v25)
    {
      v26 = sub_100042E68(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [infoCopy rtcpSendInterval];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 374;
        v87 = 2048;
        v88 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rtcpSendInterval = %f", buf, 0x1Cu);
      }
    }

    [infoCopy rtcpSendInterval];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 374, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rtcpSendInterval = %f", v28);
  }

  if (([infoCopy isRTCPTimeOutEnabled] & 1) == 0)
  {
    v29 = sub_1000423E0();
    if (v29)
    {
      v30 = sub_100042E68(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 376;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%s:%d] config rtcpTimeOutEnabled not enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 376, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config rtcpTimeOutEnabled not enabled");
  }

  if ([infoCopy SRTPCipherSuite] != 5)
  {
    v31 = sub_1000423E0();
    if (v31)
    {
      v32 = sub_100042E68(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        sRTPCipherSuite = [infoCopy SRTPCipherSuite];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 378;
        v87 = 2048;
        v88 = sRTPCipherSuite;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%s:%d] config SRTPCipherSuite = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 378, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config SRTPCipherSuite = %ld", [infoCopy SRTPCipherSuite]);
  }

  if ([infoCopy SRTCPCipherSuite] != 5)
  {
    v34 = sub_1000423E0();
    if (v34)
    {
      v35 = sub_100042E68(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        sRTCPCipherSuite = [infoCopy SRTCPCipherSuite];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 380;
        v87 = 2048;
        v88 = sRTCPCipherSuite;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%s:%d] config SRTCPCipherSuite = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 380, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "config SRTCPCipherSuite = %ld", [infoCopy SRTCPCipherSuite]);
  }

  video = [infoCopy video];
  if ([video captureSource] != 1)
  {
    v38 = sub_1000423E0();
    if (v38)
    {
      v39 = sub_100042E68(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        captureSource = [video captureSource];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 383;
        v87 = 2048;
        v88 = captureSource;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig captureSource = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 383, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig captureSource = %ld", [video captureSource]);
  }

  if ([video rxCodecType] != 1)
  {
    v41 = sub_1000423E0();
    if (v41)
    {
      v42 = sub_100042E68(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        rxCodecType = [video rxCodecType];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 385;
        v87 = 2048;
        v88 = rxCodecType;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig rxCodecType = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 385, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig rxCodecType = %ld", [video rxCodecType]);
  }

  if ([video txCodecType] != 1)
  {
    v44 = sub_1000423E0();
    if (v44)
    {
      v45 = sub_100042E68(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        txCodecType = [video txCodecType];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 387;
        v87 = 2048;
        v88 = txCodecType;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig txCodecType = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 387, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig txCodecType = %ld", [video txCodecType]);
  }

  if ([video framerate] != 60)
  {
    v47 = sub_1000423E0();
    if (v47)
    {
      v48 = sub_100042E68(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        framerate = [video framerate];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 389;
        v87 = 2048;
        v88 = framerate;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig framerate = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 389, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig framerate = %ld", [video framerate]);
  }

  if ([video txMaxBitrate] != 40000000)
  {
    v50 = sub_1000423E0();
    if (v50)
    {
      v51 = sub_100042E68(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        txMaxBitrate = [video txMaxBitrate];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 391;
        v87 = 2048;
        v88 = txMaxBitrate;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig txMaxBitrate = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 391, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig txMaxBitrate = %ld", [video txMaxBitrate]);
  }

  if ([video txMinBitrate] != 20000000)
  {
    v53 = sub_1000423E0();
    if (v53)
    {
      v54 = sub_100042E68(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        txMinBitrate = [video txMinBitrate];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 393;
        v87 = 2048;
        v88 = txMinBitrate;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig rxMinBitrate = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 393, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig rxMinBitrate = %ld", [video txMinBitrate]);
  }

  if ([video videoStreamMode] != 4)
  {
    v56 = sub_1000423E0();
    if (v56)
    {
      v57 = sub_100042E68(v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        videoStreamMode = [video videoStreamMode];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 395;
        v87 = 2048;
        v88 = videoStreamMode;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig videoStreamMode = %ld", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 395, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig videoStreamMode = %ld", [video videoStreamMode]);
  }

  if ([video pixelFormat] == 2019963956)
  {
    v59 = sub_1000423E0();
    if (v59)
    {
      v60 = sub_100042E68(v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 398;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%s:%d] pixelFormat set for HDR mode", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 398, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 7, 0, "pixelFormat set for HDR mode");
    if ([video hdrMode] != 3)
    {
      v61 = sub_1000423E0();
      if (v61)
      {
        v62 = sub_100042E68(v61);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          hdrMode = [video hdrMode];
          *buf = 136315906;
          v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
          v85 = 1024;
          v86 = 400;
          v87 = 2048;
          v88 = hdrMode;
          v89 = 2048;
          v90 = 3;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%s:%d] hdrMode set to %lu expected %lu", buf, 0x26u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 400, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "hdrMode set to %lu expected %lu", [video hdrMode]);
    }
  }

  else if ([video pixelFormat] == 875836518 && objc_msgSend(video, "hdrMode") == 3)
  {
    v64 = sub_1000423E0();
    if (v64)
    {
      v65 = sub_100042E68(v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 403;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%s:%d] pixel format is 8 bit, but hdrMode is set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 403, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "pixel format is 8 bit, but hdrMode is set");
  }

  else if ([video pixelFormat] != 875836518)
  {
    v66 = sub_1000423E0();
    if (v66)
    {
      v67 = sub_100042E68(v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        pixelFormat = [video pixelFormat];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 405;
        v87 = 1024;
        LODWORD(v88) = pixelFormat;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%s:%d] pixel format is actually 0x%x", buf, 0x18u);
      }
    }

    [video pixelFormat];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 405, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "pixel format is actually 0x%x");
  }

  if (([video isLTRPEnabled] & 1) == 0)
  {
    v69 = sub_1000423E0();
    if (v69)
    {
      v70 = sub_100042E68(v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 408;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig ltrpEnabled not enabled", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 408, "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig ltrpEnabled not enabled");
  }

  if ([video tilesPerFrame] != 4)
  {
    v71 = sub_1000423E0();
    if (v71)
    {
      v72 = sub_100042E68(v71);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        tilesPerFrame = [video tilesPerFrame];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 410;
        v87 = 2048;
        v88 = tilesPerFrame;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoConfig tilesPerFrame = %lu", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 410, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoConfig tilesPerFrame = %lu", [video tilesPerFrame]);
  }

  txCodecFeatureListString = [video txCodecFeatureListString];
  v75 = [txCodecFeatureListString isEqualToString:@"LF:-1;HTS:2;FLS;POS:5;EOD:1;RR:3"];

  if ((v75 & 1) == 0)
  {
    v76 = sub_1000423E0();
    if (v76)
    {
      v77 = sub_100042E68(v76);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        txCodecFeatureListString2 = [video txCodecFeatureListString];
        v79 = [txCodecFeatureListString2 description];
        uTF8String = [v79 UTF8String];
        *buf = 136315650;
        v84 = "[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]";
        v85 = 1024;
        v86 = 412;
        v87 = 2080;
        v88 = uTF8String;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] videoconfig txCodecFeatureListString %s", buf, 0x1Cu);
      }
    }

    txCodecFeatureListString3 = [video txCodecFeatureListString];
    v82 = [txCodecFeatureListString3 description];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 412, "-[SSAVCMediaStreamController logUnexpectedVideoConfigInfo:]", 5, 0, "videoconfig txCodecFeatureListString %s", [v82 UTF8String]);
  }
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  streamCopy = stream;
  errorCopy = error;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        code = [errorCopy code];
        v13 = [errorCopy description];
        *buf = 136316418;
        v21 = "[SSAVCMediaStreamController stream:didStart:error:]";
        v22 = 1024;
        v23 = 422;
        v24 = 2048;
        v25 = streamCopy;
        v26 = 1024;
        v27 = startCopy;
        v28 = 2048;
        v29 = code;
        v30 = 2080;
        uTF8String = [v13 UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p  didStart: %d error: %ld %s", buf, 0x36u);
      }
    }

    code2 = [errorCopy code];
    v15 = [errorCopy description];
    [v15 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 422, "[SSAVCMediaStreamController stream:didStart:error:]", 7, 0, "video stream: %p  didStart: %d error: %ld %s", streamCopy, startCopy, code2);
  }

  else
  {
    if (v10)
    {
      v16 = sub_100042E68(v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        code3 = [errorCopy code];
        v18 = [errorCopy description];
        *buf = 136316418;
        v21 = "[SSAVCMediaStreamController stream:didStart:error:]";
        v22 = 1024;
        v23 = 424;
        v24 = 2048;
        v25 = streamCopy;
        v26 = 1024;
        v27 = startCopy;
        v28 = 2048;
        v29 = code3;
        v30 = 2080;
        uTF8String = [v18 UTF8String];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p  didStart: %d error: %ld %s", buf, 0x36u);
      }
    }

    code4 = [errorCopy code];
    v15 = [errorCopy description];
    [v15 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 424, "[SSAVCMediaStreamController stream:didStart:error:]", 7, 0, "audio stream: %p  didStart: %d error: %ld %s", streamCopy, startCopy, code4);
  }
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidStop:]";
        v10 = 1024;
        v11 = 430;
        v12 = 2048;
        v13 = stopCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] video streamDidStop: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 430, "[SSAVCMediaStreamController streamDidStop:]", 7, 0, "video streamDidStop: %p");
  }

  else
  {
    if (v5)
    {
      v7 = sub_100042E68(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidStop:]";
        v10 = 1024;
        v11 = 432;
        v12 = 2048;
        v13 = stopCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidStop: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 432, "[SSAVCMediaStreamController streamDidStop:]", 7, 0, "audio streamDidStop: %p");
  }
}

- (void)streamDidServerDie:(id)die
{
  dieCopy = die;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "[SSAVCMediaStreamController streamDidServerDie:]";
        v12 = 1024;
        v13 = 438;
        v14 = 2048;
        v15 = dieCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%s:%d] video streamDidServerDie: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 438, "[SSAVCMediaStreamController streamDidServerDie:]", 3, 0, "video streamDidServerDie: %p");
  }

  else
  {
    if (v6)
    {
      v8 = sub_100042E68(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v11 = "[SSAVCMediaStreamController streamDidServerDie:]";
        v12 = 1024;
        v13 = 440;
        v14 = 2048;
        v15 = dieCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%s:%d] audio streamDidServerDie: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 440, "[SSAVCMediaStreamController streamDidServerDie:]", 3, 0, "audio streamDidServerDie: %p");
  }

  delegate = [(SSAVCMediaStreamController *)self delegate];
  [delegate SSMediaStreamServerDidDie];
}

- (void)stream:(id)stream didPause:(BOOL)pause error:(id)error
{
  pauseCopy = pause;
  streamCopy = stream;
  errorCopy = error;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        code = [errorCopy code];
        v13 = [errorCopy description];
        *buf = 136316418;
        v21 = "[SSAVCMediaStreamController stream:didPause:error:]";
        v22 = 1024;
        v23 = 447;
        v24 = 2048;
        v25 = streamCopy;
        v26 = 1024;
        v27 = pauseCopy;
        v28 = 2048;
        v29 = code;
        v30 = 2080;
        uTF8String = [v13 UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   didPause: %d  error: %ld %s", buf, 0x36u);
      }
    }

    code2 = [errorCopy code];
    v15 = [errorCopy description];
    [v15 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 447, "[SSAVCMediaStreamController stream:didPause:error:]", 7, 0, "video stream: %p   didPause: %d  error: %ld %s", streamCopy, pauseCopy, code2);
  }

  else
  {
    if (v10)
    {
      v16 = sub_100042E68(v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        code3 = [errorCopy code];
        v18 = [errorCopy description];
        *buf = 136316418;
        v21 = "[SSAVCMediaStreamController stream:didPause:error:]";
        v22 = 1024;
        v23 = 449;
        v24 = 2048;
        v25 = streamCopy;
        v26 = 1024;
        v27 = pauseCopy;
        v28 = 2048;
        v29 = code3;
        v30 = 2080;
        uTF8String = [v18 UTF8String];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p   didPause: %d  error: %ld %s", buf, 0x36u);
      }
    }

    code4 = [errorCopy code];
    v15 = [errorCopy description];
    [v15 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 449, "[SSAVCMediaStreamController stream:didPause:error:]", 7, 0, "audio stream: %p   didPause: %d  error: %ld %s", streamCopy, pauseCopy, code4);
  }
}

- (void)stream:(id)stream didResume:(BOOL)resume error:(id)error
{
  resumeCopy = resume;
  streamCopy = stream;
  errorCopy = error;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        code = [errorCopy code];
        v13 = [errorCopy description];
        *buf = 136316418;
        v21 = "[SSAVCMediaStreamController stream:didResume:error:]";
        v22 = 1024;
        v23 = 456;
        v24 = 2048;
        v25 = streamCopy;
        v26 = 1024;
        v27 = resumeCopy;
        v28 = 2048;
        v29 = code;
        v30 = 2080;
        uTF8String = [v13 UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   didResume: %d  error: %ld %s", buf, 0x36u);
      }
    }

    code2 = [errorCopy code];
    v15 = [errorCopy description];
    [v15 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 456, "[SSAVCMediaStreamController stream:didResume:error:]", 7, 0, "video stream: %p   didResume: %d  error: %ld %s", streamCopy, resumeCopy, code2);
  }

  else
  {
    if (v10)
    {
      v16 = sub_100042E68(v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        code3 = [errorCopy code];
        v18 = [errorCopy description];
        *buf = 136316418;
        v21 = "[SSAVCMediaStreamController stream:didResume:error:]";
        v22 = 1024;
        v23 = 458;
        v24 = 2048;
        v25 = streamCopy;
        v26 = 1024;
        v27 = resumeCopy;
        v28 = 2048;
        v29 = code3;
        v30 = 2080;
        uTF8String = [v18 UTF8String];
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p   didResume: %d  error: %ld %s", buf, 0x36u);
      }
    }

    code4 = [errorCopy code];
    v15 = [errorCopy description];
    [v15 UTF8String];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 458, "[SSAVCMediaStreamController stream:didResume:error:]", 7, 0, "audio stream: %p   didResume: %d  error: %ld %s", streamCopy, resumeCopy, code4);
  }
}

- (void)stream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error
{
  configurationCopy = configuration;
  streamCopy = stream;
  errorCopy = error;
  v9 = sub_1000423E0();
  if (v9)
  {
    v10 = sub_100042E68(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      code = [errorCopy code];
      v12 = [errorCopy description];
      *buf = 136316418;
      v16 = "[SSAVCMediaStreamController stream:didUpdateVideoConfiguration:error:]";
      v17 = 1024;
      v18 = 463;
      v19 = 2048;
      v20 = streamCopy;
      v21 = 1024;
      v22 = configurationCopy;
      v23 = 2048;
      v24 = code;
      v25 = 2080;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   didUpdateVideoConfiguration: %d  error: %ld %s", buf, 0x36u);
    }
  }

  code2 = [errorCopy code];
  v14 = [errorCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 463, "-[SSAVCMediaStreamController stream:didUpdateVideoConfiguration:error:]", 7, 0, "video stream: %p   didUpdateVideoConfiguration: %d  error: %ld %s", streamCopy, configurationCopy, code2, [v14 UTF8String]);
}

- (void)streamDidRTPTimeOut:(id)out
{
  outCopy = out;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidRTPTimeOut:]";
        v10 = 1024;
        v11 = 469;
        v12 = 2048;
        v13 = outCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] video streamDidRTPTimeOut: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 469, "[SSAVCMediaStreamController streamDidRTPTimeOut:]", 7, 0, "video streamDidRTPTimeOut: %p");
  }

  else
  {
    if (v5)
    {
      v7 = sub_100042E68(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = "[SSAVCMediaStreamController streamDidRTPTimeOut:]";
        v10 = 1024;
        v11 = 471;
        v12 = 2048;
        v13 = outCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidRTPTimeOut: %p", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 471, "[SSAVCMediaStreamController streamDidRTPTimeOut:]", 7, 0, "audio streamDidRTPTimeOut: %p");
  }
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = sub_1000423E0();
  if (isKindOfClass)
  {
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = "[SSAVCMediaStreamController streamDidRTCPTimeOut:]";
        v15 = 1024;
        v16 = 477;
        v17 = 2048;
        v18 = outCopy;
        v19 = 1024;
        v20 = [(SSAVCMediaStreamController *)self RTCPTimeoutCount]+ 1;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] video streamDidRTCPTimeOut: %p count: %u", buf, 0x22u);
      }
    }

    [(SSAVCMediaStreamController *)self RTCPTimeoutCount];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 477, "[SSAVCMediaStreamController streamDidRTCPTimeOut:]", 7, 0, "video streamDidRTCPTimeOut: %p count: %u", outCopy);
  }

  else
  {
    if (v6)
    {
      v8 = sub_100042E68(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = "[SSAVCMediaStreamController streamDidRTCPTimeOut:]";
        v15 = 1024;
        v16 = 479;
        v17 = 2048;
        v18 = outCopy;
        v19 = 1024;
        v20 = [(SSAVCMediaStreamController *)self RTCPTimeoutCount]+ 1;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidRTCPTimeOut: %p count: %u", buf, 0x22u);
      }
    }

    [(SSAVCMediaStreamController *)self RTCPTimeoutCount];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 479, "[SSAVCMediaStreamController streamDidRTCPTimeOut:]", 7, 0, "audio streamDidRTCPTimeOut: %p count: %u", outCopy);
  }

  if ([(SSAVCMediaStreamController *)self RTCPTimeoutCount]< 0xA)
  {
    v12 = [(SSAVCMediaStreamController *)self RTCPTimeoutCount]+ 1;
  }

  else
  {
    v9 = sub_1000423E0();
    if (v9)
    {
      v10 = sub_100042E68(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[SSAVCMediaStreamController streamDidRTCPTimeOut:]";
        v15 = 1024;
        v16 = 482;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] too many RTCP timeouts", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 482, "[SSAVCMediaStreamController streamDidRTCPTimeOut:]", 7, 0, "too many RTCP timeouts");
    delegate = [(SSAVCMediaStreamController *)self delegate];
    [delegate SSMediaStreamTimeout];

    v12 = 0;
  }

  [(SSAVCMediaStreamController *)self setRTCPTimeoutCount:v12];
}

- (void)stream:(id)stream didReceiveRTCPPackets:(id)packets
{
  streamCopy = stream;
  packetsCopy = packets;
  [(SSAVCMediaStreamController *)self setRTCPTimeoutCount:0];
  objc_opt_class();
  LOBYTE(self) = objc_opt_isKindOfClass();
  v8 = sub_1000423E0();
  if (self)
  {
    if (v8)
    {
      v9 = sub_100042E68(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]";
        v13 = 1024;
        v14 = 494;
        v15 = 2048;
        v16 = streamCopy;
        v17 = 2048;
        v18 = [packetsCopy count];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   didReceiveRTCPPackets: %lu packets", buf, 0x26u);
      }
    }

    [packetsCopy count];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 494, "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]", 7, 0, "video stream: %p   didReceiveRTCPPackets: %lu packets", streamCopy);
  }

  else
  {
    if (v8)
    {
      v10 = sub_100042E68(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]";
        v13 = 1024;
        v14 = 496;
        v15 = 2048;
        v16 = streamCopy;
        v17 = 2048;
        v18 = [packetsCopy count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p   didReceiveRTCPPackets: %lu packets", buf, 0x26u);
      }
    }

    [packetsCopy count];
    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 496, "[SSAVCMediaStreamController stream:didReceiveRTCPPackets:]", 7, 0, "audio stream: %p   didReceiveRTCPPackets: %lu packets", streamCopy);
  }
}

- (void)stream:(id)stream didGetLastDecodedFrame:(id)frame
{
  streamCopy = stream;
  frameCopy = frame;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = "[SSAVCMediaStreamController stream:didGetLastDecodedFrame:]";
      v11 = 1024;
      v12 = 501;
      v13 = 2048;
      v14 = streamCopy;
      v15 = 2048;
      v16 = [frameCopy length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] video didGetLastDecodedFrame: %p  data size %ld", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 501, "-[SSAVCMediaStreamController stream:didGetLastDecodedFrame:]", 7, 0, "video didGetLastDecodedFrame: %p  data size %ld", streamCopy, [frameCopy length]);
}

- (void)stream:(id)stream downlinkQualityDidChange:(id)change
{
  streamCopy = stream;
  changeCopy = change;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [changeCopy description];
      *buf = 136315906;
      v12 = "[SSAVCMediaStreamController stream:downlinkQualityDidChange:]";
      v13 = 1024;
      v14 = 506;
      v15 = 2048;
      v16 = streamCopy;
      v17 = 2080;
      uTF8String = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   downlinkQualityDidChange:%s", buf, 0x26u);
    }
  }

  v10 = [changeCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 506, "-[SSAVCMediaStreamController stream:downlinkQualityDidChange:]", 7, 0, "video stream: %p   downlinkQualityDidChange:%s", streamCopy, [v10 UTF8String]);
}

- (void)stream:(id)stream uplinkQualityDidChange:(id)change
{
  streamCopy = stream;
  changeCopy = change;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [changeCopy description];
      *buf = 136315906;
      v12 = "[SSAVCMediaStreamController stream:uplinkQualityDidChange:]";
      v13 = 1024;
      v14 = 511;
      v15 = 2048;
      v16 = streamCopy;
      v17 = 2080;
      uTF8String = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] video stream: %p   uplinkQualityDidChange:%s", buf, 0x26u);
    }
  }

  v10 = [changeCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 511, "-[SSAVCMediaStreamController stream:uplinkQualityDidChange:]", 7, 0, "video stream: %p   uplinkQualityDidChange:%s", streamCopy, [v10 UTF8String]);
}

- (void)streamDidInterruptionBegin:(id)begin
{
  beginCopy = begin;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[SSAVCMediaStreamController streamDidInterruptionBegin:]";
      v8 = 1024;
      v9 = 516;
      v10 = 2048;
      v11 = beginCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidInterruptionBegin: %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 516, "[SSAVCMediaStreamController streamDidInterruptionBegin:]", 7, 0, "audio streamDidInterruptionBegin: %p", beginCopy);
}

- (void)streamDidInterruptionEnd:(id)end
{
  endCopy = end;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[SSAVCMediaStreamController streamDidInterruptionEnd:]";
      v8 = 1024;
      v9 = 521;
      v10 = 2048;
      v11 = endCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio streamDidInterruptionEnd: %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 521, "[SSAVCMediaStreamController streamDidInterruptionEnd:]", 7, 0, "audio streamDidInterruptionEnd: %p", endCopy);
}

- (void)stream:(id)stream didStartSynchronizer:(BOOL)synchronizer error:(id)error
{
  synchronizerCopy = synchronizer;
  streamCopy = stream;
  errorCopy = error;
  v9 = sub_1000423E0();
  if (v9)
  {
    v10 = sub_100042E68(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      code = [errorCopy code];
      v12 = [errorCopy description];
      *buf = 136316418;
      v16 = "[SSAVCMediaStreamController stream:didStartSynchronizer:error:]";
      v17 = 1024;
      v18 = 526;
      v19 = 2048;
      v20 = streamCopy;
      v21 = 1024;
      v22 = synchronizerCopy;
      v23 = 2048;
      v24 = code;
      v25 = 2080;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p  didStartSynchronizer: %d error: %ld %s", buf, 0x36u);
    }
  }

  code2 = [errorCopy code];
  v14 = [errorCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 526, "-[SSAVCMediaStreamController stream:didStartSynchronizer:error:]", 7, 0, "audio stream: %p  didStartSynchronizer: %d error: %ld %s", streamCopy, synchronizerCopy, code2, [v14 UTF8String]);
}

- (void)stream:(id)stream didReceiveDTMFEventWithDigit:(char)digit
{
  digitCopy = digit;
  streamCopy = stream;
  v6 = sub_1000423E0();
  if (v6)
  {
    v7 = sub_100042E68(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v9 = "[SSAVCMediaStreamController stream:didReceiveDTMFEventWithDigit:]";
      v10 = 1024;
      v11 = 531;
      v12 = 2048;
      v13 = streamCopy;
      v14 = 1024;
      v15 = digitCopy;
      v16 = 1024;
      v17 = digitCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p didReceiveDTMFEventWithDigit:%c (0x%x)", buf, 0x28u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 531, "[SSAVCMediaStreamController stream:didReceiveDTMFEventWithDigit:]", 7, 0, "audio stream: %p didReceiveDTMFEventWithDigit:%c (0x%x)", streamCopy, digitCopy, digitCopy);
}

- (void)stream:(id)stream updateInputFrequencyLevel:(id)level
{
  streamCopy = stream;
  levelCopy = level;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = "[SSAVCMediaStreamController stream:updateInputFrequencyLevel:]";
      v11 = 1024;
      v12 = 536;
      v13 = 2048;
      v14 = streamCopy;
      v15 = 2048;
      v16 = [levelCopy length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p updateInputFrequencyLevel  data length %ld", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 536, "-[SSAVCMediaStreamController stream:updateInputFrequencyLevel:]", 7, 0, "audio stream: %p updateInputFrequencyLevel  data length %ld", streamCopy, [levelCopy length]);
}

- (void)stream:(id)stream updateOutputFrequencyLevel:(id)level
{
  streamCopy = stream;
  levelCopy = level;
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = "[SSAVCMediaStreamController stream:updateOutputFrequencyLevel:]";
      v11 = 1024;
      v12 = 541;
      v13 = 2048;
      v14 = streamCopy;
      v15 = 2048;
      v16 = [levelCopy length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] audio stream: %p updateOutputFrequencyLevel  data length %ld", buf, 0x26u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 541, "-[SSAVCMediaStreamController stream:updateOutputFrequencyLevel:]", 7, 0, "audio stream: %p updateOutputFrequencyLevel  data length %ld", streamCopy, [levelCopy length]);
}

- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error
{
  stopCopy = stop;
  captureCopy = capture;
  errorCopy = error;
  v9 = sub_1000423E0();
  if (v9)
  {
    v10 = sub_100042E68(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      code = [errorCopy code];
      v12 = [errorCopy description];
      *buf = 136316418;
      v16 = "[SSAVCMediaStreamController screenCapture:didStop:withError:]";
      v17 = 1024;
      v18 = 548;
      v19 = 2048;
      v20 = captureCopy;
      v21 = 1024;
      v22 = stopCopy;
      v23 = 2048;
      v24 = code;
      v25 = 2080;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] screenCapture: %p  didStop: %d  error: %ld %s", buf, 0x36u);
    }
  }

  code2 = [errorCopy code];
  v14 = [errorCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 548, "-[SSAVCMediaStreamController screenCapture:didStop:withError:]", 7, 0, "screenCapture: %p  didStop: %d  error: %ld %s", captureCopy, stopCopy, code2, [v14 UTF8String]);
}

- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error
{
  startCopy = start;
  captureCopy = capture;
  errorCopy = error;
  v9 = sub_1000423E0();
  if (v9)
  {
    v10 = sub_100042E68(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      code = [errorCopy code];
      v12 = [errorCopy description];
      *buf = 136316418;
      v16 = "[SSAVCMediaStreamController screenCapture:didStart:withError:]";
      v17 = 1024;
      v18 = 553;
      v19 = 2048;
      v20 = captureCopy;
      v21 = 1024;
      v22 = startCopy;
      v23 = 2048;
      v24 = code;
      v25 = 2080;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] screenCapture: %p  didStart: %d  error: %ld %s", buf, 0x36u);
    }
  }

  code2 = [errorCopy code];
  v14 = [errorCopy description];
  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 553, "-[SSAVCMediaStreamController screenCapture:didStart:withError:]", 7, 0, "screenCapture: %p  didStart: %d  error: %ld %s", captureCopy, startCopy, code2, [v14 UTF8String]);
}

- (void)serverDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = sub_1000423E0();
  if (v4)
  {
    v5 = sub_100042E68(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = "[SSAVCMediaStreamController serverDidDisconnect:]";
      v8 = 1024;
      v9 = 558;
      v10 = 2048;
      v11 = disconnectCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] screenCapture serverDidDisconnect %p", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/SSAVCMediaStreamController.m", 119, 558, "[SSAVCMediaStreamController serverDidDisconnect:]", 7, 0, "screenCapture serverDidDisconnect %p", disconnectCopy);
}

- (SSAVCMediaStreamControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end