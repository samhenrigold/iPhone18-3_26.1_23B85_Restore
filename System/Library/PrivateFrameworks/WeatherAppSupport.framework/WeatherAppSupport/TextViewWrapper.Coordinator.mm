@interface TextViewWrapper.Coordinator
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
@end

@implementation TextViewWrapper.Coordinator

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = sub_220DBE2E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE2D0();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_220CF0D10(viewCopy, v11);

  (*(v9 + 8))(v11, v8);
  return v14 & 1;
}

@end