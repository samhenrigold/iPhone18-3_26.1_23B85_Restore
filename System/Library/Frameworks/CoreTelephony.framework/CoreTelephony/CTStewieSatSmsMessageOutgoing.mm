@interface CTStewieSatSmsMessageOutgoing
+ (double)estimatedSendTimeForTextPayload:(id)payload;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieSatSmsMessageOutgoing)initWithCoder:(id)coder;
- (CTStewieSatSmsMessageOutgoing)initWithContext:(id)context destinationPhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload notifyDowngrade:(BOOL)downgrade error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieSatSmsMessageOutgoing

- (CTStewieSatSmsMessageOutgoing)initWithContext:(id)context destinationPhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload notifyDowngrade:(BOOL)downgrade error:(id *)p_isa
{
  v44[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  numberCopy = number;
  payloadCopy = payload;
  if (contextCopy)
  {
    if (numberCopy && [(_anonymous_namespace_ *)numberCopy length])
    {
      {
        if (d < 0x10)
        {
          if (payloadCopy && [payloadCopy length])
          {
            if ([payloadCopy length] < 0x8F)
            {
              v32.receiver = self;
              v32.super_class = CTStewieSatSmsMessageOutgoing;
              v31 = [(CTStewieSatSmsMessageOutgoing *)&v32 init];
              p_isa = &v31->super.isa;
              if (v31)
              {
                objc_storeStrong(&v31->_context, context);
                objc_storeStrong(p_isa + 3, number);
                p_isa[4] = d;
                objc_storeStrong(p_isa + 5, payload);
                *(p_isa + 8) = downgrade;
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
              v26 = MEMORY[0x1E696ABC0];
              v33 = *MEMORY[0x1E696A578];
              v34 = @"textPayload is too big";
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
              *p_isa = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];

              goto LABEL_21;
            }
          }

          else if (p_isa)
          {
            v28 = MEMORY[0x1E696ABC0];
            v35 = *MEMORY[0x1E696A578];
            v36 = @"textPayload is missing";
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *p_isa = [v28 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v29];

            goto LABEL_21;
          }
        }

        else if (p_isa)
        {
          v18 = MEMORY[0x1E696ABC0];
          v37 = *MEMORY[0x1E696A578];
          v38 = @"Invalid codecID";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          *p_isa = [v18 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v19];

LABEL_21:
          p_isa = 0;
        }
      }

      else if (p_isa)
      {
        v24 = MEMORY[0x1E696ABC0];
        v39 = *MEMORY[0x1E696A578];
        v40 = @"destinationPhoneNumber is invalid";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        *p_isa = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];

        goto LABEL_21;
      }
    }

    else if (p_isa)
    {
      v20 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"destinationPhoneNumber is missing";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *p_isa = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];

      goto LABEL_21;
    }
  }

  else if (p_isa)
  {
    v22 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44[0] = @"Context is missing";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    *p_isa = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

    goto LABEL_21;
  }

  return p_isa;
}

+ (double)estimatedSendTimeForTextPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  EstimatedSendTimeOverStewieInSeconds = 0.0;
  if (payloadCopy)
  {
    v6 = [payloadCopy lengthOfBytesUsingEncoding:4];
    if (v6)
    {
      EstimatedSendTimeOverStewieInSeconds = getEstimatedSendTimeOverStewieInSeconds(v6 + 22);
    }
  }

  return EstimatedSendTimeOverStewieInSeconds;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  context = [(CTStewieSatSmsMessageOutgoing *)self context];
  [v3 appendFormat:@", context=%@", context];

  destinationPhoneNumber = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  [v3 appendFormat:@", destinationPhoneNumber=%@", destinationPhoneNumber];

  [v3 appendFormat:@", codecID=%ld", -[CTStewieSatSmsMessageOutgoing codecID](self, "codecID")];
  textPayload = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
  [v3 appendFormat:@", textPayload size=%lu", objc_msgSend(textPayload, "length")];

  notifyDowngrade = [(CTStewieSatSmsMessageOutgoing *)self notifyDowngrade];
  v8 = "no";
  if (notifyDowngrade)
  {
    v8 = "yes";
  }

  [v3 appendFormat:@", notifyDowngrade=%s", v8];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  context = [(CTStewieSatSmsMessageOutgoing *)self context];
  context2 = [otherCopy context];
  if (context != context2)
  {
    context3 = [(CTStewieSatSmsMessageOutgoing *)self context];
    context4 = [otherCopy context];
    if (![context3 isEqual:?])
    {
      LOBYTE(v9) = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  destinationPhoneNumber = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  destinationPhoneNumber2 = [otherCopy destinationPhoneNumber];
  if (destinationPhoneNumber == destinationPhoneNumber2 || (-[CTStewieSatSmsMessageOutgoing destinationPhoneNumber](self, "destinationPhoneNumber"), v19 = objc_claimAutoreleasedReturnValue(), [otherCopy destinationPhoneNumber], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "isEqual:", v4)))
  {
    codecID = [(CTStewieSatSmsMessageOutgoing *)self codecID];
    if (codecID != [otherCopy codecID])
    {
      LOBYTE(v9) = 0;
      goto LABEL_15;
    }

    textPayload = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
    textPayload2 = [otherCopy textPayload];
    if (textPayload == textPayload2 || (-[CTStewieSatSmsMessageOutgoing textPayload](self, "textPayload"), v17 = objc_claimAutoreleasedReturnValue(), [otherCopy textPayload], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "isEqual:", v3)))
    {
      notifyDowngrade = [(CTStewieSatSmsMessageOutgoing *)self notifyDowngrade];
      v9 = notifyDowngrade ^ [otherCopy notifyDowngrade] ^ 1;
      if (textPayload == textPayload2)
      {
LABEL_14:

LABEL_15:
        if (destinationPhoneNumber == destinationPhoneNumber2)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_14;
  }

  LOBYTE(v9) = 0;
LABEL_16:

LABEL_17:
  if (context != context2)
  {
    goto LABEL_18;
  }

LABEL_19:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieSatSmsMessageOutgoing *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  context = [(CTStewieSatSmsMessageOutgoing *)self context];
  v7 = [context copyWithZone:zone];
  [v5 setContext:v7];

  destinationPhoneNumber = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  v9 = [destinationPhoneNumber copyWithZone:zone];
  [v5 setDestinationPhoneNumber:v9];

  [v5 setCodecID:{-[CTStewieSatSmsMessageOutgoing codecID](self, "codecID")}];
  textPayload = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
  v11 = [textPayload copyWithZone:zone];
  [v5 setTextPayload:v11];

  [v5 setNotifyDowngrade:{-[CTStewieSatSmsMessageOutgoing notifyDowngrade](self, "notifyDowngrade")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  context = [(CTStewieSatSmsMessageOutgoing *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  destinationPhoneNumber = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  [coderCopy encodeObject:destinationPhoneNumber forKey:@"phoneNumber"];

  [coderCopy encodeInteger:-[CTStewieSatSmsMessageOutgoing codecID](self forKey:{"codecID"), @"codecID"}];
  textPayload = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
  [coderCopy encodeObject:textPayload forKey:@"textPayload"];

  [coderCopy encodeBool:-[CTStewieSatSmsMessageOutgoing notifyDowngrade](self forKey:{"notifyDowngrade"), @"notifyDowngrade"}];
}

- (CTStewieSatSmsMessageOutgoing)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v7 = [coderCopy decodeIntegerForKey:@"codecID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textPayload"];
  v9 = -[CTStewieSatSmsMessageOutgoing initWithContext:destinationPhoneNumber:codecID:textPayload:notifyDowngrade:error:](self, "initWithContext:destinationPhoneNumber:codecID:textPayload:notifyDowngrade:error:", v5, v6, v7, v8, [coderCopy decodeBoolForKey:@"notifyDowngrade"], 0);

  return v9;
}

@end