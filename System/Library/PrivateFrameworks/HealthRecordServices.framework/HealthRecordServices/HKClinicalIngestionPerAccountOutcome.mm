@interface HKClinicalIngestionPerAccountOutcome
- (BOOL)isEqual:(id)equal;
- (HKClinicalIngestionPerAccountOutcome)initWithAccountIdentifier:(id)identifier info:(unint64_t)info;
- (HKClinicalIngestionPerAccountOutcome)initWithCoder:(id)coder;
- (id)formattedInfoStringJoinedByString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalIngestionPerAccountOutcome

- (HKClinicalIngestionPerAccountOutcome)initWithAccountIdentifier:(id)identifier info:(unint64_t)info
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HKClinicalIngestionPerAccountOutcome;
  v7 = [(HKClinicalIngestionPerAccountOutcome *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    accountIdentifier = v7->_accountIdentifier;
    v7->_accountIdentifier = v8;

    v7->_info = info;
  }

  return v7;
}

- (id)formattedInfoStringJoinedByString:(id)string
{
  v45[12] = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__HKClinicalIngestionPerAccountOutcome_formattedInfoStringJoinedByString___block_invoke;
  aBlock[3] = &unk_2796DD278;
  aBlock[4] = self;
  stringCopy = string;
  v3 = _Block_copy(aBlock);
  v4 = MEMORY[0x277CCACA8];
  v42 = v3[2](v3, 1);
  v41 = [v4 stringWithFormat:@"%@ gateway update", v42];
  v45[0] = v41;
  v5 = MEMORY[0x277CCACA8];
  v40 = v3[2](v3, 2);
  v39 = [v5 stringWithFormat:@"%@ ingestion eligible", v40];
  v45[1] = v39;
  v6 = MEMORY[0x277CCACA8];
  v38 = v3[2](v3, 4);
  v37 = [v6 stringWithFormat:@"%@ perform file import", v38];
  v45[2] = v37;
  v7 = MEMORY[0x277CCACA8];
  v36 = v3[2](v3, 8);
  v35 = [v7 stringWithFormat:@"%@ did ingest", v36];
  v45[3] = v35;
  v8 = MEMORY[0x277CCACA8];
  v34 = v3[2](v3, 16);
  v33 = [v8 stringWithFormat:@"%@ did run full ingest", v34];
  v45[4] = v33;
  v9 = MEMORY[0x277CCACA8];
  v32 = v3[2](v3, 2048);
  v31 = [v9 stringWithFormat:@"%@ did upgrade to full ingest", v32];
  v45[5] = v31;
  v10 = MEMORY[0x277CCACA8];
  v30 = v3[2](v3, 1024);
  v29 = [v10 stringWithFormat:@"%@ did postpone panel ingest", v30];
  v45[6] = v29;
  v11 = MEMORY[0x277CCACA8];
  v28 = v3[2](v3, 32);
  v27 = [v11 stringWithFormat:@"%@ did run extraction", v28];
  v45[7] = v27;
  v12 = MEMORY[0x277CCACA8];
  v13 = v3[2](v3, 64);
  v14 = [v12 stringWithFormat:@"%@ mark account as upgrade needed", v13];
  v45[8] = v14;
  v15 = MEMORY[0x277CCACA8];
  v16 = v3[2](v3, 256);
  v17 = [v15 stringWithFormat:@"%@ did run stale resources operation", v16];
  v45[9] = v17;
  v18 = MEMORY[0x277CCACA8];
  v19 = v3[2](v3, 512);
  v20 = [v18 stringWithFormat:@"%@ did detect gateway features", v19];
  v45[10] = v20;
  v21 = MEMORY[0x277CCACA8];
  v22 = v3[2](v3, 4096);
  v23 = [v21 stringWithFormat:@"%@ did block account from ingest", v22];
  v45[11] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:12];

  v25 = [v24 componentsJoinedByString:stringCopy];

  return v25;
}

__CFString *__74__HKClinicalIngestionPerAccountOutcome_formattedInfoStringJoinedByString___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 16) & a2) != 0)
  {
    return @"[X]";
  }

  else
  {
    return @"[_]";
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accountIdentifier = self->_accountIdentifier;
      accountIdentifier = [(HKClinicalIngestionPerAccountOutcome *)v6 accountIdentifier];
      if (accountIdentifier == accountIdentifier)
      {
        info = self->_info;
        v13 = info == [(HKClinicalIngestionPerAccountOutcome *)v6 info];
      }

      else
      {
        accountIdentifier2 = [(HKClinicalIngestionPerAccountOutcome *)v6 accountIdentifier];
        if (accountIdentifier2)
        {
          v10 = self->_accountIdentifier;
          accountIdentifier3 = [(HKClinicalIngestionPerAccountOutcome *)v6 accountIdentifier];
          if ([(NSUUID *)v10 isEqual:accountIdentifier3])
          {
            v12 = self->_info;
            v13 = v12 == [(HKClinicalIngestionPerAccountOutcome *)v6 info];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (HKClinicalIngestionPerAccountOutcome)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"Info"];

  v7 = [(HKClinicalIngestionPerAccountOutcome *)self initWithAccountIdentifier:v5 info:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"AccountIdentifier"];
  [coderCopy encodeInteger:self->_info forKey:@"Info"];
}

@end