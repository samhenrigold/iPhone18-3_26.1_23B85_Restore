@interface NRASMRequest
- (id)description;
- (void)dealloc;
@end

@implementation NRASMRequest

- (void)dealloc
{
  metadata = self->_metadata;
  if (metadata && metadata->_hasPolicies)
  {
    if (qword_1002291B0 != -1)
    {
      dispatch_once(&qword_1002291B0, &stru_1001FBE70);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291B0 != -1)
      {
        dispatch_once(&qword_1002291B0, &stru_1001FBE70);
      }

      _NRLogWithArgs(qword_1002291A8, 1, "%s%.30s:%-4d %@ removing policies", ", "[NRASMRequest dealloc]"", 289, self);
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    v5 = [(NRASMRequest *)self description];
    sub_10015A238(v4, v5);

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v6 = qword_100229408;
    sub_10015A52C(v6);
  }

  v7.receiver = self;
  v7.super_class = NRASMRequest;
  [(NRASMRequest *)&v7 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @"NRASMBrowseRequest[";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"NRASMResolveRequest[";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v4 = @"NRASMListenRequest[";
    }
  }

  [v3 appendString:v4];
LABEL_8:
  [v3 appendFormat:@"%p, %@, %@", self->_client, self->_identifier, self->_clientDescription];
  [v3 appendFormat:@", %@", self->_metadata];
  [v3 appendString:@"]"];

  return v3;
}

@end