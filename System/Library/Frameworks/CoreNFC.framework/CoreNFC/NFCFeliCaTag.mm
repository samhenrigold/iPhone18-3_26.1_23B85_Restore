@interface NFCFeliCaTag
- (id)copyWithZone:(_NSZone *)zone;
- (void)pollingWithSystemCode:(id)code requestCode:(int64_t)requestCode timeSlot:(int64_t)slot completionHandler:(id)handler;
- (void)readWithoutEncryptionWithServiceCodeList:(id)list blockList:(id)blockList completionHandler:(id)handler;
- (void)requestResponseWithCompletionHandler:(id)handler;
- (void)requestServiceV2WithNodeCodeList:(id)list completionHandler:(id)handler;
- (void)requestServiceWithNodeCodeList:(id)list completionHandler:(id)handler;
- (void)requestSpecificationVersionWithCompletionHandler:(id)handler;
- (void)requestSystemCodeWithCompletionHandler:(id)handler;
- (void)resetModeWithCompletionHandler:(id)handler;
- (void)sendFeliCaCommandPacket:(id)packet completionHandler:(id)handler;
- (void)writeWithoutEncryptionWithServiceCodeList:(id)list blockList:(id)blockList blockData:(id)data completionHandler:(id)handler;
@end

@implementation NFCFeliCaTag

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = NFCFeliCaTag;
  return [(NFCTag *)&v4 copyWithZone:zone];
}

- (void)pollingWithSystemCode:(id)code requestCode:(int64_t)requestCode timeSlot:(int64_t)slot completionHandler:(id)handler
{
  slotCopy = slot;
  requestCodeCopy = requestCode;
  codeCopy = code;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag pollingWithSystemCode:requestCode:timeSlot:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  if ([codeCopy length] == 2)
  {
    bytes = [codeCopy bytes];
    LOBYTE(state.opaque[0]) = 0;
    BYTE1(state.opaque[0]) = *bytes;
    v15 = bytes[1];
    BYTE2(state.opaque[0]) = bytes[1];
    BYTE3(state.opaque[0]) = requestCodeCopy;
    BYTE4(state.opaque[0]) = slotCopy;
    if (BYTE1(state.opaque[0]) == 255 || v15 == 255)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2372A7B5C;
      v19[3] = &unk_278A29BE8;
      v19[4] = self;
      v20 = handlerCopy;
      v21 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v19];
      v16 = v20;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&state length:5];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2372A7D28;
      v17[3] = &unk_278A29C10;
      v18 = handlerCopy;
      [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v16 completionHandler:v17];
    }
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2372A7990;
    v22[3] = &unk_278A29BE8;
    v22[4] = self;
    v23 = handlerCopy;
    v24 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v22];
  }
}

- (void)requestServiceWithNodeCodeList:(id)list completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  handlerCopy = handler;
  v9 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestServiceWithNodeCodeList:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([listCopy count] && objc_msgSend(listCopy, "count") < 0x21)
  {
    v20 = a2;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = listCopy;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          if ([v18 length] != 2)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = sub_2372A8434;
            v23[3] = &unk_278A29BE8;
            v23[4] = self;
            v24 = handlerCopy;
            v25 = v20;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v23];

            goto LABEL_5;
          }

          [v11 appendData:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(state.opaque[0]) = 2;
    [v10 appendBytes:&state length:1];
    identifier = [(NFCTag *)self identifier];
    [v10 appendData:identifier];

    LOBYTE(state.opaque[0]) = [v13 count];
    [v10 appendBytes:&state length:1];
    [v10 appendData:v11];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2372A85E4;
    v21[3] = &unk_278A29C10;
    v22 = handlerCopy;
    [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v10 completionHandler:v21];
    v12 = v22;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2372A8284;
    v30[3] = &unk_278A29BE8;
    v30[4] = self;
    v31 = handlerCopy;
    v32 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v30];
    v12 = v31;
  }

LABEL_5:
}

- (void)requestResponseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestResponseWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = 4;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
  identifier = [(NFCTag *)self identifier];
  [v6 appendData:identifier];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372A8940;
  v9[3] = &unk_278A29C10;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)readWithoutEncryptionWithServiceCodeList:(id)list blockList:(id)blockList completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  listCopy = list;
  blockListCopy = blockList;
  handlerCopy = handler;
  v12 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag readWithoutEncryptionWithServiceCodeList:blockList:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  if ([listCopy count] && objc_msgSend(listCopy, "count") < 0x11)
  {
    v31 = a2;
    v13 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = listCopy;
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          if ([v19 length] != 2)
          {
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = sub_2372A910C;
            v41[3] = &unk_278A29BE8;
            v41[4] = self;
            v42 = handlerCopy;
            v43 = v31;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v41];

            v20 = v14;
            goto LABEL_25;
          }

          [v13 appendData:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v29 = handlerCopy;

    v20 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = blockListCopy;
    v21 = blockListCopy;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * j);
          if ([v26 length] != 2 && objc_msgSend(v26, "length") != 3)
          {
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = sub_2372A92C4;
            v34[3] = &unk_278A29BE8;
            handlerCopy = v29;
            v34[4] = self;
            v35 = v29;
            v36 = v31;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v34];

            goto LABEL_24;
          }

          [v20 appendData:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v52 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(state.opaque[0]) = 6;
    v27 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
    identifier = [(NFCTag *)self identifier];
    [v27 appendData:identifier];

    LOBYTE(state.opaque[0]) = [v14 count];
    [v27 appendBytes:&state length:1];
    [v27 appendData:v13];
    LOBYTE(state.opaque[0]) = [v21 count];
    [v27 appendBytes:&state length:1];
    [v27 appendData:v20];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2372A947C;
    v32[3] = &unk_278A29C10;
    handlerCopy = v29;
    v33 = v29;
    [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v27 completionHandler:v32];

LABEL_24:
    blockListCopy = v30;
LABEL_25:
  }

  else
  {
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2372A8F54;
    v48[3] = &unk_278A29BE8;
    v48[4] = self;
    v49 = handlerCopy;
    v50 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v48];
    v13 = v49;
  }
}

- (void)writeWithoutEncryptionWithServiceCodeList:(id)list blockList:(id)blockList blockData:(id)data completionHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
  listCopy = list;
  blockListCopy = blockList;
  dataCopy = data;
  handlerCopy = handler;
  v15 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag writeWithoutEncryptionWithServiceCodeList:blockList:blockData:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[1] = 0;
  state.opaque[0] = 0;
  os_activity_scope_enter(v15, &state);
  os_activity_scope_leave(&state);

  if ([listCopy count] && objc_msgSend(listCopy, "count") < 0x11)
  {
    v17 = [blockListCopy count];
    if (v17 == [dataCopy count])
    {
      if ([blockListCopy count] < 0x100)
      {
        v40 = dataCopy;
        v16 = objc_opt_new();
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = listCopy;
        v18 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v63;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v63 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v62 + 1) + 8 * i);
              if ([v22 length] != 2)
              {
                v59[0] = MEMORY[0x277D85DD0];
                v59[1] = 3221225472;
                v59[2] = sub_2372AA32C;
                v59[3] = &unk_278A29BE8;
                v59[4] = self;
                v60 = handlerCopy;
                v61 = a2;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v59];
                v36 = v60;
                v23 = obj;
                goto LABEL_39;
              }

              [v16 appendData:v22];
            }

            v19 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v23 = objc_opt_new();
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v38 = blockListCopy;
        v41 = blockListCopy;
        v24 = [v41 countByEnumeratingWithState:&v55 objects:v77 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v56;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v56 != v26)
              {
                objc_enumerationMutation(v41);
              }

              v28 = *(*(&v55 + 1) + 8 * j);
              if ([v28 length] != 2 && objc_msgSend(v28, "length") != 3)
              {
                v52[0] = MEMORY[0x277D85DD0];
                v52[1] = 3221225472;
                v52[2] = sub_2372AA4CC;
                v52[3] = &unk_278A29BE8;
                v52[4] = self;
                v53 = handlerCopy;
                v54 = a2;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v52];

                v36 = v41;
                goto LABEL_37;
              }

              [v23 appendData:v28];
            }

            v25 = [v41 countByEnumeratingWithState:&v55 objects:v77 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v37 = objc_opt_new();
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v39 = v40;
        v29 = [v39 countByEnumeratingWithState:&v48 objects:v76 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v49;
          while (2)
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v49 != v31)
              {
                objc_enumerationMutation(v39);
              }

              v33 = *(*(&v48 + 1) + 8 * k);
              if ([v33 length] != 16)
              {
                v45[0] = MEMORY[0x277D85DD0];
                v45[1] = 3221225472;
                v45[2] = sub_2372AA66C;
                v45[3] = &unk_278A29BE8;
                v45[4] = self;
                v46 = handlerCopy;
                v47 = a2;
                [(NFCTag *)self dispatchOnDelegateQueueAsync:v45];

                v36 = v37;
                blockListCopy = v38;
                goto LABEL_39;
              }

              [v23 appendData:v33];
            }

            v30 = [v39 countByEnumeratingWithState:&v48 objects:v76 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        LOBYTE(state.opaque[0]) = 8;
        v34 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
        identifier = [(NFCTag *)self identifier];
        [v34 appendData:identifier];

        LOBYTE(state.opaque[0]) = [obj count];
        [v34 appendBytes:&state length:1];
        [v34 appendData:v16];
        LOBYTE(state.opaque[0]) = [v41 count];
        [v34 appendBytes:&state length:1];
        [v34 appendData:v23];
        v36 = v37;
        [v34 appendData:v37];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = sub_2372AA80C;
        v43[3] = &unk_278A29C10;
        v44 = handlerCopy;
        [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v34 completionHandler:v43];

LABEL_37:
        blockListCopy = v38;
LABEL_39:

        dataCopy = v40;
      }

      else
      {
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = sub_2372AA18C;
        v66[3] = &unk_278A29BE8;
        v66[4] = self;
        v67 = handlerCopy;
        v68 = a2;
        [(NFCTag *)self dispatchOnDelegateQueueAsync:v66];
        v16 = v67;
      }
    }

    else
    {
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_2372A9FEC;
      v69[3] = &unk_278A29BE8;
      v70 = handlerCopy;
      v69[4] = self;
      v71 = a2;
      [(NFCTag *)self dispatchOnDelegateQueueAsync:v69];
      v16 = v70;
    }
  }

  else
  {
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_2372A9E4C;
    v72[3] = &unk_278A29BE8;
    v73 = handlerCopy;
    v72[4] = self;
    v74 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v72];
    v16 = v73;
  }
}

- (void)requestSystemCodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestSystemCodeWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  LOBYTE(state.opaque[0]) = 12;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
  identifier = [(NFCTag *)self identifier];
  [v6 appendData:identifier];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AAA88;
  v9[3] = &unk_278A29C10;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)requestServiceV2WithNodeCodeList:(id)list completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  handlerCopy = handler;
  v9 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestServiceV2WithNodeCodeList:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([listCopy count] && objc_msgSend(listCopy, "count") < 0x21)
  {
    v20 = a2;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = listCopy;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          if ([v18 length] != 2)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = sub_2372AB1E0;
            v23[3] = &unk_278A29BE8;
            v23[4] = self;
            v24 = handlerCopy;
            v25 = v20;
            [(NFCTag *)self dispatchOnDelegateQueueAsync:v23];

            goto LABEL_5;
          }

          [v11 appendData:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(state.opaque[0]) = 50;
    [v10 appendBytes:&state length:1];
    identifier = [(NFCTag *)self identifier];
    [v10 appendData:identifier];

    LOBYTE(state.opaque[0]) = [v13 count];
    [v10 appendBytes:&state length:1];
    [v10 appendData:v11];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2372AB3B8;
    v21[3] = &unk_278A29C10;
    v22 = handlerCopy;
    [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v10 completionHandler:v21];
    v12 = v22;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2372AB008;
    v30[3] = &unk_278A29BE8;
    v30[4] = self;
    v31 = handlerCopy;
    v32 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v30];
    v12 = v31;
  }

LABEL_5:
}

- (void)requestSpecificationVersionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag requestSpecificationVersionWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = objc_opt_new();
  v11 = 60;
  [v6 appendBytes:&v11 length:1];
  identifier = [(NFCTag *)self identifier];
  [v6 appendData:identifier];

  LOWORD(state.opaque[0]) = 0;
  [v6 appendBytes:&state length:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372AB8C0;
  v9[3] = &unk_278A29C10;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)resetModeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag resetModeWithCompletionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = objc_opt_new();
  v11 = 62;
  [v6 appendBytes:&v11 length:1];
  identifier = [(NFCTag *)self identifier];
  [v6 appendData:identifier];

  LOWORD(state.opaque[0]) = 0;
  [v6 appendBytes:&state length:2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2372ABD64;
  v9[3] = &unk_278A29C10;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(NFCFeliCaTag *)self sendFeliCaCommandPacket:v6 completionHandler:v9];
}

- (void)sendFeliCaCommandPacket:(id)packet completionHandler:(id)handler
{
  packetCopy = packet;
  handlerCopy = handler;
  v9 = _os_activity_create(&dword_23728C000, "NFCFeliCaTag sendFeliCaCommandPacket:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  if ([packetCopy length] && objc_msgSend(packetCopy, "length") < 0xFF)
  {
    if (*[packetCopy bytes] || objc_msgSend(packetCopy, "length") == 5)
    {
      LOBYTE(state.opaque[0]) = [packetCopy length] + 1;
      v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&state length:1];
      [v11 appendData:packetCopy];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_2372AC320;
      v12[3] = &unk_278A29C10;
      v13 = handlerCopy;
      [(NFCTag *)self _transceiveWithData:v11 completionHandler:v12];

      goto LABEL_8;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2372AC2A0;
    v14[3] = &unk_278A29C38;
    v15 = handlerCopy;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v14];
    v10 = v15;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2372AC0F0;
    v16[3] = &unk_278A29BE8;
    v16[4] = self;
    v17 = handlerCopy;
    v18 = a2;
    [(NFCTag *)self dispatchOnDelegateQueueAsync:v16];
    v10 = v17;
  }

LABEL_8:
}

@end