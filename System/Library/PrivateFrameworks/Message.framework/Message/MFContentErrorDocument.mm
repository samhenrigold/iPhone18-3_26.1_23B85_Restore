@interface MFContentErrorDocument
- (MFContentErrorDocument)initWithMimePart:(id)part;
- (NSString)content;
@end

@implementation MFContentErrorDocument

- (MFContentErrorDocument)initWithMimePart:(id)part
{
  v20[1] = *MEMORY[0x1E69E9840];
  partCopy = part;
  if (!partCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFContentErrorDocument.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"mimePart"}];
  }

  v18.receiver = self;
  v18.super_class = MFContentErrorDocument;
  v6 = [(MFContentErrorDocument *)&v18 init];
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = MFLookupLocalizedString(@"CANNOT_DECODE_MULTIPART_MESSAGE", @"This message cannot be displayed because of the way it is formatted. Ask the sender to send it again using a different format or email program.\n\n%@/%@", @"Delayed");
    type = [partCopy type];
    subtype = [partCopy subtype];
    v11 = [v7 stringWithFormat:v8, type, subtype];

    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v12 mf_decodeFailedErrorWithUserInfo:v13];

    error = v6->_error;
    v6->_error = v14;
  }

  return v6;
}

- (NSString)content
{
  error = [(MFContentErrorDocument *)self error];
  localizedDescription = [error localizedDescription];

  return localizedDescription;
}

@end