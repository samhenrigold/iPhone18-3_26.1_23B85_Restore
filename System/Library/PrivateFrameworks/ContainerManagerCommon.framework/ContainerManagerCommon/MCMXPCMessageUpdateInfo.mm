@interface MCMXPCMessageUpdateInfo
- (MCMXPCMessageUpdateInfo)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageUpdateInfo

- (MCMXPCMessageUpdateInfo)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v34 = 1;
  v33.receiver = self;
  v33.super_class = MCMXPCMessageUpdateInfo;
  v9 = [(MCMXPCMessageWithConcreteContainerBase *)&v33 initWithXPCObject:objectCopy context:context error:&v34];
  v10 = v9;
  if (v9)
  {
    v11 = [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:objectCopy key:"Value" error:&v34];
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v34 == 1;
    }

    if (!v12)
    {
      goto LABEL_32;
    }

    uint64 = xpc_dictionary_get_uint64(objectCopy, "PrivateFlags");
    v14 = ~uint64;
    v10->_fullReplace = uint64 & 1;
    deleteKeys = v10->_deleteKeys;
    v10->_deleteKeys = 0;

    infoDict = v10->_infoDict;
    v10->_infoDict = 0;

    if ((v14 & 6) != 0)
    {
      if (!v11 || ((objc_opt_class(), v29 = v11, (objc_opt_isKindOfClass() & 1) == 0) ? (v30 = 0) : (v30 = v29), v29, v30, v30))
      {
        objc_storeStrong(&v10->_infoDict, v11);
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      objc_opt_class();
      v17 = v11;
      if (objc_opt_isKindOfClass())
      {
        if (v11)
        {
          v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v17, "count")}];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = v17;
          v19 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v37;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v36 + 1) + 8 * i);
                objc_opt_class();
                v24 = v23;
                if (objc_opt_isKindOfClass())
                {
                  v25 = v24;
                }

                else
                {
                  v25 = 0;
                }

                if (!v25)
                {
                  v34 = 38;
                  v26 = obj;

                  goto LABEL_31;
                }

                [v18 addObject:v24];
              }

              v20 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v26 = obj;

          v27 = [v18 copy];
          v28 = v10->_deleteKeys;
          v10->_deleteKeys = v27;

LABEL_31:
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    v34 = 38;
    goto LABEL_32;
  }

LABEL_33:
  if (v34 != 1)
  {
    if (error)
    {
      *error = v34;
    }

    v10 = 0;
  }

  return v10;
}

@end