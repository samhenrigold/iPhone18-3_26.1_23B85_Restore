@interface GEOXPCRequest
- (id)_prepareRequest;
@end

@implementation GEOXPCRequest

- (id)_prepareRequest
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (self && (*(self + 8) & 1) != 0 && [self conformsToProtocol:&unk_1EFA2BC68] && objc_msgSend(self, "isValid"))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    GEOEncodeModernXPCMessage(self, v2);
    if ([objc_opt_class() reportsProgress])
    {
      currentProgress = [MEMORY[0x1E696AE38] currentProgress];

      if (currentProgress)
      {
        v4 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
        v11 = 0;
        v5 = [MEMORY[0x1E696AE38] _geo_mirroredProgressForReceivingOverXPC:&v11];
        v6 = v11;
        [v4 addChild:v5 withPendingUnitCount:1];

        if (v6)
        {
          xpc_dictionary_set_value(v2, "progress_observer_endpoint", v6);
        }
      }
    }

    v7 = *(self + 40);
    v12[0] = *(self + 32);
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v8 componentsJoinedByString:@"."];

    xpc_dictionary_set_string(v2, "message", [v9 UTF8String]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end