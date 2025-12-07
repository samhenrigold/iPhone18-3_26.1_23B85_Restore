@interface GetNetworkInfoReportGenerator
- (GetNetworkInfoReportGenerator)initWithQueue:(id)queue;
- (void)setDefaults;
- (void)setGNINDFInfoOption:(BOOL)option;
- (void)setGNISensitiveOption:(BOOL)option;
- (void)setGNISysConfigOption:(BOOL)option;
@end

@implementation GetNetworkInfoReportGenerator

- (GetNetworkInfoReportGenerator)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = GetNetworkInfoReportGenerator;
  v3 = [(NetworkDiagnosticsReportGenerator *)&v7 initWithQueue:queue];
  v4 = v3;
  if (v3)
  {
    v5 = [(NetworkDiagnosticsReportGenerator *)v3 createDefaultTaskDictionaryWithTaskName:kNetDiagTaskGetNetworkInfo[0]];
    [(NetworkDiagnosticsReportGenerator *)v4 setOptions:v5];
    [(GetNetworkInfoReportGenerator *)v4 setDefaults];
  }

  return v4;
}

- (void)setDefaults
{
  v3 = +[ABCAdministrator sharedInstance];
  configurationManager = [v3 configurationManager];
  -[GetNetworkInfoReportGenerator setGNISensitiveOption:](self, "setGNISensitiveOption:", [configurationManager autoBugCaptureSensitivePayloads]);

  [(GetNetworkInfoReportGenerator *)self setGNISysConfigOption:1];

  [(GetNetworkInfoReportGenerator *)self setGNINDFInfoOption:1];
}

- (void)setGNISensitiveOption:(BOOL)option
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:option];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  [options setObject:v5 forKeyedSubscript:@"taskGNISensitive"];
}

- (void)setGNISysConfigOption:(BOOL)option
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:option];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  [options setObject:v5 forKeyedSubscript:@"taskGNISysConfig"];
}

- (void)setGNINDFInfoOption:(BOOL)option
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:option];
  options = [(NetworkDiagnosticsReportGenerator *)self options];
  [options setObject:v5 forKeyedSubscript:@"taskGNINDFInfo"];
}

@end