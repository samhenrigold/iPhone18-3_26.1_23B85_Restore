@interface NEIKEv2InformationalPacket
+ (NSObject)createDeleteResponse:(void *)response child:;
+ (NSObject)createInformationalResponse:(void *)response ikeSA:;
- (uint64_t)isDeleteChild;
- (uint64_t)isDeleteIKE;
- (uint64_t)isMOBIKE;
- (uint64_t)validateDeleteChild:(uint64_t)child;
- (uint64_t)validateUpdateAddresses:(void *)addresses;
- (void)filloutPayloads;
- (void)gatherPayloads;
@end

@implementation NEIKEv2InformationalPacket

+ (NSObject)createDeleteResponse:(void *)response child:
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  responseCopy = response;
  objc_opt_self();
  if (responseCopy)
  {
    v6 = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initResponse:v4];
    if (v6)
    {
      v7 = objc_alloc_init(NEIKEv2DeletePayload);
      protocol = [responseCopy protocol];
      if (v7)
      {
        v7->_protocol = protocol;
      }

      v17 = responseCopy;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      if (v7)
      {
        objc_setProperty_atomic(v7, v9, v10, 40);
      }

      if (([(NEIKEv2Payload *)v7 isValid]& 1) != 0)
      {
        v16 = v7;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
        objc_setProperty_atomic(v6, v12, v11, 88);

        v13 = v6;
LABEL_12:

        goto LABEL_13;
      }

      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v19 = "+[NEIKEv2InformationalPacket(Exchange) createDeleteResponse:child:]";
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "%s called with null delete.isValid", buf, 0xCu);
      }
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, &v7->super.super, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v19 = "+[NEIKEv2InformationalPacket(Exchange) createDeleteResponse:child:]";
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null childSPI", buf, 0xCu);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (uint64_t)validateDeleteChild:(uint64_t)child
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (child)
  {
    if (v3)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = objc_getProperty(child, v4, 88, 1);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v9 = v7;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v6);
            }

            Property = *(*(&v16 + 1) + 8 * i);
            if (Property)
            {
              Property = objc_getProperty(Property, v8, 40, 1);
            }

            v13 = Property;
            v14 = [v13 containsObject:{v5, v16}];

            if (v14)
            {

              child = 1;
              goto LABEL_16;
            }
          }

          v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      child = 0;
    }

    else
    {
      child = [(NEIKEv2InformationalPacket *)child isDeleteChild];
    }
  }

LABEL_16:

  return child;
}

+ (NSObject)createInformationalResponse:(void *)response ikeSA:
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a2;
  responseCopy = response;
  objc_opt_self();
  v7 = [(NEIKEv2Packet *)[NEIKEv2InformationalPacket alloc] initResponse:v4];
  if (!v7)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "[[NEIKEv2InformationalPacket alloc] initOutbound:] failed", buf, 2u);
    }

    goto LABEL_49;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (v4)
  {
    Property = objc_getProperty(v4, v6, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  v10 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v52;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        if (v15)
        {
          v12 |= (*(v15 + 32) & 0xFFFELL) == 16388;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (![(NEIKEv2Packet *)v4 hasNotification:?])
  {
LABEL_34:
    if (v12)
    {
      initiatorSPI = [(NEIKEv2IKESA *)responseCopy initiatorSPI];
      responderSPI = [(NEIKEv2IKESA *)responseCopy responderSPI];
      if (responseCopy)
      {
        v38 = objc_getProperty(responseCopy, v36, 64, 1);
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v16 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v39];

      if (![(NEIKEv2Packet *)v7 addNotification:v16 data:?])
      {
        ErrorInternal = ne_log_obj();
        if (os_log_type_enabled(ErrorInternal, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, ErrorInternal, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionSourceIP] failed", buf, 2u);
        }

        goto LABEL_48;
      }

      initiatorSPI2 = [(NEIKEv2IKESA *)responseCopy initiatorSPI];
      responderSPI2 = [(NEIKEv2IKESA *)responseCopy responderSPI];
      if (responseCopy)
      {
        v45 = objc_getProperty(responseCopy, v43, 72, 1);
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;
      ErrorInternal = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v46];

      if (![(NEIKEv2Packet *)v7 addNotification:ErrorInternal data:?])
      {
        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_FAULT, "[packet addNotification:NEIKEv2NotifyTypeNATDetectionDestinationIP] failed", buf, 2u);
        }

        goto LABEL_48;
      }
    }

    v47 = v7;
    goto LABEL_50;
  }

  if (responseCopy)
  {
    v18 = responseCopy[18];
  }

  else
  {
    v18 = 0;
  }

  v16 = ne_log_obj();
  v19 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if ((v18 & 1) == 0)
  {
    if (v19)
    {
      copyShortDescription = [(NEIKEv2Packet *)v4 copyShortDescription];
      *buf = 138412290;
      v56 = copyShortDescription;
      _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "%@ Ignoring request for device identity as peer is not authenticated", buf, 0xCu);
    }

    goto LABEL_33;
  }

  if (v19)
  {
    copyShortDescription2 = [(NEIKEv2Packet *)v4 copyShortDescription];
    *buf = 138412290;
    v56 = copyShortDescription2;
    _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "%@ Received request for device identity", buf, 0xCu);
  }

  copyDeviceIdentityNotifyPayload = [(NEIKEv2IKESA *)responseCopy copyDeviceIdentityNotifyPayload];
  if (!copyDeviceIdentityNotifyPayload)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      copyShortDescription3 = [(NEIKEv2Packet *)v4 copyShortDescription];
      *buf = 138412290;
      v56 = copyShortDescription3;
      _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "%@ Failed to get device identity payload", buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_33;
  }

  v16 = copyDeviceIdentityNotifyPayload;
  if ([(NEIKEv2Packet *)v7 addNotification:copyDeviceIdentityNotifyPayload data:?])
  {
LABEL_33:

    goto LABEL_34;
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "[packet addNotifyPayload:notifyPayload] failed", buf, 2u);
  }

  ErrorInternal = NEIKEv2CreateErrorInternal(@"[packet addNotification:NEIKEv2NotifyTypeDeviceIdentity] failed", v24, v25, v26, v27, v28, v29, v30, v51);
  [(NEIKEv2IKESA *)responseCopy setState:ErrorInternal error:?];
LABEL_48:

LABEL_49:
  v47 = 0;
LABEL_50:

  return v47;
}

- (uint64_t)validateUpdateAddresses:(void *)addresses
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (!addresses)
  {
    v36 = 0;
    goto LABEL_37;
  }

  if (!v3)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v58 = "[NEIKEv2InformationalPacket(Exchange) validateUpdateAddresses:]";
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
    }

LABEL_22:
    v36 = 0;
    goto LABEL_36;
  }

  if ([(NEIKEv2Packet *)addresses hasErrors])
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = objc_getProperty(addresses, v6, 64, 1);
    v8 = [v7 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v54;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v54 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v53 + 1) + 8 * i);
          if (v12 && v12[1].isa - 1 <= 0x3FFE)
          {
            copyError = [(NEIKEv2NotifyPayload *)v12 copyError];
            v35 = ne_log_obj();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              copyShortDescription = [(NEIKEv2Packet *)addresses copyShortDescription];
              *buf = 138412546;
              v58 = copyShortDescription;
              v59 = 2112;
              v60 = copyError;
              _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "%@ Update addresses received notify error %@", buf, 0x16u);
            }

            [(NEIKEv2IKESA *)v5 setState:copyError error:?];
            goto LABEL_22;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v7 = [(NEIKEv2Packet *)addresses copyNotification:?];
  v13 = [(NEIKEv2Packet *)addresses copyNotification:?];
  v15 = v13;
  if (v7 && v13)
  {
    initiatorSPI = [(NEIKEv2IKESA *)v5 initiatorSPI];
    responderSPI = [(NEIKEv2IKESA *)v5 responderSPI];
    v20 = objc_getProperty(v5, v19, 72, 1);
    v21 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI responderSPI:responderSPI address:v20];

    initiatorSPI2 = [(NEIKEv2IKESA *)v5 initiatorSPI];
    responderSPI2 = [(NEIKEv2IKESA *)v5 responderSPI];
    v27 = objc_getProperty(v5, v26, 64, 1);
    v28 = [NEIKEv2Crypto createNATDetectionHashForInitiatorSPI:initiatorSPI2 responderSPI:responderSPI2 address:v27];

    v30 = objc_getProperty(v7, v29, 40, 1);
    LOBYTE(responderSPI2) = [v21 isEqualToData:v30];

    if (responderSPI2)
    {
      v5[15] = 0;
      v31 = ne_log_obj();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      copyShortDescription2 = [(NEIKEv2Packet *)addresses copyShortDescription];
      *buf = 138412290;
      v58 = copyShortDescription2;
      v33 = "%@ Detected no incoming NAT";
    }

    else
    {
      v5[15] = 1;
      v31 = ne_log_obj();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      copyShortDescription2 = [(NEIKEv2Packet *)addresses copyShortDescription];
      *buf = 138412290;
      v58 = copyShortDescription2;
      v33 = "%@ Detected incoming NAT";
    }

    _os_log_debug_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_DEBUG, v33, buf, 0xCu);

LABEL_24:
    v38 = objc_getProperty(v15, v37, 40, 1);
    v39 = [v28 isEqualToData:v38];

    if (v39)
    {
      v5[14] = 0;
      v40 = ne_log_obj();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      copyShortDescription3 = [(NEIKEv2Packet *)addresses copyShortDescription];
      *buf = 138412290;
      v58 = copyShortDescription3;
      v42 = "%@ Detected no outgoing NAT";
    }

    else
    {
      v5[14] = 1;
      v40 = ne_log_obj();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_28;
      }

      copyShortDescription3 = [(NEIKEv2Packet *)addresses copyShortDescription];
      *buf = 138412290;
      v58 = copyShortDescription3;
      v42 = "%@ Detected outgoing NAT";
    }

    _os_log_debug_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_DEBUG, v42, buf, 0xCu);

LABEL_28:
    v44 = objc_getProperty(v5, v43, 80, 1);
    if ([v44 disableSwitchToNATTPorts])
    {
    }

    else
    {
      v47 = objc_getProperty(v5, v45, 88, 1);
      if ([v47 negotiateMOBIKE] & 1) != 0 || (v5[15])
      {
      }

      else
      {
        v51 = v5[14];

        if ((v51 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      [(NEIKEv2IKESA *)v5 switchToNATTraversalPorts];
    }

LABEL_34:
    v48 = objc_getProperty(v15, v46, 40, 1);
    objc_setProperty_atomic(v5, v49, v48, 504);
  }

  v36 = 1;
LABEL_36:

LABEL_37:
  return v36;
}

- (void)filloutPayloads
{
  v48 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (self)
  {
    rawPayloads = self->super._rawPayloads;
  }

  else
  {
    rawPayloads = 0;
  }

  v4 = rawPayloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v37;
    v9 = &OBJC_IVAR___NEFilterFlow__direction;
    v10 = 0x1E695D000uLL;
    v11 = &OBJC_IVAR___NEFilterFlow__direction;
    *&v6 = 138412546;
    v34 = v6;
    v35 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        type = [v13 type];
        switch(type)
        {
          case '/':
            if (self)
            {
              objc_setProperty_atomic(self, v15, v13, v9[610]);
            }

            break;
          case '*':
            v17 = v13;
            if (self && objc_getProperty(self, v21, v11[609], 1))
            {
              v20 = [objc_getProperty(self v22];
            }

            else
            {
              v45 = v17;
              v20 = [*(v10 + 3784) arrayWithObjects:&v45 count:1];
              if (!self)
              {
                goto LABEL_33;
              }
            }

            v31 = v11[609];
            selfCopy3 = self;
            v33 = v20;
            goto LABEL_32;
          case ')':
            v17 = v13;
            if (self && objc_getProperty(self, v16, 64, 1))
            {
              v20 = [objc_getProperty(self v18];
            }

            else
            {
              v46 = v17;
              v20 = [*(v10 + 3784) arrayWithObjects:&v46 count:1];
              if (!self)
              {
                goto LABEL_33;
              }
            }

            selfCopy3 = self;
            v33 = v20;
            v31 = 64;
            goto LABEL_32;
          default:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v13;
              if (self && objc_getProperty(self, v23, 56, 1))
              {
                v20 = [objc_getProperty(self v24];
                goto LABEL_31;
              }

              v44 = v17;
              v20 = [*(v10 + 3784) arrayWithObjects:&v44 count:1];
              if (self)
              {
LABEL_31:
                selfCopy3 = self;
                v33 = v20;
                v31 = 56;
LABEL_32:
                objc_setProperty_atomic(selfCopy3, v19, v33, v31);
              }

LABEL_33:

              continue;
            }

            v25 = ne_log_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = v11;
              v27 = v10;
              v28 = v9;
              copyShortDescription = [(NEIKEv2Packet *)self copyShortDescription];
              typeDescription = [v13 typeDescription];
              *buf = v34;
              v41 = copyShortDescription;
              v42 = 2112;
              v43 = typeDescription;
              _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "%@ ignoring unexpected %@ payload", buf, 0x16u);

              v9 = v28;
              v10 = v27;
              v11 = v26;
              v4 = v35;
            }

            break;
        }
      }

      v7 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v7);
  }
}

- (void)gatherPayloads
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self)
  {
    [v8 addObjectsFromArray:{objc_getProperty(self, v3, 64, 1)}];
    [v8 addObjectsFromArray:{objc_getProperty(self, v4, 88, 1)}];
    if (objc_getProperty(self, v5, 96, 1))
    {
      [v8 addObject:{objc_getProperty(self, v6, 96, 1)}];
    }

    Property = objc_getProperty(self, v6, 56, 1);
  }

  else
  {
    [v8 addObjectsFromArray:0];
    [v8 addObjectsFromArray:0];
    Property = 0;
  }

  [v8 addObjectsFromArray:Property];
  [(NEIKEv2Packet *)self setRawPayloads:v8];
}

- (uint64_t)isDeleteIKE
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = objc_getProperty(self, a2, 88, 1);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && *(v6 + 32) == 1)
        {
          v3 = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (uint64_t)isMOBIKE
{
  if (([(NEIKEv2Packet *)self hasNotification:?]& 1) != 0 || ([(NEIKEv2Packet *)self hasNotification:?]& 1) != 0 || ([(NEIKEv2Packet *)self hasNotification:?]& 1) != 0 || ([(NEIKEv2Packet *)self hasNotification:?]& 1) != 0)
  {
    return 1;
  }

  return [(NEIKEv2Packet *)self hasNotification:?];
}

- (uint64_t)isDeleteChild
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = objc_getProperty(self, a2, 88, 1);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && *(v6 + 32) == 3)
        {
          v3 = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

@end