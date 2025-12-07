@interface SKGItemMonitor
- (BOOL)haveSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class;
- (SKGItemMonitor)initWithResourceDirectoryPath:(id)path;
- (int64_t)domainCount;
- (int64_t)personaCountOfDomain:(id)domain;
- (void)addSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class;
- (void)clear;
- (void)flush;
- (void)load;
- (void)purgeOld:(id)old;
@end

@implementation SKGItemMonitor

- (SKGItemMonitor)initWithResourceDirectoryPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = SKGItemMonitor;
  v5 = [(SKGItemMonitor *)&v11 init];
  if (v5)
  {
    pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/oids", pathCopy];
    resourcePath = v5->_resourcePath;
    v5->_resourcePath = pathCopy;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    domains = v5->_domains;
    v5->_domains = v8;

    [(SKGItemMonitor *)v5 load];
    [(SKGItemMonitor *)v5 purgeOld:pathCopy];
  }

  return v5;
}

- (void)load
{
  selfCopy = self;
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:self->_resourcePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *MEMORY[0x277CBE8E8];
    v48[0] = *MEMORY[0x277CBE8E8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v33 = v3;
    v10 = [defaultManager2 enumeratorAtURL:v3 includingPropertiesForKeys:v9 options:4 errorHandler:&__block_literal_global_33];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      v38 = *MEMORY[0x277CBECE8];
      v39 = selfCopy;
      v34 = *v44;
      v35 = v8;
      do
      {
        v14 = 0;
        v36 = v12;
        do
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v43 + 1) + 8 * v14);
          v42 = 0;
          [v15 getResourceValue:&v42 forKey:v8 error:0];
          v16 = v42;
          v17 = [v16 componentsSeparatedByString:@"_"];
          if ([v17 count] == 3)
          {
            path2 = [v15 path];
            v19 = open([path2 UTF8String], 256);

            v41 = 0;
            if (v19 < 0 || (Mutable = RLEOIDArrayDeserialize(v38, v19, &v41)) == 0)
            {
              Mutable = RLEOIDArrayCreateMutable(v38);
            }

            v21 = [v17 objectAtIndexedSubscript:0];
            v22 = [v17 objectAtIndexedSubscript:1];
            v40 = [v17 objectAtIndexedSubscript:2];
            v23 = [(NSMutableDictionary *)selfCopy->_domains objectForKeyedSubscript:v21];

            if (!v23)
            {
              domains = selfCopy->_domains;
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              [(NSMutableDictionary *)domains setObject:dictionary forKey:v21];

              selfCopy = v39;
            }

            v26 = [(NSMutableDictionary *)selfCopy->_domains objectForKeyedSubscript:v21];
            [v26 objectForKeyedSubscript:v22];
            v28 = v27 = selfCopy;

            if (!v28)
            {
              v29 = [(NSMutableDictionary *)v27->_domains objectForKeyedSubscript:v21];
              dictionary2 = [MEMORY[0x277CBEB38] dictionary];
              [v29 setObject:dictionary2 forKey:v22];
            }

            v31 = [(NSMutableDictionary *)v27->_domains objectForKeyedSubscript:v21];
            v32 = [v31 objectForKeyedSubscript:v22];
            [v32 setObject:Mutable forKey:v40];

            CFRelease(Mutable);
            if ((v19 & 0x80000000) == 0)
            {
              close(v19);
            }

            selfCopy = v39;
            v13 = v34;
            v8 = v35;
            v12 = v36;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v12);
    }

    v3 = v33;
  }
}

BOOL __22__SKGItemMonitor_load__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __22__SKGItemMonitor_load__block_invoke_cold_1();
  }

  return v5 != 0;
}

- (void)flush
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = self->_resourcePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v32 = v2;
  v4 = [defaultManager fileExistsAtPath:v2];

  if ((v4 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v47 = 0, objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v2, 1, MEMORY[0x277CBEC10], &v47), v6 = v47, v5, (obj = v6) == 0))
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = self->_domains;
    v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v25)
    {
      v24 = *v44;
      do
      {
        v7 = 0;
        do
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v7;
          v8 = *(*(&v43 + 1) + 8 * v7);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v27 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:v8];
          v29 = [v27 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v29)
          {
            v28 = *v40;
            do
            {
              v9 = 0;
              do
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v27);
                }

                v30 = v9;
                v10 = *(*(&v39 + 1) + 8 * v9);
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v11 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:v8];
                v12 = [v11 objectForKeyedSubscript:v10];

                v31 = v12;
                v13 = [v12 countByEnumeratingWithState:&v35 objects:v48 count:16];
                if (v13)
                {
                  v14 = v13;
                  v15 = *v36;
                  do
                  {
                    for (i = 0; i != v14; ++i)
                    {
                      if (*v36 != v15)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v17 = *(*(&v35 + 1) + 8 * i);
                      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@_%@_%@", v32, v8, v10, v17];
                      v19 = open([v18 UTF8String], 1793, 384);
                      v34 = 0;
                      v20 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:v8];
                      v21 = [v20 objectForKeyedSubscript:v10];
                      v22 = [v21 objectForKeyedSubscript:v17];

                      if (v22)
                      {
                        RLEOIDArraySerialize(v22, v19, 0, &v34);
                      }

                      if ((v19 & 0x80000000) == 0)
                      {
                        close(v19);
                      }
                    }

                    v14 = [v31 countByEnumeratingWithState:&v35 objects:v48 count:16];
                  }

                  while (v14);
                }

                v9 = v30 + 1;
              }

              while (v30 + 1 != v29);
              v29 = [v27 countByEnumeratingWithState:&v39 objects:v49 count:16];
            }

            while (v29);
          }

          v7 = v26 + 1;
        }

        while (v26 + 1 != v25);
        v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v25);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [SKGItemMonitor flush];
  }
}

- (void)purgeOld:(id)old
{
  v43 = *MEMORY[0x277D85DE8];
  oldCopy = old;
  stringByDeletingLastPathComponent = [oldCopy stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = 0;
    v9 = [defaultManager2 contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v37];
    v10 = v37;
    v11 = v10;
    if (v9)
    {
      v30 = v10;
      v25 = v9;
      v26 = v7;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = MEMORY[0x277D86220];
        v16 = *v34;
        v28 = defaultManager2;
        v29 = stringByDeletingLastPathComponent;
        v27 = *v34;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v33 + 1) + 8 * i);
            v19 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:{v18, v25, v26}];
            v32 = 0;
            [defaultManager2 fileExistsAtPath:v19 isDirectory:&v32];
            if (v32 == 1 && ([v19 isEqualToString:oldCopy] & 1) == 0)
            {
              v20 = defaultManager2;
              v21 = v12;
              v22 = oldCopy;
              v31 = v30;
              v23 = [v20 removeItemAtPath:v19 error:&v31];
              v24 = v31;

              if (v23)
              {
                v12 = v21;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v39 = v18;
                  _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_DEFAULT, "SKGItemMonitor: Deleting folder %@", buf, 0xCu);
                }
              }

              else
              {
                v12 = v21;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v39 = v18;
                  v40 = 2112;
                  v41 = v24;
                  _os_log_error_impl(&dword_231B25000, v15, OS_LOG_TYPE_ERROR, "SKGItemMonitor: Error deleting folder %@: %@", buf, 0x16u);
                }
              }

              v30 = v24;
              oldCopy = v22;
              defaultManager2 = v28;
              stringByDeletingLastPathComponent = v29;
              v16 = v27;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v14);
      }

      v9 = v25;
      v7 = v26;
      v11 = v30;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGItemMonitor purgeOld:];
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)clear
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  domains = self->_domains;
  self->_domains = v3;

  v5 = self->_resourcePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [defaultManager2 removeItemAtPath:v5 error:&v9];
  }
}

- (BOOL)haveSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class
{
  itemCopy = item;
  bundleCopy = bundle;
  personaCopy = persona;
  classCopy = class;
  if ([classCopy isEqualToString:@"MobileMailIndex"])
  {
    v14 = *MEMORY[0x277CCA1A0];

    classCopy = v14;
  }

  v15 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];

  if (v15 && (-[NSMutableDictionary objectForKeyedSubscript:](self->_domains, "objectForKeyedSubscript:", bundleCopy), v16 = objc_claimAutoreleasedReturnValue(), [v16 objectForKeyedSubscript:personaCopy], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) && (-[NSMutableDictionary objectForKeyedSubscript:](self->_domains, "objectForKeyedSubscript:", bundleCopy), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", personaCopy), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", classCopy), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v20))
  {
    longLongValue = [itemCopy longLongValue];
    v22 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    v23 = [v22 objectForKeyedSubscript:personaCopy];
    v24 = [v23 objectForKeyedSubscript:classCopy];

    if (v24)
    {
      LOBYTE(v24) = RLEOIDArrayContainsOid(v24, longLongValue) != 0;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (void)addSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class
{
  itemCopy = item;
  bundleCopy = bundle;
  personaCopy = persona;
  classCopy = class;
  if ([classCopy isEqualToString:@"MobileMailIndex"])
  {
    v13 = *MEMORY[0x277CCA1A0];

    classCopy = v13;
  }

  v14 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];

  if (!v14)
  {
    domains = self->_domains;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)domains setObject:dictionary forKey:bundleCopy];
  }

  v17 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
  v18 = [v17 objectForKeyedSubscript:personaCopy];

  if (!v18)
  {
    v19 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [v19 setObject:dictionary2 forKey:personaCopy];
  }

  v21 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
  v22 = [v21 objectForKeyedSubscript:personaCopy];
  v23 = [v22 objectForKeyedSubscript:classCopy];

  if (!v23)
  {
    Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x277CBECE8]);
    v25 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    v26 = [v25 objectForKeyedSubscript:personaCopy];
    [v26 setObject:Mutable forKey:classCopy];

    CFRelease(Mutable);
    v27 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    v28 = [v27 objectForKeyedSubscript:personaCopy];
    v23 = [v28 objectForKeyedSubscript:classCopy];
  }

  RLEOIDArrayAddOid(v23, [itemCopy longLongValue]);
}

- (int64_t)domainCount
{
  if (![(NSMutableDictionary *)self->_domains count])
  {
    return -1;
  }

  domains = self->_domains;

  return [(NSMutableDictionary *)domains count];
}

- (int64_t)personaCountOfDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:domainCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:domainCopy];
    v7 = [v6 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end