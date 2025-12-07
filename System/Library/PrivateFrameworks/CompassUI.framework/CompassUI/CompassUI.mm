double normalizedRotation(double a1, double a2)
{
  if (a2 <= 3.14159265)
  {
    if (a2 < -3.14159265)
    {
      a2 = a2 + 6.28318531;
    }
  }

  else
  {
    a2 = -(6.28318531 - a2);
  }

  v2 = a2 - a1;
  if (a2 - a1 > 3.14159265)
  {
    return a1 - (6.28318531 - v2);
  }

  if (v2 < -3.14159265)
  {
    return v2 + 6.28318531 + a1;
  }

  return a2;
}

void CGPointRoundToPixel()
{
  if (qword_27EDBA510 != -1)
  {
    sub_243D6FB10();
  }
}

void sub_243D6BF14(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a2, a3);
  objc_msgSend_scale(v6, v3, v4);
  qword_27EDBA4A8 = v5;
}

double ConvertDecimalDegreesToDMS(uint64_t *a1, void *a2, double *a3, double a4)
{
  if (a1)
  {
    v4 = a4;
    if (a4 < 0)
    {
      v4 = -v4;
    }

    *a1 = v4;
  }

  result = fabs((a4 - a4) * 60.0);
  if (a2)
  {
    *a2 = result;
  }

  if (a3)
  {
    result = (result - result) * 60.0;
    *a3 = result;
  }

  return result;
}

void ConvertDegreeSignToString(void *a1, const char *a2, double a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a2;
    v6 = (a3 * 3600.0);
    v7 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a4);
    v9 = v7;
    if (v4)
    {
      if (v6 < 0)
      {
        objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"cW", @"W", 0);
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"cE", @"E", 0);
      }
    }

    else if (v6 < 0)
    {
      objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"cS", @"S", 0);
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"cN", @"N", 0);
    }
    v11 = ;

    v10 = v11;
    *a1 = v10;
  }
}

id CreateCoordinateComponentString(const char *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    a2 = a3;
  }

  v5 = fabs((a2 - a2) * 60.0);
  v6 = v5;
  v7 = (v5 - v5) * 60.0;
  if (a2 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = -a2;
  }

  v31 = 0;
  ConvertDegreeSignToString(&v31, a1, a2, a5);
  v9 = v31;
  v10 = MEMORY[0x277CCABB8];
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, v8);
  v14 = objc_msgSend_localizedStringFromNumber_numberStyle_(v10, v13, v12, 0);

  v15 = MEMORY[0x277CCABB8];
  v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v16, v6);
  v19 = objc_msgSend_localizedStringFromNumber_numberStyle_(v15, v18, v17, 0);

  v20 = MEMORY[0x277CCABB8];
  v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v21, v22, v7);
  v25 = objc_msgSend_localizedStringFromNumber_numberStyle_(v20, v24, v23, 0);

  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  v27 = WebLocalizedString(0, "%1$@°%2$@′%3$@″ %4$@");
  v29 = objc_msgSend_initWithFormat_(v26, v28, v27, v14, v19, v25, v9, 0);

  return v29;
}

uint64_t StringWithLocationDirection(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = qword_27EDBA518;
  if (!qword_27EDBA518)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA60]);
    v7 = WebLocalizedString(0, "N");
    v8 = WebLocalizedString(0, "NE");
    v9 = WebLocalizedString(0, "E");
    v10 = WebLocalizedString(0, "SE");
    v11 = WebLocalizedString(0, "S");
    v12 = WebLocalizedString(0, "SW");
    v13 = WebLocalizedString(0, "W");
    v14 = WebLocalizedString(0, "NW");
    v16 = objc_msgSend_initWithObjects_(v6, v15, v7, v8, v9, v10, v11, v12, v13, v14, 0);
    v17 = qword_27EDBA518;
    qword_27EDBA518 = v16;

    v5 = qword_27EDBA518;
  }

  v18 = fmax(a1, 0.0);
  if (v18 > 360.0)
  {
    v18 = 360.0;
  }

  v19 = v18 / 360.0;
  v20 = objc_msgSend_count(v5, a3, a4);
  v21 = llround(v19 * v20) % v20;
  if (((v20 | v21) & 0x8000000000000000) == 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = qword_27EDBA518;

  return MEMORY[0x2821F9670](v23, sel_objectAtIndex_, v22);
}

id sharedHeadingFormatter(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"CompassHeadingFormatterKey");

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    objc_msgSend_setNumberStyle_(v8, v9, 0);
    v12 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x277CBEAF8], v10, v11);
    objc_msgSend_setLocale_(v8, v13, v12);

    objc_msgSend_setNegativePrefix_(v8, v14, @"−");
    v17 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v15, v16);
    v20 = objc_msgSend_threadDictionary(v17, v18, v19);
    objc_msgSend_setObject_forKey_(v20, v21, v8, @"CompassHeadingFormatterKey");
  }

  return v8;
}

id compassThinFont70G2()
{
  v26[1] = *MEMORY[0x277D85DE8];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemFontType|0x80, 70.0, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  v4 = objc_msgSend_fontDescriptor(CopyOfSystemUIFontWithGrade, v2, v3);
  CFRelease(UIFontForLanguage);
  CFRelease(CopyOfSystemUIFontWithGrade);
  v25 = *MEMORY[0x277D74338];
  v6 = *MEMORY[0x277D74388];
  v22[0] = *MEMORY[0x277D74398];
  v5 = v22[0];
  v22[1] = v6;
  v23[0] = &unk_2856FC218;
  v23[1] = &unk_2856FC230;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v23, v22, 2);
  v24[0] = v8;
  v20[0] = v5;
  v20[1] = v6;
  v21[0] = &unk_2856FC248;
  v21[1] = &unk_2856FC230;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v21, v20, 2);
  v24[1] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v24, 2);
  v26[0] = v12;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v26, &v25, 1);
  v16 = objc_msgSend_fontDescriptorByAddingAttributes_(v4, v15, v14);

  v18 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277D74300], v17, v16, 70.0);

  return v18;
}

id compassMediumFont20(uint64_t a1, const char *a2)
{
  v2 = *MEMORY[0x277D76A28];
  v3 = MEMORY[0x277D74300];
  v4 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], a2, *MEMORY[0x277D76A28]);
  objc_msgSend_pointSize(v4, v5, v6);
  v9 = objc_msgSend_systemFontOfSize_weight_(v3, v7, v8);

  v11 = objc_msgSend__fontScaledLikeTextStyle_maximumPointSize_compatibleWithTraitCollection_forIB_(v9, v10, v2, 0, 0, 26.0);

  return v11;
}

id sub_243D6C7D8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_layer(a1, a2, a3);
  v7 = objc_msgSend_presentationLayer(v4, v5, v6);

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = objc_msgSend_layer(a1, v8, v9);
  }

  v11 = v10;

  return v11;
}

double sub_243D6C858(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, double *a6)
{
  if (a4)
  {
    v6 = a1;
    if (a1 < 0)
    {
      v6 = -v6;
    }

    *a4 = v6;
  }

  result = fabs((a1 - a1) * 60.0);
  if (a5)
  {
    *a5 = result;
  }

  if (a6)
  {
    result = (result - result) * 60.0;
    *a6 = result;
  }

  return result;
}

void sub_243D6DB38(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v9 = objc_msgSend_objectForKey_(v3, v4, @"CalibrationMultiplier");

  v7 = v9;
  if (v9)
  {
    objc_msgSend_doubleValue(v9, v5, v6);
    v7 = v9;
  }

  else
  {
    v8 = 0;
  }

  qword_27EDBA520 = v8;
}

void sub_243D6F3AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = fmod(*(a1 + 40) + *(a1 + 48), 360.0);
    objc_msgSend_showTicAtAngle_withCredit_(v8, v4, v5, v3, 1.0);
    objc_msgSend_setAngle_(v8[130], v6, v7, v3 * 3.14159265 / 180.0);
    WeakRetained = v8;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}