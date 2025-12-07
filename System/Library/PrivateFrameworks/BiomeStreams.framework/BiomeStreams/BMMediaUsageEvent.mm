@interface BMMediaUsageEvent
- (BMMediaUsageEvent)initWithBegin:(BOOL)begin bundleID:(id)d URL:(id)l mediaURL:(id)rL usageTrusted:(BOOL)trusted timestamp:(id)timestamp safariProfileID:(id)iD;
- (BOOL)isValidWithContext:(id)context error:(id *)error;
- (NSString)description;
@end

@implementation BMMediaUsageEvent

- (BMMediaUsageEvent)initWithBegin:(BOOL)begin bundleID:(id)d URL:(id)l mediaURL:(id)rL usageTrusted:(BOOL)trusted timestamp:(id)timestamp safariProfileID:(id)iD
{
  trustedCopy = trusted;
  beginCopy = begin;
  v39[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  timestampCopy = timestamp;
  iDCopy = iD;
  v38.receiver = self;
  v38.super_class = BMMediaUsageEvent;
  v20 = [(BMEventBase *)&v38 init];
  if (v20)
  {
    v37 = iDCopy;
    v21 = timestampCopy;
    v22 = beginCopy;
    v23 = rLCopy;
    v24 = lCopy;
    v25 = dCopy;
    v26 = objc_alloc_init(BMEventTimeElapsingImplementor);
    v39[0] = v26;
    v27 = objc_alloc_init(BMEventBinarySteppingImplementor);
    v39[1] = v27;
    v28 = objc_alloc_init(BMEventAppAssociatingImplementor);
    v39[2] = v28;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v29 = v36 = trustedCopy;
    [(BMEventBase *)v20 set_validators:v29];

    dCopy = v25;
    lCopy = v24;
    rLCopy = v23;
    v30 = v22;
    timestampCopy = v21;
    iDCopy = v37;
    [(BMMediaUsageEvent *)v20 setStarting:v30];
    v31 = [dCopy copy];
    [(BMMediaUsageEvent *)v20 setBundleID:v31];

    v32 = [lCopy copy];
    [(BMMediaUsageEvent *)v20 setURL:v32];

    v33 = [v23 copy];
    [(BMMediaUsageEvent *)v20 setMediaURL:v33];

    [(BMMediaUsageEvent *)v20 setUsageTrusted:v36];
    [timestampCopy timeIntervalSinceReferenceDate];
    [(BMMediaUsageEvent *)v20 setAbsoluteTimestamp:?];
    v34 = [v37 copy];
    [(BMMediaUsageEvent *)v20 setSafariProfileID:v34];
  }

  return v20;
}

- (BOOL)isValidWithContext:(id)context error:(id *)error
{
  v5.receiver = self;
  v5.super_class = BMMediaUsageEvent;
  return [(BMEventBase *)&v5 isValidWithContext:context error:error];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dateInterval = [(BMMediaUsageEvent *)self dateInterval];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaUsageEvent isStarting](self, "isStarting")}];
  bundleID = [(BMMediaUsageEvent *)self bundleID];
  v8 = [(BMMediaUsageEvent *)self URL];
  mediaURL = [(BMMediaUsageEvent *)self mediaURL];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaUsageEvent isUsageTrusted](self, "isUsageTrusted")}];
  v11 = [v3 stringWithFormat:@"<%@ %p> interval: %@, launch: %@, bundleID: %@, URL: %@, mediaURL: %@ isUsageTrusted: %@", v4, self, dateInterval, v6, bundleID, v8, mediaURL, v10];

  return v11;
}

@end