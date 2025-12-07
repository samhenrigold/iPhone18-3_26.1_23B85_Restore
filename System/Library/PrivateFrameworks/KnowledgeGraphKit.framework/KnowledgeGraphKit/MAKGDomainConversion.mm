@interface MAKGDomainConversion
+ (id)kgLabelForMADomain:(unsigned __int16)domain;
+ (unsigned)maDomainForKGLabel:(id)label;
@end

@implementation MAKGDomainConversion

+ (unsigned)maDomainForKGLabel:(id)label
{
  v9[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v4 = [labelCopy lengthOfBytesUsingEncoding:4];
  if ((v4 - 33) >= 0xFFFFFFFFFFFFFFE7)
  {
    v6 = v9 - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
    if ([labelCopy getCString:v6 maxLength:v4 + 1 encoding:4] && !strncmp(v6, "domain_", 7uLL))
    {
      v8 = atoi(v6 + 7);
      if ((v8 - 0x10000) < 0xFFFF0001)
      {
        v5 = -1;
      }

      else
      {
        v5 = v8;
      }
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

+ (id)kgLabelForMADomain:(unsigned __int16)domain
{
  if ((domain + 1) >= 2u)
  {
    domain = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s%d", "domain_", domain];
  }

  else
  {
    domain = 0;
  }

  return domain;
}

@end