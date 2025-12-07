@interface DTXMachTransport
+ (id)_legacyFileDescriptorHandshakeWithReceivePort:(unsigned int)port;
+ (id)_legacyFileDescriptorHandshakeWithSendPort:(unsigned int)port;
+ (id)fileDescriptorHandshakeWithReceivePort:(unsigned int)port;
+ (id)fileDescriptorHandshakeWithSendPort:(unsigned int)port;
- (BOOL)_setupWithSendPort:(unsigned int)port receivePort:(unsigned int)receivePort disconnectBlock:(id)block;
- (DTXMachTransport)initWithReceiveRight:(unsigned int)right sendRight:(unsigned int)sendRight disconnectBlock:(id)block;
- (DTXMachTransport)initWithRemoteAddress:(id)address;
- (DTXMachTransport)initWithXPCRepresentation:(id)representation;
- (id)localAddresses;
- (id)serializedXPCRepresentation;
- (unint64_t)transmit:(const void *)transmit ofLength:(unint64_t)length;
- (void)dealloc;
- (void)disconnect;
@end

@implementation DTXMachTransport

- (BOOL)_setupWithSendPort:(unsigned int)port receivePort:(unsigned int)receivePort disconnectBlock:(id)block
{
  v5 = *&receivePort;
  v6 = *&port;
  v8 = port - 1 >= 0xFFFFFFFE || receivePort - 1 >= 0xFFFFFFFE;
  v9 = !v8;
  if (v8)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    NSLog(&cfstr_InvalidPortsPr.isa, v23, v24, v6, v5);
  }

  else
  {
    self->_sendPort = port;
    self->_receivePort = receivePort;
    v10 = MEMORY[0x24C1C0D80](block, a2);
    disconnectBlock = self->_disconnectBlock;
    self->_disconnectBlock = v10;

    v12 = dispatch_source_create(MEMORY[0x277D85D08], self->_receivePort, 0, self->_inputQueue);
    listenSource = self->_listenSource;
    self->_listenSource = v12;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_247F3FE4C;
    v27[3] = &unk_278EEE708;
    v27[4] = self;
    v14 = MEMORY[0x24C1C0D80](v27);
    v15 = MEMORY[0x24C1C0D80]();
    inputReaderBlock = self->_inputReaderBlock;
    self->_inputReaderBlock = v15;

    dispatch_source_set_event_handler(self->_listenSource, self->_inputReaderBlock);
    dispatch_resume(self->_listenSource);
    v17 = dispatch_source_create(MEMORY[0x277D85D10], self->_sendPort, 1uLL, self->_inputQueue);
    deadPortSource = self->_deadPortSource;
    self->_deadPortSource = v17;

    v19 = self->_deadPortSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_247F3FFA4;
    handler[3] = &unk_278EEE708;
    handler[4] = self;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(self->_deadPortSource);
    objc_msgSend_setStatus_(self, v20, 1);
  }

  return v9;
}

- (DTXMachTransport)initWithReceiveRight:(unsigned int)right sendRight:(unsigned int)sendRight disconnectBlock:(id)block
{
  v5 = *&sendRight;
  v6 = *&right;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = DTXMachTransport;
  v9 = [(DTXTransport *)&v13 init];
  v10 = v9;
  if (v9)
  {
    sub_247F400FC(v9);
    if ((objc_msgSend__setupWithSendPort_receivePort_disconnectBlock_(v10, v11, v5, v6, blockCopy) & 1) == 0)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (DTXMachTransport)initWithRemoteAddress:(id)address
{
  v87 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v83.receiver = self;
  v83.super_class = DTXMachTransport;
  v6 = [(DTXTransport *)&v83 initWithRemoteAddress:addressCopy];
  v7 = v6;
  if (v6)
  {
    sub_247F400FC(v6);
    v10 = objc_msgSend_host(addressCopy, v8, v9);
    v13 = objc_msgSend_intValue(v10, v11, v12);

    p_sendPort = &v7->_sendPort;
    v7->_sendPort = 0;
    p_receivePort = &v7->_receivePort;
    v7->_receivePort = 0;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v18 = objc_msgSend_pathComponents(addressCopy, v16, v17);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v79, v86, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v80;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v80 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_intValue(*(*(&v79 + 1) + 8 * i), v21, v22);
          if (v26 - 1 <= 0xFFFFFFFD)
          {
            v27 = &v7->_sendPort;
            if (*p_sendPort + 1 < 2 || (v27 = &v7->_receivePort, *p_receivePort + 1 <= 1))
            {
              *v27 = v26;
            }
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v79, v86, 16);
      }

      while (v23);
    }

    if (*p_sendPort + 1 < 2 || *p_receivePort + 1 <= 1)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      NSLog(&cfstr_InvalidPortsIn.isa, v29, v30, addressCopy);

LABEL_16:
LABEL_17:
      v7 = 0;
      goto LABEL_18;
    }

    v32 = getpid();
    v33 = v32;
    v34 = *MEMORY[0x277D85F48];
    task = *MEMORY[0x277D85F48];
    if (v13 == v32)
    {
      v74 = v32;
      v75 = v13;
      v35 = v34;
    }

    else
    {
      if (task_for_pid(v34, v13, &task))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        NSLog(&cfstr_UnableToConnec.isa, v37, v38, v13, addressCopy);

        goto LABEL_16;
      }

      v74 = v33;
      v75 = v13;
      v35 = task;
      LODWORD(v34) = *MEMORY[0x277D85F48];
    }

    v39 = *p_receivePort;
    *p_receivePort = 0;
    *poly = 0;
    name = 0;
    is_self = mach_task_is_self(v35);
    if (is_self)
    {
      v72 = is_self;
      poly[1] = v39;
      v41 = 16;
    }

    else
    {
      v45 = MEMORY[0x24C1C09C0](v35, v39, 16, &poly[1], poly);
      if (v45)
      {
        goto LABEL_45;
      }

      v72 = 0;
      v41 = poly[0];
    }

    if (mach_task_is_self(v34))
    {
      v42 = poly[1];
      name = poly[1];
      if (v41 - 19 > 0xFFFFFFFC)
      {
LABEL_36:
        *p_receivePort = v42;
        if (v42 - 1 <= 0xFFFFFFFD)
        {
          goto LABEL_46;
        }

        v45 = 5;
LABEL_45:
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(a2);
        v52 = mach_error_string(v45);
        NSLog(&cfstr_UnableToExtrac.isa, v50, v51, v75, v52, v45);

LABEL_46:
        v53 = task;
        v54 = *MEMORY[0x277D85F48];
        v55 = *p_sendPort;
        *p_sendPort = 0;
        *poly = 0;
        v56 = mach_task_is_self(v53);
        if (v56)
        {
          v73 = v56;
          poly[1] = v55;
          v57 = 17;
        }

        else
        {
          v61 = MEMORY[0x24C1C09C0](v53, v55, 17, &poly[1], poly);
          if (v61)
          {
            goto LABEL_68;
          }

          v73 = 0;
          v57 = poly[0];
        }

        if (mach_task_is_self(v54))
        {
          v58 = poly[1];
          name = poly[1];
          if (v57 - 19 > 0xFFFFFFFC)
          {
LABEL_58:
            *p_sendPort = v58;
            if (v58 - 1 <= 0xFFFFFFFD)
            {
              v64 = v75;
LABEL_69:
              if (v64 != v74)
              {
                mach_port_deallocate(*MEMORY[0x277D85F48], task);
              }

              v76[0] = MEMORY[0x277D85DD0];
              v76[1] = 3221225472;
              v76[2] = sub_247F40868;
              v76[3] = &unk_278EEE708;
              v7 = v7;
              v77 = v7;
              v70 = MEMORY[0x24C1C0D80](v76);
              if (objc_msgSend__setupWithSendPort_receivePort_disconnectBlock_(v7, v71, *p_sendPort, *p_receivePort, v70))
              {

                goto LABEL_18;
              }

              v70[2](v70);

              goto LABEL_17;
            }

            v61 = 5;
LABEL_68:
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            v68 = NSStringFromSelector(a2);
            v69 = mach_error_string(v61);
            v64 = v75;
            NSLog(&cfstr_UnableToExtrac_0.isa, v67, v68, v75, v69, v61);

            goto LABEL_69;
          }

          v59 = v54;
          v60 = poly[1];
        }

        else
        {
          if (v53 != v54)
          {
            while (1)
            {
              name = 0;
              v65 = mach_port_allocate(v54, 4u, &name);
              if (v65)
              {
                break;
              }

              v65 = mach_port_deallocate(v54, name);
              if (v65)
              {
                break;
              }

              inserted = mach_port_insert_right(v54, name, poly[1], v57);
              if ((inserted & 0xFFFFFFF7) != 5)
              {
                goto LABEL_56;
              }
            }

            v61 = v65;
            v63 = v73;
            goto LABEL_66;
          }

          name = v55;
          v60 = poly[1];
          v59 = v53;
          v58 = v55;
        }

        inserted = mach_port_insert_right(v59, v58, v60, v57);
LABEL_56:
        v61 = inserted;
        v63 = v73;
        if (!inserted)
        {
          v58 = name;
          goto LABEL_58;
        }

LABEL_66:
        if (!v63)
        {
          mach_port_mod_refs(*MEMORY[0x277D85F48], poly[1], poly[0], -1);
        }

        goto LABEL_68;
      }

      v43 = v34;
      v44 = poly[1];
    }

    else
    {
      if (v35 != v34)
      {
        while (1)
        {
          name = 0;
          v48 = mach_port_allocate(v34, 4u, &name);
          if (v48)
          {
            break;
          }

          v48 = mach_port_deallocate(v34, name);
          if (v48)
          {
            break;
          }

          v46 = mach_port_insert_right(v34, name, poly[1], v41);
          if ((v46 & 0xFFFFFFF7) != 5)
          {
            goto LABEL_34;
          }
        }

        v45 = v48;
        v47 = v72;
        goto LABEL_43;
      }

      name = v39;
      v44 = poly[1];
      v43 = v34;
      v42 = v39;
    }

    v46 = mach_port_insert_right(v43, v42, v44, v41);
LABEL_34:
    v45 = v46;
    v47 = v72;
    if (!v46)
    {
      v42 = name;
      goto LABEL_36;
    }

LABEL_43:
    if (!v47)
    {
      mach_port_mod_refs(*MEMORY[0x277D85F48], poly[1], poly[0], -1);
    }

    goto LABEL_45;
  }

LABEL_18:

  return v7;
}

- (DTXMachTransport)initWithXPCRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = DTXMachTransport;
  v5 = [(DTXTransport *)&v13 initWithXPCRepresentation:representationCopy];
  v6 = v5;
  if (v5)
  {
    sub_247F400FC(v5);
    v6->_sendPort = xpc_dictionary_copy_mach_send();
    v6->_receivePort = xpc_dictionary_extract_mach_recv();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247F40A44;
    v11[3] = &unk_278EEE708;
    v7 = v6;
    v12 = v7;
    v8 = MEMORY[0x24C1C0D80](v11);
    if ((objc_msgSend__setupWithSendPort_receivePort_disconnectBlock_(v7, v9, v6->_sendPort, v6->_receivePort, v8) & 1) == 0)
    {
      v8[2](v8);

      v7 = 0;
    }

    v6 = v7;
  }

  return v6;
}

- (id)serializedXPCRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247F40BCC;
  v10 = sub_247F40BDC;
  v11 = 0;
  outputQueue = self->_outputQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F40BE4;
  v5[3] = &unk_278EEE668;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(outputQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  sendBuffer = self->_sendBuffer;
  if (sendBuffer)
  {
    free(sendBuffer);
    self->_sendBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = DTXMachTransport;
  [(DTXTransport *)&v4 dealloc];
}

- (unint64_t)transmit:(const void *)transmit ofLength:(unint64_t)length
{
  if (self->_sendPort + 1 >= 2)
  {
    lengthCopy = length;
    transmitCopy = transmit;
    v5 = 0;
    bufferedLength = self->_bufferedLength;
    do
    {
      if (lengthCopy >= 32672 - bufferedLength)
      {
        v9 = 32672 - bufferedLength;
      }

      else
      {
        v9 = lengthCopy;
      }

      memcpy(&self->_sendBuffer->var1[bufferedLength], transmitCopy, v9);
      bufferedLength = self->_bufferedLength + v9;
      self->_bufferedLength = bufferedLength;
      if (!lengthCopy || bufferedLength == 32672)
      {
        sendBuffer = self->_sendBuffer;
        *&sendBuffer->var0.var0.var0 = 0;
        *&sendBuffer->var0.var0.var2 = 0;
        sendBuffer->var0.var1 = 0;
        *&sendBuffer->var0.var0.var4 = 0;
        v11 = self->_sendBuffer;
        v11->msgh_remote_port = self->_sendPort;
        v11->msgh_bits = 19;
        LODWORD(sendBuffer) = self->_bufferedLength;
        v11[1].msgh_bits = sendBuffer;
        if (mach_msg(v11, 1, (sendBuffer + 35) & 0xFFFFFFF8, 0, 0, 0, 0))
        {
          goto LABEL_3;
        }

        bufferedLength = 0;
        self->_bufferedLength = 0;
      }

      transmitCopy += v9;
      v5 += v9;
      lengthCopy -= v9;
    }

    while (lengthCopy);
  }

  else
  {
    v5 = 0;
LABEL_3:
    objc_msgSend_disconnect(self, a2, transmit, length);
  }

  return v5;
}

- (void)disconnect
{
  listenSource = self->_listenSource;
  if (listenSource)
  {
    dispatch_source_cancel(listenSource);
  }

  inputQueue = self->_inputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F40FC4;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(inputQueue, block);
  v7.receiver = self;
  v7.super_class = DTXMachTransport;
  [(DTXTransport *)&v7 disconnect];
  outputQueue = self->_outputQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F4102C;
  v6[3] = &unk_278EEE708;
  v6[4] = self;
  dispatch_async(outputQueue, v6);
}

- (id)localAddresses
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = getpid();
  v4 = MEMORY[0x277CBEBC0];
  v6 = objc_msgSend_stringByAppendingFormat_(@"mach", v5, @"://%d/%d/%d", v3, self->_receivePort, self->_sendPort);
  v8 = objc_msgSend_URLWithString_(v4, v7, v6);

  v12[0] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v12, 1);

  return v10;
}

+ (id)fileDescriptorHandshakeWithReceivePort:(unsigned int)port
{
  v48 = *MEMORY[0x277D85DE8];
  v23 = -1;
  v24 = -1;
  if (port - 1 >= 0xFFFFFFFE)
  {
    v6 = 1;
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v26 = sub_247F426CC;
    v27 = &unk_278EEE7C8;
    v28 = &v31;
    v29 = &v24;
    v30 = &v23;
    v5 = v25;
    bzero(&msg, 0x324uLL);
    if (mach_msg(&msg, 2, 0, 0x324u, port, 0, 0) || msg_20 == 70)
    {
      LODWORD(v38[0]) = 0;
      LODWORD(v37[0]) = 4;
      (v26)(v5, 0, v38, v37, 0);
    }

    else if (v47[191] + msg_4 == 804 && (HIDWORD(msg_20) - 65) > 0xFFFFFFBF)
    {
      v14 = 0;
      v15 = msg;
      memset(v38, 0, sizeof(v38));
      v16 = 4 * HIDWORD(msg_20);
      v17 = v47;
      memset(v37, 0, sizeof(v37));
      while (1)
      {
        v18 = *v17;
        if (HIBYTE(*v17))
        {
          break;
        }

        v19 = v18 - 1441792;
        v20 = v18 & 0xFF0000;
        v21 = v19 >= 0xFFFB0000 || v20 == 0x100000;
        if (v21 && (v15 & 0x80000000) == 0)
        {
          break;
        }

        v22 = 4 * (v19 < 0xFFFB0000);
        if (v20 == 0x100000)
        {
          v22 = 1;
        }

        *(v38 + v14) = *(v17 - 2);
        if (v15 >= 0)
        {
          v22 = 6;
        }

        *(v37 + v14) = v22;
        v14 += 4;
        v17 += 3;
        if (v16 == v14)
        {
          goto LABEL_32;
        }
      }

      v35 = 4;
      v36 = 0;
LABEL_32:
      (v26)(v5);
      mach_msg_destroy(&msg);
    }

    else
    {
      LODWORD(v38[0]) = 0;
      LODWORD(v37[0]) = 4;
      (v26)(v5, 0, v38, v37, 0);
      mach_msg_destroy(&msg);
    }

    v6 = *(v32 + 6);
    _Block_object_dispose(&v31, 8);
    if (!v6)
    {
      v12 = [DTXFileDescriptorTransport alloc];
      v10 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v12, v13, v24, MEMORY[0x277D85DD0], 3221225472, sub_247F4161C, &unk_278EEE728, __PAIR64__(v23, v24));
      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = getprogname();
    v8 = getpid();
    Name = sel_getName(a2);
    msg = 136315906;
    msg_4 = v7;
    msg_12 = 1024;
    msg_14 = v8;
    msg_18 = 2082;
    msg_20 = Name;
    v45 = 1024;
    v46 = v6;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s(%d) [error]: '%{public}s' failed: (%d)\n", &msg, 0x22u);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

+ (id)fileDescriptorHandshakeWithSendPort:(unsigned int)port
{
  v56 = *MEMORY[0x277D85DE8];
  if (port - 1 >= 0xFFFFFFFE)
  {
    v5 = 1;
    goto LABEL_21;
  }

  *v38 = -1;
  *v39 = -1;
  if (pipe(v38) || pipe(v39))
  {
    *name = 0;
    v5 = 6;
    goto LABEL_5;
  }

  *name = 0;
  if (fileport_makeport() || fileport_makeport())
  {
    v16 = 6;
  }

  else
  {
    v16 = 0;
  }

  if (name[0] - 1 >= 0xFFFFFFFE || name[1] - 1 >= 0xFFFFFFFE)
  {
    v5 = 15;
  }

  else
  {
    v5 = v16;
  }

  if (v38[0] < 0)
  {
    v5 = 29;
LABEL_7:
    v6 = 0xFFFFFFFFLL;
    v7 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (fcntl(v38[0], 2, 1) == -1 || v38[1] < 0 || fcntl(v38[1], 2, 1) == -1)
  {
    v5 = 29;
LABEL_5:
    if ((v38[0] & 0x80000000) == 0)
    {
      close(v38[0]);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    goto LABEL_5;
  }

  v19 = name[0];
  v18 = name[1];
  v35 = 19;
  v36 = 19;
  bzero(buf, 0x31CuLL);
  v20 = 0;
  LODWORD(v49) = 796;
  HIDWORD(v49) = port;
  HIDWORD(v53) = 2;
  v21 = 5139;
  v22 = &v36;
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = &v54 + 6 * v20;
    *v25 = v19;
    v26 = *v22;
    if (v26)
    {
      v21 |= 0x80000000;
    }

    v25[5] = v26;
    v22 = &v35;
    v19 = v18;
    v20 = 1;
    v23 = 0;
  }

  while ((v24 & 1) != 0);
  *buf = v21;
  v27 = mach_msg_send(buf);
  if (v27)
  {
    v28 = v27;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v29 = getprogname();
      v30 = getpid();
      v31 = mach_error_string(v28);
      *v40 = 136315906;
      v41 = v29;
      v42 = 1024;
      v43 = v30;
      v44 = 2080;
      v45 = v31;
      v46 = 1024;
      v47 = v28;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_msg_send' failed: %s (%d)\n", v40, 0x22u);
    }

    v5 = 5;
    goto LABEL_5;
  }

  v5 = 0;
  v6 = v38[0];
  v7 = v39[1];
  v38[0] = -1;
  v39[1] = -1;
LABEL_8:
  if ((v38[1] & 0x80000000) == 0)
  {
    close(v38[1]);
  }

  if ((v39[0] & 0x80000000) == 0)
  {
    close(v39[0]);
  }

  if ((v39[1] & 0x80000000) == 0)
  {
    close(v39[1]);
  }

  v8 = MEMORY[0x277D85F48];
  if (name[1] - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], name[1]);
  }

  if (name[0] - 1 <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*v8, name[0]);
  }

  if (!v5)
  {
    v9 = [DTXFileDescriptorTransport alloc];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_247F41A54;
    v32[3] = &unk_278EEE728;
    v33 = v6;
    v34 = v7;
    v11 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v9, v10, v6, v7, v32);
    goto LABEL_24;
  }

LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = getprogname();
    v13 = getpid();
    v14 = sel_getName(a2);
    *buf = 136315906;
    v49 = v12;
    v50 = 1024;
    v51 = v13;
    v52 = 2082;
    v53 = v14;
    v54 = 1024;
    v55 = v5;
    _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s(%d) [error]: '%{public}s' failed: (%d)\n", buf, 0x22u);
  }

  v11 = 0;
LABEL_24:

  return v11;
}

+ (id)_legacyFileDescriptorHandshakeWithReceivePort:(unsigned int)port
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_247F41DFC;
  v13[3] = &unk_278EEE750;
  v13[4] = &v14;
  v3 = sub_247F41C04(port, v13);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    if ((v15[3] & 0x80000000) == 0)
    {
      v5 = [DTXFileDescriptorTransport alloc];
      v6 = *(v15 + 6);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_247F420C4;
      v11[3] = &unk_278EEE778;
      v11[4] = &v14;
      v12 = v4;
      v8 = objc_msgSend_initWithIncomingFileDescriptor_outgoingFileDescriptor_disconnectBlock_(v5, v7, v6, v4, v11);
      goto LABEL_8;
    }

    close(v3);
  }

  v9 = *(v15 + 6);
  if ((v9 & 0x80000000) == 0)
  {
    close(v9);
  }

  v8 = 0;
LABEL_8:
  _Block_object_dispose(&v14, 8);

  return v8;
}

+ (id)_legacyFileDescriptorHandshakeWithSendPort:(unsigned int)port
{
  v43 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_247F40BCC;
  v30 = sub_247F40BDC;
  v31 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_247F424F4;
  v24[3] = &unk_278EEE7A0;
  portCopy = port;
  v24[4] = &v26;
  v4 = v24;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v33 = sub_247F42878;
  v34 = &unk_278EEE818;
  portCopy2 = port;
  v5 = v4;
  v35 = v5;
  v6 = v32;
  name[0] = 0;
  v7 = MEMORY[0x277D85F48];
  v8 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, name);
  if (v8)
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = getprogname();
      v12 = getpid();
      v13 = mach_error_string(v8);
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = v12;
      *&buf[18] = 2080;
      *&buf[20] = v13;
      *&buf[28] = 1024;
      *&buf[30] = v8;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_allocate' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  inserted = mach_port_insert_right(*v7, name[0], name[0], 0x14u);
  if (inserted)
  {
    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = getprogname();
      v18 = getpid();
      v19 = mach_error_string(inserted);
      *buf = 136315906;
      *&buf[4] = v17;
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2080;
      *&buf[20] = v19;
      *&buf[28] = 1024;
      *&buf[30] = inserted;
      _os_log_impl(&dword_247F3D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_insert_right' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  v20 = name[0];
  *name = 0;
  v38 = name;
  v39 = 0x2020000000;
  v40 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_247F42940;
  *&buf[24] = &unk_278EEE778;
  *&buf[32] = name;
  v42 = v20;
  v21 = MEMORY[0x24C1C0D80](buf);
  v33(v6, v20, v21);
  v21[2](v21);

  _Block_object_dispose(name, 8);
  v22 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v22;
}

@end