@interface TrustEvaluator
+ (BOOL)validatePublicKey:(id)key trustRefs:(id)refs;
@end

@implementation TrustEvaluator

+ (BOOL)validatePublicKey:(id)key trustRefs:(id)refs
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  refsCopy = refs;
  v7 = refsCopy;
  if (keyCopy && [refsCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if (v12)
          {
            v13 = SecTrustCopyKey(v12);
            if (v13)
            {
              v14 = v13;
              error = 0;
              v15 = SecKeyCopyExternalRepresentation(v13, &error);
              CFRelease(v14);
              v16 = error;
              if (v15)
              {
                v17 = error == 0;
              }

              else
              {
                v17 = 0;
              }

              if (v17)
              {
                PublicWithData = PCSKeyCreatePublicWithData(v15, 0);
                CFRelease(v15);
                if (PublicWithData)
                {
                  v19 = _PCSKeyCopyExportedPublicKey(PublicWithData);
                  CFRelease(PublicWithData);
                  v20 = [keyCopy isEqual:v19];

                  if (v20)
                  {
                    LOBYTE(v9) = 1;
                    goto LABEL_25;
                  }
                }
              }

              else
              {
                if (v15)
                {
                  CFRelease(v15);
                  v16 = error;
                }

                if (v16)
                {
                  NSLog(&cfstr_ErrorWhenCopyi.isa, v16);
                  CFRelease(error);
                }
              }
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end