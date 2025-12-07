@interface NRParameters
- (NRParameters)init;
- (NRParameters)initWithParameters:(id)parameters;
- (id)description;
- (void)setServiceClass:(unsigned __int8)class;
@end

@implementation NRParameters

- (void)setServiceClass:(unsigned __int8)class
{
  self->_serviceClass = class;
  parameters = self->_parameters;
  if ((class - 1) > 4)
  {
    v4 = nw_service_class_best_effort;
  }

  else
  {
    v4 = dword_25B9FC460[(class - 1)];
  }

  nw_parameters_set_service_class(parameters, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self)
  {
    parameters = self->_parameters;
  }

  else
  {
    parameters = 0;
  }

  parameters = [v3 initWithFormat:@"NRParameters<%@>", parameters];

  return parameters;
}

- (NRParameters)initWithParameters:(id)parameters
{
  v21 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v20.receiver = self;
  v20.super_class = NRParameters;
  v5 = [(NRParameters *)&v20 init];
  if (!v5)
  {
    v9 = nrCopyLogObj_2805();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = nrCopyLogObj_2805();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRParameters initWithParameters:]"", 108);

LABEL_7:
    v13 = _os_log_pack_size();
    v15 = &v19 - ((MEMORY[0x28223BE20](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(v15, v13, *v16, &dword_25B98C000, "%{public}s [super init] failed");
    *v17 = 136446210;
    *(v17 + 4) = "[NRParameters initWithParameters:]";
    v18 = nrCopyLogObj_2805();
    _NRLogAbortWithPack(v18, v15);
  }

  v6 = v5;
  parameters = v5->_parameters;
  v5->_parameters = parametersCopy;

  return v6;
}

- (NRParameters)init
{
  v3 = MEMORY[0x25F873D00](self, a2);
  v4 = [(NRParameters *)self initWithParameters:v3];

  return v4;
}

@end