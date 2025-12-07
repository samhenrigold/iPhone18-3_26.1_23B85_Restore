@interface GDLifeEventContext
- (GDLifeEventContext)initWithGDSwiftContext:(id)context;
- (id)extremeActivityEventWithEntityIdentifierType:(Class)type ascending:(BOOL)ascending outStartDate:(id *)date outEndDate:(id *)endDate error:(id *)error;
- (id)initAndReturnError:(id *)error;
@end

@implementation GDLifeEventContext

- (id)extremeActivityEventWithEntityIdentifierType:(Class)type ascending:(BOOL)ascending outStartDate:(id *)date outEndDate:(id *)endDate error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1ABEFFCA8;
  v23 = sub_1ABEFFCB8;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1ABEFFCA8;
  v17 = sub_1ABEFFCB8;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABEFFCC0;
  v12[3] = &unk_1E7962138;
  v12[5] = &v13;
  v12[6] = type;
  v12[4] = &v19;
  if ([(GDLifeEventContext *)self enumerateEntriesForActivityEventsInAscendingOrder:ascending error:error usingBlock:v12]&& v20[5] && (v9 = v14[5]) != 0)
  {
    if (date)
    {
      *date = [v9 startDate];
    }

    if (endDate)
    {
      *endDate = [v14[5] endDate];
    }

    v10 = v20[5];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (id)initAndReturnError:(id *)error
{
  v4 = [[_TtC20IntelligencePlatform24_GDSwiftLifeEventContext alloc] initAndReturnError:error];
  if (v4)
  {
    self = [(GDLifeEventContext *)self initWithGDSwiftContext:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GDLifeEventContext)initWithGDSwiftContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = GDLifeEventContext;
  v6 = [(GDLifeEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, context);
  }

  return v7;
}

@end