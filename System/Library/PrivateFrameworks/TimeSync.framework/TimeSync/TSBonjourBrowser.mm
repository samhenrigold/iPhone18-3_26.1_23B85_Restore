@interface TSBonjourBrowser
- (BOOL)startBrowsingWithError:(id *)error;
- (BOOL)stopBrowsing;
- (TSBonjourBrowser)init;
- (void)addedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags;
- (void)dealloc;
- (void)removedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags;
@end

@implementation TSBonjourBrowser

- (TSBonjourBrowser)init
{
  v8.receiver = self;
  v8.super_class = TSBonjourBrowser;
  v2 = [(TSBonjourBrowser *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.timesync.bonjour.browse", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    nodes = v2->_nodes;
    v2->_nodes = v5;
  }

  return v2;
}

- (void)addedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags
{
  v61 = *MEMORY[0x277D85DE8];
  *v59 = 0;
  v60 = 0;
  if_indextoname(interface, v59);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    nameCopy = name;
    v49 = 2080;
    typeCopy = type;
    v51 = 2080;
    domainCopy = domain;
    v53 = 1024;
    flagsCopy = flags;
    v55 = 2080;
    v56 = v59;
    v57 = 1024;
    interfaceCopy = interface;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Added service with name %s type %s domain %s flags 0x%08x on interface %s (%u)\n", buf, 0x36u);
  }

  if (interface)
  {
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v45 = v44 = self;
    nodes = [(TSBonjourBrowser *)self nodes];
    v15 = [nodes countByEnumeratingWithState:? objects:? count:?];
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(nodes);
        }

        v19 = *(8 * v18);
        name = [v19 name];
        if (![v21 isEqualToString:?])
        {
          goto LABEL_14;
        }

        type = [v19 type];
        if (([v23 isEqualToString:?] & 1) == 0)
        {
          break;
        }

        domain = [v19 domain];
        v26 = [v25 isEqualToString:?];

        if (v26)
        {
          v29 = v19;

          v27 = v44;
          v28 = v43;
          if (v29)
          {
            goto LABEL_26;
          }

          goto LABEL_19;
        }

LABEL_15:
        if (v16 == ++v18)
        {
          v16 = [nodes countByEnumeratingWithState:? objects:? count:?];
          if (v16)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

LABEL_14:
      goto LABEL_15;
    }

LABEL_17:

    v27 = v44;
    v28 = v43;
LABEL_19:
    v29 = [TSBonjourNode initWithServiceName:"initWithServiceName:type:andDomain:" type:? andDomain:?];
    nodes2 = [(TSBonjourBrowser *)v27 nodes];

    if (nodes2)
    {
      nodes3 = [(TSBonjourBrowser *)v27 nodes];
      v32 = [nodes3 arrayByAddingObject:?];
    }

    else
    {
      v32 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    }

    [(TSBonjourBrowser *)v27 setNodes:?];
    delegate = [(TSBonjourBrowser *)v27 delegate];
    if (delegate)
    {
      v34 = delegate;
      delegate2 = [(TSBonjourBrowser *)v27 delegate];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        delegate3 = [(TSBonjourBrowser *)v27 delegate];
        [delegate3 didAddNode:? onBrowser:?];
      }
    }

LABEL_26:
    [TSBonjourNode addedOnInterface:v29 named:"addedOnInterface:named:"];
    delegate4 = [(TSBonjourBrowser *)v27 delegate];
    if (delegate4)
    {
      v39 = delegate4;
      delegate5 = [(TSBonjourBrowser *)v27 delegate];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        delegate6 = [(TSBonjourBrowser *)v27 delegate];
        [delegate6 didAddInterface:? toNode:? onBrowser:?];
      }
    }
  }
}

- (void)removedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags
{
  v59 = *MEMORY[0x277D85DE8];
  *v57 = 0;
  v58 = 0;
  if_indextoname(interface, v57);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    nameCopy = name;
    v47 = 2080;
    typeCopy = type;
    v49 = 2080;
    domainCopy = domain;
    v51 = 1024;
    flagsCopy = flags;
    v53 = 2080;
    v54 = v57;
    v55 = 1024;
    interfaceCopy = interface;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removed service with name %s type %s domain %s flags 0x%08x on interface %s (%u)\n", buf, 0x36u);
  }

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  nodes = [(TSBonjourBrowser *)self nodes];
  v16 = [nodes countByEnumeratingWithState:? objects:? count:?];
  if (!v16)
  {
LABEL_25:

    goto LABEL_27;
  }

  selfCopy = self;
  v42 = v13;
  v17 = MEMORY[0];
LABEL_5:
  v18 = 0;
  while (1)
  {
    if (MEMORY[0] != v17)
    {
      objc_enumerationMutation(nodes);
    }

    v19 = *(8 * v18);
    name = [v19 name];
    if (![v21 isEqualToString:?])
    {
      goto LABEL_13;
    }

    type = [v19 type];
    if (([v23 isEqualToString:?] & 1) == 0)
    {

LABEL_13:
      goto LABEL_14;
    }

    domain = [v19 domain];
    v26 = [v25 isEqualToString:?];

    if (v26)
    {
      break;
    }

LABEL_14:
    if (v16 == ++v18)
    {
      v16 = [nodes countByEnumeratingWithState:? objects:? count:?];
      if (v16)
      {
        goto LABEL_5;
      }

      v13 = v42;
      goto LABEL_25;
    }
  }

  v16 = v19;

  if (!v16)
  {
    v13 = v42;
    goto LABEL_27;
  }

  delegate = [(TSBonjourBrowser *)selfCopy delegate];
  v13 = v42;
  if (delegate)
  {
    v28 = delegate;
    delegate2 = [(TSBonjourBrowser *)selfCopy delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate3 = [(TSBonjourBrowser *)selfCopy delegate];
      [delegate3 didRemoveInterface:? fromNode:? onBrowser:?];
    }
  }

  [v16 removedFromInterface:? named:?];
  interfaces = [v16 interfaces];
  v33 = [interfaces count];

  if (!v33)
  {
    v34 = objc_alloc(MEMORY[0x277CBEB18]);
    nodes2 = [(TSBonjourBrowser *)selfCopy nodes];
    nodes = [v34 initWithArray:?];

    [nodes removeObject:?];
    [(TSBonjourBrowser *)selfCopy setNodes:?];
    delegate4 = [(TSBonjourBrowser *)selfCopy delegate];
    if (delegate4)
    {
      v37 = delegate4;
      delegate5 = [(TSBonjourBrowser *)selfCopy delegate];
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        delegate6 = [(TSBonjourBrowser *)selfCopy delegate];
        [delegate6 didRemoveNode:? onBrowser:?];
      }
    }

    goto LABEL_25;
  }

LABEL_27:
}

- (BOOL)startBrowsingWithError:(id *)error
{
  sdRef = self->_sdRef;
  p_sdRef = &self->_sdRef;
  if (sdRef)
  {
    return 1;
  }

  v8 = DNSServiceBrowse(p_sdRef, 0x100000u, 0, "_ptp-general._udp.", 0, TSBBBrowseServiceReply, self);
  if (error && v8)
  {
    v9 = TSBonjourErrorFromErrorCode(v8);
    v10 = v9;
    result = 0;
    *error = v9;
  }

  else
  {
    if (!v8)
    {
      DNSServiceSetDispatchQueue(self->_sdRef, self->_queue);
      return 1;
    }

    return 0;
  }

  return result;
}

- (BOOL)stopBrowsing
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(self->_sdRef);
    self->_sdRef = 0;
  }

  return sdRef != 0;
}

- (void)dealloc
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  v4.receiver = self;
  v4.super_class = TSBonjourBrowser;
  [(TSBonjourBrowser *)&v4 dealloc];
}

@end