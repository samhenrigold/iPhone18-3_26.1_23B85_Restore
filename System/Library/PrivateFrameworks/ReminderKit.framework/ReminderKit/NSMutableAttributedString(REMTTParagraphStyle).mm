@interface NSMutableAttributedString(REMTTParagraphStyle)
- (void)rem_addParagraphNamedStyle:()REMTTParagraphStyle inRange:;
- (void)rem_removeParagraphNamedStyleFromRange:()REMTTParagraphStyle;
@end

@implementation NSMutableAttributedString(REMTTParagraphStyle)

- (void)rem_addParagraphNamedStyle:()REMTTParagraphStyle inRange:
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = [self length];
  if (a4 >= v9)
  {
    a4 = v9;
  }

  if (a4 + a5 > v9)
  {
    a5 = v9 - a4;
  }

  if (a5)
  {
    [self beginEditing];
    v10 = [[REMTTParagraphStyle alloc] initWithStyle:a3];
    v11 = v10;
    v12 = TTAttributeNameParagraphStyle;
    if (v10)
    {
      innerStyle = [(REMTTParagraphStyle *)v10 innerStyle];
      [self addAttribute:v12 value:innerStyle range:{a4, a5}];
    }

    else
    {
      [self removeAttribute:TTAttributeNameParagraphStyle range:{a4, a5}];
    }

    [self endEditing];
    v14 = +[REMLog crdt];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      innerStyle2 = [(REMTTParagraphStyle *)v11 innerStyle];
      v24.location = a4;
      v24.length = a5;
      v16 = NSStringFromRange(v24);
      v17 = 134218498;
      selfCopy = self;
      v19 = 2112;
      v20 = innerStyle2;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "Added REMTTParagraphStyle to this NSMutableAttributedString {self: %p, paragraphStyle: %@, range: %@}", &v17, 0x20u);
    }
  }
}

- (void)rem_removeParagraphNamedStyleFromRange:()REMTTParagraphStyle
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = [self length];
  if (a3 >= v7)
  {
    a3 = v7;
  }

  if (a3 + a4 <= v7)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7 - a3;
  }

  if (v8)
  {
    [self removeAttribute:TTAttributeNameParagraphStyle range:{a3, v8}];
    v9 = +[REMLog crdt];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16.location = a3;
      v16.length = v8;
      v10 = NSStringFromRange(v16);
      v11 = 134218242;
      selfCopy = self;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_INFO, "Remove REMTTParagraphStyle from this NSMutableAttributedString {self: %p, range: %@}", &v11, 0x16u);
    }
  }
}

@end