@interface SiriAnalyticsTag
- (SiriAnalyticsTag)initWithCoder:(id)coder;
- (SiriAnalyticsTag)initWithConditionType:(int)type componentId:(id)id componentName:(int)name joined:(BOOL)joined;
- (SiriAnalyticsTag)initWithConditionType:(int)type end:(unint64_t)end;
- (SiriAnalyticsTag)initWithConditionType:(int)type requestId:(id)id joined:(BOOL)joined;
- (SiriAnalyticsTag)initWithConditionType:(int)type start:(unint64_t)start;
- (SiriAnalyticsTag)initWithConditionType:(int)type start:(unint64_t)start end:(unint64_t)end;
- (SiriAnalyticsTag)initWithConditionTypeAffectingEntireClock:(int)clock;
@end

@implementation SiriAnalyticsTag

- (SiriAnalyticsTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SiriAnalyticsTag;
  v5 = [(SiriAnalyticsTag *)&v9 init];
  if (v5)
  {
    v6 = [[SiriAnalyticsTagShim alloc] initWithCoder:coderCopy];
    shim = v5->_shim;
    v5->_shim = v6;
  }

  return v5;
}

- (SiriAnalyticsTag)initWithConditionType:(int)type requestId:(id)id joined:(BOOL)joined
{
  joinedCopy = joined;
  v6 = *&type;
  idCopy = id;
  v13.receiver = self;
  v13.super_class = SiriAnalyticsTag;
  v9 = [(SiriAnalyticsTag *)&v13 init];
  if (v9)
  {
    v10 = [[SiriAnalyticsTagShim alloc] initWithConditionType:v6 requestId:idCopy joined:joinedCopy];
    shim = v9->_shim;
    v9->_shim = v10;
  }

  return v9;
}

- (SiriAnalyticsTag)initWithConditionType:(int)type componentId:(id)id componentName:(int)name joined:(BOOL)joined
{
  joinedCopy = joined;
  v7 = *&name;
  v8 = *&type;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = SiriAnalyticsTag;
  v11 = [(SiriAnalyticsTag *)&v15 init];
  if (v11)
  {
    v12 = [[SiriAnalyticsTagShim alloc] initWithConditionType:v8 componentId:idCopy componentName:v7 joined:joinedCopy];
    shim = v11->_shim;
    v11->_shim = v12;
  }

  return v11;
}

- (SiriAnalyticsTag)initWithConditionTypeAffectingEntireClock:(int)clock
{
  v3 = *&clock;
  v8.receiver = self;
  v8.super_class = SiriAnalyticsTag;
  v4 = [(SiriAnalyticsTag *)&v8 init];
  if (v4)
  {
    v5 = [[SiriAnalyticsTagShim alloc] initWithConditionTypeAffectingEntireClock:v3];
    shim = v4->_shim;
    v4->_shim = v5;
  }

  return v4;
}

- (SiriAnalyticsTag)initWithConditionType:(int)type end:(unint64_t)end
{
  v5 = *&type;
  v10.receiver = self;
  v10.super_class = SiriAnalyticsTag;
  v6 = [(SiriAnalyticsTag *)&v10 init];
  if (v6)
  {
    v7 = [[SiriAnalyticsTagShim alloc] initWithConditionType:v5 end:end];
    shim = v6->_shim;
    v6->_shim = v7;
  }

  return v6;
}

- (SiriAnalyticsTag)initWithConditionType:(int)type start:(unint64_t)start
{
  v5 = *&type;
  v10.receiver = self;
  v10.super_class = SiriAnalyticsTag;
  v6 = [(SiriAnalyticsTag *)&v10 init];
  if (v6)
  {
    v7 = [[SiriAnalyticsTagShim alloc] initWithConditionType:v5 start:start];
    shim = v6->_shim;
    v6->_shim = v7;
  }

  return v6;
}

- (SiriAnalyticsTag)initWithConditionType:(int)type start:(unint64_t)start end:(unint64_t)end
{
  v7 = *&type;
  v12.receiver = self;
  v12.super_class = SiriAnalyticsTag;
  v8 = [(SiriAnalyticsTag *)&v12 init];
  if (v8)
  {
    v9 = [[SiriAnalyticsTagShim alloc] initWithConditionType:v7 start:start end:end];
    shim = v8->_shim;
    v8->_shim = v9;
  }

  return v8;
}

@end