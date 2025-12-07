@interface ASCABLEClient
- (NSURL)qrCodeURL;
- (_TtC26AuthenticationServicesCore13ASCABLEClient)init;
- (_TtC26AuthenticationServicesCore13ASCABLEClient)initWithDelegate:(id)delegate isRegistrationRequest:(BOOL)request;
- (void)cancelIfNecessary;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToScanWithError:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)performAuthenticationOperation:(int64_t)operation forRelyingPartyIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation ASCABLEClient

- (NSURL)qrCodeURL
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 8];
  v15[0] = *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct);
  v15[1] = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct);
  v8 = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 8];
  v16[0] = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 24];
  *(v16 + 15) = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 39];
  v12 = v9;
  v13 = v8;
  v14[0] = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 24];
  *(v14 + 15) = *&self->qrCodeStruct[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 39];
  sub_1C20F1ED4(v15, v17);
  sub_1C20FD544(v6);
  v17[0] = v12;
  v17[1] = v13;
  v18[0] = v14[0];
  *(v18 + 15) = *(v14 + 15);
  sub_1C20EB700(v17);
  v10 = sub_1C216FFB4();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (_TtC26AuthenticationServicesCore13ASCABLEClient)initWithDelegate:(id)delegate isRegistrationRequest:(BOOL)request
{
  swift_getObjectType();
  requestCopy = request;
  v5 = swift_unknownObjectRetain();
  v6 = sub_1C20F1F30(v5, &requestCopy);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)performAuthenticationOperation:(int64_t)operation forRelyingPartyIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1C2170914();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  sub_1C20EC924(operation, v8, v10, sub_1C20EB1A4, v11);
}

- (void)cancelIfNecessary
{
  selfCopy = self;
  sub_1C20F2980(4);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1C20ED324(stateCopy);
}

- (void)centralManager:(id)manager didFailToScanWithError:(id)error
{
  managerCopy = manager;
  selfCopy = self;
  errorCopy = error;
  sub_1C20F2EA4(error);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = sub_1C2170864();
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_1C20F3040(peripheralCopy, v10);
}

- (_TtC26AuthenticationServicesCore13ASCABLEClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end