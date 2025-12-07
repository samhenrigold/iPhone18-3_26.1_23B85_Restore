@interface PMLPlanWrapper
- (PMLPlanWrapper)initWithPlan:(id)plan;
- (PMLPlanWrapper)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLPlanWrapper

- (PMLPlanWrapper)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  chunksCopy = chunks;
  plistCopy = plist;
  v12 = [plistCopy objectForKeyedSubscript:@"PLAN_CLASSNAME"];
  v13 = NSClassFromString(v12);
  if (!v13)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLPlanSerialization.m" lineNumber:55 description:{@"Invalid plan. Unknown class: %@", v12}];
  }

  v14 = [v13 alloc];
  v15 = [plistCopy objectForKeyedSubscript:@"PLAN"];

  v16 = [v14 initWithPlist:v15 chunks:chunksCopy context:contextCopy];
  if (v16)
  {
    self = [(PMLPlanWrapper *)self initWithPlan:v16];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)toPlistWithChunks:(id)chunks
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"PLAN_CLASSNAME";
  chunksCopy = chunks;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10[1] = @"PLAN";
  v11[0] = v6;
  v7 = [(PMLPlanProtocol *)self->_plan toPlistWithChunks:chunksCopy];

  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (PMLPlanWrapper)initWithPlan:(id)plan
{
  planCopy = plan;
  v9.receiver = self;
  v9.super_class = PMLPlanWrapper;
  v6 = [(PMLPlanWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plan, plan);
  }

  return v7;
}

@end