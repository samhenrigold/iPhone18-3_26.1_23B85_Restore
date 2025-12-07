@interface CLIntersiloInterfaceSelectorInfo
- (CLIntersiloInterfaceSelectorInfo)initWithSelector:(SEL)selector andMethodSignature:(id)signature;
- (SEL)sel;
- (id)description;
@end

@implementation CLIntersiloInterfaceSelectorInfo

- (CLIntersiloInterfaceSelectorInfo)initWithSelector:(SEL)selector andMethodSignature:(id)signature
{
  v112 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  v10 = objc_msgSend_numberOfArguments(signatureCopy, v8, v9);
  if (v10 < 32)
  {
    v101.receiver = self;
    v101.super_class = CLIntersiloInterfaceSelectorInfo;
    v11 = [(CLIntersiloInterfaceSelectorInfo *)&v101 init];
    v12 = v11;
    if (!v11)
    {
LABEL_36:

      return v12;
    }

    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v11->_sel = selectorCopy;
    p_sel = &v11->_sel;
    objc_storeStrong(&v11->_sig, signature);
    if (*p_sel)
    {
      v15 = *p_sel;
    }

    else
    {
      v15 = 0;
    }

    v16 = NSStringFromSelector(v15);
    if (objc_msgSend_methodReturnLength(v12->_sig, v17, v18))
    {
      if (objc_msgSend_hasPrefix_(v16, v19, @"syncget"))
      {
        if (v10 < 3)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v73 = sub_1DF80C018();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        v74 = v16;
        v77 = objc_msgSend_UTF8String(v16, v75, v76);
        *buf = 68289795;
        v103 = 0;
        v104 = 2082;
        v105 = &unk_1DF8255EF;
        v106 = 2081;
        v107 = v77;
        v108 = 2082;
        v109 = "assert";
        v110 = 2081;
        v111 = "0 == returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v73, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Methods returning non-void must begin 'syncget...', selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v78 = sub_1DF80C018();
      if (os_signpost_enabled(v78))
      {
        v79 = v16;
        v82 = objc_msgSend_UTF8String(v16, v80, v81);
        *buf = 68289795;
        v103 = 0;
        v104 = 2082;
        v105 = &unk_1DF8255EF;
        v106 = 2081;
        v107 = v82;
        v108 = 2082;
        v109 = "assert";
        v110 = 2081;
        v111 = "0 == returnValueSize";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v78, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Methods returning non-void must begin 'syncget...'", "{msg%{public}.0s:Methods returning non-void must begin 'syncget...', selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v53 = sub_1DF80C018();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v83 = v16;
        v86 = objc_msgSend_UTF8String(v16, v84, v85);
        *buf = 68289795;
        v103 = 0;
        v104 = 2082;
        v105 = &unk_1DF8255EF;
        v106 = 2081;
        v107 = v86;
        v108 = 2082;
        v109 = "assert";
        v110 = 2081;
        v111 = "0 == returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v53, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Methods returning non-void must begin 'syncget...', selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v58 = 97;
LABEL_80:

      result = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloInterface.mm", v58, "[CLIntersiloInterfaceSelectorInfo initWithSelector:andMethodSignature:]");
      goto LABEL_81;
    }

    if (objc_msgSend_hasPrefix_(v16, v19, @"syncget"))
    {
      v87 = sub_1DF80C018();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
      {
        v88 = v16;
        v91 = objc_msgSend_UTF8String(v16, v89, v90);
        *buf = 68289795;
        v103 = 0;
        v104 = 2082;
        v105 = &unk_1DF8255EF;
        v106 = 2081;
        v107 = v91;
        v108 = 2082;
        v109 = "assert";
        v110 = 2081;
        v111 = "0 != returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v87, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Methods beginning 'syncget...' must return non-void, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v92 = sub_1DF80C018();
      if (os_signpost_enabled(v92))
      {
        v93 = v16;
        v96 = objc_msgSend_UTF8String(v16, v94, v95);
        *buf = 68289795;
        v103 = 0;
        v104 = 2082;
        v105 = &unk_1DF8255EF;
        v106 = 2081;
        v107 = v96;
        v108 = 2082;
        v109 = "assert";
        v110 = 2081;
        v111 = "0 != returnValueSize";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v92, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Methods beginning 'syncget...' must return non-void", "{msg%{public}.0s:Methods beginning 'syncget...' must return non-void, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v53 = sub_1DF80C018();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v97 = v16;
        v100 = objc_msgSend_UTF8String(v16, v98, v99);
        *buf = 68289795;
        v103 = 0;
        v104 = 2082;
        v105 = &unk_1DF8255EF;
        v106 = 2081;
        v107 = v100;
        v108 = 2082;
        v109 = "assert";
        v110 = 2081;
        v111 = "0 != returnValueSize";
        _os_log_impl(&dword_1DF7FE000, v53, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Methods beginning 'syncget...' must return non-void, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      v58 = 92;
      goto LABEL_80;
    }

    if (v10 < 3)
    {
LABEL_35:
      v35 = v12;

      goto LABEL_36;
    }

    if (objc_msgSend_hasSuffixInsensitive_(v16, v21, @"doAsync:"))
    {
      goto LABEL_24;
    }

    v22 = objc_msgSend_rangeOfString_options_(v16, v20, @"withReply:", 1);
    ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v12->_sig, v23, (v10 - 1));
    if (*ArgumentTypeAtIndex == 64 && ArgumentTypeAtIndex[1] == 63 && !ArgumentTypeAtIndex[2])
    {
      v12->_lastArgBlockIndex = v10 - 1;
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12->_lastArgBlockIndex = -v12->_lastArgBlockIndex;
    }

    else
    {
      v27 = objc_msgSend_length(v16, v20, v25);
      if (v22 != v27 - objc_msgSend_length(@"withReply:", v28, v29))
      {
        v43 = sub_1DF80C018();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          v44 = v16;
          v47 = objc_msgSend_UTF8String(v16, v45, v46);
          *buf = 68289795;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2081;
          v107 = v47;
          v108 = 2082;
          v109 = "assert";
          v110 = 2081;
          v111 = "subStringRange.location == (selStr.length - subString.length)";
          _os_log_impl(&dword_1DF7FE000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:withReply: can only be used at the end of a method name, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v48 = sub_1DF80C018();
        if (os_signpost_enabled(v48))
        {
          v49 = v16;
          v52 = objc_msgSend_UTF8String(v16, v50, v51);
          *buf = 68289795;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2081;
          v107 = v52;
          v108 = 2082;
          v109 = "assert";
          v110 = 2081;
          v111 = "subStringRange.location == (selStr.length - subString.length)";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "withReply: can only be used at the end of a method name", "{msg%{public}.0s:withReply: can only be used at the end of a method name, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v53 = sub_1DF80C018();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = v16;
          v57 = objc_msgSend_UTF8String(v16, v55, v56);
          *buf = 68289795;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2081;
          v107 = v57;
          v108 = 2082;
          v109 = "assert";
          v110 = 2081;
          v111 = "subStringRange.location == (selStr.length - subString.length)";
          _os_log_impl(&dword_1DF7FE000, v53, OS_LOG_TYPE_INFO, "{msg%{public}.0s:withReply: can only be used at the end of a method name, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v58 = 125;
        goto LABEL_80;
      }

      if ((v26 & 1) == 0)
      {
        v59 = sub_1DF80C018();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
        {
          v60 = v16;
          v63 = objc_msgSend_UTF8String(v16, v61, v62);
          *buf = 68289795;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2081;
          v107 = v63;
          v108 = 2082;
          v109 = "assert";
          v110 = 2081;
          v111 = "isLastArgBlockType";
          _os_log_impl(&dword_1DF7FE000, v59, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:withReply: argument name should only take block type argument, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v64 = sub_1DF80C018();
        if (os_signpost_enabled(v64))
        {
          v65 = v16;
          v68 = objc_msgSend_UTF8String(v16, v66, v67);
          *buf = 68289795;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2081;
          v107 = v68;
          v108 = 2082;
          v109 = "assert";
          v110 = 2081;
          v111 = "isLastArgBlockType";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v64, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "withReply: argument name should only take block type argument", "{msg%{public}.0s:withReply: argument name should only take block type argument, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v53 = sub_1DF80C018();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v69 = v16;
          v72 = objc_msgSend_UTF8String(v16, v70, v71);
          *buf = 68289795;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2081;
          v107 = v72;
          v108 = 2082;
          v109 = "assert";
          v110 = 2081;
          v111 = "isLastArgBlockType";
          _os_log_impl(&dword_1DF7FE000, v53, OS_LOG_TYPE_INFO, "{msg%{public}.0s:withReply: argument name should only take block type argument, selStr:%{private, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        }

        v58 = 129;
        goto LABEL_80;
      }
    }

LABEL_24:
    v30 = v10 & 0x7FFFFFFF;
    v31 = 2;
    while (1)
    {
      v32 = objc_msgSend_getArgumentTypeAtIndex_(v12->_sig, v20, v31);
      v33 = *v32;
      if (v33 == 82)
      {
        v34 = v32[1];
        if (v34 == 64)
        {
          if (v32[2])
          {
            goto LABEL_34;
          }
        }

        else if (64 != v34)
        {
          goto LABEL_34;
        }
      }

      else if (82 != v33)
      {
        goto LABEL_34;
      }

      if (v12->_returnAddressIndex)
      {
        v37 = sub_1DF80C018();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2082;
          v107 = "assert";
          v108 = 2081;
          v109 = "0 == _returnAddressIndex";
          _os_log_impl(&dword_1DF7FE000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v38 = sub_1DF80C018();
        if (os_signpost_enabled(v38))
        {
          *buf = 68289539;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2082;
          v107 = "assert";
          v108 = 2081;
          v109 = "0 == _returnAddressIndex";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v39 = sub_1DF80C018();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v103 = 0;
          v104 = 2082;
          v105 = &unk_1DF8255EF;
          v106 = 2082;
          v107 = "assert";
          v108 = 2081;
          v109 = "0 == _returnAddressIndex";
          _os_log_impl(&dword_1DF7FE000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        result = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloInterface.mm", 147, "[CLIntersiloInterfaceSelectorInfo initWithSelector:andMethodSignature:]");
        goto LABEL_81;
      }

      v12->_returnAddressIndex = v31;
LABEL_34:
      if (v30 == ++v31)
      {
        goto LABEL_35;
      }
    }
  }

  v40 = sub_1DF80C018();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v103 = 0;
    v104 = 2082;
    v105 = &unk_1DF8255EF;
    v106 = 2082;
    v107 = "assert";
    v108 = 2081;
    v109 = "32 > numArguments";
    _os_log_impl(&dword_1DF7FE000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Too many arguments to selector in IntersiloInterface, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v41 = sub_1DF80C018();
  if (os_signpost_enabled(v41))
  {
    *buf = 68289539;
    v103 = 0;
    v104 = 2082;
    v105 = &unk_1DF8255EF;
    v106 = 2082;
    v107 = "assert";
    v108 = 2081;
    v109 = "32 > numArguments";
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Too many arguments to selector in IntersiloInterface", "{msg%{public}.0s:Too many arguments to selector in IntersiloInterface, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v42 = sub_1DF80C018();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v103 = 0;
    v104 = 2082;
    v105 = &unk_1DF8255EF;
    v106 = 2082;
    v107 = "assert";
    v108 = 2081;
    v109 = "32 > numArguments";
    _os_log_impl(&dword_1DF7FE000, v42, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Too many arguments to selector in IntersiloInterface, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  result = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloInterface.mm", 73, "[CLIntersiloInterfaceSelectorInfo initWithSelector:andMethodSignature:]");
LABEL_81:
  __break(1u);
  return result;
}

- (id)description
{
  v3 = objc_msgSend_sel(self, a2, v2);

  return NSStringFromSelector(v3);
}

- (SEL)sel
{
  if (self->_sel)
  {
    return self->_sel;
  }

  else
  {
    return 0;
  }
}

@end