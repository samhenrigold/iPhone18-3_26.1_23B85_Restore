@interface ASDTPMDevice
+ (id)pmDeviceWithConfig:(id)config forSequencer:(id)sequencer;
- (ASDTPMDevice)initWithConfig:(id)config forSequencer:(id)sequencer;
- (ASDTPMSequencer)parentSequencer;
@end

@implementation ASDTPMDevice

+ (id)pmDeviceWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  sequencerCopy = sequencer;
  asdtSubclass = [configCopy asdtSubclass];
  v8 = [asdtSubclass isSubclassOfClass:objc_opt_class()];
  if (v8)
  {
    v10 = [[asdtSubclass alloc] initWithConfig:configCopy forSequencer:sequencerCopy];
  }

  else
  {
    v11 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMDevice pmDeviceWithConfig:configCopy forSequencer:?];
    }

    v10 = 0;
  }

  return v10;
}

- (ASDTPMDevice)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  sequencerCopy = sequencer;
  v21.receiver = self;
  v21.super_class = ASDTPMDevice;
  v8 = [(ASDTPMDevice *)&v21 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  [(ASDTPMDevice *)v8 setParentSequencer:sequencerCopy];
  [(ASDTPMDevice *)v9 setPowerState:0];
  -[ASDTPMDevice setPmNoStateChangeOnFailure:](v9, "setPmNoStateChangeOnFailure:", [configCopy asdtPMNoStateChangeOnFailure]);
  asdtName = [configCopy asdtName];
  [(ASDTPMDevice *)v9 setName:asdtName];

  name = [(ASDTPMDevice *)v9 name];

  if (!name)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [(ASDTPMDevice *)v9 setName:v13];
  }

  v14 = [configCopy asdtPMOrder:&v9->_pmOrderPowerUp forPowerUp:1];
  if ((v14 & 1) == 0)
  {
    v19 = ASDTBaseLogType(v14, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMDevice initWithConfig:v9 forSequencer:?];
    }

    goto LABEL_11;
  }

  v16 = [configCopy asdtPMOrder:&v9->_pmOrderPowerDown forPowerUp:0];
  if ((v16 & 1) == 0)
  {
    v19 = ASDTBaseLogType(v16, v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMDevice initWithConfig:v9 forSequencer:?];
    }

LABEL_11:

    v18 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v18 = v9;
LABEL_12:

  return v18;
}

- (ASDTPMSequencer)parentSequencer
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSequencer);

  return WeakRetained;
}

+ (void)pmDeviceWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"Subclass"];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "Invalid subclass name: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v1 = [a1 name];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Invalid or missing PMOrder (power up) property.", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.2(void *a1)
{
  v1 = [a1 name];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Invalid or missing PMOrder (power down) property.", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end