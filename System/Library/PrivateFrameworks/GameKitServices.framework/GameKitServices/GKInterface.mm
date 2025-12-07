@interface GKInterface
+ (id)bsdNameForIndex:(id)index;
+ (id)interfaceWithInterfaceIndex:(id)index;
- (id)description;
- (void)dealloc;
@end

@implementation GKInterface

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKInterface;
  [(GKInterface *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  intValue = [(NSNumber *)[(GKInterface *)self index] intValue];
  if ([(GKInterface *)self bsdName])
  {
    v5 = [objc_msgSend_description(-[GKInterface bsdName](self "bsdName"))];
  }

  else
  {
    v5 = "<nil>";
  }

  if ([(GKInterface *)self type])
  {
    v6 = [objc_msgSend_description(-[GKInterface type](self "type"))];
  }

  else
  {
    v6 = "<nil>";
  }

  return [v3 stringWithFormat:@"GKInterface [%p] index [%d] bsdName [%s] type [%s] priority [%d]", self, intValue, v5, v6, -[GKInterface priority](self, "priority")];
}

+ (id)interfaceWithInterfaceIndex:(id)index
{
  v4 = objc_alloc_init(GKInterface);
  [(GKInterface *)v4 setIndex:index];
  [(GKInterface *)v4 setBsdName:[GKInterface bsdNameForIndex:index]];

  return v4;
}

+ (id)bsdNameForIndex:(id)index
{
  v8 = *MEMORY[0x277D85DE8];
  if ([index intValue] < 1)
  {
    return @"GKInterfaceBSDNameNone";
  }

  memset(v7, 170, sizeof(v7));
  if (if_indextoname([index intValue], v7))
  {
    return [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [(GKInterface *)v5 bsdNameForIndex:index, v6];
    }
  }

  return 0;
}

+ (void)bsdNameForIndex:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "+[GKInterface bsdNameForIndex:]";
  v8 = 1024;
  v9 = 70;
  v10 = 1024;
  v11 = [a2 intValue];
  _os_log_error_impl(&dword_24E50C000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed for interface index %d", &v4, 0x22u);
}

@end