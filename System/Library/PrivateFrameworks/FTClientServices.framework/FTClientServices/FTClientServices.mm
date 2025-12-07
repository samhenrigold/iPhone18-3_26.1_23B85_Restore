__CFString *FTCServiceNameForServiceType(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = FTCServiceNameFaceTime;
      return *v1;
    case 1:
      v1 = FTCServiceNameMadrid;
      return *v1;
    case 2:
      v1 = FTCServiceNameCalling;
      return *v1;
  }

  return 0;
}

void sub_24A9ACE54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (MarcoShouldLogRegistration())
  {
    if (!qword_27EF7F7C8)
    {
      goto LABEL_8;
    }

    v10 = objc_alloc(MEMORY[0x277CCAB68]);
    v15 = objc_msgSend_initWithCapacity_(v10, v11, 2 * qword_27EF7F7C8 + 3, v12);
    if (qword_27EF7F7C8)
    {
      v16 = 0;
      do
      {
        objc_msgSend_appendString_(v15, v13, @"  ", v14);
        ++v16;
      }

      while (v16 < qword_27EF7F7C8);
    }

    objc_msgSend_appendString_(v15, v13, @"=> ", v14);
    if (v15)
    {
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = objc_msgSend_initWithFormat_(v17, v18, @"%@%@", v19, v15, a2);
    }

    else
    {
LABEL_8:
      v20 = a2;
      v15 = 0;
    }

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_initWithFormat_arguments_(v21, v22, v20, &a9);
    MarcoLogRegistration();
  }
}

void sub_24A9ACFA4()
{
  if (qword_27EF7F7C8)
  {
    --qword_27EF7F7C8;
  }
}

uint64_t FTCServiceTypeForServiceName(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"iMessage", a4))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1, v5, @"Calling", v6))
  {
    return 2;
  }

  return 0;
}

FTCServiceAvailabilityCenter *sub_24A9AD018()
{
  result = objc_alloc_init(FTCServiceAvailabilityCenter);
  qword_280B21A70 = result;
  return result;
}

uint64_t sub_24A9ADCC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_object(*(a1 + 32), a2, a3, a4);

  return MEMORY[0x2821F9670](v4, sel_updateAvailability, v5, v6);
}