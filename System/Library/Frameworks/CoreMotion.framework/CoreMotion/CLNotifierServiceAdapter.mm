@interface CLNotifierServiceAdapter
- (CLNotifierServiceAdapter)init;
- (NSString)debugDescription;
- (id).cxx_construct;
- (int)notifierClientNumForCoparty:(id)coparty;
- (void)forget:(id)forget;
- (void)invalidate;
- (void)register:(id)register forNotification:(int)notification registrationInfo:(id)info;
- (void)setAdaptedNotifier:(CLNotifierBase *)notifier;
- (void)unregister:(id)unregister forNotification:(int)notification;
@end

@implementation CLNotifierServiceAdapter

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  return self;
}

- (CLNotifierServiceAdapter)init
{
  v3.receiver = self;
  v3.super_class = CLNotifierServiceAdapter;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F0E786F8 outboundProtocol:&unk_1F0E81490];
}

- (void)setAdaptedNotifier:(CLNotifierBase *)notifier
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_universe(self, a2, notifier);
  v8 = objc_msgSend_silo(v5, v6, v7);
  objc_msgSend_assertInside(v8, v9, v10);
  if (self->_notifier)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
    }

    v13 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "nullptr == _notifier";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
      }
    }

    v14 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "nullptr == _notifier";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
      }
    }

    v15 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "nullptr == _notifier";
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLNotifierServiceAdapter.mm", 48, "[CLNotifierServiceAdapter setAdaptedNotifier:]");
LABEL_28:
    __asm { BL              ___stack_chk_fail }
  }

  if (!notifier)
  {
    return;
  }

  if ((objc_msgSend_valid(self, v11, v12) & 1) == 0)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
    }

    v16 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "[self valid]";
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
      }
    }

    v17 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "[self valid]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
      }
    }

    v18 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = "assert";
      v25 = 2081;
      v26 = "[self valid]";
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLNotifierServiceAdapter.mm", 58, "[CLNotifierServiceAdapter setAdaptedNotifier:]");
    goto LABEL_28;
  }

  self->_notifier = notifier;
}

- (void)invalidate
{
  v4 = objc_msgSend_universe(self, a2, v2);
  v7 = objc_msgSend_silo(v4, v5, v6);
  objc_msgSend_assertInside(v7, v8, v9);
  objc_msgSend_setValid_(self, v10, 0);
  self->_notifier = 0;
}

- (void)register:(id)register forNotification:(int)notification registrationInfo:(id)info
{
  v6 = *&notification;
  v9 = objc_msgSend_universe(self, a2, register);
  v12 = objc_msgSend_silo(v9, v10, v11);
  objc_msgSend_assertInside(v12, v13, v14);
  notifier = self->_notifier;
  v17 = objc_msgSend_notifierClientNumForCoparty_(self, v16, register);
  v18 = *(notifier->var0 + 5);

  v18(notifier, v17, v6, info);
}

- (void)unregister:(id)unregister forNotification:(int)notification
{
  v4 = *&notification;
  v7 = objc_msgSend_universe(self, a2, unregister);
  v10 = objc_msgSend_silo(v7, v8, v9);
  objc_msgSend_assertInside(v10, v11, v12);
  notifier = self->_notifier;
  v15 = objc_msgSend_notifierClientNumForCoparty_(self, v14, unregister);
  v16 = *(notifier->var0 + 7);

  v16(notifier, v15, v4);
}

- (void)forget:(id)forget
{
  v5 = objc_msgSend_universe(self, a2, forget);
  v8 = objc_msgSend_silo(v5, v6, v7);
  objc_msgSend_assertInside(v8, v9, v10);
  p_clients = &self->_clients;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_clients.__tree_.__end_node_;
    do
    {
      v14 = *(left + 4);
      v15 = v14 >= forget;
      v16 = v14 < forget;
      if (v15)
      {
        p_end_node = left;
      }

      left = *(left + v16);
    }

    while (left);
    if (p_end_node != &self->_clients.__tree_.__end_node_ && p_end_node[4].__left_ <= forget)
    {
      (*(self->_notifier->var0 + 4))(self->_notifier, LODWORD(p_end_node[5].__left_));
      v17 = p_end_node[1].__left_;
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = v17->__left_;
        }

        while (v17);
      }

      else
      {
        v19 = p_end_node;
        do
        {
          v18 = v19[2].__left_;
          v20 = *v18 == v19;
          v19 = v18;
        }

        while (!v20);
      }

      if (p_clients->__tree_.__begin_node_ == p_end_node)
      {
        p_clients->__tree_.__begin_node_ = v18;
      }

      v21 = self->_clients.__tree_.__end_node_.__left_;
      --self->_clients.__tree_.__size_;
      sub_19B4271C4(v21, p_end_node);

      operator delete(p_end_node);
    }
  }
}

- (int)notifierClientNumForCoparty:(id)coparty
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_universe(self, a2, coparty);
  v8 = objc_msgSend_silo(v5, v6, v7);
  objc_msgSend_assertInside(v8, v9, v10);
  notifier = self->_notifier;
  if (!notifier)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
    }

    v23 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "_notifier";
      _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
      }
    }

    v24 = qword_1EAFE2820;
    if (os_signpost_enabled(qword_1EAFE2820))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "_notifier";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E2A760);
      }
    }

    v25 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "_notifier";
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Shared/Utilities/CLNotifierServiceAdapter.mm", 100, "[CLNotifierServiceAdapter notifierClientNumForCoparty:]");
    __break(1u);
  }

  p_end_node = &self->_clients.__tree_.__end_node_;
  left = self->_clients.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_10;
  }

  v14 = &self->_clients.__tree_.__end_node_;
  do
  {
    v15 = *(left + 4);
    v16 = v15 >= coparty;
    v17 = v15 < coparty;
    if (v16)
    {
      v14 = left;
    }

    left = *(left + v17);
  }

  while (left);
  if (v14 != p_end_node && v14[4].__left_ <= coparty)
  {
    return v14[5].__left_;
  }

LABEL_10:
  v18 = (*(notifier->var0 + 3))(notifier, coparty);
  v19 = p_end_node->__left_;
  if (!p_end_node->__left_)
  {
LABEL_16:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v20 = v19;
      v21 = v19[4];
      if (v21 <= coparty)
      {
        break;
      }

      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_16;
      }
    }

    if (v21 >= coparty)
    {
      break;
    }

    v19 = v20[1];
    if (!v19)
    {
      goto LABEL_16;
    }
  }

  *(v20 + 10) = v18;
  return v18;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v14.receiver = self;
  v14.super_class = CLNotifierServiceAdapter;
  v4 = [(CLIntersiloService *)&v14 debugDescription];
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"%@\nClientIntegerMap: (\n"), v4;
  begin_node = self->_clients.__tree_.__begin_node_;
  if (begin_node != &self->_clients.__tree_.__end_node_)
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        objc_msgSend_appendString_(v7, v6, @",\n");
      }

      objc_msgSend_appendFormat_(v7, v6, @"%p = %d", begin_node[4].__left_, LODWORD(begin_node[5].__left_));
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v11 = left;
          left = left->super.super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v11 = begin_node[2].__left_;
          v12 = v11->super.super.isa == begin_node;
          begin_node = v11;
        }

        while (!v12);
      }

      v9 = 1;
      begin_node = v11;
    }

    while (v11 != &self->_clients.__tree_.__end_node_);
  }

  objc_msgSend_appendString_(v7, v6, @"\n\n"));
  return v7;
}

@end