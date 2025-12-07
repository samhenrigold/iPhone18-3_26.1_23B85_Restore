@interface NEPolicyRouteRule
+ (id)routeRuleWithAction:(int64_t)action forInterfaceName:(id)name;
+ (id)routeRuleWithAction:(int64_t)action forNetworkAgent:(id)agent;
+ (id)routeRuleWithAction:(int64_t)action forNetworkAgent:(id)agent forInterfaceName:(id)name;
+ (id)routeRuleWithAction:(int64_t)action forType:(int64_t)type;
- (NEPolicyRouteRule)init;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
@end

@implementation NEPolicyRouteRule

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = v7;
  if (self)
  {
    v9 = self->_action - 1;
    if (v9 > 6)
    {
      v10 = @"unknown";
    }

    else
    {
      v10 = *(&off_1E7F0A510 + v9);
    }

    v11 = v10;
    [v8 appendPrettyObject:v11 withName:@"action" andIndent:v5 options:options];

    v12 = self->_type - 1;
    if (v12 <= 7)
    {
      v13 = *(&off_1E7F0A548 + v12);
      goto LABEL_9;
    }
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"action" andIndent:v5 options:options];
  }

  v13 = 0;
LABEL_9:
  v14 = v13;
  [v8 appendPrettyObject:v14 withName:@"type" andIndent:v5 options:options];

  [v8 appendPrettyObject:self->_interfaceName withName:@"interface" andIndent:v5 options:options];
  [v8 appendPrettyObject:objc_getProperty(self withName:v15 andIndent:40 options:{1), @"matchNetworkAgent", v5, options}];
  networkAgentUUID = [(NEPolicyRouteRule *)self networkAgentUUID];
  [v8 appendPrettyObject:networkAgentUUID withName:@"networkAgentUUID" andIndent:v5 options:options];

  if ([(NEPolicyRouteRule *)self controlUnit])
  {
    [v8 appendPrettyInt:-[NEPolicyRouteRule controlUnit](self withName:"controlUnit") andIndent:@"controlUnit" options:{v5, options}];
  }

  if ([(NEPolicyRouteRule *)self effectiveType])
  {
    [v8 appendPrettyInt:-[NEPolicyRouteRule effectiveType](self withName:"effectiveType") andIndent:@"effectiveType" options:{v5, options}];
  }

  return v8;
}

- (NEPolicyRouteRule)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Calling init on NEPolicyRouteRule is not valid", v5, 2u);
  }

  return 0;
}

+ (id)routeRuleWithAction:(int64_t)action forNetworkAgent:(id)agent forInterfaceName:(id)name
{
  agentCopy = agent;
  nameCopy = name;
  v9 = [NEPolicyRouteRule alloc];
  if (v9)
  {
    v15.receiver = v9;
    v15.super_class = NEPolicyRouteRule;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    v12 = v10;
    if (v10)
    {
      v10[3] = action;
      objc_setProperty_atomic_copy(v10, v11, agentCopy, 40);
      objc_setProperty_atomic_copy(v12, v13, nameCopy, 32);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)routeRuleWithAction:(int64_t)action forNetworkAgent:(id)agent
{
  agentCopy = agent;
  v6 = [NEPolicyRouteRule alloc];
  if (v6)
  {
    v11.receiver = v6;
    v11.super_class = NEPolicyRouteRule;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v9 = v7;
    if (v7)
    {
      v7[3] = action;
      objc_setProperty_atomic_copy(v7, v8, agentCopy, 40);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)routeRuleWithAction:(int64_t)action forType:(int64_t)type
{
  v6 = [NEPolicyRouteRule alloc];
  if (v6)
  {
    v8.receiver = v6;
    v8.super_class = NEPolicyRouteRule;
    v6 = objc_msgSendSuper2(&v8, sel_init);
    if (v6)
    {
      v6->_action = action;
      v6->_type = type;
    }
  }

  return v6;
}

+ (id)routeRuleWithAction:(int64_t)action forInterfaceName:(id)name
{
  nameCopy = name;
  v6 = [NEPolicyRouteRule alloc];
  if (v6)
  {
    v11.receiver = v6;
    v11.super_class = NEPolicyRouteRule;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v9 = v7;
    if (v7)
    {
      v7[3] = action;
      objc_setProperty_atomic_copy(v7, v8, nameCopy, 32);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end