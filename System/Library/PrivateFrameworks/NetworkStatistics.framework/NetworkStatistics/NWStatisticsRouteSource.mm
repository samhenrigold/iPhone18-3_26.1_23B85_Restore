@interface NWStatisticsRouteSource
- (NWStatisticsRouteSource)initWithManager:(id)manager destination:(const sockaddr *)destination mask:(const sockaddr *)mask interface:(unsigned int)interface;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
@end

@implementation NWStatisticsRouteSource

- (id)_currentSnapshot
{
  v2 = [[NWSRouteSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] routeDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] seqno:[(NWStatisticsSource *)self snapshotRevision]];

  return v2;
}

- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events
{
  if (length < 0x78)
  {
    return 1;
  }

  p_descriptor = &self->_descriptor;
  if (!memcmp(&self->_descriptor, descriptor, 0x78uLL))
  {
    manager = [(NWStatisticsSource *)self manager];
    mgrflags = [manager mgrflags];

    if ((mgrflags & 4) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v9 = *descriptor;
    v10 = *(descriptor + 1);
    v11 = *(descriptor + 3);
    *&p_descriptor->dst.sa.sa_data[6] = *(descriptor + 2);
    *(&p_descriptor->dst.sa + 24) = v11;
    *&p_descriptor->id = v9;
    *&p_descriptor->gateway_id = v10;
    v12 = *(descriptor + 4);
    v13 = *(descriptor + 5);
    v14 = *(descriptor + 6);
    *&p_descriptor->flags = *(descriptor + 14);
    p_descriptor->gateway.v4 = v13;
    *(&p_descriptor->gateway.sa + 1) = v14;
    *&p_descriptor->mask.sa.sa_data[10] = v12;
    return 3;
  }
}

- (id)description
{
  __ret = 0;
  p_descriptor = &self->_descriptor;
  if ((self->_descriptor.flags & 4) != 0)
  {
    v7 = printf_domain(self, a2);
    v8 = "Scoped ";
    if ((p_descriptor->flags & 0x1000000) == 0)
    {
      v8 = "";
    }

    asxprintf(&__ret, v7, 0, "NWSRouteSource %s%N->%I->%N", v8, &p_descriptor->dst, p_descriptor->ifindex, &p_descriptor->gateway);
  }

  else
  {
    v3 = maskLeadingBitsCount(&self->_descriptor.mask);
    v5 = printf_domain(v3, v4);
    if ((p_descriptor->flags & 0x1000000) != 0)
    {
      v6 = "Scoped ";
    }

    else
    {
      v6 = "";
    }

    if (v3)
    {
      asxprintf(&__ret, v5, 0, "NWSRouteSource %s%N/%d->%I->%N", v6, &p_descriptor->dst, v3, p_descriptor->ifindex, &p_descriptor->gateway);
    }

    else
    {
      asxprintf(&__ret, v5, 0, "NWSRouteSource %sDefault->%I->%N", v6, p_descriptor->ifindex, &p_descriptor->gateway);
    }
  }

  if (__ret)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithCString:__ret encoding:4];
    free(__ret);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NWStatisticsRouteSource)initWithManager:(id)manager destination:(const sockaddr *)destination mask:(const sockaddr *)mask interface:(unsigned int)interface
{
  v6 = *&interface;
  v52 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v29.receiver = self;
  v29.super_class = NWStatisticsRouteSource;
  v11 = [(NWStatisticsSource *)&v29 initWithManager:managerCopy source:0 provider:1];
  if (!v11)
  {
    goto LABEL_5;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  LODWORD(v47) = 1;
  if (destination->sa_len > 0x1CuLL)
  {
    goto LABEL_5;
  }

  __memcpy_chk();
  if (mask)
  {
    if (mask->sa_len > 0x1CuLL)
    {
LABEL_5:
      v12 = 0;
      goto LABEL_33;
    }

    __memcpy_chk();
  }

  v51 = v6;
  v13 = [managerCopy addSource:v11 request:&v46 length:84];
  v14 = v13;
  v15 = NStatGetLog(v13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    if (v14)
    {
      v16 = "Created";
    }

    else
    {
      v16 = "Failed to create";
    }

    sa_family = destination->sa_family;
    v18 = "Unknown-protocol";
    if (sa_family == 30)
    {
      v18 = "IPv6";
    }

    if (sa_family == 2)
    {
      v19 = "IPv4";
    }

    else
    {
      v19 = v18;
    }

    sa_len = destination->sa_len;
    if (mask)
    {
      v21 = mask->sa_len;
    }

    else
    {
      v21 = 0;
    }

    *buf = 134219778;
    v31 = managerCopy;
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = v19;
    v36 = 1040;
    v37 = sa_len;
    v38 = 2096;
    destinationCopy = destination;
    v40 = 1024;
    v41 = v6;
    v42 = 1040;
    v43 = v21;
    v44 = 2096;
    maskCopy = mask;
    _os_log_impl(&dword_25BA3A000, v15, OS_LOG_TYPE_INFO, "Manager %p: %s %s route source to %{network:sockaddr}.*P  interface index %d, mask  %{network:sockaddr}.*P", buf, 0x46u);
  }

  if (([managerCopy mgrflags] & 0x80) != 0)
  {
    if (v14)
    {
      v22 = "Created";
    }

    else
    {
      v22 = "Failed to create";
    }

    v23 = destination->sa_family;
    v24 = "Unknown-protocol";
    if (v23 == 30)
    {
      v24 = "IPv6";
    }

    v25 = v23 == 2;
    v26 = "IPv4";
    if (!v25)
    {
      v26 = v24;
    }

    NStatMgrTraceF(managerCopy, "%s Manager %p: %s %s route source to %N on interface %I index %d, mask %N", "[NWStatisticsRouteSource initWithManager:destination:mask:interface:]", managerCopy, v22, v26, destination, v6, v6, mask);
  }

  if (v14)
  {
    v27 = v11;
  }

  else
  {
    v27 = 0;
  }

  v12 = v27;
LABEL_33:

  return v12;
}

@end