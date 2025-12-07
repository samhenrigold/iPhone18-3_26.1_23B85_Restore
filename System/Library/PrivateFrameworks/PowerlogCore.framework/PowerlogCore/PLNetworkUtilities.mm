@interface PLNetworkUtilities
+ (BOOL)getCompanionLink:(npi_if_info *)link;
+ (BOOL)isESPPacket:(__CFData *)packet offset:(unsigned __int8)offset;
+ (id)decodeEtherType:(unsigned __int16)type;
+ (id)decodeIPPacket:(id)packet encryptedPath:(BOOL)path;
+ (id)getIPAddress:(in_addr_4_6 *)address withAddressFamily:(int)family;
+ (id)getNetworkWakeInfo:(kern_event_msg *)info;
+ (id)getNormalizedIPV6Address:(id)address;
+ (id)getSeqNoAndSPI:(__CFData *)i offset:(unsigned __int8)offset;
+ (id)getUnattributedWakeInfo:(kern_event_msg *)info;
+ (id)handlePowerWakeEvent:(int)event;
+ (id)interfaceNameForIndex:(id)index;
+ (id)sockaddrToNSDictionary:(const char *)dictionary;
+ (id)stringFromTrafficClass:(unsigned int)class;
+ (id)tcpParse:(__CFData *)parse offset:(unsigned __int8)offset;
+ (id)udpParse:(__CFData *)parse offset:(unsigned __int8)offset;
+ (int)getInterfaceType:(char *)type withPktIFName:(char *)name withPktIFInfo:(npi_if_info *)info withPktPhyIFInfo:(npi_if_info *)fInfo;
@end

@implementation PLNetworkUtilities

+ (id)sockaddrToNSDictionary:(const char *)dictionary
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  *v11 = 0u;
  v10 = 0;
  *v9 = 0;
  v4 = objc_opt_new();
  if (getnameinfo(dictionary, *dictionary, v11, 0x39u, v9, 6u, 10))
  {
    v5 = 0;
  }

  else
  {
    v13[24] = 0;
    HIBYTE(v10) = 0;
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    [v4 setObject:v6 forKey:@"address"];

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    [v4 setObject:v7 forKey:@"port"];

    v5 = v4;
  }

  return v5;
}

+ (id)interfaceNameForIndex:(id)index
{
  v9 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  if (interfaceNameForIndex__onceToken != -1)
  {
    +[PLNetworkUtilities interfaceNameForIndex:];
  }

  v4 = interfaceNameForIndex___interfaceNames;
  objc_sync_enter(v4);
  v5 = [interfaceNameForIndex___interfaceNames objectForKeyedSubscript:indexCopy];
  if (!v5)
  {
    v8[0] = 0;
    if (if_indextoname([indexCopy unsignedIntValue], v8) && v8[0])
    {
      indexCopy = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    }

    else
    {
      indexCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown%@", indexCopy];
    }

    v5 = indexCopy;
    [interfaceNameForIndex___interfaceNames setObject:indexCopy forKeyedSubscript:indexCopy];
  }

  objc_sync_exit(v4);

  return v5;
}

uint64_t __44__PLNetworkUtilities_interfaceNameForIndex___block_invoke()
{
  v0 = objc_opt_new();
  interfaceNameForIndex___interfaceNames = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)stringFromTrafficClass:(unsigned int)class
{
  if (class > 499)
  {
    if (class <= 699)
    {
      if (class == 500)
      {
        return @"AV:Multimedia_Audio/Video_Streaming";
      }

      if (class == 600)
      {
        return @"RV:Responsive_Multimedia_Audio/Video";
      }
    }

    else
    {
      switch(class)
      {
        case 0x2BCu:
          return @"VI:Interactive_Video";
        case 0x320u:
          return @"VO:Interactive_Voice";
        case 0x384u:
          return @"CTL:Network_Control";
      }
    }
  }

  else if (class <= 199)
  {
    if (!class)
    {
      return @"BE:Best_Effort";
    }

    if (class == 100)
    {
      return @"BK_SYS:Background_System-Initiated";
    }
  }

  else
  {
    switch(class)
    {
      case 0xC8u:
        return @"BK:Background";
      case 0x12Cu:
        return @"RD:Responsive_Data";
      case 0x190u:
        return @"OAM:Operations_Administration_and_Management";
    }
  }

  return @"unknown?";
}

+ (id)decodeEtherType:(unsigned __int16)type
{
  if (type <= 2113)
  {
    if (type == 2048)
    {
      type = @"IPv4";
    }

    else
    {
      if (type != 2054)
      {
LABEL_22:
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"other(%d)", type];

        return type;
      }

      type = @"ARP";
    }
  }

  else
  {
    switch(type)
    {
      case 0x842u:
        type = @"Wake-on-LAN";

        break;
      case 0x86DDu:
        type = @"IPv6";

        break;
      case 0x8808u:
        type = @"MAC_Control";

        return type;
      default:
        goto LABEL_22;
    }
  }

  return type;
}

+ (id)getNetworkWakeInfo:(kern_event_msg *)info
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  memset(out, 0, 37);
  uuid_unparse(info->event_data, out);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  if ((info[1].event_data[0] & 2) != 0)
  {
    v7 = 30;
  }

  else
  {
    v7 = 2;
  }

  v8 = [self getIPAddress:&info[5].kev_class withAddressFamily:v7];
  v9 = [self getIPAddress:&info[4].event_code withAddressFamily:v7];
  v10 = [self getInterfaceType:&info[7].kev_class withPktIFName:info[5].event_data withPktIFInfo:info[6].event_data withPktPhyIFInfo:info[7].event_data];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    +[PLNetworkUtilities getNetworkWakeInfo:];
  }

  v42 = v6;
  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (getNetworkWakeInfo__defaultOnce != -1)
    {
      dispatch_once(&getNetworkWakeInfo__defaultOnce, block);
    }

    if (getNetworkWakeInfo__classDebugEnabled == 1)
    {
      v40 = v9;
      v41 = v8;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wake uuid %s ifname %s port %d flags 0x%x pid %d pname %s epid %d epname %s\n", out, info[5].event_data, bswap32(HIWORD(info[1].event_code)) >> 16, LOWORD(info[1].event_data[0]), info[2].total_size, &info[2].kev_class, info[2].vendor_code, info[2].event_data + 1];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNetworkWakeInfo:]"];
      [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:194];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v41;
      v6 = v42;
      v9 = v40;
    }
  }

  [v5 setObject:v6 forKeyedSubscript:@"wakeUUID"];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:info[5].event_data];
  [v5 setObject:v18 forKeyedSubscript:@"Interface"];

  v19 = [MEMORY[0x1E696AD98] numberWithInt:info[2].total_size];
  [v5 setObject:v19 forKeyedSubscript:@"PID"];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&info[2].kev_class];
  [v5 setObject:v20 forKeyedSubscript:@"ProcessName"];

  v21 = [MEMORY[0x1E696AD98] numberWithInt:info[2].vendor_code];
  [v5 setObject:v21 forKeyedSubscript:@"EffectivePID"];

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:info[2].event_data + 1];
  [v5 setObject:v22 forKeyedSubscript:@"EffectiveProcessName"];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AttributedWake"];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  [v5 setObject:v23 forKeyedSubscript:@"InterfaceType"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "getCompanionLink:", info[6].event_data)}];
  [v5 setObject:v24 forKeyedSubscript:@"CompanionLink"];

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(HIWORD(info[4].id)) >> 16];
  [v5 setObject:v25 forKeyedSubscript:@"sourcePort"];

  [v5 setObject:v8 forKeyedSubscript:@"sourceAddress"];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(HIWORD(info[1].event_code)) >> 16];
  [v5 setObject:v26 forKeyedSubscript:@"destinationPort"];

  [v5 setObject:v9 forKeyedSubscript:@"destinationAddress"];
  if ((info[1].event_data[0] & 4) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(info[6].event_code)];
    [v5 setObject:v27 forKeyedSubscript:@"controlFlagType"];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:info[6].id];
  [v5 setObject:v28 forKeyedSubscript:@"packetDataLength"];

  0x2000 = [MEMORY[0x1E696AD98] numberWithInt:info[1].event_data[0] & 0x2000];
  [v5 setObject:0x2000 forKeyedSubscript:@"idleConnectionWake"];

  0x4000 = [MEMORY[0x1E696AD98] numberWithInt:info[1].event_data[0] & 0x4000];
  [v5 setObject:0x4000 forKeyedSubscript:@"lpwProcessedWake"];

  if (+[PLDefaults debugEnabled])
  {
    v31 = objc_opt_class();
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke_129;
    v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v43[4] = v31;
    if (getNetworkWakeInfo__defaultOnce_127 != -1)
    {
      dispatch_once(&getNetworkWakeInfo__defaultOnce_127, v43);
    }

    if (getNetworkWakeInfo__classDebugEnabled_128 == 1)
    {
      v32 = v9;
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wake dictionary %@", v5];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v34 lastPathComponent];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNetworkWakeInfo:]"];
      [PLCoreStorage logMessage:v33 fromFile:lastPathComponent2 fromFunction:v36 fromLineNumber:219];

      v38 = PLLogCommon(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = v32;
    }
  }

  return v5;
}

BOOL __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNetworkWakeInfo__classDebugEnabled = result;
  return result;
}

BOOL __41__PLNetworkUtilities_getNetworkWakeInfo___block_invoke_129(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNetworkWakeInfo__classDebugEnabled_128 = result;
  return result;
}

+ (id)getIPAddress:(in_addr_4_6 *)address withAddressFamily:(int)family
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, 46);
  if (family == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 30;
  }

  inet_ntop(v4, address, v7, 0x2Eu);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];

  return v5;
}

+ (BOOL)getCompanionLink:(npi_if_info *)link
{
  if (link->var0 == 18 && link->var2 == 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      +[PLNetworkUtilities getCompanionLink:];
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      +[PLNetworkUtilities getCompanionLink:];
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (int)getInterfaceType:(char *)type withPktIFName:(char *)name withPktIFInfo:(npi_if_info *)info withPktPhyIFInfo:(npi_if_info *)fInfo
{
  var0 = info->var0;
  if (info->var0 > 16)
  {
    if (var0 == 17)
    {
      if (fInfo->var1 == 3)
      {
        return 2;
      }

      v12 = fInfo->var0 == 15;
      v13 = 3;
    }

    else
    {
      if (var0 != 18)
      {
        return 0;
      }

      var2 = info->var2;
      if (!var2)
      {
        if (fInfo->var1 != 3)
        {
          var0 = fInfo->var0;
LABEL_3:
          if (var0 == 15)
          {
            return 3;
          }

          return 0;
        }

        return 2;
      }

      if (var2 != 7)
      {
        return 0;
      }

      var1 = info->var1;
      if (var1 == 2)
      {
        return 1;
      }

      if (var1 != 7)
      {
        if (var1 != 3)
        {
          v10 = fInfo->var1;
          if (v10 != 3)
          {
            v11 = v10 == 2;
            if (fInfo->var0 == 15)
            {
              return 3;
            }

            else
            {
              return v11;
            }
          }
        }

        return 2;
      }

      if (fInfo->var1 == 3)
      {
        return 4;
      }

      v12 = fInfo->var0 == 15;
      v13 = 5;
    }

    if (v12)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  if (var0 != 2)
  {
    goto LABEL_3;
  }

  if (info->var1 == 3)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

+ (id)getUnattributedWakeInfo:(kern_event_msg *)info
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  memset(out, 0, 37);
  uuid_unparse(info->event_data, out);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
  if ((info[1].event_code & 0x20000) != 0)
  {
    v7 = 30;
  }

  else
  {
    v7 = 2;
  }

  v8 = [self getIPAddress:&info[6].kev_subclass withAddressFamily:v7];
  v9 = [self getIPAddress:info[5].event_data withAddressFamily:v7];
  v10 = [self getInterfaceType:&info[8].kev_subclass withPktIFName:&info[7] withPktIFInfo:&info[8] withPktPhyIFInfo:&info[9]];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    +[PLNetworkUtilities getUnattributedWakeInfo:];
  }

  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (getUnattributedWakeInfo__defaultOnce != -1)
    {
      dispatch_once(&getUnattributedWakeInfo__defaultOnce, block);
    }

    if (getUnattributedWakeInfo__classDebugEnabled == 1)
    {
      v34 = v9;
      v35 = v8;
      v36 = v6;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wake uuid %s ifname %s src port %d dst port %d \n", out, &info[7], bswap32(LOWORD(info[5].event_code)) >> 16, bswap32(HIWORD(info[5].id)) >> 16];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getUnattributedWakeInfo:]"];
      [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:322];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v35;
      v6 = v36;
      v9 = v34;
    }
  }

  [v5 setObject:v6 forKeyedSubscript:@"wakeUUID"];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&info[7]];
  [v5 setObject:v18 forKeyedSubscript:@"Interface"];

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(LOWORD(info[5].event_code)) >> 16];
  [v5 setObject:v19 forKeyedSubscript:@"sourcePort"];

  [v5 setObject:v8 forKeyedSubscript:@"sourceAddress"];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:bswap32(HIWORD(info[5].id)) >> 16];
  [v5 setObject:v20 forKeyedSubscript:@"destinationPort"];

  [v5 setObject:v9 forKeyedSubscript:@"destinationAddress"];
  [v5 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"AttributedWake"];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  [v5 setObject:v21 forKeyedSubscript:@"InterfaceType"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "getCompanionLink:", &info[8])}];
  [v5 setObject:v22 forKeyedSubscript:@"CompanionLink"];

  if ((info[1].event_code & 0x40000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:LOWORD(info[7].event_data[0])];
    [v5 setObject:v23 forKeyedSubscript:@"controlFlagType"];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:info[7].event_code];
  [v5 setObject:v24 forKeyedSubscript:@"packetDataLength"];

  if (+[PLDefaults debugEnabled])
  {
    v25 = objc_opt_class();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke_138;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v25;
    if (getUnattributedWakeInfo__defaultOnce_136 != -1)
    {
      dispatch_once(&getUnattributedWakeInfo__defaultOnce_136, v37);
    }

    if (getUnattributedWakeInfo__classDebugEnabled_137 == 1)
    {
      v26 = v9;
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unattributed wake dictionary %@", v5];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v28 lastPathComponent];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getUnattributedWakeInfo:]"];
      [PLCoreStorage logMessage:v27 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:340];

      v32 = PLLogCommon(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = v26;
    }
  }

  return v5;
}

BOOL __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getUnattributedWakeInfo__classDebugEnabled = result;
  return result;
}

BOOL __46__PLNetworkUtilities_getUnattributedWakeInfo___block_invoke_138(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getUnattributedWakeInfo__classDebugEnabled_137 = result;
  return result;
}

+ (id)handlePowerWakeEvent:(int)event
{
  v3 = *&event;
  v5 = recv(event, &handlePowerWakeEvent__buf, 0x41CuLL, 0);
  v6 = +[PLDefaults debugEnabled];
  if (v5 == -1)
  {
    if (!v6)
    {
      goto LABEL_28;
    }

    v22 = objc_opt_class();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke_150;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v22;
    if (handlePowerWakeEvent__defaultOnce_148 != -1)
    {
      dispatch_once(&handlePowerWakeEvent__defaultOnce_148, v28);
    }

    if (handlePowerWakeEvent__classDebugEnabled_149 != 1)
    {
      goto LABEL_28;
    }

    dword_1EDFFF9A52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not receive data on power wake event %d", v3];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
    lastPathComponent = [v23 lastPathComponent];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities handlePowerWakeEvent:]"];
    [PLCoreStorage logMessage:dword_1EDFFF9A52 fromFile:lastPathComponent fromFunction:v25 fromLineNumber:369];

    v21 = PLLogCommon(v26);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    goto LABEL_27;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (handlePowerWakeEvent__defaultOnce != -1)
    {
      dispatch_once(&handlePowerWakeEvent__defaultOnce, block);
    }

    if (handlePowerWakeEvent__classDebugEnabled == 1)
    {
      dword_1EDFFF9A5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got kev message as vendor code %d class %d sub class %d event code %d !", dword_1EDFFF995, dword_1EDFFF999, dword_1EDFFF99D, dword_1EDFFF9A5];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities handlePowerWakeEvent:]"];
      [PLCoreStorage logMessage:dword_1EDFFF9A5 fromFile:lastPathComponent2 fromFunction:v11 fromLineNumber:353];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (dword_1EDFFF995 != 1 || dword_1EDFFF999 != 1 || dword_1EDFFF99D != 14)
  {
LABEL_15:
    if (!+[PLDefaults debugEnabled])
    {
      goto LABEL_28;
    }

    v15 = objc_opt_class();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke_147;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v15;
    if (handlePowerWakeEvent__defaultOnce_145 != -1)
    {
      dispatch_once(&handlePowerWakeEvent__defaultOnce_145, v29);
    }

    if (handlePowerWakeEvent__classDebugEnabled_146 != 1)
    {
      goto LABEL_28;
    }

    dword_1EDFFF9A52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got kev message as vendor code %d class %d sub class %d event code %d !", dword_1EDFFF995, dword_1EDFFF999, dword_1EDFFF99D, dword_1EDFFF9A5];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
    lastPathComponent3 = [v17 lastPathComponent];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities handlePowerWakeEvent:]"];
    [PLCoreStorage logMessage:dword_1EDFFF9A52 fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:366];

    v21 = PLLogCommon(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_27:

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  if (dword_1EDFFF9A5 != 2)
  {
    if (dword_1EDFFF9A5 == 1)
    {
      v14 = [self getNetworkWakeInfo:&handlePowerWakeEvent__buf];
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v14 = [self getUnattributedWakeInfo:&handlePowerWakeEvent__buf];
LABEL_29:

  return v14;
}

BOOL __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePowerWakeEvent__classDebugEnabled = result;
  return result;
}

BOOL __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke_147(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePowerWakeEvent__classDebugEnabled_146 = result;
  return result;
}

BOOL __43__PLNetworkUtilities_handlePowerWakeEvent___block_invoke_150(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePowerWakeEvent__classDebugEnabled_149 = result;
  return result;
}

+ (id)getNormalizedIPV6Address:(id)address
{
  v27 = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v25[1] = 0;
  addressCopy = address;
  if (!inet_pton(30, [address UTF8String], v25))
  {
    if (+[PLDefaults debugEnabled])
    {
      v13 = objc_opt_class();
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke_159;
      v22 = &__block_descriptor_40_e5_v8__0lu32l8;
      v23 = v13;
      if (getNormalizedIPV6Address__defaultOnce_157 != -1)
      {
        dispatch_once(&getNormalizedIPV6Address__defaultOnce_157, &v19);
      }

      if (getNormalizedIPV6Address__classDebugEnabled_158 == 1)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed in inet_pton %d", 0, v19, v20, v21, v22, v23];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNormalizedIPV6Address:]"];
        [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:390];

        v12 = PLLogCommon(v17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v5 = 0;
        goto LABEL_16;
      }
    }

    goto LABEL_17;
  }

  if (!inet_ntop(30, v25, v26, 0x2Eu))
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (getNormalizedIPV6Address__defaultOnce != -1)
    {
      dispatch_once(&getNormalizedIPV6Address__defaultOnce, block);
    }

    if (getNormalizedIPV6Address__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Normalized Address is %@", v5];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent2 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getNormalizedIPV6Address:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent2 fromFunction:v10 fromLineNumber:387];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_16:
    }
  }

LABEL_18:

  return v5;
}

BOOL __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNormalizedIPV6Address__classDebugEnabled = result;
  return result;
}

BOOL __47__PLNetworkUtilities_getNormalizedIPV6Address___block_invoke_159(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getNormalizedIPV6Address__classDebugEnabled_158 = result;
  return result;
}

+ (id)decodeIPPacket:(id)packet encryptedPath:(BOOL)path
{
  packetCopy = packet;
  v7 = packetCopy;
  buffer[0] = 0;
  if (!packetCopy)
  {
    goto LABEL_32;
  }

  if (!CFDataGetLength(packetCopy))
  {
    if (+[PLDefaults debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (decodeIPPacket_encryptedPath__defaultOnce != -1)
      {
        dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce, block);
      }

      if (decodeIPPacket_encryptedPath__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Packet too short or no data available"];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent = [v17 lastPathComponent];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:419];

        v15 = PLLogCommon(v20);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

  v117.location = 0;
  v117.length = 1;
  CFDataGetBytes(v7, v117, buffer);
  v8 = buffer[0] >> 4;
  buffer[0] >>= 4;
  if (v8 == 6)
  {
    if (CFDataGetLength(v7) > 0x27)
    {
      v111 = 0;
      *v109 = 0u;
      v110 = 0u;
      v119.location = 0;
      v119.length = 40;
      CFDataGetBytes(v7, v119, v109);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v39 = bswap32(*&v109[8]);
      v40 = bswap32(*&v109[12]);
      v41 = bswap32(v110);
      v42 = bswap32(DWORD1(v110));
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x:%x:%x:%x:%x:%x:%x:%x", HIWORD(v39), v39, HIWORD(v40), v40, HIWORD(v41), v41, HIWORD(v42), v42];
      v44 = bswap32(DWORD2(v110));
      v45 = bswap32(HIDWORD(v110));
      v46 = bswap32(v111);
      v47 = bswap32(HIDWORD(v111));
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x:%x:%x:%x:%x:%x:%x:%x", HIWORD(v44), v44, HIWORD(v45), v45, HIWORD(v46), v46, HIWORD(v47), v47];
      v36 = [self getNormalizedIPV6Address:v43];
      v102 = [self getNormalizedIPV6Address:v48];
      if (+[PLDefaults debugEnabled])
      {
        v49 = objc_opt_class();
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_186;
        v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v108[4] = v49;
        if (decodeIPPacket_encryptedPath__defaultOnce_184 != -1)
        {
          dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_184, v108);
        }

        if (decodeIPPacket_encryptedPath__classDebugEnabled_185 == 1)
        {
          v100 = v36;
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Normalized address is source %@ dest %@ orig s %@ orig d %@", v36, v102, v43, v48];
          v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
          lastPathComponent2 = [v51 lastPathComponent];
          v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
          [PLCoreStorage logMessage:v50 fromFile:lastPathComponent2 fromFunction:v53 fromLineNumber:474];

          v54 = v50;
          v56 = PLLogCommon(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          v36 = v100;
        }
      }

      v37 = v109[6];

      v38 = 40;
LABEL_42:
      if (v37 == 50)
      {
        if (path)
        {
          v57 = 0;
        }

        else
        {
          v57 = [self getSeqNoAndSPI:v7 offset:v38];
          if (+[PLDefaults debugEnabled])
          {
            v77 = objc_opt_class();
            v103[0] = MEMORY[0x1E69E9820];
            v103[1] = 3221225472;
            v103[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_231;
            v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v103[4] = v77;
            if (decodeIPPacket_encryptedPath__defaultOnce_229 != -1)
            {
              dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_229, v103);
            }

            if (decodeIPPacket_encryptedPath__classDebugEnabled_230 == 1)
            {
              v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invoked from non encrypted path (esp) - wifi or bb agent %@", v57];
              v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
              lastPathComponent3 = [v79 lastPathComponent];
              v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
              [PLCoreStorage logMessage:v78 fromFile:lastPathComponent3 fromFunction:v81 fromLineNumber:515];

              v83 = PLLogCommon(v82);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }
            }
          }
        }

        v15 = 0;
        v58 = @"ESP";
        goto LABEL_86;
      }

      if (v37 != 17)
      {
        if (v37 == 6)
        {
          v15 = [self tcpParse:v7 offset:v38];
          v57 = 0;
          v58 = @"TCP";
        }

        else
        {
          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", v37];
          v57 = 0;
          v15 = 0;
        }

        goto LABEL_86;
      }

      v101 = v36;
      v15 = [self udpParse:v7 offset:v38];
      v59 = [v15 objectForKeyedSubscript:@"dest_port"];
      if ([v59 intValue] == 4500)
      {
      }

      else
      {
        v60 = [v15 objectForKeyedSubscript:@"source_port"];
        intValue = [v60 intValue];

        if (intValue != 4500)
        {
          v57 = 0;
          v58 = @"UDP";
          goto LABEL_86;
        }
      }

      v62 = [self isESPPacket:v7 offset:v38];
      v63 = +[PLDefaults debugEnabled];
      if (v62)
      {
        if (v63)
        {
          v64 = objc_opt_class();
          v106[0] = MEMORY[0x1E69E9820];
          v106[1] = 3221225472;
          v106[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_210;
          v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v106[4] = v64;
          if (decodeIPPacket_encryptedPath__defaultOnce_208 != -1)
          {
            dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_208, v106);
          }

          if (decodeIPPacket_encryptedPath__classDebugEnabled_209 == 1)
          {
            v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found an ESP packet in UDP"];
            v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
            lastPathComponent4 = [v65 lastPathComponent];
            v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
            [PLCoreStorage logMessage:v99 fromFile:lastPathComponent4 fromFunction:v67 fromLineNumber:497];

            v69 = PLLogCommon(v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }

            v36 = v101;
          }
        }

        if (!path)
        {
          v57 = [self getSeqNoAndSPI:v7 offset:(v38 + 8)];
          if (+[PLDefaults debugEnabled])
          {
            v70 = objc_opt_class();
            v105[0] = MEMORY[0x1E69E9820];
            v105[1] = 3221225472;
            v105[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_216;
            v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v105[4] = v70;
            if (decodeIPPacket_encryptedPath__defaultOnce_214 != -1)
            {
              dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_214, v105);
            }

            if (decodeIPPacket_encryptedPath__classDebugEnabled_215 == 1)
            {
              v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invoked from non encrypted path - wifi or bb agent %@", v57];
              v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
              lastPathComponent5 = [v72 lastPathComponent];
              v74 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
              [PLCoreStorage logMessage:v71 fromFile:lastPathComponent5 fromFunction:v74 fromLineNumber:502];

              v76 = PLLogCommon(v75);
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }
            }
          }

          goto LABEL_84;
        }
      }

      else if (v63)
      {
        v84 = objc_opt_class();
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_222;
        v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v104[4] = v84;
        if (decodeIPPacket_encryptedPath__defaultOnce_220 != -1)
        {
          dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_220, v104);
        }

        if (decodeIPPacket_encryptedPath__classDebugEnabled_221 == 1)
        {
          v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Found an IKE packet in UDP"];
          v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
          lastPathComponent6 = [v86 lastPathComponent];
          v88 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
          [PLCoreStorage logMessage:v85 fromFile:lastPathComponent6 fromFunction:v88 fromLineNumber:505];

          v90 = PLLogCommon(v89);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v57 = 0;
LABEL_84:
      v58 = @"UDP";
LABEL_86:
      [dictionary setObject:v58 forKeyedSubscript:@"protocol"];
      v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:buffer[0]];
      [dictionary setObject:v91 forKeyedSubscript:@"version"];

      [dictionary setObject:v36 forKeyedSubscript:@"source"];
      [dictionary setObject:v102 forKeyedSubscript:@"destination"];
      if (v57)
      {
        v92 = MEMORY[0x1E696AD98];
        v93 = [v57 objectForKeyedSubscript:@"seqNo"];
        v94 = [v92 numberWithUnsignedInt:{objc_msgSend(v93, "unsignedIntValue")}];
        [dictionary setObject:v94 forKeyedSubscript:@"seqNo"];

        v95 = MEMORY[0x1E696AD98];
        v96 = [v57 objectForKeyedSubscript:@"spi"];
        v97 = [v95 numberWithUnsignedInt:{objc_msgSend(v96, "unsignedIntValue")}];
        [dictionary setObject:v97 forKeyedSubscript:@"spi"];
      }

      if (v15)
      {
        [dictionary setObject:v15 forKey:@"protocol_info"];
      }

      v10 = dictionary;

      v31 = v10;
      goto LABEL_91;
    }

    if (+[PLDefaults debugEnabled])
    {
      v21 = objc_opt_class();
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_177;
      v112[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v112[4] = v21;
      if (decodeIPPacket_encryptedPath__defaultOnce_175 != -1)
      {
        dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_175, v112);
      }

      if (decodeIPPacket_encryptedPath__classDebugEnabled_176 == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] IPv6 Packet too short"];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent7 = [v22 lastPathComponent];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent7 fromFunction:v24 fromLineNumber:452];

        v15 = PLLogCommon(v25);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    v31 = 0;
    goto LABEL_92;
  }

  if (v8 != 4)
  {
    if (+[PLDefaults debugEnabled])
    {
      v26 = objc_opt_class();
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_192;
      v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v107[4] = v26;
      if (decodeIPPacket_encryptedPath__defaultOnce_190 != -1)
      {
        dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_190, v107);
      }

      if (decodeIPPacket_encryptedPath__classDebugEnabled_191 == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] unknown type: %d", buffer[0]];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent8 = [v27 lastPathComponent];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent8 fromFunction:v29 fromLineNumber:480];

        v15 = PLLogCommon(v30);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

  if (CFDataGetLength(v7) > 0x13)
  {
    memset(v109, 0, sizeof(v109));
    LODWORD(v110) = 0;
    v118.location = 0;
    v118.length = 20;
    CFDataGetBytes(v7, v118, v109);
    v32 = v109[0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v34 = bswap32(*&v109[12]);
    v35 = bswap32(v110);
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu.%lu.%lu", HIBYTE(v34), BYTE2(v34), BYTE1(v34), v34];
    v102 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu.%lu.%lu.%lu", HIBYTE(v35), BYTE2(v35), BYTE1(v35), v35];
    v37 = v109[9];
    v38 = 4 * (v32 & 0xFu);
    goto LABEL_42;
  }

  if (!+[PLDefaults debugEnabled])
  {
    goto LABEL_32;
  }

  v9 = objc_opt_class();
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_168;
  v113[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v113[4] = v9;
  if (decodeIPPacket_encryptedPath__defaultOnce_166 != -1)
  {
    dispatch_once(&decodeIPPacket_encryptedPath__defaultOnce_166, v113);
  }

  if (decodeIPPacket_encryptedPath__classDebugEnabled_167 != 1)
  {
    goto LABEL_32;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] IPv4 Packet too short"];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
  lastPathComponent9 = [v11 lastPathComponent];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities decodeIPPacket:encryptedPath:]"];
  [PLCoreStorage logMessage:v10 fromFile:lastPathComponent9 fromFunction:v13 fromLineNumber:430];

  v15 = PLLogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

LABEL_31:
  v31 = 0;
LABEL_91:

LABEL_92:

  return v31;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_168(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_167 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_177(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_176 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_186(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_185 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_192(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_191 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_210(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_209 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_216(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_215 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_222(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_221 = result;
  return result;
}

BOOL __51__PLNetworkUtilities_decodeIPPacket_encryptedPath___block_invoke_231(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decodeIPPacket_encryptedPath__classDebugEnabled_230 = result;
  return result;
}

+ (id)tcpParse:(__CFData *)parse offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  *buffer = 0;
  v28 = 0;
  v29 = 0;
  if (CFDataGetLength(parse) >= offset + 20)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v31.location = offsetCopy;
    v31.length = 20;
    CFDataGetBytes(parse, v31, buffer);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*buffer) >> 16];
    [dictionary setObject:v16 forKey:@"source_port"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[2]) >> 16];
    [dictionary setObject:v17 forKey:@"dest_port"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[4])];
    [dictionary setObject:v18 forKey:@"seq"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(v28)];
    [dictionary setObject:v19 forKey:@"ack"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:BYTE5(v28)];
    [dictionary setObject:v20 forKey:@"control"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(HIWORD(v28)) >> 16];
    [dictionary setObject:v9 forKey:@"window"];
LABEL_10:

    goto LABEL_12;
  }

  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __38__PLNetworkUtilities_tcpParse_offset___block_invoke;
    v25 = &__block_descriptor_40_e5_v8__0lu32l8;
    v26 = v6;
    if (tcpParse_offset__defaultOnce != -1)
    {
      dispatch_once(&tcpParse_offset__defaultOnce, &block);
    }

    if (tcpParse_offset__classDebugEnabled == 1)
    {
      v7 = MEMORY[0x1E696AEC0];
      Length = CFDataGetLength(parse);
      v9 = [v7 stringWithFormat:@"[PacketDecoder] TCP Packet too short: %@ Length: %ld", parse, Length, block, v23, v24, v25, v26];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities tcpParse:offset:]"];
      [PLCoreStorage logMessage:v9 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:543];

      v14 = PLLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dictionary = 0;
      goto LABEL_10;
    }
  }

  dictionary = 0;
LABEL_12:

  return dictionary;
}

BOOL __38__PLNetworkUtilities_tcpParse_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  tcpParse_offset__classDebugEnabled = result;
  return result;
}

+ (id)udpParse:(__CFData *)parse offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  *buffer = 0;
  if (CFDataGetLength(parse) >= offset + 8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v23.location = offsetCopy;
    v23.length = 8;
    CFDataGetBytes(parse, v23, buffer);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*buffer) >> 16];
    [dictionary setObject:v14 forKey:@"source_port"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[2]) >> 16];
    [dictionary setObject:v7 forKey:@"dest_port"];
LABEL_10:

    goto LABEL_12;
  }

  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __38__PLNetworkUtilities_udpParse_offset___block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v6;
    if (udpParse_offset__defaultOnce != -1)
    {
      dispatch_once(&udpParse_offset__defaultOnce, &v16);
    }

    if (udpParse_offset__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] UDP Packet too short", v16, v17, v18, v19, v20];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities udpParse:offset:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:566];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      dictionary = 0;
      goto LABEL_10;
    }
  }

  dictionary = 0;
LABEL_12:

  return dictionary;
}

BOOL __38__PLNetworkUtilities_udpParse_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  udpParse_offset__classDebugEnabled = result;
  return result;
}

+ (BOOL)isESPPacket:(__CFData *)packet offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  if (CFDataGetLength(packet) <= offset + 12)
  {
    return 0;
  }

  *buffer = 0;
  if (+[PLDefaults debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLNetworkUtilities_isESPPacket_offset___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (isESPPacket_offset__defaultOnce != -1)
    {
      dispatch_once(&isESPPacket_offset__defaultOnce, block);
    }

    if (isESPPacket_offset__classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Read marker value."];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities isESPPacket:offset:]"];
      [PLCoreStorage logMessage:v7 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:586];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v37.location = offsetCopy + 8;
  v37.length = 4;
  CFDataGetBytes(packet, v37, buffer);
  v13 = *buffer;
  v14 = *buffer != 0;
  v15 = +[PLDefaults debugEnabled];
  if (!v13)
  {
    if (v15)
    {
      v23 = objc_opt_class();
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_282;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v23;
      if (isESPPacket_offset__defaultOnce_280 != -1)
      {
        dispatch_once(&isESPPacket_offset__defaultOnce_280, v34);
      }

      if (isESPPacket_offset__classDebugEnabled_281 == 1)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Found an IKE packet"];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent2 = [v24 lastPathComponent];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities isESPPacket:offset:]"];
        [PLCoreStorage logMessage:v17 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:591];

        v22 = PLLogCommon(v27);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_23;
      }
    }

    return 0;
  }

  if (v15)
  {
    v16 = objc_opt_class();
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_288;
    v32 = &__block_descriptor_40_e5_v8__0lu32l8;
    v33 = v16;
    if (isESPPacket_offset__defaultOnce_286 != -1)
    {
      dispatch_once(&isESPPacket_offset__defaultOnce_286, &v29);
    }

    if (isESPPacket_offset__classDebugEnabled_287 == 1)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Found an ESP packet", v29, v30, v31, v32, v33];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
      lastPathComponent3 = [v18 lastPathComponent];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities isESPPacket:offset:]"];
      [PLCoreStorage logMessage:v17 fromFile:lastPathComponent3 fromFunction:v20 fromLineNumber:594];

      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_23:

      return v14;
    }
  }

  return 1;
}

BOOL __41__PLNetworkUtilities_isESPPacket_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isESPPacket_offset__classDebugEnabled = result;
  return result;
}

BOOL __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_282(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isESPPacket_offset__classDebugEnabled_281 = result;
  return result;
}

BOOL __41__PLNetworkUtilities_isESPPacket_offset___block_invoke_288(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isESPPacket_offset__classDebugEnabled_287 = result;
  return result;
}

+ (id)getSeqNoAndSPI:(__CFData *)i offset:(unsigned __int8)offset
{
  offsetCopy = offset;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  *buffer = 0;
  Length = CFDataGetLength(i);
  v8.location = offsetCopy;
  if (Length >= offsetCopy + 8)
  {
    v8.length = 8;
    CFDataGetBytes(i, v8, buffer);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*&buffer[4])];
    [dictionary setObject:v17 forKeyedSubscript:@"seqNo"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:bswap32(*buffer)];
    [dictionary setObject:v18 forKeyedSubscript:@"spi"];

    v16 = dictionary;
  }

  else
  {
    if (+[PLDefaults debugEnabled])
    {
      v9 = objc_opt_class();
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __44__PLNetworkUtilities_getSeqNoAndSPI_offset___block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v9;
      if (getSeqNoAndSPI_offset__defaultOnce != -1)
      {
        dispatch_once(&getSeqNoAndSPI_offset__defaultOnce, &v20);
      }

      if (getSeqNoAndSPI_offset__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PacketDecoder] Cannot get spi and seq no", v20, v21, v22, v23, v24];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLNetworkUtilities.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLNetworkUtilities getSeqNoAndSPI:offset:]"];
        [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:607];

        v15 = PLLogCommon(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v16 = 0;
  }

  return v16;
}

BOOL __44__PLNetworkUtilities_getSeqNoAndSPI_offset___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  getSeqNoAndSPI_offset__classDebugEnabled = result;
  return result;
}

@end