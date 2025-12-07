@interface PGHolidayQuestion
- (PGHolidayQuestion)initWithAssetUUID:(id)d holidayName:(id)name localizedHolidayName:(id)holidayName localFactoryScore:(double)score;
@end

@implementation PGHolidayQuestion

- (PGHolidayQuestion)initWithAssetUUID:(id)d holidayName:(id)name localizedHolidayName:(id)holidayName localFactoryScore:(double)score
{
  v23[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  holidayNameCopy = holidayName;
  v21.receiver = self;
  v21.super_class = PGHolidayQuestion;
  v14 = [(PGHolidayQuestion *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityIdentifier, d);
    v15->_localFactoryScore = score;
    v15->_state = 0;
    if (holidayNameCopy)
    {
      v16 = holidayNameCopy;
    }

    else
    {
      v16 = nameCopy;
    }

    v17 = v16;

    v22[0] = *MEMORY[0x277D3C940];
    v22[1] = @"localizedHolidayName";
    v23[0] = nameCopy;
    v23[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v18;

    holidayNameCopy = v17;
  }

  return v15;
}

@end