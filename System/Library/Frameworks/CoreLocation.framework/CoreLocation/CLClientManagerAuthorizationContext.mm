@interface CLClientManagerAuthorizationContext
- (BOOL)isEqual:(id)equal;
- (CLClientManagerAuthorizationContext)initWithInUseLevel:(int)level registrationResult:(int)result transientAwareRegistrationResult:(int)registrationResult serviceMaskTuple:(CLClientServiceTypeMaskTuple)tuple diagnosticMask:(unint64_t)mask authorizedForWidgetUpdates:(BOOL)updates;
- (id)authorizationContextByANDingServiceMaskTuple:(CLClientServiceTypeMaskTuple)tuple;
- (id)getStateSummary;
@end

@implementation CLClientManagerAuthorizationContext

- (CLClientManagerAuthorizationContext)initWithInUseLevel:(int)level registrationResult:(int)result transientAwareRegistrationResult:(int)registrationResult serviceMaskTuple:(CLClientServiceTypeMaskTuple)tuple diagnosticMask:(unint64_t)mask authorizedForWidgetUpdates:(BOOL)updates
{
  var1 = tuple.var1;
  var0 = tuple.var0;
  v15.receiver = self;
  v15.super_class = CLClientManagerAuthorizationContext;
  result = [(CLClientManagerAuthorizationContext *)&v15 init];
  if (result)
  {
    result->_registrationResult = result;
    result->_inUseLevel = level;
    result->_effectiveServiceMask = var0;
    result->_provisionalServiceMask = var1;
    result->_transientAwareRegistrationResult = registrationResult;
    result->_diagnosticMask = mask;
    result->_authorizedForWidgetUpdates = updates;
  }

  return result;
}

- (id)authorizationContextByANDingServiceMaskTuple:(CLClientServiceTypeMaskTuple)tuple
{
  selfCopy = self;
  v4 = *(self + 5);
  v5 = *(self + 6);
  v6 = v4 & tuple.var0;
  v7 = v5 & tuple.var1;
  if ((v4 & tuple.var0) != v4 || v7 != v5)
  {
    v9 = [CLClientManagerAuthorizationContext alloc];
    v12 = selfCopy[8];
    v11 = objc_msgSend_initWithInUseLevel_registrationResult_transientAwareRegistrationResult_serviceMaskTuple_diagnosticMask_authorizedForWidgetUpdates_(v9, v10, *(selfCopy + 5), *(selfCopy + 4), *(selfCopy + 3), v6, v7, *(selfCopy + 3), v12);

    return v11;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(equal, v6, v5, v7);
  if (isMemberOfClass)
  {
    LOBYTE(isMemberOfClass) = self->_inUseLevel == *(equal + 5) && self->_staticServiceMask == *(equal + 4) && self->_effectiveServiceMask == *(equal + 5) && self->_provisionalServiceMask == *(equal + 6) && self->_registrationResult == *(equal + 4) && self->_authorizedForWidgetUpdates == *(equal + 8) && self->_transientAwareRegistrationResult == *(equal + 3) && self->_diagnosticMask == *(equal + 3);
  }

  return isMemberOfClass;
}

- (id)getStateSummary
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  v8 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v6, self->_inUseLevel, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v8, @"InUseLevel");
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v10, self->_effectiveServiceMask, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v13, v12, @"EffectiveServiceMask");
  v16 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v14, self->_provisionalServiceMask, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v17, v16, @"ProvisionalServiceMask");
  v20 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v18, self->_registrationResult, v19);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v21, v20, @"RegistrationResult");
  v24 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v22, self->_transientAwareRegistrationResult, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v25, v24, @"TransientAwareRegistrationResult");
  v28 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, self->_diagnosticMask, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v29, v28, @"DiagnosticMask");
  v32 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v30, self->_authorizedForWidgetUpdates, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v33, v32, @"AuthorizedForWidgetUpdates");
  return v5;
}

@end