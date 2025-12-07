BOOL Hangul2SetAutomata::SendUniChar(Hangul2SetAutomata *this, HangulSyllable *a2, BOOL *a3)
{
  v4 = a2;
  *&v45.var0 = 0;
  v45.var2 = 0;
  *a3 = 0;
  JamoType = HangulSyllable::GetJamoType(a2);
  v8 = JamoType;
  if (JamoType == -1)
  {
    *a3 = 1;
    Hangul2SetAutomata::Reset(this);
    return v8 != -1;
  }

  var3 = this->var3;
  if (var3 > 2)
  {
    if (var3 > 4)
    {
      if (var3 == 5)
      {
        var2 = this->var5.var2;
        if (v8 != 1)
        {
          goto LABEL_47;
        }

        v23 = HangulSyllable::JongRightHalf(var2);
        v25 = HangulSyllable::MapChoAndJong(v23, v24);
        HangulSyllable::SetCho(&chars, v25);
        HangulSyllable::SetJung(&chars, v4);
        HangulSyllable::SetJong(&chars, 0);
        if (HangulSyllable::CanCompose(&chars))
        {
          v26 = 3;
        }

        else
        {
          if (v4 != 12685)
          {
            goto LABEL_60;
          }

          v26 = 6;
        }

        this->var3 = v26;
        v35 = HangulSyllable::JongLeftHalf(this->var5.var2);
        HangulSyllable::SetJong(&this->var5, v35);
        v45 = chars;
        *&this->var1 = 65538;
        *a3 = 1;
        goto LABEL_62;
      }

      if (var3 != 6)
      {
        goto LABEL_62;
      }
    }

    else if (var3 != 3)
    {
      if (JamoType == 1)
      {
        v10 = HangulSyllable::MapChoAndJong(this->var5.var2, v7);
        HangulSyllable::SetCho(&chars, v10);
        HangulSyllable::SetJung(&chars, v4);
        HangulSyllable::SetJong(&chars, 0);
        if (HangulSyllable::CanCompose(&chars))
        {
          v45 = chars;
          HangulSyllable::SetJong(&this->var5, 0);
          this->var3 = 3;
          v11 = 1;
          *a3 = 1;
          v12 = 2;
        }

        else if (v4 == 12685)
        {
          HangulSyllable::SetJong(&this->var5, 0);
          HangulSyllable::SetCho(&v45, chars.var0);
          HangulSyllable::SetJung(&v45, 12685);
          this->var3 = 6;
          v12 = 2;
          v11 = 1;
        }

        else
        {
          HangulSyllable::SetJung(&v45, v4);
          v11 = 0;
          v12 = 1;
          this->var3 = 1;
          *a3 = 1;
        }

        this->var2 = v11;
        this->var1 = v12;
        goto LABEL_62;
      }

      var2 = this->var5.var2;
LABEL_47:
      v31 = HangulSyllable::DoubleJong(var2, v4);
      if (v31)
      {
        v32 = v31;
        var1 = this->var5.var1;
        HangulSyllable::SetCho(&chars, this->var5.var0);
        HangulSyllable::SetJung(&chars, var1);
        HangulSyllable::SetJong(&chars, v32);
        if (HangulSyllable::CanCompose(&chars))
        {
          HangulSyllable::SetJong(&this->var5, v32);
          v16 = 1;
          v34 = 5;
        }

        else
        {
          HangulSyllable::SetCho(&v45, v4);
          v16 = 0;
          *a3 = 1;
          v34 = 2;
        }

        this->var3 = v34;
LABEL_53:
        this->var2 = v16;
LABEL_54:
        this->var1 = 1;
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (JamoType != 1)
    {
      v27 = this->var5.var1;
      HangulSyllable::SetCho(&chars, this->var5.var0);
      HangulSyllable::SetJung(&chars, v27);
      HangulSyllable::SetJong(&chars, v4);
      if (HangulSyllable::NormalizeJong(v4) && HangulSyllable::CanCompose(&chars))
      {
        HangulSyllable::SetJong(&this->var5, v4);
        this->var3 = 4;
        v16 = 1;
      }

      else
      {
        HangulSyllable::SetCho(&v45, v4);
        v16 = 0;
        this->var3 = 2;
        *a3 = 1;
      }

      goto LABEL_53;
    }

    v17 = HangulSyllable::DoubleJung(this->var5.var1, v4, this->var7);
    if (v17)
    {
      v18 = v17;
      HangulSyllable::SetCho(&this->var6, this->var5.var0);
      HangulSyllable::SetJung(&this->var6, v18);
      HangulSyllable::SetJong(&this->var6, 0);
      if (HangulSyllable::CanCompose(&this->var6))
      {
        if (this->var3 == 6)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        this->var2 = v19;
        this->var1 = 1;
        this->var3 = 3;
        *&this->var5.var0 = *&this->var6.var0;
        this->var5.var2 = this->var6.var2;
        goto LABEL_62;
      }

      if (v4 == 12685)
      {
        *&this->var1 = 65537;
        HangulSyllable::SetJung(&this->var5, this->var6.var1);
        HangulSyllable::SetJong(&this->var5, 0);
        this->var3 = 6;
        goto LABEL_62;
      }
    }

LABEL_60:
    HangulSyllable::SetJung(&v45, v4);
    this->var3 = 1;
    goto LABEL_61;
  }

  if (var3)
  {
    if (var3 == 1)
    {
      if (JamoType == 1)
      {
        v28 = HangulSyllable::DoubleJung(this->var5.var1, v4, this->var7);
        if (v28)
        {
          v29 = v28;
          HangulSyllable::SetCho(&chars, 0);
          HangulSyllable::SetJung(&chars, v29);
          HangulSyllable::SetJong(&chars, 0);
          if (HangulSyllable::CanCompose(&chars))
          {
            v30 = 1;
            this->var3 = 1;
            HangulSyllable::Set(&this->var5, 0, v29, 0);
          }

          else
          {
            HangulSyllable::SetJung(&v45, v4);
            v30 = 0;
            this->var3 = 1;
            *a3 = 1;
          }

          this->var2 = v30;
          goto LABEL_54;
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (var3 != 2)
      {
        goto LABEL_62;
      }

      if (JamoType == 1)
      {
        v13 = this->var5.var2;
        HangulSyllable::SetCho(&this->var6, this->var5.var0);
        HangulSyllable::SetJung(&this->var6, v4);
        HangulSyllable::SetJong(&this->var6, v13);
        CanCompose = HangulSyllable::CanCompose(&this->var6);
        if (v4 == 12685 || CanCompose)
        {
          if (v4 == 12685)
          {
            v15 = 6;
          }

          else
          {
            v15 = 3;
          }

          this->var3 = v15;
          HangulSyllable::SetJung(&this->var5, this->var6.var1);
          HangulSyllable::SetJong(&this->var5, 0);
          v16 = this->var3 != 6;
          goto LABEL_53;
        }

        goto LABEL_60;
      }
    }

LABEL_50:
    HangulSyllable::SetCho(&v45, v4);
    this->var3 = 2;
LABEL_61:
    *a3 = 1;
    *&this->var1 = 1;
    goto LABEL_62;
  }

  if (JamoType == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v4;
  }

  if (JamoType == 1)
  {
    v21 = 1;
  }

  else
  {
    LODWORD(v4) = 0;
    v21 = 2;
  }

  HangulSyllable::SetCho(&this->var5, v20);
  HangulSyllable::SetJung(&this->var5, v4);
  HangulSyllable::SetJong(&this->var5, 0);
  this->var3 = v21;
  *&this->var1 = 1;
LABEL_62:
  v36 = this->var1;
  if (v36 == 2)
  {
    Hangul2SetAutomata::ClearOutputString(this);
    chars.var0 = HangulSyllable::GetUnicode(&this->var5);
    var4 = this->var4;
    if (var4)
    {
      CFStringAppendCharacters(var4, &chars.var0, 1);
    }

    if (this->var3 == 6)
    {
      chars.var0 = v45.var0;
      v39 = this->var4;
      if (!v39)
      {
        goto LABEL_79;
      }

      CFStringAppendCharacters(v39, &chars.var0, 1);
      v40 = this->var4;
      chars.var0 = v45.var1;
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      chars.var0 = HangulSyllable::GetUnicode(&v45);
      v40 = this->var4;
      if (!v40)
      {
LABEL_79:
        this->var5 = v45;
        return v8 != -1;
      }
    }

    CFStringAppendCharacters(v40, &chars.var0, 1);
    goto LABEL_79;
  }

  if (v36 == 1)
  {
    Hangul2SetAutomata::ClearOutputString(this);
    if (*a3)
    {
      chars.var0 = HangulSyllable::GetUnicode(&v45);
      v37 = this->var4;
      if (v37)
      {
        CFStringAppendCharacters(v37, &chars.var0, 1);
      }

      this->var5 = v45;
    }

    else
    {
      if (this->var3 == 6)
      {
        v41 = this->var5.var1;
        if (v41 == 4510)
        {
          LOWORD(v41) = HangulSyllable::JungToCompatibility(0x119E);
        }
      }

      else
      {
        LOWORD(v41) = HangulSyllable::GetUnicode(&this->var5);
      }

      chars.var0 = v41;
      v42 = this->var4;
      if (v42)
      {
        CFStringAppendCharacters(v42, &chars.var0, 1);
      }
    }
  }

  return v8 != -1;
}

void Hangul2SetAutomata::Reset(Hangul2SetAutomata *this)
{
  *&this->var1 = 0;
  this->var3 = 0;
  HangulSyllable::SetCho(&this->var5, 0);
  HangulSyllable::SetJung(&this->var5, 0);
  HangulSyllable::SetJong(&this->var5, 0);

  Hangul2SetAutomata::ClearOutputString(this);
}

HangulSyllable *HangulSyllable::Set(HangulSyllable *this, unsigned __int16 a2, int a3, int a4)
{
  HangulSyllable::SetCho(this, a2);
  HangulSyllable::SetJung(this, a3);

  return HangulSyllable::SetJong(this, a4);
}

void Hangul2SetAutomata::ClearOutputString(Hangul2SetAutomata *this)
{
  var4 = this->var4;
  if (var4)
  {
    Length = CFStringGetLength(var4);
    if (Length >= 1)
    {
      v5.length = Length;
      v4 = this->var4;
      v5.location = 0;

      CFStringDelete(v4, v5);
    }
  }
}

void Hangul2SetAutomata::AppendCharToOutput(Hangul2SetAutomata *this, UniChar a2)
{
  chars = a2;
  var4 = this->var4;
  if (var4)
  {
    CFStringAppendCharacters(var4, &chars, 1);
  }
}

uint64_t Hangul2SetAutomata::HandleDelete(Hangul2SetAutomata *this, unsigned __int16 a2)
{
  var3 = this->var3;
  if (var3 > 2)
  {
    if (var3 <= 4)
    {
      if (var3 == 3)
      {
        v7 = HangulSyllable::VowelLeftHalf(this->var5.var1);
        if (!v7)
        {
          HangulSyllable::SetJung(&this->var5, 0);
          HangulSyllable::SetJong(&this->var5, 0);
          v8 = 2;
          goto LABEL_22;
        }

        HangulSyllable::SetJung(&this->var5, v7);
      }

      else
      {
        HangulSyllable::SetJong(&this->var5, 0);
      }

      v8 = 3;
LABEL_22:
      this->var3 = v8;
      *&this->var1 = 65537;
      var3 = 2;
      goto LABEL_27;
    }

    if (var3 == 5)
    {
      v9 = HangulSyllable::JongLeftHalf(this->var5.var2);
      HangulSyllable::SetJong(&this->var5, v9);
      v8 = 4;
      goto LABEL_22;
    }

    if (var3 != 6)
    {
      goto LABEL_27;
    }

    HangulSyllable::SetJung(&this->var5, 0);
    p_var5 = &this->var5;
    goto LABEL_13;
  }

  if (!var3)
  {
    this->var0 = 1;
    goto LABEL_27;
  }

  if (var3 == 1)
  {
    v10 = HangulSyllable::VowelLeftHalf(this->var5.var1);
    HangulSyllable::SetCho(&this->var5, 0);
    v11 = &this->var5;
    if (v10)
    {
      HangulSyllable::SetJung(v11, v10);
      HangulSyllable::SetJong(&this->var5, 0);
      v8 = 1;
      goto LABEL_22;
    }

    HangulSyllable::SetJung(v11, 0);
    v12 = &this->var5;
    goto LABEL_25;
  }

  if (var3 != 2)
  {
    goto LABEL_27;
  }

  v4 = HangulSyllable::ChoLeftHalf(this->var5.var0);
  if (!v4)
  {
    HangulSyllable::SetCho(&this->var5, 0);
    HangulSyllable::SetJung(&this->var5, 0);
    v12 = &this->var5;
LABEL_25:
    HangulSyllable::SetJong(v12, 0);
    var3 = 0;
    this->var3 = 0;
    v6 = 0x10000;
    goto LABEL_26;
  }

  HangulSyllable::SetCho(&this->var5, v4);
  HangulSyllable::SetJung(&this->var5, 0);
  p_var5 = &this->var5;
LABEL_13:
  HangulSyllable::SetJong(p_var5, 0);
  var3 = 2;
  this->var3 = 2;
  v6 = 65537;
LABEL_26:
  *&this->var1 = v6;
LABEL_27:
  if (this->var1 == 1)
  {
    Hangul2SetAutomata::ClearOutputString(this);
    chars = HangulSyllable::GetUnicode(&this->var5);
    var4 = this->var4;
    if (var4)
    {
      CFStringAppendCharacters(var4, &chars, 1);
    }
  }

  else if (!var3)
  {
    Hangul2SetAutomata::ClearOutputString(this);
  }

  return 1;
}

void Hangul2SetAutomata::Hangul2SetAutomata(Hangul2SetAutomata *this)
{
  this->var0 = 0;
  *&this->var1 = 0;
  this->var3 = 0;
  this->var4 = 0;
  *&this->var5.var0 = 0;
  *(&this->var5.var2 + 1) = 0;
  this->var4 = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 32);
}

{
  this->var0 = 0;
  *&this->var1 = 0;
  this->var3 = 0;
  this->var4 = 0;
  *&this->var5.var0 = 0;
  *(&this->var5.var2 + 1) = 0;
  this->var4 = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 32);
}

void Hangul2SetAutomata::~Hangul2SetAutomata(Hangul2SetAutomata *this)
{
  var4 = this->var4;
  if (var4)
  {
    CFRelease(var4);
    this->var4 = 0;
  }
}

{
  var4 = this->var4;
  if (var4)
  {
    CFRelease(var4);
    this->var4 = 0;
  }
}

uint64_t Hangul2SetAutomata::AppendComposedHangul(Hangul2SetAutomata *this, __CFString *theString)
{
  Length = CFStringGetLength(theString);
  if (Length)
  {
    v5.length = this->var2;
    if (Length >= LODWORD(v5.length))
    {
      v5.location = Length - v5.length;
      CFStringDelete(theString, v5);
    }
  }

  CFStringAppend(theString, this->var4);
  return this->var2;
}

void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

__CFString *_composeJamo(const __CFString *a1, Hangul2SetAutomata *a2)
{
  Mutable = 0;
  if (a1)
  {
    if (a2)
    {
      Length = CFStringGetLength(a1);
      Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], Length);
      if (Mutable)
      {
        Hangul2SetAutomata::Reset(a2);
        if (Length >= 1)
        {
          for (i = 0; i != Length; ++i)
          {
            CharacterAtIndex = CFStringGetCharacterAtIndex(a1, i);
            chars = CharacterAtIndex;
            v9 = 0;
            if (Hangul2SetAutomata::SendUniChar(a2, CharacterAtIndex, &v9))
            {
              Hangul2SetAutomata::AppendComposedHangul(a2, Mutable);
            }

            else
            {
              CFStringAppendCharacters(Mutable, &chars, 1);
            }
          }
        }
      }
    }
  }

  return Mutable;
}

id DecomposeHangul(NSString *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = a1;
  [(NSString *)v1 length];
  MEMORY[0x2A1C7C4A8]();
  v3 = &v16[-1] - v2;
  if ([(NSString *)v1 length])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [(NSString *)v1 characterAtIndex:v4];
      if (((v6 + 21504) >> 2) > 0xAE8u)
      {
        break;
      }

      HangulSyllable::HangulSyllable(&v17, v6);
      *v16 = 0;
      v7 = v5 + 1;
      v8 = &v3[2 * v5];
      *v8 = HangulSyllable::ChoToCompatibility(v17.var0);
      if (HangulSyllable::SplitJamoCompound(v17.var1, &v16[1], v16, v9))
      {
        *&v3[2 * v7] = HangulSyllable::JungToCompatibility(v16[1]);
        v5 += 3;
        *(v8 + 2) = HangulSyllable::JungToCompatibility(v16[0]);
      }

      else
      {
        v5 += 2;
        *&v3[2 * v7] = HangulSyllable::JungToCompatibility(v17.var1);
      }

      if (!v17.var2)
      {
        goto LABEL_13;
      }

      if (!HangulSyllable::SplitJamoCompound(v17.var2, &v16[1], v16, v10))
      {
        *&v3[2 * v5] = HangulSyllable::JongToCompatibility(v17.var2);
        goto LABEL_12;
      }

      v11 = &v3[2 * v5];
      *v11 = HangulSyllable::JongToCompatibility(v16[1]);
      v5 += 2;
      *(v11 + 1) = HangulSyllable::JongToCompatibility(v16[0]);
LABEL_13:
      if ([(NSString *)v1 length]<= ++v4)
      {
        v12 = v5;
        goto LABEL_16;
      }
    }

    *&v3[2 * v5] = v6;
LABEL_12:
    ++v5;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_16:
  v13 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v3 length:v12];

  return v13;
}

{
  v18 = *MEMORY[0x29EDCA608];
  v1 = a1;
  [(NSString *)v1 length];
  MEMORY[0x2A1C7C4A8]();
  v3 = &v16[-1] - v2;
  if ([(NSString *)v1 length])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = [(NSString *)v1 characterAtIndex:v4];
      if (((v6 + 21504) >> 2) > 0xAE8u)
      {
        break;
      }

      HangulSyllable::HangulSyllable(&v17, v6);
      *v16 = 0;
      v7 = v5 + 1;
      v8 = &v3[2 * v5];
      *v8 = HangulSyllable::ChoToCompatibility(v17.var0);
      if (HangulSyllable::SplitJamoCompound(v17.var1, &v16[1], v16, v9))
      {
        *&v3[2 * v7] = HangulSyllable::JungToCompatibility(v16[1]);
        v5 += 3;
        *(v8 + 2) = HangulSyllable::JungToCompatibility(v16[0]);
      }

      else
      {
        v5 += 2;
        *&v3[2 * v7] = HangulSyllable::JungToCompatibility(v17.var1);
      }

      if (!v17.var2)
      {
        goto LABEL_13;
      }

      if (!HangulSyllable::SplitJamoCompound(v17.var2, &v16[1], v16, v10))
      {
        *&v3[2 * v5] = HangulSyllable::JongToCompatibility(v17.var2);
        goto LABEL_12;
      }

      v11 = &v3[2 * v5];
      *v11 = HangulSyllable::JongToCompatibility(v16[1]);
      v5 += 2;
      *(v11 + 1) = HangulSyllable::JongToCompatibility(v16[0]);
LABEL_13:
      if ([(NSString *)v1 length]<= ++v4)
      {
        v12 = v5;
        goto LABEL_16;
      }
    }

    *&v3[2 * v5] = v6;
LABEL_12:
    ++v5;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_16:
  v13 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v3 length:v12];

  return v13;
}

void _GLOBAL__sub_I_TIKeyboardInputManagerFavonius_ko_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA55000);

  objc_autoreleasePoolPop(v0);
}

HangulSyllable *HangulSyllable::NormalizeCho(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    return gCompatibilityJamoToChoMap[this - 12593];
  }

  return this;
}

HangulSyllable *HangulSyllable::NormalizeJung(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    return gCompatibilityJamoToJungMap[this - 12593];
  }

  return this;
}

HangulSyllable *HangulSyllable::NormalizeJong(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    return gCompatibilityJamoToJongMap[this - 12593];
  }

  return this;
}

uint64_t HangulSyllable::ChoToCompatibility(HangulSyllable *this)
{
  v1 = this - 4352;
  if (v1 > 0x12)
  {
    return 0;
  }

  else
  {
    return gChoToCompatibilityTable[v1];
  }
}

uint64_t HangulSyllable::JungToCompatibility(HangulSyllable *this)
{
  if ((this - 4449) <= 0x14)
  {
    return gJungToCompatibilityTable[this - 4449];
  }

  if (this == 4514)
  {
    v2 = 4514;
  }

  else
  {
    v2 = 0;
  }

  if (this == 4510)
  {
    return 12685;
  }

  else
  {
    return v2;
  }
}

uint64_t HangulSyllable::JongToCompatibility(HangulSyllable *this)
{
  v1 = this - 4520;
  if (v1 > 0x1A)
  {
    return 0;
  }

  else
  {
    return gJongToCompatibilityTable[v1];
  }
}

HangulSyllable *HangulSyllable::MapChoAndJong(HangulSyllable *this, unsigned __int16 a2)
{
  v2 = this;
  JamoType = HangulSyllable::GetJamoType(this);
  if (JamoType == 4)
  {
    v4 = v2 - 4520;
    if (v4 <= 0x1A)
    {
      v5 = &gJongToChoMap;
      return v5[v4];
    }
  }

  else if (JamoType == 2)
  {
    v4 = v2 - 4352;
    if (v4 <= 0x12)
    {
      v5 = &gChoToJongMap;
      return v5[v4];
    }
  }

  return v2;
}

uint64_t HangulSyllable::GetJamoType(HangulSyllable *this)
{
  if ((this - 4520) >= 0x52)
  {
    v1 = -1;
  }

  else
  {
    v1 = 4;
  }

  if ((this - 4449) >= 0x42)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if ((this - 4352) >= 0x5A)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  v5 = this > 0x3186 || (this - 12623) < 0x15;
  if ((this - 12592) <= 0x5E)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

HangulSyllable *HangulSyllable::SetCho(HangulSyllable *this, int a2)
{
  if ((a2 - 12593) <= 0x5D)
  {
    LOWORD(a2) = gCompatibilityJamoToChoMap[a2 - 12593];
  }

  this->var0 = a2;
  return this;
}

HangulSyllable *HangulSyllable::SetJung(HangulSyllable *this, int a2)
{
  if ((a2 - 12593) <= 0x5D)
  {
    LOWORD(a2) = gCompatibilityJamoToJungMap[a2 - 12593];
  }

  this->var1 = a2;
  return this;
}

HangulSyllable *HangulSyllable::SetJong(HangulSyllable *this, int a2)
{
  if ((a2 - 12593) <= 0x5D)
  {
    LOWORD(a2) = gCompatibilityJamoToJongMap[a2 - 12593];
  }

  this->var2 = a2;
  return this;
}

uint64_t HangulSyllable::GetUnicode(HangulSyllable *this)
{
  var0 = this->var0;
  var1 = this->var1;
  if (!this->var0)
  {
    if (!this->var1)
    {
      return var1;
    }

    if (!this->var2)
    {
      if ((var1 - 4449) > 0x14)
      {
        if (var1 == 4514)
        {
          v8 = 4514;
        }

        else
        {
          v8 = 0;
        }

        if (var1 == 4510)
        {
          LOWORD(var1) = 12685;
        }

        else
        {
          LOWORD(var1) = v8;
        }
      }

      else
      {
        LOWORD(var1) = gJungToCompatibilityTable[var1 - 4449];
      }

      return var1;
    }

LABEL_17:
    LOWORD(var1) = 0;
    return var1;
  }

  if (!this->var1)
  {
    if (!this->var2 && (var0 - 4352) <= 0x12)
    {
      LOWORD(var1) = gChoToCompatibilityTable[var0 - 4352];
      return var1;
    }

    goto LABEL_17;
  }

  if (var1 == 4510 || var1 == 4514)
  {
    goto LABEL_17;
  }

  var2 = this->var2;
  v5 = var2 >= 0x11A7;
  v6 = var2 - 4519;
  if (!v5)
  {
    v6 = 0;
  }

  LOWORD(var1) = 28 * var1 + 588 * var0 + v6 - 18076;
  return var1;
}

uint64_t SearchForJamoCompound(int a1, int a2, uint64_t a3, int a4)
{
  v4 = a4 - 1;
  if (a4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2 | (a1 << 16);
  while (1)
  {
    v7 = (v4 + v5) >> 1;
    v8 = (a3 + 6 * v7);
    v9 = v8[1] | (*v8 << 16);
    if (v6 == v9)
    {
      break;
    }

    if (v6 <= v9)
    {
      v4 = v7 - 1;
    }

    else
    {
      v5 = v7 + 1;
    }

    if (v5 > v4)
    {
      return 0;
    }
  }

  return v8[2];
}

BOOL HangulSyllable::SplitJamoCompound(HangulSyllable *this, _WORD *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = 0;
  v5 = 22;
  while (1)
  {
    v6 = (v5 + v4) / 2;
    v7 = (&gCompoundJamoTable + 6 * v6);
    v8 = v7[2];
    if (v8 == this)
    {
      break;
    }

    if (v8 >= this)
    {
      v5 = v6 - 1;
    }

    else
    {
      v4 = v6 + 1;
    }

    if (v4 > v5)
    {
      return v8 == this;
    }
  }

  *a2 = *v7;
  *a3 = v7[1];
  return v8 == this;
}

uint64_t HangulSyllable::DoubleCho(HangulSyllable *this, int a2)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToChoMap[this - 12593];
  }

  if ((a2 - 12593) <= 0x5D)
  {
    a2 = gCompatibilityJamoToChoMap[a2 - 12593];
  }

  return SearchForJamoCompound(this, a2, gDoubleChoTable, 5);
}

uint64_t HangulSyllable::DoubleJung(HangulSyllable *this, int a2, int a3)
{
  v4 = a2;
  v5 = this;
  v6 = this - 12593;
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToJungMap[this - 12593];
  }

  v7 = a2 - 12593;
  if ((a2 - 12593) <= 0x5D)
  {
    a2 = gCompatibilityJamoToJungMap[a2 - 12593];
  }

  v8 = v6;
  v9 = SearchForJamoCompound(this, a2, &gExtendedDoubleJungTable, 4);
  if (v8 <= 0x5D)
  {
    v5 = gCompatibilityJamoToJungMap[v5 - 12593];
  }

  if (v7 <= 0x5Du)
  {
    v4 = gCompatibilityJamoToJungMap[v4 - 12593];
  }

  LODWORD(result) = SearchForJamoCompound(v5, v4, gDoubleJungTable, 26);
  if (v9)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t HangulSyllable::DoubleJong(HangulSyllable *this, int a2)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToJongMap[this - 12593];
  }

  if ((a2 - 12593) <= 0x5D)
  {
    a2 = gCompatibilityJamoToJongMap[a2 - 12593];
  }

  return SearchForJamoCompound(this, a2, gDoubleJongTable, 11);
}

uint64_t HangulSyllable::ChoLeftHalf(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToChoMap[this - 12593];
  }

  v1 = 0;
  v2 = 4;
  while (1)
  {
    v3 = v1 + v2;
    v4 = gDoubleChoTable[3 * ((v1 + v2) / 2) + 2];
    if (v4 == this)
    {
      break;
    }

    if (v4 >= this)
    {
      v2 = v3 / 2 - 1;
    }

    else
    {
      v1 = v3 / 2 + 1;
    }

    if (v1 > v2)
    {
      return 0;
    }
  }

  if ((v3 + 3) < 2)
  {
    return 0;
  }

  return gDoubleChoTable[3 * (v3 / 2)];
}

uint64_t HangulSyllable::ChoRightHalf(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToChoMap[this - 12593];
  }

  v1 = 0;
  v2 = 4;
  while (1)
  {
    v3 = v1 + v2;
    v4 = gDoubleChoTable[3 * ((v1 + v2) / 2) + 2];
    if (v4 == this)
    {
      break;
    }

    if (v4 >= this)
    {
      v2 = v3 / 2 - 1;
    }

    else
    {
      v1 = v3 / 2 + 1;
    }

    if (v1 > v2)
    {
      return 0;
    }
  }

  if ((v3 + 3) < 2)
  {
    return 0;
  }

  return gDoubleChoTable[3 * (v3 / 2) + 1];
}

uint64_t HangulSyllable::VowelLeftHalf(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToJungMap[this - 12593];
  }

  v1 = 0;
  v2 = 25;
  while (1)
  {
    v3 = v1 + v2;
    v4 = gDoubleJungTable[3 * ((v1 + v2) / 2) + 2];
    if (v4 == this)
    {
      break;
    }

    if (v4 >= this)
    {
      v2 = v3 / 2 - 1;
    }

    else
    {
      v1 = v3 / 2 + 1;
    }

    if (v1 > v2)
    {
      return 0;
    }
  }

  if ((v3 + 3) < 2)
  {
    return 0;
  }

  return gDoubleJungTable[3 * (v3 / 2)];
}

uint64_t HangulSyllable::VowelRightHalf(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToJungMap[this - 12593];
  }

  v1 = 0;
  v2 = 25;
  while (1)
  {
    v3 = v1 + v2;
    v4 = gDoubleJungTable[3 * ((v1 + v2) / 2) + 2];
    if (v4 == this)
    {
      break;
    }

    if (v4 >= this)
    {
      v2 = v3 / 2 - 1;
    }

    else
    {
      v1 = v3 / 2 + 1;
    }

    if (v1 > v2)
    {
      return 0;
    }
  }

  if ((v3 + 3) < 2)
  {
    return 0;
  }

  return gDoubleJungTable[3 * (v3 / 2) + 1];
}

uint64_t HangulSyllable::JongLeftHalf(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToJongMap[this - 12593];
  }

  v1 = 0;
  v2 = 10;
  while (1)
  {
    v3 = v1 + v2;
    v4 = gDoubleJongTable[3 * ((v1 + v2) / 2) + 2];
    if (v4 == this)
    {
      break;
    }

    if (v4 >= this)
    {
      v2 = v3 / 2 - 1;
    }

    else
    {
      v1 = v3 / 2 + 1;
    }

    if (v1 > v2)
    {
      return 0;
    }
  }

  if ((v3 + 3) < 2)
  {
    return 0;
  }

  return gDoubleJongTable[3 * (v3 / 2)];
}

uint64_t HangulSyllable::JongRightHalf(HangulSyllable *this)
{
  if ((this - 12593) <= 0x5D)
  {
    LODWORD(this) = gCompatibilityJamoToJongMap[this - 12593];
  }

  v1 = 0;
  v2 = 10;
  while (1)
  {
    v3 = v1 + v2;
    v4 = gDoubleJongTable[3 * ((v1 + v2) / 2) + 2];
    if (v4 == this)
    {
      break;
    }

    if (v4 >= this)
    {
      v2 = v3 / 2 - 1;
    }

    else
    {
      v1 = v3 / 2 + 1;
    }

    if (v1 > v2)
    {
      return 0;
    }
  }

  if ((v3 + 3) < 2)
  {
    return 0;
  }

  return gDoubleJongTable[3 * (v3 / 2) + 1];
}

void HangulSyllable::HangulSyllable(HangulSyllable *this, __int16 a2)
{
  *&this->var0 = 0;
  this->var2 = 0;
  if (((a2 + 21504) >> 2) <= 0xAE8u)
  {
    this->var0 = ((28533 * (a2 + 21504)) >> 24) | 0x1100;
    this->var1 = (a2 + 21504) % 0x24Cu / 0x1C + 4449;
    if ((a2 + 21504) % 0x1Cu)
    {
      this->var2 = (a2 + 21504) % 0x1Cu + 4519;
    }
  }
}

__CFString *__composeJamo(const __CFString *a1, Hangul2SetAutomata *a2)
{
  Mutable = 0;
  if (a1)
  {
    if (a2)
    {
      Length = CFStringGetLength(a1);
      Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], Length);
      if (Mutable)
      {
        Hangul2SetAutomata::Reset(a2);
        if (Length >= 1)
        {
          for (i = 0; i != Length; ++i)
          {
            CharacterAtIndex = CFStringGetCharacterAtIndex(a1, i);
            chars = CharacterAtIndex;
            v9 = 0;
            if (Hangul2SetAutomata::SendUniChar(a2, CharacterAtIndex, &v9))
            {
              Hangul2SetAutomata::AppendComposedHangul(a2, Mutable);
            }

            else
            {
              CFStringAppendCharacters(Mutable, &chars, 1);
            }
          }
        }
      }
    }
  }

  return Mutable;
}

void _GLOBAL__sub_I_TIKeyboardInputManager_ko_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_29EA55000);

  objc_autoreleasePoolPop(v0);
}

uint64_t TIInputManager_ko::TIInputManager_ko()
{
  result = TIInputManager::TIInputManager();
  *result = &unk_2A25298C8;
  *(result + 756) = 0;
  return result;
}

{
  result = TIInputManager::TIInputManager();
  *result = &unk_2A25298C8;
  *(result + 756) = 0;
  return result;
}

void TIInputManager_ko::~TIInputManager_ko(TIInputManager_ko *this)
{
  TIInputManager::~TIInputManager(this);

  JUMPOUT(0x29EDA3FF0);
}

uint64_t TIInputManager_ko::set_is_10key(uint64_t this, int a2)
{
  if (*(this + 756) != a2)
  {
    *(this + 756) = a2;
    return (*(**(this + 224) + 136))();
  }

  return this;
}

void TIInputManager_ko::completion_candidates(TIInputManager *this@<X0>, uint64_t a2@<X8>)
{
  v16[4] = *MEMORY[0x29EDCA608];
  if (*(this + 756) == 1)
  {
    TIInputManager::input_stem(&v7, this);
    compose_10key_vowels(v16, &v7);
    KB::String::~String(&v7);
    TIInputManager::predictions_for_string();
    TIInputManager::input_stem(v6, this);
    *a2 = v7;
    *(a2 + 16) = v8;
    v7 = 0uLL;
    *(a2 + 24) = v9;
    *(a2 + 40) = v10;
    v8 = 0;
    v9 = 0uLL;
    v10 = 0;
    *(a2 + 48) = v11;
    *(a2 + 64) = v12;
    v11 = 0uLL;
    *(a2 + 72) = v13;
    v12 = 0;
    v13 = 0uLL;
    v4 = v14;
    v5 = v15;
    v14 = 0;
    *(a2 + 88) = v4;
    *(a2 + 96) = v5;
    KB::String::String();
    KB::String::~String(v6);
    v6[0] = &v13;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v6);
    v6[0] = &v11;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v6);
    v6[0] = &v9;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v6);
    v6[0] = &v7;
    std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v6);
    KB::String::~String(v16);
  }

  else
  {

    MEMORY[0x2A1C69AC0]();
  }
}

void compose_10key_vowels(uint64_t *__return_ptr a1@<X8>, const KB::String *a2@<X0>)
{
  v33[4] = *MEMORY[0x29EDCA608];
  v28 = 0;
  v29 = &v28;
  v30 = 0x4802000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  KB::String::String(v33);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 0x40000000;
  v20 = ___ZL20compose_10key_vowelsRKN2KB6StringE_block_invoke;
  v21 = &unk_29F37B100;
  v22 = &v24;
  v23 = &v28;
  v4 = *(a2 + 1);
  if (!v4)
  {
    v4 = a2 + 16;
  }

  v15 = v4;
  v5 = *a2;
  v16 = 0;
  v17 = v5;
  v18 = 0;
  KB::String::iterator::initialize(&v15);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (!v7)
  {
    v7 = a2 + 16;
  }

  v11 = v7;
  v12 = v6;
  v13 = v6;
  v14 = 0;
  KB::String::iterator::initialize(&v11);
  while (v16 != v12)
  {
    v8 = v18;
    if (HIWORD(v18) || HangulSyllable::GetJamoType(v18) != 1)
    {
      (v20)(v19);
      KB::String::append((v29 + 5));
    }

    else
    {
      v9 = v25;
      if (*(v25 + 12))
      {
        v10 = HangulSyllable::DoubleJung(*(v25 + 12), v8, 1);
        if (v10)
        {
          *(v25 + 12) = v10;
          goto LABEL_13;
        }

        (v20)(v19);
        v9 = v25;
      }

      *(v9 + 12) = v8;
    }

LABEL_13:
    KB::String::iterator::operator++();
  }

  (v20)(v19);
  MEMORY[0x29EDA3F40](a1, v29 + 5);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  KB::String::~String(v33);
}

void TIInputManager_ko::autocorrections(TIInputManager *this@<X0>, uint64_t a2@<X8>)
{
  v10[4] = *MEMORY[0x29EDCA608];
  if (*(this + 756) == 1)
  {
    if (*(this + 24))
    {
      TIInputManager::input_stem(v9, this);
      compose_10key_vowels(v10, v9);
      KB::String::~String(v9);
      TIInputManager::predictions_for_string();
      if (v4[0] == v4[1])
      {
        MEMORY[0x29EDA3F70](v9, v10, 0);
        TIInputManager::input_stem(v8, this);
        std::vector<KB::Candidate>::vector[abi:nn200100](a2, 1uLL, v9);
        *(a2 + 100) = 0;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 88) = 0;
        KB::String::String();
        KB::String::~String(v8);
        MEMORY[0x29EDA3F80](v9);
      }

      else
      {
        TIInputManager::input_stem(v9, this);
        std::vector<KB::Candidate>::vector[abi:nn200100](a2, 1uLL, v4[0]);
        *(a2 + 100) = 0;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 88) = 0;
        KB::String::String();
        KB::String::~String(v9);
      }

      v9[0] = &v7;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v9);
      v9[0] = &v6;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v9);
      v9[0] = &v5;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v9);
      v9[0] = v4;
      std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](v9);
      KB::String::~String(v10);
    }

    else
    {
      *(a2 + 100) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;

      KB::String::String((a2 + 104));
    }
  }

  else
  {

    MEMORY[0x2A1C69AA0]();
  }
}

HangulSyllable *___ZL20compose_10key_vowelsRKN2KB6StringE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v5 = *(*(a1 + 32) + 8);
  result = *(v5 + 24);
  if (*(v5 + 24))
  {
    LODWORD(v11) = 0;
    if (HangulSyllable::SplitJamoCompound(result, &v11 + 1, &v11, a4))
    {
      v7 = *(*(a1 + 40) + 8);
      HangulSyllable::JungToCompatibility(WORD1(v11));
      KB::String::append((v7 + 40));
      v8 = *(*(a1 + 40) + 8);
      HangulSyllable::JungToCompatibility(v11);
      v9 = (v8 + 40);
    }

    else
    {
      v10 = *(*(*(a1 + 32) + 8) + 24);
      if (v10 == 4514)
      {
        KB::String::append((*(*(a1 + 40) + 8) + 40));
        v9 = (*(*(a1 + 40) + 8) + 40);
      }

      else
      {
        if (HangulSyllable::GetJamoType(v10) != 1)
        {
          *(*(*(a1 + 32) + 8) + 24) = HangulSyllable::JungToCompatibility(*(*(*(a1 + 32) + 8) + 24));
        }

        v9 = (*(*(a1 + 40) + 8) + 40);
      }
    }

    result = KB::String::append(v9);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = MEMORY[0x29EDA3F80](v4 - 1000);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::vector<KB::Candidate>::vector[abi:nn200100](uint64_t *a1, unint64_t a2, const KB::Candidate *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<KB::Candidate>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<KB::Candidate>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x4189374BC6A7F0)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(a1, a2);
  }

  std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4189374BC6A7F0)
  {
    operator new();
  }

  std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
}

KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this, const KB::Candidate *a2)
{
  v4 = WTF::Vector<KB::Word,3ul>::Vector(this, a2);
  v5 = *(a2 + 744);
  v6 = *(a2 + 760);
  v4[97] = *(a2 + 97);
  *(v4 + 93) = v5;
  *(v4 + 95) = v6;
  KB::LanguageModelContext::LanguageModelContext((v4 + 98), a2 + 784);
  MEMORY[0x29EDA3F40](this + 888, a2 + 888);
  v7 = (this + 920);
  if (*(a2 + 943) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *(a2 + 115), *(a2 + 116));
  }

  else
  {
    v8 = *(a2 + 920);
    *(this + 117) = *(a2 + 117);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  KB::ByteString::copy();
  *(this + 60) = *(a2 + 60);
  v9 = *(a2 + 122);
  *(this + 122) = v9;
  if (v9)
  {
    CFRetain(v9);
    *(this + 122) = v9;
  }

  v10 = *(a2 + 123);
  *(this + 123) = v10;
  if (v10)
  {
    CFRetain(v10);
    *(this + 123) = v10;
  }

  *(this + 248) = *(a2 + 248);
  return this;
}

uint64_t *WTF::Vector<KB::Word,3ul>::Vector(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[2];
  v6 = a1 + 3;
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = 3;
  if (v5 >= 4)
  {
    v6 = malloc_type_malloc(240 * v5, 0x10B2040DF775671uLL);
    a1[1] = v6;
    a1[2] = v5;
    if (!v6)
    {
      return a1;
    }

    v4 = *a2;
  }

  if (v4)
  {
    v7 = a2[1];
    v8 = 240 * v4;
    do
    {
      v6 = (KB::Word::Word(v6, v7) + 240);
      v7 += 240;
      v8 -= 240;
    }

    while (v8);
  }

  return a1;
}

uint64_t KB::Word::Word(uint64_t a1, uint64_t a2)
{
  MEMORY[0x29EDA3F40]();
  KB::ByteString::copy();
  v4 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v4;
  MEMORY[0x29EDA3F40](a1 + 64, a2 + 64);
  v5 = *(a2 + 96);
  v6 = *(a2 + 112);
  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  MEMORY[0x29EDA3F40](a1 + 160, a2 + 160);
  *(a1 + 192) = *(a2 + 192);
  std::unordered_set<unsigned long long>::unordered_set(a1 + 200, a2 + 200);
  return a1;
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t KB::LanguageModelContext::LanguageModelContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<TITokenID>::vector[abi:nn200100]((a1 + 16), (a2 + 16));
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  language_modeling::v1::LinguisticContext::LinguisticContext();
  language_modeling::v1::LinguisticContext::LinguisticContext();
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((a1 + 80), *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  return a1;
}

uint64_t *std::vector<TITokenID>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TITokenID>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void std::vector<TITokenID>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TITokenID>>(a1, a2);
  }

  std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TITokenID>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::vector<KB::Candidate>::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}