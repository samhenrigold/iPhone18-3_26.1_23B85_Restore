@interface GKInterfacePrioritizer
+ (id)bsdNameToInterfaceTypeMap;
+ (id)prioritizeLocalInterfaces:(id)interfaces;
+ (void)initialize;
@end

@implementation GKInterfacePrioritizer

+ (void)initialize
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  gkInterfacePrioritizerTypeToPriorityMap = [v2 initWithCapacity:gkInterfaceTypesCount];
  [gkInterfacePrioritizerTypeToPriorityMap setObject:&unk_28619C050 forKeyedSubscript:*MEMORY[0x277CE16D0]];
  [gkInterfacePrioritizerTypeToPriorityMap setObject:&unk_28619C068 forKeyedSubscript:*MEMORY[0x277CE16D8]];
  [gkInterfacePrioritizerTypeToPriorityMap setObject:&unk_28619C080 forKeyedSubscript:*MEMORY[0x277CE16C8]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (gkInterfacePrioritizerTypeToPriorityMap)
      {
        uTF8String = [objc_msgSend_description(gkInterfacePrioritizerTypeToPriorityMap) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[GKInterfacePrioritizer initialize]";
      v10 = 1024;
      v11 = 91;
      v12 = 2080;
      v13 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d interfaceType2PriorityMap: %s", &v6, 0x26u);
    }
  }

  gkInterfaceTypesCount = [gkInterfacePrioritizerTypeToPriorityMap count];
}

+ (id)bsdNameToInterfaceTypeMap
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = SCNetworkInterfaceCopyAll();
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[__CFArray count](v2, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v27;
    v8 = *MEMORY[0x277CE16D0];
    v25 = *MEMORY[0x277CE16C8];
    *&v5 = 136316162;
    v24 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        InterfaceType = SCNetworkInterfaceGetInterfaceType(v10);
        BSDName = SCNetworkInterfaceGetBSDName(v10);
        v13 = BSDName;
        if (InterfaceType)
        {
          v14 = BSDName == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (InterfaceType)
              {
                uTF8String = [objc_msgSend_description(InterfaceType) UTF8String];
                if (v13)
                {
                  goto LABEL_15;
                }

LABEL_25:
                v18 = "<nil>";
              }

              else
              {
                uTF8String = "<nil>";
                if (!v13)
                {
                  goto LABEL_25;
                }

LABEL_15:
                v18 = [objc_msgSend_description(v13 v24)];
              }

              *buf = v24;
              v31 = v15;
              v32 = 2080;
              v33 = "+[GKInterfacePrioritizer bsdNameToInterfaceTypeMap]";
              v34 = 1024;
              v35 = 107;
              v36 = 2080;
              v37 = uTF8String;
              v38 = 2080;
              v39 = v18;
              _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d invalid type [%s] or bsd name [%s]", buf, 0x30u);
            }
          }
        }

        else
        {
          if ([(__CFString *)InterfaceType isEqualToString:v8]&& (_SCNetworkInterfaceIsBluetoothPAN() || _SCNetworkInterfaceIsBluetoothPAN_NAP() || _SCNetworkInterfaceIsBluetoothP2P()))
          {
            InterfaceType = v25;
          }

          [v3 setObject:InterfaceType forKeyedSubscript:{v13, v24}];
        }

        ++v9;
      }

      while (v6 != v9);
      v19 = [(__CFArray *)v2 countByEnumeratingWithState:&v26 objects:v40 count:16];
      v6 = v19;
    }

    while (v19);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        uTF8String2 = [objc_msgSend_description(v3) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      *buf = 136315906;
      v31 = v20;
      v32 = 2080;
      v33 = "+[GKInterfacePrioritizer bsdNameToInterfaceTypeMap]";
      v34 = 1024;
      v35 = 123;
      v36 = 2080;
      v37 = uTF8String2;
      _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bsdName2interfaceTypeMap: %s", buf, 0x26u);
    }
  }

  return v3;
}

+ (id)prioritizeLocalInterfaces:(id)interfaces
{
  v41 = *MEMORY[0x277D85DE8];
  if ([interfaces count])
  {
    v4 = +[GKInterfacePrioritizer bsdNameToInterfaceTypeMap];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(interfaces, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [interfaces countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(interfaces);
          }

          v10 = [GKInterface interfaceWithInterfaceIndex:*(*(&v28 + 1) + 8 * i)];
          v11 = [v4 objectForKeyedSubscript:{-[GKInterface bsdName](v10, "bsdName")}];
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = @"GKInterfaceTypeUnknown";
          }

          [(GKInterface *)v10 setType:v12];
          v13 = [gkInterfacePrioritizerTypeToPriorityMap objectForKeyedSubscript:{-[GKInterface type](v10, "type")}];
          if (v13)
          {
            unsignedIntValue = [v13 unsignedIntValue];
          }

          else
          {
            unsignedIntValue = gkInterfaceTypesCount;
          }

          [(GKInterface *)v10 setPriority:unsignedIntValue];
          [v5 addObject:v10];
        }

        v7 = [interfaces countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v7);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        v33 = v15;
        v34 = 2080;
        v35 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
        v36 = 1024;
        v37 = 150;
        v38 = 2080;
        v39 = uTF8String;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before sorting %s", buf, 0x26u);
      }
    }

    [v5 sortUsingComparator:&__block_literal_global_2];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String2 = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        *buf = 136315906;
        v33 = v21;
        v34 = 2080;
        v35 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
        v36 = 1024;
        v37 = 163;
        v38 = 2080;
        v39 = uTF8String2;
        _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d after sorting %s", buf, 0x26u);
      }
    }

    if ([v5 count])
    {
      v24 = 0;
      do
      {
        [v5 setObject:objc_msgSend(objc_msgSend(v5 atIndexedSubscript:{"objectAtIndexedSubscript:", v24), "index"), v24}];
        ++v24;
      }

      while (v24 < [v5 count]);
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String3 = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String3 = "<nil>";
        }

        *buf = 136315906;
        v33 = v25;
        v34 = 2080;
        v35 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
        v36 = 1024;
        v37 = 170;
        v38 = 2080;
        v39 = uTF8String3;
        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ordered interface indices %s", buf, 0x26u);
      }
    }

    return v5;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [(GKInterfacePrioritizer *)v18 prioritizeLocalInterfaces:v19];
      }
    }

    return 0;
  }
}

uint64_t __52__GKInterfacePrioritizer_prioritizeLocalInterfaces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 priority];
  if (v5 < [a3 priority])
  {
    return -1;
  }

  v7 = [a2 priority];
  return v7 > [a3 priority];
}

+ (void)prioritizeLocalInterfaces:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
  v6 = 1024;
  v7 = 131;
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d no interfaces at input", &v2, 0x1Cu);
}

@end