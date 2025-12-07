@interface RAWKernels
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)kernelWithName:(id)name;
+ (id)kernelWithName:(id)name group:(id)group;
+ (id)sharedKernels;
- (RAWKernels)init;
- (id)kernelSourceForGroup:(id)group;
- (id)kernelWithName:(id)name group:(id)group;
- (id)loadKernelsForGroup:(id)group;
@end

@implementation RAWKernels

- (RAWKernels)init
{
  v6.receiver = self;
  v6.super_class = RAWKernels;
  v2 = [(RAWKernels *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    priv = v2->priv;
    v2->priv = v3;
  }

  return v2;
}

- (id)kernelSourceForGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqualToString:@"default"])
  {
    v4 = 1319;
    v5 = &unk_23390AC29;
    v6 = 4836;
    goto LABEL_8;
  }

  if ([groupCopy isEqualToString:@"NR"])
  {
    v4 = 10736;
    v5 = &unk_23390B150;
    v7 = -28642;
LABEL_5:
    v6 = v7 | 0x10000u;
    goto LABEL_8;
  }

  if ([groupCopy isEqualToString:@"LC"])
  {
    v4 = 1246;
    v5 = &unk_23390DB40;
    v6 = 8217;
  }

  else
  {
    if ([groupCopy isEqualToString:@"DM"])
    {
      v4 = 13404;
      v5 = &unk_23390E01E;
      v7 = 32099;
      goto LABEL_5;
    }

    if ([groupCopy isEqualToString:@"DeFringe"])
    {
      v4 = 3299;
      v5 = &unk_23391147A;
      v6 = 21373;
    }

    else if ([groupCopy isEqualToString:@"GM"])
    {
      v4 = 1089;
      v5 = &unk_23391215D;
      v6 = 5164;
    }

    else if ([groupCopy isEqualToString:@"HM"])
    {
      v4 = 345;
      v5 = &unk_23391259E;
      v6 = 1925;
    }

    else if ([groupCopy isEqualToString:@"Boost"])
    {
      v4 = 2121;
      v5 = &unk_2339126F7;
      v6 = 16155;
    }

    else if ([groupCopy isEqualToString:@"GainMap"])
    {
      v4 = 524;
      v5 = &unk_233912F40;
      v6 = 1410;
    }

    else if ([groupCopy isEqualToString:@"V8LNR"])
    {
      v4 = 5068;
      v5 = &unk_23391314C;
      v6 = 31647;
    }

    else
    {
      if ([groupCopy isEqualToString:@"V8CNR"])
      {
        v4 = 5080;
        v5 = &unk_233914518;
        v7 = 21654;
        goto LABEL_5;
      }

      if ([groupCopy isEqualToString:@"V8VIEW"])
      {
        v4 = 954;
        v5 = &unk_2339158F0;
        v6 = 5477;
      }

      else
      {
        if (![groupCopy isEqualToString:@"LTM"])
        {
          v10 = 0;
          goto LABEL_14;
        }

        v4 = 634;
        v5 = &unk_233915CAA;
        v6 = 1803;
      }
    }
  }

LABEL_8:
  v8 = [MEMORY[0x277CBEB28] dataWithLength:v6];
  memset(&v12.zalloc, 0, 24);
  v12.avail_in = v4;
  v12.avail_out = [v8 length];
  v12.next_out = [v8 mutableBytes];
  if (inflateInit_(&v12, "1.2.12", 112) || (v9 = inflate(&v12, 0), v9 == -2) || (inflateEnd(&v12), v9 != 1))
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  }

LABEL_14:

  return v10;
}

- (id)loadKernelsForGroup:(id)group
{
  v24 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->priv objectForKeyedSubscript:groupCopy];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)selfCopy->priv objectForKeyedSubscript:groupCopy];
  }

  else
  {
    v18 = [(RAWKernels *)selfCopy kernelSourceForGroup:groupCopy];
    v8 = [MEMORY[0x277CBF760] kernelsWithString:? messageLog:?];
    v9 = [v8 count];
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v9];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          name = [v15 name];
          [v10 setObject:v15 forKeyedSubscript:name];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];
    [(NSMutableDictionary *)selfCopy->priv setObject:v7 forKeyedSubscript:groupCopy];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

+ (id)sharedKernels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_27DE3DE28)
  {
  }

  objc_sync_exit(selfCopy);

  v3 = qword_27DE3DE28;

  return v3;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_27DE3DE28)
  {
    v5 = 0;
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = &OBJC_METACLASS___RAWKernels;
    v6 = objc_msgSendSuper2(&v9, sel_allocWithZone_, zone);
    v7 = qword_27DE3DE28;
    qword_27DE3DE28 = v6;

    v5 = qword_27DE3DE28;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (id)kernelWithName:(id)name group:(id)group
{
  nameCopy = name;
  v7 = [(RAWKernels *)self loadKernelsForGroup:group];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  return v8;
}

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"default"];

  return v5;
}

+ (id)kernelWithName:(id)name group:(id)group
{
  nameCopy = name;
  groupCopy = group;
  v7 = +[RAWKernels sharedKernels];
  v8 = [v7 kernelWithName:nameCopy group:groupCopy];

  return v8;
}

@end