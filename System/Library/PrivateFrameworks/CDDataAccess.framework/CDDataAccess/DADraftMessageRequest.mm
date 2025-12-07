@interface DADraftMessageRequest
- (DADraftMessageRequest)initWithRequestType:(int)type message:(id)message send:(BOOL)send;
- (id)description;
@end

@implementation DADraftMessageRequest

- (DADraftMessageRequest)initWithRequestType:(int)type message:(id)message send:(BOOL)send
{
  sendCopy = send;
  v6 = *&type;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = DADraftMessageRequest;
  v9 = [(DAMailboxRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(DAMailboxRequest *)v9 setRequestType:v6];
    [(DADraftMessageRequest *)v10 setMessage:messageCopy];
    [(DADraftMessageRequest *)v10 setSend:sendCopy];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = DADraftMessageRequest;
  v4 = [(DADraftMessageRequest *)&v9 description];
  message = [(DADraftMessageRequest *)self message];
  subject = [message subject];
  v7 = [v3 stringWithFormat:@"%@ subject %@", v4, subject];

  return v7;
}

@end