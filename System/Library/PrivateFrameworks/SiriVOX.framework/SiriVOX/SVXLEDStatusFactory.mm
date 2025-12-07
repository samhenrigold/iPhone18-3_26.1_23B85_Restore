@interface SVXLEDStatusFactory
- (SVXLEDStatusFactory)init;
- (id)createCommandForStatus:(id)status;
- (id)createStatusForColor:(id)color;
@end

@implementation SVXLEDStatusFactory

- (id)createStatusForColor:(id)color
{
  targetLEDSupplier = self->_targetLEDSupplier;
  colorCopy = color;
  v5 = [(SVXTargetLEDSupplier *)targetLEDSupplier get];
  colorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"individual %d %@", v5, colorCopy];

  return colorCopy;
}

- (id)createCommandForStatus:(id)status
{
  if (status)
  {
    v4 = [(NSDictionary *)self->_statusLEDCommands objectForKeyedSubscript:?];
    if (v4)
    {
      v5 = [(SVXLEDStatusFactory *)self createStatusForColor:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SVXLEDStatusFactory)init
{
  v11[3] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SVXLEDStatusFactory;
  v2 = [(SVXLEDStatusFactory *)&v9 init];
  if (v2)
  {
    v3 = *MEMORY[0x277D48CF0];
    v10[0] = *MEMORY[0x277D48CE8];
    v10[1] = v3;
    v11[0] = @"0 190 0";
    v11[1] = @"190 0 0";
    v10[2] = *MEMORY[0x277D48CF8];
    v11[2] = @"190 190 0";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    statusLEDCommands = v2->_statusLEDCommands;
    v2->_statusLEDCommands = v4;

    v6 = objc_alloc_init(SVXTargetLEDSupplier);
    targetLEDSupplier = v2->_targetLEDSupplier;
    v2->_targetLEDSupplier = v6;
  }

  return v2;
}

@end