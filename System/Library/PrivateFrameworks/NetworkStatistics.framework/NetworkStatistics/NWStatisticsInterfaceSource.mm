@interface NWStatisticsInterfaceSource
- (NWStatisticsInterfaceSource)initWithManager:(id)manager interface:(int64_t)interface threshold:(int64_t)threshold;
- (id)_currentSnapshot;
- (id)description;
- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events;
@end

@implementation NWStatisticsInterfaceSource

- (int)handleDescriptor:(void *)descriptor length:(unint64_t)length events:(unint64_t)events
{
  if (length < 0xF8)
  {
    return 1;
  }

  p_descriptor = &self->_descriptor;
  if (!memcmp(&self->_descriptor, descriptor, 0xF8uLL))
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
    *&p_descriptor->link_status.u.wifi.ul_min_latency = *(descriptor + 2);
    *&p_descriptor->link_status.u.wifi.ul_bytes_lost = v11;
    *&p_descriptor->threshold = v9;
    *&p_descriptor->link_status.u.cellular.valid_bitmask = v10;
    v12 = *(descriptor + 4);
    v13 = *(descriptor + 5);
    v14 = *(descriptor + 7);
    *&p_descriptor->type = *(descriptor + 6);
    *&p_descriptor->description[12] = v14;
    *&p_descriptor->link_status.u.wifi.dl_min_latency = v12;
    *&p_descriptor->link_status.u.wifi.config_frequency = v13;
    v15 = *(descriptor + 8);
    v16 = *(descriptor + 9);
    v17 = *(descriptor + 11);
    *&p_descriptor->description[60] = *(descriptor + 10);
    *&p_descriptor->description[76] = v17;
    *&p_descriptor->description[28] = v15;
    *&p_descriptor->description[44] = v16;
    v18 = *(descriptor + 12);
    v19 = *(descriptor + 13);
    v20 = *(descriptor + 14);
    *&p_descriptor->name[12] = *(descriptor + 30);
    *&p_descriptor->description[108] = v19;
    *&p_descriptor->description[124] = v20;
    *&p_descriptor->description[92] = v18;
    return 3;
  }
}

- (id)_currentSnapshot
{
  v2 = [[NWSInterfaceSnapshot alloc] initWithCounts:[(NWStatisticsSource *)self _nstat_counts] interfaceDescriptor:&self->_descriptor sourceIdent:[(NWStatisticsSource *)self reference] seqno:[(NWStatisticsSource *)self snapshotRevision]];

  return v2;
}

- (id)description
{
  __ret = 0;
  v3 = printf_domain(self, a2);
  asxprintf(&__ret, v3, 0, "NWSInterfaceSource %I", self->_descriptor.ifindex);
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

- (NWStatisticsInterfaceSource)initWithManager:(id)manager interface:(int64_t)interface threshold:(int64_t)threshold
{
  v31 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = NWStatisticsInterfaceSource;
  v9 = [(NWStatisticsSource *)&v18 initWithManager:managerCopy source:0 provider:6];
  if (v9)
  {
    v27 = 0u;
    v28 = 6;
    thresholdCopy = threshold;
    interfaceCopy = interface;
    v10 = [managerCopy addSource:v9 request:&v27 length:40];
    v11 = v10;
    v12 = NStatGetLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      if (v11)
      {
        v13 = "Created";
      }

      else
      {
        v13 = "Failed to create";
      }

      *buf = 134218754;
      v20 = managerCopy;
      v21 = 2080;
      v22 = v13;
      v23 = 1024;
      interfaceCopy2 = interface;
      v25 = 1024;
      thresholdCopy2 = threshold;
      _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_INFO, "Manager %p: %s source for interface index %d with threshold %d", buf, 0x22u);
    }

    if (([managerCopy mgrflags] & 0x80) != 0)
    {
      if (v11)
      {
        v14 = "Created";
      }

      else
      {
        v14 = "Failed to create";
      }

      NStatMgrTraceF(managerCopy, "%s Manager %p: %s source for interface %I index %d with threshold %d", "[NWStatisticsInterfaceSource initWithManager:interface:threshold:]", managerCopy, v14, interface, interface, threshold);
    }

    if (v11)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end