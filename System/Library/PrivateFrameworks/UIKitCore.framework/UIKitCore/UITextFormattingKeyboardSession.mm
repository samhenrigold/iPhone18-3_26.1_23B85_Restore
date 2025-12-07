@interface UITextFormattingKeyboardSession
- (UITextFormattingKeyboardSession)init;
- (id)_textFormattingResponder;
- (void)setFormattingDescriptor:(id)descriptor;
@end

@implementation UITextFormattingKeyboardSession

- (void)setFormattingDescriptor:(id)descriptor
{
  if (descriptor)
  {
    static UITextFormattingViewController.FormattingDescriptor._unconditionallyBridgeFromObjectiveC(_:)(descriptor, &v14);
    signpost_c2_entryLock_start();
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v23 = v14;
    v24 = v15;
  }

  else
  {
    sub_189038280(&v23);
  }

  v11 = v29;
  v12 = v30;
  v13 = v31;
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v5 = v23;
  v6 = v24;
  selfCopy = self;
  sub_189037110(&v5);

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14 = v5;
  v15 = v6;
  sub_188A3F5FC(&v14, &qword_1EA93A748, &unk_18A6611E0);
}

- (id)_textFormattingResponder
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Strong = swift_dynamicCastObjCProtocolConditional();
    if (!Strong)
    {

      Strong = 0;
    }
  }

  return Strong;
}

- (UITextFormattingKeyboardSession)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR___UITextFormattingKeyboardSession_textFormattingViewController) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(UISubstituteKeyboardSession *)&v5 init];
}

@end