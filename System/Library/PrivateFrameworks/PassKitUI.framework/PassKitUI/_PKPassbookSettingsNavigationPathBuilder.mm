@interface _PKPassbookSettingsNavigationPathBuilder
+ (void)appendAutofillViewNavigationPathTo:(id)to descriptors:(id)descriptors authentication:(id)authentication settingsController:(id)controller;
- (_PKPassbookSettingsNavigationPathBuilder)init;
@end

@implementation _PKPassbookSettingsNavigationPathBuilder

+ (void)appendAutofillViewNavigationPathTo:(id)to descriptors:(id)descriptors authentication:(id)authentication settingsController:(id)controller
{
  v36 = sub_1BE04CEB4();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BE04CEE4();
  v11 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD9FB9E8();
  v14 = sub_1BE052744();
  toCopy = to;
  authenticationCopy = authentication;
  controllerCopy = controller;
  v18 = sub_1BE04AAC4();
  v20 = v19;

  sub_1BE052D94();
  v39 = v14;
  v40 = v18;
  v41 = v20;
  v42 = controllerCopy;
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BD9FBA34(&qword_1EBD5BBF0, type metadata accessor for AutoFillFPANCardsView, &protocol conformance descriptor for AutoFillFPANCardsView);
  sub_1BE04CEA4();
  v14, v21, v22, v23, v24, v25, v26, v27;
  sub_1BD9FBA34(&qword_1EBD5BBF8, MEMORY[0x1E69C59C0], MEMORY[0x1E69C59C8]);
  v28 = v36;
  sub_1BE04CED4();

  sub_1BD1245AC(v18, v20, v29, v30, v31, v32, v33, v34);
  (*(v38 + 8))(v10, v28);
  (*(v11 + 8))(v13, v37);
}

- (_PKPassbookSettingsNavigationPathBuilder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_PKPassbookSettingsNavigationPathBuilder *)&v3 init];
}

@end