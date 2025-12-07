@interface SDActivityPayloadRequestRecord
- (id)description;
- (void)dealloc;
@end

@implementation SDActivityPayloadRequestRecord

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_linkClient invalidate];
  v3.receiver = self;
  v3.super_class = SDActivityPayloadRequestRecord;
  [(SDActivityPayloadRequestRecord *)&v3 dealloc];
}

- (id)description
{
  linkClient = self->_linkClient;
  if (linkClient)
  {
    linkClient = [NSString stringWithFormat:@"linkClient: <%@>, ", linkClient];
  }

  else
  {
    linkClient = &stru_1008EFBD0;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = SFHexStringForData();
  command = self->_command;
  v12.receiver = self;
  v12.super_class = SDActivityPayloadRequestRecord;
  v9 = [(SDActivityRequestRecord *)&v12 description];
  v10 = [NSString stringWithFormat:@"<%@: %p, advertisementPayload:%@, command:%@, %@%@>", v6, self, v7, command, linkClient, v9];

  return v10;
}

@end