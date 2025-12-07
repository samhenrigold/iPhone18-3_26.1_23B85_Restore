@interface WFAssociationContext
- (NSString)originatorDescription;
- (NSString)stateDescription;
- (WFAssociationContext)initWithNetwork:(id)network;
- (id)description;
- (id)formattedStartDate;
- (id)networkName;
- (void)setState:(unint64_t)state;
@end

@implementation WFAssociationContext

- (WFAssociationContext)initWithNetwork:(id)network
{
  networkCopy = network;
  v11.receiver = self;
  v11.super_class = WFAssociationContext;
  v6 = [(WFAssociationContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_secondaryScanCompleted = 0;
    v6->_state = 0;
    v6->_originator = 0;
    objc_storeStrong(&v6->_network, network);
    date = [MEMORY[0x277CBEAA8] date];
    associationStart = v7->_associationStart;
    v7->_associationStart = date;
  }

  return v7;
}

- (void)setState:(unint64_t)state
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    v5 = WFLogForCategory(5uLL);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5)
    {
      v9 = v5;
      if (os_log_type_enabled(v9, v7))
      {
        state = self->_state;
        if (state > 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = off_279EBE090[state];
        }

        if (state > 2)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_279EBE090[state];
        }

        networkName = [(WFAssociationContext *)self networkName];
        v14 = 138412802;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = networkName;
        _os_log_impl(&dword_273ECD000, v9, v7, "association state changed: <%@> to <%@> for %@", &v14, 0x20u);
      }
    }

    self->_state = state;
  }
}

- (NSString)originatorDescription
{
  originator = self->_originator;
  if (originator > 2)
  {
    return 0;
  }

  else
  {
    return &off_279EBE078[originator]->isa;
  }
}

- (NSString)stateDescription
{
  state = self->_state;
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return &off_279EBE090[state]->isa;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  stateDescription = [(WFAssociationContext *)self stateDescription];
  originatorDescription = [(WFAssociationContext *)self originatorDescription];
  sectionNameJoined = [(WFAssociationContext *)self sectionNameJoined];
  formattedStartDate = [(WFAssociationContext *)self formattedStartDate];
  networkName = [(WFAssociationContext *)self networkName];
  v11 = [v3 stringWithFormat:@"<%@ : %p State:'%@' Originator='%@' Section='%@' Started='%@' Network='%@'>", v5, self, stateDescription, originatorDescription, sectionNameJoined, formattedStartDate, networkName];

  return v11;
}

- (id)networkName
{
  network = [(WFAssociationContext *)self network];
  ssid = [network ssid];

  return ssid;
}

- (id)formattedStartDate
{
  v2 = MEMORY[0x277CCA968];
  associationStart = [(WFAssociationContext *)self associationStart];
  v4 = [v2 localizedStringFromDate:associationStart dateStyle:1 timeStyle:3];

  return v4;
}

@end