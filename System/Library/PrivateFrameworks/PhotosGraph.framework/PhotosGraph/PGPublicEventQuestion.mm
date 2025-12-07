@interface PGPublicEventQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (PGPublicEventQuestion)initWithAssetUUID:(id)d publicEventMUID:(unint64_t)iD publicEventName:(id)name publicEventSource:(id)source localFactoryScore:(double)score;
@end

@implementation PGPublicEventQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  type = [(PGPublicEventQuestion *)self type];
  if (type == [questionCopy type] && (objc_msgSend(questionCopy, "additionalInfo"), v6 = objc_claimAutoreleasedReturnValue(), v7 = *MEMORY[0x277D3C988], objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x277D3C988]), v8 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](self->_additionalInfo, "objectForKeyedSubscript:", v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v6, v10))
  {
    additionalInfo = [questionCopy additionalInfo];
    v12 = *MEMORY[0x277D3C990];
    v13 = [additionalInfo objectForKeyedSubscript:*MEMORY[0x277D3C990]];
    v14 = [(NSDictionary *)self->_additionalInfo objectForKeyedSubscript:v12];
    v15 = [v13 isEqual:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (PGPublicEventQuestion)initWithAssetUUID:(id)d publicEventMUID:(unint64_t)iD publicEventName:(id)name publicEventSource:(id)source localFactoryScore:(double)score
{
  v26[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  sourceCopy = source;
  v24.receiver = self;
  v24.super_class = PGPublicEventQuestion;
  v16 = [(PGPublicEventQuestion *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_entityIdentifier, d);
    v17->_localFactoryScore = score;
    v17->_state = 0;
    v25[0] = *MEMORY[0x277D3C988];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:iD];
    v19 = *MEMORY[0x277D3C990];
    v26[0] = v18;
    v26[1] = nameCopy;
    v20 = *MEMORY[0x277D3C998];
    v25[1] = v19;
    v25[2] = v20;
    v26[2] = sourceCopy;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    additionalInfo = v17->_additionalInfo;
    v17->_additionalInfo = v21;
  }

  return v17;
}

@end