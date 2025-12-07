@interface SOSUIWebRTCView
- (BOOL)resetAndReturnError:(id *)error;
- (WKWebView)webView;
- (_TtC5SOSUI15SOSUIWebRTCView)initWithFrame:(CGRect)frame;
- (_TtC5SOSUI16SOSUIWebRTCState)state;
- (_TtP5SOSUI19SOSUIWebRTCDelegate_)delegate;
- (void)endVideoPreviewWithCompletionHandler:(id)handler;
- (void)endVideoStreamWithCompletionHandler:(id)handler;
- (void)flipCameraWithCompletionHandler:(id)handler;
- (void)getCapabilitiesWithCompletionHandler:(id)handler;
- (void)goToErrorWithRetryable:(BOOL)retryable completionHandler:(id)handler;
- (void)networkInterfacesDidChangeWithCompletionHandler:(id)handler;
- (void)pauseVideoWithCompletionHandler:(id)handler;
- (void)pauseVideoWithPausedString:(NSString *)string completionHandler:(id)handler;
- (void)setDebugConnection:(BOOL)connection completionHandler:(id)handler;
- (void)setFrameRate:(double)rate completionHandler:(id)handler;
- (void)setIceRestartRetryCount:(double)count completionHandler:(id)handler;
- (void)setIceRestartTimeout:(double)timeout completionHandler:(id)handler;
- (void)setMaximumBitrate:(double)bitrate completionHandler:(id)handler;
- (void)setMinimumBitrate:(double)bitrate completionHandler:(id)handler;
- (void)setPausedString:(NSString *)string completionHandler:(id)handler;
- (void)setPoorConnectionGracePeriod:(double)period completionHandler:(id)handler;
- (void)setPoorConnectionThreshold:(double)threshold completionHandler:(id)handler;
- (void)setState:(id)state;
- (void)setVideoPreference:(int64_t)preference completionHandler:(id)handler;
- (void)setWebView:(id)view;
- (void)setZoomLevelWithZoom:(double)zoom completionHandler:(id)handler;
- (void)startVideoPreviewWithCameraFacing:(int64_t)facing completionHandler:(id)handler;
- (void)startVideoPreviewWithCompletionHandler:(id)handler;
- (void)startVideoStreamWithEndpoint:(NSString *)endpoint completionHandler:(id)handler;
- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token completionHandler:(id)handler;
- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token trickle:(BOOL)trickle completionHandler:(id)handler;
- (void)toggleTorchWithCompletionHandler:(id)handler;
- (void)torchOffWithCompletionHandler:(id)handler;
- (void)torchOnWithCompletionHandler:(id)handler;
- (void)unpauseVideoWithCompletionHandler:(id)handler;
- (void)useFrontCameraWithCompletionHandler:(id)handler;
- (void)useRearCameraWithCompletionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view requestMediaCapturePermissionForOrigin:(id)origin initiatedByFrame:(id)frame type:(int64_t)type decisionHandler:(id)handler;
@end

@implementation SOSUIWebRTCView

- (_TtC5SOSUI16SOSUIWebRTCState)state
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setState:(id)state
{
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = state;
  stateCopy = state;
}

- (WKWebView)webView
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWebView:(id)view
{
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = view;
  viewCopy = view;
}

- (_TtP5SOSUI19SOSUIWebRTCDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)resetAndReturnError:(id *)error
{
  selfCopy = self;
  sub_264386D88();

  return 1;
}

- (void)webView:(id)view requestMediaCapturePermissionForOrigin:(id)origin initiatedByFrame:(id)frame type:(int64_t)type decisionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v4 = *(self + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished);
  if (v4)
  {
    if (navigation)
    {
      v6 = *(self + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished + 8);
      navigationCopy = navigation;
      selfCopy = self;
      sub_26439FC58(v4, v6);
      v4(navigationCopy);

      sub_26439B0AC(v4, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = *((*MEMORY[0x277D85000] & *self) + 0xD0);
  challengeCopy = challenge;
  selfCopy = self;
  v11 = v8();
  if (v11)
  {
    serverAuthenticationChallengeWithChallenge_ = [v11 serverAuthenticationChallengeWithChallenge_];
    swift_unknownObjectRelease();
  }

  else
  {
    serverAuthenticationChallengeWithChallenge_ = 1;
  }

  v7[2](v7, serverAuthenticationChallengeWithChallenge_, 0);

  _Block_release(v7);
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_26439F940(actionCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)pauseVideoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1FD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1FE0;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1FE8, v12);
}

- (void)pauseVideoWithPausedString:(NSString *)string completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = string;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1FB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1FC0;
  v14[5] = v13;
  stringCopy = string;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1FC8, v14);
}

- (void)unpauseVideoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1F98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1FA0;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1FA8, v12);
}

- (void)useFrontCameraWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1F78;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F80;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1F88, v12);
}

- (void)useRearCameraWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1F58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F60;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1F68, v12);
}

- (void)startVideoPreviewWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1F38;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F40;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1F48, v12);
}

- (void)startVideoPreviewWithCameraFacing:(int64_t)facing completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = facing;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1F18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1F20;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1F28, v14);
}

- (void)startVideoStreamWithEndpoint:(NSString *)endpoint completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = endpoint;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1EF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1F00;
  v14[5] = v13;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1F08, v14);
}

- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = endpoint;
  v13[3] = token;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_2643B05F8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1ED8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2643B1EE0;
  v16[5] = v15;
  endpointCopy = endpoint;
  tokenCopy = token;
  selfCopy = self;
  sub_26439A530(0, 0, v11, &unk_2643B1EE8, v16);
}

- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token trickle:(BOOL)trickle completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = endpoint;
  *(v15 + 24) = token;
  *(v15 + 32) = trickle;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_2643B05F8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2643B1EB8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2643B1EC0;
  v18[5] = v17;
  endpointCopy = endpoint;
  tokenCopy = token;
  selfCopy = self;
  sub_26439A530(0, 0, v13, &unk_2643B1EC8, v18);
}

- (void)endVideoStreamWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1E98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1EA0;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1EA8, v12);
}

- (void)flipCameraWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1E78;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E80;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1E88, v12);
}

- (void)torchOnWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1E58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E60;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1E68, v12);
}

- (void)torchOffWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1E38;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E40;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1E48, v12);
}

- (void)toggleTorchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1E18;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E20;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1E28, v12);
}

- (void)setZoomLevelWithZoom:(double)zoom completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = zoom;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1DF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1E00;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1E08, v14);
}

- (void)endVideoPreviewWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1DD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1DE0;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1DE8, v12);
}

- (void)getCapabilitiesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1DB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1DC0;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1DC8, v12);
}

- (void)setPoorConnectionThreshold:(double)threshold completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = threshold;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1D98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1DA0;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1DA8, v14);
}

- (void)setPoorConnectionGracePeriod:(double)period completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = period;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1D78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D80;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1D88, v14);
}

- (void)setIceRestartTimeout:(double)timeout completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = timeout;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1D58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D60;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1D68, v14);
}

- (void)setIceRestartRetryCount:(double)count completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = count;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1D38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D40;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1D48, v14);
}

- (void)setMinimumBitrate:(double)bitrate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = bitrate;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1D18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D20;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1D28, v14);
}

- (void)setMaximumBitrate:(double)bitrate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = bitrate;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1CF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D00;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1D08, v14);
}

- (void)setPausedString:(NSString *)string completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = string;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1CD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1CE0;
  v14[5] = v13;
  stringCopy = string;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1CE8, v14);
}

- (void)setDebugConnection:(BOOL)connection completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = connection;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1CB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1CC0;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1CC8, v14);
}

- (void)setVideoPreference:(int64_t)preference completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = preference;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1C98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1CA0;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1CA8, v14);
}

- (void)setFrameRate:(double)rate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = rate;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1C78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1C80;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1C88, v14);
}

- (void)goToErrorWithRetryable:(BOOL)retryable completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = retryable;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_2643B05F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1C58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1C60;
  v14[5] = v13;
  selfCopy = self;
  sub_26439A530(0, 0, v9, &unk_2643B1C68, v14);
}

- (void)networkInterfacesDidChangeWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_2643B05F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_2643B1C10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1C20;
  v12[5] = v11;
  selfCopy = self;
  sub_26439A530(0, 0, v7, &unk_2643B1C30, v12);
}

- (_TtC5SOSUI15SOSUIWebRTCView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end