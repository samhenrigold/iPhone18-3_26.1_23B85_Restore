@interface TYRecapCommand
- (TYRecapCommand)initWithCommandType:(int)type commandString:(id)string commandDescription:(id)description;
- (id)description;
- (void)updateCommand:(int)command commandString:(id)string commandDescription:(id)description;
@end

@implementation TYRecapCommand

- (TYRecapCommand)initWithCommandType:(int)type commandString:(id)string commandDescription:(id)description
{
  v6 = *&type;
  stringCopy = string;
  descriptionCopy = description;
  v13.receiver = self;
  v13.super_class = TYRecapCommand;
  v10 = [(TYRecapCommand *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(TYRecapCommand *)v10 updateCommand:v6 commandString:stringCopy commandDescription:descriptionCopy];
  }

  return v11;
}

- (void)updateCommand:(int)command commandString:(id)string commandDescription:(id)description
{
  v6 = *&command;
  descriptionCopy = description;
  stringCopy = string;
  [(TYRecapCommand *)self setRecapWaitOverrideInterval:0.0];
  [(TYRecapCommand *)self setCommandType:v6];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [stringCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  [(TYRecapCommand *)self setCommandString:v11];
  [(TYRecapCommand *)self setCommandDescription:descriptionCopy];

  commandString = [(TYRecapCommand *)self commandString];
  whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v14 = [commandString stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
  v16 = [v14 componentsSeparatedByString:@" "];

  if (v6 == 1)
  {
    v15 = [MEMORY[0x277D44358] eventStreamWithCLIArguments:v16];
    [(TYRecapCommand *)self setEventStream:v15];
  }

  else
  {
    [(TYRecapCommand *)self setEventStream:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  commandDescription = [(TYRecapCommand *)self commandDescription];
  commandString = [(TYRecapCommand *)self commandString];
  v6 = [v3 stringWithFormat:@"%@\n(%@)", commandDescription, commandString];

  return v6;
}

@end