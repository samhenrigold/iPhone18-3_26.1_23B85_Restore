@interface CTStewieIMessageLiteFetchMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieIMessageLiteFetchMessage)initWithCoder:(id)coder;
- (CTStewieIMessageLiteFetchMessage)initWithShortHandles:(id)handles error:(id *)p_isa;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieIMessageLiteFetchMessage

- (CTStewieIMessageLiteFetchMessage)initWithShortHandles:(id)handles error:(id *)p_isa
{
  v34[1] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v8 = handlesCopy;
  if (handlesCopy && [handlesCopy count])
  {
    if ([v8 count] < 0x18)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v14)
      {
        v15 = *v25;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            {
              if (p_isa)
              {
                v20 = MEMORY[0x1E696ABC0];
                v28 = *MEMORY[0x1E696A578];
                v29 = @"Invalid shortHandle";
                v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
                *p_isa = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];
              }

              goto LABEL_22;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v23.receiver = self;
      v23.super_class = CTStewieIMessageLiteFetchMessage;
      v19 = [(CTStewieIMessageLiteFetchMessage *)&v23 init];
      p_isa = &v19->super.isa;
      if (v19)
      {
        objc_storeStrong(&v19->_shortHandles, handles);
        self = p_isa;
        p_isa = &self->super.isa;
      }

      else
      {
        self = 0;
      }
    }

    else if (p_isa)
    {
      v9 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v32 = @"Too many short handles";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      *p_isa = [v9 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v10];

LABEL_22:
      p_isa = 0;
    }
  }

  else if (p_isa)
  {
    v11 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Short handles are missing";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *p_isa = [v11 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];

    goto LABEL_22;
  }

  return p_isa;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  shortHandles = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
  shortHandles2 = [otherCopy shortHandles];
  if (shortHandles == shortHandles2)
  {
    v9 = 1;
  }

  else
  {
    shortHandles3 = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
    shortHandles4 = [otherCopy shortHandles];
    v9 = [shortHandles3 isEqual:shortHandles4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteFetchMessage *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  shortHandles = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
  v7 = [shortHandles copyWithZone:zone];
  [v5 setShortHandles:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  shortHandles = [(CTStewieIMessageLiteFetchMessage *)self shortHandles];
  [coderCopy encodeObject:shortHandles forKey:@"shortHandles"];
}

- (CTStewieIMessageLiteFetchMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"shortHandles"];
  v9 = [(CTStewieIMessageLiteFetchMessage *)self initWithShortHandles:v8 error:0];

  return v9;
}

@end