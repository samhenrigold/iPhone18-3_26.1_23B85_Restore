@interface _PMOtpauthQRCodeScannerView.Coordinator
- (_TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator)init;
- (void)QRCodeScannerViewController:(id)controller didScanQRCodeWithURLValue:(id)value;
@end

@implementation _PMOtpauthQRCodeScannerView.Coordinator

- (void)QRCodeScannerViewController:(id)controller didScanQRCodeWithURLValue:(id)value
{
  v5 = sub_21CB80BE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v9 = *(&self->super.isa + OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion);
  selfCopy = self;

  v9(v8);

  (*(v6 + 8))(v8, v5);
}

- (_TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end