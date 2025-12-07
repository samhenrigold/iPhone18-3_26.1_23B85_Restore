@interface MTPAFEventHandlers
- (void)registerDefaultEventHandlers;
@end

@implementation MTPAFEventHandlers

- (void)registerDefaultEventHandlers
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v24[0] = @"eventType";
  v24[1] = @"actionType";
  v25[0] = @"playActivity";
  v25[1] = @"start";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v26[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"playStart" eventHandlerClass:v3 eventData:v5];

  v6 = objc_opt_class();
  v21[0] = @"eventType";
  v21[1] = @"actionType";
  v22[0] = @"playActivity";
  v22[1] = @"stop";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v23 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"playStop" eventHandlerClass:v6 eventData:v8];

  v9 = objc_opt_class();
  v18[0] = @"eventType";
  v18[1] = @"actionType";
  v19[0] = @"seekActivity";
  v19[1] = @"start";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v20 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"seekStart" eventHandlerClass:v9 eventData:v11];

  v12 = objc_opt_class();
  v15[0] = @"eventType";
  v15[1] = @"actionType";
  v16[0] = @"seekActivity";
  v16[1] = @"stop";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v17 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"seekStop" eventHandlerClass:v12 eventData:v14];
}

@end