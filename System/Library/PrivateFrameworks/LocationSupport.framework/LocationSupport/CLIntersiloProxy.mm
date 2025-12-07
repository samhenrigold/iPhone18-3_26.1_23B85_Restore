@interface CLIntersiloProxy
+ (id)proxyForRecipientObject:(id)object inSilo:(id)silo recipientName:(id)name;
- (BOOL)respondsToSelector:(SEL)selector;
- (CLIntersiloProxy)init;
- (CLIntersiloProxy)initWithDelegateObject:(id)object delegateSilo:(id)silo;
- (CLIntersiloProxyDelegateProtocol)delegate;
- (CLSilo)delegateSilo;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)peer;
- (void)forwardInvocation:(id)invocation;
- (void)registerDelegate:(id)delegate inSilo:(id)silo;
@end

@implementation CLIntersiloProxy

- (CLSilo)delegateSilo
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateSilo);

  return WeakRetained;
}

- (CLIntersiloProxyDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLIntersiloProxy)init
{
  v4 = objc_msgSend_null(MEMORY[0x1E695DFB0], a2, v2);
  objc_storeWeak(&self->_delegate, v4);

  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_peer(self, v6, v7);
  v11 = objc_msgSend_delegateSilo(v8, v9, v10);
  v14 = objc_msgSend_identifier(v11, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v3, v15, @"<%@: peer silo:%@>", v5, v14);

  return v16;
}

+ (id)proxyForRecipientObject:(id)object inSilo:(id)silo recipientName:(id)name
{
  v43 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  siloCopy = silo;
  nameCopy = name;
  v13 = objc_alloc(objc_msgSend_initiatorRepresentingClass(self, v11, v12));
  v16 = objc_alloc(objc_msgSend_recipientRepresentingClass(self, v14, v15));
  v17 = v13;
  v19 = objc_msgSend_initWithDelegateObject_delegateSilo_uninitializedPeer_(v17, v18, objectCopy, siloCopy, v16);
  if (v19 != v17)
  {
    v29 = sub_1DF81C298();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "postInit == initiatorProxy";
      _os_log_impl(&dword_1DF7FE000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v30 = sub_1DF81C298();
    if (os_signpost_enabled(v30))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "postInit == initiatorProxy";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo proxy init changed self", "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v31 = sub_1DF81C298();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "postInit == initiatorProxy";
      _os_log_impl(&dword_1DF7FE000, v31, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", 140, "+[CLIntersiloProxy proxyForRecipientObject:inSilo:recipientName:]");
LABEL_20:
    __break(1u);
  }

  v20 = v16;
  v22 = objc_msgSend_initWithUninitializedPeer_(v20, v21, v17);

  if (v22 != v20)
  {
    v32 = sub_1DF81C298();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "postInit == recipientProxy";
      _os_log_impl(&dword_1DF7FE000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v33 = sub_1DF81C298();
    if (os_signpost_enabled(v33))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "postInit == recipientProxy";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Intersilo proxy init changed self", "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v34 = sub_1DF81C298();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v36 = 0;
      v37 = 2082;
      v38 = &unk_1DF8255EF;
      v39 = 2082;
      v40 = "assert";
      v41 = 2081;
      v42 = "postInit == recipientProxy";
      _os_log_impl(&dword_1DF7FE000, v34, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Intersilo proxy init changed self, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", 142, "+[CLIntersiloProxy proxyForRecipientObject:inSilo:recipientName:]");
    goto LABEL_20;
  }

  v23 = nameCopy;
  v26 = objc_msgSend_UTF8String(v23, v24, v25);
  objc_msgSend_setDelegateEntityName_(v17, v27, v26);

  return v20;
}

- (CLIntersiloProxy)initWithDelegateObject:(id)object delegateSilo:(id)silo
{
  siloCopy = silo;
  objc_storeWeak(&self->_delegate, object);
  objc_storeWeak(&self->_delegateSilo, siloCopy);

  return self;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  selectorCopy = selector;
  v4 = objc_msgSend_sharedInterface(CLIntersiloInterface, a2, selector);
  LOBYTE(selectorCopy) = objc_msgSend_hasInfoForSelector_(v4, v5, selectorCopy);

  return selectorCopy;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = objc_msgSend_sharedInterface(CLIntersiloInterface, a2, selector);
  v6 = objc_msgSend_getInfoForSelector_(v4, v5, selector);
  v9 = objc_msgSend_sig(v6, v7, v8);

  return v9;
}

- (void)forwardInvocation:(id)invocation
{
  v114 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v7 = objc_msgSend_selector(invocationCopy, v5, v6);
  v10 = objc_msgSend_sharedInterface(CLIntersiloInterface, v8, v9);
  v98 = objc_msgSend_getInfoForSelector_(v10, v11, v7);

  v14 = objc_msgSend_peer(self, v12, v13);
  v97 = v14;
  if (objc_msgSend_argumentsRetained(invocationCopy, v15, v16))
  {
    v85 = sub_1DF81C298();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v108 = 2082;
      v109 = &unk_1DF8255EF;
      v110 = 2082;
      v111 = "assert";
      v112 = 2081;
      v113 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v85, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v86 = sub_1DF81C298();
    if (os_signpost_enabled(v86))
    {
      *buf = 68289539;
      v108 = 2082;
      v109 = &unk_1DF8255EF;
      v110 = 2082;
      v111 = "assert";
      v112 = 2081;
      v113 = "![inv argumentsRetained]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v86, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Didn't expect the arguments to be retained before now", "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v87 = sub_1DF81C298();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v108 = 2082;
      v109 = &unk_1DF8255EF;
      v110 = 2082;
      v111 = "assert";
      v112 = 2081;
      v113 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v87, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", 198, "[CLIntersiloProxy forwardInvocation:]");
LABEL_75:
    __break(1u);
  }

  v106 = 0;
  if (objc_msgSend_lastArgBlockIndex(v98, v17, v18))
  {
    ArgBlockIndex = objc_msgSend_lastArgBlockIndex(v98, v19, v20);
    if (ArgBlockIndex >= 0)
    {
      v23 = ArgBlockIndex;
    }

    else
    {
      v23 = -ArgBlockIndex;
    }

    v105 = 0;
    objc_msgSend_getArgument_atIndex_(invocationCopy, v22, &v105, v23);
    cf = objc_msgSend_copy(v105, v24, v25);
    v26 = *_Block_signature(cf);
    if ((v26 == 118) != objc_msgSend_lastArgBlockIndex(v98, v27, v28) < 1)
    {
      if (v26 == 118)
      {
LABEL_19:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v41 = WeakRetained == 0;

        if (v41)
        {
          v91 = sub_1DF81C298();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "_delegate";
            _os_log_impl(&dword_1DF7FE000, v91, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Delegate is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v92 = sub_1DF81C298();
          if (os_signpost_enabled(v92))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "_delegate";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v92, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Delegate is necessary for reply delivery", "{msg%{public}.0s:Delegate is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v63 = sub_1DF81C298();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "_delegate";
            _os_log_impl(&dword_1DF7FE000, v63, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Delegate is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v64 = 236;
        }

        else
        {
          v42 = objc_loadWeakRetained(&self->_delegateSilo);
          v43 = v42 == 0;

          if (!v43)
          {
            objc_loadWeakRetained(&self->_delegate);
            objc_loadWeakRetained(&self->_delegateSilo);
            objc_msgSend_delegateSilo(v14, v44, v45);
            objc_claimAutoreleasedReturnValue();
            operator new();
          }

          v93 = sub_1DF81C298();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "_delegateSilo";
            _os_log_impl(&dword_1DF7FE000, v93, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Silo is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v94 = sub_1DF81C298();
          if (os_signpost_enabled(v94))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "_delegateSilo";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v94, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Silo is necessary for reply delivery", "{msg%{public}.0s:Silo is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v63 = sub_1DF81C298();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "_delegateSilo";
            _os_log_impl(&dword_1DF7FE000, v63, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Silo is necessary for reply delivery, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v64 = 237;
        }

LABEL_74:

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", v64, "[CLIntersiloProxy forwardInvocation:]");
        goto LABEL_75;
      }
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
      }

      v29 = qword_1ED5FAD48;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v32 = objc_msgSend_description(v98, v30, v31);
        *buf = 68289282;
        v108 = 2082;
        v109 = &unk_1DF8255EF;
        v110 = 2114;
        v111 = v32;
        _os_log_impl(&dword_1DF7FE000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:withReply: and void-returning block must be used in conjunction for correct reply handling, selector:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
      }

      v33 = qword_1ED5FAD48;
      if (os_signpost_enabled(v33))
      {
        v36 = objc_msgSend_description(v98, v34, v35);
        *buf = 68289282;
        v108 = 2082;
        v109 = &unk_1DF8255EF;
        v110 = 2114;
        v111 = v36;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "withReply: and void-returning block must be used in conjunction for correct reply handling", "{msg%{public}.0s:withReply: and void-returning block must be used in conjunction for correct reply handling, selector:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v37 = objc_loadWeakRetained(&self->_delegate);
      if (v37)
      {
        v38 = objc_loadWeakRetained(&self->_delegateSilo);
        v39 = v38 != 0;

        if (v39 && v26 == 118)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v46 = objc_msgSend_returnAddressIndex(v98, v19, v20);
  if (v46)
  {
    v105 = 0;
    v49 = v46;
    objc_msgSend_getArgument_atIndex_(invocationCopy, v47, &v105, v46);
    v50 = objc_loadWeakRetained(&self->_delegate);
    v51 = v50;
    if (!v50 || (v52 = v105, v105 == CLISP_ME_TOKEN))
    {
    }

    else
    {
      v53 = objc_loadWeakRetained(&self->_delegate);
      v54 = v52 == v53;

      if (!v54)
      {
        v57 = objc_msgSend_null(MEMORY[0x1E695DFB0], v55, v56);
        v58 = objc_loadWeakRetained(&self->_delegate);
        v59 = v57 == v58;

        v60 = sub_1DF81C298();
        v61 = os_log_type_enabled(v60, OS_LOG_TYPE_FAULT);
        if (v59)
        {
          if (v61)
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "(id)[NSNull null] != _delegate";
            _os_log_impl(&dword_1DF7FE000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:A delegate must be set before sending messages with byref return address parameters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v95 = sub_1DF81C298();
          if (os_signpost_enabled(v95))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "(id)[NSNull null] != _delegate";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v95, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "A delegate must be set before sending messages with byref return address parameters", "{msg%{public}.0s:A delegate must be set before sending messages with byref return address parameters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v63 = sub_1DF81C298();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "(id)[NSNull null] != _delegate";
            _os_log_impl(&dword_1DF7FE000, v63, OS_LOG_TYPE_INFO, "{msg%{public}.0s:A delegate must be set before sending messages with byref return address parameters, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v64 = 285;
        }

        else
        {
          if (v61)
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "__objc_no";
            _os_log_impl(&dword_1DF7FE000, v60, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The object passed to byref return address parameters MUST BE the registered delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v62 = sub_1DF81C298();
          if (os_signpost_enabled(v62))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "__objc_no";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The object passed to byref return address parameters MUST BE the registered delegate", "{msg%{public}.0s:The object passed to byref return address parameters MUST BE the registered delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v63 = sub_1DF81C298();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            v108 = 2082;
            v109 = &unk_1DF8255EF;
            v110 = 2082;
            v111 = "assert";
            v112 = 2081;
            v113 = "__objc_no";
            _os_log_impl(&dword_1DF7FE000, v63, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The object passed to byref return address parameters MUST BE the registered delegate, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          v64 = 286;
        }

        goto LABEL_74;
      }
    }

    v14 = v97;
    v105 = v97;
    objc_msgSend_setArgument_atIndex_(invocationCopy, v55, &v105, v49);
  }

  if (objc_msgSend_argumentsRetained(invocationCopy, v47, v48))
  {
    v88 = sub_1DF81C298();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v108 = 2082;
      v109 = &unk_1DF8255EF;
      v110 = 2082;
      v111 = "assert";
      v112 = 2081;
      v113 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v88, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v89 = sub_1DF81C298();
    if (os_signpost_enabled(v89))
    {
      *buf = 68289539;
      v108 = 2082;
      v109 = &unk_1DF8255EF;
      v110 = 2082;
      v111 = "assert";
      v112 = 2081;
      v113 = "![inv argumentsRetained]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v89, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Didn't expect the arguments to be retained before now", "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v90 = sub_1DF81C298();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v108 = 2082;
      v109 = &unk_1DF8255EF;
      v110 = 2082;
      v111 = "assert";
      v112 = 2081;
      v113 = "![inv argumentsRetained]";
      _os_log_impl(&dword_1DF7FE000, v90, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Didn't expect the arguments to be retained before now, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", 299, "[CLIntersiloProxy forwardInvocation:]");
    goto LABEL_75;
  }

  objc_msgSend_retainArguments(invocationCopy, v65, v66);
  if (v106)
  {

    v106 = 0;
    v14 = v97;
  }

  v71 = objc_msgSend_delegateSilo(v14, v67, v68);
  if (v71)
  {
    v72 = objc_msgSend_delegate(v97, v69, v70);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1DF81D8D4;
    aBlock[3] = &unk_1E86C85C0;
    v73 = v72;
    v100 = v73;
    selfCopy = self;
    v102 = invocationCopy;
    v74 = v98;
    v103 = v74;
    v104 = v97;
    v75 = _Block_copy(aBlock);
    v78 = objc_msgSend_sig(v74, v76, v77);
    v81 = objc_msgSend_methodReturnLength(v78, v79, v80) == 0;

    if (v81)
    {
      objc_msgSend_async_(v71, v82, v75);
    }

    else
    {
      v83 = objc_opt_class();
      objc_msgSend_performSyncOnSilo_invoker_(v83, v84, v71, v75);
    }
  }
}

- (void)registerDelegate:(id)delegate inSilo:(id)silo
{
  v25 = *MEMORY[0x1E69E9840];
  obj = delegate;
  siloCopy = silo;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
  v11 = v10;
  if (WeakRetained != v10)
  {

LABEL_7:
    v13 = sub_1DF81C298();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = &unk_1DF8255EF;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "_delegate == (id)[NSNull null] && !_delegateSilo";
      _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Once registered, delegate may not be changed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = sub_1DF81C298();
    if (os_signpost_enabled(v14))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = &unk_1DF8255EF;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "_delegate == (id)[NSNull null] && !_delegateSilo";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Once registered, delegate may not be changed", "{msg%{public}.0s:Once registered, delegate may not be changed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v15 = sub_1DF81C298();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = &unk_1DF8255EF;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "_delegate == (id)[NSNull null] && !_delegateSilo";
      _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Once registered, delegate may not be changed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", 349, "[CLIntersiloProxy registerDelegate:inSilo:]");
    __break(1u);
  }

  v12 = objc_loadWeakRetained(&self->_delegateSilo);

  if (v12)
  {
    goto LABEL_7;
  }

  objc_storeWeak(&self->_delegate, obj);
  objc_storeWeak(&self->_delegateSilo, siloCopy);
}

- (id)peer
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:-peer should never be invoked at this level..., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
      }
    }

    v3 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "__objc_no";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "-peer should never be invoked at this level...", "{msg%{public}.0s:-peer should never be invoked at this level..., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
      }
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "__objc_no";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:-peer should never be invoked at this level..., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloProxy.mm", 371, "[CLIntersiloProxy peer]");
LABEL_11:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
  }
}

@end