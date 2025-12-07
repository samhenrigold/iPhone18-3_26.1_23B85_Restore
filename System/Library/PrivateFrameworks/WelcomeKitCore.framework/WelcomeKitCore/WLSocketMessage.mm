@interface WLSocketMessage
+ (id)messageWithData:(id)data error:(id *)error;
- (WLSocketMessage)initWithType:(unint64_t)type;
@end

@implementation WLSocketMessage

- (WLSocketMessage)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = WLSocketMessage;
  v4 = [(WLSocketMessage *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WLSocketMessage *)v4 setType:type];
  }

  return v5;
}

+ (id)messageWithData:(id)data error:(id *)error
{
  v63[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:error];
  v7 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      *error = 0;
    }

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:objc_msgSend(dataCopy length:"bytes") encoding:objc_msgSend(dataCopy freeWhenDone:{"length"), 4, 0}];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v8 length])
    {
      v14 = [[WLSocketCommandMessage alloc] initWithCommandString:v8];
      goto LABEL_51;
    }

    if (error)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected legacy command but got wrong format"];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D7B8F8];
      v48 = *MEMORY[0x277CCA450];
      v49 = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      *error = [v16 errorWithDomain:v17 code:1 userInfo:v18];
    }

    goto LABEL_50;
  }

  v8 = [v6 objectForKey:@"type"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!error || *error)
    {
      goto LABEL_50;
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected number type for the key 'type' but got wrong type instead"];
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D7B8F8];
    v62 = *MEMORY[0x277CCA450];
    v63[0] = v19;
    v22 = MEMORY[0x277CBEAC0];
    v23 = v63;
    v24 = &v62;
    goto LABEL_49;
  }

  unsignedLongLongValue = [v8 unsignedLongLongValue];
  if (unsignedLongLongValue == 2)
  {
    v10 = [v6 objectForKey:@"version"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = -[WLSocketVersionMessage initWithVersion:]([WLSocketVersionMessage alloc], "initWithVersion:", [v10 unsignedLongLongValue]);
        goto LABEL_23;
      }

      if (error && !*error)
      {
        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected string type for the key 'version' but got wrong type instead"];
        v42 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277D7B8F8];
        v54 = *MEMORY[0x277CCA450];
        v55 = v41;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        *error = [v42 errorWithDomain:v43 code:1 userInfo:v44];

        v7 = 0x277CBE000uLL;
      }
    }

    else if (error && !*error)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected string type for the key 'version' but got wrong nil instead"];
      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277D7B8F8];
      v56 = *MEMORY[0x277CCA450];
      v57 = v33;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      *error = [v34 errorWithDomain:v35 code:1 userInfo:v36];

      v7 = 0x277CBE000;
    }

LABEL_43:
    _WLLog();
    v14 = 0;
LABEL_44:

    if (v14)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  if (unsignedLongLongValue == 1)
  {
    v10 = [v6 objectForKey:@"command"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [[WLSocketCommandMessage alloc] initWithCommandString:v10];
LABEL_23:
        v14 = v11;
        goto LABEL_44;
      }

      if (error && !*error)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected string type for the key 'command' but got wrong type instead"];
        v38 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277D7B8F8];
        v58 = *MEMORY[0x277CCA450];
        v59 = v37;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *error = [v38 errorWithDomain:v39 code:1 userInfo:v40];

        v7 = 0x277CBE000;
      }
    }

    else if (error && !*error)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected string type for the key 'command' but got wrong nil instead"];
      v30 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277D7B8F8];
      v60 = *MEMORY[0x277CCA450];
      v61 = v29;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *error = [v30 errorWithDomain:v31 code:1 userInfo:v32];

      v7 = 0x277CBE000;
    }

    goto LABEL_43;
  }

  if (error && !*error)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected a valid value for the key 'type' but got unsupported value instead"];
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D7B8F8];
    v52 = *MEMORY[0x277CCA450];
    v53 = v25;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    *error = [v26 errorWithDomain:v27 code:1 userInfo:v28];
  }

  _WLLog();
LABEL_45:
  if (!error || *error)
  {
    goto LABEL_50;
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected a message but got nil instead"];
  v20 = MEMORY[0x277CCA9B8];
  v45 = v7;
  v21 = *MEMORY[0x277D7B8F8];
  v50 = *MEMORY[0x277CCA450];
  v51 = v19;
  v22 = *(v45 + 2752);
  v23 = &v51;
  v24 = &v50;
LABEL_49:
  v46 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
  *error = [v20 errorWithDomain:v21 code:1 userInfo:v46];

LABEL_50:
  _WLLog();
  v14 = 0;
LABEL_51:

  return v14;
}

@end