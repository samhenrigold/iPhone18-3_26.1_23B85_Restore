@interface DTServiceHubDaemonProxyUpdateDelegate
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation DTServiceHubDaemonProxyUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v18[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = infoCopy;
  if (self->_channel)
  {
    if (type == 8)
    {
      v8 = @"Achievements";
    }

    else
    {
      if (type != 9)
      {
        goto LABEL_11;
      }

      v8 = @"Leaderboards";
    }

    v9 = [infoCopy objectForKeyedSubscript:@"ids"];

    if (v9)
    {
      v17[0] = @"messageType";
      v17[1] = @"type";
      v18[0] = @"refreshContents";
      v18[1] = v8;
      v17[2] = @"ids";
      v10 = [v7 objectForKeyedSubscript:@"ids"];
      v18[2] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

      v16 = 0;
      v12 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v16];
      v13 = v16;
      v14 = v13;
      if (v13)
      {
        NSLog(&cfstr_Error_0.isa, v13);
      }

      else
      {
        v15 = [MEMORY[0x277D03668] messageWithData:v12];
        [(DTXChannel *)self->_channel sendMessage:v15 replyHandler:0];
      }
    }
  }

LABEL_11:
}

@end