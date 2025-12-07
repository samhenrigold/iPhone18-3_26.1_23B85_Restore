@interface OSActivityTimesyncEvent
- (OSActivityTimesyncEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
@end

@implementation OSActivityTimesyncEvent

- (OSActivityTimesyncEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = OSActivityTimesyncEvent;
  v4 = [(OSActivityTimesyncEvent *)&v12 init];
  if (v4)
  {
    v5 = *(&entry->var8.var12.var11 + 4);
    if ((v5 & 1) == 0)
    {
      if (*(&entry->var8.var12.var12 + 4))
      {
        v6 = "=== system wallclock time adjusted";
LABEL_15:
        [(OSActivityEvent *)v4 fillFromStreamEntry:entry eventMessage:v6 persisted:1];
        return v4;
      }

      memset(out, 0, 37);
      uuid_unparse_upper(&entry->var8.var12.var9, out);
      v11 = out;
      v9 = "=== system boot: %s";
LABEL_14:
      v6 = __str;
      snprintf(__str, 0x80uLL, v9, v11);
      goto LABEL_15;
    }

    if ((v5 & 2) == 0)
    {
      v7 = *(&entry->var8.var12 + 124);
      if (v7 <= 6)
      {
        if (v7 == 1)
        {
          v8 = "TTL less than 1 day";
          goto LABEL_12;
        }

        if (v7 == 3)
        {
          v8 = "TTL less than 3 days";
          goto LABEL_12;
        }
      }

      else
      {
        switch(v7)
        {
          case 7u:
            v8 = "TTL less than 7 days";
            goto LABEL_12;
          case 0xEu:
            v8 = "TTL less than 14 days";
            goto LABEL_12;
          case 0x1Eu:
            v8 = "TTL more than 14 days";
LABEL_12:
            v11 = v8;
            v9 = "=== log class: %s begins";
            goto LABEL_14;
        }
      }

      v8 = "persist";
      goto LABEL_12;
    }

    v8 = "in-memory";
    goto LABEL_12;
  }

  return v4;
}

@end