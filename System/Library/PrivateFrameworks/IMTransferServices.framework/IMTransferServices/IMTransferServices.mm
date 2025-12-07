IMTransferServicesCompressionController *sub_254879D00()
{
  result = objc_alloc_init(IMTransferServicesCompressionController);
  qword_28141B760 = result;
  return result;
}

id -[IMTransferServicesCompressionController _blockForCopier:](IMTransferServicesCompressionController *self, SEL a2, id a3)
{
  if (!a3 || !objc_msgSend_identifier(a3, a2, a3, v3))
  {
    return 0;
  }

  blockMap = self->_blockMap;
  v10 = objc_msgSend_identifier(a3, v6, v7, v8);

  return MEMORY[0x2821F9670](blockMap, sel_objectForKey_, v10, v11);
}

void sub_25487A5D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x25487A590);
    }

    JUMPOUT(0x25487A54CLL);
  }

  _Unwind_Resume(a1);
}

IMTransferServicesController *sub_25487A670()
{
  result = objc_alloc_init(IMTransferServicesController);
  qword_28141B768 = result;
  return result;
}

void sub_25487AD4C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25487AC70);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_25487AE4C(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_254879000, v3, OS_LOG_TYPE_INFO, "Transfer service disconnected", v5, 2u);
    }
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    xpc_connection_cancel(v4);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

int64_t sub_25487AF08(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x259C1CC00](a2);
  if (result == MEMORY[0x277D86468])
  {
    if (_IMWillLog())
    {
      v5 = MEMORY[0x259C1CBA0](a2);
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          pid = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
          v12[0] = 67109378;
          v12[1] = pid;
          v13 = 2080;
          v14 = v5;
          _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v12, 0x12u);
        }
      }

      free(v5);
    }

    result = xpc_dictionary_get_int64(a2, "__message_type__");
    if (result == 1)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = IMGetXPCIntFromDictionary();
        v10 = IMGetXPCIntFromDictionary();
        v11 = IMGetXPCIntFromDictionary();
        return (*(v8 + 16))(v8, v9, v10, v11);
      }
    }
  }

  return result;
}

void sub_25487B0A8(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v36 = string;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Error received in message reply handler: %s", buf, 0xCu);
      }
    }

    v11 = *(a1 + 112);
    if (v11 > 2)
    {
      if (*(a1 + 96))
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"IMTransferServicesErrorDomain", -4, 0);
        (*(*(a1 + 96) + 16))(*(a1 + 96), *(a1 + 40));
      }
    }

    else
    {
      v33 = v11 + 1;
      objc_msgSend__sendFilePath_topic_userInfo_transferID_sourceAppID_encryptFile_retries_progressBlock_completionBlock_(*(a1 + 32), v8, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 116), v33, *(a1 + 88), *(a1 + 96));
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v12 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = v12;
        _os_log_impl(&dword_254879000, v13, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v12);
    v14 = IMGetXPCBoolFromDictionary();
    v15 = IMGetXPCIntFromDictionary();
    v16 = IMGetXPCStringFromDictionary();
    v17 = IMGetXPCStringFromDictionary();
    v18 = IMGetXPCDataFromDictionary();
    v19 = IMGetXPCDataFromDictionary();
    v20 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v21 = IMGetXPCStringFromDictionary();
    v22 = *(a1 + 96);
    if (v22)
    {
      (*(v22 + 16))(v22, *(a1 + 40), v14, v20, v21, v16, v18, v17, v19, v15);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v36 = v7;
        _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "Error reply type in message reply handler: %s", buf, 0xCu);
      }
    }

    if (*(a1 + 96))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0);
      (*(*(a1 + 96) + 16))(*(a1 + 96), *(a1 + 40));
    }
  }

  if (*(a1 + 80))
  {
    v34 = 0;
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(a1 + 80);
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&dword_254879000, v26, OS_LOG_TYPE_INFO, "Removing the clone we created before: %@", buf, 0xCu);
      }
    }

    v28 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24, v25);
    if ((objc_msgSend_removeItemAtURL_error_(v28, v29, *(a1 + 80), &v34) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = *(a1 + 80);
          *buf = 138412546;
          v36 = v31;
          v37 = 2112;
          v38 = v34;
          _os_log_impl(&dword_254879000, v30, OS_LOG_TYPE_INFO, "Deletion of clone of %@ failed! error: %@", buf, 0x16u);
        }
      }
    }
  }

  v32 = *(*(*(a1 + 104) + 8) + 40);
  if (v32)
  {
    xpc_connection_cancel(v32);
    xpc_release(*(*(*(a1 + 104) + 8) + 40));
    *(*(*(a1 + 104) + 8) + 40) = 0;
  }
}

void sub_25487B568(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487B240);
  }

  _Unwind_Resume(a1);
}

void sub_25487BCBC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25487BBD4);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_25487BD84(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_254879000, v3, OS_LOG_TYPE_INFO, "Transfer service disconnected", v5, 2u);
    }
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    xpc_connection_cancel(v4);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

int64_t sub_25487BE40(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x259C1CC00](a2);
  if (result == MEMORY[0x277D86468])
  {
    if (_IMWillLog())
    {
      v5 = MEMORY[0x259C1CBA0](a2);
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          pid = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
          v12[0] = 67109378;
          v12[1] = pid;
          v13 = 2080;
          v14 = v5;
          _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v12, 0x12u);
        }
      }

      free(v5);
    }

    result = xpc_dictionary_get_int64(a2, "__message_type__");
    if (result == 1)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = IMGetXPCIntFromDictionary();
        v10 = IMGetXPCIntFromDictionary();
        v11 = IMGetXPCIntFromDictionary();
        return (*(v8 + 16))(v8, v9, v10, v11);
      }
    }
  }

  return result;
}

void sub_25487BFE0(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
          *buf = 136315138;
          v50 = string;
          _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "Error reply type in message reply handler: %s", buf, 0xCu);
        }
      }

      if (*(a1 + 112))
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0);
        (*(*(a1 + 112) + 16))();
      }

      goto LABEL_45;
    }

    v12 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v50 = v12;
        _os_log_impl(&dword_254879000, v13, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v12);
    v14 = IMGetXPCBoolFromDictionary();
    v15 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v48 = v15;
    v16 = IMGetXPCStringFromDictionary();
    v17 = IMGetXPCStringFromDictionary();
    v18 = IMGetXPCStringFromDictionary();
    v21 = -1;
    if (v18 && !v15)
    {
      objc_msgSend_cStringUsingEncoding_(v18, v19, 4, v20);
      v21 = sandbox_extension_consume();
      if (v21 == -1)
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = *__error();
            *buf = 138412546;
            v50 = v16;
            v51 = 1024;
            LODWORD(v52) = v23;
            _os_log_impl(&dword_254879000, v22, OS_LOG_TYPE_INFO, "Failed to consume sandbox extension for result path %@: %{darwin.errno}d", buf, 0x12u);
          }
        }

        v15 = 0;
        v21 = -1;
      }

      else
      {
        v15 = 0;
      }
    }

    isEqualToString = objc_msgSend_isEqualToString_(v16, v19, *(a1 + 56), v20);
    if (v15)
    {
      v28 = 1;
    }

    else
    {
      v28 = isEqualToString;
    }

    if ((v28 & 1) == 0 && ((v14 ^ 1) & 1) == 0)
    {
      v29 = *(a1 + 56);
      if (objc_msgSend_pathExtension(v16, v25, v26, v27))
      {
        v33 = objc_msgSend_stringByDeletingPathExtension(*(a1 + 56), v30, v31, v32);
        v37 = objc_msgSend_pathExtension(v16, v34, v35, v36);
        v29 = objc_msgSend_stringByAppendingPathExtension_(v33, v38, v37, v39);
      }

      v40 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v30, v31, v32);
      objc_msgSend_copyItemAtPath_toPath_error_(v40, v41, v16, v29, &v48);
      if (!v48)
      {
        goto LABEL_38;
      }

      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = *(a1 + 56);
          *buf = 138412802;
          v50 = v16;
          v51 = 2112;
          v52 = v43;
          v53 = 2112;
          v54 = v48;
          _os_log_impl(&dword_254879000, v42, OS_LOG_TYPE_INFO, "Failed to copy item at path %@ to path %@: %@", buf, 0x20u);
        }
      }
    }

    v29 = v16;
LABEL_38:
    if (v21 != -1)
    {
      if (sandbox_extension_release())
      {
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = *__error();
            *buf = 138412546;
            v50 = v29;
            v51 = 1024;
            LODWORD(v52) = v45;
            _os_log_impl(&dword_254879000, v44, OS_LOG_TYPE_INFO, "Failed to release sandbox extension for result path %@: %{darwin.errno}d", buf, 0x12u);
          }
        }
      }
    }

    v46 = *(a1 + 112);
    if (v46)
    {
      (*(v46 + 16))(v46, *(a1 + 40), v29, v14, v48, v17);
    }

    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
      *buf = 136315138;
      v50 = v10;
      _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Error received in message reply handler: %s", buf, 0xCu);
    }
  }

  v11 = *(a1 + 136);
  if (v11 > 2)
  {
    if (*(a1 + 112))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"IMTransferServicesErrorDomain", -4, 0);
      (*(*(a1 + 112) + 16))();
    }
  }

  else
  {
    objc_msgSend__receiveFileTransfer_topic_path_requestURLString_ownerID_sourceAppID_signature_decryptionKey_retries_fileSize_progressBlock_completionBlock_(*(a1 + 32), v8, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v11 + 1, *(a1 + 128), *(a1 + 104), *(a1 + 112));
  }

LABEL_45:
  v47 = *(*(*(a1 + 120) + 8) + 40);
  if (v47)
  {
    xpc_connection_cancel(v47);
    xpc_release(*(*(*(a1 + 120) + 8) + 40));
    *(*(*(a1 + 120) + 8) + 40) = 0;
  }
}

void sub_25487C7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25487C7C4(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_254879000, v3, OS_LOG_TYPE_INFO, "Transfer service disconnected", v5, 2u);
    }
  }

  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    xpc_connection_cancel(v4);
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487CB60(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487CEC4(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487CF14(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v7[0] = 67109378;
        v7[1] = pid;
        v8 = 2080;
        v9 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v7, 0x12u);
      }
    }

    free(v4);
  }
}

void sub_25487D560(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487D5B0(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v7[0] = 67109378;
        v7[1] = pid;
        v8 = 2080;
        v9 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v7, 0x12u);
      }
    }

    free(v4);
  }
}

void sub_25487D6DC(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v19 = 136315138;
        v20 = string;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error received in message reply handler: %s", &v19, 0xCu);
      }
    }

    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"IMTransferServicesErrorDomain", -4, 0);
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v11);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v13 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = v13;
        _os_log_impl(&dword_254879000, v14, OS_LOG_TYPE_INFO, "received reply: %s", &v19, 0xCu);
      }
    }

    free(v13);
    MEMORY[0x259C1C9C0](@"IMNickname", @"IMSharedUtilities");
    objc_opt_class();
    v15 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v16 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v17 = *(a1 + 32);
    if (v17)
    {
      (*(v17 + 16))(v17, v15, v16);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v19 = 136315138;
        v20 = v7;
        _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error reply type in message reply handler: %s", &v19, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0);
      (*(*(a1 + 32) + 16))();
    }
  }

  v18 = *(*(*(a1 + 40) + 8) + 40);
  if (v18)
  {
    xpc_connection_cancel(v18);
    xpc_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

void sub_25487D9B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487D850);
  }

  _Unwind_Resume(a1);
}

void sub_25487DF20(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487DF70(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v7[0] = 67109378;
        v7[1] = pid;
        v8 = 2080;
        v9 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v7, 0x12u);
      }
    }

    free(v4);
  }
}

void sub_25487E09C(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v28 = string;
        _os_log_impl(&dword_254879000, v10, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error received in message reply handler: %s", buf, 0xCu);
      }
    }

    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"IMTransferServicesErrorDomain", -4, 0);
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0, 0, 0, 0, 0, 0, 0, v12);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v14 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v28 = v14;
        _os_log_impl(&dword_254879000, v15, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v14);
    v16 = IMGetXPCBoolFromDictionary();
    v17 = IMGetXPCStringFromDictionary();
    v18 = IMGetXPCDataFromDictionary();
    v19 = IMGetXPCDataFromDictionary();
    v20 = IMGetXPCDataFromDictionary();
    v21 = IMGetXPCDataFromDictionary();
    v22 = IMGetXPCDataFromDictionary();
    v23 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    MEMORY[0x259C1C9C0](@"IMNickname", @"IMSharedUtilities");
    v24 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v25 = *(a1 + 32);
    if (v25)
    {
      (*(v25 + 16))(v25, v16, v24, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v28 = v7;
        _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "IMTransfer_Nickname - Error reply type in message reply handler: %s", buf, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
      v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0);
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0, 0, 0, 0, 0, 0, 0, v8);
    }
  }

  v26 = *(*(*(a1 + 40) + 8) + 40);
  if (v26)
  {
    xpc_connection_cancel(v26);
    xpc_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

void sub_25487E468(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487E238);
  }

  _Unwind_Resume(a1);
}

void sub_25487E824(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487E874(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v7[0] = 67109378;
        v7[1] = pid;
        v8 = 2080;
        v9 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v7, 0x12u);
      }
    }

    free(v4);
  }
}

void sub_25487E9A0(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v19 = 136315138;
        v20 = string;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error received in message reply handler: %s", &v19, 0xCu);
      }
    }

    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, @"IMTransferServicesErrorDomain", -4, 0);
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v11);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v13 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = v13;
        _os_log_impl(&dword_254879000, v14, OS_LOG_TYPE_INFO, "received reply: %s", &v19, 0xCu);
      }
    }

    free(v13);
    v15 = IMGetXPCBoolFromDictionary();
    v16 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v17 = *(a1 + 32);
    if (v17)
    {
      (*(v17 + 16))(v17, v15, v16);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v19 = 136315138;
        v20 = v7;
        _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error reply type in message reply handler: %s", &v19, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0);
      (*(*(a1 + 32) + 16))();
    }
  }

  v18 = *(*(*(a1 + 40) + 8) + 40);
  if (v18)
  {
    xpc_connection_cancel(v18);
    xpc_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }
}

void sub_25487EC60(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487EB14);
  }

  _Unwind_Resume(a1);
}