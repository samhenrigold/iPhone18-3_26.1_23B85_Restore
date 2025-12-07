@interface MFContentErrorDocument
- (MFContentErrorDocument)initWithMimePart:(id)part;
- (NSString)content;
- (void)dealloc;
@end

@implementation MFContentErrorDocument

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFContentErrorDocument;
  [(MFContentErrorDocument *)&v3 dealloc];
}

- (MFContentErrorDocument)initWithMimePart:(id)part
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (!part)
  {
    [(MFContentErrorDocument *)a2 initWithMimePart:?];
  }

  v9.receiver = self;
  v9.super_class = MFContentErrorDocument;
  v5 = [(MFContentErrorDocument *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"CANNOT_DECODE_MULTIPART_MESSAGE", @"This message cannot be displayed because of the way it is formatted. Ask the sender to send it again using a different format or email program.\n\n%@/%@", @"Delayed", objc_msgSend(part, "type"), objc_msgSend(part, "subtype")];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5->_error = [MEMORY[0x277CCA9B8] mf_decodeFailedErrorWithUserInfo:v7];
  }

  return v5;
}

- (NSString)content
{
  error = [(MFContentErrorDocument *)self error];

  return [(NSError *)error localizedDescription];
}

@end