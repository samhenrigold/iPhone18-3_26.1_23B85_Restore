@interface ContactVisualIdentityPicker.Coordinator
- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image;
- (void)visualIdentityPickerDidCancel:(id)cancel;
@end

@implementation ContactVisualIdentityPicker.Coordinator

- (void)visualIdentityPickerDidCancel:(id)cancel
{
  MEMORY[0x1E69E5928](cancel, a2);
  MEMORY[0x1E69E5928](self, v4);
  sub_1C54FBC64(cancel);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](cancel);
}

- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image
{
  MEMORY[0x1E69E5928](picker, a2);
  MEMORY[0x1E69E5928](identity, v6);
  MEMORY[0x1E69E5928](image, v7);
  MEMORY[0x1E69E5928](self, v8);
  sub_1C54FC0CC(picker, identity, image);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](image);
  MEMORY[0x1E69E5920](identity);
  MEMORY[0x1E69E5920](picker);
}

@end