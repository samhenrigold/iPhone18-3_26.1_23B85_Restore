@interface ObjectCaptureSession
- (BOOL)sessionShouldAttemptRelocalization:(id)relocalization;
- (_TtC6CoreOC20ObjectCaptureSession)init;
- (uint64_t)logThermalStateChange;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
@end

@implementation ObjectCaptureSession

- (_TtC6CoreOC20ObjectCaptureSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_24607C0C4(frameCopy);
}

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  selfCopy = self;
  sub_24607D158(stateCopy);
}

- (BOOL)sessionShouldAttemptRelocalization:(id)relocalization
{
  relocalizationCopy = relocalization;
  selfCopy = self;
  LOBYTE(self) = _s6CoreOC20ObjectCaptureSessionC34sessionShouldAttemptRelocalizationySbSo9ARSessionCF_0();

  return self & 1;
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_24607DE00(errorCopy);
}

- (uint64_t)logThermalStateChange
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  processInfo = [objc_opt_self() processInfo];
  thermalState = [processInfo thermalState];

  v6 = sub_245FA3174();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136380931;
    *(v9 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4470, &v16);
    *(v9 + 12) = 2082;
    v15 = thermalState;
    type metadata accessor for ThermalState(0);
    v11 = sub_246091C54();
    v13 = sub_245F8D3C0(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: Caution! Thermal State changed to %{public}s!", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v10, -1, -1);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end