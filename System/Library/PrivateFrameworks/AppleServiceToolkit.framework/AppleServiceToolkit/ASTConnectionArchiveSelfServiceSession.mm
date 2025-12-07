@interface ASTConnectionArchiveSelfServiceSession
- (void)setSessionId:(id)id;
@end

@implementation ASTConnectionArchiveSelfServiceSession

- (void)setSessionId:(id)id
{
  v9[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7.receiver = self;
  v7.super_class = ASTConnectionArchiveSelfServiceSession;
  [(ASTMaterializedConnection *)&v7 setSessionId:idCopy];
  if (idCopy)
  {
    v8 = @"sessionId";
    v9[0] = idCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    rawBody = self->_rawBody;
    self->_rawBody = v5;

    [(ASTMaterializedConnection *)self addBody:self->_rawBody];
  }
}

@end