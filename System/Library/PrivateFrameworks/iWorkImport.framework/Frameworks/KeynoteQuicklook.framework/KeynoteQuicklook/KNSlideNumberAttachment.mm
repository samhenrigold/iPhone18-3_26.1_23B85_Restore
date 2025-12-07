@interface KNSlideNumberAttachment
+ (Class)classForUnarchiver:(id)unarchiver;
+ (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver;
- (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver;
- (id)stringWithPageNumber:(unint64_t)number pageCount:(unint64_t)count charIndex:(unint64_t)index;
@end

@implementation KNSlideNumberAttachment

- (id)stringWithPageNumber:(unint64_t)number pageCount:(unint64_t)count charIndex:(unint64_t)index
{
  if (number == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = sub_275DC204C(self);
    v6 = [v5 localizedStringForKey:@"X" value:&stru_2884D8E20 table:@"Keynote"];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    parentStorage = [(KNSlideNumberAttachment *)self parentStorage];
    documentRoot = [parentStorage documentRoot];
    documentLocale = [documentRoot documentLocale];
    locale = [documentLocale locale];
    [v5 setLocale:locale];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:number];
    v6 = [v5 stringFromNumber:v13];
  }

  return v6;
}

+ (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if ([unarchiverCopy messageType] == 14)
  {
    v4 = unarchiverCopy;
    v5 = MEMORY[0x277D810B8];
    google::protobuf::internal::AssignDescriptors();
    v6 = [v4 messageWithDescriptor:*(*(v5 + 88) + 976)];
  }

  else
  {
    messageType = [unarchiverCopy messageType];
    v8 = unarchiverCopy;
    if (messageType == 2043)
    {
      v9 = MEMORY[0x277D810B8];
      google::protobuf::internal::AssignDescriptors();
      v10 = [v8 messageWithDescriptor:*(*(v9 + 88) + 1072)];

      v11 = *(v10 + 40);
    }

    else
    {
      google::protobuf::internal::AssignDescriptors();
      v12 = [v8 messageWithDescriptor:off_2812EA908[94]];

      v11 = *(v12 + 24);
    }

    if (v11)
    {
      v6 = v11;
    }

    else
    {
      v6 = MEMORY[0x277D81088];
    }
  }

  return v6;
}

+ (Class)classForUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = [self textualAttachmentArchiveFromUnarchiver:unarchiverCopy];
  if ((*(v5 + 16) & 2) == 0 || *(v5 + 32))
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___KNSlideNumberAttachment;
    selfCopy = objc_msgSendSuper2(&v9, sel_classForUnarchiver_, unarchiverCopy);
  }

  else
  {
    selfCopy = self;
  }

  v7 = selfCopy;

  return v7;
}

- (const)textualAttachmentArchiveFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = [objc_opt_class() textualAttachmentArchiveFromUnarchiver:unarchiverCopy];

  return v4;
}

@end