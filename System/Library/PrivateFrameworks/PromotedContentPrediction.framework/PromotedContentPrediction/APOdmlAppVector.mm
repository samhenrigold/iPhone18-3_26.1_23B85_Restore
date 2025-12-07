@interface APOdmlAppVector
- (APOdmlAppVector)initWithString:(id)string version:(id)version;
- (APOdmlAppVector)initWithVersion:(id)version header:(APOdmlAppVectorHeader *)header floats:(float *)floats;
- (id)data;
- (id)description;
@end

@implementation APOdmlAppVector

- (APOdmlAppVector)initWithVersion:(id)version header:(APOdmlAppVectorHeader *)header floats:(float *)floats
{
  selfCopy = self;
  v16 = *MEMORY[0x277D85DE8];
  if (header)
  {
    var2 = header->var2;
    v13.receiver = self;
    v13.super_class = APOdmlAppVector;
    v8 = [(APOdmlVector *)&v13 initWithVersion:version length:var2 floats:floats];
    if (v8)
    {
      v8->_adamID = header->var0;
    }

    selfCopy = v8;
    v9 = selfCopy;
  }

  else
  {
    v10 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Attempt to construct APOdmlAppVector without a header.", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (APOdmlAppVector)initWithString:(id)string version:(id)version
{
  v39 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  versionCopy = version;
  if (stringCopy)
  {
    v8 = [stringCopy componentsSeparatedByString:@"\t"];
    firstObject = [v8 firstObject];
    integerValue = [firstObject integerValue];

    if ([v8 count]== 2)
    {
      v33 = versionCopy;
      v31 = integerValue;
      if (qword_27FE60370 != -1)
      {
        sub_260EF80C4();
      }

      v11 = [v8 objectAtIndex:1];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v13 = [v11 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      array = [MEMORY[0x277CBEB18] array];
      v32 = v13;
      v15 = [v13 componentsSeparatedByString:@", "];
      if ([v15 count])
      {
        v16 = 0;
        while (1)
        {
          v17 = [v15 objectAtIndex:v16];
          v18 = [qword_27FE60368 numberFromString:v17];
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v20 = [qword_27FE60368 numberFromString:v17];
          [array addObject:v20];

          if (++v16 >= [v15 count])
          {
            goto LABEL_9;
          }
        }

        [v17 doubleValue];
        stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The provided string (%@) for doubleValue %.7lf at index %lu was not able to be converted to a number. Full line:\n%@", v17, v26, v16, stringCopy];
        v28 = OdmlLogForCategory(2uLL);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = objc_opt_class();
          v37 = 2112;
          v38 = stringCopy;
          v29 = v36;
          _os_log_impl(&dword_260ECB000, v28, OS_LOG_TYPE_ERROR, "[%@] ERROR: %@", buf, 0x16u);
        }

        APOdmlSimulateCrash(2880291038, stringCopy, 0);
        selfCopy = 0;
        versionCopy = v33;
      }

      else
      {
LABEL_9:
        v34.receiver = self;
        v34.super_class = APOdmlAppVector;
        versionCopy = v33;
        v21 = [(APOdmlVector *)&v34 initWithVersion:v33 andArray:array];
        if (v21)
        {
          v21->_adamID = v31;
        }

        self = v21;
        selfCopy = self;
      }

      v24 = v32;
    }

    else
    {
      v24 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = objc_opt_class();
        v37 = 2112;
        v38 = stringCopy;
        v25 = v36;
        _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_ERROR, "[%@]: ERROR: The line does not conform to our expectations: %@", buf, 0x16u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v8 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v36 = objc_opt_class();
      v37 = 2112;
      v38 = 0;
      v23 = v36;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "[%@]: ERROR: nil datastring passed into parser: %@.", buf, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)data
{
  v3 = [(APOdmlVector *)self length];
  v4 = [MEMORY[0x277CBEB28] dataWithCapacity:4 * v3 + 16];
  v9 = 1447253074;
  adamID = [(APOdmlAppVector *)self adamID];
  v10 = [(APOdmlVector *)self length];
  [v4 appendBytes:&adamID length:16];
  v7.receiver = self;
  v7.super_class = APOdmlAppVector;
  data = [(APOdmlVector *)&v7 data];
  [v4 appendData:data];

  return v4;
}

- (id)description
{
  v9[2] = *MEMORY[0x277D85DE8];
  arrayOfNumbers = [(APOdmlVector *)self arrayOfNumbers];
  v8[0] = @"adamID";
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", -[APOdmlAppVector adamID](self, "adamID")];
  v8[1] = @"vector";
  v9[0] = v4;
  v9[1] = arrayOfNumbers;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [v5 description];

  return v6;
}

@end