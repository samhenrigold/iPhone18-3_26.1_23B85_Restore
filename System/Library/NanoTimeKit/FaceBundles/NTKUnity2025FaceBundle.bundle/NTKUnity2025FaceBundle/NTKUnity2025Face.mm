@interface NTKUnity2025Face
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKUnity2025Face

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode, slot);
  v8 = objc_msgSend_device(self, v6, v7);
  v10 = objc_msgSend_numberOfOptionsForDevice_(v5, v9, v8);

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode);
  v10 = objc_msgSend_device(self, v8, v9);
  v12 = objc_msgSend_optionAtIndex_forDevice_(v7, v11, index, v10);

  return v12;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v9 = objc_msgSend__optionClassForCustomEditMode_(self, v8, mode);
  v12 = objc_msgSend_device(self, v10, v11);
  v14 = objc_msgSend_indexOfOption_forDevice_(v9, v13, optionCopy, v12);

  return v14;
}

+ (id)_complicationSlotDescriptors
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = NTKAllSignatureCircularTypes();
  v10[0] = *MEMORY[0x277D2BF08];
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();
  v11[0] = v4;
  v10[1] = *MEMORY[0x277D2BEE8];
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKMultiFamilyComplicationSlotDescriptor();
  v11[1] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v11, v10, 2);

  return v8;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v6[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D2BEE8];
  v6[0] = *MEMORY[0x277D2BF08];
  v6[1] = v3;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 2);

  return v4;
}

+ (id)_orderedComplicationSlots
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BEE8];
  v5[0] = *MEMORY[0x277D2BF08];
  v5[1] = v2;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v4, *MEMORY[0x277D2BF08]))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"SLOT_LABEL_%@", @"TOP_LEFT");
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BEE8]);
    v8 = @"BOTTOM_RIGHT";
    if (!isEqualToString)
    {
      v8 = 0;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"SLOT_LABEL_%@", v8);
  }
  v9 = ;
  v10 = NTKClockFaceLocalizedString();

  return v10;
}

@end