void sub_22B6A5E80(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6A60B8;
  v24[3] = &unk_278707C78;
  v21 = v14;
  v25 = v21;
  v22 = v16;
  v26 = v22;
  v23 = v17;
  v27 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v24];
}

void sub_22B6A5FF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local incoming dl push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A5F98);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A60B8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v6 = *v15;
    *&v5 = 138412802;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localIncommingMessage:v9 storageContext:{v12, v13, v14}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_22B6A6310(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A6550;
  v25[3] = &unk_278707CA0;
  v22 = v15;
  v26 = v22;
  v23 = v17;
  v27 = v23;
  v29 = a9;
  v24 = v18;
  v28 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v25];
}

void sub_22B6A6488(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local outgoing push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A6430);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A6550(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v5 = *v16;
    *&v4 = 138412802;
    v13 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = *(a1 + 56);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v7 handler:v9 localOutgoingMessage:v8 isBeingReplayed:v10 storageContext:{v12, v13}];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

void sub_22B6A67B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  v32 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Using outDownloadMessageBlock", buf, 2u);
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B6A6A68;
  v26[3] = &unk_278707CA0;
  v23 = v15;
  v27 = v23;
  v24 = v17;
  v28 = v24;
  v30 = a9;
  v25 = v18;
  v29 = v25;
  [v23 _calculateHandlersForLocalMessage:v24 userInfo:v25 completionBlock:v26];
}

void sub_22B6A6A68(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v5 = *v16;
    *&v4 = 138412802;
    v13 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = *(a1 + 56);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v7 handler:v9 localOutgoingDownloadMessage:v8 isBeingReplayed:v10 storageContext:{v12, v13}];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

void sub_22B6A6CD0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Using localIncomingDownloadMessageBlock", buf, 2u);
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A6F78;
  v25[3] = &unk_278707C78;
  v22 = v14;
  v26 = v22;
  v23 = v16;
  v27 = v23;
  v24 = v17;
  v28 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v25];
}

void sub_22B6A6F78(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v6 = *v15;
    *&v5 = 138412802;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localIncomingDownloadMessage:v9 storageContext:{v12, v13, v14}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_22B6A71D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6A7408;
  v24[3] = &unk_278707C78;
  v21 = v14;
  v25 = v21;
  v22 = v16;
  v26 = v22;
  v23 = v17;
  v27 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v24];
}

void sub_22B6A7340(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local sent message push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A72E8);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A7408(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v15 = *v17;
    *&v4 = 138412802;
    v13 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          v7 = *(a1 + 32);
          v8 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v13}];
          v9 = [*(a1 + 40) objectForKeyedSubscript:IMDRelayMessageDictionaryInterworkedKey];
          v10 = [v9 BOOLValue];
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v6 handler:v7 localMessageSent:v8 wasInterworked:v10 storageContext:v12];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

void sub_22B6A76B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6A78F0;
  v24[3] = &unk_278707C78;
  v21 = v14;
  v25 = v21;
  v22 = v16;
  v26 = v22;
  v23 = v17;
  v27 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v24];
}

void sub_22B6A7828(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local message read push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A77D0);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A78F0(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v5 = *v17;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 32);
          v9 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v14}];
          v10 = objc_opt_class();
          v11 = sub_22B69C444(v10, *(a1 + 48), @"e");
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 48), @"H");
          [v7 handler:v8 localMessageRead:v9 readByMe:1 timeStamp:v11 storageContext:v13];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

void sub_22B6A7B9C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6A7DD4;
  v24[3] = &unk_278707C78;
  v21 = v14;
  v25 = v21;
  v22 = v16;
  v26 = v22;
  v23 = v17;
  v27 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v24];
}

void sub_22B6A7D0C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incomming local message read push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A7CB4);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A7DD4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v5 = *v17;
    *&v4 = 138412802;
    v14 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = *(a1 + 32);
          v9 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v14}];
          v10 = objc_opt_class();
          v11 = sub_22B69C444(v10, *(a1 + 48), @"e");
          v12 = objc_opt_class();
          v13 = sub_22B69C444(v12, *(a1 + 48), @"H");
          [v7 handler:v8 localMessageRead:v9 readByMe:0 timeStamp:v11 storageContext:v13];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

void sub_22B6A8080(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22B6A82B8;
  v24[3] = &unk_278707C78;
  v21 = v14;
  v25 = v21;
  v22 = v16;
  v26 = v22;
  v23 = v17;
  v27 = v23;
  [v21 _calculateHandlersForLocalMessage:v22 userInfo:v23 completionBlock:v24];
}

void sub_22B6A81F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Exception handling incoming local message error push: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B6A8198);
  }

  _Unwind_Resume(a1);
}

void sub_22B6A82B8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v6 = *v15;
    *&v5 = 138412802;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = *(a1 + 32);
          v10 = [*(a1 + 40) _stringForKey:{IMDRelayLocalMessageDictionaryGUIDKey, v13, v14}];
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v9 localMessageError:v10 storageContext:v12];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_22B6A852C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Using block local remote file request", buf, 2u);
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A87D4;
  v25[3] = &unk_278707C78;
  v22 = v14;
  v26 = v22;
  v23 = v16;
  v27 = v23;
  v24 = v17;
  v28 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v25];
}

void sub_22B6A87D4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v6 = *v15;
    *&v5 = 138412802;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localFileRequest:v9 storageContext:{v12, v13, v14}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_22B6A8A2C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Using block local remote file response", buf, 2u);
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6A8CD4;
  v25[3] = &unk_278707C78;
  v22 = v14;
  v26 = v22;
  v23 = v16;
  v27 = v23;
  v24 = v17;
  v28 = v24;
  [v22 _calculateHandlersForLocalMessage:v23 userInfo:v24 completionBlock:v25];
}

void sub_22B6A8CD4(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v6 = *v15;
    *&v5 = 138412802;
    v13 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v10 = *(a1 + 32);
          v9 = *(a1 + 40);
          v11 = objc_opt_class();
          v12 = sub_22B69C444(v11, *(a1 + 48), @"H");
          [v8 handler:v10 localFileResponse:v9 storageContext:{v12, v13, v14}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_22B6AB4DC()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = IMDRelayLocalMessageTypeOutgoing;
  v2[1] = IMDRelayLocalMessageTypeOutgoingDownload;
  v3[0] = IMDRelayLocalMessageDictionaryOutgoingDictKey;
  v3[1] = IMDRelayLocalMessageDictionaryOutgoingDictKey;
  v2[2] = IMDRelayLocalMessageTypeIncomingTextMessage;
  v2[3] = IMDRelayLocalMessageTypeIncomingDownloadMessage;
  v3[2] = IMDRelayLocalMessageDictionaryIncomingDictKey;
  v3[3] = IMDRelayLocalMessageDictionaryIncomingDictKey;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = qword_27D8D0040;
  qword_27D8D0040 = v0;
}

void sub_22B6AC03C(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 32);
    v9 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
LABEL_13:
      v12 = 0;
      v13 = v3;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v3 = [*(a1 + 40) _cachedListenersForGUID:*(*(&v18 + 1) + 8 * v12)];

        if ([v3 count])
        {
          break;
        }

        ++v12;
        v13 = v3;
        if (v10 == v12)
        {
          v10 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }
    }

    goto LABEL_19;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 40) _cacheListeners:v3 forGUID:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  (*(*(a1 + 48) + 16))();
}

void sub_22B6AC230(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bestResult];
  v6 = [v5 service];
  v7 = [v4 _handlerForServiceName:v6];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [MEMORY[0x277D1A900] sharedManager];
  v10 = [v9 isMessagesTheDefaultTextApp];

  if (v10)
  {
    v7 = 0;
  }

  else
  {
    v13 = [*(a1 + 40) objectForKey:IMDRelayMessageItemDictionary];
    v14 = [v13 objectForKey:IMDRelayMessageItemDictionaryServiceKey];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "No service found to handle relay request, but we are no longer the default text app, routing to %@", &v17, 0xCu);
      }
    }

    v7 = [*(a1 + 32) _handlerForServiceName:v14];
    if (v7)
    {

LABEL_2:
      v23[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      goto LABEL_6;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "No handler found for original message service %@, using SMS handler instead", &v17, 0xCu);
      }
    }

    v7 = [*(a1 + 32) _handlerForServiceName:*MEMORY[0x277D1A610]];

    if (v7)
    {
      goto LABEL_2;
    }
  }

  v8 = 0;
LABEL_6:
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v17 = 138412803;
      v18 = v7;
      v19 = 2117;
      v20 = v12;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Routing outgoing payload to %@ as it is the most optimal path. payload=%{sensitive}@ reachability results=%@", &v17, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_22B6AC7AC()
{
  v7[10] = *MEMORY[0x277D85DE8];
  v6[0] = IMDRelayLocalMessageTypeIncomingTextMessage;
  v6[1] = IMDRelayLocalMessageTypeIncomingDownloadMessage;
  v7[0] = &unk_283F4ECC0;
  v7[1] = &unk_283F4ECC0;
  v6[2] = IMDRelayLocalMessageTypeOutgoing;
  v6[3] = IMDRelayLocalMessageTypeOutgoingDownload;
  v7[2] = &unk_283F4ECC0;
  v7[3] = &unk_283F4ECC0;
  v6[4] = IMDRelayLocalMessageTypeSent;
  v6[5] = IMDRelayLocalMessageTypeRead;
  v7[4] = &unk_283F4ECD8;
  v7[5] = &unk_283F4ECD8;
  v6[6] = IMDRelayLocalMessageTypeRemoteRead;
  v6[7] = IMDRelayLocalMessageTypeError;
  v7[6] = &unk_283F4ECD8;
  v7[7] = &unk_283F4ECD8;
  v6[8] = IMDRelayLocalMessageTypeDelivered;
  v6[9] = IMDRelayLocalMessageTypeRemoteFileRequest;
  v7[8] = &unk_283F4ECD8;
  v7[9] = &unk_283F4ECD8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:10];
  v1 = qword_27D8D0050;
  qword_27D8D0050 = v0;

  v4[0] = IMDRelayLocalMessageTypeOutgoing;
  v4[1] = IMDRelayLocalMessageTypeOutgoingDownload;
  v5[0] = &unk_283F4ECF0;
  v5[1] = &unk_283F4ECF0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = qword_27D8D0058;
  qword_27D8D0058 = v2;
}

void sub_22B6ACA04()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2[0] = IMDRelayLocalMessageTypeSent;
  v2[1] = IMDRelayLocalMessageTypeIncomingTextMessage;
  v3[0] = &unk_283F4ED08;
  v3[1] = &unk_283F4ED20;
  v2[2] = IMDRelayLocalMessageTypeOutgoing;
  v2[3] = IMDRelayLocalMessageTypeIncomingDownloadMessage;
  v3[2] = &unk_283F4ED20;
  v3[3] = &unk_283F4ED20;
  v2[4] = IMDRelayLocalMessageTypeOutgoingDownload;
  v3[4] = &unk_283F4ED20;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_27D8D0068;
  qword_27D8D0068 = v0;
}

void sub_22B6ACBC8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v52 = a6;
  v14 = a7;
  if ([v12 length])
  {
    v15 = [v11 filename];
    v16 = IMUTITypeForFilename();

    if (IMIsSupportedUTIType())
    {
      v17 = v16;
      if ([v52 isTrustedSender])
      {
        v18 = 1;
      }

      else
      {
        v20 = [MEMORY[0x277D1AB30] UTITypes];
        v21 = [v20 containsObject:v17];

        v18 = v21 ^ 1;
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = [v11 isFromMomentShare];
    v72 = 0u;
    v73 = 0u;
    IMClientPreviewConstraints();
    v74 = [v11 isSticker];
    *(&v74 + 2) = [v11 isAdaptiveImageGlyph];
    BYTE1(v74) = 1;
    if ([v13 hasPrefix:*MEMORY[0x277D19720]])
    {
      v23 = [v11 type];
      if ([v23 length])
      {
        v24 = MEMORY[0x277CE1CB8];
        v25 = [v11 type];
        v26 = [v24 typeWithIdentifier:v25];
        LODWORD(v24) = [v26 conformsToType:*MEMORY[0x277CE1DB0]];

        if (v24)
        {
          v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
          v28 = [MEMORY[0x277D1ADE0] sharedInstance];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_22B6AD650;
          v68[3] = &unk_278704418;
          v69 = v13;
          v70 = v11;
          v71 = v14;
          *buf = v72;
          *&buf[16] = v73;
          *v78 = v74;
          [v28 replaceTransferWithSafeTransfer:v27 constraints:buf completionBlock:v68];

LABEL_38:
          goto LABEL_39;
        }
      }

      else
      {
      }

LABEL_37:
      v27 = [v11 guid];
      (*(v14 + 2))(v14, v27, 1, 0, 0.0, 0.0);
      goto LABEL_38;
    }

    if (!v18 || (*&v72 <= 0.0 ? (v29 = 1) : (v29 = v22), (v29 & 1) != 0 || ([v11 isAuxVideo] & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [v11 isAuxVideo];
          v32 = @"NO";
          if (v22)
          {
            v33 = @"YES";
          }

          else
          {
            v33 = @"NO";
          }

          if (v18)
          {
            v34 = @"YES";
          }

          else
          {
            v34 = @"NO";
          }

          *buf = 138412802;
          *&buf[4] = v34;
          *&buf[12] = 2112;
          *&buf[14] = v33;
          if (v31)
          {
            v32 = @"YES";
          }

          *&buf[22] = 2112;
          *&buf[24] = v32;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not pregenerating preview, utiSupported %@ isCMM %@ aux Video %@, calling completion directly", buf, 0x20u);
        }
      }

      if (!v14)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v27 = IMPreviewExtension();
    if ([v11 isSticker])
    {
      v35 = [v11 stickerUserInfo];
      [v11 isAdaptiveImageGlyph];
      v51 = IMSharedHelperCachePathForStickerWithProperties();
    }

    else
    {
      [v11 guid];
      [v11 filename];
      [v11 mimeType];
      v51 = IMDCopyAttachmentPersistentPath();
    }

    if (![v51 length])
    {
      v36 = IMLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8FD8(v11);
      }

      if (v14)
      {
        v50 = [v11 guid];
        (*(v14 + 2))(v14, v50, 1, 0, 0.0, 0.0);
      }

      goto LABEL_72;
    }

    v49 = [MEMORY[0x277CBEBC0] fileURLWithPath:v51];
    if ([v11 isAdaptiveImageGlyph])
    {
      IMAttachmentEmojiImagePreviewFileURL();
    }

    else
    {
      IMAttachmentPreviewFileURL();
    }
    v48 = ;
    v47 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138413314;
        *&buf[4] = v47;
        *&buf[12] = 2112;
        *&buf[14] = v49;
        *&buf[22] = 2112;
        *&buf[24] = v48;
        *v78 = 2048;
        *&v78[2] = v72;
        *&v78[10] = 2048;
        *&v78[12] = *(&v73 + 1);
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Generating preview OOP with tmpURL %@ finalURL %@ previewURL %@ maxWidth %f scale %f", buf, 0x34u);
      }
    }

    if (v48)
    {
      v46 = objc_alloc_init(MEMORY[0x277D1ACA0]);
      [v46 emitPreviewGenerationBeginFromUTI:v16];
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3010000000;
      *v78 = 0;
      *&v78[8] = 0;
      *&buf[24] = "";
      v58 = 0;
      v59 = &v58;
      v60 = 0x3032000000;
      v61 = sub_22B4D77D0;
      v62 = sub_22B4D794C;
      v63 = 0;
      v38 = [MEMORY[0x277D1ADE0] sharedInstance];
      v39 = [v11 guid];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_22B6AD894;
      v53[3] = &unk_278707D18;
      v55 = &v64;
      v56 = &v58;
      v54 = v48;
      v57 = buf;
      v75[0] = v72;
      v75[1] = v73;
      v76 = v74;
      LOBYTE(v45) = 1;
      v40 = v54;
      [v38 generatePreview:v47 previewURL:v53 senderContext:v45 constraints:? balloonBundleID:? transferGUID:? completionBlock:? blockUntilReply:?];

      [v46 emitPreviewGenerationEndFromUTI:v16];
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LODWORD(v75[0]) = 138412290;
          *(v75 + 4) = v40;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "persistedPreviewURL: %@", v75, 0xCu);
        }
      }

      v42 = [MEMORY[0x277D1A950] sharedManager];
      [v42 checkPreviewSensitivityIfNeededFor:v11 attachmentURL:v47 persistedPreviewURL:v40 isFromMe:{objc_msgSend(v52, "isFromMe")}];
      if (v14)
      {
        v43 = [v11 guid];
        (*(v14 + 2))(v14, v43, *(v65 + 24), v59[5], *(*&buf[8] + 32), *(*&buf[8] + 40));
      }

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v64, 8);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Not pregenerating preview, no persistedPreviewURL", buf, 2u);
        }
      }

      if (!v14)
      {
        goto LABEL_71;
      }

      v46 = [v11 guid];
      (*(v14 + 2))(v14, v46, 1, 0, 0.0, 0.0);
    }

LABEL_71:
LABEL_72:

    goto LABEL_38;
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D9064(v11);
  }

  if (v14)
  {
    v16 = [v11 guid];
    (*(v14 + 2))(v14, v16, 1, 0, 0.0, 0.0);
LABEL_39:
  }
}

void sub_22B6AD650(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) guid];
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Replaced iMessage app template image with BlastDoor copy for %@ and transfer %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = [*(a1 + 40) guid];
        *buf = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Failed replacing iMessage app template image with BlastDoor copy for %@ and transfer %@", buf, 0x16u);
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringGUID];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"iMessageApp-TemplateLayoutImage"];
    [IMBlastdoor sendBlastDoorError:v5 guid:v13 messageTypeString:v14 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];
  }

  v15 = *(a1 + 48);
  v16 = [*(a1 + 40) guid];
  (*(v15 + 16))(v15, v16, a2, v5, 0.0, 0.0);
}

void sub_22B6AD860(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6AD790);
  }

  _Unwind_Resume(a1);
}

void sub_22B6AD894(void *a1, char a2, void *a3, double a4, double a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  *(*(a1[5] + 8) + 24) = a2;
  v10 = [v9 copy];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "IMTranscoderAgent OOP generation completed with error %@", buf, 0xCu);
    }
  }

  if (v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  v16 = [MEMORY[0x277D1AAA8] sharedInstance];
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    [v16 trackEvent:*MEMORY[0x277D1A1E8]];

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "OOP preview generation failed in imagent with error %@", buf, 0xCu);
      }
    }

    v23 = [v9 domain];
    if (([v23 isEqual:*MEMORY[0x277D19CE0]] & 1) == 0)
    {
      v24 = [v9 domain];
      if (![v24 containsString:@"com.apple.BlastDoor"])
      {
        v27 = [v9 domain];
        v28 = [v27 containsString:@"BlastDoor.Explosion"];

        if ((v28 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

LABEL_22:
    v25 = [MEMORY[0x277CCACA8] stringGUID];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4ED38];
    [IMBlastdoor sendBlastDoorError:v9 guid:v25 messageTypeString:v26 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];

    goto LABEL_23;
  }

  [v16 trackEvent:*MEMORY[0x277D1A1F0]];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v29 = a4;
      *&v29[1] = a5;
      v19 = [MEMORY[0x277CCAE60] valueWithBytes:v29 objCType:"{CGSize=dd}"];
      v20 = a1[4];
      *buf = 138412546;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Storing size value %@ for previewURL %@", buf, 0x16u);
    }
  }

  v21 = *(a1[7] + 8);
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
LABEL_23:
}

void sub_22B6ADC30(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  v34 = a3;
  v20 = a4;
  v21 = a5;
  v40 = a6;
  v39 = a7;
  v38 = a8;
  v37 = a9;
  v36 = a10;
  v22 = v21;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3010000000;
  v52 = 0;
  v53 = 0;
  v51 = "";
  v27 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.AttachmentDownload", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v27, v49 + 2);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6ADEB4;
  aBlock[3] = &unk_278707D68;
  v28 = v20;
  v42 = v28;
  v47 = &v48;
  v29 = v26;
  v46 = v29;
  v43 = a1;
  v30 = v23;
  v44 = v30;
  v31 = v24;
  v45 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [a1 transferServicesController];
  [v33 receiveFileTransfer:v34 topic:v22 path:v40 requestURLString:v39 ownerID:v38 signature:v37 decryptionKey:v36 fileSize:a11 progressBlock:v25 completionBlock:v32];

  _Block_object_dispose(&v48, 8);
}

void sub_22B6ADEB4(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = +[IMDFileTransferCenter sharedInstance];
  v16 = [v15 transferForGUID:*(a1 + 32)];

  if (a4)
  {
    aBlock = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_22B6AE1B4;
    v26 = &unk_278707D40;
    v22 = *(a1 + 64);
    v17 = v22;
    v30 = v22;
    v27 = v11;
    v18 = v12;
    v28 = v18;
    v31 = 1;
    v29 = v14;
    v19 = _Block_copy(&aBlock);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v16;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "receiveFileTransfer: completed, will generate preview for transfer %@", buf, 0xCu);
      }
    }

    [*(a1 + 40) generatePreviewForTransfer:v16 attachmentPath:v18 balloonBundleID:*(a1 + 48) senderContext:*(a1 + 56) completionBlock:{v19, v22, aBlock, v24, v25, v26}];
  }

  else if (*(a1 + 64))
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = @"NO";
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Not pregenerating preview: downloadSucceeded %@", buf, 0xCu);
      }
    }

    os_activity_scope_leave((*(*(a1 + 72) + 8) + 32));
    (*(*(a1 + 64) + 16))(0.0, 0.0);
  }

  else
  {
    os_activity_scope_leave((*(*(a1 + 72) + 8) + 32));
  }
}

void sub_22B6AE1B4(uint64_t a1, void *a2, int a3, void *a4, double a5, double a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      if (a3)
      {
        v14 = @"YES";
      }

      v15 = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Generated preview, success %@ error %@", &v15, 0x16u);
    }
  }

  os_activity_scope_leave((*(*(a1 + 64) + 8) + 32));
  (*(*(a1 + 56) + 16))(a5, a6);
}

void sub_22B6AF170(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6AF160);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t sub_22B6AF1E0(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Finished Sync", v5, 2u);
    }
  }

  return [*(*(*(a1 + 32) + 8) + 40) _scheduleNextEvaluation];
}

uint64_t sub_22B6AF454()
{
  qword_281421058 = objc_alloc_init(IMDCKChatSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6AF670(uint64_t result)
{
  if (!*(*(result + 32) + 72))
  {
    v1 = result;
    *(*(v1 + 32) + 72) = +[IMDChatRegistry sharedInstance];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t sub_22B6AF7E0(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = +[IMDChatStore sharedInstance];

  return MEMORY[0x2821F96F8]();
}

void sub_22B6AFC64(uint64_t a1)
{
  v5 = [*(a1 + 32) chatRegistry];
  v2 = [v5 chatsToUploadToCloudKitWithLimit:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_22B6AFE78(uint64_t a1)
{
  v2 = [*(a1 + 32) chatRegistry];
  [v2 updateChatUsingSyncData:*(a1 + 40)];

  v3 = *(a1 + 32);

  return MEMORY[0x2821F9670](v3, sel_countRecordOnRead_didSucceed_);
}

void sub_22B6AFF94(uint64_t a1)
{
  v2 = [*(a1 + 32) chatRegistry];
  [v2 resolveChatConflictUsingSyncData:*(a1 + 40) localGUID:*(a1 + 48)];
}

void sub_22B6B0080(uint64_t a1)
{
  v2 = [*(a1 + 32) chatRegistry];
  [v2 markChatAsDeferredForSyncingUsingSyncData:*(a1 + 40)];
}

void sub_22B6B0278(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating chat zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B6B0574(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 12 || objc_msgSend(*(a1 + 32), "code") == 26 || objc_msgSend(*(a1 + 32), "code") == 11)
    {
      v3 = [*(a1 + 40) recordType];
      v4 = [v3 isEqualToString:@"chatLockRecordType"];

      if (v4)
      {
        if (IMOSLoggingEnabled())
        {
          v5 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v6 = *(a1 + 32);
            v26 = 138412290;
            v27 = v6;
            _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "We got back error [%@] on the lock record, setting the lock record to nil to re-generate on next sync", &v26, 0xCu);
          }
        }

        [*(a1 + 48) setLockRecord:0];
      }

      else
      {
        v10 = *(a1 + 48);

        MEMORY[0x2821F9670](v10, sel__markChatAsDefferedForSyncingUsingRecord_);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v26 = 138412546;
          v27 = v14;
          v28 = 2112;
          v29 = v15;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Error %@ while writing up record %@ ", &v26, 0x16u);
        }
      }

      v16 = [*(a1 + 48) ckUtilities];
      v17 = [v16 extractServerRecordFromCKServerErrorRecordChanged:*(a1 + 32)];

      if (v17)
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v17;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Extracted record from server error%@ ", &v26, 0xCu);
          }
        }

        v19 = [v17 recordType];
        v20 = [v19 isEqualToString:@"chatLockRecordType"];

        v21 = *(a1 + 48);
        if (v20)
        {
          [*(a1 + 48) setLockRecord:v17];
        }

        else
        {
          v22 = *(a1 + 56);
          v23 = [*(a1 + 40) recordID];
          v24 = [v23 recordName];
          v25 = [v22 objectForKey:v24];
          [v21 _resolveChatConflictUsingCKRecord:v17 localGUID:v25];
        }
      }
    }
  }

  else
  {
    v7 = [*(a1 + 40) recordType];
    v8 = [v7 isEqualToString:@"chatLockRecordType"];

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "We are setting the lock record on the callback for processing records", &v26, 2u);
        }
      }

      [*(a1 + 48) setLockRecord:*(a1 + 40)];
    }

    else
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);

      [v11 _updateChatUsingCKRecord:v12 onRead:0 didSucceed:1 dispatchToMain:1];
    }
  }
}

void sub_22B6B146C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:4 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_22B6B1B9C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recordType];
  v3 = [v2 isEqualToString:@"chatLockRecordType"];

  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "** We got the lock record %@ **", &v15, 0xCu);
      }
    }

    [*(a1 + 40) setLockRecord:*(a1 + 32)];
  }

  else
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) recordID];
        v9 = [*(a1 + 32) _stringForKey:@"guid"];
        v15 = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "_processRecordChanged changed recordID:%@ for ChatGUID %@", &v15, 0x16u);
      }
    }

    v11 = *(a1 + 40);
    v10 = (a1 + 40);
    v12 = v10 - 1;
    [v11 _updateChatUsingCKRecord:*(v10 - 1) onRead:1 didSucceed:1 dispatchToMain:1];
    [*v10 setFetchedChatsDuringLastSync:1];
    v13 = [*(v10 - 1) _assetForKey:@"gp"];
    [MEMORY[0x277D1A9C0] cleanUpAsset:v13];
    v14 = [*v12 _assetForKey:@"traba"];
    [MEMORY[0x277D1A9C0] cleanUpAsset:v14];
  }
}

uint64_t sub_22B6B1E70(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the sync token to nil", v5, 2u);
    }
  }

  return [*(a1 + 32) setLatestSyncToken:0];
}

void sub_22B6B23B8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6B22C8);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6B2418(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Fetched record %@", &v8, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  if (v3)
  {
    v6 = *(*(a1 + 48) + 8);
    if ((*(v6 + 24) & 1) == 0)
    {
      *(v6 + 24) = 1;
      v7 = *(a1 + 40);
      if (v7)
      {
        (*(v7 + 16))(v7, 1, 0);
      }
    }
  }

  objc_sync_exit(v5);
}

void sub_22B6B256C(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 72) + 8) + 24);
      v23 = 138412802;
      v24 = v16;
      v25 = 2112;
      v26 = v14;
      v27 = 1024;
      v28 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Completed query %@ with error: %@, foundRecord: %d", &v23, 0x1Cu);
    }
  }

  v18 = *(a1 + 40);
  objc_sync_enter(v18);
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    if (a5)
    {
      v19 = *(a1 + 80);
      if (v19 >= 20)
      {
        v20 = 200;
      }

      else
      {
        v20 = (10 * v19);
      }

      [*(a1 + 48) _anyChatExistsOnServerWithResultsLimit:v20 changeToken:v12 activity:*(a1 + 56) completion:*(a1 + 64)];
    }

    else if (*(a1 + 64))
    {
      v21 = v14;
      if (!v21)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19CF8] code:4 userInfo:0];
      }

      v22 = v21;
      (*(*(a1 + 64) + 16))();
    }
  }

  objc_sync_exit(v18);
}

void sub_22B6B2834(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteChatZone];

  v3 = [*(a1 + 32) recordZoneManager];
  [v3 deleteChat1Zone];
}

void sub_22B6B2BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 48) + 8) + 24) = a2 == 4;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_2;
  }

  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_2;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Not eligible for truth zone", &v11, 2u);
    }

    goto LABEL_14;
  }

  v7 = [*(a1 + 32) syncState];
  *(*(*(a1 + 48) + 8) + 24) = [v7 isEligibleForTruthZone];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received error checking eligibility: %@", &v11, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Returning cached value: %@", &v11, 0xCu);
    }

LABEL_14:
  }

LABEL_2:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_22B6B35EC(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v14 = v6;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Deleted chat with recordID %@", buf, 0xCu);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v3);
  }

  v8 = [*(a1 + 40) chatRegistry];
  [v8 clearPendingDeleteTable];
}

void sub_22B6B3A04(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to filter record IDs for chat deletion sync, error: %@", &v9, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _deleteChatRecordsWithRecordIDs:v6 completion:*(a1 + 40)];
  }
}

void sub_22B6B3CBC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "***** WE should not get record completion block in delete operation", v7, 2u);
    }
  }
}

void sub_22B6B3D70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  [*(a1 + 32) _handleChatDeletionCompletionForRecordIDs:a3 error:v6];
  if (*(a1 + 40))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B6B3E40;
    v7[3] = &unk_2787028B0;
    v9 = *(a1 + 40);
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void sub_22B6B4038(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v19 = [v5 count];
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Completed chat record fetch with %llu results, error: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_22B6B41FC;
  v15 = &unk_278707E80;
  v16 = *(a1 + 32);
  v17 = v8;
  v9 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:&v12];
  v10 = *(a1 + 40);
  v11 = [v9 copy];
  (*(v10 + 16))(v10, v6, v11);
}

void sub_22B6B41FC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 modificationDate];
  v8 = v7;
  if (v7 && ([v7 earlierDate:*(a1 + 32)], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v8))
  {
    [*(a1 + 40) addObject:v5];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = 138412802;
        v14 = v5;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Including chat with record ID %@ modification date %@ since it is before %@", &v13, 0x20u);
      }

      goto LABEL_10;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Filtering out chat with record ID %@ modification date %@ since it is after %@", &v13, 0x20u);
    }

LABEL_10:
  }
}

void sub_22B6B456C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 path];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = IMCommSafetyContentAttachmentTypeForURL();
    if (v13 != 2)
    {
      v14 = v13;
      v15 = v9;
      v16 = v15;
      if (v14)
      {
        goto LABEL_19;
      }

      if ([v8 isAdaptiveImageGlyph])
      {
        v16 = IMAttachmentEmojiImagePreviewFileURL();
        v18 = v15;
      }

      else
      {
        v18 = IMPreviewExtension();
        v16 = IMAttachmentPreviewFileURL();
      }

      if (v16)
      {
        v19 = [v16 path];
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v20 fileExistsAtPath:v19];

        if (v21)
        {
LABEL_19:
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *v22 = 0;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Checking sensitivity for existing attachment preview", v22, 2u);
            }
          }

          [a1 checkPreviewSensitivityIfNeededFor:v8 attachmentURL:v15 persistedPreviewURL:v16 isFromMe:a5];
        }
      }
    }
  }
}

void sub_22B6B474C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277D1A958] sharedManager];
  v14 = v13;
  if (a6)
  {
    v15 = [v13 checksForSensitivityOnSend];

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = [v13 checksForSensitivityOnReceive];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  if ([a1 _shouldForceSensitivityResult])
  {
    if (a6)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v10 setCommSafetySensitive:v17];
  }

  else
  {
    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v19 = IMCommSafetyContentAttachmentTypeForURL();
    if (v19 == 1)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    v21 = v20;
    v22 = [MEMORY[0x277D1A950] sharedManager];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B6B497C;
    v27[3] = &unk_278707EA8;
    v30 = a6;
    v28 = v10;
    v23 = v18;
    v29 = v23;
    [v22 isSensitiveContent:v21 contentAttachmentType:v19 useBlastDoor:1 withChatID:0 completionHandler:v27];
    v24 = dispatch_time(0, 30000000000);
    if (dispatch_group_wait(v23, v24) && IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Timed out waiting for sensitive image check", v26, 2u);
      }
    }
  }

LABEL_19:
}

void sub_22B6B497C(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Received CommSafety response from Media-Analysis-Daemon with error %@", &v12, 0xCu);
      }
    }
  }

  else
  {
    if (a2)
    {
      if (*(a1 + 48))
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x277D1A980] sharedInstance];
    [v8 logPrivatizedImageReceivedEvent:a2];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received CommSafety response from Media-Analysis-Daemon with result %@, %@", &v12, 0x16u);
      }
    }

    [*(a1 + 32) setCommSafetySensitive:v7];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_22B6B5A24(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6B5978);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B6B5CB0()
{
  qword_281421218 = objc_alloc_init(IMDCollaborationNoticeController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6B6050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B6B6068(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 16)];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6B619C(uint64_t a1)
{
  *(*(a1 + 32) + 16) = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

void sub_22B6B6884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  v5 = v3;
  if (v3)
  {
    [v2 unionSet:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
    [v2 unionSet:v4];
  }
}

uint64_t sub_22B6B690C(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 targetChatGUIDs];

  if ([v4 count])
  {
    v5 = [v4 intersectsSet:*(a1 + 32)];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_22B6B6D10(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6B6DC8;
  v6[3] = &unk_2787073E8;
  v9 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void sub_22B6B6DC8(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) broadcastNoticesDidChangeForChatGUIDs:*(a1 + 40)];
  }

  v2 = [*(a1 + 32) noticeDispatcher];
  v3 = [*(a1 + 48) guidString];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 reflectDismissalForNoticeGUIDs:v4];
}

void sub_22B6B7344(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9244();
    }
  }

  else
  {
    v8 = MEMORY[0x277CC1E48];
    v9 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22B6B74BC;
    v17[3] = &unk_278707F20;
    v10 = v9;
    v11 = *(a1 + 72);
    v18 = v10;
    v22 = v11;
    v19 = v5;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *&v14 = *(a1 + 56);
    *(&v14 + 1) = *(a1 + 64);
    *&v15 = v12;
    *(&v15 + 1) = v13;
    v20 = v15;
    v21 = v14;
    [v8 getAppLinkWithURL:v10 completionHandler:v17];

    v16 = v18;
  }
}

void sub_22B6B74BC(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v28 = a3;
  if (!v5 || v28)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D92B8(a1);
    }
  }

  v7 = [v5 targetApplicationRecord];
  v8 = [v7 bundleIdentifier];

  if (![v8 length])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D932C();
    }
  }

  if ([v8 isEqualToString:@"com.apple.CloudKit.ShareBear"])
  {
    v27 = objc_alloc_init(MEMORY[0x277D1AC78]);
    [v27 bundleIDsForCollaborationURL:*(a1 + 32)];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v10 = v30 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = *v30;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v14 allowPlaceholder:0 error:0];
          if (v15)
          {
            v16 = v14;

            v8 = v16;
            goto LABEL_21;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    if ([v8 isEqualToString:@"com.apple.CloudKit.ShareBear"])
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 32);
          *buf = 138412290;
          v34 = v18;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Could not find an app record for the notice URL: %@", buf, 0xCu);
        }
      }

      v19 = [v10 firstObject];

      v8 = v19;
    }
  }

  v20 = MEMORY[0x277D1A940];
  v21 = *(a1 + 80);
  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) title];
  v24 = [*(a1 + 40) contentType];
  v25 = [v20 metadataWithType:v21 bundleIdentifier:v8 contentURL:v22 contentTitle:v23 contentType:v24 messageGUID:0];

  v26 = [MEMORY[0x277D1A938] noticeWithGUIDString:*(a1 + 48) sender:*(a1 + 56) metadata:v25 date:*(a1 + 64) dateViewed:0];
  [*(a1 + 72) _processNotice:v26];
}

void sub_22B6B78E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6B7984;
  v5[3] = &unk_278702FA0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void sub_22B6B7A64(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6B7B00;
  v5[3] = &unk_278702FA0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void sub_22B6B7DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B7E9C;
  block[3] = &unk_2787051F0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_22B6B7E9C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObject:*(a1 + 40)];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 56) objectForKeyedSubscript:{v7, v11}];

        v9 = *(a1 + 56);
        if (v8)
        {
          v10 = [*(a1 + 56) objectForKeyedSubscript:v7];
          [v10 addObject:*(a1 + 40)];
        }

        else
        {
          v10 = [MEMORY[0x277CBEB58] setWithObject:*(a1 + 40)];
          [v9 setValue:v10 forKey:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_22B6B8018(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] highlightURLs];
  v3 = [v2 mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObject:{*(*(&v15 + 1) + 8 * v8++), v15}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v9 = [v3 allObjects];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [a1[4] noticeStore];
    v12 = [v3 allObjects];
    [v11 deleteNoticesForURLs:v12];
  }

  v13 = [a1[5] copy];
  [a1[4] setHighlightURLs:v13];

  v14 = [a1[6] copy];
  [a1[4] setHighlightURLsForChatGUID:v14];

  [a1[4] setHasPopulatedHighlightTracking:1];
}

void sub_22B6B8594(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] collaborationNoticeDispatcherQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6B8670;
  block[3] = &unk_2787038F8;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_22B6B8670(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) addObjectsFromArray:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_22B6B86B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) allObjects];
  [v1 broadcastNoticesDidChangeForChatGUIDs:v2];
}

void sub_22B6B8A64(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) broadcastNoticesDidChangeForChatGUIDs:a2];
  v3 = [*(a1 + 32) noticeDispatcher];
  [v3 reflectDismissalForNoticeGUIDs:*(a1 + 40)];
}

void sub_22B6B8BB4(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] array];
  if (a2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [*(a1 + 32) attributions];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) conversationIdentifier];
          v11 = v10;
          if (v10)
          {
            if (![v10 length])
            {
              v12 = IMLogHandleForCategory();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D94D4();
              }

              goto LABEL_18;
            }

            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D9540();
    }
  }

LABEL_18:

  (*(*(a1 + 40) + 16))();
}

void sub_22B6B9048(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D95A8(a1);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D1AC78]);
    v9 = [a1[5] highlightCenter];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B6B919C;
    v11[3] = &unk_278707FE8;
    v12 = a1[6];
    v13 = a1[7];
    [v8 fetchAttributionsForHighlight:v9 highlight:v5 completionBlock:v11];
  }
}

void sub_22B6B919C(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 attributions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) conversationIdentifier];
        v9 = v8;
        if (v8)
        {
          if (![v8 length])
          {
            v10 = IMLogHandleForCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_22B7D94D4();
            }

            goto LABEL_15;
          }

          [*(a1 + 32) addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) copy];
  (*(v11 + 16))(v11, v12);
}

void sub_22B6B99E0(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v7 localizedDescription];
        *buf = 138412546;
        v21 = v5;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Could not get collaborationHighlight: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D1AC78]);
    v9 = [*(a1 + 32) highlightCenter];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B6B9BCC;
    v14[3] = &unk_278708088;
    v10 = *(a1 + 40);
    v19 = *(a1 + 64);
    v11 = *(a1 + 32);
    v15 = v10;
    v16 = v11;
    v17 = v5;
    v18 = *(a1 + 48);
    [v8 fetchAttributionsForHighlight:v9 highlight:v17 completionBlock:v14];
  }
}

void sub_22B6B9BCC(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [v3 attributions];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = *v32;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v32 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v31 + 1) + 8 * v7);
      if ([v8 isGroupConversation])
      {
        v9 = [*(a1 + 32) guid];
        v10 = [v8 conversationIdentifier];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    v5 = [v8 uniqueIdentifier];
    v12 = [v8 collaborationMetadata];
    v13 = [v12 containerSetupInfo];

    if (v13)
    {
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v5;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "containerSetupInfo is nil for messageGUID: %@", buf, 0xCu);
      }
    }
  }

LABEL_16:
  v13 = 0;
LABEL_17:

  if (*(a1 + 72) == 8 && ([*(a1 + 40) _highlightEligibleForSuggestAddingUser:*(a1 + 48)] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v36) = 90;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Collaboration highlight is older than %d days, ineligible for add notice.", buf, 8u);
      }
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22B6B9F30;
    v24[3] = &unk_278708060;
    v24[4] = v16;
    v17 = v13;
    v18 = *(a1 + 72);
    v25 = v17;
    v30 = v18;
    v23 = *(a1 + 32);
    v19 = v23.i64[0];
    v26 = vextq_s8(v23, v23, 8uLL);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v27 = v20;
    v28 = v21;
    v29 = v5;
    [v15 _isShareBearURL:v16 completionHandler:v24];
  }
}

void sub_22B6B9F30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "CloudKit/iCloud Drive collaboration", buf, 2u);
      }
    }

    v4 = MEMORY[0x231897B40](@"CSCloudSharing", @"CloudSharing");
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22B6BA128;
    v13[3] = &unk_278708038;
    v18 = *(a1 + 88);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v13[4] = v5;
    v13[5] = v7;
    v14 = v8;
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    [v4 ckMetadataFromShareURL:v5 containerSetupInfo:v6 completionHandler:v13];
  }

  else
  {
    [*(a1 + 48) _generateParticipantChangeNoticesForChat:*(a1 + 56) highlight:*(a1 + 64) participant:*(a1 + 72) noticeType:*(a1 + 88) checkedPrivileges:0 messageGUID:*(a1 + 80)];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "3rd party collaboration", buf, 2u);
      }
    }
  }
}

void sub_22B6BA128(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D961C();
    }

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Checking permissions for URL: %@", &v17, 0xCu);
    }
  }

  v10 = [v5 share];
  if ([v10 publicPermission] == 2)
  {
  }

  else
  {
    v12 = [v5 share];
    v13 = [v12 publicPermission] == 3;

    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Public share, show public sharing banner", &v17, 2u);
    }
  }

  if (*(a1 + 80) == 9)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not displaying remove banner for public sharing", &v17, 2u);
      }

LABEL_21:

      goto LABEL_29;
    }

    goto LABEL_29;
  }

LABEL_22:
  if ([v5 participantRole] != 1 && objc_msgSend(v5, "participantRole") != 2)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Does not have admin rights to add/remove from the share", &v17, 2u);
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Has admin rights to add/remove from the share", &v17, 2u);
    }
  }

  [*(a1 + 40) _generateParticipantChangeNoticesForChat:*(a1 + 48) highlight:*(a1 + 56) participant:*(a1 + 64) noticeType:*(a1 + 80) checkedPrivileges:1 messageGUID:*(a1 + 72)];
LABEL_29:
}

void sub_22B6BA660(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v45 = v4;
  v46 = a3;
  if (v46)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) URL];
        *buf = 138412546;
        v49 = v6;
        v50 = 2112;
        v51 = v46;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Could not get appLink from url: %@ with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = [v4 targetApplicationRecord];
    v44 = [v7 bundleIdentifier];

    v8 = v44;
    if (![v44 length])
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9688(a1);
      }

      v8 = v44;
    }

    if ([v8 isEqualToString:@"com.apple.CloudKit.ShareBear"])
    {
      v10 = [MEMORY[0x277D1AC40] sharedManager];
      v11 = [*(a1 + 32) URL];
      v12 = [v10 lsAppRecordForShareBearURL:v11];

      if (v12)
      {
        v13 = [v12 bundleIdentifier];
        v14 = [v13 length] == 0;

        if (!v14)
        {
          v15 = [v12 bundleIdentifier];

          v44 = v15;
        }
      }
    }

    v16 = objc_alloc(MEMORY[0x277CBEB98]);
    v17 = [*(a1 + 40) participantHandles];
    v41 = [v16 initWithArray:v17];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v49 = v44;
        v50 = 2112;
        v51 = v41;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Bundle identifier for notice: %@ with participants: %@", buf, 0x16u);
      }
    }

    v42 = MEMORY[0x277D1A940];
    v19 = *(a1 + 72);
    v20 = [*(a1 + 32) URL];
    v21 = [*(a1 + 32) title];
    v22 = [*(a1 + 32) contentType];
    v23 = *(a1 + 48);
    v24 = MEMORY[0x277CBEB98];
    v25 = [*(a1 + 40) guid];
    v26 = [v24 setWithObject:v25];
    v43 = [v42 metadataWithType:v19 bundleIdentifier:v44 contentURL:v20 contentTitle:v21 contentType:v22 messageGUID:v23 targetChatGUIDs:v26];

    if (*(a1 + 72) == 8)
    {
      v27 = @"add";
    }

    else
    {
      v27 = @"remove";
    }

    v28 = v27;
    v29 = MEMORY[0x277CCACA8];
    v30 = [*(a1 + 56) ID];
    v31 = [*(a1 + 40) groupID];
    v32 = [*(a1 + 32) URL];
    v33 = [v29 stringWithFormat:@"%@:%@/%@/%@", v28, v30, v31, v32];

    v34 = [v33 dataUsingEncoding:4];
    v35 = IMSharedHelperMD5OfData();

    v36 = MEMORY[0x277D1A938];
    v37 = [*(a1 + 56) ID];
    v38 = [MEMORY[0x277CBEAA8] date];
    v39 = [v36 noticeWithGUIDString:v35 sender:v37 metadata:v43 date:v38 dateViewed:0];

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v49 = v39;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Sending notice to process: %@", buf, 0xCu);
      }
    }

    [*(a1 + 64) _processNotice:v39];
  }
}

void sub_22B6BAF58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D92B8(a1);
    }
  }

  v9 = [v5 targetApplicationRecord];
  v10 = [v9 bundleIdentifier];

  LODWORD(v9) = [v10 isEqualToString:@"com.apple.CloudKit.ShareBear"];
  v11 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v13 = "ShareBear identifier: CloudKit or iCloud Drive app";
        v14 = &v16;
LABEL_13:
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, v13, v14, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v13 = "Share URL is coming from a 3rd party app";
      v14 = &v15;
      goto LABEL_13;
    }

LABEL_14:
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

IMDStickerRegistry *sub_22B6BB134()
{
  result = objc_alloc_init(IMDStickerRegistry);
  qword_281421060 = result;
  return result;
}

uint64_t sub_22B6BB904(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a5 && [a2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = a1[4];
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = [a2 objectAtIndexedSubscript:0];
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received transcoded output from balloon bundle id %@ path %@", &v12, 0x16u);
      }
    }

    [objc_msgSend(a2 objectAtIndexedSubscript:{0), "path"}];
    return (*(a1[6] + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = a4;
        v14 = 2112;
        v15 = a2;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "IMDStickerRegistry. Failed retrieving sticker me-sticker with error %@, outputURLS %@", &v12, 0x16u);
      }
    }

    return (*(a1[6] + 16))();
  }
}

id SMSSafeMimeTypeForMimeType(void *a1)
{
  v1 = qword_27D8D0088;
  v2 = a1;
  if (v1 != -1)
  {
    sub_22B7D9730();
  }

  v3 = [v2 lowercaseString];

  if ([v3 length])
  {
    v4 = [qword_27D8D0080 objectForKey:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_22B6BBB84()
{
  qword_27D8D0080 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"text/x-vcalendar", @"text/x-vcalendar", @"text/vcalendar", @"text/x-vcalendar", @"text/x-calendar", @"text/x-vcalendar", @"text/calendar", @"text/x-vcard", @"text/x-vlocation", @"text/x-vcard", @"text/x-location", @"text/x-vcard", @"text/x-vcard", @"text/x-vcard", @"text/vcard", @"text/plain", @"text/plain", @"image/jpeg", @"image/jpg", @"image/x-bmp", @"image/bmp", @"image/x-bmp", @"image/x-bmp", @"audio/x-aac", @"audio/x-aac", @"audio/x-aac", @"audio/aac", @"video/3gpp", @"video/3gp", @"video/3gpp", @"video/3gpp", 0}];

  return MEMORY[0x2821F96F8]();
}

id CreateSMILStringForMessageParts(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v28 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (qword_27D8D0098 != -1)
  {
    sub_22B7D9744();
  }

  [v28 appendString:qword_27D8D0090];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = MarcoLoggingStringForMessageData();
      *buf = 138412290;
      v35 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Generating SMIL for pieces: %@", buf, 0xCu);
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v1;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v4)
  {

    goto LABEL_34;
  }

  v27 = 0;
  v5 = 0;
  v6 = 1;
  v7 = *v30;
  do
  {
    v8 = 0;
    do
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      v10 = [v9 objectForKey:@"Type"];
      v11 = SMSSafeMimeTypeForMimeType(v10);

      v12 = [v9 objectForKey:@"Path"];
      v13 = [v12 lastPathComponent];

      v14 = [v9 objectForKey:@"Tag"];
      v15 = [v14 isEqualToString:@"text"];
      v6 |= v5;
      if (v15)
      {
        v16 = 0;
        v17 = @"Text";
      }

      else
      {
        if ([v11 isEqualToString:@"vcard"])
        {
          goto LABEL_27;
        }

        if ([v14 isEqualToString:@"img"])
        {
          v16 = 0;
        }

        else
        {
          v18 = [v14 isEqualToString:@"video"];
          v19 = [v9 objectForKey:@"Duration"];
          v16 = [v19 intValue];

          if ((v18 & 1) == 0)
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ src=%@/>\n", v14, v13];
LABEL_20:
            if (v27)
            {
              [v28 appendString:@"</par>\n"];
            }

            if (v16)
            {
              v21 = v16;
            }

            else
            {
              v21 = 10;
            }

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"<par dur=%ds>\n", v21];
            [v28 appendString:v22];

            v27 = 1;
            goto LABEL_26;
          }
        }

        v6 = 1;
        v17 = @"Image";
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ src=%@ region=%@/>\n", v14, v13, v17];
      if (v6)
      {
        goto LABEL_20;
      }

LABEL_26:
      [v28 appendString:v20];

      v6 = 0;
      v5 = v15;
LABEL_27:

      ++v8;
    }

    while (v4 != v8);
    v23 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v4 = v23;
  }

  while (v23);

  if (v27)
  {
    [v28 appendString:@"</par>\n"];
  }

LABEL_34:
  if (qword_27D8D00A8 != -1)
  {
    sub_22B7D9758();
  }

  [v28 appendString:qword_27D8D00A0];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v28;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "proposed smil: %@", buf, 0xCu);
    }
  }

  return v28;
}

void sub_22B6BC130()
{
  v0 = qword_27D8D0090;
  qword_27D8D0090 = @"<smil>\n<head>\n<layout>\n <root-layout/>\n<region id=Text top=70% left=0% height=30% width=100% fit=scroll/>\n<region id=Image top=0% left=0% height=70% width=100% fit=meet/>\n</layout>\n</head>\n<body>\n";
}

void sub_22B6BC148()
{
  v0 = qword_27D8D00A0;
  qword_27D8D00A0 = @"</body>\n</smil>\n";
}

uint64_t sub_22B6BC1A4()
{
  qword_281421068 = objc_alloc_init(IMDRecentsController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6BC488(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (sub_22B6BC520(a3))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

BOOL sub_22B6BC520(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 timeIntervalSinceNow];
    v4 = v3 < 0.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_22B6BC56C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (sub_22B6BC520(a3))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

id sub_22B6BCB90(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];

  return v2;
}

id sub_22B6BCBE8(void *a1)
{
  v1 = [a1 _dataForKey:?];
  v2 = JWDecodeDictionary();

  return v2;
}

id sub_22B6BCC38(void *a1)
{
  v1 = [a1 _arrayForKey:?];
  v2 = [v1 __imArrayByApplyingBlock:&unk_283F1B228];

  return v2;
}

id sub_22B6BCC94(void *a1)
{
  v1 = [a1 _assetForKey:?];
  v2 = [v1 fileURL];

  return v2;
}

void sub_22B6BD1AC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6BD160);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B6BD9A4()
{
  qword_281421070 = objc_alloc_init(IMDCKUpdateSyncController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6BDB74(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZoneManager];
  [v2 deleteUpdateZone];

  v3 = *(a1 + 32);

  return [v3 clearLocalSyncState:3];
}

uint64_t sub_22B6BDD34(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting the sync token to nil", v5, 2u);
    }
  }

  return [*(a1 + 32) setLatestSyncToken:0];
}

void sub_22B6BE410(uint64_t a1)
{
  v2 = +[IMDChatRegistry sharedInstance];
  [v2 handleMessageUpdate:*(a1 + 32)];
}

void sub_22B6BEC90(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Attempting to create update zone", buf, 2u);
    }
  }

  if ([*(a1 + 32) _zoneCreated])
  {
    v4 = 0;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "** Failed to create update zone **", v8, 2u);
      }
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:IMDCKUpdateSyncControllerErrorDomain code:1 userInfo:0];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
}

void sub_22B6BEF9C(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Error creating update zone %@", &v7, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22B6BF214(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2 && (v5 = [IMDCKUpdateSyncController stepAfter:*(a1 + 56)]) != 0)
  {
    [*(a1 + 32) _writeUpdatesWithType:*(a1 + 64) updateStep:v5 activity:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, a2, v7);
    }
  }
}

void sub_22B6BF550(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6BF618;
  v10[3] = &unk_278708220;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void sub_22B6BF630(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6BF6FC;
  v9[3] = &unk_278708248;
  v6 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v6;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t sub_22B6BF6FC(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) count];
  [*(a1 + 32) _numberOfRecordsToFetchPerBatch];
  v2 = *(a1 + 32);

  return MEMORY[0x2821F9670](v2, sel__onWriteT1Complete_error_shouldWriteMore_activity_completion_);
}

void sub_22B6BFF30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B6BFFF8;
  v10[3] = &unk_278708220;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void sub_22B6C0010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6C00DC;
  v9[3] = &unk_278708248;
  v6 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v6;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t sub_22B6C00DC(uint64_t a1)
{
  [*(*(*(a1 + 64) + 8) + 40) count];
  [*(a1 + 32) _numberOfRecordsToFetchPerBatch];
  v2 = *(a1 + 32);

  return MEMORY[0x2821F9670](v2, sel__onWriteT2Complete_error_shouldWriteMore_activity_completion_);
}

void sub_22B6C0F10(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 messagesPendingUpdateT1ToCloudKitWithLimit:{objc_msgSend(*(a1 + 32), "_numberOfRecordsToFetchPerBatch")}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v6 = *v26;
    *&v5 = 138412290;
    v23 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = MEMORY[0x277D1AA28];
        v10 = +[IMDRecordZoneManager sharedInstance];
        v11 = [v10 updateRecordZoneID];
        v12 = +[IMDCKRecordSaltManager sharedInstance];
        v13 = [v12 cachedSalt];
        v14 = [v9 createCKRecordForUpdateT1:v8 zoneID:v11 salt:v13];

        if (v14)
        {
          v15 = *(a1 + 40);
          v16 = [v8 objectForKey:@"ROWID"];
          v17 = [v14 recordID];
          v18 = [v17 recordName];
          [v15 setObject:v16 forKey:v18];

          [*(a1 + 48) addObject:v14];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v23;
              v30 = v8;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "**** T1 Update item [%@] could not be converted to CKRecord, marking it as clean and moving on.", buf, 0xCu);
            }
          }

          v20 = [v8 objectForKey:@"ROWID"];
          v21 = [v20 longLongValue];

          v22 = +[IMDMessageStore sharedInstance];
          [v22 markMessageAsCleanWithROWID:v21];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }
}

void sub_22B6C14FC(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 messagesPendingUpdateT2ToCloudKitWithLimit:{objc_msgSend(*(a1 + 32), "_numberOfRecordsToFetchPerBatch")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v4)
  {
    v6 = *v22;
    *&v5 = 138412290;
    v19 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = MEMORY[0x277D1AA28];
        v10 = +[IMDRecordZoneManager sharedInstance];
        v11 = [v10 updateRecordZoneID];
        v12 = +[IMDCKRecordSaltManager sharedInstance];
        v13 = [v12 cachedSalt];
        v14 = [v9 createCKRecordForUpdateT2:v8 zoneID:v11 salt:v13];

        if (v14)
        {
          v15 = *(a1 + 40);
          v16 = [v14 recordID];
          v17 = [v16 recordName];
          [v15 setObject:v8 forKey:v17];

          [*(a1 + 48) addObject:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = v19;
            v26 = v8;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "**** T2 Update item [%@] could not be converted to CKRecord.", buf, 0xCu);
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }
}

void sub_22B6C1BB0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (xpc_activity_get_state(v4) == 4)
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9824(v6);
      }
    }

    else
    {
      [a1 setXPCActivity:v5];
    }
  }
}

void sub_22B6C1DAC(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = IMDTelephonyServiceLogHandle(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v8)
    {
      v24 = *(a1 + 32);
      *buf = 138412802;
      v32 = v24;
      v33 = 1024;
      v34 = v6 == 0;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "BlastDoor finished processing SMS/MMS message with GUID (%@). Success = (%{BOOL}d), error = (%@).", buf, 0x1Cu);
    }

    v13 = [*(a1 + 48) objectForKey:IMDCTMessageDictionaryTypeKey];
    v23 = [*(a1 + 48) objectForKey:IMDCTMessageDictionarySenderKey];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@.smsdata", v13, *(a1 + 32)];
    v26 = [MEMORY[0x277D1AA18] writeMessagePayloadToTemporaryDirectory:*(a1 + 48) fileName:v25];
    [IMBlastdoor sendBlastDoorError:v6 guid:*(a1 + 32) messageTypeString:v13 senderURI:v23 senderToken:0 messageContext:0 payloadAttachmentURL:v26];
    v27 = *(a1 + 64);
    if (v27)
    {
      (*(v27 + 16))(v27, 0, 0, 0);
    }

    goto LABEL_11;
  }

  if (v8)
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v32 = v9;
    v33 = 1024;
    v34 = v6 == 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "BlastDoor finished processing SMS/MMS message with GUID (%@). Success = (%{BOOL}d).", buf, 0x12u);
  }

  MEMORY[0x231897B40](@"BlastDoorSMSMessage", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = v5;
    v13 = [v10 _messageDictionaryToRelayWithIncomingMessageDictionary:v11 smsMessage:v12];
    v14 = [*(a1 + 40) relayController];
    v15 = [v12 GUID];
    v16 = [*(a1 + 40) service];
    v17 = [v16 internalName];
    [v14 _prepareSMSRelayBlockForMessageDictionary:v13 messageGUID:v15 serviceName:v17];

    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = *(a1 + 72);
    v21 = [v18 service];
    v22 = [v21 internalName];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B6C213C;
    v28[3] = &unk_278708270;
    v29 = *(a1 + 32);
    v30 = *(a1 + 64);
    [v18 _releasePendingMessagesAndProcessReceivedSMSMessage:v12 storageContext:v19 receivedViaRelay:v20 serviceName:v22 completionBlock:v28];

    v23 = v29;
LABEL_11:
  }
}

void sub_22B6C213C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = IMDTelephonyServiceLogHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "_processReceivedSMSMessage for original GUID (%@) parsed GUID (%@) returned (%{BOOL}d).", &v11, 0x1Cu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v7, a4);
  }
}

void sub_22B6C77B4(uint64_t a1, char a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = [*(a1 + 48) accountID];
  v12 = [*(a1 + 56) sender];
  [v10 assignTransfer:v9 toAccount:v11 otherPerson:v12];

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = [v7 path];
  [v13 acceptTransfer:v14 path:v15];

  v16 = +[IMDFileTransferCenter sharedInstance];
  v17 = [v16 transferForGUID:*(a1 + 40)];
  v18 = *(*(a1 + 72) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  [*(a1 + 64) addObject:*(*(*(a1 + 72) + 8) + 40)];
  if (a2)
  {
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [v7 path];
    v22 = [v20 fileExistsAtPath:v21];

    if (v22)
    {
      v23 = *(*(*(a1 + 72) + 8) + 40);
      if (v23)
      {
        v24 = IMDTelephonyServiceLogHandle([v23 _setLocalURL:v7]);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v36 = 138412290;
          v37 = v7;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Set transfer local url to: %@", &v36, 0xCu);
        }

        v26 = IMDTelephonyServiceLogHandle(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(*(*(a1 + 72) + 8) + 40);
          v36 = 138412290;
          v37 = v27;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "  => Start finalizing file transfer: %@", &v36, 0xCu);
        }

        [*(a1 + 32) startFinalizingTransfer:*(a1 + 40)];
        goto LABEL_29;
      }

      [*(a1 + 32) failTransfer:*(a1 + 40) error:0];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 40);
        v36 = 138412290;
        v37 = v35;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "No file transfer generated for guid: %@", &v36, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) failTransfer:*(a1 + 40) error:0];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 40);
        v36 = 138412290;
        v37 = v34;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", &v36, 0xCu);
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v28 = [v8 domain];
  if (![v28 isEqualToString:*MEMORY[0x277D19E58]])
  {

    goto LABEL_17;
  }

  v29 = [v8 code];

  if (v29 != 28)
  {
LABEL_17:
    [*(a1 + 32) failTransfer:*(a1 + 40) error:v8];
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = *(a1 + 40);
      v36 = 138412290;
      v37 = v33;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Could not locate file for transfer: %@", &v36, 0xCu);
    }

    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = *(a1 + 40);
      v36 = 138412290;
      v37 = v31;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Transfer rejected: %@", &v36, 0xCu);
    }
  }

  [*(a1 + 32) rejectTransfer:*(a1 + 40)];
LABEL_29:
}

void sub_22B6C7C58(void *a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "MMS safe render generation complete.", buf, 2u);
    }
  }

  if (v8 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      *buf = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Error decontaminating MMS transfer: %@ error: %@", buf, 0x16u);
    }
  }

  if (a2 && ([a1[5] isEqual:v7] & 1) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1[5];
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Generating safe render succeeded, but still using the original path since we cannot transcode the entire asset: %@", buf, 0xCu);
      }
    }

    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = a1[5];
    v21 = 0;
    v17 = [v15 removeItemAtURL:v16 error:&v21];
    v14 = v21;

    if ((v17 & 1) == 0 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1[5];
        *buf = 138412546;
        v23 = v19;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Error removing MMS transfer: %@ error: %@", buf, 0x16u);
      }
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19E58] code:28 userInfo:0];

    v8 = v20;
  }

  (*(a1[6] + 16))();
}

void sub_22B6C7F80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = *(a1 + 32);
  v16 = a4;
  [v15 setCategory:a2];
  [*(a1 + 32) setSubCategory:a3];
  [*(a1 + 32) setSpamExtensionName:v16];

  v17 = [*(a1 + 40) findChatAndLinkMessage:*(*(*(a1 + 56) + 8) + 40) context:*(a1 + 32)];
  v18 = [v17 chatIdentifier];
  v19 = [MEMORY[0x277D1AA78] sharedInstance];
  [v19 sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:v18];

  v20 = [*(a1 + 40) tapbackInterpreter];
  v21 = [v20 interpretMessageItem:*(*(*(a1 + 56) + 8) + 40) inChat:v17];
  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  if (*(a1 + 64) >= 1)
  {
    v25 = IMDTelephonyServiceLogHandle(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 64);
      *buf = 67109120;
      v50 = v26;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, " => This is a replace message for ID: %d", buf, 8u);
    }

    [*(a1 + 40) didReceiveReplaceMessageID:*(a1 + 64) forChat:v18 style:{objc_msgSend(*(a1 + 32), "style")}];
  }

  v27 = [*(a1 + 32) senderUnformatted];

  if (v27)
  {
    v28 = [*(a1 + 32) senderUnformatted];
    [*(*(*(a1 + 56) + 8) + 40) setOriginalUnformattedID:v28];
  }

  v29 = [*(a1 + 32) displayName];

  if (v17 && v29)
  {
    v30 = [*(a1 + 32) displayName];
    [v17 setDisplayName:v30];
  }

  if (v13)
  {
    [*(*(*(a1 + 56) + 8) + 40) setSpamModelMetadata:v13];
  }

  if (v14)
  {
    v31 = [*(a1 + 40) filteringController];
    [v31 recordFilteringMetricsForMessageItem:*(*(*(a1 + 56) + 8) + 40) filteredToChat:v17 filterExtensionMetadata:v14];
  }

  if (a2 == 2)
  {
    [v17 setSpamDetectionSource:a7];
    [v17 setSpamDetectedMessage:*(a1 + 48)];
    if ((*(a1 + 68) & 1) == 0)
    {
      v32 = +[IMDSpamFilteringHelper sharedHelper];
      [v32 presentDebugUI];

      v33 = +[IMDSpamFilteringHelper sharedHelper];
      [v33 recordJunkMetricsForSpamDetectionSource:a7 service:*MEMORY[0x277D1A610]];
    }
  }

  v34 = +[IMDSpamCheckRequeryTracker sharedTracker];
  v35 = [*(*(*(a1 + 56) + 8) + 40) guid];
  [v34 startTrackingMessageGUID:v35 chat:v17];

  [*(a1 + 40) didReceiveMessage:*(*(*(a1 + 56) + 8) + 40) forChat:v18 style:objc_msgSend(*(a1 + 32) fromIDSID:{"style"), 0}];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = sub_22B6C83E4;
  v44 = &unk_278708360;
  v36 = *(a1 + 56);
  v45 = *(a1 + 40);
  v48 = v36;
  v37 = v18;
  v46 = v37;
  v47 = *(a1 + 32);
  [v17 shouldSatelliteRelayIncomingSMSMessagesWithCompletion:&v41];
  LOBYTE(v35) = *(a1 + 68);
  v38 = [*(a1 + 40) relayController];
  v39 = v38;
  v40 = *(a1 + 48);
  if (v35)
  {
    [v38 _clearSMSRelayMapForMessageWithGUID:v40];
  }

  else
  {
    [v38 _executeSMSRelayBlockForMessageWithGUID:v40 category:objc_msgSend(v17 subCategory:{"isFiltered") & 0xF, objc_msgSend(v17, "isFiltered") >> 4}];
  }
}

void sub_22B6C83E4(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6C84A4;
    block[3] = &unk_278708338;
    v3 = *(a1 + 56);
    v6 = *(a1 + 32);
    v4 = *(&v6 + 1);
    *&v5 = *(a1 + 48);
    *(&v5 + 1) = v3;
    v8 = v6;
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_22B6C84A4(uint64_t a1)
{
  v2 = [*(a1 + 32) networkMonitor];
  v3 = [v2 immediatelyReachable];

  if (v3)
  {
    v4 = +[IMDAccountController sharedInstance];
    v5 = [v4 anySessionForServiceName:*MEMORY[0x277D1A628]];

    [v5 sendIncomingRelayMessage:*(*(*(a1 + 56) + 8) + 40) toChat:*(a1 + 40) style:{objc_msgSend(*(a1 + 48), "style")}];
  }
}

void sub_22B6CA74C(IMDServiceSession *self, SEL a2, id a3, id a4, id a5, unsigned __int8 a6, id a7)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "/*-------calling into downloadTranslationAssetsForLanguageCodes from legacy service session, please file a radar-------*/", v15, 2u);
    }
  }
}

uint64_t sub_22B6CC440(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Initial sync device Not writing up messages", v6, 2u);
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 1, 0);
  }

  return [*(a1 + 32) _noteSyncEnded];
}

void sub_22B6CD1A0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v6 = xpc_dictionary_get_value(v3, "UserInfo");
    if (v6)
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v7 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 138412802;
        *&v10[4] = objc_opt_class();
        *&v10[12] = 2112;
        *&v10[14] = v5;
        *&v10[22] = 2112;
        v11 = v7;
        v9 = *&v10[4];
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@ received event with name %@ and user info %@.", v10, 0x20u);
      }
    }

    [*(a1 + 32) didReceiveEventWithName:v5 userInfo:{v7, *v10, *&v10[8], v11}];
  }
}

void sub_22B6CD40C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void sub_22B6CD524(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_22B6CD6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6CD6BC(uint64_t a1)
{
  v5 = [*(a1 + 32) delegateToQueue];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_22B6CD800(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [*(a1 + 32) delegateToQueue];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = sub_22B6CD9B4;
          v12[3] = &unk_278705748;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v12[4] = v7;
          v12[5] = v10;
          v13 = v11;
          v14 = *(a1 + 48);
          dispatch_async(v9, v12);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

uint64_t sub_22B6CDAE0()
{
  qword_281420ED0 = objc_alloc_init(IMDOffGridAvailabilityTracker);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6CE020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTracker];
}

void sub_22B6CE238(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 handle];
  v5 = [v3 expirationDate];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6CE304;
  v8[3] = &unk_278707AA8;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [v7 isOffGridModeWithCompletion:v8];
}

void sub_22B6CE304(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6CE3B0;
  block[3] = &unk_278706650;
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B6CE3B0(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) ID];
      v5 = v4;
      v6 = @"NO";
      if (*(a1 + 48))
      {
        v6 = @"YES";
      }

      v19 = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Handle %@ is off grid %@", &v19, 0x16u);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v7 = +[IMDAccountController sharedInstance];
    v8 = [v7 anySessionForServiceName:*MEMORY[0x277D1A620]];

    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v11 = *(v9 + 16);
    v12 = [v10 ID];
    [v8 didReceiveOffGridStatus:v11 & 1 forID:v12 messageGUID:0 account:0];

    v13 = +[IMDOffGridAvailabilityTracker sharedTracker];
    [v13 stopTrackingHandle:*v9];
  }

  else
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v14 earlierDate:*(a1 + 40)];
    v16 = v15 == *(a1 + 40);

    if (!v16)
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [*(a1 + 32) ID];
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Handle %@ is expiring from tracking", &v19, 0xCu);
      }
    }

    v8 = +[IMDOffGridAvailabilityTracker sharedTracker];
    [v8 stopTrackingHandle:*(a1 + 32)];
  }
}

void sub_22B6CED44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (!v7)
        {
          v10 = @"YES";
        }

        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "BlastDoor finished processing SMSFIlteringSettingsMessage. Success = (%@).", &v13, 0xCu);
      }
    }

    MEMORY[0x231897B40](@"BlastDoorSMSFilteringSettingsMessage", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _processReceivedSMSFilteringSettingsMessage:v6 deviceID:*(a1 + 40)];
    }
  }

  else if (v8)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (!v7)
      {
        v12 = @"YES";
      }

      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "BlastDoor finished processing SMSFilteringSettingsMessage. Success = (%@), error = (%@).", &v13, 0x16u);
    }
  }
}

void sub_22B6CF118()
{
  v0 = [IMDFilteringController alloc];
  v6 = +[IMDIdentityLookupDecisioningManager sharedManager];
  v1 = +[IMDTrustKitDecisioningManager sharedManager];
  v2 = +[IMDCommunicationTrustManager sharedManager];
  v3 = +[IMDRelayPushHandler sharedInstance];
  v4 = [(IMDFilteringController *)v0 initWithIdentityLookupDecisioningManager:v6 trustKitDecisioningManager:v1 communicationTrustManager:v2 relayPushHandler:v3];
  v5 = qword_281420F40;
  qword_281420F40 = v4;
}

void sub_22B6CF410()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"FirstPartyTextMessageFilterAvailableChangedNotification", 0, 0, 1u);
}

void sub_22B6CF44C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a2;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "handleThirdPartyFilterUnregistered", buf, 2u);
    }
  }

  v13 = v8;
  v14 = v9;
  v11 = v9;
  v12 = v8;
  im_dispatch_after();

  objc_autoreleasePoolPop(v7);
}

void sub_22B6CF588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a2;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "handleThirdPartyFilterUnregistered", buf, 2u);
    }
  }

  v13 = v8;
  v14 = v9;
  v11 = v9;
  v12 = v8;
  im_dispatch_after();

  objc_autoreleasePoolPop(v7);
}

void sub_22B6CF6C4(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "handleChangeOfFilterParamsStatus", v6, 2u);
    }
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:v4 selector:sel__checkAndUpdateFilterParamsForFilterExtension object:0];
  [v4 performSelector:sel__checkAndUpdateFilterParamsForFilterExtension withObject:0 afterDelay:0.0];

  objc_autoreleasePoolPop(v3);
}

void sub_22B6CF7B0(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "handleSIMSubscriptionsChanged", buf, 2u);
    }
  }

  v7 = v4;
  v6 = v4;
  im_dispatch_after();

  objc_autoreleasePoolPop(v3);
}

void sub_22B6D0158(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6CFFC8);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D0B94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Performed spam extension capabilities query request for: %@ and received error: %@", buf, 0x16u);
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Spam extension query response received: %@, %@", buf, 0x16u);
    }
  }

LABEL_10:
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [MEMORY[0x277D1AB60] executeCompletionBlockForFilterParamsUpdate:v7 promo:v8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B6D0E1C;
    block[3] = &unk_278702FF0;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22B6D0EBC;
    v15[3] = &unk_2787038F8;
    v16 = v7;
    v13 = v8;
    v14 = *(a1 + 40);
    v17 = v13;
    v18 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

uint64_t sub_22B6D0E1C(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Performed spam extension capabilities query request. Relaying updated sms filter settings", v5, 2u);
    }
  }

  return [*(a1 + 32) _relaySMSFilteringSettingsForFilterState:1];
}

void sub_22B6D0EBC(void *a1)
{
  [MEMORY[0x277D1AB60] executeCompletionBlockForFilterParamsUpdate:a1[4] promo:a1[5]];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6D0F50;
  block[3] = &unk_278702FF0;
  block[4] = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B6D0F50(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Performed spam extension capabilities query request. Relaying updated sms filter settings", v5, 2u);
    }
  }

  return [*(a1 + 32) _relaySMSFilteringSettingsForFilterState:1];
}

void sub_22B6D15C4(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Performed spam extension query request for: %@ and received error: %@", buf, 0x16u);
      }
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D1A190]];

    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_33;
  }

  v13 = [v5 action];
  v11 = [MEMORY[0x277D1AB60] localizeSubAction:{objc_msgSend(v5, "subAction")}];
  if (v11)
  {
    if ([MEMORY[0x277D1AB60] isValidSubAction:v13 subAction:v11])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v34) = 0;
      if (*(a1 + 56) == 1)
      {
        LOBYTE(v34) = 1;
LABEL_17:
        _Block_object_dispose(buf, 8);
        goto LABEL_18;
      }

      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v14 = [MEMORY[0x277D1AB70] isValidActiveFilterAction:v13 subAction:v11];
        *(*&buf[8] + 24) = v14 & 1;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B6D1A80;
        block[3] = &unk_278708470;
        block[4] = buf;
        block[5] = v13;
        block[6] = v11;
        dispatch_sync(MEMORY[0x277D85CD0], block);
        if (*(*&buf[8] + 24))
        {
          goto LABEL_17;
        }
      }

      v11 = 0;
      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_18:
  if (*(a1 + 56) == 1)
  {
    v15 = [v5 error];
    v16 = v15;
    if (v15)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
      [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x277D1A190]];
    }

    v18 = [v5 version];
    if (v18)
    {
      [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277D1A1A0]];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138413058;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      v34 = v13;
      v35 = 2048;
      v36 = v11;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Performed spam extension query request on guid: %@ for: %@ and received response actionResponse: %ld, subActionResponse: %ld", buf, 0x2Au);
    }
  }

  if (v13 == 2)
  {
    if (*(a1 + 56))
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_33:
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22B6D1ABC;
  v25[3] = &unk_278708498;
  v24 = *(a1 + 40);
  v22 = v24.i64[0];
  v26 = vextq_s8(v24, v24, 8uLL);
  v27 = v7;
  v28 = v13;
  v31 = *(a1 + 57);
  v29 = v11;
  v30 = v12;
  v23 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v25);
}

void sub_22B6D1A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22B6D1A80(void *a1)
{
  result = [MEMORY[0x277D1AB70] isValidActiveFilterAction:a1[5] subAction:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_22B6D1E90(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    if ([*(a1 + 40) isEqualToString:*(a1 + 48)])
    {
      [*(a1 + 32) _disableSpamFilteringAndRelay];
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Spam filter state changed to None", v3, 2u);
        }
      }
    }
  }

  *(*(a1 + 32) + 8) = 0;
}

void sub_22B6D3BD4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6D3F34;
  aBlock[3] = &unk_2787084E8;
  v17 = *(a1 + 112);
  v4 = v3;
  v16 = v4;
  v5 = _Block_copy(aBlock);
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Device is iPad. Checking if we need to update filterCapbilities from relayed message", buf, 2u);
      }
    }

    if ([*(a1 + 32) length] && (v7 = *(a1 + 40)) != 0)
    {
      v8 = [v7 filterExtensionName];
      v9 = [*(a1 + 40) smsFilterCapabilitiesOptions];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          *buf = 138412802;
          v19 = v8;
          v20 = 2048;
          v21 = v9;
          v22 = 2112;
          v23 = v11;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received filterExtensionName: %@, smsFilterCapabilitiesOptions: %lu from deviceID:%@. Checking if we need to update filterCapabilities", buf, 0x20u);
        }
      }

      [*(a1 + 48) _checkAndUpdateSMSFilteringSettingsForDeviceID:*(a1 + 32) smsFilterCapabilitiesOptions:v9 filterExtensionName:v8];
    }

    else if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received invalid deviceID:%@. Not checking if we need to update filterCapabilities", buf, 0xCu);
      }
    }

    [*(a1 + 48) _categorizeRelayMessageWithCategory:*(a1 + 136) subCategory:*(a1 + 144) deviceID:*(a1 + 32) completion:v5];
  }

  else if ([*(a1 + 48) _shouldCheckChatForSMSSpam:*(a1 + 56) participants:*(a1 + 64) sender:*(a1 + 72) chat:*(a1 + 80) fallbackFilterCategory:*(*(a1 + 120) + 8) + 24 fallbackFilterSubCategory:*(*(a1 + 128) + 8) + 24])
  {
    **(a1 + 152) = 1;
    LOBYTE(v14) = *(a1 + 161);
    [*(a1 + 48) _smsSpamCheck:v5 withMessageBody:*(a1 + 88) withGuid:*(a1 + 96) sender:*(a1 + 72) receiverISOCountryCode:*(a1 + 104) receivedViaRelay:*(a1 + 160) containsOneTimeCode:v14];
  }

  else
  {
    (*(v5 + 2))(v5, *(*(*(a1 + 120) + 8) + 24), *(*(*(a1 + 128) + 8) + 24), 0, v4, 0, 0);
  }
}

void sub_22B6D3FA4(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B6D4084;
  v8[3] = &unk_278708560;
  v12 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v11 = *(a1 + 64);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t sub_22B6D4084(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 72);
  v4 = IMOSLoggingEnabled();
  if (v3 == 8)
  {
    if (v4)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "This sender is a contact, not asking for junk", &v13, 2u);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    return (*(*(a1 + 40) + 16))();
  }

  else if (v3 == 1)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) guid];
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "CTS marked chat as Junk: %@", &v13, 0xCu);
      }
    }

    [*(a1 + 32) setSpamDetectionSource:3];
    [*(a1 + 32) updateIsFiltered:2];
    *(*(*(a1 + 56) + 8) + 24) = 2;
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v4)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 72);
        v11 = [*(a1 + 32) guid];
        v13 = 134218242;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "CTS chat is %ld for chat: %@", &v13, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Calling Trust Kit next", &v13, 2u);
      }
    }

    return (*(*(a1 + 48) + 16))();
  }
}

void sub_22B6D4344(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D42B0);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D48CC(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = +[IMDMessageStore sharedInstance];
  v4 = [v3 messageWithGUID:v18];

  if (v4)
  {
    v5 = [v4 service];
    if ([v5 isEqualToString:*MEMORY[0x277D1A620]])
    {

LABEL_5:
      v10 = *(a1 + 32);
      v11 = [v4 service];
      v12 = [v10 valueForKey:v11];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x277CBEB18] array];
      }

      v15 = v14;

      [v15 addObject:v18];
      v16 = *(a1 + 32);
      v17 = [v4 service];
      [v16 setObject:v15 forKeyedSubscript:v17];

      goto LABEL_9;
    }

    v6 = +[IMDServiceController sharedController];
    v7 = [v4 service];
    v8 = [v6 serviceWithName:v7];
    v9 = [v8 supportsRelay];

    if (v9)
    {
      goto LABEL_5;
    }
  }

LABEL_9:
}

void sub_22B6D6704(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v28 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = *(a1 + 32);
  v24 = *(v23 + 200);
  if (v24 != v20)
  {
    *(v23 + 200) = 0;

    if ([v20 length])
    {
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v20];
      v26 = *(a1 + 32);
      v27 = *(v26 + 200);
      *(v26 + 200) = v25;
    }
  }

  [*(a1 + 32) _login_usernameAndPasswordReadyWithAccount:*(a1 + 40)];
}

void sub_22B6D6F38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D6DA8);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D6F88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, unsigned __int8 a10, char a11)
{
  v24 = a3;
  v13 = a7;
  v14 = *(a1 + 32);
  v15 = *(v14 + 120);
  *(v14 + 120) = 0;

  if (*(*(a1 + 32) + 140) == 1)
  {
    if (a9)
    {
      [*(a1 + 40) setLoginStatus:0 message:0];
      [*(a1 + 32) disallowReconnection];
    }

    else if ([v13 length] && objc_msgSend(v24, "length"))
    {
      if (([v24 isEqualToString:*(*(a1 + 32) + 112)] & 1) == 0)
      {
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v24, *MEMORY[0x277D19420], 0}];
        [*(a1 + 40) writeAccountDefaults:v16];
      }

      if (*(*(a1 + 32) + 200) != v13)
      {
        v17 = [v13 copy];
        v18 = *(a1 + 32);
        v19 = *(v18 + 200);
        *(v18 + 200) = v17;
      }

      v20 = +[IMDDaemonPropertyManager sharedManager];
      v21 = [MEMORY[0x277CCABB0] numberWithBool:a10];
      [v20 setValue:v21 ofPersistentProperty:@"RememberPassword"];

      *(*(a1 + 32) + 141) = 1;
      *(*(a1 + 32) + 141) = a10;
      [*(a1 + 32) _login_checkUsernameAndPasswordWithAccount:*(a1 + 40)];
    }

    else
    {
      if (a11)
      {
        v22 = [*(a1 + 32) broadcaster];
        v23 = [*(a1 + 40) accountID];
        [v22 showForgotPasswordNotificationForAccount:v23];
      }

      [*(a1 + 40) setLoginStatus:0 message:0];
      [*(a1 + 32) autoReconnectWithAccount:*(a1 + 40)];
    }
  }
}

void sub_22B6D7CF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D7CB0);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D94F8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D9444);
  }

  _Unwind_Resume(a1);
}

void sub_22B6D9B00(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6D9AE8);
  }

  _Unwind_Resume(a1);
}

id sub_22B6DC37C(uint64_t a1, void *a2)
{
  v2 = [a2 handleInfo];
  v3 = JWEncodeDictionary();

  return v3;
}

IMDHandle *sub_22B6DD5C8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [IMDHandle alloc];
  v4 = [v2 objectForKey:*MEMORY[0x277D193A8]];
  v5 = [v2 objectForKey:*MEMORY[0x277D193C0]];
  v6 = [v2 objectForKey:*MEMORY[0x277D193A0]];

  v7 = [(IMDHandle *)v3 initWithID:v4 unformattedID:v5 countryCode:v6 personCentricID:0];

  return v7;
}

void sub_22B6DD878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6DD898(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v6 = a1[5];
        v7 = 138412802;
        v8 = v5;
        v9 = 2112;
        v10 = v6;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to add sync chat slice with service %@ for chat with guid %@ error: %@", &v7, 0x20u);
      }
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_22B6DDB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B6DDB5C(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[4];
        v6 = a1[5];
        v7 = 138412802;
        v8 = v5;
        v9 = 2112;
        v10 = v6;
        v11 = 2112;
        v12 = v3;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to add service %@ to chat with guid %@ error: %@", &v7, 0x20u);
      }
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }
}

uint64_t sub_22B6DE3D0()
{
  qword_281421078 = objc_alloc_init(IMDBadgeUtilities);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B6DE778(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Rebuild unread message count", v5, 2u);
    }
  }

  return [a2 _rebuildUnreadMessageCount];
}

void sub_22B6DE9D0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v5 = IMOSLoggingEnabled();
  if (v4 == v3)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not updating badge for unread count change.", v10, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v9 = *(*(a1 + 32) + 24);
        v10[0] = 67109376;
        v10[1] = v9;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Unread count changed from %d to %d", v10, 0xEu);
      }
    }

    *(*(a1 + 32) + 24) = *(a1 + 40);
    [*(a1 + 32) _updateBadge];
  }
}

void *sub_22B6DEC68(void *result, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(result[4] + 32) != result[5])
  {
    v2 = result;
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = v2[5];
        v5 = *(v2[4] + 32);
        v8 = 134218240;
        v9 = v5;
        v10 = 2048;
        v11 = v4;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Failed message date changed from %lld to %lld", &v8, 0x16u);
      }
    }

    v7 = v2[4];
    v6 = (v2 + 4);
    [v7 _cacheFailureDate:v6[1]];
    [*v6 _compareLastFailureDateAndUpdateBadge:v6[1]];
    return [*v6 _stopSuppressingSound];
  }

  return result;
}

uint64_t sub_22B6DEEA0(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v3 = [*(a1 + 32) pendingSatelliteMessagesPerService];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 _updateBadge];
}

uint64_t sub_22B6DEF18(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 integerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_22B6DF064(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Notification Center post badge number with error: [%@]", &v4, 0xCu);
    }
  }
}

void sub_22B6DF2B8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Notification Center post badge string with error: [%@]", &v4, 0xCu);
    }
  }
}

void sub_22B6DF38C()
{
  v0 = CFPreferencesCopyAppValue(@"StoreDemoMode", @"com.apple.demo-settings");
  byte_2814212F0 = [v0 BOOLValue];
}

void sub_22B6DF4F8(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_22B6DF5E8, @"com.apple.IMSharedUtilities.IMUserLoginIntentChangedInternal", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, *(a1 + 32), sub_22B6DF5E8, @"__kIMDBadgeUtilitiesLoginStatusChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, *(a1 + 32), sub_22B6DF5E8, @"__kIMDBadgeUtilitiesOperationalAccountsChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6DF684;
  block[3] = &unk_278702FF0;
  block[4] = v5;
  dispatch_async(v6, block);
}

uint64_t sub_22B6DF5E8(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Unexpected log out dependent value changed", v5, 2u);
    }
  }

  return [a2 checkIfUnexpectedlyLoggedOut];
}

void *sub_22B6DF684(uint64_t a1)
{
  result = [*(a1 + 32) _checkIfUnexpectedlyLoggedOut];
  *(*(a1 + 32) + 18) = 1;
  return result;
}

void *sub_22B6DF6B8(uint64_t a1)
{
  result = [*(a1 + 32) _isUnexpectedlyLoggedOut];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_22B6DFD94(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [a1 remoteMembers];
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Filtering down participant list %@ to remove associated members", &v8, 0xCu);
    }
  }

  v5 = [a1 remoteMembers];
  v6 = [v5 __imSetByApplyingBlock:&unk_283F1B3C8];

  return v6;
}

id sub_22B6DFEBC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 association];
  v4 = v3;
  if (v3 && ![v3 isPrimary])
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_22B6E0028(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "TUConversation registered", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6E0118;
  block[3] = &unk_278702FF0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B6E0118(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 addDelegate:*(a1 + 32) queue:MEMORY[0x277D85CD0]];

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Completed conversation manager setup for imagent", v4, 2u);
    }
  }
}

void sub_22B6E0AE4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6E0A58);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6E0B84(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = [v13 serviceName];
  v5 = [v4 isEqualToString:*MEMORY[0x277D1A620]];

  v6 = v13;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 8);
    v10 = *(v7 + 40);
    v8 = (v7 + 40);
    v9 = v10;
    if (v10)
    {
      v11 = [v9 lastMessageTimeStampOnLoad];
      v12 = v11 < [v13 lastMessageTimeStampOnLoad];
      v6 = v13;
      if (!v12)
      {
        goto LABEL_7;
      }

      v8 = (*(*(a1 + 32) + 8) + 40);
    }

    objc_storeStrong(v8, a2);
    v6 = v13;
  }

LABEL_7:
}

id sub_22B6E0C44(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6EEE8];
  v3 = [a2 ID];
  v4 = [v2 normalizedHandleWithDestinationID:v3];

  return v4;
}

void sub_22B6E1294(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6E1204);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B6E131C(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v6 = [v10 messagesGroupUUID];
  v7 = [v6 UUIDString];
  v8 = [*(a1 + 32) groupID];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

id sub_22B6E13E4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6EEE8];
  v3 = [a2 ID];
  v4 = [v2 normalizedHandleWithDestinationID:v3];

  return v4;
}

id sub_22B6E2028(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 isLightweightMember])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "This is a lightweight member - skipping: %@", &v8, 0xCu);
      }
    }

    v4 = 0;
  }

  else
  {
    v5 = [v2 handle];
    v6 = [v5 value];
    v4 = IMChatCanonicalIDSIDsForAddress();
  }

  return v4;
}

void sub_22B6E2158(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = a2;
  obj = [v22 allKeys];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v2)
  {
    v4 = *v24;
    v19 = *MEMORY[0x277D193A8];
    *&v3 = 138412290;
    v18 = v3;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v22 objectForKeyedSubscript:{v6, v18}];
        v8 = [v7 integerValue];

        v9 = IMOSLoggingEnabled();
        if (v8 == 1)
        {
          if (v9)
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = v18;
              v31 = v6;
              _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Destination is registered for iMessage, adding to group: %@", buf, 0xCu);
            }
          }

          v11 = *(a1 + 32);
          v27 = v19;
          v12 = [v6 _stripFZIDPrefix];
          v28 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v29 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v15 = [*(a1 + 40) guid];
          v16 = [*(a1 + 40) chatIdentifier];
          [v11 invitePersonInfo:v14 withMessage:0 toChatID:v15 identifier:v16 style:{objc_msgSend(*(a1 + 40), "style")}];
        }

        else if (v9)
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v31 = v6;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Destination is NOT registered for iMessage, skipping adding to group: %@", buf, 0xCu);
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v2);
  }
}

id sub_22B6E29EC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 isLightweightMember])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "This is a lightweight member - skipping: %@", &v8, 0xCu);
      }
    }

    v4 = 0;
  }

  else
  {
    v5 = [v2 handle];
    v6 = [v5 value];
    v4 = IMChatCanonicalIDSIDsForAddress();
  }

  return v4;
}

void sub_22B6E3304(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 encryptedValuesByKey];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

void sub_22B6E3380(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_283F23018;
  }

  v6 = v5;
  [a1 _setValue:? forKey:?];
}

void sub_22B6E33E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_283F4ED68;
  }

  v6 = v5;
  [a1 _setValue:? forKey:?];
}

void sub_22B6E3448(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  if (!v6)
  {
    v6 = &unk_283F4ED68;
  }

  v9 = v6;
  v7 = a4;
  v8 = [a1 valuesByKey];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

void sub_22B6E34CC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = v9;
  v8 = v6;
  if (!v9)
  {
    v7 = [MEMORY[0x277CBEA90] data];
  }

  v10 = v7;
  [a1 _setValue:v7 forKey:v8];
}

void sub_22B6E3550(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;
  [a1 _setValue:? forKey:?];
}

void *sub_22B6E35B4(void *result, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [result setObject:? forKey:?];
  }

  return result;
}

void sub_22B6E35C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = v9;
  if (!v9)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
  }

  v10 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "__im_nanosecondTimeInterval")}];
  [a1 _setCKRecordNumber:v8 forKey:v6];
}

id sub_22B6E366C(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = [a1 _numberForKey:?];
  v3 = [v1 __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v2, "longLongValue")}];

  return v3;
}

id sub_22B6E36CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 encryptedValuesByKey];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_22B6E374C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E37B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E3814(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 _valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E3878(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_22B6E38DC(void *a1)
{
  v2 = [a1 _dataForKey:@"msgProto4"];
  v3 = [MEMORY[0x277D1AA28] protobufForCompressedDataP4:v2];
  v4 = v3;
  if (!v3 || ![v3 hasActualParentChatId] || (objc_msgSend(v4, "actualParentChatId"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [a1 _stringForKey:@"chatID"];
  }

  return v5;
}

void sub_22B6E41FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void *sub_22B6E43EC(void *a1)
{
  if (![a1 isSubService] || (v2 = objc_msgSend(objc_msgSend(a1, "mainService"), "serviceProperties"), (result = objc_msgSend(v2, "objectForKey:", *MEMORY[0x277D1A678])) == 0))
  {
    v4 = [a1 serviceProperties];
    v5 = [v4 objectForKey:*MEMORY[0x277D1A670]];

    return [v5 firstObject];
  }

  return result;
}

uint64_t sub_22B6E60C8(uint64_t a1)
{
  [+[IMDAccountController sharedAccountController](IMDAccountController "sharedAccountController")];
  v1 = [(IMLocalDaemonProtocol *)+[IMDLocalDaemon sharedDaemon](IMDLocalDaemon parentalControls];

  return MEMORY[0x2821F9670](v1, sel_updateAccountActivation);
}

uint64_t sub_22B6E62A4()
{
  qword_281420F48 = objc_alloc_init(IMDRelayServiceReachabilityController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6E6860(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6E6800);
  }

  _Unwind_Resume(a1);
}

void sub_22B6E69B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) result];
  [v2 _handleReachabilityResult:v3 messageID:*(a1 + 48) fromToken:*(a1 + 56)];
}

void sub_22B6E73D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6E74BC;
  block[3] = &unk_2787038F8;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  v9 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t sub_22B6E7C20()
{
  qword_281420F50 = objc_alloc_init(IMDRelayServiceController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B6E8B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B6E8B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = [*(a1 + 32) mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v10 setObject:v6 forKeyedSubscript:IMDRelaySpamCategoryKey];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v10 setObject:v7 forKeyedSubscript:IMDRelaySpamSubCategoryKey];

  v8 = [MEMORY[0x277D1A8F8] shouldUploadToMMCS:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained relayDictionaryToPeers:v10 requiresUpload:v8 serviceName:*(a1 + 40) requiredCapabilities:0];
}

void sub_22B6EA5A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B6EA42CLL);
  }

  _Unwind_Resume(a1);
}

void *sub_22B6ECC3C(uint64_t a1, void *a2)
{
  if ([a2 objectForKey:*MEMORY[0x277D18A88]])
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B6ECF98(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 "trimmedString")];
  if (!MEMORY[0x231897A50]())
  {
    return v2;
  }

  return IMCanonicalizeFormattedString();
}

uint64_t sub_22B6EE988(uint64_t a1, void *a2)
{
  if ([a2 isEqualToIgnoringCase:*MEMORY[0x277D18AB8]])
  {
    return 0;
  }

  return [a2 _stripFZIDPrefix];
}

void *sub_22B6EEA68()
{
  v0 = objc_alloc(MEMORY[0x277D18778]);
  qword_281421310 = [v0 initWithService:*MEMORY[0x277D186B0]];
  v1 = objc_alloc(MEMORY[0x277D18778]);
  result = [v1 initWithService:*MEMORY[0x277D186B8]];
  qword_281421318 = result;
  return result;
}

uint64_t sub_22B6EF65C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = [a2 objectForKey:IMDRelayMessageDictionaryRecipientIDKey];
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Found Recipient %@", &v5, 0xCu);
    }
  }

  return [a2 objectForKey:IMDRelayMessageDictionaryRecipientIDKey];
}

uint64_t sub_22B6EF7A0()
{
  qword_27D8D00B0 = objc_alloc_init(IMDLiteMessageCompressor);

  return MEMORY[0x2821F96F8]();
}

uint64_t IMDServiceSession.deleteAllData()()
{
  sub_22B7DBA18();
  *(v0 + 16) = sub_22B7DBA08();
  v2 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B6EF8FC, v2, v1);
}

uint64_t sub_22B6EF8FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B6EFAD0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_22B7DBA18();
  v1[4] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B6EFB6C, v3, v2);
}

uint64_t sub_22B6EFB6C()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_22B7DBA08();
  v3 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B6EFC0C, v3, v2);
}

uint64_t sub_22B6EFC0C()
{
  v1 = *(v0 + 40);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t IMDServiceSession.shouldDisplayGroupNameAndPhoto(with:handles:)(uint64_t a1, uint64_t a2)
{
  sub_22B7DAF08();
  sub_22B6EFD80();
  return sub_22B7DAEF8() & 1;
}

id sub_22B6EFCF4(void **a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v1 ID];
  v4 = [v2 _hasSavedContactCardForHandle_];

  return v4;
}

unint64_t sub_22B6EFD80()
{
  result = qword_28141EFD0;
  if (!qword_28141EFD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141EFD0);
  }

  return result;
}

double sub_22B6EFE5C@<D0>(uint64_t a2@<X1>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v5 = a4;
  if (a2)
  {
    v7 = sub_22B7DB678();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v5 = sub_22B7DB678();
  }

LABEL_4:
  v8 = IMGetCachedDomainValueForKey();

  if (v8)
  {
    sub_22B7DC118();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_22B6EFF18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2)
  {
    v7 = sub_22B7DB678();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v6 = sub_22B7DB678();
  }

LABEL_4:
  sub_22B6F0E88(a5, v14);
  v8 = v15;
  if (v15)
  {
    v9 = sub_22B4D2BCC(v14, v15);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    sub_22B7DC508();
    (*(v10 + 8))(v12, v8);
    sub_22B4CFB78(v14);
  }

  IMSetDomainValueForKey();

  return swift_unknownObjectRelease();
}

uint64_t default argument 1 of IMDPersistentTaskCriticalLimiter.init(delegate:defaults:)()
{
  type metadata accessor for IMDPersistentTaskCriticalLimiter.Defaults();
  result = swift_allocObject();
  *(result + 16) = sub_22B6EFF14;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = sub_22B6F0098;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = 0;
  *(result + 88) = 256;
  return result;
}

void sub_22B6F010C(IMDScheduledMessageCoordinator *a1@<X0>, _DWORD *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v10 = *a1->messageStore;
  if (v10)
  {
    v11 = 0;
    queue = a1->queue;
    do
    {
      v14 = *queue;
      queue += 4;
      v13 = v14;
      if ((v14 & ~v11) == 0)
      {
        v13 = 0;
      }

      v11 |= v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  a1, a3, a4, a5, a6, a7, a8, a9, v15, v16;
  *a2 = v11;
}

uint64_t getEnumTagSinglePayload for FileCreateFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FileCreateFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void *sub_22B6F0264@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22B6F0290@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_22B6F03C8(uint64_t a1, id *a2)
{
  v3 = sub_22B7DB698();
  *a2 = 0;
  return v3 & 1;
}

void sub_22B6F0448(uint64_t *a2@<X8>)
{
  sub_22B7DB6A8();
  v4 = v3;
  v5 = sub_22B7DB678();
  v4, v6, v7, v8, v9, v10, v11, v12, v13, v14;
  *a2 = v5;
}

uint64_t sub_22B6F048C()
{
  v0 = sub_22B7DB6A8();
  v2 = v1;
  v3 = MEMORY[0x2318951E0](v0);
  v2, v4, v5, v6, v7, v8, v9, v10, v12, v13;
  return v3;
}

void sub_22B6F04C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  sub_22B7DB6A8();
  v11 = v10;
  sub_22B7DB758();

  v11, v12, v13, v14, v15, v16, v17, v18, a9, a10;
}

uint64_t sub_22B6F051C(uint64_t a1)
{
  sub_22B7DB6A8();
  v2 = v1;
  sub_22B7DC668();
  sub_22B7DB758();
  v3 = sub_22B7DC6B8();
  v2, v4, v5, v6, v7, v8, v9, v10, v12, v13;
  return v3;
}

uint64_t sub_22B6F0590()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  return sub_22B7DC6B8();
}

uint64_t sub_22B6F05D8(uint64_t a1)
{
  v2 = *v1;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v2);
  return sub_22B7DC6B8();
}

void sub_22B6F061C(IMDScheduledMessageCoordinator *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22B6F0A9C(a1);
  a1, v5, v6, v7, v8, v9, v10, v11, v12, v13;
  *a2 = v4;
}

uint64_t sub_22B6F06EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B6F0854(void *a1, uint64_t *a2)
{
  v2 = sub_22B7DB6A8();
  v4 = v3;
  v5 = sub_22B7DB6A8();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_22B7DC518();
  }

  v4, v6, v7, v8, v9, v10, v11, v12, v24, v26;
  v13, v16, v17, v18, v19, v20, v21, v22, v25, v27;
  return v15 & 1;
}

uint64_t sub_22B6F08DC(uint64_t a1)
{
  v2 = sub_22B6F06EC(&qword_27D8CCE78, type metadata accessor for URLResourceKey, &unk_22B7F90BC);
  v3 = sub_22B6F06EC(&unk_27D8CCE80, type metadata accessor for URLResourceKey, &unk_22B7F905C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_22B6F0998(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_22B7DB678();
  v3, v5, v6, v7, v8, v9, v10, v11, v12, v13;
  *a2 = v4;
}

uint64_t sub_22B6F09E0(uint64_t a1)
{
  v2 = sub_22B6F06EC(&qword_27D8CCE68, type metadata accessor for Key, &unk_22B7F92F8);
  v3 = sub_22B6F06EC(&qword_27D8CCE70, type metadata accessor for Key, &unk_22B7F9214);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B6F0A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_22B6F0AD4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B6F0B1C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B6F12E8;

  return sub_22B6EFAD0(v2);
}

uint64_t sub_22B6F0BC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B7C0D2C(v2, v3, v4);
}

uint64_t sub_22B6F0C88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B6F0CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B6F0D94;

  return sub_22B7C0E14(a1, v4, v5, v6);
}

uint64_t sub_22B6F0D94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B6F0E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CCDC0, &qword_22B7F9580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_22B6F0F0C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B6F0F18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B6F0F38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CacheStats(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheStats(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheStats(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_22B6F10BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_22B6F1320(unint64_t result)
{
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (sub_22B7DB1C8())
  {
    return;
  }

  sub_22B7DB1D8();
  v3 = *(v1 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *(v1 + 16) = v5;
}

__n128 sub_22B6F1388(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B6F139C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B6F13E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B6F1434()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8D4868);
  sub_22B4CFA74(v0, qword_27D8D4868);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

id sub_22B6F14A0()
{
  result = [objc_allocWithZone(IMDCommunicationTrustManager) init];
  qword_27D8D4880 = result;
  return result;
}

IMDCommunicationTrustManager __swiftcall IMDCommunicationTrustManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_22B6F16F0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22B7DB6A8();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_22B6F17D8;

  return sub_22B6F1AC4(v5, v7);
}

uint64_t sub_22B6F17D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v4, v8, v9, v10, v11, v12, v13, v14, v18, v19;

  if (v5)
  {
    v15 = *(v3 + 24);
    v15[2](v15, a1);
    _Block_release(v15);
  }

  v16 = *(v7 + 8);

  return v16();
}

unint64_t type metadata accessor for IMDCommunicationTrustManager()
{
  result = qword_27D8CD5B8;
  if (!qword_27D8CD5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8CD5B8);
  }

  return result;
}

uint64_t sub_22B6F1A10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B6F12E8;

  return sub_22B6F16F0(v2, v3, v4);
}

uint64_t sub_22B6F1AC4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_22B6F0AD4(&qword_27D8CD5C8, &qword_22B7F9398);
  v2[8] = swift_task_alloc();
  v3 = sub_22B7DB1E8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_22B7DB208();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B6F1C18, 0, 0);
}

uint64_t sub_22B6F1C18()
{
  v1 = v0[7];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = v0[8];
    (*(v0[10] + 104))(v0[11], *MEMORY[0x277CD4738], v0[9]);

    sub_22B7DB1F8();
    sub_22B7DB1A8();
    v0[15] = sub_22B7DB198();
    v4 = sub_22B7DB168();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_22B6F1E94;
    v6 = v0[14];
    v7 = v0[8];

    return MEMORY[0x28214E8B0](v6, v7);
  }

  else
  {
    if (qword_27D8CCBF0 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_27D8D4868);
    v9 = sub_22B7DB298();
    v10 = sub_22B7DBC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, v10, "No sender provided", v11, 2u);
      MEMORY[0x231898D60](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(4);
  }
}

uint64_t sub_22B6F1E94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 64);
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  sub_22B6F248C(v5);

  if (v1)
  {
    v6 = sub_22B6F2230;
  }

  else
  {
    v6 = sub_22B6F1FE8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B6F1FE8()
{
  v41 = v0;
  if (qword_27D8CCBF0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_27D8D4868);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBC78();
  v1, v5, v6, v7, v8, v9, v10, v11, v34, v37;
  if (os_log_type_enabled(v3, v4))
  {
    v12 = v0[13];
    v35 = v0[12];
    v38 = v0[14];
    v14 = v0[6];
    v13 = v0[7];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136315394;
    v17 = sub_22B7DB178();
    v19 = v18;
    v20 = sub_22B4CFAAC(v17, v18, &v40);
    v19, v21, v22, v23, v24, v25, v26, v27, v35, v38;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_22B4CFAAC(v14, v13, &v40);
    _os_log_impl(&dword_22B4CC000, v3, v4, "Successfully fetched trust score: %s for sender: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v16, -1, -1);
    MEMORY[0x231898D60](v15, -1, -1);

    (*(v12 + 8))(v39, v36);
  }

  else
  {
    v29 = v0[13];
    v28 = v0[14];
    v30 = v0[12];

    (*(v29 + 8))(v28, v30);
  }

  if (v0[17] >= 0xAuLL)
  {
    v31 = 4;
  }

  else
  {
    v31 = v0[17];
  }

  v32 = v0[1];

  return v32(v31);
}

uint64_t sub_22B6F2230()
{
  v42 = v0;
  if (qword_27D8CCBF0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[7];
  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_27D8D4868);

  v4 = v1;
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC98();
  v2, v7, v8, v9, v10, v11, v12, v13, v36, v38;

  v14 = os_log_type_enabled(v5, v6);
  v15 = v0[18];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  if (v14)
  {
    v39 = v0[14];
    v20 = v0[6];
    v19 = v0[7];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_22B4CFAAC(v20, v19, &v41);
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v23 = sub_22B7DC5C8();
    v25 = v24;
    v26 = sub_22B4CFAAC(v23, v24, &v41);
    v25, v27, v28, v29, v30, v31, v32, v33, v37, v39;
    *(v21 + 14) = v26;
    _os_log_impl(&dword_22B4CC000, v5, v6, "Failed to determinate trust score for: %s with error: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v22, -1, -1);
    MEMORY[0x231898D60](v21, -1, -1);

    (*(v17 + 8))(v40, v18);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v34 = v0[1];

  return v34(4);
}

uint64_t sub_22B6F248C(uint64_t a1)
{
  v2 = sub_22B6F0AD4(&qword_27D8CD5C8, &qword_22B7F9398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_22B6F24F4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_22B6F2558()
{
  if (*(v0 + 56))
  {
    v1 = sub_22B7DB678();
    IMBagDoubleValueWithDefault();
    v3 = v2;

    *(v0 + 48) = v3;
    *(v0 + 56) = 0;
  }
}

void sub_22B6F25D0()
{
  if (*(v0 + 72))
  {
    v1 = sub_22B7DB678();
    IMBagDoubleValueWithDefault();
    v3 = v2;

    *(v0 + 64) = v3;
    *(v0 + 72) = 0;
  }
}

id sub_22B6F2648()
{
  if ((*(v0 + 89) & 1) == 0)
  {
    return *(v0 + 80);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isInternalInstall];

    if (v3)
    {
      v4 = sub_22B7DB678();
      IMBagDoubleValueWithDefault();
      v6 = v5;

      result = v6;
    }

    else
    {
      result = 0;
    }

    *(v0 + 80) = result;
    *(v0 + 88) = v3 ^ 1;
    *(v0 + 89) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B6F2724@<X0>(char *a2@<X8>)
{
  v4 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_22B7DA968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v33 = 0;
  v34 = 0xE000000000000000;

  sub_22B7DC2E8();
  v34, v12, v13, v14, v15, v16, v17, v18, v33, v34;
  v33 = sub_22B7DBF38();
  v34 = v19;
  MEMORY[0x231895140](0xD000000000000024, 0x800000022B80E320);
  v20 = v34;
  v11(v35, 0xD000000000000011, 0x800000022B80E290, v33, v34);
  v20, v21, v22, v23, v24, v25, v26, v27, v33, v34;

  if (!v35[3])
  {
    sub_22B4D0D64(v35, &unk_27D8CCDC0, &qword_22B7F9580);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_6;
  }

  v28 = swift_dynamicCast();
  (*(v8 + 56))(v6, v28 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_6:
    sub_22B4D0D64(v6, &unk_27D8CF790, &qword_22B7F9578);
    v31 = 1;
    goto LABEL_7;
  }

  v29 = *(v8 + 32);
  v29(v10, v6, v7);
  sub_22B6FC35C(&qword_281420E88, MEMORY[0x277CC9598]);
  result = sub_22B7DB658();
  if (result)
  {
    v29(a2, v10, v7);
    v31 = 0;
LABEL_7:
    v32 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
    return (*(*(v32 - 8) + 56))(a2, v31, 1, v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B6F2A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = *(v2 + 32);
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;

  sub_22B7DC2E8();
  *(&v28 + 1), v8, v9, v10, v11, v12, v13, v14, v28, *(&v28 + 1);
  *&v28 = sub_22B7DBF38();
  *(&v28 + 1) = v15;
  MEMORY[0x231895140](0xD000000000000024, 0x800000022B80E320);
  v16 = v28;
  sub_22B4D7E58(a1, v6, &qword_27D8CD5D0, &qword_22B7F9518);
  v17 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_22B4D0D64(v6, &qword_27D8CD5D0, &qword_22B7F9518);
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    v18 = sub_22B7DA968();
    *(&v29 + 1) = v18;
    v19 = sub_22B6FC8CC(&v28);
    (*(*(v18 - 8) + 16))(v19, v6, v18);
    sub_22B4D0D64(v6, &qword_27D8CD5D8, &qword_22B7F9530);
  }

  v7(0xD000000000000011, 0x800000022B80E290, v16, *(&v16 + 1), &v28);

  *(&v16 + 1), v20, v21, v22, v23, v24, v25, v26, v28, *(&v28 + 1);
  sub_22B4D0D64(a1, &qword_27D8CD5D0, &qword_22B7F9518);
  return sub_22B4D0D64(&v28, &unk_27D8CCDC0, &qword_22B7F9580);
}

uint64_t sub_22B6F2CA8(uint64_t a1)
{
  v74 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v2 = MEMORY[0x28223BE20](v74);
  v72 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v73 = &v61 - v4;
  v5 = sub_22B7DA968();
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v79 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - v9;
  v11 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v16 = *(v1 + 16);
  v80 = 0;
  v81 = 0xE000000000000000;

  sub_22B7DC2E8();
  v81, v17, v18, v19, v20, v21, v22, v23, v61, v62;
  v80 = sub_22B7DBF38();
  v81 = v24;
  MEMORY[0x231895140](0xD000000000000025, 0x800000022B80E2F0);
  v25 = v81;
  v16(v82, 0xD000000000000011, 0x800000022B80E290, v80, v81);
  v25, v26, v27, v28, v29, v30, v31, v32, v61, v62;

  if (!v82[3])
  {
    sub_22B4D0D64(v82, &unk_27D8CCDC0, &qword_22B7F9580);
    return MEMORY[0x277D84F90];
  }

  sub_22B6F0AD4(&qword_27D8CD5F0, &unk_22B7F9590);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v41 = v80;
  v42 = *(v80 + 16);
  if (!v42)
  {
    v45 = MEMORY[0x277D84F90];
LABEL_17:
    v41, v34, v35, v36, v37, v38, v39, v40, v61, v62;
    return v45;
  }

  v43 = 0;
  v44 = v80 + 32;
  v68 = v76 + 16;
  v63 = (v76 + 32);
  v61 = (v76 + 8);
  v45 = MEMORY[0x277D84F90];
  v66 = v80;
  v67 = v10;
  v65 = v42;
  v64 = v80 + 32;
  v62 = v15;
  while (v43 < *v41->messageStore)
  {
    v46 = *(v44 + 8 * v43);
    if (*(v46 + 16) == 2)
    {
      v78 = v45;
      v48 = v75;
      v47 = v76;
      v49 = v46 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v50 = *(v76 + 16);
      v50(v10, v49, v75);
      v50(v79, v49 + *(v47 + 72), v48);
      sub_22B6FC35C(&qword_281420E90, MEMORY[0x277CC9590]);
      result = sub_22B7DB618();
      if ((result & 1) == 0)
      {
        goto LABEL_20;
      }

      v51 = *v63;
      v52 = v73;
      (*v63)(v73, v10, v48);
      v53 = v48;
      v54 = v74;
      v51((v52 + *(v74 + 48)), v79, v48);
      v55 = v72;
      sub_22B4D7E58(v52, v72, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v77 = *(v54 + 48);
      v56 = v69;
      v51(v69, v55, v48);
      v57 = *v61;
      (*v61)(v55 + v77, v53);
      sub_22B6FC80C(v52, v55, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v51((v56 + *(v71 + 36)), (v55 + *(v54 + 48)), v53);
      v57(v55, v53);
      v58 = v62;
      sub_22B6FC80C(v56, v62, &unk_27D8CEEC0, &qword_22B7FA060);
      v45 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_22B71B35C(0, *v45->messageStore + 1, 1, v45);
      }

      v60 = *v45->messageStore;
      v59 = *v45->chatRegistry;
      v41 = v66;
      v10 = v67;
      v42 = v65;
      if (v60 >= v59 >> 1)
      {
        v45 = sub_22B71B35C((v59 > 1), v60 + 1, 1, v45);
      }

      *v45->messageStore = v60 + 1;
      result = sub_22B6FC80C(v58, v45 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v60, &unk_27D8CEEC0, &qword_22B7FA060);
      v44 = v64;
    }

    if (v42 == ++v43)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B6F32AC(IMDScheduledMessageCoordinator *a1, uint64_t a2)
{
  v61 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v14 = &v55 - v13;
  v15 = *a1->messageStore;
  if (v15)
  {
    v57 = v2;
    v58 = a2;
    v62 = MEMORY[0x277D84F90];
    sub_22B7AB674(0, v15, 0);
    v16 = v62;
    v17 = *(v5 + 80);
    v56 = a1;
    v18 = a1 + ((v17 + 32) & ~v17);
    v60 = *(v5 + 72);
    v59 = xmmword_22B7F93A0;
    do
    {
      sub_22B4D7E58(v18, v14, &unk_27D8CEEC0, &qword_22B7FA060);
      sub_22B6F0AD4(&qword_27D8CD5E8, &qword_22B7F9588);
      v19 = sub_22B7DA968();
      v20 = *(v19 - 8);
      v21 = *(v20 + 72);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v59;
      v24 = v23 + v22;
      v25 = *(v20 + 16);
      v25(v24, v14, v19);
      v25(v24 + v21, &v14[*(v61 + 36)], v19);
      sub_22B4D0D64(v14, &unk_27D8CEEC0, &qword_22B7FA060);
      v62 = v16;
      v34 = *(v16 + 16);
      v33 = *(v16 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22B7AB674((v33 > 1), v34 + 1, 1);
        v16 = v62;
      }

      *(v16 + 16) = v34 + 1;
      *(v16 + 8 * v34 + 32) = v23;
      v18 += v60;
      --v15;
    }

    while (v15);
    v56, v26, v27, v28, v29, v30, v31, v32, v55, v56;
    v2 = v57;
  }

  else
  {
    a1, v6, v7, v8, v9, v10, v11, v12, v55, v56;
    v16 = 0;
  }

  v35 = *(v2 + 32);
  v62 = 0;
  v63 = 0xE000000000000000;

  sub_22B7DC2E8();
  v63, v36, v37, v38, v39, v40, v41, v42, v55, v56;
  v62 = sub_22B7DBF38();
  v63 = v43;
  MEMORY[0x231895140](0xD000000000000025, 0x800000022B80E2F0);
  v44 = v62;
  v45 = v63;
  if (v16)
  {
    v46 = sub_22B6F0AD4(&qword_27D8CD5F0, &unk_22B7F9590);
  }

  else
  {
    v46 = 0;
    v63 = 0;
    v64 = 0;
  }

  v62 = v16;
  v65 = v46;
  v35(0xD000000000000011, 0x800000022B80E290, v44, v45, &v62);

  v45, v47, v48, v49, v50, v51, v52, v53, v55, v56;
  return sub_22B4D0D64(&v62, &unk_27D8CCDC0, &qword_22B7F9580);
}

uint64_t IMDPersistentTaskCriticalLimiter.Defaults.deinit()
{

  return v0;
}

uint64_t IMDPersistentTaskCriticalLimiter.Defaults.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B6F3688()
{
  v1 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v2 = MEMORY[0x28223BE20](v1);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - v4;
  v6 = sub_22B7DA968();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  sub_22B4D7E58(v0 + *(v15 + 24), v10, &qword_27D8CD5D0, &qword_22B7F9518);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22B4D0D64(v10, &qword_27D8CD5D0, &qword_22B7F9518);
  }

  else
  {
    sub_22B6FC80C(v10, v14, &qword_27D8CD5D8, &qword_22B7F9530);
    v17 = *(v0 + 8);
    sub_22B6F0AD4(&qword_27D8CD618, &qword_22B7F95F8);
    v18 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
    v19 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22B7F93B0;
    v34 = v17;

    sub_22B7DA938();
    sub_22B6FC35C(&qword_281420E90, MEMORY[0x277CC9590]);
    result = sub_22B7DB618();
    if (result)
    {
      v21 = v20 + v19;
      v32 = v20;
      v33 = v14;
      v22 = v36;
      v23 = *(v36 + 16);
      v23(v5, v14, v6);
      v24 = v37;
      v23(&v5[*(v1 + 48)], v37, v6);
      v25 = v35;
      sub_22B4D7E58(v5, v35, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v26 = *(v1 + 48);
      v30 = v18;
      v31 = v1;
      v27 = *(v22 + 32);
      v27(v21, v25, v6);
      v28 = *(v22 + 8);
      v28(v25 + v26, v6);
      sub_22B6FC80C(v5, v25, &qword_27D8CD5F8, &qword_22B7FBAC0);
      v27(v21 + *(v30 + 36), v25 + *(v31 + 48), v6);
      v28(v24, v6);
      v28(v25, v6);
      v38 = v34;
      sub_22B79B17C(v32);
      sub_22B4D0D64(v33, &qword_27D8CD5D8, &qword_22B7F9530);
      return v38;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B6F3B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v117 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = &v112 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v112 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v130 = (&v112 - v14);
  MEMORY[0x28223BE20](v13);
  v135 = &v112 - v15;
  v124 = sub_22B7DA968();
  v129 = *(v124 - 8);
  v16 = MEMORY[0x28223BE20](v124);
  v131 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v123 = &v112 - v19;
  MEMORY[0x28223BE20](v18);
  v134 = &v112 - v20;
  v21 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v112 - v25;
  v27 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v28 = *(v27 + 24);
  v29 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v30 = *(v29 - 8);
  (*(v30 + 56))(a3 + v28, 1, 1, v29);
  *a3 = a2;
  a3[1] = sub_22B6F2CA8(a2);
  v128 = a3 + 1;
  sub_22B6F2724(v26);
  v115 = v26;
  sub_22B6FBA40(v26, a3 + v28, &qword_27D8CD5D0, &qword_22B7F9518);
  v31 = *(v27 + 28);
  *(a3 + v31) = a1;
  v114 = v28;
  sub_22B4D7E58(a3 + v28, v24, &qword_27D8CD5D0, &qword_22B7F9518);
  LODWORD(v28) = (*(v30 + 48))(v24, 1, v29);
  v119 = a1;

  sub_22B4D0D64(v24, &qword_27D8CD5D0, &qword_22B7F9518);
  v121 = v28;
  if (v28 != 1)
  {
    sub_22B6F4628(0);
  }

  v32 = a3[1];

  v33 = v123;
  sub_22B7DA938();
  v118 = *(a3 + v31);
  sub_22B6F25D0();
  v34 = v134;
  sub_22B7DA8A8();
  v35 = v129 + 8;
  v36 = v124;
  v127 = *(v129 + 8);
  v37 = v127(v33, v124);
  v120 = &v112;
  MEMORY[0x28223BE20](v37);
  *(&v112 - 2) = v34;
  result = sub_22B6F9990(sub_22B6FBA24, (&v112 - 4), v32);
  v122 = v32;
  v116 = 0;
  if (v39)
  {
    v40 = *(v32 + 16);
    v41 = v40;
    v42 = v32;
  }

  else
  {
    v40 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v133 = result;
    v129 = v35;
    v113 = a3;
    v42 = v122;
    messageStore = v122->messageStore;
    v43 = *v122->messageStore;
    if (v40 != v43)
    {
      while (v40 < v43)
      {
        v68 = (*(v136 + 80) + 32) & ~*(v136 + 80);
        v69 = v42;
        v70 = v42 + v68;
        v71 = *(v136 + 72);
        v132 = v71 * v40;
        v72 = v42 + v68 + v71 * v40;
        v73 = v135;
        sub_22B4D7E58(v72, v135, &unk_27D8CEEC0, &qword_22B7FA060);
        v74 = sub_22B7DA8D8();
        result = sub_22B4D0D64(v73, &unk_27D8CEEC0, &qword_22B7FA060);
        if (v74)
        {
          v42 = v69;
        }

        else
        {
          v75 = v133;
          if (v40 == v133)
          {
            v42 = v69;
          }

          else
          {
            if (v133 < 0)
            {
              goto LABEL_65;
            }

            v76 = *messageStore;
            if (v133 >= v76)
            {
              goto LABEL_66;
            }

            v42 = v69;
            v77 = v71 * v133;
            result = sub_22B4D7E58(&v70[v71 * v133], v130, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v40 >= v76)
            {
              goto LABEL_67;
            }

            v78 = v132;
            v79 = v126;
            sub_22B4D7E58(&v70[v132], v126, &unk_27D8CEEC0, &qword_22B7FA060);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_22B7025B4(v42);
            }

            result = sub_22B6FBA40(v79, v42 + v68 + v77, &unk_27D8CEEC0, &qword_22B7FA060);
            if (v40 >= *v42->messageStore)
            {
              goto LABEL_68;
            }

            result = sub_22B6FBA40(v130, v42 + v68 + v78, &unk_27D8CEEC0, &qword_22B7FA060);
            v75 = v133;
          }

          v133 = v75 + 1;
        }

        ++v40;
        messageStore = v42->messageStore;
        v43 = *v42->messageStore;
        if (v40 == v43)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_7:
    v41 = v133;
    if (v40 < v133)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    a3 = v113;
    v36 = v124;
    v35 = v129;
    if (v133 < 0)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }

  v45 = v41;
  v46 = v41 - v40;
  v47 = v40 + v46;
  if (__OFADD__(v40, v46))
  {
    goto LABEL_71;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v128;
  *v128 = v42;
  if (!isUniquelyReferenced_nonNull_native || v47 > *v42->chatRegistry >> 1)
  {
    if (v40 <= v47)
    {
      v50 = v47;
    }

    else
    {
      v50 = v40;
    }

    v51 = sub_22B71B35C(isUniquelyReferenced_nonNull_native, v50, 1, v42);
    v49 = v128;
    v42 = v51;
    *v128 = v51;
  }

  sub_22B6FA840(v45, v40, 0);
  *v49 = v42;
  v52 = v122;
  v53 = sub_22B747814(v122, v42);
  v52, v54, v55, v56, v57, v58, v59, v60, v112, v113;
  v127(v134, v36);
  if (v121 == 1 && (v53 & 1) != 0)
  {
  }

  v61 = v123;
  sub_22B7DA938();
  v62 = v131;
  sub_22B7DA8A8();
  v63 = v127(v61, v36);
  MEMORY[0x28223BE20](v63);
  *(&v112 - 2) = v62;
  v64 = v42;
  result = sub_22B6F9990(sub_22B6FC9D8, (&v112 - 4), v42);
  v132 = v42;
  v130 = &v112;
  if (v65)
  {
    v66 = *v42->messageStore;
    v67 = *v64->messageStore;
    goto LABEL_39;
  }

  v66 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v134 = result;
    v129 = v35;
    v113 = a3;
    v64 = v132;
    v81 = (v132 + 16);
    v80 = *(v132 + 16);
    if (v66 == v80)
    {
LABEL_37:
      v67 = v134;
      if (v66 >= v134)
      {
        a3 = v113;
        v36 = v124;
        if ((v134 & 0x8000000000000000) == 0)
        {
LABEL_39:
          if (!__OFADD__(v66, v67 - v66))
          {
            v82 = swift_isUniquelyReferenced_nonNull_native();
            *v128 = v64;
            if (!v82 || v67 > *v64->chatRegistry >> 1)
            {
              if (v66 <= v67)
              {
                v83 = v67;
              }

              else
              {
                v83 = v66;
              }

              v64 = sub_22B71B35C(v82, v83, 1, v64);
              *v128 = v64;
            }

            sub_22B6FA840(v67, v66, 0);
            a3[1] = v64;
            v84 = v132;
            sub_22B747814(v132, v64);
            v84, v85, v86, v87, v88, v89, v90, v91, v112, v113;
            v127(v131, v36);
            sub_22B6F5864();
            v92 = *a3;
            v93 = v115;
            sub_22B4D7E58(a3 + v114, v115, &qword_27D8CD5D0, &qword_22B7F9518);
            sub_22B6F2A58(v93, v92);

            sub_22B6F32AC(v94, v92);
          }

          goto LABEL_79;
        }

LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v95 = &unk_27D8CEEC0;
    v96 = &qword_22B7FA060;
    while (v66 < v80)
    {
      v97 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v98 = v64;
      v99 = v64 + v97;
      v100 = *(v136 + 72);
      v133 = v100 * v66;
      v101 = v64 + v97 + v100 * v66;
      v102 = v96;
      v103 = v95;
      v104 = v135;
      sub_22B4D7E58(v101, v135, v103, v102);
      v105 = sub_22B7DA8D8();
      v106 = v104;
      v95 = v103;
      v96 = v102;
      result = sub_22B4D0D64(v106, v95, v102);
      if (v105)
      {
        v64 = v98;
      }

      else
      {
        v107 = v134;
        if (v66 == v134)
        {
          v64 = v98;
        }

        else
        {
          if (v134 < 0)
          {
            goto LABEL_72;
          }

          v108 = *v81;
          if (v134 >= v108)
          {
            goto LABEL_73;
          }

          v64 = v98;
          v109 = v100 * v134;
          result = sub_22B4D7E58(&v99[v100 * v134], v125, v95, v96);
          if (v66 >= v108)
          {
            goto LABEL_74;
          }

          v110 = v133;
          v111 = v117;
          sub_22B4D7E58(&v99[v133], v117, v95, v96);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_22B7025B4(v64);
          }

          result = sub_22B6FBA40(v111, v64 + v97 + v109, v95, v96);
          if (v66 >= *v64->messageStore)
          {
            goto LABEL_75;
          }

          result = sub_22B6FBA40(v125, v64 + v97 + v110, v95, v96);
          v107 = v134;
        }

        v134 = v107 + 1;
      }

      ++v66;
      v81 = v64->messageStore;
      v80 = *v64->messageStore;
      if (v66 == v80)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_64;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_22B6F4628(int a1)
{
  v62 = a1;
  v1 = sub_22B6F0AD4(&qword_27D8CD5D0, &qword_22B7F9518);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v49 - v2;
  v54 = sub_22B6F0AD4(&qword_27D8CD5F8, &qword_22B7FBAC0);
  v3 = MEMORY[0x28223BE20](v54);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v49 - v5;
  v56 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v61 = *(v56 - 8);
  v6 = MEMORY[0x28223BE20](v56);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v49 - v8;
  v9 = sub_22B6F0AD4(&qword_27D8CD5D8, &qword_22B7F9530);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = sub_22B6F0AD4(&unk_27D8CF790, &qword_22B7F9578);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_22B7DA968();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v49 = type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  v26 = *(v49 + 24);
  v53 = v10;
  v27 = *(v10 + 48);
  v28 = v64;
  v55 = v9;
  v29 = v27(&v26[v64], 1, v9);
  v58 = v26;
  if (v29)
  {
    (*(v17 + 7))(v15, 1, 1, v16);
    sub_22B7DA938();
    sub_22B7DA8A8();
    (*(v17 + 1))(v23, v16);
    if ((*(v17 + 6))(v15, 1, v16) != 1)
    {
      sub_22B4D0D64(v15, &unk_27D8CF790, &qword_22B7F9578);
    }
  }

  else
  {
    sub_22B4D7E58(&v26[v28], v12, &qword_27D8CD5D8, &qword_22B7F9530);
    v30 = v17;
    v31 = *(v17 + 4);
    v31(v15, v12, v16);
    (*(v30 + 7))(v15, 0, 1, v16);
    v31(v25, v15, v16);
    v17 = v30;
  }

  sub_22B7DA938();
  if (sub_22B7DA8C8())
  {
    sub_22B7DA8A8();
    (*(v17 + 1))(v20, v16);
    (*(v17 + 4))(v20, v23, v16);
  }

  sub_22B6FC35C(&qword_281420E90, MEMORY[0x277CC9590]);
  v32 = v16;
  if (sub_22B7DB618())
  {
    v33 = v17;
    v34 = *(v17 + 2);
    v35 = v57;
    v51 = v25;
    v34(v57, v25, v16);
    v36 = v54;
    v37 = v35 + *(v54 + 48);
    v52 = v20;
    v34(v37, v20, v16);
    v38 = v59;
    sub_22B4D7E58(v35, v59, &qword_27D8CD5F8, &qword_22B7FBAC0);
    v39 = *(v36 + 48);
    v40 = *(v33 + 4);
    v41 = v63;
    v40(v63, v38, v16);
    v28 = *(v33 + 1);
    v28(v38 + v39, v16);
    sub_22B6FC80C(v35, v38, &qword_27D8CD5F8, &qword_22B7FBAC0);
    v40(v41 + *(v56 + 36), v38 + *(v36 + 48), v16);
    v17 = v64;
    v28(v38, v16);
    v23 = v58;
    sub_22B4D0D64(&v58[v17], &qword_27D8CD5D0, &qword_22B7F9518);
    (*(v53 + 56))(&v23[v17], 1, 1, v55);
    v25 = v60;
    sub_22B4D7E58(v41, v60, &unk_27D8CEEC0, &qword_22B7FA060);
    v32 = *(v17 + 1);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  v32 = sub_22B71B35C(0, *v32->messageStore + 1, 1, v32);
LABEL_9:
  v42 = v62;
  v44 = *v32->messageStore;
  v43 = *v32->chatRegistry;
  if (v44 >= v43 >> 1)
  {
    v32 = sub_22B71B35C((v43 > 1), v44 + 1, 1, v32);
  }

  *v32->messageStore = v44 + 1;
  sub_22B6FC80C(v25, v32 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v44, &unk_27D8CEEC0, &qword_22B7FA060);
  *(v17 + 1) = v32;
  if (v42)
  {
    sub_22B6F4E1C();
    sub_22B6F5864();
    v45 = v50;
    v46 = *v17;
    sub_22B4D7E58(&v23[v17], v50, &qword_27D8CD5D0, &qword_22B7F9518);
    sub_22B6F2A58(v45, v46);

    sub_22B6F32AC(v47, v46);
  }

  sub_22B4D0D64(v63, &unk_27D8CEEC0, &qword_22B7FA060);
  v28(v52, v16);
  return (v28)(v51, v16);
}

uint64_t sub_22B6F4E1C()
{
  v1 = sub_22B7DA968();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = *(v0 + 8);

  sub_22B7DA938();
  type metadata accessor for IMDPersistentTaskCriticalLimiter.Group(0);
  sub_22B6F25D0();
  sub_22B7DA8A8();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v20[2] = v7;
  result = sub_22B6F9B3C(sub_22B6FC9D8, v20);
  v11 = *(*(v0 + 8) + 16);
  if (v11 < result)
  {
    __break(1u);
  }

  else
  {
    sub_22B6FA994(result, v11);
    v12 = sub_22B747814(v8, *(v0 + 8));
    v8, v13, v14, v15, v16, v17, v18, v19, v20[0], v20[1];
    v9(v7, v1);
    return (v12 & 1) == 0;
  }

  return result;
}