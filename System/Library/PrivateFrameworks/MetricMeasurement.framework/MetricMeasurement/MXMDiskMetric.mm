@interface MXMDiskMetric
+ (MXMDiskMetric)currentProcess;
- (MXMDiskMetric)initWithBundleIdentifier:(id)identifier;
- (MXMDiskMetric)initWithIdentifier:(id)identifier filter:(id)filter;
- (MXMDiskMetric)initWithProcessIdentifier:(int)identifier;
- (MXMDiskMetric)initWithProcessName:(id)name;
- (NSNumber)processIdentifier;
- (NSString)processName;
- (id)_constructProbe;
@end

@implementation MXMDiskMetric

+ (MXMDiskMetric)currentProcess
{
  v2 = [[self alloc] initWithProcessIdentifier:getpid()];

  return v2;
}

- (MXMDiskMetric)initWithProcessIdentifier:(int)identifier
{
  v3 = *&identifier;
  v5 = [MXMSampleTagFilter alloc];
  v6 = +[MXMUtilizationSampleTag IO];
  v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

  v8 = [MXMSampleAttributeFilter alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v10 = [(MXMSampleAttributeFilter *)v8 initWithAttributeName:@"Process Identifier" numericValue:v9];

  v11 = [MXMSampleFilter filterWithAttributeFilter:v10 tagFilter:v7];
  v12 = [(MXMDiskMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.disk" filter:v11];

  return v12;
}

- (MXMDiskMetric)initWithProcessName:(id)name
{
  if (name)
  {
    nameCopy = name;
    v5 = [MXMSampleTagFilter alloc];
    v6 = +[MXMUtilizationSampleTag IO];
    v7 = [(MXMSampleTagFilter *)v5 initWithTag:v6 allowDescendents:1];

    v8 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Name" stringValue:nameCopy];
    v9 = [MXMSampleFilter filterWithAttributeFilter:v8 tagFilter:v7];
    self = [(MXMDiskMetric *)self initWithIdentifier:@"com.apple.metricmeasurement.metric.disk" filter:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MXMDiskMetric)initWithBundleIdentifier:(id)identifier
{
  v4 = [MXMMachUtils _processNameWithBundleIdentifier:identifier];
  v5 = [(MXMDiskMetric *)self initWithProcessName:v4];

  return v5;
}

- (MXMDiskMetric)initWithIdentifier:(id)identifier filter:(id)filter
{
  v7.receiver = self;
  v7.super_class = MXMDiskMetric;
  v4 = [(MXMMetric *)&v7 initWithIdentifier:identifier filter:filter];
  v5 = v4;
  if (v4)
  {
    [(MXMMetric *)v4 setPreferredSampleMode:3];
  }

  return v5;
}

- (NSString)processName
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"Process Name"];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (NSNumber)processIdentifier
{
  filter = [(MXMMetric *)self filter];
  v3 = [filter attributeFilterWithName:@"Process Identifier"];
  numericValue = [v3 numericValue];

  return numericValue;
}

- (id)_constructProbe
{
  v2 = objc_alloc_init(MXMResourceProbe);

  return v2;
}

@end