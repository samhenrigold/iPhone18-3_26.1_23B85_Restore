@interface TMLExpressionReactiveValue
- (TMLExpressionReactiveValue)initWithExpression:(id)expression context:(id)context bindings:(id)bindings valueType:(unint64_t)type;
- (id)value;
@end

@implementation TMLExpressionReactiveValue

- (TMLExpressionReactiveValue)initWithExpression:(id)expression context:(id)context bindings:(id)bindings valueType:(unint64_t)type
{
  expressionCopy = expression;
  contextCopy = context;
  bindingsCopy = bindings;
  v19.receiver = self;
  v19.super_class = TMLExpressionReactiveValue;
  v13 = [(TMLReactiveValue *)&v19 initWithBindings:bindingsCopy valueType:type];
  if (v13)
  {
    v14 = [expressionCopy copy];
    expression = v13->_expression;
    v13->_expression = v14;

    objc_storeWeak(&v13->_context, contextCopy);
    v16 = [bindingsCopy copy];
    bindings = v13->_bindings;
    v13->_bindings = v16;
  }

  return v13;
}

- (id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v4 = [WeakRetained evaluateExpression:self->_expression ofType:-[TMLReactiveValue valueType](self withBindings:{"valueType"), self->_bindings}];

  return v4;
}

@end