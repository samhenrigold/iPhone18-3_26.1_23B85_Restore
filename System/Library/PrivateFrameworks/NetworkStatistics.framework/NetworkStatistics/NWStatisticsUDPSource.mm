@interface NWStatisticsUDPSource
- (NWStatisticsUDPSource)initWithManager:(id)manager local:(const sockaddr *)local remote:(const sockaddr *)remote;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
@end

@implementation NWStatisticsUDPSource

- (id)_currentSnapshot
{
  v2 = [[NWSUDPSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] UDPDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] events:self->_eventFlags seqno:[(NWStatisticsSource *)self snapshotRevision] provider:[(NWStatisticsSource *)self provider]];

  return v2;
}

- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events
{
  if (length < 0x118)
  {
    return 1;
  }

  if (self->_eventFlags != events)
  {
    self->_eventFlags = events;
    p_descriptor = &self->_descriptor;
    goto LABEL_7;
  }

  if (memcmp(&self->_descriptor, descriptor, 0x118uLL))
  {
    p_descriptor = &self->_descriptor;
LABEL_7:
    memcpy(p_descriptor, descriptor, sizeof(nstat_udp_descriptor));
    return 3;
  }

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

- (id)description
{
  __ret = 0;
  v3 = printf_domain(self, a2);
  asxprintf(&__ret, v3, 0, "NWSUDPSource %N<->%N@%I", &self->_descriptor.local, &self->_descriptor.remote, self->_descriptor.ifindex);
  if (__ret)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithCString:__ret encoding:4];
    free(__ret);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWStatisticsUDPSource)initWithManager:(id)manager local:(const sockaddr *)local remote:(const sockaddr *)remote
{
  v38 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = NWStatisticsUDPSource;
  v9 = [(NWStatisticsSource *)&v20 initWithManager:managerCopy source:0 provider:4];
  if (!v9)
  {
    goto LABEL_5;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  LODWORD(v34) = 4;
  if (local->sa_len > 0x1CuLL)
  {
    goto LABEL_5;
  }

  __memcpy_chk();
  if (remote)
  {
    if (remote->sa_len > 0x1CuLL)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_25;
    }

    __memcpy_chk();
  }

  else
  {
    BYTE5(v36) = local->sa_family;
    BYTE4(v36) = BYTE5(v36);
  }

  v11 = [managerCopy addSource:v9 request:&v33 length:80];
  v12 = v11;
  v13 = NStatGetLog(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (v12)
    {
      v14 = "Created";
    }

    else
    {
      v14 = "Failed to create";
    }

    sa_len = local->sa_len;
    if (remote)
    {
      v16 = remote->sa_len;
    }

    else
    {
      v16 = 0;
    }

    *buf = 134219266;
    v22 = managerCopy;
    v23 = 2080;
    v24 = v14;
    v25 = 1040;
    v26 = sa_len;
    v27 = 2096;
    localCopy = local;
    v29 = 1040;
    v30 = v16;
    v31 = 2096;
    remoteCopy = remote;
    _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_INFO, "Manager %p: %s UDP source for local address %{network:sockaddr}.*P, remote address %{network:sockaddr}.*P", buf, 0x36u);
  }

  if (([managerCopy mgrflags] & 0x80) != 0)
  {
    if (v12)
    {
      v17 = "Created";
    }

    else
    {
      v17 = "Failed to create";
    }

    NStatMgrTraceF(managerCopy, "%s Manager %p: %s UDP source for local address %N, remote address %N", "[NWStatisticsUDPSource initWithManager:local:remote:]", managerCopy, v17, local, remote);
  }

  if (v12)
  {
    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  v10 = v18;
LABEL_25:

  return v10;
}

@end