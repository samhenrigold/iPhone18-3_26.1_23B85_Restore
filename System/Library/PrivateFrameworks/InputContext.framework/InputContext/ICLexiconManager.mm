@interface ICLexiconManager
@end

@implementation ICLexiconManager

void __42___ICLexiconManager__actuallyLoadLexicons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[43] | 4) == 4)
  {
    v2 = WeakRetained;
    [WeakRetained doLoadLexicon];
    WeakRetained = v2;
  }
}

void __34___ICLexiconManager_loadLexicons___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 192) wordLexiconImpl];
  v7[0] = v2;
  v3 = [*(*(a1 + 32) + 192) phraseLexiconImpl];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __35___ICLexiconManager_unloadLexicons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) contactLoadState];
    if (v2 > 2)
    {
      if (v2 == 4)
      {
        goto LABEL_9;
      }

      if (v2 != 3)
      {
        goto LABEL_10;
      }
    }

    else if (v2 != 1)
    {
      if (v2 != 2)
      {
LABEL_10:
        v3 = [*(a1 + 32) namedEntityLoadState];
        if (v3 > 2)
        {
          if (v3 == 4)
          {
            goto LABEL_17;
          }

          if (v3 != 3)
          {
            goto LABEL_18;
          }
        }

        else if (v3 != 1)
        {
          if (v3 != 2)
          {
            goto LABEL_18;
          }

LABEL_17:
          [WeakRetained[24] removeAllEntities];
          [WeakRetained changeNamedEntityLoadingState:0];
          goto LABEL_18;
        }

        [MEMORY[0x277CCACC8] sleepForTimeInterval:0.1];
        [WeakRetained unloadLexicons];
        goto LABEL_18;
      }

LABEL_9:
      [WeakRetained[18] removeAllObjects];
      [WeakRetained changeContactLoadingState:0];
      goto LABEL_10;
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:0.1];
    [WeakRetained unloadLexicons];
    goto LABEL_10;
  }

LABEL_18:
}

uint64_t __40___ICLexiconManager_addContactObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = *(WeakRetained + 19);
    v4 = MEMORY[0x259C27030](*(a1 + 40));
    [v3 addObject:v4];

    v5 = [*(a1 + 32) contactLoadState];
    if (v5 == 2)
    {
      (*(*(a1 + 48) + 16))();
    }

    else if (!v5)
    {
      [v7 doLoadLexicon];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __43___ICLexiconManager_removeContactObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[19];
    v5 = WeakRetained;
    v4 = MEMORY[0x259C27030](*(a1 + 32));
    [v3 removeObject:v4];

    WeakRetained = v5;
  }
}

void __52___ICLexiconManager_addNamedEntitiesUpdateObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[20];
    v5 = WeakRetained;
    v4 = MEMORY[0x259C27030](*(a1 + 32));
    [v3 addObject:v4];

    WeakRetained = v5;
  }
}

void __55___ICLexiconManager_removeNamedEntitiesUpdateObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[20];
    v5 = WeakRetained;
    v4 = MEMORY[0x259C27030](*(a1 + 32));
    [v3 removeObject:v4];

    WeakRetained = v5;
  }
}

void __39___ICLexiconManager_resetNamedEntities__block_invoke(uint64_t a1)
{
  v2 = _ICPersNamedEntityOSLogFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 0;
    _os_log_impl(&dword_254BD0000, v2, OS_LOG_TYPE_DEFAULT, " Named Entities: resetNamedEntities", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[24] removeAllEntities];
  }
}

void __39___ICLexiconManager_setupNamedEntities__block_invoke(uint64_t a1)
{
  v2 = _ICPersNamedEntityOSLogFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_254BD0000, v2, OS_LOG_TYPE_DEFAULT, "Named Entities: setupNamedEntities", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained changeNamedEntityLoadingState:1];
  }
}

void __39___ICLexiconManager_handleNamedEntity___block_invoke(uint64_t a1)
{
  v2 = _ICPersNamedEntityOSLogFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39___ICLexiconManager_handleNamedEntity___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[24] addEntity:*(a1 + 32) isDurable:1];
  }
}

void __42___ICLexiconManager_completeNamedEntities__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _ICPersNamedEntityOSLogFacility(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2[24] durableEntitiesAdded];
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_DEFAULT, "Named Entities: Reloading recents and processing %lu named entities entities", &v6, 0xCu);
    }

    [v2[24] reloadRecents];
    [v2 changeNamedEntityLoadingState:2];
    WeakRetained = [v2 _notifyNamedEntitiesUpdateObservers];
  }

  v5 = _ICPersNamedEntityOSLogFacility(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_254BD0000, v5, OS_LOG_TYPE_DEFAULT, "Named Entities: completeNamedEntities", &v6, 2u);
  }
}

void __45___ICLexiconManager_setupRecentNamedEntities__block_invoke(uint64_t a1)
{
  v2 = _ICPersNamedEntityOSLogFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_254BD0000, v2, OS_LOG_TYPE_DEFAULT, "Named Entities: setupRecentNamedEntities", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained changeNamedEntityLoadingState:3];
  }
}

void __45___ICLexiconManager_handleRecentNamedEntity___block_invoke(uint64_t a1)
{
  v2 = _ICPersNamedEntityOSLogFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45___ICLexiconManager_handleRecentNamedEntity___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[24] addEntity:*(a1 + 32) isDurable:0];
  }
}

void __48___ICLexiconManager_completeRecentNamedEntities__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = _ICPersNamedEntityOSLogFacility(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2[24] recentEntitiesAdded];
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_DEFAULT, "Named Entities: processing %lu recent named entities entities", &v6, 0xCu);
    }

    [v2 changeNamedEntityLoadingState:2];
    WeakRetained = [v2 _notifyNamedEntitiesUpdateObservers];
  }

  v5 = _ICPersNamedEntityOSLogFacility(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_254BD0000, v5, OS_LOG_TYPE_DEFAULT, "Named Entities: completeNamedEntities", &v6, 2u);
  }
}

void __34___ICLexiconManager_setupContacts__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _ICPersContactOSLogFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 0;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_DEFAULT, "Contacts: setupContacts", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[18] removeAllObjects];
  }
}

void __35___ICLexiconManager_handleContact___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _ICPersContactOSLogFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __35___ICLexiconManager_handleContact___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addContact:*(a1 + 32)];
  }
}

void __37___ICLexiconManager_completeContacts__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) changeContactLoadingState:2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _ICPersContactOSLogFacility(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3[18] count];
      v6 = [v3[19] count];
      *buf = 134218240;
      v19 = v5;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&dword_254BD0000, v4, OS_LOG_TYPE_DEFAULT, "Contacts: sending %lu contacts to %lu observers", buf, 0x16u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v3[19];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v13 + 1) + 8 * v11) + 16))(*(*(&v13 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = _ICPersContactOSLogFacility(WeakRetained);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254BD0000, v12, OS_LOG_TYPE_DEFAULT, "Contacts: completeContacts", buf, 2u);
  }
}

void __40___ICLexiconManager_setupRecentContacts__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _ICPersContactOSLogFacility(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_254BD0000, v3, OS_LOG_TYPE_DEFAULT, "setupRecentContacts", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained contactLoadState] != 4)
    {
      [v5 changeContactLoadingState:3];
    }

    v5[42] = 0;
  }
}

void __41___ICLexiconManager_handleRecentContact___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && [a1[4] contactLoadState] != 4 && objc_msgSend(a1[4], "contactLoadState"))
  {
    v2 = [a1[5] changeType];
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          [a1[4] removeContact:a1[5]];
        }

        goto LABEL_10;
      }

      [a1[4] removeContact:a1[5]];
    }

    [a1[4] addContact:a1[5]];
LABEL_10:
    ++WeakRetained[42];
  }
}

void __43___ICLexiconManager_completeRecentContacts__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) contactLoadState];
  if (v2 != 4)
  {
    v2 = [*(a1 + 32) contactLoadState];
    if (v2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v4 = WeakRetained;
      if (WeakRetained)
      {
        v5 = _ICPersContactOSLogFacility([WeakRetained changeContactLoadingState:2]);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(v4 + 42);
          v7 = [*(v4 + 19) count];
          *buf = 67109376;
          v20 = v6;
          v21 = 2048;
          v22 = v7;
          _os_log_impl(&dword_254BD0000, v5, OS_LOG_TYPE_DEFAULT, "Contacts: %d changes received, if > 0, notifying %lu observers", buf, 0x12u);
        }

        if (*(v4 + 42) >= 1)
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v8 = *(v4 + 19);
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v15;
            do
            {
              v12 = 0;
              do
              {
                if (*v15 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
                ++v12;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
            }

            while (v10);
          }
        }
      }
    }
  }

  v13 = _ICPersContactOSLogFacility(v2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254BD0000, v13, OS_LOG_TYPE_DEFAULT, "completeRecentContacts", buf, 2u);
  }
}

uint64_t __41___ICLexiconManager_printLexiconToNSLog___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = LXEntryCopyString();
  v4 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  CFRelease(v3);
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingString:@" "];

  return MEMORY[0x2821F96F8]();
}

void *__36___ICLexiconManager_getContactCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end