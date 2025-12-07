@interface XRWrappingIssueResponder
- (XRWrappingIssueResponder)init;
- (XRWrappingIssueResponder)initWithNextResponder:(id)responder prototype:(id)prototype;
- (void)handleIssue:(id)issue type:(signed __int16)type from:(id)from;
@end

@implementation XRWrappingIssueResponder

- (XRWrappingIssueResponder)initWithNextResponder:(id)responder prototype:(id)prototype
{
  responderCopy = responder;
  prototypeCopy = prototype;
  v11.receiver = self;
  v11.super_class = XRWrappingIssueResponder;
  v8 = [(XRWrappingIssueResponder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_nextResponder, responderCopy);
    objc_storeStrong(&v9->_prototype, prototype);
  }

  return v9;
}

- (XRWrappingIssueResponder)init
{
  v6 = objc_msgSend_defaultResponder(XRStandardIssueResponder, a2, v2, v3, v4);
  v10 = objc_msgSend_dvtiuErrorWithCode_(MEMORY[0x277CCA9B8], v7, 0, v8, v9);
  Responder_prototype = objc_msgSend_initWithNextResponder_prototype_(self, v11, v6, v10, v12);

  return Responder_prototype;
}

- (void)handleIssue:(id)issue type:(signed __int16)type from:(id)from
{
  typeCopy = type;
  issueCopy = issue;
  prototype = self->_prototype;
  fromCopy = from;
  v14 = objc_msgSend_userInfo(prototype, v10, v11, v12, v13);
  v19 = objc_msgSend_mutableCopy(v14, v15, v16, v17, v18);

  objc_msgSend_setObject_forKeyedSubscript_(v19, v20, issueCopy, *MEMORY[0x277CCA7E8], v21);
  v26 = objc_msgSend_domain(self->_prototype, v22, v23, v24, v25);
  v31 = objc_msgSend_domain(issueCopy, v27, v28, v29, v30);

  WeakRetained = objc_loadWeakRetained(&self->_nextResponder);
  v37 = WeakRetained;
  if (v26 == v31)
  {
    objc_msgSend_handleIssue_type_from_(WeakRetained, v33, issueCopy, typeCopy, fromCopy);
  }

  else
  {
    v38 = MEMORY[0x277CCA9B8];
    v39 = objc_msgSend_domain(self->_prototype, v33, v34, v35, v36);
    v44 = objc_msgSend_code(self->_prototype, v40, v41, v42, v43);
    v46 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v45, v39, v44, v19);
    objc_msgSend_handleIssue_type_from_(v37, v47, v46, typeCopy, fromCopy);

    fromCopy = v39;
  }
}

@end